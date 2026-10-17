import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run683_checked : Entry.check ⟨576, 591, ⟨1, 399999999⟩, ⟨0, 21, 10, ⟨97, 79⟩, ⟨53, 39⟩⟩, [⟨97, 79⟩, ⟨49, 39⟩, ⟨99, 79⟩, ⟨5, 3⟩, ⟨101, 79⟩, ⟨51, 39⟩, ⟨103, 79⟩, ⟨13, 9⟩, ⟨21, 15⟩, ⟨53, 39⟩]⟩ = true := by decide +kernel
theorem run684_checked : Entry.check ⟨576, 592, ⟨1, 399999999⟩, ⟨0, 30, 4, ⟨53, 39⟩, ⟨109, 79⟩⟩, [⟨53, 39⟩, ⟨107, 79⟩, ⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run685_checked : Entry.check ⟨577, 593, ⟨1, 399999999⟩, ⟨0, 13, 5, ⟨21, 19⟩, ⟨11, 9⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩, ⟨43, 39⟩, ⟨87, 79⟩, ⟨11, 9⟩]⟩ = true := by decide +kernel
theorem run686_checked : Entry.check ⟨577, 594, ⟨1, 399999999⟩, ⟨0, 17, 7, ⟨11, 9⟩, ⟨47, 39⟩⟩, [⟨11, 9⟩, ⟨89, 79⟩, ⟨9, 7⟩, ⟨91, 79⟩, ⟨23, 19⟩, ⟨93, 79⟩, ⟨47, 39⟩]⟩ = true := by decide +kernel
theorem run687_checked : Entry.check ⟨577, 595, ⟨1, 399999999⟩, ⟨0, 23, 6, ⟨47, 39⟩, ⟨99, 79⟩⟩, [⟨47, 39⟩, ⟨19, 15⟩, ⟨6, 4⟩, ⟨97, 79⟩, ⟨49, 39⟩, ⟨99, 79⟩]⟩ = true := by decide +kernel
theorem run688_checked : Entry.check ⟨578, 596, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨79, 79⟩, ⟨81, 79⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩, ⟨81, 79⟩]⟩ = true := by decide +kernel
theorem run689_checked : Entry.check ⟨578, 597, ⟨1, 399999999⟩, ⟨0, 15, 6, ⟨81, 79⟩, ⟨43, 39⟩⟩, [⟨81, 79⟩, ⟨41, 39⟩, ⟨83, 79⟩, ⟨21, 19⟩, ⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run690_checked : Entry.check ⟨578, 598, ⟨1, 399999999⟩, ⟨0, 20, 7, ⟨43, 39⟩, ⟨23, 19⟩⟩, [⟨43, 39⟩, ⟨87, 79⟩, ⟨11, 9⟩, ⟨89, 79⟩, ⟨9, 7⟩, ⟨91, 79⟩, ⟨23, 19⟩]⟩ = true := by decide +kernel
theorem run691_checked : Entry.check ⟨579, 599, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨37, 39⟩, ⟨19, 19⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩]⟩ = true := by decide +kernel
theorem run692_checked : Entry.check ⟨579, 600, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨19, 19⟩, ⟨79, 79⟩⟩, [⟨19, 19⟩, ⟨77, 79⟩, ⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run693_checked : Entry.check ⟨579, 601, ⟨1, 399999999⟩, ⟨0, 17, 5, ⟨79, 79⟩, ⟨83, 79⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩, ⟨81, 79⟩, ⟨41, 39⟩, ⟨83, 79⟩]⟩ = true := by decide +kernel
theorem run694_checked : Entry.check ⟨580, 602, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨5, 1⟩, ⟨21, 7⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩, ⟨203, 79⟩, ⟨51, 19⟩, ⟨41, 15⟩, ⟨103, 39⟩, ⟨207, 79⟩, ⟨13, 4⟩, ⟨209, 79⟩, ⟨21, 7⟩]⟩ = true := by decide +kernel
theorem run695_checked : Entry.check ⟨580, 603, ⟨1, 399999999⟩, ⟨0, 10, 54, ⟨21, 7⟩, ⟨263, 79⟩⟩, [⟨21, 7⟩, ⟨211, 79⟩, ⟨53, 19⟩, ⟨213, 79⟩, ⟨107, 39⟩, ⟨43, 15⟩, ⟨27, 9⟩, ⟨217, 79⟩, ⟨109, 39⟩, ⟨219, 79⟩, ⟨11, 3⟩, ⟨221, 79⟩, ⟨111, 39⟩, ⟨223, 79⟩, ⟨14, 4⟩, ⟨45, 15⟩, ⟨113, 39⟩, ⟨227, 79⟩, ⟨57, 19⟩, ⟨229, 79⟩, ⟨23, 7⟩, ⟨231, 79⟩, ⟨29, 9⟩, ⟨233, 79⟩, ⟨117, 39⟩, ⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩, ⟨119, 39⟩, ⟨239, 79⟩, ⟨3, 0⟩, ⟨241, 79⟩, ⟨121, 39⟩, ⟨243, 79⟩, ⟨61, 19⟩, ⟨49, 15⟩, ⟨123, 39⟩, ⟨247, 79⟩, ⟨31, 9⟩, ⟨249, 79⟩, ⟨25, 7⟩, ⟨251, 79⟩, ⟨63, 19⟩, ⟨253, 79⟩, ⟨127, 39⟩, ⟨51, 15⟩, ⟨16, 4⟩, ⟨257, 79⟩, ⟨129, 39⟩, ⟨259, 79⟩, ⟨13, 3⟩, ⟨261, 79⟩, ⟨131, 39⟩, ⟨263, 79⟩]⟩ = true := by decide +kernel
theorem run696_checked : Entry.check ⟨580, 604, ⟨1, 399999999⟩, ⟨0, 63, 75, ⟨263, 79⟩, ⟨337, 79⟩⟩, [⟨263, 79⟩, ⟨33, 9⟩, ⟨53, 15⟩, ⟨133, 39⟩, ⟨267, 79⟩, ⟨67, 19⟩, ⟨269, 79⟩, ⟨27, 7⟩, ⟨271, 79⟩, ⟨17, 4⟩, ⟨273, 79⟩, ⟨137, 39⟩, ⟨55, 15⟩, ⟨69, 19⟩, ⟨277, 79⟩, ⟨139, 39⟩, ⟨279, 79⟩, ⟨7, 1⟩, ⟨281, 79⟩, ⟨141, 39⟩, ⟨283, 79⟩, ⟨71, 19⟩, ⟨57, 15⟩, ⟨143, 39⟩, ⟨287, 79⟩, ⟨18, 4⟩, ⟨289, 79⟩, ⟨29, 7⟩, ⟨291, 79⟩, ⟨73, 19⟩, ⟨293, 79⟩, ⟨147, 39⟩, ⟨59, 15⟩, ⟨37, 9⟩, ⟨297, 79⟩, ⟨149, 39⟩, ⟨299, 79⟩, ⟨15, 3⟩, ⟨301, 79⟩, ⟨151, 39⟩, ⟨303, 79⟩, ⟨19, 4⟩, ⟨61, 15⟩, ⟨153, 39⟩, ⟨307, 79⟩, ⟨77, 19⟩, ⟨309, 79⟩, ⟨31, 7⟩, ⟨311, 79⟩, ⟨39, 9⟩, ⟨313, 79⟩, ⟨157, 39⟩, ⟨63, 15⟩, ⟨79, 19⟩, ⟨317, 79⟩, ⟨159, 39⟩, ⟨319, 79⟩, ⟨4, 0⟩, ⟨321, 79⟩, ⟨161, 39⟩, ⟨323, 79⟩, ⟨81, 19⟩, ⟨65, 15⟩, ⟨163, 39⟩, ⟨327, 79⟩, ⟨41, 9⟩, ⟨329, 79⟩, ⟨33, 7⟩, ⟨331, 79⟩, ⟨83, 19⟩, ⟨333, 79⟩, ⟨167, 39⟩, ⟨67, 15⟩, ⟨21, 4⟩, ⟨337, 79⟩]⟩ = true := by decide +kernel
theorem run697_checked : Entry.check ⟨582, 605, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run698_checked : Entry.check ⟨582, 606, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run699_checked : Entry.check ⟨582, 607, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨9, 9⟩, ⟨37, 39⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run700_checked : Entry.check ⟨582, 608, ⟨1, 399999999⟩, ⟨0, 17, 5, ⟨37, 39⟩, ⟨39, 39⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩, ⟨39, 39⟩]⟩ = true := by decide +kernel
theorem run701_checked : Entry.check ⟨585, 609, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨63, 79⟩, ⟨13, 15⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run702_checked : Entry.check ⟨585, 610, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩, [⟨13, 15⟩, ⟨33, 39⟩, ⟨67, 79⟩]⟩ = true := by decide +kernel
theorem run703_checked : Entry.check ⟨585, 611, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨67, 79⟩, ⟨17, 19⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem run704_checked : Entry.check ⟨585, 612, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run705_checked : Entry.check ⟨585, 613, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨7, 7⟩, ⟨71, 79⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run706_checked : Entry.check ⟨586, 614, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨59, 79⟩, ⟨61, 79⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run707_checked : Entry.check ⟨586, 615, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩, ⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run708_checked : Entry.check ⟨586, 616, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨4, 4⟩, ⟨67, 79⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩, ⟨67, 79⟩]⟩ = true := by decide +kernel
theorem run709_checked : Entry.check ⟨589, 617, ⟨1, 399999999⟩, ⟨0, 8, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run710_checked : Entry.check ⟨589, 618, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨57, 79⟩, ⟨3, 3⟩⟩, [⟨57, 79⟩, ⟨29, 39⟩, ⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run711_checked : Entry.check ⟨589, 619, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨3, 3⟩, ⟨31, 39⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run712_checked : Entry.check ⟨589, 620, ⟨1, 399999999⟩, ⟨0, 15, 2, ⟨31, 39⟩, ⟨63, 79⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run713_checked : Entry.check ⟨590, 621, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨321, 79⟩, ⟨21, 4⟩⟩, [⟨321, 79⟩, ⟨161, 39⟩, ⟨323, 79⟩, ⟨81, 19⟩, ⟨65, 15⟩, ⟨163, 39⟩, ⟨327, 79⟩, ⟨41, 9⟩, ⟨329, 79⟩, ⟨33, 7⟩, ⟨331, 79⟩, ⟨83, 19⟩, ⟨333, 79⟩, ⟨167, 39⟩, ⟨67, 15⟩, ⟨21, 4⟩]⟩ = true := by decide +kernel
theorem entries24_checked : entries24.all Entry.check = true := by
  simp only [entries24, List.all_cons, List.all_nil, run683_checked, run684_checked, run685_checked, run686_checked, run687_checked, run688_checked, run689_checked, run690_checked, run691_checked, run692_checked, run693_checked, run694_checked, run695_checked, run696_checked, run697_checked, run698_checked, run699_checked, run700_checked, run701_checked, run702_checked, run703_checked, run704_checked, run705_checked, run706_checked, run707_checked, run708_checked, run709_checked, run710_checked, run711_checked, run712_checked, run713_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
