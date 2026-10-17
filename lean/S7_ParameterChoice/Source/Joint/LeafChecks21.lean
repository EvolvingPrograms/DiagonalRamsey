import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run593_checked : Entry.check ⟨461, 514, ⟨1, 399999999⟩, ⟨0, 16, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run594_checked : Entry.check ⟨461, 515, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨69, 79⟩, ⟨7, 7⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run595_checked : Entry.check ⟨461, 516, ⟨1, 399999999⟩, ⟨0, 18, 3, ⟨7, 7⟩, ⟨9, 9⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run596_checked : Entry.check ⟨462, 517, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨69, 39⟩, ⟨143, 79⟩⟩, [⟨69, 39⟩, ⟨139, 79⟩, ⟨7, 3⟩, ⟨141, 79⟩, ⟨71, 39⟩, ⟨143, 79⟩]⟩ = true := by decide +kernel
theorem run597_checked : Entry.check ⟨463, 518, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨39, 19⟩, ⟨2, 0⟩⟩, [⟨39, 19⟩, ⟨157, 79⟩, ⟨79, 39⟩, ⟨159, 79⟩, ⟨2, 0⟩]⟩ = true := by decide +kernel
theorem run598_checked : Entry.check ⟨465, 519, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨59, 79⟩, ⟨61, 79⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run599_checked : Entry.check ⟨465, 520, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩, ⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run600_checked : Entry.check ⟨465, 521, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨4, 4⟩, ⟨33, 39⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩]⟩ = true := by decide +kernel
theorem run601_checked : Entry.check ⟨465, 522, ⟨1, 399999999⟩, ⟨0, 18, 3, ⟨33, 39⟩, ⟨17, 19⟩⟩, [⟨33, 39⟩, ⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem run602_checked : Entry.check ⟨466, 523, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨27, 39⟩, ⟨57, 79⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run603_checked : Entry.check ⟨466, 524, ⟨1, 399999999⟩, ⟨0, 15, 5, ⟨57, 79⟩, ⟨61, 79⟩⟩, [⟨57, 79⟩, ⟨29, 39⟩, ⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run604_checked : Entry.check ⟨466, 525, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨61, 79⟩, ⟨31, 39⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run605_checked : Entry.check ⟨466, 526, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨31, 39⟩, ⟨63, 79⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run606_checked : Entry.check ⟨469, 527, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, [⟨13, 19⟩, ⟨53, 79⟩, ⟨27, 39⟩, ⟨11, 15⟩, ⟨7, 9⟩]⟩ = true := by decide +kernel
theorem run607_checked : Entry.check ⟨469, 528, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩, ⟨29, 39⟩]⟩ = true := by decide +kernel
theorem run608_checked : Entry.check ⟨470, 529, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨57, 19⟩, ⟨59, 19⟩⟩, [⟨57, 19⟩, ⟨229, 79⟩, ⟨23, 7⟩, ⟨231, 79⟩, ⟨29, 9⟩, ⟨233, 79⟩, ⟨117, 39⟩, ⟨47, 15⟩, ⟨59, 19⟩]⟩ = true := by decide +kernel
theorem run609_checked : Entry.check ⟨470, 530, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨59, 19⟩, ⟨239, 79⟩⟩, [⟨59, 19⟩, ⟨237, 79⟩, ⟨119, 39⟩, ⟨239, 79⟩]⟩ = true := by decide +kernel
theorem run610_checked : Entry.check ⟨470, 531, ⟨1, 399999999⟩, ⟨0, 11, 18, ⟨239, 79⟩, ⟨16, 4⟩⟩, [⟨239, 79⟩, ⟨3, 0⟩, ⟨241, 79⟩, ⟨121, 39⟩, ⟨243, 79⟩, ⟨61, 19⟩, ⟨49, 15⟩, ⟨123, 39⟩, ⟨247, 79⟩, ⟨31, 9⟩, ⟨249, 79⟩, ⟨25, 7⟩, ⟨251, 79⟩, ⟨63, 19⟩, ⟨253, 79⟩, ⟨127, 39⟩, ⟨51, 15⟩, ⟨16, 4⟩]⟩ = true := by decide +kernel
theorem run611_checked : Entry.check ⟨472, 532, ⟨1, 399999999⟩, ⟨0, 6, 4, ⟨3, 4⟩, ⟨51, 79⟩⟩, [⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩, ⟨51, 79⟩]⟩ = true := by decide +kernel
theorem run612_checked : Entry.check ⟨472, 533, ⟨1, 399999999⟩, ⟨0, 9, 4, ⟨51, 79⟩, ⟨27, 39⟩⟩, [⟨51, 79⟩, ⟨13, 19⟩, ⟨53, 79⟩, ⟨27, 39⟩]⟩ = true := by decide +kernel
theorem run613_checked : Entry.check ⟨472, 534, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨27, 39⟩, ⟨11, 15⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run614_checked : Entry.check ⟨474, 535, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, [⟨9, 15⟩, ⟨23, 39⟩, ⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩]⟩ = true := by decide +kernel
theorem run615_checked : Entry.check ⟨474, 536, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run616_checked : Entry.check ⟨475, 537, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, [⟨1, 1⟩, ⟨41, 79⟩, ⟨21, 39⟩, ⟨43, 79⟩, ⟨11, 19⟩]⟩ = true := by decide +kernel
theorem run617_checked : Entry.check ⟨475, 538, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨11, 19⟩, ⟨3, 4⟩⟩, [⟨11, 19⟩, ⟨9, 15⟩, ⟨23, 39⟩, ⟨47, 79⟩, ⟨3, 4⟩]⟩ = true := by decide +kernel
theorem run618_checked : Entry.check ⟨477, 539, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨39, 79⟩, ⟨21, 39⟩⟩, [⟨39, 79⟩, ⟨1, 1⟩, ⟨41, 79⟩, ⟨21, 39⟩]⟩ = true := by decide +kernel
theorem run619_checked : Entry.check ⟨479, 540, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, [⟨9, 19⟩, ⟨37, 79⟩, ⟨19, 39⟩, ⟨39, 79⟩, ⟨1, 1⟩]⟩ = true := by decide +kernel
theorem run620_checked : Entry.check ⟨481, 541, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩, ⟨37, 79⟩, ⟨19, 39⟩]⟩ = true := by decide +kernel
theorem run621_checked : Entry.check ⟨482, 542, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run622_checked : Entry.check ⟨482, 543, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run623_checked : Entry.check ⟨483, 544, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, [⟨29, 79⟩, ⟨3, 7⟩, ⟨31, 79⟩, ⟨2, 4⟩, ⟨33, 79⟩, ⟨17, 39⟩]⟩ = true := by decide +kernel
theorem run624_checked : Entry.check ⟨483, 545, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem entries21_checked : entries21.all Entry.check = true := by
  simp only [entries21, List.all_cons, List.all_nil, run593_checked, run594_checked, run595_checked, run596_checked, run597_checked, run598_checked, run599_checked, run600_checked, run601_checked, run602_checked, run603_checked, run604_checked, run605_checked, run606_checked, run607_checked, run608_checked, run609_checked, run610_checked, run611_checked, run612_checked, run613_checked, run614_checked, run615_checked, run616_checked, run617_checked, run618_checked, run619_checked, run620_checked, run621_checked, run622_checked, run623_checked, run624_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
