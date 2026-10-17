import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal833_checked : terminal833.check = true := by decide +kernel
theorem terminal834_checked : terminal834.check = true := by decide +kernel
theorem terminal835_checked : terminal835.check = true := by decide +kernel
theorem terminal836_checked : terminal836.check = true := by decide +kernel
theorem terminal837_checked : terminal837.check = true := by decide +kernel
theorem terminal838_checked : terminal838.check = true := by decide +kernel
theorem terminal839_checked : terminal839.check = true := by decide +kernel
theorem terminal840_checked : terminal840.check = true := by decide +kernel
theorem terminal841_checked : terminal841.check = true := by decide +kernel
theorem terminal842_checked : terminal842.check = true := by decide +kernel
theorem terminal843_checked : terminal843.check = true := by decide +kernel
theorem terminal844_checked : terminal844.check = true := by decide +kernel
theorem terminal845_checked : terminal845.check = true := by decide +kernel
theorem terminal846_checked : terminal846.check = true := by decide +kernel
theorem terminal847_checked : terminal847.check = true := by decide +kernel
theorem terminal848_checked : terminal848.check = true := by decide +kernel
theorem terminal849_checked : terminal849.check = true := by decide +kernel
theorem terminal850_checked : terminal850.check = true := by decide +kernel
theorem terminal851_checked : terminal851.check = true := by decide +kernel
theorem terminal852_checked : terminal852.check = true := by decide +kernel
theorem terminal853_checked : terminal853.check = true := by decide +kernel
theorem terminal854_checked : terminal854.check = true := by decide +kernel
theorem terminal855_checked : terminal855.check = true := by decide +kernel
theorem terminal856_checked : terminal856.check = true := by decide +kernel
theorem terminal857_checked : terminal857.check = true := by decide +kernel
theorem terminal858_checked : terminal858.check = true := by decide +kernel
theorem terminal859_checked : terminal859.check = true := by decide +kernel
theorem terminal860_checked : terminal860.check = true := by decide +kernel
theorem terminal861_checked : terminal861.check = true := by decide +kernel
theorem terminal862_checked : terminal862.check = true := by decide +kernel
theorem terminal863_checked : terminal863.check = true := by decide +kernel
theorem terminal864_checked : terminal864.check = true := by decide +kernel
theorem terminals26_checked : terminals26.all Terminal.check = true := by
  simp only [terminals26, List.all_cons, List.all_nil, terminal833_checked, terminal834_checked, terminal835_checked, terminal836_checked, terminal837_checked, terminal838_checked, terminal839_checked, terminal840_checked, terminal841_checked, terminal842_checked, terminal843_checked, terminal844_checked, terminal845_checked, terminal846_checked, terminal847_checked, terminal848_checked, terminal849_checked, terminal850_checked, terminal851_checked, terminal852_checked, terminal853_checked, terminal854_checked, terminal855_checked, terminal856_checked, terminal857_checked, terminal858_checked, terminal859_checked, terminal860_checked, terminal861_checked, terminal862_checked, terminal863_checked, terminal864_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
