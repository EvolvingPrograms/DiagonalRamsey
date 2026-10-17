import Support.LuWang.WeightedSlack
import Support.LuWang.WeightedFinite
import Support.LuWang.WeightedLocalTest
import Support.LuWang.DensitySchedule

/-! A graph-independent auxiliary growth rate. We use the already verified
logarithmic spine schedule with a smaller growth rate; the precise spine
formula is internal to the proof of the existential candidate theorem. -/

set_option autoImplicit false

namespace LuWang

open RamseyBasics Filter Set Topology
open scoped Finset

structure WeightedGrowth (w x₀ y₀ μ₀ x y μ β xhat yhat δ γ : ℝ) (r : ℕ) where
  η : ℝ
  eta_pos : 0 < η
  eta_lt_one : η < 1
  eta_le_delta : η ≤ δ
  book_coefficient : (2 : ℝ) ^ w * η ^ r ≤ 2 * δ ^ r
  book_ratio : (1 + η) * μ ^ w ≤ β ^ w
  left_x : (1 + η) ^ w * x ≤ xhat
  left_y : (1 + η) ^ w * y ≤ yhat
  left_mu : (1 + η) ^ w * μ ^ w ≤ 1
  initial_x : (1 + η) * x₀ ≤ x
  initial_y : (1 + η) * y₀ ≤ y
  initial_mu : (1 + η) * μ₀ ^ w ≤ μ ^ w
  scalar_error : 2 * η ^ 2 < δ * γ

theorem exists_weighted_growth {w x₀ y₀ μ₀ x y μ β xhat yhat δ γ : ℝ} {r : ℕ}
    (hw : 0 < w) (hr : 0 < r) (hδ : 0 < δ) (hγ : 0 < γ)
    (hx : x₀ < x) (hy : y₀ < y) (hμ₀ : 0 < μ₀) (hμ : μ₀ < μ)
    (hμ1 : μ < 1) (hβ : μ < β) (hxhat : x < xhat) (hyhat : y < yhat) :
    Nonempty (WeightedGrowth w x₀ y₀ μ₀ x y μ β xhat yhat δ γ r) := by
  have hμpos := hμ₀.trans hμ
  have hμβ : μ ^ w < β ^ w := Real.rpow_lt_rpow hμpos.le hβ hw
  have hμpow : μ ^ w < 1 := by
    simpa using Real.rpow_lt_rpow hμpos.le hμ1 hw
  have hμ₀pow : μ₀ ^ w < μ ^ w := Real.rpow_lt_rpow hμ₀.le hμ hw
  have hbase : ContinuousAt (fun e : ℝ => 1 + e) 0 :=
    continuousAt_const.add continuousAt_id
  have hbasepow : ContinuousAt (fun e : ℝ => (1 + e) ^ w) 0 :=
    hbase.rpow_const (Or.inl (by norm_num))
  have hA : ∀ᶠ e : ℝ in 𝓝 0, e < min 1 δ :=
    continuousAt_id.eventually (Iio_mem_nhds (lt_min one_pos hδ))
  have hB : ∀ᶠ e : ℝ in 𝓝 0, (2 : ℝ) ^ w * e ^ r < 2 * δ ^ r :=
    (continuousAt_const.mul (continuousAt_id.pow r)).eventually
      (Iio_mem_nhds (by simpa [zero_pow hr.ne'] using mul_pos (by norm_num : (0 : ℝ) < 2) (pow_pos hδ r)))
  have hC : ∀ᶠ e : ℝ in 𝓝 0, (1 + e) * μ ^ w < β ^ w :=
    (hbase.mul continuousAt_const).eventually (Iio_mem_nhds (by simpa using hμβ))
  have hD : ∀ᶠ e : ℝ in 𝓝 0, (1 + e) ^ w * x < xhat :=
    (hbasepow.mul continuousAt_const).eventually (Iio_mem_nhds (by simpa using hxhat))
  have hE : ∀ᶠ e : ℝ in 𝓝 0, (1 + e) ^ w * y < yhat :=
    (hbasepow.mul continuousAt_const).eventually (Iio_mem_nhds (by simpa using hyhat))
  have hF : ∀ᶠ e : ℝ in 𝓝 0, (1 + e) ^ w * μ ^ w < 1 :=
    (hbasepow.mul continuousAt_const).eventually (Iio_mem_nhds (by simpa using hμpow))
  have hG : ∀ᶠ e : ℝ in 𝓝 0, (1 + e) * x₀ < x :=
    (hbase.mul continuousAt_const).eventually (Iio_mem_nhds (by simpa using hx))
  have hH : ∀ᶠ e : ℝ in 𝓝 0, (1 + e) * y₀ < y :=
    (hbase.mul continuousAt_const).eventually (Iio_mem_nhds (by simpa using hy))
  have hI : ∀ᶠ e : ℝ in 𝓝 0, (1 + e) * μ₀ ^ w < μ ^ w :=
    (hbase.mul continuousAt_const).eventually (Iio_mem_nhds (by simpa using hμ₀pow))
  have hJ : ∀ᶠ e : ℝ in 𝓝 0, 2 * e ^ 2 < δ * γ :=
    (continuousAt_const.mul (continuousAt_id.pow 2)).eventually
      (Iio_mem_nhds (by simpa using mul_pos hδ hγ))
  have hall := hA.and (hB.and (hC.and (hD.and (hE.and
    (hF.and (hG.and (hH.and (hI.and hJ))))))))
  have hzero : (0 : ℝ) ∈ closure (Ioi (0 : ℝ)) := by
    rw [closure_Ioi]
    exact mem_Ici.mpr le_rfl
  obtain ⟨η, ha, hη⟩ := (mem_closure_iff_nhds.mp hzero) _ hall
  rcases ha with ⟨hA, hB, hC, hD, hE, hF, hG, hH, hI, hJ⟩
  exact ⟨⟨η, hη, (lt_min_iff.mp hA).1, (lt_min_iff.mp hA).2.le,
    hB.le, hC.le, hD.le, hE.le, hF.le, hG.le, hH.le, hI.le, hJ⟩⟩

theorem weighted_floor_margin {η E : ℝ} (hη : 0 < η)
    (hE : (1 + η) / η ≤ E) : E / (1 + η) ≤ (⌊E⌋₊ : ℝ) := by
  have hbase : 0 < 1 + η := by linarith
  have hfloor : E < (⌊E⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one E
  have hgap : E / (1 + η) ≤ E - 1 := by
    rw [div_le_iff₀ hbase]
    have hmul : 1 + η ≤ η * E := by
      calc
        1 + η = η * ((1 + η) / η) := by field_simp
        _ ≤ η * E := mul_le_mul_of_nonneg_left hE hη.le
    nlinarith
  linarith

theorem weighted_exponential_le_floor {η : ℝ} (hη : 0 < η) {n ell : ℕ}
    (hlarge : (1 + η) / η ≤ (1 + η) ^ ell) :
    (1 + η) ^ (n + (ell - 1)) ≤ (bookMinimumLeftSize η ell n : ℝ) := by
  have hbase : 0 < 1 + η := by linarith
  have hell : 0 < ell := by
    by_contra h
    have heq : ell = 0 := Nat.eq_zero_of_not_pos h
    subst ell
    norm_num at hlarge
    have : 1 < (1 + η) / η := (one_lt_div hη).2 (by linarith)
    linarith
  have hE : (1 + η) / η ≤ (1 + η) ^ (n + ell) := by
    apply hlarge.trans
    rw [add_comm n ell, pow_add]
    exact le_mul_of_one_le_right (pow_nonneg hbase.le _)
      (one_le_pow₀ (by linarith : (1 : ℝ) ≤ 1 + η))
  have hpow : (1 + η) ^ (n + (ell - 1)) = (1 + η) ^ (n + ell) / (1 + η) := by
    rw [eq_div_iff hbase.ne', ← pow_succ]
    congr 1
    omega
  rw [hpow]
  exact weighted_floor_margin hη hE

end LuWang
