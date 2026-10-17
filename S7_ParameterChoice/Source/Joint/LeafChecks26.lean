import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
