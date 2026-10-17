import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal1057_checked : terminal1057.check = true := by decide +kernel
theorem terminal1058_checked : terminal1058.check = true := by decide +kernel
theorem terminal1059_checked : terminal1059.check = true := by decide +kernel
theorem terminal1060_checked : terminal1060.check = true := by decide +kernel
theorem terminal1061_checked : terminal1061.check = true := by decide +kernel
theorem terminal1062_checked : terminal1062.check = true := by decide +kernel
theorem terminal1063_checked : terminal1063.check = true := by decide +kernel
theorem terminal1064_checked : terminal1064.check = true := by decide +kernel
theorem terminal1065_checked : terminal1065.check = true := by decide +kernel
theorem terminal1066_checked : terminal1066.check = true := by decide +kernel
theorem terminal1067_checked : terminal1067.check = true := by decide +kernel
theorem terminal1068_checked : terminal1068.check = true := by decide +kernel
theorem terminal1069_checked : terminal1069.check = true := by decide +kernel
theorem terminal1070_checked : terminal1070.check = true := by decide +kernel
theorem terminal1071_checked : terminal1071.check = true := by decide +kernel
theorem terminal1072_checked : terminal1072.check = true := by decide +kernel
theorem terminal1073_checked : terminal1073.check = true := by decide +kernel
theorem terminal1074_checked : terminal1074.check = true := by decide +kernel
theorem terminal1075_checked : terminal1075.check = true := by decide +kernel
theorem terminal1076_checked : terminal1076.check = true := by decide +kernel
theorem terminal1077_checked : terminal1077.check = true := by decide +kernel
theorem terminal1078_checked : terminal1078.check = true := by decide +kernel
theorem terminal1079_checked : terminal1079.check = true := by decide +kernel
theorem terminal1080_checked : terminal1080.check = true := by decide +kernel
theorem terminal1081_checked : terminal1081.check = true := by decide +kernel
theorem terminal1082_checked : terminal1082.check = true := by decide +kernel
theorem terminal1083_checked : terminal1083.check = true := by decide +kernel
theorem terminal1084_checked : terminal1084.check = true := by decide +kernel
theorem terminal1085_checked : terminal1085.check = true := by decide +kernel
theorem terminal1086_checked : terminal1086.check = true := by decide +kernel
theorem terminal1087_checked : terminal1087.check = true := by decide +kernel
theorem terminal1088_checked : terminal1088.check = true := by decide +kernel
theorem terminals33_checked : terminals33.all Terminal.check = true := by
  simp only [terminals33, List.all_cons, List.all_nil, terminal1057_checked, terminal1058_checked, terminal1059_checked, terminal1060_checked, terminal1061_checked, terminal1062_checked, terminal1063_checked, terminal1064_checked, terminal1065_checked, terminal1066_checked, terminal1067_checked, terminal1068_checked, terminal1069_checked, terminal1070_checked, terminal1071_checked, terminal1072_checked, terminal1073_checked, terminal1074_checked, terminal1075_checked, terminal1076_checked, terminal1077_checked, terminal1078_checked, terminal1079_checked, terminal1080_checked, terminal1081_checked, terminal1082_checked, terminal1083_checked, terminal1084_checked, terminal1085_checked, terminal1086_checked, terminal1087_checked, terminal1088_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
