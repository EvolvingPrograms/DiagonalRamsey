import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal321_checked : terminal321.check = true := by decide +kernel
theorem terminal322_checked : terminal322.check = true := by decide +kernel
theorem terminal323_checked : terminal323.check = true := by decide +kernel
theorem terminal324_checked : terminal324.check = true := by decide +kernel
theorem terminal325_checked : terminal325.check = true := by decide +kernel
theorem terminal326_checked : terminal326.check = true := by decide +kernel
theorem terminal327_checked : terminal327.check = true := by decide +kernel
theorem terminal328_checked : terminal328.check = true := by decide +kernel
theorem terminal329_checked : terminal329.check = true := by decide +kernel
theorem terminal330_checked : terminal330.check = true := by decide +kernel
theorem terminal331_checked : terminal331.check = true := by decide +kernel
theorem terminal332_checked : terminal332.check = true := by decide +kernel
theorem terminal333_checked : terminal333.check = true := by decide +kernel
theorem terminal334_checked : terminal334.check = true := by decide +kernel
theorem terminal335_checked : terminal335.check = true := by decide +kernel
theorem terminal336_checked : terminal336.check = true := by decide +kernel
theorem terminal337_checked : terminal337.check = true := by decide +kernel
theorem terminal338_checked : terminal338.check = true := by decide +kernel
theorem terminal339_checked : terminal339.check = true := by decide +kernel
theorem terminal340_checked : terminal340.check = true := by decide +kernel
theorem terminal341_checked : terminal341.check = true := by decide +kernel
theorem terminal342_checked : terminal342.check = true := by decide +kernel
theorem terminal343_checked : terminal343.check = true := by decide +kernel
theorem terminal344_checked : terminal344.check = true := by decide +kernel
theorem terminal345_checked : terminal345.check = true := by decide +kernel
theorem terminal346_checked : terminal346.check = true := by decide +kernel
theorem terminal347_checked : terminal347.check = true := by decide +kernel
theorem terminal348_checked : terminal348.check = true := by decide +kernel
theorem terminal349_checked : terminal349.check = true := by decide +kernel
theorem terminal350_checked : terminal350.check = true := by decide +kernel
theorem terminal351_checked : terminal351.check = true := by decide +kernel
theorem terminal352_checked : terminal352.check = true := by decide +kernel
theorem terminals10_checked : terminals10.all Terminal.check = true := by
  simp only [terminals10, List.all_cons, List.all_nil, terminal321_checked, terminal322_checked, terminal323_checked, terminal324_checked, terminal325_checked, terminal326_checked, terminal327_checked, terminal328_checked, terminal329_checked, terminal330_checked, terminal331_checked, terminal332_checked, terminal333_checked, terminal334_checked, terminal335_checked, terminal336_checked, terminal337_checked, terminal338_checked, terminal339_checked, terminal340_checked, terminal341_checked, terminal342_checked, terminal343_checked, terminal344_checked, terminal345_checked, terminal346_checked, terminal347_checked, terminal348_checked, terminal349_checked, terminal350_checked, terminal351_checked, terminal352_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
