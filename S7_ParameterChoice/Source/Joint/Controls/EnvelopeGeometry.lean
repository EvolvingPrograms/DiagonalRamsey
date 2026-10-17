import S7_ParameterChoice.Source.Joint.Controls.EnvelopeData
import Mathlib.Order.Monotone.Basic

/-! Local geometry for an ordered concave polygon. Adjacent slope and continuity
checks imply global support by induction. The certificate bank uses this law
instead of checking every degree/integration-cell pair numerically. -/

set_option autoImplicit false

namespace DiagonalRamsey.JointEnvelopeGeometry

open RamseyAnalytic RamseyAnalytic.ControlGeometry

/-- Compare distant entries using only adjacent comparisons. -/
theorem adjacent_le (f : ℕ → ℚ) (a b : ℕ) (hab : a ≤ b)
    (h : ∀ i, a ≤ i → i < b → f i ≤ f (i + 1)) : f a ≤ f b := by
  induction b generalizing a with
  | zero =>
      have ha : a = 0 := by omega
      subst a
      exact le_rfl
  | succ b ih =>
      by_cases ha : a = b + 1
      · subst a
        exact le_rfl
      · have hab' : a ≤ b := by omega
        exact (ih a hab' (fun i hai hib => h i hai (by omega))).trans
          (h b hab' (by omega))

/-- A polygon with increasing vertices, decreasing segment slopes, and exact
adjacent height increments. This checks each adjacent segment once. -/
def orderedCheck (n : ℕ) (q h m : ℕ → ℚ) : Bool :=
  (List.range n).all fun i => decide (
    q i ≤ q (i + 1) ∧
    h (i + 1) - h i = m i * (q (i + 1) - q i) ∧
    (i + 1 < n → m (i + 1) ≤ m i))

/-- The two slopes next to the selected vertex bracket zero after tilting. -/
def pivotCheck (n k : ℕ) (m : ℕ → ℚ) (t : ℚ) : Bool :=
  decide (k ≤ n ∧ (k = 0 ∨ 0 ≤ m (k - 1) + t) ∧
    (k = n ∨ m k + t ≤ 0))

/-- A locally selected vertex supports the entire tilted polygon. -/
theorem support_of_checks (n k : ℕ) (q h m : ℕ → ℚ) (t : ℚ)
    (ho : orderedCheck n q h m = true)
    (hp : pivotCheck n k m t = true)
    (j : ℕ) (hj : j ≤ n) : h j + t * q j ≤ h k + t * q k := by
  have hs : ∀ i, i < n → q i ≤ q (i + 1) ∧
      h (i + 1) - h i = m i * (q (i + 1) - q i) ∧
      (i + 1 < n → m (i + 1) ≤ m i) := by
    intro i hi
    exact of_decide_eq_true (List.all_eq_true.mp ho i (List.mem_range.mpr hi))
  have hp' : k ≤ n ∧ (k = 0 ∨ 0 ≤ m (k - 1) + t) ∧
      (k = n ∨ m k + t ≤ 0) := of_decide_eq_true hp
  have hm : ∀ a b, a ≤ b → b < n → m b ≤ m a := by
    intro a b hab hb
    have hh := adjacent_le (fun i => -m i) a b hab (by
      intro i hai hib
      have hh := (hs i (by omega)).2.2 (by omega)
      linarith)
    linarith
  let f : ℕ → ℚ := fun i => h i + t * q i
  have hd : ∀ i, i < n → f (i + 1) - f i =
      (m i + t) * (q (i + 1) - q i) := by
    intro i hi
    dsimp [f]
    nlinarith [(hs i hi).2.1]
  change f j ≤ f k
  by_cases hjk : j ≤ k
  · apply adjacent_le f j k hjk
    intro i hji hik
    have hin : i < n := by omega
    have ht : 0 ≤ m (k - 1) + t := by
      rcases hp'.2.1 with hk | hk
      · omega
      · exact hk
    have hmi := hm i (k - 1) (by omega) (by omega)
    have hprod := mul_nonneg (show 0 ≤ m i + t by linarith)
      (sub_nonneg.mpr (hs i hin).1)
    linarith [hd i hin]
  · have hkj : k ≤ j := by omega
    have hh := adjacent_le (fun i => -f i) k j hkj (by
      intro i hki hij
      have hin : i < n := by omega
      have ht : m k + t ≤ 0 := by
        rcases hp'.2.2 with hk | hk
        · omega
        · exact hk
      have hmi := hm k i hki hin
      have hprod := mul_nonpos_of_nonpos_of_nonneg
        (show m i + t ≤ 0 by linarith) (sub_nonneg.mpr (hs i hin).1)
      linarith [hd i hin])
    linarith

/-- The original degree segment expressed by its vertices. -/
def segmentCell (q h m : ℕ → ℚ) (i : ℕ) : Cell :=
  ⟨q i, q (i + 1), m i, h i - m i * q i⟩

/-- The line in the integration variable associated to one degree vertex. -/
def vertexCell (w : ℚ) (q h : ℕ → ℚ) (k : ℕ) (lo hi : ℚ) : Cell :=
  ⟨lo, hi, -w * q k, h k + w * q k⟩

/-- Both endpoint slope brackets imply all four original corner comparisons,
for every degree segment, without checking that segment numerically. -/
theorem cornerCheck_of_checks (n k : ℕ) (q h m : ℕ → ℚ) (w lo hi : ℚ)
    (ho : orderedCheck n q h m = true)
    (hl : pivotCheck n k m (w - w * lo) = true)
    (hr : pivotCheck n k m (w - w * hi) = true)
    (i : ℕ) (hi' : i < n) :
    ParametricEnvelope.cornerCheck w (segmentCell q h m i)
      (vertexCell w q h k lo hi) = true := by
  have hstep : h (i + 1) - h i = m i * (q (i + 1) - q i) := by
    have hh := of_decide_eq_true (List.all_eq_true.mp ho i (List.mem_range.mpr hi'))
    exact hh.2.1
  have hll := support_of_checks n k q h m (w - w * lo) ho hl i (by omega)
  have hrl := support_of_checks n k q h m (w - w * hi) ho hr i (by omega)
  have hlr := support_of_checks n k q h m (w - w * lo) ho hl (i + 1) (by omega)
  have hrr := support_of_checks n k q h m (w - w * hi) ho hr (i + 1) (by omega)
  simp only [ParametricEnvelope.cornerCheck, decide_eq_true_eq]
  dsimp [segmentCell, vertexCell]
  exact ⟨by nlinarith, by nlinarith, by nlinarith, by nlinarith⟩

end DiagonalRamsey.JointEnvelopeGeometry
