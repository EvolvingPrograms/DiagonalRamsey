import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
