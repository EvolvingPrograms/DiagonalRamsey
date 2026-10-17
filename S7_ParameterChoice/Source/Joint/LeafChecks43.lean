import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1246_checked : Entry.check ⟨1241, 1081, ⟨1, 399999999⟩, ⟨0, 0, 34, ⟨209, 79⟩, ⟨121, 39⟩⟩, (FQ.progression (209 / 80) (1 / 80) 34)⟩ = true := by decide +kernel
theorem run1247_checked : Entry.check ⟨1244, 1082, ⟨1, 399999999⟩, ⟨0, 1, 17, ⟨159, 79⟩, ⟨35, 15⟩⟩, (FQ.progression (159 / 80) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run1248_checked : Entry.check ⟨1245, 1082, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run1249_checked : Entry.check ⟨1246, 1083, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run1250_checked : Entry.check ⟨1247, 1084, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run1251_checked : Entry.check ⟨1248, 1084, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run1252_checked : Entry.check ⟨1249, 1084, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨47, 15⟩, ⟨237, 79⟩⟩, [⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩]⟩ = true := by decide +kernel
theorem run1253_checked : Entry.check ⟨1251, 1085, ⟨1, 399999999⟩, ⟨0, 0, 24, ⟨37, 19⟩, ⟨171, 79⟩⟩, (FQ.progression (37 / 20) (1 / 80) 24)⟩ = true := by decide +kernel
theorem run1254_checked : Entry.check ⟨1252, 1086, ⟨1, 399999999⟩, ⟨0, 21, 13, ⟨71, 39⟩, ⟨77, 39⟩⟩, (FQ.progression (71 / 40) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run1255_checked : Entry.check ⟨1252, 1087, ⟨1, 399999999⟩, ⟨0, 33, 7, ⟨77, 39⟩, ⟨2, 0⟩⟩, (FQ.progression (77 / 40) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1256_checked : Entry.check ⟨1253, 1087, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨161, 79⟩, ⟨167, 79⟩⟩, (FQ.progression (161 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1257_checked : Entry.check ⟨1254, 1088, ⟨1, 399999999⟩, ⟨0, 26, 2, ⟨139, 79⟩, ⟨7, 3⟩⟩, [⟨139, 79⟩, ⟨7, 3⟩]⟩ = true := by decide +kernel
theorem run1258_checked : Entry.check ⟨1254, 1089, ⟨1, 399999999⟩, ⟨0, 30, 21, ⟨143, 79⟩, ⟨163, 79⟩⟩, (FQ.progression (143 / 80) (1 / 80) 21)⟩ = true := by decide +kernel
theorem run1259_checked : Entry.check ⟨1255, 1090, ⟨1, 399999999⟩, ⟨0, 15, 20, ⟨3, 1⟩, ⟨139, 79⟩⟩, (FQ.progression (3 / 2) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run1260_checked : Entry.check ⟨1255, 1091, ⟨1, 399999999⟩, ⟨0, 34, 15, ⟨139, 79⟩, ⟨153, 79⟩⟩, (FQ.progression (139 / 80) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1261_checked : Entry.check ⟨1256, 1091, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨31, 15⟩, ⟨159, 79⟩⟩, (FQ.progression (31 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1262_checked : Entry.check ⟨1257, 1092, ⟨1, 399999999⟩, ⟨0, 18, 13, ⟨23, 15⟩, ⟨127, 79⟩⟩, (FQ.progression (23 / 16) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run1263_checked : Entry.check ⟨1258, 1093, ⟨1, 399999999⟩, ⟨0, 14, 7, ⟨13, 9⟩, ⟨11, 7⟩⟩, (FQ.progression (13 / 10) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1264_checked : Entry.check ⟨1258, 1094, ⟨1, 399999999⟩, ⟨0, 20, 15, ⟨11, 7⟩, ⟨31, 19⟩⟩, (FQ.progression (11 / 8) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1265_checked : Entry.check ⟨1260, 1095, ⟨1, 399999999⟩, ⟨0, 15, 13, ⟨5, 3⟩, ⟨7, 4⟩⟩, (FQ.progression (5 / 4) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run1266_checked : Entry.check ⟨1260, 1096, ⟨1, 399999999⟩, ⟨0, 27, 2, ⟨7, 4⟩, ⟨113, 79⟩⟩, [⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run1267_checked : Entry.check ⟨1262, 1097, ⟨1, 399999999⟩, ⟨0, 12, 8, ⟨91, 79⟩, ⟨49, 39⟩⟩, (FQ.progression (91 / 80) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1268_checked : Entry.check ⟨1262, 1098, ⟨1, 399999999⟩, ⟨0, 19, 9, ⟨49, 39⟩, ⟨53, 39⟩⟩, (FQ.progression (49 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1269_checked : Entry.check ⟨1262, 1099, ⟨1, 399999999⟩, ⟨0, 27, 5, ⟨53, 39⟩, ⟨11, 7⟩⟩, (FQ.progression (53 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1270_checked : Entry.check ⟨1263, 1100, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨27, 7⟩, ⟨17, 4⟩⟩, [⟨27, 7⟩, ⟨271, 79⟩, ⟨17, 4⟩]⟩ = true := by decide +kernel
theorem run1271_checked : Entry.check ⟨1265, 1101, ⟨1, 399999999⟩, ⟨0, 7, 6, ⟨21, 19⟩, ⟨89, 79⟩⟩, (FQ.progression (21 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1272_checked : Entry.check ⟨1265, 1102, ⟨1, 399999999⟩, ⟨0, 12, 6, ⟨89, 79⟩, ⟨47, 39⟩⟩, (FQ.progression (89 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1273_checked : Entry.check ⟨1265, 1103, ⟨1, 399999999⟩, ⟨0, 17, 8, ⟨47, 39⟩, ⟨101, 79⟩⟩, (FQ.progression (47 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1274_checked : Entry.check ⟨1266, 1104, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨79, 79⟩, ⟨41, 39⟩⟩, (FQ.progression (79 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1275_checked : Entry.check ⟨1266, 1105, ⟨1, 399999999⟩, ⟨0, 15, 5, ⟨41, 39⟩, ⟨43, 39⟩⟩, (FQ.progression (41 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1276_checked : Entry.check ⟨1266, 1106, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨43, 39⟩, ⟨87, 79⟩⟩, [⟨43, 39⟩, ⟨87, 79⟩]⟩ = true := by decide +kernel
theorem run1277_checked : Entry.check ⟨1266, 1107, ⟨1, 399999999⟩, ⟨0, 20, 3, ⟨87, 79⟩, ⟨89, 79⟩⟩, [⟨87, 79⟩, ⟨11, 9⟩, ⟨89, 79⟩]⟩ = true := by decide +kernel
theorem entries43_checked : entries43.all Entry.check = true := by
  simp only [entries43, List.all_cons, List.all_nil, run1246_checked, run1247_checked, run1248_checked, run1249_checked, run1250_checked, run1251_checked, run1252_checked, run1253_checked, run1254_checked, run1255_checked, run1256_checked, run1257_checked, run1258_checked, run1259_checked, run1260_checked, run1261_checked, run1262_checked, run1263_checked, run1264_checked, run1265_checked, run1266_checked, run1267_checked, run1268_checked, run1269_checked, run1270_checked, run1271_checked, run1272_checked, run1273_checked, run1274_checked, run1275_checked, run1276_checked, run1277_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
