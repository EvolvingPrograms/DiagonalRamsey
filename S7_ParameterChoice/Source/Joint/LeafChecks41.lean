import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1193_checked : Entry.check ⟨1142, 1034, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨57, 79⟩, ⟨59, 79⟩⟩, [⟨57, 79⟩, ⟨29, 39⟩, ⟨59, 79⟩]⟩ = true := by decide +kernel
theorem run1194_checked : Entry.check ⟨1142, 1035, ⟨1, 399999999⟩, ⟨0, 12, 5, ⟨59, 79⟩, ⟨63, 79⟩⟩, (FQ.progression (59 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1195_checked : Entry.check ⟨1143, 1036, ⟨1, 399999999⟩, ⟨0, 7, 4, ⟨13, 19⟩, ⟨11, 15⟩⟩, (FQ.progression (13 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1196_checked : Entry.check ⟨1143, 1037, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨11, 15⟩, ⟨29, 39⟩⟩, (FQ.progression (11 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1197_checked : Entry.check ⟨1144, 1038, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨47, 79⟩, ⟨5, 7⟩⟩, [⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1198_checked : Entry.check ⟨1144, 1039, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, (FQ.progression (5 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1199_checked : Entry.check ⟨1144, 1040, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨27, 39⟩, ⟨7, 9⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩, ⟨7, 9⟩]⟩ = true := by decide +kernel
theorem run1200_checked : Entry.check ⟨1146, 1041, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1201_checked : Entry.check ⟨1146, 1042, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1202_checked : Entry.check ⟨1147, 1043, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨17, 9⟩, ⟨137, 79⟩⟩, [⟨17, 9⟩, ⟨137, 79⟩]⟩ = true := by decide +kernel
theorem run1203_checked : Entry.check ⟨1147, 1044, ⟨1, 399999999⟩, ⟨0, 1, 5, ⟨137, 79⟩, ⟨141, 79⟩⟩, (FQ.progression (137 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1204_checked : Entry.check ⟨1148, 1045, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1205_checked : Entry.check ⟨1148, 1046, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨11, 19⟩, ⟨3, 4⟩⟩, (FQ.progression (11 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1206_checked : Entry.check ⟨1150, 1047, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨39, 79⟩, ⟨21, 39⟩⟩, (FQ.progression (39 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1207_checked : Entry.check ⟨1151, 1048, ⟨1, 399999999⟩, ⟨0, 3, 7, ⟨9, 19⟩, ⟨21, 39⟩⟩, (FQ.progression (9 / 20) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1208_checked : Entry.check ⟨1152, 1049, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨117, 79⟩, ⟨3, 1⟩⟩, (FQ.progression (117 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1209_checked : Entry.check ⟨1152, 1050, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨3, 1⟩, ⟨31, 19⟩⟩, (FQ.progression (3 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1210_checked : Entry.check ⟨1153, 1050, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨25, 15⟩, ⟨129, 79⟩⟩, (FQ.progression (25 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1211_checked : Entry.check ⟨1153, 1051, ⟨1, 399999999⟩, ⟨0, 4, 3, ⟨129, 79⟩, ⟨131, 79⟩⟩, [⟨129, 79⟩, ⟨13, 7⟩, ⟨131, 79⟩]⟩ = true := by decide +kernel
theorem run1212_checked : Entry.check ⟨1154, 1051, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨67, 39⟩, ⟨69, 39⟩⟩, (FQ.progression (67 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1213_checked : Entry.check ⟨1154, 1052, ⟨1, 399999999⟩, ⟨0, 4, 27, ⟨69, 39⟩, ⟨41, 19⟩⟩, (FQ.progression (69 / 40) (1 / 80) 27)⟩ = true := by decide +kernel
theorem run1214_checked : Entry.check ⟨1154, 1053, ⟨1, 399999999⟩, ⟨0, 30, 6, ⟨41, 19⟩, ⟨169, 79⟩⟩, (FQ.progression (41 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1215_checked : Entry.check ⟨1155, 1054, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1216_checked : Entry.check ⟨1156, 1055, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run1217_checked : Entry.check ⟨1156, 1056, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run1218_checked : Entry.check ⟨1157, 1057, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1219_checked : Entry.check ⟨1158, 1058, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run1220_checked : Entry.check ⟨1159, 1059, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨13, 39⟩, ⟨7, 19⟩⟩, [⟨13, 39⟩, ⟨27, 79⟩, ⟨7, 19⟩]⟩ = true := by decide +kernel
theorem run1221_checked : Entry.check ⟨1160, 1060, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run1222_checked : Entry.check ⟨1160, 1061, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run1223_checked : Entry.check ⟨1161, 1062, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨21, 79⟩, ⟨3, 9⟩⟩, (FQ.progression (21 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1224_checked : Entry.check ⟨1162, 1063, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem entries41_checked : entries41.all Entry.check = true := by
  simp only [entries41, List.all_cons, List.all_nil, run1193_checked, run1194_checked, run1195_checked, run1196_checked, run1197_checked, run1198_checked, run1199_checked, run1200_checked, run1201_checked, run1202_checked, run1203_checked, run1204_checked, run1205_checked, run1206_checked, run1207_checked, run1208_checked, run1209_checked, run1210_checked, run1211_checked, run1212_checked, run1213_checked, run1214_checked, run1215_checked, run1216_checked, run1217_checked, run1218_checked, run1219_checked, run1220_checked, run1221_checked, run1222_checked, run1223_checked, run1224_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
