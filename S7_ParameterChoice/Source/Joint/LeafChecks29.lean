import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
