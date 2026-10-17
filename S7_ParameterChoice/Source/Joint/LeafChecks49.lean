import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
