import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal353_checked : terminal353.check = true := by decide +kernel
theorem terminal354_checked : terminal354.check = true := by decide +kernel
theorem terminal355_checked : terminal355.check = true := by decide +kernel
theorem terminal356_checked : terminal356.check = true := by decide +kernel
theorem terminal357_checked : terminal357.check = true := by decide +kernel
theorem terminal358_checked : terminal358.check = true := by decide +kernel
theorem terminal359_checked : terminal359.check = true := by decide +kernel
theorem terminal360_checked : terminal360.check = true := by decide +kernel
theorem terminal361_checked : terminal361.check = true := by decide +kernel
theorem terminal362_checked : terminal362.check = true := by decide +kernel
theorem terminal363_checked : terminal363.check = true := by decide +kernel
theorem terminal364_checked : terminal364.check = true := by decide +kernel
theorem terminal365_checked : terminal365.check = true := by decide +kernel
theorem terminal366_checked : terminal366.check = true := by decide +kernel
theorem terminal367_checked : terminal367.check = true := by decide +kernel
theorem terminal368_checked : terminal368.check = true := by decide +kernel
theorem terminal369_checked : terminal369.check = true := by decide +kernel
theorem terminal370_checked : terminal370.check = true := by decide +kernel
theorem terminal371_checked : terminal371.check = true := by decide +kernel
theorem terminal372_checked : terminal372.check = true := by decide +kernel
theorem terminal373_checked : terminal373.check = true := by decide +kernel
theorem terminal374_checked : terminal374.check = true := by decide +kernel
theorem terminal375_checked : terminal375.check = true := by decide +kernel
theorem terminal376_checked : terminal376.check = true := by decide +kernel
theorem terminal377_checked : terminal377.check = true := by decide +kernel
theorem terminal378_checked : terminal378.check = true := by decide +kernel
theorem terminal379_checked : terminal379.check = true := by decide +kernel
theorem terminal380_checked : terminal380.check = true := by decide +kernel
theorem terminal381_checked : terminal381.check = true := by decide +kernel
theorem terminal382_checked : terminal382.check = true := by decide +kernel
theorem terminal383_checked : terminal383.check = true := by decide +kernel
theorem terminal384_checked : terminal384.check = true := by decide +kernel
theorem terminals11_checked : terminals11.all Terminal.check = true := by
  simp only [terminals11, List.all_cons, List.all_nil, terminal353_checked, terminal354_checked, terminal355_checked, terminal356_checked, terminal357_checked, terminal358_checked, terminal359_checked, terminal360_checked, terminal361_checked, terminal362_checked, terminal363_checked, terminal364_checked, terminal365_checked, terminal366_checked, terminal367_checked, terminal368_checked, terminal369_checked, terminal370_checked, terminal371_checked, terminal372_checked, terminal373_checked, terminal374_checked, terminal375_checked, terminal376_checked, terminal377_checked, terminal378_checked, terminal379_checked, terminal380_checked, terminal381_checked, terminal382_checked, terminal383_checked, terminal384_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
