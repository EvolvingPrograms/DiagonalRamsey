import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal1121_checked : terminal1121.check = true := by decide +kernel
theorem terminal1122_checked : terminal1122.check = true := by decide +kernel
theorem terminal1123_checked : terminal1123.check = true := by decide +kernel
theorem terminal1124_checked : terminal1124.check = true := by decide +kernel
theorem terminal1125_checked : terminal1125.check = true := by decide +kernel
theorem terminal1126_checked : terminal1126.check = true := by decide +kernel
theorem terminal1127_checked : terminal1127.check = true := by decide +kernel
theorem terminal1128_checked : terminal1128.check = true := by decide +kernel
theorem terminal1129_checked : terminal1129.check = true := by decide +kernel
theorem terminal1130_checked : terminal1130.check = true := by decide +kernel
theorem terminal1131_checked : terminal1131.check = true := by decide +kernel
theorem terminal1132_checked : terminal1132.check = true := by decide +kernel
theorem terminal1133_checked : terminal1133.check = true := by decide +kernel
theorem terminal1134_checked : terminal1134.check = true := by decide +kernel
theorem terminal1135_checked : terminal1135.check = true := by decide +kernel
theorem terminal1136_checked : terminal1136.check = true := by decide +kernel
theorem terminal1137_checked : terminal1137.check = true := by decide +kernel
theorem terminal1138_checked : terminal1138.check = true := by decide +kernel
theorem terminal1139_checked : terminal1139.check = true := by decide +kernel
theorem terminal1140_checked : terminal1140.check = true := by decide +kernel
theorem terminal1141_checked : terminal1141.check = true := by decide +kernel
theorem terminal1142_checked : terminal1142.check = true := by decide +kernel
theorem terminal1143_checked : terminal1143.check = true := by decide +kernel
theorem terminal1144_checked : terminal1144.check = true := by decide +kernel
theorem terminal1145_checked : terminal1145.check = true := by decide +kernel
theorem terminal1146_checked : terminal1146.check = true := by decide +kernel
theorem terminal1147_checked : terminal1147.check = true := by decide +kernel
theorem terminal1148_checked : terminal1148.check = true := by decide +kernel
theorem terminal1149_checked : terminal1149.check = true := by decide +kernel
theorem terminal1150_checked : terminal1150.check = true := by decide +kernel
theorem terminal1151_checked : terminal1151.check = true := by decide +kernel
theorem terminal1152_checked : terminal1152.check = true := by decide +kernel
theorem terminals35_checked : terminals35.all Terminal.check = true := by
  simp only [terminals35, List.all_cons, List.all_nil, terminal1121_checked, terminal1122_checked, terminal1123_checked, terminal1124_checked, terminal1125_checked, terminal1126_checked, terminal1127_checked, terminal1128_checked, terminal1129_checked, terminal1130_checked, terminal1131_checked, terminal1132_checked, terminal1133_checked, terminal1134_checked, terminal1135_checked, terminal1136_checked, terminal1137_checked, terminal1138_checked, terminal1139_checked, terminal1140_checked, terminal1141_checked, terminal1142_checked, terminal1143_checked, terminal1144_checked, terminal1145_checked, terminal1146_checked, terminal1147_checked, terminal1148_checked, terminal1149_checked, terminal1150_checked, terminal1151_checked, terminal1152_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
