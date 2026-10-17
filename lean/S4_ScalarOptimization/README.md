# 4. Scalar optimization

**Sources.** This section gives our two-constraint feasibility and envelope
analysis. It retains the scalar parameters and blue-moment framework of
[Zhao–Booth-Clibborn–Schwahn](../Support/Published/README.md), including their
threshold monotonicity lemma used in density transfer. The complementary
constraint comes from Section 2. General convexity, calculus and integration
results are supplied by Mathlib.

We determine the largest logarithmic mean compatible with the two moment
bounds from section 3. The complementary constraint removes infeasible
degrees; wherever a degree survives, the blue optimizer remains optimal.

## Definition 4.1. Feasible pairs

Fix $0<p<1$, $\beta,t,U,V>0$ and $A_0\in\mathbb R$. A pair $(A,C)$ is
feasible when

$$A\ge A_0,\qquad
pe^{\beta A}+(1-p)e^{\beta C}\le U,\qquad
pe^{-\beta tA}+(1-p)e^{-\beta tC}\le V.$$

Its objective is $J_p(A,C)=pA+(1-p)C$. Write $B=\log U/\beta$.
The shared Lean predicate is `DiagonalRamsey.Complement.Feasible`.
The optimization interface belongs to [L1_FeasiblePairs.lean](L1_FeasiblePairs.lean).

## Lemma 4.2. Convex averaging and boundary contraction

For $0<p<1$, $p\le d\le1$ and $a,c>0$, put

$$y=\frac{(d-p)a+(1-d)c}{1-p}.$$

Every convex function $\phi:(0,\infty)\to\mathbb R$ satisfies

$$p\phi(a)+(1-p)\phi(y)\le d\phi(a)+(1-d)\phi(c).$$

**Proof.** Apply Jensen with weights $(d-p)/(1-p)$ and $(1-d)/(1-p)$,
then add $p\phi(a)$. For concave functions the inequality reverses.

A second form fixes the mean. If $0<U<x_0\le x$ and $px<U$, put
$y=(U-px)/(1-p)$ and $y_0=(U-px_0)/(1-p)$. Then

$$p\phi(x_0)+(1-p)\phi(y_0)\le p\phi(x)+(1-p)\phi(y).$$

**Proof.** Set $\theta=(x_0-U)/(x-U)\in[0,1]$. Both $x_0$ and $y_0$
are obtained by contracting $x,y$ toward their common mean $U$ by
$\theta$. Jensen bounds the contracted average by the original average.

Use this with the convex functions $u\mapsto u^{-t}$ and $u\mapsto-\log u$.
Lean: `convex_two_point_contraction`, `convex_two_point_boundary` and
`Complement.convexOn_exp_neg_mul_log`; `L2_ConvexAveraging.lean`.

## Lemma 4.3. Density transfer

Suppose $(A,C)$ is feasible at mass $d$, where $p\le d\le1$, with first
threshold $A_1\ge A_0$. Define

$$C'=\frac1\beta\log
\frac{(d-p)e^{\beta A}+(1-d)e^{\beta C}}{1-p}.$$

Then $(A,C')$ is feasible at mass $p$ with threshold $A_0$, and

$$J_d(A,C)\le J_p(A,C').$$

**Proof.** Lemma 4.2 preserves the positive exponential moment, decreases
the negative exponential moment, and increases the logarithmic mean.
The first atom remains $A\ge A_1\ge A_0$.

For the degree-dependent threshold

$$A_d(q)=\frac{1-q}{q}\log\frac{d(1-q)^w}{x},\qquad 0<q<1,\ x>0,$$

we have $A_p(q)\le A_d(q)$. Thus lowering density preserves every feasible
degree. No restriction $\beta\le1$ is needed for this transfer.
Lean: `feasible_mass_transfer`, `complementDegrees_antitone`;
`L3_DensityTransfer.lean`.

## Lemma 4.4. The nonbinding optimum

Suppose $A_0\le B$ and $e^{-\beta tB}\le V$. Then $(B,B)$ is feasible
and maximizes the objective, with value $B$.

**Proof.** Its positive moment is $U$ and its negative moment is
$e^{-\beta tB}$. For every feasible pair, Jensen gives

$$e^{\beta J_p(A,C)}\le pe^{\beta A}+(1-p)e^{\beta C}\le U,$$

so $J_p(A,C)\le B$.
Lean: `Complement.mean_le_blue`, `Complement.feasible_of_nonbinding`;
`L4_NonbindingOptimum.lean`.

## Lemma 4.5. The binding optimum

Suppose $A_0>B$. If $pe^{\beta A_0}\ge U$, no feasible pair exists.
Otherwise put

$$C_0=\frac1\beta\log\frac{U-pe^{\beta A_0}}{1-p}.$$

A feasible pair exists exactly when

$$pe^{-\beta tA_0}+(1-p)e^{-\beta tC_0}\le V.$$

When it exists, $(A_0,C_0)$ maximizes the objective, with value
$pA_0+(1-p)C_0$.

**Proof.** A feasible pair necessarily has $pe^{\beta A}<U$. Increase its
second exponential atom until the positive moment equals $U$. This decreases
the negative moment and increases the objective. Now contract the first
exponential atom to $e^{\beta A_0}>U$ using Lemma 4.2: the negative moment
again decreases and the logarithmic objective increases. The resulting pair
is precisely $(A_0,C_0)$. Its displayed negative moment is therefore the
necessary and sufficient remaining feasibility test.
Lean: `Complement.feasible_iff_boundary`, `Complement.objective_le_boundary`;
`L5_BindingOptimum.lean`.

## Theorem 4.6. The optimal degree envelope

Fix $0<\mu<1$, $w\ge0$, $\beta,x>0$. For $0<q\le\mu$, define

$$t(q)=\frac q{1-q},\quad B(q)=w\log\frac\mu q,\quad
U(q)=e^{\beta B(q)},\quad V(q)=(1-q)^{-\beta w},$$

and use the threshold $A_p(q)$ from Lemma 4.3. Let $F_p$ be the degrees
admitting a feasible pair. For $q\in F_p$, the maximum objective equals

$$M_p(q)=\begin{cases}
B(q),&A_p(q)\le B(q),\\[2mm]
pA_p(q)+\dfrac{1-p}{\beta}
\log\dfrac{U(q)-pe^{\beta A_p(q)}}{1-p},&A_p(q)>B(q).
\end{cases}$$

**Proof.** Apply Lemmas 4.4–4.5. In the nonbinding branch $B(q)\ge0$,
so $e^{-\beta t(q)B(q)}\le1\le V(q)$. In the binding branch membership
in $F_p$ ensures the logarithm is defined and the boundary pair is feasible.
Both optima are attained. Lemma 4.3 also bounds every higher-density feasible
objective by $M_p(q)$.

Section 5 uses the ordered expressions

$$qM_p(q)+wq(1+\log u),\qquad q\in F_p,\quad 0<u\le1.$$

Lean: `complementDegrees`, `DiagRamsey.certM`,
`feasible_objective_le_certM`, `feasible_density_transfer`, and
`optimal_envelope_attained` in
[L6_OptimalEnvelope.lean](L6_OptimalEnvelope.lean).
[Section 5](../S5_LocalAlternative/README.md) uses this maximum to prove
the graph alternative.

### Finite covers certify the integral

Let $S=F_p\ne\varnothing$, $H(q)=qM_p(q)$, and

$$E(t)=\sup_{q\in S}\{H(q)+wq(1+\log t)\},\qquad
\widetilde E(u)=\sup_{q\in S}\{H(q)+wq(1-u)\}.$$

Cover $S$ by finitely many degree intervals. Associate each interval with
an affine majorant of $H$ valid on all of $S$, as required by the Lean
theorem's `hbound` hypothesis. Rational corner comparisons then bound
$\widetilde E(u)$ by $a_i u+b_i$ on integration cells $[l_i,r_i]$
covering $[0,T]$. If $\widetilde E(u)\le0$ for $u\ge T$, then

$$\int_0^1 E(t)\,dt
=\int_0^\infty\widetilde E(u)e^{-u}\,du
\le\sum_i\left[-(a_i(u+1)+b_i)e^{-u}\right]_{l_i}^{r_i}.$$

**Proof.** Substitute $t=e^{-u}$, integrate the affine bounds, and discard
the nonpositive tail. A global affine bound and bounded degrees give
integrability and continuity; $wq\ge0$ gives monotonicity of $E$.
Thus a negative sum supplies every hypothesis of `ComplementEnvelope`.
Only feasible degrees need coverage, so a proved positive lower cutoff
requires no artificial cells below it.

Lean: [`complementEnvelope_of_cover`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L6_OptimalEnvelope.lean#L390),
with the regularity and integral lemmas immediately preceding it.

## Theorem 4.7. Entropy characterization of feasible degrees

Assume $0<x<p<1$, $\beta,w>0$ and $0<q\le\mu<1$. Put
$\theta=p(x/p)^\beta$ and

$$\mathcal F(q)=q\log\left[\theta(p/\theta)^{1/q}
+(1-\theta)((1-p)/(1-\theta))^{1/q}\right]
+\beta w\left[(1-q)\log(1-q)+q\log(q/\mu)\right].$$

Then $q\in F_p$ if and only if $\mathcal F(q)\le0$.

**Proof.** Normalize the complementary atoms as
$X=e^{-\beta tA}/V$, $Y=e^{-\beta tC}/V$. Then $X\le\theta/p<1$ and
$pX+(1-p)Y\le1$. Increase $Y$ to the boundary and contract both atoms
toward their mean until $X=\theta/p$. Convexity of $z\mapsto z^{-1/t}$
shows this minimizes the blue moment. Substituting the boundary atoms,
taking logarithms and multiplying by $q$ gives the displayed test.

Lean: [`complementDegrees_iff_entropyGap`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L7_EntropyFeasibility.lean#L237).

## Theorem 4.8. A cutoff from two signs

The function $\mathcal F$ is convex on $(0,1)$. If $0<a<\mu<1$,
$\mathcal F(a)>0$, and $\mathcal F(\mu)<0$, then

$$\mu\in F_p\subset(a,\mu].$$

**Proof.** Log-sum-exp is convex, and its positive perspective
$q\phi(1/q)$ remains convex. The remaining binary entropy term is convex.
If a feasible $q\le a$ existed, writing $a$ as a convex combination
of $q$ and $\mu$ would give $\mathcal F(a)\le0$, a contradiction.
The endpoint follows from Theorem 4.7.

Lean: [`complementDegrees_cutoff`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L8_ConvexDegreeCutoff.lean#L168).

## Theorem 4.9. Integrating a logarithmic hinge

For every real $r$, the logarithmic hinge is integrable and

$$\int_0^1(\log u-r)_+\,du\le e^r-r-1,$$

with equality when $r\le0$.

**Proof.** For $r\le0$, integrate $\log u-r$ from $e^r$ to $1$.
For $r\ge0$, the hinge vanishes and $e^r\ge1+r$.

Lean: [`integral_log_hinge_le`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L9_AffineEnvelope.lean#L54).
For lines $a_i v+b_i$ with $a_0<\cdots<a_n$, put
$\Delta_i=a_{i+1}-a_i$ and $r_i=(b_i-b_{i+1})/\Delta_i$. Then

$$\max_i(a_i v+b_i)\le H(v):=a_0v+b_0+
\sum_{i<n}\Delta_i(v-r_i)_+,$$
$$\int_0^1H(\log u)\,du\le b_n-a_n+
\sum_{i<n}\Delta_i e^{r_i}.$$

**Proof.** Telescope adjacent line differences for the first inequality;
integrate each hinge and telescope again for the second. The crossings
$r_i$ need not be ordered.

Lean: [domination](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L9_AffineEnvelope.lean#L126)
and [integral bound](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L9_AffineEnvelope.lean#L179).

## Theorem 4.10. The hinge certifies the control

If $a_0\ge0$, the hinge majorizes every feasible degree objective, and
$b_n-a_n+\sum_i\Delta_i e^{r_i}<0$, then $E(u)=H(\log u)$ supplies
`ComplementEnvelope`: it is continuous and nondecreasing on $(0,1]$,
integrable, and has negative integral. The feasible degree set must be nonempty.

Lean: [`complementEnvelope_of_hinge`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L10_HingeControl.lean).

## Theorem 4.11. Concave decreasing perspectives

If $S\subset(0,\infty)$ is convex, $g$ is convex and negative on $S$,
and $\phi$ is concave and nonincreasing on $(-\infty,0)$, then

$$q\longmapsto q\phi\!\left(\frac{g(q)}q\right)$$

is concave on $S$. Normalize convex-combination weights by their
positive weighted mean, then apply monotonicity and concavity of $\phi$.

Lean: [`concave_antitone_perspective`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L11_ConcavePerspective.lean).

## Theorem 4.12. Clipped entropy

For $0<p<1$, put $f(z)=pz+(1-p)\log(1-e^z)$ and
$\bar f(z)=f(\max\{z,\log p\})$. Then $\bar f$ is concave and
nonincreasing on $(-\infty,0)$, since

$$f'(z)=\frac{p-e^z}{1-e^z},\qquad
f''(z)=-\frac{(1-p)e^z}{(1-e^z)^2}.$$

Lean: [clipped entropy laws](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L12_ClippedEntropy.lean).

## Theorem 4.13. Concavity of the degree objective

Put $A=\operatorname{certA}(q)$, $B=\operatorname{certB}(q)$ and
$g(q)=q\log p+\beta q(A-B)$. For positive $x,\mu,w,\beta$ and $0<p<1$,
the domain $D=\{q\in(0,1):g(q)<0\}$ is convex, and

$$q\operatorname{certM}(q)+wq
=qB+wq+\frac q\beta[\bar f(g(q)/q)-f(\log p)]$$

is concave on $D$. Expand $g$ as an affine function plus $\beta w$ times
binary entropy, then apply Theorems 4.11–4.12. The remaining term
$qB=wq\log(\mu/q)$ is concave.

Lean: [objective identity and concavity](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L13_EnvelopeConcavity.lean).

## Corollary 4.14. Explicit global support lines

Every feasible degree lies in $D$: its positive second exponential atom
implies $pe^{\beta A_p(q)}<U(q)$, which is exactly $g(q)<0$.
Write $h(q)=qM_p(q)+wq$. For $m\in D$, put

$$z=\frac{g(m)}m,\quad c=\max(z,\log p),\quad
s=\frac{p-e^c}{1-e^c}\le0,$$
$$g'(m)=\log p+\beta\left[-\log(p/x)+w\log\frac m{\mu(1-m)}\right],$$
$$D_m=B(m)+\frac{\bar f(z)-f(\log p)+s(g'(m)-z)}{\beta}.$$

Then, for every $q\in D$,

$$h(q)\le h(m)+D_m(q-m).$$

**Proof.** Convexity gives $g(q)\ge g(m)+g'(m)(q-m)$.
The clipped entropy has support slope $s\le0$ at $z$, including the
clipped branch where $s=0$. Substitute the lower support for $g$ into
this upper support, multiply by $q$, and add the baseline support whose
slope is $B(m)$. The result is the displayed formula. Subtracting $wq$
gives a global affine majorant for $qM_p(q)$, suitable for the finite-cover
integral theorem above.

Lean: `complementDegrees_subset_positiveBudget`, `certSupportSlope` and
`certM_intercept_le_explicit_support` in
[L13_EnvelopeConcavity.lean](L13_EnvelopeConcavity.lean).
