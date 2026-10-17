import S6_GlobalConstruction.L1_ProfileSupport
import S6_GlobalConstruction.L2_JointInduction
import S5_LocalAlternative.L3_GraphAlternative
import Support.Published.Lemmas.DiagRamsey_closure_of_envelope
import Support.Published.Lemmas.DiagRamsey_SB_Leaf
import Support.Published.Lemmas.DiagRamsey_SB_Route

/-!
# 6.3 Composition of retained restrictions
The finite-host closure proof is adapted from
`DiagRamsey.positive_weight_finite_host_closure_of_envelope`.
Only its local graph premise changes. The imported elementary growth estimates
`ClosureEnv.Q_bound` and `ClosureEnv.pow_r_bound` have no certificate premises.
Leaf, route, and piece-margin arguments are adapted from
`DiagRamsey_SB_Leaf`, `DiagRamsey_SB_Route`, and `DiagRamsey_JB_Raw`, preserving
their proper-subhost semantics.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open DiagRamsey DiagRamsey.ClosureEnv Finset Classical

set_option maxHeartbeats 4000000 in
/-- **Finite-host closure.** The complementary graph alternative forces a
clique whenever the retained-set volume exceeds the terminal source costs.
The stopping premise concerns proper subhosts, so it is suitable for joint
host-order induction. -/
theorem finite_host_closure (p μ w β x ξ y₀ ν xhat yhat : ℝ)
    (hp0 : 0 < p) (hp1 : p < 1) (hμ0 : 0 < μ) (hμ1 : μ < 1) (hw : 0 < w) (hβ0 : 0 < β) (hβ1 : β < 1)
    (hx0 : 0 < x) (hxp : x < p) (hxμ : x < (1 - μ) ^ w)
    (henv : ComplementEnvelope p μ w β x)
    (hξ0 : 0 < ξ) (_hξ1 : ξ < 1) (hy0 : 0 < y₀) (_hy1 : y₀ < 1)
    (hν0 : 0 < ν) (_hν1 : ν < 1)
    (_hxh0 : 0 < xhat) (_hxh1 : xhat < 1) (hyh0 : 0 < yhat) (_hyh1 : yhat < 1)
    (hξx : ξ < x) (hξxh : ξ < xhat) (hyy : y₀ < yhat) (hνμ : ν < μ) :
    ∃ L₀ : ℕ, ∀ C : ℝ, 1 ≤ C → ∀ ℓ : ℕ, L₀ ≤ ℓ →
      ∀ (V : Type) [Fintype V] [DecidableEq V] (G : SimpleGraph V),
        HostStopping G C xhat yhat ℓ →
        ∀ k t : ℕ, 0 < k → 0 < t → ∀ X Y : Finset V,
          X.Nonempty → Y.Nonempty → Disjoint X Y →
          p ≤ redDensity G X Y →
          C ^ (w + 1) * ξ ^ (-(k : ℝ)) * y₀ ^ (-(ℓ : ℝ)) * ν ^ (-(w * (t : ℝ))) ≤
            (X.card : ℝ) ^ w * (Y.card : ℝ) →
          HasRedClique G (X ∪ Y) k ∨ HasBlueClique G X t ∨ HasBlueClique G Y ℓ := by
  classical
  obtain ⟨η, τ, ζ, R, hη, hτ, hζ, hwR, hβR, hloc⟩ :=
    graph_failures_impossible p μ w β x hp0 hp1 hμ0 hμ1 hw hβ0 hβ1 hx0 hxp hxμ henv
  -- the intermediate parameters `λ = lam`, `y = yy`
  obtain ⟨lam, hlamd⟩ : ∃ lam : ℝ, lam = (ξ + min x xhat) / 2 := ⟨_, rfl⟩
  have hmin1 : ξ < min x xhat := lt_min hξx hξxh
  have hlamξ : ξ < lam := by rw [hlamd]; linarith
  have hlamx : lam < x := by have := min_le_left x xhat; rw [hlamd]; linarith
  have hlamxh : lam < xhat := by have := min_le_right x xhat; rw [hlamd]; linarith
  have hlam0 : 0 < lam := by linarith
  obtain ⟨yy, hyyd⟩ : ∃ yy : ℝ, yy = (y₀ + yhat) / 2 := ⟨_, rfl⟩
  have hy0yy : y₀ < yy := by rw [hyyd]; linarith
  have hyyh : yy < yhat := by rw [hyyd]; linarith
  have hyy0 : 0 < yy := by linarith
  -- cap and θ
  obtain ⟨τ', hτ'd⟩ : ∃ τ' : ℝ, τ' = min τ ((1 - μ) / 2) := ⟨_, rfl⟩
  have hτ'0 : 0 < τ' := by rw [hτ'd]; exact lt_min hτ (by linarith)
  have hτ'τ : τ' ≤ τ := by rw [hτ'd]; exact min_le_left _ _
  have hτ'μ : τ' ≤ (1 - μ) / 2 := by rw [hτ'd]; exact min_le_right _ _
  obtain ⟨cap, hcapd⟩ : ∃ cap : ℝ, cap = μ + τ' := ⟨_, rfl⟩
  have hcap0 : 0 ≤ cap := by rw [hcapd]; linarith
  have hcapτ : cap ≤ μ + τ := by rw [hcapd]; linarith
  have hcap1 : cap < 1 := by rw [hcapd]; linarith
  have hμcap : μ < cap := by rw [hcapd]; linarith
  obtain ⟨θ, hθd⟩ : ∃ θ : ℝ, θ = (μ + cap) / 2 := ⟨_, rfl⟩
  have hμθ : μ < θ := by rw [hθd]; linarith
  have hθcap : θ < cap := by rw [hθd]; linarith
  have hθ0 : 0 < θ := by linarith
  -- the moment exponent `r` and page-loss constant `D`
  obtain ⟨ε, hεd⟩ : ∃ ε : ℝ, ε = min (1 / 4) ((cap - θ) / 2) := ⟨_, rfl⟩
  have hε : 0 < ε := by rw [hεd]; exact lt_min (by norm_num) (by linarith)
  obtain ⟨r, hrR, h2w, hDr⟩ := exists_r_small w β (max R (2 / β)) ε hw hβ0 hβ1 hε
  have hRr : R ≤ r := (le_max_left _ _).trans hrR
  have hr2 : 2 / β ≤ r := (le_max_right _ _).trans hrR
  have hs1 : 1 < β * r := by
    have := mul_le_mul_of_nonneg_left hr2 hβ0.le
    rw [mul_div_cancel₀ _ hβ0.ne'] at this; linarith
  have hwr : w < r := by linarith
  obtain ⟨D, hDd⟩ : ∃ D : ℝ, D = w / (r - w) + 1 - (1 - β) ^ (1 / (β * r)) := ⟨_, rfl⟩
  have hDε : D < ε := by rw [hDd]; exact hDr
  have hD4 : D ≤ 1 / 4 := by have := min_le_left (1 / 4 : ℝ) ((cap - θ) / 2); rw [← hεd] at this; linarith
  have hDh : D < (cap - θ) / 2 := by
    have := min_le_right (1 / 4 : ℝ) ((cap - θ) / 2); rw [← hεd] at this; linarith
  have hh : 0 < cap - θ - D := by linarith
  -- the shift `δ`
  obtain ⟨δ, hδd⟩ : ∃ δ : ℝ, δ = min (p / 2) η / 2 := ⟨_, rfl⟩
  have hδ0 : 0 < δ := by rw [hδd]; exact half_pos (lt_min (by linarith) hη)
  have hδη : δ ≤ η := by have := min_le_right (p / 2) η; rw [hδd]; linarith
  have hδp : δ < p := by have := min_le_left (p / 2) η; rw [hδd]; linarith
  -- the growth rate `a`
  have hlx : 0 < Real.log (xhat / lam) := Real.log_pos (by rw [lt_div_iff₀ hlam0]; linarith)
  have hly : 0 < Real.log (yhat / yy) := Real.log_pos (by rw [lt_div_iff₀ hyy0]; linarith)
  have hlμ : 0 < Real.log (1 / μ) := Real.log_pos (by rw [lt_div_iff₀ hμ0]; linarith)
  obtain ⟨a, had⟩ : ∃ a : ℝ, a = min (Real.log (xhat / lam) / w)
      (min (Real.log (yhat / yy) / w) (Real.log (1 / μ))) := ⟨_, rfl⟩
  have ha0 : 0 < a := by rw [had]; exact lt_min (div_pos hlx hw) (lt_min (div_pos hly hw) hlμ)
  have hax : a * w ≤ Real.log (xhat / lam) := by
    have : a ≤ Real.log (xhat / lam) / w := by rw [had]; exact min_le_left _ _
    rwa [le_div_iff₀ hw] at this
  have hay : a * w ≤ Real.log (yhat / yy) := by
    have : a ≤ Real.log (yhat / yy) / w := by rw [had]; exact (min_le_right _ _).trans (min_le_left _ _)
    rwa [le_div_iff₀ hw] at this
  have haμ : a ≤ Real.log (1 / μ) := by rw [had]; exact (min_le_right _ _).trans (min_le_right _ _)
  -- book sizes `b_n`, `m_n = M₀ b_n`
  have hρ : 0 < Real.log (θ / μ) := Real.log_pos (by rw [lt_div_iff₀ hμ0]; linarith)
  have hwρ : 0 < w * Real.log (θ / μ) := mul_pos hw hρ
  obtain ⟨B₀, hB₀d⟩ : ∃ B₀ : ℝ, B₀ = |w * Real.log 2 - r * Real.log δ| / (w * Real.log (θ / μ)) :=
    ⟨_, rfl⟩
  obtain ⟨B₁, hB₁d⟩ : ∃ B₁ : ℝ, B₁ = 2 * r / (w * Real.log (θ / μ)) := ⟨_, rfl⟩
  have hB₀ : 0 ≤ B₀ := by rw [hB₀d]; exact div_nonneg (abs_nonneg _) hwρ.le
  have hB₁ : 0 ≤ B₁ := by rw [hB₁d]; exact div_nonneg (by linarith) hwρ.le
  obtain ⟨M₀, hM₀d⟩ : ∃ M₀ : ℕ, M₀ = ⌈2 / (cap - θ - D)⌉₊ + 2 := ⟨_, rfl⟩
  have hM₀2 : 2 ≤ M₀ := by omega
  have hM₀h : 2 / (cap - θ - D) ≤ (M₀ : ℝ) := by
    have := Nat.le_ceil (2 / (cap - θ - D))
    have h' : ((⌈2 / (cap - θ - D)⌉₊ : ℕ) : ℝ) ≤ M₀ := by exact_mod_cast (show _ ≤ M₀ by omega)
    linarith
  obtain ⟨b, hbd⟩ : ∃ b : ℕ → ℕ, b = fun n : ℕ => ⌈B₀ + B₁ * Real.log (n : ℝ)⌉₊ + 1 := ⟨_, rfl⟩
  obtain ⟨m, hmd⟩ : ∃ m : ℕ → ℕ, m = fun n => M₀ * b n := ⟨_, rfl⟩
  have hbn : ∀ n, 1 ≤ b n ∧ b n ≤ m n ∧ (b n : ℝ) / (m n) ≤ (cap - θ - D) / 2 := by
    intro n
    have hb1 : 1 ≤ b n := by rw [hbd]; exact Nat.le_add_left 1 _
    refine ⟨hb1, ?_, ?_⟩
    · rw [hmd]; exact Nat.le_mul_of_pos_left _ (by omega)
    · have hb0 : (0 : ℝ) < b n := by exact_mod_cast hb1
      have hM0 : (0 : ℝ) < M₀ := by exact_mod_cast (show 0 < M₀ by omega)
      rw [hmd]
      push_cast
      rw [show (b n : ℝ) / ((M₀ : ℝ) * b n) = 1 / M₀ by field_simp, div_le_div_iff₀ hM0 two_pos]
      rw [div_le_iff₀ hh] at hM₀h
      linarith
  have hm2 : ∀ n, 2 ≤ m n := by
    intro n
    rw [hmd]
    calc 2 = 2 * 1 := by norm_num
      _ ≤ M₀ * b n := Nat.mul_le_mul hM₀2 (hbn n).1
  have hbook : ∀ n : ℕ, 1 ≤ n → (μ ^ w) ^ (b n) ≤ (θ ^ w) ^ (b n) * (δ / (n : ℝ) ^ 2) ^ r / 2 ^ w := by
    intro n hn
    have hn1 : (0 : ℝ) < n := by exact_mod_cast hn
    have hbL : B₀ + B₁ * Real.log n ≤ (b n : ℝ) := by
      rw [hbd]; push_cast
      have := Nat.le_ceil (B₀ + B₁ * Real.log n); linarith
    have hkey : w * Real.log 2 - r * Real.log δ + 2 * r * Real.log n ≤
        (b n : ℝ) * (w * Real.log (θ / μ)) := by
      have h1 := mul_le_mul_of_nonneg_right hbL hwρ.le
      have e : (B₀ + B₁ * Real.log n) * (w * Real.log (θ / μ)) =
          |w * Real.log 2 - r * Real.log δ| + 2 * r * Real.log n := by
        rw [hB₀d, hB₁d]; field_simp
      have := le_abs_self (w * Real.log 2 - r * Real.log δ)
      linarith
    rw [← Real.log_le_log_iff (by positivity) (by positivity)]
    rw [Real.log_pow, Real.log_rpow hμ0, Real.log_div (by positivity) (by positivity),
      Real.log_mul (by positivity) (by positivity), Real.log_pow, Real.log_rpow hθ0,
      Real.log_rpow (by positivity), Real.log_div hδ0.ne' (by positivity), Real.log_pow,
      Real.log_rpow two_pos]
    rw [Real.log_div hθ0.ne' hμ0.ne'] at hkey
    push_cast
    linarith
  -- size requirements
  have hmb : ∀ n : ℕ, 1 ≤ n → (m n : ℝ) ≤ M₀ * (B₀ + 2) + M₀ * B₁ * Real.log n := by
    intro n hn
    have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
    have hL0 : 0 ≤ Real.log n := Real.log_nonneg hn1
    have hc := Nat.ceil_lt_add_one (show 0 ≤ B₀ + B₁ * Real.log n by positivity)
    rw [hmd, hbd]; push_cast
    have hM0 : (0 : ℝ) ≤ M₀ := Nat.cast_nonneg _
    have := mul_le_mul_of_nonneg_left
      (show (⌈B₀ + B₁ * Real.log n⌉₊ : ℝ) + 1 ≤ B₀ + B₁ * Real.log n + 2 by linarith) hM0
    linarith
  obtain ⟨K, hK0, hKb⟩ := Q_bound a (M₀ * (B₀ + 2)) (M₀ * B₁) ha0 (by positivity) (by positivity) m hmb
  -- seed constant
  have hνw : 0 < ν ^ w := Real.rpow_pos_of_pos hν0 w
  have hμw : 0 < μ ^ w := Real.rpow_pos_of_pos hμ0 w
  have hνμw : ν ^ w < μ ^ w := Real.rpow_lt_rpow hν0.le hνμ hw
  obtain ⟨A, hAd⟩ : ∃ A : ℝ, A = min (lam / ξ) (μ ^ w / ν ^ w) := ⟨_, rfl⟩
  have hA : 1 < A := by
    rw [hAd]
    exact lt_min (by rw [lt_div_iff₀ hξ0]; linarith) (by rw [lt_div_iff₀ hνw]; linarith)
  obtain ⟨K', hK'0, hK'b⟩ := pow_r_bound r A hA
  obtain ⟨Kc, hKcd⟩ : ∃ Kc : ℝ, Kc = 4 + 2 / (cap - θ - D) + 1 / ζ + (1 + 1 / δ) / (1 - cap) :=
    ⟨_, rfl⟩
  have hk1 : 0 ≤ 2 / (cap - θ - D) := by positivity
  have hk2 : 0 ≤ 1 / ζ := by positivity
  have hk3 : 0 ≤ (1 + 1 / δ) / (1 - cap) := div_nonneg (by positivity) (by linarith)
  have hKc0 : 0 < Kc := by rw [hKcd]; linarith
  obtain ⟨L1, hL1⟩ := pow_unbounded_of_one_lt (Kc * K) (Real.one_lt_exp_iff.mpr ha0)
  have hyy1 : 1 < yy / y₀ := by rw [lt_div_iff₀ hy0]; linarith
  obtain ⟨L2, hL2⟩ := pow_unbounded_of_one_lt (K' / δ ^ r) hyy1
  refine ⟨max L1 L2, ?_⟩
  intro C hC ℓ hℓ V _ _ G hstop k t hk ht X Y hX hY hXY hd hsz
  have hsize : ∀ n : ℕ, 1 ≤ n → ∀ N : ℝ, Real.exp (a * ((n : ℝ) + ℓ)) < N →
      4 * (m n : ℝ) ≤ N ∧ 2 * (m n : ℝ) / (cap - θ - D) ≤ N ∧
        (((n + m n : ℕ)) : ℝ) ^ (m n) ≤ ζ * N ∧ 1 + (n : ℝ) ^ 2 / δ ≤ N * (1 - cap) := by
    intro n hn N hN
    have hQ := hKb n hn
    have hexp : Real.exp (a * ((n : ℝ) + ℓ)) = Real.exp a ^ n * Real.exp a ^ ℓ := by
      rw [mul_add, Real.exp_add, mul_comm a, mul_comm a, Real.exp_nat_mul, Real.exp_nat_mul]
    have hℓ1 : Kc * K < Real.exp a ^ ℓ :=
      hL1.trans_le (pow_le_pow_right₀ (Real.one_lt_exp_iff.mpr ha0).le ((le_max_left _ _).trans hℓ))
    obtain ⟨Q, hQd⟩ : ∃ Q : ℝ, Q = (((n + m n : ℕ)) : ℝ) ^ (m n) := ⟨_, rfl⟩
    rw [← hQd] at hQ ⊢
    have hNQ : Kc * Q ≤ N := by
      calc Kc * Q ≤ Kc * (K * Real.exp a ^ n) := mul_le_mul_of_nonneg_left hQ hKc0.le
        _ = (Kc * K) * Real.exp a ^ n := by ring
        _ ≤ Real.exp a ^ ℓ * Real.exp a ^ n := mul_le_mul_of_nonneg_right hℓ1.le (by positivity)
        _ = Real.exp (a * ((n : ℝ) + ℓ)) := by rw [hexp]; ring
        _ ≤ N := hN.le
    have hm1 : 1 ≤ m n := le_trans (by norm_num) (hm2 n)
    have hmQ : (m n : ℝ) ≤ Q := by
      rw [hQd]
      have : m n ≤ (n + m n) ^ (m n) :=
        (Nat.le_add_left _ _).trans (Nat.le_self_pow (by omega) _)
      exact_mod_cast this
    have hn2Q : (n : ℝ) ^ 2 ≤ Q := by
      rw [hQd]
      have : n ^ 2 ≤ (n + m n) ^ (m n) :=
        (Nat.pow_le_pow_left (Nat.le_add_right _ _) 2).trans
          (Nat.pow_le_pow_right (by omega) (hm2 n))
      exact_mod_cast this
    have hQ0 : 0 ≤ Q := le_trans (Nat.cast_nonneg _) hmQ
    have hn1 : (1 : ℝ) ≤ n := by exact_mod_cast hn
    have hKc4 : 4 * Q ≤ Kc * Q := by
      apply mul_le_mul_of_nonneg_right _ hQ0; rw [hKcd]; linarith
    have hKc1 : 2 / (cap - θ - D) * Q ≤ Kc * Q := by
      apply mul_le_mul_of_nonneg_right _ hQ0; rw [hKcd]; linarith
    have hKc2 : 1 / ζ * Q ≤ Kc * Q := by
      apply mul_le_mul_of_nonneg_right _ hQ0; rw [hKcd]; linarith
    have hKc3 : (1 + 1 / δ) / (1 - cap) * Q ≤ Kc * Q := by
      apply mul_le_mul_of_nonneg_right _ hQ0; rw [hKcd]; linarith
    refine ⟨?_, ?_, ?_, ?_⟩
    · linarith
    · have e : 2 * (m n : ℝ) / (cap - θ - D) = 2 / (cap - θ - D) * m n := by ring
      rw [e]
      have := mul_le_mul_of_nonneg_left hmQ hk1
      linarith
    · have e : Q = ζ * (1 / ζ * Q) := by field_simp
      rw [e]
      exact mul_le_mul_of_nonneg_left (hKc2.trans hNQ) hζ.le
    · have h1c : 0 < 1 - cap := by linarith
      have e : (1 - cap) * ((1 + 1 / δ) / (1 - cap) * Q) = (1 + 1 / δ) * Q := by
        have e0 : (1 - cap) * ((1 + 1 / δ) / (1 - cap) * Q) = ((1 - cap) / (1 - cap)) * ((1 + 1 / δ) * Q) := by
          ring
        rw [e0, div_self h1c.ne', one_mul]
      have h5 : 1 + (n : ℝ) ^ 2 / δ ≤ (1 + 1 / δ) * Q := by
        have : 1 + (n : ℝ) ^ 2 / δ ≤ (1 + 1 / δ) * (n : ℝ) ^ 2 := by
          have : (1 : ℝ) ≤ (n : ℝ) ^ 2 := one_le_pow₀ hn1
          have e2 : (1 + 1 / δ) * (n : ℝ) ^ 2 = (n : ℝ) ^ 2 + (n : ℝ) ^ 2 / δ := by ring
          linarith
        exact this.trans (mul_le_mul_of_nonneg_left hn2Q (by positivity))
      have h6 := mul_le_mul_of_nonneg_left (hKc3.trans hNQ) h1c.le
      rw [e] at h6
      linarith
  -- seed: `Thr ≤ Φ_n(X, Y)` at `n = k + t`
  have hn1 : 1 ≤ k + t := by omega
  have hseed : Thr C w lam yy μ ℓ k t ≤ potential G X Y (p - δ / ((k + t : ℕ) : ℝ)) w r (β * r) := by
    have hn : (1 : ℝ) ≤ ((k + t : ℕ) : ℝ) := by exact_mod_cast hn1
    have hn0 : (0 : ℝ) < ((k + t : ℕ) : ℝ) := by linarith
    have hr0 : 0 < r := by linarith
    have hN0 : (0 : ℝ) < X.card := by exact_mod_cast hX.card_pos
    have hM0 : (0 : ℝ) < Y.card := by exact_mod_cast hY.card_pos
    have hH := avg_sub_le_momentNorm G X Y (p - δ / ((k + t : ℕ) : ℝ)) (β * r) hY hs1.le
    rw [← redDensity_eq_avg G X Y hX] at hH
    have hH' : δ / ((k + t : ℕ) : ℝ) ≤ momentNorm G X Y (p - δ / ((k + t : ℕ) : ℝ)) (β * r) := by
      linarith
    have hHr := Real.rpow_le_rpow (by positivity) hH' hr0.le
    have hC0 : 0 < C := by linarith
    have hsz' : C ^ (w + 1) / (ξ ^ k * y₀ ^ ℓ * (ν ^ w) ^ t) ≤ (X.card : ℝ) ^ w * (Y.card : ℝ) := by
      have e : C ^ (w + 1) / (ξ ^ k * y₀ ^ ℓ * (ν ^ w) ^ t) =
          C ^ (w + 1) * ξ ^ (-(k : ℝ)) * y₀ ^ (-(ℓ : ℝ)) * ν ^ (-(w * (t : ℝ))) := by
        rw [Real.rpow_neg hξ0.le, Real.rpow_neg hy0.le, Real.rpow_neg hν0.le, Real.rpow_mul hν0.le]
        simp only [Real.rpow_natCast]
        rw [div_eq_mul_inv, mul_inv, mul_inv]; ring
      rw [e]; exact hsz
    have hA1 : A * ξ ≤ lam := by
      have : A ≤ lam / ξ := by rw [hAd]; exact min_le_left _ _
      rwa [le_div_iff₀ hξ0] at this
    have hA2 : A * ν ^ w ≤ μ ^ w := by
      have : A ≤ μ ^ w / ν ^ w := by rw [hAd]; exact min_le_right _ _
      rwa [le_div_iff₀ hνw] at this
    have hA0 : 0 < A := by linarith
    have h1 : A ^ k * ξ ^ k ≤ lam ^ k := by
      rw [← mul_pow]; exact pow_le_pow_left₀ (by positivity) hA1 k
    have h2 : A ^ t * (ν ^ w) ^ t ≤ (μ ^ w) ^ t := by
      rw [← mul_pow]; exact pow_le_pow_left₀ (by positivity) hA2 t
    have hℓ2 : K' / δ ^ r < (yy / y₀) ^ ℓ :=
      hL2.trans_le (pow_le_pow_right₀ hyy1.le ((le_max_right _ _).trans hℓ))
    have h3 : K' * y₀ ^ ℓ < yy ^ ℓ * δ ^ r := by
      rw [div_pow, div_lt_div_iff₀ (by positivity) (by positivity)] at hℓ2
      exact hℓ2
    have h4 := hK'b (k + t) hn1
    have hP1 : 0 < ξ ^ k * y₀ ^ ℓ * (ν ^ w) ^ t := by positivity
    have key : ξ ^ k * y₀ ^ ℓ * (ν ^ w) ^ t * ((k + t : ℕ) : ℝ) ^ r ≤
        lam ^ k * yy ^ ℓ * (μ ^ w) ^ t * δ ^ r := by
      calc ξ ^ k * y₀ ^ ℓ * (ν ^ w) ^ t * ((k + t : ℕ) : ℝ) ^ r
          ≤ ξ ^ k * y₀ ^ ℓ * (ν ^ w) ^ t * (K' * A ^ (k + t)) := mul_le_mul_of_nonneg_left h4 hP1.le
        _ = (A ^ k * ξ ^ k) * (A ^ t * (ν ^ w) ^ t) * (K' * y₀ ^ ℓ) := by rw [pow_add]; ring
        _ ≤ lam ^ k * (μ ^ w) ^ t * (yy ^ ℓ * δ ^ r) :=
          mul_le_mul (mul_le_mul h1 h2 (by positivity) (by positivity)) h3.le (by positivity)
            (by positivity)
        _ = lam ^ k * yy ^ ℓ * (μ ^ w) ^ t * δ ^ r := by ring
    unfold Thr potential
    calc C ^ (w + 1) / (lam ^ k * yy ^ ℓ * (μ ^ w) ^ t)
        = C ^ (w + 1) * δ ^ r / (lam ^ k * yy ^ ℓ * (μ ^ w) ^ t * δ ^ r) := by
          field_simp
      _ ≤ C ^ (w + 1) * δ ^ r / (ξ ^ k * y₀ ^ ℓ * (ν ^ w) ^ t * ((k + t : ℕ) : ℝ) ^ r) :=
          div_le_div_of_nonneg_left (by positivity) (by positivity) key
      _ = C ^ (w + 1) / (ξ ^ k * y₀ ^ ℓ * (ν ^ w) ^ t) * (δ ^ r / ((k + t : ℕ) : ℝ) ^ r) := by
          rw [mul_div_mul_comm]
      _ ≤ (X.card : ℝ) ^ w * (Y.card : ℝ) * (δ ^ r / ((k + t : ℕ) : ℝ) ^ r) :=
          mul_le_mul_of_nonneg_right hsz' (by positivity)
      _ = (X.card : ℝ) ^ w * (Y.card : ℝ) * (δ / ((k + t : ℕ) : ℝ)) ^ r := by
          rw [Real.div_rpow hδ0.le hn0.le]
      _ ≤ _ := mul_le_mul_of_nonneg_left hHr (by positivity)
  exact closure_induction G p μ w β x η τ ζ R C lam yy xhat yhat cap θ D δ r a ℓ b m hloc hstop hw hβ0 hβ1
    hx0 hμ0 hlam0 hlamx hyy0 hC (by linarith) (by linarith) hRr hwr hs1 hcap0 hcapτ hcap1 hθ0 hθcap hδ0
    hδη hδp (le_of_eq hDd.symm) hD4 hh hax hay haμ hbn hbook hsize (k + t) k t rfl hk ht X Y hX hY hXY
    hseed

#print axioms finite_host_closure

/-- **Proper-host terminal.** The source premise on proper subsets supplies
stopping for a complementary control, with the retained volume written in
logarithmic form. -/
lemma finite_host_closure_of_prem {m : ℕ} {A B : Fin m → ℝ} (γ : SharpControl m) (hγ : ComplementControlValid A B γ)
    (hA : ∀ i, 0 < A i) (hB : ∀ i, 0 < B i) :
    ∃ L₀ : ℕ, ∀ C : ℝ, 1 ≤ C → ∀ (V : Type) [Fintype V] [DecidableEq V], Prem A B C V →
      ∀ (G : SimpleGraph V) (k ℓ t : ℕ), 0 < k → 0 < t → L₀ ≤ ℓ → 0 < ℓ → ∀ X Y : Finset V,
        X.Nonempty → Y.Nonempty → Disjoint X Y → γ.p ≤ redDensity G X Y →
        (γ.w + 1) * Real.log C + (k * γ.Aγ + ℓ * γ.Bγ + γ.w * t * γ.bγ) ≤
          γ.w * Real.log X.card + Real.log Y.card →
        HasRedClique G (X ∪ Y) k ∨ HasBlueClique G X t ∨ HasBlueClique G Y ℓ := by
  obtain ⟨hp0, hp1, hμ0, hμ1, hw, hβ0, hβ1, hx0, hxp, hxμ, henv, hξ0, hξx, hξA, hy0, hyB, hν0, hνμ⟩ := hγ
  have hξ1 : γ.ξ < 1 := lt_trans hξA (Real.exp_lt_one_iff.mpr (by linarith [hA γ.σ]))
  have hy1 : γ.y₀ < 1 := lt_trans hyB (Real.exp_lt_one_iff.mpr (by linarith [hB γ.σ]))
  obtain ⟨L₀, hL₀⟩ := finite_host_closure γ.p γ.μ γ.w γ.β γ.x γ.ξ γ.y₀ γ.ν
    (Real.exp (-A γ.σ)) (Real.exp (-B γ.σ)) hp0 hp1 hμ0 hμ1 hw hβ0 hβ1 hx0 hxp hxμ henv hξ0 hξ1 hy0 hy1
    hν0 (by linarith) (Real.exp_pos _) (Real.exp_lt_one_iff.mpr (by linarith [hA γ.σ])) (Real.exp_pos _)
    (Real.exp_lt_one_iff.mpr (by linarith [hB γ.σ])) hξx hξA hyB hνμ
  refine ⟨L₀, fun C hC V _ _ hP G k ℓ t hk ht hL hℓ X Y hX hY hXY hd hvol => ?_⟩
  have hC0 : 0 < C := by linarith
  have hXc : (0 : ℝ) < X.card := by exact_mod_cast hX.card_pos
  have hYc : (0 : ℝ) < Y.card := by exact_mod_cast hY.card_pos
  refine hL₀ C hC ℓ hL V G (hostStopping_of_prem hP G γ.σ ℓ hℓ) k t hk ht X Y hX hY hXY hd ?_
  rw [← Real.exp_log (mul_pos (Real.rpow_pos_of_pos hXc _) hYc), Real.log_mul
    (Real.rpow_pos_of_pos hXc _).ne' hYc.ne', Real.log_rpow hXc]
  rw [Real.rpow_def_of_pos hC0, Real.rpow_def_of_pos hξ0, Real.rpow_def_of_pos hy0,
    Real.rpow_def_of_pos hν0, ← Real.exp_add, ← Real.exp_add, ← Real.exp_add]
  apply Real.exp_le_exp.mpr
  simp only [SharpControl.Aγ, SharpControl.Bγ, SharpControl.bγ] at hvol
  nlinarith

/-- **Leaf profile.** A complementary control gives its leaf line with
uniform prefactor `3`, using the source only on proper subhosts. -/
theorem complementary_leaf_relValid {m : ℕ} {A B : Fin m → ℝ} (hA : ∀ i, 0 < A i) (hB : ∀ i, 0 < B i)
    (γ : SharpControl m) (hγ : ComplementControlValid A B γ) (α ω : ℝ) (hα : 0 < α) :
    RelValid A B γ.p α ω γ.leafLine := by
  obtain ⟨L₀, hL₀⟩ := finite_host_closure_of_prem γ hγ hA hB
  have hγ' := hγ
  obtain ⟨hp0, hp1, hμ0, hμ1, hw, -, -, hx0, hxp, -, -, hξ0, hξx, hξA, hy0, hyB, hν0, hνμ⟩ := hγ'
  have hAγ : 0 < γ.Aγ := by
    have := Real.log_lt_log hξ0 hξA; rw [Real.log_exp] at this
    simp only [SharpControl.Aγ]; linarith [hA γ.σ]
  have hBγ : 0 < γ.Bγ := by
    have := Real.log_lt_log hy0 hyB; rw [Real.log_exp] at this
    simp only [SharpControl.Bγ]; linarith [hB γ.σ]
  have hbγ : 0 < γ.bγ := by
    simp only [SharpControl.bγ]; linarith [Real.log_neg hν0 (by linarith : γ.ν < 1)]
  -- K with ⌊α k⌋ ≥ max L₀ 1
  obtain ⟨K, hK⟩ := exists_nat_ge (((L₀ : ℝ) + 1) / α)
  refine ⟨3, by norm_num, K, fun C hC V _ _ hP G W k r hk hr1 _ hdens hsize => ?_⟩
  have hC0 : 0 < C := by linarith
  have hkα : (L₀ : ℝ) + 1 ≤ α * k := by
    have h1 : ((L₀ : ℝ) + 1) / α ≤ k := hK.trans (by exact_mod_cast hk)
    rw [div_le_iff₀ hα] at h1; linarith
  have hr0 : 0 < r := lt_of_lt_of_le hα hr1
  set ℓ := ⌊r * k⌋₊ with hℓdef
  have hℓ1 : (L₀ : ℝ) + 1 ≤ r * k := by nlinarith [show (0 : ℝ) ≤ k by positivity]
  have hℓL : L₀ ≤ ℓ := by
    rw [hℓdef]; apply Nat.le_floor; linarith
  have hℓ0 : 0 < ℓ := by
    rw [hℓdef]; apply Nat.floor_pos.mpr; linarith
  have hℓr : (ℓ : ℝ) ≤ r * k := Nat.floor_le (by positivity)
  have hk0 : 0 < k := by
    rcases Nat.eq_zero_or_pos k with h | h
    · subst h; simp at hkα; linarith [show (0 : ℝ) ≤ L₀ by positivity]
    · exact h
  -- the cut
  set E : ℝ := k * γ.leafLine r with hE
  have hE0 : 0 ≤ E := by
    rw [hE, SharpControl.leafLine]; positivity
  have hW3 : (3 : ℝ) ≤ W.card := by
    have : 1 ≤ C * Real.exp E := one_le_mul_of_one_le_of_one_le hC (Real.one_le_exp hE0)
    nlinarith
  have hW2 : 2 ≤ W.card := by exact_mod_cast (show (2 : ℝ) ≤ W.card by linarith)
  obtain ⟨X, hXW, hX3, hY3, hcross⟩ := density_balanced_cut G W hW2 γ.p (by unfold redPairs at hdens; exact hdens)
  set Y := W \ X with hYdef
  have hXne : X.Nonempty := by rw [← Finset.card_pos]; omega
  have hYne : Y.Nonempty := by rw [← Finset.card_pos]; omega
  have hXc : (0 : ℝ) < X.card := by exact_mod_cast hXne.card_pos
  have hYc : (0 : ℝ) < Y.card := by exact_mod_cast hYne.card_pos
  have hdens' : γ.p ≤ redDensity G X Y := by
    unfold redDensity; rw [le_div_iff₀ (mul_pos hXc hYc)]; exact hcross
  have hX : C * Real.exp E ≤ X.card := by
    have : (W.card : ℝ) ≤ 3 * X.card := by exact_mod_cast hX3
    linarith
  have hY : C * Real.exp E ≤ Y.card := by
    have : (W.card : ℝ) ≤ 3 * Y.card := by exact_mod_cast hY3
    linarith
  have hlX : Real.log C + E ≤ Real.log X.card := by
    rw [← Real.log_exp E, ← Real.log_mul hC0.ne' (Real.exp_pos _).ne']
    exact Real.log_le_log (by positivity) hX
  have hlY : Real.log C + E ≤ Real.log Y.card := by
    rw [← Real.log_exp E, ← Real.log_mul hC0.ne' (Real.exp_pos _).ne']
    exact Real.log_le_log (by positivity) hY
  have hvol : (γ.w + 1) * Real.log C + (k * γ.Aγ + ℓ * γ.Bγ + γ.w * ℓ * γ.bγ) ≤
      γ.w * Real.log X.card + Real.log Y.card := by
    have hEq : (1 + γ.w) * E = k * γ.Aγ + r * k * (γ.Bγ + γ.w * γ.bγ) := by
      rw [hE, SharpControl.leafLine]; field_simp
    have h1 : (ℓ : ℝ) * (γ.Bγ + γ.w * γ.bγ) ≤ r * k * (γ.Bγ + γ.w * γ.bγ) :=
      mul_le_mul_of_nonneg_right hℓr (by positivity)
    nlinarith [mul_le_mul_of_nonneg_left hlX hw.le]
  rcases hL₀ C hC V hP G k ℓ ℓ hk0 hℓ0 hℓL hℓ0 X Y hXne hYne Finset.disjoint_sdiff hdens' hvol with
    ⟨S, hS, h⟩ | ⟨S, hS, h⟩ | ⟨S, hS, h⟩
  · exact Or.inl ⟨S, hS.trans (Finset.union_subset hXW Finset.sdiff_subset), h⟩
  · exact Or.inr ⟨S, hS.trans hXW, h⟩
  · exact Or.inr ⟨S, hS.trans Finset.sdiff_subset, h⟩

#print axioms finite_host_closure_of_prem
#print axioms complementary_leaf_relValid

set_option maxHeartbeats 4000000 in
/-- **Retained-route profile.** Proper-subhost child profiles pay each
restriction step, and a complementary terminal control closes the remaining
cut. The shared host premise supplies source stopping only on proper subsets. -/
theorem complementary_route_relValidP {m n : ℕ} {A B : Fin m → ℝ} (hA : ∀ i, 0 < A i) (hB : ∀ i, 0 < B i)
    (Pm : ∀ (_C : ℝ) (V : Type) [Fintype V] [DecidableEq V], Prop)
    (hPm : ∀ (C : ℝ) (V : Type) [Fintype V] [DecidableEq V], Pm C V → Prem A B C V)
    (R : RouteNode n m) (hγ : ComplementControlValid A B R.γ) (hpγ : R.γ.p < R.p) (hp1 : R.p < 1) (hM : 0 < R.M) (hθ : 0 < R.θ)
    (hmono : StrictMono R.u) (hg0 : 0 < R.g₀) (hε : 0 < R.ε)
    (pc lo hi : Fin R.M → ℝ) (Lc : Fin R.M → ℝ → ℝ)
    (hcall : ∀ j, RelValidPr Pm (pc j) (lo j) (hi j) (Lc j))
    (hlo : ∀ j, lo j ≤ R.u j.castSucc) (hhi : ∀ j, R.u j.succ ≤ hi j)
    (hpc0 : ∀ j, 0 < pc j) (hpc1 : ∀ j, pc j < 1)
    (hdj : ∀ j, -Real.log (1 - pc j) < R.d j)
    (hgt : ∀ j s, R.u j.castSucc ≤ s → s ≤ R.u j.succ → Lc j s < R.g s) :
    RelValidP Pm R.p R.θ R.ω R.out := by
  obtain ⟨L₀, hL₀⟩ := finite_host_closure_of_prem R.γ hγ hA hB
  choose Dc hDc1 Kc hKc using hcall
  have hγ' := hγ
  obtain ⟨hπ0, hπ1, hμ0, hμ1, hw, -, -, -, -, -, -, hξ0, -, hξA, hy0, hyB, hν0, hνμ⟩ := hγ'
  set π := R.γ.p with hπdef
  set w := R.γ.w with hwdef
  -- terminal constants
  have hAγ : 0 < R.γ.Aγ := by
    have := Real.log_lt_log hξ0 hξA; rw [Real.log_exp] at this
    simp only [SharpControl.Aγ]; linarith [hA R.γ.σ]
  have hBγ : 0 < R.γ.Bγ := by
    have := Real.log_lt_log hy0 hyB; rw [Real.log_exp] at this
    simp only [SharpControl.Bγ]; linarith [hB R.γ.σ]
  have hbγ : 0 < R.γ.bγ := by
    simp only [SharpControl.bγ]; linarith [Real.log_neg hν0 (by linarith : R.γ.ν < 1)]
  -- slopes
  have hexp : ∀ j, Real.exp (-R.d j) < 1 - pc j := by
    intro j
    have h1 : 0 < 1 - pc j := by linarith [hpc1 j]
    calc Real.exp (-R.d j) < Real.exp (Real.log (1 - pc j)) := Real.exp_lt_exp.mpr (by linarith [hdj j])
      _ = 1 - pc j := Real.exp_log h1
  have hd : ∀ j, 0 < R.d j := by
    intro j
    have : Real.log (1 - pc j) < 0 := Real.log_neg (by linarith [hpc1 j]) (by linarith [hpc0 j])
    linarith [hdj j]
  have hgap : ∀ j, 0 < 1 - pc j - Real.exp (-R.d j) := fun j => by linarith [hexp j]
  set Q : Fin R.M → ℝ := fun j => (1 - pc j) / (1 - pc j - Real.exp (-R.d j)) with hQ
  set Qmax : ℝ := 1 + ∑ j, Q j with hQmax
  have hQpos : ∀ j, 0 < Q j := fun j => div_pos (by linarith [hpc1 j]) (hgap j)
  have hQle : ∀ j, Q j ≤ Qmax := by
    intro j
    have := single_le_sum (fun i (_ : i ∈ univ) => (hQpos i).le) (mem_univ j)
    rw [hQmax]; linarith
  have hQmax1 : 1 ≤ Qmax := by
    rw [hQmax]; linarith [sum_nonneg (fun i (_ : i ∈ univ) => (hQpos i).le)]
  set Dmax : ℝ := 1 + ∑ j, |Dc j| with hDmax
  have hDle : ∀ j, Dc j ≤ Dmax := by
    intro j
    have := single_le_sum (fun i (_ : i ∈ univ) => abs_nonneg (Dc i)) (mem_univ j)
    rw [hDmax]; linarith [le_abs_self (Dc j)]
  have hDmax1 : 1 ≤ Dmax := by
    rw [hDmax]; linarith [sum_nonneg (fun i (_ : i ∈ univ) => abs_nonneg (Dc i))]
  set Vd : ℝ := ∑ j, R.d j with hVd
  have hVd0 : 0 ≤ Vd := sum_nonneg fun j _ => (hd j).le
  set Kmax : ℕ := ∑ j, Kc j with hKmax
  have hKle : ∀ j, Kc j ≤ Kmax := fun j => single_le_sum (fun i _ => Nat.zero_le _) (mem_univ j)
  -- the output constant
  have hpπ : 0 < R.p - π := by linarith
  set Dv : ℝ := 3 * (1 - π) / (R.p - π) with hDv
  have hDv3 : 3 ≤ Dv := by
    rw [hDv, le_div_iff₀ hpπ]; linarith
  -- the threshold
  obtain ⟨K, hK⟩ := exists_nat_ge ((Kmax : ℝ) + ((L₀ : ℝ) + 1) / R.θ +
    2 * (Vd + Real.log Dmax) / R.ε + Real.log Qmax / R.g₀)
  have hlogD : 0 ≤ Real.log Dmax := Real.log_nonneg hDmax1
  have hlogQ : 0 ≤ Real.log Qmax := Real.log_nonneg hQmax1
  refine ⟨Dv, by linarith, K, fun C hC V _ _ hPmV G W k r hk hr1 hr2 hdens hsize => ?_⟩
  have hP : Prem A B C V := hPm C V hPmV
  have hC0 : 0 < C := by linarith
  have hkK : (K : ℝ) ≤ k := by exact_mod_cast hk
  have t1 : 0 ≤ ((L₀ : ℝ) + 1) / R.θ := by positivity
  have t2 : 0 ≤ 2 * (Vd + Real.log Dmax) / R.ε := by positivity
  have t3 : 0 ≤ Real.log Qmax / R.g₀ := by positivity
  have hkKmax : (Kmax : ℝ) ≤ k := by linarith
  have hkθ : (L₀ : ℝ) + 1 ≤ R.θ * k := by
    have : ((L₀ : ℝ) + 1) / R.θ ≤ k := by linarith
    rw [div_le_iff₀ hθ] at this; linarith
  have hkε : Vd + Real.log Dmax ≤ k * R.ε / 2 := by
    have : 2 * (Vd + Real.log Dmax) / R.ε ≤ k := by linarith
    rw [div_le_iff₀ hε] at this; linarith
  have hkg : Real.log Qmax ≤ k * R.g₀ := by
    have : Real.log Qmax / R.g₀ ≤ k := by linarith
    rw [div_le_iff₀ hg0] at this; linarith
  have hk0 : 0 < k := by
    rcases Nat.eq_zero_or_pos k with h | h
    · subst h; simp at hkθ; linarith [show (0 : ℝ) ≤ L₀ by positivity]
    · exact h
  have hkpos : (0 : ℝ) < k := by exact_mod_cast hk0
  -- the output value
  set gr := R.g r with hgr
  set T : ℝ := (R.γ.Aγ + r * R.γ.Bγ + w * (R.θ * R.γ.bγ + gr - R.g₀)) / (1 + w) with hT
  set E : ℝ := max gr T with hE
  have hz : R.out r = R.ε + E := rfl
  set h : ℝ := E - gr + R.ε / 2 with hh
  have hEg : gr ≤ E := le_max_left _ _
  have hET : T ≤ E := le_max_right _ _
  have hgr0 : R.g₀ ≤ gr := R.g_ge hd r
  set z := R.out r with hzdef
  have hz0 : 0 < z := by rw [hz]; linarith
  -- terminal gap
  have hgapT : R.γ.Aγ + r * R.γ.Bγ + w * R.θ * R.γ.bγ ≤ z + w * (R.g₀ + h) := by
    have h1 : (1 + w) * T = R.γ.Aγ + r * R.γ.Bγ + w * R.θ * R.γ.bγ + w * gr - w * R.g₀ := by
      rw [hT]; field_simp; ring
    have h2 := mul_le_mul_of_nonneg_left hET (by linarith : (0 : ℝ) ≤ 1 + w)
    have hwε : 0 ≤ w * R.ε := by positivity
    rw [hz, hh]
    have e : R.ε + E + w * (R.g₀ + (E - gr + R.ε / 2)) =
        (1 + w) * E + w * R.g₀ - w * gr + R.ε + w * R.ε / 2 := by ring
    rw [e]; linarith
  -- the cut
  have hW3 : (3 : ℝ) ≤ W.card := by
    have h1 : 1 ≤ C * Real.exp (k * z) :=
      one_le_mul_of_one_le_of_one_le hC (Real.one_le_exp (mul_pos hkpos hz0).le)
    have h2 : (3 : ℝ) * 1 ≤ Dv * (C * Real.exp (k * z)) := mul_le_mul hDv3 h1 (by norm_num) (by linarith)
    rw [← mul_assoc] at h2
    linarith
  have hW2 : 2 ≤ W.card := by exact_mod_cast (show (2 : ℝ) ≤ W.card by linarith)
  obtain ⟨X₀, hX₀W, hX3, hY3, hcross⟩ :=
    density_balanced_cut G W hW2 R.p (by unfold redPairs at hdens; exact hdens)
  set Y := W \ X₀ with hYdef
  have hYne : Y.Nonempty := by rw [← Finset.card_pos]; omega
  obtain ⟨hret, hZd⟩ := retained_rows G X₀ Y R.p π hπ1 hYne hcross
  set X := X₀.filter (fun v => π * (Y.card : ℝ) ≤ ((Y.filter (fun y => G.Adj v y)).card : ℝ)) with hXdef
  have hXX₀ : X ⊆ X₀ := filter_subset _ _
  have hezk : 0 < C * Real.exp (k * z) := by positivity
  have hXbig : C * Real.exp (k * z) ≤ X.card := by
    have h3 : (W.card : ℝ) ≤ 3 * X₀.card := by exact_mod_cast hX3
    have hD : Dv * (R.p - π) = 3 * (1 - π) := by rw [hDv]; field_simp
    have : (1 - π) * (C * Real.exp (k * z)) ≤ (1 - π) * X.card := by
      have e1 : (1 - π) * (C * Real.exp (k * z)) * 3 = (R.p - π) * (Dv * C * Real.exp (k * z)) := by
        rw [show (R.p - π) * (Dv * C * Real.exp (k * z)) = Dv * (R.p - π) * (C * Real.exp (k * z)) by ring,
          hD]; ring
      nlinarith [mul_le_mul_of_nonneg_left hsize hpπ.le]
    exact le_of_mul_le_mul_left this (by linarith)
  have hYbig : C * Real.exp (k * z) ≤ Y.card := by
    have h3 : (W.card : ℝ) ≤ 3 * Y.card := by exact_mod_cast hY3
    have : C * Real.exp (k * z) * 3 ≤ Dv * C * Real.exp (k * z) := by nlinarith
    linarith
  -- cells
  have hcell : ∀ s : ℝ, ∃ j : Fin R.M, R.θ < s → s ≤ R.ω → R.u j.castSucc < s ∧ s ≤ R.u j.succ := by
    intro s
    by_cases hs : R.θ < s ∧ s ≤ R.ω
    · obtain ⟨j, hj⟩ := R.exists_cell hmono hs.1 hs.2
      exact ⟨j, fun _ _ => hj⟩
    · exact ⟨⟨0, hM⟩, fun h1 h2 => absurd ⟨h1, h2⟩ hs⟩
  choose J hJ using hcell
  -- the discrete height
  obtain ⟨Γ, hΓ⟩ : ∃ Γ : ℕ → ℝ, Γ = fun t : ℕ => k * (R.g ((t : ℝ) / k) + h) + R.jump ((t : ℝ) / k) :=
    ⟨_, rfl⟩
  obtain ⟨Mf, hMf⟩ : ∃ Mf : ℕ → ℝ, Mf = fun t : ℕ => C * Real.exp (Γ t) := ⟨_, rfl⟩
  obtain ⟨q, hq⟩ : ∃ q : ℕ → ℝ, q = fun t : ℕ => pc (J ((t : ℝ) / k)) := ⟨_, rfl⟩
  set ℓ := ⌊r * k⌋₊ with hℓdef
  set n₀ := ⌊R.θ * k⌋₊ with hn₀def
  have hℓr : (ℓ : ℝ) ≤ r * k := Nat.floor_le (by nlinarith)
  have hn₀θ : (n₀ : ℝ) ≤ R.θ * k := Nat.floor_le (by positivity)
  have hn₀L : L₀ + 1 ≤ n₀ := by
    rw [hn₀def]; apply Nat.le_floor; push_cast; linarith
  have hn₀ℓ : n₀ ≤ ℓ := Nat.floor_le_floor (by nlinarith)
  have hh2 : R.ε / 2 ≤ h := by rw [hh]; linarith
  have hΓlow : ∀ t : ℕ, k * (R.g ((t : ℝ) / k) + h) ≤ Γ t := fun t => by
    simp only [hΓ]; linarith [R.jump_nonneg hd ((t : ℝ) / k)]
  have hΓg0 : ∀ t : ℕ, Real.log Qmax ≤ Γ t := fun t => by
    have := hΓlow t
    have := R.g_ge hd ((t : ℝ) / k)
    nlinarith
  have hΓbase : ∀ t : ℕ, t ≤ n₀ → Γ t = k * (R.g₀ + h) := by
    intro t ht
    have hs : (t : ℝ) / k ≤ R.θ := by
      rw [div_le_iff₀ hkpos]; have : (t : ℝ) ≤ n₀ := by exact_mod_cast ht
      linarith
    simp only [hΓ, R.g_eq_g₀ hmono hs, R.jump_of_le hmono hs, add_zero]
  -- the induction
  have hMpos : ∀ t, 0 < Mf t := fun t => by rw [hMf]; positivity
  have key := retained_route_induction G X Y k ℓ n₀ ℓ Mf q hMpos ?base ?leaf ?pivot ℓ le_rfl X subset_rfl ?fin
  · rcases key with ⟨S, hS, hcl⟩ | ⟨S, hS, hcl⟩ | ⟨S, hS, hcl⟩
    · exact Or.inl ⟨S, hS.trans (union_subset (hXX₀.trans hX₀W) sdiff_subset), hcl⟩
    · exact Or.inr ⟨S, hS.trans (hXX₀.trans hX₀W), hcl⟩
    · exact Or.inr ⟨S, hS.trans sdiff_subset, hcl⟩
  case base =>
    intro t ht0 ht Z hZX hZne hZ
    have hZc : (0 : ℝ) < Z.card := by exact_mod_cast hZne.card_pos
    have hYc : (0 : ℝ) < Y.card := by exact_mod_cast hYne.card_pos
    have hdZ : π ≤ redDensity G Z Y := by
      unfold redDensity; rw [le_div_iff₀ (mul_pos hZc hYc)]; exact hZd Z hZX
    have hdisj : Disjoint Z Y := disjoint_of_subset_left (hZX.trans hXX₀) disjoint_sdiff
    have hlZ : Real.log C + k * (R.g₀ + h) ≤ Real.log Z.card := by
      have := hZ; simp only [hMf, hΓbase t ht] at this
      rw [← Real.log_exp (k * (R.g₀ + h)), ← Real.log_mul hC0.ne' (Real.exp_pos _).ne']
      exact Real.log_le_log (by positivity) this
    have hlY : Real.log C + k * z ≤ Real.log Y.card := by
      rw [← Real.log_exp (k * z), ← Real.log_mul hC0.ne' (Real.exp_pos _).ne']
      exact Real.log_le_log (by positivity) hYbig
    have htθ : (t : ℝ) ≤ R.θ * k := by
      have : (t : ℝ) ≤ n₀ := by exact_mod_cast ht
      linarith
    refine hL₀ C hC V hP G k ℓ t hk0 ht0 (by omega) (by omega) Z Y hZne hYne hdisj hdZ ?_
    have e1 : (ℓ : ℝ) * R.γ.Bγ ≤ r * k * R.γ.Bγ := mul_le_mul_of_nonneg_right hℓr hBγ.le
    have e2 : w * t * R.γ.bγ ≤ w * (R.θ * k) * R.γ.bγ :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left htθ hw.le) hbγ.le
    have e3 := mul_le_mul_of_nonneg_left hgapT hkpos.le
    nlinarith [mul_le_mul_of_nonneg_left hlZ hw.le]
  case leaf =>
    intro t ht1 ht2 Z hZX hZ hZd'
    have htk : (t : ℝ) / k * k = t := by field_simp
    have hs1 : R.θ < (t : ℝ) / k := by
      rw [lt_div_iff₀ hkpos]
      have : (n₀ : ℝ) + 1 ≤ t := by exact_mod_cast ht1
      have : R.θ * k < n₀ + 1 := Nat.lt_floor_add_one _
      linarith
    have hs2 : (t : ℝ) / k ≤ R.ω := by
      rw [div_le_iff₀ hkpos]
      have : (t : ℝ) ≤ ℓ := by exact_mod_cast ht2
      nlinarith
    set j := J ((t : ℝ) / k) with hjdef
    obtain ⟨hj1, hj2⟩ := hJ ((t : ℝ) / k) hs1 hs2
    have hqt : q t = pc j := by rw [hq]
    rw [hqt] at hZd'
    have hZne : Z ≠ Finset.univ := by
      intro hZu
      obtain ⟨y, hy⟩ := hYne
      have : y ∈ Z := hZu ▸ Finset.mem_univ y
      exact (Finset.mem_sdiff.mp hy).2 (hXX₀ (hZX this))
    have hval := hKc j C hC V hPmV G Z k t hZne ((hKle j).trans (by exact_mod_cast hkKmax)) hk0 (by omega)
      ((hlo j).trans hj1.le) (hj2.trans (hhi j)) (by unfold redPairs; exact hZd') ?_
    · exact hval
    · refine le_trans ?_ hZ
      have hlt := hgt j ((t : ℝ) / k) hj1.le hj2
      have hΓt := hΓlow t
      have hDj : Real.log (Dc j) ≤ Real.log Dmax := Real.log_le_log (by linarith [hDc1 j]) (hDle j)
      have hkl := mul_lt_mul_of_pos_left hlt hkpos
      have hgh : k * (R.g ((t : ℝ) / k) + h) = k * R.g ((t : ℝ) / k) + k * h := by ring
      have hkh : k * (R.ε / 2) ≤ k * h := mul_le_mul_of_nonneg_left hh2 hkpos.le
      have hex : Dc j * Real.exp (k * Lc j ((t : ℝ) / k)) ≤ Real.exp (Γ t) := by
        calc Dc j * Real.exp (k * Lc j ((t : ℝ) / k))
            = Real.exp (Real.log (Dc j) + k * Lc j ((t : ℝ) / k)) := by
              rw [Real.exp_add, Real.exp_log (by linarith [hDc1 j])]
          _ ≤ Real.exp (Γ t) := by
              apply Real.exp_le_exp.mpr
              have : k * R.ε / 2 = k * (R.ε / 2) := by ring
              linarith
      have e : Dc j * C * Real.exp (k * Lc j ((t : ℝ) / k)) =
          C * (Dc j * Real.exp (k * Lc j ((t : ℝ) / k))) := by ring
      rw [e, hMf]
      exact mul_le_mul_of_nonneg_left hex hC0.le
  case pivot =>
    intro t ht1 ht2 Z hZX hZ
    have ht0 : 1 ≤ t := by omega
    have hs1 : R.θ < (t : ℝ) / k := by
      rw [lt_div_iff₀ hkpos]
      have : (n₀ : ℝ) + 1 ≤ t := by exact_mod_cast ht1
      have : R.θ * k < n₀ + 1 := Nat.lt_floor_add_one _
      linarith
    have hs2 : (t : ℝ) / k ≤ R.ω := by
      rw [div_le_iff₀ hkpos]
      have : (t : ℝ) ≤ ℓ := by exact_mod_cast ht2
      nlinarith
    set j := J ((t : ℝ) / k) with hjdef
    obtain ⟨hj1, hj2⟩ := hJ ((t : ℝ) / k) hs1 hs2
    have hcast : (((t - 1 : ℕ)) : ℝ) = t - 1 := by push_cast [Nat.cast_sub ht0]; ring
    have hdiff : (t : ℝ) / k - ((t - 1 : ℕ) : ℝ) / k = 1 / k := by rw [hcast]; ring
    have hstep := R.step hd j hkpos hdiff hj1 hj2
    have hΓd : Γ t - Γ (t - 1) = k * (R.g ((t : ℝ) / k) - R.g (((t - 1 : ℕ) : ℝ) / k)) +
        (R.jump ((t : ℝ) / k) - R.jump (((t - 1 : ℕ) : ℝ) / k)) := by
      rw [hΓ]; ring
    have hΓstep : Γ (t - 1) ≤ Γ t - R.d j := by linarith
    have hZpos : (0 : ℝ) < Z.card := lt_of_lt_of_le (hMpos t) hZ
    -- |Z| ≥ Q_j
    have hZQ : Q j ≤ Z.card := by
      have h1 : Qmax ≤ Real.exp (Γ t) := by
        rw [← Real.exp_log (by linarith : (0 : ℝ) < Qmax)]; exact Real.exp_le_exp.mpr (hΓg0 t)
      have h2 : Real.exp (Γ t) ≤ C * Real.exp (Γ t) := le_mul_of_one_le_left (Real.exp_pos _).le hC
      have hM' : Mf t = C * Real.exp (Γ t) := by rw [hMf]
      linarith [hQle j]
    have hpiv : Real.exp (-R.d j) * Z.card ≤ (1 - pc j) * ((Z.card : ℝ) - 1) := by
      have := hgap j
      have hQ' : (1 - pc j) ≤ (1 - pc j - Real.exp (-R.d j)) * Z.card := by
        have := hZQ; simp only [hQ] at this
        rw [div_le_iff₀ (hgap j)] at this; linarith
      nlinarith
    have hqt : q t = pc j := by rw [hq]
    rw [hqt]
    have hZ' : C * Real.exp (Γ t) ≤ Z.card := by rw [hMf] at hZ; exact hZ
    calc Mf (t - 1) = C * Real.exp (Γ (t - 1)) := by rw [hMf]
      _ ≤ C * Real.exp (Γ t - R.d j) := by
          apply mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr hΓstep) hC0.le
      _ = Real.exp (-R.d j) * (C * Real.exp (Γ t)) := by
          rw [sub_eq_add_neg, Real.exp_add]; ring
      _ ≤ Real.exp (-R.d j) * Z.card := mul_le_mul_of_nonneg_left hZ' (Real.exp_pos _).le
      _ ≤ (1 - pc j) * ((Z.card : ℝ) - 1) := hpiv
  case fin =>
    refine le_trans ?_ hXbig
    rw [hMf]
    apply mul_le_mul_of_nonneg_left _ hC0.le
    apply Real.exp_le_exp.mpr
    have hsr : (ℓ : ℝ) / k ≤ r := by rw [div_le_iff₀ hkpos]; linarith
    have hgm := R.g_mono hd hsr
    have hjl := R.jump_le hd ((ℓ : ℝ) / k)
    have hΓl : Γ ℓ = k * R.g ((ℓ : ℝ) / k) + k * h + R.jump ((ℓ : ℝ) / k) := by rw [hΓ]; ring
    have hkg' := mul_le_mul_of_nonneg_left hgm hkpos.le
    have hzE : k * z = k * R.ε + k * E := by rw [hz]; ring
    have hkh : k * h = k * E - k * gr + k * R.ε / 2 := by rw [hh]; ring
    rw [hΓl, hzE, hkh]
    linarith

#print axioms complementary_route_relValidP

section
variable {m nR nC : ℕ} {A B : Fin m → ℝ}
  {raw : Fin nR → BankProfile} {closed : Fin nC → BankProfile}

/-- **Leaf piece.** A strict output margin absorbs the fixed leaf prefactor. -/
lemma complementary_raw_leaf_ok (hA : ∀ i, 0 < A i) (hB : ∀ i, 0 < B i) (P : BankProfile) (hP : P.Valid)
    (lo hi ε : ℝ) (hε : 0 < ε) (γ : SharpControl m) (hγ : ComplementControlValid A B γ) (hple : γ.p ≤ P.p)
    (hL : ∀ r : ℝ, lo ≤ r → r ≤ hi → ε + γ.leafLine r ≤ P.L r) :
    ∃ KJ, PieceOK raw closed A B P lo hi KJ := by
  have hα : 0 < max lo P.lo := lt_of_lt_of_le hP.2.2.1 (le_max_right _ _)
  obtain ⟨D, hD, K0, hK0⟩ := complementary_leaf_relValid hA hB γ hγ (max lo P.lo) hi hα
  obtain ⟨K1, hK1⟩ := exists_nat_ge (Real.log D / ε)
  refine ⟨K0 + K1, fun C hC V _ _ hJ G k b hk hk0 hb0 h1 h2 h3 hd hs => ?_⟩
  have hkpos : (0 : ℝ) < k := by exact_mod_cast hk0
  have hres := hK0 C hC V (prem_of_jprem hJ) G Finset.univ k ((b : ℝ) / k) (by omega)
    (max_le h1 h3) h2 (le_trans (mul_le_mul_of_nonneg_right hple (by
      rcases Nat.eq_zero_or_pos (Finset.univ : Finset V).card with h0 | h0
      · rw [h0]; simp
      · have : (1 : ℝ) ≤ (Finset.univ : Finset V).card := by exact_mod_cast h0
        nlinarith)) hd) ?_
  · have hkk : (b : ℝ) / k * k = b := by field_simp
    rwa [hkk, Nat.floor_natCast] at hres
  · refine le_trans (absorb hD (by linarith) hε (hK1.trans (by exact_mod_cast (by omega : K1 ≤ k)))) (le_trans ?_ hs)
    apply mul_le_mul_of_nonneg_left _ (by linarith)
    apply Real.exp_le_exp.mpr
    apply mul_le_mul_of_nonneg_left _ hkpos.le
    linarith [hL _ h1 h2]

/-- **Route piece.** The joint proper-host premise supplies all child calls;
the route margin pays their fixed prefactors. -/
lemma complementary_raw_route_ok (hA : ∀ i, 0 < A i) (hB : ∀ i, 0 < B i)
    (hraw : ∀ i, (raw i).Valid) (hclosed : ∀ i, (closed i).Valid) (P : BankProfile) (hP : P.Valid)
    (lo hi ε : ℝ) (hε : 0 < ε) (R : RoutePiece (Fin nR ⊕ Fin nC) m)
    (hR : ComplementPieceValid A B (Sum.elim raw closed) P lo hi ε (.route R)) :
    ∃ KJ, PieceOK raw closed A B P lo hi KJ := by
  obtain ⟨hγ, hpγ, hM, hθ, hmono, hg0, hθlo, hhiω, hcells, hval⟩ := hR
  let node : RouteNode 1 m :=
    { p := P.p, γ := R.γ, M := R.M, u := R.u, d := R.d, c := fun _ => 0, g₀ := R.g₀, ε := ε / 2 }
  set prof := Sum.elim raw closed with hprof
  have hcall : ∀ j : Fin node.M, RelValidPr (fun C V _ _ => JPrem raw closed A B C V) (prof (R.c j)).p
      (prof (R.c j)).lo (prof (R.c j)).hi (prof (R.c j)).L := by
    intro j
    refine ⟨1, le_rfl, 0, fun C hC V _ _ hJ G W k t hW _ hk ht h1 h2 hd hs => ?_⟩
    exact assertOn_child (hJ G W hW) (R.c j) k t hk ht h1 h2 hd (by simpa using hs)
  obtain ⟨D, hD, K0, hK0⟩ := complementary_route_relValidP hA hB (fun C V _ _ => JPrem raw closed A B C V)
    (fun C V _ _ h => prem_of_jprem h) node hγ hpγ hP.2.1 hM hθ hmono hg0 (by positivity)
    (fun j => (prof (R.c j)).p) (fun j => (prof (R.c j)).lo) (fun j => (prof (R.c j)).hi)
    (fun j => (prof (R.c j)).L) hcall (fun j => (hcells j).1) (fun j => (hcells j).2.1)
    (fun j => (prof_valid hraw hclosed (R.c j)).1) (fun j => (prof_valid hraw hclosed (R.c j)).2.1)
    (fun j => (hcells j).2.2.1) (fun j s h1 h2 => (hcells j).2.2.2 s h1 h2)
  obtain ⟨K1, hK1⟩ := exists_nat_ge (Real.log D / (ε / 2))
  refine ⟨K0 + K1, fun C hC V _ _ hJ G k b hk hk0 hb0 h1 h2 h3 hd hs => ?_⟩
  have hkpos : (0 : ℝ) < k := by exact_mod_cast hk0
  have hres := hK0 C hC V hJ G Finset.univ k ((b : ℝ) / k) (by omega) (hθlo.trans h1) (h2.trans hhiω) hd ?_
  · have hkk : (b : ℝ) / k * k = b := by field_simp
    rwa [hkk, Nat.floor_natCast] at hres
  · refine le_trans (absorb hD (by linarith) (by positivity : (0 : ℝ) < ε / 2)
      (hK1.trans (by exact_mod_cast (by omega : K1 ≤ k)))) (le_trans ?_ hs)
    apply mul_le_mul_of_nonneg_left _ (by linarith)
    apply Real.exp_le_exp.mpr
    apply mul_le_mul_of_nonneg_left _ hkpos.le
    have hv := hval _ h1 h2
    have hout : node.out ((b : ℝ) / k) = ε / 2 + R.value ((b : ℝ) / k) := rfl
    rw [hout]; linarith
/-- **Native piece semantics.** Each explicit complementary support clause
gives the proper-host implication needed by joint induction. The complementary
pair branch reuses the original argument, which has no terminal control. -/
theorem complementary_raw_piece_ok (hA : ∀ i, 0 < A i) (hB : ∀ i, 0 < B i)
    (hraw : ∀ i, (raw i).Valid) (hclosed : ∀ i, (closed i).Valid)
    (P : BankProfile) (hP : P.Valid) (lo hi ε : ℝ) (hε : 0 < ε)
    (pc : RawPiece (Fin nR ⊕ Fin nC) m)
    (hpc : ComplementPieceValid A B (Sum.elim raw closed) P lo hi ε pc) :
    ∃ K, PieceOK raw closed A B P lo hi K := by
  cases pc with
  | leaf γ =>
    exact complementary_raw_leaf_ok hA hB P hP lo hi ε hε γ hpc.1 hpc.2.1 hpc.2.2
  | route R =>
    exact complementary_raw_route_ok hA hB hraw hclosed P hP lo hi ε hε R hpc
  | compl PR PB =>
    exact raw_compl_ok hraw hclosed P lo hi ε hε PR PB hpc

end

#print axioms complementary_raw_leaf_ok
#print axioms complementary_raw_route_ok
#print axioms complementary_raw_piece_ok

end DiagonalRamsey
