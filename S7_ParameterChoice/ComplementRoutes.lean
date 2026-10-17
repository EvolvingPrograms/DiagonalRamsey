import S7_ParameterChoice.Source.Joint.Assembly.Recipes
import S6_GlobalConstruction.L3_RouteComposition

/-! Numerical route geometry with a complementary envelope. These proofs reuse
DiagRamsey_V5Bank's terminal bounds and route interpolation, replacing its scalar
certificate premise by the actual complementary control interface. -/
set_option autoImplicit false

namespace DiagonalRamsey.ComplementRoutes
open DiagRamsey DiagRamsey.V5 DiagRamsey.PL DiagRamsey.SharpCert

theorem terminal_spec {nCtl m : ℕ} (ctl : Fin nCtl → CtrlD) (henv : ∀ c, ComplementEnvelope (ctl c).p (ctl c).μ (ctl c).w (ctl c).β (ctl c).x)
    (A B : Fin m → ℚ) (T : TermD nCtl m) (h : T.check ctl A = true) :
    ComplementControlValid (fun i => (A i : ℝ)) (fun i => (B i : ℝ)) (T.ctrl ctl B) ∧ (T.ctrl ctl B).Aγ ≤ T.aU ∧
      (T.ctrl ctl B).Bγ = (B T.σ : ℝ) + T.ys ∧ (T.ctrl ctl B).bγ ≤ T.bU ∧ (T.ctrl ctl B).w = (ctl T.c).w ∧
      (T.ctrl ctl B).p = (ctl T.c).p := by
  have hok := (show (ctl T.c).ok = true by
    simp only [TermD.check, Bool.and_eq_true] at h; exact h.1.1.1.1.1.1.1.1)
  have hxr := (ctl T.c).x_lt_rpow hok
  simp only [TermD.check, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨-, hξ0⟩, hξx⟩, hξA⟩, hν0⟩, hνμ⟩, hys⟩, haU⟩, hbU⟩ := h
  simp only [CtrlD.ok, Bool.and_eq_true, decide_eq_true_eq] at hok
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨hp0, hp1⟩, hμ0⟩, hμ1⟩, hw⟩, hβ0⟩, hβ1⟩, hx0⟩, hxp⟩, -⟩, -⟩, -⟩ := hok
  have hξ0' : (0 : ℝ) < T.ξ := by exact_mod_cast hξ0
  have hw' : (0 : ℝ) < (ctl T.c).w := by exact_mod_cast hw
  refine ⟨?_, ?_, ?_, ?_, rfl, rfl⟩
  · simp only [ComplementControlValid, TermD.ctrl]
    refine ⟨by exact_mod_cast hp0, by exact_mod_cast hp1, by exact_mod_cast hμ0, by exact_mod_cast hμ1, hw',
      by exact_mod_cast hβ0, by exact_mod_cast hβ1, by exact_mod_cast hx0, by exact_mod_cast hxp, hxr,
      henv T.c, hξ0', by exact_mod_cast hξx, ?_, Real.exp_pos _, ?_, by exact_mod_cast hν0,
      by exact_mod_cast hνμ⟩
    · have h1 : (T.ξ : ℝ) < expLo (-A T.σ) := by exact_mod_cast hξA
      have h2 := expLo_le (-A T.σ)
      push_cast at h2
      exact lt_of_lt_of_le h1 h2
    · apply Real.exp_lt_exp.mpr
      have : (0 : ℝ) < T.ys := by exact_mod_cast hys
      linarith
  · simp only [SharpControl.Aγ, TermD.ctrl]
    have := le_log_of_expLeB hξ0 haU; push_cast at this; linarith
  · simp only [SharpControl.Bγ, TermD.ctrl, Real.log_exp, neg_neg]
  · simp only [SharpControl.bγ, TermD.ctrl]
    have := le_log_of_expLeB hν0 hbU; push_cast at this; linarith

theorem route_valid_of_check {ι : Type} {nCtl m : ℕ} (ctl : Fin nCtl → CtrlD) (henv : ∀ c, ComplementEnvelope (ctl c).p (ctl c).μ (ctl c).w (ctl c).β (ctl c).x)
    (A B : Fin m → ℚ) (pd : ι → ProfD) (prof : ι → BankProfile) (hprof : ∀ i, prof i = (pd i).toBP) (i0 : ι)
    (P : ProfD) (R : RouteD ι nCtl m) (h : R.check ctl A B pd i0 P = true) :
    0 < (R.margin : ℝ) ∧ ComplementPieceValid (fun i => (A i : ℝ)) (fun i => (B i : ℝ))
      prof P.toBP R.lo R.hi R.margin (.route (R.toPiece ctl B i0)) := by
  simp only [RouteD.check, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨hT, hpp⟩, hlen⟩, hM⟩, hs⟩, hθ⟩, hg0⟩, hθlo⟩, hhi⟩, hhm⟩, hmg⟩, hcells⟩, hb⟩,
    hv1⟩, hv2⟩ := h
  obtain ⟨hTv, hAU, hBeq, hbU, hwe, hpe⟩ := terminal_spec ctl henv A B R.t hT
  have hg := RouteD.g_eq ctl B i0 R hlen
  have hw' : (0 : ℝ) < (ctl R.t.c).w := by
    have := hTv.2.2.2.2.1; rwa [hwe] at this
  have hθ' : (0 : ℝ) < (R.us.getD 0 0 : ℚ) := by exact_mod_cast hθ
  refine ⟨by exact_mod_cast hmg, ?_⟩
  simp only [ComplementPieceValid]
  refine ⟨hTv, ?_, hM, ?_, ?_, by simp only [RouteD.toPiece]; exact_mod_cast hg0, ?_, ?_, ?_, ?_⟩
  · simp only [RouteD.toPiece, ProfD.toBP]; rw [hpe]; exact_mod_cast hpp
  · simp only [RoutePiece.θ, RouteD.toPiece, Fin.val_zero]; exact hθ'
  · intro i j hij
    simp only [RouteD.toPiece]
    have := sortedQ_getD_lt R.us hs i j hij (by have := j.2; change (j : ℕ) < R.ds.length + 1 at this; omega)
    exact_mod_cast this
  · simp only [RoutePiece.θ, RouteD.toPiece, Fin.val_zero]; exact_mod_cast hθlo
  · simp only [RoutePiece.ω, RouteD.toPiece, Fin.val_last]; exact_mod_cast hhi
  · intro j
    rw [List.all_eq_true] at hcells
    have hc := hcells j (List.mem_range.mpr j.2)
    simp only [RouteD.cellCheck, Bool.and_eq_true, decide_eq_true_eq] at hc
    obtain ⟨⟨⟨⟨⟨⟨hlo, hhi'⟩, hz0⟩, hez⟩, hz1⟩, hbc⟩, hge⟩ := hc
    simp only [RouteD.toPiece, hprof, ProfD.toBP, Fin.val_succ, Fin.val_castSucc]
    refine ⟨by exact_mod_cast hlo, by exact_mod_cast hhi', ?_, fun s h1 h2 => ?_⟩
    · have hz0' : (0 : ℝ) < (R.calls.getD (↑j) ⟨i0, 0, []⟩).z := by exact_mod_cast hz0
      have h1 := le_log_of_expLeB hz0 hez
      have h2 : Real.log ((R.calls.getD (↑j) ⟨i0, 0, []⟩).z : ℝ) <
          Real.log (1 - ((pd (R.calls.getD (↑j) ⟨i0, 0, []⟩).ch).p : ℝ)) :=
        Real.log_lt_log hz0' (by exact_mod_cast hz1)
      push_cast at h1
      linarith
    · have h3 := gGe_spec hbc hge s h1 h2
      have e := hg s
      simp only [RouteD.toPiece] at e
      rw [e]
      have : (0 : ℝ) < R.hm := by exact_mod_cast hhm
      push_cast at h3 ⊢
      linarith
  · intro r h1 h2
    have hr0 : 0 < r := lt_of_lt_of_le (lt_of_lt_of_le hθ' (by exact_mod_cast hθlo)) h1
    have e1 := gLe_spec hb hv1 r h1 h2
    have e2 := gLe_spec hb hv2 r h1 h2
    simp only [RoutePiece.value, ProfD.toBP]
    rw [hg r, show (R.toPiece ctl B i0).g₀ = (R.g0 : ℝ) from rfl]
    simp only [RoutePiece.θ, RouteD.toPiece, Fin.val_zero, hwe]
    push_cast at e1 e2
    rw [add_max]
    refine max_le (by linarith) ?_
    rw [hBeq]
    set w : ℝ := ((ctl R.t.c).w : ℝ)
    have hw1 : 0 < 1 + w := by linarith
    have hA := hAU
    have hbb : w * ((R.us.getD 0 0 : ℚ) : ℝ) * (R.t.ctrl ctl B).bγ ≤ w * (R.us.getD 0 0 : ℚ) * R.t.bU :=
      mul_le_mul_of_nonneg_left hbU (by positivity)
    have key : ((R.t.ctrl ctl B).Aγ + r * ((B R.t.σ : ℝ) + R.t.ys) +
        w * (((R.us.getD 0 0 : ℚ) : ℝ) * (R.t.ctrl ctl B).bγ + (R.g0 + gL R.us R.ds r) - R.g0)) / (1 + w) ≤
        (R.t.aU + w * (R.us.getD 0 0 : ℚ) * R.t.bU) / (1 + w) + ((B R.t.σ : ℝ) + R.t.ys) / (1 + w) * r +
          w / (1 + w) * gL R.us R.ds r := by
      rw [show (R.t.aU + w * (R.us.getD 0 0 : ℚ) * R.t.bU) / (1 + w) + ((B R.t.σ : ℝ) + R.t.ys) / (1 + w) * r +
          w / (1 + w) * gL R.us R.ds r = (R.t.aU + w * (R.us.getD 0 0 : ℚ) * R.t.bU + ((B R.t.σ : ℝ) + R.t.ys) * r +
          w * gL R.us R.ds r) / (1 + w) by ring]
      apply div_le_div_of_nonneg_right _ hw1.le
      nlinarith
    linarith

/-- Complementary route checks imply proper-host pieces without an old scalar
certificate or an assumed source bound on the current host. -/
theorem route_pieceOK {nCtl m nR nC : ℕ}
    (ctl : Fin nCtl → CtrlD)
    (henv : ∀ c, ComplementEnvelope (ctl c).p (ctl c).μ (ctl c).w (ctl c).β (ctl c).x)
    (A B : Fin m → ℚ) (hA : ∀ i, 0 < A i) (hB : ∀ i, 0 < B i)
    (pd : (Fin nR ⊕ Fin nC) → ProfD)
    (raw : Fin nR → BankProfile) (closed : Fin nC → BankProfile)
    (hprof : ∀ i, Sum.elim raw closed i = (pd i).toBP)
    (hraw : ∀ i, (raw i).Valid) (hclosed : ∀ i, (closed i).Valid)
    (i0 : Fin nR ⊕ Fin nC) (P : ProfD) (hP : P.toBP.Valid)
    (R : RouteD (Fin nR ⊕ Fin nC) nCtl m)
    (h : R.check ctl A B pd i0 P = true) :
    ∃ K, PieceOK raw closed (fun i => (A i : ℝ)) (fun i => (B i : ℝ))
      P.toBP R.lo R.hi K := by
  obtain ⟨hm, hv⟩ := route_valid_of_check ctl henv A B pd (Sum.elim raw closed)
    hprof i0 P R h
  exact complementary_raw_piece_ok (fun i => by exact_mod_cast hA i)
    (fun i => by exact_mod_cast hB i) hraw hclosed P.toBP hP _ _ _ hm _ hv

#print axioms route_pieceOK
#print axioms terminal_spec
#print axioms route_valid_of_check
end DiagonalRamsey.ComplementRoutes
