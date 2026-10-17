import S7_ParameterChoice.Source.JointFamily
import Support.Published.Lemmas.DiagRamsey_JB_Raw
import Support.Controls.Candidate600PL

/-!
Consecutive-interval and raw-checker soundness laws below are narrow reuse
from `Lemmas.DiagRamsey_V5Assemble`, by turibius-of-mogrovejo. Their generic
proofs do not need the original source-foundation or whole-bank imports.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace DiagonalRamsey.JointRecipes

open DiagRamsey DiagRamsey.V5 JointGeometry

/-- `ps` are consecutive intervals from `a` to `b`: `p₀.lo = a`, `pⱼ.hi = pⱼ₊₁.lo`, last `hi = b`. -/
def chainQ : ℚ → List (ℚ × ℚ) → ℚ → Bool
  | a, [p], b => decide (p.1 = a) && decide (p.2 = b)
  | a, p :: q :: rest, b => decide (p.1 = a) && chainQ p.2 (q :: rest) b
  | _, [], _ => false

lemma chain_cover : ∀ (ps : List (ℚ × ℚ)) (a b : ℚ), chainQ a ps b = true →
    ∀ r : ℝ, (a : ℝ) ≤ r → r ≤ b → ∃ p ∈ ps, (p.1 : ℝ) ≤ r ∧ r ≤ p.2
  | [p], a, b, h, r, h1, h2 => by
      simp only [chainQ, Bool.and_eq_true, decide_eq_true_eq] at h
      exact ⟨p, by simp, by rw [h.1]; exact h1, by rw [h.2]; exact h2⟩
  | p :: q :: rest, a, b, h, r, h1, h2 => by
      simp only [chainQ, Bool.and_eq_true, decide_eq_true_eq] at h
      by_cases hr : r ≤ p.2
      · exact ⟨p, by simp, by rw [h.1]; exact h1, hr⟩
      · obtain ⟨x, hx, hx1, hx2⟩ := chain_cover (q :: rest) p.2 b h.2 r (le_of_lt (not_le.mp hr)) h2
        exact ⟨x, List.mem_cons_of_mem _ hx, hx1, hx2⟩
  | [], _, _, h, _, _, _ => by simp [chainQ] at h

lemma chain_cover_fin {α : Type} (l : List α) (f : α → ℚ × ℚ) (a b : ℚ) (h : chainQ a (l.map f) b = true)
    (r : ℝ) (h1 : (a : ℝ) ≤ r) (h2 : r ≤ b) : ∃ J : Fin l.length, ((f (l.get J)).1 : ℝ) ≤ r ∧ r ≤ (f (l.get J)).2 := by
  obtain ⟨p, hp, hp1, hp2⟩ := chain_cover _ a b h r h1 h2
  obtain ⟨x, hx, rfl⟩ := List.mem_map.mp hp
  obtain ⟨J, rfl⟩ := List.get_of_mem hx
  exact ⟨J, hp1, hp2⟩

inductive RawD (ι : Type) (nCtl m : ℕ)
  | leaf (L : LeafD nCtl m)
  | route (R : RouteD ι nCtl m)

variable {ι : Type} {nCtl m : ℕ}

def RawD.lo : RawD ι nCtl m → ℚ
  | .leaf L => L.lo
  | .route R => R.lo

def RawD.hi : RawD ι nCtl m → ℚ
  | .leaf L => L.hi
  | .route R => R.hi

def RawD.margin : RawD ι nCtl m → ℚ
  | .leaf L => L.margin
  | .route R => R.margin

noncomputable def RawD.toPiece (ctl : Fin nCtl → CtrlD) (B : Fin m → ℚ) (i0 : ι) : RawD ι nCtl m → RawPiece ι m
  | .leaf L => .leaf (L.ctrl ctl B)
  | .route R => .route (R.toPiece ctl B i0)

def RawD.check (ctl : Fin nCtl → CtrlD) (A B : Fin m → ℚ) (pd : ι → ProfD) (i0 : ι) (P : ProfD) :
    RawD ι nCtl m → Bool
  | .leaf L => L.check ctl A B P
  | .route R => R.check ctl A B pd i0 P

lemma RawD.valid_of_check (ctl : Fin nCtl → CtrlD) (hcert : ∀ c, (ctl c).CertOK) (A B : Fin m → ℚ)
    (pd : ι → ProfD) (prof : ι → BankProfile) (hprof : ∀ i, prof i = (pd i).toBP) (i0 : ι) (P : ProfD)
    (x : RawD ι nCtl m) (h : x.check ctl A B pd i0 P = true) :
    0 < (x.margin : ℝ) ∧ (x.toPiece ctl B i0).Valid' (fun i => (A i : ℝ)) (fun i => (B i : ℝ)) prof P.toBP
      x.lo x.hi x.margin := by
  cases x with
  | leaf L => exact LeafD.valid_of_check ctl hcert A B prof P L h
  | route R => exact RouteD.valid_of_check ctl hcert A B pd prof hprof i0 P R h


/-- **Adjacent knot intervals.** Each inherited recipe uses one interval
between consecutive knots of its PL profile. -/
def knotIntervals : List ℚ → List (ℚ × ℚ)
  | x :: y :: xs => (x, y) :: knotIntervals (y :: xs)
  | _ => []

theorem knotIntervals_chain : ∀ xs : List ℚ, 2 ≤ xs.length →
    chainQ (xs.headD 0) (knotIntervals xs) (xs.getLastD 0) = true
  | [], h => by simp at h
  | [_], h => by simp at h
  | [x, y], _ => by simp [knotIntervals, chainQ]
  | x :: y :: z :: xs, _ => by
      have ih := knotIntervals_chain (y :: z :: xs) (by simp)
      simpa only [knotIntervals, chainQ, List.headD_cons,
        List.getLastD_eq_getLast?, List.getLast?_cons_cons, decide_true, Bool.true_and] using ih

theorem ProfD.knots_length {P : ProfD} {m : ℚ} (h : P.ok m = true) : 2 ≤ P.xs.length := by
  simp only [ProfD.ok, Bool.and_eq_true, decide_eq_true_eq] at h
  exact h.1.1.1.1.1.1.2

theorem ProfF.knots_length {P : ProfF} {m : FQ} (h : P.ok m = true) : 2 ≤ P.toD.xs.length :=
  ProfD.knots_length (P.ok_imp m h)

theorem raw_datum_ok (i : JointFamily.RawIndex) : ∃ m, (JointFamily.rawDatum i).ok m = true := by
  unfold JointFamily.rawDatum
  split_ifs with h h' h'' h'''
  · exact ⟨_, ProfF.ok_imp _ _ (List.all_eq_true.mp JointData.raw_checked _ (List.getElem_mem _))⟩
  · exact ⟨_, SourceProfiles.checked_profile015⟩
  · exact ⟨_, SourceProfiles.checked_profile016⟩
  · exact ⟨_, ProfF.ok_imp _ _ (JointData.appendedRaw_checked _)⟩
  · exact ⟨_, ProfF.ok_imp _ _ (JointData.customChild_checked _)⟩

theorem raw_knots_length (i : JointFamily.RawIndex) : 2 ≤ (JointFamily.rawDatum i).xs.length := by
  obtain ⟨m, h⟩ := raw_datum_ok i
  exact ProfD.knots_length h

theorem closed_knots_length (i : JointFamily.ClosedIndex) :
    2 ≤ (JointFamily.closedDatum i).xs.length := by
  apply ProfF.knots_length
  exact List.all_eq_true.mp JointData.closed_checked _ (List.getElem_mem _)

def rawIntervals (i : JointFamily.RawIndex) : List (ℚ × ℚ) :=
  knotIntervals (JointFamily.rawDatum i).xs

def closedIntervals (i : JointFamily.ClosedIndex) : List (ℚ × ℚ) :=
  knotIntervals (JointFamily.closedDatum i).xs

def nRP (i : JointFamily.RawIndex) : ℕ := (rawIntervals i).length
def rpLo (i : JointFamily.RawIndex) (j : Fin (nRP i)) : ℝ := ((rawIntervals i).get j).1
def rpHi (i : JointFamily.RawIndex) (j : Fin (nRP i)) : ℝ := ((rawIntervals i).get j).2

def nCP (i : JointFamily.ClosedIndex) : ℕ := (closedIntervals i).length
def cpLo (i : JointFamily.ClosedIndex) (j : Fin (nCP i)) : ℝ := ((closedIntervals i).get j).1
def cpHi (i : JointFamily.ClosedIndex) (j : Fin (nCP i)) : ℝ := ((closedIntervals i).get j).2

theorem sortedQ_bounds : ∀ xs : List ℚ, PL.sortedQ xs = true →
    ∀ x ∈ xs, xs.headD 0 ≤ x ∧ x ≤ xs.getLastD 0
  | [], _, _, h => by simp at h
  | [a], _, x, h => by
      simp only [List.mem_singleton] at h
      subst x
      exact ⟨le_rfl, le_rfl⟩
  | a :: b :: xs, hs, x, hx => by
      simp only [PL.sortedQ, Bool.and_eq_true, decide_eq_true_eq] at hs
      rcases List.mem_cons.mp hx with rfl | hx
      · have hb := (sortedQ_bounds (b :: xs) hs.2 b (by simp)).2
        constructor
        · exact le_rfl
        · simpa only [List.headD_cons, List.getLastD_eq_getLast?, List.getLast?_cons_cons] using hs.1.le.trans hb
      · have hb := sortedQ_bounds (b :: xs) hs.2 x hx
        constructor
        · exact hs.1.le.trans hb.1
        · simpa only [List.getLastD_eq_getLast?, List.getLast?_cons_cons] using hb.2

theorem knotIntervals_mem : ∀ xs : List ℚ, ∀ p ∈ knotIntervals xs, p.1 ∈ xs ∧ p.2 ∈ xs
  | [], _, h => by simp [knotIntervals] at h
  | [_], _, h => by simp [knotIntervals] at h
  | a :: b :: xs, p, h => by
      rcases List.mem_cons.mp h with rfl | h
      · simp
      · have hp := knotIntervals_mem (b :: xs) p h
        exact ⟨List.mem_cons_of_mem _ hp.1, List.mem_cons_of_mem _ hp.2⟩

theorem knotInterval_bounds (P : ProfD) (hs : PL.sortedQ P.xs = true)
    (j : Fin (knotIntervals P.xs).length) :
    P.toBP.lo ≤ (((knotIntervals P.xs).get j).1 : ℝ) ∧
      (((knotIntervals P.xs).get j).2 : ℝ) ≤ P.toBP.hi := by
  have hm := knotIntervals_mem P.xs _ (List.getElem_mem j.isLt)
  simp only [ProfD.toBP]
  constructor
  · exact_mod_cast (sortedQ_bounds _ hs _ hm.1).1
  · exact_mod_cast (sortedQ_bounds _ hs _ hm.2).2

/-- Every raw knot interval lies inside its profile's domain. -/
theorem raw_interval_bounds (i : JointFamily.RawIndex) (j : Fin (nRP i)) :
    (JointFamily.raw i).lo ≤ rpLo i j ∧ rpHi i j ≤ (JointFamily.raw i).hi := by
  obtain ⟨m, h⟩ := raw_datum_ok i
  simp only [ProfD.ok, Bool.and_eq_true, decide_eq_true_eq] at h
  exact knotInterval_bounds _ h.1.1.1.1.2 j

/-- **Raw ratio cover.** Consecutive knot intervals cover the entire raw
profile domain, including their shared endpoints. -/
theorem raw_ratio_cover (i : JointFamily.RawIndex) (r : ℝ)
    (hlo : (JointFamily.raw i).lo ≤ r) (hhi : r ≤ (JointFamily.raw i).hi) :
    ∃ j, rpLo i j ≤ r ∧ r ≤ rpHi i j := by
  exact chain_cover_fin (rawIntervals i) id _ _
    (by simpa only [List.map_id, rawIntervals] using knotIntervals_chain _ (raw_knots_length i)) r hlo hhi

/-- **Closed ratio cover.** The same knot partition covers every closed
profile, independently of the validity of its donor recipes. -/
theorem closed_ratio_cover (i : JointFamily.ClosedIndex) (r : ℝ)
    (hlo : (JointFamily.closed i).lo ≤ r) (hhi : r ≤ (JointFamily.closed i).hi) :
    ∃ j, cpLo i j ≤ r ∧ r ≤ cpHi i j := by
  exact chain_cover_fin (closedIntervals i) id _ _
    (by simpa only [List.map_id, closedIntervals] using knotIntervals_chain _ (closed_knots_length i)) r hlo hhi

/-- **Restriction of a raw implication.** A whole-route argument also
supplies each knot interval; its proper-subhost premise is unchanged. -/
theorem pieceOK_restrict {m nR nC K : ℕ} {raw : Fin nR → BankProfile}
    {closed : Fin nC → BankProfile} {A B : Fin m → ℝ} {P : BankProfile}
    {lo hi lo' hi' : ℝ} (hlo : lo ≤ lo') (hhi : hi' ≤ hi)
    (h : PieceOK raw closed A B P lo hi K) : PieceOK raw closed A B P lo' hi' K := by
  intro C hC V _ _ hJ G k b hK hk hb h1 h2 hP hd hs
  exact h C hC V hJ G k b hK hk hb (hlo.trans h1) (h2.trans hhi) hP hd hs

/-- Donor indices may be relabelled without changing a closed recipe. -/
def reindexClosed {n n' : ℕ} (e : Fin n → Fin n') : ClosedPiece n → ClosedPiece n'
  | .rawDensity r => .rawDensity (e r)
  | .complRaw r s => .complRaw (e r) (e s)
  | .ratioMono r c c' => .ratioMono (e r) c c'
  | .complRatioMono r s c c' => .complRatioMono (e r) (e s) c c'

theorem reindexClosed_valid {n n' : ℕ} (e : Fin n → Fin n')
    {raw : Fin n → BankProfile} {target : Fin n' → BankProfile}
    (he : ∀ i, target (e i) = raw i) {P : BankProfile} {lo hi : ℝ}
    (pc : ClosedPiece n) (h : pc.Valid raw P lo hi) :
    (reindexClosed e pc).Valid target P lo hi := by
  cases pc <;> simpa only [reindexClosed, ClosedPiece.Valid, he] using h

/-- **Exact custom-600 curve.** The existing checked prefix arithmetic
uses precisely the PL curve stored in raw slot 1463. Its children and analytic
control still require their proper-host proofs. -/
theorem custom600_profile : JointFamily.raw 1463 =
    ⟨(RamseyAnalytic.Candidate600Prefix.data.p : ℝ),
      RamseyAnalytic.Candidate600Prefix.lo, RamseyAnalytic.Candidate600Prefix.hi,
      DiagRamsey.PL.evalR RamseyAnalytic.Candidate600PL.nodes RamseyAnalytic.Candidate600PL.values⟩ := by
  have he : JointFamily.rawDatum 1463 =
      ⟨RamseyAnalytic.Candidate600Prefix.data.p,
        RamseyAnalytic.Candidate600PL.nodes, RamseyAnalytic.Candidate600PL.values⟩ :=
    eq_of_sameDatum (by decide +kernel)
  rw [JointFamily.raw, he]
  rfl

/-- **Checked inherited raw piece.** Analytic control certificates and a
finite rational recipe check give the proper-host implication used by joint
induction. Neither source nor profile admissibility is assumed here. -/
theorem RawD.pieceOK {nCtl m nR nC : ℕ}
    (ctl : Fin nCtl → CtrlD) (hcert : ∀ c, (ctl c).CertOK)
    (A B : Fin m → ℚ) (hA : ∀ i, 0 < A i) (hB : ∀ i, 0 < B i)
    (pd : (Fin nR ⊕ Fin nC) → ProfD)
    (raw : Fin nR → BankProfile) (closed : Fin nC → BankProfile)
    (hprof : ∀ i, Sum.elim raw closed i = (pd i).toBP)
    (hraw : ∀ i, (raw i).Valid) (hclosed : ∀ i, (closed i).Valid)
    (i0 : Fin nR ⊕ Fin nC) (P : ProfD) (hP : P.toBP.Valid)
    (x : RawD (Fin nR ⊕ Fin nC) nCtl m)
    (h : x.check ctl A B pd i0 P = true) :
    ∃ K, PieceOK raw closed (fun i => (A i : ℝ)) (fun i => (B i : ℝ))
      P.toBP x.lo x.hi K := by
  obtain ⟨hm, hv⟩ := x.valid_of_check ctl hcert A B pd (Sum.elim raw closed) hprof i0 P h
  exact raw_piece_ok' (fun i => by exact_mod_cast hA i) (fun i => by exact_mod_cast hB i)
    hraw hclosed P.toBP hP _ _ _ hm _ hv

#print axioms raw_ratio_cover
#print axioms closed_ratio_cover
#print axioms pieceOK_restrict
#print axioms reindexClosed_valid
#print axioms custom600_profile
#print axioms RawD.pieceOK

end DiagonalRamsey.JointRecipes
