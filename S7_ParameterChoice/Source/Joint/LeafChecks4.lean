import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run87_checked : Entry.check ⟨66, 72, ⟨1, 399999999⟩, ⟨0, 64, 32, ⟨207, 79⟩, ⟨119, 39⟩⟩, [⟨207, 79⟩, ⟨13, 4⟩, ⟨209, 79⟩, ⟨21, 7⟩, ⟨211, 79⟩, ⟨53, 19⟩, ⟨213, 79⟩, ⟨107, 39⟩, ⟨43, 15⟩, ⟨27, 9⟩, ⟨217, 79⟩, ⟨109, 39⟩, ⟨219, 79⟩, ⟨11, 3⟩, ⟨221, 79⟩, ⟨111, 39⟩, ⟨223, 79⟩, ⟨14, 4⟩, ⟨45, 15⟩, ⟨113, 39⟩, ⟨227, 79⟩, ⟨57, 19⟩, ⟨229, 79⟩, ⟨23, 7⟩, ⟨231, 79⟩, ⟨29, 9⟩, ⟨233, 79⟩, ⟨117, 39⟩, ⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩, ⟨119, 39⟩]⟩ = true := by decide +kernel
theorem run88_checked : Entry.check ⟨67, 73, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨1, 79⟩, ⟨7, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run89_checked : Entry.check ⟨67, 74, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run90_checked : Entry.check ⟨68, 75, ⟨1, 399999999⟩, ⟨0, 0, 13, ⟨67, 39⟩, ⟨73, 39⟩⟩, [⟨67, 39⟩, ⟨27, 15⟩, ⟨17, 9⟩, ⟨137, 79⟩, ⟨69, 39⟩, ⟨139, 79⟩, ⟨7, 3⟩, ⟨141, 79⟩, ⟨71, 39⟩, ⟨143, 79⟩, ⟨9, 4⟩, ⟨29, 15⟩, ⟨73, 39⟩]⟩ = true := by decide +kernel
theorem run91_checked : Entry.check ⟨69, 76, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨37, 19⟩, ⟨149, 79⟩⟩, [⟨37, 19⟩, ⟨149, 79⟩]⟩ = true := by decide +kernel
theorem run92_checked : Entry.check ⟨69, 77, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨149, 79⟩, ⟨15, 7⟩⟩, [⟨149, 79⟩, ⟨15, 7⟩]⟩ = true := by decide +kernel
theorem run93_checked : Entry.check ⟨69, 76, ⟨1, 399999999⟩, ⟨0, 2, 6, ⟨15, 7⟩, ⟨31, 15⟩⟩, [⟨15, 7⟩, ⟨151, 79⟩, ⟨19, 9⟩, ⟨153, 79⟩, ⟨77, 39⟩, ⟨31, 15⟩]⟩ = true := by decide +kernel
theorem run94_checked : Entry.check ⟨69, 78, ⟨1, 399999999⟩, ⟨0, 7, 20, ⟨31, 15⟩, ⟨87, 39⟩⟩, [⟨31, 15⟩, ⟨39, 19⟩, ⟨157, 79⟩, ⟨79, 39⟩, ⟨159, 79⟩, ⟨2, 0⟩, ⟨161, 79⟩, ⟨81, 39⟩, ⟨163, 79⟩, ⟨41, 19⟩, ⟨33, 15⟩, ⟨83, 39⟩, ⟨167, 79⟩, ⟨21, 9⟩, ⟨169, 79⟩, ⟨17, 7⟩, ⟨171, 79⟩, ⟨43, 19⟩, ⟨173, 79⟩, ⟨87, 39⟩]⟩ = true := by decide +kernel
theorem run95_checked : Entry.check ⟨70, 78, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run96_checked : Entry.check ⟨71, 78, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run97_checked : Entry.check ⟨72, 78, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run98_checked : Entry.check ⟨73, 78, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run99_checked : Entry.check ⟨74, 79, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run100_checked : Entry.check ⟨75, 80, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨1, 79⟩, ⟨7, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run101_checked : Entry.check ⟨76, 81, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨63, 39⟩, ⟨127, 79⟩⟩, [⟨63, 39⟩, ⟨127, 79⟩]⟩ = true := by decide +kernel
theorem run102_checked : Entry.check ⟨76, 82, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨127, 79⟩, ⟨129, 79⟩⟩, [⟨127, 79⟩, ⟨8, 4⟩, ⟨129, 79⟩]⟩ = true := by decide +kernel
theorem run103_checked : Entry.check ⟨76, 83, ⟨1, 399999999⟩, ⟨0, 3, 20, ⟨129, 79⟩, ⟨37, 19⟩⟩, [⟨129, 79⟩, ⟨13, 7⟩, ⟨131, 79⟩, ⟨33, 19⟩, ⟨133, 79⟩, ⟨67, 39⟩, ⟨27, 15⟩, ⟨17, 9⟩, ⟨137, 79⟩, ⟨69, 39⟩, ⟨139, 79⟩, ⟨7, 3⟩, ⟨141, 79⟩, ⟨71, 39⟩, ⟨143, 79⟩, ⟨9, 4⟩, ⟨29, 15⟩, ⟨73, 39⟩, ⟨147, 79⟩, ⟨37, 19⟩]⟩ = true := by decide +kernel
theorem run104_checked : Entry.check ⟨76, 84, ⟨1, 399999999⟩, ⟨0, 22, 21, ⟨37, 19⟩, ⟨21, 9⟩⟩, [⟨37, 19⟩, ⟨149, 79⟩, ⟨15, 7⟩, ⟨151, 79⟩, ⟨19, 9⟩, ⟨153, 79⟩, ⟨77, 39⟩, ⟨31, 15⟩, ⟨39, 19⟩, ⟨157, 79⟩, ⟨79, 39⟩, ⟨159, 79⟩, ⟨2, 0⟩, ⟨161, 79⟩, ⟨81, 39⟩, ⟨163, 79⟩, ⟨41, 19⟩, ⟨33, 15⟩, ⟨83, 39⟩, ⟨167, 79⟩, ⟨21, 9⟩]⟩ = true := by decide +kernel
theorem run105_checked : Entry.check ⟨77, 85, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨1, 79⟩, ⟨7, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run106_checked : Entry.check ⟨77, 86, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run107_checked : Entry.check ⟨78, 87, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨117, 79⟩, ⟨31, 19⟩⟩, [⟨117, 79⟩, ⟨59, 39⟩, ⟨119, 79⟩, ⟨3, 1⟩, ⟨121, 79⟩, ⟨61, 39⟩, ⟨123, 79⟩, ⟨31, 19⟩]⟩ = true := by decide +kernel
theorem run108_checked : Entry.check ⟨78, 88, ⟨1, 399999999⟩, ⟨0, 7, 20, ⟨31, 19⟩, ⟨143, 79⟩⟩, [⟨31, 19⟩, ⟨25, 15⟩, ⟨63, 39⟩, ⟨127, 79⟩, ⟨8, 4⟩, ⟨129, 79⟩, ⟨13, 7⟩, ⟨131, 79⟩, ⟨33, 19⟩, ⟨133, 79⟩, ⟨67, 39⟩, ⟨27, 15⟩, ⟨17, 9⟩, ⟨137, 79⟩, ⟨69, 39⟩, ⟨139, 79⟩, ⟨7, 3⟩, ⟨141, 79⟩, ⟨71, 39⟩, ⟨143, 79⟩]⟩ = true := by decide +kernel
theorem run109_checked : Entry.check ⟨78, 89, ⟨1, 399999999⟩, ⟨0, 26, 22, ⟨143, 79⟩, ⟨41, 19⟩⟩, [⟨143, 79⟩, ⟨9, 4⟩, ⟨29, 15⟩, ⟨73, 39⟩, ⟨147, 79⟩, ⟨37, 19⟩, ⟨149, 79⟩, ⟨15, 7⟩, ⟨151, 79⟩, ⟨19, 9⟩, ⟨153, 79⟩, ⟨77, 39⟩, ⟨31, 15⟩, ⟨39, 19⟩, ⟨157, 79⟩, ⟨79, 39⟩, ⟨159, 79⟩, ⟨2, 0⟩, ⟨161, 79⟩, ⟨81, 39⟩, ⟨163, 79⟩, ⟨41, 19⟩]⟩ = true := by decide +kernel
theorem run110_checked : Entry.check ⟨79, 90, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 79⟩, ⟨1, 19⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run111_checked : Entry.check ⟨80, 91, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run112_checked : Entry.check ⟨81, 92, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨109, 79⟩, ⟨11, 7⟩⟩, [⟨109, 79⟩, ⟨11, 7⟩]⟩ = true := by decide +kernel
theorem run113_checked : Entry.check ⟨81, 93, ⟨1, 399999999⟩, ⟨0, 1, 10, ⟨11, 7⟩, ⟨119, 79⟩⟩, [⟨11, 7⟩, ⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩, ⟨57, 39⟩, ⟨23, 15⟩, ⟨29, 19⟩, ⟨117, 79⟩, ⟨59, 39⟩, ⟨119, 79⟩]⟩ = true := by decide +kernel
theorem run114_checked : Entry.check ⟨81, 94, ⟨1, 399999999⟩, ⟨0, 10, 16, ⟨119, 79⟩, ⟨67, 39⟩⟩, [⟨119, 79⟩, ⟨3, 1⟩, ⟨121, 79⟩, ⟨61, 39⟩, ⟨123, 79⟩, ⟨31, 19⟩, ⟨25, 15⟩, ⟨63, 39⟩, ⟨127, 79⟩, ⟨8, 4⟩, ⟨129, 79⟩, ⟨13, 7⟩, ⟨131, 79⟩, ⟨33, 19⟩, ⟨133, 79⟩, ⟨67, 39⟩]⟩ = true := by decide +kernel
theorem run115_checked : Entry.check ⟨81, 95, ⟨1, 399999999⟩, ⟨0, 25, 2, ⟨67, 39⟩, ⟨27, 15⟩⟩, [⟨67, 39⟩, ⟨27, 15⟩]⟩ = true := by decide +kernel
theorem run116_checked : Entry.check ⟨81, 94, ⟨1, 399999999⟩, ⟨0, 26, 3, ⟨27, 15⟩, ⟨137, 79⟩⟩, [⟨27, 15⟩, ⟨17, 9⟩, ⟨137, 79⟩]⟩ = true := by decide +kernel
theorem run117_checked : Entry.check ⟨81, 95, ⟨1, 399999999⟩, ⟨0, 28, 2, ⟨137, 79⟩, ⟨69, 39⟩⟩, [⟨137, 79⟩, ⟨69, 39⟩]⟩ = true := by decide +kernel
theorem run118_checked : Entry.check ⟨81, 96, ⟨1, 399999999⟩, ⟨0, 29, 14, ⟨69, 39⟩, ⟨151, 79⟩⟩, [⟨69, 39⟩, ⟨139, 79⟩, ⟨7, 3⟩, ⟨141, 79⟩, ⟨71, 39⟩, ⟨143, 79⟩, ⟨9, 4⟩, ⟨29, 15⟩, ⟨73, 39⟩, ⟨147, 79⟩, ⟨37, 19⟩, ⟨149, 79⟩, ⟨15, 7⟩, ⟨151, 79⟩]⟩ = true := by decide +kernel
theorem entries4_checked : entries4.all Entry.check = true := by
  simp only [entries4, List.all_cons, List.all_nil, run87_checked, run88_checked, run89_checked, run90_checked, run91_checked, run92_checked, run93_checked, run94_checked, run95_checked, run96_checked, run97_checked, run98_checked, run99_checked, run100_checked, run101_checked, run102_checked, run103_checked, run104_checked, run105_checked, run106_checked, run107_checked, run108_checked, run109_checked, run110_checked, run111_checked, run112_checked, run113_checked, run114_checked, run115_checked, run116_checked, run117_checked, run118_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
