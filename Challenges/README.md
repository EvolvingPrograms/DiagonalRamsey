# Independent statement check

- [Definitions](Comparison/Definitions.lean) describes a monochromatic clique
  using only Mathlib's finite graphs.
- [Challenge](Comparison/Challenge.lean) states the eventual bound
  $R(k,k)\le3.49135655^k$. Its `sorry` specifies the theorem to be checked.
- [Solution](Comparison/Solution.lean) proves that same statement from the
  main theorem, without importing the challenge.

[Comparator configuration](comparator.json) pins the tools, statement hashes,
and theorem name. Run `python3 Scripts/comparator.py` after building the proof
on Linux. Comparator checks agreement with the independent statement and
permits only `propext`, `Classical.choice`, and `Quot.sound`.
