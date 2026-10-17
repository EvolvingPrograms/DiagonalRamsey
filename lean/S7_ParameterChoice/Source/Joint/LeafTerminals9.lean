import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal289_checked : terminal289.check = true := by decide +kernel
theorem terminal290_checked : terminal290.check = true := by decide +kernel
theorem terminal291_checked : terminal291.check = true := by decide +kernel
theorem terminal292_checked : terminal292.check = true := by decide +kernel
theorem terminal293_checked : terminal293.check = true := by decide +kernel
theorem terminal294_checked : terminal294.check = true := by decide +kernel
theorem terminal295_checked : terminal295.check = true := by decide +kernel
theorem terminal296_checked : terminal296.check = true := by decide +kernel
theorem terminal297_checked : terminal297.check = true := by decide +kernel
theorem terminal298_checked : terminal298.check = true := by decide +kernel
theorem terminal299_checked : terminal299.check = true := by decide +kernel
theorem terminal300_checked : terminal300.check = true := by decide +kernel
theorem terminal301_checked : terminal301.check = true := by decide +kernel
theorem terminal302_checked : terminal302.check = true := by decide +kernel
theorem terminal303_checked : terminal303.check = true := by decide +kernel
theorem terminal304_checked : terminal304.check = true := by decide +kernel
theorem terminal305_checked : terminal305.check = true := by decide +kernel
theorem terminal306_checked : terminal306.check = true := by decide +kernel
theorem terminal307_checked : terminal307.check = true := by decide +kernel
theorem terminal308_checked : terminal308.check = true := by decide +kernel
theorem terminal309_checked : terminal309.check = true := by decide +kernel
theorem terminal310_checked : terminal310.check = true := by decide +kernel
theorem terminal311_checked : terminal311.check = true := by decide +kernel
theorem terminal312_checked : terminal312.check = true := by decide +kernel
theorem terminal313_checked : terminal313.check = true := by decide +kernel
theorem terminal314_checked : terminal314.check = true := by decide +kernel
theorem terminal315_checked : terminal315.check = true := by decide +kernel
theorem terminal316_checked : terminal316.check = true := by decide +kernel
theorem terminal317_checked : terminal317.check = true := by decide +kernel
theorem terminal318_checked : terminal318.check = true := by decide +kernel
theorem terminal319_checked : terminal319.check = true := by decide +kernel
theorem terminal320_checked : terminal320.check = true := by decide +kernel
theorem terminals9_checked : terminals9.all Terminal.check = true := by
  simp only [terminals9, List.all_cons, List.all_nil, terminal289_checked, terminal290_checked, terminal291_checked, terminal292_checked, terminal293_checked, terminal294_checked, terminal295_checked, terminal296_checked, terminal297_checked, terminal298_checked, terminal299_checked, terminal300_checked, terminal301_checked, terminal302_checked, terminal303_checked, terminal304_checked, terminal305_checked, terminal306_checked, terminal307_checked, terminal308_checked, terminal309_checked, terminal310_checked, terminal311_checked, terminal312_checked, terminal313_checked, terminal314_checked, terminal315_checked, terminal316_checked, terminal317_checked, terminal318_checked, terminal319_checked, terminal320_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
