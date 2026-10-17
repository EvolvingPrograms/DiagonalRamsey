import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
