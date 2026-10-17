import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run714_checked : Entry.check ⟨590, 622, ⟨1, 399999999⟩, ⟨0, 15, 42, ⟨21, 4⟩, ⟨377, 79⟩⟩, [⟨21, 4⟩, ⟨337, 79⟩, ⟨169, 39⟩, ⟨339, 79⟩, ⟨17, 3⟩, ⟨341, 79⟩, ⟨171, 39⟩, ⟨343, 79⟩, ⟨43, 9⟩, ⟨69, 15⟩, ⟨173, 39⟩, ⟨347, 79⟩, ⟨87, 19⟩, ⟨349, 79⟩, ⟨35, 7⟩, ⟨351, 79⟩, ⟨22, 4⟩, ⟨353, 79⟩, ⟨177, 39⟩, ⟨71, 15⟩, ⟨89, 19⟩, ⟨357, 79⟩, ⟨179, 39⟩, ⟨359, 79⟩, ⟨9, 1⟩, ⟨361, 79⟩, ⟨181, 39⟩, ⟨363, 79⟩, ⟨91, 19⟩, ⟨73, 15⟩, ⟨183, 39⟩, ⟨367, 79⟩, ⟨23, 4⟩, ⟨369, 79⟩, ⟨37, 7⟩, ⟨371, 79⟩, ⟨93, 19⟩, ⟨373, 79⟩, ⟨187, 39⟩, ⟨75, 15⟩, ⟨47, 9⟩, ⟨377, 79⟩]⟩ = true := by decide +kernel
theorem run715_checked : Entry.check ⟨591, 623, ⟨1, 399999999⟩, ⟨0, 8, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, [⟨13, 19⟩, ⟨53, 79⟩, ⟨27, 39⟩, ⟨11, 15⟩, ⟨7, 9⟩]⟩ = true := by decide +kernel
theorem run716_checked : Entry.check ⟨591, 624, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨7, 9⟩, ⟨57, 79⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run717_checked : Entry.check ⟨593, 625, ⟨1, 399999999⟩, ⟨0, 7, 5, ⟨47, 79⟩, ⟨51, 79⟩⟩, [⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩, ⟨51, 79⟩]⟩ = true := by decide +kernel
theorem run718_checked : Entry.check ⟨593, 626, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨51, 79⟩, ⟨27, 39⟩⟩, [⟨51, 79⟩, ⟨13, 19⟩, ⟨53, 79⟩, ⟨27, 39⟩]⟩ = true := by decide +kernel
theorem run719_checked : Entry.check ⟨593, 627, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨27, 39⟩, ⟨11, 15⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run720_checked : Entry.check ⟨595, 628, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, [⟨9, 15⟩, ⟨23, 39⟩, ⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩]⟩ = true := by decide +kernel
theorem run721_checked : Entry.check ⟨595, 629, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run722_checked : Entry.check ⟨597, 630, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, [⟨1, 1⟩, ⟨41, 79⟩, ⟨21, 39⟩, ⟨43, 79⟩, ⟨11, 19⟩]⟩ = true := by decide +kernel
theorem run723_checked : Entry.check ⟨597, 631, ⟨1, 399999999⟩, ⟨0, 7, 4, ⟨11, 19⟩, ⟨47, 79⟩⟩, [⟨11, 19⟩, ⟨9, 15⟩, ⟨23, 39⟩, ⟨47, 79⟩]⟩ = true := by decide +kernel
theorem run724_checked : Entry.check ⟨599, 632, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨39, 79⟩, ⟨21, 39⟩⟩, [⟨39, 79⟩, ⟨1, 1⟩, ⟨41, 79⟩, ⟨21, 39⟩]⟩ = true := by decide +kernel
theorem run725_checked : Entry.check ⟨601, 633, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, [⟨9, 19⟩, ⟨37, 79⟩, ⟨19, 39⟩, ⟨39, 79⟩, ⟨1, 1⟩]⟩ = true := by decide +kernel
theorem run726_checked : Entry.check ⟨602, 634, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩, ⟨37, 79⟩, ⟨19, 39⟩]⟩ = true := by decide +kernel
theorem run727_checked : Entry.check ⟨603, 635, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run728_checked : Entry.check ⟨603, 636, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run729_checked : Entry.check ⟨604, 637, ⟨1, 399999999⟩, ⟨0, 0, 12, ⟨79, 39⟩, ⟨169, 79⟩⟩, [⟨79, 39⟩, ⟨159, 79⟩, ⟨2, 0⟩, ⟨161, 79⟩, ⟨81, 39⟩, ⟨163, 79⟩, ⟨41, 19⟩, ⟨33, 15⟩, ⟨83, 39⟩, ⟨167, 79⟩, ⟨21, 9⟩, ⟨169, 79⟩]⟩ = true := by decide +kernel
theorem run730_checked : Entry.check ⟨605, 637, ⟨1, 399999999⟩, ⟨0, 0, 13, ⟨177, 79⟩, ⟨189, 79⟩⟩, [⟨177, 79⟩, ⟨89, 39⟩, ⟨179, 79⟩, ⟨9, 3⟩, ⟨181, 79⟩, ⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩, ⟨37, 15⟩, ⟨93, 39⟩, ⟨187, 79⟩, ⟨47, 19⟩, ⟨189, 79⟩]⟩ = true := by decide +kernel
theorem run731_checked : Entry.check ⟨606, 638, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, [⟨29, 79⟩, ⟨3, 7⟩, ⟨31, 79⟩, ⟨2, 4⟩, ⟨33, 79⟩, ⟨17, 39⟩]⟩ = true := by decide +kernel
theorem run732_checked : Entry.check ⟨606, 639, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run733_checked : Entry.check ⟨608, 640, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run734_checked : Entry.check ⟨610, 641, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨13, 39⟩, ⟨7, 19⟩⟩, [⟨13, 39⟩, ⟨27, 79⟩, ⟨7, 19⟩]⟩ = true := by decide +kernel
theorem run735_checked : Entry.check ⟨611, 642, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run736_checked : Entry.check ⟨611, 643, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run737_checked : Entry.check ⟨613, 644, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨21, 79⟩, ⟨23, 79⟩⟩, [⟨21, 79⟩, ⟨11, 39⟩, ⟨23, 79⟩]⟩ = true := by decide +kernel
theorem run738_checked : Entry.check ⟨613, 645, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨23, 79⟩, ⟨3, 9⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩]⟩ = true := by decide +kernel
theorem run739_checked : Entry.check ⟨615, 646, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run740_checked : Entry.check ⟨616, 647, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨19, 79⟩, ⟨21, 79⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩, ⟨21, 79⟩]⟩ = true := by decide +kernel
theorem run741_checked : Entry.check ⟨617, 648, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 4⟩, ⟨19, 79⟩⟩, [⟨1, 4⟩, ⟨17, 79⟩, ⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run742_checked : Entry.check ⟨618, 649, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run743_checked : Entry.check ⟨619, 650, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨27, 15⟩, ⟨7, 3⟩⟩, [⟨27, 15⟩, ⟨17, 9⟩, ⟨137, 79⟩, ⟨69, 39⟩, ⟨139, 79⟩, ⟨7, 3⟩]⟩ = true := by decide +kernel
theorem run744_checked : Entry.check ⟨620, 651, ⟨1, 399999999⟩, ⟨0, 0, 10, ⟨9, 4⟩, ⟨153, 79⟩⟩, [⟨9, 4⟩, ⟨29, 15⟩, ⟨73, 39⟩, ⟨147, 79⟩, ⟨37, 19⟩, ⟨149, 79⟩, ⟨15, 7⟩, ⟨151, 79⟩, ⟨19, 9⟩, ⟨153, 79⟩]⟩ = true := by decide +kernel
theorem run745_checked : Entry.check ⟨621, 651, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨21, 9⟩, ⟨173, 79⟩⟩, [⟨21, 9⟩, ⟨169, 79⟩, ⟨17, 7⟩, ⟨171, 79⟩, ⟨43, 19⟩, ⟨173, 79⟩]⟩ = true := by decide +kernel
theorem entries25_checked : entries25.all Entry.check = true := by
  simp only [entries25, List.all_cons, List.all_nil, run714_checked, run715_checked, run716_checked, run717_checked, run718_checked, run719_checked, run720_checked, run721_checked, run722_checked, run723_checked, run724_checked, run725_checked, run726_checked, run727_checked, run728_checked, run729_checked, run730_checked, run731_checked, run732_checked, run733_checked, run734_checked, run735_checked, run736_checked, run737_checked, run738_checked, run739_checked, run740_checked, run741_checked, run742_checked, run743_checked, run744_checked, run745_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
