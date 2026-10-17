import S7_ParameterChoice.L1_Parameters
import Support.Controls.GroundedTails
import Support.Published.Bridge.Source

/-!
# Grounded tails for the chosen source
The inherited grounded tail lines lie below the step-652 source line.
Only rational affine comparisons and the existing source identification
are needed; no new transcendental estimates enter these bounds.
-/

set_option autoImplicit false

namespace DiagonalRamsey.SourceTails

open DiagRamsey RamseyAnalytic

def reserve : ℚ := 1 / 1000000000
def leftEnd : ℚ := 80 / 353
def rightStart : ℚ := 58673404100 / 12245974793

private theorem left_line_le_source {t : ℝ} (ht : t ≤ (leftEnd : ℝ)) :
    (218221106074 : ℝ) / 1000000000000 + (1392520939627 : ℝ) / 1000000000000 * t ≤
      (sourceA : ℝ) + (sourceB : ℝ) * t := by
  have hjoin : (218221106074 : ℝ) / 1000000000000 +
      (1392520939627 : ℝ) / 1000000000000 * leftEnd ≤
        (sourceA : ℝ) + (sourceB : ℝ) * leftEnd := by
    norm_num [sourceA, sourceB, leftEnd]
  have hslope : 0 ≤ (1392520939627 : ℝ) / 1000000000000 - (sourceB : ℝ) := by
    norm_num [sourceB]
  have h := mul_le_mul_of_nonneg_left ht hslope
  linarith only [hjoin, h]

private theorem right_line_le_source {t : ℝ} (ht : (rightStart : ℝ) ≤ t) :
    (1621273404101 : ℝ) / 1000000000000 + (164614940758 : ℝ) / 1000000000000 * t ≤
      (sourceA : ℝ) + (sourceB : ℝ) * t := by
  have hjoin : (1621273404101 : ℝ) / 1000000000000 +
      (164614940758 : ℝ) / 1000000000000 * rightStart ≤
        (sourceA : ℝ) + (sourceB : ℝ) * rightStart := by
    norm_num [sourceA, sourceB, rightStart]
  have hslope : 0 ≤ (sourceB : ℝ) - (164614940758 : ℝ) / 1000000000000 := by
    norm_num [sourceB]
  have h := mul_le_mul_of_nonneg_left ht hslope
  linarith only [hjoin, h]

/-- **Grounded left tail.** The identified Lu--Wang source is bounded by
the chosen source line with the retained reserve on `0 < t ≤ 80/353`. -/
theorem left_bound {t : ℝ} (ht : 0 < t) (hle : t ≤ (leftEnd : ℝ)) :
    symmetricProfile luWangSource 1 t ≤
      (sourceA : ℝ) + (sourceB : ℝ) * t - (reserve : ℝ) * (1 + t) := by
  have ht₁ : t ≤ 1 := hle.trans (by norm_num [leftEnd])
  have hsource : symmetricProfile luWangSource 1 t = LuWang.CurrentSourceGeometry.F t := by
    rw [symmetricProfile, max_eq_left ht₁, min_eq_right ht₁, div_one, one_mul]
    exact LuWangBridge.source_eq ⟨ht.le, ht₁⟩
  rw [hsource]
  have hground := GroundedTails.left_bound (show t ∈ Set.Ioc (0 : ℝ) (80 / 353) from
    ⟨ht, by simpa only [leftEnd, Rat.cast_div, Rat.cast_ofNat] using hle⟩)
  have hline := left_line_le_source hle
  norm_num only [reserve, Rat.cast_div, Rat.cast_one, Rat.cast_ofNat]
  linarith only [hground, hline]

/-- **Grounded right tail.** Symmetric source identification converts the
inherited reciprocal tail into the chosen affine line with its reserve. -/
theorem right_bound {t : ℝ} (ht : 0 < t) (hle : (rightStart : ℝ) ≤ t) :
    symmetricProfile luWangSource 1 t ≤
      (sourceA : ℝ) + (sourceB : ℝ) * t - (reserve : ℝ) * (1 + t) := by
  have ht₁ : 1 ≤ t := (by norm_num [rightStart] : (1 : ℝ) ≤ rightStart).trans hle
  have hratio : (1 / t : ℝ) ∈ Set.Icc (0 : ℝ) 1 :=
    ⟨(one_div_pos.mpr ht).le, (div_le_one ht).mpr ht₁⟩
  have hsource : symmetricProfile luWangSource 1 t = t * LuWang.CurrentSourceGeometry.F (1 / t) := by
    rw [symmetricProfile, max_eq_right ht₁, min_eq_left ht₁, LuWangBridge.source_eq hratio]
  rw [hsource]
  have hground := GroundedTails.right_bound (show (58673404100 : ℝ) / 12245974793 ≤ t from
    by simpa only [rightStart, Rat.cast_div, Rat.cast_ofNat] using hle)
  have hline := right_line_le_source hle
  norm_num only [reserve, Rat.cast_div, Rat.cast_one, Rat.cast_ofNat]
  linarith only [hground, hline]

#print axioms left_bound
#print axioms right_bound

end DiagonalRamsey.SourceTails
