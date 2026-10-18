import S7_ParameterChoice.Source.Joint.Foundations.ArithmeticData
import S7_ParameterChoice.Source.Joint.Leaves.LeafIndex

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel reductions; Lake parallelizes these batches.
set_option Elab.async false

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run868_checked : Entry.check ⟨752, 758, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨159, 79⟩, ⟨33, 15⟩⟩, (FQ.progression (159 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run869_checked : Entry.check ⟨753, 759, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run870_checked : Entry.check ⟨754, 760, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 4⟩, ⟨9, 39⟩⟩, [⟨1, 4⟩, ⟨17, 79⟩, ⟨9, 39⟩]⟩ = true := by decide +kernel
theorem run871_checked : Entry.check ⟨754, 761, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run872_checked : Entry.check ⟨755, 762, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run873_checked : Entry.check ⟨756, 763, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run874_checked : Entry.check ⟨757, 764, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run875_checked : Entry.check ⟨758, 765, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run876_checked : Entry.check ⟨759, 766, ⟨1, 399999999⟩, ⟨0, 0, 28, ⟨11, 3⟩, ⟨247, 79⟩⟩, (FQ.progression (11 / 4) (1 / 80) 28)⟩ = true := by decide +kernel
theorem run877_checked : Entry.check ⟨760, 767, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run878_checked : Entry.check ⟨760, 768, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run879_checked : Entry.check ⟨804, 769, ⟨1, 399999999⟩, ⟨0, 36, 25, ⟨55, 15⟩, ⟨299, 79⟩⟩, (FQ.progression (55 / 16) (1 / 80) 25)⟩ = true := by decide +kernel
theorem run880_checked : Entry.check ⟨807, 770, ⟨1, 399999999⟩, ⟨0, 39, 16, ⟨16, 4⟩, ⟨271, 79⟩⟩, (FQ.progression (16 / 5) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run881_checked : Entry.check ⟨809, 771, ⟨1, 399999999⟩, ⟨0, 43, 25, ⟨241, 79⟩, ⟨53, 15⟩⟩, (FQ.progression (241 / 80) (1 / 80) 25)⟩ = true := by decide +kernel
theorem run882_checked : Entry.check ⟨810, 771, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨4, 0⟩, ⟨167, 39⟩⟩, (FQ.progression (4 / 1) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run883_checked : Entry.check ⟨810, 772, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨167, 39⟩, ⟨337, 79⟩⟩, (FQ.progression (167 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run884_checked : Entry.check ⟨812, 773, ⟨1, 399999999⟩, ⟨0, 44, 36, ⟨45, 15⟩, ⟨13, 3⟩⟩, (FQ.progression (45 / 16) (1 / 80) 36)⟩ = true := by decide +kernel
theorem run885_checked : Entry.check ⟨816, 774, ⟨1, 399999999⟩, ⟨0, 31, 39, ⟨27, 9⟩, ⟨127, 39⟩⟩, (FQ.progression (27 / 10) (1 / 80) 39)⟩ = true := by decide +kernel
theorem run886_checked : Entry.check ⟨818, 775, ⟨1, 399999999⟩, ⟨0, 16, 7, ⟨167, 79⟩, ⟨173, 79⟩⟩, (FQ.progression (167 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run887_checked : Entry.check ⟨818, 775, ⟨1, 399999999⟩, ⟨0, 23, 9, ⟨87, 39⟩, ⟨91, 39⟩⟩, (FQ.progression (87 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run888_checked : Entry.check ⟨818, 775, ⟨1, 399999999⟩, ⟨0, 33, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run889_checked : Entry.check ⟨818, 775, ⟨1, 399999999⟩, ⟨0, 41, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run890_checked : Entry.check ⟨818, 775, ⟨1, 399999999⟩, ⟨0, 51, 4, ⟨101, 39⟩, ⟨41, 15⟩⟩, (FQ.progression (101 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run891_checked : Entry.check ⟨818, 776, ⟨1, 399999999⟩, ⟨0, 54, 47, ⟨41, 15⟩, ⟨251, 79⟩⟩, (FQ.progression (41 / 16) (1 / 80) 47)⟩ = true := by decide +kernel
theorem entries30_checked : entries30.all Entry.check = true := by
  simp only [entries30, List.all_cons, List.all_nil, run868_checked, run869_checked, run870_checked, run871_checked, run872_checked, run873_checked, run874_checked, run875_checked, run876_checked, run877_checked, run878_checked, run879_checked, run880_checked, run881_checked, run882_checked, run883_checked, run884_checked, run885_checked, run886_checked, run887_checked, run888_checked, run889_checked, run890_checked, run891_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

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

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run921_checked : Entry.check ⟨845, 799, ⟨1, 399999999⟩, ⟨0, 0, 22, ⟨333, 79⟩, ⟨177, 39⟩⟩, (FQ.progression (333 / 80) (1 / 80) 22)⟩ = true := by decide +kernel
theorem run922_checked : Entry.check ⟨845, 800, ⟨1, 399999999⟩, ⟨0, 21, 4, ⟨177, 39⟩, ⟨357, 79⟩⟩, (FQ.progression (177 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run923_checked : Entry.check ⟨846, 801, ⟨1, 399999999⟩, ⟨0, 12, 7, ⟨91, 79⟩, ⟨97, 79⟩⟩, (FQ.progression (91 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run924_checked : Entry.check ⟨846, 802, ⟨1, 399999999⟩, ⟨0, 18, 12, ⟨97, 79⟩, ⟨27, 19⟩⟩, (FQ.progression (97 / 80) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run925_checked : Entry.check ⟨846, 803, ⟨1, 399999999⟩, ⟨0, 29, 2, ⟨27, 19⟩, ⟨109, 79⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run926_checked : Entry.check ⟨847, 804, ⟨1, 399999999⟩, ⟨0, 11, 5, ⟨21, 19⟩, ⟨11, 9⟩⟩, (FQ.progression (21 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run927_checked : Entry.check ⟨847, 805, ⟨1, 399999999⟩, ⟨0, 15, 7, ⟨11, 9⟩, ⟨47, 39⟩⟩, (FQ.progression (11 / 10) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run928_checked : Entry.check ⟨847, 806, ⟨1, 399999999⟩, ⟨0, 21, 9, ⟨47, 39⟩, ⟨51, 39⟩⟩, (FQ.progression (47 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run929_checked : Entry.check ⟨849, 807, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨79, 79⟩, ⟨41, 39⟩⟩, (FQ.progression (79 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run930_checked : Entry.check ⟨849, 808, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨41, 39⟩, ⟨17, 15⟩⟩, (FQ.progression (41 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run931_checked : Entry.check ⟨849, 809, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨17, 15⟩, ⟨43, 39⟩⟩, [⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run932_checked : Entry.check ⟨849, 810, ⟨1, 399999999⟩, ⟨0, 19, 5, ⟨43, 39⟩, ⟨9, 7⟩⟩, (FQ.progression (43 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run933_checked : Entry.check ⟨852, 811, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨15, 15⟩, ⟨77, 79⟩⟩, [⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩]⟩ = true := by decide +kernel
theorem run934_checked : Entry.check ⟨852, 812, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨77, 79⟩, ⟨1, 0⟩⟩, (FQ.progression (77 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run935_checked : Entry.check ⟨852, 813, ⟨1, 399999999⟩, ⟨0, 18, 5, ⟨1, 0⟩, ⟨21, 19⟩⟩, (FQ.progression (1 / 1) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run936_checked : Entry.check ⟨852, 814, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨21, 19⟩, ⟨17, 15⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run937_checked : Entry.check ⟨853, 815, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run938_checked : Entry.check ⟨853, 816, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run939_checked : Entry.check ⟨853, 817, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨9, 9⟩, ⟨15, 15⟩⟩, (FQ.progression (9 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run940_checked : Entry.check ⟨853, 818, ⟨1, 399999999⟩, ⟨0, 17, 4, ⟨15, 15⟩, ⟨39, 39⟩⟩, (FQ.progression (15 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run941_checked : Entry.check ⟨853, 819, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run942_checked : Entry.check ⟨854, 820, ⟨1, 399999999⟩, ⟨0, 10, 6, ⟨4, 4⟩, ⟨69, 79⟩⟩, (FQ.progression (4 / 5) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run943_checked : Entry.check ⟨854, 821, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨69, 79⟩, ⟨71, 79⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run944_checked : Entry.check ⟨854, 822, ⟨1, 399999999⟩, ⟨0, 17, 3, ⟨71, 79⟩, ⟨73, 79⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩, ⟨73, 79⟩]⟩ = true := by decide +kernel
theorem run945_checked : Entry.check ⟨854, 823, ⟨1, 399999999⟩, ⟨0, 19, 3, ⟨73, 79⟩, ⟨15, 15⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩, ⟨15, 15⟩]⟩ = true := by decide +kernel
theorem run946_checked : Entry.check ⟨855, 824, ⟨1, 399999999⟩, ⟨0, 0, 14, ⟨133, 39⟩, ⟨279, 79⟩⟩, (FQ.progression (133 / 40) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run947_checked : Entry.check ⟨856, 825, ⟨1, 399999999⟩, ⟨0, 8, 3, ⟨59, 79⟩, ⟨61, 79⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run948_checked : Entry.check ⟨856, 826, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, (FQ.progression (61 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run949_checked : Entry.check ⟨856, 827, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨4, 4⟩, ⟨67, 79⟩⟩, (FQ.progression (4 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run950_checked : Entry.check ⟨857, 828, ⟨1, 399999999⟩, ⟨0, 9, 4, ⟨27, 39⟩, ⟨57, 79⟩⟩, (FQ.progression (27 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run951_checked : Entry.check ⟨857, 829, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨57, 79⟩, ⟨59, 79⟩⟩, [⟨57, 79⟩, ⟨29, 39⟩, ⟨59, 79⟩]⟩ = true := by decide +kernel
theorem run952_checked : Entry.check ⟨857, 830, ⟨1, 399999999⟩, ⟨0, 14, 5, ⟨59, 79⟩, ⟨63, 79⟩⟩, (FQ.progression (59 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem entries32_checked : entries32.all Entry.check = true := by
  simp only [entries32, List.all_cons, List.all_nil, run921_checked, run922_checked, run923_checked, run924_checked, run925_checked, run926_checked, run927_checked, run928_checked, run929_checked, run930_checked, run931_checked, run932_checked, run933_checked, run934_checked, run935_checked, run936_checked, run937_checked, run938_checked, run939_checked, run940_checked, run941_checked, run942_checked, run943_checked, run944_checked, run945_checked, run946_checked, run947_checked, run948_checked, run949_checked, run950_checked, run951_checked, run952_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run953_checked : Entry.check ⟨857, 831, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨63, 79⟩, ⟨4, 4⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run954_checked : Entry.check ⟨858, 832, ⟨1, 399999999⟩, ⟨0, 0, 41, ⟨103, 39⟩, ⟨123, 39⟩⟩, (FQ.progression (103 / 40) (1 / 80) 41)⟩ = true := by decide +kernel
theorem run955_checked : Entry.check ⟨858, 833, ⟨1, 399999999⟩, ⟨0, 40, 22, ⟨123, 39⟩, ⟨267, 79⟩⟩, (FQ.progression (123 / 40) (1 / 80) 22)⟩ = true := by decide +kernel
theorem run956_checked : Entry.check ⟨860, 834, ⟨1, 399999999⟩, ⟨0, 9, 4, ⟨13, 19⟩, ⟨11, 15⟩⟩, (FQ.progression (13 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run957_checked : Entry.check ⟨860, 835, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run958_checked : Entry.check ⟨861, 836, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨47, 79⟩, ⟨5, 7⟩⟩, [⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run959_checked : Entry.check ⟨861, 837, ⟨1, 399999999⟩, ⟨0, 7, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, (FQ.progression (5 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run960_checked : Entry.check ⟨861, 838, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨27, 39⟩, ⟨11, 15⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run961_checked : Entry.check ⟨862, 839, ⟨1, 399999999⟩, ⟨0, 8, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run962_checked : Entry.check ⟨864, 840, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run963_checked : Entry.check ⟨864, 841, ⟨1, 399999999⟩, ⟨0, 6, 4, ⟨11, 19⟩, ⟨47, 79⟩⟩, (FQ.progression (11 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run964_checked : Entry.check ⟨865, 842, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨19, 39⟩, ⟨21, 39⟩⟩, (FQ.progression (19 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run965_checked : Entry.check ⟨867, 843, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run966_checked : Entry.check ⟨868, 844, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run967_checked : Entry.check ⟨869, 845, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run968_checked : Entry.check ⟨869, 846, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run969_checked : Entry.check ⟨870, 847, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run970_checked : Entry.check ⟨871, 848, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run971_checked : Entry.check ⟨872, 849, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨27, 79⟩, ⟨29, 79⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩]⟩ = true := by decide +kernel
theorem run972_checked : Entry.check ⟨873, 850, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run973_checked : Entry.check ⟨873, 851, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run974_checked : Entry.check ⟨874, 852, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨21, 79⟩, ⟨3, 9⟩⟩, (FQ.progression (21 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run975_checked : Entry.check ⟨875, 853, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run976_checked : Entry.check ⟨876, 854, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 7⟩, ⟨111, 79⟩⟩, [⟨11, 7⟩, ⟨111, 79⟩]⟩ = true := by decide +kernel
theorem run977_checked : Entry.check ⟨876, 855, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨111, 79⟩, ⟨113, 79⟩⟩, [⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run978_checked : Entry.check ⟨877, 855, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨117, 79⟩, ⟨121, 79⟩⟩, (FQ.progression (117 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run979_checked : Entry.check ⟨878, 855, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨31, 19⟩, ⟨131, 79⟩⟩, (FQ.progression (31 / 20) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run980_checked : Entry.check ⟨879, 856, ⟨1, 399999999⟩, ⟨0, 0, 20, ⟨37, 19⟩, ⟨167, 79⟩⟩, (FQ.progression (37 / 20) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run981_checked : Entry.check ⟨879, 857, ⟨1, 399999999⟩, ⟨0, 19, 3, ⟨167, 79⟩, ⟨169, 79⟩⟩, [⟨167, 79⟩, ⟨21, 9⟩, ⟨169, 79⟩]⟩ = true := by decide +kernel
theorem run982_checked : Entry.check ⟨880, 858, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run983_checked : Entry.check ⟨880, 859, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run984_checked : Entry.check ⟨881, 860, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 4⟩, ⟨9, 39⟩⟩, [⟨1, 4⟩, ⟨17, 79⟩, ⟨9, 39⟩]⟩ = true := by decide +kernel
theorem entries33_checked : entries33.all Entry.check = true := by
  simp only [entries33, List.all_cons, List.all_nil, run953_checked, run954_checked, run955_checked, run956_checked, run957_checked, run958_checked, run959_checked, run960_checked, run961_checked, run962_checked, run963_checked, run964_checked, run965_checked, run966_checked, run967_checked, run968_checked, run969_checked, run970_checked, run971_checked, run972_checked, run973_checked, run974_checked, run975_checked, run976_checked, run977_checked, run978_checked, run979_checked, run980_checked, run981_checked, run982_checked, run983_checked, run984_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run985_checked : Entry.check ⟨881, 861, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run986_checked : Entry.check ⟨882, 862, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run987_checked : Entry.check ⟨883, 863, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨7, 39⟩, ⟨1, 4⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run988_checked : Entry.check ⟨884, 864, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run989_checked : Entry.check ⟨885, 865, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run990_checked : Entry.check ⟨886, 866, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run991_checked : Entry.check ⟨887, 867, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run992_checked : Entry.check ⟨887, 868, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run993_checked : Entry.check ⟨888, 869, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run994_checked : Entry.check ⟨889, 870, ⟨1, 399999999⟩, ⟨0, 0, 26, ⟨43, 19⟩, ⟨197, 79⟩⟩, (FQ.progression (43 / 20) (1 / 80) 26)⟩ = true := by decide +kernel
theorem run995_checked : Entry.check ⟨889, 871, ⟨1, 399999999⟩, ⟨0, 25, 18, ⟨197, 79⟩, ⟨107, 39⟩⟩, (FQ.progression (197 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run996_checked : Entry.check ⟨945, 872, ⟨1, 399999999⟩, ⟨0, 0, 19, ⟨27, 7⟩, ⟨18, 4⟩⟩, (FQ.progression (27 / 8) (1 / 80) 19)⟩ = true := by decide +kernel
theorem run997_checked : Entry.check ⟨948, 873, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨29, 7⟩, ⟨61, 15⟩⟩, (FQ.progression (29 / 8) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run998_checked : Entry.check ⟨950, 874, ⟨1, 399999999⟩, ⟨0, 37, 17, ⟨16, 4⟩, ⟨17, 4⟩⟩, (FQ.progression (16 / 5) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run999_checked : Entry.check ⟨952, 875, ⟨1, 399999999⟩, ⟨0, 42, 26, ⟨241, 79⟩, ⟨133, 39⟩⟩, (FQ.progression (241 / 80) (1 / 80) 26)⟩ = true := by decide +kernel
theorem run1000_checked : Entry.check ⟨955, 876, ⟨1, 399999999⟩, ⟨0, 36, 36, ⟨45, 15⟩, ⟨13, 3⟩⟩, (FQ.progression (45 / 16) (1 / 80) 36)⟩ = true := by decide +kernel
theorem run1001_checked : Entry.check ⟨956, 876, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨149, 39⟩, ⟨39, 9⟩⟩, (FQ.progression (149 / 40) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1002_checked : Entry.check ⟨956, 877, ⟨1, 399999999⟩, ⟨0, 14, 19, ⟨39, 9⟩, ⟨33, 7⟩⟩, (FQ.progression (39 / 10) (1 / 80) 19)⟩ = true := by decide +kernel
theorem run1003_checked : Entry.check ⟨956, 878, ⟨1, 399999999⟩, ⟨0, 32, 8, ⟨33, 7⟩, ⟨337, 79⟩⟩, (FQ.progression (33 / 8) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1004_checked : Entry.check ⟨960, 879, ⟨1, 399999999⟩, ⟨0, 40, 39, ⟨217, 79⟩, ⟨51, 15⟩⟩, (FQ.progression (217 / 80) (1 / 80) 39)⟩ = true := by decide +kernel
theorem run1005_checked : Entry.check ⟨962, 880, ⟨1, 399999999⟩, ⟨0, 15, 2, ⟨167, 79⟩, ⟨21, 9⟩⟩, [⟨167, 79⟩, ⟨21, 9⟩]⟩ = true := by decide +kernel
theorem run1006_checked : Entry.check ⟨963, 880, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨87, 39⟩, ⟨91, 39⟩⟩, (FQ.progression (87 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1007_checked : Entry.check ⟨963, 880, ⟨1, 399999999⟩, ⟨0, 10, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1008_checked : Entry.check ⟨963, 880, ⟨1, 399999999⟩, ⟨0, 18, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1009_checked : Entry.check ⟨963, 880, ⟨1, 399999999⟩, ⟨0, 28, 4, ⟨101, 39⟩, ⟨41, 15⟩⟩, (FQ.progression (101 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem entries34_checked : entries34.all Entry.check = true := by
  simp only [entries34, List.all_cons, List.all_nil, run985_checked, run986_checked, run987_checked, run988_checked, run989_checked, run990_checked, run991_checked, run992_checked, run993_checked, run994_checked, run995_checked, run996_checked, run997_checked, run998_checked, run999_checked, run1000_checked, run1001_checked, run1002_checked, run1003_checked, run1004_checked, run1005_checked, run1006_checked, run1007_checked, run1008_checked, run1009_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
