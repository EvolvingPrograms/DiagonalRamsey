import S7_ParameterChoice.Source.Joint.Foundations.ArithmeticData
import S7_ParameterChoice.Source.Joint.Leaves.LeafIndex

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel reductions; Lake parallelizes these batches.
set_option Elab.async false

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
