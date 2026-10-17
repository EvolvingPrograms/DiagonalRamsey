import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
