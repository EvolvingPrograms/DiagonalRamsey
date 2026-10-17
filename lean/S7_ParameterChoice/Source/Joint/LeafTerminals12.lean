import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal385_checked : terminal385.check = true := by decide +kernel
theorem terminal386_checked : terminal386.check = true := by decide +kernel
theorem terminal387_checked : terminal387.check = true := by decide +kernel
theorem terminal388_checked : terminal388.check = true := by decide +kernel
theorem terminal389_checked : terminal389.check = true := by decide +kernel
theorem terminal390_checked : terminal390.check = true := by decide +kernel
theorem terminal391_checked : terminal391.check = true := by decide +kernel
theorem terminal392_checked : terminal392.check = true := by decide +kernel
theorem terminal393_checked : terminal393.check = true := by decide +kernel
theorem terminal394_checked : terminal394.check = true := by decide +kernel
theorem terminal395_checked : terminal395.check = true := by decide +kernel
theorem terminal396_checked : terminal396.check = true := by decide +kernel
theorem terminal397_checked : terminal397.check = true := by decide +kernel
theorem terminal398_checked : terminal398.check = true := by decide +kernel
theorem terminal399_checked : terminal399.check = true := by decide +kernel
theorem terminal400_checked : terminal400.check = true := by decide +kernel
theorem terminal401_checked : terminal401.check = true := by decide +kernel
theorem terminal402_checked : terminal402.check = true := by decide +kernel
theorem terminal403_checked : terminal403.check = true := by decide +kernel
theorem terminal404_checked : terminal404.check = true := by decide +kernel
theorem terminal405_checked : terminal405.check = true := by decide +kernel
theorem terminal406_checked : terminal406.check = true := by decide +kernel
theorem terminal407_checked : terminal407.check = true := by decide +kernel
theorem terminal408_checked : terminal408.check = true := by decide +kernel
theorem terminal409_checked : terminal409.check = true := by decide +kernel
theorem terminal410_checked : terminal410.check = true := by decide +kernel
theorem terminal411_checked : terminal411.check = true := by decide +kernel
theorem terminal412_checked : terminal412.check = true := by decide +kernel
theorem terminal413_checked : terminal413.check = true := by decide +kernel
theorem terminal414_checked : terminal414.check = true := by decide +kernel
theorem terminal415_checked : terminal415.check = true := by decide +kernel
theorem terminal416_checked : terminal416.check = true := by decide +kernel
theorem terminals12_checked : terminals12.all Terminal.check = true := by
  simp only [terminals12, List.all_cons, List.all_nil, terminal385_checked, terminal386_checked, terminal387_checked, terminal388_checked, terminal389_checked, terminal390_checked, terminal391_checked, terminal392_checked, terminal393_checked, terminal394_checked, terminal395_checked, terminal396_checked, terminal397_checked, terminal398_checked, terminal399_checked, terminal400_checked, terminal401_checked, terminal402_checked, terminal403_checked, terminal404_checked, terminal405_checked, terminal406_checked, terminal407_checked, terminal408_checked, terminal409_checked, terminal410_checked, terminal411_checked, terminal412_checked, terminal413_checked, terminal414_checked, terminal415_checked, terminal416_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
