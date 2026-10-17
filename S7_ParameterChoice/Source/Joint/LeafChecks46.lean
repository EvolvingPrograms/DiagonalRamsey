import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
