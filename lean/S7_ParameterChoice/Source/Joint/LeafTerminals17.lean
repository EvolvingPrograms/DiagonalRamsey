import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal545_checked : terminal545.check = true := by decide +kernel
theorem terminal546_checked : terminal546.check = true := by decide +kernel
theorem terminal547_checked : terminal547.check = true := by decide +kernel
theorem terminal548_checked : terminal548.check = true := by decide +kernel
theorem terminal549_checked : terminal549.check = true := by decide +kernel
theorem terminal550_checked : terminal550.check = true := by decide +kernel
theorem terminal551_checked : terminal551.check = true := by decide +kernel
theorem terminal552_checked : terminal552.check = true := by decide +kernel
theorem terminal553_checked : terminal553.check = true := by decide +kernel
theorem terminal554_checked : terminal554.check = true := by decide +kernel
theorem terminal555_checked : terminal555.check = true := by decide +kernel
theorem terminal556_checked : terminal556.check = true := by decide +kernel
theorem terminal557_checked : terminal557.check = true := by decide +kernel
theorem terminal558_checked : terminal558.check = true := by decide +kernel
theorem terminal559_checked : terminal559.check = true := by decide +kernel
theorem terminal560_checked : terminal560.check = true := by decide +kernel
theorem terminal561_checked : terminal561.check = true := by decide +kernel
theorem terminal562_checked : terminal562.check = true := by decide +kernel
theorem terminal563_checked : terminal563.check = true := by decide +kernel
theorem terminal564_checked : terminal564.check = true := by decide +kernel
theorem terminal565_checked : terminal565.check = true := by decide +kernel
theorem terminal566_checked : terminal566.check = true := by decide +kernel
theorem terminal567_checked : terminal567.check = true := by decide +kernel
theorem terminal568_checked : terminal568.check = true := by decide +kernel
theorem terminal569_checked : terminal569.check = true := by decide +kernel
theorem terminal570_checked : terminal570.check = true := by decide +kernel
theorem terminal571_checked : terminal571.check = true := by decide +kernel
theorem terminal572_checked : terminal572.check = true := by decide +kernel
theorem terminal573_checked : terminal573.check = true := by decide +kernel
theorem terminal574_checked : terminal574.check = true := by decide +kernel
theorem terminal575_checked : terminal575.check = true := by decide +kernel
theorem terminal576_checked : terminal576.check = true := by decide +kernel
theorem terminals17_checked : terminals17.all Terminal.check = true := by
  simp only [terminals17, List.all_cons, List.all_nil, terminal545_checked, terminal546_checked, terminal547_checked, terminal548_checked, terminal549_checked, terminal550_checked, terminal551_checked, terminal552_checked, terminal553_checked, terminal554_checked, terminal555_checked, terminal556_checked, terminal557_checked, terminal558_checked, terminal559_checked, terminal560_checked, terminal561_checked, terminal562_checked, terminal563_checked, terminal564_checked, terminal565_checked, terminal566_checked, terminal567_checked, terminal568_checked, terminal569_checked, terminal570_checked, terminal571_checked, terminal572_checked, terminal573_checked, terminal574_checked, terminal575_checked, terminal576_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
