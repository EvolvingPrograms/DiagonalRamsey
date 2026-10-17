import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run953_checked : Entry.check ⟨857, 831, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨63, 79⟩, ⟨4, 4⟩⟩, [⟨63, 79⟩, ⟨4, 4⟩]⟩ = true := by decide +kernel
theorem run954_checked : Entry.check ⟨858, 832, ⟨1, 399999999⟩, ⟨0, 0, 41, ⟨103, 39⟩, ⟨123, 39⟩⟩, (FQ.progression (103 / 40) (1 / 80) 41)⟩ = true := by decide +kernel
theorem run955_checked : Entry.check ⟨858, 833, ⟨1, 399999999⟩, ⟨0, 40, 22, ⟨123, 39⟩, ⟨267, 79⟩⟩, (FQ.progression (123 / 40) (1 / 80) 22)⟩ = true := by decide +kernel
theorem run956_checked : Entry.check ⟨860, 834, ⟨1, 399999999⟩, ⟨0, 9, 4, ⟨13, 19⟩, ⟨11, 15⟩⟩, (FQ.progression (13 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run957_checked : Entry.check ⟨860, 835, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨11, 15⟩, ⟨57, 79⟩⟩, [⟨11, 15⟩, ⟨7, 9⟩, ⟨57, 79⟩]⟩ = true := by decide +kernel
theorem run958_checked : Entry.check ⟨861, 836, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨47, 79⟩, ⟨5, 7⟩⟩, [⟨47, 79⟩, ⟨3, 4⟩, ⟨49, 79⟩, ⟨5, 7⟩]⟩ = true := by decide +kernel
theorem run959_checked : Entry.check ⟨861, 837, ⟨1, 399999999⟩, ⟨0, 7, 5, ⟨5, 7⟩, ⟨27, 39⟩⟩, (FQ.progression (5 / 8) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run960_checked : Entry.check ⟨861, 838, ⟨1, 399999999⟩, ⟨0, 11, 2, ⟨27, 39⟩, ⟨11, 15⟩⟩, [⟨27, 39⟩, ⟨11, 15⟩]⟩ = true := by decide +kernel
theorem run961_checked : Entry.check ⟨862, 839, ⟨1, 399999999⟩, ⟨0, 8, 5, ⟨9, 15⟩, ⟨49, 79⟩⟩, (FQ.progression (9 / 16) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run962_checked : Entry.check ⟨864, 840, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨1, 1⟩, ⟨11, 19⟩⟩, (FQ.progression (1 / 2) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run963_checked : Entry.check ⟨864, 841, ⟨1, 399999999⟩, ⟨0, 6, 4, ⟨11, 19⟩, ⟨47, 79⟩⟩, (FQ.progression (11 / 20) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run964_checked : Entry.check ⟨865, 842, ⟨1, 399999999⟩, ⟨0, 3, 5, ⟨19, 39⟩, ⟨21, 39⟩⟩, (FQ.progression (19 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run965_checked : Entry.check ⟨867, 843, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨9, 19⟩, ⟨1, 1⟩⟩, (FQ.progression (9 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run966_checked : Entry.check ⟨868, 844, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨7, 15⟩, ⟨19, 39⟩⟩, (FQ.progression (7 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run967_checked : Entry.check ⟨869, 845, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨17, 39⟩, ⟨7, 15⟩⟩, [⟨17, 39⟩, ⟨7, 15⟩]⟩ = true := by decide +kernel
theorem run968_checked : Entry.check ⟨869, 846, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨7, 15⟩, ⟨9, 19⟩⟩, [⟨7, 15⟩, ⟨9, 19⟩]⟩ = true := by decide +kernel
theorem run969_checked : Entry.check ⟨870, 847, ⟨1, 399999999⟩, ⟨0, 1, 6, ⟨29, 79⟩, ⟨17, 39⟩⟩, (FQ.progression (29 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run970_checked : Entry.check ⟨871, 848, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨27, 79⟩, ⟨3, 7⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩, ⟨3, 7⟩]⟩ = true := by decide +kernel
theorem run971_checked : Entry.check ⟨872, 849, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨27, 79⟩, ⟨29, 79⟩⟩, [⟨27, 79⟩, ⟨7, 19⟩, ⟨29, 79⟩]⟩ = true := by decide +kernel
theorem run972_checked : Entry.check ⟨873, 850, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨23, 79⟩, ⟨5, 15⟩⟩, [⟨23, 79⟩, ⟨3, 9⟩, ⟨5, 15⟩]⟩ = true := by decide +kernel
theorem run973_checked : Entry.check ⟨873, 851, ⟨1, 399999999⟩, ⟨0, 3, 3, ⟨5, 15⟩, ⟨27, 79⟩⟩, [⟨5, 15⟩, ⟨13, 39⟩, ⟨27, 79⟩]⟩ = true := by decide +kernel
theorem run974_checked : Entry.check ⟨874, 852, ⟨1, 399999999⟩, ⟨0, 1, 4, ⟨21, 79⟩, ⟨3, 9⟩⟩, (FQ.progression (21 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run975_checked : Entry.check ⟨875, 853, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨1, 3⟩, ⟨11, 39⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩, ⟨11, 39⟩]⟩ = true := by decide +kernel
theorem run976_checked : Entry.check ⟨876, 854, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 7⟩, ⟨111, 79⟩⟩, [⟨11, 7⟩, ⟨111, 79⟩]⟩ = true := by decide +kernel
theorem run977_checked : Entry.check ⟨876, 855, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨111, 79⟩, ⟨113, 79⟩⟩, [⟨111, 79⟩, ⟨7, 4⟩, ⟨113, 79⟩]⟩ = true := by decide +kernel
theorem run978_checked : Entry.check ⟨877, 855, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨117, 79⟩, ⟨121, 79⟩⟩, (FQ.progression (117 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run979_checked : Entry.check ⟨878, 855, ⟨1, 399999999⟩, ⟨0, 0, 8, ⟨31, 19⟩, ⟨131, 79⟩⟩, (FQ.progression (31 / 20) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run980_checked : Entry.check ⟨879, 856, ⟨1, 399999999⟩, ⟨0, 0, 20, ⟨37, 19⟩, ⟨167, 79⟩⟩, (FQ.progression (37 / 20) (1 / 80) 20)⟩ = true := by decide +kernel
theorem run981_checked : Entry.check ⟨879, 857, ⟨1, 399999999⟩, ⟨0, 19, 3, ⟨167, 79⟩, ⟨169, 79⟩⟩, [⟨167, 79⟩, ⟨21, 9⟩, ⟨169, 79⟩]⟩ = true := by decide +kernel
theorem run982_checked : Entry.check ⟨880, 858, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run983_checked : Entry.check ⟨880, 859, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run984_checked : Entry.check ⟨881, 860, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 4⟩, ⟨9, 39⟩⟩, [⟨1, 4⟩, ⟨17, 79⟩, ⟨9, 39⟩]⟩ = true := by decide +kernel
theorem entries33_checked : entries33.all Entry.check = true := by
  simp only [entries33, List.all_cons, List.all_nil, run953_checked, run954_checked, run955_checked, run956_checked, run957_checked, run958_checked, run959_checked, run960_checked, run961_checked, run962_checked, run963_checked, run964_checked, run965_checked, run966_checked, run967_checked, run968_checked, run969_checked, run970_checked, run971_checked, run972_checked, run973_checked, run974_checked, run975_checked, run976_checked, run977_checked, run978_checked, run979_checked, run980_checked, run981_checked, run982_checked, run983_checked, run984_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
