import Support.LuWang.PolygonCriterionGeometry

/-! The finite polygon criterion. The hypotheses are exactly the source and
entropy bounds at the positive knots and the scalar test for each positive
node maximum. Every real stopping ratio, endpoint ratio and strict control
is covered by the conclusion. -/

set_option autoImplicit false

namespace LuWang

open Set

namespace BarrierPolygon

def NodeTests (P : BarrierPolygon) (F : ℝ → ℝ) : Prop :=
  ∀ i : Fin P.cells, ∀ μ ∈ Ioo (0 : ℝ) 1,
    0 < P.nodeMax i.succ (-Real.log μ) →
      terminalPsi F (P.knot i.succ) (P.value (P.knot i.succ))
        (P.nodeMax i.succ (-Real.log μ) / (-Real.log (1 - μ))) μ ≤
          -Real.log (1 - Real.exp (-P.slope i))

theorem knot_terminal_max (P : BarrierPolygon) {F : ℝ → ℝ}
    (hnode : ∀ i : Fin P.cells, P.value (P.knot i.succ) <
      min (F (P.knot i.succ)) (entropy (P.knot i.succ)))
    (htest : P.NodeTests F) (i : Fin P.cells) (j : Fin (P.cells + 1))
    (hji : j ≤ i.succ) {row w μ x y : ℝ}
    (hc : StrictControl F row w μ x y) (hrow : 0 < row)
    (hrowle : row ≤ 1 - Real.exp (-P.slope i)) :
    P.value (P.knot j) + w * P.nodeMax j (-Real.log μ) ≤
      -Real.log x - P.knot j * Real.log y := by
  by_cases hj : j = 0
  · have hx := (interior_subset hc.2.2.1).1
    have hlog := Real.log_neg hx.1 hx.2
    simp [hj, P.first, P.value_zero, P.nodeMax_zero]
    linarith
  obtain ⟨a, rfl⟩ := Fin.exists_succ_eq_of_ne_zero hj
  have hai : a ≤ i := by
    simpa only [Fin.le_iff_val_le_val, Fin.val_succ, Nat.add_le_add_iff_right] using hji
  exact terminal_node_bound hc hrow (hrowle.trans (P.threshold_antitone hai))
    (P.nodeRatio a).property (lt_min_iff.mp (hnode a)).1
    (P.nodeMax_lt_tau (fun b => (lt_min_iff.mp (hnode b)).2) a.succ hc.2.1)
    (htest a μ hc.2.1)

theorem finite_polygon_terminal_barrier (P : BarrierPolygon) {F : ℝ → ℝ}
    (hnode : ∀ i : Fin P.cells, P.value (P.knot i.succ) <
      min (F (P.knot i.succ)) (entropy (P.knot i.succ)))
    (htest : P.NodeTests F) : P.TerminalBarrier F := by
  intro lam theta htheta hthetal row w μ x y hrow hrowle hc
  let i := P.leftIndex lam
  let l := P.knot i.castSucc
  let r := P.knot i.succ
  let d := P.slope i
  let v := P.value l - d * l
  let β := -Real.log μ
  let D := P.nodeMax i.castSucc β
  let A := -Real.log x
  let B := -Real.log y
  have hi := P.leftIndex_spec lam
  have hlr : l < r := P.knot_strict Fin.castSucc_lt_succ
  have hform : ∀ s ∈ Icc l r, P.value s = v + d * s := by
    intro s hs
    rw [P.affine i s hs]
    dsimp [v, l, d]
    ring
  have hnodeL := P.knot_terminal_max hnode htest i i.castSucc Fin.castSucc_lt_succ.le hc hrow hrowle
  have hnodeR := P.knot_terminal_max hnode htest i i.succ le_rfl hc hrow hrowle
  have hDleft : P.value l - l * β ≤ D := P.node_le_max i.castSucc i.castSucc le_rfl β
  have hleft : v + d * l - A - l * B + w * max D (v + d * l - l * β) ≤ 0 := by
    rw [← hform l ⟨le_rfl, hlr.le⟩, max_eq_left hDleft]
    dsimp [A, B, D, β] at *
    linarith
  have hright : v + d * r - A - r * B + w * max D (v + d * r - r * β) ≤ 0 := by
    rw [← hform r ⟨hlr.le, le_rfl⟩]
    have hDr := P.nodeMax_succ i β
    dsimp [D]
    rw [← hDr]
    dsimp [A, B, β] at *
    linarith
  have hconv := polygon_terminal_between_endpoints hc.1.le hi.1.le hi.2 hleft hright
  rw [← hform lam.val ⟨hi.1.le, hi.2⟩] at hconv
  have hstop : P.value theta - theta * β ≤ max D (P.value lam.val - lam.val * β) := by
    by_cases htl : theta ≤ l
    · exact (P.stopped_value_le_nodeMax i.castSucc htheta htl).trans (le_max_left _ _)
    · have hltheta : l ≤ theta := le_of_not_ge htl
      have hform' : ∀ s ∈ Icc l lam.val, P.value s = v + d * s := by
        intro s hs
        exact hform s ⟨hs.1, hs.2.trans hi.2⟩
      exact (P.value_minus_linear_le_max hltheta hthetal hform').trans
        (max_le_max hDleft le_rfl)
  have hmul := mul_le_mul_of_nonneg_left hstop hc.1.le
  dsimp [A, B, β] at *
  nlinarith

theorem finite_polygon_criterion (P : BarrierPolygon) {F : ℝ → ℝ}
    (hsource : HasSourceLeaves F)
    (hnode : ∀ i : Fin P.cells, P.value (P.knot i.succ) <
      min (F (P.knot i.succ)) (entropy (P.knot i.succ)))
    (htest : P.NodeTests F) (p : Density) (s : Ratio) :
    P.profile p s ≤ ⨅ n, descendingIterate (routeOperator F) (sourceEnvelope F) n p s :=
  P.preserved_polygon_lower_bound hsource (P.finite_polygon_terminal_barrier hnode htest) p s

end BarrierPolygon

end LuWang
