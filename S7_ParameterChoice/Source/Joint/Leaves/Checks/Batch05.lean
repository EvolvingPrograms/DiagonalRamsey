import S7_ParameterChoice.Source.Joint.Foundations.ArithmeticData
import S7_ParameterChoice.Source.Joint.Leaves.LeafIndex

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel reductions; Lake parallelizes these batches.
set_option Elab.async false

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run714_checked : Entry.check ⟨590, 622, ⟨1, 399999999⟩, ⟨0, 15, 42, ⟨21, 4⟩, ⟨377, 79⟩⟩, (FQ.progression (21 / 5) (1 / 80) 42)⟩ = true := by decide +kernel
theorem run715_checked : Entry.check ⟨591, 623, ⟨1, 399999999⟩, ⟨0, 8, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, (FQ.progression (13 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run716_checked : Entry.check ⟨591, 624, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨7, 9⟩, ⟨57, 79⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run717_checked : Entry.check ⟨593, 625, ⟨1, 399999999⟩, ⟨0, 7, 5, ⟨47, 79⟩, ⟨51, 79⟩⟩, (FQ.progression (47 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run718_checked : Entry.check ⟨593, 626, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨51, 79⟩, ⟨27, 39⟩⟩, (FQ.progression (51 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run719_checked : Entry.check ⟨593, 627, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨27, 39⟩, ⟨11, 15⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run720_checked : Entry.check ⟨595, 628, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run721_checked : Entry.check ⟨595, 629, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run722_checked : Entry.check ⟨597, 630, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run723_checked : Entry.check ⟨597, 631, ⟨1, 399999999⟩, ⟨0, 7, 4, ⟨11, 19⟩, ⟨47, 79⟩⟩, (FQ.progression (11 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run724_checked : Entry.check ⟨599, 632, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨39, 79⟩, ⟨21, 39⟩⟩, (FQ.progression (39 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run725_checked : Entry.check ⟨601, 633, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run726_checked : Entry.check ⟨602, 634, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run727_checked : Entry.check ⟨603, 635, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run728_checked : Entry.check ⟨603, 636, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run729_checked : Entry.check ⟨604, 637, ⟨1, 399999999⟩, ⟨0, 0, 12, ⟨79, 39⟩, ⟨169, 79⟩⟩, (FQ.progression (79 / 40) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run730_checked : Entry.check ⟨605, 637, ⟨1, 399999999⟩, ⟨0, 0, 13, ⟨177, 79⟩, ⟨189, 79⟩⟩, (FQ.progression (177 / 80) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run731_checked : Entry.check ⟨606, 638, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run732_checked : Entry.check ⟨606, 639, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run733_checked : Entry.check ⟨608, 640, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run734_checked : Entry.check ⟨610, 641, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨13, 39⟩, ⟨7, 19⟩⟩, [⟨13, 39⟩, ⟨27, 79⟩, ⟨7, 19⟩]⟩ = true := by decide +kernel
theorem run735_checked : Entry.check ⟨611, 642, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run736_checked : Entry.check ⟨611, 643, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run737_checked : Entry.check ⟨613, 644, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨21, 79⟩, ⟨23, 79⟩⟩, [⟨21, 79⟩, ⟨11, 39⟩, ⟨23, 79⟩]⟩ = true := by decide +kernel
theorem run738_checked : Entry.check ⟨613, 645, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨23, 79⟩, ⟨3, 9⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩]⟩ = true := by decide +kernel
theorem run739_checked : Entry.check ⟨615, 646, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run740_checked : Entry.check ⟨616, 647, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨19, 79⟩, ⟨21, 79⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩, ⟨21, 79⟩]⟩ = true := by decide +kernel
theorem run741_checked : Entry.check ⟨617, 648, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 4⟩, ⟨19, 79⟩⟩, (FQ.progression (1 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run742_checked : Entry.check ⟨618, 649, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run743_checked : Entry.check ⟨619, 650, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨27, 15⟩, ⟨7, 3⟩⟩, (FQ.progression (27 / 16) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run744_checked : Entry.check ⟨620, 651, ⟨1, 399999999⟩, ⟨0, 0, 10, ⟨9, 4⟩, ⟨153, 79⟩⟩, (FQ.progression (9 / 5) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run745_checked : Entry.check ⟨621, 651, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨21, 9⟩, ⟨173, 79⟩⟩, (FQ.progression (21 / 10) (1 / 80) 6)⟩ = true := by decide +kernel
theorem entries25_checked : entries25.all Entry.check = true := by
  simp only [entries25, List.all_cons, List.all_nil, run714_checked, run715_checked, run716_checked, run717_checked, run718_checked, run719_checked, run720_checked, run721_checked, run722_checked, run723_checked, run724_checked, run725_checked, run726_checked, run727_checked, run728_checked, run729_checked, run730_checked, run731_checked, run732_checked, run733_checked, run734_checked, run735_checked, run736_checked, run737_checked, run738_checked, run739_checked, run740_checked, run741_checked, run742_checked, run743_checked, run744_checked, run745_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run746_checked : Entry.check ⟨622, 652, ⟨1, 399999999⟩, ⟨0, 0, 20, ⟨47, 19⟩, ⟨207, 79⟩⟩, (FQ.progression (47 / 20) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run747_checked : Entry.check ⟨623, 653, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨7, 39⟩, ⟨1, 4⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run748_checked : Entry.check ⟨624, 654, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run749_checked : Entry.check ⟨625, 655, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run750_checked : Entry.check ⟨625, 656, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨3, 19⟩, ⟨7, 39⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run751_checked : Entry.check ⟨627, 657, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run752_checked : Entry.check ⟨628, 658, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run753_checked : Entry.check ⟨629, 659, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run754_checked : Entry.check ⟨672, 660, ⟨1, 399999999⟩, ⟨0, 22, 20, ⟨16, 4⟩, ⟨55, 15⟩⟩, (FQ.progression (16 / 5) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run755_checked : Entry.check ⟨674, 661, ⟨1, 399999999⟩, ⟨0, 29, 29, ⟨241, 79⟩, ⟨269, 79⟩⟩, (FQ.progression (241 / 80) (1 / 80) 29)⟩ = true := by decide +kernel
theorem run756_checked : Entry.check ⟨676, 662, ⟨1, 399999999⟩, ⟨0, 44, 39, ⟨45, 15⟩, ⟨263, 79⟩⟩, (FQ.progression (45 / 16) (1 / 80) 39)⟩ = true := by decide +kernel
theorem run757_checked : Entry.check ⟨678, 663, ⟨1, 399999999⟩, ⟨0, 50, 43, ⟨27, 9⟩, ⟨129, 39⟩⟩, (FQ.progression (27 / 10) (1 / 80) 43)⟩ = true := by decide +kernel
theorem run758_checked : Entry.check ⟨681, 664, ⟨1, 399999999⟩, ⟨0, 4, 8, ⟨83, 39⟩, ⟨173, 79⟩⟩, (FQ.progression (83 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run759_checked : Entry.check ⟨681, 664, ⟨1, 399999999⟩, ⟨0, 12, 9, ⟨87, 39⟩, ⟨91, 39⟩⟩, (FQ.progression (87 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run760_checked : Entry.check ⟨681, 664, ⟨1, 399999999⟩, ⟨0, 22, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run761_checked : Entry.check ⟨681, 664, ⟨1, 399999999⟩, ⟨0, 30, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run762_checked : Entry.check ⟨681, 664, ⟨1, 399999999⟩, ⟨0, 40, 4, ⟨101, 39⟩, ⟨41, 15⟩⟩, (FQ.progression (101 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run763_checked : Entry.check ⟨681, 665, ⟨1, 399999999⟩, ⟨0, 43, 49, ⟨41, 15⟩, ⟨253, 79⟩⟩, (FQ.progression (41 / 16) (1 / 80) 49)⟩ = true := by decide +kernel
theorem run764_checked : Entry.check ⟨681, 666, ⟨1, 399999999⟩, ⟨0, 91, 3, ⟨253, 79⟩, ⟨51, 15⟩⟩, [⟨253, 79⟩, ⟨127, 39⟩, ⟨51, 15⟩]⟩ = true := by decide +kernel
theorem run765_checked : Entry.check ⟨684, 667, ⟨1, 399999999⟩, ⟨0, 22, 15, ⟨161, 79⟩, ⟨35, 15⟩⟩, (FQ.progression (161 / 80) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run766_checked : Entry.check ⟨685, 667, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run767_checked : Entry.check ⟨686, 668, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run768_checked : Entry.check ⟨687, 669, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run769_checked : Entry.check ⟨688, 669, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run770_checked : Entry.check ⟨689, 669, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run771_checked : Entry.check ⟨690, 670, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨47, 15⟩, ⟨237, 79⟩⟩, [⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩]⟩ = true := by decide +kernel
theorem entries26_checked : entries26.all Entry.check = true := by
  simp only [entries26, List.all_cons, List.all_nil, run746_checked, run747_checked, run748_checked, run749_checked, run750_checked, run751_checked, run752_checked, run753_checked, run754_checked, run755_checked, run756_checked, run757_checked, run758_checked, run759_checked, run760_checked, run761_checked, run762_checked, run763_checked, run764_checked, run765_checked, run766_checked, run767_checked, run768_checked, run769_checked, run770_checked, run771_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run772_checked : Entry.check ⟨692, 671, ⟨1, 399999999⟩, ⟨0, 21, 15, ⟨15, 7⟩, ⟨41, 19⟩⟩, (FQ.progression (15 / 8) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run773_checked : Entry.check ⟨693, 671, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨33, 15⟩, ⟨169, 79⟩⟩, (FQ.progression (33 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run774_checked : Entry.check ⟨693, 672, ⟨1, 399999999⟩, ⟨0, 4, 3, ⟨169, 79⟩, ⟨171, 79⟩⟩, [⟨169, 79⟩, ⟨17, 7⟩, ⟨171, 79⟩]⟩ = true := by decide +kernel
theorem run775_checked : Entry.check ⟨695, 673, ⟨1, 399999999⟩, ⟨0, 21, 12, ⟨141, 79⟩, ⟨19, 9⟩⟩, (FQ.progression (141 / 80) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run776_checked : Entry.check ⟨695, 674, ⟨1, 399999999⟩, ⟨0, 32, 9, ⟨19, 9⟩, ⟨2, 0⟩⟩, (FQ.progression (19 / 10) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run777_checked : Entry.check ⟨696, 674, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨161, 79⟩, ⟨167, 79⟩⟩, (FQ.progression (161 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run778_checked : Entry.check ⟨697, 675, ⟨1, 399999999⟩, ⟨0, 0, 18, ⟨4, 0⟩, ⟨337, 79⟩⟩, (FQ.progression (4 / 1) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run779_checked : Entry.check ⟨698, 676, ⟨1, 399999999⟩, ⟨0, 27, 2, ⟨139, 79⟩, ⟨7, 3⟩⟩, [⟨139, 79⟩, ⟨7, 3⟩]⟩ = true := by decide +kernel
theorem run780_checked : Entry.check ⟨698, 677, ⟨1, 399999999⟩, ⟨0, 30, 22, ⟨71, 39⟩, ⟨163, 79⟩⟩, (FQ.progression (71 / 40) (1 / 80) 22)⟩ = true := by decide +kernel
theorem run781_checked : Entry.check ⟨700, 678, ⟨1, 399999999⟩, ⟨0, 16, 18, ⟨121, 79⟩, ⟨69, 39⟩⟩, (FQ.progression (121 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run782_checked : Entry.check ⟨700, 679, ⟨1, 399999999⟩, ⟨0, 33, 16, ⟨69, 39⟩, ⟨153, 79⟩⟩, (FQ.progression (69 / 40) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run783_checked : Entry.check ⟨701, 679, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨31, 15⟩, ⟨159, 79⟩⟩, (FQ.progression (31 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run784_checked : Entry.check ⟨702, 680, ⟨1, 399999999⟩, ⟨0, 0, 17, ⟨19, 4⟩, ⟨4, 0⟩⟩, (FQ.progression (19 / 5) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run785_checked : Entry.check ⟨703, 681, ⟨1, 399999999⟩, ⟨0, 18, 14, ⟨23, 15⟩, ⟨8, 4⟩⟩, (FQ.progression (23 / 16) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run786_checked : Entry.check ⟨704, 681, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨129, 79⟩, ⟨67, 39⟩⟩, (FQ.progression (129 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run787_checked : Entry.check ⟨704, 682, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨67, 39⟩, ⟨17, 9⟩⟩, [⟨67, 39⟩, ⟨27, 15⟩, ⟨17, 9⟩]⟩ = true := by decide +kernel
theorem run788_checked : Entry.check ⟨705, 683, ⟨1, 399999999⟩, ⟨0, 12, 9, ⟨51, 39⟩, ⟨11, 7⟩⟩, (FQ.progression (51 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run789_checked : Entry.check ⟨705, 684, ⟨1, 399999999⟩, ⟨0, 20, 16, ⟨11, 7⟩, ⟨25, 15⟩⟩, (FQ.progression (11 / 8) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run790_checked : Entry.check ⟨706, 685, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨63, 39⟩, ⟨129, 79⟩⟩, (FQ.progression (63 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run791_checked : Entry.check ⟨706, 686, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨129, 79⟩, ⟨133, 79⟩⟩, (FQ.progression (129 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run792_checked : Entry.check ⟨707, 687, ⟨1, 399999999⟩, ⟨0, 17, 13, ⟨5, 3⟩, ⟨7, 4⟩⟩, (FQ.progression (5 / 4) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run793_checked : Entry.check ⟨707, 688, ⟨1, 399999999⟩, ⟨0, 29, 2, ⟨7, 4⟩, ⟨113, 79⟩⟩, [⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run794_checked : Entry.check ⟨709, 689, ⟨1, 399999999⟩, ⟨0, 13, 7, ⟨91, 79⟩, ⟨97, 79⟩⟩, (FQ.progression (91 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run795_checked : Entry.check ⟨709, 690, ⟨1, 399999999⟩, ⟨0, 19, 12, ⟨97, 79⟩, ⟨27, 19⟩⟩, (FQ.progression (97 / 80) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run796_checked : Entry.check ⟨709, 691, ⟨1, 399999999⟩, ⟨0, 30, 3, ⟨27, 19⟩, ⟨11, 7⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩, ⟨11, 7⟩]⟩ = true := by decide +kernel
theorem run797_checked : Entry.check ⟨710, 692, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨21, 19⟩, ⟨17, 15⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run798_checked : Entry.check ⟨710, 693, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨17, 15⟩, ⟨11, 9⟩⟩, (FQ.progression (17 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run799_checked : Entry.check ⟨710, 694, ⟨1, 399999999⟩, ⟨0, 16, 7, ⟨11, 9⟩, ⟨47, 39⟩⟩, (FQ.progression (11 / 10) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run800_checked : Entry.check ⟨710, 695, ⟨1, 399999999⟩, ⟨0, 22, 8, ⟨47, 39⟩, ⟨101, 79⟩⟩, (FQ.progression (47 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run801_checked : Entry.check ⟨711, 696, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨79, 79⟩, ⟨81, 79⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩, ⟨81, 79⟩]⟩ = true := by decide +kernel
theorem run802_checked : Entry.check ⟨711, 697, ⟨1, 399999999⟩, ⟨0, 15, 6, ⟨81, 79⟩, ⟨43, 39⟩⟩, (FQ.progression (81 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run803_checked : Entry.check ⟨711, 698, ⟨1, 399999999⟩, ⟨0, 20, 8, ⟨43, 39⟩, ⟨93, 79⟩⟩, (FQ.progression (43 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem entries27_checked : entries27.all Entry.check = true := by
  simp only [entries27, List.all_cons, List.all_nil, run772_checked, run773_checked, run774_checked, run775_checked, run776_checked, run777_checked, run778_checked, run779_checked, run780_checked, run781_checked, run782_checked, run783_checked, run784_checked, run785_checked, run786_checked, run787_checked, run788_checked, run789_checked, run790_checked, run791_checked, run792_checked, run793_checked, run794_checked, run795_checked, run796_checked, run797_checked, run798_checked, run799_checked, run800_checked, run801_checked, run802_checked, run803_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run804_checked : Entry.check ⟨713, 699, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨37, 39⟩, ⟨19, 19⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩]⟩ = true := by decide +kernel
theorem run805_checked : Entry.check ⟨713, 700, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨19, 19⟩, ⟨79, 79⟩⟩, (FQ.progression (19 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run806_checked : Entry.check ⟨713, 701, ⟨1, 399999999⟩, ⟨0, 16, 5, ⟨79, 79⟩, ⟨83, 79⟩⟩, (FQ.progression (79 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run807_checked : Entry.check ⟨713, 702, ⟨1, 399999999⟩, ⟨0, 20, 6, ⟨83, 79⟩, ⟨11, 9⟩⟩, (FQ.progression (83 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run808_checked : Entry.check ⟨715, 703, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run809_checked : Entry.check ⟨715, 704, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run810_checked : Entry.check ⟨715, 705, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨9, 9⟩, ⟨37, 39⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run811_checked : Entry.check ⟨715, 706, ⟨1, 399999999⟩, ⟨0, 16, 5, ⟨37, 39⟩, ⟨39, 39⟩⟩, (FQ.progression (37 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run812_checked : Entry.check ⟨715, 707, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run813_checked : Entry.check ⟨716, 708, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨41, 39⟩, ⟨83, 79⟩⟩, [⟨41, 39⟩, ⟨83, 79⟩]⟩ = true := by decide +kernel
theorem run814_checked : Entry.check ⟨716, 709, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨83, 79⟩, ⟨17, 15⟩⟩, [⟨83, 79⟩, ⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run815_checked : Entry.check ⟨717, 710, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨29, 15⟩, ⟨73, 39⟩⟩, [⟨29, 15⟩, ⟨73, 39⟩]⟩ = true := by decide +kernel
theorem run816_checked : Entry.check ⟨718, 711, ⟨1, 399999999⟩, ⟨0, 9, 3, ⟨63, 79⟩, ⟨13, 15⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run817_checked : Entry.check ⟨718, 712, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨13, 15⟩, ⟨17, 19⟩⟩, (FQ.progression (13 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run818_checked : Entry.check ⟨718, 713, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run819_checked : Entry.check ⟨718, 714, ⟨1, 399999999⟩, ⟨0, 16, 4, ⟨7, 7⟩, ⟨73, 79⟩⟩, (FQ.progression (7 / 8) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run820_checked : Entry.check ⟨718, 715, ⟨1, 399999999⟩, ⟨0, 19, 3, ⟨73, 79⟩, ⟨15, 15⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩, ⟨15, 15⟩]⟩ = true := by decide +kernel
theorem run821_checked : Entry.check ⟨719, 716, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨16, 4⟩, ⟨259, 79⟩⟩, (FQ.progression (16 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run822_checked : Entry.check ⟨719, 717, ⟨1, 399999999⟩, ⟨0, 3, 9, ⟨259, 79⟩, ⟨267, 79⟩⟩, (FQ.progression (259 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run823_checked : Entry.check ⟨720, 717, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨29, 7⟩, ⟨61, 15⟩⟩, (FQ.progression (29 / 8) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run824_checked : Entry.check ⟨721, 717, ⟨1, 399999999⟩, ⟨0, 0, 27, ⟨4, 0⟩, ⟨173, 39⟩⟩, (FQ.progression (4 / 1) (1 / 80) 27)⟩ = true := by decide +kernel
theorem run825_checked : Entry.check ⟨721, 718, ⟨1, 399999999⟩, ⟨0, 26, 11, ⟨173, 39⟩, ⟨89, 19⟩⟩, (FQ.progression (173 / 40) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run826_checked : Entry.check ⟨722, 719, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨59, 79⟩, ⟨3, 3⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩]⟩ = true := by decide +kernel
theorem run827_checked : Entry.check ⟨722, 720, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨3, 3⟩, ⟨61, 79⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run828_checked : Entry.check ⟨722, 721, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨61, 79⟩, ⟨63, 79⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run829_checked : Entry.check ⟨722, 722, ⟨1, 399999999⟩, ⟨0, 12, 5, ⟨63, 79⟩, ⟨67, 79⟩⟩, (FQ.progression (63 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run830_checked : Entry.check ⟨723, 723, ⟨1, 399999999⟩, ⟨0, 7, 4, ⟨27, 39⟩, ⟨57, 79⟩⟩, (FQ.progression (27 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run831_checked : Entry.check ⟨723, 724, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨57, 79⟩, ⟨3, 3⟩⟩, (FQ.progression (57 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run832_checked : Entry.check ⟨723, 725, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨3, 3⟩, ⟨63, 79⟩⟩, (FQ.progression (3 / 4) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run833_checked : Entry.check ⟨723, 726, ⟨1, 399999999⟩, ⟨0, 16, 2, ⟨63, 79⟩, ⟨4, 4⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run834_checked : Entry.check ⟨724, 727, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨13, 19⟩, ⟨11, 15⟩⟩, (FQ.progression (13 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run835_checked : Entry.check ⟨724, 728, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem entries28_checked : entries28.all Entry.check = true := by
  simp only [entries28, List.all_cons, List.all_nil, run804_checked, run805_checked, run806_checked, run807_checked, run808_checked, run809_checked, run810_checked, run811_checked, run812_checked, run813_checked, run814_checked, run815_checked, run816_checked, run817_checked, run818_checked, run819_checked, run820_checked, run821_checked, run822_checked, run823_checked, run824_checked, run825_checked, run826_checked, run827_checked, run828_checked, run829_checked, run830_checked, run831_checked, run832_checked, run833_checked, run834_checked, run835_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run836_checked : Entry.check ⟨725, 729, ⟨1, 399999999⟩, ⟨0, 0, 14, ⟨133, 39⟩, ⟨279, 79⟩⟩, (FQ.progression (133 / 40) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run837_checked : Entry.check ⟨726, 730, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨47, 79⟩, ⟨5, 7⟩⟩, [⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run838_checked : Entry.check ⟨726, 731, ⟨1, 399999999⟩, ⟨0, 7, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, (FQ.progression (5 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run839_checked : Entry.check ⟨726, 732, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨27, 39⟩, ⟨11, 15⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run840_checked : Entry.check ⟨728, 733, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run841_checked : Entry.check ⟨728, 734, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run842_checked : Entry.check ⟨730, 735, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run843_checked : Entry.check ⟨730, 736, ⟨1, 399999999⟩, ⟨0, 6, 4, ⟨11, 19⟩, ⟨47, 79⟩⟩, (FQ.progression (11 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run844_checked : Entry.check ⟨731, 737, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨19, 39⟩, ⟨21, 39⟩⟩, (FQ.progression (19 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run845_checked : Entry.check ⟨732, 738, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨17, 9⟩, ⟨73, 39⟩⟩, (FQ.progression (17 / 10) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run846_checked : Entry.check ⟨733, 739, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨19, 9⟩, ⟨83, 39⟩⟩, (FQ.progression (19 / 10) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run847_checked : Entry.check ⟨733, 740, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨83, 39⟩, ⟨169, 79⟩⟩, (FQ.progression (83 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run848_checked : Entry.check ⟨734, 741, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run849_checked : Entry.check ⟨735, 742, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨123, 39⟩, ⟨249, 79⟩⟩, (FQ.progression (123 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run850_checked : Entry.check ⟨735, 743, ⟨1, 399999999⟩, ⟨0, 3, 9, ⟨249, 79⟩, ⟨257, 79⟩⟩, (FQ.progression (249 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run851_checked : Entry.check ⟨736, 744, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run852_checked : Entry.check ⟨739, 745, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run853_checked : Entry.check ⟨739, 746, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run854_checked : Entry.check ⟨740, 747, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run855_checked : Entry.check ⟨741, 748, ⟨1, 399999999⟩, ⟨0, 0, 42, ⟨41, 19⟩, ⟨41, 15⟩⟩, (FQ.progression (41 / 20) (1 / 80) 42)⟩ = true := by decide +kernel
theorem run856_checked : Entry.check ⟨741, 749, ⟨1, 399999999⟩, ⟨0, 41, 3, ⟨41, 15⟩, ⟨207, 79⟩⟩, [⟨41, 15⟩, ⟨103, 39⟩, ⟨207, 79⟩]⟩ = true := by decide +kernel
theorem run857_checked : Entry.check ⟨742, 749, ⟨1, 399999999⟩, ⟨0, 0, 10, ⟨53, 19⟩, ⟨221, 79⟩⟩, (FQ.progression (53 / 20) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run858_checked : Entry.check ⟨743, 750, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨27, 79⟩, ⟨31, 79⟩⟩, (FQ.progression (27 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run859_checked : Entry.check ⟨745, 751, ⟨1, 399999999⟩, ⟨0, 4, 6, ⟨27, 79⟩, ⟨2, 4⟩⟩, (FQ.progression (27 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run860_checked : Entry.check ⟨746, 752, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run861_checked : Entry.check ⟨746, 753, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run862_checked : Entry.check ⟨747, 754, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨21, 79⟩, ⟨11, 39⟩⟩, [⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run863_checked : Entry.check ⟨747, 755, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨11, 39⟩, ⟨23, 79⟩⟩, [⟨11, 39⟩, ⟨23, 79⟩]⟩ = true := by decide +kernel
theorem run864_checked : Entry.check ⟨748, 756, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run865_checked : Entry.check ⟨749, 757, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨117, 79⟩, ⟨131, 79⟩⟩, (FQ.progression (117 / 80) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run866_checked : Entry.check ⟨750, 758, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨27, 15⟩, ⟨7, 3⟩⟩, (FQ.progression (27 / 16) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run867_checked : Entry.check ⟨751, 758, ⟨1, 399999999⟩, ⟨0, 0, 13, ⟨29, 15⟩, ⟨157, 79⟩⟩, (FQ.progression (29 / 16) (1 / 80) 13)⟩ = true := by decide +kernel
theorem entries29_checked : entries29.all Entry.check = true := by
  simp only [entries29, List.all_cons, List.all_nil, run836_checked, run837_checked, run838_checked, run839_checked, run840_checked, run841_checked, run842_checked, run843_checked, run844_checked, run845_checked, run846_checked, run847_checked, run848_checked, run849_checked, run850_checked, run851_checked, run852_checked, run853_checked, run854_checked, run855_checked, run856_checked, run857_checked, run858_checked, run859_checked, run860_checked, run861_checked, run862_checked, run863_checked, run864_checked, run865_checked, run866_checked, run867_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
