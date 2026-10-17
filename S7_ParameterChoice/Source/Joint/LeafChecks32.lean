import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run921_checked : Entry.check ⟨845, 799, ⟨1, 399999999⟩, ⟨0, 0, 22, ⟨333, 79⟩, ⟨177, 39⟩⟩, (FQ.progression (333 / 80) (1 / 80) 22)⟩ = true := by decide +kernel
theorem run922_checked : Entry.check ⟨845, 800, ⟨1, 399999999⟩, ⟨0, 21, 4, ⟨177, 39⟩, ⟨357, 79⟩⟩, (FQ.progression (177 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run923_checked : Entry.check ⟨846, 801, ⟨1, 399999999⟩, ⟨0, 12, 7, ⟨91, 79⟩, ⟨97, 79⟩⟩, (FQ.progression (91 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run924_checked : Entry.check ⟨846, 802, ⟨1, 399999999⟩, ⟨0, 18, 12, ⟨97, 79⟩, ⟨27, 19⟩⟩, (FQ.progression (97 / 80) (1 / 80) 12)⟩ = true := by decide +kernel
theorem run925_checked : Entry.check ⟨846, 803, ⟨1, 399999999⟩, ⟨0, 29, 2, ⟨27, 19⟩, ⟨109, 79⟩⟩, [⟨27, 19⟩, ⟨109, 79⟩]⟩ = true := by decide +kernel
theorem run926_checked : Entry.check ⟨847, 804, ⟨1, 399999999⟩, ⟨0, 11, 5, ⟨21, 19⟩, ⟨11, 9⟩⟩, (FQ.progression (21 / 20) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run927_checked : Entry.check ⟨847, 805, ⟨1, 399999999⟩, ⟨0, 15, 7, ⟨11, 9⟩, ⟨47, 39⟩⟩, (FQ.progression (11 / 10) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run928_checked : Entry.check ⟨847, 806, ⟨1, 399999999⟩, ⟨0, 21, 9, ⟨47, 39⟩, ⟨51, 39⟩⟩, (FQ.progression (47 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run929_checked : Entry.check ⟨849, 807, ⟨1, 399999999⟩, ⟨0, 12, 4, ⟨79, 79⟩, ⟨41, 39⟩⟩, (FQ.progression (79 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run930_checked : Entry.check ⟨849, 808, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨41, 39⟩, ⟨17, 15⟩⟩, (FQ.progression (41 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run931_checked : Entry.check ⟨849, 809, ⟨1, 399999999⟩, ⟨0, 18, 2, ⟨17, 15⟩, ⟨43, 39⟩⟩, [⟨17, 15⟩, ⟨43, 39⟩]⟩ = true := by decide +kernel
theorem run932_checked : Entry.check ⟨849, 810, ⟨1, 399999999⟩, ⟨0, 19, 5, ⟨43, 39⟩, ⟨9, 7⟩⟩, (FQ.progression (43 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run933_checked : Entry.check ⟨852, 811, ⟨1, 399999999⟩, ⟨0, 13, 3, ⟨15, 15⟩, ⟨77, 79⟩⟩, [⟨15, 15⟩, ⟨19, 19⟩, ⟨77, 79⟩]⟩ = true := by decide +kernel
theorem run934_checked : Entry.check ⟨852, 812, ⟨1, 399999999⟩, ⟨0, 15, 4, ⟨77, 79⟩, ⟨1, 0⟩⟩, (FQ.progression (77 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run935_checked : Entry.check ⟨852, 813, ⟨1, 399999999⟩, ⟨0, 18, 5, ⟨1, 0⟩, ⟨21, 19⟩⟩, (FQ.progression (1 / 1) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run936_checked : Entry.check ⟨852, 814, ⟨1, 399999999⟩, ⟨0, 22, 2, ⟨21, 19⟩, ⟨17, 15⟩⟩, [⟨21, 19⟩, ⟨17, 15⟩]⟩ = true := by decide +kernel
theorem run937_checked : Entry.check ⟨853, 815, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨17, 19⟩, ⟨69, 79⟩⟩, [⟨17, 19⟩, ⟨69, 79⟩]⟩ = true := by decide +kernel
theorem run938_checked : Entry.check ⟨853, 816, ⟨1, 399999999⟩, ⟨0, 11, 4, ⟨69, 79⟩, ⟨9, 9⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩, ⟨9, 9⟩]⟩ = true := by decide +kernel
theorem run939_checked : Entry.check ⟨853, 817, ⟨1, 399999999⟩, ⟨0, 14, 4, ⟨9, 9⟩, ⟨15, 15⟩⟩, (FQ.progression (9 / 10) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run940_checked : Entry.check ⟨853, 818, ⟨1, 399999999⟩, ⟨0, 17, 4, ⟨15, 15⟩, ⟨39, 39⟩⟩, (FQ.progression (15 / 16) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run941_checked : Entry.check ⟨853, 819, ⟨1, 399999999⟩, ⟨0, 20, 2, ⟨39, 39⟩, ⟨79, 79⟩⟩, [⟨39, 39⟩, ⟨79, 79⟩]⟩ = true := by decide +kernel
theorem run942_checked : Entry.check ⟨854, 820, ⟨1, 399999999⟩, ⟨0, 10, 6, ⟨4, 4⟩, ⟨69, 79⟩⟩, (FQ.progression (4 / 5) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run943_checked : Entry.check ⟨854, 821, ⟨1, 399999999⟩, ⟨0, 15, 3, ⟨69, 79⟩, ⟨71, 79⟩⟩, [⟨69, 79⟩, ⟨7, 7⟩, ⟨71, 79⟩]⟩ = true := by decide +kernel
theorem run944_checked : Entry.check ⟨854, 822, ⟨1, 399999999⟩, ⟨0, 17, 3, ⟨71, 79⟩, ⟨73, 79⟩⟩, [⟨71, 79⟩, ⟨9, 9⟩, ⟨73, 79⟩]⟩ = true := by decide +kernel
theorem run945_checked : Entry.check ⟨854, 823, ⟨1, 399999999⟩, ⟨0, 19, 3, ⟨73, 79⟩, ⟨15, 15⟩⟩, [⟨73, 79⟩, ⟨37, 39⟩, ⟨15, 15⟩]⟩ = true := by decide +kernel
theorem run946_checked : Entry.check ⟨855, 824, ⟨1, 399999999⟩, ⟨0, 0, 14, ⟨133, 39⟩, ⟨279, 79⟩⟩, (FQ.progression (133 / 40) (1 / 80) 14)⟩ = true := by decide +kernel
theorem run947_checked : Entry.check ⟨856, 825, ⟨1, 399999999⟩, ⟨0, 8, 3, ⟨59, 79⟩, ⟨61, 79⟩⟩, [⟨59, 79⟩, ⟨3, 3⟩, ⟨61, 79⟩]⟩ = true := by decide +kernel
theorem run948_checked : Entry.check ⟨856, 826, ⟨1, 399999999⟩, ⟨0, 10, 4, ⟨61, 79⟩, ⟨4, 4⟩⟩, (FQ.progression (61 / 80) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run949_checked : Entry.check ⟨856, 827, ⟨1, 399999999⟩, ⟨0, 13, 4, ⟨4, 4⟩, ⟨67, 79⟩⟩, (FQ.progression (4 / 5) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run950_checked : Entry.check ⟨857, 828, ⟨1, 399999999⟩, ⟨0, 9, 4, ⟨27, 39⟩, ⟨57, 79⟩⟩, (FQ.progression (27 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem run951_checked : Entry.check ⟨857, 829, ⟨1, 399999999⟩, ⟨0, 12, 3, ⟨57, 79⟩, ⟨59, 79⟩⟩, [⟨57, 79⟩, ⟨29, 39⟩, ⟨59, 79⟩]⟩ = true := by decide +kernel
theorem run952_checked : Entry.check ⟨857, 830, ⟨1, 399999999⟩, ⟨0, 14, 5, ⟨59, 79⟩, ⟨63, 79⟩⟩, (FQ.progression (59 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem entries32_checked : entries32.all Entry.check = true := by
  simp only [entries32, List.all_cons, List.all_nil, run921_checked, run922_checked, run923_checked, run924_checked, run925_checked, run926_checked, run927_checked, run928_checked, run929_checked, run930_checked, run931_checked, run932_checked, run933_checked, run934_checked, run935_checked, run936_checked, run937_checked, run938_checked, run939_checked, run940_checked, run941_checked, run942_checked, run943_checked, run944_checked, run945_checked, run946_checked, run947_checked, run948_checked, run949_checked, run950_checked, run951_checked, run952_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
