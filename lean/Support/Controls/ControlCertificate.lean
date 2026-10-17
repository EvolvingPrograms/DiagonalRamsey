import Support.Controls.Precision
import Support.Controls.ParametricIntegral
import Support.Controls.ControlPower
import Support.Controls.TruncatedSum

set_option autoImplicit false
namespace RamseyAnalytic.ControlCertificate
open Set ControlGeometry AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval
open TangentExpressions

structure Tangent where
  q : ℚ
  m : ℚ
  c : ℚ
  k : ℕ

structure Data where
  p : ℚ
  x : ℚ
  μ : ℚ
  β : ℚ
  w : ℚ
  cutoff : ℚ
  margin : ℚ
  precision : ℕ
  tangents : List Tangent
  degrees : List Cell
  cells : List Cell

def parameters (D : Data) : Prop :=
  0 < D.p ∧ D.p < 1 ∧ 0 < D.x ∧ D.x < D.p ∧ 0 < D.μ ∧ D.μ < 1 ∧
  0 < D.β ∧ D.β < 1 ∧ 0 < D.w ∧ 0 < D.margin
instance (D : Data) : Decidable (parameters D) := by unfold parameters; infer_instance

def rowCheck (D : Data) (T : Tangent) : Bool :=
  ParametricTangents.domainCheck D.p D.x D.μ D.β D.w T.q &&
  Precision.check D.precision D.p D.x D.μ D.β D.w T.q T.m T.c T.k

def geometry (D : Data) : ParametricIntegral.Data :=
  ⟨D.w,D.μ,D.cutoff,D.degrees,D.cells⟩

def GeometryChecks (D : Data) : Prop :=
  0 < D.cutoff ∧ 0 < D.degrees.length ∧
  chain 0 D.degrees D.μ = true ∧ chain 0 D.cells D.cutoff = true ∧
  D.degrees.all (fun d => decide (0 ≤ d.left ∧ 0 ≤ d.right)) = true ∧
  D.cells.all (fun i => decide (0 ≤ i.left ∧ i.left ≤ i.right)) = true ∧
  D.cells.all (fun i => D.degrees.all (fun d => ParametricEnvelope.cornerCheck D.w d i)) = true ∧
  D.degrees.all (fun d => decide (
    (d.slope+D.w-D.w*D.cutoff)*d.left+d.intercept ≤ 0 ∧
    (d.slope+D.w-D.w*D.cutoff)*d.right+d.intercept ≤ 0)) = true
instance (D : Data) : Decidable (GeometryChecks D) := by unfold GeometryChecks; infer_instance

def totalExpr (D : Data) : Expr := (D.cells.map integralExpr).foldr Expr.add (rat 0)

def Checks (D : Data) : Prop :=
  parameters D ∧ 0 < D.tangents.length ∧ D.tangents.all (rowCheck D) = true ∧
  GeometryChecks D ∧
  D.degrees.all (fun d => D.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true ∧
  ((totalExpr D).safe (point 0) && decide (boundHi ((totalExpr D).bound (point 0)) < -D.margin)) = true ∧
  ControlPower.check D.μ D.w D.x = true
instance (D : Data) : Decidable (Checks D) := by unfold Checks; infer_instance

theorem total_eval (D : Data) : (totalExpr D).eval 0 =
    (D.cells.map (fun i => primitive i i.right-primitive i i.left)).sum := by
  have h : ∀ cs : List Cell, ((cs.map integralExpr).foldr Expr.add (rat 0)).eval 0 =
      (cs.map (fun i => primitive i i.right-primitive i i.left)).sum := by
    intro cs
    induction cs with
    | nil => simp [rat_eval]
    | cons i cs ih =>
      simp only [List.map_cons, List.foldr_cons, List.sum_cons, Expr.eval, ih,
        integralExpr, sub, primitiveExpr_eval, sub_eq_add_neg]
  exact h D.cells

structure Sound (D : Data) : Prop where
  ranges : parameters D
  cert_negative : DiagRamsey.cert D.p D.μ D.w D.β D.x < -(D.margin : ℝ)
  feasible : (DiagRamsey.certFeasible D.p D.μ D.w D.β D.x).Nonempty
  power : (D.x : ℝ) < (1-(D.μ : ℝ))^(D.w : ℝ)

theorem sound (D : Data) (hc : Checks D) : Sound D := by
  rcases hc with ⟨hp,htne,ht,hg,hl,hi,hpow⟩
  rcases hp with ⟨hp0,hp1,hx,hxp,hμ,hμ1,hβ,hβ1,hw,hm⟩
  have hglobal {T : Tangent} (hT : T ∈ D.tangents) :
      ∀ q ∈ sharpDomain D.p D.x D.μ D.β D.w, sharpH D.p D.x D.μ D.β D.w q ≤ (T.m : ℝ)*q+T.c := by
    have h := List.all_eq_true.mp ht T hT
    simp only [rowCheck, Bool.and_eq_true] at h
    exact Precision.checked_tangent hp0 hp1 hx hμ hβ hw.le h.1 h.2
  have hne : D.tangents ≠ [] := by intro h; simp [h] at htne
  have hn := List.all_eq_true.mp ht (D.tangents.head hne) (List.head_mem _)
  simp only [rowCheck, Bool.and_eq_true] at hn
  have hd := ParametricTangents.domainCheck_sound hp0 hx hμ hn.1
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
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hi
  have hsum := (bound_sound_cast _ hi.1).2.trans_lt ((Rat.cast_lt (K := ℝ)).mpr hi.2)
  rw [total_eval] at hsum
  push_cast at hsum
  refine ⟨⟨hp0,hp1,hx,hxp,hμ,hμ1,hβ,hβ1,hw,hm⟩,hcert.trans_lt hsum,?_,?_⟩
  · rw [certFeasible_eq _ _ _ _ _ (by exact_mod_cast hp0) (by exact_mod_cast hp1)
      (by exact_mod_cast hx) (by exact_mod_cast hμ) (by exact_mod_cast hμ1) (by exact_mod_cast hβ)]
    exact hdomain
  · exact ControlPower.sound hx hμ1 hpow

#print axioms sound
end RamseyAnalytic.ControlCertificate
