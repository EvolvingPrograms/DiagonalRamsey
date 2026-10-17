import Support.LuWang.WeightedProfile

/-! A simultaneous strict parameter choice before the host, its prefactor,
and the changing clique targets are introduced. -/

set_option autoImplicit false

namespace LuWang

open Filter Set Topology

structure WeightedSlack (w μ₀ x₀ y₀ xhat yhat p : ℝ) where
  r : ℕ
  ε : ℝ
  two_le_r : 2 ≤ r
  weight_lt_r : w < (r : ℝ)
  epsilon_pos : 0 < ε
  x_below_hat : x₀ + ε < xhat
  y_below_hat : y₀ + ε < yhat
  beta_lt_one : μ₀ + 2 * ε < 1
  two_epsilon_lt_p : 2 * ε < p
  root_gap : μ₀ + 3 * ε < (p - ε) ^ ((r : ℝ)⁻¹)
  cutoff : μ₀ + 2 * ε < (μ₀ + ε) / ((x₀ + ε) ^ (1 / w) + (μ₀ + ε))
  parameter_gap : x₀ + ε <
    ((p - ε) ^ ((r : ℝ)⁻¹) - μ₀ - 3 * ε) ^ r * (1 - μ₀ - ε) ^ (w - (r : ℝ))

theorem exists_weighted_slack {w μ₀ x₀ y₀ xhat yhat p : ℝ}
    (hw : 0 < w) (hμ : μ₀ ∈ Ioo 0 1) (hp : p ∈ Ioo 0 1)
    (hx : 0 < x₀) (hxhat : x₀ < xhat) (hyhat : y₀ < yhat)
    (hcapacity : x₀ < (1 - μ₀) ^ w * p ^ (1 / (1 - μ₀))) :
    Nonempty (WeightedSlack w μ₀ x₀ y₀ xhat yhat p) := by
  obtain ⟨r, hr2, hwr, hroot, hparam⟩ := exists_weighted_exponent hp.1 hμ.2 hcapacity
  have hcut := weighted_capacity_cutoff hx hμ hp hw hcapacity
  let root : ℝ → ℝ := fun e => (p - e) ^ ((r : ℝ)⁻¹)
  let shifted : ℝ → ℝ := fun e =>
    (root e - μ₀ - 3 * e) ^ r * (1 - μ₀ - e) ^ (w - (r : ℝ))
  have hrootCont : ContinuousAt root 0 :=
    (continuousAt_const.sub continuousAt_id).rpow_const (Or.inl (by simpa using hp.1.ne'))
  have hlastCont : ContinuousAt (fun e : ℝ => (1 - μ₀ - e) ^ (w - (r : ℝ))) 0 :=
    ((continuousAt_const.sub continuousAt_const).sub continuousAt_id).rpow_const
      (Or.inl (by simpa using (sub_pos.mpr hμ.2).ne'))
  have hshiftedCont : ContinuousAt shifted 0 :=
    ((hrootCont.sub continuousAt_const).sub (continuousAt_const.mul continuousAt_id)).pow r
      |>.mul hlastCont
  have hxEv : ∀ᶠ e : ℝ in 𝓝 0, x₀ + e < xhat :=
    (continuousAt_const.add continuousAt_id).eventually (Iio_mem_nhds (by simpa using hxhat))
  have hyEv : ∀ᶠ e : ℝ in 𝓝 0, y₀ + e < yhat :=
    (continuousAt_const.add continuousAt_id).eventually (Iio_mem_nhds (by simpa using hyhat))
  have hbEv : ∀ᶠ e : ℝ in 𝓝 0, μ₀ + 2 * e < 1 :=
    (continuousAt_const.add (continuousAt_const.mul continuousAt_id)).eventually
      (Iio_mem_nhds (by simpa using hμ.2))
  have hpEv : ∀ᶠ e : ℝ in 𝓝 0, 2 * e < p :=
    (continuousAt_const.mul continuousAt_id).eventually (Iio_mem_nhds (by simpa using hp.1))
  have hrEv : ∀ᶠ e : ℝ in 𝓝 0, μ₀ + 3 * e < root e :=
    (continuousAt_const.add (continuousAt_const.mul continuousAt_id)).eventually_lt hrootCont
      (by simpa [root] using hroot)
  have hcEv : ∀ᶠ e : ℝ in 𝓝 0,
      μ₀ + 2 * e < (μ₀ + e) / ((x₀ + e) ^ (1 / w) + (μ₀ + e)) := by
    have hleft : ContinuousAt (fun e : ℝ => μ₀ + 2 * e) 0 :=
      continuousAt_const.add (continuousAt_const.mul continuousAt_id)
    have hright : ContinuousAt
        (fun e : ℝ => (μ₀ + e) / ((x₀ + e) ^ (1 / w) + (μ₀ + e))) 0 :=
      (continuousAt_const.add continuousAt_id).div
        (((continuousAt_const.add continuousAt_id).rpow_const
          (Or.inl (by simpa using hx.ne'))).add (continuousAt_const.add continuousAt_id))
        (by simpa using (add_pos (Real.rpow_pos_of_pos hx (1 / w)) hμ.1).ne')
    exact hleft.eventually_lt hright (by simpa using hcut)
  have hfEv : ∀ᶠ e : ℝ in 𝓝 0, x₀ + e < shifted e :=
    (continuousAt_const.add continuousAt_id).eventually_lt hshiftedCont
      (by simpa [shifted, root, weightedBookParameter] using hparam)
  have hall := hxEv.and (hyEv.and (hbEv.and (hpEv.and (hrEv.and (hcEv.and hfEv)))))
  have hzero : (0 : ℝ) ∈ closure (Ioi (0 : ℝ)) := by
    rw [closure_Ioi]
    exact mem_Ici.mpr le_rfl
  obtain ⟨ε, hε, hεpos⟩ := (mem_closure_iff_nhds.mp hzero) _ hall
  exact ⟨⟨r, ε, hr2, hwr, hεpos, hε.1, hε.2.1, hε.2.2.1,
    hε.2.2.2.1, hε.2.2.2.2.1, hε.2.2.2.2.2.1, hε.2.2.2.2.2.2⟩⟩

theorem WeightedSlack.scalar_gap {w μ₀ x₀ y₀ xhat yhat p : ℝ}
    (s : WeightedSlack w μ₀ x₀ y₀ xhat yhat p)
    (hw : 0 < w) (hμ : 0 < μ₀) (hx : 0 < x₀) :
    ∃ γ : ℝ, 0 < γ ∧ ∀ b : ℝ, 0 ≤ b → b ≤ μ₀ + 2 * s.ε →
      (x₀ + s.ε) ^ (1 / (s.r : ℝ)) * (1 - b) ^ (1 - w / (s.r : ℝ)) +
        (μ₀ + s.ε) ^ (w / (s.r : ℝ)) * b ^ (1 - w / (s.r : ℝ)) ≤
          (1 - γ) * (p - s.ε) ^ (1 / (s.r : ℝ)) := by
  have hf : 0 < p - s.ε := by linarith [s.two_epsilon_lt_p, s.epsilon_pos]
  have hrootPos : 0 < (p - s.ε) ^ (1 / (s.r : ℝ)) := Real.rpow_pos_of_pos hf _
  let γ := s.ε / (p - s.ε) ^ (1 / (s.r : ℝ))
  refine ⟨γ, div_pos s.epsilon_pos hrootPos, ?_⟩
  intro b hb hbβ
  have hcritical := weighted_critical_gap (add_pos hx s.epsilon_pos)
    (show μ₀ + s.ε < 1 by linarith [s.beta_lt_one, s.epsilon_pos])
    (lt_of_lt_of_le (by decide : 0 < 2) s.two_le_r)
    (show (μ₀ + 2 * s.ε) + s.ε < (p - s.ε) ^ ((s.r : ℝ)⁻¹) by
      linarith [s.root_gap])
    (show x₀ + s.ε <
      ((p - s.ε) ^ ((s.r : ℝ)⁻¹) - (μ₀ + 2 * s.ε) - s.ε) ^ s.r *
        (1 - (μ₀ + s.ε)) ^ (w - (s.r : ℝ)) by
      rw [show (p - s.ε) ^ ((s.r : ℝ)⁻¹) - (μ₀ + 2 * s.ε) - s.ε =
        (p - s.ε) ^ ((s.r : ℝ)⁻¹) - μ₀ - 3 * s.ε by ring,
        show 1 - (μ₀ + s.ε) = 1 - μ₀ - s.ε by ring]
      exact s.parameter_gap)
  have hprofile := weighted_profile_le (add_pos hx s.epsilon_pos) (add_pos hμ s.epsilon_pos)
    hw s.weight_lt_r (by linarith [s.epsilon_pos]) s.beta_lt_one s.cutoff.le
    (show 0 ≤ 1 - b by linarith [s.beta_lt_one]) hb (by linarith) hbβ
  have hcancel : (1 - γ) * (p - s.ε) ^ (1 / (s.r : ℝ)) =
      (p - s.ε) ^ (1 / (s.r : ℝ)) - s.ε := by
    dsimp [γ]
    field_simp
  rw [hcancel]
  linarith

end LuWang
