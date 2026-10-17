import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal513_checked : terminal513.check = true := by decide +kernel
theorem terminal514_checked : terminal514.check = true := by decide +kernel
theorem terminal515_checked : terminal515.check = true := by decide +kernel
theorem terminal516_checked : terminal516.check = true := by decide +kernel
theorem terminal517_checked : terminal517.check = true := by decide +kernel
theorem terminal518_checked : terminal518.check = true := by decide +kernel
theorem terminal519_checked : terminal519.check = true := by decide +kernel
theorem terminal520_checked : terminal520.check = true := by decide +kernel
theorem terminal521_checked : terminal521.check = true := by decide +kernel
theorem terminal522_checked : terminal522.check = true := by decide +kernel
theorem terminal523_checked : terminal523.check = true := by decide +kernel
theorem terminal524_checked : terminal524.check = true := by decide +kernel
theorem terminal525_checked : terminal525.check = true := by decide +kernel
theorem terminal526_checked : terminal526.check = true := by decide +kernel
theorem terminal527_checked : terminal527.check = true := by decide +kernel
theorem terminal528_checked : terminal528.check = true := by decide +kernel
theorem terminal529_checked : terminal529.check = true := by decide +kernel
theorem terminal530_checked : terminal530.check = true := by decide +kernel
theorem terminal531_checked : terminal531.check = true := by decide +kernel
theorem terminal532_checked : terminal532.check = true := by decide +kernel
theorem terminal533_checked : terminal533.check = true := by decide +kernel
theorem terminal534_checked : terminal534.check = true := by decide +kernel
theorem terminal535_checked : terminal535.check = true := by decide +kernel
theorem terminal536_checked : terminal536.check = true := by decide +kernel
theorem terminal537_checked : terminal537.check = true := by decide +kernel
theorem terminal538_checked : terminal538.check = true := by decide +kernel
theorem terminal539_checked : terminal539.check = true := by decide +kernel
theorem terminal540_checked : terminal540.check = true := by decide +kernel
theorem terminal541_checked : terminal541.check = true := by decide +kernel
theorem terminal542_checked : terminal542.check = true := by decide +kernel
theorem terminal543_checked : terminal543.check = true := by decide +kernel
theorem terminal544_checked : terminal544.check = true := by decide +kernel
theorem terminals16_checked : terminals16.all Terminal.check = true := by
  simp only [terminals16, List.all_cons, List.all_nil, terminal513_checked, terminal514_checked, terminal515_checked, terminal516_checked, terminal517_checked, terminal518_checked, terminal519_checked, terminal520_checked, terminal521_checked, terminal522_checked, terminal523_checked, terminal524_checked, terminal525_checked, terminal526_checked, terminal527_checked, terminal528_checked, terminal529_checked, terminal530_checked, terminal531_checked, terminal532_checked, terminal533_checked, terminal534_checked, terminal535_checked, terminal536_checked, terminal537_checked, terminal538_checked, terminal539_checked, terminal540_checked, terminal541_checked, terminal542_checked, terminal543_checked, terminal544_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
