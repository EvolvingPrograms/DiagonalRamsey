import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run151_checked : Entry.check ⟨88, 121, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run152_checked : Entry.check ⟨88, 122, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run153_checked : Entry.check ⟨89, 123, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨41, 39⟩, ⟨21, 19⟩⟩, [⟨41, 39⟩, ⟨83, 79⟩, ⟨21, 19⟩]⟩ = true := by decide +kernel
theorem run154_checked : Entry.check ⟨89, 124, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨21, 19⟩, ⟨17, 15⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run155_checked : Entry.check ⟨89, 125, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨17, 15⟩, ⟨43, 39⟩⟩, [⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run156_checked : Entry.check ⟨89, 126, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨43, 39⟩, ⟨87, 79⟩⟩, [⟨43, 39⟩, ⟨87, 79⟩]⟩ = true := by decide +kernel
theorem run157_checked : Entry.check ⟨89, 127, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨87, 79⟩, ⟨11, 9⟩⟩, [⟨87, 79⟩, ⟨11, 9⟩]⟩ = true := by decide +kernel
theorem run158_checked : Entry.check ⟨89, 126, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨11, 9⟩, ⟨89, 79⟩⟩, [⟨11, 9⟩, ⟨89, 79⟩]⟩ = true := by decide +kernel
theorem run159_checked : Entry.check ⟨89, 127, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨89, 79⟩, ⟨9, 7⟩⟩, [⟨89, 79⟩, ⟨9, 7⟩]⟩ = true := by decide +kernel
theorem run160_checked : Entry.check ⟨89, 126, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨9, 7⟩, ⟨91, 79⟩⟩, [⟨9, 7⟩, ⟨91, 79⟩]⟩ = true := by decide +kernel
theorem run161_checked : Entry.check ⟨89, 128, ⟨1, 399999999⟩, ⟨0, 9, 9, ⟨91, 79⟩, ⟨99, 79⟩⟩, [⟨91, 79⟩, ⟨23, 19⟩, ⟨93, 79⟩, ⟨47, 39⟩, ⟨19, 15⟩, ⟨6, 4⟩, ⟨97, 79⟩, ⟨49, 39⟩, ⟨99, 79⟩]⟩ = true := by decide +kernel
theorem run162_checked : Entry.check ⟨89, 129, ⟨1, 399999999⟩, ⟨0, 17, 10, ⟨99, 79⟩, ⟨27, 19⟩⟩, [⟨99, 79⟩, ⟨5, 3⟩, ⟨101, 79⟩, ⟨51, 39⟩, ⟨103, 79⟩, ⟨13, 9⟩, ⟨21, 15⟩, ⟨53, 39⟩, ⟨107, 79⟩, ⟨27, 19⟩]⟩ = true := by decide +kernel
theorem run163_checked : Entry.check ⟨89, 130, ⟨1, 399999999⟩, ⟨0, 26, 2, ⟨27, 19⟩, ⟨109, 79⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run164_checked : Entry.check ⟨89, 131, ⟨1, 399999999⟩, ⟨0, 27, 2, ⟨109, 79⟩, ⟨11, 7⟩⟩, [⟨109, 79⟩, ⟨11, 7⟩]⟩ = true := by decide +kernel
theorem run165_checked : Entry.check ⟨90, 132, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run166_checked : Entry.check ⟨90, 133, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run167_checked : Entry.check ⟨91, 134, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨77, 79⟩, ⟨39, 39⟩⟩, [⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run168_checked : Entry.check ⟨91, 135, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨39, 39⟩, ⟨81, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩, ⟨1, 0⟩, ⟨81, 79⟩]⟩ = true := by decide +kernel
theorem run169_checked : Entry.check ⟨91, 136, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨81, 79⟩, ⟨41, 39⟩⟩, [⟨81, 79⟩, ⟨41, 39⟩]⟩ = true := by decide +kernel
theorem run170_checked : Entry.check ⟨91, 137, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨41, 39⟩, ⟨83, 79⟩⟩, [⟨41, 39⟩, ⟨83, 79⟩]⟩ = true := by decide +kernel
theorem run171_checked : Entry.check ⟨91, 136, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨83, 79⟩, ⟨21, 19⟩⟩, [⟨83, 79⟩, ⟨21, 19⟩]⟩ = true := by decide +kernel
theorem run172_checked : Entry.check ⟨91, 138, ⟨1, 399999999⟩, ⟨0, 7, 6, ⟨21, 19⟩, ⟨89, 79⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩, ⟨43, 39⟩, ⟨87, 79⟩, ⟨11, 9⟩, ⟨89, 79⟩]⟩ = true := by decide +kernel
theorem run173_checked : Entry.check ⟨91, 139, ⟨1, 399999999⟩, ⟨0, 12, 6, ⟨89, 79⟩, ⟨47, 39⟩⟩, [⟨89, 79⟩, ⟨9, 7⟩, ⟨91, 79⟩, ⟨23, 19⟩, ⟨93, 79⟩, ⟨47, 39⟩]⟩ = true := by decide +kernel
theorem run174_checked : Entry.check ⟨91, 140, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨47, 39⟩, ⟨19, 15⟩⟩, [⟨47, 39⟩, ⟨19, 15⟩]⟩ = true := by decide +kernel
theorem run175_checked : Entry.check ⟨91, 139, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨19, 15⟩, ⟨6, 4⟩⟩, [⟨19, 15⟩, ⟨6, 4⟩]⟩ = true := by decide +kernel
theorem run176_checked : Entry.check ⟨91, 141, ⟨1, 399999999⟩, ⟨0, 19, 10, ⟨6, 4⟩, ⟨21, 15⟩⟩, [⟨6, 4⟩, ⟨97, 79⟩, ⟨49, 39⟩, ⟨99, 79⟩, ⟨5, 3⟩, ⟨101, 79⟩, ⟨51, 39⟩, ⟨103, 79⟩, ⟨13, 9⟩, ⟨21, 15⟩]⟩ = true := by decide +kernel
theorem run177_checked : Entry.check ⟨91, 142, ⟨1, 399999999⟩, ⟨0, 28, 2, ⟨21, 15⟩, ⟨53, 39⟩⟩, [⟨21, 15⟩, ⟨53, 39⟩]⟩ = true := by decide +kernel
theorem run178_checked : Entry.check ⟨92, 143, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run179_checked : Entry.check ⟨92, 144, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run180_checked : Entry.check ⟨93, 145, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨71, 79⟩, ⟨73, 79⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩, ⟨73, 79⟩]⟩ = true := by decide +kernel
theorem run181_checked : Entry.check ⟨93, 146, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨73, 79⟩, ⟨77, 79⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩]⟩ = true := by decide +kernel
theorem run182_checked : Entry.check ⟨93, 147, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨77, 79⟩, ⟨39, 39⟩⟩, [⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem entries6_checked : entries6.all Entry.check = true := by
  simp only [entries6, List.all_cons, List.all_nil, run151_checked, run152_checked, run153_checked, run154_checked, run155_checked, run156_checked, run157_checked, run158_checked, run159_checked, run160_checked, run161_checked, run162_checked, run163_checked, run164_checked, run165_checked, run166_checked, run167_checked, run168_checked, run169_checked, run170_checked, run171_checked, run172_checked, run173_checked, run174_checked, run175_checked, run176_checked, run177_checked, run178_checked, run179_checked, run180_checked, run181_checked, run182_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
