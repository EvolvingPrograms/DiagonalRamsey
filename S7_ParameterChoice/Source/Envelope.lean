import Support.Controls.PointwiseSource

set_option autoImplicit false

namespace DiagonalRamsey.SourceEnvelope

open DiagRamsey RamseyAnalytic

/-- **Profile reindexing.** Pointwise witnesses transfer along an exact
identification of profile curves, densities, and domains. -/
theorem reindex {ι κ : Type} {prof : ι → BankProfile} {target : κ → BankProfile}
    (e : ι → κ) (he : ∀ i, target (e i) = prof i)
    {F : ℝ → ℝ} {t z : ℝ} (h : PointwiseSource.Bound prof F t z) :
    PointwiseSource.Bound target F t z := by
  rcases h with hb | ⟨r, b, hp⟩
  · exact Or.inl hb
  · refine Or.inr ⟨e r, e b, ?_⟩
    simpa only [he] using hp

/-- **Finite-chain minimum.** Adjacent values decrease up to the selected
index and increase thereafter, so the selected value is a global minimum.
There are `n + 1` values and `n` adjacent comparisons. -/
theorem finite_chain_minimum {n : ℕ} (f : Fin (n + 1) → ℝ) (i : Fin (n + 1))
    (hleft : ∀ j : Fin n, j.castSucc < i → f j.succ ≤ f j.castSucc)
    (hright : ∀ j : Fin n, i ≤ j.castSucc → f j.castSucc ≤ f j.succ) :
    ∀ j, f i ≤ f j := by
  intro j
  by_cases hij : i ≤ j
  · have walk : ∀ k, i.val ≤ k → ∀ hk : k < n + 1, f i ≤ f ⟨k, hk⟩ := by
      intro k hik
      induction k, hik using Nat.le_induction with
      | base => intro hk; exact le_rfl
      | succ k hik ih =>
        intro hk
        have hkn : k < n := by omega
        exact (ih (by omega)).trans (hright ⟨k, hkn⟩ hik)
    exact walk j.val hij j.isLt
  · have hji : j ≤ i := le_of_not_ge hij
    have walk : ∀ k, j.val ≤ k → ∀ hk : k ≤ i.val,
        f ⟨k, by omega⟩ ≤ f j := by
      intro k hjk
      induction k, hjk using Nat.le_induction with
      | base => intro hk; exact le_rfl
      | succ k hjk ih =>
        intro hk
        have hkn : k < n := by omega
        exact (hleft ⟨k, hkn⟩ (by change k < i.val; omega)).trans (ih (by omega))
    exact walk i.val hji le_rfl

/-- **Two-line minorant.** A common minorant lies below every convex
combination of two lines, and hence below any line dominating both combined
coefficients on the nonnegative axis. -/
theorem affine_minorant_of_two {e a b c d w A B t : ℝ}
    (ha : e ≤ a + b * t) (hc : e ≤ c + d * t)
    (hw : 0 ≤ w) (hw' : w ≤ 1)
    (hA : w * a + (1 - w) * c ≤ A)
    (hB : w * b + (1 - w) * d ≤ B) (ht : 0 ≤ t) : e ≤ A + B * t := by
  have hleft := mul_le_mul_of_nonneg_left ha hw
  have hright := mul_le_mul_of_nonneg_left hc (sub_nonneg.mpr hw')
  have hslope := mul_le_mul_of_nonneg_right hB ht
  nlinarith only [hleft, hright, hA, hslope]

/-- **Left-tail comparison.** If the first line has greater slope, its
value stays below the second line to the left of a checked endpoint. -/
theorem affine_le_left_tail {a b c d r t : ℝ} (ht : t ≤ r) (hslope : d ≤ b)
    (hr : a + b * r ≤ c + d * r) : a + b * t ≤ c + d * t := by
  have hstep := mul_nonneg (sub_nonneg.mpr hslope) (sub_nonneg.mpr ht)
  nlinarith only [hr, hstep]

/-- **Right-tail comparison.** If the first line has smaller slope, its
value stays below the second line to the right of a checked endpoint. -/
theorem affine_le_right_tail {a b c d l t : ℝ} (ht : l ≤ t) (hslope : b ≤ d)
    (hl : a + b * l ≤ c + d * l) : a + b * t ≤ c + d * t := by
  have hstep := mul_nonneg (sub_nonneg.mpr hslope) (sub_nonneg.mpr ht)
  nlinarith only [hl, hstep]

/-- **Endpoint comparison.** Two endpoint comparisons order affine
functions throughout the intervening closed interval. -/
theorem affine_le_on_interval {a b c d l r t : ℝ} (hl : l ≤ t) (hr : t ≤ r)
    (hleft : a + b * l ≤ c + d * l) (hright : a + b * r ≤ c + d * r) :
    a + b * t ≤ c + d * t := by
  by_cases hslope : b ≤ d
  · exact affine_le_right_tail hl hslope hleft
  · exact affine_le_left_tail hr (le_of_not_ge hslope) hright

/-- **Envelope transfer.** An active pointwise witness below an envelope
serves every source line that dominates that envelope, with the same reserve. -/
theorem transfer {ι κ : Type} {prof : ι → BankProfile} {F : ℝ → ℝ}
    {A B : κ → ℝ} {E reserve : ℝ → ℝ}
    (hcover : ∀ t, 0 < t → PointwiseSource.Bound prof F t (E t - reserve t))
    (hdom : ∀ k t, 0 < t → E t ≤ A k + B k * t) :
    ∀ k t, 0 < t → PointwiseSource.Bound prof F t (A k + B k * t - reserve t) := by
  intro k t ht
  exact PointwiseSource.mono (hcover t ht) (sub_le_sub_right (hdom k t ht) (reserve t))

/-- **Selected source transfer.** A witness for a least-cost source line
serves every line whenever its reserve is at least the common reserve `η`.
This transfers pointwise witnesses; it does not assert source admissibility. -/
theorem selected_transfer {ι κ : Type} {prof : ι → BankProfile} {F : ℝ → ℝ}
    {A B eta : κ → ℝ} {η : ℝ} (s : ℝ → κ)
    (hactive : ∀ t, 0 < t → PointwiseSource.Bound prof F t
      (A (s t) + B (s t) * t - eta (s t) * (1 + t)))
    (hminimal : ∀ k t, 0 < t → A (s t) + B (s t) * t ≤ A k + B k * t)
    (hreserve : ∀ t, 0 < t → η ≤ eta (s t)) :
    ∀ k t, 0 < t → PointwiseSource.Bound prof F t (A k + B k * t - η * (1 + t)) := by
  intro k t ht
  have hr := mul_le_mul_of_nonneg_right (hreserve t ht) (by linarith : 0 ≤ 1 + t)
  exact PointwiseSource.mono (hactive t ht) (sub_le_sub (hminimal k t ht) hr)

#print axioms transfer
#print axioms selected_transfer
#print axioms affine_le_left_tail
#print axioms affine_le_right_tail
#print axioms affine_le_on_interval
#print axioms affine_minorant_of_two
#print axioms finite_chain_minimum
#print axioms reindex

end DiagonalRamsey.SourceEnvelope
