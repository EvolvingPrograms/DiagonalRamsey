import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal481_checked : terminal481.check = true := by decide +kernel
theorem terminal482_checked : terminal482.check = true := by decide +kernel
theorem terminal483_checked : terminal483.check = true := by decide +kernel
theorem terminal484_checked : terminal484.check = true := by decide +kernel
theorem terminal485_checked : terminal485.check = true := by decide +kernel
theorem terminal486_checked : terminal486.check = true := by decide +kernel
theorem terminal487_checked : terminal487.check = true := by decide +kernel
theorem terminal488_checked : terminal488.check = true := by decide +kernel
theorem terminal489_checked : terminal489.check = true := by decide +kernel
theorem terminal490_checked : terminal490.check = true := by decide +kernel
theorem terminal491_checked : terminal491.check = true := by decide +kernel
theorem terminal492_checked : terminal492.check = true := by decide +kernel
theorem terminal493_checked : terminal493.check = true := by decide +kernel
theorem terminal494_checked : terminal494.check = true := by decide +kernel
theorem terminal495_checked : terminal495.check = true := by decide +kernel
theorem terminal496_checked : terminal496.check = true := by decide +kernel
theorem terminal497_checked : terminal497.check = true := by decide +kernel
theorem terminal498_checked : terminal498.check = true := by decide +kernel
theorem terminal499_checked : terminal499.check = true := by decide +kernel
theorem terminal500_checked : terminal500.check = true := by decide +kernel
theorem terminal501_checked : terminal501.check = true := by decide +kernel
theorem terminal502_checked : terminal502.check = true := by decide +kernel
theorem terminal503_checked : terminal503.check = true := by decide +kernel
theorem terminal504_checked : terminal504.check = true := by decide +kernel
theorem terminal505_checked : terminal505.check = true := by decide +kernel
theorem terminal506_checked : terminal506.check = true := by decide +kernel
theorem terminal507_checked : terminal507.check = true := by decide +kernel
theorem terminal508_checked : terminal508.check = true := by decide +kernel
theorem terminal509_checked : terminal509.check = true := by decide +kernel
theorem terminal510_checked : terminal510.check = true := by decide +kernel
theorem terminal511_checked : terminal511.check = true := by decide +kernel
theorem terminal512_checked : terminal512.check = true := by decide +kernel
theorem terminals15_checked : terminals15.all Terminal.check = true := by
  simp only [terminals15, List.all_cons, List.all_nil, terminal481_checked, terminal482_checked, terminal483_checked, terminal484_checked, terminal485_checked, terminal486_checked, terminal487_checked, terminal488_checked, terminal489_checked, terminal490_checked, terminal491_checked, terminal492_checked, terminal493_checked, terminal494_checked, terminal495_checked, terminal496_checked, terminal497_checked, terminal498_checked, terminal499_checked, terminal500_checked, terminal501_checked, terminal502_checked, terminal503_checked, terminal504_checked, terminal505_checked, terminal506_checked, terminal507_checked, terminal508_checked, terminal509_checked, terminal510_checked, terminal511_checked, terminal512_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
