import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal1_checked : terminal1.check = true := by decide +kernel
theorem terminal2_checked : terminal2.check = true := by decide +kernel
theorem terminal3_checked : terminal3.check = true := by decide +kernel
theorem terminal4_checked : terminal4.check = true := by decide +kernel
theorem terminal5_checked : terminal5.check = true := by decide +kernel
theorem terminal6_checked : terminal6.check = true := by decide +kernel
theorem terminal7_checked : terminal7.check = true := by decide +kernel
theorem terminal8_checked : terminal8.check = true := by decide +kernel
theorem terminal9_checked : terminal9.check = true := by decide +kernel
theorem terminal10_checked : terminal10.check = true := by decide +kernel
theorem terminal11_checked : terminal11.check = true := by decide +kernel
theorem terminal12_checked : terminal12.check = true := by decide +kernel
theorem terminal13_checked : terminal13.check = true := by decide +kernel
theorem terminal14_checked : terminal14.check = true := by decide +kernel
theorem terminal15_checked : terminal15.check = true := by decide +kernel
theorem terminal16_checked : terminal16.check = true := by decide +kernel
theorem terminal17_checked : terminal17.check = true := by decide +kernel
theorem terminal18_checked : terminal18.check = true := by decide +kernel
theorem terminal19_checked : terminal19.check = true := by decide +kernel
theorem terminal20_checked : terminal20.check = true := by decide +kernel
theorem terminal21_checked : terminal21.check = true := by decide +kernel
theorem terminal22_checked : terminal22.check = true := by decide +kernel
theorem terminal23_checked : terminal23.check = true := by decide +kernel
theorem terminal24_checked : terminal24.check = true := by decide +kernel
theorem terminal25_checked : terminal25.check = true := by decide +kernel
theorem terminal26_checked : terminal26.check = true := by decide +kernel
theorem terminal27_checked : terminal27.check = true := by decide +kernel
theorem terminal28_checked : terminal28.check = true := by decide +kernel
theorem terminal29_checked : terminal29.check = true := by decide +kernel
theorem terminal30_checked : terminal30.check = true := by decide +kernel
theorem terminal31_checked : terminal31.check = true := by decide +kernel
theorem terminal32_checked : terminal32.check = true := by decide +kernel
theorem terminals0_checked : terminals0.all Terminal.check = true := by
  simp only [terminals0, List.all_cons, List.all_nil, terminal1_checked, terminal2_checked, terminal3_checked, terminal4_checked, terminal5_checked, terminal6_checked, terminal7_checked, terminal8_checked, terminal9_checked, terminal10_checked, terminal11_checked, terminal12_checked, terminal13_checked, terminal14_checked, terminal15_checked, terminal16_checked, terminal17_checked, terminal18_checked, terminal19_checked, terminal20_checked, terminal21_checked, terminal22_checked, terminal23_checked, terminal24_checked, terminal25_checked, terminal26_checked, terminal27_checked, terminal28_checked, terminal29_checked, terminal30_checked, terminal31_checked, terminal32_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
