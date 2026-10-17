import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal737_checked : terminal737.check = true := by decide +kernel
theorem terminal738_checked : terminal738.check = true := by decide +kernel
theorem terminal739_checked : terminal739.check = true := by decide +kernel
theorem terminal740_checked : terminal740.check = true := by decide +kernel
theorem terminal741_checked : terminal741.check = true := by decide +kernel
theorem terminal742_checked : terminal742.check = true := by decide +kernel
theorem terminal743_checked : terminal743.check = true := by decide +kernel
theorem terminal744_checked : terminal744.check = true := by decide +kernel
theorem terminal745_checked : terminal745.check = true := by decide +kernel
theorem terminal746_checked : terminal746.check = true := by decide +kernel
theorem terminal747_checked : terminal747.check = true := by decide +kernel
theorem terminal748_checked : terminal748.check = true := by decide +kernel
theorem terminal749_checked : terminal749.check = true := by decide +kernel
theorem terminal750_checked : terminal750.check = true := by decide +kernel
theorem terminal751_checked : terminal751.check = true := by decide +kernel
theorem terminal752_checked : terminal752.check = true := by decide +kernel
theorem terminal753_checked : terminal753.check = true := by decide +kernel
theorem terminal754_checked : terminal754.check = true := by decide +kernel
theorem terminal755_checked : terminal755.check = true := by decide +kernel
theorem terminal756_checked : terminal756.check = true := by decide +kernel
theorem terminal757_checked : terminal757.check = true := by decide +kernel
theorem terminal758_checked : terminal758.check = true := by decide +kernel
theorem terminal759_checked : terminal759.check = true := by decide +kernel
theorem terminal760_checked : terminal760.check = true := by decide +kernel
theorem terminal761_checked : terminal761.check = true := by decide +kernel
theorem terminal762_checked : terminal762.check = true := by decide +kernel
theorem terminal763_checked : terminal763.check = true := by decide +kernel
theorem terminal764_checked : terminal764.check = true := by decide +kernel
theorem terminal765_checked : terminal765.check = true := by decide +kernel
theorem terminal766_checked : terminal766.check = true := by decide +kernel
theorem terminal767_checked : terminal767.check = true := by decide +kernel
theorem terminal768_checked : terminal768.check = true := by decide +kernel
theorem terminals23_checked : terminals23.all Terminal.check = true := by
  simp only [terminals23, List.all_cons, List.all_nil, terminal737_checked, terminal738_checked, terminal739_checked, terminal740_checked, terminal741_checked, terminal742_checked, terminal743_checked, terminal744_checked, terminal745_checked, terminal746_checked, terminal747_checked, terminal748_checked, terminal749_checked, terminal750_checked, terminal751_checked, terminal752_checked, terminal753_checked, terminal754_checked, terminal755_checked, terminal756_checked, terminal757_checked, terminal758_checked, terminal759_checked, terminal760_checked, terminal761_checked, terminal762_checked, terminal763_checked, terminal764_checked, terminal765_checked, terminal766_checked, terminal767_checked, terminal768_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
