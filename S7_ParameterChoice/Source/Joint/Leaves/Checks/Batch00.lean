import S7_ParameterChoice.Source.Joint.Foundations.ArithmeticData
import S7_ParameterChoice.Source.Joint.Leaves.LeafIndex

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel reductions; Lake parallelizes these batches.
set_option Elab.async false

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1_checked : Entry.check ⟨0, 1, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 15⟩, ⟨1, 7⟩⟩, (FQ.progression (1 / 16) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run2_checked : Entry.check ⟨0, 2, ⟨1, 399999999⟩, ⟨0, 5, 7, ⟨1, 7⟩, ⟨1, 4⟩⟩, (FQ.progression (1 / 8) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run3_checked : Entry.check ⟨1, 3, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨7, 39⟩, ⟨1, 4⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run4_checked : Entry.check ⟨2, 4, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem run5_checked : Entry.check ⟨3, 5, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run6_checked : Entry.check ⟨4, 6, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 79⟩, ⟨1, 19⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run7_checked : Entry.check ⟨5, 7, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, (FQ.progression (1 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run8_checked : Entry.check ⟨6, 8, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem entries0_checked : entries0.all Entry.check = true := by
  simp only [entries0, List.all_cons, List.all_nil, run1_checked, run2_checked, run3_checked, run4_checked, run5_checked, run6_checked, run7_checked, run8_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run9_checked : Entry.check ⟨7, 9, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
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
theorem run25_checked : Entry.check ⟨21, 19, ⟨1, 399999999⟩, ⟨0, 0, 13, ⟨47, 9⟩, ⟨97, 19⟩⟩, (FQ.progression (47 / 10) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run26_checked : Entry.check ⟨21, 20, ⟨1, 399999999⟩, ⟨0, 12, 13, ⟨97, 19⟩, ⟨5, 0⟩⟩, (FQ.progression (97 / 20) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run27_checked : Entry.check ⟨22, 21, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run28_checked : Entry.check ⟨23, 22, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run29_checked : Entry.check ⟨24, 23, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨21, 4⟩, ⟨341, 79⟩⟩, (FQ.progression (21 / 5) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run30_checked : Entry.check ⟨24, 24, ⟨1, 399999999⟩, ⟨0, 5, 37, ⟨341, 79⟩, ⟨377, 79⟩⟩, (FQ.progression (341 / 80) (1 / 80) 37)⟩ = true := by decide +kernel
theorem run31_checked : Entry.check ⟨25, 25, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run32_checked : Entry.check ⟨26, 26, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨7, 79⟩, ⟨9, 79⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run33_checked : Entry.check ⟨27, 27, ⟨1, 399999999⟩, ⟨0, 0, 34, ⟨19, 4⟩, ⟨337, 79⟩⟩, (FQ.progression (19 / 5) (1 / 80) 34)⟩ = true := by decide +kernel
theorem run34_checked : Entry.check ⟨28, 28, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 79⟩, ⟨1, 19⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run35_checked : Entry.check ⟨29, 28, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 15⟩, ⟨7, 79⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run36_checked : Entry.check ⟨30, 29, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run37_checked : Entry.check ⟨31, 30, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨29, 7⟩, ⟨19, 4⟩⟩, (FQ.progression (29 / 8) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run38_checked : Entry.check ⟨31, 31, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨19, 4⟩, ⟨61, 15⟩⟩, [⟨19, 4⟩, ⟨61, 15⟩]⟩ = true := by decide +kernel
theorem run39_checked : Entry.check ⟨32, 32, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, (FQ.progression (1 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run40_checked : Entry.check ⟨33, 33, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 9⟩, ⟨1, 7⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem entries1_checked : entries1.all Entry.check = true := by
  simp only [entries1, List.all_cons, List.all_nil, run9_checked, run10_checked, run11_checked, run12_checked, run13_checked, run14_checked, run15_checked, run16_checked, run17_checked, run18_checked, run19_checked, run20_checked, run21_checked, run22_checked, run23_checked, run24_checked, run25_checked, run26_checked, run27_checked, run28_checked, run29_checked, run30_checked, run31_checked, run32_checked, run33_checked, run34_checked, run35_checked, run36_checked, run37_checked, run38_checked, run39_checked, run40_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run41_checked : Entry.check ⟨34, 34, ⟨1, 399999999⟩, ⟨0, 0, 36, ⟨16, 4⟩, ⟨291, 79⟩⟩, (FQ.progression (16 / 5) (1 / 80) 36)⟩ = true := by decide +kernel
theorem run42_checked : Entry.check ⟨35, 35, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, (FQ.progression (1 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run43_checked : Entry.check ⟨36, 35, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run44_checked : Entry.check ⟨36, 36, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run45_checked : Entry.check ⟨37, 36, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run46_checked : Entry.check ⟨38, 37, ⟨1, 399999999⟩, ⟨0, 0, 20, ⟨237, 79⟩, ⟨16, 4⟩⟩, (FQ.progression (237 / 80) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run47_checked : Entry.check ⟨39, 38, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, (FQ.progression (1 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run48_checked : Entry.check ⟨40, 39, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 79⟩, ⟨11, 79⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run49_checked : Entry.check ⟨41, 40, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨11, 3⟩, ⟨113, 39⟩⟩, (FQ.progression (11 / 4) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run50_checked : Entry.check ⟨41, 41, ⟨1, 399999999⟩, ⟨0, 6, 13, ⟨113, 39⟩, ⟨119, 39⟩⟩, (FQ.progression (113 / 40) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run51_checked : Entry.check ⟨42, 42, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨1, 79⟩, ⟨7, 79⟩⟩, (FQ.progression (1 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run52_checked : Entry.check ⟨42, 43, ⟨1, 399999999⟩, ⟨0, 6, 3, ⟨7, 79⟩, ⟨9, 79⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run53_checked : Entry.check ⟨43, 43, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run54_checked : Entry.check ⟨44, 44, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨103, 39⟩, ⟨221, 79⟩⟩, (FQ.progression (103 / 40) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run55_checked : Entry.check ⟨45, 44, ⟨1, 399999999⟩, ⟨0, 0, 29, ⟨59, 19⟩, ⟨33, 9⟩⟩, (FQ.progression (59 / 20) (1 / 80) 29)⟩ = true := by decide +kernel
theorem run56_checked : Entry.check ⟨46, 45, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, (FQ.progression (1 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run57_checked : Entry.check ⟨47, 46, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run58_checked : Entry.check ⟨48, 47, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨193, 79⟩, ⟨207, 79⟩⟩, (FQ.progression (193 / 80) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run59_checked : Entry.check ⟨49, 47, ⟨1, 399999999⟩, ⟨0, 0, 39, ⟨53, 19⟩, ⟨25, 7⟩⟩, (FQ.progression (53 / 20) (1 / 80) 39)⟩ = true := by decide +kernel
theorem run60_checked : Entry.check ⟨49, 48, ⟨1, 399999999⟩, ⟨0, 38, 8, ⟨25, 7⟩, ⟨257, 79⟩⟩, (FQ.progression (25 / 8) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run61_checked : Entry.check ⟨50, 49, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run62_checked : Entry.check ⟨51, 50, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨7, 79⟩, ⟨11, 79⟩⟩, (FQ.progression (7 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run63_checked : Entry.check ⟨52, 51, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run64_checked : Entry.check ⟨53, 52, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨35, 15⟩, ⟨177, 79⟩⟩, [⟨35, 15⟩, ⟨11, 4⟩, ⟨177, 79⟩]⟩ = true := by decide +kernel
theorem run65_checked : Entry.check ⟨53, 53, ⟨1, 399999999⟩, ⟨0, 2, 18, ⟨177, 79⟩, ⟨97, 39⟩⟩, (FQ.progression (177 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run66_checked : Entry.check ⟨54, 53, ⟨1, 399999999⟩, ⟨0, 0, 38, ⟨39, 15⟩, ⟨29, 9⟩⟩, (FQ.progression (39 / 16) (1 / 80) 38)⟩ = true := by decide +kernel
theorem entries2_checked : entries2.all Entry.check = true := by
  simp only [entries2, List.all_cons, List.all_nil, run41_checked, run42_checked, run43_checked, run44_checked, run45_checked, run46_checked, run47_checked, run48_checked, run49_checked, run50_checked, run51_checked, run52_checked, run53_checked, run54_checked, run55_checked, run56_checked, run57_checked, run58_checked, run59_checked, run60_checked, run61_checked, run62_checked, run63_checked, run64_checked, run65_checked, run66_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run67_checked : Entry.check ⟨54, 54, ⟨1, 399999999⟩, ⟨0, 37, 22, ⟨29, 9⟩, ⟨253, 79⟩⟩, (FQ.progression (29 / 10) (1 / 80) 22)⟩ = true := by decide +kernel
theorem run68_checked : Entry.check ⟨55, 55, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨1, 79⟩, ⟨7, 79⟩⟩, (FQ.progression (1 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run69_checked : Entry.check ⟨56, 56, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run70_checked : Entry.check ⟨57, 57, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨41, 19⟩, ⟨17, 7⟩⟩, (FQ.progression (41 / 20) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run71_checked : Entry.check ⟨57, 58, ⟨1, 399999999⟩, ⟨0, 6, 9, ⟨17, 7⟩, ⟨89, 39⟩⟩, (FQ.progression (17 / 8) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run72_checked : Entry.check ⟨58, 58, ⟨1, 399999999⟩, ⟨0, 0, 35, ⟨9, 3⟩, ⟨107, 39⟩⟩, (FQ.progression (9 / 4) (1 / 80) 35)⟩ = true := by decide +kernel
theorem run73_checked : Entry.check ⟨58, 59, ⟨1, 399999999⟩, ⟨0, 34, 34, ⟨107, 39⟩, ⟨247, 79⟩⟩, (FQ.progression (107 / 40) (1 / 80) 34)⟩ = true := by decide +kernel
theorem run74_checked : Entry.check ⟨59, 60, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run75_checked : Entry.check ⟨60, 61, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 9⟩, ⟨13, 79⟩⟩, (FQ.progression (1 / 10) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run76_checked : Entry.check ⟨61, 62, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run77_checked : Entry.check ⟨62, 63, ⟨1, 399999999⟩, ⟨0, 0, 10, ⟨153, 79⟩, ⟨81, 39⟩⟩, (FQ.progression (153 / 80) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run78_checked : Entry.check ⟨62, 64, ⟨1, 399999999⟩, ⟨0, 9, 8, ⟨81, 39⟩, ⟨169, 79⟩⟩, (FQ.progression (81 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run79_checked : Entry.check ⟨63, 64, ⟨1, 399999999⟩, ⟨0, 0, 30, ⟨17, 7⟩, ⟨199, 79⟩⟩, (FQ.progression (17 / 8) (1 / 80) 30)⟩ = true := by decide +kernel
theorem run80_checked : Entry.check ⟨63, 65, ⟨1, 399999999⟩, ⟨0, 29, 9, ⟨199, 79⟩, ⟨207, 79⟩⟩, (FQ.progression (199 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run81_checked : Entry.check ⟨63, 66, ⟨1, 399999999⟩, ⟨0, 37, 35, ⟨207, 79⟩, ⟨241, 79⟩⟩, (FQ.progression (207 / 80) (1 / 80) 35)⟩ = true := by decide +kernel
theorem run82_checked : Entry.check ⟨64, 67, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨1, 79⟩, ⟨7, 79⟩⟩, (FQ.progression (1 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run83_checked : Entry.check ⟨65, 68, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run84_checked : Entry.check ⟨66, 69, ⟨1, 399999999⟩, ⟨0, 0, 13, ⟨143, 79⟩, ⟨31, 15⟩⟩, (FQ.progression (143 / 80) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run85_checked : Entry.check ⟨66, 70, ⟨1, 399999999⟩, ⟨0, 12, 21, ⟨31, 15⟩, ⟨35, 15⟩⟩, (FQ.progression (31 / 16) (1 / 80) 21)⟩ = true := by decide +kernel
theorem run86_checked : Entry.check ⟨66, 71, ⟨1, 399999999⟩, ⟨0, 32, 33, ⟨35, 15⟩, ⟨207, 79⟩⟩, (FQ.progression (35 / 16) (1 / 80) 33)⟩ = true := by decide +kernel
theorem entries3_checked : entries3.all Entry.check = true := by
  simp only [entries3, List.all_cons, List.all_nil, run67_checked, run68_checked, run69_checked, run70_checked, run71_checked, run72_checked, run73_checked, run74_checked, run75_checked, run76_checked, run77_checked, run78_checked, run79_checked, run80_checked, run81_checked, run82_checked, run83_checked, run84_checked, run85_checked, run86_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run87_checked : Entry.check ⟨66, 72, ⟨1, 399999999⟩, ⟨0, 64, 32, ⟨207, 79⟩, ⟨119, 39⟩⟩, (FQ.progression (207 / 80) (1 / 80) 32)⟩ = true := by decide +kernel
theorem run88_checked : Entry.check ⟨67, 73, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨1, 79⟩, ⟨7, 79⟩⟩, (FQ.progression (1 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run89_checked : Entry.check ⟨67, 74, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run90_checked : Entry.check ⟨68, 75, ⟨1, 399999999⟩, ⟨0, 0, 13, ⟨67, 39⟩, ⟨73, 39⟩⟩, (FQ.progression (67 / 40) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run91_checked : Entry.check ⟨69, 76, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨37, 19⟩, ⟨149, 79⟩⟩, [⟨37, 19⟩, ⟨149, 79⟩]⟩ = true := by decide +kernel
theorem run92_checked : Entry.check ⟨69, 77, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨149, 79⟩, ⟨15, 7⟩⟩, [⟨149, 79⟩, ⟨15, 7⟩]⟩ = true := by decide +kernel
theorem run93_checked : Entry.check ⟨69, 76, ⟨1, 399999999⟩, ⟨0, 2, 6, ⟨15, 7⟩, ⟨31, 15⟩⟩, (FQ.progression (15 / 8) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run94_checked : Entry.check ⟨69, 78, ⟨1, 399999999⟩, ⟨0, 7, 20, ⟨31, 15⟩, ⟨87, 39⟩⟩, (FQ.progression (31 / 16) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run95_checked : Entry.check ⟨70, 78, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run96_checked : Entry.check ⟨71, 78, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run97_checked : Entry.check ⟨72, 78, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run98_checked : Entry.check ⟨73, 78, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run99_checked : Entry.check ⟨74, 79, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run100_checked : Entry.check ⟨75, 80, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨1, 79⟩, ⟨7, 79⟩⟩, (FQ.progression (1 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run101_checked : Entry.check ⟨76, 81, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨63, 39⟩, ⟨127, 79⟩⟩, [⟨63, 39⟩, ⟨127, 79⟩]⟩ = true := by decide +kernel
theorem run102_checked : Entry.check ⟨76, 82, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨127, 79⟩, ⟨129, 79⟩⟩, [⟨127, 79⟩, ⟨8, 4⟩, ⟨129, 79⟩]⟩ = true := by decide +kernel
theorem run103_checked : Entry.check ⟨76, 83, ⟨1, 399999999⟩, ⟨0, 3, 20, ⟨129, 79⟩, ⟨37, 19⟩⟩, (FQ.progression (129 / 80) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run104_checked : Entry.check ⟨76, 84, ⟨1, 399999999⟩, ⟨0, 22, 21, ⟨37, 19⟩, ⟨21, 9⟩⟩, (FQ.progression (37 / 20) (1 / 80) 21)⟩ = true := by decide +kernel
theorem run105_checked : Entry.check ⟨77, 85, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨1, 79⟩, ⟨7, 79⟩⟩, (FQ.progression (1 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run106_checked : Entry.check ⟨77, 86, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run107_checked : Entry.check ⟨78, 87, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨117, 79⟩, ⟨31, 19⟩⟩, (FQ.progression (117 / 80) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run108_checked : Entry.check ⟨78, 88, ⟨1, 399999999⟩, ⟨0, 7, 20, ⟨31, 19⟩, ⟨143, 79⟩⟩, (FQ.progression (31 / 20) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run109_checked : Entry.check ⟨78, 89, ⟨1, 399999999⟩, ⟨0, 26, 22, ⟨143, 79⟩, ⟨41, 19⟩⟩, (FQ.progression (143 / 80) (1 / 80) 22)⟩ = true := by decide +kernel
theorem run110_checked : Entry.check ⟨79, 90, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 79⟩, ⟨1, 19⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run111_checked : Entry.check ⟨80, 91, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run112_checked : Entry.check ⟨81, 92, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨109, 79⟩, ⟨11, 7⟩⟩, [⟨109, 79⟩, ⟨11, 7⟩]⟩ = true := by decide +kernel
theorem run113_checked : Entry.check ⟨81, 93, ⟨1, 399999999⟩, ⟨0, 1, 10, ⟨11, 7⟩, ⟨119, 79⟩⟩, (FQ.progression (11 / 8) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run114_checked : Entry.check ⟨81, 94, ⟨1, 399999999⟩, ⟨0, 10, 16, ⟨119, 79⟩, ⟨67, 39⟩⟩, (FQ.progression (119 / 80) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run115_checked : Entry.check ⟨81, 95, ⟨1, 399999999⟩, ⟨0, 25, 2, ⟨67, 39⟩, ⟨27, 15⟩⟩, [⟨67, 39⟩, ⟨27, 15⟩]⟩ = true := by decide +kernel
theorem run116_checked : Entry.check ⟨81, 94, ⟨1, 399999999⟩, ⟨0, 26, 3, ⟨27, 15⟩, ⟨137, 79⟩⟩, [⟨27, 15⟩, ⟨17, 9⟩, ⟨137, 79⟩]⟩ = true := by decide +kernel
theorem run117_checked : Entry.check ⟨81, 95, ⟨1, 399999999⟩, ⟨0, 28, 2, ⟨137, 79⟩, ⟨69, 39⟩⟩, [⟨137, 79⟩, ⟨69, 39⟩]⟩ = true := by decide +kernel
theorem run118_checked : Entry.check ⟨81, 96, ⟨1, 399999999⟩, ⟨0, 29, 14, ⟨69, 39⟩, ⟨151, 79⟩⟩, (FQ.progression (69 / 40) (1 / 80) 14)⟩ = true := by decide +kernel
theorem entries4_checked : entries4.all Entry.check = true := by
  simp only [entries4, List.all_cons, List.all_nil, run87_checked, run88_checked, run89_checked, run90_checked, run91_checked, run92_checked, run93_checked, run94_checked, run95_checked, run96_checked, run97_checked, run98_checked, run99_checked, run100_checked, run101_checked, run102_checked, run103_checked, run104_checked, run105_checked, run106_checked, run107_checked, run108_checked, run109_checked, run110_checked, run111_checked, run112_checked, run113_checked, run114_checked, run115_checked, run116_checked, run117_checked, run118_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
