import S7_ParameterChoice.Source.Joint.ArithmeticData
import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run375_checked : Entry.check ⟨171, 320, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 15⟩, ⟨7, 79⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run376_checked : Entry.check ⟨171, 321, ⟨1, 399999999⟩, ⟨0, 2, 3, ⟨7, 79⟩, ⟨9, 79⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run377_checked : Entry.check ⟨171, 322, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨9, 79⟩, ⟨3, 19⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run378_checked : Entry.check ⟨171, 323, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨3, 19⟩, ⟨13, 79⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run379_checked : Entry.check ⟨172, 324, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 79⟩, ⟨1, 19⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run380_checked : Entry.check ⟨173, 325, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run381_checked : Entry.check ⟨173, 326, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run382_checked : Entry.check ⟨173, 327, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run383_checked : Entry.check ⟨173, 328, ⟨1, 399999999⟩, ⟨0, 3, 4, ⟨9, 79⟩, ⟨3, 19⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩, ⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run384_checked : Entry.check ⟨174, 329, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run385_checked : Entry.check ⟨175, 329, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 19⟩, ⟨1, 15⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run386_checked : Entry.check ⟨175, 330, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run387_checked : Entry.check ⟨176, 331, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run388_checked : Entry.check ⟨176, 332, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run389_checked : Entry.check ⟨176, 333, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run390_checked : Entry.check ⟨177, 334, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, (FQ.progression (1 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run391_checked : Entry.check ⟨177, 335, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run392_checked : Entry.check ⟨177, 336, ⟨1, 399999999⟩, ⟨0, 5, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run393_checked : Entry.check ⟨177, 335, ⟨1, 399999999⟩, ⟨0, 6, 2, ⟨7, 79⟩, ⟨1, 9⟩⟩, [⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run394_checked : Entry.check ⟨177, 337, ⟨1, 399999999⟩, ⟨0, 7, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run395_checked : Entry.check ⟨178, 338, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, (FQ.progression (1 / 80) (1 / 80) 5)⟩ = true := by decide +kernel
theorem run396_checked : Entry.check ⟨178, 339, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run397_checked : Entry.check ⟨178, 340, ⟨1, 399999999⟩, ⟨0, 5, 3, ⟨3, 39⟩, ⟨1, 9⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run398_checked : Entry.check ⟨179, 341, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 39⟩, ⟨3, 79⟩⟩, [⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run399_checked : Entry.check ⟨180, 341, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 19⟩, ⟨1, 15⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run400_checked : Entry.check ⟨180, 342, ⟨1, 399999999⟩, ⟨0, 1, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run401_checked : Entry.check ⟨180, 343, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨3, 39⟩, ⟨7, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩]⟩ = true := by decide +kernel
theorem run402_checked : Entry.check ⟨181, 344, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem run403_checked : Entry.check ⟨182, 345, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 15⟩, ⟨3, 39⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run404_checked : Entry.check ⟨183, 346, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run405_checked : Entry.check ⟨183, 347, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨3, 79⟩, ⟨1, 19⟩⟩, [⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run406_checked : Entry.check ⟨183, 348, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨1, 19⟩, ⟨1, 15⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem entries13_checked : entries13.all Entry.check = true := by
  simp only [entries13, List.all_cons, List.all_nil, run375_checked, run376_checked, run377_checked, run378_checked, run379_checked, run380_checked, run381_checked, run382_checked, run383_checked, run384_checked, run385_checked, run386_checked, run387_checked, run388_checked, run389_checked, run390_checked, run391_checked, run392_checked, run393_checked, run394_checked, run395_checked, run396_checked, run397_checked, run398_checked, run399_checked, run400_checked, run401_checked, run402_checked, run403_checked, run404_checked, run405_checked, run406_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
