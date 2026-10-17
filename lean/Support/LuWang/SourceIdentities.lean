import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Tactic

/-! Exact cancellation at the origin in the source criterion.
The identities below hold for arbitrary polynomial values and derivatives;
no numerical approximation or smoothness assertion is substituted. -/

set_option autoImplicit false

namespace LuWang

theorem source_blue_density_identity {t jp : ℝ} (ht : 0 < t) :
    Real.exp (-(Real.log (1 + t) - Real.log t + jp)) =
      t * (Real.exp (-jp) / (1 + t)) := by
  have ht1 : 0 < 1 + t := by linarith
  rw [show -(Real.log (1 + t) - Real.log t + jp) =
    Real.log t + (-jp) - Real.log (1 + t) by ring]
  rw [Real.exp_sub, Real.exp_add, Real.exp_log ht, Real.exp_log ht1]
  ring

theorem normalized_capacity_identity {t r u w : ℝ}
    (ht : t ≠ 0) (hr : r ≠ 0) (hu : u ≠ 0) (htr : 1 - t * r ≠ 0) :
    w * Real.log (1 - t * r) + Real.log (1 - t * u) / (1 - t * r) =
      -t * (w * r * (-Real.log (1 - t * r) / (t * r)) +
        u * (-Real.log (1 - t * u) / (t * u)) / (1 - t * r)) := by
  field_simp
  ring

/-- The log t terms cancel exactly after division by t. This identity is
used only for t>0; continuity of the normalized formula handles t=0. -/
theorem source_normalized_slack {t σ r w U V J : ℝ}
    (ht : 0 < t) (hσ : 0 < σ) (hr : 0 < r) :
    ((w + 1) * (t * (-Real.log t + U)) - t * V +
      t * (Real.log (t * σ) - Real.log (1 + t * σ) - J) +
      w * t * Real.log (t * r)) / t =
      (w + 1) * U - V + Real.log σ - Real.log (1 + t * σ) - J + w * Real.log r := by
  rw [Real.log_mul ht.ne' hσ.ne', Real.log_mul ht.ne' hr.ne']
  field_simp
  ring

end LuWang
