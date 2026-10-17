# Diagonal Ramsey numbers

For all sufficiently large integers $k$,

$$R(k,k)\le 3.49135655^k.$$

Read the [short proof and eight sections](lean/README.md), or the
[final Lean theorem](lean/S8_RamseyBound/L4_MainTheorem.lean).
The source tree follows the mathematical argument. Required inherited lemmas
and finite data are collected in [Support](lean/Support/README.md).

This refines Zhao–Booth-Clibborn–Schwahn's weighted-potential and profile-bank
method, building on Lu–Wang retained-set descent. See [attribution](NOTICE.md).

## Verification

Open this directory in VS Code with the Lean extension. Lean and Mathlib are
pinned; no private submodules, research workspace or generated downloads are needed.

```sh
lake exe cache get
python3 scripts/check_sources.py
python3 scripts/build_lean_parallel.py --jobs 0 S8_RamseyBound.L4_MainTheorem
```

The scheduler distinguishes concurrent modules from Lean threads per module
(four). Linux CI adds memory admission control and per-module memory limits.
Logs and progress are saved under `.lake/build-progress/`;
Comparator results are saved under `.verification/`.

On Linux, `python3 scripts/comparator.py` additionally checks the result against
an [independent specification](challenges/Comparison/Challenge.lean) using
pinned Lean Comparator, exporter and Landrun tools. Its one `sorry` belongs only
to the challenge statement; production proof modules cannot import it.
Only `propext`, `Classical.choice` and `Quot.sound` are permitted.

The [Verify workflow](https://github.com/EvolvingPrograms/DiagonalRamsey/actions/workflows/verify.yml) performs the build
and Comparator check. Its `fresh` option discards project build
artifacts while retaining the trusted Mathlib dependency cache. Subsequent runs
can restore this repository's own cache.
