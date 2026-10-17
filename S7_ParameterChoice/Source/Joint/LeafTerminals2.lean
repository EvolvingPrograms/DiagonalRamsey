import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal65_checked : terminal65.check = true := by decide +kernel
theorem terminal66_checked : terminal66.check = true := by decide +kernel
theorem terminal67_checked : terminal67.check = true := by decide +kernel
theorem terminal68_checked : terminal68.check = true := by decide +kernel
theorem terminal69_checked : terminal69.check = true := by decide +kernel
theorem terminal70_checked : terminal70.check = true := by decide +kernel
theorem terminal71_checked : terminal71.check = true := by decide +kernel
theorem terminal72_checked : terminal72.check = true := by decide +kernel
theorem terminal73_checked : terminal73.check = true := by decide +kernel
theorem terminal74_checked : terminal74.check = true := by decide +kernel
theorem terminal75_checked : terminal75.check = true := by decide +kernel
theorem terminal76_checked : terminal76.check = true := by decide +kernel
theorem terminal77_checked : terminal77.check = true := by decide +kernel
theorem terminal78_checked : terminal78.check = true := by decide +kernel
theorem terminal79_checked : terminal79.check = true := by decide +kernel
theorem terminal80_checked : terminal80.check = true := by decide +kernel
theorem terminal81_checked : terminal81.check = true := by decide +kernel
theorem terminal82_checked : terminal82.check = true := by decide +kernel
theorem terminal83_checked : terminal83.check = true := by decide +kernel
theorem terminal84_checked : terminal84.check = true := by decide +kernel
theorem terminal85_checked : terminal85.check = true := by decide +kernel
theorem terminal86_checked : terminal86.check = true := by decide +kernel
theorem terminal87_checked : terminal87.check = true := by decide +kernel
theorem terminal88_checked : terminal88.check = true := by decide +kernel
theorem terminal89_checked : terminal89.check = true := by decide +kernel
theorem terminal90_checked : terminal90.check = true := by decide +kernel
theorem terminal91_checked : terminal91.check = true := by decide +kernel
theorem terminal92_checked : terminal92.check = true := by decide +kernel
theorem terminal93_checked : terminal93.check = true := by decide +kernel
theorem terminal94_checked : terminal94.check = true := by decide +kernel
theorem terminal95_checked : terminal95.check = true := by decide +kernel
theorem terminal96_checked : terminal96.check = true := by decide +kernel
theorem terminals2_checked : terminals2.all Terminal.check = true := by
  simp only [terminals2, List.all_cons, List.all_nil, terminal65_checked, terminal66_checked, terminal67_checked, terminal68_checked, terminal69_checked, terminal70_checked, terminal71_checked, terminal72_checked, terminal73_checked, terminal74_checked, terminal75_checked, terminal76_checked, terminal77_checked, terminal78_checked, terminal79_checked, terminal80_checked, terminal81_checked, terminal82_checked, terminal83_checked, terminal84_checked, terminal85_checked, terminal86_checked, terminal87_checked, terminal88_checked, terminal89_checked, terminal90_checked, terminal91_checked, terminal92_checked, terminal93_checked, terminal94_checked, terminal95_checked, terminal96_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
