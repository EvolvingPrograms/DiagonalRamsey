# Independent statement check

- [Definitions](Comparison/Definitions.lean) describes a monochromatic clique
  using only Mathlib's finite graphs.
- [Challenge](Comparison/Challenge.lean) states the eventual bound
  $R(k,k)\le3.49135655^k$. Its `sorry` specifies the theorem to be checked.
- [Solution](Comparison/Solution.lean) proves that same statement from the
  main theorem, without importing the challenge.

[Comparator configuration](../comparator.json) specifies the modules, theorem
name, and permitted axioms. [Statement hashes](specification-sha256.json) are
checked by `python3 Scripts/check_sources.py`.

Run `lake comparator` from the project root on Linux with `bubblewrap`
installed. Lean 4.35 supplies Comparator, the exporter, and the kernel checker;
no standalone Comparator, Landrun, Go build, or systemd wrapper is needed.
Comparator checks agreement with the independent statement and permits only
`propext`, `Classical.choice`, and `Quot.sound`. Keep its default sandbox enabled.
