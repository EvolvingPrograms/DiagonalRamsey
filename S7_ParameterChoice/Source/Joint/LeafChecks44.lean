import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
