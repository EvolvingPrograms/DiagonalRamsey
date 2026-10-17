# 7. Parameter choice

The rational data in this section instantiate the local alternative and joint
induction. The finite inequalities and their coverage proofs are part of the proof.

The inherited profile/control data come from
[Zhao–Booth-Clibborn–Schwahn's Lean development](https://github.com/w2ll2am/diagonal-ramsey/tree/c2875f33a9d5c89f71c68f51b5767550570b5603);
the baseline is [Lu–Wang's uniform source bound](https://arxiv.org/abs/2609.14525)
(equation (32), Lemma B.1). We reassemble those inputs with the complementary
envelope and the four children and root specified here.

## Definition 7.1. Parameters

$$\begin{aligned}
p&=\frac{499999999}{10^9},& \mu&=\frac{405108059767}{10^{12}},\\
w&=\frac{104160447497}{250000000000},& \beta&=\frac{9999999}{10^7},\\
x&=\frac{337503}{10^6},& \xi&=x-\frac4{10^{11}}.
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`p`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L1_Parameters.lean#L15)

```lean
def p : ℚ := 499999999 / 1000000000
```

[`μ`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L1_Parameters.lean#L16)

```lean
def μ : ℚ := 405108059767 / 1000000000000
```

[`w`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L1_Parameters.lean#L17)

```lean
def w : ℚ := 104160447497 / 250000000000
```

[`β`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L1_Parameters.lean#L18)

```lean
def β : ℚ := 9999999 / 10000000
```

[`x`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L1_Parameters.lean#L19)

```lean
def x : ℚ := 337503 / 1000000
```

[`ξ`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L1_Parameters.lean#L20)

```lean
def ξ : ℚ := x - 4 / 100000000000
```

</details>

The chosen source coefficients and final exponents are

$$\begin{aligned}
A_s&=\frac{1086180879838687}{10^{15}},\\
B_s&=\frac{11640399543290787172985714354555752537}
{36367644171000000000000000000000000000}.
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`sourceA`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L1_Parameters.lean#L23)

```lean
def sourceA : ℚ := 1086180879838687 / 1000000000000000
```

[`sourceB`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L1_Parameters.lean#L24)

```lean
def sourceB : ℚ :=
  11640399543290787172985714354555752537 / 36367644171000000000000000000000000000
```

</details>

$$\begin{aligned}
z&=\frac{625145177}{500000000},\\
\gamma&=\frac{250058071}{200000000}=z+10^{-9},\\
b&=\frac{69827131}{20000000}=3.49135655.
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`rawExponent`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L1_Parameters.lean#L28)

```lean
def rawExponent : ℚ := 625145177 / 500000000
```

[`exponent`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L1_Parameters.lean#L29)

```lean
def exponent : ℚ := 250058071 / 200000000
```

[`base`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L1_Parameters.lean#L30)

```lean
def base : ℚ := 69827131 / 20000000
```

</details>

Lean: [L1_Parameters.lean](L1_Parameters.lean).

## Lemma 7.2. The complementary envelope

The chosen parameters satisfy $\operatorname{ComplementEnvelope}(p,\mu,w,\beta,x)$.

**Proof.** Put $a=2681/10000$. Rational interval bounds give

$$\mathcal F(a)>\frac{1769}{10^8}>0,\qquad
\mathcal F(\mu)<-\frac{47763}{10^6}<0.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`entropy_gap_at_cutoff`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L2_Control.lean#L96)

```lean
theorem entropy_gap_at_cutoff :
    (1769 : ℝ) / 100000000 < entropyGap p μ w β x degreeCutoff
```

[`entropy_gap_at_endpoint`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L2_Control.lean#L108)

```lean
theorem entropy_gap_at_endpoint :
    entropyGap p μ w β x μ < -(47763 : ℝ) / 1000000
```

</details>

The cutoff law places every feasible degree in $(a,\mu]$ and makes $\mu$
feasible. Set $q_i=a+i(\mu-a)/192$ and $m_i=(q_i+q_{i+1})/2$.
The budget is convex and negative at both endpoints, hence negative on
$[a,\mu]$. At each midpoint, the checked binding inequality selects the
explicit support formula of section 4.

Write $H(q)=q\operatorname{certM}(q)+wq$ and let
$T_i(q)=H(m_i)+D(m_i)(q-m_i)$ be its support line. Rational heights
$h_0,\ldots,h_{192}$ satisfy

$$T_i(q_i)\le h_i,\qquad T_i(q_{i+1})\le h_{i+1}.$$

<details>
<summary>Lean comparison</summary>

The last two conjuncts are the endpoint inequalities. `tangent.eval` is identified with the explicit support line by the expression identities in `Control/Expressions.lean`.

[`cell_inputs`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/Control/Envelope.lean#L93)

```lean
theorem cell_inputs (i : Fin cells) :
    (midpoint i : ℝ) ∈ positiveBudget p μ w β x ∧
    Real.log (p : ℝ) ≤ budgetGap p μ w β x (midpoint i) / midpoint i ∧
    (tangent (midpoint i) (knot i.castSucc)).eval 0 ≤ (height i.castSucc : ℝ) ∧
    (tangent (midpoint i) (knot i.succ)).eval 0 ≤ (height i.succ : ℝ)
```

</details>

Since $H\le T_i$, interpolation bounds $H$ throughout each cell. Thus,
for every feasible $q$ and every real $v$,

$$wqv+H(q)\le\max_{0\le i\le192}(wq_i v+h_i).$$

<details>
<summary>Lean comparison</summary>

The cell lemma bounds the objective by the two adjacent endpoint lines; `objective_coverage` selects a covering cell and places its lines below the hinge majorant. The displayed maximum over all knots is the intermediate finite-envelope formulation.

[`cell_objective_le_max`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/Control/Cell.lean#L50)

```lean
theorem cell_objective_le_max {l r m hL hR : ℚ} (hlr : l < r)
    (hm : (m : ℝ) ∈ positiveBudget p μ w β x)
    (hbinding : Real.log (p : ℝ) ≤ budgetGap p μ w β x m / m)
    (hleft : (tangent m l).eval 0 ≤ (hL : ℝ))
    (hright : (tangent m r).eval 0 ≤ (hR : ℝ))
    {q : ℝ} (hq : q ∈ positiveBudget p μ w β x) (hinterval : q ∈ Set.Icc (l : ℝ) r)
    (v : ℝ) :
    (w : ℝ) * q * v + (q * certM p μ w β x q + (w : ℝ) * q) ≤
      max ((w : ℝ) * l * v + hL) ((w : ℝ) * r * v + hR)
```

[`objective_coverage`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/Control/Envelope.lean#L114)

```lean
theorem objective_coverage : ∀ u ∈ Set.Ioc (0 : ℝ) 1, ∀ q ∈ complementDegrees p μ w β x,
    q * certM p μ w β x q + (w : ℝ) * q * (1 + Real.log u) ≤
      affineHingeMajorant first rest (Real.log u)
```

</details>

Put $a_i=wq_i$ and $r_i=(h_i-h_{i+1})/(a_{i+1}-a_i)$. The slopes strictly
increase. The hinge integral law and the exact bound

$$h_{192}-a_{192}+\sum_{i=0}^{191}(a_{i+1}-a_i)e^{r_i}
<-\frac{15}{10^8}$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`integral_sum_lt`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/Control/Integral.lean#L98)

```lean
theorem integral_sum_lt :
    (height (Fin.last cells) : ℝ) - slope (Fin.last cells) +
      ∑ i : Fin cells, (gap i : ℝ) * Real.exp (crossing i : ℝ) < -(15 : ℝ) / 100000000
```

</details>

give a negative integral majorant, hence the complementary envelope.
The logarithmic and exponential enclosures include proved semantic identities
and safe-domain conditions.

Lean: [cutoff](L2_Control.lean), [expression identities](Control/Expressions.lean),
[table](Control/Table.lean), [192 cell checks](Control/Checks.lean),
[interpolation](Control/Cell.lean), [integral](Control/Integral.lean),
[envelope assembly](Control/Envelope.lean).

## Lemma 7.3. A complete joint family

The [joint bank](Source/Joint/README.md) specifies uniform knots and profile
heights by exact affine or rounded-affine equations. Its inherited control
tables are generated from tangent lines $m_iq+c_i$: adjacent degree boundaries
are $(c_{i+1}-c_i)/(m_i-m_{i+1})$, and integration changeovers are
$(m_i+w)/w$. Nonincreasing slopes and adjacent sign brackets imply global
support, replacing the all-pairs corner checks by one concavity law.
The tables carry no additional independent parameters.

The family of 1,469 raw profiles, 947 closed profiles and 2,716 source lines
satisfies the hypotheses of section 6. In particular,

$$\exists C\ge1\;\forall k,\ell\ge1:\qquad
R(k,\ell)\le C e^{A_s k+B_s\ell}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`source_bound`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/L3_Source.lean#L10)

```lean
theorem source_bound : SourceAdmissible (sourceA : ℝ) (sourceB : ℝ)
```

[`SourceAdmissible`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S1_Definitions/L2_AdmissibleBounds.lean#L16)

```lean
def SourceAdmissible (A B : ℝ) : Prop :=
  ∃ C : ℝ, 1 ≤ C ∧ ∀ k l : ℕ, 0 < k → 0 < l →
    (RamseyBasics.ramseyNumber k l : ℝ) ≤ C * Real.exp (A * k + B * l)
```

</details>

**Proof.** Supply the four inputs to joint induction.

**Baseline.** The proved Lu–Wang finite source supplies, for every
$\varepsilon>0$, a uniform threshold
$C\exp(F_{\mathrm{LW}}(k,\ell)+\varepsilon(k+\ell))$.
The bridge identifies the functions at normalized ratio
$\min(k,\ell)/\max(k,\ell)\in[0,1]$ and handles integer ceilings.
See [Baseline.lean](Source/Baseline.lean) and
[BaselineInputs.lean](Source/Joint/BaselineInputs.lean).

**Source covers.** For every source $A_i+B_it$ and every $t>0$, a baseline
or complementary-profile witness has cost at most

$$A_i+B_it-\eta_0(1+t),\qquad \eta_0=\frac1{2\cdot10^{12}}.$$

<details>
<summary>Lean comparison</summary>

The common reserve is `HullCells.reserve = 1 / 2000000000000`. The declaration records the baseline-or-profile witness for each source line.

[`pointwise_source_cover`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/Source/JointFamily.lean#L416)

```lean
theorem pointwise_source_cover (i : SourceIndex) {t : ℝ} (ht : 0 < t) :
    PointwiseSource.Bound profile (symmetricProfile luWangSource 1) t
      (A i + B i * t - (HullCells.reserve : ℝ) * (1 + t))
```

</details>

For the chosen source, 81 profile-pair runs and two baseline tails give
the stronger reserve $10^{-9}$. The tails are

$$0<t\le\frac{80}{353}\qquad\text{or}\qquad
t\ge\frac{58673404100}{12245974793}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`leftEnd`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/Source/Tails.lean#L19)

```lean
def leftEnd : ℚ := 80 / 353
```

[`rightStart`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/Source/Tails.lean#L20)

```lean
def rightStart : ℚ := 58673404100 / 12245974793
```

[`left_bound`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/Source/Tails.lean#L48)

```lean
theorem left_bound {t : ℝ} (ht : 0 < t) (hle : t ≤ (leftEnd : ℝ)) :
    symmetricProfile luWangSource 1 t ≤
      (sourceA : ℝ) + (sourceB : ℝ) * t - (reserve : ℝ) * (1 + t)
```

[`right_bound`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/Source/Tails.lean#L64)

```lean
theorem right_bound {t : ℝ} (ht : 0 < t) (hle : (rightStart : ℝ) ≤ t) :
    symmetricProfile luWangSource 1 t ≤
      (sourceA : ℝ) + (sourceB : ℝ) * t - (reserve : ℝ) * (1 + t)
```

</details>

For inherited sources, use 130 hull lines $L_j(t)=a_j+b_jt$.
Decreasing slopes and increasing adjacent crossings $s_j$ imply

$$\begin{aligned}
L_j(t)-L_{j+1}(t)&=(b_j-b_{j+1})(t-s_j),\\
L_{\sigma(t)}(t)&=\min_jL_j(t).
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

Equality at the crossing and affine linearity give the displayed difference formula. `selected_le` states that the selected line is below every line, hence realizes the finite minimum.

[`crossing_values`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/Source/Hull.lean#L440)

```lean
theorem crossing_values (j : Fin 129) :
    line j.castSucc (crossing j) = line j.succ (crossing j)
```

[`selected_le`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S7_ParameterChoice/Source/Hull.lean#L480)

```lean
theorem selected_le (t : ℝ) : ∀ j : Fin 130, line (selector t) t ≤ line j t
```

</details>

Baseline tangent bounds and paired-profile intervals cover the selected line.
Each inherited source dominates a convex combination of two hull lines, hence
their minimum, with the same reserve. Two auxiliary sources have additional
covers. The profile embeddings are exact; these geometric witnesses require
no profile-admissibility premise.
See [chosen cover](Source/Cells.lean), [hull cover](Source/HullCover.lean),
[domination](Source/Domination.lean), [auxiliary sources](Source/AdditionalSources.lean),
and [joint family](Source/JointFamily.lean).

**Closed profiles.** Endpoint comparisons between a raw donor and a closed
profile extend over each common knot interval by affine interpolation.
Contiguous windows use the same law; complementary pairs supply the remaining
intervals by section 6. Checked integer partitions cover every original interval.
See [whole donors](Source/Joint/AlignedAssembly.lean),
[windows](Source/Joint/LocalAssembly.lean),
[complementary pairs](Source/Joint/ComplementaryAssembly.lean), and
[complete coverage](Source/Joint/ClosedCoverage.lean).

**Raw profiles.** For each raw profile $P$ and each interval $I$ in its domain
partition, leaf or route composition supplies a threshold $K$ satisfying
$\operatorname{PieceOK}(P,I,K)$. Its premises concern proper subgraphs.
Leaf runs share a terminal inequality; interval geometry supplies the remaining
input. Routes use checked controls, source indices and child profiles.
Five custom profiles have their own constructions. Checked consecutive runs
cover every raw interval.
See [leaf law](Source/Joint/FastLeaf.lean),
[leaf controls](Source/Joint/LeafControlsSound.lean),
[inherited controls](Source/Joint/InheritedControlsSound.lean),
[custom constructions](Source/Joint/CustomRecipes.lean),
[coverage law](Source/Joint/RawSelector.lean), and
[complete assembly](Source/Joint/RawAssembly.lean).

Joint induction proves the profile assertions and source bounds simultaneously
with one prefactor. Source slot 2715 gives the assertion above.
Lean: [L3_Source.lean](L3_Source.lean).

## Lemma 7.4. Four children and the root

Four additional child profiles and a root profile satisfy their proper-host
implications on their entire domains. The root has density $1/2$, domain
$[1-10^{-10},1+10^{-10}]$, and constant height $z$.

**Proof.** Use the exact data in [L4_Routes.lean](L4_Routes.lean).
Each child uses the proved control certificate and source slot 2714.
The root uses Lemma 7.2 and twelve child calls. The route checks prove
ordered ratio partitions, child-domain inclusion, strict slope slack,
terminal inequalities and a positive height margin. Route composition then
gives $\exists K\;\operatorname{PieceOK}$ on each full domain.
[ComplementRoutes.lean](ComplementRoutes.lean) connects the root's envelope
to this composition theorem.

## Theorem 7.5. The dense root profile

There exist $C\ge1$ and $K$ such that, for $k\ge K$, every graph of density
at least $1/2$ on at least $Ce^{zk}$ vertices contains a red or blue $K_k$.

**Proof.** Append the four children and root to the raw family. Embed the old
profiles identically: their proper-host implications remain valid under the
larger induction premise, and their source covers and closed recipes transfer.
Lemma 7.4 supplies the five new raw pieces. Apply joint induction with the
actual baseline and complete old raw assembly from Lemma 7.3. At ratio $1$,
the resulting root assertion has density $1/2$ and height $z$, giving the claim.

Lean: [extension law](RootExtension.lean), [root construction](RootConstruction.lean),
and [unconditional dense profile](L5_Root.lean).
Section 8 converts this profile to the eventual base $b$.
