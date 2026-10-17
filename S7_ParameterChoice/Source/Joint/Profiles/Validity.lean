import S7_ParameterChoice.Source.Joint.Profiles.Checks

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointData

open DiagRamsey DiagRamsey.V5 DiagonalRamsey.JointGeometry


theorem raw_checked : rawEntries.all (fun d => d.1.ok d.2) = true := by
  simp only [rawEntries, List.all_append, Bool.and_eq_true]
  exact ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨checked_rawBlock000, checked_rawBlock001⟩, checked_rawBlock002⟩, checked_rawBlock003⟩, checked_rawBlock004⟩, checked_rawBlock005⟩, checked_rawBlock006⟩, checked_rawBlock007⟩, checked_rawBlock008⟩, checked_rawBlock009⟩, checked_rawBlock010⟩, checked_rawBlock011⟩, checked_rawBlock012⟩, checked_rawBlock013⟩, checked_rawBlock014⟩, checked_rawBlock015⟩, checked_rawBlock016⟩, checked_rawBlock017⟩, checked_rawBlock018⟩, checked_rawBlock019⟩, checked_rawBlock020⟩, checked_rawBlock021⟩, checked_rawBlock022⟩, checked_rawBlock023⟩, checked_rawBlock024⟩, checked_rawBlock025⟩, checked_rawBlock026⟩, checked_rawBlock027⟩, checked_rawBlock028⟩, checked_rawBlock029⟩, checked_rawBlock030⟩, checked_rawBlock031⟩, checked_rawBlock032⟩, checked_rawBlock033⟩, checked_rawBlock034⟩, checked_rawBlock035⟩, checked_rawBlock036⟩, checked_rawBlock037⟩, checked_rawBlock038⟩, checked_rawBlock039⟩, checked_rawBlock040⟩, checked_rawBlock041⟩, checked_rawBlock042⟩, checked_rawBlock043⟩, checked_rawBlock044⟩, checked_rawBlock045⟩

theorem raw_valid (i : Fin 1462) : (rawDatum i).toD.toBP.Valid := by
  apply ProfF.valid_of_ok _ (rawMinimum i)
  exact List.all_eq_true.mp raw_checked _ (List.getElem_mem _)

#print axioms raw_valid

theorem closed_checked : closedEntries.all (fun d => d.1.ok d.2) = true := by
  simp only [closedEntries, List.all_append, Bool.and_eq_true]
  exact ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨checked_closedBlock000, checked_closedBlock001⟩, checked_closedBlock002⟩, checked_closedBlock003⟩, checked_closedBlock004⟩, checked_closedBlock005⟩, checked_closedBlock006⟩, checked_closedBlock007⟩, checked_closedBlock008⟩, checked_closedBlock009⟩, checked_closedBlock010⟩, checked_closedBlock011⟩, checked_closedBlock012⟩, checked_closedBlock013⟩, checked_closedBlock014⟩, checked_closedBlock015⟩, checked_closedBlock016⟩, checked_closedBlock017⟩, checked_closedBlock018⟩, checked_closedBlock019⟩, checked_closedBlock020⟩, checked_closedBlock021⟩, checked_closedBlock022⟩, checked_closedBlock023⟩, checked_closedBlock024⟩, checked_closedBlock025⟩, checked_closedBlock026⟩, checked_closedBlock027⟩, checked_closedBlock028⟩, checked_closedBlock029⟩

theorem closed_valid (i : Fin 947) : (closedDatum i).toD.toBP.Valid := by
  apply ProfF.valid_of_ok _ (closedMinimum i)
  exact List.all_eq_true.mp closed_checked _ (List.getElem_mem _)

#print axioms closed_valid

end DiagonalRamsey.JointData
