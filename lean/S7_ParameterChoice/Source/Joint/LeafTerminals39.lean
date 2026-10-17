import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal1249_checked : terminal1249.check = true := by decide +kernel
theorem terminal1250_checked : terminal1250.check = true := by decide +kernel
theorem terminal1251_checked : terminal1251.check = true := by decide +kernel
theorem terminal1252_checked : terminal1252.check = true := by decide +kernel
theorem terminal1253_checked : terminal1253.check = true := by decide +kernel
theorem terminal1254_checked : terminal1254.check = true := by decide +kernel
theorem terminal1255_checked : terminal1255.check = true := by decide +kernel
theorem terminal1256_checked : terminal1256.check = true := by decide +kernel
theorem terminal1257_checked : terminal1257.check = true := by decide +kernel
theorem terminal1258_checked : terminal1258.check = true := by decide +kernel
theorem terminal1259_checked : terminal1259.check = true := by decide +kernel
theorem terminal1260_checked : terminal1260.check = true := by decide +kernel
theorem terminal1261_checked : terminal1261.check = true := by decide +kernel
theorem terminal1262_checked : terminal1262.check = true := by decide +kernel
theorem terminal1263_checked : terminal1263.check = true := by decide +kernel
theorem terminal1264_checked : terminal1264.check = true := by decide +kernel
theorem terminal1265_checked : terminal1265.check = true := by decide +kernel
theorem terminal1266_checked : terminal1266.check = true := by decide +kernel
theorem terminal1267_checked : terminal1267.check = true := by decide +kernel
theorem terminal1268_checked : terminal1268.check = true := by decide +kernel
theorem terminals39_checked : terminals39.all Terminal.check = true := by
  simp only [terminals39, List.all_cons, List.all_nil, terminal1249_checked, terminal1250_checked, terminal1251_checked, terminal1252_checked, terminal1253_checked, terminal1254_checked, terminal1255_checked, terminal1256_checked, terminal1257_checked, terminal1258_checked, terminal1259_checked, terminal1260_checked, terminal1261_checked, terminal1262_checked, terminal1263_checked, terminal1264_checked, terminal1265_checked, terminal1266_checked, terminal1267_checked, terminal1268_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
