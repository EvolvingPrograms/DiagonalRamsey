import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
