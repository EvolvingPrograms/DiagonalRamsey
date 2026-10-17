import S2_MaximalConfigurations.L1_BlueMoment
import S2_MaximalConfigurations.L2_ComplementaryMoment

/-!
# 3.1 Conditional Jensen
Partition weighted columns into two cells. Jensen bounds their clipped affine
power moments by the full moments. Blue/red graph failures supply the budgets
and the first-cell lower threshold, before any limit is taken.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open DiagRamsey DiagRamsey.SE
open Classical

/-- **Scaled conditional mean.** The cell mass normalizes the weighted
column mean; multiplication by `r` is the scale used by the moment limit. -/
noncomputable def scaledCellMean {ι : Type*} (T : Finset ι)
    (ν Z : ι → ℝ) (r : ℝ) : ℝ :=
  r * ((∑ y ∈ T, ν y * Z y) / ∑ y ∈ T, ν y)

/-- **Conditional Jensen.** Every clipped affine power bounds the same
affine power of the scaled conditional mean on a positive-mass cell. -/
theorem cell_affine_moment {ι : Type*} (T : Finset ι) (ν Z : ι → ℝ)
    {r s b k : ℝ} (hν : ∀ y ∈ T, 0 ≤ ν y)
    (hm : 0 < ∑ y ∈ T, ν y) (hr : r ≠ 0) (hs : 1 ≤ s) :
    (∑ y ∈ T, ν y) * (max (b + k * scaledCellMean T ν Z r / r) 0) ^ s ≤
      ∑ y ∈ T, ν y * (max (b + k * Z y) 0) ^ s := by
  have hj := cell_jensen T ν (fun y => b + k * Z y) hν hm hs
  have hsum : (∑ y ∈ T, ν y * (b + k * Z y)) =
      b * (∑ y ∈ T, ν y) + k * (∑ y ∈ T, ν y * Z y) := by
    rw [Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro y _
    ring
  rw [hsum] at hj
  convert hj using 2
  congr 2
  dsimp [scaledCellMean]
  field_simp

/-- **Zero-mass cells.** Conditional Jensen remains valid for a cell of
nonnegative mass: a zero-mass cell contributes zero on the left. -/
theorem cell_affine_moment_nonnegative {ι : Type*} (T : Finset ι) (ν Z : ι → ℝ)
    {r s b k : ℝ} (hν : ∀ y ∈ T, 0 ≤ ν y)
    (hr : r ≠ 0) (hs : 1 ≤ s) :
    (∑ y ∈ T, ν y) * (max (b + k * scaledCellMean T ν Z r / r) 0) ^ s ≤
      ∑ y ∈ T, ν y * (max (b + k * Z y) 0) ^ s := by
  have hm : 0 ≤ ∑ y ∈ T, ν y := Finset.sum_nonneg hν
  rcases hm.eq_or_lt with hm | hm
  · rw [← hm, zero_mul]
    exact Finset.sum_nonneg fun y hy =>
      mul_nonneg (hν y hy) (Real.rpow_nonneg (le_max_right _ _) _)
  · exact cell_affine_moment T ν Z hν hm hr hs

/-- **Finite two-cell moments.** Conditional Jensen on each side of a
partition turns the two full moments into moments of the scaled cell means.
The complementary cell may have zero mass. -/
theorem two_cell_moments {ι : Type*} (Y : Finset ι) (P : ι → Prop)
    [DecidablePred P] (ν Z : ι → ℝ) {r s t U V : ℝ}
    (hν : ∀ y ∈ Y, 0 ≤ ν y) (hνsum : ∑ y ∈ Y, ν y = 1)
    (hm : 0 < ∑ y ∈ Y.filter P, ν y ∧ (∑ y ∈ Y.filter P, ν y) ≤ 1)
    (hr : r ≠ 0) (hs : 1 ≤ s)
    (hblue : ∑ y ∈ Y, ν y * (max (1 + Z y) 0) ^ s ≤ U)
    (hcomp : ∑ y ∈ Y, ν y * (max (1 - t * Z y) 0) ^ s ≤ V) :
    let m := ∑ y ∈ Y.filter P, ν y
    let a := scaledCellMean (Y.filter P) ν Z r
    let c := scaledCellMean (Y.filter (fun y => ¬ P y)) ν Z r
    m * (max (1 + a / r) 0) ^ s + (1 - m) * (max (1 + c / r) 0) ^ s ≤ U ∧
      m * (max (1 - t * a / r) 0) ^ s +
        (1 - m) * (max (1 - t * c / r) 0) ^ s ≤ V := by
  have hmass : (∑ y ∈ Y.filter (fun y => ¬ P y), ν y) =
      1 - ∑ y ∈ Y.filter P, ν y := by
    have := Finset.sum_filter_add_sum_filter_not Y P ν
    rw [hνsum] at this
    linarith
  have hνR : ∀ y ∈ Y.filter P, 0 ≤ ν y :=
    fun y hy => hν y (Finset.mem_filter.mp hy).1
  have hνB : ∀ y ∈ Y.filter (fun y => ¬ P y), 0 ≤ ν y :=
    fun y hy => hν y (Finset.mem_filter.mp hy).1
  have hBR := cell_affine_moment (b := 1) (k := 1) _ ν Z hνR hm.1 hr hs
  have hBB := cell_affine_moment_nonnegative (b := 1) (k := 1) _ ν Z hνB hr hs
  have hCR := cell_affine_moment (b := 1) (k := -t) _ ν Z hνR hm.1 hr hs
  have hCB := cell_affine_moment_nonnegative (b := 1) (k := -t) _ ν Z hνB hr hs
  rw [hmass] at hBB hCB
  simp only [one_mul] at hBR hBB
  simp only [neg_mul, neg_div, ← sub_eq_add_neg] at hCR hCB
  constructor
  · exact (add_le_add hBR hBB).trans (by
      rw [Finset.sum_filter_add_sum_filter_not]
      exact hblue)
  · exact (add_le_add hCR hCB).trans (by
      rw [Finset.sum_filter_add_sum_filter_not]
      exact hcomp)

#print axioms cell_affine_moment
#print axioms cell_affine_moment_nonnegative
#print axioms two_cell_moments

/-- **First-cell graph interface.** Blue failure and shifted-red failure
bound the first cell without assuming the complementary cell has positive mass.
This is the noncircular input to the uniform density exclusion. -/
theorem graph_row_first_cell
    {V : Type*} [Fintype V] [DecidableEq V]
    (G B : SimpleGraph V) (X Y : Finset V) (c w r β μ x : ℝ)
    (hY : Y.Nonempty) (hr : 0 < r) (hβ : 0 < β)
    (hs : 1 ≤ β * r) (hμ : 0 < μ) (hx : 0 < x)
    (hpos : ∀ y ∈ Y, c < colDensity G X y)
    (i : V) (hq : 0 < graphFrac B X i ∧ graphFrac B X i < 1)
    (hm : 0 < mr G X Y c (β * r) i) (hπ : 0 < rowDensity G i Y)
    (hblue : SharpBlueFailure G B X Y c μ w β (β * r) i)
    (hred : SharpRedFailure G B X Y c w β (β * r) x i) :
    let q := graphFrac B X i
    let m := mr G X Y c (β * r) i
    let a := scaledCellMean (Y.filter (fun y => G.Adj i y))
      (nuW G X Y c (β * r)) (ZR G B X c i) r
    m * (max (1 + a / r) 0) ^ (β * r) ≤ certU μ w β q ∧
      r * LF w β x q m (rowDensity G i Y) r < a := by
  classical
  have hν : ∀ y ∈ Y, 0 ≤ nuW G X Y c (β * r) y :=
    fun y hy => nu_nonneg G X Y c (β * r) hY hpos hy
  have hνR : ∀ y ∈ Y.filter (fun y => G.Adj i y), 0 ≤ nuW G X Y c (β * r) y :=
    fun y hy => hν y (Finset.mem_filter.mp hy).1
  have hB := cell_affine_moment (b := 1) (k := 1)
    (Y.filter (fun y => G.Adj i y)) (nuW G X Y c (β * r)) (ZR G B X c i)
    hνR hm hr.ne' hs
  simp only [one_mul] at hB
  have hsum : (∑ y ∈ Y.filter (fun y => G.Adj i y), nuW G X Y c (β * r) y *
      (max (1 + ZR G B X c i y) 0) ^ (β * r)) ≤
      ∑ y ∈ Y, nuW G X Y c (β * r) y * (max (1 + ZR G B X c i y) 0) ^ (β * r) := by
    apply Finset.sum_le_sum_of_subset_of_nonneg (Finset.filter_subset _ _)
    intro y hy _
    exact mul_nonneg (hν y hy) (Real.rpow_nonneg (le_max_right _ _) _)
  refine ⟨(hB.trans hsum).trans
    (blue_lt G B X Y c (β * r) hY hpos hμ i hq.1 hblue).le, ?_⟩
  have hJ := cell_affine_moment (b := 1 - graphFrac B X i) (k := -graphFrac B X i)
    (Y.filter (fun y => G.Adj i y)) (nuW G X Y c (β * r)) (ZR G B X c i)
    hνR hm hr.ne' hs
  simp only [neg_mul, neg_div, ← sub_eq_add_neg] at hJ
  rw [red_sum G B X Y c (β * r) hpos i] at hJ
  have hR := (div_lt_iff₀ (S_pos G X Y c (β * r) hY hpos)).mpr hred
  have hthreshold := red_conv hβ hr hq.2 hm hπ hx (hJ.trans_lt hR)
  rw [mul_div_assoc] at hthreshold
  have hmean : LF w β x (graphFrac B X i) (mr G X Y c (β * r) i)
      (rowDensity G i Y) r <
      scaledCellMean (Y.filter (fun y => G.Adj i y)) (nuW G X Y c (β * r))
        (ZR G B X c i) r / r := by
    unfold LF
    apply (div_lt_iff₀ hq.1).mpr
    nlinarith only [hthreshold]
  simpa only [mul_comm] using (lt_div_iff₀ hr).mp hmean

#print axioms graph_row_first_cell

/-- **Graph cell interface.** Blue failure, shifted-red failure, and full
complementary maximality supply both finite two-cell moments and the first-cell
lower threshold. Only the first cell must have positive mass; strict
interiority for limiting arguments is supplied separately by the density gap. -/
theorem graph_row_cell_moments
    {V : Type*} [Fintype V] [DecidableEq V]
    (G B : SimpleGraph V) (X Y : Finset V) (c w r β μ x : ℝ)
    (hX : X.Nonempty) (hY : Y.Nonempty) (hr : 0 < r) (hβ : 0 < β)
    (hs : 1 ≤ β * r) (hμ : 0 < μ) (hx : 0 < x)
    (hpos : ∀ y ∈ Y, c < colDensity G X y)
    (hmax : RowColMaximal G X Y c w r (β * r))
    (i : V) (hq : 0 < graphFrac B X i ∧ graphFrac B X i < 1)
    (hm : 0 < mr G X Y c (β * r) i ∧ mr G X Y c (β * r) i ≤ 1)
    (hπ : 0 < rowDensity G i Y)
    (hblue : SharpBlueFailure G B X Y c μ w β (β * r) i)
    (hred : SharpRedFailure G B X Y c w β (β * r) x i) :
    let q := graphFrac B X i
    let m := mr G X Y c (β * r) i
    let ν := nuW G X Y c (β * r)
    let Z := ZR G B X c i
    let a := scaledCellMean (Y.filter (fun y => G.Adj i y)) ν Z r
    let b := scaledCellMean (Y.filter (fun y => ¬ G.Adj i y)) ν Z r
    m * (max (1 + a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 + b / r) 0) ^ (β * r) ≤ certU μ w β q ∧
      m * (max (1 - (q / (1 - q)) * a / r) 0) ^ (β * r) +
        (1 - m) * (max (1 - (q / (1 - q)) * b / r) 0) ^ (β * r) ≤
          (1 - q) ^ (-β * w) ∧
      r * LF w β x q m (rowDensity G i Y) r < a := by
  classical
  have hν : ∀ y ∈ Y, 0 ≤ nuW G X Y c (β * r) y :=
    fun y hy => nu_nonneg G X Y c (β * r) hY hpos hy
  have hνsum := nu_sum G X Y c (β * r) hY hpos
  have hB := blue_lt G B X Y c (β * r) hY hpos hμ i hq.1 hblue
  have hC := complementary_row_moment G B X Y c w r β hX hY hr hβ hpos hmax i hq
  have hcells := two_cell_moments Y (fun y => G.Adj i y)
    (nuW G X Y c (β * r)) (ZR G B X c i) hν hνsum hm hr.ne' hs hB.le hC
  have hfirst := graph_row_first_cell G B X Y c w r β μ x hY hr hβ hs hμ hx
    hpos i hq hm.1 hπ hblue hred
  exact ⟨hcells.1, hcells.2, hfirst.2⟩

#print axioms graph_row_cell_moments

end DiagonalRamsey
