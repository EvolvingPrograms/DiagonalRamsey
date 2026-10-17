import S7_ParameterChoice.Source.Joint.Geometry

/-! Narrow reuse of the closed checker in `Lemmas.DiagRamsey_V5Fast`,
by turibius-of-mogrovejo. Integer cross-products replace normalized rational
arithmetic; the existing PL soundness theorem remains the semantic endpoint. -/

set_option autoImplicit false

namespace DiagonalRamsey.JointGeometry

open DiagRamsey DiagRamsey.V5 FQ

lemma mapQ_headD (l : List FQ) : (mapQ l).headD 0 = (l.headD zero).toQ := by
  cases l <;> simp [mapQ, toQ_zero]

lemma mapQ_getLastD (l : List FQ) : (mapQ l).getLastD 0 = (l.getLastD zero).toQ := by
  induction l with
  | nil => simp [mapQ, toQ_zero]
  | cons a t ih =>
    cases t with
    | nil => simp [mapQ]
    | cons b u => simpa [mapQ, List.getLastD_cons] using ih

def headIs (bp : List FQ) (lo : FQ) : Bool :=
  match bp with
  | x :: _ => eq x lo
  | [] => false

def lastIs (bp : List FQ) (hi : FQ) : Bool :=
  match bp.getLast? with
  | some x => eq x hi
  | none => false

def bpOkF (bp : List FQ) (lo hi : FQ) : Bool :=
  sortedF bp && headIs bp lo && lastIs bp hi && posF bp

lemma bpOkF_imp {bp : List FQ} {lo hi : FQ} (h : bpOkF bp lo hi = true) : bpOk (mapQ bp) lo.toQ hi.toQ = true := by
  simp only [bpOkF, Bool.and_eq_true] at h
  obtain ⟨⟨⟨h1, h2⟩, h3⟩, h4⟩ := h
  simp only [bpOk, Bool.and_eq_true, decide_eq_true_eq]
  refine ⟨⟨⟨by rwa [← sortedF_eq], ?_⟩, ?_⟩, by rwa [← posF_eq]⟩
  · cases bp with
    | nil => simp [headIs] at h2
    | cons x _ => simp only [headIs, eq_eq, decide_eq_true_eq] at h2; simp [mapQ, h2]
  · unfold lastIs at h3
    rw [mapQ, List.getLast?_map]
    cases hl : bp.getLast? with
    | none => rw [hl] at h3; simp at h3
    | some x => rw [hl] at h3; simp only [eq_eq, decide_eq_true_eq] at h3; simp [h3]

def plLeF (R Q : ProfF) (bp : List FQ) : Bool :=
  sortedF R.xs && sortedF Q.xs && noKnotF R.xs bp && noKnotF Q.xs bp &&
    bp.all (fun x => le (evalF R.xs R.ys x) (evalF Q.xs Q.ys x))

lemma plLeF_imp {R Q : ProfF} {bp : List FQ} (h : plLeF R Q bp = true) : plLeQ R.toD Q.toD (mapQ bp) = true := by
  simp only [plLeF, Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨hR, hQ⟩, h1⟩, h2⟩, h3⟩ := h
  simp only [plLeQ, ProfF.toD, Bool.and_eq_true]
  refine ⟨⟨by rwa [← noKnotF_eq], by rwa [← noKnotF_eq]⟩, all_imp (fun x _ hx => ?_) h3⟩
  rw [le_eq, evalF_eq _ _ _ hR, evalF_eq _ _ _ hQ] at hx; exact hx

def plReflLeF (S Q : ProfF) (bp : List FQ) : Bool :=
  sortedF S.xs && sortedF Q.xs && noKnotReflF S.xs bp && noKnotF Q.xs bp &&
    bp.all (fun x => le (mul x (evalF S.xs S.ys (div one x))) (evalF Q.xs Q.ys x))

lemma plReflLeF_imp {S Q : ProfF} {bp : List FQ} (h : plReflLeF S Q bp = true) :
    plReflLeQ S.toD Q.toD (mapQ bp) = true := by
  simp only [plReflLeF, Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨hS, hQ⟩, h1⟩, h2⟩, h3⟩ := h
  simp only [plReflLeQ, ProfF.toD, Bool.and_eq_true]
  refine ⟨⟨by rwa [← noKnotReflF_eq], by rwa [← noKnotF_eq]⟩, all_imp (fun x _ hx => ?_) h3⟩
  rw [le_eq, toQ_mul, evalF_eq _ _ _ hS, evalF_eq _ _ _ hQ, toQ_div, toQ_one] at hx; exact hx

inductive ClosedPF (nR : ℕ)
  | rawDensity (R : Fin nR) (lo hi : FQ) (bp : List FQ)
  | complRaw (R S : Fin nR) (lo hi : FQ) (bp : List FQ)

def ClosedPF.toD {nR : ℕ} : ClosedPF nR → ClosedPD nR
  | .rawDensity R lo hi bp => .rawDensity R lo.toQ hi.toQ (mapQ bp)
  | .complRaw R S lo hi bp => .complRaw R S lo.toQ hi.toQ (mapQ bp)

def ClosedPF.lo {nR : ℕ} : ClosedPF nR → FQ
  | .rawDensity _ lo _ _ => lo
  | .complRaw _ _ lo _ _ => lo

def ClosedPF.hi {nR : ℕ} : ClosedPF nR → FQ
  | .rawDensity _ _ hi _ => hi
  | .complRaw _ _ _ hi _ => hi

lemma ClosedPF.lo_toD {nR : ℕ} (c : ClosedPF nR) : c.toD.lo = c.lo.toQ := by cases c <;> rfl
lemma ClosedPF.hi_toD {nR : ℕ} (c : ClosedPF nR) : c.toD.hi = c.hi.toQ := by cases c <;> rfl

def ClosedPF.check {nR : ℕ} (raw : Fin nR → ProfF) (Q : ProfF) : ClosedPF nR → Bool
  | .rawDensity R lo hi bp =>
      le (raw R).p Q.p && le ((raw R).xs.headD zero) lo && le hi ((raw R).xs.getLastD zero) &&
        bpOkF bp lo hi && plLeF (raw R) Q bp
  | .complRaw R S lo hi bp =>
      le (add (raw R).p (raw S).p) one && le ((raw R).xs.headD zero) lo && le hi ((raw R).xs.getLastD zero) &&
        le ((raw S).xs.headD zero) (div one hi) && le (div one lo) ((raw S).xs.getLastD zero) && lt zero lo &&
        bpOkF bp lo hi && plLeF (raw R) Q bp && plReflLeF (raw S) Q bp

lemma ClosedPF.check_imp {nR : ℕ} (raw : Fin nR → ProfF) (Q : ProfF) (c : ClosedPF nR)
    (h : c.check raw Q = true) : c.toD.check (fun i => (raw i).toD) Q.toD = true := by
  cases c with
  | rawDensity R lo hi bp =>
    simp only [ClosedPF.check, Bool.and_eq_true] at h
    obtain ⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩ := h
    simp only [le_eq] at h1 h2 h3
    simp only [ClosedPF.toD, ClosedPD.check, ProfF.toD, mapQ_headD, mapQ_getLastD, Bool.and_eq_true]
    exact ⟨⟨⟨⟨h1, h2⟩, h3⟩, bpOkF_imp h4⟩, plLeF_imp h5⟩
  | complRaw R S lo hi bp =>
    simp only [ClosedPF.check, Bool.and_eq_true] at h
    obtain ⟨⟨⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, h7⟩, h8⟩, h9⟩ := h
    simp only [le_eq, lt_eq, toQ_add, toQ_one, toQ_div, toQ_zero] at h1 h2 h3 h4 h5 h6
    simp only [ClosedPF.toD, ClosedPD.check, ProfF.toD, mapQ_headD, mapQ_getLastD, Bool.and_eq_true]
    exact ⟨⟨⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, bpOkF_imp h7⟩, plLeF_imp h8⟩, plReflLeF_imp h9⟩


/-- **Fast closed certificate.** Integer arithmetic proves the original
closed-donor inequality on its entire certified interval. -/
theorem ClosedPF.valid_of_check {nR : ℕ} (raw : Fin nR → ProfF) (Q : ProfF)
    (c : ClosedPF nR) (h : c.check raw Q = true) :
    c.toD.toPiece.Valid (fun i => (raw i).toD.toBP) Q.toD.toBP
      (c.lo.toQ : ℝ) (c.hi.toQ : ℝ) := by
  simpa only [ClosedPF.lo_toD, ClosedPF.hi_toD] using
    ClosedPD.valid_of_check (fun i => (raw i).toD) Q.toD c.toD (c.check_imp raw Q h)

#print axioms ClosedPF.check_imp
#print axioms ClosedPF.valid_of_check

end DiagonalRamsey.JointGeometry
