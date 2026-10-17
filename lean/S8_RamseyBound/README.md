# 8. The Ramsey bound

The dense profile of section 7 gives the diagonal bound by colour symmetry
and a strict exponent gap.

## Lemma 8.1. Absorbing a prefactor and rounding

If $C\ge1$ and $0\le z<\gamma$, then for all sufficiently large integers $k$,

$$\left\lceil Ce^{zk}\right\rceil\le e^{\gamma k}.$$

**Proof.** For
$k\ge\lceil\log(C+1)/(\gamma-z)\rceil$, we have

$$\lceil Ce^{zk}\rceil\le Ce^{zk}+1
\le(C+1)e^{zk}\le e^{\gamma k}.$$

Lean: `eventually_ceiling_exp_le` in
[L1_AsymptoticAbsorption.lean](L1_AsymptoticAbsorption.lean).

## Lemma 8.2. Dense profiles bound diagonal Ramsey numbers

If $z\ge0$ is a dense profile and $\gamma>z$, then eventually

$$R(k,k)\le e^{\gamma k}.$$

**Proof.** Take a complete graph of order
$N=\lceil(C+2)e^{zk}\rceil$, where $C$ is the profile prefactor. Use the
colour-complement density identity: since $N\ge2$, one colour has density
at least $1/2$. Apply the dense-profile hypothesis to that colour.
This forces a monochromatic $K_k$. Lemma 8.1 absorbs the enlarged prefactor
and rounding.

Lean: `eventual_exponent_of_dense_profile` in
[L2_ComplementSymmetry.lean](L2_ComplementSymmetry.lean).

## Lemma 8.3. Comparing the base

For the parameters of section 7,

$$z=\frac{625145177}{500000000}
<\gamma=\frac{250058071}{200000000},\qquad
e^\gamma<\frac{69827131}{20000000}=3.49135655.$$

**Proof.** The first gap is exactly $10^{-9}$. Put $u=\gamma/2\in[0,1]$.
The Taylor bound `Real.exp_bound'`, with $n=14$, gives

$$e^u\le T:=\sum_{j=0}^{13}\frac{u^j}{j!}
+\frac{15u^{14}}{14\cdot14!}.$$

Exact rational arithmetic gives $T^2<69827131/20000000$.
Since $e^u>0$, squaring proves $e^\gamma=(e^u)^2<b$.

Lean: `exponent_gap` in [L3_BaseComparison.lean](L3_BaseComparison.lean).

## Theorem 8.4. The diagonal bound

Section 7 supplies the unconditional dense profile at $z$; Lemmas 8.2–8.3 imply

$$\exists K\;\forall k\ge K:\quad R(k,k)\le3.49135655^k.$$

**Proof.** Apply Lemma 8.2 with the strict exponent gap. Then
$e^{\gamma k}=(e^\gamma)^k\le(69827131/20000000)^k$.

Lean: `eventually_ramsey` in
[L4_MainTheorem.lean](L4_MainTheorem.lean). The equivalent explicit-threshold statement is `eventual_diagonal_bound`.
The [challenge solution](../../challenges/Comparison/Solution.lean) converts this
bound into the independent finite-graph statement. Comparator permits only
`propext`, `Classical.choice`, and `Quot.sound`.
