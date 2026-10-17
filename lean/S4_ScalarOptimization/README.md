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

$$\begin{aligned}
A_0&\le A,\\
pe^{\beta A}+(1-p)e^{\beta C}&\le U,\\
pe^{-\beta tA}+(1-p)e^{-\beta tC}&\le V.
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`Feasible`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S1_Definitions/L3_MomentConstraints.lean#L16)

```lean
def Feasible (p β t U V A₀ A C : ℝ) : Prop :=
  A₀ ≤ A ∧
  p * Real.exp (β * A) + (1 - p) * Real.exp (β * C) ≤ U ∧
  p * Real.exp (-β * t * A) + (1 - p) * Real.exp (-β * t * C) ≤ V
```

</details>

Its objective is $J_p(A,C)=pA+(1-p)C$. Write $B=\log U/\beta$.
The shared Lean predicate is `DiagonalRamsey.Complement.Feasible`.
The optimization interface belongs to [L1_FeasiblePairs.lean](L1_FeasiblePairs.lean).

## Lemma 4.2. Convex averaging and boundary contraction

For $0<p<1$, $p\le d\le1$ and $a,c>0$, put

$$y=\frac{(d-p)a+(1-d)c}{1-p}.$$

<details>
<summary>Lean comparison</summary>

The displayed `y` is the weighted argument of `φ` in this contraction inequality.

[`convex_two_point_contraction`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L2_ConvexAveraging.lean#L21)

```lean
theorem convex_two_point_contraction {S : Set ℝ} {φ : ℝ → ℝ}
    (hφ : ConvexOn ℝ S φ) {x y p θ : ℝ}
    (hx : x ∈ S) (hy : y ∈ S) (hp : 0 ≤ p) (hp' : p ≤ 1)
    (hθ : 0 ≤ θ) (hθ' : θ ≤ 1) :
    p * φ (θ * x + (1 - θ) * (p * x + (1 - p) * y)) +
      (1 - p) * φ (θ * y + (1 - θ) * (p * x + (1 - p) * y)) ≤
      p * φ x + (1 - p) * φ y
```

</details>

Every convex function $\phi:(0,\infty)\to\mathbb R$ satisfies

$$p\phi(a)+(1-p)\phi(y)\le d\phi(a)+(1-d)\phi(c).$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`convex_two_point_contraction`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L2_ConvexAveraging.lean#L21)

Declaration shown above.

</details>

**Proof.** Apply Jensen with weights $(d-p)/(1-p)$ and $(1-d)/(1-p)$,
then add $p\phi(a)$. For concave functions the inequality reverses.

A second form fixes the mean. If $0<U<x_0\le x$ and $px<U$, put
$y=(U-px)/(1-p)$ and $y_0=(U-px_0)/(1-p)$. Then

$$p\phi(x_0)+(1-p)\phi(y_0)\le p\phi(x)+(1-p)\phi(y).$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`convex_two_point_boundary`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L2_ConvexAveraging.lean#L54)

```lean
theorem convex_two_point_boundary {φ : ℝ → ℝ}
    (hφ : ConvexOn ℝ (Set.Ioi 0) φ) {p U x₀ x : ℝ}
    (hp : 0 < p ∧ p < 1) (hU : 0 < U) (hx₀ : U < x₀)
    (hx : x₀ ≤ x) (hblue : p * x < U) :
    p * φ x₀ + (1 - p) * φ ((U - p * x₀) / (1 - p)) ≤
      p * φ x + (1 - p) * φ ((U - p * x) / (1 - p))
```

</details>

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

<details>
<summary>Lean comparison</summary>

The displayed `C'` is the witness `Real.log y / β` constructed inside this proof, with `y` its weighted exponential mean.

[`feasible_mass_transfer`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L3_DensityTransfer.lean#L21)

```lean
theorem feasible_mass_transfer {p d β t U V A₀ A₁ A C : ℝ}
    (hp : 0 < p ∧ p < 1) (hpd : p ≤ d) (hd : d ≤ 1)
    (hβ : 0 < β) (ht : 0 ≤ t) (hA₀ : A₀ ≤ A₁)
    (h : Complement.Feasible d β t U V A₁ A C) :
    ∃ C' : ℝ, Complement.Feasible p β t U V A₀ A C' ∧
      d * A + (1 - d) * C ≤ p * A + (1 - p) * C'
```

</details>

Then $(A,C')$ is feasible at mass $p$ with threshold $A_0$, and

$$J_d(A,C)\le J_p(A,C').$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`feasible_mass_transfer`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L3_DensityTransfer.lean#L21)

Declaration shown above.

</details>

**Proof.** Lemma 4.2 preserves the positive exponential moment, decreases
the negative exponential moment, and increases the logarithmic mean.
The first atom remains $A\ge A_1\ge A_0$.

For the degree-dependent threshold

$$A_d(q)=\frac{1-q}{q}\log\frac{d(1-q)^w}{x},\qquad 0<q<1,\ x>0,$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`certA`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_Cert.lean#L26)

```lean
noncomputable def certA (p w x q : ℝ) : ℝ :=
  (1 - q) / q * Real.log (p * (1 - q) ^ w / x)
```

[`complementDegrees_antitone`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L3_DensityTransfer.lean#L67)

```lean
theorem complementDegrees_antitone {p d μ w β x : ℝ}
    (hp : 0 < p ∧ p < 1) (hpd : p ≤ d) (hd : d ≤ 1)
    (hμ : μ < 1) (hβ : 0 < β) (hx : 0 < x) :
    complementDegrees d μ w β x ⊆ complementDegrees p μ w β x
```

</details>

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

<details>
<summary>Lean comparison</summary>

The displayed Jensen chain occurs in this proof; taking logarithms yields the declared upper bound on the mean.

[The Jensen and logarithm steps](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L4_NonbindingOptimum.lean#L20-L25):

```lean
  have hjensen := convexOn_exp.2 (Set.mem_univ (β * A))
    (Set.mem_univ (β * C)) hp.1 (sub_nonneg.mpr hp.2) (by ring)
  simp only [smul_eq_mul] at hjensen
  have hlog := (Real.log_le_log_iff (Real.exp_pos _) hU).mpr (hjensen.trans hblue)
  rw [Real.log_exp] at hlog
  apply (le_div_iff₀ hβ).mpr
```

[`mean_le_blue`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L4_NonbindingOptimum.lean#L16)

```lean
theorem mean_le_blue {p β U A C : ℝ}
    (hp : 0 ≤ p ∧ p ≤ 1) (hβ : 0 < β) (hU : 0 < U)
    (hblue : p * Real.exp (β * A) + (1 - p) * Real.exp (β * C) ≤ U) :
    p * A + (1 - p) * C ≤ Real.log U / β
```

</details>

so $J_p(A,C)\le B$.
Lean: `Complement.mean_le_blue`, `Complement.feasible_of_nonbinding`;
`L4_NonbindingOptimum.lean`.

## Lemma 4.5. The binding optimum

Suppose $A_0>B$. If $pe^{\beta A_0}\ge U$, no feasible pair exists.
Otherwise put

$$C_0=\frac1\beta\log\frac{U-pe^{\beta A_0}}{1-p}.$$

<details>
<summary>Lean comparison</summary>

The displayed `C₀` is expanded on the right side of this objective inequality; it is not a separate global definition.

[`objective_le_boundary`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L5_BindingOptimum.lean#L66)

```lean
theorem objective_le_boundary
    {p β t U V A₀ A C : ℝ}
    (hp : 0 < p ∧ p < 1) (hβ : 0 < β)
    (hU : 0 < U) (hA₀ : Real.log U / β < A₀)
    (_hblue : p * Real.exp (β * A₀) < U)
    (h : Feasible p β t U V A₀ A C) :
    p * A + (1 - p) * C ≤ p * A₀ + (1 - p) / β *
      Real.log ((U - p * Real.exp (β * A₀)) / (1 - p))
```

</details>

A feasible pair exists exactly when

$$pe^{-\beta tA_0}+(1-p)e^{-\beta tC_0}\le V.$$

<details>
<summary>Lean comparison</summary>

Substitute the definition of `C₀`; the source simplifies `-β * t * C₀` to `-t * log (…)`.

[`feasible_iff_boundary`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L5_BindingOptimum.lean#L18)

```lean
theorem feasible_iff_boundary
    {p β t U V A₀ : ℝ}
    (hp : 0 < p ∧ p < 1) (hβ : 0 < β) (ht : 0 < t)
    (hU : 0 < U) (hA₀ : Real.log U / β < A₀)
    (hblue : p * Real.exp (β * A₀) < U) :
    (∃ A C, Feasible p β t U V A₀ A C) ↔
      p * Real.exp (-β * t * A₀) + (1 - p) *
        Real.exp (-t * Real.log ((U - p * Real.exp (β * A₀)) / (1 - p))) ≤ V
```

</details>

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

$$\begin{aligned}
t(q)&=\frac q{1-q},& B(q)&=w\log\frac\mu q,\\
U(q)&=e^{\beta B(q)},& V(q)&=(1-q)^{-\beta w}.
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

`t` and `V` appear directly as arguments of `Complement.Feasible` in the degree-set definition.

[`certB`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_Cert.lean#L30)

```lean
noncomputable def certB (μ w q : ℝ) : ℝ :=
  w * Real.log (μ / q)
```

[`certU`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_Cert.lean#L34)

```lean
noncomputable def certU (μ w β q : ℝ) : ℝ :=
  Real.exp (β * certB μ w q)
```

[`complementDegrees`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L1_FeasiblePairs.lean#L19)

```lean
def complementDegrees (p μ w β x : ℝ) : Set ℝ :=
  {q | 0 < q ∧ q ≤ μ ∧ ∃ A C,
    Complement.Feasible p β (q / (1 - q)) (certU μ w β q)
      ((1 - q) ^ (-β * w)) (certA p w x q) A C}
```

</details>

Use the threshold $A_p(q)$ from Lemma 4.3. Let $F_p$ be the degrees
admitting a feasible pair. For $q\in F_p$, the maximum objective equals

$$M_p(q)=\begin{cases}
B(q),&A_p(q)\le B(q),\\[2mm]
pA_p(q)+\dfrac{1-p}{\beta}
\log\dfrac{U(q)-pe^{\beta A_p(q)}}{1-p},&A_p(q)>B(q).
\end{cases}$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`certM`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Published/Definitions/Def_DiagRamsey_Cert.lean#L38)

```lean
noncomputable def certM (p μ w β x q : ℝ) : ℝ :=
  if certA p w x q ≤ certB μ w q then certB μ w q
  else p * certA p w x q +
    (1 - p) / β * Real.log ((certU μ w β q - p * Real.exp (β * certA p w x q)) / (1 - p))
```

[`optimal_envelope_attained`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L6_OptimalEnvelope.lean#L72)

```lean
theorem optimal_envelope_attained {p μ w β x q : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : 0 < μ ∧ μ < 1) (hw : 0 ≤ w)
    (hβ : 0 < β) (hq : q ∈ complementDegrees p μ w β x) :
    ∃ A C : ℝ,
      Complement.Feasible p β (q / (1 - q)) (certU μ w β q)
        ((1 - q) ^ (-β * w)) (certA p w x q) A C ∧
      p * A + (1 - p) * C = certM p μ w β x q ∧
      ∀ A' C' : ℝ,
        Complement.Feasible p β (q / (1 - q)) (certU μ w β q)
          ((1 - q) ^ (-β * w)) (certA p w x q) A' C' →
        p * A' + (1 - p) * C' ≤ certM p μ w β x q
```

</details>

**Proof.** Apply Lemmas 4.4–4.5. In the nonbinding branch $B(q)\ge0$,
so $e^{-\beta t(q)B(q)}\le1\le V(q)$. In the binding branch membership
in $F_p$ ensures the logarithm is defined and the boundary pair is feasible.
Both optima are attained. Lemma 4.3 also bounds every higher-density feasible
objective by $M_p(q)$.

Section 5 uses the ordered expressions

$$qM_p(q)+wq(1+\log u),\qquad q\in F_p,\quad 0<u\le1.$$

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

Lean: `complementDegrees`, `DiagRamsey.certM`,
`feasible_objective_le_certM`, `feasible_density_transfer`, and
`optimal_envelope_attained` in
[L6_OptimalEnvelope.lean](L6_OptimalEnvelope.lean).
[Section 5](../S5_LocalAlternative/README.md) uses this maximum to prove
the graph alternative.

### Finite covers certify the integral

Let $S=F_p\ne\varnothing$, $H(q)=qM_p(q)$, and

$$\begin{aligned}
E(t)&=\sup_{q\in S}\lbrace H(q)+wq(1+\log t)\rbrace ,\\
\widetilde E(u)&=\sup_{q\in S}\lbrace H(q)+wq(1-u)\rbrace .
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

`degreeEnvelope` is the transformed supremum. The substitution identity below writes the original supremum explicitly.

[`degreeEnvelope`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Controls/Envelope.lean#L38)

```lean
noncomputable def degreeEnvelope (S : Set ℝ) (H : ℝ → ℝ) (w u : ℝ) : ℝ :=
  sSup ((fun q => H q+w*q*(1-u)) '' S)
```

[`original_integral_eq_transformed`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Controls/Substitution.lean#L49)

```lean
theorem original_integral_eq_transformed (S : Set ℝ) (H : ℝ → ℝ) (w : ℝ) :
    (∫ t in Ioo 0 1, originalDegreeEnvelope S H w t) =
      ∫ u in Ioi 0, degreeEnvelope S H w u*Real.exp (-u)
```

</details>

Cover $S$ by finitely many degree intervals. Associate each interval with
an affine majorant of $H$ valid on all of $S$, as required by the Lean
theorem's `hbound` hypothesis. Rational corner comparisons then bound
$\widetilde E(u)$ by $a_i u+b_i$ on integration cells $[l_i,r_i]$
covering $[0,T]$. If $\widetilde E(u)\le0$ for $u\ge T$, then

$$\int_0^1 E(t)\,dt
=\int_0^\infty\widetilde E(u)e^{-u}\,du
\le\sum_i\left[-(a_i(u+1)+b_i)e^{-u}\right]_{l_i}^{r_i}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`original_integral_eq_transformed`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/Support/Controls/Substitution.lean#L49)

Declaration shown above.

[`integral_bound_of_cover`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L6_OptimalEnvelope.lean#L231)

```lean
theorem integral_bound_of_cover (D : ParametricIntegral.Data) (h : CoverIntegralGeometry D)
    {S : Set ℝ} {H : ℝ → ℝ}
    (hne : S.Nonempty) (hS : S ⊆ Icc 0 (D.upper : ℝ))
    (hcover : ∀ q ∈ S, ∃ d ∈ D.degrees, q ∈ Icc (d.left : ℝ) (d.right : ℝ))
    (hH : ∀ d ∈ D.degrees, ∀ q ∈ S, H q ≤ (d.slope : ℝ)*q+d.intercept) :
    (∫ u in Ioi (0:ℝ), degreeEnvelope S H D.weight u*Real.exp (-u)) ≤
      (D.cells.map (fun i => TangentExpressions.primitive i i.right -
      TangentExpressions.primitive i i.left)).sum
```

</details>

**Proof.** Substitute $t=e^{-u}$, integrate the affine bounds, and discard
the nonpositive tail. A global affine bound and bounded degrees give
integrability and continuity; $wq\ge0$ gives monotonicity of $E$.
Thus a negative sum supplies every hypothesis of `ComplementEnvelope`.
Only feasible degrees need coverage, so a proved positive lower cutoff
requires no artificial cells below it.

Lean: [`complementEnvelope_of_cover`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L6_OptimalEnvelope.lean#L379),
with the regularity and integral lemmas immediately preceding it.

## Theorem 4.7. Entropy characterization of feasible degrees

Assume $0<x<p<1$, $\beta,w>0$ and $0<q\le\mu<1$. Put
$\theta=p(x/p)^\beta$ and

$$\begin{aligned}
Z_\theta(q)&=\theta(p/\theta)^{1/q}
+(1-\theta)((1-p)/(1-\theta))^{1/q},\\
H_\mu(q)&=(1-q)\log(1-q)+q\log(q/\mu),\\
\mathcal F(q)&=q\log Z_\theta(q)+\beta w H_\mu(q).
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`entropyMass`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L7_EntropyFeasibility.lean#L71)

```lean
noncomputable def entropyMass (p β x : ℝ) : ℝ :=
  p * Real.exp (β * Real.log (x / p))
```

[`entropyGap`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L7_EntropyFeasibility.lean#L76)

```lean
noncomputable def entropyGap (p μ w β x q : ℝ) : ℝ :=
  let θ := entropyMass p β x
  let partition := θ * Real.exp (Real.log (p / θ) / q) +
    (1 - θ) * Real.exp (Real.log ((1 - p) / (1 - θ)) / q)
  let degreeEntropy := (1 - q) * Real.log (1 - q) + q * Real.log (q / μ)
  q * Real.log partition + β * w * degreeEntropy
```

[`complementDegrees_iff_entropyGap`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L7_EntropyFeasibility.lean#L238)

```lean
theorem complementDegrees_iff_entropyGap {p μ w β x q : ℝ}
    (hp : 0 < p ∧ p < 1) (hx : 0 < x ∧ x < p) (hβ : 0 < β)
    (_hw : 0 < w) (hμ : 0 < μ ∧ μ < 1) (hq : 0 < q ∧ q ≤ μ) :
    q ∈ complementDegrees p μ w β x ↔ entropyGap p μ w β x q ≤ 0
```

</details>

Then $q\in F_p$ if and only if $\mathcal F(q)\le0$.

**Proof.** Normalize the complementary atoms as
$X=e^{-\beta tA}/V$, $Y=e^{-\beta tC}/V$. Then $X\le\theta/p<1$ and
$pX+(1-p)Y\le1$. Increase $Y$ to the boundary and contract both atoms
toward their mean until $X=\theta/p$. Convexity of $z\mapsto z^{-1/t}$
shows this minimizes the blue moment. Substituting the boundary atoms,
taking logarithms and multiplying by $q$ gives the displayed test.

Lean: [`complementDegrees_iff_entropyGap`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L7_EntropyFeasibility.lean#L238).

## Theorem 4.8. A cutoff from two signs

The function $\mathcal F$ is convex on $(0,1)$. If $0<a<\mu<1$,
$\mathcal F(a)>0$, and $\mathcal F(\mu)<0$, then

$$\mu\in F_p\subset(a,\mu].$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`complementDegrees_cutoff`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L8_ConvexDegreeCutoff.lean#L168)

```lean
theorem complementDegrees_cutoff {p μ w β x a : ℝ}
    (hp : 0 < p ∧ p < 1) (hx : 0 < x ∧ x < p) (hβ : 0 < β)
    (hw : 0 < w) (hμ : 0 < μ ∧ μ < 1) (ha : 0 < a ∧ a < μ)
    (hFa : 0 < entropyGap p μ w β x a)
    (hFμ : entropyGap p μ w β x μ < 0) :
    μ ∈ complementDegrees p μ w β x ∧
      complementDegrees p μ w β x ⊆ Set.Ioc a μ
```

</details>

**Proof.** Log-sum-exp is convex, and its positive perspective
$q\phi(1/q)$ remains convex. The remaining binary entropy term is convex.
If a feasible $q\le a$ existed, writing $a$ as a convex combination
of $q$ and $\mu$ would give $\mathcal F(a)\le0$, a contradiction.
The endpoint follows from Theorem 4.7.

Lean: [`complementDegrees_cutoff`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L8_ConvexDegreeCutoff.lean#L168).

## Theorem 4.9. Integrating a logarithmic hinge

For every real $r$, the logarithmic hinge is integrable and

$$\int_0^1(\log u-r)_+\,du\le e^r-r-1,$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`integral_log_hinge_le`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L9_AffineEnvelope.lean#L56)

```lean
theorem integral_log_hinge_le (r : ℝ) :
    (∫ u in (0 : ℝ)..1, max (Real.log u - r) 0) ≤ Real.exp r - r - 1
```

[`integral_log_hinge_of_nonpos`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L9_AffineEnvelope.lean#L28)

```lean
theorem integral_log_hinge_of_nonpos {r : ℝ} (hr : r ≤ 0) :
    (∫ u in (0 : ℝ)..1, max (Real.log u - r) 0) = Real.exp r - r - 1
```

</details>

with equality when $r\le0$.

**Proof.** For $r\le0$, integrate $\log u-r$ from $e^r$ to $1$.
For $r\ge0$, the hinge vanishes and $e^r\ge1+r$.

Lean: [`integral_log_hinge_le`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L9_AffineEnvelope.lean#L56).
For lines $a_i v+b_i$ with $a_0<\cdots<a_n$, put
$\Delta_i=a_{i+1}-a_i$ and $r_i=(b_i-b_{i+1})/\Delta_i$. Then

$$\max_i(a_i v+b_i)\le H(v):=a_0v+b_0+
\sum_{i<n}\Delta_i(v-r_i)_+,$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`affineHingeMajorant_dominates`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L9_AffineEnvelope.lean#L126)

```lean
theorem affineHingeMajorant_dominates (first : AffineLine) (rest : List AffineLine)
    (hslopes : (first :: rest).IsChain (fun l m => l.slope < m.slope))
    (v : ℝ) (l : AffineLine) (hl : l ∈ first :: rest) :
    l.eval v ≤ affineHingeMajorant first rest v
```

</details>

$$\int_0^1H(\log u)\,du\le b_n-a_n+
\sum_{i<n}\Delta_i e^{r_i}.$$

<details>
<summary>Lean comparison</summary>

The source uses the recursive `affineExponentialSum` for the telescoped right-hand side.

[`integral_affineHingeMajorant_le`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L9_AffineEnvelope.lean#L179)

```lean
theorem integral_affineHingeMajorant_le (first : AffineLine) (rest : List AffineLine)
    (hslopes : (first :: rest).IsChain (fun l m => l.slope < m.slope)) :
    (∫ u in (0 : ℝ)..1, affineHingeMajorant first rest (Real.log u)) ≤
      (rest.getLastD first).intercept - (rest.getLastD first).slope +
        affineExponentialSum first rest
```

</details>

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

$$q\longmapsto q\phi\left(\frac{g(q)}q\right)$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`concave_antitone_perspective`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L11_ConcavePerspective.lean#L18)

```lean
theorem concave_antitone_perspective {S : Set ℝ} {g φ : ℝ → ℝ}
    (hS : S ⊆ Set.Ioi 0) (hg : ConvexOn ℝ S g)
    (hφ : ConcaveOn ℝ (Set.Iio 0) φ) (hanti : AntitoneOn φ (Set.Iio 0))
    (hnegative : ∀ q ∈ S, g q < 0) :
    ConcaveOn ℝ S (fun q => q * φ (g q / q))
```

</details>

is concave on $S$. Normalize convex-combination weights by their
positive weighted mean, then apply monotonicity and concavity of $\phi$.

Lean: [`concave_antitone_perspective`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L11_ConcavePerspective.lean).

## Theorem 4.12. Clipped entropy

For $0<p<1$, put $f(z)=pz+(1-p)\log(1-e^z)$ and
$\bar f(z)=f(\max\lbrace z,\log p\rbrace )$. Then $\bar f$ is concave and
nonincreasing on $(-\infty,0)$, since

$$f'(z)=\frac{p-e^z}{1-e^z},\qquad
f''(z)=-\frac{(1-p)e^z}{(1-e^z)^2}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`deriv_entropyLog`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L12_ClippedEntropy.lean#L37)

```lean
theorem deriv_entropyLog (p : ℝ) {z : ℝ} (hz : z < 0) :
    deriv (entropyLog p) z = (p - Real.exp z) / (1 - Real.exp z)
```

[`deriv2_entropyLog`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L12_ClippedEntropy.lean#L60)

```lean
theorem deriv2_entropyLog (p : ℝ) {z : ℝ} (hz : z < 0) :
    deriv (deriv (entropyLog p)) z =
      -(1 - p) * Real.exp z / (1 - Real.exp z) ^ 2
```

</details>

Lean: [clipped entropy laws](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L12_ClippedEntropy.lean).

## Theorem 4.13. Concavity of the degree objective

Put $A=\operatorname{certA}(q)$, $B=\operatorname{certB}(q)$ and
$g(q)=q\log p+\beta q(A-B)$. For positive $x,\mu,w,\beta$ and $0<p<1$,
the domain $D=\lbrace q\in(0,1):g(q)<0\rbrace $ is convex, and

$$q\operatorname{certM}(q)+wq
=qB+wq+\frac q\beta[\bar f(g(q)/q)-f(\log p)]$$

<details>
<summary>Lean comparison</summary>

Add `w * q` to the identity to obtain the displayed expression. The second declaration proves concavity of that expression.

[`certM_entropy_identity`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L13_EnvelopeConcavity.lean#L98)

```lean
theorem certM_entropy_identity {p μ w β x q : ℝ} (hp : 0 < p ∧ p < 1)
    (_hμ : 0 < μ) (hx : 0 < x) (hβ : 0 < β) (_hw : 0 < w)
    (hq : q ∈ positiveBudget p μ w β x) :
    q * certM p μ w β x q + w * q = q * certB μ w q + w * q +
      (q / β) * (clippedEntropy p (budgetGap p μ w β x q / q) -
        entropyLog p (Real.log p))
```

[`concave_certM_intercept`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L13_EnvelopeConcavity.lean#L145)

```lean
theorem concave_certM_intercept {p μ w β x : ℝ} (hp : 0 < p ∧ p < 1)
    (hμ : 0 < μ) (hx : 0 < x) (hβ : 0 < β) (hw : 0 < w) :
    ConcaveOn ℝ (positiveBudget p μ w β x)
      (fun q => q * certM p μ w β x q + w * q)
```

</details>

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

<details>
<summary>Lean comparison</summary>

`z`, `c` and `s` are local definitions in `certSupportSlope`; `clippedEntropy_support` proves the nonpositive support slope.

[`certSupportSlope`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L13_EnvelopeConcavity.lean#L337)

```lean
noncomputable def certSupportSlope (p μ w β x m : ℝ) : ℝ :=
  let z := budgetGap p μ w β x m / m
  let c := max z (Real.log p)
  let s := (p - Real.exp c) / (1 - Real.exp c)
  certB μ w m + (clippedEntropy p z - entropyLog p (Real.log p) +
    s * (Real.log p + β * (-Real.log (p / x) + w * Real.log (m / (μ * (1 - m)))) - z)) / β
```

[`clippedEntropy_support`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L12_ClippedEntropy.lean#L142)

```lean
theorem clippedEntropy_support {p z z' : ℝ} (hp : 0 < p ∧ p < 1)
    (hz : z < 0) (hz' : z' < 0) :
    let c := max z (Real.log p)
    let s := (p - Real.exp c) / (1 - Real.exp c)
    clippedEntropy p z' ≤ clippedEntropy p z + s * (z' - z) ∧ s ≤ 0
```

</details>

$$g'(m)=\log p+\beta\left[-\log(p/x)+w\log\frac m{\mu(1-m)}\right],$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`hasDerivAt_budgetGap`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L13_EnvelopeConcavity.lean#L224)

```lean
theorem hasDerivAt_budgetGap {p μ w β x q : ℝ} (hμ : 0 < μ)
    (hq : q ∈ Set.Ioo (0 : ℝ) 1) :
    HasDerivAt (budgetGap p μ w β x)
      (Real.log p + β * (-Real.log (p / x) + w * Real.log (q / (μ * (1 - q))))) q
```

</details>

$$D_m=B(m)+\frac{\bar f(z)-f(\log p)+s(g'(m)-z)}{\beta}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`certSupportSlope`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L13_EnvelopeConcavity.lean#L337)

Declaration shown above.

</details>

Then, for every $q\in D$,

$$h(q)\le h(m)+D_m(q-m).$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`certM_intercept_le_explicit_support`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S4_ScalarOptimization/L13_EnvelopeConcavity.lean#L347)

```lean
theorem certM_intercept_le_explicit_support {p μ w β x m q : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : 0 < μ) (hx : 0 < x) (hβ : 0 < β) (hw : 0 < w)
    (hm : m ∈ positiveBudget p μ w β x) (hq : q ∈ positiveBudget p μ w β x) :
    q * certM p μ w β x q + w * q ≤
      m * certM p μ w β x m + w * m + certSupportSlope p μ w β x m * (q - m)
```

</details>

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
