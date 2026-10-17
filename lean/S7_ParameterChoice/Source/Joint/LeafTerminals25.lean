import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal801_checked : terminal801.check = true := by decide +kernel
theorem terminal802_checked : terminal802.check = true := by decide +kernel
theorem terminal803_checked : terminal803.check = true := by decide +kernel
theorem terminal804_checked : terminal804.check = true := by decide +kernel
theorem terminal805_checked : terminal805.check = true := by decide +kernel
theorem terminal806_checked : terminal806.check = true := by decide +kernel
theorem terminal807_checked : terminal807.check = true := by decide +kernel
theorem terminal808_checked : terminal808.check = true := by decide +kernel
theorem terminal809_checked : terminal809.check = true := by decide +kernel
theorem terminal810_checked : terminal810.check = true := by decide +kernel
theorem terminal811_checked : terminal811.check = true := by decide +kernel
theorem terminal812_checked : terminal812.check = true := by decide +kernel
theorem terminal813_checked : terminal813.check = true := by decide +kernel
theorem terminal814_checked : terminal814.check = true := by decide +kernel
theorem terminal815_checked : terminal815.check = true := by decide +kernel
theorem terminal816_checked : terminal816.check = true := by decide +kernel
theorem terminal817_checked : terminal817.check = true := by decide +kernel
theorem terminal818_checked : terminal818.check = true := by decide +kernel
theorem terminal819_checked : terminal819.check = true := by decide +kernel
theorem terminal820_checked : terminal820.check = true := by decide +kernel
theorem terminal821_checked : terminal821.check = true := by decide +kernel
theorem terminal822_checked : terminal822.check = true := by decide +kernel
theorem terminal823_checked : terminal823.check = true := by decide +kernel
theorem terminal824_checked : terminal824.check = true := by decide +kernel
theorem terminal825_checked : terminal825.check = true := by decide +kernel
theorem terminal826_checked : terminal826.check = true := by decide +kernel
theorem terminal827_checked : terminal827.check = true := by decide +kernel
theorem terminal828_checked : terminal828.check = true := by decide +kernel
theorem terminal829_checked : terminal829.check = true := by decide +kernel
theorem terminal830_checked : terminal830.check = true := by decide +kernel
theorem terminal831_checked : terminal831.check = true := by decide +kernel
theorem terminal832_checked : terminal832.check = true := by decide +kernel
theorem terminals25_checked : terminals25.all Terminal.check = true := by
  simp only [terminals25, List.all_cons, List.all_nil, terminal801_checked, terminal802_checked, terminal803_checked, terminal804_checked, terminal805_checked, terminal806_checked, terminal807_checked, terminal808_checked, terminal809_checked, terminal810_checked, terminal811_checked, terminal812_checked, terminal813_checked, terminal814_checked, terminal815_checked, terminal816_checked, terminal817_checked, terminal818_checked, terminal819_checked, terminal820_checked, terminal821_checked, terminal822_checked, terminal823_checked, terminal824_checked, terminal825_checked, terminal826_checked, terminal827_checked, terminal828_checked, terminal829_checked, terminal830_checked, terminal831_checked, terminal832_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
