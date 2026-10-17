# 3. Two-cell reduction

We reduce the finite weighted row to two conditional means, then pass to
the exponential constraints of section 4. The density cap must precede
compactness: it supplies the positive mass of the second cell.

## Lemma 3.1. Conditional Jensen

Partition a finite probability space into a cell of mass $0<m\le1$ and its
complement. For a real random variable $Z$, set
$a=r\mathbb E[Z\mid\text{cell}]$ and
$b=r\mathbb E[Z\mid\text{complement}]$, taking $b=0$ if that cell has
zero mass. If $r>0$ and $s\ge1$, then for either
affine function $f(z)=1+z$ or $f(z)=1-tz$,

$$m f(a/r)_+^s+(1-m)f(b/r)_+^s\le\mathbb E f(Z)_+^s.$$

**Proof.** The clipped power is convex. Apply Jensen within each cell
and add with the cell masses; a zero-mass cell contributes zero. For graph rows the cell is the red
neighbourhood in $Y$, measured using the weights $\nu$ from section 2.
The separate first-cell inequality needs only $m>0$.

For graph rows with $0<q<1$, $\mu,x,\beta>0$, $s=\beta r\ge1$,
$m>0$ and ordinary red density $\pi>0$, the two failure predicates give
the blue budget and the strict first-mean threshold

$$a>r\frac{1-q}{q}\left(1-e^{\ell/r}\right),\qquad
\ell=-w\log(1-q)+\log x+
\frac{(1-\beta)\log\pi-\log m}{\beta}.$$

Indeed Jensen on the red cell bounds
$m((1-q)-qa/r)_+^s$ by the normalized red-failure sum.
Taking the positive $s$th root of its strict upper bound and rearranging
gives this threshold. Row maximality supplies the complementary budget
from Section 2. These arguments allow $m=1$; positivity of the second
cell is established later.

Lean: `cell_affine_moment`, `two_cell_moments`, `graph_row_first_cell`,
`graph_row_cell_moments` in
[L1_ConditionalJensen.lean](L1_ConditionalJensen.lean).

## Lemma 3.2. Bounds on scaled means

If $m,r,s,t>0$, $U,V\ge0$, and
$m(1+a/r)_+^s\le U$, $m(1-ta/r)_+^s\le V$, then

$$-\frac rt\left((V/m)^{1/s}-1\right)
\le a\le r\left((U/m)^{1/s}-1\right).$$

**Proof.** Take positive roots of both inequalities, use $z\le z_+$,
and rearrange. Apply the same argument to the other cell.
Lean: `scaled_mean_bounds` in [L2_FiniteBounds.lean](L2_FiniteBounds.lean).

## Lemma 3.3. Power limits

If $r_n\to\infty$, $a_n\to A$, $W_n\to W>0$ and $\beta>0$, then

$$\left(1+\frac{a_n}{r_n}\right)_+^{\beta r_n}\to e^{\beta A},
\qquad r_n\left(W_n^{1/(\beta r_n)}-1\right)\to\frac{\log W}{\beta}.$$

**Proof.** Eventually the clipped argument is positive. Use
$\log(1+u)/u\to1$ for the first limit and $(e^u-1)/u\to1$ for the second.
Lean: `tendsto_clipped_power`, `tendsto_root_slack` in
[L3_PowerLimits.lean](L3_PowerLimits.lean).

## Lemma 3.4. The first-cell density gap

Assume $0<d\le1$, $0<q\le\mu<1$, $w\ge0$, $\beta,x>0$, and
$de^{\beta A_d(q)}\le U(q)$, where

$$A_d(q)=\frac{1-q}{q}\log\frac{d(1-q)^w}{x},\qquad
U(q)=(\mu/q)^{\beta w}.$$

Then

$$d\le\exp\left(
\frac{\log x-w\log(1-\mu)}{1+\mu/[\beta(1-\mu)]}\right).$$

In particular this bound is strictly below one if $x<(1-\mu)^w$.

**Proof.** Taking logarithms and rearranging gives

$$\left(1+\frac q{\beta(1-q)}\right)\log d
+w\left(\log(1-q)+\frac q{1-q}\log\frac q\mu\right)\le\log x.$$

Use

$$\log(1-\mu)\le\log(1-q)+\frac q{1-q}\log\frac q\mu.$$

This is Bernoulli relative-entropy nonnegativity, equivalently logarithmic
Jensen. Since $\log d\le0$ and $q\le\mu$, replacing
$q/[\beta(1-q)]$ by $\mu/[\beta(1-\mu)]$ preserves the required inequality.
Rearrange and exponentiate. Only the first cell is used.

To apply this before extracting both means, suppose $m_n,\pi_n\to d>0$
and $q_n\to q\in(0,\mu]$. The finite threshold in Lemma 3.1 tends to
$A_d(q)$ by Lemma 3.3. The first blue moment alone gives

$$a_n\le r_n\left((U(q_n)/m_n)^{1/(\beta r_n)}-1\right)
\longrightarrow\frac{\log(U(q)/d)}{\beta}.$$

Here the limit applies to the upper-bound expression, not necessarily
to $a_n$. Comparing it with the convergent lower threshold proves
$de^{\beta A_d(q)}\le U(q)$ without assuming that $a_n$ converges.
Lean: `density_log_gap`, `density_le_cap`, `density_cap_lt_one` in
[L4_DensityGap.lean](L4_DensityGap.lean).

## Lemma 3.5. Limiting feasible pairs

Suppose finite two-cell moment inequalities hold along $r_n\to\infty$;
with fixed $\beta>0$ and powers $s_n=\beta r_n$;
the cell masses tend to $d\in(0,1)$, the degree ratios tend to $t>0$,
the budgets tend to $U,V>0$, and the first-mean lower thresholds tend to
$A_0$. A subsequence of the scaled means converges to a feasible pair
$(A,C)$ at mass $d$.

**Proof.** Lemmas 3.2–3.3 bound both scaled means above and below.
Bolzano–Weierstrass supplies a common convergent subsequence. Lemma 3.3
passes both moment inequalities to their exponential limits; the first-mean
lower bound also passes to the limit. In the graph sequence adapter, the
first-cell limit and Lemma 3.4 establish $d<1$ before this extraction.

Lean: `exists_feasible_subsequence` and
`exists_feasible_subsequence_of_row_moments` in
[L5_LimitingConstraints.lean](L5_LimitingConstraints.lean).
[Section 5](../S5_LocalAlternative/L1_FiniteApproximation.lean) supplies
convergent degree and mass subsequences; concentration makes the ordinary
row density converge to the same mass. Thus its application satisfies the
graph adapter's convergence hypotheses.
