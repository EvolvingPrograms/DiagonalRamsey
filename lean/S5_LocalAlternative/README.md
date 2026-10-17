# 5. The local red–blue alternative

**Sources.** We assemble the two-moment bounds from Sections 3–4 using the
ordered-drift and maximal-configuration machinery of
[Zhao–Booth-Clibborn–Schwahn](../Support/Published/README.md).
The graph argument follows their sharp-envelope proof with the complementary
moment retained; [L3_GraphAlternative.lean](L3_GraphAlternative.lean) identifies
the inherited proof interface.

Section 4 supplies feasible degrees $F_p$ and their optimal means $M_p$.
We relate finite rows uniformly to these limiting quantities, then combine
the approximation with the ordering inequality, then discharge its hypotheses
in a maximal graph configuration.

## Lemma 5.1. Uniform approximation of finite rows

Fix $0<p,\mu<1$, $w\ge0$, $\beta,x>0$, $x<(1-\mu)^w$, and
$\delta,\varepsilon>0$. There exist $\eta>0$ and $R$ such that the following
holds for $r\ge R$. Suppose

$$\delta\le q\le\mu+\eta,\quad p-\eta\le m,\pi\le1,
\quad |m-\pi|\le\eta,$$

<details>
<summary>Lean comparison</summary>

These are the degree and mass hypotheses of the uniform approximation theorem below; the full source states all positivity hypotheses as well.

[`finite_row_approximation`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S5_LocalAlternative/L1_FiniteApproximation.lean#L21)

```lean
theorem finite_row_approximation {p μ w β x δ ε : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : 0 < μ ∧ μ < 1) (hw : 0 ≤ w)
    (hβ : 0 < β) (hx : 0 < x) (hgap : x < (1 - μ) ^ w)
    (hδ : 0 < δ) (hε : 0 < ε) :
    ∃ η > 0, ∃ R : ℝ, ∀ r ≥ R, ∀ q m π a b : ℝ,
      δ ≤ q → q ≤ μ + η → p - η ≤ m → m ≤ 1 →
      p - η ≤ π → π ≤ 1 → |m - π| ≤ η →
      m * (max (1 + a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 + b / r) 0) ^ (β * r) ≤ certU μ w β q →
      m * (max (1 - (q / (1 - q)) * a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 - (q / (1 - q)) * b / r) 0) ^ (β * r) ≤
          (1 - q) ^ (-β * w) →
      r * DiagRamsey.SE.LF w β x q m π r ≤ a →
      ∃ q' ∈ complementDegrees p μ w β x, |q' - q| ≤ ε ∧
        q * (m * a + (1 - m) * b) ≤ q' * certM p μ w β x q' + ε
```

</details>

and the scaled means $a,b$ satisfy

$$m(1+a/r)_+^{\beta r}+(1-m)(1+b/r)_+^{\beta r}\le U(q),$$

<details>
<summary>Lean comparison</summary>

This is the positive-moment premise of `finite_row_approximation`.

[`finite_row_approximation`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S5_LocalAlternative/L1_FiniteApproximation.lean#L21)

```lean
theorem finite_row_approximation {p μ w β x δ ε : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : 0 < μ ∧ μ < 1) (hw : 0 ≤ w)
    (hβ : 0 < β) (hx : 0 < x) (hgap : x < (1 - μ) ^ w)
    (hδ : 0 < δ) (hε : 0 < ε) :
    ∃ η > 0, ∃ R : ℝ, ∀ r ≥ R, ∀ q m π a b : ℝ,
      δ ≤ q → q ≤ μ + η → p - η ≤ m → m ≤ 1 →
      p - η ≤ π → π ≤ 1 → |m - π| ≤ η →
      m * (max (1 + a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 + b / r) 0) ^ (β * r) ≤ certU μ w β q →
      m * (max (1 - (q / (1 - q)) * a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 - (q / (1 - q)) * b / r) 0) ^ (β * r) ≤
          (1 - q) ^ (-β * w) →
      r * DiagRamsey.SE.LF w β x q m π r ≤ a →
      ∃ q' ∈ complementDegrees p μ w β x, |q' - q| ≤ ε ∧
        q * (m * a + (1 - m) * b) ≤ q' * certM p μ w β x q' + ε
```

</details>
$$m(1-ta/r)_+^{\beta r}+(1-m)(1-tb/r)_+^{\beta r}\le V(q),
\qquad t=\frac q{1-q}.$$

<details>
<summary>Lean comparison</summary>

This is the complementary-moment premise of the same theorem, with `t = q / (1 - q)`.

[`finite_row_approximation`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S5_LocalAlternative/L1_FiniteApproximation.lean#L21)

```lean
theorem finite_row_approximation {p μ w β x δ ε : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : 0 < μ ∧ μ < 1) (hw : 0 ≤ w)
    (hβ : 0 < β) (hx : 0 < x) (hgap : x < (1 - μ) ^ w)
    (hδ : 0 < δ) (hε : 0 < ε) :
    ∃ η > 0, ∃ R : ℝ, ∀ r ≥ R, ∀ q m π a b : ℝ,
      δ ≤ q → q ≤ μ + η → p - η ≤ m → m ≤ 1 →
      p - η ≤ π → π ≤ 1 → |m - π| ≤ η →
      m * (max (1 + a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 + b / r) 0) ^ (β * r) ≤ certU μ w β q →
      m * (max (1 - (q / (1 - q)) * a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 - (q / (1 - q)) * b / r) 0) ^ (β * r) ≤
          (1 - q) ^ (-β * w) →
      r * DiagRamsey.SE.LF w β x q m π r ≤ a →
      ∃ q' ∈ complementDegrees p μ w β x, |q' - q| ≤ ε ∧
        q * (m * a + (1 - m) * b) ≤ q' * certM p μ w β x q' + ε
```

</details>

Put

$$\ell=-w\log(1-q)+\log x+
\frac{(1-\beta)\log\pi-\log m}{\beta}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`ellF`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_PRL.lean#L11)

```lean
noncomputable def ellF (w β x q m π : ℝ) : ℝ :=
  -w * Real.log (1 - q) + Real.log x + ((1 - β) * Real.log π - Real.log m) / β
```

[`LF`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_PRL.lean#L15)

```lean
noncomputable def LF (w β x q m π r : ℝ) : ℝ :=
  (1 - q) * (1 - Real.exp (ellF w β x q m π / r)) / q
```

</details>

If $a\ge r(1-q)(1-e^{\ell/r})/q$, then there is $q'\in F_p$ such that

$$|q'-q|\le\varepsilon,\qquad
q\bigl(ma+(1-m)b\bigr)\le q'M_p(q')+\varepsilon.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`finite_row_approximation`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S5_LocalAlternative/L1_FiniteApproximation.lean#L21)

```lean
theorem finite_row_approximation {p μ w β x δ ε : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : 0 < μ ∧ μ < 1) (hw : 0 ≤ w)
    (hβ : 0 < β) (hx : 0 < x) (hgap : x < (1 - μ) ^ w)
    (hδ : 0 < δ) (hε : 0 < ε) :
    ∃ η > 0, ∃ R : ℝ, ∀ r ≥ R, ∀ q m π a b : ℝ,
      δ ≤ q → q ≤ μ + η → p - η ≤ m → m ≤ 1 →
      p - η ≤ π → π ≤ 1 → |m - π| ≤ η →
      m * (max (1 + a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 + b / r) 0) ^ (β * r) ≤ certU μ w β q →
      m * (max (1 - (q / (1 - q)) * a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 - (q / (1 - q)) * b / r) 0) ^ (β * r) ≤
          (1 - q) ^ (-β * w) →
      r * DiagRamsey.SE.LF w β x q m π r ≤ a →
      ∃ q' ∈ complementDegrees p μ w β x, |q' - q| ≤ ε ∧
        q * (m * a + (1 - m) * b) ≤ q' * certM p μ w β x q' + ε
```

</details>

**Proof.** Otherwise choose counterexamples with $r\to\infty$ and
$\eta\to0$. Extract limits $q\to q_0\in[\delta,\mu]$ and
$m,\pi\to d\ge p$. The first-cell density bound gives $d<1$.
The complementary moment bounds both scaled means, so section 3 extracts
a feasible limiting pair at density $d$. Section 4 transfers it to density
$p$ and bounds its objective by $M_p(q_0)$, contradicting the fixed
$\varepsilon$ failure. Both means are bounded before subsequence extraction.

Lean: `finite_row_approximation` in
[L1_FiniteApproximation.lean](L1_FiniteApproximation.lean).

## Lemma 5.2. Negative ordered envelope

Assume $F_p$ is nonempty and there is a function $E:(0,1]\to\mathbb R$
which is continuous, nondecreasing and integrable, satisfies

$$qM_p(q)+wq(1+\log u)\le E(u)
\quad(q\in F_p,\ 0<u\le1),\qquad \int_0^1E(u)\,du<0.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`ComplementEnvelope`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L1_FeasiblePairs.lean#L27)

```lean
def ComplementEnvelope (p μ w β x : ℝ) : Prop :=
  (complementDegrees p μ w β x).Nonempty ∧
  ∃ E : ℝ → ℝ, ContinuousOn E (Set.Ioc 0 1) ∧ MonotoneOn E (Set.Ioc 0 1) ∧
    IntervalIntegrable E MeasureTheory.volume 0 1 ∧
    (∀ u ∈ Set.Ioc 0 1, ∀ q ∈ complementDegrees p μ w β x,
      q * certM p μ w β x q + w * q * (1 + Real.log u) ≤ E u) ∧
    (∫ u in (0 : ℝ)..1, E u) < 0
```

</details>

For $\mu<1$ and $w>0$, there are $\varepsilon,\varphi>0$ and $R$
such that no data with $r\ge R$, $N\ge1$, $0\le q_i\le1$ can satisfy
all of the following: the ordered drift inequality of Section 2 with
right side $r\sum_iP_i$; the bound $rP_i\le w$ on every row; and, on
all but $\varphi N$ rows, a feasible $q'_i$ with

$$|q'_i-q_i|\le\varepsilon,\qquad
rP_i\le q'_iM_p(q'_i)+\varepsilon.$$

<details>
<summary>Lean comparison</summary>

The good-row approximation is the last premise of this contradiction theorem.

[`ordered_envelope_contradiction`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S5_LocalAlternative/L2_OrderedEnvelope.lean#L57)

```lean
theorem ordered_envelope_contradiction {p μ w β x : ℝ}
    (hμ : μ < 1) (hw : 0 < w) (henv : ComplementEnvelope p μ w β x) :
    ∃ ε > 0, ∃ φ > 0, ∃ R : ℝ,
      ∀ r ≥ R, ∀ N : ℕ, 0 < N → ∀ qs Ps : ℕ → ℝ, ∀ Gd : Finset ℕ,
      Gd ⊆ Finset.range N → (N : ℝ) - Gd.card ≤ φ * N →
      (∀ k < N, 0 ≤ qs k ∧ qs k ≤ 1) →
      (N : ℝ) * ∑ k ∈ Finset.range N, qs k *
        (PhiK r (1 - w / r) (((k : ℝ) + 1) / N) -
          PhiK r (1 - w / r) ((k : ℝ) / N)) ≤ r * ∑ k ∈ Finset.range N, Ps k →
      (∀ k < N, r * Ps k ≤ w) →
      (∀ k ∈ Gd, ∃ q' ∈ complementDegrees p μ w β x,
        |q' - qs k| ≤ ε ∧ r * Ps k ≤ q' * certM p μ w β x q' + ε) → False
```

</details>

**Proof.** Apply Lemma 5.1 on good rows after excluding small degrees.
For $0\le a\le b\le1$ and $q\in F_p$, integrate the majorant:

$$ (b-a)qM_p(q)+wq[b\log b-a\log a]\le\int_a^b E(u)\,du,$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`ordered_envelope_cell_lower`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S5_LocalAlternative/L2_OrderedEnvelope.lean#L18)

```lean
theorem ordered_envelope_cell_lower {p μ w β x q a b : ℝ} {E : ℝ → ℝ}
    (ha : 0 ≤ a) (hab : a ≤ b) (hb : b ≤ 1)
    (hE : IntervalIntegrable E volume 0 1)
    (hmajorant : ∀ u ∈ Set.Ioc (0 : ℝ) 1,
      ∀ q ∈ complementDegrees p μ w β x,
        q * certM p μ w β x q + w * q * (1 + Real.log u) ≤ E u)
    (hq : q ∈ complementDegrees p μ w β x) :
    (b - a) * (q * certM p μ w β x q) + w * q * (PhiL b - PhiL a) ≤
      ∫ u in a..b, E u
```

</details>

with $0\log0=0$. Sum these cell inequalities in the order from Lemma 2.4.
For $L(u)=u\log u$ and $J(u)=2u-u\log u$, let $\Delta L_i$ and
$\Delta J_i$ be their increments on $[i/N,(i+1)/N]$. The drift estimate gives

$$-\frac{4w^2}{r}\le T:=\sum_i\left(\frac{rP_i}{N}+wq_i\Delta L_i\right)
\qquad(r\ge2w).$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`lower_sum`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Assembly.lean#L43)

```lean
lemma lower_sum {w r : ℝ} {N : ℕ} (hN : 0 < N) (hw : 0 < w) (hr : 2 * w ≤ r) (qs Ps : ℕ → ℝ)
    (hq : ∀ k < N, 0 ≤ qs k ∧ qs k ≤ 1)
    (hdrift : (N:ℝ) * ∑ k ∈ Finset.range N, qs k * (PhiK r (1 - w / r) (((k:ℝ) + 1) / N) -
      PhiK r (1 - w / r) ((k:ℝ) / N)) ≤ r * ∑ k ∈ Finset.range N, Ps k) :
    -(4 * w ^ 2 / r) ≤ ∑ k ∈ Finset.range N,
      (r * Ps k / N + w * qs k * (PhiL (((k:ℝ) + 1) / N) - PhiL ((k:ℝ) / N)))
```

</details>

On good rows the integrated majorant bounds the summand by its cell
integral plus $\varepsilon/N+w\varepsilon\Delta J_i$; here
$|\Delta L_i|\le\Delta J_i$ and $\sum_i\Delta J_i=2$.
Fix $q_0\in F_p$ and put $C_0=|q_0M_p(q_0)|$. On the exceptional set
$S$, comparison with $q_0$ and $rP_i\le w$ adds at most
$(w+C_0)|S|/N+w\sum_{i\in S}\Delta J_i$. Concavity of $J$ gives,
for every $a>0$,

$$\sum_{i\in S}\Delta J_i\le(2+a)|S|/N+e^{-a-1}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`sum_dJ_le`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Lemmas/DiagRamsey_SE_Assembly.lean#L19)

```lean
lemma sum_dJ_le {N : ℕ} (hN : 0 < N) (S : Finset ℕ) (hS : S ⊆ Finset.range N) (a : ℝ) :
    ∑ k ∈ S, (JF (((k:ℝ) + 1) / N) - JF ((k:ℝ) / N)) ≤
      (2 + a) * ((S.card:ℝ) / N) + Real.exp (-a - 1)
```

</details>

Writing $C=-\int_0^1E>0$, we therefore obtain

$$T\le-C+\varepsilon(1+2w)
+\varphi\bigl(w+C_0+w(2+a)\bigr)+we^{-a-1}.$$

<details>
<summary>Lean comparison</summary>

The displayed upper bound is assembled inside this proof by summing good-row and exceptional-row costs. It is an intermediate estimate, not an additional theorem hypothesis.

[`ordered_envelope_contradiction`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S5_LocalAlternative/L2_OrderedEnvelope.lean#L57)

```lean
theorem ordered_envelope_contradiction {p μ w β x : ℝ}
    (hμ : μ < 1) (hw : 0 < w) (henv : ComplementEnvelope p μ w β x) :
    ∃ ε > 0, ∃ φ > 0, ∃ R : ℝ,
      ∀ r ≥ R, ∀ N : ℕ, 0 < N → ∀ qs Ps : ℕ → ℝ, ∀ Gd : Finset ℕ,
      Gd ⊆ Finset.range N → (N : ℝ) - Gd.card ≤ φ * N →
      (∀ k < N, 0 ≤ qs k ∧ qs k ≤ 1) →
      (N : ℝ) * ∑ k ∈ Finset.range N, qs k *
        (PhiK r (1 - w / r) (((k : ℝ) + 1) / N) -
          PhiK r (1 - w / r) ((k : ℝ) / N)) ≤ r * ∑ k ∈ Finset.range N, Ps k →
      (∀ k < N, r * Ps k ≤ w) →
      (∀ k ∈ Gd, ∃ q' ∈ complementDegrees p μ w β x,
        |q' - qs k| ≤ ε ∧ r * Ps k ≤ q' * certM p μ w β x q' + ε) → False
```

</details>

Choose $a$ large, then $\varepsilon,\varphi$ small and $r$ large so that
each error, including $4w^2/r$, is at most $C/16$. The upper and lower
bounds for $T$ contradict one another.

Under $0<p,\mu,\beta<1$, $w>0$, $0<x<p$ and $x<(1-\mu)^w$,
the finite moment and red-threshold hypotheses supply the good-row premise
by Lemma 5.1. The inherited degree-exclusion lemmas exclude $q=0$ and
then give a uniform positive lower cutoff for $q$; this is where $x<p$
is used. Thus Lemma 5.1 applies away from its singular degree endpoint.

The majorant premise is `ComplementEnvelope`, defined in section 4.
Lean: [`ordered_envelope_assembly`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S5_LocalAlternative/L2_OrderedEnvelope.lean#L187).
The error estimates above are implemented in `ordered_envelope_contradiction`;
`ordered_envelope_assembly` supplies its premises from finite row data.

## Theorem 5.3. A useful red or blue move

Assume $0<p,\mu,\beta<1$, $w>0$, $0<x<p$, $x<(1-\mu)^w$ and
`ComplementEnvelope`. There exist $\eta,\tau,\zeta>0$ and $R>w$ with
$\beta R>1$ such that, for every $r\ge R$, the following holds uniformly
over finite graphs $G,B$. Let $X,Y$ be disjoint and nonempty, with
$|c-p|\le\eta$, all $g_y>c$, and a row/column-maximal configuration.
For any $X_g\subseteq X$ satisfying

$$|X\setminus X_g|\le\zeta|X|,\qquad q_i\le\mu+\tau\quad(i\in X_g),$$

<details>
<summary>Lean comparison</summary>

These are the exceptional-set and degree hypotheses in the graph alternative below.

[`graph_alternative`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S5_LocalAlternative/L3_GraphAlternative.lean#L279)

```lean
theorem graph_alternative (p μ w β x : ℝ)
    (hp : 0 < p ∧ p < 1) (hμ : 0 < μ ∧ μ < 1) (hw : 0 < w)
    (hβ : 0 < β ∧ β < 1) (hx : 0 < x) (hxp : x < p)
    (hgap : x < (1 - μ) ^ w) (henv : ComplementEnvelope p μ w β x) :
    ∃ η τ ζ R : ℝ, 0 < η ∧ 0 < τ ∧ 0 < ζ ∧ w < R ∧ 1 < β * R ∧
      ∀ r : ℝ, R ≤ r →
      ∀ (V : Type) [Fintype V] [DecidableEq V] (G B : SimpleGraph V)
        (X Y : Finset V) (c : ℝ),
      X.Nonempty → Y.Nonempty → Disjoint X Y → |c - p| ≤ η →
      (∀ y ∈ Y, c < colDensity G X y) →
      RowColMaximal G X Y c w r (β * r) →
      ∀ Xg : Finset V, Xg ⊆ X →
      (X.card : ℝ) - (Xg.card : ℝ) ≤ ζ * (X.card : ℝ) →
      (∀ i ∈ Xg, graphFrac B X i ≤ μ + τ) →
      (∃ i ∈ X, 0 < graphFrac B X i ∧
        ¬ SharpBlueFailure G B X Y c μ w β (β * r) i) ∨
      (∃ i ∈ Xg, ¬ SharpRedFailure G B X Y c w β (β * r) x i)
```

</details>

there is either an $i\in X$ with $q_i>0$ for which `SharpBlueFailure`
is false, or an $i\in X_g$ for which `SharpRedFailure` is false.

**Proof.** Assume both failures hold throughout their respective
row sets. Set $P_i=q_i\mathbb E_\nu Z_i$. Stationarity and the ordering
lemma give the required drift, while blue failure gives $rP_i\le w$
for $r\ge2w$ (at $q_i=0$, $P_i=0$). Section 2's concentration estimates
remove only a small additional fraction of rows from $X_g$. On the remaining
rows $m_i,\pi_i\ge p-\delta$ and $|m_i-\pi_i|\le\delta$ for the tolerance
chosen in the assembly. Section 3 supplies both cell moments and the red
threshold, and partitioning the weighted mean gives

$$q_i\bigl(m_i a_i+(1-m_i)b_i\bigr)=rP_i.$$

<details>
<summary>Lean comparison</summary>

The weighted-mean decomposition in this lemma is multiplied by `q_i` in the graph-alternative proof, where `P_i = q_i * E_ν Z_i`.

[`graph_row_cell_moments`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S3_TwoCellReduction/L1_ConditionalJensen.lean#L161)

```lean
theorem graph_row_cell_moments
    {V : Type*} [Fintype V] [DecidableEq V]
    (G B : SimpleGraph V) (X Y : Finset V) (c w r β μ x : ℝ)
    (hX : X.Nonempty) (hY : Y.Nonempty) (hr : 0 < r) (hβ : 0 < β)
    (hs : 1 ≤ β * r) (hμ : 0 < μ) (hx : 0 < x)
    (hpos : ∀ y ∈ Y, c < colDensity G X y)
    (hmax : RowColMaximal G X Y c w r (β * r))
    (i : V) (hq : 0 < graphFrac B X i ∧ graphFrac B X i < 1)
    (hm : 0 < mr G X Y c (β * r) i ∧ mr G X Y c (β * r) i ≤ 1)
    (hπ : 0 < rowDensity G i Y)
    (hblue : SharpBlueFailure G B X Y c μ w β (β * r) i)
    (hred : SharpRedFailure G B X Y c w β (β * r) x i) :
    let q
```

</details>

These are exactly the hypotheses of Lemma 5.2, a contradiction.

Lean: [`graph_alternative`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S5_LocalAlternative/L3_GraphAlternative.lean#L279).
