import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1310_checked : Entry.check ⟨1280, 1139, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨11, 19⟩, ⟨3, 4⟩⟩, (FQ.progression (11 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1311_checked : Entry.check ⟨1281, 1140, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨39, 79⟩, ⟨21, 39⟩⟩, (FQ.progression (39 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1312_checked : Entry.check ⟨1282, 1141, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1313_checked : Entry.check ⟨1283, 1142, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1314_checked : Entry.check ⟨1284, 1143, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run1315_checked : Entry.check ⟨1284, 1144, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run1316_checked : Entry.check ⟨1285, 1145, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨7, 19⟩, ⟨17, 39⟩⟩, (FQ.progression (7 / 20) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1317_checked : Entry.check ⟨1286, 1146, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run1318_checked : Entry.check ⟨1287, 1147, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨27, 79⟩, ⟨2, 4⟩⟩, (FQ.progression (27 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1319_checked : Entry.check ⟨1287, 1148, ⟨1, 399999999⟩, ⟨0, 9, 4, ⟨2, 4⟩, ⟨7, 15⟩⟩, (FQ.progression (2 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1320_checked : Entry.check ⟨1288, 1149, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨41, 79⟩, ⟨21, 39⟩⟩, [⟨41, 79⟩, ⟨21, 39⟩]⟩ = true := by decide +kernel
theorem run1321_checked : Entry.check ⟨1288, 1150, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨21, 39⟩, ⟨11, 19⟩⟩, [⟨21, 39⟩, ⟨43, 79⟩, ⟨11, 19⟩]⟩ = true := by decide +kernel
theorem run1322_checked : Entry.check ⟨1289, 1151, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 7⟩, ⟨13, 19⟩⟩, [⟨5, 7⟩, ⟨51, 79⟩, ⟨13, 19⟩]⟩ = true := by decide +kernel
theorem run1323_checked : Entry.check ⟨1290, 1152, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨77, 79⟩, ⟨1, 0⟩⟩, (FQ.progression (77 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1324_checked : Entry.check ⟨1291, 1153, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨103, 79⟩, ⟨53, 39⟩⟩, (FQ.progression (103 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1325_checked : Entry.check ⟨1292, 1154, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run1326_checked : Entry.check ⟨1292, 1155, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run1327_checked : Entry.check ⟨1293, 1156, ⟨1, 399999999⟩, ⟨0, 0, 14, ⟨45, 15⟩, ⟨119, 39⟩⟩, (FQ.progression (45 / 16) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1328_checked : Entry.check ⟨1293, 1157, ⟨1, 399999999⟩, ⟨0, 13, 10, ⟨119, 39⟩, ⟨247, 79⟩⟩, (FQ.progression (119 / 40) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run1329_checked : Entry.check ⟨1294, 1158, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨21, 79⟩, ⟨3, 9⟩⟩, (FQ.progression (21 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1330_checked : Entry.check ⟨1295, 1159, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run1331_checked : Entry.check ⟨1296, 1160, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨29, 19⟩, ⟨31, 19⟩⟩, (FQ.progression (29 / 20) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1332_checked : Entry.check ⟨1297, 1160, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨25, 15⟩, ⟨131, 79⟩⟩, (FQ.progression (25 / 16) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1333_checked : Entry.check ⟨1298, 1161, ⟨1, 399999999⟩, ⟨0, 0, 31, ⟨67, 39⟩, ⟨41, 19⟩⟩, (FQ.progression (67 / 40) (1 / 80) 31)⟩ = true := by decide +kernel
theorem run1334_checked : Entry.check ⟨1298, 1162, ⟨1, 399999999⟩, ⟨0, 30, 6, ⟨41, 19⟩, ⟨169, 79⟩⟩, (FQ.progression (41 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1335_checked : Entry.check ⟨1299, 1163, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run1336_checked : Entry.check ⟨1300, 1164, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨17, 79⟩, ⟨9, 39⟩⟩, [⟨17, 79⟩, ⟨9, 39⟩]⟩ = true := by decide +kernel
theorem run1337_checked : Entry.check ⟨1300, 1165, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run1338_checked : Entry.check ⟨1301, 1166, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run1339_checked : Entry.check ⟨1302, 1167, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨7, 39⟩, ⟨1, 4⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run1340_checked : Entry.check ⟨1303, 1168, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run1341_checked : Entry.check ⟨1304, 1169, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem entries45_checked : entries45.all Entry.check = true := by
  simp only [entries45, List.all_cons, List.all_nil, run1310_checked, run1311_checked, run1312_checked, run1313_checked, run1314_checked, run1315_checked, run1316_checked, run1317_checked, run1318_checked, run1319_checked, run1320_checked, run1321_checked, run1322_checked, run1323_checked, run1324_checked, run1325_checked, run1326_checked, run1327_checked, run1328_checked, run1329_checked, run1330_checked, run1331_checked, run1332_checked, run1333_checked, run1334_checked, run1335_checked, run1336_checked, run1337_checked, run1338_checked, run1339_checked, run1340_checked, run1341_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
