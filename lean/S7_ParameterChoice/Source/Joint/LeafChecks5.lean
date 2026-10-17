import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run119_checked : Entry.check ⟨81, 97, ⟨1, 399999999⟩, ⟨0, 42, 3, ⟨151, 79⟩, ⟨153, 79⟩⟩, [⟨151, 79⟩, ⟨19, 9⟩, ⟨153, 79⟩]⟩ = true := by decide +kernel
theorem run120_checked : Entry.check ⟨81, 96, ⟨1, 399999999⟩, ⟨0, 44, 2, ⟨153, 79⟩, ⟨77, 39⟩⟩, [⟨153, 79⟩, ⟨77, 39⟩]⟩ = true := by decide +kernel
theorem run121_checked : Entry.check ⟨81, 97, ⟨1, 399999999⟩, ⟨0, 45, 7, ⟨77, 39⟩, ⟨2, 0⟩⟩, [⟨77, 39⟩, ⟨31, 15⟩, ⟨39, 19⟩, ⟨157, 79⟩, ⟨79, 39⟩, ⟨159, 79⟩, ⟨2, 0⟩]⟩ = true := by decide +kernel
theorem run122_checked : Entry.check ⟨82, 98, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run123_checked : Entry.check ⟨82, 99, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run124_checked : Entry.check ⟨83, 100, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨51, 39⟩, ⟨107, 79⟩⟩, [⟨51, 39⟩, ⟨103, 79⟩, ⟨13, 9⟩, ⟨21, 15⟩, ⟨53, 39⟩, ⟨107, 79⟩]⟩ = true := by decide +kernel
theorem run125_checked : Entry.check ⟨83, 101, ⟨1, 399999999⟩, ⟨0, 5, 11, ⟨107, 79⟩, ⟨117, 79⟩⟩, [⟨107, 79⟩, ⟨27, 19⟩, ⟨109, 79⟩, ⟨11, 7⟩, ⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩, ⟨57, 39⟩, ⟨23, 15⟩, ⟨29, 19⟩, ⟨117, 79⟩]⟩ = true := by decide +kernel
theorem run126_checked : Entry.check ⟨83, 102, ⟨1, 399999999⟩, ⟨0, 15, 2, ⟨117, 79⟩, ⟨59, 39⟩⟩, [⟨117, 79⟩, ⟨59, 39⟩]⟩ = true := by decide +kernel
theorem run127_checked : Entry.check ⟨83, 103, ⟨1, 399999999⟩, ⟨0, 16, 20, ⟨59, 39⟩, ⟨137, 79⟩⟩, [⟨59, 39⟩, ⟨119, 79⟩, ⟨3, 1⟩, ⟨121, 79⟩, ⟨61, 39⟩, ⟨123, 79⟩, ⟨31, 19⟩, ⟨25, 15⟩, ⟨63, 39⟩, ⟨127, 79⟩, ⟨8, 4⟩, ⟨129, 79⟩, ⟨13, 7⟩, ⟨131, 79⟩, ⟨33, 19⟩, ⟨133, 79⟩, ⟨67, 39⟩, ⟨27, 15⟩, ⟨17, 9⟩, ⟨137, 79⟩]⟩ = true := by decide +kernel
theorem run128_checked : Entry.check ⟨83, 104, ⟨1, 399999999⟩, ⟨0, 35, 2, ⟨137, 79⟩, ⟨69, 39⟩⟩, [⟨137, 79⟩, ⟨69, 39⟩]⟩ = true := by decide +kernel
theorem run129_checked : Entry.check ⟨83, 105, ⟨1, 399999999⟩, ⟨0, 36, 19, ⟨69, 39⟩, ⟨39, 19⟩⟩, [⟨69, 39⟩, ⟨139, 79⟩, ⟨7, 3⟩, ⟨141, 79⟩, ⟨71, 39⟩, ⟨143, 79⟩, ⟨9, 4⟩, ⟨29, 15⟩, ⟨73, 39⟩, ⟨147, 79⟩, ⟨37, 19⟩, ⟨149, 79⟩, ⟨15, 7⟩, ⟨151, 79⟩, ⟨19, 9⟩, ⟨153, 79⟩, ⟨77, 39⟩, ⟨31, 15⟩, ⟨39, 19⟩]⟩ = true := by decide +kernel
theorem run130_checked : Entry.check ⟨84, 106, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run131_checked : Entry.check ⟨84, 107, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run132_checked : Entry.check ⟨85, 108, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨19, 15⟩, ⟨6, 4⟩⟩, [⟨19, 15⟩, ⟨6, 4⟩]⟩ = true := by decide +kernel
theorem run133_checked : Entry.check ⟨85, 109, ⟨1, 399999999⟩, ⟨0, 1, 9, ⟨6, 4⟩, ⟨13, 9⟩⟩, [⟨6, 4⟩, ⟨97, 79⟩, ⟨49, 39⟩, ⟨99, 79⟩, ⟨5, 3⟩, ⟨101, 79⟩, ⟨51, 39⟩, ⟨103, 79⟩, ⟨13, 9⟩]⟩ = true := by decide +kernel
theorem run134_checked : Entry.check ⟨85, 110, ⟨1, 399999999⟩, ⟨0, 9, 11, ⟨13, 9⟩, ⟨57, 39⟩⟩, [⟨13, 9⟩, ⟨21, 15⟩, ⟨53, 39⟩, ⟨107, 79⟩, ⟨27, 19⟩, ⟨109, 79⟩, ⟨11, 7⟩, ⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩, ⟨57, 39⟩]⟩ = true := by decide +kernel
theorem run135_checked : Entry.check ⟨85, 111, ⟨1, 399999999⟩, ⟨0, 19, 10, ⟨57, 39⟩, ⟨123, 79⟩⟩, [⟨57, 39⟩, ⟨23, 15⟩, ⟨29, 19⟩, ⟨117, 79⟩, ⟨59, 39⟩, ⟨119, 79⟩, ⟨3, 1⟩, ⟨121, 79⟩, ⟨61, 39⟩, ⟨123, 79⟩]⟩ = true := by decide +kernel
theorem run136_checked : Entry.check ⟨86, 112, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run137_checked : Entry.check ⟨86, 113, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run138_checked : Entry.check ⟨87, 114, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 9⟩, ⟨89, 79⟩⟩, [⟨11, 9⟩, ⟨89, 79⟩]⟩ = true := by decide +kernel
theorem run139_checked : Entry.check ⟨87, 115, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨89, 79⟩, ⟨47, 39⟩⟩, [⟨89, 79⟩, ⟨9, 7⟩, ⟨91, 79⟩, ⟨23, 19⟩, ⟨93, 79⟩, ⟨47, 39⟩]⟩ = true := by decide +kernel
theorem run140_checked : Entry.check ⟨87, 116, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨47, 39⟩, ⟨19, 15⟩⟩, [⟨47, 39⟩, ⟨19, 15⟩]⟩ = true := by decide +kernel
theorem run141_checked : Entry.check ⟨87, 117, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨19, 15⟩, ⟨6, 4⟩⟩, [⟨19, 15⟩, ⟨6, 4⟩]⟩ = true := by decide +kernel
theorem run142_checked : Entry.check ⟨87, 116, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨6, 4⟩, ⟨97, 79⟩⟩, [⟨6, 4⟩, ⟨97, 79⟩]⟩ = true := by decide +kernel
theorem run143_checked : Entry.check ⟨87, 117, ⟨1, 399999999⟩, ⟨0, 9, 6, ⟨97, 79⟩, ⟨51, 39⟩⟩, [⟨97, 79⟩, ⟨49, 39⟩, ⟨99, 79⟩, ⟨5, 3⟩, ⟨101, 79⟩, ⟨51, 39⟩]⟩ = true := by decide +kernel
theorem run144_checked : Entry.check ⟨87, 118, ⟨1, 399999999⟩, ⟨0, 14, 5, ⟨51, 39⟩, ⟨53, 39⟩⟩, [⟨51, 39⟩, ⟨103, 79⟩, ⟨13, 9⟩, ⟨21, 15⟩, ⟨53, 39⟩]⟩ = true := by decide +kernel
theorem run145_checked : Entry.check ⟨87, 119, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨53, 39⟩, ⟨107, 79⟩⟩, [⟨53, 39⟩, ⟨107, 79⟩]⟩ = true := by decide +kernel
theorem run146_checked : Entry.check ⟨87, 118, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨107, 79⟩, ⟨27, 19⟩⟩, [⟨107, 79⟩, ⟨27, 19⟩]⟩ = true := by decide +kernel
theorem run147_checked : Entry.check ⟨87, 119, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨27, 19⟩, ⟨109, 79⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run148_checked : Entry.check ⟨87, 118, ⟨1, 399999999⟩, ⟨0, 21, 2, ⟨109, 79⟩, ⟨11, 7⟩⟩, [⟨109, 79⟩, ⟨11, 7⟩]⟩ = true := by decide +kernel
theorem run149_checked : Entry.check ⟨87, 119, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨11, 7⟩, ⟨111, 79⟩⟩, [⟨11, 7⟩, ⟨111, 79⟩]⟩ = true := by decide +kernel
theorem run150_checked : Entry.check ⟨87, 120, ⟨1, 399999999⟩, ⟨0, 23, 9, ⟨111, 79⟩, ⟨119, 79⟩⟩, [⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩, ⟨57, 39⟩, ⟨23, 15⟩, ⟨29, 19⟩, ⟨117, 79⟩, ⟨59, 39⟩, ⟨119, 79⟩]⟩ = true := by decide +kernel
theorem entries5_checked : entries5.all Entry.check = true := by
  simp only [entries5, List.all_cons, List.all_nil, run119_checked, run120_checked, run121_checked, run122_checked, run123_checked, run124_checked, run125_checked, run126_checked, run127_checked, run128_checked, run129_checked, run130_checked, run131_checked, run132_checked, run133_checked, run134_checked, run135_checked, run136_checked, run137_checked, run138_checked, run139_checked, run140_checked, run141_checked, run142_checked, run143_checked, run144_checked, run145_checked, run146_checked, run147_checked, run148_checked, run149_checked, run150_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
