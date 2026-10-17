# Sources and attribution

- **Zhipu Zhao, William Booth-Clibborn and Casper Schwahn**, A $(3.49\ldots)^k$
  bound for diagonal Ramsey numbers (2026),
  [paper and code](https://github.com/w2ll2am/diagonal-ramsey/tree/c2875f33a9d5c89f71c68f51b5767550570b5603).
  We reuse the weighted potential, maximality and ordered-drift machinery,
  finite-host closure, profile-bank framework and inherited profile/control data.
  Their MIT notice is reproduced below.
- **Zhipeng Lu and Sichen Wang**, *Retained-Set Descent for Diagonal Ramsey
  Numbers* (2026), [arXiv:2609.14525](https://arxiv.org/abs/2609.14525).
  The source baseline and retained-set machinery descend from their development,
  including the pinned research fork `cc16f1b2cbd5524eb4b2171d7197a5ce2e84dfb4`.
  Their MIT notice is reproduced below.
  `Support/Analysis/` contains their interval arithmetic and analytic
  checking library with our maintenance edits; `Support/LuWang/` contains
  the adapted source-bound verification.
- **RamseyLean**, the foundational Ramsey formalization used by Lu–Wang,
  research-fork revision `f26c9675e0c07cec0e3454a4b11b8422f2bb5bb4`.
  Its required definitions and lemmas appear in `Support/Ramsey/`.
  [RamseyLean](https://github.com/snorin239/RamseyLean) formalizes the work of
  **Parth Gupta, Ndiamé Ndiaye, Sergey Norin and Louis Wei**,
  *Optimizing the CGMS upper bound on Ramsey numbers*.
- **Mathlib and Lean** supply the general mathematics and kernel.
  Their pinned dependencies retain their upstream licenses.

Our refinement keeps the complementary-neighbourhood moment constraint,
derives the associated scalar feasibility and envelope laws, and retunes the
source and root construction to obtain the displayed base.

## Inherited license notices

### LuWang

MIT License

Copyright (c) 2026 the authors of Retained-Set Descent for Ramsey Numbers

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

### Zhao-Booth-Clibborn-Schwahn

MIT License

Copyright (c) 2026 Zhipu Zhao, William Booth-Clibborn and Casper Schwahn

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
