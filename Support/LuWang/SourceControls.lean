import Support.LuWang.SourceProfile

/-! Strict local controls selected from a boundary supporting pair.
All choices depend on the source and its error allowance, before the
prefactor or host is introduced. -/

set_option autoImplicit false

namespace LuWang

open Set Filter Topology

structure SourceLocalControl (F : ℝ → ℝ) (ε : ℝ) where
  w : ℝ
  mu : ℝ
  p : ℝ
  x : ℝ
  y : ℝ
  xhat : ℝ
  yhat : ℝ
  weight_pos : 0 < w
  mu_unit : mu ∈ Ioo 0 1
  density_unit : p ∈ Ioo 0 1
  x_unit : x ∈ Ioo 0 1
  y_unit : y ∈ Ioo 0 1
  xhat_unit : xhat ∈ Ioo 0 1
  yhat_unit : yhat ∈ Ioo 0 1
  x_lt_hat : x < xhat
  y_lt_hat : y < yhat
  capacity : x < (1 - mu) ^ w * p ^ (1 / (1 - mu))
  majorant : ∀ a b : ℝ, 0 < a → 0 < b →
    symmetricProfile F a b + ε * (a + b) ≤ -a * Real.log xhat - b * Real.log yhat

theorem source_scaled_majorant {F : ℝ → ℝ} {ε X Y xhat yhat : ℝ}
    (hpair : (X, Y) ∈ supportRegion F) (hxhat : 0 < xhat) (hyhat : 0 < yhat)
    (hx : xhat ≤ Real.exp (-ε) * X) (hy : yhat ≤ Real.exp (-ε) * Y) :
    ∀ a b : ℝ, 0 < a → 0 < b →
      symmetricProfile F a b + ε * (a + b) ≤ -a * Real.log xhat - b * Real.log yhat := by
  intro a b ha hb
  have hX : 0 < X := hpair.1.1
  have hY : 0 < Y := hpair.2.1.1
  have hxlog := Real.log_le_log hxhat hx
  have hylog := Real.log_le_log hyhat hy
  rw [Real.log_mul (Real.exp_ne_zero _) hX.ne', Real.log_exp] at hxlog
  rw [Real.log_mul (Real.exp_ne_zero _) hY.ne', Real.log_exp] at hylog
  have hmajor := hpair.2.2 a b ha hb
  have hA := mul_le_mul_of_nonneg_left hxlog ha.le
  have hB := mul_le_mul_of_nonneg_left hylog hb.le
  nlinarith

theorem exists_source_local_control {F : ℝ → ℝ} {ε s p₀ w μ X Y : ℝ}
    (hε : 0 < ε) (hs : 0 < s) (hw : 0 < w) (hμ : μ ∈ Ioo 0 1)
    (hp₀ : p₀ ∈ Ioo 0 1) (hpair : (X, Y) ∈ supportRegion F)
    (hXeq : X = (1 - μ) ^ w * p₀ ^ (1 / (1 - μ)))
    (hslack : 0 < (w + 1) * F s + Real.log X + s * Real.log Y + w * s * Real.log μ) :
    ∃ c : SourceLocalControl F ε,
      c.p < p₀ ∧ leafExponent c.w c.mu c.x c.y s < F s + ε * (1 + s) := by
  let xb := Real.exp (-ε) * X
  let yb := Real.exp (-ε) * Y
  have hX : 0 < X := hpair.1.1
  have hY : 0 < Y := hpair.2.1.1
  have hxb : 0 < xb := mul_pos (Real.exp_pos _) hX
  have hyb : 0 < yb := mul_pos (Real.exp_pos _) hY
  have hexp : Real.exp (-ε) < 1 := Real.exp_lt_one_iff.2 (by linarith)
  have hxbX : xb < X := by
    dsimp [xb]
    exact mul_lt_of_lt_one_left hX hexp
  have hybY : yb < Y := by
    dsimp [yb]
    exact mul_lt_of_lt_one_left hY hexp
  have hxb1 : xb < 1 := hxbX.trans hpair.1.2
  have hyb1 : yb < 1 := hybY.trans hpair.2.1.2
  have hden : 0 < 1 + w := by linarith
  have hbase : leafExponent w μ xb yb s < F s + ε * (1 + s) := by
    rw [leafExponent, div_lt_iff₀ hden]
    dsimp [xb, yb]
    rw [Real.log_mul (Real.exp_ne_zero _) hX.ne', Real.log_exp,
      Real.log_mul (Real.exp_ne_zero _) hY.ne', Real.log_exp]
    nlinarith [mul_pos hw (mul_pos hε (by linarith : 0 < 1 + s))]
  have hcap : xb < (1 - μ) ^ w * p₀ ^ (1 / (1 - μ)) := by simpa only [← hXeq] using hxbX
  have hcEv : ∀ᶠ e : ℝ in 𝓝 0,
      xb - 2 * e < (1 - μ) ^ w * (p₀ - e) ^ (1 / (1 - μ)) := by
    have hleft : ContinuousAt (fun e : ℝ => xb - 2 * e) 0 := by fun_prop
    have hright : ContinuousAt (fun e : ℝ => (1 - μ) ^ w * (p₀ - e) ^ (1 / (1 - μ))) 0 :=
      continuousAt_const.mul ((continuousAt_const.sub continuousAt_id).rpow_const
        (Or.inl (by simpa using hp₀.1.ne')))
    exact hleft.eventually_lt hright (by simpa using hcap)
  have hlEv : ∀ᶠ e : ℝ in 𝓝 0,
      leafExponent w μ (xb - 2 * e) (yb - 2 * e) s < F s + ε * (1 + s) := by
    have hcont : ContinuousAt (fun e : ℝ => leafExponent w μ (xb - 2 * e) (yb - 2 * e) s) 0 := by
      unfold leafExponent
      fun_prop (disch := simp only [mul_zero, sub_zero]; positivity)
    exact hcont.eventually (Iio_mem_nhds (by simpa using hbase))
  have hxEv : ∀ᶠ e : ℝ in 𝓝 0, 0 < xb - 2 * e :=
    (show ContinuousAt (fun e : ℝ => xb - 2 * e) 0 by fun_prop).eventually
      (Ioi_mem_nhds (by simpa using hxb))
  have hyEv : ∀ᶠ e : ℝ in 𝓝 0, 0 < yb - 2 * e :=
    (show ContinuousAt (fun e : ℝ => yb - 2 * e) 0 by fun_prop).eventually
      (Ioi_mem_nhds (by simpa using hyb))
  have hpEv : ∀ᶠ e : ℝ in 𝓝 0, 0 < p₀ - e :=
    (show ContinuousAt (fun e : ℝ => p₀ - e) 0 by fun_prop).eventually
      (Ioi_mem_nhds (by simpa using hp₀.1))
  have hall := hcEv.and (hlEv.and (hxEv.and (hyEv.and hpEv)))
  have hz : (0 : ℝ) ∈ closure (Ioi (0 : ℝ)) := by rw [closure_Ioi]; exact mem_Ici.mpr le_rfl
  obtain ⟨e, he, hepos⟩ := (mem_closure_iff_nhds.mp hz) _ hall
  change 0 < e at hepos
  let c : SourceLocalControl F ε := {
    w := w, mu := μ, p := p₀ - e, x := xb - 2 * e, y := yb - 2 * e,
    xhat := xb - e, yhat := yb - e,
    weight_pos := hw, mu_unit := hμ,
    density_unit := ⟨he.2.2.2.2, by linarith [hp₀.2]⟩,
    x_unit := ⟨he.2.2.1, by linarith⟩,
    y_unit := ⟨he.2.2.2.1, by linarith⟩,
    xhat_unit := ⟨by linarith [he.2.2.1], by linarith⟩,
    yhat_unit := ⟨by linarith [he.2.2.2.1], by linarith⟩,
    x_lt_hat := by linarith, y_lt_hat := by linarith,
    capacity := he.1,
    majorant := source_scaled_majorant hpair (by linarith [he.2.2.1])
      (by linarith [he.2.2.2.1]) (by dsimp [xb] at *; linarith)
      (by dsimp [yb] at *; linarith) }
  exact ⟨c, by dsimp [c]; linarith, he.2.1⟩

end LuWang
