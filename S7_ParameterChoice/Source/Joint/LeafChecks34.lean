import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run985_checked : Entry.check ⟨881, 861, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run986_checked : Entry.check ⟨882, 862, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 15⟩, ⟨17, 79⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run987_checked : Entry.check ⟨883, 863, ⟨1, 399999999⟩, ⟨0, 1, 3, ⟨7, 39⟩, ⟨1, 4⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run988_checked : Entry.check ⟨884, 864, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run989_checked : Entry.check ⟨885, 865, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run990_checked : Entry.check ⟨886, 866, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run991_checked : Entry.check ⟨887, 867, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run992_checked : Entry.check ⟨887, 868, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run993_checked : Entry.check ⟨888, 869, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run994_checked : Entry.check ⟨889, 870, ⟨1, 399999999⟩, ⟨0, 0, 26, ⟨43, 19⟩, ⟨197, 79⟩⟩, (FQ.progression (43 / 20) (1 / 80) 26)⟩ = true := by decide +kernel
theorem run995_checked : Entry.check ⟨889, 871, ⟨1, 399999999⟩, ⟨0, 25, 18, ⟨197, 79⟩, ⟨107, 39⟩⟩, (FQ.progression (197 / 80) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run996_checked : Entry.check ⟨945, 872, ⟨1, 399999999⟩, ⟨0, 0, 19, ⟨27, 7⟩, ⟨18, 4⟩⟩, (FQ.progression (27 / 8) (1 / 80) 19)⟩ = true := by decide +kernel
theorem run997_checked : Entry.check ⟨948, 873, ⟨1, 399999999⟩, ⟨0, 0, 16, ⟨29, 7⟩, ⟨61, 15⟩⟩, (FQ.progression (29 / 8) (1 / 80) 16)⟩ = true := by decide +kernel
theorem run998_checked : Entry.check ⟨950, 874, ⟨1, 399999999⟩, ⟨0, 37, 17, ⟨16, 4⟩, ⟨17, 4⟩⟩, (FQ.progression (16 / 5) (1 / 80) 17)⟩ = true := by decide +kernel
theorem run999_checked : Entry.check ⟨952, 875, ⟨1, 399999999⟩, ⟨0, 42, 26, ⟨241, 79⟩, ⟨133, 39⟩⟩, (FQ.progression (241 / 80) (1 / 80) 26)⟩ = true := by decide +kernel
theorem run1000_checked : Entry.check ⟨955, 876, ⟨1, 399999999⟩, ⟨0, 36, 36, ⟨45, 15⟩, ⟨13, 3⟩⟩, (FQ.progression (45 / 16) (1 / 80) 36)⟩ = true := by decide +kernel
theorem run1001_checked : Entry.check ⟨956, 876, ⟨1, 399999999⟩, ⟨0, 0, 15, ⟨149, 39⟩, ⟨39, 9⟩⟩, (FQ.progression (149 / 40) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run1002_checked : Entry.check ⟨956, 877, ⟨1, 399999999⟩, ⟨0, 14, 19, ⟨39, 9⟩, ⟨33, 7⟩⟩, (FQ.progression (39 / 10) (1 / 80) 19)⟩ = true := by decide +kernel
theorem run1003_checked : Entry.check ⟨956, 878, ⟨1, 399999999⟩, ⟨0, 32, 8, ⟨33, 7⟩, ⟨337, 79⟩⟩, (FQ.progression (33 / 8) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1004_checked : Entry.check ⟨960, 879, ⟨1, 399999999⟩, ⟨0, 40, 39, ⟨217, 79⟩, ⟨51, 15⟩⟩, (FQ.progression (217 / 80) (1 / 80) 39)⟩ = true := by decide +kernel
theorem run1005_checked : Entry.check ⟨962, 880, ⟨1, 399999999⟩, ⟨0, 15, 2, ⟨167, 79⟩, ⟨21, 9⟩⟩, [⟨167, 79⟩, ⟨21, 9⟩]⟩ = true := by decide +kernel
theorem run1006_checked : Entry.check ⟨963, 880, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨87, 39⟩, ⟨91, 39⟩⟩, (FQ.progression (87 / 40) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1007_checked : Entry.check ⟨963, 880, ⟨1, 399999999⟩, ⟨0, 10, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run1008_checked : Entry.check ⟨963, 880, ⟨1, 399999999⟩, ⟨0, 18, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run1009_checked : Entry.check ⟨963, 880, ⟨1, 399999999⟩, ⟨0, 28, 4, ⟨101, 39⟩, ⟨41, 15⟩⟩, (FQ.progression (101 / 40) (1 / 80) 4)⟩ = true := by decide +kernel
theorem entries34_checked : entries34.all Entry.check = true := by
  simp only [entries34, List.all_cons, List.all_nil, run985_checked, run986_checked, run987_checked, run988_checked, run989_checked, run990_checked, run991_checked, run992_checked, run993_checked, run994_checked, run995_checked, run996_checked, run997_checked, run998_checked, run999_checked, run1000_checked, run1001_checked, run1002_checked, run1003_checked, run1004_checked, run1005_checked, run1006_checked, run1007_checked, run1008_checked, run1009_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
