import Support.LuWang.ConditionalOperations

set_option autoImplicit false

namespace LuWang

open Set RamseyBasics

theorem graph_density_add_compl {N : ℕ} (hN : 2 ≤ N) (G : SimpleGraph (Fin N))
    [DecidableRel G.Adj] : redGraphDensity G + redGraphDensity Gᶜ = 1 := by
  classical
  have hdegree (v : Fin N) : (G.degree v : ℝ) + (Gᶜ.degree v : ℝ) = (N : ℝ) - 1 := by
    have hd : G.degree v ≤ N - 1 := by
      have h := G.degree_lt_card_verts v
      simp only [Fintype.card_fin] at h
      omega
    rw [SimpleGraph.degree_compl, Fintype.card_fin, Nat.cast_sub hd,
      Nat.cast_sub (show 1 ≤ N by omega), Nat.cast_one]
    ring
  have hsum : (∑ v : Fin N, (G.degree v : ℝ)) + (∑ v : Fin N, (Gᶜ.degree v : ℝ)) =
      (N : ℝ) * ((N : ℝ) - 1) := by
    rw [← Finset.sum_add_distrib]
    simp_rw [hdegree]
    simp
    ring
  have hn : (0 : ℝ) < N := by exact_mod_cast (show 0 < N by omega)
  have hn1 : (0 : ℝ) < (N : ℝ) - 1 := by
    have h : (2 : ℝ) ≤ N := by exact_mod_cast hN
    linarith
  unfold redGraphDensity
  simp only [Fintype.card_fin]
  rw [← add_div, hsum, div_self (mul_pos hn hn1).ne']

/-- A strict gap below the printed exponent absorbs the arbitrary conditional
prefactor. The conclusion keeps both the printed exponent and prefactor exact. -/
theorem currentDiagonalClaim_of_conditional_gap {z : ℝ} {I : Set ℝ}
    (h : ConditionalBound (1 / 2 : ℝ) (fun _ => z) I)
    (hI : (1 : ℝ) ∈ I) (hz : z < zUpper) : CurrentDiagonalClaim := by
  have hdelta : 0 < zUpper - z := sub_pos.mpr hz
  obtain ⟨K, hK⟩ := conditional_uniform_gap_prefactor h hdelta
    (by norm_num : (1 : ℝ) ≤ 150003)
    (M := fun _ => zUpper) (fun _ _ => by linarith)
  refine ⟨max K 1, ?_⟩
  intro k hk
  let N : ℕ := ⌈150003 * Real.exp (zUpper * (k : ℝ))⌉₊
  have hsize : 150003 * Real.exp ((k : ℝ) * zUpper) ≤ (N : ℝ) := by
    simpa only [mul_comm] using (Nat.le_ceil (150003 * Real.exp (zUpper * (k : ℝ))))
  have hN : 2 ≤ N := by
    have hz0 : 0 < zUpper := by norm_num [zUpper]
    have he : 1 ≤ Real.exp (zUpper * (k : ℝ)) :=
      Real.one_le_exp_iff.mpr (mul_nonneg hz0.le (Nat.cast_nonneg k))
    have hreal : (2 : ℝ) ≤ (N : ℝ) := by
      have hceil := Nat.le_ceil (150003 * Real.exp (zUpper * (k : ℝ)))
      change 150003 * Real.exp (zUpper * (k : ℝ)) ≤ (N : ℝ) at hceil
      linarith
    exact_mod_cast hreal
  apply ramseyNumber_le
  intro G
  classical
  have hcall := (hK 1 hI k (show K ≤ k by omega)).2
  by_cases hd : (1 / 2 : ℝ) ≤ redGraphDensity G
  · simpa using hcall N G hd hsize
  · have hc : (1 / 2 : ℝ) ≤ redGraphDensity Gᶜ := by
      have hsum := graph_density_add_compl hN G
      linarith
    rcases hcall N Gᶜ hc hsize with hred | hblue
    · right
      simpa [hasBlueClique, hasRedClique] using hred
    · left
      simpa [hasBlueClique, hasRedClique] using hblue

#print axioms currentDiagonalClaim_of_conditional_gap

end LuWang
