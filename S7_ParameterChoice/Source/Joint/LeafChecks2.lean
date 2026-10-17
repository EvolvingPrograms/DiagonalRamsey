import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run41_checked : Entry.check ⟨34, 34, ⟨1, 399999999⟩, ⟨0, 0, 36, ⟨16, 4⟩, ⟨291, 79⟩⟩, [⟨16, 4⟩, ⟨257, 79⟩, ⟨129, 39⟩, ⟨259, 79⟩, ⟨13, 3⟩, ⟨261, 79⟩, ⟨131, 39⟩, ⟨263, 79⟩, ⟨33, 9⟩, ⟨53, 15⟩, ⟨133, 39⟩, ⟨267, 79⟩, ⟨67, 19⟩, ⟨269, 79⟩, ⟨27, 7⟩, ⟨271, 79⟩, ⟨17, 4⟩, ⟨273, 79⟩, ⟨137, 39⟩, ⟨55, 15⟩, ⟨69, 19⟩, ⟨277, 79⟩, ⟨139, 39⟩, ⟨279, 79⟩, ⟨7, 1⟩, ⟨281, 79⟩, ⟨141, 39⟩, ⟨283, 79⟩, ⟨71, 19⟩, ⟨57, 15⟩, ⟨143, 39⟩, ⟨287, 79⟩, ⟨18, 4⟩, ⟨289, 79⟩, ⟨29, 7⟩, ⟨291, 79⟩]⟩ = true := by decide +kernel
theorem run42_checked : Entry.check ⟨35, 35, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run43_checked : Entry.check ⟨36, 35, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run44_checked : Entry.check ⟨36, 36, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run45_checked : Entry.check ⟨37, 36, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run46_checked : Entry.check ⟨38, 37, ⟨1, 399999999⟩, ⟨0, 0, 20, ⟨237, 79⟩, ⟨16, 4⟩⟩, [⟨237, 79⟩, ⟨119, 39⟩, ⟨239, 79⟩, ⟨3, 0⟩, ⟨241, 79⟩, ⟨121, 39⟩, ⟨243, 79⟩, ⟨61, 19⟩, ⟨49, 15⟩, ⟨123, 39⟩, ⟨247, 79⟩, ⟨31, 9⟩, ⟨249, 79⟩, ⟨25, 7⟩, ⟨251, 79⟩, ⟨63, 19⟩, ⟨253, 79⟩, ⟨127, 39⟩, ⟨51, 15⟩, ⟨16, 4⟩]⟩ = true := by decide +kernel
theorem run47_checked : Entry.check ⟨39, 38, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run48_checked : Entry.check ⟨40, 39, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 79⟩, ⟨11, 79⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run49_checked : Entry.check ⟨41, 40, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨11, 3⟩, ⟨113, 39⟩⟩, [⟨11, 3⟩, ⟨221, 79⟩, ⟨111, 39⟩, ⟨223, 79⟩, ⟨14, 4⟩, ⟨45, 15⟩, ⟨113, 39⟩]⟩ = true := by decide +kernel
theorem run50_checked : Entry.check ⟨41, 41, ⟨1, 399999999⟩, ⟨0, 6, 13, ⟨113, 39⟩, ⟨119, 39⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩, ⟨57, 19⟩, ⟨229, 79⟩, ⟨23, 7⟩, ⟨231, 79⟩, ⟨29, 9⟩, ⟨233, 79⟩, ⟨117, 39⟩, ⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩, ⟨119, 39⟩]⟩ = true := by decide +kernel
theorem run51_checked : Entry.check ⟨42, 42, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨1, 79⟩, ⟨7, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run52_checked : Entry.check ⟨42, 43, ⟨1, 399999999⟩, ⟨0, 6, 3, ⟨7, 79⟩, ⟨9, 79⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run53_checked : Entry.check ⟨43, 43, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run54_checked : Entry.check ⟨44, 44, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨103, 39⟩, ⟨221, 79⟩⟩, [⟨103, 39⟩, ⟨207, 79⟩, ⟨13, 4⟩, ⟨209, 79⟩, ⟨21, 7⟩, ⟨211, 79⟩, ⟨53, 19⟩, ⟨213, 79⟩, ⟨107, 39⟩, ⟨43, 15⟩, ⟨27, 9⟩, ⟨217, 79⟩, ⟨109, 39⟩, ⟨219, 79⟩, ⟨11, 3⟩, ⟨221, 79⟩]⟩ = true := by decide +kernel
theorem run55_checked : Entry.check ⟨45, 44, ⟨1, 399999999⟩, ⟨0, 0, 29, ⟨59, 19⟩, ⟨33, 9⟩⟩, [⟨59, 19⟩, ⟨237, 79⟩, ⟨119, 39⟩, ⟨239, 79⟩, ⟨3, 0⟩, ⟨241, 79⟩, ⟨121, 39⟩, ⟨243, 79⟩, ⟨61, 19⟩, ⟨49, 15⟩, ⟨123, 39⟩, ⟨247, 79⟩, ⟨31, 9⟩, ⟨249, 79⟩, ⟨25, 7⟩, ⟨251, 79⟩, ⟨63, 19⟩, ⟨253, 79⟩, ⟨127, 39⟩, ⟨51, 15⟩, ⟨16, 4⟩, ⟨257, 79⟩, ⟨129, 39⟩, ⟨259, 79⟩, ⟨13, 3⟩, ⟨261, 79⟩, ⟨131, 39⟩, ⟨263, 79⟩, ⟨33, 9⟩]⟩ = true := by decide +kernel
theorem run56_checked : Entry.check ⟨46, 45, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run57_checked : Entry.check ⟨47, 46, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run58_checked : Entry.check ⟨48, 47, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨193, 79⟩, ⟨207, 79⟩⟩, [⟨193, 79⟩, ⟨97, 39⟩, ⟨39, 15⟩, ⟨49, 19⟩, ⟨197, 79⟩, ⟨99, 39⟩, ⟨199, 79⟩, ⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩, ⟨203, 79⟩, ⟨51, 19⟩, ⟨41, 15⟩, ⟨103, 39⟩, ⟨207, 79⟩]⟩ = true := by decide +kernel
theorem run59_checked : Entry.check ⟨49, 47, ⟨1, 399999999⟩, ⟨0, 0, 39, ⟨53, 19⟩, ⟨25, 7⟩⟩, [⟨53, 19⟩, ⟨213, 79⟩, ⟨107, 39⟩, ⟨43, 15⟩, ⟨27, 9⟩, ⟨217, 79⟩, ⟨109, 39⟩, ⟨219, 79⟩, ⟨11, 3⟩, ⟨221, 79⟩, ⟨111, 39⟩, ⟨223, 79⟩, ⟨14, 4⟩, ⟨45, 15⟩, ⟨113, 39⟩, ⟨227, 79⟩, ⟨57, 19⟩, ⟨229, 79⟩, ⟨23, 7⟩, ⟨231, 79⟩, ⟨29, 9⟩, ⟨233, 79⟩, ⟨117, 39⟩, ⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩, ⟨119, 39⟩, ⟨239, 79⟩, ⟨3, 0⟩, ⟨241, 79⟩, ⟨121, 39⟩, ⟨243, 79⟩, ⟨61, 19⟩, ⟨49, 15⟩, ⟨123, 39⟩, ⟨247, 79⟩, ⟨31, 9⟩, ⟨249, 79⟩, ⟨25, 7⟩]⟩ = true := by decide +kernel
theorem run60_checked : Entry.check ⟨49, 48, ⟨1, 399999999⟩, ⟨0, 38, 8, ⟨25, 7⟩, ⟨257, 79⟩⟩, [⟨25, 7⟩, ⟨251, 79⟩, ⟨63, 19⟩, ⟨253, 79⟩, ⟨127, 39⟩, ⟨51, 15⟩, ⟨16, 4⟩, ⟨257, 79⟩]⟩ = true := by decide +kernel
theorem run61_checked : Entry.check ⟨50, 49, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run62_checked : Entry.check ⟨51, 50, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨7, 79⟩, ⟨11, 79⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run63_checked : Entry.check ⟨52, 51, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run64_checked : Entry.check ⟨53, 52, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨35, 15⟩, ⟨177, 79⟩⟩, [⟨35, 15⟩, ⟨11, 4⟩, ⟨177, 79⟩]⟩ = true := by decide +kernel
theorem run65_checked : Entry.check ⟨53, 53, ⟨1, 399999999⟩, ⟨0, 2, 18, ⟨177, 79⟩, ⟨97, 39⟩⟩, [⟨177, 79⟩, ⟨89, 39⟩, ⟨179, 79⟩, ⟨9, 3⟩, ⟨181, 79⟩, ⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩, ⟨37, 15⟩, ⟨93, 39⟩, ⟨187, 79⟩, ⟨47, 19⟩, ⟨189, 79⟩, ⟨19, 7⟩, ⟨191, 79⟩, ⟨12, 4⟩, ⟨193, 79⟩, ⟨97, 39⟩]⟩ = true := by decide +kernel
theorem run66_checked : Entry.check ⟨54, 53, ⟨1, 399999999⟩, ⟨0, 0, 38, ⟨39, 15⟩, ⟨29, 9⟩⟩, [⟨39, 15⟩, ⟨49, 19⟩, ⟨197, 79⟩, ⟨99, 39⟩, ⟨199, 79⟩, ⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩, ⟨203, 79⟩, ⟨51, 19⟩, ⟨41, 15⟩, ⟨103, 39⟩, ⟨207, 79⟩, ⟨13, 4⟩, ⟨209, 79⟩, ⟨21, 7⟩, ⟨211, 79⟩, ⟨53, 19⟩, ⟨213, 79⟩, ⟨107, 39⟩, ⟨43, 15⟩, ⟨27, 9⟩, ⟨217, 79⟩, ⟨109, 39⟩, ⟨219, 79⟩, ⟨11, 3⟩, ⟨221, 79⟩, ⟨111, 39⟩, ⟨223, 79⟩, ⟨14, 4⟩, ⟨45, 15⟩, ⟨113, 39⟩, ⟨227, 79⟩, ⟨57, 19⟩, ⟨229, 79⟩, ⟨23, 7⟩, ⟨231, 79⟩, ⟨29, 9⟩]⟩ = true := by decide +kernel
theorem entries2_checked : entries2.all Entry.check = true := by
  simp only [entries2, List.all_cons, List.all_nil, run41_checked, run42_checked, run43_checked, run44_checked, run45_checked, run46_checked, run47_checked, run48_checked, run49_checked, run50_checked, run51_checked, run52_checked, run53_checked, run54_checked, run55_checked, run56_checked, run57_checked, run58_checked, run59_checked, run60_checked, run61_checked, run62_checked, run63_checked, run64_checked, run65_checked, run66_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
