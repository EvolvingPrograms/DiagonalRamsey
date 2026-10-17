import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
