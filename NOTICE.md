# Sources and attribution

- **Zhipu Zhao, William Booth-Clibborn and Casper Schwahn**, A $(3.49\ldots)^k$
  bound for diagonal Ramsey numbers (2026),
  [paper and code](https://github.com/w2ll2am/diagonal-ramsey/tree/c2875f33a9d5c89f71c68f51b5767550570b5603).
  We reuse the weighted potential, maximality and ordered-drift machinery,
  finite-host closure, profile-bank framework and inherited profile/control data.
  Their MIT notice is retained in `licenses/Zhao-Booth-Clibborn-Schwahn.txt`.
- **Zhipeng Lu and Sichen Wang**, *Retained-Set Descent for Diagonal Ramsey
  Numbers* (2026), [arXiv:2609.14525](https://arxiv.org/abs/2609.14525).
  The source baseline and retained-set machinery descend from their development,
  including the pinned research fork `cc16f1b2cbd5524eb4b2171d7197a5ce2e84dfb4`.
  Their MIT notice is retained in `licenses/LuWang.txt`.
- **RamseyLean**, the foundational Ramsey formalization used by Lu–Wang,
  research-fork revision `f26c9675e0c07cec0e3454a4b11b8422f2bb5bb4`.
  Its required definitions and lemmas appear in `lean/Support/Ramsey/`.
- **Mathlib and Lean** supply the general mathematics and kernel.
  Their pinned dependencies retain their upstream licenses.

Our refinement keeps the complementary-neighbourhood moment constraint,
derives the associated scalar feasibility and envelope laws, and retunes the
source and root construction to obtain the displayed base.
