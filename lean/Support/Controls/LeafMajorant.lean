import Support.Controls.RetainedControl
import Support.Controls.SourceGeometry
import Support.Published.Lemmas.DiagRamsey_SB_Leaf

set_option autoImplicit false
namespace RamseyAnalytic.LeafMajorant
open Set DiagRamsey AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval
open TangentExpressions

def intercept (D : RetainedControl.Data) : Expr := .neg (ParametricTangents.logRat D.ξ)
def slope (D : RetainedControl.Data) : Expr :=
  sub (rat (D.B+D.slack)) (.mul (rat D.w) (ParametricTangents.logRat D.ν))
def check (D : RetainedControl.Data) (a b : ℚ) : Bool :=
  (intercept D).safe (point 0) && (slope D).safe (point 0) &&
  decide (boundHi ((intercept D).bound (point 0)) ≤ a ∧
    boundHi ((slope D).bound (point 0)) ≤ b)

theorem coefficients {D : RetainedControl.Data} {a b : ℚ}
    (hξ : 0 < D.ξ) (hν : 0 < D.ν) (hc : check D a b = true) :
    -Real.log (D.ξ : ℝ) ≤ a ∧
    (D.B : ℝ)+D.slack-D.w*Real.log (D.ν : ℝ) ≤ b := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at hc
  have ha := (bound_sound_cast _ hc.1.1).2.trans ((Rat.cast_le (K := ℝ)).mpr hc.2.1)
  have hb := (bound_sound_cast _ hc.1.2).2.trans ((Rat.cast_le (K := ℝ)).mpr hc.2.2)
  constructor
  · simpa only [intercept, Expr.eval, ParametricTangents.logRat_eval _ _ hξ] using ha
  · simpa only [slope, sub, Expr.eval, rat_eval,
      ParametricTangents.logRat_eval _ _ hν, Rat.cast_add, sub_eq_add_neg] using hb

theorem leaf_eq (D : RetainedControl.Data) {n : ℕ} (i : Fin n) (r : ℝ) :
    (RetainedControl.control D i).leafLine r =
      (-Real.log (D.ξ : ℝ)+r*((D.B : ℝ)+D.slack-D.w*Real.log (D.ν : ℝ)))/(1+(D.w : ℝ)) := by
  simp only [SharpControl.leafLine, SharpControl.Aγ, SharpControl.Bγ, SharpControl.bγ,
    RetainedControl.control, Real.log_exp]
  ring

theorem cell_bound {D : RetainedControl.Data} {a b lo hi m c : ℚ}
    (hξ : 0 < D.ξ) (hν : 0 < D.ν) (hw : 0 ≤ D.w)
    (hc : check D a b = true) (hlo : 0 ≤ lo)
    (hl : a+b*lo ≤ (1+D.w)*(m*lo+c))
    (hh : a+b*hi ≤ (1+D.w)*(m*hi+c))
    {n : ℕ} (i : Fin n) {r : ℝ} (hr : r ∈ Icc (lo : ℝ) (hi : ℝ)) :
    (RetainedControl.control D i).leafLine r ≤ (m : ℝ)*r+c := by
  obtain ⟨ha,hb⟩ := coefficients hξ hν hc
  have hr0 : 0 ≤ r := (show (0 : ℝ) ≤ lo by exact_mod_cast hlo).trans hr.1
  have hwR : (0 : ℝ) ≤ D.w := by exact_mod_cast hw
  have hlR := (Rat.cast_le (K := ℝ)).mpr hl
  have hhR := (Rat.cast_le (K := ℝ)).mpr hh
  push_cast at hlR hhR
  have he := affine_comparison_on_interval hr
    (show (b : ℝ)*(lo : ℝ)+a ≤ ((1+(D.w : ℝ))*m)*(lo : ℝ)+(1+(D.w : ℝ))*c by nlinarith [hlR])
    (show (b : ℝ)*(hi : ℝ)+a ≤ ((1+(D.w : ℝ))*m)*(hi : ℝ)+(1+(D.w : ℝ))*c by nlinarith [hhR])
  rw [leaf_eq]
  apply (div_le_iff₀ (by linarith : (0 : ℝ) < 1+D.w)).mpr
  nlinarith [mul_le_mul_of_nonneg_left hb hr0]

theorem relative_majorant {n : ℕ} {A B : Fin n → ℝ} {p lo hi : ℝ}
    {L U : ℝ → ℝ} (h : RelValid A B p lo hi L)
    (hU : ∀ r ∈ Icc lo hi, L r ≤ U r) : RelValid A B p lo hi U := by
  obtain ⟨D,hD,K,hK⟩ := h
  refine ⟨D,hD,K,?_⟩
  intro C hC V _ _ hP G W k r hk hlo hhi hdens hsize
  apply hK C hC V hP G W k r hk hlo hhi hdens
  apply le_trans _ hsize
  apply mul_le_mul_of_nonneg_left
  · exact Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left (hU r ⟨hlo,hhi⟩) (Nat.cast_nonneg k))
  · positivity

#print axioms cell_bound
#print axioms relative_majorant
end RamseyAnalytic.LeafMajorant
