import S7_ParameterChoice.Source.Joint.Routes.RouteIndexed
import S7_ParameterChoice.Source.Joint.Routes.FastRoute

set_option autoImplicit false

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

def ctrlFromD (c : CtrlD) : CtrlF :=
  ⟨FQ.ofRat c.p, FQ.ofRat c.μ, FQ.ofRat c.w, FQ.ofRat c.β,
    FQ.ofRat c.x, FQ.ofRat c.lxU, FQ.ofRat c.l1mL⟩

@[simp] theorem ctrlFromD_eq (c : CtrlD) : (ctrlFromD c).toD = c := by
  cases c
  simp [ctrlFromD, CtrlF.toD, FQ.toQ_ofRat]

def profFromD (p : ProfD) : ProfF :=
  ⟨FQ.ofRat p.p, p.xs.map FQ.ofRat, p.ys.map FQ.ofRat⟩

@[simp] theorem profFromD_eq (p : ProfD) : (profFromD p).toD = p := by
  cases p
  simp [profFromD, ProfF.toD, mapQ, Function.comp_def, FQ.toQ_ofRat]

def fastDatum : ProfileIndex → ProfF
  | .inl r => if h : r.val < 1462 then JointData.rawDatum ⟨r.val, h⟩ else profFromD (rawDatum r)
  | .inr c => JointData.closedDatum c

@[simp] theorem fastDatum_eq (i : ProfileIndex) : (fastDatum i).toD = datum i := by
  cases i with
  | inl r =>
    simp only [fastDatum]
    split_ifs with h
    · simp only [datum, Sum.elim_inl, rawDatum, dif_pos h]
    · exact profFromD_eq _
  | inr c => rfl

structure ExpPair where
  d : FQ
  z : FQ

def ExpPair.check (e : ExpPair) : Bool :=
  DiagRamsey.SharpCert.expLeB (-e.d.toQ) e.z.toQ

structure FastEntry where
  rawIndex : RawIndex
  piece : ℕ
  controlIndex : ControlIndex
  recipe : RouteF ProfileIndex 1 2716
  expIds : List ℕ

def FastEntry.toEntry (e : FastEntry) : Entry :=
  ⟨e.rawIndex, e.piece, e.controlIndex, .route e.recipe.toD⟩

def FastEntry.expMatches (table : List ExpPair) (e : FastEntry) : Bool :=
  (List.range e.recipe.ds.length).all fun j =>
    let i := e.expIds.getD j 0
    let x := table.getD i ⟨FQ.zero, FQ.zero⟩
    decide (i < table.length) && FQ.eq x.d (e.recipe.ds.getD j FQ.zero) &&
      FQ.eq x.z (e.recipe.calls.getD j ⟨.inl 0, FQ.zero, []⟩).z

theorem FastEntry.expMatches_sound (table : List ExpPair) (e : FastEntry)
    (ht : table.all ExpPair.check = true) (hm : e.expMatches table = true)
    (j : ℕ) (hj : j < e.recipe.ds.length) :
    DiagRamsey.SharpCert.expLeB (-(e.recipe.ds.getD j FQ.zero).toQ)
      (e.recipe.calls.getD j ⟨.inl 0, FQ.zero, []⟩).z.toQ = true := by
  have h := List.all_eq_true.mp hm j (List.mem_range.mpr hj)
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  have hi := h.1.1
  have hmem : table.getD (e.expIds.getD j 0) ⟨FQ.zero, FQ.zero⟩ ∈ table := by
    have hm : table[e.expIds.getD j 0] ∈ table := List.getElem_mem hi
    rw [List.getElem_eq_getD (⟨FQ.zero, FQ.zero⟩ : ExpPair)] at hm
    exact hm
  have hc := List.all_eq_true.mp ht _ hmem
  have hd : (table.getD (e.expIds.getD j 0) ⟨FQ.zero, FQ.zero⟩).d.toQ =
      (e.recipe.ds.getD j FQ.zero).toQ := by
    simpa only [FQ.eq_eq, decide_eq_true_eq] using h.1.2
  have hz : (table.getD (e.expIds.getD j 0) ⟨FQ.zero, FQ.zero⟩).z.toQ =
      (e.recipe.calls.getD j ⟨.inl 0, FQ.zero, []⟩).z.toQ := by
    simpa only [FQ.eq_eq, decide_eq_true_eq] using h.2
  simpa only [ExpPair.check, hd, hz] using hc

def FastEntry.check (table : List ExpPair) (e : FastEntry) : Bool :=
  e.recipe.checkNoExp (fun _ => ctrlFromD (controls e.controlIndex))
    (fun i => FQ.ofRat (sourceAq i)) (fun i => FQ.ofRat (sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.rawIndex)) && e.toEntry.boundsCheck && e.expMatches table

theorem FastEntry.check_imp (table : List ExpPair) (ht : table.all ExpPair.check = true)
    (e : FastEntry) (h : e.check table = true) : e.toEntry.check = true := by
  simp only [FastEntry.check, Bool.and_eq_true] at h
  have hg := e.recipe.check_of_noExp (fun _ => ctrlFromD (controls e.controlIndex))
    (fun i => FQ.ofRat (sourceAq i)) (fun i => FQ.ofRat (sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.rawIndex)) h.1.1 (e.expMatches_sound table ht h.2)
  have hr := RouteF.check_imp (fun _ => ctrlFromD (controls e.controlIndex))
    (fun i => FQ.ofRat (sourceAq i)) (fun i => FQ.ofRat (sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.rawIndex)) e.recipe hg
  have he : e.toEntry.geometryCheck = true := by
    simpa only [FastEntry.toEntry, Entry.geometryCheck, JointRecipes.RawD.check,
      ctrlFromD_eq, fastDatum_eq, FQ.toQ_ofRat, datum, Sum.elim_inl] using hr
  exact Bool.and_eq_true_iff.mpr ⟨he, h.1.2⟩

#print axioms FastEntry.check_imp
end DiagonalRamsey.JointCachedRoutes
