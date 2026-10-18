import S7_ParameterChoice.Source.Joint.Foundations.ArithmeticData
import S7_ParameterChoice.Source.Joint.Leaves.LeafIndex

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel reductions; Lake parallelizes these batches.
set_option Elab.async false

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

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1342_checked : Entry.check ⟨1305, 1170, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run1343_checked : Entry.check ⟨1365, 1171, ⟨1, 399999999⟩, ⟨0, 0, 82, ⟨303, 79⟩, ⟨24, 4⟩⟩, (FQ.progression (303 / 80) (1 / 80) 82)⟩ = true := by decide +kernel
theorem run1344_checked : Entry.check ⟨1366, 1172, ⟨1, 399999999⟩, ⟨0, 0, 33, ⟨17, 4⟩, ⟨19, 4⟩⟩, (FQ.progression (17 / 5) (1 / 80) 33)⟩ = true := by decide +kernel
theorem run1345_checked : Entry.check ⟨1375, 1173, ⟨1, 399999999⟩, ⟨0, 0, 20, ⟨223, 79⟩, ⟨121, 39⟩⟩, (FQ.progression (223 / 80) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run1346_checked : Entry.check ⟨1376, 1173, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨243, 79⟩, ⟨247, 79⟩⟩, (FQ.progression (243 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1347_checked : Entry.check ⟨1377, 1173, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨27, 7⟩, ⟨17, 4⟩⟩, [⟨27, 7⟩, ⟨271, 79⟩, ⟨17, 4⟩]⟩ = true := by decide +kernel
theorem run1348_checked : Entry.check ⟨1379, 1174, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨87, 39⟩, ⟨91, 39⟩⟩, (FQ.progression (87 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1349_checked : Entry.check ⟨1379, 1174, ⟨1, 399999999⟩, ⟨0, 10, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1350_checked : Entry.check ⟨1379, 1174, ⟨1, 399999999⟩, ⟨0, 18, 5, ⟨12, 4⟩, ⟨49, 19⟩⟩, (FQ.progression (12 / 5) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1351_checked : Entry.check ⟨1380, 1175, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨13, 4⟩, ⟨211, 79⟩⟩, (FQ.progression (13 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1352_checked : Entry.check ⟨1382, 1176, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨159, 79⟩, ⟨2, 0⟩⟩, [⟨159, 79⟩, ⟨2, 0⟩]⟩ = true := by decide +kernel
theorem run1353_checked : Entry.check ⟨1383, 1176, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨169, 79⟩, ⟨35, 15⟩⟩, (FQ.progression (169 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1354_checked : Entry.check ⟨1384, 1176, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run1355_checked : Entry.check ⟨1385, 1177, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run1356_checked : Entry.check ⟨1387, 1178, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨19, 9⟩, ⟨159, 79⟩⟩, (FQ.progression (19 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1357_checked : Entry.check ⟨1388, 1178, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨83, 39⟩, ⟨17, 7⟩⟩, (FQ.progression (83 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1358_checked : Entry.check ⟨1388, 1179, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 7⟩, ⟨171, 79⟩⟩, [⟨17, 7⟩, ⟨171, 79⟩]⟩ = true := by decide +kernel
theorem run1359_checked : Entry.check ⟨1389, 1180, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨141, 79⟩, ⟨71, 39⟩⟩, [⟨141, 79⟩, ⟨71, 39⟩]⟩ = true := by decide +kernel
theorem run1360_checked : Entry.check ⟨1390, 1180, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨149, 79⟩, ⟨19, 9⟩⟩, (FQ.progression (149 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1361_checked : Entry.check ⟨1390, 1181, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨19, 9⟩, ⟨31, 15⟩⟩, (FQ.progression (19 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1362_checked : Entry.check ⟨1391, 1181, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨81, 39⟩, ⟨167, 79⟩⟩, (FQ.progression (81 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1363_checked : Entry.check ⟨1393, 1182, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨29, 15⟩, ⟨19, 9⟩⟩, (FQ.progression (29 / 16) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1364_checked : Entry.check ⟨1394, 1182, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨79, 39⟩, ⟨163, 79⟩⟩, (FQ.progression (79 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1365_checked : Entry.check ⟨1395, 1183, ⟨1, 399999999⟩, ⟨0, 16, 16, ⟨3, 1⟩, ⟨27, 15⟩⟩, (FQ.progression (3 / 2) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run1366_checked : Entry.check ⟨1396, 1184, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨31, 15⟩, ⟨159, 79⟩⟩, (FQ.progression (31 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1367_checked : Entry.check ⟨1398, 1185, ⟨1, 399999999⟩, ⟨0, 18, 14, ⟨23, 15⟩, ⟨8, 4⟩⟩, (FQ.progression (23 / 16) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1368_checked : Entry.check ⟨1399, 1186, ⟨1, 399999999⟩, ⟨0, 13, 8, ⟨13, 9⟩, ⟨111, 79⟩⟩, (FQ.progression (13 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1369_checked : Entry.check ⟨1399, 1187, ⟨1, 399999999⟩, ⟨0, 20, 15, ⟨111, 79⟩, ⟨25, 15⟩⟩, (FQ.progression (111 / 80) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1370_checked : Entry.check ⟨1401, 1188, ⟨1, 399999999⟩, ⟨0, 15, 12, ⟨5, 3⟩, ⟨111, 79⟩⟩, (FQ.progression (5 / 4) (1 / 80) 12)⟩ = true := by decide +kernel
theorem entries46_checked : entries46.all Entry.check = true := by
  simp only [entries46, List.all_cons, List.all_nil, run1342_checked, run1343_checked, run1344_checked, run1345_checked, run1346_checked, run1347_checked, run1348_checked, run1349_checked, run1350_checked, run1351_checked, run1352_checked, run1353_checked, run1354_checked, run1355_checked, run1356_checked, run1357_checked, run1358_checked, run1359_checked, run1360_checked, run1361_checked, run1362_checked, run1363_checked, run1364_checked, run1365_checked, run1366_checked, run1367_checked, run1368_checked, run1369_checked, run1370_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1371_checked : Entry.check ⟨1401, 1189, ⟨1, 399999999⟩, ⟨0, 26, 3, ⟨111, 79⟩, ⟨113, 79⟩⟩, [⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run1372_checked : Entry.check ⟨1402, 1190, ⟨1, 399999999⟩, ⟨0, 12, 7, ⟨91, 79⟩, ⟨97, 79⟩⟩, (FQ.progression (91 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1373_checked : Entry.check ⟨1402, 1191, ⟨1, 399999999⟩, ⟨0, 18, 11, ⟨97, 79⟩, ⟨107, 79⟩⟩, (FQ.progression (97 / 80) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run1374_checked : Entry.check ⟨1402, 1192, ⟨1, 399999999⟩, ⟨0, 28, 4, ⟨107, 79⟩, ⟨11, 7⟩⟩, (FQ.progression (107 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1375_checked : Entry.check ⟨1404, 1193, ⟨1, 399999999⟩, ⟨0, 11, 6, ⟨21, 19⟩, ⟨89, 79⟩⟩, (FQ.progression (21 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1376_checked : Entry.check ⟨1404, 1194, ⟨1, 399999999⟩, ⟨0, 16, 6, ⟨89, 79⟩, ⟨47, 39⟩⟩, (FQ.progression (89 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1377_checked : Entry.check ⟨1404, 1195, ⟨1, 399999999⟩, ⟨0, 21, 5, ⟨47, 39⟩, ⟨49, 39⟩⟩, (FQ.progression (47 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1378_checked : Entry.check ⟨1405, 1196, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨79, 79⟩, ⟨41, 39⟩⟩, (FQ.progression (79 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1379_checked : Entry.check ⟨1405, 1197, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨41, 39⟩, ⟨17, 15⟩⟩, (FQ.progression (41 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1380_checked : Entry.check ⟨1405, 1198, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨17, 15⟩, ⟨43, 39⟩⟩, [⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run1381_checked : Entry.check ⟨1405, 1199, ⟨1, 399999999⟩, ⟨0, 18, 3, ⟨43, 39⟩, ⟨11, 9⟩⟩, [⟨43, 39⟩, ⟨87, 79⟩, ⟨11, 9⟩]⟩ = true := by decide +kernel
theorem run1382_checked : Entry.check ⟨1405, 1200, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨11, 9⟩, ⟨89, 79⟩⟩, [⟨11, 9⟩, ⟨89, 79⟩]⟩ = true := by decide +kernel
theorem run1383_checked : Entry.check ⟨1406, 1201, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨15, 15⟩, ⟨77, 79⟩⟩, [⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩]⟩ = true := by decide +kernel
theorem run1384_checked : Entry.check ⟨1406, 1202, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨77, 79⟩, ⟨79, 79⟩⟩, [⟨77, 79⟩, ⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run1385_checked : Entry.check ⟨1406, 1203, ⟨1, 399999999⟩, ⟨0, 17, 6, ⟨79, 79⟩, ⟨21, 19⟩⟩, (FQ.progression (79 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1386_checked : Entry.check ⟨1407, 1204, ⟨1, 399999999⟩, ⟨0, 0, 18, ⟨4, 0⟩, ⟨337, 79⟩⟩, (FQ.progression (4 / 1) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run1387_checked : Entry.check ⟨1408, 1205, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run1388_checked : Entry.check ⟨1408, 1206, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨7, 7⟩, ⟨9, 9⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run1389_checked : Entry.check ⟨1408, 1207, ⟨1, 399999999⟩, ⟨0, 16, 4, ⟨9, 9⟩, ⟨15, 15⟩⟩, (FQ.progression (9 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1390_checked : Entry.check ⟨1408, 1208, ⟨1, 399999999⟩, ⟨0, 19, 4, ⟨15, 15⟩, ⟨39, 39⟩⟩, (FQ.progression (15 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1391_checked : Entry.check ⟨1408, 1209, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run1392_checked : Entry.check ⟨1409, 1210, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨2, 0⟩, ⟨167, 79⟩⟩, (FQ.progression (2 / 1) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1393_checked : Entry.check ⟨1410, 1211, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨4, 4⟩, ⟨13, 15⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run1394_checked : Entry.check ⟨1410, 1212, ⟨1, 399999999⟩, ⟨0, 11, 5, ⟨13, 15⟩, ⟨69, 79⟩⟩, (FQ.progression (13 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1395_checked : Entry.check ⟨1410, 1213, ⟨1, 399999999⟩, ⟨0, 15, 2, ⟨69, 79⟩, ⟨7, 7⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run1396_checked : Entry.check ⟨1410, 1214, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨7, 7⟩, ⟨9, 9⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run1397_checked : Entry.check ⟨1410, 1215, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨9, 9⟩, ⟨73, 79⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩]⟩ = true := by decide +kernel
theorem run1398_checked : Entry.check ⟨1410, 1216, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨73, 79⟩, ⟨37, 39⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run1399_checked : Entry.check ⟨1411, 1217, ⟨1, 399999999⟩, ⟨0, 0, 33, ⟨273, 79⟩, ⟨61, 15⟩⟩, (FQ.progression (273 / 80) (1 / 80) 33)⟩ = true := by decide +kernel
theorem run1400_checked : Entry.check ⟨1412, 1217, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨21, 4⟩, ⟨173, 39⟩⟩, (FQ.progression (21 / 5) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run1401_checked : Entry.check ⟨1412, 1218, ⟨1, 399999999⟩, ⟨0, 10, 11, ⟨173, 39⟩, ⟨89, 19⟩⟩, (FQ.progression (173 / 40) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run1402_checked : Entry.check ⟨1413, 1219, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨59, 79⟩, ⟨61, 79⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem entries47_checked : entries47.all Entry.check = true := by
  simp only [entries47, List.all_cons, List.all_nil, run1371_checked, run1372_checked, run1373_checked, run1374_checked, run1375_checked, run1376_checked, run1377_checked, run1378_checked, run1379_checked, run1380_checked, run1381_checked, run1382_checked, run1383_checked, run1384_checked, run1385_checked, run1386_checked, run1387_checked, run1388_checked, run1389_checked, run1390_checked, run1391_checked, run1392_checked, run1393_checked, run1394_checked, run1395_checked, run1396_checked, run1397_checked, run1398_checked, run1399_checked, run1400_checked, run1401_checked, run1402_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1403_checked : Entry.check ⟨1413, 1220, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, (FQ.progression (61 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1404_checked : Entry.check ⟨1413, 1221, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨4, 4⟩, ⟨33, 39⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩]⟩ = true := by decide +kernel
theorem run1405_checked : Entry.check ⟨1413, 1222, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨33, 39⟩, ⟨67, 79⟩⟩, [⟨33, 39⟩, ⟨67, 79⟩]⟩ = true := by decide +kernel
theorem run1406_checked : Entry.check ⟨1414, 1223, ⟨1, 399999999⟩, ⟨0, 9, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run1407_checked : Entry.check ⟨1414, 1224, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨57, 79⟩, ⟨3, 3⟩⟩, (FQ.progression (57 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1408_checked : Entry.check ⟨1414, 1225, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨3, 3⟩, ⟨31, 39⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run1409_checked : Entry.check ⟨1414, 1226, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨31, 39⟩, ⟨4, 4⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run1410_checked : Entry.check ⟨1416, 1227, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨29, 15⟩, ⟨149, 79⟩⟩, (FQ.progression (29 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1411_checked : Entry.check ⟨1418, 1228, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1412_checked : Entry.check ⟨1418, 1229, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1413_checked : Entry.check ⟨1419, 1230, ⟨1, 399999999⟩, ⟨0, 1, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1414_checked : Entry.check ⟨1419, 1231, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨11, 19⟩, ⟨3, 4⟩⟩, (FQ.progression (11 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1415_checked : Entry.check ⟨1420, 1232, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨39, 79⟩, ⟨21, 39⟩⟩, (FQ.progression (39 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1416_checked : Entry.check ⟨1421, 1233, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1417_checked : Entry.check ⟨1422, 1234, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨117, 79⟩, ⟨61, 39⟩⟩, (FQ.progression (117 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1418_checked : Entry.check ⟨1422, 1235, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨61, 39⟩, ⟨31, 19⟩⟩, [⟨61, 39⟩, ⟨123, 79⟩, ⟨31, 19⟩]⟩ = true := by decide +kernel
theorem run1419_checked : Entry.check ⟨1423, 1235, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨25, 15⟩, ⟨8, 4⟩⟩, (FQ.progression (25 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1420_checked : Entry.check ⟨1424, 1236, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨139, 79⟩, ⟨149, 79⟩⟩, (FQ.progression (139 / 80) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run1421_checked : Entry.check ⟨1425, 1236, ⟨1, 399999999⟩, ⟨0, 0, 14, ⟨151, 79⟩, ⟨41, 19⟩⟩, (FQ.progression (151 / 80) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1422_checked : Entry.check ⟨1425, 1237, ⟨1, 399999999⟩, ⟨0, 13, 6, ⟨41, 19⟩, ⟨169, 79⟩⟩, (FQ.progression (41 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1423_checked : Entry.check ⟨1426, 1237, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨43, 19⟩, ⟨89, 39⟩⟩, (FQ.progression (43 / 20) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1424_checked : Entry.check ⟨1428, 1238, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run1425_checked : Entry.check ⟨1428, 1239, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run1426_checked : Entry.check ⟨1429, 1240, ⟨1, 399999999⟩, ⟨0, 0, 17, ⟨19, 4⟩, ⟨4, 0⟩⟩, (FQ.progression (19 / 5) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run1427_checked : Entry.check ⟨1430, 1241, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1428_checked : Entry.check ⟨1431, 1242, ⟨1, 399999999⟩, ⟨0, 0, 14, ⟨57, 19⟩, ⟨241, 79⟩⟩, (FQ.progression (57 / 20) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1429_checked : Entry.check ⟨1431, 1243, ⟨1, 399999999⟩, ⟨0, 13, 7, ⟨241, 79⟩, ⟨247, 79⟩⟩, (FQ.progression (241 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1430_checked : Entry.check ⟨1432, 1244, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨27, 79⟩, ⟨29, 79⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩]⟩ = true := by decide +kernel
theorem run1431_checked : Entry.check ⟨1433, 1245, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨27, 79⟩, ⟨2, 4⟩⟩, (FQ.progression (27 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1432_checked : Entry.check ⟨1434, 1246, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 7⟩, ⟨13, 19⟩⟩, [⟨5, 7⟩, ⟨51, 79⟩, ⟨13, 19⟩]⟩ = true := by decide +kernel
theorem run1433_checked : Entry.check ⟨1434, 1247, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨13, 19⟩, ⟨53, 79⟩⟩, [⟨13, 19⟩, ⟨53, 79⟩]⟩ = true := by decide +kernel
theorem run1434_checked : Entry.check ⟨1435, 1248, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨29, 39⟩, ⟨61, 79⟩⟩, (FQ.progression (29 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem entries48_checked : entries48.all Entry.check = true := by
  simp only [entries48, List.all_cons, List.all_nil, run1403_checked, run1404_checked, run1405_checked, run1406_checked, run1407_checked, run1408_checked, run1409_checked, run1410_checked, run1411_checked, run1412_checked, run1413_checked, run1414_checked, run1415_checked, run1416_checked, run1417_checked, run1418_checked, run1419_checked, run1420_checked, run1421_checked, run1422_checked, run1423_checked, run1424_checked, run1425_checked, run1426_checked, run1427_checked, run1428_checked, run1429_checked, run1430_checked, run1431_checked, run1432_checked, run1433_checked, run1434_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1435_checked : Entry.check ⟨1435, 1249, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, (FQ.progression (61 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1436_checked : Entry.check ⟨1436, 1250, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨67, 79⟩, ⟨69, 79⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run1437_checked : Entry.check ⟨1437, 1251, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 9⟩, ⟨37, 39⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run1438_checked : Entry.check ⟨1438, 1252, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨19, 19⟩, ⟨1, 0⟩⟩, (FQ.progression (19 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1439_checked : Entry.check ⟨1439, 1253, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨21, 19⟩, ⟨43, 39⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run1440_checked : Entry.check ⟨1440, 1253, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨11, 9⟩, ⟨23, 19⟩⟩, (FQ.progression (11 / 10) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1441_checked : Entry.check ⟨1441, 1254, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨19, 15⟩, ⟨49, 39⟩⟩, (FQ.progression (19 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1442_checked : Entry.check ⟨1442, 1255, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run1443_checked : Entry.check ⟨1442, 1256, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run1444_checked : Entry.check ⟨1443, 1257, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨21, 79⟩, ⟨3, 9⟩⟩, (FQ.progression (21 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1445_checked : Entry.check ⟨1444, 1258, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run1446_checked : Entry.check ⟨1445, 1259, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run1447_checked : Entry.check ⟨1446, 1260, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨17, 79⟩, ⟨9, 39⟩⟩, [⟨17, 79⟩, ⟨9, 39⟩]⟩ = true := by decide +kernel
theorem run1448_checked : Entry.check ⟨1446, 1261, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run1449_checked : Entry.check ⟨1447, 1262, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨53, 19⟩, ⟨107, 39⟩⟩, [⟨53, 19⟩, ⟨213, 79⟩, ⟨107, 39⟩]⟩ = true := by decide +kernel
theorem run1450_checked : Entry.check ⟨1454, 1263, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨169, 79⟩, ⟨183, 79⟩⟩, (FQ.progression (169 / 80) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1451_checked : Entry.check ⟨1456, 1264, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨41, 19⟩, ⟨21, 9⟩⟩, (FQ.progression (41 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1452_checked : Entry.check ⟨1460, 1265, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨37, 79⟩, ⟨19, 39⟩⟩, [⟨37, 79⟩, ⟨19, 39⟩]⟩ = true := by decide +kernel
theorem run1453_checked : Entry.check ⟨1460, 1266, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨19, 39⟩, ⟨39, 79⟩⟩, [⟨19, 39⟩, ⟨39, 79⟩]⟩ = true := by decide +kernel
theorem run1454_checked : Entry.check ⟨1461, 1267, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨21, 79⟩, ⟨11, 39⟩⟩, [⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run1455_checked : Entry.check ⟨1462, 1268, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem entries49_checked : entries49.all Entry.check = true := by
  simp only [entries49, List.all_cons, List.all_nil, run1435_checked, run1436_checked, run1437_checked, run1438_checked, run1439_checked, run1440_checked, run1441_checked, run1442_checked, run1443_checked, run1444_checked, run1445_checked, run1446_checked, run1447_checked, run1448_checked, run1449_checked, run1450_checked, run1451_checked, run1452_checked, run1453_checked, run1454_checked, run1455_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
