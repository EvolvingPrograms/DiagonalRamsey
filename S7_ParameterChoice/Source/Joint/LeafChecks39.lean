import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1129_checked : Entry.check ⟨1107, 980, ⟨1, 399999999⟩, ⟨0, 19, 18, ⟨159, 79⟩, ⟨11, 4⟩⟩, (FQ.progression (159 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run1130_checked : Entry.check ⟨1108, 980, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run1131_checked : Entry.check ⟨1109, 981, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run1132_checked : Entry.check ⟨1110, 982, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run1133_checked : Entry.check ⟨1111, 982, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run1134_checked : Entry.check ⟨1112, 982, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run1135_checked : Entry.check ⟨1113, 983, ⟨1, 399999999⟩, ⟨0, 20, 21, ⟨149, 79⟩, ⟨169, 79⟩⟩, (FQ.progression (149 / 80) (1 / 80) 21)⟩ = true := by decide +kernel
theorem run1136_checked : Entry.check ⟨1113, 984, ⟨1, 399999999⟩, ⟨0, 40, 4, ⟨169, 79⟩, ⟨43, 19⟩⟩, (FQ.progression (169 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1137_checked : Entry.check ⟨1114, 985, ⟨1, 399999999⟩, ⟨0, 21, 10, ⟨143, 79⟩, ⟨19, 9⟩⟩, (FQ.progression (143 / 80) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run1138_checked : Entry.check ⟨1114, 986, ⟨1, 399999999⟩, ⟨0, 30, 17, ⟨19, 9⟩, ⟨21, 9⟩⟩, (FQ.progression (19 / 10) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run1139_checked : Entry.check ⟨1116, 987, ⟨1, 399999999⟩, ⟨0, 25, 2, ⟨139, 79⟩, ⟨7, 3⟩⟩, [⟨139, 79⟩, ⟨7, 3⟩]⟩ = true := by decide +kernel
theorem run1140_checked : Entry.check ⟨1116, 988, ⟨1, 399999999⟩, ⟨0, 29, 22, ⟨143, 79⟩, ⟨41, 19⟩⟩, (FQ.progression (143 / 80) (1 / 80) 22)⟩ = true := by decide +kernel
theorem run1141_checked : Entry.check ⟨1118, 989, ⟨1, 399999999⟩, ⟨0, 10, 18, ⟨121, 79⟩, ⟨69, 39⟩⟩, (FQ.progression (121 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run1142_checked : Entry.check ⟨1118, 990, ⟨1, 399999999⟩, ⟨0, 27, 23, ⟨69, 39⟩, ⟨2, 0⟩⟩, (FQ.progression (69 / 40) (1 / 80) 23)⟩ = true := by decide +kernel
theorem run1143_checked : Entry.check ⟨1119, 991, ⟨1, 399999999⟩, ⟨0, 0, 13, ⟨291, 79⟩, ⟨303, 79⟩⟩, (FQ.progression (291 / 80) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run1144_checked : Entry.check ⟨1119, 992, ⟨1, 399999999⟩, ⟨0, 12, 18, ⟨303, 79⟩, ⟨4, 0⟩⟩, (FQ.progression (303 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run1145_checked : Entry.check ⟨1120, 993, ⟨1, 399999999⟩, ⟨0, 18, 14, ⟨23, 15⟩, ⟨8, 4⟩⟩, (FQ.progression (23 / 16) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1146_checked : Entry.check ⟨1121, 993, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨129, 79⟩, ⟨133, 79⟩⟩, (FQ.progression (129 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1147_checked : Entry.check ⟨1121, 994, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨133, 79⟩, ⟨67, 39⟩⟩, [⟨133, 79⟩, ⟨67, 39⟩]⟩ = true := by decide +kernel
theorem run1148_checked : Entry.check ⟨1122, 994, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨7, 3⟩, ⟨143, 79⟩⟩, (FQ.progression (7 / 4) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1149_checked : Entry.check ⟨1124, 995, ⟨1, 399999999⟩, ⟨0, 13, 9, ⟨13, 9⟩, ⟨7, 4⟩⟩, (FQ.progression (13 / 10) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1150_checked : Entry.check ⟨1124, 996, ⟨1, 399999999⟩, ⟨0, 21, 13, ⟨7, 4⟩, ⟨31, 19⟩⟩, (FQ.progression (7 / 5) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run1151_checked : Entry.check ⟨1125, 997, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨63, 39⟩, ⟨129, 79⟩⟩, (FQ.progression (63 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1152_checked : Entry.check ⟨1125, 998, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨129, 79⟩, ⟨13, 7⟩⟩, [⟨129, 79⟩, ⟨13, 7⟩]⟩ = true := by decide +kernel
theorem run1153_checked : Entry.check ⟨1126, 998, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨137, 79⟩, ⟨139, 79⟩⟩, [⟨137, 79⟩, ⟨69, 39⟩, ⟨139, 79⟩]⟩ = true := by decide +kernel
theorem run1154_checked : Entry.check ⟨1126, 999, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨139, 79⟩, ⟨7, 3⟩⟩, [⟨139, 79⟩, ⟨7, 3⟩]⟩ = true := by decide +kernel
theorem run1155_checked : Entry.check ⟨1127, 1000, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨99, 79⟩, ⟨51, 39⟩⟩, (FQ.progression (99 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1156_checked : Entry.check ⟨1127, 1001, ⟨1, 399999999⟩, ⟨0, 17, 10, ⟨51, 39⟩, ⟨111, 79⟩⟩, (FQ.progression (51 / 40) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run1157_checked : Entry.check ⟨1127, 1002, ⟨1, 399999999⟩, ⟨0, 26, 3, ⟨111, 79⟩, ⟨113, 79⟩⟩, [⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run1158_checked : Entry.check ⟨1128, 1002, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨23, 15⟩, ⟨119, 79⟩⟩, (FQ.progression (23 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1159_checked : Entry.check ⟨1129, 1003, ⟨1, 399999999⟩, ⟨0, 14, 7, ⟨23, 19⟩, ⟨49, 39⟩⟩, (FQ.progression (23 / 20) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1160_checked : Entry.check ⟨1129, 1004, ⟨1, 399999999⟩, ⟨0, 20, 10, ⟨49, 39⟩, ⟨107, 79⟩⟩, (FQ.progression (49 / 40) (1 / 80) 10)⟩ = true := by decide +kernel
theorem entries39_checked : entries39.all Entry.check = true := by
  simp only [entries39, List.all_cons, List.all_nil, run1129_checked, run1130_checked, run1131_checked, run1132_checked, run1133_checked, run1134_checked, run1135_checked, run1136_checked, run1137_checked, run1138_checked, run1139_checked, run1140_checked, run1141_checked, run1142_checked, run1143_checked, run1144_checked, run1145_checked, run1146_checked, run1147_checked, run1148_checked, run1149_checked, run1150_checked, run1151_checked, run1152_checked, run1153_checked, run1154_checked, run1155_checked, run1156_checked, run1157_checked, run1158_checked, run1159_checked, run1160_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
