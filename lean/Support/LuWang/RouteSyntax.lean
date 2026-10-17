import Support.LuWang.Specifications
import Mathlib.Topology.Semicontinuity.Basic
import Mathlib.Tactic

/-! Finite, closed-call route data used by both graph soundness and closure.
All functions below are real-valued; the domain of the operator is the actual
density-ratio domain `(0,1) × (0,1]` of the manuscript. -/

set_option autoImplicit false

namespace LuWang

open Set

abbrev DensityRatio := {ps : ℝ × ℝ // ps.1 ∈ Ioo 0 1 ∧ ps.2 ∈ Ioc 0 1}

abbrev Ratio := {s : ℝ // s ∈ Ioc 0 1}

abbrev Density := {p : ℝ // p ∈ Ioo 0 1}

abbrev ExponentProfile := Density → Ratio → ℝ

/-- Closed cells are assigned to their left-hand interval at a knot. -/
theorem exists_left_cell {n : ℕ} (knot : Fin (n + 1) → ℝ)
    {b : ℝ} (hleft : knot 0 < b) (hright : b ≤ knot (Fin.last n)) :
    ∃ i : Fin n, knot i.castSucc < b ∧ b ≤ knot i.succ := by
  classical
  let S := Finset.univ.filter (fun j : Fin (n + 1) => b ≤ knot j)
  have hS : S.Nonempty := ⟨Fin.last n, by simp [S, hright]⟩
  let j := S.min' hS
  have hjmem : j ∈ S := Finset.min'_mem S hS
  have hjright : b ≤ knot j := (Finset.mem_filter.mp hjmem).2
  have hjzero : j ≠ 0 := by
    intro hj
    rw [hj] at hjright
    exact (not_lt_of_ge hjright) hleft
  obtain ⟨i, hi⟩ := Fin.exists_succ_eq_of_ne_zero hjzero
  refine ⟨i, ?_, by simpa [hi] using hjright⟩
  by_contra h
  have himem : i.castSucc ∈ S := by simp [S, le_of_not_gt h]
  have hmin : j ≤ i.castSucc := Finset.min'_le S i.castSucc himem
  rw [← hi] at hmin
  have hval := Fin.le_def.mp hmin
  simp only [Fin.val_succ, Fin.val_castSucc] at hval
  omega

structure RouteGeometry (lam : ℝ) where
  cells : ℕ
  cells_pos : 0 < cells
  knot : Fin (cells + 1) → ℝ
  knot_strict : StrictMono knot
  theta_pos : 0 < knot 0
  endpoint : knot (Fin.last cells) = lam
  density : Fin cells → ℝ
  slope : Fin cells → ℝ
  density_mem : ∀ i, density i ∈ Ioo 0 1
  slope_gt : ∀ i, -Real.log (1 - density i) < slope i
  height : ℝ → ℝ
  height_continuous : Continuous height
  height_pos : ∀ s ∈ Icc 0 lam, 0 < height s
  constant : ∀ s ∈ Icc 0 (knot 0), height s = height (knot 0)
  affine : ∀ i : Fin cells, ∀ s ∈ Icc (knot i.castSucc) (knot i.succ),
    height s = height (knot i.castSucc) + slope i * (s - knot i.castSucc)

namespace RouteGeometry

def theta {lam : ℝ} (R : RouteGeometry lam) : ℝ := R.knot 0

def cell {lam : ℝ} (R : RouteGeometry lam) (i : Fin R.cells) : Set ℝ :=
  Icc (R.knot i.castSucc) (R.knot i.succ)

theorem theta_lt_endpoint {lam : ℝ} (R : RouteGeometry lam) : R.theta < lam := by
  have h : R.knot 0 < R.knot (Fin.last R.cells) :=
    R.knot_strict (show (0 : ℕ) < R.cells from R.cells_pos)
  exact h.trans_eq R.endpoint

theorem cell_mem_ratio {lam : ℝ} (R : RouteGeometry lam) (hlam : lam ≤ 1)
    (i : Fin R.cells) {s : ℝ} (hs : s ∈ R.cell i) : s ∈ Ioc 0 1 := by
  constructor
  · exact lt_of_lt_of_le R.theta_pos
      ((R.knot_strict.monotone (show (0 : Fin (R.cells + 1)) ≤ i.castSucc by
        exact Fin.zero_le _)).trans hs.1)
  · exact hs.2.trans ((R.knot_strict.monotone (Fin.le_last _)).trans
      (by simpa [R.endpoint] using hlam))

end RouteGeometry

structure RouteData (F : ℝ → ℝ) (p lam z : ℝ) extends RouteGeometry lam where
  row : ℝ
  weight : ℝ
  mu : ℝ
  x : ℝ
  y : ℝ
  row_pos : 0 < row
  row_lt : row < p
  control : StrictControl F row weight mu x y
  endpoint_lt : height lam < z
  terminal_lt : -Real.log x - lam * Real.log y -
    weight * (knot 0) * Real.log mu < z + weight * height (knot 0)

structure RouteCalls {lam : ℝ} (R : RouteGeometry lam) where
  bound : Fin R.cells → ℝ → ℝ
  continuous : ∀ i, ContinuousOn (bound i) (R.cell i)
  gap : ∀ i, ∀ s ∈ R.cell i, bound i s < R.height s

def RouteCalls.Valid {lam : ℝ} {R : RouteGeometry lam} (C : RouteCalls R) : Prop :=
  ∀ i, ConditionalBound (R.density i) (C.bound i) (R.cell i)

def RouteGeometry.Oracle {lam : ℝ} (R : RouteGeometry lam) (hlam : lam ≤ 1)
    (u : ExponentProfile) : Prop :=
  ∀ i, ∀ s, ∀ hs : s ∈ R.cell i,
    u ⟨R.density i, R.density_mem i⟩ ⟨s, R.cell_mem_ratio hlam i hs⟩ < R.height s

end LuWang
