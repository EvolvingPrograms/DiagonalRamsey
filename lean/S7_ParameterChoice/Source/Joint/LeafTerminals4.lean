import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal129_checked : terminal129.check = true := by decide +kernel
theorem terminal130_checked : terminal130.check = true := by decide +kernel
theorem terminal131_checked : terminal131.check = true := by decide +kernel
theorem terminal132_checked : terminal132.check = true := by decide +kernel
theorem terminal133_checked : terminal133.check = true := by decide +kernel
theorem terminal134_checked : terminal134.check = true := by decide +kernel
theorem terminal135_checked : terminal135.check = true := by decide +kernel
theorem terminal136_checked : terminal136.check = true := by decide +kernel
theorem terminal137_checked : terminal137.check = true := by decide +kernel
theorem terminal138_checked : terminal138.check = true := by decide +kernel
theorem terminal139_checked : terminal139.check = true := by decide +kernel
theorem terminal140_checked : terminal140.check = true := by decide +kernel
theorem terminal141_checked : terminal141.check = true := by decide +kernel
theorem terminal142_checked : terminal142.check = true := by decide +kernel
theorem terminal143_checked : terminal143.check = true := by decide +kernel
theorem terminal144_checked : terminal144.check = true := by decide +kernel
theorem terminal145_checked : terminal145.check = true := by decide +kernel
theorem terminal146_checked : terminal146.check = true := by decide +kernel
theorem terminal147_checked : terminal147.check = true := by decide +kernel
theorem terminal148_checked : terminal148.check = true := by decide +kernel
theorem terminal149_checked : terminal149.check = true := by decide +kernel
theorem terminal150_checked : terminal150.check = true := by decide +kernel
theorem terminal151_checked : terminal151.check = true := by decide +kernel
theorem terminal152_checked : terminal152.check = true := by decide +kernel
theorem terminal153_checked : terminal153.check = true := by decide +kernel
theorem terminal154_checked : terminal154.check = true := by decide +kernel
theorem terminal155_checked : terminal155.check = true := by decide +kernel
theorem terminal156_checked : terminal156.check = true := by decide +kernel
theorem terminal157_checked : terminal157.check = true := by decide +kernel
theorem terminal158_checked : terminal158.check = true := by decide +kernel
theorem terminal159_checked : terminal159.check = true := by decide +kernel
theorem terminal160_checked : terminal160.check = true := by decide +kernel
theorem terminals4_checked : terminals4.all Terminal.check = true := by
  simp only [terminals4, List.all_cons, List.all_nil, terminal129_checked, terminal130_checked, terminal131_checked, terminal132_checked, terminal133_checked, terminal134_checked, terminal135_checked, terminal136_checked, terminal137_checked, terminal138_checked, terminal139_checked, terminal140_checked, terminal141_checked, terminal142_checked, terminal143_checked, terminal144_checked, terminal145_checked, terminal146_checked, terminal147_checked, terminal148_checked, terminal149_checked, terminal150_checked, terminal151_checked, terminal152_checked, terminal153_checked, terminal154_checked, terminal155_checked, terminal156_checked, terminal157_checked, terminal158_checked, terminal159_checked, terminal160_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
