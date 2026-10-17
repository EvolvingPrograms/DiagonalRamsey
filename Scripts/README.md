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

