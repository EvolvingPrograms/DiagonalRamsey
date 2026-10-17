import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal1217_checked : terminal1217.check = true := by decide +kernel
theorem terminal1218_checked : terminal1218.check = true := by decide +kernel
theorem terminal1219_checked : terminal1219.check = true := by decide +kernel
theorem terminal1220_checked : terminal1220.check = true := by decide +kernel
theorem terminal1221_checked : terminal1221.check = true := by decide +kernel
theorem terminal1222_checked : terminal1222.check = true := by decide +kernel
theorem terminal1223_checked : terminal1223.check = true := by decide +kernel
theorem terminal1224_checked : terminal1224.check = true := by decide +kernel
theorem terminal1225_checked : terminal1225.check = true := by decide +kernel
theorem terminal1226_checked : terminal1226.check = true := by decide +kernel
theorem terminal1227_checked : terminal1227.check = true := by decide +kernel
theorem terminal1228_checked : terminal1228.check = true := by decide +kernel
theorem terminal1229_checked : terminal1229.check = true := by decide +kernel
theorem terminal1230_checked : terminal1230.check = true := by decide +kernel
theorem terminal1231_checked : terminal1231.check = true := by decide +kernel
theorem terminal1232_checked : terminal1232.check = true := by decide +kernel
theorem terminal1233_checked : terminal1233.check = true := by decide +kernel
theorem terminal1234_checked : terminal1234.check = true := by decide +kernel
theorem terminal1235_checked : terminal1235.check = true := by decide +kernel
theorem terminal1236_checked : terminal1236.check = true := by decide +kernel
theorem terminal1237_checked : terminal1237.check = true := by decide +kernel
theorem terminal1238_checked : terminal1238.check = true := by decide +kernel
theorem terminal1239_checked : terminal1239.check = true := by decide +kernel
theorem terminal1240_checked : terminal1240.check = true := by decide +kernel
theorem terminal1241_checked : terminal1241.check = true := by decide +kernel
theorem terminal1242_checked : terminal1242.check = true := by decide +kernel
theorem terminal1243_checked : terminal1243.check = true := by decide +kernel
theorem terminal1244_checked : terminal1244.check = true := by decide +kernel
theorem terminal1245_checked : terminal1245.check = true := by decide +kernel
theorem terminal1246_checked : terminal1246.check = true := by decide +kernel
theorem terminal1247_checked : terminal1247.check = true := by decide +kernel
theorem terminal1248_checked : terminal1248.check = true := by decide +kernel
theorem terminals38_checked : terminals38.all Terminal.check = true := by
  simp only [terminals38, List.all_cons, List.all_nil, terminal1217_checked, terminal1218_checked, terminal1219_checked, terminal1220_checked, terminal1221_checked, terminal1222_checked, terminal1223_checked, terminal1224_checked, terminal1225_checked, terminal1226_checked, terminal1227_checked, terminal1228_checked, terminal1229_checked, terminal1230_checked, terminal1231_checked, terminal1232_checked, terminal1233_checked, terminal1234_checked, terminal1235_checked, terminal1236_checked, terminal1237_checked, terminal1238_checked, terminal1239_checked, terminal1240_checked, terminal1241_checked, terminal1242_checked, terminal1243_checked, terminal1244_checked, terminal1245_checked, terminal1246_checked, terminal1247_checked, terminal1248_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
