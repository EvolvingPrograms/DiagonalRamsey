import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run892_checked : Entry.check ⟨821, 777, ⟨1, 399999999⟩, ⟨0, 19, 14, ⟨161, 79⟩, ⟨87, 39⟩⟩, (FQ.progression (161 / 80) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run893_checked : Entry.check ⟨822, 777, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run894_checked : Entry.check ⟨823, 778, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run895_checked : Entry.check ⟨824, 779, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run896_checked : Entry.check ⟨825, 779, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run897_checked : Entry.check ⟨826, 779, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run898_checked : Entry.check ⟨827, 780, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨47, 15⟩, ⟨237, 79⟩⟩, [⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩]⟩ = true := by decide +kernel
theorem run899_checked : Entry.check ⟨829, 781, ⟨1, 399999999⟩, ⟨0, 20, 15, ⟨15, 7⟩, ⟨41, 19⟩⟩, (FQ.progression (15 / 8) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run900_checked : Entry.check ⟨830, 781, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨33, 15⟩, ⟨169, 79⟩⟩, (FQ.progression (33 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run901_checked : Entry.check ⟨831, 782, ⟨1, 399999999⟩, ⟨0, 0, 23, ⟨71, 15⟩, ⟨377, 79⟩⟩, (FQ.progression (71 / 16) (1 / 80) 23)⟩ = true := by decide +kernel
theorem run902_checked : Entry.check ⟨832, 783, ⟨1, 399999999⟩, ⟨0, 21, 12, ⟨141, 79⟩, ⟨19, 9⟩⟩, (FQ.progression (141 / 80) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run903_checked : Entry.check ⟨832, 784, ⟨1, 399999999⟩, ⟨0, 32, 9, ⟨19, 9⟩, ⟨2, 0⟩⟩, (FQ.progression (19 / 10) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run904_checked : Entry.check ⟨833, 784, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨161, 79⟩, ⟨83, 39⟩⟩, (FQ.progression (161 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run905_checked : Entry.check ⟨834, 785, ⟨1, 399999999⟩, ⟨0, 31, 21, ⟨71, 39⟩, ⟨81, 39⟩⟩, (FQ.progression (71 / 40) (1 / 80) 21)⟩ = true := by decide +kernel
theorem run906_checked : Entry.check ⟨835, 786, ⟨1, 399999999⟩, ⟨0, 18, 17, ⟨61, 39⟩, ⟨69, 39⟩⟩, (FQ.progression (61 / 40) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run907_checked : Entry.check ⟨835, 787, ⟨1, 399999999⟩, ⟨0, 34, 16, ⟨69, 39⟩, ⟨153, 79⟩⟩, (FQ.progression (69 / 40) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run908_checked : Entry.check ⟨836, 787, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨31, 15⟩, ⟨79, 39⟩⟩, (FQ.progression (31 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run909_checked : Entry.check ⟨837, 788, ⟨1, 399999999⟩, ⟨0, 0, 37, ⟨267, 79⟩, ⟨303, 79⟩⟩, (FQ.progression (267 / 80) (1 / 80) 37)⟩ = true := by decide +kernel
theorem run910_checked : Entry.check ⟨837, 789, ⟨1, 399999999⟩, ⟨0, 36, 3, ⟨303, 79⟩, ⟨61, 15⟩⟩, [⟨303, 79⟩, ⟨19, 4⟩, ⟨61, 15⟩]⟩ = true := by decide +kernel
theorem run911_checked : Entry.check ⟨838, 790, ⟨1, 399999999⟩, ⟨0, 18, 14, ⟨23, 15⟩, ⟨8, 4⟩⟩, (FQ.progression (23 / 16) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run912_checked : Entry.check ⟨839, 790, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨13, 7⟩, ⟨67, 39⟩⟩, (FQ.progression (13 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run913_checked : Entry.check ⟨839, 791, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨67, 39⟩, ⟨137, 79⟩⟩, (FQ.progression (67 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run914_checked : Entry.check ⟨840, 792, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨291, 79⟩, ⟨147, 39⟩⟩, (FQ.progression (291 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run915_checked : Entry.check ⟨840, 793, ⟨1, 399999999⟩, ⟨0, 3, 27, ⟨147, 39⟩, ⟨4, 0⟩⟩, (FQ.progression (147 / 40) (1 / 80) 27)⟩ = true := by decide +kernel
theorem run916_checked : Entry.check ⟨842, 794, ⟨1, 399999999⟩, ⟨0, 13, 8, ⟨103, 79⟩, ⟨11, 7⟩⟩, (FQ.progression (103 / 80) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run917_checked : Entry.check ⟨842, 795, ⟨1, 399999999⟩, ⟨0, 20, 16, ⟨11, 7⟩, ⟨25, 15⟩⟩, (FQ.progression (11 / 8) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run918_checked : Entry.check ⟨843, 796, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨127, 79⟩, ⟨129, 79⟩⟩, [⟨127, 79⟩, ⟨8, 4⟩, ⟨129, 79⟩]⟩ = true := by decide +kernel
theorem run919_checked : Entry.check ⟨843, 797, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨129, 79⟩, ⟨133, 79⟩⟩, (FQ.progression (129 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run920_checked : Entry.check ⟨844, 798, ⟨1, 399999999⟩, ⟨0, 16, 13, ⟨5, 3⟩, ⟨7, 4⟩⟩, (FQ.progression (5 / 4) (1 / 80) 13)⟩ = true := by decide +kernel
theorem entries31_checked : entries31.all Entry.check = true := by
  simp only [entries31, List.all_cons, List.all_nil, run892_checked, run893_checked, run894_checked, run895_checked, run896_checked, run897_checked, run898_checked, run899_checked, run900_checked, run901_checked, run902_checked, run903_checked, run904_checked, run905_checked, run906_checked, run907_checked, run908_checked, run909_checked, run910_checked, run911_checked, run912_checked, run913_checked, run914_checked, run915_checked, run916_checked, run917_checked, run918_checked, run919_checked, run920_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
