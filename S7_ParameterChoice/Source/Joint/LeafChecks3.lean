import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run67_checked : Entry.check ⟨54, 54, ⟨1, 399999999⟩, ⟨0, 37, 22, ⟨29, 9⟩, ⟨253, 79⟩⟩, (FQ.progression (29 / 10) (1 / 80) 22)⟩ = true := by decide +kernel
theorem run68_checked : Entry.check ⟨55, 55, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨1, 79⟩, ⟨7, 79⟩⟩, (FQ.progression (1 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run69_checked : Entry.check ⟨56, 56, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run70_checked : Entry.check ⟨57, 57, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨41, 19⟩, ⟨17, 7⟩⟩, (FQ.progression (41 / 20) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run71_checked : Entry.check ⟨57, 58, ⟨1, 399999999⟩, ⟨0, 6, 9, ⟨17, 7⟩, ⟨89, 39⟩⟩, (FQ.progression (17 / 8) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run72_checked : Entry.check ⟨58, 58, ⟨1, 399999999⟩, ⟨0, 0, 35, ⟨9, 3⟩, ⟨107, 39⟩⟩, (FQ.progression (9 / 4) (1 / 80) 35)⟩ = true := by decide +kernel
theorem run73_checked : Entry.check ⟨58, 59, ⟨1, 399999999⟩, ⟨0, 34, 34, ⟨107, 39⟩, ⟨247, 79⟩⟩, (FQ.progression (107 / 40) (1 / 80) 34)⟩ = true := by decide +kernel
theorem run74_checked : Entry.check ⟨59, 60, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, (FQ.progression (1 / 80) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run75_checked : Entry.check ⟨60, 61, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 9⟩, ⟨13, 79⟩⟩, (FQ.progression (1 / 10) (1 / 80) 6)⟩ = true := by decide +kernel
theorem run76_checked : Entry.check ⟨61, 62, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run77_checked : Entry.check ⟨62, 63, ⟨1, 399999999⟩, ⟨0, 0, 10, ⟨153, 79⟩, ⟨81, 39⟩⟩, (FQ.progression (153 / 80) (1 / 80) 10)⟩ = true := by decide +kernel
theorem run78_checked : Entry.check ⟨62, 64, ⟨1, 399999999⟩, ⟨0, 9, 8, ⟨81, 39⟩, ⟨169, 79⟩⟩, (FQ.progression (81 / 40) (1 / 80) 8)⟩ = true := by decide +kernel
theorem run79_checked : Entry.check ⟨63, 64, ⟨1, 399999999⟩, ⟨0, 0, 30, ⟨17, 7⟩, ⟨199, 79⟩⟩, (FQ.progression (17 / 8) (1 / 80) 30)⟩ = true := by decide +kernel
theorem run80_checked : Entry.check ⟨63, 65, ⟨1, 399999999⟩, ⟨0, 29, 9, ⟨199, 79⟩, ⟨207, 79⟩⟩, (FQ.progression (199 / 80) (1 / 80) 9)⟩ = true := by decide +kernel
theorem run81_checked : Entry.check ⟨63, 66, ⟨1, 399999999⟩, ⟨0, 37, 35, ⟨207, 79⟩, ⟨241, 79⟩⟩, (FQ.progression (207 / 80) (1 / 80) 35)⟩ = true := by decide +kernel
theorem run82_checked : Entry.check ⟨64, 67, ⟨1, 399999999⟩, ⟨0, 0, 7, ⟨1, 79⟩, ⟨7, 79⟩⟩, (FQ.progression (1 / 80) (1 / 80) 7)⟩ = true := by decide +kernel
theorem run83_checked : Entry.check ⟨65, 68, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run84_checked : Entry.check ⟨66, 69, ⟨1, 399999999⟩, ⟨0, 0, 13, ⟨143, 79⟩, ⟨31, 15⟩⟩, (FQ.progression (143 / 80) (1 / 80) 13)⟩ = true := by decide +kernel
theorem run85_checked : Entry.check ⟨66, 70, ⟨1, 399999999⟩, ⟨0, 12, 21, ⟨31, 15⟩, ⟨35, 15⟩⟩, (FQ.progression (31 / 16) (1 / 80) 21)⟩ = true := by decide +kernel
theorem run86_checked : Entry.check ⟨66, 71, ⟨1, 399999999⟩, ⟨0, 32, 33, ⟨35, 15⟩, ⟨207, 79⟩⟩, (FQ.progression (35 / 16) (1 / 80) 33)⟩ = true := by decide +kernel
theorem entries3_checked : entries3.all Entry.check = true := by
  simp only [entries3, List.all_cons, List.all_nil, run67_checked, run68_checked, run69_checked, run70_checked, run71_checked, run72_checked, run73_checked, run74_checked, run75_checked, run76_checked, run77_checked, run78_checked, run79_checked, run80_checked, run81_checked, run82_checked, run83_checked, run84_checked, run85_checked, run86_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
