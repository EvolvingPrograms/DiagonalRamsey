# Verification

Run these commands from the project root.


Open this directory in VS Code with the Lean extension. Lean and Mathlib are
pinned; no private submodules, research workspace or generated downloads are needed.

```sh
lake exe cache get
python3 Scripts/check_sources.py
python3 Scripts/build_lean_parallel.py --jobs 0 S8_RamseyBound.L4_MainTheorem
```

The scheduler distinguishes concurrent modules from Lean threads per module
(four). Linux CI adds memory admission control and per-module memory limits.
Logs and progress are saved under `.lake/build-progress/`;
Comparator results are saved under `.verification/`.

On Linux, `python3 Scripts/comparator.py` additionally checks the result against
an [independent specification](../Challenges/Comparison/Challenge.lean) using
pinned Lean Comparator, exporter and Landrun tools. Its one `sorry` belongs only
to the challenge statement; production proof modules cannot import it.
Only `propext`, `Classical.choice` and `Quot.sound` are permitted.

The [Verify workflow](https://github.com/EvolvingPrograms/DiagonalRamsey/actions/workflows/verify.yml) performs the build
and Comparator check. Its `fresh` option discards project build
artifacts while retaining the trusted Mathlib dependency cache. Subsequent runs
can restore this repository's own cache.


## Certificate layout

The Lu–Wang source checks are grouped by region in
`Support/LuWang/SourceCertificates/{Small,Transitions,Left}.lean`.
The expensive left-region checks live in 12 independent modules under
`Support/LuWang/SourceCertificates/Left/Batch*.lean`, each containing 12 original
chunks. `Left.lean` imports those batches and assembles the group certificates.
This gives the build scheduler independent work without restoring a file per
chunk. Keep these batches independent of one another so Lake can compile them
concurrently and cache their results separately.
The chunk checks retain `Elab.async false`: a representative 50-cell check with
Lean 4.32.1 and `-j4` took 164 seconds with it disabled versus 165 seconds enabled,
while peak memory increased from 4.0 GiB to 6.9 GiB. Parallelism here comes from
compiling the independent batch modules.
A full runner validation of the 12 batches finished in approximately 34 minutes;
the `Left.lean` assembly then took 2.1 seconds. The combined certificate bank,
source admissibility theorem, and their axiom audits also passed.
`Support/LuWang/SourceGeometryChecks.lean` contains the bounded geometry checks;
`Support/Controls/ControlBank.lean` contains the inherited control witnesses.
The old chunk namespaces remain available inside these modules. Scoped sections
keep their local options and open declarations independent.

`Support/Controls/EnvelopeData.lean` supplies the tangent-derived partitions used
by both Support and S7 Joint. `CurrentSourceData.lean` stores endpoint jets and
computes their cubic Hermite coefficients. Its lists use named blocks of 64
entries to keep elaboration within Lean's default thread stack. The certificate
checks still use `decide +kernel`, including endpoint identities and shape checks.

S7 Joint's `Leaves/Checks.lean` imports ten independent check batches, each
covering five entry groups. `Leaves/TerminalChecks.lean` similarly imports ten
batches, with four terminal groups distributed round-robin per batch. Their kernel checks use `Elab.async false` to bound
the number of pending proof computations; Lake supplies parallelism between
batches. `Routes/Remaining/Partitions.lean` imports twelve independent call-data
batches backed by shared constants in `Partitions/Data.lean`. Call definitions are
distributed round-robin so the more expensive later groups do not accumulate in
one batch. These preserve the existing declaration names and compact
progression/replication representations while avoiding one large serial
compilation step.
