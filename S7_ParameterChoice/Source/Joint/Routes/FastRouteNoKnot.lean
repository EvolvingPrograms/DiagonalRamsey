import S7_ParameterChoice.Source.Joint.Routes.FastRouteZip

/-! Adjacent sorted cells exclude every global knot from their interiors. -/
set_option autoImplicit false

namespace DiagonalRamsey.JointGeometry
open DiagRamsey DiagRamsey.V5 DiagRamsey.SharpCert FQ

private theorem adjacent_sorted_getD_le (us : List ℚ) (hs : PL.sortedQ us = true)
    (i j : ℕ) (hij : i ≤ j) (hj : j < us.length) : us.getD i 0 ≤ us.getD j 0 := by
  by_cases he : i = j
  · subst i; exact le_rfl
  · exact (sortedQ_getD_lt us hs i j (by omega) hj).le

/-- Every knot lies on one side of a cell between adjacent sorted knots. -/
theorem sortedQ_knot_outside (us : List ℚ) (hs : PL.sortedQ us = true)
    (j : ℕ) (hj : j + 1 < us.length) (u : ℚ) (hu : u ∈ us) :
    u ≤ us.getD j 0 ∨ us.getD (j + 1) 0 ≤ u := by
  obtain ⟨k, hk, he⟩ := List.getElem_of_mem hu
  have he' : us.getD k 0 = u := by
    exact (List.getElem_eq_getD (h := hk) 0).symm.trans he
  by_cases hkj : k ≤ j
  · exact Or.inl (he' ▸ adjacent_sorted_getD_le us hs k j hkj (by omega))
  · exact Or.inr (he' ▸ adjacent_sorted_getD_le us hs (j + 1) k (by omega) hk)

private theorem noKnotQ_of_outside (us : List ℚ) (lo hi : ℚ)
    (houtside : ∀ u ∈ us, u ≤ lo ∨ hi ≤ u) : ∀ bp : List ℚ,
    (∀ x ∈ bp, lo ≤ x ∧ x ≤ hi) → PL.noKnotQ us bp = true
  | [], _ => rfl
  | [_], _ => rfl
  | a :: b :: bp, hb => by
      apply Bool.and_eq_true_iff.mpr
      constructor
      · apply List.all_eq_true.mpr
        intro u hu
        have ha := (hb a (by simp)).1
        have hb' := (hb b (by simp)).2
        rcases houtside u hu with h | h
        · simp only [decide_eq_true_eq, Bool.or_eq_true]
          exact Or.inl (h.trans ha)
        · simp only [decide_eq_true_eq, Bool.or_eq_true]
          exact Or.inr (hb'.trans h)
      · exact noKnotQ_of_outside us lo hi houtside (b :: bp)
          (fun x hx => hb x (List.mem_cons_of_mem a hx))

/-- A breakpoint list contained in one adjacent cell needs no global knot scan.
No ordering hypothesis on the breakpoint list itself is needed. -/
theorem noKnotQ_of_adjacent (us bp : List ℚ) (j : ℕ)
    (hs : PL.sortedQ us = true) (hj : j + 1 < us.length)
    (hb : ∀ x ∈ bp, us.getD j 0 ≤ x ∧ x ≤ us.getD (j + 1) 0) :
    PL.noKnotQ us bp = true :=
  noKnotQ_of_outside us _ _ (sortedQ_knot_outside us hs j hj) bp hb

/-- Integer-fraction adapter for adjacent-cell knot exclusion. -/
theorem noKnotF_of_adjacent (us bp : List FQ) (j : ℕ)
    (hs : sortedF us = true) (hj : j + 1 < us.length)
    (hb : ∀ x ∈ bp,
      le (us.getD j zero) x = true ∧ le x (us.getD (j + 1) zero) = true) :
    noKnotF us bp = true := by
  rw [noKnotF_eq]
  apply noKnotQ_of_adjacent (mapQ us) (mapQ bp) j
  · rwa [← sortedF_eq]
  · simpa only [mapQ_length] using hj
  · intro x hx
    obtain ⟨y, hy, rfl⟩ := List.mem_map.mp hx
    simpa only [mapQ_getD, le_eq, decide_eq_true_eq] using hb y hy

#print axioms sortedQ_knot_outside
#print axioms noKnotQ_of_adjacent
#print axioms noKnotF_of_adjacent
end DiagonalRamsey.JointGeometry

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey DiagRamsey.V5 JointGeometry FQ

/-- All breakpoint bounds are local; sorted adjacency supplies knot exclusion. -/
def gGeLocalCell {ι : Type} {n m : ℕ} (_R : RouteF ι n m)
    (u v d p : FQ) (P : ProfF) (c0 c1 c2 : FQ) (bp : List FQ) : Bool :=
  sortedF P.xs && noKnotF P.xs bp && bp.all (fun x =>
    le u x && le x v && le (evalF P.xs P.ys x)
      (add (add c0 (mul c1 x)) (mul c2 (add p (mul d (sub x u))))))

private theorem gGeLocalCell_imp {ι : Type} {n m : ℕ} (R : RouteF ι n m)
    (j : ℕ) (hs : sortedF R.us = true) (hj : j + 1 < R.us.length)
    (d p : FQ) (P : ProfF) (c0 c1 c2 : FQ) (bp : List FQ)
    (h : gGeLocalCell R (R.us.getD j zero) (R.us.getD (j+1) zero) d p P c0 c1 c2 bp = true) :
    gGeLocal R (R.us.getD j zero) (R.us.getD (j+1) zero) d p P c0 c1 c2 bp = true := by
  simp only [gGeLocalCell, Bool.and_eq_true] at h
  have hn : noKnotF R.us bp = true := by
    apply noKnotF_of_adjacent R.us bp j hs hj
    intro x hx
    have hb := List.all_eq_true.mp h.2 x hx
    simp only [Bool.and_eq_true] at hb
    exact hb.1
  simp only [gGeLocal, Bool.and_eq_true]
  exact ⟨⟨h.1, hn⟩, h.2⟩

def cellLocalCell {ι : Type} {n m : ℕ} (pd : ι → ProfF) (R : RouteF ι n m)
    (uv : FQ × FQ) (d : FQ) (cl : CallF ι) (pq : FQ × FQ) : Bool :=
  let Pc := pd cl.ch
  le (Pc.xs.headD zero) uv.1 && le uv.2 (Pc.xs.getLastD zero) &&
    lt zero cl.z && true && lt cl.z (sub one Pc.p) && bpOkF cl.bp uv.1 uv.2 &&
    gGeLocalCell R uv.1 uv.2 d pq.1 Pc (sub R.g0 R.hm) zero one cl.bp

private theorem cellLocalCell_imp {ι : Type} {n m : ℕ} (pd : ι → ProfF) (R : RouteF ι n m)
    (j : ℕ) (hs : sortedF R.us = true) (hj : j + 1 < R.us.length)
    (d : FQ) (cl : CallF ι) (pq : FQ × FQ)
    (h : cellLocalCell pd R (R.us.getD j zero, R.us.getD (j+1) zero) d cl pq = true) :
    cellLocal pd R (R.us.getD j zero, R.us.getD (j+1) zero) d cl pq = true := by
  simp only [cellLocalCell, Bool.and_eq_true] at h
  have hg := gGeLocalCell_imp R j hs hj d pq.1 (pd cl.ch) (sub R.g0 R.hm) zero one cl.bp h.2
  simp only [cellLocal, Bool.and_eq_true]
  exact ⟨h.1, hg⟩

/-- Cell zipper with no scans of the global route knots inside child checks. -/
def _root_.DiagonalRamsey.JointGeometry.RouteF.cellsZipCell {ι : Type} {n m : ℕ} (pd : ι → ProfF)
    (R : RouteF ι n m) (ps : List FQ) : Bool :=
  zip4All (cellLocalCell pd R) (adjacentPairs R.us) R.ds R.calls (adjacentPairs ps)

theorem _root_.DiagonalRamsey.JointGeometry.RouteF.cellsZipCell_imp {ι : Type} {n m : ℕ}
    (pd : ι → ProfF) (i0 : ι) (R : RouteF ι n m) (ps : List FQ)
    (hs : sortedF R.us = true) (h : R.cellsZipCell pd ps = true) :
    R.cellsZip pd ps = true := by
  have hl := zip4All_lengths (cellLocalCell pd R) _ _ _ _ h
  apply zip4All_of_getD (cellLocal pd R) (zero, zero) zero
    (⟨i0, zero, []⟩ : CallF ι) (zero, zero)
    (adjacentPairs R.us) R.ds R.calls (adjacentPairs ps) hl.1 hl.2.1 hl.2.2
  intro j hj
  have hc := zip4All_getD (cellLocalCell pd R) (zero, zero) zero
    (⟨i0, zero, []⟩ : CallF ι) (zero, zero)
    (adjacentPairs R.us) R.ds R.calls (adjacentPairs ps) h j hj
  rw [adjacentPairs_getD zero R.us j hj] at hc ⊢
  apply cellLocalCell_imp pd R j hs _ _ _ _ hc
  rw [adjacentPairs_length] at hj
  omega

def _root_.DiagonalRamsey.JointGeometry.RouteF.checkCell {ι : Type} {nCtl m : ℕ} (ctl : Fin nCtl → CtrlF)
    (A B : Fin m → FQ) (pd : ι → ProfF) (_i0 : ι) (P : ProfF)
    (R : RouteF ι nCtl m) (ps : List FQ) : Bool :=
  let w := (ctl R.t.c).w
  let θ := R.us.getD 0 zero
  integralPrefixesCheck R.us R.ds ps && FQ.eq (ps.headD zero) zero &&
    R.t.check ctl A && lt (ctl R.t.c).p P.p && decide (R.us.length = R.ds.length + 1) &&
    decide (0 < R.ds.length) && sortedF R.us && lt zero θ && lt zero R.g0 && le θ R.lo &&
    le R.hi (R.us.getD R.ds.length zero) && lt zero R.hm && lt zero R.margin &&
    R.cellsZipCell pd ps && bpOkF R.bp R.lo R.hi &&
    gLePrefix R ps P (add R.margin R.g0) zero one R.bp &&
    gLePrefix R ps P (add R.margin (div (add R.t.aU (mul (mul w θ) R.t.bU)) (add one w)))
      (div (add (B R.t.σ) R.t.ys) (add one w)) (div w (add one w)) R.bp


/-- The local knot-exclusion proof supplies the unchanged enclosing checker. -/
theorem _root_.DiagonalRamsey.JointGeometry.RouteF.checkCell_imp {ι : Type} {n m : ℕ}
    (ctl : Fin n → CtrlF) (A B : Fin m → FQ) (pd : ι → ProfF) (i0 : ι)
    (P : ProfF) (R : RouteF ι n m) (ps : List FQ)
    (h : R.checkCell ctl A B pd i0 P ps = true) :
    R.checkZip ctl A B pd i0 P ps = true := by
  simp only [RouteF.checkCell, Bool.and_eq_true] at h
  have hs : sortedF R.us = true := by tauto
  have hc : R.cellsZipCell pd ps = true := by tauto
  have hc' := R.cellsZipCell_imp pd i0 ps hs hc
  simp only [RouteF.checkZip, Bool.and_eq_true]
  tauto

def FastEntry.checkCell (table : List ExpPair) (e : FastEntry) (ps : PrefixData) : Bool :=
  e.recipe.checkCell (fun _ => ctrlFromD (controls e.controlIndex))
    (fun i => FQ.ofRat (JointFamily.sourceAq i)) (fun i => FQ.ofRat (JointFamily.sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.rawIndex)) ps.values &&
      e.toEntry.boundsCheck && e.expMatches table

theorem FastEntry.checkCell_imp (table : List ExpPair) (e : FastEntry) (ps : PrefixData)
    (h : e.checkCell table ps = true) : e.checkZip table ps = true := by
  simp only [FastEntry.checkCell, Bool.and_eq_true] at h
  have hc := e.recipe.checkCell_imp (fun _ => ctrlFromD (controls e.controlIndex))
    (fun i => FQ.ofRat (JointFamily.sourceAq i)) (fun i => FQ.ofRat (JointFamily.sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.rawIndex)) ps.values h.1.1
  exact Bool.and_eq_true_iff.mpr ⟨Bool.and_eq_true_iff.mpr ⟨hc, h.1.2⟩, h.2⟩

def cellChecks (table : List ExpPair) : List FastEntry → List PrefixData → Bool
  | [], [] => true
  | e :: es, p :: ps => e.checkCell table p && cellChecks table es ps
  | _, _ => false

theorem cellChecks_imp (table : List ExpPair) : ∀ (es : List FastEntry) (ps : List PrefixData),
    cellChecks table es ps = true → es.all (FastEntry.check table) = true
  | [], [], _ => rfl
  | e :: es, p :: ps, h => by
      simp only [cellChecks, Bool.and_eq_true] at h
      have hz := e.checkZip_imp table p (e.checkCell_imp table p h.1)
      have he := e.checkPrefix_imp table p hz
      simp only [List.all_cons, he, cellChecks_imp table es ps h.2, Bool.true_and]
  | [], _ :: _, h => by simp [cellChecks] at h
  | _ :: _, [], h => by simp [cellChecks] at h

#print axioms RouteF.checkCell_imp
#print axioms FastEntry.checkCell_imp
#print axioms cellChecks_imp

#print axioms RouteF.cellsZipCell_imp
end DiagonalRamsey.JointCachedRoutes
