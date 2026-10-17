import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal1153_checked : terminal1153.check = true := by decide +kernel
theorem terminal1154_checked : terminal1154.check = true := by decide +kernel
theorem terminal1155_checked : terminal1155.check = true := by decide +kernel
theorem terminal1156_checked : terminal1156.check = true := by decide +kernel
theorem terminal1157_checked : terminal1157.check = true := by decide +kernel
theorem terminal1158_checked : terminal1158.check = true := by decide +kernel
theorem terminal1159_checked : terminal1159.check = true := by decide +kernel
theorem terminal1160_checked : terminal1160.check = true := by decide +kernel
theorem terminal1161_checked : terminal1161.check = true := by decide +kernel
theorem terminal1162_checked : terminal1162.check = true := by decide +kernel
theorem terminal1163_checked : terminal1163.check = true := by decide +kernel
theorem terminal1164_checked : terminal1164.check = true := by decide +kernel
theorem terminal1165_checked : terminal1165.check = true := by decide +kernel
theorem terminal1166_checked : terminal1166.check = true := by decide +kernel
theorem terminal1167_checked : terminal1167.check = true := by decide +kernel
theorem terminal1168_checked : terminal1168.check = true := by decide +kernel
theorem terminal1169_checked : terminal1169.check = true := by decide +kernel
theorem terminal1170_checked : terminal1170.check = true := by decide +kernel
theorem terminal1171_checked : terminal1171.check = true := by decide +kernel
theorem terminal1172_checked : terminal1172.check = true := by decide +kernel
theorem terminal1173_checked : terminal1173.check = true := by decide +kernel
theorem terminal1174_checked : terminal1174.check = true := by decide +kernel
theorem terminal1175_checked : terminal1175.check = true := by decide +kernel
theorem terminal1176_checked : terminal1176.check = true := by decide +kernel
theorem terminal1177_checked : terminal1177.check = true := by decide +kernel
theorem terminal1178_checked : terminal1178.check = true := by decide +kernel
theorem terminal1179_checked : terminal1179.check = true := by decide +kernel
theorem terminal1180_checked : terminal1180.check = true := by decide +kernel
theorem terminal1181_checked : terminal1181.check = true := by decide +kernel
theorem terminal1182_checked : terminal1182.check = true := by decide +kernel
theorem terminal1183_checked : terminal1183.check = true := by decide +kernel
theorem terminal1184_checked : terminal1184.check = true := by decide +kernel
theorem terminals36_checked : terminals36.all Terminal.check = true := by
  simp only [terminals36, List.all_cons, List.all_nil, terminal1153_checked, terminal1154_checked, terminal1155_checked, terminal1156_checked, terminal1157_checked, terminal1158_checked, terminal1159_checked, terminal1160_checked, terminal1161_checked, terminal1162_checked, terminal1163_checked, terminal1164_checked, terminal1165_checked, terminal1166_checked, terminal1167_checked, terminal1168_checked, terminal1169_checked, terminal1170_checked, terminal1171_checked, terminal1172_checked, terminal1173_checked, terminal1174_checked, terminal1175_checked, terminal1176_checked, terminal1177_checked, terminal1178_checked, terminal1179_checked, terminal1180_checked, terminal1181_checked, terminal1182_checked, terminal1183_checked, terminal1184_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
