import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
