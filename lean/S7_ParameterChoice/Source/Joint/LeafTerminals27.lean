import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal865_checked : terminal865.check = true := by decide +kernel
theorem terminal866_checked : terminal866.check = true := by decide +kernel
theorem terminal867_checked : terminal867.check = true := by decide +kernel
theorem terminal868_checked : terminal868.check = true := by decide +kernel
theorem terminal869_checked : terminal869.check = true := by decide +kernel
theorem terminal870_checked : terminal870.check = true := by decide +kernel
theorem terminal871_checked : terminal871.check = true := by decide +kernel
theorem terminal872_checked : terminal872.check = true := by decide +kernel
theorem terminal873_checked : terminal873.check = true := by decide +kernel
theorem terminal874_checked : terminal874.check = true := by decide +kernel
theorem terminal875_checked : terminal875.check = true := by decide +kernel
theorem terminal876_checked : terminal876.check = true := by decide +kernel
theorem terminal877_checked : terminal877.check = true := by decide +kernel
theorem terminal878_checked : terminal878.check = true := by decide +kernel
theorem terminal879_checked : terminal879.check = true := by decide +kernel
theorem terminal880_checked : terminal880.check = true := by decide +kernel
theorem terminal881_checked : terminal881.check = true := by decide +kernel
theorem terminal882_checked : terminal882.check = true := by decide +kernel
theorem terminal883_checked : terminal883.check = true := by decide +kernel
theorem terminal884_checked : terminal884.check = true := by decide +kernel
theorem terminal885_checked : terminal885.check = true := by decide +kernel
theorem terminal886_checked : terminal886.check = true := by decide +kernel
theorem terminal887_checked : terminal887.check = true := by decide +kernel
theorem terminal888_checked : terminal888.check = true := by decide +kernel
theorem terminal889_checked : terminal889.check = true := by decide +kernel
theorem terminal890_checked : terminal890.check = true := by decide +kernel
theorem terminal891_checked : terminal891.check = true := by decide +kernel
theorem terminal892_checked : terminal892.check = true := by decide +kernel
theorem terminal893_checked : terminal893.check = true := by decide +kernel
theorem terminal894_checked : terminal894.check = true := by decide +kernel
theorem terminal895_checked : terminal895.check = true := by decide +kernel
theorem terminal896_checked : terminal896.check = true := by decide +kernel
theorem terminals27_checked : terminals27.all Terminal.check = true := by
  simp only [terminals27, List.all_cons, List.all_nil, terminal865_checked, terminal866_checked, terminal867_checked, terminal868_checked, terminal869_checked, terminal870_checked, terminal871_checked, terminal872_checked, terminal873_checked, terminal874_checked, terminal875_checked, terminal876_checked, terminal877_checked, terminal878_checked, terminal879_checked, terminal880_checked, terminal881_checked, terminal882_checked, terminal883_checked, terminal884_checked, terminal885_checked, terminal886_checked, terminal887_checked, terminal888_checked, terminal889_checked, terminal890_checked, terminal891_checked, terminal892_checked, terminal893_checked, terminal894_checked, terminal895_checked, terminal896_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
