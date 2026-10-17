import S7_ParameterChoice.Source.Joint.Routes.FastRouteNoKnot

/-! Sequential exponential-table matching preserves the exact checked inputs. -/
set_option autoImplicit false

namespace DiagonalRamsey.JointCachedRoutes
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

def FastEntry.expMatchesZip (table : List ExpPair) (e : FastEntry) : Bool :=
  zip4All (fun (d : FQ) (cl : CallF ProfileIndex) (i : ℕ) (_ : FQ) =>
    let x := table.getD i ⟨FQ.zero, FQ.zero⟩
    decide (i < table.length) && FQ.eq x.d d && FQ.eq x.z cl.z)
    e.recipe.ds e.recipe.calls e.expIds e.recipe.ds

theorem FastEntry.expMatchesZip_imp (table : List ExpPair) (e : FastEntry)
    (h : e.expMatchesZip table = true) : e.expMatches table = true := by
  apply List.all_eq_true.mpr
  intro j hj
  have hz := zip4All_getD (fun (d : FQ) (cl : CallF ProfileIndex) (i : ℕ) (_ : FQ) =>
      let x := table.getD i ⟨FQ.zero, FQ.zero⟩
      decide (i < table.length) && FQ.eq x.d d && FQ.eq x.z cl.z)
    FQ.zero (⟨.inl 0, FQ.zero, []⟩ : CallF ProfileIndex) 0 FQ.zero
    e.recipe.ds e.recipe.calls e.expIds e.recipe.ds h j (List.mem_range.mp hj)
  exact hz

def FastEntry.checkLinear (table : List ExpPair) (e : FastEntry) (ps : PrefixData) : Bool :=
  e.recipe.checkCell (fun _ => ctrlFromD (controls e.controlIndex))
    (fun i => FQ.ofRat (sourceAq i)) (fun i => FQ.ofRat (sourceBq i))
    fastDatum (.inl 0) (fastDatum (.inl e.rawIndex)) ps.values &&
      e.toEntry.boundsCheck && e.expMatchesZip table

theorem FastEntry.checkLinear_imp (table : List ExpPair) (e : FastEntry) (ps : PrefixData)
    (h : e.checkLinear table ps = true) : e.checkCell table ps = true := by
  simp only [FastEntry.checkLinear, Bool.and_eq_true] at h
  have he := e.expMatchesZip_imp table h.2
  exact Bool.and_eq_true_iff.mpr ⟨Bool.and_eq_true_iff.mpr h.1, he⟩

def linearChecks (table : List ExpPair) : List FastEntry → List PrefixData → Bool
  | [], [] => true
  | e :: es, p :: ps => e.checkLinear table p && linearChecks table es ps
  | _, _ => false

theorem linearChecks_imp (table : List ExpPair) : ∀ (es : List FastEntry) (ps : List PrefixData),
    linearChecks table es ps = true → es.all (FastEntry.check table) = true
  | [], [], _ => rfl
  | e :: es, p :: ps, h => by
      simp only [linearChecks, Bool.and_eq_true] at h
      have hc := e.checkCell_imp table p (e.checkLinear_imp table p h.1)
      have hz := e.checkZip_imp table p hc
      have he := e.checkPrefix_imp table p hz
      simp only [List.all_cons, he, linearChecks_imp table es ps h.2, Bool.true_and]
  | [], _ :: _, h => by simp [linearChecks] at h
  | _ :: _, [], h => by simp [linearChecks] at h

#print axioms FastEntry.expMatchesZip_imp
#print axioms FastEntry.checkLinear_imp
#print axioms linearChecks_imp
end DiagonalRamsey.JointCachedRoutes
