import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
