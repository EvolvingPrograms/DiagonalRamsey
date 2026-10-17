# An eventual diagonal Ramsey bound

**Theorem.** For all sufficiently large integers $k$,

$$R(k,k)\le 3.49135655^k.$$

This refines the method of Zhipu Zhao, William Booth-Clibborn and Casper
Schwahn, *A $(3.49\ldots)^k$ bound for diagonal Ramsey numbers*
([paper and Lean code](https://github.com/w2ll2am/diagonal-ramsey/tree/c2875f33a9d5c89f71c68f51b5767550570b5603)).
We reuse their weighted potential, maximality machinery, finite-host closure
and source/profile framework (paper sections 3–5), as well as inherited
profile and control data. Their construction builds on Zhipeng Lu and Sichen
Wang, *Retained-Set Descent for Diagonal Ramsey Numbers*
([2026](https://arxiv.org/abs/2609.14525)), whose finite source bound we use.

The refinement below retains the complementary-neighbourhood moment constraint,
derives its scalar feasibility and envelope laws, and supplies a retuned
source/root construction. The proof is an improvement within this framework.

**Proof.** Put

$$z=\frac{625145177}{500000000},\qquad
\gamma=z+10^{-9}=\frac{250058071}{200000000},\qquad
b=\frac{69827131}{20000000}=3.49135655.$$

We construct constants $C\ge1$ and $k_0$ such that every graph on
$N\ge Ce^{zk}$ vertices with red edge density at least $1/2$ contains a
monochromatic $K_k$, whenever $k\ge k_0$.

1. **[Potential and admissible bounds](S1_Definitions/README.md).**
   For disjoint vertex sets $X,Y$, write $g_y=|N_R(y)\cap X|/|X|$ and use

   $$\Phi_c(X,Y)=|X|^w|Y|
   \left(\frac1{|Y|}\sum_{y\in Y}(g_y-c)_+^{\beta r}\right)^{1/\beta}.$$

   Maximize over restrictions of either set. Source bounds have the form
   $R(k,\ell)\le C_s e^{A_s k+B_s\ell}$; dense profiles record
   clique-forcing bounds under a density hypothesis.

2. **[Consequences of maximality](S2_MaximalConfigurations/README.md).**
   For positive column excesses, normalize $(g_y-c)^{\beta r}$ to a probability
   measure $\nu$. For a blue-neighbourhood restriction of fraction $0<q<1$,
   let $Z$ denote the relative change in excess red density and write
   $P(t)=\max(t,0)$. Blue-move failure and maximality of the complementary
   restriction give, respectively,

   $$\underset{\nu}{\mathbb{E}}\left[P(1+Z)^{\beta r}\right]\le(\mu/q)^{\beta w},\qquad
   \underset{\nu}{\mathbb{E}}\left[P(1-qZ/(1-q))^{\beta r}\right]\le(1-q)^{-\beta w}.$$

   Maximality controls exceptional rows; ordering rows by retained fraction
   bounds accumulated drift.

3. **[Reduction to two cells](S3_TwoCellReduction/README.md).**
   Conditional Jensen reduces both moments to two conditional means.
   A density cap excludes a degenerate cell mass; boundedness and compactness
   give limiting exponential constraints. After the density transfer of
   Section 4, these take the form

   $$pe^{\beta A}+(1-p)e^{\beta C}\le U(q),\qquad
   pe^{-\beta tA}+(1-p)e^{-\beta tC}\le V(q),\qquad A\ge A_0(q),$$

   where $t=q/(1-q)$, $U(q)=(\mu/q)^{\beta w}$ and
   $V(q)=(1-q)^{-\beta w}$.

4. **[Scalar optimization](S4_ScalarOptimization/README.md).**
   For each feasible retained fraction $q\in F_p$, maximize
   $M_p(q)=pA+(1-p)C$ subject to these constraints. The optimizer either
   has $A=C=\log U(q)/\beta$, or has $A=A_0(q)$ with the positive
   exponential constraint saturated. Concavity and affine majorants give
   an explicitly integrable envelope

   $$E(u)\ge qM_p(q)+wq(1+\log u)\quad(q\in F_p).$$

5. **[The local red–blue alternative](S5_LocalAlternative/README.md).**
   The chosen envelope satisfies $\int_0^1E(u)\,du<0$.
   If every useful red and blue move failed, the moment bounds and ordered
   drift inequality would force the opposite inequality in the limit.
   Uniform finite approximations preserve the strict gap for sufficiently
   large $r$. Hence every relevant maximal configuration admits a useful move.

6. **[Iteration and source admissibility](S6_GlobalConstruction/README.md).**
   Iterate these moves along retained-set routes. Prove the source bounds
   and supporting profiles simultaneously by induction on host order:
   recursive invocations concern smaller hosts. Terminal controls,
   support inequalities and interval covers close the construction.

7. **[The concrete construction](S7_ParameterChoice/README.md).**
   The specified rational parameters, envelope, source family and route
   covers satisfy those hypotheses. Four child profiles and a twelve-call
   root construction yield the dense profile at exponent $z$ stated above.
   This section supplies the finite numerical witnesses and their assembly.

8. **[The Ramsey bound](S8_RamseyBound/README.md).**
   One colour has density at least $1/2$. Apply the dense profile to
   $N=\lceil(C+2)e^{zk}\rceil$ and absorb the fixed prefactor:

   $$R(k,k)\le\lceil(C+2)e^{zk}\rceil\le e^{\gamma k}$$

   for sufficiently large $k$. With $u=\gamma/2$, exact rational arithmetic gives

   $$e^\gamma\le
   \left(\sum_{j=0}^{13}\frac{u^j}{j!}
   +\frac{15u^{14}}{14\cdot14!}\right)^2<b.$$

   Thus $R(k,k)\le b^k$. $\square$

The [independent challenge](../challenges/Comparison/Challenge.lean) states the
bound directly for finite graphs. Comparator checks its proved solution with
permitted axioms `propext`, `Classical.choice` and `Quot.sound`.
