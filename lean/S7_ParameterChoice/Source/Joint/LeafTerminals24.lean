import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal769_checked : terminal769.check = true := by decide +kernel
theorem terminal770_checked : terminal770.check = true := by decide +kernel
theorem terminal771_checked : terminal771.check = true := by decide +kernel
theorem terminal772_checked : terminal772.check = true := by decide +kernel
theorem terminal773_checked : terminal773.check = true := by decide +kernel
theorem terminal774_checked : terminal774.check = true := by decide +kernel
theorem terminal775_checked : terminal775.check = true := by decide +kernel
theorem terminal776_checked : terminal776.check = true := by decide +kernel
theorem terminal777_checked : terminal777.check = true := by decide +kernel
theorem terminal778_checked : terminal778.check = true := by decide +kernel
theorem terminal779_checked : terminal779.check = true := by decide +kernel
theorem terminal780_checked : terminal780.check = true := by decide +kernel
theorem terminal781_checked : terminal781.check = true := by decide +kernel
theorem terminal782_checked : terminal782.check = true := by decide +kernel
theorem terminal783_checked : terminal783.check = true := by decide +kernel
theorem terminal784_checked : terminal784.check = true := by decide +kernel
theorem terminal785_checked : terminal785.check = true := by decide +kernel
theorem terminal786_checked : terminal786.check = true := by decide +kernel
theorem terminal787_checked : terminal787.check = true := by decide +kernel
theorem terminal788_checked : terminal788.check = true := by decide +kernel
theorem terminal789_checked : terminal789.check = true := by decide +kernel
theorem terminal790_checked : terminal790.check = true := by decide +kernel
theorem terminal791_checked : terminal791.check = true := by decide +kernel
theorem terminal792_checked : terminal792.check = true := by decide +kernel
theorem terminal793_checked : terminal793.check = true := by decide +kernel
theorem terminal794_checked : terminal794.check = true := by decide +kernel
theorem terminal795_checked : terminal795.check = true := by decide +kernel
theorem terminal796_checked : terminal796.check = true := by decide +kernel
theorem terminal797_checked : terminal797.check = true := by decide +kernel
theorem terminal798_checked : terminal798.check = true := by decide +kernel
theorem terminal799_checked : terminal799.check = true := by decide +kernel
theorem terminal800_checked : terminal800.check = true := by decide +kernel
theorem terminals24_checked : terminals24.all Terminal.check = true := by
  simp only [terminals24, List.all_cons, List.all_nil, terminal769_checked, terminal770_checked, terminal771_checked, terminal772_checked, terminal773_checked, terminal774_checked, terminal775_checked, terminal776_checked, terminal777_checked, terminal778_checked, terminal779_checked, terminal780_checked, terminal781_checked, terminal782_checked, terminal783_checked, terminal784_checked, terminal785_checked, terminal786_checked, terminal787_checked, terminal788_checked, terminal789_checked, terminal790_checked, terminal791_checked, terminal792_checked, terminal793_checked, terminal794_checked, terminal795_checked, terminal796_checked, terminal797_checked, terminal798_checked, terminal799_checked, terminal800_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
