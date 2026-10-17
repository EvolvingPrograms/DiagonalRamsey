import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run247_checked : Entry.check ⟨107, 207, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨47, 79⟩, ⟨51, 79⟩⟩, [⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩, ⟨51, 79⟩]⟩ = true := by decide +kernel
theorem run248_checked : Entry.check ⟨107, 208, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨51, 79⟩, ⟨13, 19⟩⟩, [⟨51, 79⟩, ⟨13, 19⟩]⟩ = true := by decide +kernel
theorem run249_checked : Entry.check ⟨107, 209, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, [⟨13, 19⟩, ⟨53, 79⟩, ⟨27, 39⟩, ⟨11, 15⟩, ⟨7, 9⟩]⟩ = true := by decide +kernel
theorem run250_checked : Entry.check ⟨107, 210, ⟨1, 399999999⟩, ⟨0, 9, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩, ⟨29, 39⟩]⟩ = true := by decide +kernel
theorem run251_checked : Entry.check ⟨107, 211, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨29, 39⟩, ⟨59, 79⟩⟩, [⟨29, 39⟩, ⟨59, 79⟩]⟩ = true := by decide +kernel
theorem run252_checked : Entry.check ⟨107, 210, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨59, 79⟩, ⟨3, 3⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run253_checked : Entry.check ⟨107, 212, ⟨1, 399999999⟩, ⟨0, 13, 2, ⟨3, 3⟩, ⟨61, 79⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run254_checked : Entry.check ⟨108, 213, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run255_checked : Entry.check ⟨108, 214, ⟨1, 399999999⟩, ⟨0, 5, 6, ⟨3, 39⟩, ⟨11, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run256_checked : Entry.check ⟨108, 215, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run257_checked : Entry.check ⟨109, 216, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨11, 19⟩, ⟨23, 39⟩⟩, [⟨11, 19⟩, ⟨9, 15⟩, ⟨23, 39⟩]⟩ = true := by decide +kernel
theorem run258_checked : Entry.check ⟨109, 217, ⟨1, 399999999⟩, ⟨0, 2, 6, ⟨23, 39⟩, ⟨51, 79⟩⟩, [⟨23, 39⟩, ⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩, ⟨51, 79⟩]⟩ = true := by decide +kernel
theorem run259_checked : Entry.check ⟨109, 218, ⟨1, 399999999⟩, ⟨0, 7, 5, ⟨51, 79⟩, ⟨11, 15⟩⟩, [⟨51, 79⟩, ⟨13, 19⟩, ⟨53, 79⟩, ⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run260_checked : Entry.check ⟨109, 219, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run261_checked : Entry.check ⟨110, 220, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run262_checked : Entry.check ⟨110, 221, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run263_checked : Entry.check ⟨111, 221, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 79⟩, ⟨11, 79⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run264_checked : Entry.check ⟨112, 222, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨41, 79⟩, ⟨9, 15⟩⟩, [⟨41, 79⟩, ⟨21, 39⟩, ⟨43, 79⟩, ⟨11, 19⟩, ⟨9, 15⟩]⟩ = true := by decide +kernel
theorem run265_checked : Entry.check ⟨112, 223, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨9, 15⟩, ⟨5, 7⟩⟩, [⟨9, 15⟩, ⟨23, 39⟩, ⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run266_checked : Entry.check ⟨112, 224, ⟨1, 399999999⟩, ⟨0, 9, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, [⟨5, 7⟩, ⟨51, 79⟩, ⟨13, 19⟩, ⟨53, 79⟩, ⟨27, 39⟩]⟩ = true := by decide +kernel
theorem run267_checked : Entry.check ⟨113, 225, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run268_checked : Entry.check ⟨113, 226, ⟨1, 399999999⟩, ⟨0, 5, 6, ⟨3, 39⟩, ⟨11, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run269_checked : Entry.check ⟨113, 227, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run270_checked : Entry.check ⟨114, 228, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨19, 39⟩, ⟨11, 19⟩⟩, [⟨19, 39⟩, ⟨39, 79⟩, ⟨1, 1⟩, ⟨41, 79⟩, ⟨21, 39⟩, ⟨43, 79⟩, ⟨11, 19⟩]⟩ = true := by decide +kernel
theorem run271_checked : Entry.check ⟨114, 229, ⟨1, 399999999⟩, ⟨0, 6, 6, ⟨11, 19⟩, ⟨49, 79⟩⟩, [⟨11, 19⟩, ⟨9, 15⟩, ⟨23, 39⟩, ⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩]⟩ = true := by decide +kernel
theorem run272_checked : Entry.check ⟨115, 230, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run273_checked : Entry.check ⟨115, 231, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run274_checked : Entry.check ⟨116, 232, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨9, 19⟩, ⟨37, 79⟩⟩, [⟨9, 19⟩, ⟨37, 79⟩]⟩ = true := by decide +kernel
theorem run275_checked : Entry.check ⟨116, 233, ⟨1, 399999999⟩, ⟨0, 1, 8, ⟨37, 79⟩, ⟨11, 19⟩⟩, [⟨37, 79⟩, ⟨19, 39⟩, ⟨39, 79⟩, ⟨1, 1⟩, ⟨41, 79⟩, ⟨21, 39⟩, ⟨43, 79⟩, ⟨11, 19⟩]⟩ = true := by decide +kernel
theorem run276_checked : Entry.check ⟨116, 234, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨11, 19⟩, ⟨47, 79⟩⟩, [⟨11, 19⟩, ⟨9, 15⟩, ⟨23, 39⟩, ⟨47, 79⟩]⟩ = true := by decide +kernel
theorem run277_checked : Entry.check ⟨117, 235, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run278_checked : Entry.check ⟨117, 236, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem entries9_checked : entries9.all Entry.check = true := by
  simp only [entries9, List.all_cons, List.all_nil, run247_checked, run248_checked, run249_checked, run250_checked, run251_checked, run252_checked, run253_checked, run254_checked, run255_checked, run256_checked, run257_checked, run258_checked, run259_checked, run260_checked, run261_checked, run262_checked, run263_checked, run264_checked, run265_checked, run266_checked, run267_checked, run268_checked, run269_checked, run270_checked, run271_checked, run272_checked, run273_checked, run274_checked, run275_checked, run276_checked, run277_checked, run278_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
