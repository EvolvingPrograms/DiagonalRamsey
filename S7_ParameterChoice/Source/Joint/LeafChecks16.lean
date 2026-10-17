import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run455_checked : Entry.check ⟨294, 387, ⟨1, 399999999⟩, ⟨0, 14, 6, ⟨1, 0⟩, ⟨17, 15⟩⟩, [⟨1, 0⟩, ⟨81, 79⟩, ⟨41, 39⟩, ⟨83, 79⟩, ⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run456_checked : Entry.check ⟨294, 388, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨17, 15⟩, ⟨43, 39⟩⟩, [⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run457_checked : Entry.check ⟨294, 389, ⟨1, 399999999⟩, ⟨0, 20, 5, ⟨43, 39⟩, ⟨9, 7⟩⟩, [⟨43, 39⟩, ⟨87, 79⟩, ⟨11, 9⟩, ⟨89, 79⟩, ⟨9, 7⟩]⟩ = true := by decide +kernel
theorem run458_checked : Entry.check ⟨297, 390, ⟨1, 399999999⟩, ⟨0, 11, 5, ⟨9, 9⟩, ⟨19, 19⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩]⟩ = true := by decide +kernel
theorem run459_checked : Entry.check ⟨297, 391, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨19, 19⟩, ⟨39, 39⟩⟩, [⟨19, 19⟩, ⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run460_checked : Entry.check ⟨297, 392, ⟨1, 399999999⟩, ⟨0, 17, 6, ⟨39, 39⟩, ⟨83, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩, ⟨1, 0⟩, ⟨81, 79⟩, ⟨41, 39⟩, ⟨83, 79⟩]⟩ = true := by decide +kernel
theorem run461_checked : Entry.check ⟨301, 393, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨67, 79⟩, ⟨17, 19⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem run462_checked : Entry.check ⟨301, 394, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨17, 19⟩, ⟨71, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run463_checked : Entry.check ⟨301, 395, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨71, 79⟩, ⟨37, 39⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run464_checked : Entry.check ⟨301, 396, ⟨1, 399999999⟩, ⟨0, 17, 4, ⟨37, 39⟩, ⟨77, 79⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩]⟩ = true := by decide +kernel
theorem run465_checked : Entry.check ⟨301, 397, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨77, 79⟩, ⟨39, 39⟩⟩, [⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run466_checked : Entry.check ⟨305, 398, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨63, 79⟩, ⟨13, 15⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run467_checked : Entry.check ⟨305, 399, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩, [⟨13, 15⟩, ⟨33, 39⟩, ⟨67, 79⟩]⟩ = true := by decide +kernel
theorem run468_checked : Entry.check ⟨305, 400, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨67, 79⟩, ⟨69, 79⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run469_checked : Entry.check ⟨305, 401, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨69, 79⟩, ⟨71, 79⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run470_checked : Entry.check ⟨310, 402, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨59, 79⟩, ⟨3, 3⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run471_checked : Entry.check ⟨310, 403, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨3, 3⟩, ⟨63, 79⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩, ⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run472_checked : Entry.check ⟨310, 404, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨63, 79⟩, ⟨33, 39⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩]⟩ = true := by decide +kernel
theorem run473_checked : Entry.check ⟨310, 405, ⟨1, 399999999⟩, ⟨0, 17, 3, ⟨33, 39⟩, ⟨17, 19⟩⟩, [⟨33, 39⟩, ⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem run474_checked : Entry.check ⟨313, 406, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run475_checked : Entry.check ⟨313, 407, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨57, 79⟩, ⟨3, 3⟩⟩, [⟨57, 79⟩, ⟨29, 39⟩, ⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run476_checked : Entry.check ⟨313, 408, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨3, 3⟩, ⟨63, 79⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩, ⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run477_checked : Entry.check ⟨316, 409, ⟨1, 399999999⟩, ⟨0, 10, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, [⟨13, 19⟩, ⟨53, 79⟩, ⟨27, 39⟩, ⟨11, 15⟩, ⟨7, 9⟩]⟩ = true := by decide +kernel
theorem run478_checked : Entry.check ⟨316, 410, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩, ⟨29, 39⟩]⟩ = true := by decide +kernel
theorem run479_checked : Entry.check ⟨319, 411, ⟨1, 399999999⟩, ⟨0, 10, 5, ⟨47, 79⟩, ⟨51, 79⟩⟩, [⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩, ⟨51, 79⟩]⟩ = true := by decide +kernel
theorem run480_checked : Entry.check ⟨319, 412, ⟨1, 399999999⟩, ⟨0, 14, 5, ⟨51, 79⟩, ⟨11, 15⟩⟩, [⟨51, 79⟩, ⟨13, 19⟩, ⟨53, 79⟩, ⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run481_checked : Entry.check ⟨325, 413, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨9, 15⟩, ⟨5, 7⟩⟩, [⟨9, 15⟩, ⟨23, 39⟩, ⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run482_checked : Entry.check ⟨328, 414, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, [⟨1, 1⟩, ⟨41, 79⟩, ⟨21, 39⟩, ⟨43, 79⟩, ⟨11, 19⟩]⟩ = true := by decide +kernel
theorem run483_checked : Entry.check ⟨328, 415, ⟨1, 399999999⟩, ⟨0, 6, 4, ⟨11, 19⟩, ⟨47, 79⟩⟩, [⟨11, 19⟩, ⟨9, 15⟩, ⟨23, 39⟩, ⟨47, 79⟩]⟩ = true := by decide +kernel
theorem run484_checked : Entry.check ⟨331, 416, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨19, 39⟩, ⟨21, 39⟩⟩, [⟨19, 39⟩, ⟨39, 79⟩, ⟨1, 1⟩, ⟨41, 79⟩, ⟨21, 39⟩]⟩ = true := by decide +kernel
theorem run485_checked : Entry.check ⟨337, 417, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, [⟨9, 19⟩, ⟨37, 79⟩, ⟨19, 39⟩, ⟨39, 79⟩, ⟨1, 1⟩]⟩ = true := by decide +kernel
theorem run486_checked : Entry.check ⟨340, 418, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem entries16_checked : entries16.all Entry.check = true := by
  simp only [entries16, List.all_cons, List.all_nil, run455_checked, run456_checked, run457_checked, run458_checked, run459_checked, run460_checked, run461_checked, run462_checked, run463_checked, run464_checked, run465_checked, run466_checked, run467_checked, run468_checked, run469_checked, run470_checked, run471_checked, run472_checked, run473_checked, run474_checked, run475_checked, run476_checked, run477_checked, run478_checked, run479_checked, run480_checked, run481_checked, run482_checked, run483_checked, run484_checked, run485_checked, run486_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
