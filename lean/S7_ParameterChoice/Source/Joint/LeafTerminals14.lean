import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal449_checked : terminal449.check = true := by decide +kernel
theorem terminal450_checked : terminal450.check = true := by decide +kernel
theorem terminal451_checked : terminal451.check = true := by decide +kernel
theorem terminal452_checked : terminal452.check = true := by decide +kernel
theorem terminal453_checked : terminal453.check = true := by decide +kernel
theorem terminal454_checked : terminal454.check = true := by decide +kernel
theorem terminal455_checked : terminal455.check = true := by decide +kernel
theorem terminal456_checked : terminal456.check = true := by decide +kernel
theorem terminal457_checked : terminal457.check = true := by decide +kernel
theorem terminal458_checked : terminal458.check = true := by decide +kernel
theorem terminal459_checked : terminal459.check = true := by decide +kernel
theorem terminal460_checked : terminal460.check = true := by decide +kernel
theorem terminal461_checked : terminal461.check = true := by decide +kernel
theorem terminal462_checked : terminal462.check = true := by decide +kernel
theorem terminal463_checked : terminal463.check = true := by decide +kernel
theorem terminal464_checked : terminal464.check = true := by decide +kernel
theorem terminal465_checked : terminal465.check = true := by decide +kernel
theorem terminal466_checked : terminal466.check = true := by decide +kernel
theorem terminal467_checked : terminal467.check = true := by decide +kernel
theorem terminal468_checked : terminal468.check = true := by decide +kernel
theorem terminal469_checked : terminal469.check = true := by decide +kernel
theorem terminal470_checked : terminal470.check = true := by decide +kernel
theorem terminal471_checked : terminal471.check = true := by decide +kernel
theorem terminal472_checked : terminal472.check = true := by decide +kernel
theorem terminal473_checked : terminal473.check = true := by decide +kernel
theorem terminal474_checked : terminal474.check = true := by decide +kernel
theorem terminal475_checked : terminal475.check = true := by decide +kernel
theorem terminal476_checked : terminal476.check = true := by decide +kernel
theorem terminal477_checked : terminal477.check = true := by decide +kernel
theorem terminal478_checked : terminal478.check = true := by decide +kernel
theorem terminal479_checked : terminal479.check = true := by decide +kernel
theorem terminal480_checked : terminal480.check = true := by decide +kernel
theorem terminals14_checked : terminals14.all Terminal.check = true := by
  simp only [terminals14, List.all_cons, List.all_nil, terminal449_checked, terminal450_checked, terminal451_checked, terminal452_checked, terminal453_checked, terminal454_checked, terminal455_checked, terminal456_checked, terminal457_checked, terminal458_checked, terminal459_checked, terminal460_checked, terminal461_checked, terminal462_checked, terminal463_checked, terminal464_checked, terminal465_checked, terminal466_checked, terminal467_checked, terminal468_checked, terminal469_checked, terminal470_checked, terminal471_checked, terminal472_checked, terminal473_checked, terminal474_checked, terminal475_checked, terminal476_checked, terminal477_checked, terminal478_checked, terminal479_checked, terminal480_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
