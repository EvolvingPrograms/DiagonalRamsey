import S7_ParameterChoice.Source.Joint.Foundations.ArithmeticData
import S7_ParameterChoice.Source.Joint.Leaves.LeafIndex

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel reductions; Lake parallelizes these batches.
set_option Elab.async false

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1010_checked : Entry.check ⟨963, 881, ⟨1, 399999999⟩, ⟨0, 31, 47, ⟨41, 15⟩, ⟨251, 79⟩⟩, (FQ.progression (41 / 16) (1 / 80) 47)⟩ = true := by decide +kernel
theorem run1011_checked : Entry.check ⟨964, 882, ⟨1, 399999999⟩, ⟨0, 21, 7, ⟨161, 79⟩, ⟨167, 79⟩⟩, (FQ.progression (161 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1012_checked : Entry.check ⟨965, 882, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨17, 7⟩, ⟨35, 15⟩⟩, (FQ.progression (17 / 8) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1013_checked : Entry.check ⟨966, 882, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run1014_checked : Entry.check ⟨967, 883, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run1015_checked : Entry.check ⟨968, 884, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run1016_checked : Entry.check ⟨969, 884, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run1017_checked : Entry.check ⟨970, 884, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run1018_checked : Entry.check ⟨971, 885, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨47, 15⟩, ⟨237, 79⟩⟩, [⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩]⟩ = true := by decide +kernel
theorem run1019_checked : Entry.check ⟨972, 886, ⟨1, 399999999⟩, ⟨0, 20, 14, ⟨15, 7⟩, ⟨163, 79⟩⟩, (FQ.progression (15 / 8) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1020_checked : Entry.check ⟨973, 886, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨83, 39⟩, ⟨17, 7⟩⟩, (FQ.progression (83 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1021_checked : Entry.check ⟨973, 887, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 7⟩, ⟨171, 79⟩⟩, [⟨17, 7⟩, ⟨171, 79⟩]⟩ = true := by decide +kernel
theorem run1022_checked : Entry.check ⟨974, 888, ⟨1, 399999999⟩, ⟨0, 22, 13, ⟨71, 39⟩, ⟨77, 39⟩⟩, (FQ.progression (71 / 40) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run1023_checked : Entry.check ⟨974, 889, ⟨1, 399999999⟩, ⟨0, 34, 6, ⟨77, 39⟩, ⟨159, 79⟩⟩, (FQ.progression (77 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1024_checked : Entry.check ⟨975, 889, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨81, 39⟩, ⟨167, 79⟩⟩, (FQ.progression (81 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1025_checked : Entry.check ⟨978, 890, ⟨1, 399999999⟩, ⟨0, 26, 2, ⟨139, 79⟩, ⟨7, 3⟩⟩, [⟨139, 79⟩, ⟨7, 3⟩]⟩ = true := by decide +kernel
theorem run1026_checked : Entry.check ⟨978, 891, ⟨1, 399999999⟩, ⟨0, 29, 15, ⟨71, 39⟩, ⟨39, 19⟩⟩, (FQ.progression (71 / 40) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1027_checked : Entry.check ⟨979, 891, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨79, 39⟩, ⟨163, 79⟩⟩, (FQ.progression (79 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1028_checked : Entry.check ⟨980, 892, ⟨1, 399999999⟩, ⟨0, 16, 18, ⟨121, 79⟩, ⟨69, 39⟩⟩, (FQ.progression (121 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run1029_checked : Entry.check ⟨980, 893, ⟨1, 399999999⟩, ⟨0, 33, 15, ⟨69, 39⟩, ⟨19, 9⟩⟩, (FQ.progression (69 / 40) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1030_checked : Entry.check ⟨981, 893, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨31, 15⟩, ⟨159, 79⟩⟩, (FQ.progression (31 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1031_checked : Entry.check ⟨983, 894, ⟨1, 399999999⟩, ⟨0, 18, 14, ⟨23, 15⟩, ⟨8, 4⟩⟩, (FQ.progression (23 / 16) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1032_checked : Entry.check ⟨984, 894, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨13, 7⟩, ⟨67, 39⟩⟩, (FQ.progression (13 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1033_checked : Entry.check ⟨985, 895, ⟨1, 399999999⟩, ⟨0, 13, 7, ⟨13, 9⟩, ⟨11, 7⟩⟩, (FQ.progression (13 / 10) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1034_checked : Entry.check ⟨985, 896, ⟨1, 399999999⟩, ⟨0, 19, 16, ⟨11, 7⟩, ⟨25, 15⟩⟩, (FQ.progression (11 / 8) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run1035_checked : Entry.check ⟨986, 896, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨127, 79⟩, ⟨8, 4⟩⟩, [⟨127, 79⟩, ⟨8, 4⟩]⟩ = true := by decide +kernel
theorem run1036_checked : Entry.check ⟨986, 897, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨8, 4⟩, ⟨129, 79⟩⟩, [⟨8, 4⟩, ⟨129, 79⟩]⟩ = true := by decide +kernel
theorem run1037_checked : Entry.check ⟨986, 898, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨129, 79⟩, ⟨131, 79⟩⟩, [⟨129, 79⟩, ⟨13, 7⟩, ⟨131, 79⟩]⟩ = true := by decide +kernel
theorem run1038_checked : Entry.check ⟨987, 899, ⟨1, 399999999⟩, ⟨0, 17, 13, ⟨5, 3⟩, ⟨7, 4⟩⟩, (FQ.progression (5 / 4) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run1039_checked : Entry.check ⟨987, 900, ⟨1, 399999999⟩, ⟨0, 29, 5, ⟨7, 4⟩, ⟨29, 19⟩⟩, (FQ.progression (7 / 5) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1040_checked : Entry.check ⟨988, 901, ⟨1, 399999999⟩, ⟨0, 0, 34, ⟨321, 79⟩, ⟨177, 39⟩⟩, (FQ.progression (321 / 80) (1 / 80) 34)⟩ = true := by decide +kernel
theorem entries35_checked : entries35.all Entry.check = true := by
  simp only [entries35, List.all_cons, List.all_nil, run1010_checked, run1011_checked, run1012_checked, run1013_checked, run1014_checked, run1015_checked, run1016_checked, run1017_checked, run1018_checked, run1019_checked, run1020_checked, run1021_checked, run1022_checked, run1023_checked, run1024_checked, run1025_checked, run1026_checked, run1027_checked, run1028_checked, run1029_checked, run1030_checked, run1031_checked, run1032_checked, run1033_checked, run1034_checked, run1035_checked, run1036_checked, run1037_checked, run1038_checked, run1039_checked, run1040_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

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

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1073_checked : Entry.check ⟨1005, 934, ⟨1, 399999999⟩, ⟨0, 9, 4, ⟨13, 19⟩, ⟨11, 15⟩⟩, (FQ.progression (13 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1074_checked : Entry.check ⟨1005, 935, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run1075_checked : Entry.check ⟨1006, 936, ⟨1, 399999999⟩, ⟨0, 8, 3, ⟨3, 4⟩, ⟨5, 7⟩⟩, [⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1076_checked : Entry.check ⟨1006, 937, ⟨1, 399999999⟩, ⟨0, 10, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, (FQ.progression (5 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1077_checked : Entry.check ⟨1006, 938, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨27, 39⟩, ⟨11, 15⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run1078_checked : Entry.check ⟨1007, 939, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1079_checked : Entry.check ⟨1007, 940, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1080_checked : Entry.check ⟨1009, 941, ⟨1, 399999999⟩, ⟨0, 1, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1081_checked : Entry.check ⟨1009, 942, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨11, 19⟩, ⟨3, 4⟩⟩, (FQ.progression (11 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1082_checked : Entry.check ⟨1010, 943, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨19, 39⟩, ⟨21, 39⟩⟩, (FQ.progression (19 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1083_checked : Entry.check ⟨1012, 944, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1084_checked : Entry.check ⟨1013, 945, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨29, 19⟩, ⟨123, 79⟩⟩, (FQ.progression (29 / 20) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1085_checked : Entry.check ⟨1013, 946, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨123, 79⟩, ⟨31, 19⟩⟩, [⟨123, 79⟩, ⟨31, 19⟩]⟩ = true := by decide +kernel
theorem run1086_checked : Entry.check ⟨1014, 946, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨63, 39⟩, ⟨129, 79⟩⟩, (FQ.progression (63 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1087_checked : Entry.check ⟨1014, 947, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨129, 79⟩, ⟨131, 79⟩⟩, [⟨129, 79⟩, ⟨13, 7⟩, ⟨131, 79⟩]⟩ = true := by decide +kernel
theorem run1088_checked : Entry.check ⟨1015, 948, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨71, 39⟩, ⟨73, 39⟩⟩, (FQ.progression (71 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1089_checked : Entry.check ⟨1016, 948, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨37, 19⟩, ⟨153, 79⟩⟩, (FQ.progression (37 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1090_checked : Entry.check ⟨1017, 948, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨159, 79⟩, ⟨81, 39⟩⟩, (FQ.progression (159 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1091_checked : Entry.check ⟨1017, 949, ⟨1, 399999999⟩, ⟨0, 3, 12, ⟨81, 39⟩, ⟨173, 79⟩⟩, (FQ.progression (81 / 40) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run1092_checked : Entry.check ⟨1018, 949, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨177, 79⟩, ⟨183, 79⟩⟩, (FQ.progression (177 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1093_checked : Entry.check ⟨1019, 950, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨47, 19⟩, ⟨97, 39⟩⟩, (FQ.progression (47 / 20) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1094_checked : Entry.check ⟨1020, 951, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1095_checked : Entry.check ⟨1021, 952, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run1096_checked : Entry.check ⟨1021, 953, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run1097_checked : Entry.check ⟨1022, 954, ⟨1, 399999999⟩, ⟨0, 2, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1098_checked : Entry.check ⟨1023, 955, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨19, 7⟩, ⟨41, 15⟩⟩, (FQ.progression (19 / 8) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run1099_checked : Entry.check ⟨1023, 956, ⟨1, 399999999⟩, ⟨0, 15, 17, ⟨41, 15⟩, ⟨221, 79⟩⟩, (FQ.progression (41 / 16) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run1100_checked : Entry.check ⟨1024, 957, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run1101_checked : Entry.check ⟨1025, 958, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨27, 79⟩, ⟨7, 19⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩]⟩ = true := by decide +kernel
theorem run1102_checked : Entry.check ⟨1026, 959, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run1103_checked : Entry.check ⟨1026, 960, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨5, 15⟩, ⟨3, 7⟩⟩, (FQ.progression (5 / 16) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1104_checked : Entry.check ⟨1027, 961, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨27, 19⟩, ⟨111, 79⟩⟩, (FQ.progression (27 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem entries37_checked : entries37.all Entry.check = true := by
  simp only [entries37, List.all_cons, List.all_nil, run1073_checked, run1074_checked, run1075_checked, run1076_checked, run1077_checked, run1078_checked, run1079_checked, run1080_checked, run1081_checked, run1082_checked, run1083_checked, run1084_checked, run1085_checked, run1086_checked, run1087_checked, run1088_checked, run1089_checked, run1090_checked, run1091_checked, run1092_checked, run1093_checked, run1094_checked, run1095_checked, run1096_checked, run1097_checked, run1098_checked, run1099_checked, run1100_checked, run1101_checked, run1102_checked, run1103_checked, run1104_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

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

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1129_checked : Entry.check ⟨1107, 980, ⟨1, 399999999⟩, ⟨0, 19, 18, ⟨159, 79⟩, ⟨11, 4⟩⟩, (FQ.progression (159 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run1130_checked : Entry.check ⟨1108, 980, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run1131_checked : Entry.check ⟨1109, 981, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run1132_checked : Entry.check ⟨1110, 982, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run1133_checked : Entry.check ⟨1111, 982, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run1134_checked : Entry.check ⟨1112, 982, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run1135_checked : Entry.check ⟨1113, 983, ⟨1, 399999999⟩, ⟨0, 20, 21, ⟨149, 79⟩, ⟨169, 79⟩⟩, (FQ.progression (149 / 80) (1 / 80) 21)⟩ = true := by decide +kernel
theorem run1136_checked : Entry.check ⟨1113, 984, ⟨1, 399999999⟩, ⟨0, 40, 4, ⟨169, 79⟩, ⟨43, 19⟩⟩, (FQ.progression (169 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1137_checked : Entry.check ⟨1114, 985, ⟨1, 399999999⟩, ⟨0, 21, 10, ⟨143, 79⟩, ⟨19, 9⟩⟩, (FQ.progression (143 / 80) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run1138_checked : Entry.check ⟨1114, 986, ⟨1, 399999999⟩, ⟨0, 30, 17, ⟨19, 9⟩, ⟨21, 9⟩⟩, (FQ.progression (19 / 10) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run1139_checked : Entry.check ⟨1116, 987, ⟨1, 399999999⟩, ⟨0, 25, 2, ⟨139, 79⟩, ⟨7, 3⟩⟩, [⟨139, 79⟩, ⟨7, 3⟩]⟩ = true := by decide +kernel
theorem run1140_checked : Entry.check ⟨1116, 988, ⟨1, 399999999⟩, ⟨0, 29, 22, ⟨143, 79⟩, ⟨41, 19⟩⟩, (FQ.progression (143 / 80) (1 / 80) 22)⟩ = true := by decide +kernel
theorem run1141_checked : Entry.check ⟨1118, 989, ⟨1, 399999999⟩, ⟨0, 10, 18, ⟨121, 79⟩, ⟨69, 39⟩⟩, (FQ.progression (121 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run1142_checked : Entry.check ⟨1118, 990, ⟨1, 399999999⟩, ⟨0, 27, 23, ⟨69, 39⟩, ⟨2, 0⟩⟩, (FQ.progression (69 / 40) (1 / 80) 23)⟩ = true := by decide +kernel
theorem run1143_checked : Entry.check ⟨1119, 991, ⟨1, 399999999⟩, ⟨0, 0, 13, ⟨291, 79⟩, ⟨303, 79⟩⟩, (FQ.progression (291 / 80) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run1144_checked : Entry.check ⟨1119, 992, ⟨1, 399999999⟩, ⟨0, 12, 18, ⟨303, 79⟩, ⟨4, 0⟩⟩, (FQ.progression (303 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run1145_checked : Entry.check ⟨1120, 993, ⟨1, 399999999⟩, ⟨0, 18, 14, ⟨23, 15⟩, ⟨8, 4⟩⟩, (FQ.progression (23 / 16) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1146_checked : Entry.check ⟨1121, 993, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨129, 79⟩, ⟨133, 79⟩⟩, (FQ.progression (129 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1147_checked : Entry.check ⟨1121, 994, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨133, 79⟩, ⟨67, 39⟩⟩, [⟨133, 79⟩, ⟨67, 39⟩]⟩ = true := by decide +kernel
theorem run1148_checked : Entry.check ⟨1122, 994, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨7, 3⟩, ⟨143, 79⟩⟩, (FQ.progression (7 / 4) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1149_checked : Entry.check ⟨1124, 995, ⟨1, 399999999⟩, ⟨0, 13, 9, ⟨13, 9⟩, ⟨7, 4⟩⟩, (FQ.progression (13 / 10) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1150_checked : Entry.check ⟨1124, 996, ⟨1, 399999999⟩, ⟨0, 21, 13, ⟨7, 4⟩, ⟨31, 19⟩⟩, (FQ.progression (7 / 5) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run1151_checked : Entry.check ⟨1125, 997, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨63, 39⟩, ⟨129, 79⟩⟩, (FQ.progression (63 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1152_checked : Entry.check ⟨1125, 998, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨129, 79⟩, ⟨13, 7⟩⟩, [⟨129, 79⟩, ⟨13, 7⟩]⟩ = true := by decide +kernel
theorem run1153_checked : Entry.check ⟨1126, 998, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨137, 79⟩, ⟨139, 79⟩⟩, [⟨137, 79⟩, ⟨69, 39⟩, ⟨139, 79⟩]⟩ = true := by decide +kernel
theorem run1154_checked : Entry.check ⟨1126, 999, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨139, 79⟩, ⟨7, 3⟩⟩, [⟨139, 79⟩, ⟨7, 3⟩]⟩ = true := by decide +kernel
theorem run1155_checked : Entry.check ⟨1127, 1000, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨99, 79⟩, ⟨51, 39⟩⟩, (FQ.progression (99 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1156_checked : Entry.check ⟨1127, 1001, ⟨1, 399999999⟩, ⟨0, 17, 10, ⟨51, 39⟩, ⟨111, 79⟩⟩, (FQ.progression (51 / 40) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run1157_checked : Entry.check ⟨1127, 1002, ⟨1, 399999999⟩, ⟨0, 26, 3, ⟨111, 79⟩, ⟨113, 79⟩⟩, [⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run1158_checked : Entry.check ⟨1128, 1002, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨23, 15⟩, ⟨119, 79⟩⟩, (FQ.progression (23 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1159_checked : Entry.check ⟨1129, 1003, ⟨1, 399999999⟩, ⟨0, 14, 7, ⟨23, 19⟩, ⟨49, 39⟩⟩, (FQ.progression (23 / 20) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1160_checked : Entry.check ⟨1129, 1004, ⟨1, 399999999⟩, ⟨0, 20, 10, ⟨49, 39⟩, ⟨107, 79⟩⟩, (FQ.progression (49 / 40) (1 / 80) 10)⟩ = true := by decide +kernel
theorem entries39_checked : entries39.all Entry.check = true := by
  simp only [entries39, List.all_cons, List.all_nil, run1129_checked, run1130_checked, run1131_checked, run1132_checked, run1133_checked, run1134_checked, run1135_checked, run1136_checked, run1137_checked, run1138_checked, run1139_checked, run1140_checked, run1141_checked, run1142_checked, run1143_checked, run1144_checked, run1145_checked, run1146_checked, run1147_checked, run1148_checked, run1149_checked, run1150_checked, run1151_checked, run1152_checked, run1153_checked, run1154_checked, run1155_checked, run1156_checked, run1157_checked, run1158_checked, run1159_checked, run1160_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
