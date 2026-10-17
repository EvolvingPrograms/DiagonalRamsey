import Support.Analysis.ProfileExpr
import Support.Ramsey.Frontier
import Support.Published.Bridge.Source

/-!
Narrow analytic reuse from `Bridge/Tangent.lean` and `Bridge/TangentLines.lean`.
The derivative, symmetry, and interval-enclosure proofs are unchanged; the
source-concavity fact is taken directly from the checked geometric source.
No finite-source-admissibility or historical certificate family is imported.
-/

set_option maxRecDepth 100000

namespace DiagonalRamsey.HullTangent

open Set DiagRamsey LuWangBridge AnalyticBounds AnalyticBounds.IntervalExpr
  AnalyticBounds.FixedPointInterval AnalyticBounds.ShapeCertificate LuWang
open LuWang.CurrentSourceGeometry (rationalData)

theorem lu_wang_source_concave : ConcaveOn ℝ (Icc (0 : ℝ) 1) luWangSource :=
  CurrentSourceGeometry.concave_closed.congr LuWangBridge.source_eqOn.symm

theorem hasDerivAt_source {t : ℝ} (h0 : 0 < t) (h1 : t < 1) :
    HasDerivAt luWangSource (CurrentSourceGeometry.D t) t := by
  have hF : HasDerivAt CurrentSourceGeometry.F (CurrentSourceGeometry.D t) t :=
    (CurrentSourceGeometry.derivative ⟨h0, h1.le⟩).hasDerivAt (Ioc_mem_nhds h0 h1)
  exact hF.congr_of_eventuallyEq (Filter.eventuallyEq_of_mem (Icc_mem_nhds h0 h1) source_eqOn)

theorem deriv_source {t : ℝ} (h0 : 0 < t) (h1 : t < 1) :
    deriv luWangSource t = CurrentSourceGeometry.D t :=
  (hasDerivAt_source h0 h1).deriv

theorem contains_point_zero : (point 0).Contains 0 := by
  simpa [value] using Interval.contains_point 0

theorem enclose {e : Expr} {v : ℝ} (hv : e.eval 0 = v) (hsafe : e.safe (point 0) = true) :
    ((e.bound (point 0)).lo : ℝ) / (scale : ℝ) ≤ v ∧ v ≤ ((e.bound (point 0)).hi : ℝ) / (scale : ℝ) := by
  have := e.bound_sound contains_point_zero hsafe
  rw [hv] at this
  exact this

theorem source_at {i : Fin 2279} {t : ℝ}
    (ht : t ∈ Icc (rationalData.knot i.castSucc : ℝ) (rationalData.knot i.succ : ℝ)) (h0 : 0 < t)
    (h1 : t < 1) :
    deriv luWangSource t = profileSlope (hornerPoly (rationalData.coefficients i)) t ∧
      luWangSource t - t * deriv luWangSource t =
        profile (hornerPoly (rationalData.coefficients i)) t -
          t * profileSlope (hornerPoly (rationalData.coefficients i)) t := by
  rw [deriv_source h0 h1, source_eq ⟨h0.le, h1.le⟩, CurrentSourceGeometry.D_piece ht h0,
    CurrentSourceGeometry.F_piece ht]
  exact ⟨rfl, rfl⟩

theorem scale_pos : (0 : ℝ) < (scale : ℝ) := by
  have : (0 : ℤ) < scale := by decide +kernel
  exact_mod_cast this

theorem le_of_scaled {z p : ℤ} {q : ℕ} (hq : 0 < q) (h : z * q ≤ p * scale) :
    (z : ℝ) / (scale : ℝ) ≤ (p : ℝ) / (q : ℝ) := by
  rw [div_le_div_iff₀ scale_pos (by exact_mod_cast hq)]
  exact_mod_cast h

theorem mem_knots {i : Fin 2279} {p : ℤ} {q : ℕ} (_hq : 0 < q)
    (h1 : rationalData.knot i.castSucc ≤ (p : ℚ) / q) (h2 : (p : ℚ) / q ≤ rationalData.knot i.succ) :
    (p : ℝ) / (q : ℝ) ∈ Icc (rationalData.knot i.castSucc : ℝ) (rationalData.knot i.succ : ℝ) := by
  have e : ((((p : ℚ) / q : ℚ)) : ℝ) = (p : ℝ) / (q : ℝ) := by push_cast; rfl
  constructor
  · rw [← e]; exact_mod_cast h1
  · rw [← e]; exact_mod_cast h2

theorem symm_le_lines {u : ℝ} (h0 : 0 < u) (h1 : u < 1) {s : ℝ} (hs : 0 < s) :
    DiagRamsey.symmetricProfile luWangSource 1 s ≤
        deriv luWangSource u + (luWangSource u - u * deriv luWangSource u) * s ∧
      DiagRamsey.symmetricProfile luWangSource 1 s ≤
        (luWangSource u - u * deriv luWangSource u) + deriv luWangSource u * s := by
  have hAB : luWangSource u - u * deriv luWangSource u ≤ deriv luWangSource u := by
    rw [deriv_source h0 h1, source_eq ⟨h0.le, h1.le⟩]
    exact CurrentSourceGeometry.tangent_intercept_order ⟨h0, h1.le⟩
  have hconc : ConcaveOn ℝ (Ioc (0 : ℝ) 1) luWangSource :=
    lu_wang_source_concave.subset Ioc_subset_Icc_self (convex_Ioc 0 1)
  have hA : HasDerivAt luWangSource (deriv luWangSource u) u := by
    rw [deriv_source h0 h1]; exact hasDerivAt_source h0 h1
  have tan : ∀ x ∈ Ioc (0 : ℝ) 1, luWangSource x ≤ luWangSource u + (x - u) * deriv luWangSource u :=
    fun x hx => RamseyBasics.concaveOn_le_tangentLine (D := fun _ => deriv luWangSource u) hconc hx ⟨h0, h1.le⟩ hA
  set A := deriv luWangSource u
  set B := luWangSource u - u * A
  simp only [DiagRamsey.symmetricProfile]
  rcases le_total s 1 with h | h
  · rw [max_eq_left h, min_eq_right h, div_one, one_mul]
    have := tan s ⟨hs, h⟩
    constructor <;> nlinarith
  · rw [max_eq_right h, min_eq_left h]
    have hx : 1 / s ∈ Ioc (0 : ℝ) 1 := ⟨by positivity, (div_le_one hs).2 h⟩
    have := mul_le_mul_of_nonneg_left (tan (1 / s) hx) hs.le
    have e : s * (luWangSource u + (1 / s - u) * A) = A + B * s := by
      simp only [B]; field_simp; ring
    rw [e] at this
    constructor <;> nlinarith

def scaleExp (p : ℤ) (q : ℕ) : ℕ :=
  ((List.range 64).filter (fun j => decide (2 ^ (j + 1) * p ≤ (q : ℤ)))).length

def logS (n k : ℕ) (z : Expr) : Expr :=
  .add (.log n (.mul (.rat (2 ^ k) 1) z)) (.neg (.mul (.rat k 1) (.log n (.rat 2 1))))

theorem eval_logS (n k : ℕ) (z : Expr) (x : ℝ) (hz : 0 < z.eval x) :
    (logS n k z).eval x = Real.log (z.eval x) := by
  simp only [logS, Expr.eval]
  push_cast
  try simp only [div_one]
  rw [Real.log_mul (by positivity) hz.ne', Real.log_pow]
  ring

def fpS (cs : List ℚ) (c : ℚ) (ne nl k : ℕ) (z : Expr) : Expr :=
  .add (ProfileExpr.sub (.log nl (.add ProfileExpr.one z)) (logS nl k z)) (ProfileExpr.gp cs c ne z)

def fS (cs : List ℚ) (c : ℚ) (ne nl k : ℕ) (z : Expr) : Expr :=
  .add (ProfileExpr.sub (.mul (.add ProfileExpr.one z) (.log nl (.add ProfileExpr.one z)))
      (.mul z (logS nl k z)))
    (.mul (.mul z (.exp ne (.neg z))) (ProfileExpr.p cs c z))

theorem eval_fpS (cs : List ℚ) (c : ℚ) (ne nl k : ℕ) (z : Expr) (x : ℝ) (hz : 0 < z.eval x) :
    (fpS cs c ne nl k z).eval x = (ProfileExpr.fp cs c ne nl z).eval x := by
  simp only [fpS, ProfileExpr.fp, Expr.eval, ProfileExpr.eval_sub, eval_logS nl k z x hz]

theorem eval_fS (cs : List ℚ) (c : ℚ) (ne nl k : ℕ) (z : Expr) (x : ℝ) (hz : 0 < z.eval x) :
    (fS cs c ne nl k z).eval x = (ProfileExpr.f cs c ne nl z).eval x := by
  simp only [fS, ProfileExpr.f, Expr.eval, ProfileExpr.eval_sub, eval_logS nl k z x hz]

def exprAS (i : Fin 2279) (p : ℤ) (q : ℕ) : Expr :=
  fpS (rationalData.coefficients i) (p / q) 32 48 (scaleExp p q) (.rat p q)

def exprBS (i : Fin 2279) (p : ℤ) (q : ℕ) : Expr :=
  ProfileExpr.sub (fS (rationalData.coefficients i) (p / q) 32 48 (scaleExp p q) (.rat p q))
    (.mul (.rat p q) (fpS (rationalData.coefficients i) (p / q) 32 48 (scaleExp p q) (.rat p q)))

theorem enclose_ABS (i : Fin 2279) (p : ℤ) (q : ℕ) {t : ℝ} (htq : t = (p : ℝ) / (q : ℝ))
    (ht : t ∈ Icc (rationalData.knot i.castSucc : ℝ) (rationalData.knot i.succ : ℝ)) (h0 : 0 < t)
    (h1 : t < 1) (hA : (exprAS i p q).safe (point 0) = true)
    (hB : (exprBS i p q).safe (point 0) = true) :
    deriv luWangSource t ≤ (((exprAS i p q).bound (point 0)).hi : ℝ) / (scale : ℝ) ∧
    luWangSource t - t * deriv luWangSource t ≤ (((exprBS i p q).bound (point 0)).hi : ℝ) / (scale : ℝ) := by
  obtain ⟨hdA, hdB⟩ := source_at ht h0 h1
  have hz : 0 < (Expr.rat p q).eval 0 := by simp only [Expr.eval]; rw [← htq]; exact h0
  have e1 := eval_fS (rationalData.coefficients i) (p / q) 32 48 (scaleExp p q) (.rat p q) 0 hz
  have e2 := eval_fpS (rationalData.coefficients i) (p / q) 32 48 (scaleExp p q) (.rat p q) 0 hz
  have eA : (exprAS i p q).eval 0 = deriv luWangSource t := by
    rw [hdA, htq, exprAS, e2]; simp [Expr.eval]
  have eB : (exprBS i p q).eval 0 = luWangSource t - t * deriv luWangSource t := by
    rw [hdB, htq, exprBS, ProfileExpr.eval_sub]
    simp only [Expr.eval, e1, e2]
    simp [Expr.eval]
  exact ⟨(enclose eA hA).2, (enclose eB hB).2⟩

theorem line_atS (i : Fin 2279) (p : ℤ) (q : ℕ) (hq : 0 < q) (h0 : 0 < (p : ℝ) / (q : ℝ))
    (h1 : (p : ℝ) / (q : ℝ) < 1)
    (hk1 : rationalData.knot i.castSucc ≤ (p : ℚ) / q) (hk2 : (p : ℚ) / q ≤ rationalData.knot i.succ)
    (hsA : (exprAS i p q).safe (point 0) = true) (hsB : (exprBS i p q).safe (point 0) = true)
    (pa : ℤ) (qa : ℕ) (hqa : 0 < qa) (ha : ((exprAS i p q).bound (point 0)).hi * qa ≤ pa * scale)
    (pb : ℤ) (qb : ℕ) (hqb : 0 < qb) (hb : ((exprBS i p q).bound (point 0)).hi * qb ≤ pb * scale)
    (s : ℝ) (hs : 0 < s) :
    DiagRamsey.symmetricProfile luWangSource 1 s ≤ (pa : ℝ) / qa + (pb : ℝ) / qb * s ∧
      DiagRamsey.symmetricProfile luWangSource 1 s ≤ (pb : ℝ) / qb + (pa : ℝ) / qa * s := by
  obtain ⟨a2, b2⟩ := enclose_ABS i p q rfl (mem_knots hq hk1 hk2) h0 h1 hsA hsB
  have hA := a2.trans (le_of_scaled hqa ha)
  have hB := b2.trans (le_of_scaled hqb hb)
  obtain ⟨l1, l2⟩ := symm_le_lines h0 h1 hs
  constructor
  · nlinarith [mul_le_mul_of_nonneg_right hB hs.le]
  · nlinarith [mul_le_mul_of_nonneg_right hA hs.le]

#print axioms line_atS

end DiagonalRamsey.HullTangent
