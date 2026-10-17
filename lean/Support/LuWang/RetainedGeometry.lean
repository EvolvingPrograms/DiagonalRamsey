import Support.LuWang.RouteSyntax
import Mathlib.Order.Monotone.Union
import Mathlib.Tactic

set_option autoImplicit false

namespace LuWang

open Set
open scoped Finset

namespace RouteGeometry

theorem retained_slope_pos {lam : ℝ} (R : RouteGeometry lam) (i : Fin R.cells) :
    0 < R.slope i := by
  have hq := R.density_mem i
  have hlog : Real.log (1 - R.density i) < 0 :=
    Real.log_neg (sub_pos.mpr hq.2) (by linarith [hq.1])
  linarith [R.slope_gt i]

theorem height_monotone {lam : ℝ} (R : RouteGeometry lam) :
    MonotoneOn R.height (Icc 0 lam) := by
  have initial (n : ℕ) (hn : n ≤ R.cells) :
      MonotoneOn R.height (Icc 0 (R.knot ⟨n, by omega⟩)) := by
    induction n with
    | zero =>
      intro x hx y hy _
      rw [R.constant x hx, R.constant y hy]
    | succ n ih =>
      let i : Fin R.cells := ⟨n, by omega⟩
      have hleft := ih (by omega)
      have hright : MonotoneOn R.height (R.cell i) := by
        intro x hx y hy hxy
        rw [R.affine i x hx, R.affine i y hy]
        gcongr
        exact (R.retained_slope_pos i).le
      have hzero : 0 ≤ R.knot i.castSucc := R.theta_pos.le.trans
        (R.knot_strict.monotone (Fin.zero_le _))
      have horder : R.knot i.castSucc ≤ R.knot i.succ :=
        R.knot_strict.monotone (by exact_mod_cast (show n ≤ n + 1 by omega))
      have hwhole := hleft.union_right hright (isGreatest_Icc hzero) (isLeast_Icc horder)
      change MonotoneOn R.height (Icc 0 (R.knot i.castSucc) ∪
        Icc (R.knot i.castSucc) (R.knot i.succ)) at hwhole
      rw [Icc_union_Icc_eq_Icc hzero horder] at hwhole
      exact hwhole
  have h := initial R.cells le_rfl
  change MonotoneOn R.height (Icc 0 (R.knot (Fin.last R.cells))) at h
  rwa [R.endpoint] at h

noncomputable def stepAllowance {lam : ℝ} (R : RouteGeometry lam) : ℝ :=
  1 + ∑ i : Fin R.cells, R.slope i

theorem stepAllowance_pos {lam : ℝ} (R : RouteGeometry lam) : 0 < R.stepAllowance := by
  have hsum : 0 ≤ ∑ i : Fin R.cells, R.slope i :=
    Finset.sum_nonneg (fun i _ => (R.retained_slope_pos i).le)
  dsimp [stepAllowance]
  linarith

theorem slope_le_stepAllowance {lam : ℝ} (R : RouteGeometry lam) (i : Fin R.cells) :
    R.slope i ≤ R.stepAllowance := by
  have h := Finset.single_le_sum (fun j _ => (R.retained_slope_pos j).le)
    (Finset.mem_univ i)
  dsimp [stepAllowance]
  linarith

noncomputable def crossedKnots {lam : ℝ} (R : RouteGeometry lam) (s : ℝ) : Finset (Fin R.cells) :=
  {i | R.knot i.castSucc ≤ s}

theorem crossedKnots_mono {lam : ℝ} (R : RouteGeometry lam) {a b : ℝ} (hab : a ≤ b) :
    R.crossedKnots a ⊆ R.crossedKnots b := by
  classical
  intro i hi
  simpa only [crossedKnots, Finset.mem_filter, Finset.mem_univ, true_and] using
    (show R.knot i.castSucc ≤ b from (by simpa [crossedKnots] using hi : R.knot i.castSucc ≤ a).trans hab)

/-- A bounded correction at each crossed knot gives enough integer-step loss
without requiring a Riemann-sum convention at a mesh point. -/
noncomputable def reservoir {lam : ℝ} (R : RouteGeometry lam) (k t : ℕ) : ℝ :=
  (k : ℝ) * R.height ((t : ℝ) / k) +
    R.stepAllowance * (R.crossedKnots ((t : ℝ) / k)).card

theorem reservoir_bounds {lam : ℝ} (R : RouteGeometry lam) (k t : ℕ) :
    (k : ℝ) * R.height ((t : ℝ) / k) ≤ R.reservoir k t ∧
    R.reservoir k t ≤ (k : ℝ) * R.height ((t : ℝ) / k) +
      R.stepAllowance * R.cells := by
  classical
  have hcard : ((R.crossedKnots ((t : ℝ) / k)).card : ℝ) ≤ R.cells := by
    exact_mod_cast (by simpa using Finset.card_le_univ (R.crossedKnots ((t : ℝ) / k)) :
      (R.crossedKnots ((t : ℝ) / k)).card ≤ R.cells)
  constructor
  · exact le_add_of_nonneg_right (mul_nonneg R.stepAllowance_pos.le (Nat.cast_nonneg _))
  · dsimp [reservoir]
    gcongr
    exact R.stepAllowance_pos.le

theorem reservoir_step_of_cell {lam : ℝ} (R : RouteGeometry lam)
    {k t : ℕ} (hk : 0 < k) (ht : 0 < t) (i : Fin R.cells)
    (hs : (t : ℝ) / k ∈ R.cell i) :
    R.slope i ≤ R.reservoir k t - R.reservoir k (t - 1) := by
  classical
  have hkreal : (0 : ℝ) < k := by exact_mod_cast hk
  have htcast : ((t - 1 : ℕ) : ℝ) = (t : ℝ) - 1 := by rw [Nat.cast_sub (by omega)]; norm_num
  let a : ℝ := ((t - 1 : ℕ) : ℝ) / k
  let b : ℝ := (t : ℝ) / k
  have hab : a ≤ b := div_le_div_of_nonneg_right (by exact_mod_cast Nat.sub_le t 1) hkreal.le
  have hcount := Finset.card_le_card (R.crossedKnots_mono hab)
  have hcountreal : ((R.crossedKnots a).card : ℝ) ≤ (R.crossedKnots b).card := by exact_mod_cast hcount
  have hcountscale := mul_le_mul_of_nonneg_left hcountreal R.stepAllowance_pos.le
  by_cases hprev : R.knot i.castSucc ≤ a
  · have ha : a ∈ R.cell i := ⟨hprev, hab.trans hs.2⟩
    have hdiff : (k : ℝ) * (R.height b - R.height a) = R.slope i := by
      rw [R.affine i b hs, R.affine i a ha]
      dsimp [a, b]
      rw [htcast]
      field_simp
      ring
    dsimp [reservoir]
    change R.slope i ≤ (k : ℝ) * R.height b + R.stepAllowance * (R.crossedKnots b).card -
      ((k : ℝ) * R.height a + R.stepAllowance * (R.crossedKnots a).card)
    nlinarith
  · have hbmem : i ∈ R.crossedKnots b := by simpa [crossedKnots] using hs.1
    have hanot : i ∉ R.crossedKnots a := by simpa [crossedKnots] using hprev
    have hstrict : R.crossedKnots a ⊂ R.crossedKnots b :=
      Finset.ssubset_iff_subset_ne.mpr ⟨R.crossedKnots_mono hab, fun heq => hanot (heq.symm ▸ hbmem)⟩
    have hcard : ((R.crossedKnots a).card : ℝ) + 1 ≤ (R.crossedKnots b).card := by
      exact_mod_cast Finset.card_lt_card hstrict
    have ha0 : 0 ≤ a := div_nonneg (Nat.cast_nonneg _) hkreal.le
    have hblast : b ≤ lam := hs.2.trans ((R.knot_strict.monotone (Fin.le_last _)).trans (le_of_eq R.endpoint))
    have hheight := R.height_monotone ⟨ha0, hab.trans hblast⟩ ⟨ha0.trans hab, hblast⟩ hab
    have hheightscale := mul_le_mul_of_nonneg_left hheight hkreal.le
    have hcountgap := mul_le_mul_of_nonneg_left hcard R.stepAllowance_pos.le
    have hslope := R.slope_le_stepAllowance i
    change R.slope i ≤ (k : ℝ) * R.height b + R.stepAllowance * (R.crossedKnots b).card -
      ((k : ℝ) * R.height a + R.stepAllowance * (R.crossedKnots a).card)
    nlinarith

theorem height_ge_stop {lam : ℝ} (R : RouteGeometry lam) {s : ℝ}
    (hs : s ∈ Icc 0 lam) : R.height R.theta ≤ R.height s := by
  by_cases h : s ≤ R.theta
  · rw [R.constant s ⟨hs.1, h⟩]
    exact le_rfl
  · exact R.height_monotone ⟨R.theta_pos.le, R.theta_lt_endpoint.le⟩ hs (le_of_not_ge h)

theorem reservoir_ge_stop {lam : ℝ} (R : RouteGeometry lam) {k t : ℕ}
    (hk : 0 < k) (ht : t ≤ ⌊lam * (k : ℝ)⌋₊) :
    (k : ℝ) * R.height R.theta ≤ R.reservoir k t := by
  have hkp : (0 : ℝ) < k := by exact_mod_cast hk
  have hlast : 0 < lam := R.theta_pos.trans R.theta_lt_endpoint
  have hratio : (t : ℝ) / k ∈ Icc 0 lam := by
    refine ⟨by positivity, (div_le_iff₀ hkp).mpr ?_⟩
    exact (Nat.cast_le.mpr ht).trans (Nat.floor_le (mul_pos hlast hkp).le)
  exact (mul_le_mul_of_nonneg_left (R.height_ge_stop hratio) hkp.le).trans
    (R.reservoir_bounds k t).1

end RouteGeometry

end LuWang
