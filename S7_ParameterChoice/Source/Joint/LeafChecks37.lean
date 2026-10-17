import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1073_checked : Entry.check ⟨1005, 934, ⟨1, 399999999⟩, ⟨0, 9, 4, ⟨13, 19⟩, ⟨11, 15⟩⟩, (FQ.progression (13 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1074_checked : Entry.check ⟨1005, 935, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run1075_checked : Entry.check ⟨1006, 936, ⟨1, 399999999⟩, ⟨0, 8, 3, ⟨3, 4⟩, ⟨5, 7⟩⟩, [⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1076_checked : Entry.check ⟨1006, 937, ⟨1, 399999999⟩, ⟨0, 10, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, (FQ.progression (5 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1077_checked : Entry.check ⟨1006, 938, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨27, 39⟩, ⟨11, 15⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run1078_checked : Entry.check ⟨1007, 939, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1079_checked : Entry.check ⟨1007, 940, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1080_checked : Entry.check ⟨1009, 941, ⟨1, 399999999⟩, ⟨0, 1, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1081_checked : Entry.check ⟨1009, 942, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨11, 19⟩, ⟨3, 4⟩⟩, (FQ.progression (11 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1082_checked : Entry.check ⟨1010, 943, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨19, 39⟩, ⟨21, 39⟩⟩, (FQ.progression (19 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1083_checked : Entry.check ⟨1012, 944, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1084_checked : Entry.check ⟨1013, 945, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨29, 19⟩, ⟨123, 79⟩⟩, (FQ.progression (29 / 20) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1085_checked : Entry.check ⟨1013, 946, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨123, 79⟩, ⟨31, 19⟩⟩, [⟨123, 79⟩, ⟨31, 19⟩]⟩ = true := by decide +kernel
theorem run1086_checked : Entry.check ⟨1014, 946, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨63, 39⟩, ⟨129, 79⟩⟩, (FQ.progression (63 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1087_checked : Entry.check ⟨1014, 947, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨129, 79⟩, ⟨131, 79⟩⟩, [⟨129, 79⟩, ⟨13, 7⟩, ⟨131, 79⟩]⟩ = true := by decide +kernel
theorem run1088_checked : Entry.check ⟨1015, 948, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨71, 39⟩, ⟨73, 39⟩⟩, (FQ.progression (71 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1089_checked : Entry.check ⟨1016, 948, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨37, 19⟩, ⟨153, 79⟩⟩, (FQ.progression (37 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1090_checked : Entry.check ⟨1017, 948, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨159, 79⟩, ⟨81, 39⟩⟩, (FQ.progression (159 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1091_checked : Entry.check ⟨1017, 949, ⟨1, 399999999⟩, ⟨0, 3, 12, ⟨81, 39⟩, ⟨173, 79⟩⟩, (FQ.progression (81 / 40) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run1092_checked : Entry.check ⟨1018, 949, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨177, 79⟩, ⟨183, 79⟩⟩, (FQ.progression (177 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1093_checked : Entry.check ⟨1019, 950, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨47, 19⟩, ⟨97, 39⟩⟩, (FQ.progression (47 / 20) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1094_checked : Entry.check ⟨1020, 951, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1095_checked : Entry.check ⟨1021, 952, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run1096_checked : Entry.check ⟨1021, 953, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run1097_checked : Entry.check ⟨1022, 954, ⟨1, 399999999⟩, ⟨0, 2, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1098_checked : Entry.check ⟨1023, 955, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨19, 7⟩, ⟨41, 15⟩⟩, (FQ.progression (19 / 8) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run1099_checked : Entry.check ⟨1023, 956, ⟨1, 399999999⟩, ⟨0, 15, 17, ⟨41, 15⟩, ⟨221, 79⟩⟩, (FQ.progression (41 / 16) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run1100_checked : Entry.check ⟨1024, 957, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run1101_checked : Entry.check ⟨1025, 958, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨27, 79⟩, ⟨7, 19⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩]⟩ = true := by decide +kernel
theorem run1102_checked : Entry.check ⟨1026, 959, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run1103_checked : Entry.check ⟨1026, 960, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨5, 15⟩, ⟨3, 7⟩⟩, (FQ.progression (5 / 16) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1104_checked : Entry.check ⟨1027, 961, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨27, 19⟩, ⟨111, 79⟩⟩, (FQ.progression (27 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem entries37_checked : entries37.all Entry.check = true := by
  simp only [entries37, List.all_cons, List.all_nil, run1073_checked, run1074_checked, run1075_checked, run1076_checked, run1077_checked, run1078_checked, run1079_checked, run1080_checked, run1081_checked, run1082_checked, run1083_checked, run1084_checked, run1085_checked, run1086_checked, run1087_checked, run1088_checked, run1089_checked, run1090_checked, run1091_checked, run1092_checked, run1093_checked, run1094_checked, run1095_checked, run1096_checked, run1097_checked, run1098_checked, run1099_checked, run1100_checked, run1101_checked, run1102_checked, run1103_checked, run1104_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
