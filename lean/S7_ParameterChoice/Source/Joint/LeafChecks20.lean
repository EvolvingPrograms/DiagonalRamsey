import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run561_checked : Entry.check ⟨449, 483, ⟨1, 399999999⟩, ⟨0, 16, 11, ⟨99, 79⟩, ⟨109, 79⟩⟩, [⟨99, 79⟩, ⟨5, 3⟩, ⟨101, 79⟩, ⟨51, 39⟩, ⟨103, 79⟩, ⟨13, 9⟩, ⟨21, 15⟩, ⟨53, 39⟩, ⟨107, 79⟩, ⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run562_checked : Entry.check ⟨449, 484, ⟨1, 399999999⟩, ⟨0, 26, 6, ⟨109, 79⟩, ⟨57, 39⟩⟩, [⟨109, 79⟩, ⟨11, 7⟩, ⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩, ⟨57, 39⟩]⟩ = true := by decide +kernel
theorem run563_checked : Entry.check ⟨451, 485, ⟨1, 399999999⟩, ⟨0, 14, 7, ⟨91, 79⟩, ⟨97, 79⟩⟩, [⟨91, 79⟩, ⟨23, 19⟩, ⟨93, 79⟩, ⟨47, 39⟩, ⟨19, 15⟩, ⟨6, 4⟩, ⟨97, 79⟩]⟩ = true := by decide +kernel
theorem run564_checked : Entry.check ⟨451, 486, ⟨1, 399999999⟩, ⟨0, 20, 4, ⟨97, 79⟩, ⟨5, 3⟩⟩, [⟨97, 79⟩, ⟨49, 39⟩, ⟨99, 79⟩, ⟨5, 3⟩]⟩ = true := by decide +kernel
theorem run565_checked : Entry.check ⟨451, 487, ⟨1, 399999999⟩, ⟨0, 23, 7, ⟨5, 3⟩, ⟨53, 39⟩⟩, [⟨5, 3⟩, ⟨101, 79⟩, ⟨51, 39⟩, ⟨103, 79⟩, ⟨13, 9⟩, ⟨21, 15⟩, ⟨53, 39⟩]⟩ = true := by decide +kernel
theorem run566_checked : Entry.check ⟨451, 488, ⟨1, 399999999⟩, ⟨0, 29, 2, ⟨53, 39⟩, ⟨107, 79⟩⟩, [⟨53, 39⟩, ⟨107, 79⟩]⟩ = true := by decide +kernel
theorem run567_checked : Entry.check ⟨451, 489, ⟨1, 399999999⟩, ⟨0, 30, 5, ⟨107, 79⟩, ⟨111, 79⟩⟩, [⟨107, 79⟩, ⟨27, 19⟩, ⟨109, 79⟩, ⟨11, 7⟩, ⟨111, 79⟩]⟩ = true := by decide +kernel
theorem run568_checked : Entry.check ⟨452, 490, ⟨1, 399999999⟩, ⟨0, 12, 5, ⟨21, 19⟩, ⟨11, 9⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩, ⟨43, 39⟩, ⟨87, 79⟩, ⟨11, 9⟩]⟩ = true := by decide +kernel
theorem run569_checked : Entry.check ⟨452, 491, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨11, 9⟩, ⟨9, 7⟩⟩, [⟨11, 9⟩, ⟨89, 79⟩, ⟨9, 7⟩]⟩ = true := by decide +kernel
theorem run570_checked : Entry.check ⟨452, 492, ⟨1, 399999999⟩, ⟨0, 18, 6, ⟨9, 7⟩, ⟨19, 15⟩⟩, [⟨9, 7⟩, ⟨91, 79⟩, ⟨23, 19⟩, ⟨93, 79⟩, ⟨47, 39⟩, ⟨19, 15⟩]⟩ = true := by decide +kernel
theorem run571_checked : Entry.check ⟨452, 493, ⟨1, 399999999⟩, ⟨0, 23, 2, ⟨19, 15⟩, ⟨6, 4⟩⟩, [⟨19, 15⟩, ⟨6, 4⟩]⟩ = true := by decide +kernel
theorem run572_checked : Entry.check ⟨452, 494, ⟨1, 399999999⟩, ⟨0, 24, 4, ⟨6, 4⟩, ⟨99, 79⟩⟩, [⟨6, 4⟩, ⟨97, 79⟩, ⟨49, 39⟩, ⟨99, 79⟩]⟩ = true := by decide +kernel
theorem run573_checked : Entry.check ⟨453, 495, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨79, 79⟩, ⟨81, 79⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩, ⟨81, 79⟩]⟩ = true := by decide +kernel
theorem run574_checked : Entry.check ⟨453, 496, ⟨1, 399999999⟩, ⟨0, 15, 6, ⟨81, 79⟩, ⟨43, 39⟩⟩, [⟨81, 79⟩, ⟨41, 39⟩, ⟨83, 79⟩, ⟨21, 19⟩, ⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run575_checked : Entry.check ⟨453, 497, ⟨1, 399999999⟩, ⟨0, 20, 7, ⟨43, 39⟩, ⟨23, 19⟩⟩, [⟨43, 39⟩, ⟨87, 79⟩, ⟨11, 9⟩, ⟨89, 79⟩, ⟨9, 7⟩, ⟨91, 79⟩, ⟨23, 19⟩]⟩ = true := by decide +kernel
theorem run576_checked : Entry.check ⟨454, 498, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨37, 39⟩, ⟨19, 19⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩]⟩ = true := by decide +kernel
theorem run577_checked : Entry.check ⟨454, 499, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨19, 19⟩, ⟨79, 79⟩⟩, [⟨19, 19⟩, ⟨77, 79⟩, ⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run578_checked : Entry.check ⟨454, 500, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨79, 79⟩, ⟨1, 0⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩]⟩ = true := by decide +kernel
theorem run579_checked : Entry.check ⟨454, 501, ⟨1, 399999999⟩, ⟨0, 18, 5, ⟨1, 0⟩, ⟨21, 19⟩⟩, [⟨1, 0⟩, ⟨81, 79⟩, ⟨41, 39⟩, ⟨83, 79⟩, ⟨21, 19⟩]⟩ = true := by decide +kernel
theorem run580_checked : Entry.check ⟨454, 502, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨21, 19⟩, ⟨17, 15⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run581_checked : Entry.check ⟨455, 503, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨127, 79⟩, ⟨131, 79⟩⟩, [⟨127, 79⟩, ⟨8, 4⟩, ⟨129, 79⟩, ⟨13, 7⟩, ⟨131, 79⟩]⟩ = true := by decide +kernel
theorem run582_checked : Entry.check ⟨456, 504, ⟨1, 399999999⟩, ⟨0, 0, 26, ⟨213, 79⟩, ⟨119, 39⟩⟩, [⟨213, 79⟩, ⟨107, 39⟩, ⟨43, 15⟩, ⟨27, 9⟩, ⟨217, 79⟩, ⟨109, 39⟩, ⟨219, 79⟩, ⟨11, 3⟩, ⟨221, 79⟩, ⟨111, 39⟩, ⟨223, 79⟩, ⟨14, 4⟩, ⟨45, 15⟩, ⟨113, 39⟩, ⟨227, 79⟩, ⟨57, 19⟩, ⟨229, 79⟩, ⟨23, 7⟩, ⟨231, 79⟩, ⟨29, 9⟩, ⟨233, 79⟩, ⟨117, 39⟩, ⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩, ⟨119, 39⟩]⟩ = true := by decide +kernel
theorem run583_checked : Entry.check ⟨457, 504, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨51, 15⟩, ⟨263, 79⟩⟩, [⟨51, 15⟩, ⟨16, 4⟩, ⟨257, 79⟩, ⟨129, 39⟩, ⟨259, 79⟩, ⟨13, 3⟩, ⟨261, 79⟩, ⟨131, 39⟩, ⟨263, 79⟩]⟩ = true := by decide +kernel
theorem run584_checked : Entry.check ⟨457, 505, ⟨1, 399999999⟩, ⟨0, 8, 17, ⟨263, 79⟩, ⟨279, 79⟩⟩, [⟨263, 79⟩, ⟨33, 9⟩, ⟨53, 15⟩, ⟨133, 39⟩, ⟨267, 79⟩, ⟨67, 19⟩, ⟨269, 79⟩, ⟨27, 7⟩, ⟨271, 79⟩, ⟨17, 4⟩, ⟨273, 79⟩, ⟨137, 39⟩, ⟨55, 15⟩, ⟨69, 19⟩, ⟨277, 79⟩, ⟨139, 39⟩, ⟨279, 79⟩]⟩ = true := by decide +kernel
theorem run585_checked : Entry.check ⟨458, 506, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run586_checked : Entry.check ⟨458, 507, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨7, 7⟩, ⟨9, 9⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run587_checked : Entry.check ⟨458, 508, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨9, 9⟩, ⟨37, 39⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run588_checked : Entry.check ⟨458, 509, ⟨1, 399999999⟩, ⟨0, 18, 5, ⟨37, 39⟩, ⟨39, 39⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run589_checked : Entry.check ⟨458, 510, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run590_checked : Entry.check ⟨459, 511, ⟨1, 399999999⟩, ⟨0, 0, 34, ⟨19, 4⟩, ⟨337, 79⟩⟩, [⟨19, 4⟩, ⟨61, 15⟩, ⟨153, 39⟩, ⟨307, 79⟩, ⟨77, 19⟩, ⟨309, 79⟩, ⟨31, 7⟩, ⟨311, 79⟩, ⟨39, 9⟩, ⟨313, 79⟩, ⟨157, 39⟩, ⟨63, 15⟩, ⟨79, 19⟩, ⟨317, 79⟩, ⟨159, 39⟩, ⟨319, 79⟩, ⟨4, 0⟩, ⟨321, 79⟩, ⟨161, 39⟩, ⟨323, 79⟩, ⟨81, 19⟩, ⟨65, 15⟩, ⟨163, 39⟩, ⟨327, 79⟩, ⟨41, 9⟩, ⟨329, 79⟩, ⟨33, 7⟩, ⟨331, 79⟩, ⟨83, 19⟩, ⟨333, 79⟩, ⟨167, 39⟩, ⟨67, 15⟩, ⟨21, 4⟩, ⟨337, 79⟩]⟩ = true := by decide +kernel
theorem run591_checked : Entry.check ⟨461, 512, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨63, 79⟩, ⟨33, 39⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩]⟩ = true := by decide +kernel
theorem run592_checked : Entry.check ⟨461, 513, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨33, 39⟩, ⟨17, 19⟩⟩, [⟨33, 39⟩, ⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem entries20_checked : entries20.all Entry.check = true := by
  simp only [entries20, List.all_cons, List.all_nil, run561_checked, run562_checked, run563_checked, run564_checked, run565_checked, run566_checked, run567_checked, run568_checked, run569_checked, run570_checked, run571_checked, run572_checked, run573_checked, run574_checked, run575_checked, run576_checked, run577_checked, run578_checked, run579_checked, run580_checked, run581_checked, run582_checked, run583_checked, run584_checked, run585_checked, run586_checked, run587_checked, run588_checked, run589_checked, run590_checked, run591_checked, run592_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
