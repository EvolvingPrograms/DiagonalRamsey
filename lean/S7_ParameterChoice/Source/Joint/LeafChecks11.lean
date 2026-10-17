import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run311_checked : Entry.check ⟨137, 266, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨13, 39⟩, ⟨3, 7⟩⟩, [⟨13, 39⟩, ⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run312_checked : Entry.check ⟨138, 267, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run313_checked : Entry.check ⟨138, 268, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run314_checked : Entry.check ⟨138, 269, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run315_checked : Entry.check ⟨139, 269, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run316_checked : Entry.check ⟨140, 270, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨21, 79⟩, ⟨11, 39⟩⟩, [⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run317_checked : Entry.check ⟨141, 270, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 9⟩, ⟨5, 15⟩⟩, [⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run318_checked : Entry.check ⟨141, 271, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨5, 15⟩, ⟨13, 39⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩]⟩ = true := by decide +kernel
theorem run319_checked : Entry.check ⟨141, 272, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨13, 39⟩, ⟨7, 19⟩⟩, [⟨13, 39⟩, ⟨27, 79⟩, ⟨7, 19⟩]⟩ = true := by decide +kernel
theorem run320_checked : Entry.check ⟨142, 273, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run321_checked : Entry.check ⟨142, 274, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run322_checked : Entry.check ⟨142, 275, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run323_checked : Entry.check ⟨143, 275, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run324_checked : Entry.check ⟨144, 276, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run325_checked : Entry.check ⟨144, 277, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 3⟩, ⟨21, 79⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩]⟩ = true := by decide +kernel
theorem run326_checked : Entry.check ⟨145, 278, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨23, 79⟩, ⟨13, 39⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩, ⟨13, 39⟩]⟩ = true := by decide +kernel
theorem run327_checked : Entry.check ⟨145, 279, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨13, 39⟩, ⟨27, 79⟩⟩, [⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run328_checked : Entry.check ⟨146, 280, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run329_checked : Entry.check ⟨146, 281, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run330_checked : Entry.check ⟨147, 281, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run331_checked : Entry.check ⟨148, 282, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run332_checked : Entry.check ⟨149, 282, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run333_checked : Entry.check ⟨150, 283, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨17, 79⟩, ⟨19, 79⟩⟩, [⟨17, 79⟩, ⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run334_checked : Entry.check ⟨151, 284, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨21, 79⟩, ⟨3, 9⟩⟩, [⟨21, 79⟩, ⟨11, 39⟩, ⟨23, 79⟩, ⟨3, 9⟩]⟩ = true := by decide +kernel
theorem run335_checked : Entry.check ⟨152, 285, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run336_checked : Entry.check ⟨153, 285, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 19⟩, ⟨3, 39⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run337_checked : Entry.check ⟨153, 286, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run338_checked : Entry.check ⟨154, 286, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 9⟩, ⟨1, 7⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run339_checked : Entry.check ⟨154, 287, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨1, 7⟩, ⟨13, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩, ⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run340_checked : Entry.check ⟨155, 288, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run341_checked : Entry.check ⟨156, 289, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run342_checked : Entry.check ⟨156, 290, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨11, 39⟩, ⟨23, 79⟩⟩, [⟨11, 39⟩, ⟨23, 79⟩]⟩ = true := by decide +kernel
theorem entries11_checked : entries11.all Entry.check = true := by
  simp only [entries11, List.all_cons, List.all_nil, run311_checked, run312_checked, run313_checked, run314_checked, run315_checked, run316_checked, run317_checked, run318_checked, run319_checked, run320_checked, run321_checked, run322_checked, run323_checked, run324_checked, run325_checked, run326_checked, run327_checked, run328_checked, run329_checked, run330_checked, run331_checked, run332_checked, run333_checked, run334_checked, run335_checked, run336_checked, run337_checked, run338_checked, run339_checked, run340_checked, run341_checked, run342_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
