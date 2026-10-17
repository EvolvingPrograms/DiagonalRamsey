import S7_ParameterChoice.Source.Joint.Routes.RouteFastAdapter
import S7_ParameterChoice.Source.Joint.Routes.FastIntegral

set_option autoImplicit false
namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily FQ

structure PrefixData where
  values : List FQ

/-- Prefix data are determined by the route entries, in the same order. -/
def routePrefixes (entries : List FastEntry) : List PrefixData :=
  entries.map fun e => ⟨FQ.integralPrefixes e.recipe.us e.recipe.ds⟩

def prefixPointCheck {ι : Type} {n m : ℕ} (r : RouteF ι n m) (j : ℕ) (x : FQ) : Bool :=
  decide (j < r.ds.length) && le (r.us.getD j zero) x && le x (r.us.getD (j+1) zero)

def prefixCell (us : List FQ) (x : FQ) : ℕ :=
  us.findIdx (fun u => le x u) - 1

def gLePrefix {ι : Type} {n m : ℕ} (r : RouteF ι n m) (ps : List FQ)
    (p : ProfF) (c0 c1 c2 : FQ) (bp : List FQ) : Bool :=
  sortedF p.xs && noKnotF p.xs bp && noKnotF r.us bp && bp.all (fun x =>
    let j := prefixCell r.us x
    prefixPointCheck r j x && le (add (add c0 (mul c1 x))
      (mul c2 (integralPrefixValue r.us r.ds ps j x))) (evalF p.xs p.ys x))

def gGePrefix {ι : Type} {n m : ℕ} (r : RouteF ι n m) (ps : List FQ)
    (j : ℕ) (p : ProfF) (c0 c1 c2 : FQ) (bp : List FQ) : Bool :=
  sortedF p.xs && noKnotF p.xs bp && noKnotF r.us bp && bp.all (fun x =>
    prefixPointCheck r j x && le (evalF p.xs p.ys x)
      (add (add c0 (mul c1 x)) (mul c2 (integralPrefixValue r.us r.ds ps j x))))

private theorem prefixPoint_sound {ι : Type} {n m : ℕ} (r : RouteF ι n m)
    (ps : List FQ) (hc : integralPrefixesCheck r.us r.ds ps = true)
    (hz : FQ.eq (ps.headD zero) zero = true) (hs : sortedF r.us = true)
    (j : ℕ) (x : FQ) (h : prefixPointCheck r j x = true) :
    (gLF r.us r.ds x).toQ = (integralPrefixValue r.us r.ds ps j x).toQ := by
  simp only [prefixPointCheck, Bool.and_eq_true, decide_eq_true_eq] at h
  exact gLF_eq_prefixValue r.us r.ds ps hc hz hs j h.1.1 x h.1.2 h.2

private theorem gLePrefix_sound {ι : Type} {n m : ℕ} (r : RouteF ι n m)
    (ps : List FQ) (hc : integralPrefixesCheck r.us r.ds ps = true)
    (hz : FQ.eq (ps.headD zero) zero = true) (hs : sortedF r.us = true)
    (p : ProfF) (c0 c1 c2 : FQ) (bp : List FQ)
    (h : gLePrefix r ps p c0 c1 c2 bp = true) :
    gLeF p r.us r.ds c0 c1 c2 bp = true := by
  simp only [gLePrefix, gLeF, Bool.and_eq_true] at h ⊢
  refine ⟨h.1, List.all_eq_true.mpr ?_⟩
  intro x hx
  have hp := Bool.and_eq_true_iff.mp (List.all_eq_true.mp h.2 x hx)
  have he := prefixPoint_sound r ps hc hz hs _ x hp.1
  simpa only [FQ.le_eq, FQ.toQ_add, FQ.toQ_mul, he] using hp.2

private theorem gGePrefix_sound {ι : Type} {n m : ℕ} (r : RouteF ι n m)
    (ps : List FQ) (hc : integralPrefixesCheck r.us r.ds ps = true)
    (hz : FQ.eq (ps.headD zero) zero = true) (hs : sortedF r.us = true)
    (j : ℕ) (p : ProfF) (c0 c1 c2 : FQ) (bp : List FQ)
    (h : gGePrefix r ps j p c0 c1 c2 bp = true) :
    gGeF p r.us r.ds c0 c1 c2 bp = true := by
  simp only [gGePrefix, gGeF, Bool.and_eq_true] at h ⊢
  refine ⟨h.1, List.all_eq_true.mpr ?_⟩
  intro x hx
  have hp := Bool.and_eq_true_iff.mp (List.all_eq_true.mp h.2 x hx)
  have he := prefixPoint_sound r ps hc hz hs j x hp.1
  simpa only [FQ.le_eq, FQ.toQ_add, FQ.toQ_mul, he] using hp.2


def _root_.DiagonalRamsey.JointGeometry.RouteF.cellPrefix {ι : Type} {nCtl m : ℕ} (pd : ι → ProfF) (i0 : ι)
    (R : RouteF ι nCtl m) (ps : List FQ) (j : ℕ) : Bool :=
  let cl := R.calls.getD j ⟨i0, zero, []⟩
  let Pc := pd cl.ch
  le (Pc.xs.headD zero) (R.us.getD j zero) && le (R.us.getD (j + 1) zero) (Pc.xs.getLastD zero) &&
    lt zero cl.z && true && lt cl.z (sub one Pc.p) &&
    bpOkF cl.bp (R.us.getD j zero) (R.us.getD (j + 1) zero) &&
    gGePrefix R ps j Pc (sub R.g0 R.hm) zero one cl.bp

def _root_.DiagonalRamsey.JointGeometry.RouteF.checkPrefix {ι : Type} {nCtl m : ℕ} (ctl : Fin nCtl → CtrlF)
    (A B : Fin m → FQ) (pd : ι → ProfF) (i0 : ι) (P : ProfF)
    (R : RouteF ι nCtl m) (ps : List FQ) : Bool :=
  let w := (ctl R.t.c).w
  let θ := R.us.getD 0 zero
  integralPrefixesCheck R.us R.ds ps && FQ.eq (ps.headD zero) zero &&
    R.t.check ctl A && lt (ctl R.t.c).p P.p && decide (R.us.length = R.ds.length + 1) &&
    decide (0 < R.ds.length) && sortedF R.us && lt zero θ && lt zero R.g0 && le θ R.lo &&
    le R.hi (R.us.getD R.ds.length zero) && lt zero R.hm && lt zero R.margin &&
    (List.range R.ds.length).all (R.cellPrefix pd i0 ps) && bpOkF R.bp R.lo R.hi &&
    gLePrefix R ps P (add R.margin R.g0) zero one R.bp &&
    gLePrefix R ps P (add R.margin (div (add R.t.aU (mul (mul w θ) R.t.bU)) (add one w)))
      (div (add (B R.t.σ) R.t.ys) (add one w)) (div w (add one w)) R.bp

theorem _root_.DiagonalRamsey.JointGeometry.RouteF.checkPrefix_imp {ι : Type} {n m : ℕ}
    (ctl : Fin n → CtrlF) (A B : Fin m → FQ) (pd : ι → ProfF) (i0 : ι)
    (P : ProfF) (R : RouteF ι n m) (ps : List FQ)
    (h : R.checkPrefix ctl A B pd i0 P ps = true) :
    R.checkNoExp ctl A B pd i0 P = true := by
  simp only [RouteF.checkPrefix, Bool.and_eq_true] at h
  have hc : integralPrefixesCheck R.us R.ds ps = true := by tauto
  have hz : FQ.eq (ps.headD zero) zero = true := by tauto
  have hs : sortedF R.us = true := by tauto
  have hcells : (List.range R.ds.length).all (R.cellPrefix pd i0 ps) = true := by tauto
  have hcells' : (List.range R.ds.length).all (R.cellNoExp pd i0) = true := by
    apply List.all_eq_true.mpr
    intro j hj
    have hjc := List.all_eq_true.mp hcells j hj
    have hg : gGePrefix R ps j (pd (R.calls.getD j ⟨i0, zero, []⟩).ch)
        (sub R.g0 R.hm) zero one (R.calls.getD j ⟨i0, zero, []⟩).bp = true := by
      simp only [RouteF.cellPrefix, Bool.and_eq_true] at hjc
      exact hjc.2
    have hg' := gGePrefix_sound R ps hc hz hs j _ _ _ _ _ hg
    simp only [RouteF.cellPrefix, RouteF.cellNoExp, Bool.and_eq_true] at *
    tauto
  have hle : gLePrefix R ps P (add R.margin R.g0) zero one R.bp = true := by tauto
  have hle' := gLePrefix_sound R ps hc hz hs _ _ _ _ _ hle
  have hterminal : gLePrefix R ps P
      (add R.margin (div (add R.t.aU (mul (mul (ctl R.t.c).w (R.us.getD 0 zero)) R.t.bU))
        (add one (ctl R.t.c).w)))
      (div (add (B R.t.σ) R.t.ys) (add one (ctl R.t.c).w))
      (div (ctl R.t.c).w (add one (ctl R.t.c).w)) R.bp = true := by tauto
  have hterminal' := gLePrefix_sound R ps hc hz hs _ _ _ _ _ hterminal
  simp only [RouteF.checkNoExp, Bool.and_eq_true]
  tauto

def FastEntry.checkPrefix (table : List ExpPair) (e : FastEntry) (ps : PrefixData) : Bool :=
  e.recipe.checkPrefix (fun _ => ctrlFromD (controls e.controlIndex))
    (fun i => FQ.ofRat (sourceAq i)) (fun i => FQ.ofRat (sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.rawIndex)) ps.values &&
      e.toEntry.boundsCheck && e.expMatches table

theorem FastEntry.checkPrefix_imp (table : List ExpPair) (e : FastEntry) (ps : PrefixData)
    (h : e.checkPrefix table ps = true) : e.check table = true := by
  simp only [FastEntry.checkPrefix, Bool.and_eq_true] at h
  have hc := e.recipe.checkPrefix_imp (fun _ => ctrlFromD (controls e.controlIndex))
    (fun i => FQ.ofRat (sourceAq i)) (fun i => FQ.ofRat (sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.rawIndex)) ps.values h.1.1
  exact Bool.and_eq_true_iff.mpr ⟨Bool.and_eq_true_iff.mpr ⟨hc, h.1.2⟩, h.2⟩

def prefixChecks (table : List ExpPair) : List FastEntry → List PrefixData → Bool
  | [], [] => true
  | e :: es, p :: ps => e.checkPrefix table p && prefixChecks table es ps
  | _, _ => false

theorem prefixChecks_imp (table : List ExpPair) : ∀ (es : List FastEntry) (ps : List PrefixData),
    prefixChecks table es ps = true → es.all (FastEntry.check table) = true
  | [], [], _ => rfl
  | e :: es, p :: ps, h => by
      simp only [prefixChecks, Bool.and_eq_true] at h
      simp only [List.all_cons, e.checkPrefix_imp table p h.1,
        prefixChecks_imp table es ps h.2, Bool.true_and]
  | [], _ :: _, h => by simp [prefixChecks] at h
  | _ :: _, [], h => by simp [prefixChecks] at h

#print axioms RouteF.checkPrefix_imp
#print axioms FastEntry.checkPrefix_imp
#print axioms prefixChecks_imp
end DiagonalRamsey.JointCachedRoutes
