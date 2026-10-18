import S7_ParameterChoice.Source.Joint.Foundations.ArithmeticData
import S7_ParameterChoice.Source.Joint.Leaves.LeafIndex

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel reductions; Lake parallelizes these batches.
set_option Elab.async false

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1161_checked : Entry.check ⟨1129, 1005, ⟨1, 399999999⟩, ⟨0, 29, 3, ⟨107, 79⟩, ⟨109, 79⟩⟩, [⟨107, 79⟩, ⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run1162_checked : Entry.check ⟨1130, 1005, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨7, 4⟩, ⟨23, 15⟩⟩, (FQ.progression (7 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1163_checked : Entry.check ⟨1131, 1006, ⟨1, 399999999⟩, ⟨0, 11, 6, ⟨21, 19⟩, ⟨89, 79⟩⟩, (FQ.progression (21 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1164_checked : Entry.check ⟨1131, 1007, ⟨1, 399999999⟩, ⟨0, 16, 7, ⟨89, 79⟩, ⟨19, 15⟩⟩, (FQ.progression (89 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1165_checked : Entry.check ⟨1131, 1008, ⟨1, 399999999⟩, ⟨0, 22, 7, ⟨19, 15⟩, ⟨101, 79⟩⟩, (FQ.progression (19 / 16) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1166_checked : Entry.check ⟨1132, 1009, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨1, 0⟩, ⟨41, 39⟩⟩, [⟨1, 0⟩, ⟨81, 79⟩, ⟨41, 39⟩]⟩ = true := by decide +kernel
theorem run1167_checked : Entry.check ⟨1132, 1010, ⟨1, 399999999⟩, ⟨0, 15, 5, ⟨41, 39⟩, ⟨43, 39⟩⟩, (FQ.progression (41 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1168_checked : Entry.check ⟨1132, 1011, ⟨1, 399999999⟩, ⟨0, 19, 4, ⟨43, 39⟩, ⟨89, 79⟩⟩, (FQ.progression (43 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1169_checked : Entry.check ⟨1133, 1011, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 7⟩, ⟨23, 19⟩⟩, [⟨9, 7⟩, ⟨91, 79⟩, ⟨23, 19⟩]⟩ = true := by decide +kernel
theorem run1170_checked : Entry.check ⟨1133, 1012, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨23, 19⟩, ⟨93, 79⟩⟩, [⟨23, 19⟩, ⟨93, 79⟩]⟩ = true := by decide +kernel
theorem run1171_checked : Entry.check ⟨1134, 1013, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨37, 39⟩, ⟨19, 19⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩]⟩ = true := by decide +kernel
theorem run1172_checked : Entry.check ⟨1134, 1014, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨19, 19⟩, ⟨79, 79⟩⟩, (FQ.progression (19 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1173_checked : Entry.check ⟨1134, 1015, ⟨1, 399999999⟩, ⟨0, 17, 6, ⟨79, 79⟩, ⟨21, 19⟩⟩, (FQ.progression (79 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1174_checked : Entry.check ⟨1135, 1016, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run1175_checked : Entry.check ⟨1135, 1017, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run1176_checked : Entry.check ⟨1135, 1018, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨9, 9⟩, ⟨37, 39⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run1177_checked : Entry.check ⟨1135, 1019, ⟨1, 399999999⟩, ⟨0, 15, 5, ⟨37, 39⟩, ⟨39, 39⟩⟩, (FQ.progression (37 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1178_checked : Entry.check ⟨1135, 1020, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run1179_checked : Entry.check ⟨1136, 1021, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨81, 39⟩, ⟨83, 39⟩⟩, (FQ.progression (81 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1180_checked : Entry.check ⟨1137, 1022, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨4, 4⟩, ⟨13, 15⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run1181_checked : Entry.check ⟨1137, 1023, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨13, 15⟩, ⟨17, 19⟩⟩, (FQ.progression (13 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1182_checked : Entry.check ⟨1137, 1024, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run1183_checked : Entry.check ⟨1137, 1025, ⟨1, 399999999⟩, ⟨0, 18, 4, ⟨7, 7⟩, ⟨73, 79⟩⟩, (FQ.progression (7 / 8) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1184_checked : Entry.check ⟨1137, 1026, ⟨1, 399999999⟩, ⟨0, 21, 3, ⟨73, 79⟩, ⟨15, 15⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩, ⟨15, 15⟩]⟩ = true := by decide +kernel
theorem run1185_checked : Entry.check ⟨1138, 1027, ⟨1, 399999999⟩, ⟨0, 0, 46, ⟨107, 39⟩, ⟨259, 79⟩⟩, (FQ.progression (107 / 40) (1 / 80) 46)⟩ = true := by decide +kernel
theorem run1186_checked : Entry.check ⟨1138, 1028, ⟨1, 399999999⟩, ⟨0, 45, 9, ⟨259, 79⟩, ⟨267, 79⟩⟩, (FQ.progression (259 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1187_checked : Entry.check ⟨1139, 1028, ⟨1, 399999999⟩, ⟨0, 0, 14, ⟨139, 39⟩, ⟨291, 79⟩⟩, (FQ.progression (139 / 40) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1188_checked : Entry.check ⟨1140, 1029, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨59, 79⟩, ⟨31, 39⟩⟩, (FQ.progression (59 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1189_checked : Entry.check ⟨1140, 1030, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨31, 39⟩, ⟨4, 4⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run1190_checked : Entry.check ⟨1140, 1031, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨4, 4⟩, ⟨67, 79⟩⟩, (FQ.progression (4 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1191_checked : Entry.check ⟨1141, 1032, ⟨1, 399999999⟩, ⟨0, 0, 23, ⟨257, 79⟩, ⟨279, 79⟩⟩, (FQ.progression (257 / 80) (1 / 80) 23)⟩ = true := by decide +kernel
theorem run1192_checked : Entry.check ⟨1142, 1033, ⟨1, 399999999⟩, ⟨0, 7, 4, ⟨27, 39⟩, ⟨57, 79⟩⟩, (FQ.progression (27 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem entries40_checked : entries40.all Entry.check = true := by
  simp only [entries40, List.all_cons, List.all_nil, run1161_checked, run1162_checked, run1163_checked, run1164_checked, run1165_checked, run1166_checked, run1167_checked, run1168_checked, run1169_checked, run1170_checked, run1171_checked, run1172_checked, run1173_checked, run1174_checked, run1175_checked, run1176_checked, run1177_checked, run1178_checked, run1179_checked, run1180_checked, run1181_checked, run1182_checked, run1183_checked, run1184_checked, run1185_checked, run1186_checked, run1187_checked, run1188_checked, run1189_checked, run1190_checked, run1191_checked, run1192_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

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

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1225_checked : Entry.check ⟨1163, 1064, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run1226_checked : Entry.check ⟨1163, 1065, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run1227_checked : Entry.check ⟨1164, 1066, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨17, 79⟩, ⟨9, 39⟩⟩, [⟨17, 79⟩, ⟨9, 39⟩]⟩ = true := by decide +kernel
theorem run1228_checked : Entry.check ⟨1164, 1067, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run1229_checked : Entry.check ⟨1165, 1068, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run1230_checked : Entry.check ⟨1166, 1069, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run1231_checked : Entry.check ⟨1167, 1070, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run1232_checked : Entry.check ⟨1168, 1071, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run1233_checked : Entry.check ⟨1169, 1072, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨33, 15⟩, ⟨35, 15⟩⟩, (FQ.progression (33 / 16) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run1234_checked : Entry.check ⟨1169, 1073, ⟨1, 399999999⟩, ⟨0, 10, 47, ⟨35, 15⟩, ⟨221, 79⟩⟩, (FQ.progression (35 / 16) (1 / 80) 47)⟩ = true := by decide +kernel
theorem run1235_checked : Entry.check ⟨1223, 1074, ⟨1, 399999999⟩, ⟨0, 0, 30, ⟨273, 79⟩, ⟨151, 39⟩⟩, (FQ.progression (273 / 80) (1 / 80) 30)⟩ = true := by decide +kernel
theorem run1236_checked : Entry.check ⟨1231, 1075, ⟨1, 399999999⟩, ⟨0, 21, 14, ⟨61, 19⟩, ⟨257, 79⟩⟩, (FQ.progression (61 / 20) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1237_checked : Entry.check ⟨1234, 1076, ⟨1, 399999999⟩, ⟨0, 8, 28, ⟨45, 15⟩, ⟨63, 19⟩⟩, (FQ.progression (45 / 16) (1 / 80) 28)⟩ = true := by decide +kernel
theorem run1238_checked : Entry.check ⟨1235, 1076, ⟨1, 399999999⟩, ⟨0, 0, 38, ⟨279, 79⟩, ⟨79, 19⟩⟩, (FQ.progression (279 / 80) (1 / 80) 38)⟩ = true := by decide +kernel
theorem run1239_checked : Entry.check ⟨1235, 1077, ⟨1, 399999999⟩, ⟨0, 37, 15, ⟨79, 19⟩, ⟨33, 7⟩⟩, (FQ.progression (79 / 20) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1240_checked : Entry.check ⟨1235, 1078, ⟨1, 399999999⟩, ⟨0, 51, 27, ⟨33, 7⟩, ⟨89, 19⟩⟩, (FQ.progression (33 / 8) (1 / 80) 27)⟩ = true := by decide +kernel
theorem run1241_checked : Entry.check ⟨1238, 1079, ⟨1, 399999999⟩, ⟨0, 9, 32, ⟨43, 15⟩, ⟨123, 39⟩⟩, (FQ.progression (43 / 16) (1 / 80) 32)⟩ = true := by decide +kernel
theorem run1242_checked : Entry.check ⟨1240, 1080, ⟨1, 399999999⟩, ⟨0, 16, 4, ⟨17, 7⟩, ⟨173, 79⟩⟩, (FQ.progression (17 / 8) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1243_checked : Entry.check ⟨1240, 1080, ⟨1, 399999999⟩, ⟨0, 20, 9, ⟨87, 39⟩, ⟨91, 39⟩⟩, (FQ.progression (87 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1244_checked : Entry.check ⟨1240, 1080, ⟨1, 399999999⟩, ⟨0, 30, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1245_checked : Entry.check ⟨1240, 1080, ⟨1, 399999999⟩, ⟨0, 38, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem entries42_checked : entries42.all Entry.check = true := by
  simp only [entries42, List.all_cons, List.all_nil, run1225_checked, run1226_checked, run1227_checked, run1228_checked, run1229_checked, run1230_checked, run1231_checked, run1232_checked, run1233_checked, run1234_checked, run1235_checked, run1236_checked, run1237_checked, run1238_checked, run1239_checked, run1240_checked, run1241_checked, run1242_checked, run1243_checked, run1244_checked, run1245_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

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

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1278_checked : Entry.check ⟨1267, 1107, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨9, 7⟩, ⟨93, 79⟩⟩, (FQ.progression (9 / 8) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1279_checked : Entry.check ⟨1268, 1108, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨15, 15⟩, ⟨77, 79⟩⟩, [⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩]⟩ = true := by decide +kernel
theorem run1280_checked : Entry.check ⟨1268, 1109, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨77, 79⟩, ⟨1, 0⟩⟩, (FQ.progression (77 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1281_checked : Entry.check ⟨1268, 1110, ⟨1, 399999999⟩, ⟨0, 18, 5, ⟨1, 0⟩, ⟨21, 19⟩⟩, (FQ.progression (1 / 1) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1282_checked : Entry.check ⟨1269, 1111, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run1283_checked : Entry.check ⟨1269, 1112, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run1284_checked : Entry.check ⟨1269, 1113, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨9, 9⟩, ⟨15, 15⟩⟩, (FQ.progression (9 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1285_checked : Entry.check ⟨1269, 1114, ⟨1, 399999999⟩, ⟨0, 17, 4, ⟨15, 15⟩, ⟨39, 39⟩⟩, (FQ.progression (15 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1286_checked : Entry.check ⟨1269, 1115, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run1287_checked : Entry.check ⟨1270, 1116, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨177, 79⟩, ⟨89, 39⟩⟩, [⟨177, 79⟩, ⟨89, 39⟩]⟩ = true := by decide +kernel
theorem run1288_checked : Entry.check ⟨1271, 1117, ⟨1, 399999999⟩, ⟨0, 10, 6, ⟨4, 4⟩, ⟨69, 79⟩⟩, (FQ.progression (4 / 5) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1289_checked : Entry.check ⟨1271, 1118, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨69, 79⟩, ⟨71, 79⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run1290_checked : Entry.check ⟨1271, 1119, ⟨1, 399999999⟩, ⟨0, 17, 3, ⟨71, 79⟩, ⟨73, 79⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩, ⟨73, 79⟩]⟩ = true := by decide +kernel
theorem run1291_checked : Entry.check ⟨1271, 1120, ⟨1, 399999999⟩, ⟨0, 19, 3, ⟨73, 79⟩, ⟨15, 15⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩, ⟨15, 15⟩]⟩ = true := by decide +kernel
theorem run1292_checked : Entry.check ⟨1272, 1121, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨16, 4⟩, ⟨259, 79⟩⟩, (FQ.progression (16 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1293_checked : Entry.check ⟨1272, 1122, ⟨1, 399999999⟩, ⟨0, 3, 33, ⟨259, 79⟩, ⟨291, 79⟩⟩, (FQ.progression (259 / 80) (1 / 80) 33)⟩ = true := by decide +kernel
theorem run1294_checked : Entry.check ⟨1273, 1123, ⟨1, 399999999⟩, ⟨0, 8, 3, ⟨59, 79⟩, ⟨61, 79⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run1295_checked : Entry.check ⟨1273, 1124, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, (FQ.progression (61 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1296_checked : Entry.check ⟨1273, 1125, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨4, 4⟩, ⟨67, 79⟩⟩, (FQ.progression (4 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1297_checked : Entry.check ⟨1275, 1126, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨11, 15⟩, ⟨7, 9⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩]⟩ = true := by decide +kernel
theorem run1298_checked : Entry.check ⟨1275, 1127, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨7, 9⟩, ⟨57, 79⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run1299_checked : Entry.check ⟨1275, 1128, ⟨1, 399999999⟩, ⟨0, 9, 3, ⟨57, 79⟩, ⟨59, 79⟩⟩, [⟨57, 79⟩, ⟨29, 39⟩, ⟨59, 79⟩]⟩ = true := by decide +kernel
theorem run1300_checked : Entry.check ⟨1275, 1129, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨59, 79⟩, ⟨31, 39⟩⟩, (FQ.progression (59 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1301_checked : Entry.check ⟨1275, 1130, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨31, 39⟩, ⟨63, 79⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run1302_checked : Entry.check ⟨1276, 1131, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, (FQ.progression (13 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1303_checked : Entry.check ⟨1276, 1132, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩, ⟨29, 39⟩]⟩ = true := by decide +kernel
theorem run1304_checked : Entry.check ⟨1277, 1133, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨47, 79⟩, ⟨5, 7⟩⟩, [⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1305_checked : Entry.check ⟨1277, 1134, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, (FQ.progression (5 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1306_checked : Entry.check ⟨1277, 1135, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨27, 39⟩, ⟨7, 9⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩, ⟨7, 9⟩]⟩ = true := by decide +kernel
theorem run1307_checked : Entry.check ⟨1279, 1136, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1308_checked : Entry.check ⟨1279, 1137, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1309_checked : Entry.check ⟨1280, 1138, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem entries44_checked : entries44.all Entry.check = true := by
  simp only [entries44, List.all_cons, List.all_nil, run1278_checked, run1279_checked, run1280_checked, run1281_checked, run1282_checked, run1283_checked, run1284_checked, run1285_checked, run1286_checked, run1287_checked, run1288_checked, run1289_checked, run1290_checked, run1291_checked, run1292_checked, run1293_checked, run1294_checked, run1295_checked, run1296_checked, run1297_checked, run1298_checked, run1299_checked, run1300_checked, run1301_checked, run1302_checked, run1303_checked, run1304_checked, run1305_checked, run1306_checked, run1307_checked, run1308_checked, run1309_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
