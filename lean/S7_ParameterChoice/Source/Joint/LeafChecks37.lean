import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1073_checked : Entry.check ⟨1005, 934, ⟨1, 399999999⟩, ⟨0, 9, 4, ⟨13, 19⟩, ⟨11, 15⟩⟩, [⟨13, 19⟩, ⟨53, 79⟩, ⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run1074_checked : Entry.check ⟨1005, 935, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run1075_checked : Entry.check ⟨1006, 936, ⟨1, 399999999⟩, ⟨0, 8, 3, ⟨3, 4⟩, ⟨5, 7⟩⟩, [⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1076_checked : Entry.check ⟨1006, 937, ⟨1, 399999999⟩, ⟨0, 10, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, [⟨5, 7⟩, ⟨51, 79⟩, ⟨13, 19⟩, ⟨53, 79⟩, ⟨27, 39⟩]⟩ = true := by decide +kernel
theorem run1077_checked : Entry.check ⟨1006, 938, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨27, 39⟩, ⟨11, 15⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run1078_checked : Entry.check ⟨1007, 939, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, [⟨9, 15⟩, ⟨23, 39⟩, ⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩]⟩ = true := by decide +kernel
theorem run1079_checked : Entry.check ⟨1007, 940, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1080_checked : Entry.check ⟨1009, 941, ⟨1, 399999999⟩, ⟨0, 1, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, [⟨1, 1⟩, ⟨41, 79⟩, ⟨21, 39⟩, ⟨43, 79⟩, ⟨11, 19⟩]⟩ = true := by decide +kernel
theorem run1081_checked : Entry.check ⟨1009, 942, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨11, 19⟩, ⟨3, 4⟩⟩, [⟨11, 19⟩, ⟨9, 15⟩, ⟨23, 39⟩, ⟨47, 79⟩, ⟨3, 4⟩]⟩ = true := by decide +kernel
theorem run1082_checked : Entry.check ⟨1010, 943, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨19, 39⟩, ⟨21, 39⟩⟩, [⟨19, 39⟩, ⟨39, 79⟩, ⟨1, 1⟩, ⟨41, 79⟩, ⟨21, 39⟩]⟩ = true := by decide +kernel
theorem run1083_checked : Entry.check ⟨1012, 944, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, [⟨9, 19⟩, ⟨37, 79⟩, ⟨19, 39⟩, ⟨39, 79⟩, ⟨1, 1⟩]⟩ = true := by decide +kernel
theorem run1084_checked : Entry.check ⟨1013, 945, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨29, 19⟩, ⟨123, 79⟩⟩, [⟨29, 19⟩, ⟨117, 79⟩, ⟨59, 39⟩, ⟨119, 79⟩, ⟨3, 1⟩, ⟨121, 79⟩, ⟨61, 39⟩, ⟨123, 79⟩]⟩ = true := by decide +kernel
theorem run1085_checked : Entry.check ⟨1013, 946, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨123, 79⟩, ⟨31, 19⟩⟩, [⟨123, 79⟩, ⟨31, 19⟩]⟩ = true := by decide +kernel
theorem run1086_checked : Entry.check ⟨1014, 946, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨63, 39⟩, ⟨129, 79⟩⟩, [⟨63, 39⟩, ⟨127, 79⟩, ⟨8, 4⟩, ⟨129, 79⟩]⟩ = true := by decide +kernel
theorem run1087_checked : Entry.check ⟨1014, 947, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨129, 79⟩, ⟨131, 79⟩⟩, [⟨129, 79⟩, ⟨13, 7⟩, ⟨131, 79⟩]⟩ = true := by decide +kernel
theorem run1088_checked : Entry.check ⟨1015, 948, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨71, 39⟩, ⟨73, 39⟩⟩, [⟨71, 39⟩, ⟨143, 79⟩, ⟨9, 4⟩, ⟨29, 15⟩, ⟨73, 39⟩]⟩ = true := by decide +kernel
theorem run1089_checked : Entry.check ⟨1016, 948, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨37, 19⟩, ⟨153, 79⟩⟩, [⟨37, 19⟩, ⟨149, 79⟩, ⟨15, 7⟩, ⟨151, 79⟩, ⟨19, 9⟩, ⟨153, 79⟩]⟩ = true := by decide +kernel
theorem run1090_checked : Entry.check ⟨1017, 948, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨159, 79⟩, ⟨81, 39⟩⟩, [⟨159, 79⟩, ⟨2, 0⟩, ⟨161, 79⟩, ⟨81, 39⟩]⟩ = true := by decide +kernel
theorem run1091_checked : Entry.check ⟨1017, 949, ⟨1, 399999999⟩, ⟨0, 3, 12, ⟨81, 39⟩, ⟨173, 79⟩⟩, [⟨81, 39⟩, ⟨163, 79⟩, ⟨41, 19⟩, ⟨33, 15⟩, ⟨83, 39⟩, ⟨167, 79⟩, ⟨21, 9⟩, ⟨169, 79⟩, ⟨17, 7⟩, ⟨171, 79⟩, ⟨43, 19⟩, ⟨173, 79⟩]⟩ = true := by decide +kernel
theorem run1092_checked : Entry.check ⟨1018, 949, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨177, 79⟩, ⟨183, 79⟩⟩, [⟨177, 79⟩, ⟨89, 39⟩, ⟨179, 79⟩, ⟨9, 3⟩, ⟨181, 79⟩, ⟨91, 39⟩, ⟨183, 79⟩]⟩ = true := by decide +kernel
theorem run1093_checked : Entry.check ⟨1019, 950, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨47, 19⟩, ⟨97, 39⟩⟩, [⟨47, 19⟩, ⟨189, 79⟩, ⟨19, 7⟩, ⟨191, 79⟩, ⟨12, 4⟩, ⟨193, 79⟩, ⟨97, 39⟩]⟩ = true := by decide +kernel
theorem run1094_checked : Entry.check ⟨1020, 951, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩, ⟨37, 79⟩, ⟨19, 39⟩]⟩ = true := by decide +kernel
theorem run1095_checked : Entry.check ⟨1021, 952, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run1096_checked : Entry.check ⟨1021, 953, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run1097_checked : Entry.check ⟨1022, 954, ⟨1, 399999999⟩, ⟨0, 2, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, [⟨29, 79⟩, ⟨3, 7⟩, ⟨31, 79⟩, ⟨2, 4⟩, ⟨33, 79⟩, ⟨17, 39⟩]⟩ = true := by decide +kernel
theorem run1098_checked : Entry.check ⟨1023, 955, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨19, 7⟩, ⟨41, 15⟩⟩, [⟨19, 7⟩, ⟨191, 79⟩, ⟨12, 4⟩, ⟨193, 79⟩, ⟨97, 39⟩, ⟨39, 15⟩, ⟨49, 19⟩, ⟨197, 79⟩, ⟨99, 39⟩, ⟨199, 79⟩, ⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩, ⟨203, 79⟩, ⟨51, 19⟩, ⟨41, 15⟩]⟩ = true := by decide +kernel
theorem run1099_checked : Entry.check ⟨1023, 956, ⟨1, 399999999⟩, ⟨0, 15, 17, ⟨41, 15⟩, ⟨221, 79⟩⟩, [⟨41, 15⟩, ⟨103, 39⟩, ⟨207, 79⟩, ⟨13, 4⟩, ⟨209, 79⟩, ⟨21, 7⟩, ⟨211, 79⟩, ⟨53, 19⟩, ⟨213, 79⟩, ⟨107, 39⟩, ⟨43, 15⟩, ⟨27, 9⟩, ⟨217, 79⟩, ⟨109, 39⟩, ⟨219, 79⟩, ⟨11, 3⟩, ⟨221, 79⟩]⟩ = true := by decide +kernel
theorem run1100_checked : Entry.check ⟨1024, 957, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run1101_checked : Entry.check ⟨1025, 958, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨27, 79⟩, ⟨7, 19⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩]⟩ = true := by decide +kernel
theorem run1102_checked : Entry.check ⟨1026, 959, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run1103_checked : Entry.check ⟨1026, 960, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨5, 15⟩, ⟨3, 7⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run1104_checked : Entry.check ⟨1027, 961, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨27, 19⟩, ⟨111, 79⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩, ⟨11, 7⟩, ⟨111, 79⟩]⟩ = true := by decide +kernel
theorem entries37_checked : entries37.all Entry.check = true := by
  simp only [entries37, List.all_cons, List.all_nil, run1073_checked, run1074_checked, run1075_checked, run1076_checked, run1077_checked, run1078_checked, run1079_checked, run1080_checked, run1081_checked, run1082_checked, run1083_checked, run1084_checked, run1085_checked, run1086_checked, run1087_checked, run1088_checked, run1089_checked, run1090_checked, run1091_checked, run1092_checked, run1093_checked, run1094_checked, run1095_checked, run1096_checked, run1097_checked, run1098_checked, run1099_checked, run1100_checked, run1101_checked, run1102_checked, run1103_checked, run1104_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
