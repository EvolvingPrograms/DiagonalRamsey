import S7_ParameterChoice.Source.Joint.Routes.FastRouteExpZip

/-! Route geometry is independent of whether its analytic control has already
been recovered. A separate exact control can therefore use the checked linear
route evaluator while retaining the original profile and knot indices. -/
set_option autoImplicit false

namespace DiagonalRamsey.JointInheritedRoutes
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily JointRecipes JointCachedRoutes

structure Entry where
  control : CtrlF
  indexed : FastEntry

def Entry.rawRecipe (e : Entry) : RawD ProfileIndex 1 2716 :=
  .route e.indexed.recipe.toD

def Entry.check (table : List ExpPair) (e : Entry) (ps : PrefixData) : Bool :=
  e.indexed.recipe.checkCell (fun _ => e.control)
    (fun i => FQ.ofRat (sourceAq i)) (fun i => FQ.ofRat (sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.indexed.rawIndex)) ps.values &&
      e.indexed.toEntry.boundsCheck && e.indexed.expMatchesZip table

/-- Check the route using prefixes constructed from its partition. -/
def Entry.checkGenerated (table : List ExpPair) (e : Entry) : Bool :=
  e.indexed.recipe.checkGenerated (fun _ => e.control)
    (fun i => FQ.ofRat (sourceAq i)) (fun i => FQ.ofRat (sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.indexed.rawIndex)) &&
      e.indexed.toEntry.boundsCheck && e.indexed.expMatchesZip table

theorem Entry.checkGenerated_imp (table : List ExpPair) (e : Entry)
    (h : e.checkGenerated table = true) :
    e.check table ⟨FQ.integralPrefixes e.indexed.recipe.us e.indexed.recipe.ds⟩ = true := by
  simp only [Entry.checkGenerated, Entry.check, Bool.and_eq_true] at h ⊢
  exact ⟨⟨e.indexed.recipe.checkGenerated_imp _ _ _ _ _ _ h.1.1, h.1.2⟩, h.2⟩

/-- The numerical check supplies geometry for the exact separately named control. -/
theorem Entry.geometry_checked (table : List ExpPair) (e : Entry) (ps : PrefixData)
    (ht : table.all ExpPair.check = true) (h : e.check table ps = true) :
    e.rawRecipe.check (fun _ => e.control.toD) sourceAq sourceBq datum (.inl 0)
      (rawDatum e.indexed.rawIndex) = true := by
  simp only [Entry.check, Bool.and_eq_true] at h
  have hc := e.indexed.recipe.checkCell_imp (fun _ => e.control)
    (fun i => FQ.ofRat (sourceAq i)) (fun i => FQ.ofRat (sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.indexed.rawIndex)) ps.values h.1.1
  have hz := e.indexed.recipe.checkZip_imp (fun _ => e.control)
    (fun i => FQ.ofRat (sourceAq i)) (fun i => FQ.ofRat (sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.indexed.rawIndex)) ps.values hc
  have hp := e.indexed.recipe.checkPrefix_imp (fun _ => e.control)
    (fun i => FQ.ofRat (sourceAq i)) (fun i => FQ.ofRat (sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.indexed.rawIndex)) ps.values hz
  have hm := e.indexed.expMatchesZip_imp table h.2
  have hn := e.indexed.recipe.check_of_noExp (fun _ => e.control)
    (fun i => FQ.ofRat (sourceAq i)) (fun i => FQ.ofRat (sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.indexed.rawIndex)) hp
      (e.indexed.expMatches_sound table ht hm)
  have hd := RouteF.check_imp (fun _ => e.control)
    (fun i => FQ.ofRat (sourceAq i)) (fun i => FQ.ofRat (sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.indexed.rawIndex)) e.indexed.recipe hn
  simpa only [Entry.rawRecipe, RawD.check, fastDatum_eq, FQ.toQ_ofRat,
    datum, Sum.elim_inl] using hd

theorem Entry.bounds_checked (table : List ExpPair) (e : Entry) (ps : PrefixData)
    (h : e.check table ps = true) : e.indexed.toEntry.boundsCheck = true := by
  exact (Bool.and_eq_true_iff.mp (Bool.and_eq_true_iff.mp h).1).2

/-- Analytic control soundness is the only non-numerical input to each original
inherited route piece; all graph recursion remains on proper subhosts. -/
theorem Entry.pieceOK (table : List ExpPair) (e : Entry) (ps : PrefixData)
    (ht : table.all ExpPair.check = true) (h : e.check table ps = true)
    (hc : e.control.toD.CertOK) :
    ∃ K, PieceOK raw closed A B (raw e.indexed.rawIndex)
      (rpLo e.indexed.rawIndex (e.indexed.toEntry.pieceIndex (e.bounds_checked table ps h)))
      (rpHi e.indexed.rawIndex (e.indexed.toEntry.pieceIndex (e.bounds_checked table ps h))) K := by
  obtain ⟨K, hK⟩ := e.rawRecipe.pieceOK (fun _ => e.control.toD) (fun _ => hc)
    sourceAq sourceBq (fun i => (source_coefficients_pos i).1)
    (fun i => (source_coefficients_pos i).2) datum raw closed profile_eq raw_valid closed_valid
    (.inl 0) (rawDatum e.indexed.rawIndex) (raw_valid e.indexed.rawIndex)
    (e.geometry_checked table ps ht h)
  have hb := e.bounds_checked table ps h
  have he := e.indexed.toEntry.checked_bounds hb
  have hp := knotIntervals_get (rawDatum e.indexed.rawIndex).xs
    (e.indexed.toEntry.pieceIndex hb)
  have hl : (e.rawRecipe.lo : ℝ) = rpLo e.indexed.rawIndex (e.indexed.toEntry.pieceIndex hb) := by
    change _ = (((knotIntervals (rawDatum e.indexed.rawIndex).xs).get
      (e.indexed.toEntry.pieceIndex hb)).1 : ℝ)
    rw [hp]
    exact_mod_cast he.2.1
  have hr : (e.rawRecipe.hi : ℝ) = rpHi e.indexed.rawIndex (e.indexed.toEntry.pieceIndex hb) := by
    change _ = (((knotIntervals (rawDatum e.indexed.rawIndex).xs).get
      (e.indexed.toEntry.pieceIndex hb)).2 : ℝ)
    rw [hp]
    exact_mod_cast he.2.2
  rw [← hl, ← hr]
  exact ⟨K, hK⟩

#print axioms Entry.geometry_checked
#print axioms Entry.pieceOK
end DiagonalRamsey.JointInheritedRoutes
