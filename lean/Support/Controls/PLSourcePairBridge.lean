import Support.Controls.PLSourceMajorant
import Support.Controls.PointwiseSource
import Support.Controls.GeometrySound

set_option autoImplicit false
namespace RamseyAnalytic.PLSourcePairBridge
open DiagRamsey Set

/-- Reciprocal endpoints reverse order on a positive ratio interval. -/
theorem reciprocal_interval {lo hi : ℚ} (hlo : 0 < lo) {t : ℝ}
    (htl : (lo : ℝ) ≤ t) (hth : t ≤ hi) :
    ((1/hi : ℚ) : ℝ) ≤ 1/t ∧ 1/t ≤ ((1/lo : ℚ) : ℝ) := by
  have hl : (0 : ℝ) < lo := by exact_mod_cast hlo
  have ht : 0 < t := hl.trans_le htl
  constructor
  · simpa only [Rat.cast_div, Rat.cast_one] using one_div_le_one_div_of_le ht hth
  · simpa only [Rat.cast_div, Rat.cast_one] using one_div_le_one_div_of_le hl htl

/-- Checked PL majorants yield a semantic source cell. The BankProfile curves
may lie below the PL functions; global equality is unnecessary. -/
theorem pair_valid_of_majorants {ι : Type} (prof : ι → BankProfile)
    (red blue : ι) {rx ry bx by_ cuts : List ℚ} {A B η lo hi : ℚ}
    (hc : PLSourceMajorant.check rx ry bx by_ cuts A B η = true)
    (hl : lo ∈ cuts.head?) (hh : hi ∈ cuts.getLast?) (hlo : 0 < lo)
    (hp : (prof red).p+(prof blue).p ≤ 1)
    (hrlo : (prof red).lo ≤ lo) (hrhi : (hi : ℝ) ≤ (prof red).hi)
    (hblo : (prof blue).lo ≤ ((1/hi : ℚ) : ℝ))
    (hbhi : ((1/lo : ℚ) : ℝ) ≤ (prof blue).hi)
    (hred : ∀ t ∈ Icc (lo : ℝ) (hi : ℝ), (prof red).L t ≤ PL.evalR rx ry t)
    (hblue : ∀ u ∈ Icc ((1/hi : ℚ) : ℝ) ((1/lo : ℚ) : ℝ),
      (prof blue).L u ≤ PL.evalR bx by_ u) :
    (SourceCell.pair red blue).Valid prof A B η lo hi := by
  refine ⟨hp,hrlo,hrhi,?_⟩
  intro t htl hth
  have hr := reciprocal_interval hlo htl hth
  refine ⟨hblo.trans hr.1,hr.2.trans hbhi,?_⟩
  have ht : 0 ≤ t := (show (0 : ℝ) < lo by exact_mod_cast hlo).le.trans htl
  have hmajor := max_le_max (hred t ⟨htl,hth⟩)
    (mul_le_mul_of_nonneg_left (hblue (1/t) hr) ht)
  exact hmajor.trans (PLSourceMajorant.sound hc hl hh htl hth)

/-- Direct specialization for actual PL BankProfiles. -/
theorem pair_valid_of_eq {ι : Type} (prof : ι → BankProfile)
    (red blue : ι) {rx ry bx by_ cuts : List ℚ} {A B η lo hi : ℚ}
    (hc : PLSourceMajorant.check rx ry bx by_ cuts A B η = true)
    (hl : lo ∈ cuts.head?) (hh : hi ∈ cuts.getLast?) (hlo : 0 < lo)
    (hp : (prof red).p+(prof blue).p ≤ 1)
    (hrlo : (prof red).lo ≤ lo) (hrhi : (hi : ℝ) ≤ (prof red).hi)
    (hblo : (prof blue).lo ≤ ((1/hi : ℚ) : ℝ))
    (hbhi : ((1/lo : ℚ) : ℝ) ≤ (prof blue).hi)
    (hred : (prof red).L = PL.evalR rx ry)
    (hblue : (prof blue).L = PL.evalR bx by_) :
    (SourceCell.pair red blue).Valid prof A B η lo hi := by
  apply pair_valid_of_majorants prof red blue hc hl hh hlo hp hrlo hrhi hblo hbhi
  · intro t _; rw [hred]
  · intro t _; rw [hblue]

/-- A compact list of source cells plus two grounded tails gives precisely
 the pointwise source hypothesis accepted by joint_main_pointwise. -/
theorem covered_with_grounded_tails {ι J : Type} {prof : ι → BankProfile}
    {A B η : ℝ} {left right : ℚ} (rows : List J)
    (geom : J → ControlGeometry.Cell) (cell : J → SourceCell ι)
    (hchain : ControlGeometry.chain left (rows.map geom) right = true)
    (hne : rows.map geom ≠ [])
    (hcells : ∀ j ∈ rows, (cell j).Valid prof A B η (geom j).left (geom j).right)
    (hleft : ∀ t : ℝ, 0 < t → t ≤ left →
      symmetricProfile luWangSource 1 t ≤ A+B*t-η*(1+t))
    (hright : ∀ t : ℝ, 0 < t → (right : ℝ) ≤ t →
      symmetricProfile luWangSource 1 t ≤ A+B*t-η*(1+t))
    {t : ℝ} (ht : 0 < t) :
    PointwiseSource.Bound prof (symmetricProfile luWangSource 1) t (A+B*t-η*(1+t)) := by
  by_cases hl : t ≤ (left : ℝ)
  · exact Or.inl (hleft t ht hl)
  by_cases hh : (right : ℝ) ≤ t
  · exact Or.inl (hright t ht hh)
  have hm : t ∈ Icc (left : ℝ) (right : ℝ) := ⟨(lt_of_not_ge hl).le,(lt_of_not_ge hh).le⟩
  obtain ⟨g,hg,hgt⟩ := ControlGeometry.chain_real_cover hchain hne hm
  obtain ⟨j,hj,rfl⟩ := List.mem_map.mp hg
  exact PointwiseSource.of_cell (hcells j hj) ht hgt.1 hgt.2

#print axioms pair_valid_of_majorants
#print axioms pair_valid_of_eq
#print axioms covered_with_grounded_tails
end RamseyAnalytic.PLSourcePairBridge
