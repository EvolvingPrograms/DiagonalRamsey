import S7_ParameterChoice.Source.Joint.LeafIndex

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem run343_checked : Entry.check ⟨157, 291, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem run344_checked : Entry.check ⟨158, 291, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 19⟩, ⟨3, 39⟩⟩, [⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run345_checked : Entry.check ⟨158, 292, ⟨1, 399999999⟩, ⟨0, 2, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run346_checked : Entry.check ⟨158, 293, ⟨1, 399999999⟩, ⟨0, 6, 4, ⟨1, 7⟩, ⟨13, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩, ⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run347_checked : Entry.check ⟨158, 294, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run348_checked : Entry.check ⟨158, 295, ⟨1, 399999999⟩, ⟨0, 10, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run349_checked : Entry.check ⟨159, 296, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨9, 39⟩, ⟨1, 3⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run350_checked : Entry.check ⟨159, 297, ⟨1, 399999999⟩, ⟨0, 2, 2, ⟨1, 3⟩, ⟨21, 79⟩⟩, [⟨1, 3⟩, ⟨21, 79⟩]⟩ = true := by decide +kernel
theorem run351_checked : Entry.check ⟨160, 298, ⟨1, 399999999⟩, ⟨0, 0, 5, ⟨1, 39⟩, ⟨3, 39⟩⟩, [⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run352_checked : Entry.check ⟨160, 299, ⟨1, 399999999⟩, ⟨0, 4, 4, ⟨3, 39⟩, ⟨9, 79⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run353_checked : Entry.check ⟨161, 300, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨11, 79⟩, ⟨3, 19⟩⟩, [⟨11, 79⟩, ⟨3, 19⟩]⟩ = true := by decide +kernel
theorem run354_checked : Entry.check ⟨162, 301, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨3, 15⟩, ⟨9, 39⟩⟩, [⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩, ⟨9, 39⟩]⟩ = true := by decide +kernel
theorem run355_checked : Entry.check ⟨162, 302, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨9, 39⟩, ⟨19, 79⟩⟩, [⟨9, 39⟩, ⟨19, 79⟩]⟩ = true := by decide +kernel
theorem run356_checked : Entry.check ⟨162, 303, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨19, 79⟩, ⟨1, 3⟩⟩, [⟨19, 79⟩, ⟨1, 3⟩]⟩ = true := by decide +kernel
theorem run357_checked : Entry.check ⟨163, 304, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 79⟩, ⟨3, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩, ⟨1, 19⟩, ⟨1, 15⟩, ⟨3, 39⟩]⟩ = true := by decide +kernel
theorem run358_checked : Entry.check ⟨163, 305, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨3, 39⟩, ⟨1, 7⟩⟩, [⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run359_checked : Entry.check ⟨163, 306, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨1, 7⟩, ⟨11, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩]⟩ = true := by decide +kernel
theorem run360_checked : Entry.check ⟨164, 307, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨3, 19⟩, ⟨7, 39⟩⟩, [⟨3, 19⟩, ⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run361_checked : Entry.check ⟨164, 308, ⟨1, 399999999⟩, ⟨0, 2, 4, ⟨7, 39⟩, ⟨17, 79⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩, ⟨17, 79⟩]⟩ = true := by decide +kernel
theorem run362_checked : Entry.check ⟨165, 309, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run363_checked : Entry.check ⟨166, 310, ⟨1, 399999999⟩, ⟨0, 0, 6, ⟨1, 15⟩, ⟨1, 7⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩, ⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run364_checked : Entry.check ⟨166, 311, ⟨1, 399999999⟩, ⟨0, 5, 4, ⟨1, 7⟩, ⟨13, 79⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩, ⟨3, 19⟩, ⟨13, 79⟩]⟩ = true := by decide +kernel
theorem run365_checked : Entry.check ⟨166, 312, ⟨1, 399999999⟩, ⟨0, 8, 2, ⟨13, 79⟩, ⟨7, 39⟩⟩, [⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run366_checked : Entry.check ⟨166, 313, ⟨1, 399999999⟩, ⟨0, 9, 3, ⟨7, 39⟩, ⟨1, 4⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩, ⟨1, 4⟩]⟩ = true := by decide +kernel
theorem run367_checked : Entry.check ⟨167, 314, ⟨1, 399999999⟩, ⟨0, 0, 3, ⟨1, 79⟩, ⟨3, 79⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩, ⟨3, 79⟩]⟩ = true := by decide +kernel
theorem run368_checked : Entry.check ⟨168, 315, ⟨1, 399999999⟩, ⟨0, 0, 4, ⟨1, 15⟩, ⟨1, 9⟩⟩, [⟨1, 15⟩, ⟨3, 39⟩, ⟨7, 79⟩, ⟨1, 9⟩]⟩ = true := by decide +kernel
theorem run369_checked : Entry.check ⟨168, 316, ⟨1, 399999999⟩, ⟨0, 3, 2, ⟨1, 9⟩, ⟨9, 79⟩⟩, [⟨1, 9⟩, ⟨9, 79⟩]⟩ = true := by decide +kernel
theorem run370_checked : Entry.check ⟨168, 315, ⟨1, 399999999⟩, ⟨0, 4, 2, ⟨9, 79⟩, ⟨1, 7⟩⟩, [⟨9, 79⟩, ⟨1, 7⟩]⟩ = true := by decide +kernel
theorem run371_checked : Entry.check ⟨168, 317, ⟨1, 399999999⟩, ⟨0, 5, 5, ⟨1, 7⟩, ⟨7, 39⟩⟩, [⟨1, 7⟩, ⟨11, 79⟩, ⟨3, 19⟩, ⟨13, 79⟩, ⟨7, 39⟩]⟩ = true := by decide +kernel
theorem run372_checked : Entry.check ⟨168, 318, ⟨1, 399999999⟩, ⟨0, 9, 2, ⟨7, 39⟩, ⟨3, 15⟩⟩, [⟨7, 39⟩, ⟨3, 15⟩]⟩ = true := by decide +kernel
theorem run373_checked : Entry.check ⟨169, 319, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨1, 79⟩, ⟨1, 39⟩⟩, [⟨1, 79⟩, ⟨1, 39⟩]⟩ = true := by decide +kernel
theorem run374_checked : Entry.check ⟨170, 319, ⟨1, 399999999⟩, ⟨0, 0, 2, ⟨3, 79⟩, ⟨1, 19⟩⟩, [⟨3, 79⟩, ⟨1, 19⟩]⟩ = true := by decide +kernel
theorem entries12_checked : entries12.all Entry.check = true := by
  simp only [entries12, List.all_cons, List.all_nil, run343_checked, run344_checked, run345_checked, run346_checked, run347_checked, run348_checked, run349_checked, run350_checked, run351_checked, run352_checked, run353_checked, run354_checked, run355_checked, run356_checked, run357_checked, run358_checked, run359_checked, run360_checked, run361_checked, run362_checked, run363_checked, run364_checked, run365_checked, run366_checked, run367_checked, run368_checked, run369_checked, run370_checked, run371_checked, run372_checked, run373_checked, run374_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
