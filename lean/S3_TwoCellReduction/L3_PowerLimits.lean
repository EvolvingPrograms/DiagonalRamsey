import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith

/-!
# 3.3 Growing powers and roots
If $r\to\infty$ and $a\to A$, then $(1+a/r)_+^{\beta r}\to e^{\beta A}$.
If $W\to W_0>0$, then $r(W^{1/(\beta r)}-1)\to\log W_0/\beta$.
The elementary estimates below justify both limits.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open Filter Topology

/- The following two local estimates are adapted from
`DiagRamsey.SE.tendsto_mul_exp_div_sub_one` and
`DiagRamsey.SE.tendsto_mul_log_one_add` in
`Lemmas/DiagRamsey_SE_Limits.lean`. Narrow imports avoid its blanket Mathlib
import; the proofs use only elementary logarithmic and exponential bounds. -/

theorem tendsto_mul_exp_div_sub_one {ι : Type*} {l : Filter ι} {a r : ι → ℝ} {a0 : ℝ}
    (ha : Tendsto a l (𝓝 a0)) (hr : Tendsto r l atTop) :
    Tendsto (fun i => r i * (Real.exp (a i / r i) - 1)) l (𝓝 a0) := by
  have hinv : Tendsto (fun i => (r i)⁻¹) l (𝓝 0) := tendsto_inv_atTop_zero.comp hr
  have hbound : Tendsto (fun i => a i ^ 2 / r i) l (𝓝 0) := by
    have := (ha.pow 2).mul hinv
    simpa [div_eq_mul_inv] using this
  have hdiv : Tendsto (fun i => a i / r i) l (𝓝 0) := by
    have := ha.mul hinv
    simpa [div_eq_mul_inv] using this
  have habs : Tendsto (fun i => |a i / r i|) l (𝓝 0) := by simpa using hdiv.abs
  have h1 := habs.eventually (gt_mem_nhds one_pos)
  have hdiff : Tendsto (fun i => r i * (Real.exp (a i / r i) - 1) - a i) l (𝓝 0) := by
    apply squeeze_zero_norm' _ hbound
    filter_upwards [hr.eventually_gt_atTop 0, h1] with i hri hi
    rw [Real.norm_eq_abs]
    have hy := Real.abs_exp_sub_one_sub_id_le hi.le
    have hra : r i * (a i / r i) = a i := mul_div_cancel₀ (a i) hri.ne'
    calc |r i * (Real.exp (a i / r i) - 1) - a i|
        = |r i * (Real.exp (a i / r i) - 1 - a i / r i)| := by rw [mul_sub _ _ (a i / r i), hra]
      _ = r i * |Real.exp (a i / r i) - 1 - a i / r i| := by rw [abs_mul, abs_of_pos hri]
      _ ≤ r i * (a i / r i) ^ 2 := mul_le_mul_of_nonneg_left hy hri.le
      _ = a i ^ 2 / r i := by field_simp [hri.ne']
  have := hdiff.add ha
  simpa using this

theorem tendsto_mul_log_one_add {ι : Type*} {l : Filter ι} {L r : ι → ℝ} {A : ℝ}
    (hL : Tendsto (fun i => r i * L i) l (𝓝 A)) (hr : Tendsto r l atTop) :
    Tendsto (fun i => r i * Real.log (1 + L i)) l (𝓝 A) := by
  have hinv : Tendsto (fun i => (r i)⁻¹) l (𝓝 0) := tendsto_inv_atTop_zero.comp hr
  have hL0 : Tendsto L l (𝓝 0) := by
    have := hL.mul hinv
    rw [mul_zero] at this
    apply this.congr'
    filter_upwards [hr.eventually_gt_atTop 0] with i hi
    field_simp [hi.ne']
  have hlow : Tendsto (fun i => r i * L i / (1 + L i)) l (𝓝 A) := by
    have := hL.div (tendsto_const_nhds.add hL0) (by norm_num : (1:ℝ) + 0 ≠ 0)
    rw [add_zero, div_one] at this
    exact this
  have hpos := (tendsto_const_nhds.add hL0).eventually (lt_mem_nhds (by norm_num : (0:ℝ) < 1 + 0))
  apply tendsto_of_tendsto_of_tendsto_of_le_of_le' hlow hL
  · filter_upwards [hr.eventually_gt_atTop 0, hpos] with i hri hi
    have h := Real.one_sub_inv_le_log_of_pos (show 0 < 1 + L i by linarith)
    have : r i * L i / (1 + L i) = r i * (1 - (1 + L i)⁻¹) := by
      field_simp [hi.ne']; ring_nf
    rw [this]
    exact mul_le_mul_of_nonneg_left h hri.le
  · filter_upwards [hr.eventually_gt_atTop 0, hpos] with i hri hi
    have h := Real.log_le_sub_one_of_pos (show 0 < 1 + L i by linarith)
    have : 1 + L i - 1 = L i := by ring_nf
    rw [this] at h
    exact mul_le_mul_of_nonneg_left h hri.le


/-- **Clipped power limit.** For a convergent scaled mean, the base is
eventually positive and its growing power tends to the exponential moment. -/
theorem tendsto_clipped_power {ι : Type*} {l : Filter ι}
    {r a : ι → ℝ} {A β : ℝ}
    (hr : Tendsto r l atTop) (ha : Tendsto a l (𝓝 A)) :
    Tendsto (fun i => (max (1 + a i / r i) 0) ^ (β * r i)) l
      (𝓝 (Real.exp (β * A))) := by
  have hinv := tendsto_inv_atTop_zero.comp hr
  have hdiv : Tendsto (fun i => a i / r i) l (𝓝 0) := by
    simpa only [div_eq_mul_inv, mul_zero, Function.comp_apply] using ha.mul hinv
  have hscaled : Tendsto (fun i => r i * (a i / r i)) l (𝓝 A) := by
    apply ha.congr'
    filter_upwards [hr.eventually_gt_atTop 0] with i hi
    exact (mul_div_cancel₀ (a i) hi.ne').symm
  have hlog := tendsto_mul_log_one_add hscaled hr
  have hlimit := (Real.continuous_exp.tendsto (β * A)).comp (hlog.const_mul β)
  have hpos := (tendsto_const_nhds.add hdiv).eventually
    (lt_mem_nhds (show (0 : ℝ) < 1 + 0 by norm_num))
  apply hlimit.congr'
  filter_upwards [hpos] with i hi
  simp only [Function.comp_apply]
  rw [max_eq_left hi.le, Real.rpow_def_of_pos hi]
  congr 1
  ring_nf

/-- **Root slack limit.** A positive limiting moment budget gives the
first-order displacement of its growing root. -/
theorem tendsto_root_slack {ι : Type*} {l : Filter ι}
    {r W : ι → ℝ} {W₀ β : ℝ}
    (hr : Tendsto r l atTop) (hW : Tendsto W l (𝓝 W₀))
    (hW₀ : 0 < W₀) (_hβ : 0 < β) :
    Tendsto (fun i => r i * (W i ^ (1 / (β * r i)) - 1)) l
      (𝓝 (Real.log W₀ / β)) := by
  have hlog := (hW.log hW₀.ne').div_const β
  have hlimit := tendsto_mul_exp_div_sub_one hlog hr
  apply hlimit.congr'
  filter_upwards [hW.eventually (lt_mem_nhds hW₀)] with i hi
  rw [Real.rpow_def_of_pos hi]
  congr 2
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring_nf

#print axioms tendsto_clipped_power
#print axioms tendsto_root_slack

end DiagonalRamsey
