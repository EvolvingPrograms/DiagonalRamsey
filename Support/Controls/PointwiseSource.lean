import Support.Controls.SourceBasis
import Support.Published.Definitions.Def_DiagRamsey_JointBank

set_option autoImplicit false
namespace RamseyAnalytic.PointwiseSource
open DiagRamsey

/-- A grounded or complementary-profile witness at one positive ratio. -/
def Bound {ι : Type} (prof : ι → BankProfile) (F : ℝ → ℝ) (t z : ℝ) : Prop :=
  F t ≤ z ∨ ∃ red blue,
    (prof red).p+(prof blue).p ≤ 1 ∧
    (prof red).lo ≤ t ∧ t ≤ (prof red).hi ∧
    (prof blue).lo ≤ 1/t ∧ 1/t ≤ (prof blue).hi ∧
    max ((prof red).L t) (t*(prof blue).L (1/t)) ≤ z

theorem mono {ι : Type} {prof : ι → BankProfile} {F : ℝ → ℝ} {t x y : ℝ}
    (h : Bound prof F t x) (hxy : x ≤ y) : Bound prof F t y := by
  rcases h with hg | ⟨r,b,hp,hrl,hrh,hbl,hbh,hv⟩
  · exact Or.inl (hg.trans hxy)
  · exact Or.inr ⟨r,b,hp,hrl,hrh,hbl,hbh,hv.trans hxy⟩

/-- Choosing the cheaper of two witnesses suffices for a convex mixture. -/
theorem convex_cost {ι : Type} {prof : ι → BankProfile} {F : ℝ → ℝ}
    {t x y θ reserve : ℝ} (hθ : 0 ≤ θ) (hθ1 : θ ≤ 1)
    (hx : Bound prof F t (x-reserve)) (hy : Bound prof F t (y-reserve)) :
    Bound prof F t (θ*x+(1-θ)*y-reserve) := by
  by_cases hxy : x ≤ y
  · apply mono hx
    have h := mul_nonneg (sub_nonneg.mpr hθ1) (sub_nonneg.mpr hxy)
    nlinarith
  · apply mono hy
    have h := mul_nonneg hθ (sub_nonneg.mpr (le_of_not_ge hxy))
    nlinarith

/-- Source-basis transfer needs no source-cover partition. -/
theorem of_basis {ι : Type} {prof : ι → BankProfile} {F : ℝ → ℝ}
    {n m : ℕ} {U V : Fin n → ℝ} {A B : Fin m → ℝ}
    (hdom : SourceBasisDominates U V A B) {t reserve : ℝ} (ht : 0 ≤ t)
    (hbasis : ∀ i, Bound prof F t (U i+V i*t-reserve)) :
    ∀ k, Bound prof F t (A k+B k*t-reserve) := by
  intro k
  obtain ⟨i,j,θ,hθ,hθ1,hA,hB⟩ := hdom k
  apply mono (convex_cost hθ hθ1 (hbasis i) (hbasis j))
  have hBt := mul_le_mul_of_nonneg_right hB ht
  nlinarith

/-- Every existing source cell supplies a pointwise witness on its interval. -/
theorem of_cell {ι : Type} {prof : ι → BankProfile}
    {A B η lo hi t : ℝ} {cell : SourceCell ι}
    (hc : cell.Valid prof A B η lo hi) (ht : 0 < t) (hl : lo ≤ t) (hh : t ≤ hi) :
    Bound prof (symmetricProfile luWangSource 1) t (A+B*t-η*(1+t)) := by
  cases cell with
  | grounded => exact Or.inl (hc t ht hl hh)
  | pair red blue =>
    obtain ⟨hp,hrl,hrh,hrest⟩ := hc
    obtain ⟨hbl,hbh,hv⟩ := hrest t hl hh
    exact Or.inr ⟨red,blue,hp,hrl.trans hl,hh.trans hrh,hbl,hbh,hv⟩

#print axioms of_basis
#print axioms of_cell
end RamseyAnalytic.PointwiseSource
