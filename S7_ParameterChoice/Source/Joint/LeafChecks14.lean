import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run407_checked : Entry.check ⟨184, 349, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 19⟩, ⟨1, 15⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run408_checked : Entry.check ⟨221, 350, ⟨1, 399999999⟩, ⟨0, 8, 42, ⟨33, 9⟩, ⟨61, 15⟩⟩, (FQ.progression (33 / 10) (1 / 80) 42)⟩ = true := by decide +kernel
theorem run409_checked : Entry.check ⟨225, 351, ⟨1, 399999999⟩, ⟨0, 0, 25, ⟨21, 4⟩, ⟨9, 1⟩⟩, (FQ.progression (21 / 5) (1 / 80) 25)⟩ = true := by decide +kernel
theorem run410_checked : Entry.check ⟨225, 352, ⟨1, 399999999⟩, ⟨0, 24, 18, ⟨9, 1⟩, ⟨377, 79⟩⟩, (FQ.progression (9 / 2) (1 / 80) 18)⟩ = true := by decide +kernel
theorem run411_checked : Entry.check ⟨231, 353, ⟨1, 399999999⟩, ⟨0, 12, 27, ⟨117, 39⟩, ⟨13, 3⟩⟩, (FQ.progression (117 / 40) (1 / 80) 27)⟩ = true := by decide +kernel
theorem run412_checked : Entry.check ⟨237, 354, ⟨1, 399999999⟩, ⟨0, 24, 40, ⟨43, 15⟩, ⟨127, 39⟩⟩, (FQ.progression (43 / 16) (1 / 80) 40)⟩ = true := by decide +kernel
theorem run413_checked : Entry.check ⟨238, 354, ⟨1, 399999999⟩, ⟨0, 0, 9, ⟨19, 4⟩, ⟨39, 9⟩⟩, (FQ.progression (19 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run414_checked : Entry.check ⟨238, 355, ⟨1, 399999999⟩, ⟨0, 8, 19, ⟨39, 9⟩, ⟨33, 7⟩⟩, (FQ.progression (39 / 10) (1 / 80) 19)⟩ = true := by decide +kernel
theorem run415_checked : Entry.check ⟨238, 356, ⟨1, 399999999⟩, ⟨0, 26, 8, ⟨33, 7⟩, ⟨337, 79⟩⟩, (FQ.progression (33 / 8) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run416_checked : Entry.check ⟨243, 357, ⟨1, 399999999⟩, ⟨0, 19, 43, ⟨103, 39⟩, ⟨31, 9⟩⟩, (FQ.progression (103 / 40) (1 / 80) 43)⟩ = true := by decide +kernel
theorem run417_checked : Entry.check ⟨246, 358, ⟨1, 399999999⟩, ⟨0, 9, 15, ⟨159, 79⟩, ⟨173, 79⟩⟩, (FQ.progression (159 / 80) (1 / 80) 15)⟩ = true := by decide +kernel
theorem run418_checked : Entry.check ⟨246, 358, ⟨1, 399999999⟩, ⟨0, 24, 3, ⟨87, 39⟩, ⟨11, 4⟩⟩, [⟨87, 39⟩, ⟨35, 15⟩, ⟨11, 4⟩]⟩ = true := by decide +kernel
theorem run419_checked : Entry.check ⟨246, 359, ⟨1, 399999999⟩, ⟨0, 26, 7, ⟨11, 4⟩, ⟨91, 39⟩⟩, (FQ.progression (11 / 5) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run420_checked : Entry.check ⟨246, 359, ⟨1, 399999999⟩, ⟨0, 34, 8, ⟨23, 9⟩, ⟨191, 79⟩⟩, (FQ.progression (23 / 10) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run421_checked : Entry.check ⟨246, 359, ⟨1, 399999999⟩, ⟨0, 42, 9, ⟨12, 4⟩, ⟨5, 1⟩⟩, (FQ.progression (12 / 5) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run422_checked : Entry.check ⟨246, 359, ⟨1, 399999999⟩, ⟨0, 52, 5, ⟨101, 39⟩, ⟨103, 39⟩⟩, (FQ.progression (101 / 40) (1 / 80) 5)⟩ = true := by decide +kernel
theorem entries14_checked : entries14.all Entry.check = true := by
  simp only [entries14, List.all_cons, List.all_nil, run407_checked, run408_checked, run409_checked, run410_checked, run411_checked, run412_checked, run413_checked, run414_checked, run415_checked, run416_checked, run417_checked, run418_checked, run419_checked, run420_checked, run421_checked, run422_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
