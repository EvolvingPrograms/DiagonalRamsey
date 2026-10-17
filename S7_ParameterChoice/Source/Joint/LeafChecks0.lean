import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run1_checked : Entry.check ⟨0, 1, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 15⟩, ⟨1, 7⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run2_checked : Entry.check ⟨0, 2, ⟨1, 399999999⟩, ⟨0, 5, 7, ⟨1, 7⟩, ⟨1, 4⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩, ⟨3, 19⟩, ⟨13, 79⟩, ⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run3_checked : Entry.check ⟨1, 3, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨7, 39⟩, ⟨1, 4⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run4_checked : Entry.check ⟨2, 4, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem run5_checked : Entry.check ⟨3, 5, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run6_checked : Entry.check ⟨4, 6, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 79⟩, ⟨1, 19⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem run7_checked : Entry.check ⟨5, 7, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 79⟩, ⟨1, 15⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩]⟩ = true := by decide +kernel
theorem run8_checked : Entry.check ⟨6, 8, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem entries0_checked : entries0.all Entry.check = true := by
  simp only [entries0, List.all_cons, List.all_nil, run1_checked, run2_checked, run3_checked, run4_checked, run5_checked, run6_checked, run7_checked, run8_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
