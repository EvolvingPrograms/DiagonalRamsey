import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run9_checked : Entry.check ⟨7, 9, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run10_checked : Entry.check ⟨8, 10, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 39⟩, ⟨1, 19⟩⟩, [⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run11_checked : Entry.check ⟨9, 11, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 39⟩, ⟨3, 79⟩⟩, [⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run12_checked : Entry.check ⟨10, 11, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 19⟩, ⟨7, 79⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run13_checked : Entry.check ⟨11, 12, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem run14_checked : Entry.check ⟨12, 12, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 79⟩, ⟨1, 15⟩⟩, [⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run15_checked : Entry.check ⟨13, 13, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem run16_checked : Entry.check ⟨14, 13, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 79⟩, ⟨1, 19⟩⟩, [⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run17_checked : Entry.check ⟨15, 13, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 15⟩, ⟨7, 79⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run18_checked : Entry.check ⟨15, 14, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run19_checked : Entry.check ⟨16, 15, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run20_checked : Entry.check ⟨17, 15, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 19⟩, ⟨1, 15⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run21_checked : Entry.check ⟨18, 16, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run22_checked : Entry.check ⟨19, 17, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run23_checked : Entry.check ⟨20, 17, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 15⟩, ⟨7, 79⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run24_checked : Entry.check ⟨20, 18, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run25_checked : Entry.check ⟨21, 19, ⟨1, 399999999⟩, ⟨0, 0, 13, ⟨47, 9⟩, ⟨97, 19⟩⟩, [⟨47, 9⟩, ⟨377, 79⟩, ⟨189, 39⟩, ⟨379, 79⟩, ⟨19, 3⟩, ⟨381, 79⟩, ⟨191, 39⟩, ⟨383, 79⟩, ⟨24, 4⟩, ⟨77, 15⟩, ⟨193, 39⟩, ⟨387, 79⟩, ⟨97, 19⟩]⟩ = true := by decide +kernel
theorem run26_checked : Entry.check ⟨21, 20, ⟨1, 399999999⟩, ⟨0, 12, 13, ⟨97, 19⟩, ⟨5, 0⟩⟩, [⟨97, 19⟩, ⟨389, 79⟩, ⟨39, 7⟩, ⟨391, 79⟩, ⟨49, 9⟩, ⟨393, 79⟩, ⟨197, 39⟩, ⟨79, 15⟩, ⟨99, 19⟩, ⟨397, 79⟩, ⟨199, 39⟩, ⟨399, 79⟩, ⟨5, 0⟩]⟩ = true := by decide +kernel
theorem run27_checked : Entry.check ⟨22, 21, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run28_checked : Entry.check ⟨23, 22, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run29_checked : Entry.check ⟨24, 23, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨21, 4⟩, ⟨341, 79⟩⟩, [⟨21, 4⟩, ⟨337, 79⟩, ⟨169, 39⟩, ⟨339, 79⟩, ⟨17, 3⟩, ⟨341, 79⟩]⟩ = true := by decide +kernel
theorem run30_checked : Entry.check ⟨24, 24, ⟨1, 399999999⟩, ⟨0, 5, 37, ⟨341, 79⟩, ⟨377, 79⟩⟩, [⟨341, 79⟩, ⟨171, 39⟩, ⟨343, 79⟩, ⟨43, 9⟩, ⟨69, 15⟩, ⟨173, 39⟩, ⟨347, 79⟩, ⟨87, 19⟩, ⟨349, 79⟩, ⟨35, 7⟩, ⟨351, 79⟩, ⟨22, 4⟩, ⟨353, 79⟩, ⟨177, 39⟩, ⟨71, 15⟩, ⟨89, 19⟩, ⟨357, 79⟩, ⟨179, 39⟩, ⟨359, 79⟩, ⟨9, 1⟩, ⟨361, 79⟩, ⟨181, 39⟩, ⟨363, 79⟩, ⟨91, 19⟩, ⟨73, 15⟩, ⟨183, 39⟩, ⟨367, 79⟩, ⟨23, 4⟩, ⟨369, 79⟩, ⟨37, 7⟩, ⟨371, 79⟩, ⟨93, 19⟩, ⟨373, 79⟩, ⟨187, 39⟩, ⟨75, 15⟩, ⟨47, 9⟩, ⟨377, 79⟩]⟩ = true := by decide +kernel
theorem run31_checked : Entry.check ⟨25, 25, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run32_checked : Entry.check ⟨26, 26, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨7, 79⟩, ⟨9, 79⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run33_checked : Entry.check ⟨27, 27, ⟨1, 399999999⟩, ⟨0, 0, 34, ⟨19, 4⟩, ⟨337, 79⟩⟩, [⟨19, 4⟩, ⟨61, 15⟩, ⟨153, 39⟩, ⟨307, 79⟩, ⟨77, 19⟩, ⟨309, 79⟩, ⟨31, 7⟩, ⟨311, 79⟩, ⟨39, 9⟩, ⟨313, 79⟩, ⟨157, 39⟩, ⟨63, 15⟩, ⟨79, 19⟩, ⟨317, 79⟩, ⟨159, 39⟩, ⟨319, 79⟩, ⟨4, 0⟩, ⟨321, 79⟩, ⟨161, 39⟩, ⟨323, 79⟩, ⟨81, 19⟩, ⟨65, 15⟩, ⟨163, 39⟩, ⟨327, 79⟩, ⟨41, 9⟩, ⟨329, 79⟩, ⟨33, 7⟩, ⟨331, 79⟩, ⟨83, 19⟩, ⟨333, 79⟩, ⟨167, 39⟩, ⟨67, 15⟩, ⟨21, 4⟩, ⟨337, 79⟩]⟩ = true := by decide +kernel
theorem run34_checked : Entry.check ⟨28, 28, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 79⟩, ⟨1, 19⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run35_checked : Entry.check ⟨29, 28, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 15⟩, ⟨7, 79⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run36_checked : Entry.check ⟨30, 29, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run37_checked : Entry.check ⟨31, 30, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨29, 7⟩, ⟨19, 4⟩⟩, [⟨29, 7⟩, ⟨291, 79⟩, ⟨73, 19⟩, ⟨293, 79⟩, ⟨147, 39⟩, ⟨59, 15⟩, ⟨37, 9⟩, ⟨297, 79⟩, ⟨149, 39⟩, ⟨299, 79⟩, ⟨15, 3⟩, ⟨301, 79⟩, ⟨151, 39⟩, ⟨303, 79⟩, ⟨19, 4⟩]⟩ = true := by decide +kernel
theorem run38_checked : Entry.check ⟨31, 31, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨19, 4⟩, ⟨61, 15⟩⟩, [⟨19, 4⟩, ⟨61, 15⟩]⟩ = true := by decide +kernel
theorem run39_checked : Entry.check ⟨32, 32, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run40_checked : Entry.check ⟨33, 33, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 9⟩, ⟨1, 7⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem entries1_checked : entries1.all Entry.check = true := by
  simp only [entries1, List.all_cons, List.all_nil, run9_checked, run10_checked, run11_checked, run12_checked, run13_checked, run14_checked, run15_checked, run16_checked, run17_checked, run18_checked, run19_checked, run20_checked, run21_checked, run22_checked, run23_checked, run24_checked, run25_checked, run26_checked, run27_checked, run28_checked, run29_checked, run30_checked, run31_checked, run32_checked, run33_checked, run34_checked, run35_checked, run36_checked, run37_checked, run38_checked, run39_checked, run40_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
