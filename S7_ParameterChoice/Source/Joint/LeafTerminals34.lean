import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal1089_checked : terminal1089.check = true := by decide +kernel
theorem terminal1090_checked : terminal1090.check = true := by decide +kernel
theorem terminal1091_checked : terminal1091.check = true := by decide +kernel
theorem terminal1092_checked : terminal1092.check = true := by decide +kernel
theorem terminal1093_checked : terminal1093.check = true := by decide +kernel
theorem terminal1094_checked : terminal1094.check = true := by decide +kernel
theorem terminal1095_checked : terminal1095.check = true := by decide +kernel
theorem terminal1096_checked : terminal1096.check = true := by decide +kernel
theorem terminal1097_checked : terminal1097.check = true := by decide +kernel
theorem terminal1098_checked : terminal1098.check = true := by decide +kernel
theorem terminal1099_checked : terminal1099.check = true := by decide +kernel
theorem terminal1100_checked : terminal1100.check = true := by decide +kernel
theorem terminal1101_checked : terminal1101.check = true := by decide +kernel
theorem terminal1102_checked : terminal1102.check = true := by decide +kernel
theorem terminal1103_checked : terminal1103.check = true := by decide +kernel
theorem terminal1104_checked : terminal1104.check = true := by decide +kernel
theorem terminal1105_checked : terminal1105.check = true := by decide +kernel
theorem terminal1106_checked : terminal1106.check = true := by decide +kernel
theorem terminal1107_checked : terminal1107.check = true := by decide +kernel
theorem terminal1108_checked : terminal1108.check = true := by decide +kernel
theorem terminal1109_checked : terminal1109.check = true := by decide +kernel
theorem terminal1110_checked : terminal1110.check = true := by decide +kernel
theorem terminal1111_checked : terminal1111.check = true := by decide +kernel
theorem terminal1112_checked : terminal1112.check = true := by decide +kernel
theorem terminal1113_checked : terminal1113.check = true := by decide +kernel
theorem terminal1114_checked : terminal1114.check = true := by decide +kernel
theorem terminal1115_checked : terminal1115.check = true := by decide +kernel
theorem terminal1116_checked : terminal1116.check = true := by decide +kernel
theorem terminal1117_checked : terminal1117.check = true := by decide +kernel
theorem terminal1118_checked : terminal1118.check = true := by decide +kernel
theorem terminal1119_checked : terminal1119.check = true := by decide +kernel
theorem terminal1120_checked : terminal1120.check = true := by decide +kernel
theorem terminals34_checked : terminals34.all Terminal.check = true := by
  simp only [terminals34, List.all_cons, List.all_nil, terminal1089_checked, terminal1090_checked, terminal1091_checked, terminal1092_checked, terminal1093_checked, terminal1094_checked, terminal1095_checked, terminal1096_checked, terminal1097_checked, terminal1098_checked, terminal1099_checked, terminal1100_checked, terminal1101_checked, terminal1102_checked, terminal1103_checked, terminal1104_checked, terminal1105_checked, terminal1106_checked, terminal1107_checked, terminal1108_checked, terminal1109_checked, terminal1110_checked, terminal1111_checked, terminal1112_checked, terminal1113_checked, terminal1114_checked, terminal1115_checked, terminal1116_checked, terminal1117_checked, terminal1118_checked, terminal1119_checked, terminal1120_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
