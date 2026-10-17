import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1105_checked : Entry.check ⟨1027, 962, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨111, 79⟩, ⟨57, 39⟩⟩, (FQ.progression (111 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1106_checked : Entry.check ⟨1028, 963, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨21, 79⟩, ⟨11, 39⟩⟩, [⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run1107_checked : Entry.check ⟨1028, 964, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨11, 39⟩, ⟨3, 9⟩⟩, [⟨11, 39⟩, ⟨23, 79⟩, ⟨3, 9⟩]⟩ = true := by decide +kernel
theorem run1108_checked : Entry.check ⟨1029, 965, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨1, 3⟩, ⟨23, 79⟩⟩, (FQ.progression (1 / 4) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1109_checked : Entry.check ⟨1030, 966, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run1110_checked : Entry.check ⟨1031, 967, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 4⟩, ⟨9, 39⟩⟩, [⟨1, 4⟩, ⟨17, 79⟩, ⟨9, 39⟩]⟩ = true := by decide +kernel
theorem run1111_checked : Entry.check ⟨1031, 968, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run1112_checked : Entry.check ⟨1032, 969, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run1113_checked : Entry.check ⟨1033, 970, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run1114_checked : Entry.check ⟨1088, 971, ⟨1, 399999999⟩, ⟨0, 0, 64, ⟨321, 79⟩, ⟨24, 4⟩⟩, (FQ.progression (321 / 80) (1 / 80) 64)⟩ = true := by decide +kernel
theorem run1115_checked : Entry.check ⟨1090, 972, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨271, 79⟩, ⟨55, 15⟩⟩, (FQ.progression (271 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1116_checked : Entry.check ⟨1097, 973, ⟨1, 399999999⟩, ⟨0, 22, 3, ⟨121, 39⟩, ⟨61, 19⟩⟩, [⟨121, 39⟩, ⟨243, 79⟩, ⟨61, 19⟩]⟩ = true := by decide +kernel
theorem run1117_checked : Entry.check ⟨1098, 973, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨29, 7⟩, ⟨61, 15⟩⟩, (FQ.progression (29 / 8) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run1118_checked : Entry.check ⟨1099, 973, ⟨1, 399999999⟩, ⟨0, 0, 27, ⟨77, 19⟩, ⟨167, 39⟩⟩, (FQ.progression (77 / 20) (1 / 80) 27)⟩ = true := by decide +kernel
theorem run1119_checked : Entry.check ⟨1099, 974, ⟨1, 399999999⟩, ⟨0, 26, 4, ⟨167, 39⟩, ⟨337, 79⟩⟩, (FQ.progression (167 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1120_checked : Entry.check ⟨1099, 975, ⟨1, 399999999⟩, ⟨0, 29, 48, ⟨337, 79⟩, ⟨24, 4⟩⟩, (FQ.progression (337 / 80) (1 / 80) 48)⟩ = true := by decide +kernel
theorem run1121_checked : Entry.check ⟨1101, 976, ⟨1, 399999999⟩, ⟨0, 44, 19, ⟨113, 39⟩, ⟨61, 19⟩⟩, (FQ.progression (113 / 40) (1 / 80) 19)⟩ = true := by decide +kernel
theorem run1122_checked : Entry.check ⟨1102, 977, ⟨1, 399999999⟩, ⟨0, 38, 23, ⟨27, 9⟩, ⟨119, 39⟩⟩, (FQ.progression (27 / 10) (1 / 80) 23)⟩ = true := by decide +kernel
theorem run1123_checked : Entry.check ⟨1106, 978, ⟨1, 399999999⟩, ⟨0, 4, 7, ⟨167, 79⟩, ⟨173, 79⟩⟩, (FQ.progression (167 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1124_checked : Entry.check ⟨1106, 978, ⟨1, 399999999⟩, ⟨0, 11, 9, ⟨87, 39⟩, ⟨91, 39⟩⟩, (FQ.progression (87 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1125_checked : Entry.check ⟨1106, 978, ⟨1, 399999999⟩, ⟨0, 21, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1126_checked : Entry.check ⟨1106, 978, ⟨1, 399999999⟩, ⟨0, 29, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1127_checked : Entry.check ⟨1106, 978, ⟨1, 399999999⟩, ⟨0, 39, 5, ⟨101, 39⟩, ⟨103, 39⟩⟩, (FQ.progression (101 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1128_checked : Entry.check ⟨1106, 979, ⟨1, 399999999⟩, ⟨0, 43, 29, ⟨103, 39⟩, ⟨117, 39⟩⟩, (FQ.progression (103 / 40) (1 / 80) 29)⟩ = true := by decide +kernel
theorem entries38_checked : entries38.all Entry.check = true := by
  simp only [entries38, List.all_cons, List.all_nil, run1105_checked, run1106_checked, run1107_checked, run1108_checked, run1109_checked, run1110_checked, run1111_checked, run1112_checked, run1113_checked, run1114_checked, run1115_checked, run1116_checked, run1117_checked, run1118_checked, run1119_checked, run1120_checked, run1121_checked, run1122_checked, run1123_checked, run1124_checked, run1125_checked, run1126_checked, run1127_checked, run1128_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
