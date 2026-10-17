import S7_ParameterChoice.Source.Joint.Transfers.FastClosed
import S7_ParameterChoice.Source.Joint.Assembly.Recipes

/-! Narrow, attributed reuse of the terminal and leaf checker in
`Lemmas.DiagRamsey_V5Fast`, by turibius-of-mogrovejo. A terminal check is
separate from its PL comparison, so a grouped run checks it only once. -/

set_option autoImplicit false

namespace DiagonalRamsey.JointGeometry

open DiagRamsey DiagRamsey.V5 DiagRamsey.SharpCert FQ

def FQ.ofRat (q : ℚ) : FQ := ⟨q.num, q.den - 1⟩

theorem FQ.toQ_ofRat (q : ℚ) : (ofRat q).toQ = q := by
  simp only [ofRat, toQ, Nat.sub_add_cancel q.den_pos]
  exact q.num_div_den

structure CtrlF where
  p : FQ
  μ : FQ
  w : FQ
  β : FQ
  x : FQ
  lxU : FQ
  l1mL : FQ

def CtrlF.toD (c : CtrlF) : CtrlD :=
  ⟨c.p.toQ, c.μ.toQ, c.w.toQ, c.β.toQ, c.x.toQ, c.lxU.toQ, c.l1mL.toQ⟩

/-- **Shared terminal.** The source and exponential inequalities are
independent of the output interval and its PL breakpoint comparison. -/
structure TermF (nCtl m : ℕ) where
  c : Fin nCtl
  σ : Fin m
  ξ : FQ
  ν : FQ
  ys : FQ
  aU : FQ
  bU : FQ

def TermF.toD {nCtl m : ℕ} (T : TermF nCtl m) : TermD nCtl m :=
  ⟨T.c, T.σ, T.ξ.toQ, T.ν.toQ, T.ys.toQ, T.aU.toQ, T.bU.toQ⟩

def TermF.check {nCtl m : ℕ} (ctl : Fin nCtl → CtrlF) (A : Fin m → FQ)
    (T : TermF nCtl m) : Bool :=
  (ctl T.c).toD.ok && lt zero T.ξ && lt T.ξ (ctl T.c).x &&
    decide (T.ξ.toQ < expLo (-(A T.σ).toQ)) &&
    lt zero T.ν && lt T.ν (ctl T.c).μ && lt zero T.ys &&
    expLeB (-T.aU.toQ) T.ξ.toQ && expLeB (-T.bU.toQ) T.ν.toQ

theorem TermF.check_imp {nCtl m : ℕ} (ctl : Fin nCtl → CtrlF) (A : Fin m → FQ)
    (T : TermF nCtl m) (h : T.check ctl A = true) :
    T.toD.check (fun i => (ctl i).toD) (fun i => (A i).toQ) = true := by
  simp only [TermF.check, Bool.and_eq_true, lt_eq, toQ_zero] at h
  simp only [TermD.check, TermF.toD, CtrlF.toD, Bool.and_eq_true]
  exact h

def plGeAffF (P : ProfF) (c d : FQ) (bp : List FQ) : Bool :=
  sortedF P.xs && noKnotF P.xs bp &&
    bp.all (fun x => le (add c (mul d x)) (evalF P.xs P.ys x))

theorem plGeAffF_imp {P : ProfF} {c d : FQ} {bp : List FQ}
    (h : plGeAffF P c d bp = true) :
    plGeAffQ P.toD c.toQ d.toQ (mapQ bp) = true := by
  simp only [plGeAffF, Bool.and_eq_true] at h
  obtain ⟨⟨hP, h1⟩, h3⟩ := h
  simp only [plGeAffQ, ProfF.toD, Bool.and_eq_true]
  refine ⟨by rwa [← noKnotF_eq], all_imp (fun x _ hx => ?_) h3⟩
  rw [le_eq, toQ_add, toQ_mul, evalF_eq _ _ _ hP] at hx
  exact hx

/-- **Grouped leaf.** One terminal and one affine comparison cover all
successive output intervals carrying the same leaf parameters. -/
structure LeafF (nCtl m : ℕ) where
  terminal : TermF nCtl m
  margin : FQ
  lo : FQ
  hi : FQ
  bp : List FQ

def LeafF.toD {nCtl m : ℕ} (L : LeafF nCtl m) : LeafD nCtl m :=
  ⟨L.terminal.c, L.terminal.σ, L.terminal.ξ.toQ, L.terminal.ν.toQ,
    L.terminal.ys.toQ, L.terminal.aU.toQ, L.terminal.bU.toQ,
    L.margin.toQ, L.lo.toQ, L.hi.toQ, mapQ L.bp⟩

def LeafF.geometryCheck {nCtl m : ℕ} (ctl : Fin nCtl → CtrlF) (B : Fin m → FQ)
    (P : ProfF) (L : LeafF nCtl m) : Bool :=
  le (ctl L.terminal.c).p P.p && lt zero L.margin && lt zero L.lo &&
    bpOkF L.bp L.lo L.hi &&
    plGeAffF P (add L.margin (div L.terminal.aU (add one (ctl L.terminal.c).w)))
      (add L.margin (div (add (add (B L.terminal.σ) L.terminal.ys)
        (mul (ctl L.terminal.c).w L.terminal.bU)) (add one (ctl L.terminal.c).w))) L.bp

theorem LeafF.check_imp {nCtl m : ℕ} (ctl : Fin nCtl → CtrlF) (A B : Fin m → FQ)
    (P : ProfF) (L : LeafF nCtl m)
    (hterminal : L.terminal.check ctl A = true)
    (hgeometry : L.geometryCheck ctl B P = true) :
    L.toD.check (fun i => (ctl i).toD) (fun i => (A i).toQ)
      (fun i => (B i).toQ) P.toD = true := by
  have ht := L.terminal.check_imp ctl A hterminal
  simp only [LeafF.geometryCheck, Bool.and_eq_true] at hgeometry
  obtain ⟨⟨⟨⟨hpp, hm⟩, hlo⟩, hb⟩, hge⟩ := hgeometry
  have hg := plGeAffF_imp hge
  simp only [toQ_add, toQ_div, toQ_one, toQ_mul] at hg
  simp only [le_eq, lt_eq, toQ_zero] at hpp hm hlo
  simp only [TermD.check, TermF.toD, Bool.and_eq_true] at ht
  simp only [LeafD.check, LeafF.toD, CtrlF.toD, Bool.and_eq_true]
  exact ⟨⟨⟨⟨⟨ht, hpp⟩, hm⟩, hlo⟩, bpOkF_imp hb⟩, hg⟩

/-- **Proper-host leaf implication.** Numerical terminal and PL checks,
together with analytic control soundness, give `PieceOK`; no source or
profile Ramsey admissibility is assumed. -/
theorem LeafF.pieceOK {nCtl m nR nC : ℕ}
    (ctl : Fin nCtl → CtrlF) (hcert : ∀ c, (ctl c).toD.CertOK)
    (A B : Fin m → FQ) (hA : ∀ i, 0 < (A i).toQ) (hB : ∀ i, 0 < (B i).toQ)
    (raw : Fin nR → BankProfile) (closed : Fin nC → BankProfile)
    (P : ProfF) (hP : P.toD.toBP.Valid) (L : LeafF nCtl m)
    (hterminal : L.terminal.check ctl A = true)
    (hgeometry : L.geometryCheck ctl B P = true) :
    ∃ K, PieceOK raw closed (fun i => ((A i).toQ : ℝ))
      (fun i => ((B i).toQ : ℝ)) P.toD.toBP L.lo.toQ L.hi.toQ K := by
  obtain ⟨hm, hv⟩ := LeafD.valid_of_check (fun i => (ctl i).toD) hcert
    (fun i => (A i).toQ) (fun i => (B i).toQ) (Sum.elim raw closed) P.toD L.toD
    (L.check_imp ctl A B P hterminal hgeometry)
  exact raw_leaf_ok (fun i => by exact_mod_cast hA i) (fun i => by exact_mod_cast hB i)
    P.toD.toBP hP _ _ _ hm _ hv.1 hv.2.1 hv.2.2

#print axioms TermF.check_imp
#print axioms LeafF.check_imp
#print axioms LeafF.pieceOK

end DiagonalRamsey.JointGeometry
