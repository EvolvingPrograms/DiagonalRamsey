import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run423_checked : Entry.check ⟨246, 360, ⟨1, 399999999⟩, ⟨0, 56, 39, ⟨103, 39⟩, ⟨61, 19⟩⟩, [⟨103, 39⟩, ⟨207, 79⟩, ⟨13, 4⟩, ⟨209, 79⟩, ⟨21, 7⟩, ⟨211, 79⟩, ⟨53, 19⟩, ⟨213, 79⟩, ⟨107, 39⟩, ⟨43, 15⟩, ⟨27, 9⟩, ⟨217, 79⟩, ⟨109, 39⟩, ⟨219, 79⟩, ⟨11, 3⟩, ⟨221, 79⟩, ⟨111, 39⟩, ⟨223, 79⟩, ⟨14, 4⟩, ⟨45, 15⟩, ⟨113, 39⟩, ⟨227, 79⟩, ⟨57, 19⟩, ⟨229, 79⟩, ⟨23, 7⟩, ⟨231, 79⟩, ⟨29, 9⟩, ⟨233, 79⟩, ⟨117, 39⟩, ⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩, ⟨119, 39⟩, ⟨239, 79⟩, ⟨3, 0⟩, ⟨241, 79⟩, ⟨121, 39⟩, ⟨243, 79⟩, ⟨61, 19⟩]⟩ = true := by decide +kernel
theorem run424_checked : Entry.check ⟨246, 361, ⟨1, 399999999⟩, ⟨0, 94, 4, ⟨61, 19⟩, ⟨247, 79⟩⟩, [⟨61, 19⟩, ⟨49, 15⟩, ⟨123, 39⟩, ⟨247, 79⟩]⟩ = true := by decide +kernel
theorem run425_checked : Entry.check ⟨249, 362, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨31, 15⟩, ⟨79, 39⟩⟩, [⟨31, 15⟩, ⟨39, 19⟩, ⟨157, 79⟩, ⟨79, 39⟩]⟩ = true := by decide +kernel
theorem run426_checked : Entry.check ⟨249, 363, ⟨1, 399999999⟩, ⟨0, 18, 4, ⟨79, 39⟩, ⟨161, 79⟩⟩, [⟨79, 39⟩, ⟨159, 79⟩, ⟨2, 0⟩, ⟨161, 79⟩]⟩ = true := by decide +kernel
theorem run427_checked : Entry.check ⟨250, 363, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨173, 79⟩, ⟨87, 39⟩⟩, [⟨173, 79⟩, ⟨87, 39⟩]⟩ = true := by decide +kernel
theorem run428_checked : Entry.check ⟨251, 363, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run429_checked : Entry.check ⟨252, 363, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run430_checked : Entry.check ⟨253, 363, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run431_checked : Entry.check ⟨254, 364, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run432_checked : Entry.check ⟨255, 365, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run433_checked : Entry.check ⟨258, 366, ⟨1, 399999999⟩, ⟨0, 20, 9, ⟨149, 79⟩, ⟨157, 79⟩⟩, [⟨149, 79⟩, ⟨15, 7⟩, ⟨151, 79⟩, ⟨19, 9⟩, ⟨153, 79⟩, ⟨77, 39⟩, ⟨31, 15⟩, ⟨39, 19⟩, ⟨157, 79⟩]⟩ = true := by decide +kernel
theorem run434_checked : Entry.check ⟨261, 367, ⟨1, 399999999⟩, ⟨0, 23, 11, ⟨143, 79⟩, ⟨153, 79⟩⟩, [⟨143, 79⟩, ⟨9, 4⟩, ⟨29, 15⟩, ⟨73, 39⟩, ⟨147, 79⟩, ⟨37, 19⟩, ⟨149, 79⟩, ⟨15, 7⟩, ⟨151, 79⟩, ⟨19, 9⟩, ⟨153, 79⟩]⟩ = true := by decide +kernel
theorem run435_checked : Entry.check ⟨265, 368, ⟨1, 399999999⟩, ⟨0, 26, 11, ⟨69, 39⟩, ⟨37, 19⟩⟩, [⟨69, 39⟩, ⟨139, 79⟩, ⟨7, 3⟩, ⟨141, 79⟩, ⟨71, 39⟩, ⟨143, 79⟩, ⟨9, 4⟩, ⟨29, 15⟩, ⟨73, 39⟩, ⟨147, 79⟩, ⟨37, 19⟩]⟩ = true := by decide +kernel
theorem run436_checked : Entry.check ⟨267, 369, ⟨1, 399999999⟩, ⟨0, 16, 18, ⟨119, 79⟩, ⟨17, 9⟩⟩, [⟨119, 79⟩, ⟨3, 1⟩, ⟨121, 79⟩, ⟨61, 39⟩, ⟨123, 79⟩, ⟨31, 19⟩, ⟨25, 15⟩, ⟨63, 39⟩, ⟨127, 79⟩, ⟨8, 4⟩, ⟨129, 79⟩, ⟨13, 7⟩, ⟨131, 79⟩, ⟨33, 19⟩, ⟨133, 79⟩, ⟨67, 39⟩, ⟨27, 15⟩, ⟨17, 9⟩]⟩ = true := by decide +kernel
theorem run437_checked : Entry.check ⟨267, 370, ⟨1, 399999999⟩, ⟨0, 33, 4, ⟨17, 9⟩, ⟨139, 79⟩⟩, [⟨17, 9⟩, ⟨137, 79⟩, ⟨69, 39⟩, ⟨139, 79⟩]⟩ = true := by decide +kernel
theorem run438_checked : Entry.check ⟨267, 371, ⟨1, 399999999⟩, ⟨0, 36, 6, ⟨139, 79⟩, ⟨9, 4⟩⟩, [⟨139, 79⟩, ⟨7, 3⟩, ⟨141, 79⟩, ⟨71, 39⟩, ⟨143, 79⟩, ⟨9, 4⟩]⟩ = true := by decide +kernel
theorem run439_checked : Entry.check ⟨270, 372, ⟨1, 399999999⟩, ⟨0, 18, 12, ⟨57, 39⟩, ⟨25, 15⟩⟩, [⟨57, 39⟩, ⟨23, 15⟩, ⟨29, 19⟩, ⟨117, 79⟩, ⟨59, 39⟩, ⟨119, 79⟩, ⟨3, 1⟩, ⟨121, 79⟩, ⟨61, 39⟩, ⟨123, 79⟩, ⟨31, 19⟩, ⟨25, 15⟩]⟩ = true := by decide +kernel
theorem run440_checked : Entry.check ⟨271, 373, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨91, 39⟩, ⟨189, 79⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩, ⟨37, 15⟩, ⟨93, 39⟩, ⟨187, 79⟩, ⟨47, 19⟩, ⟨189, 79⟩]⟩ = true := by decide +kernel
theorem run441_checked : Entry.check ⟨272, 374, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨51, 19⟩, ⟨107, 39⟩⟩, [⟨51, 19⟩, ⟨41, 15⟩, ⟨103, 39⟩, ⟨207, 79⟩, ⟨13, 4⟩, ⟨209, 79⟩, ⟨21, 7⟩, ⟨211, 79⟩, ⟨53, 19⟩, ⟨213, 79⟩, ⟨107, 39⟩]⟩ = true := by decide +kernel
theorem run442_checked : Entry.check ⟨276, 375, ⟨1, 399999999⟩, ⟨0, 13, 9, ⟨51, 39⟩, ⟨11, 7⟩⟩, [⟨51, 39⟩, ⟨103, 79⟩, ⟨13, 9⟩, ⟨21, 15⟩, ⟨53, 39⟩, ⟨107, 79⟩, ⟨27, 19⟩, ⟨109, 79⟩, ⟨11, 7⟩]⟩ = true := by decide +kernel
theorem run443_checked : Entry.check ⟨276, 376, ⟨1, 399999999⟩, ⟨0, 21, 12, ⟨11, 7⟩, ⟨121, 79⟩⟩, [⟨11, 7⟩, ⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩, ⟨57, 39⟩, ⟨23, 15⟩, ⟨29, 19⟩, ⟨117, 79⟩, ⟨59, 39⟩, ⟨119, 79⟩, ⟨3, 1⟩, ⟨121, 79⟩]⟩ = true := by decide +kernel
theorem run444_checked : Entry.check ⟨280, 377, ⟨1, 399999999⟩, ⟨0, 16, 10, ⟨99, 79⟩, ⟨27, 19⟩⟩, [⟨99, 79⟩, ⟨5, 3⟩, ⟨101, 79⟩, ⟨51, 39⟩, ⟨103, 79⟩, ⟨13, 9⟩, ⟨21, 15⟩, ⟨53, 39⟩, ⟨107, 79⟩, ⟨27, 19⟩]⟩ = true := by decide +kernel
theorem run445_checked : Entry.check ⟨280, 378, ⟨1, 399999999⟩, ⟨0, 25, 2, ⟨27, 19⟩, ⟨109, 79⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run446_checked : Entry.check ⟨281, 378, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨11, 7⟩, ⟨7, 4⟩⟩, [⟨11, 7⟩, ⟨111, 79⟩, ⟨7, 4⟩]⟩ = true := by decide +kernel
theorem run447_checked : Entry.check ⟨281, 379, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨7, 4⟩, ⟨113, 79⟩⟩, [⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run448_checked : Entry.check ⟨284, 380, ⟨1, 399999999⟩, ⟨0, 13, 7, ⟨9, 7⟩, ⟨6, 4⟩⟩, [⟨9, 7⟩, ⟨91, 79⟩, ⟨23, 19⟩, ⟨93, 79⟩, ⟨47, 39⟩, ⟨19, 15⟩, ⟨6, 4⟩]⟩ = true := by decide +kernel
theorem run449_checked : Entry.check ⟨284, 381, ⟨1, 399999999⟩, ⟨0, 19, 11, ⟨6, 4⟩, ⟨53, 39⟩⟩, [⟨6, 4⟩, ⟨97, 79⟩, ⟨49, 39⟩, ⟨99, 79⟩, ⟨5, 3⟩, ⟨101, 79⟩, ⟨51, 39⟩, ⟨103, 79⟩, ⟨13, 9⟩, ⟨21, 15⟩, ⟨53, 39⟩]⟩ = true := by decide +kernel
theorem run450_checked : Entry.check ⟨285, 382, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨107, 79⟩, ⟨11, 7⟩⟩, [⟨107, 79⟩, ⟨27, 19⟩, ⟨109, 79⟩, ⟨11, 7⟩]⟩ = true := by decide +kernel
theorem run451_checked : Entry.check ⟨290, 383, ⟨1, 399999999⟩, ⟨0, 12, 5, ⟨83, 79⟩, ⟨87, 79⟩⟩, [⟨83, 79⟩, ⟨21, 19⟩, ⟨17, 15⟩, ⟨43, 39⟩, ⟨87, 79⟩]⟩ = true := by decide +kernel
theorem run452_checked : Entry.check ⟨290, 384, ⟨1, 399999999⟩, ⟨0, 16, 8, ⟨87, 79⟩, ⟨47, 39⟩⟩, [⟨87, 79⟩, ⟨11, 9⟩, ⟨89, 79⟩, ⟨9, 7⟩, ⟨91, 79⟩, ⟨23, 19⟩, ⟨93, 79⟩, ⟨47, 39⟩]⟩ = true := by decide +kernel
theorem run453_checked : Entry.check ⟨290, 385, ⟨1, 399999999⟩, ⟨0, 23, 5, ⟨47, 39⟩, ⟨49, 39⟩⟩, [⟨47, 39⟩, ⟨19, 15⟩, ⟨6, 4⟩, ⟨97, 79⟩, ⟨49, 39⟩]⟩ = true := by decide +kernel
theorem run454_checked : Entry.check ⟨294, 386, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨39, 39⟩, ⟨1, 0⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩, ⟨1, 0⟩]⟩ = true := by decide +kernel
theorem entries15_checked : entries15.all Entry.check = true := by
  simp only [entries15, List.all_cons, List.all_nil, run423_checked, run424_checked, run425_checked, run426_checked, run427_checked, run428_checked, run429_checked, run430_checked, run431_checked, run432_checked, run433_checked, run434_checked, run435_checked, run436_checked, run437_checked, run438_checked, run439_checked, run440_checked, run441_checked, run442_checked, run443_checked, run444_checked, run445_checked, run446_checked, run447_checked, run448_checked, run449_checked, run450_checked, run451_checked, run452_checked, run453_checked, run454_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
