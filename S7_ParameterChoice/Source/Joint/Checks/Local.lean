import S7_ParameterChoice.Source.Joint.LocalIndex

set_option autoImplicit false
set_option maxRecDepth 100000

namespace DiagonalRamsey.JointLocal

theorem checked_C1_1_5_0 : entryCheck ⟨0, 1, ⟨0, 0, 12, ⟨1, 15⟩, ⟨1, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_3_14_0 : entryCheck ⟨1, 2, ⟨0, 0, 3, ⟨7, 39⟩, ⟨1, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_30_157_0 : entryCheck ⟨66, 55, ⟨14, 0, 82, ⟨157, 79⟩, ⟨119, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_32_137_0 : entryCheck ⟨76, 64, ⟨11, 0, 32, ⟨137, 79⟩, ⟨21, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_33_126_0 : entryCheck ⟨78, 66, ⟨9, 0, 39, ⟨63, 39⟩, ⟨41, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_34_117_0 : entryCheck ⟨81, 69, ⟨8, 0, 44, ⟨117, 79⟩, ⟨2, 0⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_35_110_0 : entryCheck ⟨83, 71, ⟨8, 0, 47, ⟨11, 7⟩, ⟨39, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_36_101_0 : entryCheck ⟨85, 73, ⟨6, 0, 23, ⟨101, 79⟩, ⟨123, 79⟩⟩⟩ = true := by
  decide +kernel

theorem block0_checked : block0.all entryCheck = true := by
  simp only [block0, List.all_cons, List.all_nil, checked_C1_1_5_0, checked_C1_3_14_0, checked_C1_30_157_0, checked_C1_32_137_0, checked_C1_33_126_0, checked_C1_34_117_0, checked_C1_35_110_0, checked_C1_36_101_0, Bool.and_true]

#print axioms block0_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C1_37_94_0 : entryCheck ⟨87, 75, ⟨6, 0, 26, ⟨47, 39⟩, ⟨119, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_38_87_0 : entryCheck ⟨89, 77, ⟨5, 0, 24, ⟨87, 79⟩, ⟨11, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_39_80_0 : entryCheck ⟨91, 79, ⟨3, 0, 27, ⟨1, 0⟩, ⟨53, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_40_76_0 : entryCheck ⟨93, 81, ⟨5, 0, 20, ⟨19, 19⟩, ⟨19, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_41_70_0 : entryCheck ⟨95, 83, ⟨3, 0, 19, ⟨7, 7⟩, ⟨11, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_42_65_0 : entryCheck ⟨97, 85, ⟨3, 0, 18, ⟨13, 15⟩, ⟨41, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_43_61_0 : entryCheck ⟨100, 88, ⟨3, 0, 17, ⟨61, 79⟩, ⟨77, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_44_57_0 : entryCheck ⟨102, 90, ⟨3, 0, 15, ⟨57, 79⟩, ⟨71, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_45_54_0 : entryCheck ⟨105, 93, ⟨4, 0, 13, ⟨27, 39⟩, ⟨33, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_46_50_0 : entryCheck ⟨107, 95, ⟨3, 0, 12, ⟨5, 7⟩, ⟨61, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_47_47_0 : entryCheck ⟨109, 97, ⟨3, 0, 11, ⟨47, 79⟩, ⟨57, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_48_44_0 : entryCheck ⟨112, 100, ⟨3, 0, 11, ⟨11, 19⟩, ⟨27, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_49_41_0 : entryCheck ⟨114, 102, ⟨3, 0, 9, ⟨41, 79⟩, ⟨49, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_50_38_0 : entryCheck ⟨116, 104, ⟨2, 0, 10, ⟨19, 39⟩, ⟨47, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_51_36_0 : entryCheck ⟨120, 108, ⟨3, 0, 7, ⟨9, 19⟩, ⟨21, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_52_34_0 : entryCheck ⟨122, 110, ⟨3, 0, 7, ⟨17, 39⟩, ⟨1, 1⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C1_53_31_0 : entryCheck ⟨125, 113, ⟨2, 0, 8, ⟨31, 79⟩, ⟨19, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_19_12_0 : entryCheck ⟨208, 191, ⟨0, 0, 6, ⟨3, 19⟩, ⟨17, 79⟩⟩⟩ = true := by
  decide +kernel

theorem block1_checked : block1.all entryCheck = true := by
  simp only [block1, List.all_cons, List.all_nil, checked_C1_37_94_0, checked_C1_38_87_0, checked_C1_39_80_0, checked_C1_40_76_0, checked_C1_41_70_0, checked_C1_42_65_0, checked_C1_43_61_0, checked_C1_44_57_0, checked_C1_45_54_0, checked_C1_46_50_0, checked_C1_47_47_0, checked_C1_48_44_0, checked_C1_49_41_0, checked_C1_50_38_0, checked_C1_51_36_0, checked_C1_52_34_0, checked_C1_53_31_0, checked_C2_19_12_0, Bool.and_true]

#print axioms block1_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C2_30_165_0 : entryCheck ⟨246, 220, ⟨15, 0, 81, ⟨33, 15⟩, ⟨49, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_31_152_0 : entryCheck ⟨249, 223, ⟨12, 0, 10, ⟨19, 9⟩, ⟨161, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_32_141_0 : entryCheck ⟨258, 232, ⟨12, 0, 17, ⟨141, 79⟩, ⟨157, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_33_129_0 : entryCheck ⟨261, 234, ⟨9, 0, 25, ⟨129, 79⟩, ⟨153, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_34_11_0 : entryCheck ⟨260, 236, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_34_11_1 : entryCheck ⟨263, 236, ⟨0, 1, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_34_119_0 : entryCheck ⟨265, 238, ⟨7, 0, 30, ⟨119, 79⟩, ⟨37, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_35_111_0 : entryCheck ⟨267, 240, ⟨8, 0, 34, ⟨111, 79⟩, ⟨9, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_36_103_0 : entryCheck ⟨270, 243, ⟨7, 0, 23, ⟨103, 79⟩, ⟨25, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_37_95_0 : entryCheck ⟨276, 247, ⟨6, 0, 27, ⟨19, 15⟩, ⟨121, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_38_88_0 : entryCheck ⟨280, 250, ⟨5, 0, 22, ⟨11, 9⟩, ⟨109, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_39_80_0 : entryCheck ⟨284, 253, ⟨3, 0, 27, ⟨1, 0⟩, ⟨53, 39⟩⟩⟩ = true := by
  decide +kernel

theorem block2_checked : block2.all entryCheck = true := by
  simp only [block2, List.all_cons, List.all_nil, checked_C2_30_165_0, checked_C2_31_152_0, checked_C2_32_141_0, checked_C2_33_129_0, checked_C2_34_11_0, checked_C2_34_11_1, checked_C2_34_119_0, checked_C2_35_111_0, checked_C2_36_103_0, checked_C2_37_95_0, checked_C2_38_88_0, checked_C2_39_80_0, Bool.and_true]

#print axioms block2_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C2_40_75_0 : entryCheck ⟨290, 258, ⟨4, 0, 24, ⟨15, 15⟩, ⟨49, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_41_69_0 : entryCheck ⟨294, 261, ⟨3, 0, 22, ⟨69, 79⟩, ⟨9, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_42_64_0 : entryCheck ⟨297, 263, ⟨3, 0, 20, ⟨4, 4⟩, ⟨83, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_43_60_0 : entryCheck ⟨301, 265, ⟨3, 0, 19, ⟨3, 3⟩, ⟨39, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_44_56_0 : entryCheck ⟨305, 269, ⟨3, 0, 16, ⟨7, 9⟩, ⟨71, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_45_52_0 : entryCheck ⟨310, 272, ⟨3, 0, 17, ⟨13, 19⟩, ⟨17, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_46_16_0 : entryCheck ⟨312, 274, ⟨0, 0, 2, ⟨1, 4⟩, ⟨17, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_46_48_0 : entryCheck ⟨313, 275, ⟨3, 0, 16, ⟨3, 4⟩, ⟨63, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_47_46_0 : entryCheck ⟨316, 279, ⟨4, 0, 13, ⟨23, 39⟩, ⟨29, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_48_43_0 : entryCheck ⟨319, 282, ⟨6, 0, 13, ⟨43, 79⟩, ⟨11, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_63_7_0 : entryCheck ⟨361, 319, ⟨0, 0, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_65_11_0 : entryCheck ⟨364, 324, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_65_11_1 : entryCheck ⟨366, 324, ⟨0, 1, 4, ⟨3, 19⟩, ⟨3, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_67_8_0 : entryCheck ⟨361, 328, ⟨1, 0, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_69_2_0 : entryCheck ⟨371, 330, ⟨0, 0, 2, ⟨1, 39⟩, ⟨3, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_72_3_0 : entryCheck ⟨371, 334, ⟨1, 0, 2, ⟨3, 79⟩, ⟨1, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C2_72_3_1 : entryCheck ⟨375, 334, ⟨0, 1, 3, ⟨1, 19⟩, ⟨3, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_0_18_42 : entryCheck ⟨379, 338, ⟨0, 42, 3, ⟨3, 3⟩, ⟨31, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_0_18_47 : entryCheck ⟨380, 338, ⟨0, 47, 2, ⟨13, 15⟩, ⟨33, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_22_11_0 : entryCheck ⟨406, 350, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_26_235_0 : entryCheck ⟨414, 357, ⟨0, 0, 35, ⟨47, 15⟩, ⟨269, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_27_231_0 : entryCheck ⟨416, 359, ⟨36, 0, 34, ⟨231, 79⟩, ⟨33, 9⟩⟩⟩ = true := by
  decide +kernel

theorem block3_checked : block3.all entryCheck = true := by
  simp only [block3, List.all_cons, List.all_nil, checked_C2_40_75_0, checked_C2_41_69_0, checked_C2_42_64_0, checked_C2_43_60_0, checked_C2_44_56_0, checked_C2_45_52_0, checked_C2_46_16_0, checked_C2_46_48_0, checked_C2_47_46_0, checked_C2_48_43_0, checked_C2_63_7_0, checked_C2_65_11_0, checked_C2_65_11_1, checked_C2_67_8_0, checked_C2_69_2_0, checked_C2_72_3_0, checked_C2_72_3_1, checked_C3_0_18_42, checked_C3_0_18_47, checked_C3_22_11_0, checked_C3_26_235_0, checked_C3_27_231_0, Bool.and_true]

#print axioms block3_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C3_30_165_0 : entryCheck ⟨423, 365, ⟨10, 0, 85, ⟨33, 15⟩, ⟨249, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_31_151_0 : entryCheck ⟨426, 367, ⟨7, 0, 27, ⟨151, 79⟩, ⟨177, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_32_1_0 : entryCheck ⟨433, 374, ⟨0, 0, 8, ⟨1, 79⟩, ⟨1, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_32_138_0 : entryCheck ⟨434, 375, ⟨6, 0, 36, ⟨69, 39⟩, ⟨173, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_33_128_0 : entryCheck ⟨437, 377, ⟨6, 0, 41, ⟨8, 4⟩, ⟨21, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_34_119_0 : entryCheck ⟨440, 379, ⟨6, 0, 46, ⟨119, 79⟩, ⟨41, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_35_1_0 : entryCheck ⟨441, 380, ⟨0, 0, 7, ⟨1, 79⟩, ⟨7, 79⟩⟩⟩ = true := by
  decide +kernel

theorem block4_checked : block4.all entryCheck = true := by
  simp only [block4, List.all_cons, List.all_nil, checked_C3_30_165_0, checked_C3_31_151_0, checked_C3_32_1_0, checked_C3_32_138_0, checked_C3_33_128_0, checked_C3_34_119_0, checked_C3_35_1_0, Bool.and_true]

#print axioms block4_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C3_35_110_0 : entryCheck ⟨442, 381, ⟨5, 0, 52, ⟨11, 7⟩, ⟨161, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_36_102_0 : entryCheck ⟨445, 382, ⟨5, 0, 28, ⟨51, 39⟩, ⟨129, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_37_95_0 : entryCheck ⟨447, 384, ⟨5, 0, 31, ⟨19, 15⟩, ⟨25, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_38_88_0 : entryCheck ⟨449, 386, ⟨5, 0, 27, ⟨11, 9⟩, ⟨57, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_39_82_0 : entryCheck ⟨451, 388, ⟨5, 0, 30, ⟨41, 39⟩, ⟨111, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_40_75_0 : entryCheck ⟨452, 389, ⟨3, 0, 25, ⟨15, 15⟩, ⟨99, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_41_69_0 : entryCheck ⟨453, 390, ⟨3, 0, 24, ⟨69, 79⟩, ⟨23, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_42_64_0 : entryCheck ⟨454, 391, ⟨2, 0, 22, ⟨4, 4⟩, ⟨17, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_43_59_0 : entryCheck ⟨458, 392, ⟨3, 0, 21, ⟨59, 79⟩, ⟨79, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_44_57_0 : entryCheck ⟨461, 394, ⟨5, 0, 16, ⟨57, 79⟩, ⟨9, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_45_51_0 : entryCheck ⟨465, 396, ⟨3, 0, 18, ⟨51, 79⟩, ⟨17, 19⟩⟩⟩ = true := by
  decide +kernel

theorem block5_checked : block5.all entryCheck = true := by
  simp only [block5, List.all_cons, List.all_nil, checked_C3_35_110_0, checked_C3_36_102_0, checked_C3_37_95_0, checked_C3_38_88_0, checked_C3_39_82_0, checked_C3_40_75_0, checked_C3_41_69_0, checked_C3_42_64_0, checked_C3_43_59_0, checked_C3_44_57_0, checked_C3_45_51_0, Bool.and_true]

#print axioms block5_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C3_46_49_0 : entryCheck ⟨466, 397, ⟨7, 0, 15, ⟨49, 79⟩, ⟨63, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_49_39_0 : entryCheck ⟨471, 401, ⟨1, 0, 2, ⟨39, 79⟩, ⟨1, 1⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_49_39_1 : entryCheck ⟨474, 401, ⟨0, 1, 11, ⟨1, 1⟩, ⟨5, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_56_8_0 : entryCheck ⟨433, 411, ⟨7, 0, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_58_7_0 : entryCheck ⟨441, 416, ⟨6, 0, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_64_12_0 : entryCheck ⟨406, 428, ⟨1, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_64_12_1 : entryCheck ⟨498, 428, ⟨0, 1, 3, ⟨13, 79⟩, ⟨3, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_65_11_0 : entryCheck ⟨411, 429, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_65_11_1 : entryCheck ⟨499, 429, ⟨0, 1, 3, ⟨3, 19⟩, ⟨7, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_67_9_0 : entryCheck ⟨500, 431, ⟨0, 0, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C3_67_9_1 : entryCheck ⟨502, 431, ⟨0, 1, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_0_18_43 : entryCheck ⟨506, 435, ⟨0, 43, 2, ⟨61, 79⟩, ⟨31, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_14_16_0 : entryCheck ⟨516, 437, ⟨1, 0, 2, ⟨1, 4⟩, ⟨17, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_15_15_0 : entryCheck ⟨516, 438, ⟨0, 0, 2, ⟨3, 15⟩, ⟨1, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_17_16_0 : entryCheck ⟨520, 440, ⟨0, 0, 3, ⟨1, 4⟩, ⟨9, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_18_14_0 : entryCheck ⟨522, 441, ⟨1, 0, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_19_13_0 : entryCheck ⟨522, 442, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_23_1_0 : entryCheck ⟨526, 445, ⟨0, 0, 10, ⟨1, 79⟩, ⟨1, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_23_1_9 : entryCheck ⟨525, 445, ⟨0, 9, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_27_217_0 : entryCheck ⟨540, 451, ⟨18, 0, 40, ⟨217, 79⟩, ⟨16, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_29_178_0 : entryCheck ⟨545, 455, ⟨12, 0, 67, ⟨89, 39⟩, ⟨61, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_30_163_0 : entryCheck ⟨548, 457, ⟨11, 0, 79, ⟨163, 79⟩, ⟨241, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_31_149_0 : entryCheck ⟨550, 459, ⟨10, 0, 26, ⟨149, 79⟩, ⟨87, 39⟩⟩⟩ = true := by
  decide +kernel

theorem block6_checked : block6.all entryCheck = true := by
  simp only [block6, List.all_cons, List.all_nil, checked_C3_46_49_0, checked_C3_49_39_0, checked_C3_49_39_1, checked_C3_56_8_0, checked_C3_58_7_0, checked_C3_64_12_0, checked_C3_64_12_1, checked_C3_65_11_0, checked_C3_65_11_1, checked_C3_67_9_0, checked_C3_67_9_1, checked_C4_0_18_43, checked_C4_14_16_0, checked_C4_15_15_0, checked_C4_17_16_0, checked_C4_18_14_0, checked_C4_19_13_0, checked_C4_23_1_0, checked_C4_23_1_9, checked_C4_27_217_0, checked_C4_29_178_0, checked_C4_30_163_0, checked_C4_31_149_0, Bool.and_true]

#print axioms block6_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C4_32_137_0 : entryCheck ⟨559, 468, ⟨8, 0, 29, ⟨137, 79⟩, ⟨33, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_33_127_0 : entryCheck ⟨563, 471, ⟨7, 0, 35, ⟨127, 79⟩, ⟨161, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_34_118_0 : entryCheck ⟨566, 474, ⟨7, 0, 46, ⟨59, 39⟩, ⟨163, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_35_110_0 : entryCheck ⟨567, 475, ⟨7, 0, 45, ⟨11, 7⟩, ⟨77, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_36_103_0 : entryCheck ⟨570, 478, ⟨7, 0, 26, ⟨103, 79⟩, ⟨8, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_37_95_0 : entryCheck ⟨573, 480, ⟨6, 0, 30, ⟨19, 15⟩, ⟨31, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_38_88_0 : entryCheck ⟨575, 482, ⟨5, 0, 26, ⟨11, 9⟩, ⟨113, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_39_80_0 : entryCheck ⟨576, 483, ⟨4, 0, 30, ⟨1, 0⟩, ⟨109, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_40_75_0 : entryCheck ⟨577, 484, ⟨4, 0, 25, ⟨15, 15⟩, ⟨99, 79⟩⟩⟩ = true := by
  decide +kernel

theorem block7_checked : block7.all entryCheck = true := by
  simp only [block7, List.all_cons, List.all_nil, checked_C4_32_137_0, checked_C4_33_127_0, checked_C4_34_118_0, checked_C4_35_110_0, checked_C4_36_103_0, checked_C4_37_95_0, checked_C4_38_88_0, checked_C4_39_80_0, checked_C4_40_75_0, Bool.and_true]

#print axioms block7_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C4_41_69_0 : entryCheck ⟨578, 485, ⟨3, 0, 24, ⟨69, 79⟩, ⟨23, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_42_64_0 : entryCheck ⟨579, 486, ⟨2, 0, 20, ⟨4, 4⟩, ⟨83, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_43_60_0 : entryCheck ⟨582, 488, ⟨3, 0, 19, ⟨3, 3⟩, ⟨39, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_44_56_0 : entryCheck ⟨585, 490, ⟨3, 0, 16, ⟨7, 9⟩, ⟨71, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_45_52_0 : entryCheck ⟨586, 491, ⟨3, 0, 16, ⟨13, 19⟩, ⟨67, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_46_48_0 : entryCheck ⟨589, 494, ⟨1, 0, 16, ⟨3, 4⟩, ⟨63, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_47_46_0 : entryCheck ⟨591, 495, ⟨2, 0, 12, ⟨23, 39⟩, ⟨57, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_48_43_0 : entryCheck ⟨593, 496, ⟨3, 0, 13, ⟨43, 79⟩, ⟨11, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_53_30_0 : entryCheck ⟨515, 504, ⟨7, 0, 2, ⟨3, 7⟩, ⟨31, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_53_30_1 : entryCheck ⟨602, 504, ⟨0, 1, 8, ⟨31, 79⟩, ⟨19, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_60_18_0 : entryCheck ⟨520, 515, ⟨2, 0, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_60_18_1 : entryCheck ⟨615, 515, ⟨0, 1, 4, ⟨19, 79⟩, ⟨11, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_62_15_0 : entryCheck ⟨522, 517, ⟨2, 0, 2, ⟨3, 15⟩, ⟨1, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_62_15_1 : entryCheck ⟨617, 517, ⟨0, 1, 4, ⟨1, 4⟩, ⟨19, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_64_12_0 : entryCheck ⟨536, 519, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C4_64_12_1 : entryCheck ⟨623, 519, ⟨0, 1, 4, ⟨13, 79⟩, ⟨1, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_0_18_38 : entryCheck ⟨630, 526, ⟨0, 38, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_0_18_42 : entryCheck ⟨631, 526, ⟨0, 42, 4, ⟨3, 3⟩, ⟨63, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_0_18_47 : entryCheck ⟨632, 526, ⟨0, 47, 2, ⟨13, 15⟩, ⟨33, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_0_18_52 : entryCheck ⟨633, 526, ⟨0, 52, 3, ⟨7, 7⟩, ⟨9, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_0_18_58 : entryCheck ⟨634, 526, ⟨0, 58, 2, ⟨19, 19⟩, ⟨77, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_0_18_63 : entryCheck ⟨635, 526, ⟨0, 63, 3, ⟨81, 79⟩, ⟨83, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_14_16_0 : entryCheck ⟨660, 528, ⟨1, 0, 2, ⟨1, 4⟩, ⟨17, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_16_15_0 : entryCheck ⟨660, 529, ⟨0, 0, 2, ⟨3, 15⟩, ⟨1, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_19_13_0 : entryCheck ⟨662, 531, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_21_12_0 : entryCheck ⟨665, 532, ⟨1, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_22_11_0 : entryCheck ⟨665, 533, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_23_1_0 : entryCheck ⟨668, 534, ⟨0, 0, 10, ⟨1, 79⟩, ⟨1, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_23_1_9 : entryCheck ⟨667, 534, ⟨0, 9, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_26_235_0 : entryCheck ⟨672, 538, ⟨1, 0, 41, ⟨47, 15⟩, ⟨55, 15⟩⟩⟩ = true := by
  decide +kernel

theorem block8_checked : block8.all entryCheck = true := by
  simp only [block8, List.all_cons, List.all_nil, checked_C4_41_69_0, checked_C4_42_64_0, checked_C4_43_60_0, checked_C4_44_56_0, checked_C4_45_52_0, checked_C4_46_48_0, checked_C4_47_46_0, checked_C4_48_43_0, checked_C4_53_30_0, checked_C4_53_30_1, checked_C4_60_18_0, checked_C4_60_18_1, checked_C4_62_15_0, checked_C4_62_15_1, checked_C4_64_12_0, checked_C4_64_12_1, checked_C5_0_18_38, checked_C5_0_18_42, checked_C5_0_18_47, checked_C5_0_18_52, checked_C5_0_18_58, checked_C5_0_18_63, checked_C5_14_16_0, checked_C5_16_15_0, checked_C5_19_13_0, checked_C5_21_12_0, checked_C5_22_11_0, checked_C5_23_1_0, checked_C5_23_1_9, checked_C5_26_235_0, Bool.and_true]

#print axioms block8_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C5_27_213_0 : entryCheck ⟨674, 540, ⟨1, 0, 57, ⟨213, 79⟩, ⟨269, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_28_194_0 : entryCheck ⟨676, 542, ⟨13, 0, 70, ⟨97, 39⟩, ⟨263, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_29_177_0 : entryCheck ⟨678, 544, ⟨11, 0, 82, ⟨177, 79⟩, ⟨129, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_31_142_0 : entryCheck ⟨684, 549, ⟨3, 0, 3, ⟨71, 39⟩, ⟨9, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_31_148_0 : entryCheck ⟨684, 550, ⟨9, 0, 28, ⟨37, 19⟩, ⟨35, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_32_134_0 : entryCheck ⟨692, 558, ⟨5, 0, 3, ⟨67, 39⟩, ⟨17, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_32_137_0 : entryCheck ⟨692, 559, ⟨8, 0, 28, ⟨137, 79⟩, ⟨41, 19⟩⟩⟩ = true := by
  decide +kernel

theorem block9_checked : block9.all entryCheck = true := by
  simp only [block9, List.all_cons, List.all_nil, checked_C5_27_213_0, checked_C5_28_194_0, checked_C5_29_177_0, checked_C5_31_142_0, checked_C5_31_148_0, checked_C5_32_134_0, checked_C5_32_137_0, Bool.and_true]

#print axioms block9_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C5_33_127_0 : entryCheck ⟨695, 562, ⟨7, 0, 34, ⟨127, 79⟩, ⟨2, 0⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_34_118_0 : entryCheck ⟨698, 564, ⟨6, 0, 46, ⟨59, 39⟩, ⟨163, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_35_109_0 : entryCheck ⟨700, 566, ⟨4, 0, 45, ⟨109, 79⟩, ⟨153, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_36_102_0 : entryCheck ⟨703, 568, ⟨5, 0, 27, ⟨51, 39⟩, ⟨8, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_37_95_0 : entryCheck ⟨705, 570, ⟨5, 0, 31, ⟨19, 15⟩, ⟨25, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_38_86_0 : entryCheck ⟨707, 572, ⟨3, 0, 28, ⟨43, 39⟩, ⟨113, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_39_80_0 : entryCheck ⟨709, 573, ⟨2, 0, 31, ⟨1, 0⟩, ⟨11, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_40_75_0 : entryCheck ⟨710, 574, ⟨3, 0, 27, ⟨15, 15⟩, ⟨101, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_41_69_0 : entryCheck ⟨711, 575, ⟨3, 0, 25, ⟨69, 79⟩, ⟨93, 79⟩⟩⟩ = true := by
  decide +kernel

theorem block10_checked : block10.all entryCheck = true := by
  simp only [block10, List.all_cons, List.all_nil, checked_C5_33_127_0, checked_C5_34_118_0, checked_C5_35_109_0, checked_C5_36_102_0, checked_C5_37_95_0, checked_C5_38_86_0, checked_C5_39_80_0, checked_C5_40_75_0, checked_C5_41_69_0, Bool.and_true]

#print axioms block10_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C5_42_64_0 : entryCheck ⟨713, 577, ⟨1, 0, 25, ⟨4, 4⟩, ⟨11, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_43_61_0 : entryCheck ⟨715, 579, ⟨3, 0, 19, ⟨61, 79⟩, ⟨79, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_44_55_0 : entryCheck ⟨718, 581, ⟨1, 0, 21, ⟨11, 15⟩, ⟨15, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_45_53_0 : entryCheck ⟨722, 582, ⟨2, 0, 15, ⟨53, 79⟩, ⟨67, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_46_48_0 : entryCheck ⟨723, 583, ⟨1, 0, 17, ⟨3, 4⟩, ⟨4, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_47_45_0 : entryCheck ⟨724, 584, ⟨3, 0, 13, ⟨9, 15⟩, ⟨57, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_53_31_0 : entryCheck ⟨736, 592, ⟨1, 0, 8, ⟨31, 79⟩, ⟨19, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_56_25_0 : entryCheck ⟨743, 596, ⟨1, 0, 6, ⟨5, 15⟩, ⟨3, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_57_24_0 : entryCheck ⟨745, 598, ⟨1, 0, 5, ⟨3, 9⟩, ⟨7, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_62_14_0 : entryCheck ⟨662, 603, ⟨1, 0, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C5_62_14_1 : entryCheck ⟨754, 603, ⟨0, 1, 5, ⟨3, 15⟩, ⟨19, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_0_18_43 : entryCheck ⟨761, 610, ⟨0, 43, 2, ⟨61, 79⟩, ⟨31, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_0_18_47 : entryCheck ⟨762, 610, ⟨0, 47, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_0_18_52 : entryCheck ⟨763, 610, ⟨0, 52, 3, ⟨7, 7⟩, ⟨9, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_0_18_57 : entryCheck ⟨764, 610, ⟨0, 57, 3, ⟨15, 15⟩, ⟨77, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_0_18_62 : entryCheck ⟨765, 610, ⟨0, 62, 4, ⟨1, 0⟩, ⟨83, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_0_18_69 : entryCheck ⟨766, 610, ⟨0, 69, 2, ⟨87, 79⟩, ⟨11, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_0_18_84 : entryCheck ⟨767, 610, ⟨0, 84, 3, ⟨51, 39⟩, ⟨13, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_0_18_100 : entryCheck ⟨768, 610, ⟨0, 100, 2, ⟨59, 39⟩, ⟨119, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_0_18_114 : entryCheck ⟨769, 610, ⟨0, 114, 2, ⟨33, 19⟩, ⟨133, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_0_18_122 : entryCheck ⟨770, 610, ⟨0, 122, 4, ⟨7, 3⟩, ⟨143, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_0_18_154 : entryCheck ⟨771, 610, ⟨0, 154, 7, ⟨43, 19⟩, ⟨89, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_17_14_0 : entryCheck ⟨794, 614, ⟨0, 0, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_19_13_0 : entryCheck ⟨798, 615, ⟨1, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_21_12_0 : entryCheck ⟨798, 616, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_23_1_0 : entryCheck ⟨801, 618, ⟨0, 0, 10, ⟨1, 79⟩, ⟨1, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_23_1_9 : entryCheck ⟨800, 618, ⟨0, 9, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_26_239_0 : entryCheck ⟨807, 622, ⟨22, 0, 33, ⟨239, 79⟩, ⟨271, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_27_215_0 : entryCheck ⟨809, 624, ⟨17, 0, 51, ⟨43, 15⟩, ⟨53, 15⟩⟩⟩ = true := by
  decide +kernel

theorem block11_checked : block11.all entryCheck = true := by
  simp only [block11, List.all_cons, List.all_nil, checked_C5_42_64_0, checked_C5_43_61_0, checked_C5_44_55_0, checked_C5_45_53_0, checked_C5_46_48_0, checked_C5_47_45_0, checked_C5_53_31_0, checked_C5_56_25_0, checked_C5_57_24_0, checked_C5_62_14_0, checked_C5_62_14_1, checked_C6_0_18_43, checked_C6_0_18_47, checked_C6_0_18_52, checked_C6_0_18_57, checked_C6_0_18_62, checked_C6_0_18_69, checked_C6_0_18_84, checked_C6_0_18_100, checked_C6_0_18_114, checked_C6_0_18_122, checked_C6_0_18_154, checked_C6_17_14_0, checked_C6_19_13_0, checked_C6_21_12_0, checked_C6_23_1_0, checked_C6_23_1_9, checked_C6_26_239_0, checked_C6_27_215_0, Bool.and_true]

#print axioms block11_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C6_28_195_0 : entryCheck ⟨812, 626, ⟨14, 0, 66, ⟨39, 15⟩, ⟨13, 3⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_31_142_0 : entryCheck ⟨821, 633, ⟨0, 0, 2, ⟨71, 39⟩, ⟨143, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_31_149_0 : entryCheck ⟨821, 634, ⟨7, 0, 26, ⟨149, 79⟩, ⟨87, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_32_137_0 : entryCheck ⟨829, 642, ⟨7, 0, 28, ⟨137, 79⟩, ⟨41, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_33_127_0 : entryCheck ⟨832, 644, ⟨7, 0, 34, ⟨127, 79⟩, ⟨2, 0⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_34_118_0 : entryCheck ⟨834, 646, ⟨7, 0, 45, ⟨59, 39⟩, ⟨81, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_35_111_0 : entryCheck ⟨835, 647, ⟨7, 0, 43, ⟨111, 79⟩, ⟨153, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_36_103_0 : entryCheck ⟨838, 649, ⟨6, 0, 26, ⟨103, 79⟩, ⟨8, 4⟩⟩⟩ = true := by
  decide +kernel

theorem block12_checked : block12.all entryCheck = true := by
  simp only [block12, List.all_cons, List.all_nil, checked_C6_28_195_0, checked_C6_31_142_0, checked_C6_31_149_0, checked_C6_32_137_0, checked_C6_33_127_0, checked_C6_34_118_0, checked_C6_35_111_0, checked_C6_36_103_0, Bool.and_true]

#print axioms block12_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C6_37_93_0 : entryCheck ⟨842, 651, ⟨3, 0, 33, ⟨93, 79⟩, ⟨25, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_38_86_0 : entryCheck ⟨844, 653, ⟨2, 0, 27, ⟨43, 39⟩, ⟨7, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_39_81_0 : entryCheck ⟨846, 654, ⟨2, 0, 29, ⟨81, 79⟩, ⟨109, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_40_77_0 : entryCheck ⟨847, 655, ⟨4, 0, 26, ⟨77, 79⟩, ⟨51, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_41_69_0 : entryCheck ⟨849, 657, ⟨2, 0, 22, ⟨69, 79⟩, ⟨9, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_42_64_0 : entryCheck ⟨852, 659, ⟨2, 0, 22, ⟨4, 4⟩, ⟨17, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_43_60_0 : entryCheck ⟨853, 660, ⟨2, 0, 20, ⟨3, 3⟩, ⟨79, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_44_56_0 : entryCheck ⟨854, 661, ⟨2, 0, 20, ⟨7, 9⟩, ⟨15, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_45_52_0 : entryCheck ⟨856, 662, ⟨1, 0, 16, ⟨13, 19⟩, ⟨67, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_46_49_0 : entryCheck ⟨857, 663, ⟨4, 0, 16, ⟨49, 79⟩, ⟨4, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_47_46_0 : entryCheck ⟨860, 665, ⟨3, 0, 12, ⟨23, 39⟩, ⟨57, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_49_37_0 : entryCheck ⟨862, 667, ⟨0, 0, 2, ⟨37, 79⟩, ⟨19, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_49_39_0 : entryCheck ⟨862, 668, ⟨2, 0, 11, ⟨39, 79⟩, ⟨49, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_50_34_0 : entryCheck ⟨777, 669, ⟨4, 0, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_50_34_1 : entryCheck ⟨863, 669, ⟨0, 1, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_51_36_0 : entryCheck ⟨865, 671, ⟨1, 0, 7, ⟨9, 19⟩, ⟨21, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_52_29_0 : entryCheck ⟨778, 672, ⟨6, 0, 2, ⟨29, 79⟩, ⟨3, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_52_29_1 : entryCheck ⟨866, 672, ⟨0, 1, 2, ⟨3, 7⟩, ⟨31, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_59_19_0 : entryCheck ⟨785, 680, ⟨0, 0, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_59_19_1 : entryCheck ⟨874, 680, ⟨0, 1, 5, ⟨1, 3⟩, ⟨3, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_62_15_0 : entryCheck ⟨794, 683, ⟨1, 0, 2, ⟨3, 15⟩, ⟨1, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C6_62_15_1 : entryCheck ⟨881, 683, ⟨0, 1, 4, ⟨1, 4⟩, ⟨19, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_38 : entryCheck ⟨890, 691, ⟨0, 38, 4, ⟨7, 9⟩, ⟨59, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_42 : entryCheck ⟨890, 691, ⟨4, 42, 4, ⟨3, 3⟩, ⟨63, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_47 : entryCheck ⟨891, 691, ⟨0, 47, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_51 : entryCheck ⟨892, 691, ⟨0, 51, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩⟩ = true := by
  decide +kernel

theorem block13_checked : block13.all entryCheck = true := by
  simp only [block13, List.all_cons, List.all_nil, checked_C6_37_93_0, checked_C6_38_86_0, checked_C6_39_81_0, checked_C6_40_77_0, checked_C6_41_69_0, checked_C6_42_64_0, checked_C6_43_60_0, checked_C6_44_56_0, checked_C6_45_52_0, checked_C6_46_49_0, checked_C6_47_46_0, checked_C6_49_37_0, checked_C6_49_39_0, checked_C6_50_34_0, checked_C6_50_34_1, checked_C6_51_36_0, checked_C6_52_29_0, checked_C6_52_29_1, checked_C6_59_19_0, checked_C6_59_19_1, checked_C6_62_15_0, checked_C6_62_15_1, checked_C7_0_18_38, checked_C7_0_18_42, checked_C7_0_18_47, checked_C7_0_18_51, Bool.and_true]

#print axioms block13_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C7_0_18_58 : entryCheck ⟨893, 691, ⟨0, 58, 3, ⟨19, 19⟩, ⟨39, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_62 : entryCheck ⟨894, 691, ⟨0, 62, 3, ⟨1, 0⟩, ⟨41, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_68 : entryCheck ⟨895, 691, ⟨0, 68, 3, ⟨43, 39⟩, ⟨11, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_75 : entryCheck ⟨896, 691, ⟨0, 75, 2, ⟨93, 79⟩, ⟨47, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_109 : entryCheck ⟨897, 691, ⟨0, 109, 3, ⟨127, 79⟩, ⟨129, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_114 : entryCheck ⟨898, 691, ⟨0, 114, 2, ⟨33, 19⟩, ⟨133, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_123 : entryCheck ⟨899, 691, ⟨1, 123, 2, ⟨141, 79⟩, ⟨71, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_150 : entryCheck ⟨900, 691, ⟨0, 150, 2, ⟨21, 9⟩, ⟨169, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_154 : entryCheck ⟨901, 691, ⟨0, 154, 9, ⟨43, 19⟩, ⟨9, 3⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_164 : entryCheck ⟨902, 691, ⟨0, 164, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_167 : entryCheck ⟨902, 691, ⟨3, 167, 5, ⟨37, 15⟩, ⟨189, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_195 : entryCheck ⟨903, 691, ⟨0, 195, 4, ⟨213, 79⟩, ⟨27, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_199 : entryCheck ⟨903, 691, ⟨4, 199, 3, ⟨217, 79⟩, ⟨219, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_203 : entryCheck ⟨904, 691, ⟨0, 203, 7, ⟨221, 79⟩, ⟨227, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_210 : entryCheck ⟨904, 691, ⟨7, 210, 2, ⟨57, 19⟩, ⟨229, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_213 : entryCheck ⟨905, 691, ⟨0, 213, 4, ⟨231, 79⟩, ⟨117, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_217 : entryCheck ⟨905, 691, ⟨4, 217, 4, ⟨47, 15⟩, ⟨119, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_221 : entryCheck ⟨905, 691, ⟨8, 221, 5, ⟨239, 79⟩, ⟨243, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_0_18_226 : entryCheck ⟨905, 691, ⟨13, 226, 6, ⟨61, 19⟩, ⟨249, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_14_16_0 : entryCheck ⟨934, 693, ⟨1, 0, 2, ⟨1, 4⟩, ⟨17, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_16_15_0 : entryCheck ⟨934, 694, ⟨0, 0, 2, ⟨3, 15⟩, ⟨1, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_17_14_0 : entryCheck ⟨937, 695, ⟨1, 0, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_19_13_0 : entryCheck ⟨937, 696, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_23_1_0 : entryCheck ⟨942, 699, ⟨0, 0, 10, ⟨1, 79⟩, ⟨1, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_23_1_9 : entryCheck ⟨940, 699, ⟨0, 9, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_26_237_0 : entryCheck ⟨950, 703, ⟨18, 0, 36, ⟨237, 79⟩, ⟨17, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_27_214_0 : entryCheck ⟨952, 705, ⟨15, 0, 53, ⟨107, 39⟩, ⟨133, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_28_196_0 : entryCheck ⟨955, 707, ⟨7, 0, 65, ⟨49, 19⟩, ⟨13, 3⟩⟩⟩ = true := by
  decide +kernel

theorem block14_checked : block14.all entryCheck = true := by
  simp only [block14, List.all_cons, List.all_nil, checked_C7_0_18_58, checked_C7_0_18_62, checked_C7_0_18_68, checked_C7_0_18_75, checked_C7_0_18_109, checked_C7_0_18_114, checked_C7_0_18_123, checked_C7_0_18_150, checked_C7_0_18_154, checked_C7_0_18_164, checked_C7_0_18_167, checked_C7_0_18_195, checked_C7_0_18_199, checked_C7_0_18_203, checked_C7_0_18_210, checked_C7_0_18_213, checked_C7_0_18_217, checked_C7_0_18_221, checked_C7_0_18_226, checked_C7_14_16_0, checked_C7_16_15_0, checked_C7_17_14_0, checked_C7_19_13_0, checked_C7_23_1_0, checked_C7_23_1_9, checked_C7_26_237_0, checked_C7_27_214_0, checked_C7_28_196_0, Bool.and_true]

#print axioms block14_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C7_29_178_0 : entryCheck ⟨960, 710, ⟨1, 0, 78, ⟨89, 39⟩, ⟨51, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_31_149_0 : entryCheck ⟨964, 712, ⟨9, 0, 19, ⟨149, 79⟩, ⟨167, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_32_137_0 : entryCheck ⟨972, 720, ⟨7, 0, 27, ⟨137, 79⟩, ⟨163, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_33_126_0 : entryCheck ⟨974, 722, ⟨6, 0, 34, ⟨63, 39⟩, ⟨159, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_34_120_0 : entryCheck ⟨978, 724, ⟨7, 0, 37, ⟨3, 1⟩, ⟨39, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_35_107_0 : entryCheck ⟨980, 726, ⟨2, 0, 3, ⟨107, 79⟩, ⟨109, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_35_112_0 : entryCheck ⟨980, 727, ⟨7, 0, 41, ⟨7, 4⟩, ⟨19, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_36_103_0 : entryCheck ⟨983, 729, ⟨6, 0, 26, ⟨103, 79⟩, ⟨8, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_37_95_0 : entryCheck ⟨985, 731, ⟨4, 0, 31, ⟨19, 15⟩, ⟨25, 15⟩⟩⟩ = true := by
  decide +kernel

theorem block15_checked : block15.all entryCheck = true := by
  simp only [block15, List.all_cons, List.all_nil, checked_C7_29_178_0, checked_C7_31_149_0, checked_C7_32_137_0, checked_C7_33_126_0, checked_C7_34_120_0, checked_C7_35_107_0, checked_C7_35_112_0, checked_C7_36_103_0, checked_C7_37_95_0, Bool.and_true]

#print axioms block15_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C7_38_87_0 : entryCheck ⟨987, 733, ⟨4, 0, 30, ⟨87, 79⟩, ⟨29, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_39_82_0 : entryCheck ⟨989, 734, ⟨3, 0, 31, ⟨41, 39⟩, ⟨7, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_40_1_0 : entryCheck ⟨990, 735, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_40_75_0 : entryCheck ⟨992, 736, ⟨2, 0, 23, ⟨15, 15⟩, ⟨97, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_41_71_0 : entryCheck ⟨993, 737, ⟨4, 0, 22, ⟨71, 79⟩, ⟨23, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_42_64_0 : entryCheck ⟨994, 738, ⟨3, 0, 22, ⟨4, 4⟩, ⟨17, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_45_51_0 : entryCheck ⟨1002, 741, ⟨1, 0, 16, ⟨51, 79⟩, ⟨33, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_46_49_0 : entryCheck ⟨1004, 742, ⟨4, 0, 14, ⟨49, 79⟩, ⟨31, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_47_46_0 : entryCheck ⟨1005, 743, ⟨3, 0, 12, ⟨23, 39⟩, ⟨57, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_48_41_0 : entryCheck ⟨1006, 744, ⟨1, 0, 15, ⟨41, 79⟩, ⟨11, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_51_35_0 : entryCheck ⟨1010, 747, ⟨1, 0, 8, ⟨7, 15⟩, ⟨21, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_53_30_0 : entryCheck ⟨1011, 749, ⟨0, 0, 2, ⟨3, 7⟩, ⟨31, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_53_30_1 : entryCheck ⟨1020, 749, ⟨0, 1, 8, ⟨31, 79⟩, ⟨19, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_55_28_0 : entryCheck ⟨1022, 751, ⟨1, 0, 7, ⟨7, 19⟩, ⟨17, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_56_26_0 : entryCheck ⟨1024, 752, ⟨1, 0, 5, ⟨13, 39⟩, ⟨3, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_58_21_0 : entryCheck ⟨1026, 754, ⟨0, 0, 7, ⟨21, 79⟩, ⟨27, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_60_18_0 : entryCheck ⟨934, 756, ⟨3, 0, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_60_18_1 : entryCheck ⟨1029, 756, ⟨0, 1, 4, ⟨19, 79⟩, ⟨11, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_62_15_0 : entryCheck ⟨937, 758, ⟨2, 0, 2, ⟨3, 15⟩, ⟨1, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_62_15_1 : entryCheck ⟨1031, 758, ⟨0, 1, 4, ⟨1, 4⟩, ⟨19, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_69_6_0 : entryCheck ⟨990, 761, ⟨5, 0, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C7_69_6_1 : entryCheck ⟨1034, 761, ⟨0, 1, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_38 : entryCheck ⟨1035, 762, ⟨0, 38, 4, ⟨7, 9⟩, ⟨59, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_42 : entryCheck ⟨1036, 762, ⟨0, 42, 3, ⟨3, 3⟩, ⟨31, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_47 : entryCheck ⟨1037, 762, ⟨0, 47, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_51 : entryCheck ⟨1038, 762, ⟨0, 51, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_57 : entryCheck ⟨1039, 762, ⟨0, 57, 3, ⟨15, 15⟩, ⟨77, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_63 : entryCheck ⟨1040, 762, ⟨0, 63, 2, ⟨81, 79⟩, ⟨41, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_68 : entryCheck ⟨1041, 762, ⟨0, 68, 3, ⟨43, 39⟩, ⟨11, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_71 : entryCheck ⟨1042, 762, ⟨0, 71, 2, ⟨89, 79⟩, ⟨9, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_85 : entryCheck ⟨1043, 762, ⟨0, 85, 2, ⟨103, 79⟩, ⟨13, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_89 : entryCheck ⟨1044, 762, ⟨0, 89, 2, ⟨107, 79⟩, ⟨27, 19⟩⟩⟩ = true := by
  decide +kernel

theorem block16_checked : block16.all entryCheck = true := by
  simp only [block16, List.all_cons, List.all_nil, checked_C7_38_87_0, checked_C7_39_82_0, checked_C7_40_1_0, checked_C7_40_75_0, checked_C7_41_71_0, checked_C7_42_64_0, checked_C7_45_51_0, checked_C7_46_49_0, checked_C7_47_46_0, checked_C7_48_41_0, checked_C7_51_35_0, checked_C7_53_30_0, checked_C7_53_30_1, checked_C7_55_28_0, checked_C7_56_26_0, checked_C7_58_21_0, checked_C7_60_18_0, checked_C7_60_18_1, checked_C7_62_15_0, checked_C7_62_15_1, checked_C7_69_6_0, checked_C7_69_6_1, checked_C8_0_18_38, checked_C8_0_18_42, checked_C8_0_18_47, checked_C8_0_18_51, checked_C8_0_18_57, checked_C8_0_18_63, checked_C8_0_18_68, checked_C8_0_18_71, checked_C8_0_18_85, checked_C8_0_18_89, Bool.and_true]

#print axioms block16_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C8_0_18_91 : entryCheck ⟨1045, 762, ⟨0, 91, 3, ⟨109, 79⟩, ⟨111, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_95 : entryCheck ⟨1045, 762, ⟨4, 95, 2, ⟨113, 79⟩, ⟨57, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_103 : entryCheck ⟨1046, 762, ⟨0, 103, 2, ⟨121, 79⟩, ⟨61, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_105 : entryCheck ⟨1046, 762, ⟨2, 105, 4, ⟨123, 79⟩, ⟨63, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_110 : entryCheck ⟨1047, 762, ⟨0, 110, 2, ⟨8, 4⟩, ⟨129, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_135 : entryCheck ⟨1048, 762, ⟨0, 135, 3, ⟨153, 79⟩, ⟨31, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_139 : entryCheck ⟨1049, 762, ⟨1, 139, 2, ⟨157, 79⟩, ⟨79, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_141 : entryCheck ⟨1050, 762, ⟨0, 141, 4, ⟨159, 79⟩, ⟨81, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_145 : entryCheck ⟨1051, 762, ⟨0, 145, 2, ⟨163, 79⟩, ⟨41, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_175 : entryCheck ⟨1052, 762, ⟨0, 175, 2, ⟨193, 79⟩, ⟨97, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_0_18_181 : entryCheck ⟨1053, 762, ⟨0, 181, 2, ⟨199, 79⟩, ⟨5, 1⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_14_16_0 : entryCheck ⟨1076, 764, ⟨1, 0, 3, ⟨1, 4⟩, ⟨9, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_16_15_0 : entryCheck ⟨1076, 765, ⟨0, 0, 2, ⟨3, 15⟩, ⟨1, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_23_1_0 : entryCheck ⟨1087, 770, ⟨0, 0, 10, ⟨1, 79⟩, ⟨1, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_23_1_9 : entryCheck ⟨1086, 770, ⟨0, 9, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_26_236_0 : entryCheck ⟨1094, 774, ⟨18, 0, 13, ⟨59, 19⟩, ⟨31, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_28_194_0 : entryCheck ⟨1101, 778, ⟨12, 0, 51, ⟨97, 39⟩, ⟨61, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_31_148_0 : entryCheck ⟨1107, 781, ⟨8, 0, 29, ⟨37, 19⟩, ⟨11, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_32_137_0 : entryCheck ⟨1113, 787, ⟨8, 0, 36, ⟨137, 79⟩, ⟨43, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_33_127_0 : entryCheck ⟨1114, 788, ⟨5, 0, 42, ⟨127, 79⟩, ⟨21, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_34_119_0 : entryCheck ⟨1116, 789, ⟨5, 0, 46, ⟨119, 79⟩, ⟨41, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_36_103_0 : entryCheck ⟨1120, 791, ⟨6, 0, 26, ⟨103, 79⟩, ⟨8, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_37_8_0 : entryCheck ⟨1123, 794, ⟨0, 0, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩⟩ = true := by
  decide +kernel

theorem block17_checked : block17.all entryCheck = true := by
  simp only [block17, List.all_cons, List.all_nil, checked_C8_0_18_91, checked_C8_0_18_95, checked_C8_0_18_103, checked_C8_0_18_105, checked_C8_0_18_110, checked_C8_0_18_135, checked_C8_0_18_139, checked_C8_0_18_141, checked_C8_0_18_145, checked_C8_0_18_175, checked_C8_0_18_181, checked_C8_14_16_0, checked_C8_16_15_0, checked_C8_23_1_0, checked_C8_23_1_9, checked_C8_26_236_0, checked_C8_28_194_0, checked_C8_31_148_0, checked_C8_32_137_0, checked_C8_33_127_0, checked_C8_34_119_0, checked_C8_36_103_0, checked_C8_37_8_0, Bool.and_true]

#print axioms block17_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C8_37_95_0 : entryCheck ⟨1124, 795, ⟨4, 0, 30, ⟨19, 15⟩, ⟨31, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_38_87_0 : entryCheck ⟨1127, 798, ⟨2, 0, 27, ⟨87, 79⟩, ⟨113, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_39_80_0 : entryCheck ⟨1129, 800, ⟨2, 0, 30, ⟨1, 0⟩, ⟨109, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_40_76_0 : entryCheck ⟨1131, 802, ⟨3, 0, 26, ⟨19, 19⟩, ⟨101, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_41_70_0 : entryCheck ⟨1132, 803, ⟨3, 0, 20, ⟨7, 7⟩, ⟨89, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_42_64_0 : entryCheck ⟨1134, 805, ⟨2, 0, 21, ⟨4, 4⟩, ⟨21, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_43_62_0 : entryCheck ⟨1135, 806, ⟨3, 0, 18, ⟨31, 39⟩, ⟨79, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_44_57_0 : entryCheck ⟨1137, 807, ⟨5, 0, 19, ⟨57, 79⟩, ⟨15, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_45_52_0 : entryCheck ⟨1140, 808, ⟨1, 0, 16, ⟨13, 19⟩, ⟨67, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_46_48_0 : entryCheck ⟨1142, 809, ⟨1, 0, 16, ⟨3, 4⟩, ⟨63, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_47_46_0 : entryCheck ⟨1143, 810, ⟨1, 0, 13, ⟨23, 39⟩, ⟨29, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_49_40_0 : entryCheck ⟨1145, 812, ⟨2, 0, 3, ⟨1, 1⟩, ⟨21, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_50_37_0 : entryCheck ⟨1059, 814, ⟨0, 0, 2, ⟨37, 79⟩, ⟨19, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_50_37_1 : entryCheck ⟨1148, 814, ⟨0, 1, 11, ⟨19, 39⟩, ⟨3, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_52_33_0 : entryCheck ⟨1151, 816, ⟨0, 0, 8, ⟨33, 79⟩, ⟨1, 1⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_58_21_0 : entryCheck ⟨1065, 822, ⟨1, 0, 2, ⟨21, 79⟩, ⟨11, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_58_21_1 : entryCheck ⟨1160, 822, ⟨0, 1, 6, ⟨11, 39⟩, ⟨27, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_60_18_0 : entryCheck ⟨1076, 824, ⟨3, 0, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_60_18_1 : entryCheck ⟨1162, 824, ⟨0, 1, 4, ⟨19, 79⟩, ⟨11, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C8_67_9_0 : entryCheck ⟨1123, 832, ⟨1, 0, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_38 : entryCheck ⟨1170, 833, ⟨0, 38, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_42 : entryCheck ⟨1171, 833, ⟨0, 42, 3, ⟨3, 3⟩, ⟨31, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_47 : entryCheck ⟨1172, 833, ⟨0, 47, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_52 : entryCheck ⟨1173, 833, ⟨0, 52, 3, ⟨7, 7⟩, ⟨9, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_57 : entryCheck ⟨1174, 833, ⟨0, 57, 3, ⟨15, 15⟩, ⟨77, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_62 : entryCheck ⟨1175, 833, ⟨0, 62, 4, ⟨1, 0⟩, ⟨83, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_71 : entryCheck ⟨1176, 833, ⟨1, 71, 2, ⟨89, 79⟩, ⟨9, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_85 : entryCheck ⟨1177, 833, ⟨0, 85, 2, ⟨103, 79⟩, ⟨13, 9⟩⟩⟩ = true := by
  decide +kernel

theorem block18_checked : block18.all entryCheck = true := by
  simp only [block18, List.all_cons, List.all_nil, checked_C8_37_95_0, checked_C8_38_87_0, checked_C8_39_80_0, checked_C8_40_76_0, checked_C8_41_70_0, checked_C8_42_64_0, checked_C8_43_62_0, checked_C8_44_57_0, checked_C8_45_52_0, checked_C8_46_48_0, checked_C8_47_46_0, checked_C8_49_40_0, checked_C8_50_37_0, checked_C8_50_37_1, checked_C8_52_33_0, checked_C8_58_21_0, checked_C8_58_21_1, checked_C8_60_18_0, checked_C8_60_18_1, checked_C8_67_9_0, checked_C9_0_18_38, checked_C9_0_18_42, checked_C9_0_18_47, checked_C9_0_18_52, checked_C9_0_18_57, checked_C9_0_18_62, checked_C9_0_18_71, checked_C9_0_18_85, Bool.and_true]

#print axioms block18_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C9_0_18_91 : entryCheck ⟨1178, 833, ⟨0, 91, 2, ⟨109, 79⟩, ⟨11, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_96 : entryCheck ⟨1179, 833, ⟨0, 96, 2, ⟨57, 39⟩, ⟨23, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_105 : entryCheck ⟨1180, 833, ⟨0, 105, 3, ⟨123, 79⟩, ⟨25, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_113 : entryCheck ⟨1181, 833, ⟨0, 113, 4, ⟨131, 79⟩, ⟨67, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_127 : entryCheck ⟨1182, 833, ⟨0, 127, 2, ⟨29, 15⟩, ⟨73, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_130 : entryCheck ⟨1183, 833, ⟨0, 130, 4, ⟨37, 19⟩, ⟨151, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_134 : entryCheck ⟨1183, 833, ⟨4, 134, 3, ⟨19, 9⟩, ⟨77, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_164 : entryCheck ⟨1184, 833, ⟨0, 164, 5, ⟨91, 39⟩, ⟨93, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_169 : entryCheck ⟨1184, 833, ⟨5, 169, 6, ⟨187, 79⟩, ⟨12, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_175 : entryCheck ⟨1184, 833, ⟨11, 175, 6, ⟨193, 79⟩, ⟨99, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_181 : entryCheck ⟨1184, 833, ⟨17, 181, 2, ⟨199, 79⟩, ⟨5, 1⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_195 : entryCheck ⟨1185, 833, ⟨0, 195, 12, ⟨213, 79⟩, ⟨14, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_219 : entryCheck ⟨1186, 833, ⟨0, 219, 4, ⟨237, 79⟩, ⟨3, 0⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_223 : entryCheck ⟨1186, 833, ⟨4, 223, 3, ⟨241, 79⟩, ⟨243, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_226 : entryCheck ⟨1186, 833, ⟨7, 226, 2, ⟨61, 19⟩, ⟨49, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_228 : entryCheck ⟨1186, 833, ⟨9, 228, 25, ⟨123, 39⟩, ⟨27, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_0_18_253 : entryCheck ⟨1186, 833, ⟨34, 253, 3, ⟨271, 79⟩, ⟨273, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_23_1_0 : entryCheck ⟨1220, 842, ⟨0, 0, 10, ⟨1, 79⟩, ⟨1, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_23_1_9 : entryCheck ⟨1219, 842, ⟨0, 9, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_28_193_0 : entryCheck ⟨1233, 847, ⟨12, 0, 16, ⟨193, 79⟩, ⟨13, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_29_177_0 : entryCheck ⟨1237, 849, ⟨11, 0, 28, ⟨177, 79⟩, ⟨51, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_29_213_0 : entryCheck ⟨1238, 850, ⟨7, 0, 34, ⟨213, 79⟩, ⟨123, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_30_163_0 : entryCheck ⟨1240, 851, ⟨9, 0, 38, ⟨163, 79⟩, ⟨5, 1⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_32_139_0 : entryCheck ⟨1250, 859, ⟨9, 0, 8, ⟨139, 79⟩, ⟨73, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_33_127_0 : entryCheck ⟨1252, 861, ⟨6, 0, 34, ⟨127, 79⟩, ⟨2, 0⟩⟩⟩ = true := by
  decide +kernel

theorem block19_checked : block19.all entryCheck = true := by
  simp only [block19, List.all_cons, List.all_nil, checked_C9_0_18_91, checked_C9_0_18_96, checked_C9_0_18_105, checked_C9_0_18_113, checked_C9_0_18_127, checked_C9_0_18_130, checked_C9_0_18_134, checked_C9_0_18_164, checked_C9_0_18_169, checked_C9_0_18_175, checked_C9_0_18_181, checked_C9_0_18_195, checked_C9_0_18_219, checked_C9_0_18_223, checked_C9_0_18_226, checked_C9_0_18_228, checked_C9_0_18_253, checked_C9_23_1_0, checked_C9_23_1_9, checked_C9_28_193_0, checked_C9_29_177_0, checked_C9_29_213_0, checked_C9_30_163_0, checked_C9_32_139_0, checked_C9_33_127_0, Bool.and_true]

#print axioms block19_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C9_34_119_0 : entryCheck ⟨1254, 863, ⟨6, 0, 45, ⟨119, 79⟩, ⟨163, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_35_107_0 : entryCheck ⟨1255, 864, ⟨2, 0, 3, ⟨107, 79⟩, ⟨109, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_35_111_0 : entryCheck ⟨1255, 865, ⟨6, 0, 43, ⟨111, 79⟩, ⟨153, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_36_100_0 : entryCheck ⟨1257, 867, ⟨3, 0, 28, ⟨5, 3⟩, ⟨127, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_37_93_0 : entryCheck ⟨1258, 868, ⟨3, 0, 32, ⟨93, 79⟩, ⟨31, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_38_86_0 : entryCheck ⟨1260, 869, ⟨1, 0, 28, ⟨43, 39⟩, ⟨113, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_39_83_0 : entryCheck ⟨1262, 870, ⟨4, 0, 28, ⟨83, 79⟩, ⟨11, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_41_69_0 : entryCheck ⟨1266, 872, ⟨2, 0, 21, ⟨69, 79⟩, ⟨89, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_42_64_0 : entryCheck ⟨1268, 874, ⟨2, 0, 21, ⟨4, 4⟩, ⟨21, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_43_59_0 : entryCheck ⟨1269, 875, ⟨1, 0, 2, ⟨59, 79⟩, ⟨3, 3⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_43_62_0 : entryCheck ⟨1269, 876, ⟨4, 0, 18, ⟨31, 39⟩, ⟨79, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_44_57_0 : entryCheck ⟨1271, 877, ⟨3, 0, 19, ⟨57, 79⟩, ⟨15, 15⟩⟩⟩ = true := by
  decide +kernel

theorem block20_checked : block20.all entryCheck = true := by
  simp only [block20, List.all_cons, List.all_nil, checked_C9_34_119_0, checked_C9_35_107_0, checked_C9_35_111_0, checked_C9_36_100_0, checked_C9_37_93_0, checked_C9_38_86_0, checked_C9_39_83_0, checked_C9_41_69_0, checked_C9_42_64_0, checked_C9_43_59_0, checked_C9_43_62_0, checked_C9_44_57_0, Bool.and_true]

#print axioms block20_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C9_45_53_0 : entryCheck ⟨1273, 878, ⟨2, 0, 15, ⟨53, 79⟩, ⟨67, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_46_49_0 : entryCheck ⟨1275, 879, ⟨1, 0, 15, ⟨49, 79⟩, ⟨63, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_50_37_0 : entryCheck ⟨1278, 883, ⟨0, 0, 2, ⟨37, 79⟩, ⟨19, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_50_37_1 : entryCheck ⟨1280, 883, ⟨0, 1, 11, ⟨19, 39⟩, ⟨3, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_56_26_0 : entryCheck ⟨1286, 889, ⟨1, 0, 5, ⟨13, 39⟩, ⟨3, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C9_57_24_0 : entryCheck ⟨1287, 890, ⟨1, 0, 5, ⟨3, 9⟩, ⟨7, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_38 : entryCheck ⟨1306, 902, ⟨0, 38, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_43 : entryCheck ⟨1307, 902, ⟨0, 43, 2, ⟨61, 79⟩, ⟨31, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_47 : entryCheck ⟨1308, 902, ⟨0, 47, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_51 : entryCheck ⟨1309, 902, ⟨0, 51, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_57 : entryCheck ⟨1310, 902, ⟨0, 57, 2, ⟨15, 15⟩, ⟨19, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_59 : entryCheck ⟨1311, 902, ⟨0, 59, 2, ⟨77, 79⟩, ⟨39, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_62 : entryCheck ⟨1312, 902, ⟨0, 62, 5, ⟨1, 0⟩, ⟨21, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_68 : entryCheck ⟨1313, 902, ⟨0, 68, 3, ⟨43, 39⟩, ⟨11, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_75 : entryCheck ⟨1314, 902, ⟨0, 75, 3, ⟨93, 79⟩, ⟨19, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_85 : entryCheck ⟨1316, 902, ⟨0, 85, 2, ⟨103, 79⟩, ⟨13, 9⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_87 : entryCheck ⟨1316, 902, ⟨2, 87, 2, ⟨21, 15⟩, ⟨53, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_89 : entryCheck ⟨1316, 902, ⟨4, 89, 2, ⟨107, 79⟩, ⟨27, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_103 : entryCheck ⟨1317, 902, ⟨0, 103, 2, ⟨121, 79⟩, ⟨61, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_105 : entryCheck ⟨1317, 902, ⟨2, 105, 2, ⟨123, 79⟩, ⟨31, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_118 : entryCheck ⟨1319, 902, ⟨0, 118, 2, ⟨17, 9⟩, ⟨137, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_122 : entryCheck ⟨1320, 902, ⟨0, 122, 5, ⟨7, 3⟩, ⟨9, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_127 : entryCheck ⟨1320, 902, ⟨5, 127, 3, ⟨29, 15⟩, ⟨147, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_130 : entryCheck ⟨1320, 902, ⟨8, 130, 3, ⟨37, 19⟩, ⟨15, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_138 : entryCheck ⟨1321, 902, ⟨0, 138, 3, ⟨39, 19⟩, ⟨79, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_141 : entryCheck ⟨1321, 902, ⟨3, 141, 2, ⟨159, 79⟩, ⟨2, 0⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_143 : entryCheck ⟨1321, 902, ⟨5, 143, 2, ⟨161, 79⟩, ⟨81, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_152 : entryCheck ⟨1322, 902, ⟨0, 152, 2, ⟨17, 7⟩, ⟨171, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_154 : entryCheck ⟨1322, 902, ⟨2, 154, 5, ⟨43, 19⟩, ⟨11, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_159 : entryCheck ⟨1322, 902, ⟨7, 159, 4, ⟨177, 79⟩, ⟨9, 3⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_164 : entryCheck ⟨1323, 902, ⟨0, 164, 2, ⟨91, 39⟩, ⟨183, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_188 : entryCheck ⟨1324, 902, ⟨0, 188, 7, ⟨103, 39⟩, ⟨53, 19⟩⟩⟩ = true := by
  decide +kernel

theorem block21_checked : block21.all entryCheck = true := by
  simp only [block21, List.all_cons, List.all_nil, checked_C9_45_53_0, checked_C9_46_49_0, checked_C9_50_37_0, checked_C9_50_37_1, checked_C9_56_26_0, checked_C9_57_24_0, checked_C10_0_18_38, checked_C10_0_18_43, checked_C10_0_18_47, checked_C10_0_18_51, checked_C10_0_18_57, checked_C10_0_18_59, checked_C10_0_18_62, checked_C10_0_18_68, checked_C10_0_18_75, checked_C10_0_18_85, checked_C10_0_18_87, checked_C10_0_18_89, checked_C10_0_18_103, checked_C10_0_18_105, checked_C10_0_18_118, checked_C10_0_18_122, checked_C10_0_18_127, checked_C10_0_18_130, checked_C10_0_18_138, checked_C10_0_18_141, checked_C10_0_18_143, checked_C10_0_18_152, checked_C10_0_18_154, checked_C10_0_18_159, checked_C10_0_18_164, checked_C10_0_18_188, Bool.and_true]

#print axioms block21_checked

end DiagonalRamsey.JointLocal

namespace DiagonalRamsey.JointLocal

theorem checked_C10_0_18_195 : entryCheck ⟨1324, 902, ⟨7, 195, 15, ⟨213, 79⟩, ⟨227, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_219 : entryCheck ⟨1325, 902, ⟨0, 219, 2, ⟨237, 79⟩, ⟨119, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_221 : entryCheck ⟨1325, 902, ⟨2, 221, 2, ⟨239, 79⟩, ⟨3, 0⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_223 : entryCheck ⟨1325, 902, ⟨4, 223, 3, ⟨241, 79⟩, ⟨243, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_226 : entryCheck ⟨1325, 902, ⟨7, 226, 2, ⟨61, 19⟩, ⟨49, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_228 : entryCheck ⟨1325, 902, ⟨9, 228, 25, ⟨123, 39⟩, ⟨27, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_253 : entryCheck ⟨1325, 902, ⟨34, 253, 2, ⟨271, 79⟩, ⟨17, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_0_18_286 : entryCheck ⟨1326, 902, ⟨0, 286, 2, ⟨19, 4⟩, ⟨61, 15⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_29_178_0 : entryCheck ⟨1373, 913, ⟨2, 0, 23, ⟨89, 39⟩, ⟨5, 1⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_32_137_0 : entryCheck ⟨1386, 920, ⟨7, 0, 10, ⟨137, 79⟩, ⟨73, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_42_64_0 : entryCheck ⟨1406, 928, ⟨2, 0, 21, ⟨4, 4⟩, ⟨21, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_43_60_0 : entryCheck ⟨1408, 929, ⟨4, 0, 20, ⟨3, 3⟩, ⟨79, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_44_57_0 : entryCheck ⟨1410, 930, ⟨3, 0, 18, ⟨57, 79⟩, ⟨37, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_45_53_0 : entryCheck ⟨1413, 931, ⟨4, 0, 15, ⟨53, 79⟩, ⟨67, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_46_48_0 : entryCheck ⟨1414, 932, ⟨2, 0, 17, ⟨3, 4⟩, ⟨4, 4⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_49_37_0 : entryCheck ⟨1417, 933, ⟨0, 0, 2, ⟨37, 79⟩, ⟨19, 39⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_49_41_0 : entryCheck ⟨1418, 934, ⟨1, 0, 10, ⟨41, 79⟩, ⟨5, 7⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_54_30_0 : entryCheck ⟨1428, 938, ⟨1, 0, 7, ⟨3, 7⟩, ⟨9, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_56_26_0 : entryCheck ⟨1432, 940, ⟨1, 0, 4, ⟨13, 39⟩, ⟨29, 79⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_57_24_0 : entryCheck ⟨1433, 941, ⟨1, 0, 5, ⟨3, 9⟩, ⟨7, 19⟩⟩⟩ = true := by
  decide +kernel

theorem checked_C10_59_22_0 : entryCheck ⟨1443, 943, ⟨2, 0, 3, ⟨11, 39⟩, ⟨3, 9⟩⟩⟩ = true := by
  decide +kernel

theorem block22_checked : block22.all entryCheck = true := by
  simp only [block22, List.all_cons, List.all_nil, checked_C10_0_18_195, checked_C10_0_18_219, checked_C10_0_18_221, checked_C10_0_18_223, checked_C10_0_18_226, checked_C10_0_18_228, checked_C10_0_18_253, checked_C10_0_18_286, checked_C10_29_178_0, checked_C10_32_137_0, checked_C10_42_64_0, checked_C10_43_60_0, checked_C10_44_57_0, checked_C10_45_53_0, checked_C10_46_48_0, checked_C10_49_37_0, checked_C10_49_41_0, checked_C10_54_30_0, checked_C10_56_26_0, checked_C10_57_24_0, checked_C10_59_22_0, Bool.and_true]

#print axioms block22_checked

end DiagonalRamsey.JointLocal
