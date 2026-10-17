import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal1185_checked : terminal1185.check = true := by decide +kernel
theorem terminal1186_checked : terminal1186.check = true := by decide +kernel
theorem terminal1187_checked : terminal1187.check = true := by decide +kernel
theorem terminal1188_checked : terminal1188.check = true := by decide +kernel
theorem terminal1189_checked : terminal1189.check = true := by decide +kernel
theorem terminal1190_checked : terminal1190.check = true := by decide +kernel
theorem terminal1191_checked : terminal1191.check = true := by decide +kernel
theorem terminal1192_checked : terminal1192.check = true := by decide +kernel
theorem terminal1193_checked : terminal1193.check = true := by decide +kernel
theorem terminal1194_checked : terminal1194.check = true := by decide +kernel
theorem terminal1195_checked : terminal1195.check = true := by decide +kernel
theorem terminal1196_checked : terminal1196.check = true := by decide +kernel
theorem terminal1197_checked : terminal1197.check = true := by decide +kernel
theorem terminal1198_checked : terminal1198.check = true := by decide +kernel
theorem terminal1199_checked : terminal1199.check = true := by decide +kernel
theorem terminal1200_checked : terminal1200.check = true := by decide +kernel
theorem terminal1201_checked : terminal1201.check = true := by decide +kernel
theorem terminal1202_checked : terminal1202.check = true := by decide +kernel
theorem terminal1203_checked : terminal1203.check = true := by decide +kernel
theorem terminal1204_checked : terminal1204.check = true := by decide +kernel
theorem terminal1205_checked : terminal1205.check = true := by decide +kernel
theorem terminal1206_checked : terminal1206.check = true := by decide +kernel
theorem terminal1207_checked : terminal1207.check = true := by decide +kernel
theorem terminal1208_checked : terminal1208.check = true := by decide +kernel
theorem terminal1209_checked : terminal1209.check = true := by decide +kernel
theorem terminal1210_checked : terminal1210.check = true := by decide +kernel
theorem terminal1211_checked : terminal1211.check = true := by decide +kernel
theorem terminal1212_checked : terminal1212.check = true := by decide +kernel
theorem terminal1213_checked : terminal1213.check = true := by decide +kernel
theorem terminal1214_checked : terminal1214.check = true := by decide +kernel
theorem terminal1215_checked : terminal1215.check = true := by decide +kernel
theorem terminal1216_checked : terminal1216.check = true := by decide +kernel
theorem terminals37_checked : terminals37.all Terminal.check = true := by
  simp only [terminals37, List.all_cons, List.all_nil, terminal1185_checked, terminal1186_checked, terminal1187_checked, terminal1188_checked, terminal1189_checked, terminal1190_checked, terminal1191_checked, terminal1192_checked, terminal1193_checked, terminal1194_checked, terminal1195_checked, terminal1196_checked, terminal1197_checked, terminal1198_checked, terminal1199_checked, terminal1200_checked, terminal1201_checked, terminal1202_checked, terminal1203_checked, terminal1204_checked, terminal1205_checked, terminal1206_checked, terminal1207_checked, terminal1208_checked, terminal1209_checked, terminal1210_checked, terminal1211_checked, terminal1212_checked, terminal1213_checked, terminal1214_checked, terminal1215_checked, terminal1216_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
