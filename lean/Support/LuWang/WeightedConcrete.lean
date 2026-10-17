import Support.LuWang.WeightedConcreteAlgebra

set_option autoImplicit false

namespace LuWang

open RamseyBasics
open scoped Finset

noncomputable def weightedConcreteSchedule (w C x y μ β xhat yhat p δ η : ℝ)
    (r ell : ℕ) : WeightedSchedule where
  w := w
  r := r
  ell := ell
  x := x
  nu := μ ^ w
  floor := p - δ
  beta := β
  q := fun n => p - δ / (n : ℝ)
  loss := fun n => δ / (2 * (n : ℝ) ^ 2)
  gap := fun n => δ / (2 * (n : ℝ) ^ 2)
  bookGap := fun n => δ / (n : ℝ) ^ 2
  spine := bookSpineSize η r
  page := fun n => bookPageSize β (bookSpineSize η r n)
  minimum := bookMinimumLeftSize η ell
  rightScale := fun k => C * (xhat⁻¹) ^ k * (yhat⁻¹) ^ ell
  target := fun k t => C ^ (w + 1) * bookTarget x y (μ ^ w) ell k t

theorem weighted_concrete_q_floor {p δ : ℝ} (hδ : 0 ≤ δ) {n : ℕ} (hn : 1 ≤ n) :
    p - δ ≤ p - δ / (n : ℝ) := by
  have hnR : (1 : ℝ) ≤ n := by exact_mod_cast hn
  have hdiv : δ / (n : ℝ) ≤ δ := (div_le_iff₀ (by linarith)).2 (by nlinarith)
  linarith

theorem weighted_concrete_left_large
    {w C x y μ xhat yhat p δ η : ℝ} {r ell k t : ℕ}
    (hw : 0 < w) (hC : 1 ≤ C) (hx : 0 < x) (hy : 0 < y) (hμ : 0 < μ)
    (hxhat : 0 < xhat) (hyhat : 0 < yhat) (hδ : 0 < δ) (hδp : δ < p)
    (hη : 0 < η) (hax : (1 + η) ^ w * x ≤ xhat)
    (hay : (1 + η) ^ w * y ≤ yhat) (ham : (1 + η) ^ w * μ ^ w ≤ 1)
    (hk : 2 ≤ k) (ht : 2 ≤ t) {NX NY d : ℝ} (hNX : 0 < NX) (hNY : 0 < NY)
    (hqlow : p - δ / ((k + t : ℕ) : ℝ) ≤ d) (hdhigh : d ≤ 1)
    (hmoment : C ^ (w + 1) * bookTarget x y (μ ^ w) ell k t ≤
      (d - (p - δ / ((k + t : ℕ) : ℝ))) ^ r * NX ^ w * NY)
    (hY : NY < C * (xhat⁻¹) ^ k * (yhat⁻¹) ^ ell) :
    (bookMinimumLeftSize η ell (k + t) : ℝ) ≤ NX := by
  have hfloor := weighted_concrete_q_floor (p := p) hδ.le (by omega : 1 ≤ k + t)
  have hdiff0 := sub_nonneg.mpr hqlow
  have hdiff1 : d - (p - δ / ((k + t : ℕ) : ℝ)) ≤ 1 := by linarith
  have htarget : C ^ (w + 1) * bookTarget x y (μ ^ w) ell k t ≤ NX ^ w * NY := by
    apply hmoment.trans
    calc
      _ ≤ 1 * NX ^ w * NY := by
        gcongr
        exact pow_le_one₀ hdiff0 hdiff1
      _ = _ := by ring
  have hbase : 0 < 1 + η := by linarith
  have hscaled := weighted_left_target_scale hbase hC hw hx hy hμ hxhat hyhat hax hay ham ell k t
  have hright : 0 < C * (xhat⁻¹) ^ k * (yhat⁻¹) ^ ell := by positivity
  have hstrict := hscaled.trans_lt (htarget.trans_lt
    (mul_lt_mul_of_pos_left hY (Real.rpow_pos_of_pos hNX w)))
  have hpow : ((1 + η) ^ (k + t + ell)) ^ w < NX ^ w :=
    (mul_lt_mul_iff_left₀ hright).mp hstrict
  have hN := (Real.rpow_lt_rpow_iff (by positivity) hNX.le hw).mp hpow
  exact (Nat.floor_le (by positivity)).trans hN.le

theorem weighted_concrete_bounds
    {w x₀ y₀ μ₀ x y μ β xhat yhat δ γ p C : ℝ} {r L ell : ℕ}
    (g : WeightedGrowth w x₀ y₀ μ₀ x y μ β xhat yhat δ γ r)
    (hw : 0 < w) (hr : 0 < r) (hwr : w ≤ (r : ℝ))
    (hx : 0 < x) (hy : 0 < y) (hμ : 0 < μ) (hβ : 0 < β) (hβ1 : β < 1)
    (hxhat : 0 < xhat) (hyhat : 0 < yhat)
    (hδ : 0 < δ) (hδp : 2 * δ < p) (hC : 1 ≤ C)
    (hb : BookAsymptoticScaleBounds g.η β (p - δ + g.η) r L)
    (hL : L ≤ ell - 1) (hmargin : (1 + g.η) / g.η ≤ (1 + g.η) ^ ell)
    (hscalar : ∀ b : ℝ, 0 ≤ b → b ≤ β →
      x ^ (1 / (r : ℝ)) * (1 - b) ^ (1 - w / (r : ℝ)) +
        μ ^ (w / (r : ℝ)) * b ^ (1 - w / (r : ℝ)) ≤
          (1 - γ) * (p - δ) ^ (1 / (r : ℝ))) :
    WeightedScheduleBounds (weightedConcreteSchedule w C x y μ β xhat yhat p δ g.η r ell) := by
  have hpFloor : 0 < p - δ := by linarith
  have hδlt : δ < p - δ := by linarith
  have hηI : g.η ∈ Set.Ioo 0 1 := ⟨g.eta_pos, g.eta_lt_one⟩
  have hηpos := g.eta_pos
  have hminimum (n : ℕ) : (1 + g.η) ^ (n + (ell - 1)) ≤
      (bookMinimumLeftSize g.η ell n : ℝ) := weighted_exponential_le_floor g.eta_pos hmargin
  refine {
    weight_pos := hw
    weight_le_exponent := hwr
    exponent_pos := hr
    x_pos := hx
    nu_pos := Real.rpow_pos_of_pos hμ w
    floor_pos := hpFloor
    beta_pos := hβ
    beta_lt_one := hβ1
    q_floor := ?_
    loss_nonneg := ?_
    loss_lt_floor := ?_
    gap_pos := ?_
    density_gain := ?_
    spine_pos := ?_
    page_pos := ?_
    page_scale := ?_
    page_size := ?_
    bookGap_nonneg := ?_
    book_density_gain := ?_
    book_target_gain := ?_
    red_target_gain := ?_
    blue_target_gain := ?_
    left_large := ?_
    exceptional_size := ?_
    local_dichotomy := ?_
  }
  · intro n hn
    exact weighted_concrete_q_floor hδ.le (by omega)
  · intro n
    exact div_nonneg hδ.le (by positivity)
  · intro n hn
    have hnR : (4 : ℝ) ≤ n := by exact_mod_cast hn
    have hle : δ / (2 * (n : ℝ) ^ 2) ≤ δ :=
      (div_le_iff₀ (by positivity)).2
        (le_mul_of_one_le_right hδ.le (by nlinarith))
    exact hle.trans_lt hδlt
  · intro n hn
    have hnR : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
    exact div_pos hδ (by positivity)
  · intro n hn
    dsimp [weightedConcreteSchedule]
    linarith [density_local_gain hδ (by omega : 2 ≤ n)]
  · intro n hn
    exact hb.spine_pos n (by omega)
  · intro n hn
    exact hb.page_pos n (by omega)
  · intro n _
    exact hb.page_scale n
  · intro n hn
    have hpage := (hb.five_page_sq n (ell - 1) (by omega) hL).trans (hminimum n)
    exact_mod_cast hpage
  · intro n _
    exact div_nonneg hδ.le (by positivity)
  · intro n hn hspine
    dsimp [weightedConcreteSchedule] at hspine ⊢
    linarith [density_book_gain hδ (hb.spine_pos n (by omega)) hspine]
  · intro k t hk ht hspine
    dsimp [weightedConcreteSchedule] at hspine ⊢
    rw [weighted_target_blue_sub (ne_of_gt (Real.rpow_pos_of_pos hμ w)) hspine.le]
    exact mul_le_mul_of_nonneg_right
      (weighted_book_gain hδ hηI hμ hβ (by omega) g.book_coefficient g.book_ratio)
      (by unfold bookTarget; positivity)
  · intro k t hk
    dsimp [weightedConcreteSchedule]
    rw [bookTarget_red_pred hx.ne' hk]
    ring_nf
    exact le_rfl
  · intro k t ht
    dsimp [weightedConcreteSchedule]
    rw [bookTarget_blue_pred (ne_of_gt (Real.rpow_pos_of_pos hμ w)) ht]
    ring_nf
    exact le_rfl
  · intro k t hk ht NX NY d hNX hNY hlow hhigh hmoment hY
    exact weighted_concrete_left_large hw hC hx hy hμ hxhat hyhat hδ
      (by linarith) g.eta_pos g.left_x g.left_y g.left_mu hk ht hNX hNY hlow hhigh hmoment hY
  · intro k t hk ht
    let n := k + t
    let m := bookPageSize β (bookSpineSize g.η r n)
    have hn : 0 < n := by omega
    have hnR : (4 : ℝ) ≤ n := by exact_mod_cast (by omega : 4 ≤ n)
    have hramsey : (ramseyNumber k m : ℝ) ≤ (n : ℝ) ^ m := by
      calc
        _ ≤ (k : ℝ) ^ (m - 1) := by exact_mod_cast ramseyNumber_le_pow_pred (by omega : 0 < k) (hb.page_pos n hn)
        _ ≤ (n : ℝ) ^ (m - 1) := by gcongr; exact_mod_cast (show k ≤ n by omega)
        _ ≤ (n : ℝ) ^ m := pow_le_pow_right₀ (by linarith) (Nat.sub_le m 1)
    have hfrac := hb.exceptional_of_le_pow hn hL hramsey
    have hcoeff : g.η * (p - δ + g.η - g.η) / (n : ℝ) ^ 3 ≤
        δ / (2 * (n : ℝ) ^ 2) * (p - δ) := by
      apply (div_le_iff₀ (by positivity : 0 < (n : ℝ) ^ 3)).2
      have hn0 : (n : ℝ) ≠ 0 := by positivity
      field_simp [hn0]
      have hsmall : 2 * g.η ≤ δ * (n : ℝ) := by
        nlinarith [mul_nonneg hδ.le (by linarith : 0 ≤ (n : ℝ) - 2), g.eta_le_delta]
      nlinarith [mul_le_mul_of_nonneg_right hsmall hpFloor.le]
    exact hfrac.trans ((mul_le_mul_of_nonneg_right hcoeff (by positivity)).trans
      (mul_le_mul_of_nonneg_left (hminimum n) (by positivity)))
  · intro n hn NX NR NB α αR αB hlarge hα hNR hNB hcard hblue hsplit
    have hnR : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
    have hN : 0 < NX := lt_of_lt_of_le (by positivity : 0 < (1 + g.η) ^ (n + (ell - 1)))
      ((hminimum n).trans hlarge)
    have hαpos : 0 < α := lt_of_lt_of_le (div_pos hδ (by positivity)) hα
    have hn2 := hb.alpha_error n (ell - 1) (by omega) hL
    have hn2NX : (n : ℝ) ^ 2 ≤ g.η ^ 2 * NX :=
      hn2.trans (mul_le_mul_of_nonneg_left ((hminimum n).trans hlarge) (sq_nonneg _))
    have herror : 1 / (α * NX) < γ := by
      have hprod : δ / (2 * (n : ℝ) ^ 2) * NX ≤ α * NX :=
        mul_le_mul_of_nonneg_right hα hN.le
      have hγpos : 0 < γ := by nlinarith [g.scalar_error, sq_nonneg g.η]
      apply (div_lt_iff₀ (mul_pos hαpos hN)).2
      have haux : 2 * (n : ℝ) ^ 2 < δ * γ * NX := by
        nlinarith [mul_lt_mul_of_pos_right g.scalar_error hN]
      have hprod' := (div_le_iff₀ (by positivity : 0 < 2 * (n : ℝ) ^ 2)).mp
        (show δ * NX / (2 * (n : ℝ) ^ 2) ≤ α * NX by simpa [div_mul_eq_mul_div] using hprod)
      nlinarith [mul_le_mul_of_nonneg_right hprod' hγpos.le]
    exact weighted_local_test hw hr hwr hx hμ hpFloor hN hαpos hNR hNB hcard hblue hsplit herror hscalar

end LuWang
