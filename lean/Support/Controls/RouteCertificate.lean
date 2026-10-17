import Support.Controls.StoredRouteHeights
import Support.Controls.ProfileAssembly
import Support.Controls.RetainedControl
import Support.Published.Lemmas.DiagRamsey_SB_Route

set_option autoImplicit false
namespace RamseyAnalytic.RouteCertificate
open Set DiagRamsey ControlGeometry
open AnalyticBounds.IntervalExpr AnalyticBounds.FixedPointInterval TangentExpressions

structure Data (M : ℕ) where
  p : ℚ
  ε : ℚ
  u : Fin (M+1) → ℚ
  d : Fin M → ℚ
  H : Fin (M+1) → ℚ
  density : Fin M → ℚ
  cells : Fin M → List Cell

noncomputable def route {M n : ℕ} (D : Data M) (C : RetainedControl.Data)
    (i : Fin n) : RouteNode M n where
  p := D.p
  γ := RetainedControl.control C i
  M := M
  u := fun j => D.u j
  d := fun j => D.d j
  c := id
  g₀ := D.H 0
  ε := D.ε

def slopeCheck (q d : ℚ) : Bool :=
  let E := ParametricTangents.logRat (1-q)
  E.safe (point 0) && decide (0 < d+boundLo (E.bound (point 0)))

theorem slope_gap {q d : ℚ} (hq : q < 1) (hc : slopeCheck q d = true) :
    -Real.log (1-(q : ℝ)) < (d : ℝ) := by
  simp only [slopeCheck, Bool.and_eq_true, decide_eq_true_eq] at hc
  have hb := (bound_sound_cast _ hc.1).1
  rw [ParametricTangents.logRat_eval _ _ (sub_pos.mpr hq)] at hb
  push_cast at hb
  have hn := (Rat.cast_lt (K := ℝ)).mpr hc.2
  push_cast at hn
  linarith

def cellCheck {M : ℕ} (D : Data M) (j : Fin M) (C : Cell) : Bool := decide (
  D.u j.castSucc ≤ C.left ∧ C.left ≤ C.right ∧ C.right ≤ D.u j.succ ∧
  C.slope*C.left+C.intercept < D.H j.castSucc+D.d j*(C.left-D.u j.castSucc) ∧
  C.slope*C.right+C.intercept < D.H j.castSucc+D.d j*(C.right-D.u j.castSucc))

def Checks {M : ℕ} (D : Data M) (C : RetainedControl.Data) : Prop :=
  0 < M ∧ C.p < D.p ∧ D.p < 1 ∧ 0 < D.u 0 ∧ 0 < D.H 0 ∧ 0 < D.ε ∧
  StrictMono D.u ∧
  (∀ j, D.H j.succ = D.H j.castSucc+D.d j*(D.u j.succ-D.u j.castSucc)) ∧
  (∀ j, 0 < D.density j ∧ D.density j < 1 ∧ slopeCheck (D.density j) (D.d j) = true) ∧
  (∀ j, chain (D.u j.castSucc) (D.cells j) (D.u j.succ) = true ∧
    D.cells j ≠ [] ∧ (D.cells j).all (cellCheck D j) = true)

instance {M : ℕ} (D : Data M) (C : RetainedControl.Data) : Decidable (Checks D C) :=
  inferInstanceAs (Decidable (0 < M ∧ C.p < D.p ∧ D.p < 1 ∧ 0 < D.u 0 ∧
    0 < D.H 0 ∧ 0 < D.ε ∧ StrictMono D.u ∧
    (∀ j, D.H j.succ = D.H j.castSucc+D.d j*(D.u j.succ-D.u j.castSucc)) ∧
    (∀ j, 0 < D.density j ∧ D.density j < 1 ∧ slopeCheck (D.density j) (D.d j) = true) ∧
    (∀ j, chain (D.u j.castSucc) (D.cells j) (D.u j.succ) = true ∧
      D.cells j ≠ [] ∧ (D.cells j).all (cellCheck D j) = true)))

theorem strict {M n : ℕ} {D : Data M} {C : RetainedControl.Data}
    (hc : Checks D C) (i : Fin n) : StrictMono (route D C i).u := by
  intro j k hjk
  change (D.u j : ℝ) < (D.u k : ℝ)
  exact_mod_cast hc.2.2.2.2.2.2.1 hjk

theorem height {M n : ℕ} {D : Data M} {C : RetainedControl.Data}
    (hc : Checks D C) (i : Fin n) (j : Fin M) {r : ℝ}
    (hr : r ∈ Icc ((D.u j.castSucc : ℚ) : ℝ) (D.u j.succ : ℝ)) :
    (route D C i).g r = (D.H j.castSucc : ℝ)+(D.d j : ℝ)*(r-(D.u j.castSucc : ℝ)) := by
  apply StoredRouteHeights.on_cell (route D C i) (strict hc i)
    (fun k => (D.H k : ℝ)) rfl
  · intro k
    dsimp only [route]
    exact_mod_cast hc.2.2.2.2.2.2.2.1 k
  · exact hr

theorem children_below {M n : ℕ} {D : Data M} {C : RetainedControl.Data}
    (hc : Checks D C) (i : Fin n) (j : Fin M) {r : ℝ}
    (hr : r ∈ Icc (D.u j.castSucc : ℝ) (D.u j.succ : ℝ)) :
    CandidateRoute.evalPieces (D.cells j) r < (route D C i).g r := by
  have hd := hc.2.2.2.2.2.2.2.2.2 j
  apply CandidateRoute.evalPieces_lt
  · exact chain_real_cover hd.1 hd.2.1 hr
  · intro E hE he
    have h := List.all_eq_true.mp hd.2.2 E hE
    simp only [cellCheck, decide_eq_true_eq] at h
    have hl : (E.left : ℝ) ∈ Icc (D.u j.castSucc : ℝ) (D.u j.succ : ℝ) :=
      ⟨by exact_mod_cast h.1, by exact_mod_cast h.2.1.trans h.2.2.1⟩
    have hh : (E.right : ℝ) ∈ Icc (D.u j.castSucc : ℝ) (D.u j.succ : ℝ) :=
      ⟨by exact_mod_cast h.1.trans h.2.1, by exact_mod_cast h.2.2.1⟩
    apply affine_below_route (route D C i) (strict hc i) j hl hh he
    · rw [height hc i j hl]
      exact_mod_cast h.2.2.2.1
    · rw [height hc i j hh]
      exact_mod_cast h.2.2.2.2

theorem sound {M n : ℕ} {D : Data M} {C : RetainedControl.Data}
    (hc : Checks D C) (A B : Fin n → ℝ) (i : Fin n)
    (hApos : ∀ j, 0 < A j) (hBpos : ∀ j, 0 < B j)
    (hv : (RetainedControl.control C i).Valid A B)
    (hchildren : ∀ j, RelValidPr (fun K V _ _ => Prem A B K V)
      (D.density j) (D.u j.castSucc) (D.u j.succ)
      (CandidateRoute.evalPieces (D.cells j))) :
    RelValid A B (route D C i).p (route D C i).θ (route D C i).ω
      (route D C i).out := by
  have ⟨hM,hp,hp1,hu,hH,hε,_,_,hd,_⟩ := hc
  apply route_relValidP hApos hBpos (fun K V _ _ => Prem A B K V)
    (fun _ _ _ _ h => h) (route D C i) hv
    (by change (C.p : ℝ) < (D.p : ℝ); exact_mod_cast hp)
    (by change (D.p : ℝ) < 1; exact_mod_cast hp1) hM
    (by change (0 : ℝ) < (D.u 0 : ℝ); exact_mod_cast hu) (strict hc i)
    (by change (0 : ℝ) < (D.H 0 : ℝ); exact_mod_cast hH)
    (by change (0 : ℝ) < (D.ε : ℝ); exact_mod_cast hε)
    (fun j => (D.density j : ℝ)) (fun j => (D.u j.castSucc : ℝ))
    (fun j => (D.u j.succ : ℝ)) (fun j => CandidateRoute.evalPieces (D.cells j))
    hchildren (fun _ => le_rfl) (fun _ => le_rfl)
  · intro j; exact_mod_cast (hd j).1
  · intro j; exact_mod_cast (hd j).2.1
  · exact fun j => slope_gap (hd j).2.1 (hd j).2.2
  · exact fun j r hlo hhi => children_below hc i j ⟨hlo,hhi⟩

#print axioms sound
end RamseyAnalytic.RouteCertificate
