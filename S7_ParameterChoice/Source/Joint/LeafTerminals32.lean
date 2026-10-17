import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal1025_checked : terminal1025.check = true := by decide +kernel
theorem terminal1026_checked : terminal1026.check = true := by decide +kernel
theorem terminal1027_checked : terminal1027.check = true := by decide +kernel
theorem terminal1028_checked : terminal1028.check = true := by decide +kernel
theorem terminal1029_checked : terminal1029.check = true := by decide +kernel
theorem terminal1030_checked : terminal1030.check = true := by decide +kernel
theorem terminal1031_checked : terminal1031.check = true := by decide +kernel
theorem terminal1032_checked : terminal1032.check = true := by decide +kernel
theorem terminal1033_checked : terminal1033.check = true := by decide +kernel
theorem terminal1034_checked : terminal1034.check = true := by decide +kernel
theorem terminal1035_checked : terminal1035.check = true := by decide +kernel
theorem terminal1036_checked : terminal1036.check = true := by decide +kernel
theorem terminal1037_checked : terminal1037.check = true := by decide +kernel
theorem terminal1038_checked : terminal1038.check = true := by decide +kernel
theorem terminal1039_checked : terminal1039.check = true := by decide +kernel
theorem terminal1040_checked : terminal1040.check = true := by decide +kernel
theorem terminal1041_checked : terminal1041.check = true := by decide +kernel
theorem terminal1042_checked : terminal1042.check = true := by decide +kernel
theorem terminal1043_checked : terminal1043.check = true := by decide +kernel
theorem terminal1044_checked : terminal1044.check = true := by decide +kernel
theorem terminal1045_checked : terminal1045.check = true := by decide +kernel
theorem terminal1046_checked : terminal1046.check = true := by decide +kernel
theorem terminal1047_checked : terminal1047.check = true := by decide +kernel
theorem terminal1048_checked : terminal1048.check = true := by decide +kernel
theorem terminal1049_checked : terminal1049.check = true := by decide +kernel
theorem terminal1050_checked : terminal1050.check = true := by decide +kernel
theorem terminal1051_checked : terminal1051.check = true := by decide +kernel
theorem terminal1052_checked : terminal1052.check = true := by decide +kernel
theorem terminal1053_checked : terminal1053.check = true := by decide +kernel
theorem terminal1054_checked : terminal1054.check = true := by decide +kernel
theorem terminal1055_checked : terminal1055.check = true := by decide +kernel
theorem terminal1056_checked : terminal1056.check = true := by decide +kernel
theorem terminals32_checked : terminals32.all Terminal.check = true := by
  simp only [terminals32, List.all_cons, List.all_nil, terminal1025_checked, terminal1026_checked, terminal1027_checked, terminal1028_checked, terminal1029_checked, terminal1030_checked, terminal1031_checked, terminal1032_checked, terminal1033_checked, terminal1034_checked, terminal1035_checked, terminal1036_checked, terminal1037_checked, terminal1038_checked, terminal1039_checked, terminal1040_checked, terminal1041_checked, terminal1042_checked, terminal1043_checked, terminal1044_checked, terminal1045_checked, terminal1046_checked, terminal1047_checked, terminal1048_checked, terminal1049_checked, terminal1050_checked, terminal1051_checked, terminal1052_checked, terminal1053_checked, terminal1054_checked, terminal1055_checked, terminal1056_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
