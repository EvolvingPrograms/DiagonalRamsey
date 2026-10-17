# An eventual diagonal Ramsey bound

**Theorem.** For all sufficiently large integers $k$,

$$R(k,k)\le 3.49135655^k.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`eventual_diagonal_bound`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S8_RamseyBound/L4_MainTheorem.lean#L32)

```lean
theorem eventual_diagonal_bound :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
      (RamseyBasics.ramseyNumber k k : ℝ) ≤ (3.49135655 : ℝ) ^ k
```

</details>

This refines the method of Zhao, Booth-Clibborn and Schwahn.[^1]
We reuse their weighted potential, maximality machinery, finite-host closure
and source/profile framework (paper sections 3–5), as well as inherited
profile and control data. Their construction builds on Lu and Wang's
retained-set descent,[^2] whose finite source bound we use.

The refinement below retains the complementary-neighbourhood moment constraint,
derives its scalar feasibility and envelope laws, and supplies a retuned
source/root construction. The proof is an improvement within this framework.

**Proof.** Put

$$\begin{aligned}
z&=\frac{625145177}{500000000},\\
\gamma&=z+10^{-9}=\frac{250058071}{200000000},\\
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

We construct constants $C\ge1$ and $k_0$ such that every graph on
$N\ge Ce^{zk}$ vertices with red edge density at least $1/2$ contains a
monochromatic $K_k$, whenever $k\ge k_0$.

**1. [Potential and admissible bounds](S1_Definitions/README.md).**
For disjoint nonempty vertex sets $X,Y$, write
$g_y=|N_R(y)\cap X|/|X|$ and $a_+=\max(a,0)$. For $\beta,r>0$, use

$$\Phi_c(X,Y)=|X|^w|Y|
\left(\frac1{|Y|}\sum_{y\in Y}(g_y-c)_+^{\beta r}\right)^{1/\beta}.$$

<details>
<summary>Lean comparison</summary>

Inherited definitions, with `s = β * r`. The displayed exponent `1 / β` is the algebraic simplification of the nested positive powers in these definitions.

[`momentNorm`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L58)

```lean
noncomputable def momentNorm (G : SimpleGraph V) (X Y : Finset V) (c s : ℝ) : ℝ :=
  ((∑ y ∈ Y, (max (colDensity G X y - c) 0) ^ s) / (Y.card : ℝ)) ^ (1 / s)
```

[`potential`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/Support/Published/Definitions/Def_DiagRamsey_WeightedHost.lean#L63)

```lean
noncomputable def potential (G : SimpleGraph V) (X Y : Finset V) (c w r s : ℝ) : ℝ :=
  (X.card : ℝ) ^ w * (Y.card : ℝ) * (momentNorm G X Y c s) ^ r
```

</details>

Maximize over restrictions of either set. Source bounds have the form
$R(k,\ell)\le C_s e^{A_s k+B_s\ell}$; dense profiles record
clique-forcing bounds under a density hypothesis.

**2. [Consequences of maximality](S2_MaximalConfigurations/README.md).**
For positive column excesses, normalize $(g_y-c)^{\beta r}$ to a probability
measure $\nu$. For a blue-neighbourhood restriction of fraction $0<q<1$,
let $Z$ denote the relative change in excess red density.
Blue-move failure and maximality of the complementary
restriction give, respectively,

$$\begin{aligned}
\mathbb{E}_{\nu}\left[(1+Z)_+^{\beta r}\right]
&\le\left(\frac{\mu}{q}\right)^{\beta w},\\
\mathbb{E}_{\nu}\left[\left(1-\frac{q}{1-q}Z\right)_+^{\beta r}\right]
&\le(1-q)^{-\beta w}.
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

The first declaration gives the strict blue bound, which implies the displayed non-strict inequality. The second gives the complementary bound. Local graph variables and notation are defined in the linked files.

[`blue_lt`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/Support/Published/Lemmas/DiagRamsey_SE_GraphRows.lean#L110)

```lean
lemma blue_lt {μ w β : ℝ} (hY : Y.Nonempty) (hpos : ∀ y ∈ Y, c < colDensity G X y) (hμ0 : 0 < μ)
    (i : V) (hq0 : 0 < graphFrac B X i)
    (hblue : SharpBlueFailure G B X Y c μ w β s i) :
    ∑ y ∈ Y, nuW G X Y c s y * (max (1 + ZR G B X c i y) 0) ^ s < certU μ w β (graphFrac B X i)
```

[`complementary_row_moment`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S2_MaximalConfigurations/L2_ComplementaryMoment.lean#L47)

```lean
theorem complementary_row_moment
    {V : Type*} [Fintype V] [DecidableEq V]
    (G B : SimpleGraph V) (X Y : Finset V) (c w r β : ℝ)
    (hX : X.Nonempty) (hY : Y.Nonempty) (hr : 0 < r) (hβ : 0 < β)
    (hpos : ∀ y ∈ Y, c < colDensity G X y)
    (hmax : RowColMaximal G X Y c w r (β * r))
    (i : V) (hq : 0 < graphFrac B X i ∧ graphFrac B X i < 1) :
    ∑ y ∈ Y, nuW G X Y c (β * r) y *
      (max (1 - graphFrac B X i / (1 - graphFrac B X i) * ZR G B X c i y) 0) ^
        (β * r) ≤ (1 - graphFrac B X i) ^ (-β * w)
```

</details>

Maximality controls exceptional rows; ordering rows by retained fraction
bounds accumulated drift.

**3. [Reduction to two cells](S3_TwoCellReduction/README.md).**
Conditional Jensen reduces both moments to two conditional means.
A density cap excludes a degenerate cell mass; boundedness and compactness
give limiting exponential constraints. After the density transfer of
Section 4, these take the form

$$\begin{aligned}
A_0(q)&\le A,\\
pe^{\beta A}+(1-p)e^{\beta C}&\le U(q),\\
pe^{-\beta tA}+(1-p)e^{-\beta tC}&\le V(q),
\end{aligned}$$

<details>
<summary>Lean comparison</summary>

The displayed constraints are exactly `Complement.Feasible` with the stated budgets and threshold. Section 3 proves their limiting derivation; Section 4 proves density transfer.

[`Feasible`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S1_Definitions/L3_MomentConstraints.lean#L16)

```lean
def Feasible (p β t U V A₀ A C : ℝ) : Prop :=
  A₀ ≤ A ∧
  p * Real.exp (β * A) + (1 - p) * Real.exp (β * C) ≤ U ∧
  p * Real.exp (-β * t * A) + (1 - p) * Real.exp (-β * t * C) ≤ V
```

</details>

where $t=q/(1-q)$, $U(q)=(\mu/q)^{\beta w}$ and
$V(q)=(1-q)^{-\beta w}$.

**4. [Scalar optimization](S4_ScalarOptimization/README.md).**
For each feasible retained fraction $q\in F_p$, let $M_p(q)$ be the maximum
of $pA+(1-p)C$ subject to these constraints. The optimizer either
has $A=C=\log U(q)/\beta$, or has $A=A_0(q)$ with the positive
exponential constraint saturated. Concavity and affine majorants give
an explicitly integrable envelope

$$qM_p(q)+wq(1+\log u)\le E(u)
\qquad(q\in F_p,\ 0<u\le1).$$

<details>
<summary>Lean comparison</summary>

The displayed majorization is one field of this definition; it also requires regularity, a nonempty feasible set, and a negative integral.

[`ComplementEnvelope`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S4_ScalarOptimization/L1_FeasiblePairs.lean#L27)

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

**5. [The local red–blue alternative](S5_LocalAlternative/README.md).**
The chosen envelope satisfies $\int_0^1E(u)\,du<0$.
If every useful red and blue move failed, the moment bounds and ordered
drift inequality would force the opposite inequality in the limit.
Uniform finite approximations preserve the strict gap for sufficiently
large $r$. Hence every relevant maximal configuration admits a useful move.

**6. [Iteration and source admissibility](S6_GlobalConstruction/README.md).**
Iterate these moves along retained-set routes. Prove the source bounds
and supporting profiles simultaneously by induction on host order:
recursive invocations concern smaller hosts. Terminal controls,
support inequalities and interval covers close the construction.

**7. [The concrete construction](S7_ParameterChoice/README.md).**
The specified rational parameters, envelope, source family and route
covers satisfy those hypotheses. Four child profiles and a twelve-call
root construction yield the dense profile at exponent $z$ stated above.
This section supplies the finite numerical witnesses and their assembly.

**8. [The Ramsey bound](S8_RamseyBound/README.md).**
One colour has density at least $1/2$. Apply the dense profile to
$N=\lceil(C+2)e^{zk}\rceil$ and absorb the fixed prefactor:

$$R(k,k)\le\lceil(C+2)e^{zk}\rceil\le e^{\gamma k}$$

<details>
<summary>Lean comparison</summary>

These statements implement the displayed chain: the dense-profile theorem supplies the Ramsey bound, and the ceiling lemma absorbs the prefactor.

[`eventual_exponent_of_dense_profile`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S8_RamseyBound/L2_ComplementSymmetry.lean#L19)

```lean
theorem eventual_exponent_of_dense_profile
    {z γ : ℝ} (hz : 0 ≤ z) (hgap : z < γ)
    (hprofile : DenseProfile z) :
    ∀ᶠ k : ℕ in Filter.atTop,
      (RamseyBasics.ramseyNumber k k : ℝ) ≤ Real.exp (γ * k)
```

[`eventually_ceiling_exp_le`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S8_RamseyBound/L1_AsymptoticAbsorption.lean#L15)

```lean
theorem eventually_ceiling_exp_le {C z γ : ℝ}
    (hC : 1 ≤ C) (hz : 0 ≤ z) (hgap : z < γ) :
    ∀ᶠ k : ℕ in Filter.atTop,
      (⌈C * Real.exp (z * (k : ℝ))⌉₊ : ℝ) ≤ Real.exp (γ * k)
```

</details>

for sufficiently large $k$. With $u=\gamma/2$, exact rational arithmetic gives

$$e^\gamma\le
\left(\sum_{j=0}^{13}\frac{u^j}{j!}
+\frac{15u^{14}}{14\cdot14!}\right)^2<b.$$

<details>
<summary>Lean comparison</summary>

With `exponent` and `base` defined above, the complete Taylor-bound proof is:

[`exponent_gap`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/S8_RamseyBound/L3_BaseComparison.lean#L16)

```lean
theorem exponent_gap : Real.exp (exponent : ℝ) < (base : ℝ) := by
  have h := Real.exp_bound' (x := (exponent : ℝ) / 2)
    (by norm_num [exponent]) (by norm_num [exponent]) (n := 14) (by norm_num)
  norm_num [exponent, Finset.sum_range_succ, Nat.factorial] at h
  have hdouble : Real.exp (exponent : ℝ) = Real.exp ((exponent : ℝ) / 2) ^ 2 := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  rw [hdouble]
  norm_num [exponent, base]
  nlinarith [Real.exp_pos (250058071 / 400000000 : ℝ)]
```

</details>

Thus $R(k,k)\le b^k$. $\square$

The [independent challenge](Challenges/Comparison/Challenge.lean) states the
bound directly for finite graphs. Comparator checks its proved solution with
permitted axioms `propext`, `Classical.choice` and `Quot.sound`.

For setup, build commands and CI, see [verification](Scripts/README.md).

## References

[^1]: Zhipu Zhao, William Booth-Clibborn and Casper Schwahn,
    *A (3.49…)ᵏ bound for diagonal Ramsey numbers* (2026).
    [Paper](https://github.com/w2ll2am/diagonal-ramsey/blob/c2875f33a9d5c89f71c68f51b5767550570b5603/preprint/main.pdf)
    · [Lean code](https://github.com/w2ll2am/diagonal-ramsey/tree/c2875f33a9d5c89f71c68f51b5767550570b5603).

[^2]: Zhipeng Lu and Sichen Wang,
    *Retained-Set Descent for Diagonal Ramsey Numbers* (2026).
    [arXiv:2609.14525](https://arxiv.org/abs/2609.14525)
    · [Lean code](https://github.com/sichen-wang/diagonal-ramsey-numbers).

See [sources and attribution](NOTICE.md) for the foundational formalizations
and inherited libraries, and the section READMEs for specific uses.
