import S5_LocalAlternative.L1_FiniteApproximation
import Support.Published.Lemmas.DiagRamsey_SE_Assembly

/-!
# 5.2 The ordered envelope
Integrate the majorant over each ordered cell. This avoids sampling an
unbounded logarithmic term at the left endpoint of the first cell.
-/

set_option autoImplicit false

namespace DiagonalRamsey

open MeasureTheory DiagRamsey DiagRamsey.SE

/-- **Integrated majorant.** Domination on `(0,1]` controls each cell's
constant objective and logarithmic increment, including cells starting at zero. -/
theorem ordered_envelope_cell_lower {p μ w β x q a b : ℝ} {E : ℝ → ℝ}
    (ha : 0 ≤ a) (hab : a ≤ b) (hb : b ≤ 1)
    (hE : IntervalIntegrable E volume 0 1)
    (hmajorant : ∀ u ∈ Set.Ioc (0 : ℝ) 1,
      ∀ q ∈ complementDegrees p μ w β x,
        q * certM p μ w β x q + w * q * (1 + Real.log u) ≤ E u)
    (hq : q ∈ complementDegrees p μ w β x) :
    (b - a) * (q * certM p μ w β x q) + w * q * (PhiL b - PhiL a) ≤
      ∫ u in a..b, E u := by
  have hlog : IntervalIntegrable (fun u : ℝ => 1 + Real.log u) volume a b :=
    intervalIntegrable_const.add intervalIntegral.intervalIntegrable_log'
  have hlow : IntervalIntegrable
      (fun u => q * certM p μ w β x q + w * q * (1 + Real.log u)) volume a b :=
    intervalIntegrable_const.add (hlog.const_mul _)
  have hval : (∫ u in a..b,
      (q * certM p μ w β x q + w * q * (1 + Real.log u))) =
      (b - a) * (q * certM p μ w β x q) + w * q * (PhiL b - PhiL a) := by
    rw [intervalIntegral.integral_add intervalIntegrable_const (hlog.const_mul _),
      intervalIntegral.integral_const, intervalIntegral.integral_const_mul,
      intervalIntegral.integral_add intervalIntegrable_const
        intervalIntegral.intervalIntegrable_log',
      intervalIntegral.integral_const, integral_log]
    unfold PhiL
    simp only [smul_eq_mul, mul_one]
    ring
  rw [← hval]
  have hsub : Set.uIcc a b ⊆ Set.uIcc (0 : ℝ) 1 :=
    Set.uIcc_subset_uIcc (Set.mem_uIcc.2 (Or.inl ⟨ha, hab.trans hb⟩))
      (Set.mem_uIcc.2 (Or.inl ⟨ha.trans hab, hb⟩))
  apply intervalIntegral.integral_mono_on_of_le_Ioo hab hlow (hE.mono_set hsub)
  intro u hu
  exact hmajorant u ⟨ha.trans_lt hu.1, hu.2.le.trans hb⟩ q hq

#print axioms ordered_envelope_cell_lower

/-- **Negative ordered envelope.** A negative integrated majorant contradicts
the ordering inequality when all but a small fraction of rows admit a nearby
feasible degree with an approximately dominating objective. The feasible
witness controls the logarithmic cost of the exceptional rows. -/
theorem ordered_envelope_contradiction {p μ w β x : ℝ}
    (hμ : μ < 1) (hw : 0 < w) (henv : ComplementEnvelope p μ w β x) :
    ∃ ε > 0, ∃ φ > 0, ∃ R : ℝ,
      ∀ r ≥ R, ∀ N : ℕ, 0 < N → ∀ qs Ps : ℕ → ℝ, ∀ Gd : Finset ℕ,
      Gd ⊆ Finset.range N → (N : ℝ) - Gd.card ≤ φ * N →
      (∀ k < N, 0 ≤ qs k ∧ qs k ≤ 1) →
      (N : ℝ) * ∑ k ∈ Finset.range N, qs k *
        (PhiK r (1 - w / r) (((k : ℝ) + 1) / N) -
          PhiK r (1 - w / r) ((k : ℝ) / N)) ≤ r * ∑ k ∈ Finset.range N, Ps k →
      (∀ k < N, r * Ps k ≤ w) →
      (∀ k ∈ Gd, ∃ q' ∈ complementDegrees p μ w β x,
        |q' - qs k| ≤ ε ∧ r * Ps k ≤ q' * certM p μ w β x q' + ε) → False := by
  classical
  obtain ⟨⟨q0, hq0⟩, E, _hcont, _hmono, hE, hmajorant, hnegative⟩ := henv
  have hq0b : 0 ≤ q0 ∧ q0 ≤ 1 := ⟨hq0.1.le, hq0.2.1.trans hμ.le⟩
  let C := -(∫ u in (0 : ℝ)..1, E u)
  have hC : 0 < C := neg_pos.mpr hnegative
  let C0 := |q0 * certM p μ w β x q0|
  have hC0 : 0 ≤ C0 := abs_nonneg _
  let a := 16 * w / C
  have ha : 0 < a := by positivity
  have htail : w * Real.exp (-a - 1) ≤ C / 16 := by
    have hexp : a + 2 ≤ Real.exp (a + 1) := by
      linarith [Real.add_one_le_exp (a + 1)]
    have hid : Real.exp (-a - 1) = 1 / Real.exp (a + 1) := by
      rw [one_div, ← Real.exp_neg]
      ring_nf
    rw [hid]
    have hrecip := one_div_le_one_div_of_le ha (show a ≤ Real.exp (a + 1) by linarith)
    have hcancel : w * (1 / a) = C / 16 := by dsimp [a]; field_simp
    linarith [mul_le_mul_of_nonneg_left hrecip hw.le]
  let ε := C / (16 * (1 + 2 * w))
  have hε : 0 < ε := by positivity
  have hεC : ε + w * ε * 2 = C / 16 := by dsimp [ε]; field_simp
  let φ := C / (16 * (1 + w + C0 + w * (2 + a)))
  have hφ : 0 < φ := by positivity
  have hφC : φ * (w + C0 + w * (2 + a)) ≤ C / 16 := by
    dsimp [φ]
    rw [div_mul_eq_mul_div, div_le_div_iff₀ (by positivity) (by norm_num)]
    have : 0 ≤ C * (w + C0 + w * (2 + a)) := by positivity
    linarith
  refine ⟨ε, hε, φ, hφ, max (2 * w) (64 * w ^ 2 / C), ?_⟩
  intro r hr N hN qs Ps Gd hGd hcard hq hdrift hupper hgood
  have hr2w : 2 * w ≤ r := (le_max_left _ _).trans hr
  have hrC : 64 * w ^ 2 / C ≤ r := (le_max_right _ _).trans hr
  have hr0 : 0 < r := by linarith
  have hN' : (0 : ℝ) < N := by exact_mod_cast hN
  have herr : 4 * w ^ 2 / r ≤ C / 16 := by
    rw [div_le_iff₀ hr0]
    rw [div_le_iff₀ hC] at hrC
    linarith
  let ΔL : ℕ → ℝ := fun k => PhiL (((k : ℝ) + 1) / N) - PhiL ((k : ℝ) / N)
  let ΔJ : ℕ → ℝ := fun k => JF (((k : ℝ) + 1) / N) - JF ((k : ℝ) / N)
  let I : ℕ → ℝ := fun k => ∫ u in ((k : ℝ) / N)..(((k : ℝ) + 1) / N), E u
  let S := Finset.range N \ Gd
  have hS : S ⊆ Finset.range N := Finset.sdiff_subset
  have hlower := lower_sum hN hw hr2w qs Ps hq hdrift
  have hcells : ∑ k ∈ Finset.range N, I k = ∫ u in (0 : ℝ)..1, E u := by
    have h := cells_sum hN hE
    push_cast at h
    exact h
  have hbound : ∀ k ∈ Finset.range N,
      r * Ps k / N + w * qs k * ΔL k - I k ≤
        ε / N + w * ε * ΔJ k +
          if k ∈ S then (w + C0) / N + w * ΔJ k else 0 := by
    intro k hk
    have hk' := Finset.mem_range.mp hk
    obtain ⟨hleft, hab, hright, hwidth⟩ := cell_mem hN hk'
    have hLJ : |ΔL k| ≤ ΔJ k := phiL_bound hleft hab hright
    have hJ : 0 ≤ ΔJ k := (abs_nonneg _).trans hLJ
    have hlow : ∀ q' ∈ complementDegrees p μ w β x,
        1 / N * (q' * certM p μ w β x q') + w * q' * ΔL k ≤ I k := by
      intro q' hq'
      have h := ordered_envelope_cell_lower hleft hab hright hE hmajorant hq'
      rw [hwidth] at h
      exact h
    have hbase : 0 ≤ ε / N + w * ε * ΔJ k := by positivity
    by_cases hkG : k ∈ Gd
    · have hkS : k ∉ S := fun h => (Finset.mem_sdiff.mp h).2 hkG
      rw [if_neg hkS, add_zero]
      obtain ⟨q', hq', hnear, hobj⟩ := hgood k hkG
      exact cost_vs_near hN' hw.le hnear hLJ (hlow q' hq') hobj
    · have hkS : k ∈ S := Finset.mem_sdiff.mpr ⟨hk, hkG⟩
      rw [if_pos hkS]
      have h := cost_vs_q0 hN' hw.le (hq k hk') hq0b (le_refl C0)
        hLJ (hlow q0 hq0) (hupper k hk')
      linarith
  have hsum := Finset.sum_le_sum hbound
  rw [Finset.sum_sub_distrib, hcells, Finset.sum_add_distrib
      (f := fun k => ε / N + w * ε * ΔJ k),
    Finset.sum_ite_mem, Finset.inter_eq_right.mpr hS] at hsum
  have hall : ∑ k ∈ Finset.range N, (ε / N + w * ε * ΔJ k) = ε + w * ε * 2 := by
    rw [Finset.sum_add_distrib, Finset.sum_const, Finset.card_range, nsmul_eq_mul,
      ← Finset.mul_sum]
    have htel := Finset.sum_range_sub (fun k : ℕ => JF ((k : ℝ) / N)) N
    simp only [Nat.cast_add, Nat.cast_one] at htel
    dsimp [ΔJ]
    rw [htel, div_self hN'.ne', Nat.cast_zero, zero_div, JF_zero]
    unfold JF
    rw [Real.log_one]
    field_simp
    ring
  have hScard : (S.card : ℝ) ≤ φ * N := by
    rw [Finset.card_sdiff_of_subset hGd, Finset.card_range,
      Nat.cast_sub ((Finset.card_le_card hGd).trans (by simp))]
    exact hcard
  have hbad : ∑ k ∈ S, ((w + C0) / N + w * ΔJ k) ≤
      C / 16 + w * Real.exp (-a - 1) := by
    rw [Finset.sum_add_distrib, Finset.sum_const, nsmul_eq_mul, ← Finset.mul_sum]
    have hJ := sum_dJ_le hN S hS a
    have hm := mul_le_mul_of_nonneg_left hJ hw.le
    have hfrac : (S.card : ℝ) / N ≤ φ := (div_le_iff₀ hN').mpr hScard
    have hid : (S.card : ℝ) * ((w + C0) / N) =
        (w + C0) * ((S.card : ℝ) / N) := by ring
    rw [hid]
    have hsmall := mul_le_mul_of_nonneg_left hfrac
      (show 0 ≤ w + C0 + w * (2 + a) by positivity)
    linarith
  rw [hall] at hsum
  have hc : -(4 * w ^ 2 / r) ≤ ∑ k ∈ Finset.range N,
      (r * Ps k / N + w * qs k * ΔL k) := hlower
  dsimp [C] at hC hεC hφC htail herr
  linarith

#print axioms ordered_envelope_contradiction

/-- **Finite-row assembly.** The two finite moments and the first-cell
threshold supply the approximation required by the ordered contradiction.
The original row bound excludes small degrees; the zero-degree red inequality
excludes degree zero. All graph-side inputs remain explicit. -/
theorem ordered_envelope_assembly {p μ w β x : ℝ}
    (hp : 0 < p ∧ p < 1) (hμ : 0 < μ ∧ μ < 1) (hw : 0 < w)
    (hβ : 0 < β ∧ β < 1) (hx : 0 < x) (hxp : x < p)
    (hgap : x < (1 - μ) ^ w) (henv : ComplementEnvelope p μ w β x) :
    ∃ η > 0, η < p / 2 ∧ μ + η < 1 ∧ ∃ φ > 0, ∃ R : ℝ,
      ∀ r ≥ R, ∀ N : ℕ, 0 < N → ∀ qs Ps ms πs : ℕ → ℝ,
      ∀ Gd : Finset ℕ, Gd ⊆ Finset.range N → (N : ℝ) - Gd.card ≤ φ * N →
      (∀ k < N, 0 ≤ qs k ∧ qs k ≤ 1) →
      (N : ℝ) * ∑ k ∈ Finset.range N, qs k *
        (PhiK r (1 - w / r) (((k : ℝ) + 1) / N) -
          PhiK r (1 - w / r) ((k : ℝ) / N)) ≤ r * ∑ k ∈ Finset.range N, Ps k →
      (∀ k < N, r * Ps k ≤ w) →
      (∀ k ∈ Gd, qs k ≤ μ + η ∧ p - η ≤ ms k ∧ ms k ≤ 1 ∧
        p - η ≤ πs k ∧ πs k ≤ 1 ∧ |ms k - πs k| ≤ η ∧
        (qs k = 0 → ms k < x ^ β * πs k ^ (1 - β)) ∧
        (0 < qs k → RowBound μ w β x (qs k) (ms k) (πs k) r (Ps k / qs k)) ∧
        (0 < qs k → ∃ a b : ℝ,
          ms k * (max (1 + a / r) 0) ^ (β * r) +
            (1 - ms k) * (max (1 + b / r) 0) ^ (β * r) ≤ certU μ w β (qs k) ∧
          ms k * (max (1 - (qs k / (1 - qs k)) * a / r) 0) ^ (β * r) +
            (1 - ms k) * (max (1 - (qs k / (1 - qs k)) * b / r) 0) ^ (β * r) ≤
              (1 - qs k) ^ (-β * w) ∧
          r * LF w β x (qs k) (ms k) (πs k) r ≤ a ∧
          qs k * (ms k * a + (1 - ms k) * b) = r * Ps k)) → False := by
  obtain ⟨ε, hε, φ, hφ, Rsum, hsum⟩ := ordered_envelope_contradiction hμ.2 hw henv
  obtain ⟨δ, hδ, ηe, hηe, Re, hexcl⟩ := excl hp.1 hμ.1 hμ.2 hw hβ.1 hx hxp
  obtain ⟨η0, hη0, hexcl0⟩ := excl0 hp.1 hβ.1 hβ.2 hx hxp
  obtain ⟨ηa, hηa, Ra, happ⟩ :=
    finite_row_approximation hp hμ hw.le hβ.1 hx hgap hδ hε
  let η := min (min (min ηe η0) ηa) (min (p / 4) ((1 - μ) / 4))
  have hη₁ : η ≤ ηe := (min_le_left _ _).trans
    ((min_le_left _ _).trans (min_le_left _ _))
  have hη₂ : η ≤ η0 := (min_le_left _ _).trans
    ((min_le_left _ _).trans (min_le_right _ _))
  have hη₃ : η ≤ ηa := (min_le_left _ _).trans (min_le_right _ _)
  have hη₄ : η ≤ p / 4 := (min_le_right _ _).trans (min_le_left _ _)
  have hη₅ : η ≤ (1 - μ) / 4 := (min_le_right _ _).trans (min_le_right _ _)
  have hη : 0 < η := lt_min (lt_min (lt_min hηe hη0) hηa)
    (lt_min (by linarith [hp.1]) (by linarith [hμ.2]))
  refine ⟨η, hη, by linarith [hp.1], by linarith [hμ.2],
    φ, hφ, max Rsum (max Re Ra), ?_⟩
  intro r hr N hN qs Ps ms πs Gd hGd hcard hq hdrift hupper hgood
  have hrSum : Rsum ≤ r := (le_max_left _ _).trans hr
  have hrE : Re ≤ r := ((le_max_left _ _).trans (le_max_right _ _)).trans hr
  have hrA : Ra ≤ r := ((le_max_right _ _).trans (le_max_right _ _)).trans hr
  apply hsum r hrSum N hN qs Ps Gd hGd hcard hq hdrift hupper
  intro k hk
  obtain ⟨gq, gm₁, gm₂, gπ₁, gπ₂, gnear, gzero, grow, gmom⟩ := hgood k hk
  have hkN := Finset.mem_range.mp (hGd hk)
  have hqpos : 0 < qs k := by
    rcases (hq k hkN).1.eq_or_lt with hzero | hpos
    · exact False.elim (hexcl0 (ms k) (πs k) (by linarith) gm₂
        (by linarith [hp.1]) (gnear.trans hη₂) (gzero hzero.symm))
    · exact hpos
  have hqδ : δ ≤ qs k := by
    by_contra hsmall
    exact hexcl r hrE (qs k) (ms k) (πs k) (Ps k / qs k) hqpos
      (lt_of_not_ge hsmall) (by linarith) gm₂ (by linarith) gπ₂
      (gnear.trans hη₁) (grow hqpos)
  obtain ⟨a, b, hblue, hcomp, hthreshold, hobjective⟩ := gmom hqpos
  obtain ⟨q', hq', hnear, hbound⟩ := happ r hrA (qs k) (ms k) (πs k) a b hqδ
    (by linarith) (by linarith) gm₂ (by linarith) gπ₂
    (gnear.trans hη₃) hblue hcomp hthreshold
  exact ⟨q', hq', hnear, hobjective ▸ hbound⟩

#print axioms ordered_envelope_assembly

end DiagonalRamsey
