import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

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

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run119_checked : Entry.check ⟨81, 97, ⟨1, 399999999⟩, ⟨0, 42, 3, ⟨151, 79⟩, ⟨153, 79⟩⟩, [⟨151, 79⟩, ⟨19, 9⟩, ⟨153, 79⟩]⟩ = true := by decide +kernel
theorem run120_checked : Entry.check ⟨81, 96, ⟨1, 399999999⟩, ⟨0, 44, 2, ⟨153, 79⟩, ⟨77, 39⟩⟩, [⟨153, 79⟩, ⟨77, 39⟩]⟩ = true := by decide +kernel
theorem run121_checked : Entry.check ⟨81, 97, ⟨1, 399999999⟩, ⟨0, 45, 7, ⟨77, 39⟩, ⟨2, 0⟩⟩, (FQ.progression (77 / 40) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run122_checked : Entry.check ⟨82, 98, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run123_checked : Entry.check ⟨82, 99, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run124_checked : Entry.check ⟨83, 100, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨51, 39⟩, ⟨107, 79⟩⟩, (FQ.progression (51 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run125_checked : Entry.check ⟨83, 101, ⟨1, 399999999⟩, ⟨0, 5, 11, ⟨107, 79⟩, ⟨117, 79⟩⟩, (FQ.progression (107 / 80) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run126_checked : Entry.check ⟨83, 102, ⟨1, 399999999⟩, ⟨0, 15, 2, ⟨117, 79⟩, ⟨59, 39⟩⟩, [⟨117, 79⟩, ⟨59, 39⟩]⟩ = true := by decide +kernel
theorem run127_checked : Entry.check ⟨83, 103, ⟨1, 399999999⟩, ⟨0, 16, 20, ⟨59, 39⟩, ⟨137, 79⟩⟩, (FQ.progression (59 / 40) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run128_checked : Entry.check ⟨83, 104, ⟨1, 399999999⟩, ⟨0, 35, 2, ⟨137, 79⟩, ⟨69, 39⟩⟩, [⟨137, 79⟩, ⟨69, 39⟩]⟩ = true := by decide +kernel
theorem run129_checked : Entry.check ⟨83, 105, ⟨1, 399999999⟩, ⟨0, 36, 19, ⟨69, 39⟩, ⟨39, 19⟩⟩, (FQ.progression (69 / 40) (1 / 80) 19)⟩ = true := by decide +kernel
theorem run130_checked : Entry.check ⟨84, 106, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run131_checked : Entry.check ⟨84, 107, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run132_checked : Entry.check ⟨85, 108, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨19, 15⟩, ⟨6, 4⟩⟩, [⟨19, 15⟩, ⟨6, 4⟩]⟩ = true := by decide +kernel
theorem run133_checked : Entry.check ⟨85, 109, ⟨1, 399999999⟩, ⟨0, 1, 9, ⟨6, 4⟩, ⟨13, 9⟩⟩, (FQ.progression (6 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run134_checked : Entry.check ⟨85, 110, ⟨1, 399999999⟩, ⟨0, 9, 11, ⟨13, 9⟩, ⟨57, 39⟩⟩, (FQ.progression (13 / 10) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run135_checked : Entry.check ⟨85, 111, ⟨1, 399999999⟩, ⟨0, 19, 10, ⟨57, 39⟩, ⟨123, 79⟩⟩, (FQ.progression (57 / 40) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run136_checked : Entry.check ⟨86, 112, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run137_checked : Entry.check ⟨86, 113, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run138_checked : Entry.check ⟨87, 114, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 9⟩, ⟨89, 79⟩⟩, [⟨11, 9⟩, ⟨89, 79⟩]⟩ = true := by decide +kernel
theorem run139_checked : Entry.check ⟨87, 115, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨89, 79⟩, ⟨47, 39⟩⟩, (FQ.progression (89 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run140_checked : Entry.check ⟨87, 116, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨47, 39⟩, ⟨19, 15⟩⟩, [⟨47, 39⟩, ⟨19, 15⟩]⟩ = true := by decide +kernel
theorem run141_checked : Entry.check ⟨87, 117, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨19, 15⟩, ⟨6, 4⟩⟩, [⟨19, 15⟩, ⟨6, 4⟩]⟩ = true := by decide +kernel
theorem run142_checked : Entry.check ⟨87, 116, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨6, 4⟩, ⟨97, 79⟩⟩, [⟨6, 4⟩, ⟨97, 79⟩]⟩ = true := by decide +kernel
theorem run143_checked : Entry.check ⟨87, 117, ⟨1, 399999999⟩, ⟨0, 9, 6, ⟨97, 79⟩, ⟨51, 39⟩⟩, (FQ.progression (97 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run144_checked : Entry.check ⟨87, 118, ⟨1, 399999999⟩, ⟨0, 14, 5, ⟨51, 39⟩, ⟨53, 39⟩⟩, (FQ.progression (51 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run145_checked : Entry.check ⟨87, 119, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨53, 39⟩, ⟨107, 79⟩⟩, [⟨53, 39⟩, ⟨107, 79⟩]⟩ = true := by decide +kernel
theorem run146_checked : Entry.check ⟨87, 118, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨107, 79⟩, ⟨27, 19⟩⟩, [⟨107, 79⟩, ⟨27, 19⟩]⟩ = true := by decide +kernel
theorem run147_checked : Entry.check ⟨87, 119, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨27, 19⟩, ⟨109, 79⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run148_checked : Entry.check ⟨87, 118, ⟨1, 399999999⟩, ⟨0, 21, 2, ⟨109, 79⟩, ⟨11, 7⟩⟩, [⟨109, 79⟩, ⟨11, 7⟩]⟩ = true := by decide +kernel
theorem run149_checked : Entry.check ⟨87, 119, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨11, 7⟩, ⟨111, 79⟩⟩, [⟨11, 7⟩, ⟨111, 79⟩]⟩ = true := by decide +kernel
theorem run150_checked : Entry.check ⟨87, 120, ⟨1, 399999999⟩, ⟨0, 23, 9, ⟨111, 79⟩, ⟨119, 79⟩⟩, (FQ.progression (111 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem entries5_checked : entries5.all Entry.check = true := by
  simp only [entries5, List.all_cons, List.all_nil, run119_checked, run120_checked, run121_checked, run122_checked, run123_checked, run124_checked, run125_checked, run126_checked, run127_checked, run128_checked, run129_checked, run130_checked, run131_checked, run132_checked, run133_checked, run134_checked, run135_checked, run136_checked, run137_checked, run138_checked, run139_checked, run140_checked, run141_checked, run142_checked, run143_checked, run144_checked, run145_checked, run146_checked, run147_checked, run148_checked, run149_checked, run150_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run151_checked : Entry.check ⟨88, 121, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run152_checked : Entry.check ⟨88, 122, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run153_checked : Entry.check ⟨89, 123, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨41, 39⟩, ⟨21, 19⟩⟩, [⟨41, 39⟩, ⟨83, 79⟩, ⟨21, 19⟩]⟩ = true := by decide +kernel
theorem run154_checked : Entry.check ⟨89, 124, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨21, 19⟩, ⟨17, 15⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run155_checked : Entry.check ⟨89, 125, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨17, 15⟩, ⟨43, 39⟩⟩, [⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run156_checked : Entry.check ⟨89, 126, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨43, 39⟩, ⟨87, 79⟩⟩, [⟨43, 39⟩, ⟨87, 79⟩]⟩ = true := by decide +kernel
theorem run157_checked : Entry.check ⟨89, 127, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨87, 79⟩, ⟨11, 9⟩⟩, [⟨87, 79⟩, ⟨11, 9⟩]⟩ = true := by decide +kernel
theorem run158_checked : Entry.check ⟨89, 126, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨11, 9⟩, ⟨89, 79⟩⟩, [⟨11, 9⟩, ⟨89, 79⟩]⟩ = true := by decide +kernel
theorem run159_checked : Entry.check ⟨89, 127, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨89, 79⟩, ⟨9, 7⟩⟩, [⟨89, 79⟩, ⟨9, 7⟩]⟩ = true := by decide +kernel
theorem run160_checked : Entry.check ⟨89, 126, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨9, 7⟩, ⟨91, 79⟩⟩, [⟨9, 7⟩, ⟨91, 79⟩]⟩ = true := by decide +kernel
theorem run161_checked : Entry.check ⟨89, 128, ⟨1, 399999999⟩, ⟨0, 9, 9, ⟨91, 79⟩, ⟨99, 79⟩⟩, (FQ.progression (91 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run162_checked : Entry.check ⟨89, 129, ⟨1, 399999999⟩, ⟨0, 17, 10, ⟨99, 79⟩, ⟨27, 19⟩⟩, (FQ.progression (99 / 80) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run163_checked : Entry.check ⟨89, 130, ⟨1, 399999999⟩, ⟨0, 26, 2, ⟨27, 19⟩, ⟨109, 79⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run164_checked : Entry.check ⟨89, 131, ⟨1, 399999999⟩, ⟨0, 27, 2, ⟨109, 79⟩, ⟨11, 7⟩⟩, [⟨109, 79⟩, ⟨11, 7⟩]⟩ = true := by decide +kernel
theorem run165_checked : Entry.check ⟨90, 132, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run166_checked : Entry.check ⟨90, 133, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, (FQ.progression (3 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run167_checked : Entry.check ⟨91, 134, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨77, 79⟩, ⟨39, 39⟩⟩, [⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run168_checked : Entry.check ⟨91, 135, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨39, 39⟩, ⟨81, 79⟩⟩, (FQ.progression (39 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run169_checked : Entry.check ⟨91, 136, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨81, 79⟩, ⟨41, 39⟩⟩, [⟨81, 79⟩, ⟨41, 39⟩]⟩ = true := by decide +kernel
theorem run170_checked : Entry.check ⟨91, 137, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨41, 39⟩, ⟨83, 79⟩⟩, [⟨41, 39⟩, ⟨83, 79⟩]⟩ = true := by decide +kernel
theorem run171_checked : Entry.check ⟨91, 136, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨83, 79⟩, ⟨21, 19⟩⟩, [⟨83, 79⟩, ⟨21, 19⟩]⟩ = true := by decide +kernel
theorem run172_checked : Entry.check ⟨91, 138, ⟨1, 399999999⟩, ⟨0, 7, 6, ⟨21, 19⟩, ⟨89, 79⟩⟩, (FQ.progression (21 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run173_checked : Entry.check ⟨91, 139, ⟨1, 399999999⟩, ⟨0, 12, 6, ⟨89, 79⟩, ⟨47, 39⟩⟩, (FQ.progression (89 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run174_checked : Entry.check ⟨91, 140, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨47, 39⟩, ⟨19, 15⟩⟩, [⟨47, 39⟩, ⟨19, 15⟩]⟩ = true := by decide +kernel
theorem run175_checked : Entry.check ⟨91, 139, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨19, 15⟩, ⟨6, 4⟩⟩, [⟨19, 15⟩, ⟨6, 4⟩]⟩ = true := by decide +kernel
theorem run176_checked : Entry.check ⟨91, 141, ⟨1, 399999999⟩, ⟨0, 19, 10, ⟨6, 4⟩, ⟨21, 15⟩⟩, (FQ.progression (6 / 5) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run177_checked : Entry.check ⟨91, 142, ⟨1, 399999999⟩, ⟨0, 28, 2, ⟨21, 15⟩, ⟨53, 39⟩⟩, [⟨21, 15⟩, ⟨53, 39⟩]⟩ = true := by decide +kernel
theorem run178_checked : Entry.check ⟨92, 143, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run179_checked : Entry.check ⟨92, 144, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run180_checked : Entry.check ⟨93, 145, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨71, 79⟩, ⟨73, 79⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩, ⟨73, 79⟩]⟩ = true := by decide +kernel
theorem run181_checked : Entry.check ⟨93, 146, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨73, 79⟩, ⟨77, 79⟩⟩, (FQ.progression (73 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run182_checked : Entry.check ⟨93, 147, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨77, 79⟩, ⟨39, 39⟩⟩, [⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem entries6_checked : entries6.all Entry.check = true := by
  simp only [entries6, List.all_cons, List.all_nil, run151_checked, run152_checked, run153_checked, run154_checked, run155_checked, run156_checked, run157_checked, run158_checked, run159_checked, run160_checked, run161_checked, run162_checked, run163_checked, run164_checked, run165_checked, run166_checked, run167_checked, run168_checked, run169_checked, run170_checked, run171_checked, run172_checked, run173_checked, run174_checked, run175_checked, run176_checked, run177_checked, run178_checked, run179_checked, run180_checked, run181_checked, run182_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run183_checked : Entry.check ⟨93, 148, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run184_checked : Entry.check ⟨93, 149, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨79, 79⟩, ⟨41, 39⟩⟩, (FQ.progression (79 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run185_checked : Entry.check ⟨93, 150, ⟨1, 399999999⟩, ⟨0, 11, 6, ⟨41, 39⟩, ⟨87, 79⟩⟩, (FQ.progression (41 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run186_checked : Entry.check ⟨93, 151, ⟨1, 399999999⟩, ⟨0, 16, 8, ⟨87, 79⟩, ⟨47, 39⟩⟩, (FQ.progression (87 / 80) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run187_checked : Entry.check ⟨93, 152, ⟨1, 399999999⟩, ⟨0, 23, 2, ⟨47, 39⟩, ⟨19, 15⟩⟩, [⟨47, 39⟩, ⟨19, 15⟩]⟩ = true := by decide +kernel
theorem run188_checked : Entry.check ⟨94, 153, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run189_checked : Entry.check ⟨94, 154, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, (FQ.progression (3 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run190_checked : Entry.check ⟨95, 155, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨67, 79⟩, ⟨69, 79⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run191_checked : Entry.check ⟨95, 156, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨69, 79⟩, ⟨71, 79⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run192_checked : Entry.check ⟨95, 157, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨71, 79⟩, ⟨9, 9⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run193_checked : Entry.check ⟨95, 158, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨9, 9⟩, ⟨15, 15⟩⟩, (FQ.progression (9 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run194_checked : Entry.check ⟨95, 159, ⟨1, 399999999⟩, ⟨0, 8, 3, ⟨15, 15⟩, ⟨77, 79⟩⟩, [⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩]⟩ = true := by decide +kernel
theorem run195_checked : Entry.check ⟨95, 160, ⟨1, 399999999⟩, ⟨0, 10, 5, ⟨77, 79⟩, ⟨81, 79⟩⟩, (FQ.progression (77 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run196_checked : Entry.check ⟨95, 161, ⟨1, 399999999⟩, ⟨0, 14, 5, ⟨81, 79⟩, ⟨17, 15⟩⟩, (FQ.progression (81 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run197_checked : Entry.check ⟨95, 162, ⟨1, 399999999⟩, ⟨0, 18, 4, ⟨17, 15⟩, ⟨11, 9⟩⟩, (FQ.progression (17 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run198_checked : Entry.check ⟨96, 163, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run199_checked : Entry.check ⟨96, 164, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run200_checked : Entry.check ⟨97, 165, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨31, 39⟩, ⟨63, 79⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run201_checked : Entry.check ⟨97, 166, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨63, 79⟩, ⟨13, 15⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run202_checked : Entry.check ⟨97, 167, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨13, 15⟩, ⟨17, 19⟩⟩, (FQ.progression (13 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run203_checked : Entry.check ⟨97, 168, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run204_checked : Entry.check ⟨97, 169, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨69, 79⟩, ⟨7, 7⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run205_checked : Entry.check ⟨97, 170, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨7, 7⟩, ⟨71, 79⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run206_checked : Entry.check ⟨97, 171, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨71, 79⟩, ⟨9, 9⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run207_checked : Entry.check ⟨97, 172, ⟨1, 399999999⟩, ⟨0, 10, 5, ⟨9, 9⟩, ⟨19, 19⟩⟩, (FQ.progression (9 / 10) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run208_checked : Entry.check ⟨97, 173, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨19, 19⟩, ⟨39, 39⟩⟩, [⟨19, 19⟩, ⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run209_checked : Entry.check ⟨97, 174, ⟨1, 399999999⟩, ⟨0, 16, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run210_checked : Entry.check ⟨97, 175, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨79, 79⟩, ⟨1, 0⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩]⟩ = true := by decide +kernel
theorem run211_checked : Entry.check ⟨97, 174, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨1, 0⟩, ⟨81, 79⟩⟩, [⟨1, 0⟩, ⟨81, 79⟩]⟩ = true := by decide +kernel
theorem run212_checked : Entry.check ⟨97, 175, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨81, 79⟩, ⟨41, 39⟩⟩, [⟨81, 79⟩, ⟨41, 39⟩]⟩ = true := by decide +kernel
theorem run213_checked : Entry.check ⟨98, 176, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run214_checked : Entry.check ⟨98, 177, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem entries7_checked : entries7.all Entry.check = true := by
  simp only [entries7, List.all_cons, List.all_nil, run183_checked, run184_checked, run185_checked, run186_checked, run187_checked, run188_checked, run189_checked, run190_checked, run191_checked, run192_checked, run193_checked, run194_checked, run195_checked, run196_checked, run197_checked, run198_checked, run199_checked, run200_checked, run201_checked, run202_checked, run203_checked, run204_checked, run205_checked, run206_checked, run207_checked, run208_checked, run209_checked, run210_checked, run211_checked, run212_checked, run213_checked, run214_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run215_checked : Entry.check ⟨99, 177, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 79⟩, ⟨11, 79⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run216_checked : Entry.check ⟨100, 178, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨29, 39⟩, ⟨3, 3⟩⟩, [⟨29, 39⟩, ⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run217_checked : Entry.check ⟨100, 179, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨3, 3⟩, ⟨61, 79⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run218_checked : Entry.check ⟨100, 180, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨61, 79⟩, ⟨31, 39⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run219_checked : Entry.check ⟨100, 179, ⟨1, 399999999⟩, ⟨0, 4, 3, ⟨31, 39⟩, ⟨4, 4⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run220_checked : Entry.check ⟨100, 181, ⟨1, 399999999⟩, ⟨0, 6, 3, ⟨4, 4⟩, ⟨33, 39⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩]⟩ = true := by decide +kernel
theorem run221_checked : Entry.check ⟨100, 182, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨33, 39⟩, ⟨69, 79⟩⟩, (FQ.progression (33 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run222_checked : Entry.check ⟨100, 183, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨69, 79⟩, ⟨71, 79⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run223_checked : Entry.check ⟨100, 184, ⟨1, 399999999⟩, ⟨0, 13, 2, ⟨71, 79⟩, ⟨9, 9⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run224_checked : Entry.check ⟨100, 185, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨9, 9⟩, ⟨73, 79⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩]⟩ = true := by decide +kernel
theorem run225_checked : Entry.check ⟨100, 184, ⟨1, 399999999⟩, ⟨0, 15, 2, ⟨73, 79⟩, ⟨37, 39⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run226_checked : Entry.check ⟨100, 186, ⟨1, 399999999⟩, ⟨0, 16, 4, ⟨37, 39⟩, ⟨77, 79⟩⟩, (FQ.progression (37 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run227_checked : Entry.check ⟨101, 187, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run228_checked : Entry.check ⟨101, 188, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, (FQ.progression (3 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run229_checked : Entry.check ⟨102, 189, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨27, 39⟩, ⟨59, 79⟩⟩, (FQ.progression (27 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run230_checked : Entry.check ⟨102, 190, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨59, 79⟩, ⟨3, 3⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run231_checked : Entry.check ⟨102, 191, ⟨1, 399999999⟩, ⟨0, 6, 3, ⟨3, 3⟩, ⟨31, 39⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run232_checked : Entry.check ⟨102, 192, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨31, 39⟩, ⟨13, 15⟩⟩, (FQ.progression (31 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run233_checked : Entry.check ⟨102, 193, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩, [⟨13, 15⟩, ⟨33, 39⟩, ⟨67, 79⟩]⟩ = true := by decide +kernel
theorem run234_checked : Entry.check ⟨102, 194, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨67, 79⟩, ⟨7, 7⟩⟩, (FQ.progression (67 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run235_checked : Entry.check ⟨102, 195, ⟨1, 399999999⟩, ⟨0, 16, 2, ⟨7, 7⟩, ⟨71, 79⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run236_checked : Entry.check ⟨103, 196, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, (FQ.progression (1 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run237_checked : Entry.check ⟨104, 197, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 9⟩, ⟨11, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run238_checked : Entry.check ⟨105, 198, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨5, 7⟩, ⟨51, 79⟩⟩, [⟨5, 7⟩, ⟨51, 79⟩]⟩ = true := by decide +kernel
theorem run239_checked : Entry.check ⟨105, 199, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨51, 79⟩, ⟨53, 79⟩⟩, [⟨51, 79⟩, ⟨13, 19⟩, ⟨53, 79⟩]⟩ = true := by decide +kernel
theorem run240_checked : Entry.check ⟨105, 200, ⟨1, 399999999⟩, ⟨0, 3, 6, ⟨53, 79⟩, ⟨29, 39⟩⟩, (FQ.progression (53 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run241_checked : Entry.check ⟨105, 201, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨29, 39⟩, ⟨61, 79⟩⟩, (FQ.progression (29 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run242_checked : Entry.check ⟨105, 202, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨61, 79⟩, ⟨31, 39⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run243_checked : Entry.check ⟨105, 203, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨31, 39⟩, ⟨63, 79⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run244_checked : Entry.check ⟨105, 204, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨63, 79⟩, ⟨33, 39⟩⟩, (FQ.progression (63 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run245_checked : Entry.check ⟨106, 205, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run246_checked : Entry.check ⟨106, 206, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem entries8_checked : entries8.all Entry.check = true := by
  simp only [entries8, List.all_cons, List.all_nil, run215_checked, run216_checked, run217_checked, run218_checked, run219_checked, run220_checked, run221_checked, run222_checked, run223_checked, run224_checked, run225_checked, run226_checked, run227_checked, run228_checked, run229_checked, run230_checked, run231_checked, run232_checked, run233_checked, run234_checked, run235_checked, run236_checked, run237_checked, run238_checked, run239_checked, run240_checked, run241_checked, run242_checked, run243_checked, run244_checked, run245_checked, run246_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run247_checked : Entry.check ⟨107, 207, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨47, 79⟩, ⟨51, 79⟩⟩, (FQ.progression (47 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run248_checked : Entry.check ⟨107, 208, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨51, 79⟩, ⟨13, 19⟩⟩, [⟨51, 79⟩, ⟨13, 19⟩]⟩ = true := by decide +kernel
theorem run249_checked : Entry.check ⟨107, 209, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, (FQ.progression (13 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run250_checked : Entry.check ⟨107, 210, ⟨1, 399999999⟩, ⟨0, 9, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩, ⟨29, 39⟩]⟩ = true := by decide +kernel
theorem run251_checked : Entry.check ⟨107, 211, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨29, 39⟩, ⟨59, 79⟩⟩, [⟨29, 39⟩, ⟨59, 79⟩]⟩ = true := by decide +kernel
theorem run252_checked : Entry.check ⟨107, 210, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨59, 79⟩, ⟨3, 3⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run253_checked : Entry.check ⟨107, 212, ⟨1, 399999999⟩, ⟨0, 13, 2, ⟨3, 3⟩, ⟨61, 79⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run254_checked : Entry.check ⟨108, 213, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run255_checked : Entry.check ⟨108, 214, ⟨1, 399999999⟩, ⟨0, 5, 6, ⟨3, 39⟩, ⟨11, 79⟩⟩, (FQ.progression (3 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run256_checked : Entry.check ⟨108, 215, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run257_checked : Entry.check ⟨109, 216, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨11, 19⟩, ⟨23, 39⟩⟩, [⟨11, 19⟩, ⟨9, 15⟩, ⟨23, 39⟩]⟩ = true := by decide +kernel
theorem run258_checked : Entry.check ⟨109, 217, ⟨1, 399999999⟩, ⟨0, 2, 6, ⟨23, 39⟩, ⟨51, 79⟩⟩, (FQ.progression (23 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run259_checked : Entry.check ⟨109, 218, ⟨1, 399999999⟩, ⟨0, 7, 5, ⟨51, 79⟩, ⟨11, 15⟩⟩, (FQ.progression (51 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run260_checked : Entry.check ⟨109, 219, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run261_checked : Entry.check ⟨110, 220, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run262_checked : Entry.check ⟨110, 221, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run263_checked : Entry.check ⟨111, 221, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 79⟩, ⟨11, 79⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run264_checked : Entry.check ⟨112, 222, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨41, 79⟩, ⟨9, 15⟩⟩, (FQ.progression (41 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run265_checked : Entry.check ⟨112, 223, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨9, 15⟩, ⟨5, 7⟩⟩, (FQ.progression (9 / 16) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run266_checked : Entry.check ⟨112, 224, ⟨1, 399999999⟩, ⟨0, 9, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, (FQ.progression (5 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run267_checked : Entry.check ⟨113, 225, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run268_checked : Entry.check ⟨113, 226, ⟨1, 399999999⟩, ⟨0, 5, 6, ⟨3, 39⟩, ⟨11, 79⟩⟩, (FQ.progression (3 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run269_checked : Entry.check ⟨113, 227, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run270_checked : Entry.check ⟨114, 228, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨19, 39⟩, ⟨11, 19⟩⟩, (FQ.progression (19 / 40) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run271_checked : Entry.check ⟨114, 229, ⟨1, 399999999⟩, ⟨0, 6, 6, ⟨11, 19⟩, ⟨49, 79⟩⟩, (FQ.progression (11 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run272_checked : Entry.check ⟨115, 230, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run273_checked : Entry.check ⟨115, 231, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run274_checked : Entry.check ⟨116, 232, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨9, 19⟩, ⟨37, 79⟩⟩, [⟨9, 19⟩, ⟨37, 79⟩]⟩ = true := by decide +kernel
theorem run275_checked : Entry.check ⟨116, 233, ⟨1, 399999999⟩, ⟨0, 1, 8, ⟨37, 79⟩, ⟨11, 19⟩⟩, (FQ.progression (37 / 80) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run276_checked : Entry.check ⟨116, 234, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨11, 19⟩, ⟨47, 79⟩⟩, (FQ.progression (11 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run277_checked : Entry.check ⟨117, 235, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run278_checked : Entry.check ⟨117, 236, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem entries9_checked : entries9.all Entry.check = true := by
  simp only [entries9, List.all_cons, List.all_nil, run247_checked, run248_checked, run249_checked, run250_checked, run251_checked, run252_checked, run253_checked, run254_checked, run255_checked, run256_checked, run257_checked, run258_checked, run259_checked, run260_checked, run261_checked, run262_checked, run263_checked, run264_checked, run265_checked, run266_checked, run267_checked, run268_checked, run269_checked, run270_checked, run271_checked, run272_checked, run273_checked, run274_checked, run275_checked, run276_checked, run277_checked, run278_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run279_checked : Entry.check ⟨118, 236, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run280_checked : Entry.check ⟨119, 237, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run281_checked : Entry.check ⟨120, 238, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨33, 79⟩, ⟨9, 19⟩⟩, (FQ.progression (33 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run282_checked : Entry.check ⟨120, 239, ⟨1, 399999999⟩, ⟨0, 3, 7, ⟨9, 19⟩, ⟨21, 39⟩⟩, (FQ.progression (9 / 20) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run283_checked : Entry.check ⟨121, 240, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run284_checked : Entry.check ⟨121, 241, ⟨1, 399999999⟩, ⟨0, 5, 6, ⟨3, 39⟩, ⟨11, 79⟩⟩, (FQ.progression (3 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run285_checked : Entry.check ⟨122, 242, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨31, 79⟩, ⟨7, 15⟩⟩, (FQ.progression (31 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run286_checked : Entry.check ⟨122, 243, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨7, 15⟩, ⟨1, 1⟩⟩, (FQ.progression (7 / 16) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run287_checked : Entry.check ⟨123, 244, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run288_checked : Entry.check ⟨123, 245, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, (FQ.progression (3 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run289_checked : Entry.check ⟨124, 246, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run290_checked : Entry.check ⟨125, 247, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨29, 79⟩, ⟨7, 15⟩⟩, (FQ.progression (29 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run291_checked : Entry.check ⟨125, 248, ⟨1, 399999999⟩, ⟨0, 6, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run292_checked : Entry.check ⟨126, 249, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run293_checked : Entry.check ⟨126, 250, ⟨1, 399999999⟩, ⟨0, 5, 6, ⟨3, 39⟩, ⟨11, 79⟩⟩, (FQ.progression (3 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run294_checked : Entry.check ⟨126, 251, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨11, 79⟩, ⟨13, 79⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run295_checked : Entry.check ⟨127, 252, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨27, 79⟩, ⟨29, 79⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩]⟩ = true := by decide +kernel
theorem run296_checked : Entry.check ⟨128, 252, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨3, 7⟩, ⟨17, 39⟩⟩, (FQ.progression (3 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run297_checked : Entry.check ⟨128, 253, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨17, 39⟩, ⟨37, 79⟩⟩, (FQ.progression (17 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run298_checked : Entry.check ⟨129, 254, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run299_checked : Entry.check ⟨129, 255, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run300_checked : Entry.check ⟨130, 256, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run301_checked : Entry.check ⟨131, 256, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run302_checked : Entry.check ⟨132, 257, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨5, 15⟩, ⟨13, 39⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩]⟩ = true := by decide +kernel
theorem run303_checked : Entry.check ⟨132, 258, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨13, 39⟩, ⟨27, 79⟩⟩, [⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run304_checked : Entry.check ⟨133, 259, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨7, 19⟩, ⟨33, 79⟩⟩, (FQ.progression (7 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run305_checked : Entry.check ⟨133, 260, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨33, 79⟩, ⟨7, 15⟩⟩, [⟨33, 79⟩, ⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run306_checked : Entry.check ⟨134, 261, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run307_checked : Entry.check ⟨134, 262, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, (FQ.progression (3 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run308_checked : Entry.check ⟨135, 263, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run309_checked : Entry.check ⟨136, 264, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨11, 39⟩, ⟨3, 9⟩⟩, [⟨11, 39⟩, ⟨23, 79⟩, ⟨3, 9⟩]⟩ = true := by decide +kernel
theorem run310_checked : Entry.check ⟨136, 265, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨3, 9⟩, ⟨5, 15⟩⟩, [⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem entries10_checked : entries10.all Entry.check = true := by
  simp only [entries10, List.all_cons, List.all_nil, run279_checked, run280_checked, run281_checked, run282_checked, run283_checked, run284_checked, run285_checked, run286_checked, run287_checked, run288_checked, run289_checked, run290_checked, run291_checked, run292_checked, run293_checked, run294_checked, run295_checked, run296_checked, run297_checked, run298_checked, run299_checked, run300_checked, run301_checked, run302_checked, run303_checked, run304_checked, run305_checked, run306_checked, run307_checked, run308_checked, run309_checked, run310_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run311_checked : Entry.check ⟨137, 266, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨13, 39⟩, ⟨3, 7⟩⟩, (FQ.progression (13 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run312_checked : Entry.check ⟨138, 267, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run313_checked : Entry.check ⟨138, 268, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, (FQ.progression (3 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run314_checked : Entry.check ⟨138, 269, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run315_checked : Entry.check ⟨139, 269, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run316_checked : Entry.check ⟨140, 270, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨21, 79⟩, ⟨11, 39⟩⟩, [⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run317_checked : Entry.check ⟨141, 270, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 9⟩, ⟨5, 15⟩⟩, [⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run318_checked : Entry.check ⟨141, 271, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨5, 15⟩, ⟨13, 39⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩]⟩ = true := by decide +kernel
theorem run319_checked : Entry.check ⟨141, 272, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨13, 39⟩, ⟨7, 19⟩⟩, [⟨13, 39⟩, ⟨27, 79⟩, ⟨7, 19⟩]⟩ = true := by decide +kernel
theorem run320_checked : Entry.check ⟨142, 273, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run321_checked : Entry.check ⟨142, 274, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, (FQ.progression (3 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run322_checked : Entry.check ⟨142, 275, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run323_checked : Entry.check ⟨143, 275, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run324_checked : Entry.check ⟨144, 276, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run325_checked : Entry.check ⟨144, 277, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 3⟩, ⟨21, 79⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩]⟩ = true := by decide +kernel
theorem run326_checked : Entry.check ⟨145, 278, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨23, 79⟩, ⟨13, 39⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩, ⟨13, 39⟩]⟩ = true := by decide +kernel
theorem run327_checked : Entry.check ⟨145, 279, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨13, 39⟩, ⟨27, 79⟩⟩, [⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run328_checked : Entry.check ⟨146, 280, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run329_checked : Entry.check ⟨146, 281, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run330_checked : Entry.check ⟨147, 281, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run331_checked : Entry.check ⟨148, 282, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run332_checked : Entry.check ⟨149, 282, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run333_checked : Entry.check ⟨150, 283, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨17, 79⟩, ⟨19, 79⟩⟩, [⟨17, 79⟩, ⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run334_checked : Entry.check ⟨151, 284, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨21, 79⟩, ⟨3, 9⟩⟩, (FQ.progression (21 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run335_checked : Entry.check ⟨152, 285, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run336_checked : Entry.check ⟨153, 285, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 19⟩, ⟨3, 39⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run337_checked : Entry.check ⟨153, 286, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run338_checked : Entry.check ⟨154, 286, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 9⟩, ⟨1, 7⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run339_checked : Entry.check ⟨154, 287, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨1, 7⟩, ⟨13, 79⟩⟩, (FQ.progression (1 / 8) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run340_checked : Entry.check ⟨155, 288, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run341_checked : Entry.check ⟨156, 289, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run342_checked : Entry.check ⟨156, 290, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨11, 39⟩, ⟨23, 79⟩⟩, [⟨11, 39⟩, ⟨23, 79⟩]⟩ = true := by decide +kernel
theorem entries11_checked : entries11.all Entry.check = true := by
  simp only [entries11, List.all_cons, List.all_nil, run311_checked, run312_checked, run313_checked, run314_checked, run315_checked, run316_checked, run317_checked, run318_checked, run319_checked, run320_checked, run321_checked, run322_checked, run323_checked, run324_checked, run325_checked, run326_checked, run327_checked, run328_checked, run329_checked, run330_checked, run331_checked, run332_checked, run333_checked, run334_checked, run335_checked, run336_checked, run337_checked, run338_checked, run339_checked, run340_checked, run341_checked, run342_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run343_checked : Entry.check ⟨157, 291, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem run344_checked : Entry.check ⟨158, 291, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 19⟩, ⟨3, 39⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run345_checked : Entry.check ⟨158, 292, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, (FQ.progression (3 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run346_checked : Entry.check ⟨158, 293, ⟨1, 399999999⟩, ⟨0, 6, 4, ⟨1, 7⟩, ⟨13, 79⟩⟩, (FQ.progression (1 / 8) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run347_checked : Entry.check ⟨158, 294, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run348_checked : Entry.check ⟨158, 295, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run349_checked : Entry.check ⟨159, 296, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 39⟩, ⟨1, 3⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run350_checked : Entry.check ⟨159, 297, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨1, 3⟩, ⟨21, 79⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩]⟩ = true := by decide +kernel
theorem run351_checked : Entry.check ⟨160, 298, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 39⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run352_checked : Entry.check ⟨160, 299, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run353_checked : Entry.check ⟨161, 300, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run354_checked : Entry.check ⟨162, 301, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨3, 15⟩, ⟨9, 39⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩, ⟨9, 39⟩]⟩ = true := by decide +kernel
theorem run355_checked : Entry.check ⟨162, 302, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run356_checked : Entry.check ⟨162, 303, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run357_checked : Entry.check ⟨163, 304, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run358_checked : Entry.check ⟨163, 305, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, (FQ.progression (3 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run359_checked : Entry.check ⟨163, 306, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run360_checked : Entry.check ⟨164, 307, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 19⟩, ⟨7, 39⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run361_checked : Entry.check ⟨164, 308, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨7, 39⟩, ⟨17, 79⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run362_checked : Entry.check ⟨165, 309, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run363_checked : Entry.check ⟨166, 310, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 15⟩, ⟨1, 7⟩⟩, (FQ.progression (1 / 16) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run364_checked : Entry.check ⟨166, 311, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨1, 7⟩, ⟨13, 79⟩⟩, (FQ.progression (1 / 8) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run365_checked : Entry.check ⟨166, 312, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run366_checked : Entry.check ⟨166, 313, ⟨1, 399999999⟩, ⟨0, 9, 3, ⟨7, 39⟩, ⟨1, 4⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run367_checked : Entry.check ⟨167, 314, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run368_checked : Entry.check ⟨168, 315, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 15⟩, ⟨1, 9⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run369_checked : Entry.check ⟨168, 316, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run370_checked : Entry.check ⟨168, 315, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run371_checked : Entry.check ⟨168, 317, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨1, 7⟩, ⟨7, 39⟩⟩, (FQ.progression (1 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run372_checked : Entry.check ⟨168, 318, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run373_checked : Entry.check ⟨169, 319, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem run374_checked : Entry.check ⟨170, 319, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 79⟩, ⟨1, 19⟩⟩, [⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem entries12_checked : entries12.all Entry.check = true := by
  simp only [entries12, List.all_cons, List.all_nil, run343_checked, run344_checked, run345_checked, run346_checked, run347_checked, run348_checked, run349_checked, run350_checked, run351_checked, run352_checked, run353_checked, run354_checked, run355_checked, run356_checked, run357_checked, run358_checked, run359_checked, run360_checked, run361_checked, run362_checked, run363_checked, run364_checked, run365_checked, run366_checked, run367_checked, run368_checked, run369_checked, run370_checked, run371_checked, run372_checked, run373_checked, run374_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run375_checked : Entry.check ⟨171, 320, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 15⟩, ⟨7, 79⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run376_checked : Entry.check ⟨171, 321, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨7, 79⟩, ⟨9, 79⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run377_checked : Entry.check ⟨171, 322, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨9, 79⟩, ⟨3, 19⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run378_checked : Entry.check ⟨171, 323, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run379_checked : Entry.check ⟨172, 324, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 79⟩, ⟨1, 19⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run380_checked : Entry.check ⟨173, 325, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run381_checked : Entry.check ⟨173, 326, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run382_checked : Entry.check ⟨173, 327, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run383_checked : Entry.check ⟨173, 328, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨9, 79⟩, ⟨3, 19⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run384_checked : Entry.check ⟨174, 329, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run385_checked : Entry.check ⟨175, 329, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 19⟩, ⟨1, 15⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run386_checked : Entry.check ⟨175, 330, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run387_checked : Entry.check ⟨176, 331, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run388_checked : Entry.check ⟨176, 332, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run389_checked : Entry.check ⟨176, 333, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run390_checked : Entry.check ⟨177, 334, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, (FQ.progression (1 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run391_checked : Entry.check ⟨177, 335, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run392_checked : Entry.check ⟨177, 336, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run393_checked : Entry.check ⟨177, 335, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run394_checked : Entry.check ⟨177, 337, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run395_checked : Entry.check ⟨178, 338, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, (FQ.progression (1 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run396_checked : Entry.check ⟨178, 339, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run397_checked : Entry.check ⟨178, 340, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run398_checked : Entry.check ⟨179, 341, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 39⟩, ⟨3, 79⟩⟩, [⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run399_checked : Entry.check ⟨180, 341, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 19⟩, ⟨1, 15⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run400_checked : Entry.check ⟨180, 342, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run401_checked : Entry.check ⟨180, 343, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run402_checked : Entry.check ⟨181, 344, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem run403_checked : Entry.check ⟨182, 345, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run404_checked : Entry.check ⟨183, 346, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run405_checked : Entry.check ⟨183, 347, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨3, 79⟩, ⟨1, 19⟩⟩, [⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run406_checked : Entry.check ⟨183, 348, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨1, 19⟩, ⟨1, 15⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem entries13_checked : entries13.all Entry.check = true := by
  simp only [entries13, List.all_cons, List.all_nil, run375_checked, run376_checked, run377_checked, run378_checked, run379_checked, run380_checked, run381_checked, run382_checked, run383_checked, run384_checked, run385_checked, run386_checked, run387_checked, run388_checked, run389_checked, run390_checked, run391_checked, run392_checked, run393_checked, run394_checked, run395_checked, run396_checked, run397_checked, run398_checked, run399_checked, run400_checked, run401_checked, run402_checked, run403_checked, run404_checked, run405_checked, run406_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run407_checked : Entry.check ⟨184, 349, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 19⟩, ⟨1, 15⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run408_checked : Entry.check ⟨221, 350, ⟨1, 399999999⟩, ⟨0, 8, 42, ⟨33, 9⟩, ⟨61, 15⟩⟩, (FQ.progression (33 / 10) (1 / 80) 42)⟩ = true := by decide +kernel
theorem run409_checked : Entry.check ⟨225, 351, ⟨1, 399999999⟩, ⟨0, 0, 25, ⟨21, 4⟩, ⟨9, 1⟩⟩, (FQ.progression (21 / 5) (1 / 80) 25)⟩ = true := by decide +kernel
theorem run410_checked : Entry.check ⟨225, 352, ⟨1, 399999999⟩, ⟨0, 24, 18, ⟨9, 1⟩, ⟨377, 79⟩⟩, (FQ.progression (9 / 2) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run411_checked : Entry.check ⟨231, 353, ⟨1, 399999999⟩, ⟨0, 12, 27, ⟨117, 39⟩, ⟨13, 3⟩⟩, (FQ.progression (117 / 40) (1 / 80) 27)⟩ = true := by decide +kernel
theorem run412_checked : Entry.check ⟨237, 354, ⟨1, 399999999⟩, ⟨0, 24, 40, ⟨43, 15⟩, ⟨127, 39⟩⟩, (FQ.progression (43 / 16) (1 / 80) 40)⟩ = true := by decide +kernel
theorem run413_checked : Entry.check ⟨238, 354, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨19, 4⟩, ⟨39, 9⟩⟩, (FQ.progression (19 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run414_checked : Entry.check ⟨238, 355, ⟨1, 399999999⟩, ⟨0, 8, 19, ⟨39, 9⟩, ⟨33, 7⟩⟩, (FQ.progression (39 / 10) (1 / 80) 19)⟩ = true := by decide +kernel
theorem run415_checked : Entry.check ⟨238, 356, ⟨1, 399999999⟩, ⟨0, 26, 8, ⟨33, 7⟩, ⟨337, 79⟩⟩, (FQ.progression (33 / 8) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run416_checked : Entry.check ⟨243, 357, ⟨1, 399999999⟩, ⟨0, 19, 43, ⟨103, 39⟩, ⟨31, 9⟩⟩, (FQ.progression (103 / 40) (1 / 80) 43)⟩ = true := by decide +kernel
theorem run417_checked : Entry.check ⟨246, 358, ⟨1, 399999999⟩, ⟨0, 9, 15, ⟨159, 79⟩, ⟨173, 79⟩⟩, (FQ.progression (159 / 80) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run418_checked : Entry.check ⟨246, 358, ⟨1, 399999999⟩, ⟨0, 24, 3, ⟨87, 39⟩, ⟨11, 4⟩⟩, [⟨87, 39⟩, ⟨35, 15⟩, ⟨11, 4⟩]⟩ = true := by decide +kernel
theorem run419_checked : Entry.check ⟨246, 359, ⟨1, 399999999⟩, ⟨0, 26, 7, ⟨11, 4⟩, ⟨91, 39⟩⟩, (FQ.progression (11 / 5) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run420_checked : Entry.check ⟨246, 359, ⟨1, 399999999⟩, ⟨0, 34, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run421_checked : Entry.check ⟨246, 359, ⟨1, 399999999⟩, ⟨0, 42, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run422_checked : Entry.check ⟨246, 359, ⟨1, 399999999⟩, ⟨0, 52, 5, ⟨101, 39⟩, ⟨103, 39⟩⟩, (FQ.progression (101 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem entries14_checked : entries14.all Entry.check = true := by
  simp only [entries14, List.all_cons, List.all_nil, run407_checked, run408_checked, run409_checked, run410_checked, run411_checked, run412_checked, run413_checked, run414_checked, run415_checked, run416_checked, run417_checked, run418_checked, run419_checked, run420_checked, run421_checked, run422_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run423_checked : Entry.check ⟨246, 360, ⟨1, 399999999⟩, ⟨0, 56, 39, ⟨103, 39⟩, ⟨61, 19⟩⟩, (FQ.progression (103 / 40) (1 / 80) 39)⟩ = true := by decide +kernel
theorem run424_checked : Entry.check ⟨246, 361, ⟨1, 399999999⟩, ⟨0, 94, 4, ⟨61, 19⟩, ⟨247, 79⟩⟩, (FQ.progression (61 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run425_checked : Entry.check ⟨249, 362, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨31, 15⟩, ⟨79, 39⟩⟩, (FQ.progression (31 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run426_checked : Entry.check ⟨249, 363, ⟨1, 399999999⟩, ⟨0, 18, 4, ⟨79, 39⟩, ⟨161, 79⟩⟩, (FQ.progression (79 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run427_checked : Entry.check ⟨250, 363, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨173, 79⟩, ⟨87, 39⟩⟩, [⟨173, 79⟩, ⟨87, 39⟩]⟩ = true := by decide +kernel
theorem run428_checked : Entry.check ⟨251, 363, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run429_checked : Entry.check ⟨252, 363, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run430_checked : Entry.check ⟨253, 363, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run431_checked : Entry.check ⟨254, 364, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run432_checked : Entry.check ⟨255, 365, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run433_checked : Entry.check ⟨258, 366, ⟨1, 399999999⟩, ⟨0, 20, 9, ⟨149, 79⟩, ⟨157, 79⟩⟩, (FQ.progression (149 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run434_checked : Entry.check ⟨261, 367, ⟨1, 399999999⟩, ⟨0, 23, 11, ⟨143, 79⟩, ⟨153, 79⟩⟩, (FQ.progression (143 / 80) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run435_checked : Entry.check ⟨265, 368, ⟨1, 399999999⟩, ⟨0, 26, 11, ⟨69, 39⟩, ⟨37, 19⟩⟩, (FQ.progression (69 / 40) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run436_checked : Entry.check ⟨267, 369, ⟨1, 399999999⟩, ⟨0, 16, 18, ⟨119, 79⟩, ⟨17, 9⟩⟩, (FQ.progression (119 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run437_checked : Entry.check ⟨267, 370, ⟨1, 399999999⟩, ⟨0, 33, 4, ⟨17, 9⟩, ⟨139, 79⟩⟩, (FQ.progression (17 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run438_checked : Entry.check ⟨267, 371, ⟨1, 399999999⟩, ⟨0, 36, 6, ⟨139, 79⟩, ⟨9, 4⟩⟩, (FQ.progression (139 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run439_checked : Entry.check ⟨270, 372, ⟨1, 399999999⟩, ⟨0, 18, 12, ⟨57, 39⟩, ⟨25, 15⟩⟩, (FQ.progression (57 / 40) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run440_checked : Entry.check ⟨271, 373, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨91, 39⟩, ⟨189, 79⟩⟩, (FQ.progression (91 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run441_checked : Entry.check ⟨272, 374, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨51, 19⟩, ⟨107, 39⟩⟩, (FQ.progression (51 / 20) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run442_checked : Entry.check ⟨276, 375, ⟨1, 399999999⟩, ⟨0, 13, 9, ⟨51, 39⟩, ⟨11, 7⟩⟩, (FQ.progression (51 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run443_checked : Entry.check ⟨276, 376, ⟨1, 399999999⟩, ⟨0, 21, 12, ⟨11, 7⟩, ⟨121, 79⟩⟩, (FQ.progression (11 / 8) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run444_checked : Entry.check ⟨280, 377, ⟨1, 399999999⟩, ⟨0, 16, 10, ⟨99, 79⟩, ⟨27, 19⟩⟩, (FQ.progression (99 / 80) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run445_checked : Entry.check ⟨280, 378, ⟨1, 399999999⟩, ⟨0, 25, 2, ⟨27, 19⟩, ⟨109, 79⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run446_checked : Entry.check ⟨281, 378, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨11, 7⟩, ⟨7, 4⟩⟩, [⟨11, 7⟩, ⟨111, 79⟩, ⟨7, 4⟩]⟩ = true := by decide +kernel
theorem run447_checked : Entry.check ⟨281, 379, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨7, 4⟩, ⟨113, 79⟩⟩, [⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run448_checked : Entry.check ⟨284, 380, ⟨1, 399999999⟩, ⟨0, 13, 7, ⟨9, 7⟩, ⟨6, 4⟩⟩, (FQ.progression (9 / 8) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run449_checked : Entry.check ⟨284, 381, ⟨1, 399999999⟩, ⟨0, 19, 11, ⟨6, 4⟩, ⟨53, 39⟩⟩, (FQ.progression (6 / 5) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run450_checked : Entry.check ⟨285, 382, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨107, 79⟩, ⟨11, 7⟩⟩, (FQ.progression (107 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run451_checked : Entry.check ⟨290, 383, ⟨1, 399999999⟩, ⟨0, 12, 5, ⟨83, 79⟩, ⟨87, 79⟩⟩, (FQ.progression (83 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run452_checked : Entry.check ⟨290, 384, ⟨1, 399999999⟩, ⟨0, 16, 8, ⟨87, 79⟩, ⟨47, 39⟩⟩, (FQ.progression (87 / 80) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run453_checked : Entry.check ⟨290, 385, ⟨1, 399999999⟩, ⟨0, 23, 5, ⟨47, 39⟩, ⟨49, 39⟩⟩, (FQ.progression (47 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run454_checked : Entry.check ⟨294, 386, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨39, 39⟩, ⟨1, 0⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩, ⟨1, 0⟩]⟩ = true := by decide +kernel
theorem entries15_checked : entries15.all Entry.check = true := by
  simp only [entries15, List.all_cons, List.all_nil, run423_checked, run424_checked, run425_checked, run426_checked, run427_checked, run428_checked, run429_checked, run430_checked, run431_checked, run432_checked, run433_checked, run434_checked, run435_checked, run436_checked, run437_checked, run438_checked, run439_checked, run440_checked, run441_checked, run442_checked, run443_checked, run444_checked, run445_checked, run446_checked, run447_checked, run448_checked, run449_checked, run450_checked, run451_checked, run452_checked, run453_checked, run454_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run455_checked : Entry.check ⟨294, 387, ⟨1, 399999999⟩, ⟨0, 14, 6, ⟨1, 0⟩, ⟨17, 15⟩⟩, (FQ.progression (1 / 1) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run456_checked : Entry.check ⟨294, 388, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨17, 15⟩, ⟨43, 39⟩⟩, [⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run457_checked : Entry.check ⟨294, 389, ⟨1, 399999999⟩, ⟨0, 20, 5, ⟨43, 39⟩, ⟨9, 7⟩⟩, (FQ.progression (43 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run458_checked : Entry.check ⟨297, 390, ⟨1, 399999999⟩, ⟨0, 11, 5, ⟨9, 9⟩, ⟨19, 19⟩⟩, (FQ.progression (9 / 10) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run459_checked : Entry.check ⟨297, 391, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨19, 19⟩, ⟨39, 39⟩⟩, [⟨19, 19⟩, ⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run460_checked : Entry.check ⟨297, 392, ⟨1, 399999999⟩, ⟨0, 17, 6, ⟨39, 39⟩, ⟨83, 79⟩⟩, (FQ.progression (39 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run461_checked : Entry.check ⟨301, 393, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨67, 79⟩, ⟨17, 19⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem run462_checked : Entry.check ⟨301, 394, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨17, 19⟩, ⟨71, 79⟩⟩, (FQ.progression (17 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run463_checked : Entry.check ⟨301, 395, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨71, 79⟩, ⟨37, 39⟩⟩, (FQ.progression (71 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run464_checked : Entry.check ⟨301, 396, ⟨1, 399999999⟩, ⟨0, 17, 4, ⟨37, 39⟩, ⟨77, 79⟩⟩, (FQ.progression (37 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run465_checked : Entry.check ⟨301, 397, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨77, 79⟩, ⟨39, 39⟩⟩, [⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run466_checked : Entry.check ⟨305, 398, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨63, 79⟩, ⟨13, 15⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run467_checked : Entry.check ⟨305, 399, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩, [⟨13, 15⟩, ⟨33, 39⟩, ⟨67, 79⟩]⟩ = true := by decide +kernel
theorem run468_checked : Entry.check ⟨305, 400, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨67, 79⟩, ⟨69, 79⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run469_checked : Entry.check ⟨305, 401, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨69, 79⟩, ⟨71, 79⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run470_checked : Entry.check ⟨310, 402, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨59, 79⟩, ⟨3, 3⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run471_checked : Entry.check ⟨310, 403, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨3, 3⟩, ⟨63, 79⟩⟩, (FQ.progression (3 / 4) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run472_checked : Entry.check ⟨310, 404, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨63, 79⟩, ⟨33, 39⟩⟩, (FQ.progression (63 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run473_checked : Entry.check ⟨310, 405, ⟨1, 399999999⟩, ⟨0, 17, 3, ⟨33, 39⟩, ⟨17, 19⟩⟩, [⟨33, 39⟩, ⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem run474_checked : Entry.check ⟨313, 406, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run475_checked : Entry.check ⟨313, 407, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨57, 79⟩, ⟨3, 3⟩⟩, (FQ.progression (57 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run476_checked : Entry.check ⟨313, 408, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨3, 3⟩, ⟨63, 79⟩⟩, (FQ.progression (3 / 4) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run477_checked : Entry.check ⟨316, 409, ⟨1, 399999999⟩, ⟨0, 10, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, (FQ.progression (13 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run478_checked : Entry.check ⟨316, 410, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩, ⟨29, 39⟩]⟩ = true := by decide +kernel
theorem run479_checked : Entry.check ⟨319, 411, ⟨1, 399999999⟩, ⟨0, 10, 5, ⟨47, 79⟩, ⟨51, 79⟩⟩, (FQ.progression (47 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run480_checked : Entry.check ⟨319, 412, ⟨1, 399999999⟩, ⟨0, 14, 5, ⟨51, 79⟩, ⟨11, 15⟩⟩, (FQ.progression (51 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run481_checked : Entry.check ⟨325, 413, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨9, 15⟩, ⟨5, 7⟩⟩, (FQ.progression (9 / 16) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run482_checked : Entry.check ⟨328, 414, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run483_checked : Entry.check ⟨328, 415, ⟨1, 399999999⟩, ⟨0, 6, 4, ⟨11, 19⟩, ⟨47, 79⟩⟩, (FQ.progression (11 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run484_checked : Entry.check ⟨331, 416, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨19, 39⟩, ⟨21, 39⟩⟩, (FQ.progression (19 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run485_checked : Entry.check ⟨337, 417, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run486_checked : Entry.check ⟨340, 418, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem entries16_checked : entries16.all Entry.check = true := by
  simp only [entries16, List.all_cons, List.all_nil, run455_checked, run456_checked, run457_checked, run458_checked, run459_checked, run460_checked, run461_checked, run462_checked, run463_checked, run464_checked, run465_checked, run466_checked, run467_checked, run468_checked, run469_checked, run470_checked, run471_checked, run472_checked, run473_checked, run474_checked, run475_checked, run476_checked, run477_checked, run478_checked, run479_checked, run480_checked, run481_checked, run482_checked, run483_checked, run484_checked, run485_checked, run486_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run487_checked : Entry.check ⟨340, 419, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run488_checked : Entry.check ⟨344, 420, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨3, 7⟩, ⟨7, 15⟩⟩, (FQ.progression (3 / 8) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run489_checked : Entry.check ⟨344, 421, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run490_checked : Entry.check ⟨345, 422, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 19⟩, ⟨29, 79⟩⟩, [⟨7, 19⟩, ⟨29, 79⟩]⟩ = true := by decide +kernel
theorem run491_checked : Entry.check ⟨345, 423, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run492_checked : Entry.check ⟨345, 424, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run493_checked : Entry.check ⟨347, 425, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run494_checked : Entry.check ⟨348, 426, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 9⟩, ⟨13, 39⟩⟩, [⟨3, 9⟩, ⟨5, 15⟩, ⟨13, 39⟩]⟩ = true := by decide +kernel
theorem run495_checked : Entry.check ⟨348, 427, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨13, 39⟩, ⟨29, 79⟩⟩, (FQ.progression (13 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run496_checked : Entry.check ⟨350, 428, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 39⟩, ⟨23, 79⟩⟩, [⟨11, 39⟩, ⟨23, 79⟩]⟩ = true := by decide +kernel
theorem run497_checked : Entry.check ⟨350, 429, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run498_checked : Entry.check ⟨350, 430, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run499_checked : Entry.check ⟨352, 431, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨21, 79⟩, ⟨3, 9⟩⟩, (FQ.progression (21 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run500_checked : Entry.check ⟨355, 432, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run501_checked : Entry.check ⟨357, 433, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨17, 79⟩, ⟨19, 79⟩⟩, [⟨17, 79⟩, ⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run502_checked : Entry.check ⟨357, 434, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨19, 79⟩, ⟨21, 79⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩, ⟨21, 79⟩]⟩ = true := by decide +kernel
theorem run503_checked : Entry.check ⟨359, 435, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨17, 79⟩, ⟨19, 79⟩⟩, [⟨17, 79⟩, ⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run504_checked : Entry.check ⟨359, 436, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run505_checked : Entry.check ⟨362, 437, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run506_checked : Entry.check ⟨365, 438, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨7, 39⟩, ⟨1, 4⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run507_checked : Entry.check ⟨366, 439, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run508_checked : Entry.check ⟨366, 440, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨13, 79⟩, ⟨3, 15⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run509_checked : Entry.check ⟨368, 441, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨11, 79⟩, ⟨13, 79⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run510_checked : Entry.check ⟨368, 442, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run511_checked : Entry.check ⟨370, 443, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run512_checked : Entry.check ⟨372, 444, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run513_checked : Entry.check ⟨373, 445, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run514_checked : Entry.check ⟨374, 446, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run515_checked : Entry.check ⟨375, 447, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run516_checked : Entry.check ⟨376, 448, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 79⟩, ⟨1, 19⟩⟩, [⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run517_checked : Entry.check ⟨376, 449, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 19⟩, ⟨1, 15⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run518_checked : Entry.check ⟨377, 450, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem entries17_checked : entries17.all Entry.check = true := by
  simp only [entries17, List.all_cons, List.all_nil, run487_checked, run488_checked, run489_checked, run490_checked, run491_checked, run492_checked, run493_checked, run494_checked, run495_checked, run496_checked, run497_checked, run498_checked, run499_checked, run500_checked, run501_checked, run502_checked, run503_checked, run504_checked, run505_checked, run506_checked, run507_checked, run508_checked, run509_checked, run510_checked, run511_checked, run512_checked, run513_checked, run514_checked, run515_checked, run516_checked, run517_checked, run518_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run519_checked : Entry.check ⟨377, 451, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 39⟩, ⟨1, 19⟩⟩, [⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run520_checked : Entry.check ⟨378, 452, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 39⟩, ⟨3, 79⟩⟩, [⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run521_checked : Entry.check ⟨414, 453, ⟨1, 399999999⟩, ⟨0, 18, 39, ⟨253, 79⟩, ⟨291, 79⟩⟩, (FQ.progression (253 / 80) (1 / 80) 39)⟩ = true := by decide +kernel
theorem run522_checked : Entry.check ⟨416, 454, ⟨1, 399999999⟩, ⟨0, 39, 31, ⟨117, 39⟩, ⟨33, 9⟩⟩, (FQ.progression (117 / 40) (1 / 80) 31)⟩ = true := by decide +kernel
theorem run523_checked : Entry.check ⟨418, 455, ⟨1, 399999999⟩, ⟨0, 19, 44, ⟨43, 15⟩, ⟨129, 39⟩⟩, (FQ.progression (43 / 16) (1 / 80) 44)⟩ = true := by decide +kernel
theorem run524_checked : Entry.check ⟨421, 456, ⟨1, 399999999⟩, ⟨0, 27, 47, ⟨103, 39⟩, ⟨63, 19⟩⟩, (FQ.progression (103 / 40) (1 / 80) 47)⟩ = true := by decide +kernel
theorem run525_checked : Entry.check ⟨423, 457, ⟨1, 399999999⟩, ⟨0, 6, 13, ⟨161, 79⟩, ⟨173, 79⟩⟩, (FQ.progression (161 / 80) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run526_checked : Entry.check ⟨423, 457, ⟨1, 399999999⟩, ⟨0, 19, 3, ⟨87, 39⟩, ⟨11, 4⟩⟩, [⟨87, 39⟩, ⟨35, 15⟩, ⟨11, 4⟩]⟩ = true := by decide +kernel
theorem run527_checked : Entry.check ⟨423, 458, ⟨1, 399999999⟩, ⟨0, 21, 7, ⟨11, 4⟩, ⟨91, 39⟩⟩, (FQ.progression (11 / 5) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run528_checked : Entry.check ⟨423, 458, ⟨1, 399999999⟩, ⟨0, 29, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run529_checked : Entry.check ⟨423, 458, ⟨1, 399999999⟩, ⟨0, 37, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run530_checked : Entry.check ⟨423, 458, ⟨1, 399999999⟩, ⟨0, 47, 5, ⟨101, 39⟩, ⟨103, 39⟩⟩, (FQ.progression (101 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run531_checked : Entry.check ⟨423, 459, ⟨1, 399999999⟩, ⟨0, 51, 40, ⟨103, 39⟩, ⟨49, 15⟩⟩, (FQ.progression (103 / 40) (1 / 80) 40)⟩ = true := by decide +kernel
theorem run532_checked : Entry.check ⟨423, 460, ⟨1, 399999999⟩, ⟨0, 90, 5, ⟨49, 15⟩, ⟨249, 79⟩⟩, (FQ.progression (49 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run533_checked : Entry.check ⟨424, 461, ⟨1, 399999999⟩, ⟨0, 0, 41, ⟨21, 4⟩, ⟨47, 9⟩⟩, (FQ.progression (21 / 5) (1 / 80) 41)⟩ = true := by decide +kernel
theorem run534_checked : Entry.check ⟨424, 462, ⟨1, 399999999⟩, ⟨0, 40, 2, ⟨47, 9⟩, ⟨377, 79⟩⟩, [⟨47, 9⟩, ⟨377, 79⟩]⟩ = true := by decide +kernel
theorem entries18_checked : entries18.all Entry.check = true := by
  simp only [entries18, List.all_cons, List.all_nil, run519_checked, run520_checked, run521_checked, run522_checked, run523_checked, run524_checked, run525_checked, run526_checked, run527_checked, run528_checked, run529_checked, run530_checked, run531_checked, run532_checked, run533_checked, run534_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run535_checked : Entry.check ⟨426, 463, ⟨1, 399999999⟩, ⟨0, 10, 6, ⟨77, 39⟩, ⟨159, 79⟩⟩, (FQ.progression (77 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run536_checked : Entry.check ⟨426, 464, ⟨1, 399999999⟩, ⟨0, 15, 19, ⟨159, 79⟩, ⟨177, 79⟩⟩, (FQ.progression (159 / 80) (1 / 80) 19)⟩ = true := by decide +kernel
theorem run537_checked : Entry.check ⟨427, 464, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run538_checked : Entry.check ⟨428, 464, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run539_checked : Entry.check ⟨429, 464, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run540_checked : Entry.check ⟨430, 465, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run541_checked : Entry.check ⟨431, 466, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run542_checked : Entry.check ⟨432, 466, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨47, 15⟩, ⟨59, 19⟩⟩, [⟨47, 15⟩, ⟨59, 19⟩]⟩ = true := by decide +kernel
theorem run543_checked : Entry.check ⟨434, 467, ⟨1, 399999999⟩, ⟨0, 17, 25, ⟨149, 79⟩, ⟨173, 79⟩⟩, (FQ.progression (149 / 80) (1 / 80) 25)⟩ = true := by decide +kernel
theorem run544_checked : Entry.check ⟨435, 468, ⟨1, 399999999⟩, ⟨0, 0, 28, ⟨139, 39⟩, ⟨61, 15⟩⟩, (FQ.progression (139 / 40) (1 / 80) 28)⟩ = true := by decide +kernel
theorem run545_checked : Entry.check ⟨437, 469, ⟨1, 399999999⟩, ⟨0, 21, 26, ⟨143, 79⟩, ⟨21, 9⟩⟩, (FQ.progression (143 / 80) (1 / 80) 26)⟩ = true := by decide +kernel
theorem run546_checked : Entry.check ⟨438, 470, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨193, 79⟩, ⟨199, 79⟩⟩, (FQ.progression (193 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run547_checked : Entry.check ⟨438, 471, ⟨1, 399999999⟩, ⟨0, 6, 9, ⟨199, 79⟩, ⟨207, 79⟩⟩, (FQ.progression (199 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run548_checked : Entry.check ⟨440, 472, ⟨1, 399999999⟩, ⟨0, 25, 17, ⟨69, 39⟩, ⟨77, 39⟩⟩, (FQ.progression (69 / 40) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run549_checked : Entry.check ⟨440, 473, ⟨1, 399999999⟩, ⟨0, 41, 11, ⟨77, 39⟩, ⟨41, 19⟩⟩, (FQ.progression (77 / 40) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run550_checked : Entry.check ⟨442, 474, ⟨1, 399999999⟩, ⟨0, 14, 6, ⟨119, 79⟩, ⟨31, 19⟩⟩, (FQ.progression (119 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run551_checked : Entry.check ⟨442, 475, ⟨1, 399999999⟩, ⟨0, 19, 13, ⟨31, 19⟩, ⟨17, 9⟩⟩, (FQ.progression (31 / 20) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run552_checked : Entry.check ⟨442, 476, ⟨1, 399999999⟩, ⟨0, 31, 4, ⟨17, 9⟩, ⟨139, 79⟩⟩, (FQ.progression (17 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run553_checked : Entry.check ⟨442, 477, ⟨1, 399999999⟩, ⟨0, 34, 23, ⟨139, 79⟩, ⟨161, 79⟩⟩, (FQ.progression (139 / 80) (1 / 80) 23)⟩ = true := by decide +kernel
theorem run554_checked : Entry.check ⟨443, 477, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨177, 79⟩, ⟨183, 79⟩⟩, (FQ.progression (177 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run555_checked : Entry.check ⟨443, 478, ⟨1, 399999999⟩, ⟨0, 6, 18, ⟨183, 79⟩, ⟨5, 1⟩⟩, (FQ.progression (183 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run556_checked : Entry.check ⟨444, 478, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨103, 39⟩, ⟨27, 9⟩⟩, (FQ.progression (103 / 40) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run557_checked : Entry.check ⟨444, 479, ⟨1, 399999999⟩, ⟨0, 10, 6, ⟨27, 9⟩, ⟨221, 79⟩⟩, (FQ.progression (27 / 10) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run558_checked : Entry.check ⟨445, 480, ⟨1, 399999999⟩, ⟨0, 17, 16, ⟨57, 39⟩, ⟨129, 79⟩⟩, (FQ.progression (57 / 40) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run559_checked : Entry.check ⟨447, 481, ⟨1, 399999999⟩, ⟨0, 13, 10, ⟨103, 79⟩, ⟨7, 4⟩⟩, (FQ.progression (103 / 80) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run560_checked : Entry.check ⟨447, 482, ⟨1, 399999999⟩, ⟨0, 22, 14, ⟨7, 4⟩, ⟨25, 15⟩⟩, (FQ.progression (7 / 5) (1 / 80) 14)⟩ = true := by decide +kernel
theorem entries19_checked : entries19.all Entry.check = true := by
  simp only [entries19, List.all_cons, List.all_nil, run535_checked, run536_checked, run537_checked, run538_checked, run539_checked, run540_checked, run541_checked, run542_checked, run543_checked, run544_checked, run545_checked, run546_checked, run547_checked, run548_checked, run549_checked, run550_checked, run551_checked, run552_checked, run553_checked, run554_checked, run555_checked, run556_checked, run557_checked, run558_checked, run559_checked, run560_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run561_checked : Entry.check ⟨449, 483, ⟨1, 399999999⟩, ⟨0, 16, 11, ⟨99, 79⟩, ⟨109, 79⟩⟩, (FQ.progression (99 / 80) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run562_checked : Entry.check ⟨449, 484, ⟨1, 399999999⟩, ⟨0, 26, 6, ⟨109, 79⟩, ⟨57, 39⟩⟩, (FQ.progression (109 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run563_checked : Entry.check ⟨451, 485, ⟨1, 399999999⟩, ⟨0, 14, 7, ⟨91, 79⟩, ⟨97, 79⟩⟩, (FQ.progression (91 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run564_checked : Entry.check ⟨451, 486, ⟨1, 399999999⟩, ⟨0, 20, 4, ⟨97, 79⟩, ⟨5, 3⟩⟩, (FQ.progression (97 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run565_checked : Entry.check ⟨451, 487, ⟨1, 399999999⟩, ⟨0, 23, 7, ⟨5, 3⟩, ⟨53, 39⟩⟩, (FQ.progression (5 / 4) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run566_checked : Entry.check ⟨451, 488, ⟨1, 399999999⟩, ⟨0, 29, 2, ⟨53, 39⟩, ⟨107, 79⟩⟩, [⟨53, 39⟩, ⟨107, 79⟩]⟩ = true := by decide +kernel
theorem run567_checked : Entry.check ⟨451, 489, ⟨1, 399999999⟩, ⟨0, 30, 5, ⟨107, 79⟩, ⟨111, 79⟩⟩, (FQ.progression (107 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run568_checked : Entry.check ⟨452, 490, ⟨1, 399999999⟩, ⟨0, 12, 5, ⟨21, 19⟩, ⟨11, 9⟩⟩, (FQ.progression (21 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run569_checked : Entry.check ⟨452, 491, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨11, 9⟩, ⟨9, 7⟩⟩, [⟨11, 9⟩, ⟨89, 79⟩, ⟨9, 7⟩]⟩ = true := by decide +kernel
theorem run570_checked : Entry.check ⟨452, 492, ⟨1, 399999999⟩, ⟨0, 18, 6, ⟨9, 7⟩, ⟨19, 15⟩⟩, (FQ.progression (9 / 8) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run571_checked : Entry.check ⟨452, 493, ⟨1, 399999999⟩, ⟨0, 23, 2, ⟨19, 15⟩, ⟨6, 4⟩⟩, [⟨19, 15⟩, ⟨6, 4⟩]⟩ = true := by decide +kernel
theorem run572_checked : Entry.check ⟨452, 494, ⟨1, 399999999⟩, ⟨0, 24, 4, ⟨6, 4⟩, ⟨99, 79⟩⟩, (FQ.progression (6 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run573_checked : Entry.check ⟨453, 495, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨79, 79⟩, ⟨81, 79⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩, ⟨81, 79⟩]⟩ = true := by decide +kernel
theorem run574_checked : Entry.check ⟨453, 496, ⟨1, 399999999⟩, ⟨0, 15, 6, ⟨81, 79⟩, ⟨43, 39⟩⟩, (FQ.progression (81 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run575_checked : Entry.check ⟨453, 497, ⟨1, 399999999⟩, ⟨0, 20, 7, ⟨43, 39⟩, ⟨23, 19⟩⟩, (FQ.progression (43 / 40) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run576_checked : Entry.check ⟨454, 498, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨37, 39⟩, ⟨19, 19⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩]⟩ = true := by decide +kernel
theorem run577_checked : Entry.check ⟨454, 499, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨19, 19⟩, ⟨79, 79⟩⟩, (FQ.progression (19 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run578_checked : Entry.check ⟨454, 500, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨79, 79⟩, ⟨1, 0⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩]⟩ = true := by decide +kernel
theorem run579_checked : Entry.check ⟨454, 501, ⟨1, 399999999⟩, ⟨0, 18, 5, ⟨1, 0⟩, ⟨21, 19⟩⟩, (FQ.progression (1 / 1) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run580_checked : Entry.check ⟨454, 502, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨21, 19⟩, ⟨17, 15⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run581_checked : Entry.check ⟨455, 503, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨127, 79⟩, ⟨131, 79⟩⟩, (FQ.progression (127 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run582_checked : Entry.check ⟨456, 504, ⟨1, 399999999⟩, ⟨0, 0, 26, ⟨213, 79⟩, ⟨119, 39⟩⟩, (FQ.progression (213 / 80) (1 / 80) 26)⟩ = true := by decide +kernel
theorem run583_checked : Entry.check ⟨457, 504, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨51, 15⟩, ⟨263, 79⟩⟩, (FQ.progression (51 / 16) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run584_checked : Entry.check ⟨457, 505, ⟨1, 399999999⟩, ⟨0, 8, 17, ⟨263, 79⟩, ⟨279, 79⟩⟩, (FQ.progression (263 / 80) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run585_checked : Entry.check ⟨458, 506, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run586_checked : Entry.check ⟨458, 507, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨7, 7⟩, ⟨9, 9⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run587_checked : Entry.check ⟨458, 508, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨9, 9⟩, ⟨37, 39⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run588_checked : Entry.check ⟨458, 509, ⟨1, 399999999⟩, ⟨0, 18, 5, ⟨37, 39⟩, ⟨39, 39⟩⟩, (FQ.progression (37 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run589_checked : Entry.check ⟨458, 510, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run590_checked : Entry.check ⟨459, 511, ⟨1, 399999999⟩, ⟨0, 0, 34, ⟨19, 4⟩, ⟨337, 79⟩⟩, (FQ.progression (19 / 5) (1 / 80) 34)⟩ = true := by decide +kernel
theorem run591_checked : Entry.check ⟨461, 512, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨63, 79⟩, ⟨33, 39⟩⟩, (FQ.progression (63 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run592_checked : Entry.check ⟨461, 513, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨33, 39⟩, ⟨17, 19⟩⟩, [⟨33, 39⟩, ⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem entries20_checked : entries20.all Entry.check = true := by
  simp only [entries20, List.all_cons, List.all_nil, run561_checked, run562_checked, run563_checked, run564_checked, run565_checked, run566_checked, run567_checked, run568_checked, run569_checked, run570_checked, run571_checked, run572_checked, run573_checked, run574_checked, run575_checked, run576_checked, run577_checked, run578_checked, run579_checked, run580_checked, run581_checked, run582_checked, run583_checked, run584_checked, run585_checked, run586_checked, run587_checked, run588_checked, run589_checked, run590_checked, run591_checked, run592_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run593_checked : Entry.check ⟨461, 514, ⟨1, 399999999⟩, ⟨0, 16, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run594_checked : Entry.check ⟨461, 515, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨69, 79⟩, ⟨7, 7⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run595_checked : Entry.check ⟨461, 516, ⟨1, 399999999⟩, ⟨0, 18, 3, ⟨7, 7⟩, ⟨9, 9⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run596_checked : Entry.check ⟨462, 517, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨69, 39⟩, ⟨143, 79⟩⟩, (FQ.progression (69 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run597_checked : Entry.check ⟨463, 518, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨39, 19⟩, ⟨2, 0⟩⟩, (FQ.progression (39 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run598_checked : Entry.check ⟨465, 519, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨59, 79⟩, ⟨61, 79⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run599_checked : Entry.check ⟨465, 520, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, (FQ.progression (61 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run600_checked : Entry.check ⟨465, 521, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨4, 4⟩, ⟨33, 39⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩]⟩ = true := by decide +kernel
theorem run601_checked : Entry.check ⟨465, 522, ⟨1, 399999999⟩, ⟨0, 18, 3, ⟨33, 39⟩, ⟨17, 19⟩⟩, [⟨33, 39⟩, ⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem run602_checked : Entry.check ⟨466, 523, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨27, 39⟩, ⟨57, 79⟩⟩, (FQ.progression (27 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run603_checked : Entry.check ⟨466, 524, ⟨1, 399999999⟩, ⟨0, 15, 5, ⟨57, 79⟩, ⟨61, 79⟩⟩, (FQ.progression (57 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run604_checked : Entry.check ⟨466, 525, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨61, 79⟩, ⟨31, 39⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run605_checked : Entry.check ⟨466, 526, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨31, 39⟩, ⟨63, 79⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run606_checked : Entry.check ⟨469, 527, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, (FQ.progression (13 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run607_checked : Entry.check ⟨469, 528, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩, ⟨29, 39⟩]⟩ = true := by decide +kernel
theorem run608_checked : Entry.check ⟨470, 529, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨57, 19⟩, ⟨59, 19⟩⟩, (FQ.progression (57 / 20) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run609_checked : Entry.check ⟨470, 530, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨59, 19⟩, ⟨239, 79⟩⟩, (FQ.progression (59 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run610_checked : Entry.check ⟨470, 531, ⟨1, 399999999⟩, ⟨0, 11, 18, ⟨239, 79⟩, ⟨16, 4⟩⟩, (FQ.progression (239 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run611_checked : Entry.check ⟨472, 532, ⟨1, 399999999⟩, ⟨0, 6, 4, ⟨3, 4⟩, ⟨51, 79⟩⟩, (FQ.progression (3 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run612_checked : Entry.check ⟨472, 533, ⟨1, 399999999⟩, ⟨0, 9, 4, ⟨51, 79⟩, ⟨27, 39⟩⟩, (FQ.progression (51 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run613_checked : Entry.check ⟨472, 534, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨27, 39⟩, ⟨11, 15⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run614_checked : Entry.check ⟨474, 535, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run615_checked : Entry.check ⟨474, 536, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run616_checked : Entry.check ⟨475, 537, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run617_checked : Entry.check ⟨475, 538, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨11, 19⟩, ⟨3, 4⟩⟩, (FQ.progression (11 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run618_checked : Entry.check ⟨477, 539, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨39, 79⟩, ⟨21, 39⟩⟩, (FQ.progression (39 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run619_checked : Entry.check ⟨479, 540, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run620_checked : Entry.check ⟨481, 541, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run621_checked : Entry.check ⟨482, 542, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run622_checked : Entry.check ⟨482, 543, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run623_checked : Entry.check ⟨483, 544, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run624_checked : Entry.check ⟨483, 545, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem entries21_checked : entries21.all Entry.check = true := by
  simp only [entries21, List.all_cons, List.all_nil, run593_checked, run594_checked, run595_checked, run596_checked, run597_checked, run598_checked, run599_checked, run600_checked, run601_checked, run602_checked, run603_checked, run604_checked, run605_checked, run606_checked, run607_checked, run608_checked, run609_checked, run610_checked, run611_checked, run612_checked, run613_checked, run614_checked, run615_checked, run616_checked, run617_checked, run618_checked, run619_checked, run620_checked, run621_checked, run622_checked, run623_checked, run624_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run625_checked : Entry.check ⟨484, 546, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run626_checked : Entry.check ⟨486, 547, ⟨1, 399999999⟩, ⟨0, 4, 3, ⟨27, 79⟩, ⟨29, 79⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩]⟩ = true := by decide +kernel
theorem run627_checked : Entry.check ⟨488, 548, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run628_checked : Entry.check ⟨488, 549, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run629_checked : Entry.check ⟨490, 550, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨21, 79⟩, ⟨23, 79⟩⟩, [⟨21, 79⟩, ⟨11, 39⟩, ⟨23, 79⟩]⟩ = true := by decide +kernel
theorem run630_checked : Entry.check ⟨492, 551, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run631_checked : Entry.check ⟨494, 552, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨19, 79⟩, ⟨21, 79⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩, ⟨21, 79⟩]⟩ = true := by decide +kernel
theorem run632_checked : Entry.check ⟨496, 553, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 4⟩, ⟨19, 79⟩⟩, (FQ.progression (1 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run633_checked : Entry.check ⟨497, 554, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 15⟩, ⟨1, 4⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run634_checked : Entry.check ⟨498, 555, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run635_checked : Entry.check ⟨499, 556, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run636_checked : Entry.check ⟨501, 557, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run637_checked : Entry.check ⟨501, 558, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨3, 19⟩, ⟨7, 39⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run638_checked : Entry.check ⟨502, 559, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run639_checked : Entry.check ⟨505, 560, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨1, 19⟩, ⟨1, 15⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run640_checked : Entry.check ⟨528, 561, ⟨1, 399999999⟩, ⟨0, 0, 57, ⟨297, 79⟩, ⟨353, 79⟩⟩, (FQ.progression (297 / 80) (1 / 80) 57)⟩ = true := by decide +kernel
theorem run641_checked : Entry.check ⟨531, 562, ⟨1, 399999999⟩, ⟨0, 0, 31, ⟨67, 19⟩, ⟨149, 39⟩⟩, (FQ.progression (67 / 20) (1 / 80) 31)⟩ = true := by decide +kernel
theorem run642_checked : Entry.check ⟨540, 563, ⟨1, 399999999⟩, ⟨0, 36, 22, ⟨47, 15⟩, ⟨16, 4⟩⟩, (FQ.progression (47 / 16) (1 / 80) 22)⟩ = true := by decide +kernel
theorem run643_checked : Entry.check ⟨543, 564, ⟨1, 399999999⟩, ⟨0, 8, 33, ⟨109, 39⟩, ⟨25, 7⟩⟩, (FQ.progression (109 / 40) (1 / 80) 33)⟩ = true := by decide +kernel
theorem run644_checked : Entry.check ⟨545, 565, ⟨1, 399999999⟩, ⟨0, 45, 34, ⟨211, 79⟩, ⟨61, 19⟩⟩, (FQ.progression (211 / 80) (1 / 80) 34)⟩ = true := by decide +kernel
theorem run645_checked : Entry.check ⟨548, 566, ⟨1, 399999999⟩, ⟨0, 14, 8, ⟨83, 39⟩, ⟨173, 79⟩⟩, (FQ.progression (83 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run646_checked : Entry.check ⟨548, 566, ⟨1, 399999999⟩, ⟨0, 22, 9, ⟨87, 39⟩, ⟨91, 39⟩⟩, (FQ.progression (87 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run647_checked : Entry.check ⟨548, 566, ⟨1, 399999999⟩, ⟨0, 32, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run648_checked : Entry.check ⟨548, 566, ⟨1, 399999999⟩, ⟨0, 40, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run649_checked : Entry.check ⟨548, 567, ⟨1, 399999999⟩, ⟨0, 50, 5, ⟨101, 39⟩, ⟨103, 39⟩⟩, (FQ.progression (101 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run650_checked : Entry.check ⟨548, 568, ⟨1, 399999999⟩, ⟨0, 54, 36, ⟨103, 39⟩, ⟨241, 79⟩⟩, (FQ.progression (103 / 40) (1 / 80) 36)⟩ = true := by decide +kernel
theorem entries22_checked : entries22.all Entry.check = true := by
  simp only [entries22, List.all_cons, List.all_nil, run625_checked, run626_checked, run627_checked, run628_checked, run629_checked, run630_checked, run631_checked, run632_checked, run633_checked, run634_checked, run635_checked, run636_checked, run637_checked, run638_checked, run639_checked, run640_checked, run641_checked, run642_checked, run643_checked, run644_checked, run645_checked, run646_checked, run647_checked, run648_checked, run649_checked, run650_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run651_checked : Entry.check ⟨550, 569, ⟨1, 399999999⟩, ⟨0, 19, 17, ⟨79, 39⟩, ⟨87, 39⟩⟩, (FQ.progression (79 / 40) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run652_checked : Entry.check ⟨551, 569, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run653_checked : Entry.check ⟨552, 570, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run654_checked : Entry.check ⟨553, 570, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run655_checked : Entry.check ⟨554, 571, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run656_checked : Entry.check ⟨555, 572, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run657_checked : Entry.check ⟨556, 572, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨47, 15⟩, ⟨237, 79⟩⟩, [⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩]⟩ = true := by decide +kernel
theorem run658_checked : Entry.check ⟨559, 573, ⟨1, 399999999⟩, ⟨0, 19, 18, ⟨37, 19⟩, ⟨33, 15⟩⟩, (FQ.progression (37 / 20) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run659_checked : Entry.check ⟨560, 573, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨83, 39⟩, ⟨21, 9⟩⟩, [⟨83, 39⟩, ⟨167, 79⟩, ⟨21, 9⟩]⟩ = true := by decide +kernel
theorem run660_checked : Entry.check ⟨560, 574, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨21, 9⟩, ⟨17, 7⟩⟩, [⟨21, 9⟩, ⟨169, 79⟩, ⟨17, 7⟩]⟩ = true := by decide +kernel
theorem run661_checked : Entry.check ⟨561, 574, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨47, 19⟩, ⟨189, 79⟩⟩, [⟨47, 19⟩, ⟨189, 79⟩]⟩ = true := by decide +kernel
theorem run662_checked : Entry.check ⟨563, 575, ⟨1, 399999999⟩, ⟨0, 25, 7, ⟨29, 15⟩, ⟨151, 79⟩⟩, (FQ.progression (29 / 16) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run663_checked : Entry.check ⟨563, 576, ⟨1, 399999999⟩, ⟨0, 31, 11, ⟨151, 79⟩, ⟨161, 79⟩⟩, (FQ.progression (151 / 80) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run664_checked : Entry.check ⟨564, 576, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨81, 39⟩, ⟨167, 79⟩⟩, (FQ.progression (81 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run665_checked : Entry.check ⟨566, 577, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨133, 79⟩, ⟨67, 39⟩⟩, [⟨133, 79⟩, ⟨67, 39⟩]⟩ = true := by decide +kernel
theorem run666_checked : Entry.check ⟨566, 577, ⟨1, 399999999⟩, ⟨0, 27, 3, ⟨69, 39⟩, ⟨7, 3⟩⟩, [⟨69, 39⟩, ⟨139, 79⟩, ⟨7, 3⟩]⟩ = true := by decide +kernel
theorem run667_checked : Entry.check ⟨566, 578, ⟨1, 399999999⟩, ⟨0, 32, 21, ⟨143, 79⟩, ⟨163, 79⟩⟩, (FQ.progression (143 / 80) (1 / 80) 21)⟩ = true := by decide +kernel
theorem run668_checked : Entry.check ⟨567, 579, ⟨1, 399999999⟩, ⟨0, 17, 19, ⟨3, 1⟩, ⟨69, 39⟩⟩, (FQ.progression (3 / 2) (1 / 80) 19)⟩ = true := by decide +kernel
theorem run669_checked : Entry.check ⟨567, 580, ⟨1, 399999999⟩, ⟨0, 35, 17, ⟨69, 39⟩, ⟨77, 39⟩⟩, (FQ.progression (69 / 40) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run670_checked : Entry.check ⟨568, 580, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨31, 15⟩, ⟨159, 79⟩⟩, (FQ.progression (31 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run671_checked : Entry.check ⟨570, 581, ⟨1, 399999999⟩, ⟨0, 19, 14, ⟨23, 15⟩, ⟨8, 4⟩⟩, (FQ.progression (23 / 16) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run672_checked : Entry.check ⟨571, 581, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨13, 7⟩, ⟨33, 19⟩⟩, [⟨13, 7⟩, ⟨131, 79⟩, ⟨33, 19⟩]⟩ = true := by decide +kernel
theorem run673_checked : Entry.check ⟨571, 582, ⟨1, 399999999⟩, ⟨0, 2, 6, ⟨33, 19⟩, ⟨137, 79⟩⟩, (FQ.progression (33 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run674_checked : Entry.check ⟨573, 583, ⟨1, 399999999⟩, ⟨0, 13, 7, ⟨51, 39⟩, ⟨27, 19⟩⟩, (FQ.progression (51 / 40) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run675_checked : Entry.check ⟨573, 584, ⟨1, 399999999⟩, ⟨0, 19, 4, ⟨27, 19⟩, ⟨111, 79⟩⟩, (FQ.progression (27 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run676_checked : Entry.check ⟨573, 585, ⟨1, 399999999⟩, ⟨0, 22, 9, ⟨111, 79⟩, ⟨119, 79⟩⟩, (FQ.progression (111 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run677_checked : Entry.check ⟨573, 586, ⟨1, 399999999⟩, ⟨0, 30, 6, ⟨119, 79⟩, ⟨31, 19⟩⟩, (FQ.progression (119 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run678_checked : Entry.check ⟨574, 586, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨63, 39⟩, ⟨13, 7⟩⟩, (FQ.progression (63 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run679_checked : Entry.check ⟨574, 587, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨13, 7⟩, ⟨67, 39⟩⟩, (FQ.progression (13 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run680_checked : Entry.check ⟨575, 588, ⟨1, 399999999⟩, ⟨0, 17, 12, ⟨5, 3⟩, ⟨111, 79⟩⟩, (FQ.progression (5 / 4) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run681_checked : Entry.check ⟨575, 589, ⟨1, 399999999⟩, ⟨0, 28, 3, ⟨111, 79⟩, ⟨113, 79⟩⟩, [⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run682_checked : Entry.check ⟨576, 590, ⟨1, 399999999⟩, ⟨0, 15, 7, ⟨91, 79⟩, ⟨97, 79⟩⟩, (FQ.progression (91 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem entries23_checked : entries23.all Entry.check = true := by
  simp only [entries23, List.all_cons, List.all_nil, run651_checked, run652_checked, run653_checked, run654_checked, run655_checked, run656_checked, run657_checked, run658_checked, run659_checked, run660_checked, run661_checked, run662_checked, run663_checked, run664_checked, run665_checked, run666_checked, run667_checked, run668_checked, run669_checked, run670_checked, run671_checked, run672_checked, run673_checked, run674_checked, run675_checked, run676_checked, run677_checked, run678_checked, run679_checked, run680_checked, run681_checked, run682_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run683_checked : Entry.check ⟨576, 591, ⟨1, 399999999⟩, ⟨0, 21, 10, ⟨97, 79⟩, ⟨53, 39⟩⟩, (FQ.progression (97 / 80) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run684_checked : Entry.check ⟨576, 592, ⟨1, 399999999⟩, ⟨0, 30, 4, ⟨53, 39⟩, ⟨109, 79⟩⟩, (FQ.progression (53 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run685_checked : Entry.check ⟨577, 593, ⟨1, 399999999⟩, ⟨0, 13, 5, ⟨21, 19⟩, ⟨11, 9⟩⟩, (FQ.progression (21 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run686_checked : Entry.check ⟨577, 594, ⟨1, 399999999⟩, ⟨0, 17, 7, ⟨11, 9⟩, ⟨47, 39⟩⟩, (FQ.progression (11 / 10) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run687_checked : Entry.check ⟨577, 595, ⟨1, 399999999⟩, ⟨0, 23, 6, ⟨47, 39⟩, ⟨99, 79⟩⟩, (FQ.progression (47 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run688_checked : Entry.check ⟨578, 596, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨79, 79⟩, ⟨81, 79⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩, ⟨81, 79⟩]⟩ = true := by decide +kernel
theorem run689_checked : Entry.check ⟨578, 597, ⟨1, 399999999⟩, ⟨0, 15, 6, ⟨81, 79⟩, ⟨43, 39⟩⟩, (FQ.progression (81 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run690_checked : Entry.check ⟨578, 598, ⟨1, 399999999⟩, ⟨0, 20, 7, ⟨43, 39⟩, ⟨23, 19⟩⟩, (FQ.progression (43 / 40) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run691_checked : Entry.check ⟨579, 599, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨37, 39⟩, ⟨19, 19⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩]⟩ = true := by decide +kernel
theorem run692_checked : Entry.check ⟨579, 600, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨19, 19⟩, ⟨79, 79⟩⟩, (FQ.progression (19 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run693_checked : Entry.check ⟨579, 601, ⟨1, 399999999⟩, ⟨0, 17, 5, ⟨79, 79⟩, ⟨83, 79⟩⟩, (FQ.progression (79 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run694_checked : Entry.check ⟨580, 602, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨5, 1⟩, ⟨21, 7⟩⟩, (FQ.progression (5 / 2) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run695_checked : Entry.check ⟨580, 603, ⟨1, 399999999⟩, ⟨0, 10, 54, ⟨21, 7⟩, ⟨263, 79⟩⟩, (FQ.progression (21 / 8) (1 / 80) 54)⟩ = true := by decide +kernel
theorem run696_checked : Entry.check ⟨580, 604, ⟨1, 399999999⟩, ⟨0, 63, 75, ⟨263, 79⟩, ⟨337, 79⟩⟩, (FQ.progression (263 / 80) (1 / 80) 75)⟩ = true := by decide +kernel
theorem run697_checked : Entry.check ⟨582, 605, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run698_checked : Entry.check ⟨582, 606, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run699_checked : Entry.check ⟨582, 607, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨9, 9⟩, ⟨37, 39⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run700_checked : Entry.check ⟨582, 608, ⟨1, 399999999⟩, ⟨0, 17, 5, ⟨37, 39⟩, ⟨39, 39⟩⟩, (FQ.progression (37 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run701_checked : Entry.check ⟨585, 609, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨63, 79⟩, ⟨13, 15⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run702_checked : Entry.check ⟨585, 610, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩, [⟨13, 15⟩, ⟨33, 39⟩, ⟨67, 79⟩]⟩ = true := by decide +kernel
theorem run703_checked : Entry.check ⟨585, 611, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨67, 79⟩, ⟨17, 19⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem run704_checked : Entry.check ⟨585, 612, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run705_checked : Entry.check ⟨585, 613, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨7, 7⟩, ⟨71, 79⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run706_checked : Entry.check ⟨586, 614, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨59, 79⟩, ⟨61, 79⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run707_checked : Entry.check ⟨586, 615, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, (FQ.progression (61 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run708_checked : Entry.check ⟨586, 616, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨4, 4⟩, ⟨67, 79⟩⟩, (FQ.progression (4 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run709_checked : Entry.check ⟨589, 617, ⟨1, 399999999⟩, ⟨0, 8, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run710_checked : Entry.check ⟨589, 618, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨57, 79⟩, ⟨3, 3⟩⟩, (FQ.progression (57 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run711_checked : Entry.check ⟨589, 619, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨3, 3⟩, ⟨31, 39⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run712_checked : Entry.check ⟨589, 620, ⟨1, 399999999⟩, ⟨0, 15, 2, ⟨31, 39⟩, ⟨63, 79⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run713_checked : Entry.check ⟨590, 621, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨321, 79⟩, ⟨21, 4⟩⟩, (FQ.progression (321 / 80) (1 / 80) 16)⟩ = true := by decide +kernel
theorem entries24_checked : entries24.all Entry.check = true := by
  simp only [entries24, List.all_cons, List.all_nil, run683_checked, run684_checked, run685_checked, run686_checked, run687_checked, run688_checked, run689_checked, run690_checked, run691_checked, run692_checked, run693_checked, run694_checked, run695_checked, run696_checked, run697_checked, run698_checked, run699_checked, run700_checked, run701_checked, run702_checked, run703_checked, run704_checked, run705_checked, run706_checked, run707_checked, run708_checked, run709_checked, run710_checked, run711_checked, run712_checked, run713_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run714_checked : Entry.check ⟨590, 622, ⟨1, 399999999⟩, ⟨0, 15, 42, ⟨21, 4⟩, ⟨377, 79⟩⟩, (FQ.progression (21 / 5) (1 / 80) 42)⟩ = true := by decide +kernel
theorem run715_checked : Entry.check ⟨591, 623, ⟨1, 399999999⟩, ⟨0, 8, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, (FQ.progression (13 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run716_checked : Entry.check ⟨591, 624, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨7, 9⟩, ⟨57, 79⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run717_checked : Entry.check ⟨593, 625, ⟨1, 399999999⟩, ⟨0, 7, 5, ⟨47, 79⟩, ⟨51, 79⟩⟩, (FQ.progression (47 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run718_checked : Entry.check ⟨593, 626, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨51, 79⟩, ⟨27, 39⟩⟩, (FQ.progression (51 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run719_checked : Entry.check ⟨593, 627, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨27, 39⟩, ⟨11, 15⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run720_checked : Entry.check ⟨595, 628, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run721_checked : Entry.check ⟨595, 629, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run722_checked : Entry.check ⟨597, 630, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run723_checked : Entry.check ⟨597, 631, ⟨1, 399999999⟩, ⟨0, 7, 4, ⟨11, 19⟩, ⟨47, 79⟩⟩, (FQ.progression (11 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run724_checked : Entry.check ⟨599, 632, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨39, 79⟩, ⟨21, 39⟩⟩, (FQ.progression (39 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run725_checked : Entry.check ⟨601, 633, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run726_checked : Entry.check ⟨602, 634, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run727_checked : Entry.check ⟨603, 635, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run728_checked : Entry.check ⟨603, 636, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run729_checked : Entry.check ⟨604, 637, ⟨1, 399999999⟩, ⟨0, 0, 12, ⟨79, 39⟩, ⟨169, 79⟩⟩, (FQ.progression (79 / 40) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run730_checked : Entry.check ⟨605, 637, ⟨1, 399999999⟩, ⟨0, 0, 13, ⟨177, 79⟩, ⟨189, 79⟩⟩, (FQ.progression (177 / 80) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run731_checked : Entry.check ⟨606, 638, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run732_checked : Entry.check ⟨606, 639, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run733_checked : Entry.check ⟨608, 640, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run734_checked : Entry.check ⟨610, 641, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨13, 39⟩, ⟨7, 19⟩⟩, [⟨13, 39⟩, ⟨27, 79⟩, ⟨7, 19⟩]⟩ = true := by decide +kernel
theorem run735_checked : Entry.check ⟨611, 642, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run736_checked : Entry.check ⟨611, 643, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run737_checked : Entry.check ⟨613, 644, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨21, 79⟩, ⟨23, 79⟩⟩, [⟨21, 79⟩, ⟨11, 39⟩, ⟨23, 79⟩]⟩ = true := by decide +kernel
theorem run738_checked : Entry.check ⟨613, 645, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨23, 79⟩, ⟨3, 9⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩]⟩ = true := by decide +kernel
theorem run739_checked : Entry.check ⟨615, 646, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run740_checked : Entry.check ⟨616, 647, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨19, 79⟩, ⟨21, 79⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩, ⟨21, 79⟩]⟩ = true := by decide +kernel
theorem run741_checked : Entry.check ⟨617, 648, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 4⟩, ⟨19, 79⟩⟩, (FQ.progression (1 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run742_checked : Entry.check ⟨618, 649, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run743_checked : Entry.check ⟨619, 650, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨27, 15⟩, ⟨7, 3⟩⟩, (FQ.progression (27 / 16) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run744_checked : Entry.check ⟨620, 651, ⟨1, 399999999⟩, ⟨0, 0, 10, ⟨9, 4⟩, ⟨153, 79⟩⟩, (FQ.progression (9 / 5) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run745_checked : Entry.check ⟨621, 651, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨21, 9⟩, ⟨173, 79⟩⟩, (FQ.progression (21 / 10) (1 / 80) 6)⟩ = true := by decide +kernel
theorem entries25_checked : entries25.all Entry.check = true := by
  simp only [entries25, List.all_cons, List.all_nil, run714_checked, run715_checked, run716_checked, run717_checked, run718_checked, run719_checked, run720_checked, run721_checked, run722_checked, run723_checked, run724_checked, run725_checked, run726_checked, run727_checked, run728_checked, run729_checked, run730_checked, run731_checked, run732_checked, run733_checked, run734_checked, run735_checked, run736_checked, run737_checked, run738_checked, run739_checked, run740_checked, run741_checked, run742_checked, run743_checked, run744_checked, run745_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run746_checked : Entry.check ⟨622, 652, ⟨1, 399999999⟩, ⟨0, 0, 20, ⟨47, 19⟩, ⟨207, 79⟩⟩, (FQ.progression (47 / 20) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run747_checked : Entry.check ⟨623, 653, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨7, 39⟩, ⟨1, 4⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run748_checked : Entry.check ⟨624, 654, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run749_checked : Entry.check ⟨625, 655, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run750_checked : Entry.check ⟨625, 656, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨3, 19⟩, ⟨7, 39⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run751_checked : Entry.check ⟨627, 657, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run752_checked : Entry.check ⟨628, 658, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run753_checked : Entry.check ⟨629, 659, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run754_checked : Entry.check ⟨672, 660, ⟨1, 399999999⟩, ⟨0, 22, 20, ⟨16, 4⟩, ⟨55, 15⟩⟩, (FQ.progression (16 / 5) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run755_checked : Entry.check ⟨674, 661, ⟨1, 399999999⟩, ⟨0, 29, 29, ⟨241, 79⟩, ⟨269, 79⟩⟩, (FQ.progression (241 / 80) (1 / 80) 29)⟩ = true := by decide +kernel
theorem run756_checked : Entry.check ⟨676, 662, ⟨1, 399999999⟩, ⟨0, 44, 39, ⟨45, 15⟩, ⟨263, 79⟩⟩, (FQ.progression (45 / 16) (1 / 80) 39)⟩ = true := by decide +kernel
theorem run757_checked : Entry.check ⟨678, 663, ⟨1, 399999999⟩, ⟨0, 50, 43, ⟨27, 9⟩, ⟨129, 39⟩⟩, (FQ.progression (27 / 10) (1 / 80) 43)⟩ = true := by decide +kernel
theorem run758_checked : Entry.check ⟨681, 664, ⟨1, 399999999⟩, ⟨0, 4, 8, ⟨83, 39⟩, ⟨173, 79⟩⟩, (FQ.progression (83 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run759_checked : Entry.check ⟨681, 664, ⟨1, 399999999⟩, ⟨0, 12, 9, ⟨87, 39⟩, ⟨91, 39⟩⟩, (FQ.progression (87 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run760_checked : Entry.check ⟨681, 664, ⟨1, 399999999⟩, ⟨0, 22, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run761_checked : Entry.check ⟨681, 664, ⟨1, 399999999⟩, ⟨0, 30, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run762_checked : Entry.check ⟨681, 664, ⟨1, 399999999⟩, ⟨0, 40, 4, ⟨101, 39⟩, ⟨41, 15⟩⟩, (FQ.progression (101 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run763_checked : Entry.check ⟨681, 665, ⟨1, 399999999⟩, ⟨0, 43, 49, ⟨41, 15⟩, ⟨253, 79⟩⟩, (FQ.progression (41 / 16) (1 / 80) 49)⟩ = true := by decide +kernel
theorem run764_checked : Entry.check ⟨681, 666, ⟨1, 399999999⟩, ⟨0, 91, 3, ⟨253, 79⟩, ⟨51, 15⟩⟩, [⟨253, 79⟩, ⟨127, 39⟩, ⟨51, 15⟩]⟩ = true := by decide +kernel
theorem run765_checked : Entry.check ⟨684, 667, ⟨1, 399999999⟩, ⟨0, 22, 15, ⟨161, 79⟩, ⟨35, 15⟩⟩, (FQ.progression (161 / 80) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run766_checked : Entry.check ⟨685, 667, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run767_checked : Entry.check ⟨686, 668, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run768_checked : Entry.check ⟨687, 669, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run769_checked : Entry.check ⟨688, 669, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run770_checked : Entry.check ⟨689, 669, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run771_checked : Entry.check ⟨690, 670, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨47, 15⟩, ⟨237, 79⟩⟩, [⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩]⟩ = true := by decide +kernel
theorem entries26_checked : entries26.all Entry.check = true := by
  simp only [entries26, List.all_cons, List.all_nil, run746_checked, run747_checked, run748_checked, run749_checked, run750_checked, run751_checked, run752_checked, run753_checked, run754_checked, run755_checked, run756_checked, run757_checked, run758_checked, run759_checked, run760_checked, run761_checked, run762_checked, run763_checked, run764_checked, run765_checked, run766_checked, run767_checked, run768_checked, run769_checked, run770_checked, run771_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run772_checked : Entry.check ⟨692, 671, ⟨1, 399999999⟩, ⟨0, 21, 15, ⟨15, 7⟩, ⟨41, 19⟩⟩, (FQ.progression (15 / 8) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run773_checked : Entry.check ⟨693, 671, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨33, 15⟩, ⟨169, 79⟩⟩, (FQ.progression (33 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run774_checked : Entry.check ⟨693, 672, ⟨1, 399999999⟩, ⟨0, 4, 3, ⟨169, 79⟩, ⟨171, 79⟩⟩, [⟨169, 79⟩, ⟨17, 7⟩, ⟨171, 79⟩]⟩ = true := by decide +kernel
theorem run775_checked : Entry.check ⟨695, 673, ⟨1, 399999999⟩, ⟨0, 21, 12, ⟨141, 79⟩, ⟨19, 9⟩⟩, (FQ.progression (141 / 80) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run776_checked : Entry.check ⟨695, 674, ⟨1, 399999999⟩, ⟨0, 32, 9, ⟨19, 9⟩, ⟨2, 0⟩⟩, (FQ.progression (19 / 10) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run777_checked : Entry.check ⟨696, 674, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨161, 79⟩, ⟨167, 79⟩⟩, (FQ.progression (161 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run778_checked : Entry.check ⟨697, 675, ⟨1, 399999999⟩, ⟨0, 0, 18, ⟨4, 0⟩, ⟨337, 79⟩⟩, (FQ.progression (4 / 1) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run779_checked : Entry.check ⟨698, 676, ⟨1, 399999999⟩, ⟨0, 27, 2, ⟨139, 79⟩, ⟨7, 3⟩⟩, [⟨139, 79⟩, ⟨7, 3⟩]⟩ = true := by decide +kernel
theorem run780_checked : Entry.check ⟨698, 677, ⟨1, 399999999⟩, ⟨0, 30, 22, ⟨71, 39⟩, ⟨163, 79⟩⟩, (FQ.progression (71 / 40) (1 / 80) 22)⟩ = true := by decide +kernel
theorem run781_checked : Entry.check ⟨700, 678, ⟨1, 399999999⟩, ⟨0, 16, 18, ⟨121, 79⟩, ⟨69, 39⟩⟩, (FQ.progression (121 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run782_checked : Entry.check ⟨700, 679, ⟨1, 399999999⟩, ⟨0, 33, 16, ⟨69, 39⟩, ⟨153, 79⟩⟩, (FQ.progression (69 / 40) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run783_checked : Entry.check ⟨701, 679, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨31, 15⟩, ⟨159, 79⟩⟩, (FQ.progression (31 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run784_checked : Entry.check ⟨702, 680, ⟨1, 399999999⟩, ⟨0, 0, 17, ⟨19, 4⟩, ⟨4, 0⟩⟩, (FQ.progression (19 / 5) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run785_checked : Entry.check ⟨703, 681, ⟨1, 399999999⟩, ⟨0, 18, 14, ⟨23, 15⟩, ⟨8, 4⟩⟩, (FQ.progression (23 / 16) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run786_checked : Entry.check ⟨704, 681, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨129, 79⟩, ⟨67, 39⟩⟩, (FQ.progression (129 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run787_checked : Entry.check ⟨704, 682, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨67, 39⟩, ⟨17, 9⟩⟩, [⟨67, 39⟩, ⟨27, 15⟩, ⟨17, 9⟩]⟩ = true := by decide +kernel
theorem run788_checked : Entry.check ⟨705, 683, ⟨1, 399999999⟩, ⟨0, 12, 9, ⟨51, 39⟩, ⟨11, 7⟩⟩, (FQ.progression (51 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run789_checked : Entry.check ⟨705, 684, ⟨1, 399999999⟩, ⟨0, 20, 16, ⟨11, 7⟩, ⟨25, 15⟩⟩, (FQ.progression (11 / 8) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run790_checked : Entry.check ⟨706, 685, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨63, 39⟩, ⟨129, 79⟩⟩, (FQ.progression (63 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run791_checked : Entry.check ⟨706, 686, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨129, 79⟩, ⟨133, 79⟩⟩, (FQ.progression (129 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run792_checked : Entry.check ⟨707, 687, ⟨1, 399999999⟩, ⟨0, 17, 13, ⟨5, 3⟩, ⟨7, 4⟩⟩, (FQ.progression (5 / 4) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run793_checked : Entry.check ⟨707, 688, ⟨1, 399999999⟩, ⟨0, 29, 2, ⟨7, 4⟩, ⟨113, 79⟩⟩, [⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run794_checked : Entry.check ⟨709, 689, ⟨1, 399999999⟩, ⟨0, 13, 7, ⟨91, 79⟩, ⟨97, 79⟩⟩, (FQ.progression (91 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run795_checked : Entry.check ⟨709, 690, ⟨1, 399999999⟩, ⟨0, 19, 12, ⟨97, 79⟩, ⟨27, 19⟩⟩, (FQ.progression (97 / 80) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run796_checked : Entry.check ⟨709, 691, ⟨1, 399999999⟩, ⟨0, 30, 3, ⟨27, 19⟩, ⟨11, 7⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩, ⟨11, 7⟩]⟩ = true := by decide +kernel
theorem run797_checked : Entry.check ⟨710, 692, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨21, 19⟩, ⟨17, 15⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run798_checked : Entry.check ⟨710, 693, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨17, 15⟩, ⟨11, 9⟩⟩, (FQ.progression (17 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run799_checked : Entry.check ⟨710, 694, ⟨1, 399999999⟩, ⟨0, 16, 7, ⟨11, 9⟩, ⟨47, 39⟩⟩, (FQ.progression (11 / 10) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run800_checked : Entry.check ⟨710, 695, ⟨1, 399999999⟩, ⟨0, 22, 8, ⟨47, 39⟩, ⟨101, 79⟩⟩, (FQ.progression (47 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run801_checked : Entry.check ⟨711, 696, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨79, 79⟩, ⟨81, 79⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩, ⟨81, 79⟩]⟩ = true := by decide +kernel
theorem run802_checked : Entry.check ⟨711, 697, ⟨1, 399999999⟩, ⟨0, 15, 6, ⟨81, 79⟩, ⟨43, 39⟩⟩, (FQ.progression (81 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run803_checked : Entry.check ⟨711, 698, ⟨1, 399999999⟩, ⟨0, 20, 8, ⟨43, 39⟩, ⟨93, 79⟩⟩, (FQ.progression (43 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem entries27_checked : entries27.all Entry.check = true := by
  simp only [entries27, List.all_cons, List.all_nil, run772_checked, run773_checked, run774_checked, run775_checked, run776_checked, run777_checked, run778_checked, run779_checked, run780_checked, run781_checked, run782_checked, run783_checked, run784_checked, run785_checked, run786_checked, run787_checked, run788_checked, run789_checked, run790_checked, run791_checked, run792_checked, run793_checked, run794_checked, run795_checked, run796_checked, run797_checked, run798_checked, run799_checked, run800_checked, run801_checked, run802_checked, run803_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run804_checked : Entry.check ⟨713, 699, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨37, 39⟩, ⟨19, 19⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩]⟩ = true := by decide +kernel
theorem run805_checked : Entry.check ⟨713, 700, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨19, 19⟩, ⟨79, 79⟩⟩, (FQ.progression (19 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run806_checked : Entry.check ⟨713, 701, ⟨1, 399999999⟩, ⟨0, 16, 5, ⟨79, 79⟩, ⟨83, 79⟩⟩, (FQ.progression (79 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run807_checked : Entry.check ⟨713, 702, ⟨1, 399999999⟩, ⟨0, 20, 6, ⟨83, 79⟩, ⟨11, 9⟩⟩, (FQ.progression (83 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run808_checked : Entry.check ⟨715, 703, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run809_checked : Entry.check ⟨715, 704, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run810_checked : Entry.check ⟨715, 705, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨9, 9⟩, ⟨37, 39⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run811_checked : Entry.check ⟨715, 706, ⟨1, 399999999⟩, ⟨0, 16, 5, ⟨37, 39⟩, ⟨39, 39⟩⟩, (FQ.progression (37 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run812_checked : Entry.check ⟨715, 707, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run813_checked : Entry.check ⟨716, 708, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨41, 39⟩, ⟨83, 79⟩⟩, [⟨41, 39⟩, ⟨83, 79⟩]⟩ = true := by decide +kernel
theorem run814_checked : Entry.check ⟨716, 709, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨83, 79⟩, ⟨17, 15⟩⟩, [⟨83, 79⟩, ⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run815_checked : Entry.check ⟨717, 710, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨29, 15⟩, ⟨73, 39⟩⟩, [⟨29, 15⟩, ⟨73, 39⟩]⟩ = true := by decide +kernel
theorem run816_checked : Entry.check ⟨718, 711, ⟨1, 399999999⟩, ⟨0, 9, 3, ⟨63, 79⟩, ⟨13, 15⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run817_checked : Entry.check ⟨718, 712, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨13, 15⟩, ⟨17, 19⟩⟩, (FQ.progression (13 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run818_checked : Entry.check ⟨718, 713, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run819_checked : Entry.check ⟨718, 714, ⟨1, 399999999⟩, ⟨0, 16, 4, ⟨7, 7⟩, ⟨73, 79⟩⟩, (FQ.progression (7 / 8) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run820_checked : Entry.check ⟨718, 715, ⟨1, 399999999⟩, ⟨0, 19, 3, ⟨73, 79⟩, ⟨15, 15⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩, ⟨15, 15⟩]⟩ = true := by decide +kernel
theorem run821_checked : Entry.check ⟨719, 716, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨16, 4⟩, ⟨259, 79⟩⟩, (FQ.progression (16 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run822_checked : Entry.check ⟨719, 717, ⟨1, 399999999⟩, ⟨0, 3, 9, ⟨259, 79⟩, ⟨267, 79⟩⟩, (FQ.progression (259 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run823_checked : Entry.check ⟨720, 717, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨29, 7⟩, ⟨61, 15⟩⟩, (FQ.progression (29 / 8) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run824_checked : Entry.check ⟨721, 717, ⟨1, 399999999⟩, ⟨0, 0, 27, ⟨4, 0⟩, ⟨173, 39⟩⟩, (FQ.progression (4 / 1) (1 / 80) 27)⟩ = true := by decide +kernel
theorem run825_checked : Entry.check ⟨721, 718, ⟨1, 399999999⟩, ⟨0, 26, 11, ⟨173, 39⟩, ⟨89, 19⟩⟩, (FQ.progression (173 / 40) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run826_checked : Entry.check ⟨722, 719, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨59, 79⟩, ⟨3, 3⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run827_checked : Entry.check ⟨722, 720, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨3, 3⟩, ⟨61, 79⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run828_checked : Entry.check ⟨722, 721, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨61, 79⟩, ⟨63, 79⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run829_checked : Entry.check ⟨722, 722, ⟨1, 399999999⟩, ⟨0, 12, 5, ⟨63, 79⟩, ⟨67, 79⟩⟩, (FQ.progression (63 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run830_checked : Entry.check ⟨723, 723, ⟨1, 399999999⟩, ⟨0, 7, 4, ⟨27, 39⟩, ⟨57, 79⟩⟩, (FQ.progression (27 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run831_checked : Entry.check ⟨723, 724, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨57, 79⟩, ⟨3, 3⟩⟩, (FQ.progression (57 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run832_checked : Entry.check ⟨723, 725, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨3, 3⟩, ⟨63, 79⟩⟩, (FQ.progression (3 / 4) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run833_checked : Entry.check ⟨723, 726, ⟨1, 399999999⟩, ⟨0, 16, 2, ⟨63, 79⟩, ⟨4, 4⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run834_checked : Entry.check ⟨724, 727, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨13, 19⟩, ⟨11, 15⟩⟩, (FQ.progression (13 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run835_checked : Entry.check ⟨724, 728, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem entries28_checked : entries28.all Entry.check = true := by
  simp only [entries28, List.all_cons, List.all_nil, run804_checked, run805_checked, run806_checked, run807_checked, run808_checked, run809_checked, run810_checked, run811_checked, run812_checked, run813_checked, run814_checked, run815_checked, run816_checked, run817_checked, run818_checked, run819_checked, run820_checked, run821_checked, run822_checked, run823_checked, run824_checked, run825_checked, run826_checked, run827_checked, run828_checked, run829_checked, run830_checked, run831_checked, run832_checked, run833_checked, run834_checked, run835_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run836_checked : Entry.check ⟨725, 729, ⟨1, 399999999⟩, ⟨0, 0, 14, ⟨133, 39⟩, ⟨279, 79⟩⟩, (FQ.progression (133 / 40) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run837_checked : Entry.check ⟨726, 730, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨47, 79⟩, ⟨5, 7⟩⟩, [⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run838_checked : Entry.check ⟨726, 731, ⟨1, 399999999⟩, ⟨0, 7, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, (FQ.progression (5 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run839_checked : Entry.check ⟨726, 732, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨27, 39⟩, ⟨11, 15⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run840_checked : Entry.check ⟨728, 733, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run841_checked : Entry.check ⟨728, 734, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run842_checked : Entry.check ⟨730, 735, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run843_checked : Entry.check ⟨730, 736, ⟨1, 399999999⟩, ⟨0, 6, 4, ⟨11, 19⟩, ⟨47, 79⟩⟩, (FQ.progression (11 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run844_checked : Entry.check ⟨731, 737, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨19, 39⟩, ⟨21, 39⟩⟩, (FQ.progression (19 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run845_checked : Entry.check ⟨732, 738, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨17, 9⟩, ⟨73, 39⟩⟩, (FQ.progression (17 / 10) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run846_checked : Entry.check ⟨733, 739, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨19, 9⟩, ⟨83, 39⟩⟩, (FQ.progression (19 / 10) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run847_checked : Entry.check ⟨733, 740, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨83, 39⟩, ⟨169, 79⟩⟩, (FQ.progression (83 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run848_checked : Entry.check ⟨734, 741, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run849_checked : Entry.check ⟨735, 742, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨123, 39⟩, ⟨249, 79⟩⟩, (FQ.progression (123 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run850_checked : Entry.check ⟨735, 743, ⟨1, 399999999⟩, ⟨0, 3, 9, ⟨249, 79⟩, ⟨257, 79⟩⟩, (FQ.progression (249 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run851_checked : Entry.check ⟨736, 744, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run852_checked : Entry.check ⟨739, 745, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run853_checked : Entry.check ⟨739, 746, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run854_checked : Entry.check ⟨740, 747, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run855_checked : Entry.check ⟨741, 748, ⟨1, 399999999⟩, ⟨0, 0, 42, ⟨41, 19⟩, ⟨41, 15⟩⟩, (FQ.progression (41 / 20) (1 / 80) 42)⟩ = true := by decide +kernel
theorem run856_checked : Entry.check ⟨741, 749, ⟨1, 399999999⟩, ⟨0, 41, 3, ⟨41, 15⟩, ⟨207, 79⟩⟩, [⟨41, 15⟩, ⟨103, 39⟩, ⟨207, 79⟩]⟩ = true := by decide +kernel
theorem run857_checked : Entry.check ⟨742, 749, ⟨1, 399999999⟩, ⟨0, 0, 10, ⟨53, 19⟩, ⟨221, 79⟩⟩, (FQ.progression (53 / 20) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run858_checked : Entry.check ⟨743, 750, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨27, 79⟩, ⟨31, 79⟩⟩, (FQ.progression (27 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run859_checked : Entry.check ⟨745, 751, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨27, 79⟩, ⟨2, 4⟩⟩, (FQ.progression (27 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run860_checked : Entry.check ⟨746, 752, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run861_checked : Entry.check ⟨746, 753, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run862_checked : Entry.check ⟨747, 754, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨21, 79⟩, ⟨11, 39⟩⟩, [⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run863_checked : Entry.check ⟨747, 755, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨11, 39⟩, ⟨23, 79⟩⟩, [⟨11, 39⟩, ⟨23, 79⟩]⟩ = true := by decide +kernel
theorem run864_checked : Entry.check ⟨748, 756, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run865_checked : Entry.check ⟨749, 757, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨117, 79⟩, ⟨131, 79⟩⟩, (FQ.progression (117 / 80) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run866_checked : Entry.check ⟨750, 758, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨27, 15⟩, ⟨7, 3⟩⟩, (FQ.progression (27 / 16) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run867_checked : Entry.check ⟨751, 758, ⟨1, 399999999⟩, ⟨0, 0, 13, ⟨29, 15⟩, ⟨157, 79⟩⟩, (FQ.progression (29 / 16) (1 / 80) 13)⟩ = true := by decide +kernel
theorem entries29_checked : entries29.all Entry.check = true := by
  simp only [entries29, List.all_cons, List.all_nil, run836_checked, run837_checked, run838_checked, run839_checked, run840_checked, run841_checked, run842_checked, run843_checked, run844_checked, run845_checked, run846_checked, run847_checked, run848_checked, run849_checked, run850_checked, run851_checked, run852_checked, run853_checked, run854_checked, run855_checked, run856_checked, run857_checked, run858_checked, run859_checked, run860_checked, run861_checked, run862_checked, run863_checked, run864_checked, run865_checked, run866_checked, run867_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

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

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1161_checked : Entry.check ⟨1129, 1005, ⟨1, 399999999⟩, ⟨0, 29, 3, ⟨107, 79⟩, ⟨109, 79⟩⟩, [⟨107, 79⟩, ⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run1162_checked : Entry.check ⟨1130, 1005, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨7, 4⟩, ⟨23, 15⟩⟩, (FQ.progression (7 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1163_checked : Entry.check ⟨1131, 1006, ⟨1, 399999999⟩, ⟨0, 11, 6, ⟨21, 19⟩, ⟨89, 79⟩⟩, (FQ.progression (21 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1164_checked : Entry.check ⟨1131, 1007, ⟨1, 399999999⟩, ⟨0, 16, 7, ⟨89, 79⟩, ⟨19, 15⟩⟩, (FQ.progression (89 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1165_checked : Entry.check ⟨1131, 1008, ⟨1, 399999999⟩, ⟨0, 22, 7, ⟨19, 15⟩, ⟨101, 79⟩⟩, (FQ.progression (19 / 16) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1166_checked : Entry.check ⟨1132, 1009, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨1, 0⟩, ⟨41, 39⟩⟩, [⟨1, 0⟩, ⟨81, 79⟩, ⟨41, 39⟩]⟩ = true := by decide +kernel
theorem run1167_checked : Entry.check ⟨1132, 1010, ⟨1, 399999999⟩, ⟨0, 15, 5, ⟨41, 39⟩, ⟨43, 39⟩⟩, (FQ.progression (41 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1168_checked : Entry.check ⟨1132, 1011, ⟨1, 399999999⟩, ⟨0, 19, 4, ⟨43, 39⟩, ⟨89, 79⟩⟩, (FQ.progression (43 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1169_checked : Entry.check ⟨1133, 1011, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 7⟩, ⟨23, 19⟩⟩, [⟨9, 7⟩, ⟨91, 79⟩, ⟨23, 19⟩]⟩ = true := by decide +kernel
theorem run1170_checked : Entry.check ⟨1133, 1012, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨23, 19⟩, ⟨93, 79⟩⟩, [⟨23, 19⟩, ⟨93, 79⟩]⟩ = true := by decide +kernel
theorem run1171_checked : Entry.check ⟨1134, 1013, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨37, 39⟩, ⟨19, 19⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩]⟩ = true := by decide +kernel
theorem run1172_checked : Entry.check ⟨1134, 1014, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨19, 19⟩, ⟨79, 79⟩⟩, (FQ.progression (19 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1173_checked : Entry.check ⟨1134, 1015, ⟨1, 399999999⟩, ⟨0, 17, 6, ⟨79, 79⟩, ⟨21, 19⟩⟩, (FQ.progression (79 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1174_checked : Entry.check ⟨1135, 1016, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run1175_checked : Entry.check ⟨1135, 1017, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run1176_checked : Entry.check ⟨1135, 1018, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨9, 9⟩, ⟨37, 39⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run1177_checked : Entry.check ⟨1135, 1019, ⟨1, 399999999⟩, ⟨0, 15, 5, ⟨37, 39⟩, ⟨39, 39⟩⟩, (FQ.progression (37 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1178_checked : Entry.check ⟨1135, 1020, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run1179_checked : Entry.check ⟨1136, 1021, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨81, 39⟩, ⟨83, 39⟩⟩, (FQ.progression (81 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1180_checked : Entry.check ⟨1137, 1022, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨4, 4⟩, ⟨13, 15⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run1181_checked : Entry.check ⟨1137, 1023, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨13, 15⟩, ⟨17, 19⟩⟩, (FQ.progression (13 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1182_checked : Entry.check ⟨1137, 1024, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run1183_checked : Entry.check ⟨1137, 1025, ⟨1, 399999999⟩, ⟨0, 18, 4, ⟨7, 7⟩, ⟨73, 79⟩⟩, (FQ.progression (7 / 8) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1184_checked : Entry.check ⟨1137, 1026, ⟨1, 399999999⟩, ⟨0, 21, 3, ⟨73, 79⟩, ⟨15, 15⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩, ⟨15, 15⟩]⟩ = true := by decide +kernel
theorem run1185_checked : Entry.check ⟨1138, 1027, ⟨1, 399999999⟩, ⟨0, 0, 46, ⟨107, 39⟩, ⟨259, 79⟩⟩, (FQ.progression (107 / 40) (1 / 80) 46)⟩ = true := by decide +kernel
theorem run1186_checked : Entry.check ⟨1138, 1028, ⟨1, 399999999⟩, ⟨0, 45, 9, ⟨259, 79⟩, ⟨267, 79⟩⟩, (FQ.progression (259 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1187_checked : Entry.check ⟨1139, 1028, ⟨1, 399999999⟩, ⟨0, 0, 14, ⟨139, 39⟩, ⟨291, 79⟩⟩, (FQ.progression (139 / 40) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1188_checked : Entry.check ⟨1140, 1029, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨59, 79⟩, ⟨31, 39⟩⟩, (FQ.progression (59 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1189_checked : Entry.check ⟨1140, 1030, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨31, 39⟩, ⟨4, 4⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run1190_checked : Entry.check ⟨1140, 1031, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨4, 4⟩, ⟨67, 79⟩⟩, (FQ.progression (4 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1191_checked : Entry.check ⟨1141, 1032, ⟨1, 399999999⟩, ⟨0, 0, 23, ⟨257, 79⟩, ⟨279, 79⟩⟩, (FQ.progression (257 / 80) (1 / 80) 23)⟩ = true := by decide +kernel
theorem run1192_checked : Entry.check ⟨1142, 1033, ⟨1, 399999999⟩, ⟨0, 7, 4, ⟨27, 39⟩, ⟨57, 79⟩⟩, (FQ.progression (27 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem entries40_checked : entries40.all Entry.check = true := by
  simp only [entries40, List.all_cons, List.all_nil, run1161_checked, run1162_checked, run1163_checked, run1164_checked, run1165_checked, run1166_checked, run1167_checked, run1168_checked, run1169_checked, run1170_checked, run1171_checked, run1172_checked, run1173_checked, run1174_checked, run1175_checked, run1176_checked, run1177_checked, run1178_checked, run1179_checked, run1180_checked, run1181_checked, run1182_checked, run1183_checked, run1184_checked, run1185_checked, run1186_checked, run1187_checked, run1188_checked, run1189_checked, run1190_checked, run1191_checked, run1192_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1193_checked : Entry.check ⟨1142, 1034, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨57, 79⟩, ⟨59, 79⟩⟩, [⟨57, 79⟩, ⟨29, 39⟩, ⟨59, 79⟩]⟩ = true := by decide +kernel
theorem run1194_checked : Entry.check ⟨1142, 1035, ⟨1, 399999999⟩, ⟨0, 12, 5, ⟨59, 79⟩, ⟨63, 79⟩⟩, (FQ.progression (59 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1195_checked : Entry.check ⟨1143, 1036, ⟨1, 399999999⟩, ⟨0, 7, 4, ⟨13, 19⟩, ⟨11, 15⟩⟩, (FQ.progression (13 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1196_checked : Entry.check ⟨1143, 1037, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨11, 15⟩, ⟨29, 39⟩⟩, (FQ.progression (11 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1197_checked : Entry.check ⟨1144, 1038, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨47, 79⟩, ⟨5, 7⟩⟩, [⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1198_checked : Entry.check ⟨1144, 1039, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, (FQ.progression (5 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1199_checked : Entry.check ⟨1144, 1040, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨27, 39⟩, ⟨7, 9⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩, ⟨7, 9⟩]⟩ = true := by decide +kernel
theorem run1200_checked : Entry.check ⟨1146, 1041, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1201_checked : Entry.check ⟨1146, 1042, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1202_checked : Entry.check ⟨1147, 1043, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨17, 9⟩, ⟨137, 79⟩⟩, [⟨17, 9⟩, ⟨137, 79⟩]⟩ = true := by decide +kernel
theorem run1203_checked : Entry.check ⟨1147, 1044, ⟨1, 399999999⟩, ⟨0, 1, 5, ⟨137, 79⟩, ⟨141, 79⟩⟩, (FQ.progression (137 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1204_checked : Entry.check ⟨1148, 1045, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1205_checked : Entry.check ⟨1148, 1046, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨11, 19⟩, ⟨3, 4⟩⟩, (FQ.progression (11 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1206_checked : Entry.check ⟨1150, 1047, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨39, 79⟩, ⟨21, 39⟩⟩, (FQ.progression (39 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1207_checked : Entry.check ⟨1151, 1048, ⟨1, 399999999⟩, ⟨0, 3, 7, ⟨9, 19⟩, ⟨21, 39⟩⟩, (FQ.progression (9 / 20) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1208_checked : Entry.check ⟨1152, 1049, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨117, 79⟩, ⟨3, 1⟩⟩, (FQ.progression (117 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1209_checked : Entry.check ⟨1152, 1050, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨3, 1⟩, ⟨31, 19⟩⟩, (FQ.progression (3 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1210_checked : Entry.check ⟨1153, 1050, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨25, 15⟩, ⟨129, 79⟩⟩, (FQ.progression (25 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1211_checked : Entry.check ⟨1153, 1051, ⟨1, 399999999⟩, ⟨0, 4, 3, ⟨129, 79⟩, ⟨131, 79⟩⟩, [⟨129, 79⟩, ⟨13, 7⟩, ⟨131, 79⟩]⟩ = true := by decide +kernel
theorem run1212_checked : Entry.check ⟨1154, 1051, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨67, 39⟩, ⟨69, 39⟩⟩, (FQ.progression (67 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1213_checked : Entry.check ⟨1154, 1052, ⟨1, 399999999⟩, ⟨0, 4, 27, ⟨69, 39⟩, ⟨41, 19⟩⟩, (FQ.progression (69 / 40) (1 / 80) 27)⟩ = true := by decide +kernel
theorem run1214_checked : Entry.check ⟨1154, 1053, ⟨1, 399999999⟩, ⟨0, 30, 6, ⟨41, 19⟩, ⟨169, 79⟩⟩, (FQ.progression (41 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1215_checked : Entry.check ⟨1155, 1054, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1216_checked : Entry.check ⟨1156, 1055, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run1217_checked : Entry.check ⟨1156, 1056, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run1218_checked : Entry.check ⟨1157, 1057, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1219_checked : Entry.check ⟨1158, 1058, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run1220_checked : Entry.check ⟨1159, 1059, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨13, 39⟩, ⟨7, 19⟩⟩, [⟨13, 39⟩, ⟨27, 79⟩, ⟨7, 19⟩]⟩ = true := by decide +kernel
theorem run1221_checked : Entry.check ⟨1160, 1060, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run1222_checked : Entry.check ⟨1160, 1061, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run1223_checked : Entry.check ⟨1161, 1062, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨21, 79⟩, ⟨3, 9⟩⟩, (FQ.progression (21 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1224_checked : Entry.check ⟨1162, 1063, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem entries41_checked : entries41.all Entry.check = true := by
  simp only [entries41, List.all_cons, List.all_nil, run1193_checked, run1194_checked, run1195_checked, run1196_checked, run1197_checked, run1198_checked, run1199_checked, run1200_checked, run1201_checked, run1202_checked, run1203_checked, run1204_checked, run1205_checked, run1206_checked, run1207_checked, run1208_checked, run1209_checked, run1210_checked, run1211_checked, run1212_checked, run1213_checked, run1214_checked, run1215_checked, run1216_checked, run1217_checked, run1218_checked, run1219_checked, run1220_checked, run1221_checked, run1222_checked, run1223_checked, run1224_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1225_checked : Entry.check ⟨1163, 1064, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run1226_checked : Entry.check ⟨1163, 1065, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run1227_checked : Entry.check ⟨1164, 1066, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨17, 79⟩, ⟨9, 39⟩⟩, [⟨17, 79⟩, ⟨9, 39⟩]⟩ = true := by decide +kernel
theorem run1228_checked : Entry.check ⟨1164, 1067, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run1229_checked : Entry.check ⟨1165, 1068, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run1230_checked : Entry.check ⟨1166, 1069, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run1231_checked : Entry.check ⟨1167, 1070, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run1232_checked : Entry.check ⟨1168, 1071, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run1233_checked : Entry.check ⟨1169, 1072, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨33, 15⟩, ⟨35, 15⟩⟩, (FQ.progression (33 / 16) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run1234_checked : Entry.check ⟨1169, 1073, ⟨1, 399999999⟩, ⟨0, 10, 47, ⟨35, 15⟩, ⟨221, 79⟩⟩, (FQ.progression (35 / 16) (1 / 80) 47)⟩ = true := by decide +kernel
theorem run1235_checked : Entry.check ⟨1223, 1074, ⟨1, 399999999⟩, ⟨0, 0, 30, ⟨273, 79⟩, ⟨151, 39⟩⟩, (FQ.progression (273 / 80) (1 / 80) 30)⟩ = true := by decide +kernel
theorem run1236_checked : Entry.check ⟨1231, 1075, ⟨1, 399999999⟩, ⟨0, 21, 14, ⟨61, 19⟩, ⟨257, 79⟩⟩, (FQ.progression (61 / 20) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1237_checked : Entry.check ⟨1234, 1076, ⟨1, 399999999⟩, ⟨0, 8, 28, ⟨45, 15⟩, ⟨63, 19⟩⟩, (FQ.progression (45 / 16) (1 / 80) 28)⟩ = true := by decide +kernel
theorem run1238_checked : Entry.check ⟨1235, 1076, ⟨1, 399999999⟩, ⟨0, 0, 38, ⟨279, 79⟩, ⟨79, 19⟩⟩, (FQ.progression (279 / 80) (1 / 80) 38)⟩ = true := by decide +kernel
theorem run1239_checked : Entry.check ⟨1235, 1077, ⟨1, 399999999⟩, ⟨0, 37, 15, ⟨79, 19⟩, ⟨33, 7⟩⟩, (FQ.progression (79 / 20) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1240_checked : Entry.check ⟨1235, 1078, ⟨1, 399999999⟩, ⟨0, 51, 27, ⟨33, 7⟩, ⟨89, 19⟩⟩, (FQ.progression (33 / 8) (1 / 80) 27)⟩ = true := by decide +kernel
theorem run1241_checked : Entry.check ⟨1238, 1079, ⟨1, 399999999⟩, ⟨0, 9, 32, ⟨43, 15⟩, ⟨123, 39⟩⟩, (FQ.progression (43 / 16) (1 / 80) 32)⟩ = true := by decide +kernel
theorem run1242_checked : Entry.check ⟨1240, 1080, ⟨1, 399999999⟩, ⟨0, 16, 4, ⟨17, 7⟩, ⟨173, 79⟩⟩, (FQ.progression (17 / 8) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1243_checked : Entry.check ⟨1240, 1080, ⟨1, 399999999⟩, ⟨0, 20, 9, ⟨87, 39⟩, ⟨91, 39⟩⟩, (FQ.progression (87 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1244_checked : Entry.check ⟨1240, 1080, ⟨1, 399999999⟩, ⟨0, 30, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1245_checked : Entry.check ⟨1240, 1080, ⟨1, 399999999⟩, ⟨0, 38, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem entries42_checked : entries42.all Entry.check = true := by
  simp only [entries42, List.all_cons, List.all_nil, run1225_checked, run1226_checked, run1227_checked, run1228_checked, run1229_checked, run1230_checked, run1231_checked, run1232_checked, run1233_checked, run1234_checked, run1235_checked, run1236_checked, run1237_checked, run1238_checked, run1239_checked, run1240_checked, run1241_checked, run1242_checked, run1243_checked, run1244_checked, run1245_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1246_checked : Entry.check ⟨1241, 1081, ⟨1, 399999999⟩, ⟨0, 0, 34, ⟨209, 79⟩, ⟨121, 39⟩⟩, (FQ.progression (209 / 80) (1 / 80) 34)⟩ = true := by decide +kernel
theorem run1247_checked : Entry.check ⟨1244, 1082, ⟨1, 399999999⟩, ⟨0, 1, 17, ⟨159, 79⟩, ⟨35, 15⟩⟩, (FQ.progression (159 / 80) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run1248_checked : Entry.check ⟨1245, 1082, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run1249_checked : Entry.check ⟨1246, 1083, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run1250_checked : Entry.check ⟨1247, 1084, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run1251_checked : Entry.check ⟨1248, 1084, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run1252_checked : Entry.check ⟨1249, 1084, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨47, 15⟩, ⟨237, 79⟩⟩, [⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩]⟩ = true := by decide +kernel
theorem run1253_checked : Entry.check ⟨1251, 1085, ⟨1, 399999999⟩, ⟨0, 0, 24, ⟨37, 19⟩, ⟨171, 79⟩⟩, (FQ.progression (37 / 20) (1 / 80) 24)⟩ = true := by decide +kernel
theorem run1254_checked : Entry.check ⟨1252, 1086, ⟨1, 399999999⟩, ⟨0, 21, 13, ⟨71, 39⟩, ⟨77, 39⟩⟩, (FQ.progression (71 / 40) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run1255_checked : Entry.check ⟨1252, 1087, ⟨1, 399999999⟩, ⟨0, 33, 7, ⟨77, 39⟩, ⟨2, 0⟩⟩, (FQ.progression (77 / 40) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1256_checked : Entry.check ⟨1253, 1087, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨161, 79⟩, ⟨167, 79⟩⟩, (FQ.progression (161 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1257_checked : Entry.check ⟨1254, 1088, ⟨1, 399999999⟩, ⟨0, 26, 2, ⟨139, 79⟩, ⟨7, 3⟩⟩, [⟨139, 79⟩, ⟨7, 3⟩]⟩ = true := by decide +kernel
theorem run1258_checked : Entry.check ⟨1254, 1089, ⟨1, 399999999⟩, ⟨0, 30, 21, ⟨143, 79⟩, ⟨163, 79⟩⟩, (FQ.progression (143 / 80) (1 / 80) 21)⟩ = true := by decide +kernel
theorem run1259_checked : Entry.check ⟨1255, 1090, ⟨1, 399999999⟩, ⟨0, 15, 20, ⟨3, 1⟩, ⟨139, 79⟩⟩, (FQ.progression (3 / 2) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run1260_checked : Entry.check ⟨1255, 1091, ⟨1, 399999999⟩, ⟨0, 34, 15, ⟨139, 79⟩, ⟨153, 79⟩⟩, (FQ.progression (139 / 80) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1261_checked : Entry.check ⟨1256, 1091, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨31, 15⟩, ⟨159, 79⟩⟩, (FQ.progression (31 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1262_checked : Entry.check ⟨1257, 1092, ⟨1, 399999999⟩, ⟨0, 18, 13, ⟨23, 15⟩, ⟨127, 79⟩⟩, (FQ.progression (23 / 16) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run1263_checked : Entry.check ⟨1258, 1093, ⟨1, 399999999⟩, ⟨0, 14, 7, ⟨13, 9⟩, ⟨11, 7⟩⟩, (FQ.progression (13 / 10) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1264_checked : Entry.check ⟨1258, 1094, ⟨1, 399999999⟩, ⟨0, 20, 15, ⟨11, 7⟩, ⟨31, 19⟩⟩, (FQ.progression (11 / 8) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1265_checked : Entry.check ⟨1260, 1095, ⟨1, 399999999⟩, ⟨0, 15, 13, ⟨5, 3⟩, ⟨7, 4⟩⟩, (FQ.progression (5 / 4) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run1266_checked : Entry.check ⟨1260, 1096, ⟨1, 399999999⟩, ⟨0, 27, 2, ⟨7, 4⟩, ⟨113, 79⟩⟩, [⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run1267_checked : Entry.check ⟨1262, 1097, ⟨1, 399999999⟩, ⟨0, 12, 8, ⟨91, 79⟩, ⟨49, 39⟩⟩, (FQ.progression (91 / 80) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1268_checked : Entry.check ⟨1262, 1098, ⟨1, 399999999⟩, ⟨0, 19, 9, ⟨49, 39⟩, ⟨53, 39⟩⟩, (FQ.progression (49 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1269_checked : Entry.check ⟨1262, 1099, ⟨1, 399999999⟩, ⟨0, 27, 5, ⟨53, 39⟩, ⟨11, 7⟩⟩, (FQ.progression (53 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1270_checked : Entry.check ⟨1263, 1100, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨27, 7⟩, ⟨17, 4⟩⟩, [⟨27, 7⟩, ⟨271, 79⟩, ⟨17, 4⟩]⟩ = true := by decide +kernel
theorem run1271_checked : Entry.check ⟨1265, 1101, ⟨1, 399999999⟩, ⟨0, 7, 6, ⟨21, 19⟩, ⟨89, 79⟩⟩, (FQ.progression (21 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1272_checked : Entry.check ⟨1265, 1102, ⟨1, 399999999⟩, ⟨0, 12, 6, ⟨89, 79⟩, ⟨47, 39⟩⟩, (FQ.progression (89 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1273_checked : Entry.check ⟨1265, 1103, ⟨1, 399999999⟩, ⟨0, 17, 8, ⟨47, 39⟩, ⟨101, 79⟩⟩, (FQ.progression (47 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1274_checked : Entry.check ⟨1266, 1104, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨79, 79⟩, ⟨41, 39⟩⟩, (FQ.progression (79 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1275_checked : Entry.check ⟨1266, 1105, ⟨1, 399999999⟩, ⟨0, 15, 5, ⟨41, 39⟩, ⟨43, 39⟩⟩, (FQ.progression (41 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1276_checked : Entry.check ⟨1266, 1106, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨43, 39⟩, ⟨87, 79⟩⟩, [⟨43, 39⟩, ⟨87, 79⟩]⟩ = true := by decide +kernel
theorem run1277_checked : Entry.check ⟨1266, 1107, ⟨1, 399999999⟩, ⟨0, 20, 3, ⟨87, 79⟩, ⟨89, 79⟩⟩, [⟨87, 79⟩, ⟨11, 9⟩, ⟨89, 79⟩]⟩ = true := by decide +kernel
theorem entries43_checked : entries43.all Entry.check = true := by
  simp only [entries43, List.all_cons, List.all_nil, run1246_checked, run1247_checked, run1248_checked, run1249_checked, run1250_checked, run1251_checked, run1252_checked, run1253_checked, run1254_checked, run1255_checked, run1256_checked, run1257_checked, run1258_checked, run1259_checked, run1260_checked, run1261_checked, run1262_checked, run1263_checked, run1264_checked, run1265_checked, run1266_checked, run1267_checked, run1268_checked, run1269_checked, run1270_checked, run1271_checked, run1272_checked, run1273_checked, run1274_checked, run1275_checked, run1276_checked, run1277_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1278_checked : Entry.check ⟨1267, 1107, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨9, 7⟩, ⟨93, 79⟩⟩, (FQ.progression (9 / 8) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1279_checked : Entry.check ⟨1268, 1108, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨15, 15⟩, ⟨77, 79⟩⟩, [⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩]⟩ = true := by decide +kernel
theorem run1280_checked : Entry.check ⟨1268, 1109, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨77, 79⟩, ⟨1, 0⟩⟩, (FQ.progression (77 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1281_checked : Entry.check ⟨1268, 1110, ⟨1, 399999999⟩, ⟨0, 18, 5, ⟨1, 0⟩, ⟨21, 19⟩⟩, (FQ.progression (1 / 1) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1282_checked : Entry.check ⟨1269, 1111, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run1283_checked : Entry.check ⟨1269, 1112, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run1284_checked : Entry.check ⟨1269, 1113, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨9, 9⟩, ⟨15, 15⟩⟩, (FQ.progression (9 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1285_checked : Entry.check ⟨1269, 1114, ⟨1, 399999999⟩, ⟨0, 17, 4, ⟨15, 15⟩, ⟨39, 39⟩⟩, (FQ.progression (15 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1286_checked : Entry.check ⟨1269, 1115, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run1287_checked : Entry.check ⟨1270, 1116, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨177, 79⟩, ⟨89, 39⟩⟩, [⟨177, 79⟩, ⟨89, 39⟩]⟩ = true := by decide +kernel
theorem run1288_checked : Entry.check ⟨1271, 1117, ⟨1, 399999999⟩, ⟨0, 10, 6, ⟨4, 4⟩, ⟨69, 79⟩⟩, (FQ.progression (4 / 5) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1289_checked : Entry.check ⟨1271, 1118, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨69, 79⟩, ⟨71, 79⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run1290_checked : Entry.check ⟨1271, 1119, ⟨1, 399999999⟩, ⟨0, 17, 3, ⟨71, 79⟩, ⟨73, 79⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩, ⟨73, 79⟩]⟩ = true := by decide +kernel
theorem run1291_checked : Entry.check ⟨1271, 1120, ⟨1, 399999999⟩, ⟨0, 19, 3, ⟨73, 79⟩, ⟨15, 15⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩, ⟨15, 15⟩]⟩ = true := by decide +kernel
theorem run1292_checked : Entry.check ⟨1272, 1121, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨16, 4⟩, ⟨259, 79⟩⟩, (FQ.progression (16 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1293_checked : Entry.check ⟨1272, 1122, ⟨1, 399999999⟩, ⟨0, 3, 33, ⟨259, 79⟩, ⟨291, 79⟩⟩, (FQ.progression (259 / 80) (1 / 80) 33)⟩ = true := by decide +kernel
theorem run1294_checked : Entry.check ⟨1273, 1123, ⟨1, 399999999⟩, ⟨0, 8, 3, ⟨59, 79⟩, ⟨61, 79⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run1295_checked : Entry.check ⟨1273, 1124, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, (FQ.progression (61 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1296_checked : Entry.check ⟨1273, 1125, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨4, 4⟩, ⟨67, 79⟩⟩, (FQ.progression (4 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1297_checked : Entry.check ⟨1275, 1126, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨11, 15⟩, ⟨7, 9⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩]⟩ = true := by decide +kernel
theorem run1298_checked : Entry.check ⟨1275, 1127, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨7, 9⟩, ⟨57, 79⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run1299_checked : Entry.check ⟨1275, 1128, ⟨1, 399999999⟩, ⟨0, 9, 3, ⟨57, 79⟩, ⟨59, 79⟩⟩, [⟨57, 79⟩, ⟨29, 39⟩, ⟨59, 79⟩]⟩ = true := by decide +kernel
theorem run1300_checked : Entry.check ⟨1275, 1129, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨59, 79⟩, ⟨31, 39⟩⟩, (FQ.progression (59 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1301_checked : Entry.check ⟨1275, 1130, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨31, 39⟩, ⟨63, 79⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run1302_checked : Entry.check ⟨1276, 1131, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, (FQ.progression (13 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1303_checked : Entry.check ⟨1276, 1132, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩, ⟨29, 39⟩]⟩ = true := by decide +kernel
theorem run1304_checked : Entry.check ⟨1277, 1133, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨47, 79⟩, ⟨5, 7⟩⟩, [⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1305_checked : Entry.check ⟨1277, 1134, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, (FQ.progression (5 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1306_checked : Entry.check ⟨1277, 1135, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨27, 39⟩, ⟨7, 9⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩, ⟨7, 9⟩]⟩ = true := by decide +kernel
theorem run1307_checked : Entry.check ⟨1279, 1136, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1308_checked : Entry.check ⟨1279, 1137, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1309_checked : Entry.check ⟨1280, 1138, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem entries44_checked : entries44.all Entry.check = true := by
  simp only [entries44, List.all_cons, List.all_nil, run1278_checked, run1279_checked, run1280_checked, run1281_checked, run1282_checked, run1283_checked, run1284_checked, run1285_checked, run1286_checked, run1287_checked, run1288_checked, run1289_checked, run1290_checked, run1291_checked, run1292_checked, run1293_checked, run1294_checked, run1295_checked, run1296_checked, run1297_checked, run1298_checked, run1299_checked, run1300_checked, run1301_checked, run1302_checked, run1303_checked, run1304_checked, run1305_checked, run1306_checked, run1307_checked, run1308_checked, run1309_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1310_checked : Entry.check ⟨1280, 1139, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨11, 19⟩, ⟨3, 4⟩⟩, (FQ.progression (11 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1311_checked : Entry.check ⟨1281, 1140, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨39, 79⟩, ⟨21, 39⟩⟩, (FQ.progression (39 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1312_checked : Entry.check ⟨1282, 1141, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1313_checked : Entry.check ⟨1283, 1142, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1314_checked : Entry.check ⟨1284, 1143, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run1315_checked : Entry.check ⟨1284, 1144, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run1316_checked : Entry.check ⟨1285, 1145, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨7, 19⟩, ⟨17, 39⟩⟩, (FQ.progression (7 / 20) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1317_checked : Entry.check ⟨1286, 1146, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run1318_checked : Entry.check ⟨1287, 1147, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨27, 79⟩, ⟨2, 4⟩⟩, (FQ.progression (27 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1319_checked : Entry.check ⟨1287, 1148, ⟨1, 399999999⟩, ⟨0, 9, 4, ⟨2, 4⟩, ⟨7, 15⟩⟩, (FQ.progression (2 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1320_checked : Entry.check ⟨1288, 1149, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨41, 79⟩, ⟨21, 39⟩⟩, [⟨41, 79⟩, ⟨21, 39⟩]⟩ = true := by decide +kernel
theorem run1321_checked : Entry.check ⟨1288, 1150, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨21, 39⟩, ⟨11, 19⟩⟩, [⟨21, 39⟩, ⟨43, 79⟩, ⟨11, 19⟩]⟩ = true := by decide +kernel
theorem run1322_checked : Entry.check ⟨1289, 1151, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 7⟩, ⟨13, 19⟩⟩, [⟨5, 7⟩, ⟨51, 79⟩, ⟨13, 19⟩]⟩ = true := by decide +kernel
theorem run1323_checked : Entry.check ⟨1290, 1152, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨77, 79⟩, ⟨1, 0⟩⟩, (FQ.progression (77 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1324_checked : Entry.check ⟨1291, 1153, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨103, 79⟩, ⟨53, 39⟩⟩, (FQ.progression (103 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1325_checked : Entry.check ⟨1292, 1154, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run1326_checked : Entry.check ⟨1292, 1155, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run1327_checked : Entry.check ⟨1293, 1156, ⟨1, 399999999⟩, ⟨0, 0, 14, ⟨45, 15⟩, ⟨119, 39⟩⟩, (FQ.progression (45 / 16) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1328_checked : Entry.check ⟨1293, 1157, ⟨1, 399999999⟩, ⟨0, 13, 10, ⟨119, 39⟩, ⟨247, 79⟩⟩, (FQ.progression (119 / 40) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run1329_checked : Entry.check ⟨1294, 1158, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨21, 79⟩, ⟨3, 9⟩⟩, (FQ.progression (21 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1330_checked : Entry.check ⟨1295, 1159, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run1331_checked : Entry.check ⟨1296, 1160, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨29, 19⟩, ⟨31, 19⟩⟩, (FQ.progression (29 / 20) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1332_checked : Entry.check ⟨1297, 1160, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨25, 15⟩, ⟨131, 79⟩⟩, (FQ.progression (25 / 16) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1333_checked : Entry.check ⟨1298, 1161, ⟨1, 399999999⟩, ⟨0, 0, 31, ⟨67, 39⟩, ⟨41, 19⟩⟩, (FQ.progression (67 / 40) (1 / 80) 31)⟩ = true := by decide +kernel
theorem run1334_checked : Entry.check ⟨1298, 1162, ⟨1, 399999999⟩, ⟨0, 30, 6, ⟨41, 19⟩, ⟨169, 79⟩⟩, (FQ.progression (41 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1335_checked : Entry.check ⟨1299, 1163, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run1336_checked : Entry.check ⟨1300, 1164, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨17, 79⟩, ⟨9, 39⟩⟩, [⟨17, 79⟩, ⟨9, 39⟩]⟩ = true := by decide +kernel
theorem run1337_checked : Entry.check ⟨1300, 1165, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run1338_checked : Entry.check ⟨1301, 1166, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run1339_checked : Entry.check ⟨1302, 1167, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨7, 39⟩, ⟨1, 4⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run1340_checked : Entry.check ⟨1303, 1168, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run1341_checked : Entry.check ⟨1304, 1169, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem entries45_checked : entries45.all Entry.check = true := by
  simp only [entries45, List.all_cons, List.all_nil, run1310_checked, run1311_checked, run1312_checked, run1313_checked, run1314_checked, run1315_checked, run1316_checked, run1317_checked, run1318_checked, run1319_checked, run1320_checked, run1321_checked, run1322_checked, run1323_checked, run1324_checked, run1325_checked, run1326_checked, run1327_checked, run1328_checked, run1329_checked, run1330_checked, run1331_checked, run1332_checked, run1333_checked, run1334_checked, run1335_checked, run1336_checked, run1337_checked, run1338_checked, run1339_checked, run1340_checked, run1341_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1342_checked : Entry.check ⟨1305, 1170, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run1343_checked : Entry.check ⟨1365, 1171, ⟨1, 399999999⟩, ⟨0, 0, 82, ⟨303, 79⟩, ⟨24, 4⟩⟩, (FQ.progression (303 / 80) (1 / 80) 82)⟩ = true := by decide +kernel
theorem run1344_checked : Entry.check ⟨1366, 1172, ⟨1, 399999999⟩, ⟨0, 0, 33, ⟨17, 4⟩, ⟨19, 4⟩⟩, (FQ.progression (17 / 5) (1 / 80) 33)⟩ = true := by decide +kernel
theorem run1345_checked : Entry.check ⟨1375, 1173, ⟨1, 399999999⟩, ⟨0, 0, 20, ⟨223, 79⟩, ⟨121, 39⟩⟩, (FQ.progression (223 / 80) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run1346_checked : Entry.check ⟨1376, 1173, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨243, 79⟩, ⟨247, 79⟩⟩, (FQ.progression (243 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1347_checked : Entry.check ⟨1377, 1173, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨27, 7⟩, ⟨17, 4⟩⟩, [⟨27, 7⟩, ⟨271, 79⟩, ⟨17, 4⟩]⟩ = true := by decide +kernel
theorem run1348_checked : Entry.check ⟨1379, 1174, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨87, 39⟩, ⟨91, 39⟩⟩, (FQ.progression (87 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1349_checked : Entry.check ⟨1379, 1174, ⟨1, 399999999⟩, ⟨0, 10, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1350_checked : Entry.check ⟨1379, 1174, ⟨1, 399999999⟩, ⟨0, 18, 5, ⟨12, 4⟩, ⟨49, 19⟩⟩, (FQ.progression (12 / 5) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1351_checked : Entry.check ⟨1380, 1175, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨13, 4⟩, ⟨211, 79⟩⟩, (FQ.progression (13 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1352_checked : Entry.check ⟨1382, 1176, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨159, 79⟩, ⟨2, 0⟩⟩, [⟨159, 79⟩, ⟨2, 0⟩]⟩ = true := by decide +kernel
theorem run1353_checked : Entry.check ⟨1383, 1176, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨169, 79⟩, ⟨35, 15⟩⟩, (FQ.progression (169 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1354_checked : Entry.check ⟨1384, 1176, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run1355_checked : Entry.check ⟨1385, 1177, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run1356_checked : Entry.check ⟨1387, 1178, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨19, 9⟩, ⟨159, 79⟩⟩, (FQ.progression (19 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1357_checked : Entry.check ⟨1388, 1178, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨83, 39⟩, ⟨17, 7⟩⟩, (FQ.progression (83 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1358_checked : Entry.check ⟨1388, 1179, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 7⟩, ⟨171, 79⟩⟩, [⟨17, 7⟩, ⟨171, 79⟩]⟩ = true := by decide +kernel
theorem run1359_checked : Entry.check ⟨1389, 1180, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨141, 79⟩, ⟨71, 39⟩⟩, [⟨141, 79⟩, ⟨71, 39⟩]⟩ = true := by decide +kernel
theorem run1360_checked : Entry.check ⟨1390, 1180, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨149, 79⟩, ⟨19, 9⟩⟩, (FQ.progression (149 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1361_checked : Entry.check ⟨1390, 1181, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨19, 9⟩, ⟨31, 15⟩⟩, (FQ.progression (19 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1362_checked : Entry.check ⟨1391, 1181, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨81, 39⟩, ⟨167, 79⟩⟩, (FQ.progression (81 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1363_checked : Entry.check ⟨1393, 1182, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨29, 15⟩, ⟨19, 9⟩⟩, (FQ.progression (29 / 16) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1364_checked : Entry.check ⟨1394, 1182, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨79, 39⟩, ⟨163, 79⟩⟩, (FQ.progression (79 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1365_checked : Entry.check ⟨1395, 1183, ⟨1, 399999999⟩, ⟨0, 16, 16, ⟨3, 1⟩, ⟨27, 15⟩⟩, (FQ.progression (3 / 2) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run1366_checked : Entry.check ⟨1396, 1184, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨31, 15⟩, ⟨159, 79⟩⟩, (FQ.progression (31 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1367_checked : Entry.check ⟨1398, 1185, ⟨1, 399999999⟩, ⟨0, 18, 14, ⟨23, 15⟩, ⟨8, 4⟩⟩, (FQ.progression (23 / 16) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1368_checked : Entry.check ⟨1399, 1186, ⟨1, 399999999⟩, ⟨0, 13, 8, ⟨13, 9⟩, ⟨111, 79⟩⟩, (FQ.progression (13 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1369_checked : Entry.check ⟨1399, 1187, ⟨1, 399999999⟩, ⟨0, 20, 15, ⟨111, 79⟩, ⟨25, 15⟩⟩, (FQ.progression (111 / 80) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1370_checked : Entry.check ⟨1401, 1188, ⟨1, 399999999⟩, ⟨0, 15, 12, ⟨5, 3⟩, ⟨111, 79⟩⟩, (FQ.progression (5 / 4) (1 / 80) 12)⟩ = true := by decide +kernel
theorem entries46_checked : entries46.all Entry.check = true := by
  simp only [entries46, List.all_cons, List.all_nil, run1342_checked, run1343_checked, run1344_checked, run1345_checked, run1346_checked, run1347_checked, run1348_checked, run1349_checked, run1350_checked, run1351_checked, run1352_checked, run1353_checked, run1354_checked, run1355_checked, run1356_checked, run1357_checked, run1358_checked, run1359_checked, run1360_checked, run1361_checked, run1362_checked, run1363_checked, run1364_checked, run1365_checked, run1366_checked, run1367_checked, run1368_checked, run1369_checked, run1370_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1371_checked : Entry.check ⟨1401, 1189, ⟨1, 399999999⟩, ⟨0, 26, 3, ⟨111, 79⟩, ⟨113, 79⟩⟩, [⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run1372_checked : Entry.check ⟨1402, 1190, ⟨1, 399999999⟩, ⟨0, 12, 7, ⟨91, 79⟩, ⟨97, 79⟩⟩, (FQ.progression (91 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1373_checked : Entry.check ⟨1402, 1191, ⟨1, 399999999⟩, ⟨0, 18, 11, ⟨97, 79⟩, ⟨107, 79⟩⟩, (FQ.progression (97 / 80) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run1374_checked : Entry.check ⟨1402, 1192, ⟨1, 399999999⟩, ⟨0, 28, 4, ⟨107, 79⟩, ⟨11, 7⟩⟩, (FQ.progression (107 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1375_checked : Entry.check ⟨1404, 1193, ⟨1, 399999999⟩, ⟨0, 11, 6, ⟨21, 19⟩, ⟨89, 79⟩⟩, (FQ.progression (21 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1376_checked : Entry.check ⟨1404, 1194, ⟨1, 399999999⟩, ⟨0, 16, 6, ⟨89, 79⟩, ⟨47, 39⟩⟩, (FQ.progression (89 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1377_checked : Entry.check ⟨1404, 1195, ⟨1, 399999999⟩, ⟨0, 21, 5, ⟨47, 39⟩, ⟨49, 39⟩⟩, (FQ.progression (47 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1378_checked : Entry.check ⟨1405, 1196, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨79, 79⟩, ⟨41, 39⟩⟩, (FQ.progression (79 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1379_checked : Entry.check ⟨1405, 1197, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨41, 39⟩, ⟨17, 15⟩⟩, (FQ.progression (41 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1380_checked : Entry.check ⟨1405, 1198, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨17, 15⟩, ⟨43, 39⟩⟩, [⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run1381_checked : Entry.check ⟨1405, 1199, ⟨1, 399999999⟩, ⟨0, 18, 3, ⟨43, 39⟩, ⟨11, 9⟩⟩, [⟨43, 39⟩, ⟨87, 79⟩, ⟨11, 9⟩]⟩ = true := by decide +kernel
theorem run1382_checked : Entry.check ⟨1405, 1200, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨11, 9⟩, ⟨89, 79⟩⟩, [⟨11, 9⟩, ⟨89, 79⟩]⟩ = true := by decide +kernel
theorem run1383_checked : Entry.check ⟨1406, 1201, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨15, 15⟩, ⟨77, 79⟩⟩, [⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩]⟩ = true := by decide +kernel
theorem run1384_checked : Entry.check ⟨1406, 1202, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨77, 79⟩, ⟨79, 79⟩⟩, [⟨77, 79⟩, ⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run1385_checked : Entry.check ⟨1406, 1203, ⟨1, 399999999⟩, ⟨0, 17, 6, ⟨79, 79⟩, ⟨21, 19⟩⟩, (FQ.progression (79 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1386_checked : Entry.check ⟨1407, 1204, ⟨1, 399999999⟩, ⟨0, 0, 18, ⟨4, 0⟩, ⟨337, 79⟩⟩, (FQ.progression (4 / 1) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run1387_checked : Entry.check ⟨1408, 1205, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run1388_checked : Entry.check ⟨1408, 1206, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨7, 7⟩, ⟨9, 9⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run1389_checked : Entry.check ⟨1408, 1207, ⟨1, 399999999⟩, ⟨0, 16, 4, ⟨9, 9⟩, ⟨15, 15⟩⟩, (FQ.progression (9 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1390_checked : Entry.check ⟨1408, 1208, ⟨1, 399999999⟩, ⟨0, 19, 4, ⟨15, 15⟩, ⟨39, 39⟩⟩, (FQ.progression (15 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1391_checked : Entry.check ⟨1408, 1209, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run1392_checked : Entry.check ⟨1409, 1210, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨2, 0⟩, ⟨167, 79⟩⟩, (FQ.progression (2 / 1) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1393_checked : Entry.check ⟨1410, 1211, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨4, 4⟩, ⟨13, 15⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run1394_checked : Entry.check ⟨1410, 1212, ⟨1, 399999999⟩, ⟨0, 11, 5, ⟨13, 15⟩, ⟨69, 79⟩⟩, (FQ.progression (13 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1395_checked : Entry.check ⟨1410, 1213, ⟨1, 399999999⟩, ⟨0, 15, 2, ⟨69, 79⟩, ⟨7, 7⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run1396_checked : Entry.check ⟨1410, 1214, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨7, 7⟩, ⟨9, 9⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run1397_checked : Entry.check ⟨1410, 1215, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨9, 9⟩, ⟨73, 79⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩]⟩ = true := by decide +kernel
theorem run1398_checked : Entry.check ⟨1410, 1216, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨73, 79⟩, ⟨37, 39⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run1399_checked : Entry.check ⟨1411, 1217, ⟨1, 399999999⟩, ⟨0, 0, 33, ⟨273, 79⟩, ⟨61, 15⟩⟩, (FQ.progression (273 / 80) (1 / 80) 33)⟩ = true := by decide +kernel
theorem run1400_checked : Entry.check ⟨1412, 1217, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨21, 4⟩, ⟨173, 39⟩⟩, (FQ.progression (21 / 5) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run1401_checked : Entry.check ⟨1412, 1218, ⟨1, 399999999⟩, ⟨0, 10, 11, ⟨173, 39⟩, ⟨89, 19⟩⟩, (FQ.progression (173 / 40) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run1402_checked : Entry.check ⟨1413, 1219, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨59, 79⟩, ⟨61, 79⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem entries47_checked : entries47.all Entry.check = true := by
  simp only [entries47, List.all_cons, List.all_nil, run1371_checked, run1372_checked, run1373_checked, run1374_checked, run1375_checked, run1376_checked, run1377_checked, run1378_checked, run1379_checked, run1380_checked, run1381_checked, run1382_checked, run1383_checked, run1384_checked, run1385_checked, run1386_checked, run1387_checked, run1388_checked, run1389_checked, run1390_checked, run1391_checked, run1392_checked, run1393_checked, run1394_checked, run1395_checked, run1396_checked, run1397_checked, run1398_checked, run1399_checked, run1400_checked, run1401_checked, run1402_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1403_checked : Entry.check ⟨1413, 1220, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, (FQ.progression (61 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1404_checked : Entry.check ⟨1413, 1221, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨4, 4⟩, ⟨33, 39⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩]⟩ = true := by decide +kernel
theorem run1405_checked : Entry.check ⟨1413, 1222, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨33, 39⟩, ⟨67, 79⟩⟩, [⟨33, 39⟩, ⟨67, 79⟩]⟩ = true := by decide +kernel
theorem run1406_checked : Entry.check ⟨1414, 1223, ⟨1, 399999999⟩, ⟨0, 9, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run1407_checked : Entry.check ⟨1414, 1224, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨57, 79⟩, ⟨3, 3⟩⟩, (FQ.progression (57 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1408_checked : Entry.check ⟨1414, 1225, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨3, 3⟩, ⟨31, 39⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run1409_checked : Entry.check ⟨1414, 1226, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨31, 39⟩, ⟨4, 4⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run1410_checked : Entry.check ⟨1416, 1227, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨29, 15⟩, ⟨149, 79⟩⟩, (FQ.progression (29 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1411_checked : Entry.check ⟨1418, 1228, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1412_checked : Entry.check ⟨1418, 1229, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run1413_checked : Entry.check ⟨1419, 1230, ⟨1, 399999999⟩, ⟨0, 1, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1414_checked : Entry.check ⟨1419, 1231, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨11, 19⟩, ⟨3, 4⟩⟩, (FQ.progression (11 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1415_checked : Entry.check ⟨1420, 1232, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨39, 79⟩, ⟨21, 39⟩⟩, (FQ.progression (39 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1416_checked : Entry.check ⟨1421, 1233, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1417_checked : Entry.check ⟨1422, 1234, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨117, 79⟩, ⟨61, 39⟩⟩, (FQ.progression (117 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1418_checked : Entry.check ⟨1422, 1235, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨61, 39⟩, ⟨31, 19⟩⟩, [⟨61, 39⟩, ⟨123, 79⟩, ⟨31, 19⟩]⟩ = true := by decide +kernel
theorem run1419_checked : Entry.check ⟨1423, 1235, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨25, 15⟩, ⟨8, 4⟩⟩, (FQ.progression (25 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1420_checked : Entry.check ⟨1424, 1236, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨139, 79⟩, ⟨149, 79⟩⟩, (FQ.progression (139 / 80) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run1421_checked : Entry.check ⟨1425, 1236, ⟨1, 399999999⟩, ⟨0, 0, 14, ⟨151, 79⟩, ⟨41, 19⟩⟩, (FQ.progression (151 / 80) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1422_checked : Entry.check ⟨1425, 1237, ⟨1, 399999999⟩, ⟨0, 13, 6, ⟨41, 19⟩, ⟨169, 79⟩⟩, (FQ.progression (41 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1423_checked : Entry.check ⟨1426, 1237, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨43, 19⟩, ⟨89, 39⟩⟩, (FQ.progression (43 / 20) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1424_checked : Entry.check ⟨1428, 1238, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run1425_checked : Entry.check ⟨1428, 1239, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run1426_checked : Entry.check ⟨1429, 1240, ⟨1, 399999999⟩, ⟨0, 0, 17, ⟨19, 4⟩, ⟨4, 0⟩⟩, (FQ.progression (19 / 5) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run1427_checked : Entry.check ⟨1430, 1241, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1428_checked : Entry.check ⟨1431, 1242, ⟨1, 399999999⟩, ⟨0, 0, 14, ⟨57, 19⟩, ⟨241, 79⟩⟩, (FQ.progression (57 / 20) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run1429_checked : Entry.check ⟨1431, 1243, ⟨1, 399999999⟩, ⟨0, 13, 7, ⟨241, 79⟩, ⟨247, 79⟩⟩, (FQ.progression (241 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run1430_checked : Entry.check ⟨1432, 1244, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨27, 79⟩, ⟨29, 79⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩]⟩ = true := by decide +kernel
theorem run1431_checked : Entry.check ⟨1433, 1245, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨27, 79⟩, ⟨2, 4⟩⟩, (FQ.progression (27 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run1432_checked : Entry.check ⟨1434, 1246, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 7⟩, ⟨13, 19⟩⟩, [⟨5, 7⟩, ⟨51, 79⟩, ⟨13, 19⟩]⟩ = true := by decide +kernel
theorem run1433_checked : Entry.check ⟨1434, 1247, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨13, 19⟩, ⟨53, 79⟩⟩, [⟨13, 19⟩, ⟨53, 79⟩]⟩ = true := by decide +kernel
theorem run1434_checked : Entry.check ⟨1435, 1248, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨29, 39⟩, ⟨61, 79⟩⟩, (FQ.progression (29 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem entries48_checked : entries48.all Entry.check = true := by
  simp only [entries48, List.all_cons, List.all_nil, run1403_checked, run1404_checked, run1405_checked, run1406_checked, run1407_checked, run1408_checked, run1409_checked, run1410_checked, run1411_checked, run1412_checked, run1413_checked, run1414_checked, run1415_checked, run1416_checked, run1417_checked, run1418_checked, run1419_checked, run1420_checked, run1421_checked, run1422_checked, run1423_checked, run1424_checked, run1425_checked, run1426_checked, run1427_checked, run1428_checked, run1429_checked, run1430_checked, run1431_checked, run1432_checked, run1433_checked, run1434_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1435_checked : Entry.check ⟨1435, 1249, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, (FQ.progression (61 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1436_checked : Entry.check ⟨1436, 1250, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨67, 79⟩, ⟨69, 79⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run1437_checked : Entry.check ⟨1437, 1251, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 9⟩, ⟨37, 39⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run1438_checked : Entry.check ⟨1438, 1252, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨19, 19⟩, ⟨1, 0⟩⟩, (FQ.progression (19 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1439_checked : Entry.check ⟨1439, 1253, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨21, 19⟩, ⟨43, 39⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run1440_checked : Entry.check ⟨1440, 1253, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨11, 9⟩, ⟨23, 19⟩⟩, (FQ.progression (11 / 10) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1441_checked : Entry.check ⟨1441, 1254, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨19, 15⟩, ⟨49, 39⟩⟩, (FQ.progression (19 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1442_checked : Entry.check ⟨1442, 1255, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run1443_checked : Entry.check ⟨1442, 1256, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run1444_checked : Entry.check ⟨1443, 1257, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨21, 79⟩, ⟨3, 9⟩⟩, (FQ.progression (21 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run1445_checked : Entry.check ⟨1444, 1258, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run1446_checked : Entry.check ⟨1445, 1259, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run1447_checked : Entry.check ⟨1446, 1260, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨17, 79⟩, ⟨9, 39⟩⟩, [⟨17, 79⟩, ⟨9, 39⟩]⟩ = true := by decide +kernel
theorem run1448_checked : Entry.check ⟨1446, 1261, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run1449_checked : Entry.check ⟨1447, 1262, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨53, 19⟩, ⟨107, 39⟩⟩, [⟨53, 19⟩, ⟨213, 79⟩, ⟨107, 39⟩]⟩ = true := by decide +kernel
theorem run1450_checked : Entry.check ⟨1454, 1263, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨169, 79⟩, ⟨183, 79⟩⟩, (FQ.progression (169 / 80) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1451_checked : Entry.check ⟨1456, 1264, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨41, 19⟩, ⟨21, 9⟩⟩, (FQ.progression (41 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run1452_checked : Entry.check ⟨1460, 1265, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨37, 79⟩, ⟨19, 39⟩⟩, [⟨37, 79⟩, ⟨19, 39⟩]⟩ = true := by decide +kernel
theorem run1453_checked : Entry.check ⟨1460, 1266, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨19, 39⟩, ⟨39, 79⟩⟩, [⟨19, 39⟩, ⟨39, 79⟩]⟩ = true := by decide +kernel
theorem run1454_checked : Entry.check ⟨1461, 1267, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨21, 79⟩, ⟨11, 39⟩⟩, [⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run1455_checked : Entry.check ⟨1462, 1268, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem entries49_checked : entries49.all Entry.check = true := by
  simp only [entries49, List.all_cons, List.all_nil, run1435_checked, run1436_checked, run1437_checked, run1438_checked, run1439_checked, run1440_checked, run1441_checked, run1442_checked, run1443_checked, run1444_checked, run1445_checked, run1446_checked, run1447_checked, run1448_checked, run1449_checked, run1450_checked, run1451_checked, run1452_checked, run1453_checked, run1454_checked, run1455_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
