import Support.LuWang.RouteSyntax
import Support.LuWang.CompactDepth
import Support.LuWang.OrderIteration
import Mathlib.Tactic

/-! The actual real-valued operator of Section 5. Its competitors are source
leaves and finite geometrical routes with strict oracle calls on closed cells.
No fixed-point or finite-proof characterization is assumed in its definition. -/

set_option autoImplicit false

namespace LuWang

open Set

def LeafCosts (F : ℝ → ℝ) (p : Density) (s : Ratio) : Set ℝ :=
  {z | ∃ w mu x y : ℝ, StrictControl F p.val w mu x y ∧
    z = leafExponent w mu x y s.val}

def HasSourceLeaves (F : ℝ → ℝ) : Prop :=
  ∀ p : Density, ∃ w mu x y : ℝ, StrictControl F p.val w mu x y

noncomputable def sourceEnvelope (F : ℝ → ℝ) : ExponentProfile :=
  fun p s => sInf (LeafCosts F p s)

def RouteCosts (F : ℝ → ℝ) (u : ExponentProfile) (p : Density) (s : Ratio) : Set ℝ :=
  {z | ∃ R : RouteData F p.val s.val z, R.toRouteGeometry.Oracle s.property.2 u}

noncomputable def routeOperator (F : ℝ → ℝ) (u : ExponentProfile) : ExponentProfile :=
  fun p s => sInf (insert (sourceEnvelope F p s) (RouteCosts F u p s))

def InProfileLattice (F : ℝ → ℝ) (u : ExponentProfile) : Prop :=
  0 ≤ u ∧ u ≤ sourceEnvelope F

theorem strictControl_xy {F : ℝ → ℝ} {p w mu x y : ℝ}
    (h : StrictControl F p w mu x y) : x ∈ Ioo 0 1 ∧ y ∈ Ioo 0 1 := by
  have hxy := interior_subset h.2.2.1
  exact ⟨hxy.1, hxy.2.1⟩

theorem leafExponent_pos {F : ℝ → ℝ} {p w mu x y : ℝ}
    (h : StrictControl F p w mu x y) {s : ℝ} (hs : 0 < s) :
    0 < leafExponent w mu x y s := by
  have hxy := strictControl_xy h
  have hx := Real.log_neg hxy.1.1 hxy.1.2
  have hy := Real.log_neg hxy.2.1 hxy.2.2
  have hm := Real.log_neg h.2.1.1 h.2.1.2
  apply div_pos _ (by linarith [h.1])
  have hsy := mul_neg_of_pos_of_neg hs hy
  have hwm := mul_neg_of_pos_of_neg (mul_pos h.1 hs) hm
  change 0 < -Real.log x - s * Real.log y - w * s * Real.log mu
  linarith

theorem leafCosts_nonempty {F : ℝ → ℝ} (h : HasSourceLeaves F)
    (p : Density) (s : Ratio) : (LeafCosts F p s).Nonempty := by
  obtain ⟨w, mu, x, y, hc⟩ := h p
  exact ⟨_, w, mu, x, y, hc, rfl⟩

theorem leafCosts_bddBelow (F : ℝ → ℝ) (p : Density) (s : Ratio) :
    BddBelow (LeafCosts F p s) := by
  refine ⟨0, ?_⟩
  rintro z ⟨w, mu, x, y, hc, rfl⟩
  exact (leafExponent_pos hc s.property.1).le

theorem sourceEnvelope_nonneg {F : ℝ → ℝ} (h : HasSourceLeaves F) :
    0 ≤ sourceEnvelope F := by
  intro p s
  apply le_csInf (leafCosts_nonempty h p s)
  rintro z ⟨w, mu, x, y, hc, rfl⟩
  exact (leafExponent_pos hc s.property.1).le

theorem sourceEnvelope_le_leaf {F : ℝ → ℝ} {p : Density} {s : Ratio}
    {w mu x y : ℝ} (h : StrictControl F p.val w mu x y) :
    sourceEnvelope F p s ≤ leafExponent w mu x y s.val :=
  csInf_le (leafCosts_bddBelow F p s) ⟨w, mu, x, y, h, rfl⟩

theorem routeCosts_pos {F : ℝ → ℝ} {u : ExponentProfile} {p : Density} {s : Ratio}
    {z : ℝ} (hz : z ∈ RouteCosts F u p s) : 0 < z := by
  obtain ⟨R, _⟩ := hz
  exact (R.height_pos s.val ⟨s.property.1.le, le_rfl⟩).trans R.endpoint_lt

theorem operatorCosts_bddBelow {F : ℝ → ℝ} (h : HasSourceLeaves F)
    (u : ExponentProfile) (p : Density) (s : Ratio) :
    BddBelow (insert (sourceEnvelope F p s) (RouteCosts F u p s)) := by
  refine ⟨0, ?_⟩
  intro z hz
  rcases hz with hleaf | hroute
  · exact hleaf ▸ sourceEnvelope_nonneg h p s
  · exact (routeCosts_pos hroute).le

theorem routeOperator_nonneg {F : ℝ → ℝ} (h : HasSourceLeaves F)
    (u : ExponentProfile) : 0 ≤ routeOperator F u := by
  intro p s
  apply le_csInf (insert_nonempty _ _)
  intro z hz
  rcases hz with hleaf | hroute
  · exact hleaf ▸ sourceEnvelope_nonneg h p s
  · exact (routeCosts_pos hroute).le

theorem routeOperator_le_source {F : ℝ → ℝ} (h : HasSourceLeaves F)
    (u : ExponentProfile) : routeOperator F u ≤ sourceEnvelope F := by
  intro p s
  exact csInf_le (operatorCosts_bddBelow h u p s) (mem_insert _ _)

theorem routeOperator_le_route {F : ℝ → ℝ} (h : HasSourceLeaves F)
    {u : ExponentProfile} {p : Density} {s : Ratio} {z : ℝ}
    (R : RouteData F p.val s.val z) (hR : R.toRouteGeometry.Oracle s.property.2 u) :
    routeOperator F u p s ≤ z :=
  csInf_le (operatorCosts_bddBelow h u p s) (mem_insert_of_mem _ ⟨R, hR⟩)

theorem routeOperator_monotone {F : ℝ → ℝ} (h : HasSourceLeaves F) :
    Monotone (routeOperator F) := by
  intro u v huv p s
  apply csInf_le_csInf (operatorCosts_bddBelow h u p s) (insert_nonempty _ _)
  intro z hz
  rcases hz with rfl | hroute
  · exact mem_insert _ _
  · rcases hroute with ⟨R, hR⟩
    apply mem_insert_of_mem
    refine ⟨R, ?_⟩
    intro i t ht
    exact (huv _ _).trans_lt (hR i t ht)

end LuWang
