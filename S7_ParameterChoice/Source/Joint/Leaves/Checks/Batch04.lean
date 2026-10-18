import S7_ParameterChoice.Source.Joint.Foundations.ArithmeticData
import S7_ParameterChoice.Source.Joint.Leaves.LeafIndex

set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

-- Bound pending kernel reductions; Lake parallelizes these batches.
set_option Elab.async false

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run561_checked : Entry.check ⟨449, 483, ⟨1, 399999999⟩, ⟨0, 16, 11, ⟨99, 79⟩, ⟨109, 79⟩⟩, (FQ.progression (99 / 80) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run562_checked : Entry.check ⟨449, 484, ⟨1, 399999999⟩, ⟨0, 26, 6, ⟨109, 79⟩, ⟨57, 39⟩⟩, (FQ.progression (109 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run563_checked : Entry.check ⟨451, 485, ⟨1, 399999999⟩, ⟨0, 14, 7, ⟨91, 79⟩, ⟨97, 79⟩⟩, (FQ.progression (91 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run564_checked : Entry.check ⟨451, 486, ⟨1, 399999999⟩, ⟨0, 20, 4, ⟨97, 79⟩, ⟨5, 3⟩⟩, (FQ.progression (97 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run565_checked : Entry.check ⟨451, 487, ⟨1, 399999999⟩, ⟨0, 23, 7, ⟨5, 3⟩, ⟨53, 39⟩⟩, (FQ.progression (5 / 4) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run566_checked : Entry.check ⟨451, 488, ⟨1, 399999999⟩, ⟨0, 29, 2, ⟨53, 39⟩, ⟨107, 79⟩⟩, [⟨53, 39⟩, ⟨107, 79⟩]⟩ = true := by decide +kernel
theorem run567_checked : Entry.check ⟨451, 489, ⟨1, 399999999⟩, ⟨0, 30, 5, ⟨107, 79⟩, ⟨111, 79⟩⟩, (FQ.progression (107 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run568_checked : Entry.check ⟨452, 490, ⟨1, 399999999⟩, ⟨0, 12, 5, ⟨21, 19⟩, ⟨11, 9⟩⟩, (FQ.progression (21 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run569_checked : Entry.check ⟨452, 491, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨11, 9⟩, ⟨9, 7⟩⟩, [⟨11, 9⟩, ⟨89, 79⟩, ⟨9, 7⟩]⟩ = true := by decide +kernel
theorem run570_checked : Entry.check ⟨452, 492, ⟨1, 399999999⟩, ⟨0, 18, 6, ⟨9, 7⟩, ⟨19, 15⟩⟩, (FQ.progression (9 / 8) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run571_checked : Entry.check ⟨452, 493, ⟨1, 399999999⟩, ⟨0, 23, 2, ⟨19, 15⟩, ⟨6, 4⟩⟩, [⟨19, 15⟩, ⟨6, 4⟩]⟩ = true := by decide +kernel
theorem run572_checked : Entry.check ⟨452, 494, ⟨1, 399999999⟩, ⟨0, 24, 4, ⟨6, 4⟩, ⟨99, 79⟩⟩, (FQ.progression (6 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run573_checked : Entry.check ⟨453, 495, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨79, 79⟩, ⟨81, 79⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩, ⟨81, 79⟩]⟩ = true := by decide +kernel
theorem run574_checked : Entry.check ⟨453, 496, ⟨1, 399999999⟩, ⟨0, 15, 6, ⟨81, 79⟩, ⟨43, 39⟩⟩, (FQ.progression (81 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run575_checked : Entry.check ⟨453, 497, ⟨1, 399999999⟩, ⟨0, 20, 7, ⟨43, 39⟩, ⟨23, 19⟩⟩, (FQ.progression (43 / 40) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run576_checked : Entry.check ⟨454, 498, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨37, 39⟩, ⟨19, 19⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩]⟩ = true := by decide +kernel
theorem run577_checked : Entry.check ⟨454, 499, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨19, 19⟩, ⟨79, 79⟩⟩, (FQ.progression (19 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run578_checked : Entry.check ⟨454, 500, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨79, 79⟩, ⟨1, 0⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩]⟩ = true := by decide +kernel
theorem run579_checked : Entry.check ⟨454, 501, ⟨1, 399999999⟩, ⟨0, 18, 5, ⟨1, 0⟩, ⟨21, 19⟩⟩, (FQ.progression (1 / 1) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run580_checked : Entry.check ⟨454, 502, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨21, 19⟩, ⟨17, 15⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run581_checked : Entry.check ⟨455, 503, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨127, 79⟩, ⟨131, 79⟩⟩, (FQ.progression (127 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run582_checked : Entry.check ⟨456, 504, ⟨1, 399999999⟩, ⟨0, 0, 26, ⟨213, 79⟩, ⟨119, 39⟩⟩, (FQ.progression (213 / 80) (1 / 80) 26)⟩ = true := by decide +kernel
theorem run583_checked : Entry.check ⟨457, 504, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨51, 15⟩, ⟨263, 79⟩⟩, (FQ.progression (51 / 16) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run584_checked : Entry.check ⟨457, 505, ⟨1, 399999999⟩, ⟨0, 8, 17, ⟨263, 79⟩, ⟨279, 79⟩⟩, (FQ.progression (263 / 80) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run585_checked : Entry.check ⟨458, 506, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run586_checked : Entry.check ⟨458, 507, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨7, 7⟩, ⟨9, 9⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run587_checked : Entry.check ⟨458, 508, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨9, 9⟩, ⟨37, 39⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run588_checked : Entry.check ⟨458, 509, ⟨1, 399999999⟩, ⟨0, 18, 5, ⟨37, 39⟩, ⟨39, 39⟩⟩, (FQ.progression (37 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run589_checked : Entry.check ⟨458, 510, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run590_checked : Entry.check ⟨459, 511, ⟨1, 399999999⟩, ⟨0, 0, 34, ⟨19, 4⟩, ⟨337, 79⟩⟩, (FQ.progression (19 / 5) (1 / 80) 34)⟩ = true := by decide +kernel
theorem run591_checked : Entry.check ⟨461, 512, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨63, 79⟩, ⟨33, 39⟩⟩, (FQ.progression (63 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run592_checked : Entry.check ⟨461, 513, ⟨1, 399999999⟩, ⟨0, 14, 3, ⟨33, 39⟩, ⟨17, 19⟩⟩, [⟨33, 39⟩, ⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem entries20_checked : entries20.all Entry.check = true := by
  simp only [entries20, List.all_cons, List.all_nil, run561_checked, run562_checked, run563_checked, run564_checked, run565_checked, run566_checked, run567_checked, run568_checked, run569_checked, run570_checked, run571_checked, run572_checked, run573_checked, run574_checked, run575_checked, run576_checked, run577_checked, run578_checked, run579_checked, run580_checked, run581_checked, run582_checked, run583_checked, run584_checked, run585_checked, run586_checked, run587_checked, run588_checked, run589_checked, run590_checked, run591_checked, run592_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run593_checked : Entry.check ⟨461, 514, ⟨1, 399999999⟩, ⟨0, 16, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run594_checked : Entry.check ⟨461, 515, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨69, 79⟩, ⟨7, 7⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run595_checked : Entry.check ⟨461, 516, ⟨1, 399999999⟩, ⟨0, 18, 3, ⟨7, 7⟩, ⟨9, 9⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run596_checked : Entry.check ⟨462, 517, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨69, 39⟩, ⟨143, 79⟩⟩, (FQ.progression (69 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run597_checked : Entry.check ⟨463, 518, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨39, 19⟩, ⟨2, 0⟩⟩, (FQ.progression (39 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run598_checked : Entry.check ⟨465, 519, ⟨1, 399999999⟩, ⟨0, 11, 3, ⟨59, 79⟩, ⟨61, 79⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run599_checked : Entry.check ⟨465, 520, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, (FQ.progression (61 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run600_checked : Entry.check ⟨465, 521, ⟨1, 399999999⟩, ⟨0, 16, 3, ⟨4, 4⟩, ⟨33, 39⟩⟩, [⟨4, 4⟩, ⟨13, 15⟩, ⟨33, 39⟩]⟩ = true := by decide +kernel
theorem run601_checked : Entry.check ⟨465, 522, ⟨1, 399999999⟩, ⟨0, 18, 3, ⟨33, 39⟩, ⟨17, 19⟩⟩, [⟨33, 39⟩, ⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem run602_checked : Entry.check ⟨466, 523, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨27, 39⟩, ⟨57, 79⟩⟩, (FQ.progression (27 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run603_checked : Entry.check ⟨466, 524, ⟨1, 399999999⟩, ⟨0, 15, 5, ⟨57, 79⟩, ⟨61, 79⟩⟩, (FQ.progression (57 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run604_checked : Entry.check ⟨466, 525, ⟨1, 399999999⟩, ⟨0, 19, 2, ⟨61, 79⟩, ⟨31, 39⟩⟩, [⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run605_checked : Entry.check ⟨466, 526, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨31, 39⟩, ⟨63, 79⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run606_checked : Entry.check ⟨469, 527, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨13, 19⟩, ⟨7, 9⟩⟩, (FQ.progression (13 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run607_checked : Entry.check ⟨469, 528, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨7, 9⟩, ⟨29, 39⟩⟩, [⟨7, 9⟩, ⟨57, 79⟩, ⟨29, 39⟩]⟩ = true := by decide +kernel
theorem run608_checked : Entry.check ⟨470, 529, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨57, 19⟩, ⟨59, 19⟩⟩, (FQ.progression (57 / 20) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run609_checked : Entry.check ⟨470, 530, ⟨1, 399999999⟩, ⟨0, 8, 4, ⟨59, 19⟩, ⟨239, 79⟩⟩, (FQ.progression (59 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run610_checked : Entry.check ⟨470, 531, ⟨1, 399999999⟩, ⟨0, 11, 18, ⟨239, 79⟩, ⟨16, 4⟩⟩, (FQ.progression (239 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run611_checked : Entry.check ⟨472, 532, ⟨1, 399999999⟩, ⟨0, 6, 4, ⟨3, 4⟩, ⟨51, 79⟩⟩, (FQ.progression (3 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run612_checked : Entry.check ⟨472, 533, ⟨1, 399999999⟩, ⟨0, 9, 4, ⟨51, 79⟩, ⟨27, 39⟩⟩, (FQ.progression (51 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run613_checked : Entry.check ⟨472, 534, ⟨1, 399999999⟩, ⟨0, 12, 2, ⟨27, 39⟩, ⟨11, 15⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run614_checked : Entry.check ⟨474, 535, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run615_checked : Entry.check ⟨474, 536, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨49, 79⟩, ⟨5, 7⟩⟩, [⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run616_checked : Entry.check ⟨475, 537, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run617_checked : Entry.check ⟨475, 538, ⟨1, 399999999⟩, ⟨0, 6, 5, ⟨11, 19⟩, ⟨3, 4⟩⟩, (FQ.progression (11 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run618_checked : Entry.check ⟨477, 539, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨39, 79⟩, ⟨21, 39⟩⟩, (FQ.progression (39 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run619_checked : Entry.check ⟨479, 540, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run620_checked : Entry.check ⟨481, 541, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run621_checked : Entry.check ⟨482, 542, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run622_checked : Entry.check ⟨482, 543, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run623_checked : Entry.check ⟨483, 544, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run624_checked : Entry.check ⟨483, 545, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem entries21_checked : entries21.all Entry.check = true := by
  simp only [entries21, List.all_cons, List.all_nil, run593_checked, run594_checked, run595_checked, run596_checked, run597_checked, run598_checked, run599_checked, run600_checked, run601_checked, run602_checked, run603_checked, run604_checked, run605_checked, run606_checked, run607_checked, run608_checked, run609_checked, run610_checked, run611_checked, run612_checked, run613_checked, run614_checked, run615_checked, run616_checked, run617_checked, run618_checked, run619_checked, run620_checked, run621_checked, run622_checked, run623_checked, run624_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run625_checked : Entry.check ⟨484, 546, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run626_checked : Entry.check ⟨486, 547, ⟨1, 399999999⟩, ⟨0, 4, 3, ⟨27, 79⟩, ⟨29, 79⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩]⟩ = true := by decide +kernel
theorem run627_checked : Entry.check ⟨488, 548, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run628_checked : Entry.check ⟨488, 549, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run629_checked : Entry.check ⟨490, 550, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨21, 79⟩, ⟨23, 79⟩⟩, [⟨21, 79⟩, ⟨11, 39⟩, ⟨23, 79⟩]⟩ = true := by decide +kernel
theorem run630_checked : Entry.check ⟨492, 551, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run631_checked : Entry.check ⟨494, 552, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨19, 79⟩, ⟨21, 79⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩, ⟨21, 79⟩]⟩ = true := by decide +kernel
theorem run632_checked : Entry.check ⟨496, 553, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 4⟩, ⟨19, 79⟩⟩, (FQ.progression (1 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run633_checked : Entry.check ⟨497, 554, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 15⟩, ⟨1, 4⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run634_checked : Entry.check ⟨498, 555, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run635_checked : Entry.check ⟨499, 556, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run636_checked : Entry.check ⟨501, 557, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run637_checked : Entry.check ⟨501, 558, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨3, 19⟩, ⟨7, 39⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run638_checked : Entry.check ⟨502, 559, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run639_checked : Entry.check ⟨505, 560, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨1, 19⟩, ⟨1, 15⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run640_checked : Entry.check ⟨528, 561, ⟨1, 399999999⟩, ⟨0, 0, 57, ⟨297, 79⟩, ⟨353, 79⟩⟩, (FQ.progression (297 / 80) (1 / 80) 57)⟩ = true := by decide +kernel
theorem run641_checked : Entry.check ⟨531, 562, ⟨1, 399999999⟩, ⟨0, 0, 31, ⟨67, 19⟩, ⟨149, 39⟩⟩, (FQ.progression (67 / 20) (1 / 80) 31)⟩ = true := by decide +kernel
theorem run642_checked : Entry.check ⟨540, 563, ⟨1, 399999999⟩, ⟨0, 36, 22, ⟨47, 15⟩, ⟨16, 4⟩⟩, (FQ.progression (47 / 16) (1 / 80) 22)⟩ = true := by decide +kernel
theorem run643_checked : Entry.check ⟨543, 564, ⟨1, 399999999⟩, ⟨0, 8, 33, ⟨109, 39⟩, ⟨25, 7⟩⟩, (FQ.progression (109 / 40) (1 / 80) 33)⟩ = true := by decide +kernel
theorem run644_checked : Entry.check ⟨545, 565, ⟨1, 399999999⟩, ⟨0, 45, 34, ⟨211, 79⟩, ⟨61, 19⟩⟩, (FQ.progression (211 / 80) (1 / 80) 34)⟩ = true := by decide +kernel
theorem run645_checked : Entry.check ⟨548, 566, ⟨1, 399999999⟩, ⟨0, 14, 8, ⟨83, 39⟩, ⟨173, 79⟩⟩, (FQ.progression (83 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run646_checked : Entry.check ⟨548, 566, ⟨1, 399999999⟩, ⟨0, 22, 9, ⟨87, 39⟩, ⟨91, 39⟩⟩, (FQ.progression (87 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run647_checked : Entry.check ⟨548, 566, ⟨1, 399999999⟩, ⟨0, 32, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run648_checked : Entry.check ⟨548, 566, ⟨1, 399999999⟩, ⟨0, 40, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run649_checked : Entry.check ⟨548, 567, ⟨1, 399999999⟩, ⟨0, 50, 5, ⟨101, 39⟩, ⟨103, 39⟩⟩, (FQ.progression (101 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run650_checked : Entry.check ⟨548, 568, ⟨1, 399999999⟩, ⟨0, 54, 36, ⟨103, 39⟩, ⟨241, 79⟩⟩, (FQ.progression (103 / 40) (1 / 80) 36)⟩ = true := by decide +kernel
theorem entries22_checked : entries22.all Entry.check = true := by
  simp only [entries22, List.all_cons, List.all_nil, run625_checked, run626_checked, run627_checked, run628_checked, run629_checked, run630_checked, run631_checked, run632_checked, run633_checked, run634_checked, run635_checked, run636_checked, run637_checked, run638_checked, run639_checked, run640_checked, run641_checked, run642_checked, run643_checked, run644_checked, run645_checked, run646_checked, run647_checked, run648_checked, run649_checked, run650_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run651_checked : Entry.check ⟨550, 569, ⟨1, 399999999⟩, ⟨0, 19, 17, ⟨79, 39⟩, ⟨87, 39⟩⟩, (FQ.progression (79 / 40) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run652_checked : Entry.check ⟨551, 569, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨91, 39⟩, ⟨23, 9⟩⟩, [⟨91, 39⟩, ⟨183, 79⟩, ⟨23, 9⟩]⟩ = true := by decide +kernel
theorem run653_checked : Entry.check ⟨552, 570, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨191, 79⟩, ⟨12, 4⟩⟩, [⟨191, 79⟩, ⟨12, 4⟩]⟩ = true := by decide +kernel
theorem run654_checked : Entry.check ⟨553, 570, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨5, 1⟩, ⟨101, 39⟩⟩, [⟨5, 1⟩, ⟨201, 79⟩, ⟨101, 39⟩]⟩ = true := by decide +kernel
theorem run655_checked : Entry.check ⟨554, 571, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 4⟩, ⟨209, 79⟩⟩, [⟨13, 4⟩, ⟨209, 79⟩]⟩ = true := by decide +kernel
theorem run656_checked : Entry.check ⟨555, 572, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨113, 39⟩, ⟨227, 79⟩⟩, [⟨113, 39⟩, ⟨227, 79⟩]⟩ = true := by decide +kernel
theorem run657_checked : Entry.check ⟨556, 572, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨47, 15⟩, ⟨237, 79⟩⟩, [⟨47, 15⟩, ⟨59, 19⟩, ⟨237, 79⟩]⟩ = true := by decide +kernel
theorem run658_checked : Entry.check ⟨559, 573, ⟨1, 399999999⟩, ⟨0, 19, 18, ⟨37, 19⟩, ⟨33, 15⟩⟩, (FQ.progression (37 / 20) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run659_checked : Entry.check ⟨560, 573, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨83, 39⟩, ⟨21, 9⟩⟩, [⟨83, 39⟩, ⟨167, 79⟩, ⟨21, 9⟩]⟩ = true := by decide +kernel
theorem run660_checked : Entry.check ⟨560, 574, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨21, 9⟩, ⟨17, 7⟩⟩, [⟨21, 9⟩, ⟨169, 79⟩, ⟨17, 7⟩]⟩ = true := by decide +kernel
theorem run661_checked : Entry.check ⟨561, 574, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨47, 19⟩, ⟨189, 79⟩⟩, [⟨47, 19⟩, ⟨189, 79⟩]⟩ = true := by decide +kernel
theorem run662_checked : Entry.check ⟨563, 575, ⟨1, 399999999⟩, ⟨0, 25, 7, ⟨29, 15⟩, ⟨151, 79⟩⟩, (FQ.progression (29 / 16) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run663_checked : Entry.check ⟨563, 576, ⟨1, 399999999⟩, ⟨0, 31, 11, ⟨151, 79⟩, ⟨161, 79⟩⟩, (FQ.progression (151 / 80) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run664_checked : Entry.check ⟨564, 576, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨81, 39⟩, ⟨167, 79⟩⟩, (FQ.progression (81 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run665_checked : Entry.check ⟨566, 577, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨133, 79⟩, ⟨67, 39⟩⟩, [⟨133, 79⟩, ⟨67, 39⟩]⟩ = true := by decide +kernel
theorem run666_checked : Entry.check ⟨566, 577, ⟨1, 399999999⟩, ⟨0, 27, 3, ⟨69, 39⟩, ⟨7, 3⟩⟩, [⟨69, 39⟩, ⟨139, 79⟩, ⟨7, 3⟩]⟩ = true := by decide +kernel
theorem run667_checked : Entry.check ⟨566, 578, ⟨1, 399999999⟩, ⟨0, 32, 21, ⟨143, 79⟩, ⟨163, 79⟩⟩, (FQ.progression (143 / 80) (1 / 80) 21)⟩ = true := by decide +kernel
theorem run668_checked : Entry.check ⟨567, 579, ⟨1, 399999999⟩, ⟨0, 17, 19, ⟨3, 1⟩, ⟨69, 39⟩⟩, (FQ.progression (3 / 2) (1 / 80) 19)⟩ = true := by decide +kernel
theorem run669_checked : Entry.check ⟨567, 580, ⟨1, 399999999⟩, ⟨0, 35, 17, ⟨69, 39⟩, ⟨77, 39⟩⟩, (FQ.progression (69 / 40) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run670_checked : Entry.check ⟨568, 580, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨31, 15⟩, ⟨159, 79⟩⟩, (FQ.progression (31 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run671_checked : Entry.check ⟨570, 581, ⟨1, 399999999⟩, ⟨0, 19, 14, ⟨23, 15⟩, ⟨8, 4⟩⟩, (FQ.progression (23 / 16) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run672_checked : Entry.check ⟨571, 581, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨13, 7⟩, ⟨33, 19⟩⟩, [⟨13, 7⟩, ⟨131, 79⟩, ⟨33, 19⟩]⟩ = true := by decide +kernel
theorem run673_checked : Entry.check ⟨571, 582, ⟨1, 399999999⟩, ⟨0, 2, 6, ⟨33, 19⟩, ⟨137, 79⟩⟩, (FQ.progression (33 / 20) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run674_checked : Entry.check ⟨573, 583, ⟨1, 399999999⟩, ⟨0, 13, 7, ⟨51, 39⟩, ⟨27, 19⟩⟩, (FQ.progression (51 / 40) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run675_checked : Entry.check ⟨573, 584, ⟨1, 399999999⟩, ⟨0, 19, 4, ⟨27, 19⟩, ⟨111, 79⟩⟩, (FQ.progression (27 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run676_checked : Entry.check ⟨573, 585, ⟨1, 399999999⟩, ⟨0, 22, 9, ⟨111, 79⟩, ⟨119, 79⟩⟩, (FQ.progression (111 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run677_checked : Entry.check ⟨573, 586, ⟨1, 399999999⟩, ⟨0, 30, 6, ⟨119, 79⟩, ⟨31, 19⟩⟩, (FQ.progression (119 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run678_checked : Entry.check ⟨574, 586, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨63, 39⟩, ⟨13, 7⟩⟩, (FQ.progression (63 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run679_checked : Entry.check ⟨574, 587, ⟨1, 399999999⟩, ⟨0, 4, 5, ⟨13, 7⟩, ⟨67, 39⟩⟩, (FQ.progression (13 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run680_checked : Entry.check ⟨575, 588, ⟨1, 399999999⟩, ⟨0, 17, 12, ⟨5, 3⟩, ⟨111, 79⟩⟩, (FQ.progression (5 / 4) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run681_checked : Entry.check ⟨575, 589, ⟨1, 399999999⟩, ⟨0, 28, 3, ⟨111, 79⟩, ⟨113, 79⟩⟩, [⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run682_checked : Entry.check ⟨576, 590, ⟨1, 399999999⟩, ⟨0, 15, 7, ⟨91, 79⟩, ⟨97, 79⟩⟩, (FQ.progression (91 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem entries23_checked : entries23.all Entry.check = true := by
  simp only [entries23, List.all_cons, List.all_nil, run651_checked, run652_checked, run653_checked, run654_checked, run655_checked, run656_checked, run657_checked, run658_checked, run659_checked, run660_checked, run661_checked, run662_checked, run663_checked, run664_checked, run665_checked, run666_checked, run667_checked, run668_checked, run669_checked, run670_checked, run671_checked, run672_checked, run673_checked, run674_checked, run675_checked, run676_checked, run677_checked, run678_checked, run679_checked, run680_checked, run681_checked, run682_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run683_checked : Entry.check ⟨576, 591, ⟨1, 399999999⟩, ⟨0, 21, 10, ⟨97, 79⟩, ⟨53, 39⟩⟩, (FQ.progression (97 / 80) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run684_checked : Entry.check ⟨576, 592, ⟨1, 399999999⟩, ⟨0, 30, 4, ⟨53, 39⟩, ⟨109, 79⟩⟩, (FQ.progression (53 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run685_checked : Entry.check ⟨577, 593, ⟨1, 399999999⟩, ⟨0, 13, 5, ⟨21, 19⟩, ⟨11, 9⟩⟩, (FQ.progression (21 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run686_checked : Entry.check ⟨577, 594, ⟨1, 399999999⟩, ⟨0, 17, 7, ⟨11, 9⟩, ⟨47, 39⟩⟩, (FQ.progression (11 / 10) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run687_checked : Entry.check ⟨577, 595, ⟨1, 399999999⟩, ⟨0, 23, 6, ⟨47, 39⟩, ⟨99, 79⟩⟩, (FQ.progression (47 / 40) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run688_checked : Entry.check ⟨578, 596, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨79, 79⟩, ⟨81, 79⟩⟩, [⟨79, 79⟩, ⟨1, 0⟩, ⟨81, 79⟩]⟩ = true := by decide +kernel
theorem run689_checked : Entry.check ⟨578, 597, ⟨1, 399999999⟩, ⟨0, 15, 6, ⟨81, 79⟩, ⟨43, 39⟩⟩, (FQ.progression (81 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run690_checked : Entry.check ⟨578, 598, ⟨1, 399999999⟩, ⟨0, 20, 7, ⟨43, 39⟩, ⟨23, 19⟩⟩, (FQ.progression (43 / 40) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run691_checked : Entry.check ⟨579, 599, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨37, 39⟩, ⟨19, 19⟩⟩, [⟨37, 39⟩, ⟨15, 15⟩, ⟨19, 19⟩]⟩ = true := by decide +kernel
theorem run692_checked : Entry.check ⟨579, 600, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨19, 19⟩, ⟨79, 79⟩⟩, (FQ.progression (19 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run693_checked : Entry.check ⟨579, 601, ⟨1, 399999999⟩, ⟨0, 17, 5, ⟨79, 79⟩, ⟨83, 79⟩⟩, (FQ.progression (79 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run694_checked : Entry.check ⟨580, 602, ⟨1, 399999999⟩, ⟨0, 0, 11, ⟨5, 1⟩, ⟨21, 7⟩⟩, (FQ.progression (5 / 2) (1 / 80) 11)⟩ = true := by decide +kernel
theorem run695_checked : Entry.check ⟨580, 603, ⟨1, 399999999⟩, ⟨0, 10, 54, ⟨21, 7⟩, ⟨263, 79⟩⟩, (FQ.progression (21 / 8) (1 / 80) 54)⟩ = true := by decide +kernel
theorem run696_checked : Entry.check ⟨580, 604, ⟨1, 399999999⟩, ⟨0, 63, 75, ⟨263, 79⟩, ⟨337, 79⟩⟩, (FQ.progression (263 / 80) (1 / 80) 75)⟩ = true := by decide +kernel
theorem run697_checked : Entry.check ⟨582, 605, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run698_checked : Entry.check ⟨582, 606, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run699_checked : Entry.check ⟨582, 607, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨9, 9⟩, ⟨37, 39⟩⟩, [⟨9, 9⟩, ⟨73, 79⟩, ⟨37, 39⟩]⟩ = true := by decide +kernel
theorem run700_checked : Entry.check ⟨582, 608, ⟨1, 399999999⟩, ⟨0, 17, 5, ⟨37, 39⟩, ⟨39, 39⟩⟩, (FQ.progression (37 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run701_checked : Entry.check ⟨585, 609, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨63, 79⟩, ⟨13, 15⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩, ⟨13, 15⟩]⟩ = true := by decide +kernel
theorem run702_checked : Entry.check ⟨585, 610, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨13, 15⟩, ⟨67, 79⟩⟩, [⟨13, 15⟩, ⟨33, 39⟩, ⟨67, 79⟩]⟩ = true := by decide +kernel
theorem run703_checked : Entry.check ⟨585, 611, ⟨1, 399999999⟩, ⟨0, 14, 2, ⟨67, 79⟩, ⟨17, 19⟩⟩, [⟨67, 79⟩, ⟨17, 19⟩]⟩ = true := by decide +kernel
theorem run704_checked : Entry.check ⟨585, 612, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨17, 19⟩, ⟨7, 7⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩, ⟨7, 7⟩]⟩ = true := by decide +kernel
theorem run705_checked : Entry.check ⟨585, 613, ⟨1, 399999999⟩, ⟨0, 17, 2, ⟨7, 7⟩, ⟨71, 79⟩⟩, [⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run706_checked : Entry.check ⟨586, 614, ⟨1, 399999999⟩, ⟨0, 10, 3, ⟨59, 79⟩, ⟨61, 79⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run707_checked : Entry.check ⟨586, 615, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, (FQ.progression (61 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run708_checked : Entry.check ⟨586, 616, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨4, 4⟩, ⟨67, 79⟩⟩, (FQ.progression (4 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run709_checked : Entry.check ⟨589, 617, ⟨1, 399999999⟩, ⟨0, 8, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run710_checked : Entry.check ⟨589, 618, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨57, 79⟩, ⟨3, 3⟩⟩, (FQ.progression (57 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run711_checked : Entry.check ⟨589, 619, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨3, 3⟩, ⟨31, 39⟩⟩, [⟨3, 3⟩, ⟨61, 79⟩, ⟨31, 39⟩]⟩ = true := by decide +kernel
theorem run712_checked : Entry.check ⟨589, 620, ⟨1, 399999999⟩, ⟨0, 15, 2, ⟨31, 39⟩, ⟨63, 79⟩⟩, [⟨31, 39⟩, ⟨63, 79⟩]⟩ = true := by decide +kernel
theorem run713_checked : Entry.check ⟨590, 621, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨321, 79⟩, ⟨21, 4⟩⟩, (FQ.progression (321 / 80) (1 / 80) 16)⟩ = true := by decide +kernel
theorem entries24_checked : entries24.all Entry.check = true := by
  simp only [entries24, List.all_cons, List.all_nil, run683_checked, run684_checked, run685_checked, run686_checked, run687_checked, run688_checked, run689_checked, run690_checked, run691_checked, run692_checked, run693_checked, run694_checked, run695_checked, run696_checked, run697_checked, run698_checked, run699_checked, run700_checked, run701_checked, run702_checked, run703_checked, run704_checked, run705_checked, run706_checked, run707_checked, run708_checked, run709_checked, run710_checked, run711_checked, run712_checked, run713_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
