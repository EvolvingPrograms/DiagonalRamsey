# 8. The Ramsey bound

**Sources.** The construction in Section 7 is converted to a Ramsey-number
bound using [Lu–Wang's colour-symmetry interface](../Support/LuWang/README.md)
and the [RamseyLean definitions](../Support/Ramsey/README.md).
Prefactor absorption is a standard asymptotic argument. The rational
exponential comparison certifies this proof's chosen base using Mathlib's
exponential estimates.

The dense profile of section 7 gives the diagonal bound by colour symmetry
and a strict exponent gap.

## Lemma 8.1. Absorbing a prefactor and rounding

If $C\ge1$ and $0\le z<\gamma$, then for all sufficiently large integers $k$,

$$\left\lceil Ce^{zk}\right\rceil\le e^{\gamma k}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`eventually_ceiling_exp_le`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S8_RamseyBound/L1_AsymptoticAbsorption.lean#L15)

```lean
theorem eventually_ceiling_exp_le {C z γ : ℝ}
    (hC : 1 ≤ C) (hz : 0 ≤ z) (hgap : z < γ) :
    ∀ᶠ k : ℕ in Filter.atTop,
      (⌈C * Real.exp (z * (k : ℝ))⌉₊ : ℝ) ≤ Real.exp (γ * k)
```

</details>

**Proof.** For
$k\ge\lceil\log(C+1)/(\gamma-z)\rceil$, we have

$$\lceil Ce^{zk}\rceil\le Ce^{zk}+1
\le(C+1)e^{zk}\le e^{\gamma k}.$$

<details>
<summary>Lean comparison</summary>

Exact excerpt of the ceiling and exponential comparison, in the context of the preceding theorem's hypotheses and its chosen threshold.

[Proof excerpt, lines 28–36](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S8_RamseyBound/L1_AsymptoticAbsorption.lean#L28-L36)

```lean
    Real.one_le_exp_iff.mpr (mul_nonneg hz (Nat.cast_nonneg k))
  calc
    (⌈C * Real.exp (z * (k : ℝ))⌉₊ : ℝ) ≤
        C * Real.exp (z * (k : ℝ)) + 1 :=
      (Nat.ceil_lt_add_one (by positivity)).le
    _ ≤ (C + 1) * Real.exp (z * (k : ℝ)) := by linarith
    _ = Real.exp (Real.log (C + 1) + z * (k : ℝ)) := by
      rw [Real.exp_add, Real.exp_log (by linarith : 0 < C + 1)]
    _ ≤ Real.exp (γ * k) := Real.exp_le_exp.mpr (by nlinarith)
```

</details>

Lean: `eventually_ceiling_exp_le` in
[L1_AsymptoticAbsorption.lean](L1_AsymptoticAbsorption.lean).

## Lemma 8.2. Dense profiles bound diagonal Ramsey numbers

If $z\ge0$ is a dense profile and $\gamma>z$, then eventually

$$R(k,k)\le e^{\gamma k}.$$

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`eventual_exponent_of_dense_profile`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S8_RamseyBound/L2_ComplementSymmetry.lean#L19)

```lean
theorem eventual_exponent_of_dense_profile
    {z γ : ℝ} (hz : 0 ≤ z) (hgap : z < γ)
    (hprofile : DenseProfile z) :
    ∀ᶠ k : ℕ in Filter.atTop,
      (RamseyBasics.ramseyNumber k k : ℝ) ≤ Real.exp (γ * k)
```

</details>

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

<details>
<summary>Lean comparison</summary>

Declaration excerpts; hypotheses and local notation are as in the linked source. Proof bodies are omitted.

[`rawExponent`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S7_ParameterChoice/L1_Parameters.lean#L28)

```lean
def rawExponent : ℚ := 625145177 / 500000000
```

[`exponent`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S7_ParameterChoice/L1_Parameters.lean#L29)

```lean
def exponent : ℚ := 250058071 / 200000000
```

[`exponent_gap`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S8_RamseyBound/L3_BaseComparison.lean#L16)

```lean
theorem exponent_gap : Real.exp (exponent : ℝ) < (base : ℝ)
```

</details>

**Proof.** The first gap is exactly $10^{-9}$. Put $u=\gamma/2\in[0,1]$.
The Taylor bound `Real.exp_bound'`, with $n=14$, gives

$$e^u\le T:=\sum_{j=0}^{13}\frac{u^j}{j!}
+\frac{15u^{14}}{14\cdot14!}.$$

<details>
<summary>Lean comparison</summary>

The proof applies `Real.exp_bound'` at `exponent / 2` with fourteen terms, evaluates the rational polynomial, and squares the bound. This is the exact source proof, not a separate approximation.

[Proof excerpt, lines 16–29](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S8_RamseyBound/L3_BaseComparison.lean#L16-L29)

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

#print axioms exponent_gap

```

</details>

Exact rational arithmetic gives $T^2<69827131/20000000$.
Since $e^u>0$, squaring proves $e^\gamma=(e^u)^2<b$.

Lean: `exponent_gap` in [L3_BaseComparison.lean](L3_BaseComparison.lean).

## Theorem 8.4. The diagonal bound

Section 7 supplies the unconditional dense profile at $z$; Lemmas 8.2–8.3 imply

$$\exists K\;\forall k\ge K:\quad R(k,k)\le3.49135655^k.$$

<details>
<summary>Lean comparison</summary>

The statement gives the explicit threshold form. The proof excerpt shows the exponential comparison in `eventually_ramsey`, whose eventual statement is converted to this threshold form.

[`eventual_diagonal_bound`](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S8_RamseyBound/L4_MainTheorem.lean#L32)

```lean
theorem eventual_diagonal_bound :
    ∃ K : ℕ, ∀ k : ℕ, K ≤ k →
      (RamseyBasics.ramseyNumber k k : ℝ) ≤ (3.49135655 : ℝ) ^ k
```

[Proof excerpt, lines 21–29](https://github.com/EvolvingPrograms/DiagonalRamsey/blob/main/lean/S8_RamseyBound/L4_MainTheorem.lean#L21-L29)

```lean
  have h := eventual_exponent_of_dense_profile
    (z := (rawExponent : ℝ)) (γ := (exponent : ℝ))
    (by norm_num [rawExponent]) (by norm_num [rawExponent, exponent])
    dense_root_profile_unconditional
  filter_upwards [h] with k hk
  calc
    (RamseyBasics.ramseyNumber k k : ℝ) ≤ Real.exp ((exponent : ℝ) * k) := hk
    _ = Real.exp (exponent : ℝ) ^ k := by rw [mul_comm, Real.exp_nat_mul]
    _ ≤ (base : ℝ) ^ k := pow_le_pow_left₀ (Real.exp_pos _).le exponent_gap.le k
```

</details>

**Proof.** Apply Lemma 8.2 with the strict exponent gap. Then
$e^{\gamma k}=(e^\gamma)^k\le(69827131/20000000)^k$.

Lean: `eventually_ramsey` in
[L4_MainTheorem.lean](L4_MainTheorem.lean). The equivalent explicit-threshold statement is `eventual_diagonal_bound`.
The [challenge solution](../../challenges/Comparison/Solution.lean) converts this
bound into the independent finite-graph statement. Comparator permits only
`propext`, `Classical.choice`, and `Quot.sound`.
