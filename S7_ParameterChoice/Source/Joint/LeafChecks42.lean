import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
