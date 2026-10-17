import Support.LuWang.WeightedConcrete
import Support.LuWang.Specifications

/-! The literal finite-host weighted candidate statement from the manuscript.
The proof's auxiliary logarithmic spine schedule may exceed the displayed
schedule in the paper. Its full graph-independent growth bounds are proved,
and the final theorem has exactly the manuscript's quantifier order. -/

set_option autoImplicit false

namespace LuWang

open RamseyBasics Filter Set
open scoped Finset

theorem weightedCandidateClaim : WeightedCandidateClaim := by
  intro w μ₀ p x₀ y₀ xhat yhat hw hμ₀ hp hx₀ hy₀ hxhat hyhat hxx hyy hcap
  obtain ⟨a⟩ := exists_weighted_slack hw hμ₀ hp hx₀.1 hxx hyy hcap
  have hεpos := a.epsilon_pos
  let x := x₀ + a.ε
  let y := y₀ + a.ε
  let μ := μ₀ + a.ε
  let β := μ₀ + 2 * a.ε
  have hx : 0 < x := add_pos hx₀.1 a.epsilon_pos
  have hy : 0 < y := add_pos hy₀.1 a.epsilon_pos
  have hμ : 0 < μ := add_pos hμ₀.1 a.epsilon_pos
  have hβ : 0 < β := by dsimp [β]; linarith [a.epsilon_pos, hμ₀.1]
  have hμ1 : μ < 1 := by dsimp [μ]; linarith [a.beta_lt_one, a.epsilon_pos]
  have hr : 0 < a.r := lt_of_lt_of_le (by decide : 0 < 2) a.two_le_r
  obtain ⟨γ, hγ, hscalar⟩ := a.scalar_gap hw hμ₀.1 hx₀.1
  obtain ⟨g⟩ := exists_weighted_growth hw hr a.epsilon_pos hγ
    (show x₀ < x by dsimp [x]; linarith [a.epsilon_pos])
    (show y₀ < y by dsimp [y]; linarith [a.epsilon_pos]) hμ₀.1
    (show μ₀ < μ by dsimp [μ]; linarith [a.epsilon_pos]) hμ1
    (show μ < β by dsimp [μ, β]; linarith [a.epsilon_pos])
    a.x_below_hat a.y_below_hat
  have hηpos := g.eta_pos
  obtain ⟨L, hb⟩ := exists_bookAsymptoticScaleBounds
    (show g.η ∈ Ioo 0 1 from ⟨g.eta_pos, g.eta_lt_one⟩) hβ
    (show g.η < p - a.ε + g.η by linarith [a.two_epsilon_lt_p, a.epsilon_pos]) hr
  have hbase : 1 < 1 + g.η := by linarith [g.eta_pos]
  obtain ⟨J, hJ⟩ := eventually_atTop.mp
    ((tendsto_pow_atTop_atTop_of_one_lt hbase).eventually
      (eventually_ge_atTop ((1 + g.η) / g.η)))
  refine ⟨max (L + 1) J, ?_⟩
  intro C hC ell hell N H _ hstop k t hk ht X Y hXY hd hsize
  have hL : L ≤ ell - 1 := by omega
  have hmargin : (1 + g.η) / g.η ≤ (1 + g.η) ^ ell := hJ ell (by omega)
  let s := weightedConcreteSchedule w C x y μ β xhat yhat p a.ε g.η a.r ell
  have hs : WeightedScheduleBounds s := weighted_concrete_bounds g hw hr a.weight_lt_r.le
    hx hy hμ hβ a.beta_lt_one hxhat.1 hyhat.1 a.epsilon_pos a.two_epsilon_lt_p hC hb hL hmargin hscalar
  have hstop' : ∀ k : ℕ, 0 < k → ∀ Z : Finset (Fin N), Z ≠ Finset.univ →
      s.rightScale k ≤ (#Z : ℝ) → hasRedClique H Z k ∨ hasBlueClique H Z s.ell := by
    intro k hk Z hproper hlarge
    apply hstop k hk Z hproper
    simpa [s, weightedConcreteSchedule, Real.rpow_neg_eq_inv_rpow, Real.rpow_natCast] using hlarge
  apply weighted_finite_candidate hs hstop' hk ht
  refine ⟨hXY, ?_, ?_⟩
  · dsimp [s, weightedConcreteSchedule]
    have hnonneg : 0 ≤ a.ε / ((k + t : ℕ) : ℝ) := by positivity
    linarith
  · dsimp [s, weightedConcreteSchedule, weightedMoment]
    have hn : 0 < k + t := by omega
    have hnR : 0 < ((k + t : ℕ) : ℝ) := by exact_mod_cast hn
    have hCpos : 0 < C := lt_of_lt_of_le zero_lt_one hC
    have hlargeL : L ≤ ell := by omega
    have hinitial := hb.initial_moment_gain g.eta_pos hn hlargeL
    have hdelta : (g.η / ((k + t : ℕ) : ℝ)) ^ a.r ≤
        (a.ε / ((k + t : ℕ) : ℝ)) ^ a.r := by
      exact pow_le_pow_left₀ (by positivity)
        (div_le_div_of_nonneg_right g.eta_le_delta hnR.le) a.r
    have hinitialδ : 1 ≤ (a.ε / ((k + t : ℕ) : ℝ)) ^ a.r *
        (1 + g.η) ^ (k + t + ell) :=
      hinitial.trans (mul_le_mul_of_nonneg_right hdelta (by positivity))
    have hscaled := weighted_initial_target_scale
      (by linarith [g.eta_pos] : 0 ≤ 1 + g.η) hx₀.1 hy₀.1 hμ₀.1 hx hy hμ hCpos.le
      g.initial_x g.initial_y g.initial_mu ell k t
    have htarget0 : 0 ≤ C ^ (w + 1) * bookTarget x y (μ ^ w) ell k t := by
      unfold bookTarget
      positivity
    have hsize' : C ^ (w + 1) * bookTarget x₀ y₀ (μ₀ ^ w) ell k t ≤
        (#X : ℝ) ^ w * (#Y : ℝ) := by
      rw [weighted_target_formula hμ₀.1.le]
      exact hsize
    have hbaseGain : a.ε / ((k + t : ℕ) : ℝ) ≤
        redDensity H X Y - (p - a.ε / ((k + t : ℕ) : ℝ)) := by linarith
    calc
      _ ≤ ((a.ε / ((k + t : ℕ) : ℝ)) ^ a.r * (1 + g.η) ^ (k + t + ell)) *
          (C ^ (w + 1) * bookTarget x y (μ ^ w) ell k t) :=
        le_mul_of_one_le_left htarget0 hinitialδ
      _ = (a.ε / ((k + t : ℕ) : ℝ)) ^ a.r *
          ((1 + g.η) ^ (k + t + ell) * (C ^ (w + 1) * bookTarget x y (μ ^ w) ell k t)) := by ring
      _ ≤ (a.ε / ((k + t : ℕ) : ℝ)) ^ a.r *
          (C ^ (w + 1) * bookTarget x₀ y₀ (μ₀ ^ w) ell k t) := by gcongr
      _ ≤ (a.ε / ((k + t : ℕ) : ℝ)) ^ a.r * ((#X : ℝ) ^ w * (#Y : ℝ)) := by gcongr
      _ ≤ (redDensity H X Y - (p - a.ε / ((k + t : ℕ) : ℝ))) ^ a.r * (#X : ℝ) ^ w * (#Y : ℝ) := by
        rw [mul_assoc]
        gcongr

end LuWang

#print axioms LuWang.weightedCandidateClaim
