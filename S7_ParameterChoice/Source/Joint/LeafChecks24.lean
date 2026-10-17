import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
