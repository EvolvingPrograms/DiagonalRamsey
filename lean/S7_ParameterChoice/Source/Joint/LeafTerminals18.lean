import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal577_checked : terminal577.check = true := by decide +kernel
theorem terminal578_checked : terminal578.check = true := by decide +kernel
theorem terminal579_checked : terminal579.check = true := by decide +kernel
theorem terminal580_checked : terminal580.check = true := by decide +kernel
theorem terminal581_checked : terminal581.check = true := by decide +kernel
theorem terminal582_checked : terminal582.check = true := by decide +kernel
theorem terminal583_checked : terminal583.check = true := by decide +kernel
theorem terminal584_checked : terminal584.check = true := by decide +kernel
theorem terminal585_checked : terminal585.check = true := by decide +kernel
theorem terminal586_checked : terminal586.check = true := by decide +kernel
theorem terminal587_checked : terminal587.check = true := by decide +kernel
theorem terminal588_checked : terminal588.check = true := by decide +kernel
theorem terminal589_checked : terminal589.check = true := by decide +kernel
theorem terminal590_checked : terminal590.check = true := by decide +kernel
theorem terminal591_checked : terminal591.check = true := by decide +kernel
theorem terminal592_checked : terminal592.check = true := by decide +kernel
theorem terminal593_checked : terminal593.check = true := by decide +kernel
theorem terminal594_checked : terminal594.check = true := by decide +kernel
theorem terminal595_checked : terminal595.check = true := by decide +kernel
theorem terminal596_checked : terminal596.check = true := by decide +kernel
theorem terminal597_checked : terminal597.check = true := by decide +kernel
theorem terminal598_checked : terminal598.check = true := by decide +kernel
theorem terminal599_checked : terminal599.check = true := by decide +kernel
theorem terminal600_checked : terminal600.check = true := by decide +kernel
theorem terminal601_checked : terminal601.check = true := by decide +kernel
theorem terminal602_checked : terminal602.check = true := by decide +kernel
theorem terminal603_checked : terminal603.check = true := by decide +kernel
theorem terminal604_checked : terminal604.check = true := by decide +kernel
theorem terminal605_checked : terminal605.check = true := by decide +kernel
theorem terminal606_checked : terminal606.check = true := by decide +kernel
theorem terminal607_checked : terminal607.check = true := by decide +kernel
theorem terminal608_checked : terminal608.check = true := by decide +kernel
theorem terminals18_checked : terminals18.all Terminal.check = true := by
  simp only [terminals18, List.all_cons, List.all_nil, terminal577_checked, terminal578_checked, terminal579_checked, terminal580_checked, terminal581_checked, terminal582_checked, terminal583_checked, terminal584_checked, terminal585_checked, terminal586_checked, terminal587_checked, terminal588_checked, terminal589_checked, terminal590_checked, terminal591_checked, terminal592_checked, terminal593_checked, terminal594_checked, terminal595_checked, terminal596_checked, terminal597_checked, terminal598_checked, terminal599_checked, terminal600_checked, terminal601_checked, terminal602_checked, terminal603_checked, terminal604_checked, terminal605_checked, terminal606_checked, terminal607_checked, terminal608_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
