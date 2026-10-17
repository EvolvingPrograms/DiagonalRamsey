# 3. Two-cell reduction

**Sources.** This section develops the two-moment reduction used here from
the weighted finite-row machinery of
[Zhao–Booth-Clibborn–Schwahn](../Support/Published/README.md) and the complementary
moment in Section 2. Jensen's inequality, compactness and exponential limits
use Mathlib. The power-limit lemmas also have counterparts in the inherited
development, identified in [L3_PowerLimits.lean](L3_PowerLimits.lean).

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

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`two_cell_moments`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L1_ConditionalJensen.lean#L61)

```lean
theorem two_cell_moments {ι : Type*} (Y : Finset ι) (P : ι → Prop)
    [DecidablePred P] (ν Z : ι → ℝ) {r s t U V : ℝ}
    (hν : ∀ y ∈ Y, 0 ≤ ν y) (hνsum : ∑ y ∈ Y, ν y = 1)
    (hm : 0 < ∑ y ∈ Y.filter P, ν y ∧ (∑ y ∈ Y.filter P, ν y) ≤ 1)
    (hr : r ≠ 0) (hs : 1 ≤ s)
    (hblue : ∑ y ∈ Y, ν y * (max (1 + Z y) 0) ^ s ≤ U)
    (hcomp : ∑ y ∈ Y, ν y * (max (1 - t * Z y) 0) ^ s ≤ V) :
    let m
```

</details>

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

<details>
<summary>Lean comparison</summary>

The threshold is written using the inherited function `LF` in this declaration; `ellF` is the logarithmic expression expanded above. The source also records the first blue-cell inequality.

[`graph_row_first_cell`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L1_ConditionalJensen.lean#L105)

```lean
theorem graph_row_first_cell
    {V : Type*} [Fintype V] [DecidableEq V]
    (G B : SimpleGraph V) (X Y : Finset V) (c w r β μ x : ℝ)
    (hY : Y.Nonempty) (hr : 0 < r) (hβ : 0 < β)
    (hs : 1 ≤ β * r) (hμ : 0 < μ) (hx : 0 < x)
    (hpos : ∀ y ∈ Y, c < colDensity G X y)
    (i : V) (hq : 0 < graphFrac B X i ∧ graphFrac B X i < 1)
    (hm : 0 < mr G X Y c (β * r) i) (hπ : 0 < rowDensity G i Y)
    (hblue : SharpBlueFailure G B X Y c μ w β (β * r) i)
    (hred : SharpRedFailure G B X Y c w β (β * r) x i) :
    let q
```

</details>

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

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`scaled_mean_bounds`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L2_FiniteBounds.lean#L28)

```lean
theorem scaled_mean_bounds {m r s t U V a : ℝ}
    (hm : 0 < m) (hr : 0 < r) (hs : 0 < s) (ht : 0 < t)
    (hU : 0 ≤ U) (hV : 0 ≤ V)
    (hblue : m * (max (1 + a / r) 0) ^ s ≤ U)
    (hcomp : m * (max (1 - t * a / r) 0) ^ s ≤ V) :
    -(r / t) * ((V / m) ^ (s⁻¹) - 1) ≤ a ∧
      a ≤ r * ((U / m) ^ (s⁻¹) - 1)
```

</details>

**Proof.** Take positive roots of both inequalities, use $z\le z_+$,
and rearrange. Apply the same argument to the other cell.
Lean: `scaled_mean_bounds` in [L2_FiniteBounds.lean](L2_FiniteBounds.lean).

## Lemma 3.3. Power limits

If $r_n\to\infty$, $a_n\to A$, $W_n\to W>0$ and $\beta>0$, then

$$\left(1+\frac{a_n}{r_n}\right)_+^{\beta r_n}\to e^{\beta A},
\qquad r_n\left(W_n^{1/(\beta r_n)}-1\right)\to\frac{\log W}{\beta}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`tendsto_clipped_power`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L3_PowerLimits.lean#L83)

```lean
theorem tendsto_clipped_power {ι : Type*} {l : Filter ι}
    {r a : ι → ℝ} {A β : ℝ}
    (hr : Tendsto r l atTop) (ha : Tendsto a l (𝓝 A)) :
    Tendsto (fun i => (max (1 + a i / r i) 0) ^ (β * r i)) l
      (𝓝 (Real.exp (β * A)))
```

[`tendsto_root_slack`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L3_PowerLimits.lean#L108)

```lean
theorem tendsto_root_slack {ι : Type*} {l : Filter ι}
    {r W : ι → ℝ} {W₀ β : ℝ}
    (hr : Tendsto r l atTop) (hW : Tendsto W l (𝓝 W₀))
    (hW₀ : 0 < W₀) (_hβ : 0 < β) :
    Tendsto (fun i => r i * (W i ^ (1 / (β * r i)) - 1)) l
      (𝓝 (Real.log W₀ / β))
```

</details>

**Proof.** Eventually the clipped argument is positive. Use
$\log(1+u)/u\to1$ for the first limit and $(e^u-1)/u\to1$ for the second.
Lean: `tendsto_clipped_power`, `tendsto_root_slack` in
[L3_PowerLimits.lean](L3_PowerLimits.lean).

## Lemma 3.4. The first-cell density gap

Assume $0<d\le1$, $0<q\le\mu<1$, $w\ge0$, $\beta,x>0$, and
$de^{\beta A_d(q)}\le U(q)$, where

$$A_d(q)=\frac{1-q}{q}\log\frac{d(1-q)^w}{x},\qquad
U(q)=(\mu/q)^{\beta w}.$$

<details>
<summary>Lean comparison</summary>

Use `p := d` in `certA`. The source writes the positive budget as `exp (β * certB μ w q)`, equivalent to the displayed real power under the stated positivity assumptions.

[`certA`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_Cert.lean#L26)

```lean
noncomputable def certA (p w x q : ℝ) : ℝ :=
  (1 - q) / q * Real.log (p * (1 - q) ^ w / x)
```

[`certU`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_Cert.lean#L34)

```lean
noncomputable def certU (μ w β q : ℝ) : ℝ :=
  Real.exp (β * certB μ w q)
```

</details>

Then

$$d\le\exp\left(
\frac{\log x-w\log(1-\mu)}{1+\mu/[\beta(1-\mu)]}\right).$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`densityCap`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L4_DensityGap.lean#L89)

```lean
noncomputable def densityCap (μ w β x : ℝ) : ℝ :=
  Real.exp ((Real.log x - w * Real.log (1 - μ)) / (1 + μ / (β * (1 - μ))))
```

[`density_le_cap`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L4_DensityGap.lean#L103)

```lean
theorem density_le_cap {d μ w β x q : ℝ}
    (hd : 0 < d ∧ d ≤ 1) (hμ : 0 < μ ∧ μ < 1)
    (hw : 0 ≤ w) (hβ : 0 < β) (hx : 0 < x) (hq : 0 < q ∧ q ≤ μ)
    (hfirst : d * Real.exp (β * certA d w x q) ≤ certU μ w β q) :
    d ≤ densityCap μ w β x
```

</details>

In particular this bound is strictly below one if $x<(1-\mu)^w$.

**Proof.** Taking logarithms and rearranging gives

$$\left(1+\frac q{\beta(1-q)}\right)\log d
+w\left(\log(1-q)+\frac q{1-q}\log\frac q\mu\right)\le\log x.$$

<details>
<summary>Lean comparison</summary>

This intermediate inequality is the local quantity `T ≤ log x` in the proof of `density_log_gap`; the declaration below states the consequence after replacing `q` by `μ`.

[The intermediate quantity](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L4_DensityGap.lean#L60-L73) is defined and bounded inside that proof:

```lean
  let T := (1 + q / (β * (1 - q))) * Real.log d + w * Real.log (1 - q) +
    w * q / (1 - q) * Real.log (q / μ)
```

The proof then establishes `hT : T ≤ Real.log x` before comparing the ratios `q` and `μ`.

[`density_log_gap`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L4_DensityGap.lean#L45)

```lean
theorem density_log_gap {d μ w β x q : ℝ}
    (hd : 0 < d ∧ d ≤ 1) (hμ : 0 < μ ∧ μ < 1)
    (hw : 0 ≤ w) (hβ : 0 < β) (hx : 0 < x)
    (hq : 0 < q ∧ q ≤ μ)
    (hfirst : d * Real.exp (β * certA d w x q) ≤ certU μ w β q) :
    (1 + μ / (β * (1 - μ))) * Real.log d ≤
      Real.log x - w * Real.log (1 - μ)
```

</details>

Use

$$\log(1-\mu)\le\log(1-q)+\frac q{1-q}\log\frac q\mu.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`bernoulli_log_bound`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L4_DensityGap.lean#L21)

```lean
private theorem bernoulli_log_bound {q μ : ℝ}
    (hq : 0 < q ∧ q < 1) (hμ : 0 < μ ∧ μ < 1) :
    Real.log (1 - μ) ≤ Real.log (1 - q) + q / (1 - q) * Real.log (q / μ)
```

</details>

This is Bernoulli relative-entropy nonnegativity, equivalently logarithmic
Jensen. Since $\log d\le0$ and $q\le\mu$, replacing
$q/[\beta(1-q)]$ by $\mu/[\beta(1-\mu)]$ preserves the required inequality.
Rearrange and exponentiate. Only the first cell is used.

To apply this before extracting both means, suppose $m_n,\pi_n\to d>0$
and $q_n\to q\in(0,\mu]$. The finite threshold in Lemma 3.1 tends to
$A_d(q)$ by Lemma 3.3. The first blue moment alone gives

$$a_n\le r_n\left((U(q_n)/m_n)^{1/(\beta r_n)}-1\right)
\longrightarrow\frac{\log(U(q)/d)}{\beta}.$$

<details>
<summary>Lean comparison</summary>

The first two declarations supply the upper bound and its limit. `first_cell_limit` uses these to compare the limiting lower threshold without assuming convergence of the scaled means.

[`scaled_mean_bounds`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L2_FiniteBounds.lean#L28)

Declaration shown above.

[`tendsto_root_slack`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L3_PowerLimits.lean#L108)

Declaration shown above.

[`first_cell_limit`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L4_DensityGap.lean#L119)

```lean
theorem first_cell_limit {r m U a A₀ : ℕ → ℝ} {p U₀ A₀₀ β : ℝ}
    (hβ : 0 < β) (hp : 0 < p) (hU₀ : 0 < U₀)
    (hr : Tendsto r atTop atTop) (hm : Tendsto m atTop (𝓝 p))
    (hU : Tendsto U atTop (𝓝 U₀)) (hA₀ : Tendsto A₀ atTop (𝓝 A₀₀))
    (hblue : ∀ᶠ n in atTop, m n * (max (1 + a n / r n) 0) ^ (β * r n) ≤ U n)
    (hlower : ∀ᶠ n in atTop, A₀ n ≤ a n) :
    p * Real.exp (β * A₀₀) ≤ U₀
```

</details>

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
