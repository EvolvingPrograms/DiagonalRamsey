import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
