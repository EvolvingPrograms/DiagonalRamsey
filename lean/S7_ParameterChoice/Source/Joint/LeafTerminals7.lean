import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal225_checked : terminal225.check = true := by decide +kernel
theorem terminal226_checked : terminal226.check = true := by decide +kernel
theorem terminal227_checked : terminal227.check = true := by decide +kernel
theorem terminal228_checked : terminal228.check = true := by decide +kernel
theorem terminal229_checked : terminal229.check = true := by decide +kernel
theorem terminal230_checked : terminal230.check = true := by decide +kernel
theorem terminal231_checked : terminal231.check = true := by decide +kernel
theorem terminal232_checked : terminal232.check = true := by decide +kernel
theorem terminal233_checked : terminal233.check = true := by decide +kernel
theorem terminal234_checked : terminal234.check = true := by decide +kernel
theorem terminal235_checked : terminal235.check = true := by decide +kernel
theorem terminal236_checked : terminal236.check = true := by decide +kernel
theorem terminal237_checked : terminal237.check = true := by decide +kernel
theorem terminal238_checked : terminal238.check = true := by decide +kernel
theorem terminal239_checked : terminal239.check = true := by decide +kernel
theorem terminal240_checked : terminal240.check = true := by decide +kernel
theorem terminal241_checked : terminal241.check = true := by decide +kernel
theorem terminal242_checked : terminal242.check = true := by decide +kernel
theorem terminal243_checked : terminal243.check = true := by decide +kernel
theorem terminal244_checked : terminal244.check = true := by decide +kernel
theorem terminal245_checked : terminal245.check = true := by decide +kernel
theorem terminal246_checked : terminal246.check = true := by decide +kernel
theorem terminal247_checked : terminal247.check = true := by decide +kernel
theorem terminal248_checked : terminal248.check = true := by decide +kernel
theorem terminal249_checked : terminal249.check = true := by decide +kernel
theorem terminal250_checked : terminal250.check = true := by decide +kernel
theorem terminal251_checked : terminal251.check = true := by decide +kernel
theorem terminal252_checked : terminal252.check = true := by decide +kernel
theorem terminal253_checked : terminal253.check = true := by decide +kernel
theorem terminal254_checked : terminal254.check = true := by decide +kernel
theorem terminal255_checked : terminal255.check = true := by decide +kernel
theorem terminal256_checked : terminal256.check = true := by decide +kernel
theorem terminals7_checked : terminals7.all Terminal.check = true := by
  simp only [terminals7, List.all_cons, List.all_nil, terminal225_checked, terminal226_checked, terminal227_checked, terminal228_checked, terminal229_checked, terminal230_checked, terminal231_checked, terminal232_checked, terminal233_checked, terminal234_checked, terminal235_checked, terminal236_checked, terminal237_checked, terminal238_checked, terminal239_checked, terminal240_checked, terminal241_checked, terminal242_checked, terminal243_checked, terminal244_checked, terminal245_checked, terminal246_checked, terminal247_checked, terminal248_checked, terminal249_checked, terminal250_checked, terminal251_checked, terminal252_checked, terminal253_checked, terminal254_checked, terminal255_checked, terminal256_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
