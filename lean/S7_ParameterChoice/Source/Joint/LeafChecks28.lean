import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run804_checked : Entry.check ⟨713, 699, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨37, 39⟩, ⟨19, 19⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩]⟩ = true := by decide +kernel
theorem run805_checked : Entry.check ⟨713, 700, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨19, 19⟩, ⟨79, 79⟩⟩, [⟨19, 19⟩, ⟨77, 79⟩, ⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run806_checked : Entry.check ⟨713, 701, ⟨1, 399999999⟩, ⟨0, 16, 5, ⟨79, 79⟩, ⟨83, 79⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩, ⟨81, 79⟩, ⟨41, 39⟩, ⟨83, 79⟩]⟩ = true := by decide +kernel
theorem run807_checked : Entry.check ⟨713, 702, ⟨1, 399999999⟩, ⟨0, 20, 6, ⟨83, 79⟩, ⟨11, 9⟩⟩, [⟨83, 79⟩, ⟨21, 19⟩, ⟨17, 15⟩, ⟨43, 39⟩, ⟨87, 79⟩, ⟨11, 9⟩]⟩ = true := by decide +kernel
theorem run808_checked : Entry.check ⟨715, 703, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run809_checked : Entry.check ⟨715, 704, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run810_checked : Entry.check ⟨715, 705, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨9, 9⟩, ⟨37, 39⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run811_checked : Entry.check ⟨715, 706, ⟨1, 399999999⟩, ⟨0, 16, 5, ⟨37, 39⟩, ⟨39, 39⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run812_checked : Entry.check ⟨715, 707, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run813_checked : Entry.check ⟨716, 708, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨41, 39⟩, ⟨83, 79⟩⟩, [⟨41, 39⟩, ⟨83, 79⟩]⟩ = true := by decide +kernel
theorem run814_checked : Entry.check ⟨716, 709, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨83, 79⟩, ⟨17, 15⟩⟩, [⟨83, 79⟩, ⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run815_checked : Entry.check ⟨717, 710, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨29, 15⟩, ⟨73, 39⟩⟩, [⟨29, 15⟩, ⟨73, 39⟩]⟩ = true := by decide +kernel
theorem run816_checked : Entry.check ⟨718, 711, ⟨1, 399999999⟩, ⟨0, 9, 3, ⟨63, 79⟩, ⟨13, 15⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run817_checked : Entry.check ⟨718, 712, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨13, 15⟩, ⟨17, 19⟩⟩, [⟨13, 15⟩, ⟨33, 39⟩, ⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem run818_checked : Entry.check ⟨718, 713, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run819_checked : Entry.check ⟨718, 714, ⟨1, 399999999⟩, ⟨0, 16, 4, ⟨7, 7⟩, ⟨73, 79⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩, ⟨73, 79⟩]⟩ = true := by decide +kernel
theorem run820_checked : Entry.check ⟨718, 715, ⟨1, 399999999⟩, ⟨0, 19, 3, ⟨73, 79⟩, ⟨15, 15⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩, ⟨15, 15⟩]⟩ = true := by decide +kernel
theorem run821_checked : Entry.check ⟨719, 716, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨16, 4⟩, ⟨259, 79⟩⟩, [⟨16, 4⟩, ⟨257, 79⟩, ⟨129, 39⟩, ⟨259, 79⟩]⟩ = true := by decide +kernel
theorem run822_checked : Entry.check ⟨719, 717, ⟨1, 399999999⟩, ⟨0, 3, 9, ⟨259, 79⟩, ⟨267, 79⟩⟩, [⟨259, 79⟩, ⟨13, 3⟩, ⟨261, 79⟩, ⟨131, 39⟩, ⟨263, 79⟩, ⟨33, 9⟩, ⟨53, 15⟩, ⟨133, 39⟩, ⟨267, 79⟩]⟩ = true := by decide +kernel
theorem run823_checked : Entry.check ⟨720, 717, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨29, 7⟩, ⟨61, 15⟩⟩, [⟨29, 7⟩, ⟨291, 79⟩, ⟨73, 19⟩, ⟨293, 79⟩, ⟨147, 39⟩, ⟨59, 15⟩, ⟨37, 9⟩, ⟨297, 79⟩, ⟨149, 39⟩, ⟨299, 79⟩, ⟨15, 3⟩, ⟨301, 79⟩, ⟨151, 39⟩, ⟨303, 79⟩, ⟨19, 4⟩, ⟨61, 15⟩]⟩ = true := by decide +kernel
theorem run824_checked : Entry.check ⟨721, 717, ⟨1, 399999999⟩, ⟨0, 0, 27, ⟨4, 0⟩, ⟨173, 39⟩⟩, [⟨4, 0⟩, ⟨321, 79⟩, ⟨161, 39⟩, ⟨323, 79⟩, ⟨81, 19⟩, ⟨65, 15⟩, ⟨163, 39⟩, ⟨327, 79⟩, ⟨41, 9⟩, ⟨329, 79⟩, ⟨33, 7⟩, ⟨331, 79⟩, ⟨83, 19⟩, ⟨333, 79⟩, ⟨167, 39⟩, ⟨67, 15⟩, ⟨21, 4⟩, ⟨337, 79⟩, ⟨169, 39⟩, ⟨339, 79⟩, ⟨17, 3⟩, ⟨341, 79⟩, ⟨171, 39⟩, ⟨343, 79⟩, ⟨43, 9⟩, ⟨69, 15⟩, ⟨173, 39⟩]⟩ = true := by decide +kernel
theorem run825_checked : Entry.check ⟨721, 718, ⟨1, 399999999⟩, ⟨0, 26, 11, ⟨173, 39⟩, ⟨89, 19⟩⟩, [⟨173, 39⟩, ⟨347, 79⟩, ⟨87, 19⟩, ⟨349, 79⟩, ⟨35, 7⟩, ⟨351, 79⟩, ⟨22, 4⟩, ⟨353, 79⟩, ⟨177, 39⟩, ⟨71, 15⟩, ⟨89, 19⟩]⟩ = true := by decide +kernel
theorem run826_checked : Entry.check ⟨722, 719, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨59, 79⟩, ⟨3, 3⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run827_checked : Entry.check ⟨722, 720, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨3, 3⟩, ⟨61, 79⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run828_checked : Entry.check ⟨722, 721, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨61, 79⟩, ⟨63, 79⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run829_checked : Entry.check ⟨722, 722, ⟨1, 399999999⟩, ⟨0, 12, 5, ⟨63, 79⟩, ⟨67, 79⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩, ⟨67, 79⟩]⟩ = true := by decide +kernel
theorem run830_checked : Entry.check ⟨723, 723, ⟨1, 399999999⟩, ⟨0, 7, 4, ⟨27, 39⟩, ⟨57, 79⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run831_checked : Entry.check ⟨723, 724, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨57, 79⟩, ⟨3, 3⟩⟩, [⟨57, 79⟩, ⟨29, 39⟩, ⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run832_checked : Entry.check ⟨723, 725, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨3, 3⟩, ⟨63, 79⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩, ⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run833_checked : Entry.check ⟨723, 726, ⟨1, 399999999⟩, ⟨0, 16, 2, ⟨63, 79⟩, ⟨4, 4⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run834_checked : Entry.check ⟨724, 727, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨13, 19⟩, ⟨11, 15⟩⟩, [⟨13, 19⟩, ⟨53, 79⟩, ⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run835_checked : Entry.check ⟨724, 728, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem entries28_checked : entries28.all Entry.check = true := by
  simp only [entries28, List.all_cons, List.all_nil, run804_checked, run805_checked, run806_checked, run807_checked, run808_checked, run809_checked, run810_checked, run811_checked, run812_checked, run813_checked, run814_checked, run815_checked, run816_checked, run817_checked, run818_checked, run819_checked, run820_checked, run821_checked, run822_checked, run823_checked, run824_checked, run825_checked, run826_checked, run827_checked, run828_checked, run829_checked, run830_checked, run831_checked, run832_checked, run833_checked, run834_checked, run835_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
