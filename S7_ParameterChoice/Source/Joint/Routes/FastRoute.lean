import S7_ParameterChoice.Source.Joint.Leaves.FastLeaf

/-! Narrow reuse of the exact integer-fraction route checker and soundness
proofs from `Lemmas.DiagRamsey_V5Fast`, by turibius-of-mogrovejo. -/
set_option autoImplicit false

namespace DiagonalRamsey.JointGeometry
open DiagRamsey DiagRamsey.V5 DiagRamsey.SharpCert FQ

def gLF : List FQ → List FQ → FQ → FQ
  | u0 :: u1 :: us, d0 :: ds, s => add (mul d0 (max zero (sub (min s u1) u0))) (gLF (u1 :: us) ds s)
  | _, _, _ => zero

lemma gLF_eq : ∀ (us ds : List FQ) (s : FQ), (gLF us ds s).toQ = gLQ (mapQ us) (mapQ ds) s.toQ
  | u0 :: u1 :: us, d0 :: ds, s => by
      have ih := gLF_eq (u1 :: us) ds s
      simp only [mapQ_cons] at ih ⊢
      simp only [gLF, gLQ, toQ_add, toQ_mul, toQ_max, toQ_sub, toQ_min, toQ_zero, ih]
  | [], _, _ => by simp [gLF, gLQ, toQ_zero]
  | [_], _, _ => by simp [gLF, gLQ, toQ_zero]
  | _ :: _ :: _, [], _ => by simp [gLF, gLQ, toQ_zero]

def gLeF (P : ProfF) (us ds : List FQ) (c0 c1 c2 : FQ) (bp : List FQ) : Bool :=
  sortedF P.xs && noKnotF P.xs bp && noKnotF us bp &&
    bp.all (fun x => le (add (add c0 (mul c1 x)) (mul c2 (gLF us ds x))) (evalF P.xs P.ys x))

lemma gLeF_imp {P : ProfF} {us ds : List FQ} {c0 c1 c2 : FQ} {bp : List FQ} (h : gLeF P us ds c0 c1 c2 bp = true) :
    gLeQ P.toD (mapQ us) (mapQ ds) c0.toQ c1.toQ c2.toQ (mapQ bp) = true := by
  simp only [gLeF, Bool.and_eq_true] at h
  obtain ⟨⟨⟨hP, h1⟩, h2⟩, h3⟩ := h
  simp only [gLeQ, ProfF.toD, Bool.and_eq_true]
  refine ⟨⟨by rwa [← noKnotF_eq], by rwa [← noKnotF_eq]⟩, all_imp (fun x _ hx => ?_) h3⟩
  rw [le_eq, toQ_add, toQ_add, toQ_mul, toQ_mul, gLF_eq, evalF_eq _ _ _ hP] at hx; exact hx

def gGeF (P : ProfF) (us ds : List FQ) (c0 c1 c2 : FQ) (bp : List FQ) : Bool :=
  sortedF P.xs && noKnotF P.xs bp && noKnotF us bp &&
    bp.all (fun x => le (evalF P.xs P.ys x) (add (add c0 (mul c1 x)) (mul c2 (gLF us ds x))))

lemma gGeF_imp {P : ProfF} {us ds : List FQ} {c0 c1 c2 : FQ} {bp : List FQ} (h : gGeF P us ds c0 c1 c2 bp = true) :
    gGeQ P.toD (mapQ us) (mapQ ds) c0.toQ c1.toQ c2.toQ (mapQ bp) = true := by
  simp only [gGeF, Bool.and_eq_true] at h
  obtain ⟨⟨⟨hP, h1⟩, h2⟩, h3⟩ := h
  simp only [gGeQ, ProfF.toD, Bool.and_eq_true]
  refine ⟨⟨by rwa [← noKnotF_eq], by rwa [← noKnotF_eq]⟩, all_imp (fun x _ hx => ?_) h3⟩
  rw [le_eq, toQ_add, toQ_add, toQ_mul, toQ_mul, gLF_eq, evalF_eq _ _ _ hP] at hx; exact hx


lemma mapQ_length (l : List FQ) : (mapQ l).length = l.length := List.length_map _

lemma mapQ_getD (l : List FQ) (j : ℕ) : (mapQ l).getD j 0 = (l.getD j zero).toQ := by
  rw [show (0 : ℚ) = zero.toQ from toQ_zero.symm, mapQ]
  simp only [List.getD_eq_getElem?_getD, List.getElem?_map, Option.getD_map]

structure CallF (ι : Type) where
  ch : ι
  z : FQ
  bp : List FQ

/-- **Uniform donor along a partition.** Use the same child and retained weight
on each adjacent pair of knots. -/
def CallF.adjacent {ι : Type} (child : ι) (weight : FQ) (knots : List FQ) :
    List (CallF ι) :=
  (knots.zip knots.tail).map fun pair => ⟨child, weight, [pair.1, pair.2]⟩

/-- **Calls along a partition.** Each donor and retained weight is assigned
the corresponding consecutive knot pair. -/
def CallF.onPartition {ι : Type} (knots : List FQ) (donors : List (ι × FQ)) :
    List (CallF ι) :=
  (donors.zip (knots.zip knots.tail)).map fun (donor, interval) =>
    ⟨donor.1, donor.2, [interval.1, interval.2]⟩

def CallF.toD {ι : Type} (c : CallF ι) : CallD ι := ⟨c.ch, c.z.toQ, mapQ c.bp⟩

structure RouteF (ι : Type) (nCtl m : ℕ) where
  t : TermF nCtl m
  us : List FQ
  ds : List FQ
  calls : List (CallF ι)
  g0 : FQ
  hm : FQ
  margin : FQ
  lo : FQ
  hi : FQ
  bp : List FQ

def RouteF.toD {ι : Type} {nCtl m : ℕ} (R : RouteF ι nCtl m) : RouteD ι nCtl m :=
  ⟨R.t.toD, mapQ R.us, mapQ R.ds, R.calls.map CallF.toD, R.g0.toQ, R.hm.toQ, R.margin.toQ, R.lo.toQ, R.hi.toQ,
    mapQ R.bp⟩

def RouteF.cellCheck {ι : Type} {nCtl m : ℕ} (pd : ι → ProfF) (i0 : ι) (R : RouteF ι nCtl m) (j : ℕ) : Bool :=
  let cl := R.calls.getD j ⟨i0, zero, []⟩
  let Pc := pd cl.ch
  le (Pc.xs.headD zero) (R.us.getD j zero) && le (R.us.getD (j + 1) zero) (Pc.xs.getLastD zero) &&
    lt zero cl.z && expLeB (-(R.ds.getD j zero).toQ) cl.z.toQ && lt cl.z (sub one Pc.p) &&
    bpOkF cl.bp (R.us.getD j zero) (R.us.getD (j + 1) zero) && gGeF Pc R.us R.ds (sub R.g0 R.hm) zero one cl.bp

lemma calls_getD {ι : Type} (calls : List (CallF ι)) (i0 : ι) (j : ℕ) :
    (calls.map CallF.toD).getD j ⟨i0, 0, []⟩ = (calls.getD j ⟨i0, zero, []⟩).toD := by
  rw [show (⟨i0, 0, []⟩ : CallD ι) = CallF.toD ⟨i0, zero, []⟩ by simp [CallF.toD, toQ_zero, mapQ]]
  simp only [List.getD_eq_getElem?_getD, List.getElem?_map, Option.getD_map]

lemma RouteF.cellCheck_imp {ι : Type} {nCtl m : ℕ} (pd : ι → ProfF) (i0 : ι) (R : RouteF ι nCtl m) (j : ℕ)
    (h : R.cellCheck pd i0 j = true) : R.toD.cellCheck (fun i => (pd i).toD) i0 j = true := by
  simp only [RouteF.cellCheck, Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, h7⟩ := h
  have h6' := bpOkF_imp h6
  have h7' := gGeF_imp h7
  simp only [toQ_sub, toQ_zero, toQ_one] at h7'
  simp only [le_eq, lt_eq, toQ_zero, toQ_sub, toQ_one] at h1 h2 h3 h5
  simp only [RouteD.cellCheck, RouteF.toD, calls_getD, mapQ_getD, mapQ_headD, mapQ_getLastD, CallF.toD,
    ProfF.toD, Bool.and_eq_true]
  exact ⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6'⟩, h7'⟩

def RouteF.check {ι : Type} {nCtl m : ℕ} (ctl : Fin nCtl → CtrlF) (A B : Fin m → FQ) (pd : ι → ProfF) (i0 : ι)
    (P : ProfF) (R : RouteF ι nCtl m) : Bool :=
  let w := (ctl R.t.c).w
  let θ := R.us.getD 0 zero
  R.t.check ctl A && lt (ctl R.t.c).p P.p && decide (R.us.length = R.ds.length + 1) &&
    decide (0 < R.ds.length) && sortedF R.us && lt zero θ && lt zero R.g0 && le θ R.lo &&
    le R.hi (R.us.getD R.ds.length zero) && lt zero R.hm && lt zero R.margin &&
    (List.range R.ds.length).all (R.cellCheck pd i0) && bpOkF R.bp R.lo R.hi &&
    gLeF P R.us R.ds (add R.margin R.g0) zero one R.bp &&
    gLeF P R.us R.ds (add R.margin (div (add R.t.aU (mul (mul w θ) R.t.bU)) (add one w)))
      (div (add (B R.t.σ) R.t.ys) (add one w)) (div w (add one w)) R.bp

lemma RouteF.check_imp {ι : Type} {nCtl m : ℕ} (ctl : Fin nCtl → CtrlF) (A B : Fin m → FQ) (pd : ι → ProfF)
    (i0 : ι) (P : ProfF) (R : RouteF ι nCtl m) (h : R.check ctl A B pd i0 P = true) :
    R.toD.check (fun i => (ctl i).toD) (fun i => (A i).toQ) (fun i => (B i).toQ) (fun i => (pd i).toD) i0 P.toD
      = true := by
  simp only [RouteF.check, Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, h7⟩, h8⟩, h9⟩, h10⟩, h11⟩, h12⟩, h13⟩, h14⟩, h15⟩ := h
  have h1' := TermF.check_imp ctl A R.t h1
  have h13' := bpOkF_imp h13
  have h14' := gLeF_imp h14
  have h15' := gLeF_imp h15
  have h12' : (List.range (mapQ R.ds).length).all (R.toD.cellCheck (fun i => (pd i).toD) i0) = true := by
    rw [mapQ_length, List.all_eq_true] at *
    intro j hj; exact RouteF.cellCheck_imp pd i0 R j (h12 j hj)
  simp only [toQ_add, toQ_div, toQ_one, toQ_mul, toQ_zero] at h14' h15'
  simp only [le_eq, lt_eq, toQ_zero] at h2 h6 h7 h8 h9 h10 h11
  rw [sortedF_eq] at h5
  simp only [RouteD.check, RouteF.toD, CtrlF.toD, ProfF.toD, mapQ_getD, mapQ_length, Bool.and_eq_true] at h12' ⊢
  simp only [ProfF.toD] at h14' h15'
  exact ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨h1', h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, h7⟩, h8⟩, h9⟩, h10⟩, h11⟩, h12'⟩, h13'⟩, h14'⟩, h15'⟩


def RouteF.cellNoExp {ι : Type} {nCtl m : ℕ} (pd : ι → ProfF) (i0 : ι) (R : RouteF ι nCtl m) (j : ℕ) : Bool :=
  let cl := R.calls.getD j ⟨i0, zero, []⟩
  let Pc := pd cl.ch
  le (Pc.xs.headD zero) (R.us.getD j zero) && le (R.us.getD (j + 1) zero) (Pc.xs.getLastD zero) &&
    lt zero cl.z && true && lt cl.z (sub one Pc.p) &&
    bpOkF cl.bp (R.us.getD j zero) (R.us.getD (j + 1) zero) && gGeF Pc R.us R.ds (sub R.g0 R.hm) zero one cl.bp

def RouteF.checkNoExp {ι : Type} {nCtl m : ℕ} (ctl : Fin nCtl → CtrlF) (A B : Fin m → FQ) (pd : ι → ProfF) (i0 : ι)
    (P : ProfF) (R : RouteF ι nCtl m) : Bool :=
  let w := (ctl R.t.c).w
  let θ := R.us.getD 0 zero
  R.t.check ctl A && lt (ctl R.t.c).p P.p && decide (R.us.length = R.ds.length + 1) &&
    decide (0 < R.ds.length) && sortedF R.us && lt zero θ && lt zero R.g0 && le θ R.lo &&
    le R.hi (R.us.getD R.ds.length zero) && lt zero R.hm && lt zero R.margin &&
    (List.range R.ds.length).all (R.cellNoExp pd i0) && bpOkF R.bp R.lo R.hi &&
    gLeF P R.us R.ds (add R.margin R.g0) zero one R.bp &&
    gLeF P R.us R.ds (add R.margin (div (add R.t.aU (mul (mul w θ) R.t.bU)) (add one w)))
      (div (add (B R.t.σ) R.t.ys) (add one w)) (div w (add one w)) R.bp

theorem RouteF.check_of_noExp {ι : Type} {n m : ℕ}
    (ctl : Fin n → CtrlF) (A B : Fin m → FQ) (pd : ι → ProfF) (i0 : ι)
    (P : ProfF) (R : RouteF ι n m) (h : R.checkNoExp ctl A B pd i0 P = true)
    (he : ∀ j < R.ds.length, expLeB (-(R.ds.getD j zero).toQ)
      (R.calls.getD j ⟨i0, zero, []⟩).z.toQ = true) :
    R.check ctl A B pd i0 P = true := by
  have hg : (List.range R.ds.length).all (R.cellNoExp pd i0) = true := by
    simp only [RouteF.checkNoExp, Bool.and_eq_true] at h
    exact h.1.1.1.2
  have hc : (List.range R.ds.length).all (R.cellCheck pd i0) = true := by
    apply List.all_eq_true.mpr
    intro j hj
    have hgj := List.all_eq_true.mp hg j hj
    have hej := he j (List.mem_range.mp hj)
    simp only [RouteF.cellCheck, RouteF.cellNoExp, Bool.and_eq_true] at *
    tauto
  simp only [RouteF.checkNoExp, RouteF.check, Bool.and_eq_true] at *
  tauto

#print axioms RouteF.check_of_noExp

#print axioms RouteF.check_imp
end DiagonalRamsey.JointGeometry
