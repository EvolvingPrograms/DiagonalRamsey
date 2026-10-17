import Support.LuWang.ClosureOperator
import Support.LuWang.BarrierCrossing

set_option autoImplicit false

namespace LuWang

open Set


structure BarrierPolygon where
  cells : ℕ
  cells_pos : 0 < cells
  knot : Fin (cells + 1) → ℝ
  knot_strict : StrictMono knot
  first : knot 0 = 0
  last : knot (Fin.last cells) = 1
  value : ℝ → ℝ
  continuous : Continuous value
  value_zero : value 0 = 0
  slope : Fin cells → ℝ
  slope_pos : ∀ i, 0 < slope i
  slope_antitone : Antitone slope
  affine : ∀ i : Fin cells, ∀ s ∈ Icc (knot i.castSucc) (knot i.succ),
    value s = value (knot i.castSucc) + slope i * (s - knot i.castSucc)

namespace BarrierPolygon

noncomputable def leftIndex (P : BarrierPolygon) (s : Ratio) : Fin P.cells :=
  (exists_left_cell P.knot (by simpa [P.first] using s.property.1)
    (by simpa [P.last] using s.property.2)).choose

theorem leftIndex_spec (P : BarrierPolygon) (s : Ratio) :
    P.knot (P.leftIndex s).castSucc < s.val ∧ s.val ≤ P.knot (P.leftIndex s).succ :=
  (exists_left_cell P.knot (by simpa [P.first] using s.property.1)
    (by simpa [P.last] using s.property.2)).choose_spec

noncomputable def threshold (P : BarrierPolygon) (s : Ratio) : ℝ :=
  1 - Real.exp (-P.slope (P.leftIndex s))

noncomputable def profile (P : BarrierPolygon) : ExponentProfile :=
  fun p s => if p.val ≤ P.threshold s then P.value s.val else 0

theorem knot_value_nonneg (P : BarrierPolygon) : ∀ i, 0 ≤ P.value (P.knot i) := by
  intro i
  induction i using Fin.induction with
  | zero => simp [P.first, P.value_zero]
  | succ i ih =>
    rw [P.affine i _ ⟨(P.knot_strict Fin.castSucc_lt_succ).le, le_rfl⟩]
    exact add_nonneg ih (mul_nonneg (P.slope_pos i).le
      (sub_nonneg.mpr (P.knot_strict Fin.castSucc_lt_succ).le))

theorem value_pos (P : BarrierPolygon) (s : Ratio) : 0 < P.value s.val := by
  let i := P.leftIndex s
  have hi := P.leftIndex_spec s
  rw [P.affine i s.val ⟨hi.1.le, hi.2⟩]
  exact add_pos_of_nonneg_of_pos (P.knot_value_nonneg i.castSucc)
    (mul_pos (P.slope_pos i) (sub_pos.mpr hi.1))

theorem profile_nonneg (P : BarrierPolygon) : 0 ≤ P.profile := by
  intro p s
  dsimp [profile]
  split_ifs
  · exact (P.value_pos s).le
  · exact le_rfl

/-- This is the manuscript's quantified terminal inequality, with the source
parameters kept in their original logarithmic form. -/
def TerminalBarrier (P : BarrierPolygon) (F : ℝ → ℝ) : Prop :=
  ∀ lam : Ratio, ∀ theta : ℝ, 0 ≤ theta → theta ≤ lam.val →
    ∀ row w mu x y : ℝ, 0 < row → row ≤ P.threshold lam →
      StrictControl F row w mu x y →
      P.value lam.val + w * P.value theta ≤
        -Real.log x - lam.val * Real.log y - w * theta * Real.log mu

theorem profile_le_leaf (P : BarrierPolygon) {F : ℝ → ℝ}
    (hb : P.TerminalBarrier F) (p : Density) (s : Ratio)
    {w mu x y : ℝ} (hc : StrictControl F p.val w mu x y) :
    P.profile p s ≤ leafExponent w mu x y s.val := by
  by_cases hp : p.val ≤ P.threshold s
  · have ht := hb s s.val s.property.1.le le_rfl p.val w mu x y p.property.1 hp hc
    have hw : 0 < 1 + w := by linarith [hc.1]
    change (if p.val ≤ P.threshold s then P.value s.val else 0) ≤ _
    rw [if_pos hp]
    apply (le_div_iff₀ hw).2
    nlinarith
  · simpa [profile, hp] using (leafExponent_pos hc s.property.1).le

theorem profile_le_source (P : BarrierPolygon) {F : ℝ → ℝ}
    (hF : HasSourceLeaves F) (hb : P.TerminalBarrier F) :
    P.profile ≤ sourceEnvelope F := by
  intro p s
  apply le_csInf (leafCosts_nonempty hF p s)
  rintro z ⟨w, mu, x, y, hc, rfl⟩
  exact P.profile_le_leaf hb p s hc

/-- The minimum negative knot of the finite common refinement must be the
stopping knot. This is precisely the finite backwards argument in the paper. -/
theorem route_below_at_stop (P : BarrierPolygon) {lam : ℝ}
    (R : RouteGeometry lam) (hlam : lam ≤ 1)
    (hcall : R.Oracle hlam P.profile) (hend : R.height lam < P.value lam) :
    R.height R.theta < P.value R.theta := by
  classical
  let knots : Finset ℝ := Finset.univ.image R.knot ∪ Finset.univ.image P.knot
  let bad := knots.filter (fun s => R.theta ≤ s ∧ s ≤ lam ∧ R.height s < P.value s)
  have hlamknots : lam ∈ knots := by
    apply Finset.mem_union_left
    exact Finset.mem_image.mpr ⟨Fin.last R.cells, Finset.mem_univ _, R.endpoint⟩
  have hbad : bad.Nonempty :=
    ⟨lam, Finset.mem_filter.mpr ⟨hlamknots, R.theta_lt_endpoint.le, le_rfl, hend⟩⟩
  let b := bad.min' hbad
  have hbmem : b ∈ bad := Finset.min'_mem bad hbad
  obtain ⟨_, hbtheta, hblam, hbneg⟩ := Finset.mem_filter.mp hbmem
  by_cases hbeq : b = R.theta
  · simpa [hbeq] using hbneg
  have hbtheta' : R.theta < b := lt_of_le_of_ne hbtheta (Ne.symm hbeq)
  obtain ⟨i, hileft, hiright⟩ := exists_left_cell R.knot hbtheta'
    (by simpa [R.endpoint] using hblam)
  let br : Ratio := ⟨b, R.theta_pos.trans hbtheta', hblam.trans hlam⟩
  let j := P.leftIndex br
  have hj := P.leftIndex_spec br
  let a := max (R.knot i.castSucc) (P.knot j.castSucc)
  have hab : a < b := max_lt hileft hj.1
  have hai : R.knot i.castSucc ≤ a := le_max_left _ _
  have haj : P.knot j.castSucc ≤ a := le_max_right _ _
  have hga := R.affine i a ⟨hai, hab.le.trans hiright⟩
  have hgb := R.affine i b ⟨hileft.le, hiright⟩
  have hfa := P.affine j a ⟨haj, hab.le.trans hj.2⟩
  have hfb := P.affine j b ⟨hj.1.le, hj.2⟩
  have hcallb := hcall i b ⟨hileft.le, hiright⟩
  have hcallb' : (if R.density i ≤ 1 - Real.exp (-P.slope j)
      then P.value b else 0) < R.height b := by
    simpa [profile, threshold, j, br] using hcallb
  have hnegative := refined_cell_backward_gap hab (R.density_mem i).2
    (show R.height b - R.height a = R.slope i * (b - a) by rw [hga, hgb]; ring)
    (show P.value b - P.value a = P.slope j * (b - a) by rw [hfa, hfb]; ring)
    (R.slope_gt i) hcallb' hbneg
  have haneg : R.height a < P.value a := by linarith
  have haknots : a ∈ knots := by
    rcases le_total (R.knot i.castSucc) (P.knot j.castSucc) with h | h
    · rw [show a = P.knot j.castSucc from max_eq_right h]
      exact Finset.mem_union_right _ (Finset.mem_image.mpr
        ⟨j.castSucc, Finset.mem_univ _, rfl⟩)
    · rw [show a = R.knot i.castSucc from max_eq_left h]
      exact Finset.mem_union_left _ (Finset.mem_image.mpr
        ⟨i.castSucc, Finset.mem_univ _, rfl⟩)
  have hatheta : R.theta ≤ a :=
    (R.knot_strict.monotone (Fin.zero_le _)).trans hai
  have habad : a ∈ bad := Finset.mem_filter.mpr
    ⟨haknots, hatheta, hab.le.trans hblam, haneg⟩
  have hba : b ≤ a := Finset.min'_le bad a habad
  exact False.elim ((not_lt_of_ge hba) hab)

theorem profile_le_route (P : BarrierPolygon) {F : ℝ → ℝ}
    (hb : P.TerminalBarrier F) {p : Density} {s : Ratio} {z : ℝ}
    (R : RouteData F p.val s.val z)
    (hcall : R.toRouteGeometry.Oracle s.property.2 P.profile) :
    P.profile p s ≤ z := by
  by_cases hp : p.val ≤ P.threshold s
  · change (if p.val ≤ P.threshold s then P.value s.val else 0) ≤ z
    rw [if_pos hp]
    by_contra h
    have hz : z < P.value s.val := lt_of_not_ge h
    have hstop := P.route_below_at_stop R.toRouteGeometry s.property.2 hcall
      (R.endpoint_lt.trans hz)
    have ht := hb s R.toRouteGeometry.theta R.theta_pos.le
      R.toRouteGeometry.theta_lt_endpoint.le R.row R.weight R.mu R.x R.y
      R.row_pos (R.row_lt.le.trans hp) R.control
    have hw := R.control.1
    have hterm := R.terminal_lt
    dsimp [RouteGeometry.theta] at hstop ht
    nlinarith
  · have hz := routeCosts_pos (show z ∈ RouteCosts F P.profile p s from ⟨R, hcall⟩)
    simpa [profile, hp] using hz.le

theorem profile_postfixed (P : BarrierPolygon) {F : ℝ → ℝ}
    (hF : HasSourceLeaves F) (hb : P.TerminalBarrier F) :
    P.profile ≤ routeOperator F P.profile := by
  intro p s
  apply le_csInf (insert_nonempty _ _)
  intro z hz
  rcases hz with rfl | ⟨R, hR⟩
  · exact P.profile_le_source hF hb p s
  · exact P.profile_le_route hb R hR

theorem profile_le_every_iterate (P : BarrierPolygon) {F : ℝ → ℝ}
    (hF : HasSourceLeaves F) (hb : P.TerminalBarrier F) (n : ℕ) :
    P.profile ≤ descendingIterate (routeOperator F) (sourceEnvelope F) n :=
  postfixed_le_every_iterate (routeOperator_monotone hF)
    (P.profile_le_source hF hb) (P.profile_postfixed hF hb) n

theorem preserved_polygon_lower_bound (P : BarrierPolygon) {F : ℝ → ℝ}
    (hF : HasSourceLeaves F) (hb : P.TerminalBarrier F) (p : Density) (s : Ratio) :
    P.profile p s ≤ ⨅ n, descendingIterate (routeOperator F) (sourceEnvelope F) n p s := by
  apply le_ciInf
  intro n
  exact P.profile_le_every_iterate hF hb n p s

end BarrierPolygon

end LuWang
