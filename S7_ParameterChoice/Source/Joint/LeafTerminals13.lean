import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal417_checked : terminal417.check = true := by decide +kernel
theorem terminal418_checked : terminal418.check = true := by decide +kernel
theorem terminal419_checked : terminal419.check = true := by decide +kernel
theorem terminal420_checked : terminal420.check = true := by decide +kernel
theorem terminal421_checked : terminal421.check = true := by decide +kernel
theorem terminal422_checked : terminal422.check = true := by decide +kernel
theorem terminal423_checked : terminal423.check = true := by decide +kernel
theorem terminal424_checked : terminal424.check = true := by decide +kernel
theorem terminal425_checked : terminal425.check = true := by decide +kernel
theorem terminal426_checked : terminal426.check = true := by decide +kernel
theorem terminal427_checked : terminal427.check = true := by decide +kernel
theorem terminal428_checked : terminal428.check = true := by decide +kernel
theorem terminal429_checked : terminal429.check = true := by decide +kernel
theorem terminal430_checked : terminal430.check = true := by decide +kernel
theorem terminal431_checked : terminal431.check = true := by decide +kernel
theorem terminal432_checked : terminal432.check = true := by decide +kernel
theorem terminal433_checked : terminal433.check = true := by decide +kernel
theorem terminal434_checked : terminal434.check = true := by decide +kernel
theorem terminal435_checked : terminal435.check = true := by decide +kernel
theorem terminal436_checked : terminal436.check = true := by decide +kernel
theorem terminal437_checked : terminal437.check = true := by decide +kernel
theorem terminal438_checked : terminal438.check = true := by decide +kernel
theorem terminal439_checked : terminal439.check = true := by decide +kernel
theorem terminal440_checked : terminal440.check = true := by decide +kernel
theorem terminal441_checked : terminal441.check = true := by decide +kernel
theorem terminal442_checked : terminal442.check = true := by decide +kernel
theorem terminal443_checked : terminal443.check = true := by decide +kernel
theorem terminal444_checked : terminal444.check = true := by decide +kernel
theorem terminal445_checked : terminal445.check = true := by decide +kernel
theorem terminal446_checked : terminal446.check = true := by decide +kernel
theorem terminal447_checked : terminal447.check = true := by decide +kernel
theorem terminal448_checked : terminal448.check = true := by decide +kernel
theorem terminals13_checked : terminals13.all Terminal.check = true := by
  simp only [terminals13, List.all_cons, List.all_nil, terminal417_checked, terminal418_checked, terminal419_checked, terminal420_checked, terminal421_checked, terminal422_checked, terminal423_checked, terminal424_checked, terminal425_checked, terminal426_checked, terminal427_checked, terminal428_checked, terminal429_checked, terminal430_checked, terminal431_checked, terminal432_checked, terminal433_checked, terminal434_checked, terminal435_checked, terminal436_checked, terminal437_checked, terminal438_checked, terminal439_checked, terminal440_checked, terminal441_checked, terminal442_checked, terminal443_checked, terminal444_checked, terminal445_checked, terminal446_checked, terminal447_checked, terminal448_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
