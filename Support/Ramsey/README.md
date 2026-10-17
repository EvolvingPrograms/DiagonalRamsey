# Foundational Ramsey library

These 16 modules provide Ramsey numbers, monochromatic clique predicates,
graph operations, counting estimates and asymptotic descent results used by
the proof. Every module is in the final theorem's import closure.

## Attribution

Inherited from [RamseyLean](https://github.com/snorin239/RamseyLean), a Lean
formalization of Parth Gupta, Ndiamé Ndiaye, Sergey Norin and Louis Wei's
*Optimizing the CGMS upper bound on Ramsey numbers*. The imported development
formalizes its Theorem 1 and Corollary 6 and supplies the foundational library
used by Lu–Wang.

Our copy includes proof-maintenance edits and uses the namespace `RamseyBasics`.
These inherited theorems are not original results of this repository.
See [NOTICE](../../NOTICE.md) for the source revision and attribution.

## Contents

- `Basic`, `Coloring`, `Ramsey` and `Counting`: finite graphs, Ramsey numbers
  and elementary counting.
- `BlueBook`, `BookInduction`, `Descent` and `AsymptoticRegion`: combinatorial
  descent and its asymptotic consequences.
- `Analysis/`, `Asymptotics/` and `Numerics/`: supporting analytic and
  numerical results.
