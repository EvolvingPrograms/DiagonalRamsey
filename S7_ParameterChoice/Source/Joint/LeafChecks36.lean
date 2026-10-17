import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1041_checked : Entry.check ⟨988, 902, ⟨1, 399999999⟩, ⟨0, 33, 24, ⟨177, 39⟩, ⟨377, 79⟩⟩, (FQ.progression (177 / 40) (1 / 80) 24)⟩ = true := by decide +kernel
theorem run1042_checked : Entry.check ⟨989, 903, ⟨1, 399999999⟩, ⟨0, 12, 8, ⟨91, 79⟩, ⟨49, 39⟩⟩, (FQ.progression (91 / 80) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1043_checked : Entry.check ⟨989, 904, ⟨1, 399999999⟩, ⟨0, 19, 11, ⟨49, 39⟩, ⟨27, 19⟩⟩, (FQ.progression (49 / 40) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run1044_checked : Entry.check ⟨989, 905, ⟨1, 399999999⟩, ⟨0, 29, 5, ⟨27, 19⟩, ⟨7, 4⟩⟩, (FQ.progression (27 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1045_checked : Entry.check ⟨992, 906, ⟨1, 399999999⟩, ⟨0, 11, 6, ⟨21, 19⟩, ⟨89, 79⟩⟩, (FQ.progression (21 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1046_checked : Entry.check ⟨992, 907, ⟨1, 399999999⟩, ⟨0, 16, 6, ⟨89, 79⟩, ⟨47, 39⟩⟩, (FQ.progression (89 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1047_checked : Entry.check ⟨992, 908, ⟨1, 399999999⟩, ⟨0, 21, 4, ⟨47, 39⟩, ⟨97, 79⟩⟩, (FQ.progression (47 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1048_checked : Entry.check ⟨993, 909, ⟨1, 399999999⟩, ⟨0, 11, 5, ⟨39, 39⟩, ⟨41, 39⟩⟩, (FQ.progression (39 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1049_checked : Entry.check ⟨993, 910, ⟨1, 399999999⟩, ⟨0, 15, 5, ⟨41, 39⟩, ⟨43, 39⟩⟩, (FQ.progression (41 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1050_checked : Entry.check ⟨993, 911, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨43, 39⟩, ⟨87, 79⟩⟩, [⟨43, 39⟩, ⟨87, 79⟩]⟩ = true := by decide +kernel
theorem run1051_checked : Entry.check ⟨993, 912, ⟨1, 399999999⟩, ⟨0, 20, 6, ⟨87, 79⟩, ⟨23, 19⟩⟩, (FQ.progression (87 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1052_checked : Entry.check ⟨994, 913, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨15, 15⟩, ⟨77, 79⟩⟩, [⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩]⟩ = true := by decide +kernel
theorem run1053_checked : Entry.check ⟨994, 914, ⟨1, 399999999⟩, ⟨0, 16, 4, ⟨77, 79⟩, ⟨1, 0⟩⟩, (FQ.progression (77 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1054_checked : Entry.check ⟨994, 915, ⟨1, 399999999⟩, ⟨0, 19, 6, ⟨1, 0⟩, ⟨17, 15⟩⟩, (FQ.progression (1 / 1) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1055_checked : Entry.check ⟨996, 916, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run1056_checked : Entry.check ⟨996, 917, ⟨1, 399999999⟩, ⟨0, 7, 5, ⟨69, 79⟩, ⟨73, 79⟩⟩, (FQ.progression (69 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1057_checked : Entry.check ⟨996, 918, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨73, 79⟩, ⟨37, 39⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run1058_checked : Entry.check ⟨996, 919, ⟨1, 399999999⟩, ⟨0, 12, 5, ⟨37, 39⟩, ⟨39, 39⟩⟩, (FQ.progression (37 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1059_checked : Entry.check ⟨997, 920, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨23, 9⟩, ⟨93, 39⟩⟩, [⟨23, 9⟩, ⟨37, 15⟩, ⟨93, 39⟩]⟩ = true := by decide +kernel
theorem run1060_checked : Entry.check ⟨999, 921, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨4, 4⟩, ⟨13, 15⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run1061_checked : Entry.check ⟨999, 922, ⟨1, 399999999⟩, ⟨0, 7, 4, ⟨13, 15⟩, ⟨17, 19⟩⟩, (FQ.progression (13 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1062_checked : Entry.check ⟨999, 923, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run1063_checked : Entry.check ⟨999, 924, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨7, 7⟩, ⟨73, 79⟩⟩, (FQ.progression (7 / 8) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1064_checked : Entry.check ⟨1000, 925, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨257, 79⟩, ⟨259, 79⟩⟩, [⟨257, 79⟩, ⟨129, 39⟩, ⟨259, 79⟩]⟩ = true := by decide +kernel
theorem run1065_checked : Entry.check ⟨1000, 926, ⟨1, 399999999⟩, ⟨0, 2, 33, ⟨259, 79⟩, ⟨291, 79⟩⟩, (FQ.progression (259 / 80) (1 / 80) 33)⟩ = true := by decide +kernel
theorem run1066_checked : Entry.check ⟨1002, 927, ⟨1, 399999999⟩, ⟨0, 9, 3, ⟨59, 79⟩, ⟨61, 79⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run1067_checked : Entry.check ⟨1002, 928, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, (FQ.progression (61 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1068_checked : Entry.check ⟨1002, 929, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨4, 4⟩, ⟨33, 39⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩]⟩ = true := by decide +kernel
theorem run1069_checked : Entry.check ⟨1003, 930, ⟨1, 399999999⟩, ⟨0, 0, 18, ⟨25, 7⟩, ⟨267, 79⟩⟩, (FQ.progression (25 / 8) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run1070_checked : Entry.check ⟨1004, 931, ⟨1, 399999999⟩, ⟨0, 9, 4, ⟨27, 39⟩, ⟨57, 79⟩⟩, (FQ.progression (27 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1071_checked : Entry.check ⟨1004, 932, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨57, 79⟩, ⟨3, 3⟩⟩, (FQ.progression (57 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1072_checked : Entry.check ⟨1004, 933, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨3, 3⟩, ⟨31, 39⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem entries36_checked : entries36.all Entry.check = true := by
  simp only [entries36, List.all_cons, List.all_nil, run1041_checked, run1042_checked, run1043_checked, run1044_checked, run1045_checked, run1046_checked, run1047_checked, run1048_checked, run1049_checked, run1050_checked, run1051_checked, run1052_checked, run1053_checked, run1054_checked, run1055_checked, run1056_checked, run1057_checked, run1058_checked, run1059_checked, run1060_checked, run1061_checked, run1062_checked, run1063_checked, run1064_checked, run1065_checked, run1066_checked, run1067_checked, run1068_checked, run1069_checked, run1070_checked, run1071_checked, run1072_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
