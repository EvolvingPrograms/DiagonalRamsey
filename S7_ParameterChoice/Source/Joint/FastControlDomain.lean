import S7_ParameterChoice.Source.Joint.FastControlExpressions
set_option autoImplicit false
namespace DiagonalRamsey.JointControlDomain
open RamseyAnalytic AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval
open TangentExpressions

def domainCheck (n : ℕ) (p x μ β w q : ℚ) : Bool :=
  let d := enclose (point 0) (Precision.terms n (ParametricTangents.deltaExpr p x μ β w q))
  let gap := enclose (point 0) (Precision.terms n (.add (ParametricTangents.deltaExpr p x μ β w q) (ParametricTangents.logRat p)))
  decide (0 < q ∧ q < 1 ∧ q ≤ μ) && d.1 && gap.1 &&
    decide (0 < boundLo d.2 ∧ boundHi gap.2 < 0)
where enclose := JointControlExpressions.enclose

theorem domainCheck_sound {n : ℕ} {p x μ β w q : ℚ}
    (hp : 0 < p) (hx : 0 < x) (hμ : 0 < μ)
    (hc : domainCheck n p x μ β w q = true) :
    (q : ℝ) ∈ sharpDomain p x μ β w ∧ 0 < sharpV p x μ β w q/q := by
  simp only [domainCheck, domainCheck.enclose, JointControlExpressions.enclose_eq,
    Bool.and_eq_true, decide_eq_true_eq] at hc
  have hq := hc.1.1.1.1
  have hq1 := hc.1.1.1.2.1
  have hqR : (0 : ℝ) < q := by exact_mod_cast hq
  have hd := (bound_sound_cast _ hc.1.1.2).1
  have hg := (bound_sound_cast _ hc.1.2).2
  rw [Precision.terms_eval, ParametricTangents.deltaExpr_eval _ _ _ _ _ _ hp hx hμ hq hq1] at hd
  rw [Precision.terms_eval] at hg
  have hlo : (0 : ℝ) < boundLo ((Precision.terms n (ParametricTangents.deltaExpr p x μ β w q)).bound (point 0)) := by
    exact_mod_cast hc.2.1
  have hhi : (boundHi ((Precision.terms n (.add (ParametricTangents.deltaExpr p x μ β w q) (ParametricTangents.logRat p))).bound (point 0)) : ℝ) < 0 := by
    exact_mod_cast hc.2.2
  have hn : sharpV p x μ β w q/q+Real.log (p : ℝ) < 0 := by
    simpa only [Expr.eval, ParametricTangents.deltaExpr_eval _ _ _ _ _ _ hp hx hμ hq hq1,
      ParametricTangents.logRat_eval p 0 hp] using hg.trans_lt hhi
  have hneg := mul_neg_of_neg_of_pos hn hqR
  have he : (sharpV p x μ β w q/q+Real.log (p : ℝ))*(q : ℝ) =
      sharpV p x μ β w q+(q : ℝ)*Real.log (p : ℝ) := by field_simp
  rw [he] at hneg
  exact ⟨⟨⟨⟨hqR, by exact_mod_cast hq1⟩, hneg⟩,
    by change (q : ℝ) ≤ μ; exact_mod_cast hc.1.1.1.2.2⟩, hlo.trans_le hd⟩

theorem checked_tangent {n : ℕ} {p x μ β w q m c : ℚ} {k : ℕ}
    (hp : 0 < p) (hp1 : p < 1) (hx : 0 < x) (hμ : 0 < μ)
    (hβ : 0 < β) (hw : 0 ≤ w)
    (hdom : domainCheck n p x μ β w q = true)
    (hc : Precision.check n p x μ β w q m c k = true) :
    ∀ t ∈ sharpDomain p x μ β w, sharpH p x μ β w t ≤ (m : ℝ)*t+c := by
  have hd := domainCheck_sound hp hx hμ hdom
  have he := ParametricTangents.formula_eval p x μ β w q k hp hp1 hx hμ
    (by exact_mod_cast hd.1.1.1.1) (by exact_mod_cast hd.1.1.1.2) hd.2
    (sharpDomain_ratio hd.1)
  have herr := Precision.check_sound hμ.le hc
  rw [he.1, he.2] at herr
  intro t ht
  exact sharpH_tangent_of_error_bound _ _ _ _ _ (by exact_mod_cast hp)
    (by exact_mod_cast hp1) (by exact_mod_cast hμ.ne') (by exact_mod_cast hβ)
    (by exact_mod_cast hw) hd.1 ht hd.2 herr

def rowCheck (D : ControlCertificate.Data) (T : ControlCertificate.Tangent) : Bool :=
  domainCheck D.precision D.p D.x D.μ D.β D.w T.q &&
  JointControlExpressions.tangentCheck D T

def Checks (D : ControlCertificate.Data) : Prop :=
  ControlCertificate.parameters D ∧ 0 < D.tangents.length ∧ D.tangents.all (rowCheck D) = true ∧
  ControlCertificate.GeometryChecks D ∧
  D.degrees.all (fun d => D.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true ∧
  JointControlExpressions.integralCheck D = true ∧ ControlPower.check D.μ D.w D.x = true
instance (D : ControlCertificate.Data) : Decidable (Checks D) := by unfold Checks; infer_instance

open ControlCertificate ControlGeometry
theorem sound (D : Data) (hc : Checks D) : Sound D := by
  rcases hc with ⟨hp,htne,ht,hg,hl,hi,hpow⟩
  rcases hp with ⟨hp0,hp1,hx,hxp,hμ,hμ1,hβ,hβ1,hw,hm⟩
  have hglobal {T : Tangent} (hT : T ∈ D.tangents) :
      ∀ q ∈ sharpDomain D.p D.x D.μ D.β D.w, sharpH D.p D.x D.μ D.β D.w q ≤ (T.m : ℝ)*q+T.c := by
    have h := List.all_eq_true.mp ht T hT
    simp only [rowCheck, Bool.and_eq_true] at h
    rw [JointControlExpressions.tangentCheck_eq] at h
    exact checked_tangent hp0 hp1 hx hμ hβ hw.le h.1 h.2
  have hne : D.tangents ≠ [] := by intro h; simp [h] at htne
  have hn := List.all_eq_true.mp ht (D.tangents.head hne) (List.head_mem _)
  simp only [rowCheck, Bool.and_eq_true] at hn
  have hd := domainCheck_sound hp0 hx hμ hn.1
  have hdomain : (sharpDomain D.p D.x D.μ D.β D.w).Nonempty := ⟨_,hd.1⟩
  have hgeometry : ParametricIntegral.Valid (geometry D) := by
    rcases hg with ⟨hcut,hdeg,hchain,hichain,hdnon,hcnon,hcorners,htail⟩
    refine ⟨hw.le,hμ.le,hcut,?_,hchain,hichain,hdnon,hcnon,hcorners,htail⟩
    change D.degrees ≠ []
    intro h; simp [h] at hdeg
  have hbound : ∀ d ∈ D.degrees, ∀ q ∈ sharpDomain D.p D.x D.μ D.β D.w,
      sharpH D.p D.x D.μ D.β D.w q ≤ (d.slope : ℝ)*q+d.intercept := by
    intro d hd
    obtain ⟨t,ht,he⟩ := List.any_eq_true.mp (List.all_eq_true.mp hl d hd)
    simp only [decide_eq_true_eq] at he
    rw [he.1,he.2]
    exact hglobal ht
  have hcert := ParametricIntegral.cert_bound (geometry D) hgeometry
    (by exact_mod_cast hp0) (by exact_mod_cast hp1) (by exact_mod_cast hx)
    (by exact_mod_cast hμ) (by exact_mod_cast hμ1) (by exact_mod_cast hβ)
    rfl rfl hdomain hbound
  rw [JointControlExpressions.integralCheck_eq] at hi
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hi
  have hsum := (bound_sound_cast _ hi.1).2.trans_lt ((Rat.cast_lt (K := ℝ)).mpr hi.2)
  rw [total_eval] at hsum
  push_cast at hsum
  refine ⟨⟨hp0,hp1,hx,hxp,hμ,hμ1,hβ,hβ1,hw,hm⟩,hcert.trans_lt hsum,?_,?_⟩
  · rw [certFeasible_eq _ _ _ _ _ (by exact_mod_cast hp0) (by exact_mod_cast hp1)
      (by exact_mod_cast hx) (by exact_mod_cast hμ) (by exact_mod_cast hμ1) (by exact_mod_cast hβ)]
    exact hdomain
  · exact ControlPower.sound hx hμ1 hpow


#print axioms domainCheck_sound
#print axioms checked_tangent
#print axioms sound
end DiagonalRamsey.JointControlDomain
