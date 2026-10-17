import Support.LuWang.CurrentSourceGeometry
import Support.LuWang.SupportDualityBasic
import Support.Analysis.ProfileExpr
import Support.Controls.TangentSound
import Support.Controls.Envelope

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace RamseyAnalytic.GroundedTails
open Set LuWang AnalyticBounds AnalyticBounds.IntervalExpr
open AnalyticBounds.FixedPointInterval TangentExpressions

def gap (cs : List ℚ) (t A B r : ℚ) : Expr :=
  .add (.add (ProfileExpr.f cs t 64 64 (rat t))
    (.mul (rat (r-t)) (ProfileExpr.fp cs t 64 64 (rat t))))
    (.neg (rat (A+B*r-(1/1000000000)*(1+r))))

def checkedGap (cs : List ℚ) (t A B r : ℚ) : Bool :=
  (gap cs t A B r).safe (point 0) &&
    decide (boundHi ((gap cs t A B r).bound (point 0)) < 0)

theorem checkedGap_sound {i : Fin 2279} {cs : List ℚ} {t A B r : ℚ}
    (hcs : cs = (CurrentSourceGeometry.indexedPiece i).coefficients)
    (ht : 0 < t)
    (hp : (CurrentSourceGeometry.indexedPiece i).lo ≤ t ∧
      t ≤ (CurrentSourceGeometry.indexedPiece i).hi)
    (hc : checkedGap cs t A B r = true) :
    CurrentSourceGeometry.F (t : ℝ)+((r : ℝ)-t)*CurrentSourceGeometry.D (t : ℝ) ≤
      (A : ℝ)+(B : ℝ)*r-(1/1000000000 : ℝ)*(1+r) := by
  simp only [checkedGap, Bool.and_eq_true, decide_eq_true_eq] at hc
  have hh := (bound_sound_cast _ hc.1).2
  have hn : (boundHi ((gap cs t A B r).bound (point 0)) : ℝ) < 0 := by exact_mod_cast hc.2
  have he := hh.trans_lt hn
  have htR : (0 : ℝ) < t := by exact_mod_cast ht
  have hpR : (t : ℝ) ∈ Icc ((CurrentSourceGeometry.indexedPiece i).lo : ℝ)
      ((CurrentSourceGeometry.indexedPiece i).hi : ℝ) :=
    ⟨by exact_mod_cast hp.1, by exact_mod_cast hp.2⟩
  have hf := CurrentSourceGeometry.indexedPiece_formulas i hpR htR
  simp only [gap, Expr.eval, ProfileExpr.eval_f, ProfileExpr.eval_fp, rat_eval] at he
  push_cast at he
  rw [hcs, ← hf.1, ← hf.2] at he
  linarith

theorem initial_support_bound {t b A B : ℝ} (ht : t ∈ Ioc 0 1) (hb : b ≤ 1)
    (hzero : CurrentSourceGeometry.F t-t*CurrentSourceGeometry.D t ≤ A-1/1000000000)
    (hend : CurrentSourceGeometry.F t+(b-t)*CurrentSourceGeometry.D t ≤
      A+B*b-(1/1000000000)*(1+b))
    {s : ℝ} (hs : s ∈ Ioc 0 b) :
    CurrentSourceGeometry.F s ≤ A+B*s-(1/1000000000)*(1+s) := by
  have htan := source_tangent_within CurrentSourceGeometry.concave
    ⟨hs.1,hs.2.trans hb⟩ ht (CurrentSourceGeometry.derivative ht)
  have hline := affine_comparison_on_interval (show s ∈ Icc 0 b from ⟨hs.1.le,hs.2⟩)
    (show CurrentSourceGeometry.D t*0+(CurrentSourceGeometry.F t-t*CurrentSourceGeometry.D t) ≤
      (B-1/1000000000)*0+(A-1/1000000000) by linarith)
    (show CurrentSourceGeometry.D t*b+(CurrentSourceGeometry.F t-t*CurrentSourceGeometry.D t) ≤
      (B-1/1000000000)*b+(A-1/1000000000) by nlinarith)
  nlinarith

theorem left_checks :
    checkedGap CurrentSourceData.coefficients_593 (1133/5000)
      (218221106074/1000000000000) (1392520939627/1000000000000) 0 = true ∧
    checkedGap CurrentSourceData.coefficients_593 (1133/5000)
      (218221106074/1000000000000) (1392520939627/1000000000000) (80/353) = true := by
  decide +kernel

theorem right_checks :
    checkedGap CurrentSourceData.coefficients_553 (2087/10000)
      (164614940758/1000000000000) (1621273404101/1000000000000) 0 = true ∧
    checkedGap CurrentSourceData.coefficients_553 (2087/10000)
      (164614940758/1000000000000) (1621273404101/1000000000000)
      (12245974793/58673404100) = true := by
  decide +kernel

theorem certified_initial {i : Fin 2279} {cs : List ℚ} {t b A B : ℚ}
    (hcs : cs = (CurrentSourceGeometry.indexedPiece i).coefficients)
    (ht : 0 < t ∧ t ≤ 1) (hb : b ≤ 1)
    (hp : (CurrentSourceGeometry.indexedPiece i).lo ≤ t ∧ t ≤ (CurrentSourceGeometry.indexedPiece i).hi)
    (hc : checkedGap cs t A B 0 = true ∧ checkedGap cs t A B b = true)
    {s : ℝ} (hs : s ∈ Ioc 0 (b : ℝ)) :
    CurrentSourceGeometry.F s ≤ (A : ℝ)+(B : ℝ)*s-(1/1000000000)*(1+s) := by
  have h0 := checkedGap_sound hcs ht.1 hp hc.1
  have h1 := checkedGap_sound hcs ht.1 hp hc.2
  apply initial_support_bound (t := (t : ℝ))
    ⟨by exact_mod_cast ht.1, by exact_mod_cast ht.2⟩ (by exact_mod_cast hb) ?_ h1 hs
  simp only [Rat.cast_zero] at h0
  nlinarith

theorem left_bound {s : ℝ} (hs : s ∈ Ioc 0 (80/353)) :
    CurrentSourceGeometry.F s ≤ (218221106074/1000000000000 : ℝ)+
      (1392520939627/1000000000000)*s-(1/1000000000)*(1+s) := by
  have h := certified_initial (i := 593)
    (cs := CurrentSourceData.coefficients_593) (t := 1133/5000)
    (b := 80/353) (A := 218221106074/1000000000000) (B := 1392520939627/1000000000000)
    (by decide +kernel) (by norm_num) (by norm_num) (by decide +kernel) left_checks
    (by simpa using hs)
  norm_num at h ⊢
  exact h

theorem right_small_bound {s : ℝ} (hs : s ∈ Ioc 0 (12245974793/58673404100)) :
    CurrentSourceGeometry.F s ≤ (164614940758/1000000000000 : ℝ)+
      (1621273404101/1000000000000)*s-(1/1000000000)*(1+s) := by
  have h := certified_initial (i := 553)
    (cs := CurrentSourceData.coefficients_553) (t := 2087/10000)
    (b := 12245974793/58673404100) (A := 164614940758/1000000000000) (B := 1621273404101/1000000000000)
    (by decide +kernel) (by norm_num) (by norm_num) (by decide +kernel) right_checks
    (by simpa using hs)
  norm_num at h ⊢
  exact h

theorem right_bound {r : ℝ} (hr : 58673404100/12245974793 ≤ r) :
    r*CurrentSourceGeometry.F (1/r) ≤ (1621273404101/1000000000000 : ℝ)+
      (164614940758/1000000000000)*r-(1/1000000000)*(1+r) := by
  have hr0 : 0 < r := lt_of_lt_of_le (by norm_num) hr
  have hs : (1/r : ℝ) ∈ Ioc 0 (12245974793/58673404100) :=
    ⟨one_div_pos.mpr hr0, (div_le_iff₀ hr0).mpr (by nlinarith)⟩
  have h := mul_le_mul_of_nonneg_left (right_small_bound hs) hr0.le
  have he : r*((164614940758/1000000000000 : ℝ)+
      (1621273404101/1000000000000)*(1/r)-(1/1000000000)*(1+1/r)) =
      (1621273404101/1000000000000 : ℝ)+(164614940758/1000000000000)*r-
        (1/1000000000)*(1+r) := by
    field_simp
    ring
  rwa [he] at h

#print axioms initial_support_bound
#print axioms left_checks
#print axioms right_checks
#print axioms left_bound
#print axioms right_bound
end RamseyAnalytic.GroundedTails
