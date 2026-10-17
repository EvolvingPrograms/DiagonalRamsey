import S7_ParameterChoice.Source.Joint.Routes.RoutePrefixAdapter

/-! Sequential list checks and their indexed interpretation. -/
set_option autoImplicit false

namespace DiagonalRamsey.JointGeometry

variable {α β γ δ : Type*}

/-- Four aligned lists are consumed once; mismatched lengths fail. -/
def zip4All (f : α → β → γ → δ → Bool) :
    List α → List β → List γ → List δ → Bool
  | [], [], [], [] => true
  | a :: as, b :: bs, c :: cs, d :: ds => f a b c d && zip4All f as bs cs ds
  | _, _, _, _ => false

theorem zip4All_lengths (f : α → β → γ → δ → Bool) :
    ∀ (as : List α) (bs : List β) (cs : List γ) (ds : List δ),
    zip4All f as bs cs ds = true →
      bs.length = as.length ∧ cs.length = as.length ∧ ds.length = as.length
  | [], [], [], [], _ => by simp
  | a :: as, b :: bs, c :: cs, d :: ds, h => by
      simp only [zip4All, Bool.and_eq_true] at h
      have ih := zip4All_lengths f as bs cs ds h.2
      simpa only [List.length_cons, Nat.add_right_cancel_iff] using ih
  | [], _ :: _, _, _, h => by simp [zip4All] at h
  | [], [], _ :: _, _, h => by simp [zip4All] at h
  | [], [], [], _ :: _, h => by simp [zip4All] at h
  | _ :: _, [], _, _, h => by simp [zip4All] at h
  | _ :: _, _ :: _, [], _, h => by simp [zip4All] at h
  | _ :: _, _ :: _, _ :: _, [], h => by simp [zip4All] at h

theorem zip4All_getD (f : α → β → γ → δ → Bool) (a0 : α) (b0 : β) (c0 : γ) (d0 : δ) :
    ∀ (as : List α) (bs : List β) (cs : List γ) (ds : List δ),
    zip4All f as bs cs ds = true → ∀ j : ℕ, j < as.length →
      f (as.getD j a0) (bs.getD j b0) (cs.getD j c0) (ds.getD j d0) = true
  | [], _, _, _, _, _, hj => by simp at hj
  | a :: as, b :: bs, c :: cs, d :: ds, h, j, hj => by
      simp only [zip4All, Bool.and_eq_true] at h
      cases j with
      | zero => exact h.1
      | succ j =>
        simpa only [List.getD_cons_succ] using
          zip4All_getD f a0 b0 c0 d0 as bs cs ds h.2 j (by simpa using hj)
  | _ :: _, [], _, _, h, _, _ => by simp [zip4All] at h
  | _ :: _, _ :: _, [], _, h, _, _ => by simp [zip4All] at h
  | _ :: _, _ :: _, _ :: _, [], h, _, _ => by simp [zip4All] at h

/-- Soundness for the usual range/getD checker, with arbitrary defaults. -/
theorem zip4All_imp (f : α → β → γ → δ → Bool) (a0 : α) (b0 : β) (c0 : γ) (d0 : δ)
    (as : List α) (bs : List β) (cs : List γ) (ds : List δ)
    (h : zip4All f as bs cs ds = true) :
    (List.range as.length).all (fun j =>
      f (as.getD j a0) (bs.getD j b0) (cs.getD j c0) (ds.getD j d0)) = true := by
  apply List.all_eq_true.mpr
  intro j hj
  exact zip4All_getD f a0 b0 c0 d0 as bs cs ds h j (List.mem_range.mp hj)

theorem zip4All_of_getD (f : α → β → γ → δ → Bool) (a0 : α) (b0 : β) (c0 : γ) (d0 : δ) :
    ∀ (as : List α) (bs : List β) (cs : List γ) (ds : List δ),
    bs.length = as.length → cs.length = as.length → ds.length = as.length →
    (∀ j : ℕ, j < as.length →
      f (as.getD j a0) (bs.getD j b0) (cs.getD j c0) (ds.getD j d0) = true) →
    zip4All f as bs cs ds = true
  | [], [], [], [], _, _, _, _ => rfl
  | a :: as, b :: bs, c :: cs, d :: ds, hb, hc, hd, h => by
      apply Bool.and_eq_true_iff.mpr
      constructor
      · exact h 0 (by simp)
      · apply zip4All_of_getD f a0 b0 c0 d0 as bs cs ds
        · simpa using hb
        · simpa using hc
        · simpa using hd
        · intro j hj
          simpa only [List.getD_cons_succ] using h (j + 1) (by simpa using hj)
  | [], _ :: _, _, _, hb, _, _, _ => by simp at hb
  | [], [], _ :: _, _, _, hc, _, _ => by simp at hc
  | [], [], [], _ :: _, _, _, hd, _ => by simp at hd
  | _ :: _, [], _, _, hb, _, _, _ => by simp at hb
  | _ :: _, _ :: _, [], _, _, hc, _, _ => by simp at hc
  | _ :: _, _ :: _, _ :: _, [], _, _, hd, _ => by simp at hd

/-- Adjacent pairs carry both interval endpoints without indexed traversal. -/
def adjacentPairs {ε : Type*} : List ε → List (ε × ε)
  | u :: v :: us => (u, v) :: adjacentPairs (v :: us)
  | _ => []

theorem adjacentPairs_length {ε : Type*} : ∀ us : List ε,
    (adjacentPairs us).length = us.length - 1
  | [] => rfl
  | [_] => rfl
  | u :: v :: us => by simp only [adjacentPairs, List.length_cons, adjacentPairs_length]; omega

theorem adjacentPairs_getD {ε : Type*} (z : ε) : ∀ (us : List ε) (j : ℕ),
    j < (adjacentPairs us).length →
    (adjacentPairs us).getD j (z, z) = (us.getD j z, us.getD (j + 1) z)
  | [], _, h => by simp [adjacentPairs] at h
  | [_], _, h => by simp [adjacentPairs] at h
  | u :: v :: us, j, h => by
      cases j with
      | zero => rfl
      | succ j =>
        simp only [adjacentPairs, List.getD_cons_succ]
        exact adjacentPairs_getD z (v :: us) j (by simpa only [adjacentPairs, List.length_cons,
          Nat.succ_lt_succ_iff] using h)

end DiagonalRamsey.JointGeometry

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey DiagRamsey.V5 JointGeometry FQ

/-- A direct cell integral expression uses only the current four-list heads. -/
def gGeLocal {ι : Type} {n m : ℕ} (R : RouteF ι n m)
    (u v d p : FQ) (P : ProfF) (c0 c1 c2 : FQ) (bp : List FQ) : Bool :=
  sortedF P.xs && noKnotF P.xs bp && noKnotF R.us bp && bp.all (fun x =>
    le u x && le x v && le (evalF P.xs P.ys x)
      (add (add c0 (mul c1 x)) (mul c2 (add p (mul d (sub x u))))))

/-- The extra final prefix is retained in the zipper for exact table alignment. -/
def cellLocal {ι : Type} {n m : ℕ} (pd : ι → ProfF) (R : RouteF ι n m)
    (uv : FQ × FQ) (d : FQ) (cl : CallF ι) (pq : FQ × FQ) : Bool :=
  let Pc := pd cl.ch
  le (Pc.xs.headD zero) uv.1 && le uv.2 (Pc.xs.getLastD zero) &&
    lt zero cl.z && true && lt cl.z (sub one Pc.p) && bpOkF cl.bp uv.1 uv.2 &&
    gGeLocal R uv.1 uv.2 d pq.1 Pc (sub R.g0 R.hm) zero one cl.bp

private theorem cellLocal_imp {ι : Type} {n m : ℕ} (pd : ι → ProfF) (i0 : ι)
    (R : RouteF ι n m) (ps : List FQ) (j : ℕ) (hj : j < R.ds.length)
    (h : cellLocal pd R (R.us.getD j zero, R.us.getD (j+1) zero)
      (R.ds.getD j zero) (R.calls.getD j ⟨i0, zero, []⟩)
      (ps.getD j zero, ps.getD (j+1) zero) = true) :
    R.cellPrefix pd i0 ps j = true := by
  have hg : gGeLocal R (R.us.getD j zero) (R.us.getD (j+1) zero)
      (R.ds.getD j zero) (ps.getD j zero)
      (pd (R.calls.getD j ⟨i0, zero, []⟩).ch) (sub R.g0 R.hm) zero one
      (R.calls.getD j ⟨i0, zero, []⟩).bp = true := by
    simp only [cellLocal, Bool.and_eq_true] at h
    exact h.2
  have hg' : gGePrefix R ps j (pd (R.calls.getD j ⟨i0, zero, []⟩).ch)
      (sub R.g0 R.hm) zero one (R.calls.getD j ⟨i0, zero, []⟩).bp = true := by
    simp only [gGeLocal, gGePrefix, Bool.and_eq_true] at hg ⊢
    refine ⟨hg.1, List.all_eq_true.mpr ?_⟩
    intro x hx
    have hv := List.all_eq_true.mp hg.2 x hx
    simpa only [prefixPointCheck, integralPrefixValue, hj, decide_true,
      Bool.true_and] using hv
  simp only [cellLocal, RouteF.cellPrefix, Bool.and_eq_true] at h ⊢
  tauto

/-- Sequential route-cell checking traverses adjacent knots, slopes, children,
and adjacent prefixes together. It does not perform indexed list lookups. -/
def _root_.DiagonalRamsey.JointGeometry.RouteF.cellsZip {ι : Type} {n m : ℕ} (pd : ι → ProfF)
    (R : RouteF ι n m) (ps : List FQ) : Bool :=
  zip4All (cellLocal pd R) (adjacentPairs R.us) R.ds R.calls (adjacentPairs ps)

/-- The sequential check supplies every existing indexed prefix-cell check.
Prefix recurrence and sortedness remain in the enclosing route checker. -/
theorem _root_.DiagonalRamsey.JointGeometry.RouteF.cellsZip_imp {ι : Type} {n m : ℕ} (pd : ι → ProfF) (i0 : ι)
    (R : RouteF ι n m) (ps : List FQ)
    (hlen : R.us.length = R.ds.length + 1) (h : R.cellsZip pd ps = true) :
    (List.range R.ds.length).all (R.cellPrefix pd i0 ps) = true := by
  have hlength : (adjacentPairs R.us).length = R.ds.length := by
    rw [adjacentPairs_length, hlen]; omega
  have hp : (adjacentPairs ps).length = R.ds.length := by
    have hh := (zip4All_lengths (cellLocal pd R) _ _ _ _ h).2.2
    exact hh.trans hlength
  apply List.all_eq_true.mpr
  intro j hjmem
  have hj := List.mem_range.mp hjmem
  have hc := zip4All_getD (cellLocal pd R) (zero, zero) zero
    (⟨i0, zero, []⟩ : CallF ι) (zero, zero)
    (adjacentPairs R.us) R.ds R.calls (adjacentPairs ps) h j (by omega)
  rw [adjacentPairs_getD zero R.us j (by omega),
    adjacentPairs_getD zero ps j (by omega)] at hc
  exact cellLocal_imp pd i0 R ps j hj hc

def _root_.DiagonalRamsey.JointGeometry.RouteF.checkZip {ι : Type} {nCtl m : ℕ} (ctl : Fin nCtl → CtrlF)
    (A B : Fin m → FQ) (pd : ι → ProfF) (_i0 : ι) (P : ProfF)
    (R : RouteF ι nCtl m) (ps : List FQ) : Bool :=
  let w := (ctl R.t.c).w
  let θ := R.us.getD 0 zero
  integralPrefixesCheck R.us R.ds ps && FQ.eq (ps.headD zero) zero &&
    R.t.check ctl A && lt (ctl R.t.c).p P.p && decide (R.us.length = R.ds.length + 1) &&
    decide (0 < R.ds.length) && sortedF R.us && lt zero θ && lt zero R.g0 && le θ R.lo &&
    le R.hi (R.us.getD R.ds.length zero) && lt zero R.hm && lt zero R.margin &&
    R.cellsZip pd ps && bpOkF R.bp R.lo R.hi &&
    gLePrefix R ps P (add R.margin R.g0) zero one R.bp &&
    gLePrefix R ps P (add R.margin (div (add R.t.aU (mul (mul w θ) R.t.bU)) (add one w)))
      (div (add (B R.t.σ) R.t.ys) (add one w)) (div w (add one w)) R.bp

/-- The enclosing route check retains every prefix and analytic premise. -/
theorem _root_.DiagonalRamsey.JointGeometry.RouteF.checkZip_imp {ι : Type} {n m : ℕ}
    (ctl : Fin n → CtrlF) (A B : Fin m → FQ) (pd : ι → ProfF) (i0 : ι)
    (P : ProfF) (R : RouteF ι n m) (ps : List FQ)
    (h : R.checkZip ctl A B pd i0 P ps = true) :
    R.checkPrefix ctl A B pd i0 P ps = true := by
  simp only [RouteF.checkZip, Bool.and_eq_true, decide_eq_true_eq] at h
  have hlen : R.us.length = R.ds.length + 1 := by tauto
  have hc : R.cellsZip pd ps = true := by tauto
  have hc' := R.cellsZip_imp pd i0 ps hlen hc
  simp only [RouteF.checkPrefix, Bool.and_eq_true, decide_eq_true_eq]
  tauto

def FastEntry.checkZip (table : List ExpPair) (e : FastEntry) (ps : PrefixData) : Bool :=
  e.recipe.checkZip (fun _ => ctrlFromD (controls e.controlIndex))
    (fun i => FQ.ofRat (JointFamily.sourceAq i)) (fun i => FQ.ofRat (JointFamily.sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.rawIndex)) ps.values &&
      e.toEntry.boundsCheck && e.expMatches table

theorem FastEntry.checkZip_imp (table : List ExpPair) (e : FastEntry) (ps : PrefixData)
    (h : e.checkZip table ps = true) : e.checkPrefix table ps = true := by
  simp only [FastEntry.checkZip, Bool.and_eq_true] at h
  have hc := e.recipe.checkZip_imp (fun _ => ctrlFromD (controls e.controlIndex))
    (fun i => FQ.ofRat (JointFamily.sourceAq i)) (fun i => FQ.ofRat (JointFamily.sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.rawIndex)) ps.values h.1.1
  exact Bool.and_eq_true_iff.mpr ⟨Bool.and_eq_true_iff.mpr ⟨hc, h.1.2⟩, h.2⟩

def zipChecks (table : List ExpPair) : List FastEntry → List PrefixData → Bool
  | [], [] => true
  | e :: es, p :: ps => e.checkZip table p && zipChecks table es ps
  | _, _ => false

/-- Sequential route and prefix lists imply the existing checked entry family. -/
theorem zipChecks_imp (table : List ExpPair) : ∀ (es : List FastEntry) (ps : List PrefixData),
    zipChecks table es ps = true → es.all (FastEntry.check table) = true
  | [], [], _ => rfl
  | e :: es, p :: ps, h => by
      simp only [zipChecks, Bool.and_eq_true] at h
      have he := e.checkPrefix_imp table p (e.checkZip_imp table p h.1)
      simp only [List.all_cons, he, zipChecks_imp table es ps h.2, Bool.true_and]
  | [], _ :: _, h => by simp [zipChecks] at h
  | _ :: _, [], h => by simp [zipChecks] at h

#print axioms RouteF.checkZip_imp
#print axioms FastEntry.checkZip_imp
#print axioms zipChecks_imp

#print axioms RouteF.cellsZip_imp
end DiagonalRamsey.JointCachedRoutes

namespace DiagonalRamsey.JointGeometry

#print axioms zip4All_imp
#print axioms zip4All_of_getD
#print axioms adjacentPairs_getD
end DiagonalRamsey.JointGeometry
