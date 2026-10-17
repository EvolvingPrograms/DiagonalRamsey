import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal705_checked : terminal705.check = true := by decide +kernel
theorem terminal706_checked : terminal706.check = true := by decide +kernel
theorem terminal707_checked : terminal707.check = true := by decide +kernel
theorem terminal708_checked : terminal708.check = true := by decide +kernel
theorem terminal709_checked : terminal709.check = true := by decide +kernel
theorem terminal710_checked : terminal710.check = true := by decide +kernel
theorem terminal711_checked : terminal711.check = true := by decide +kernel
theorem terminal712_checked : terminal712.check = true := by decide +kernel
theorem terminal713_checked : terminal713.check = true := by decide +kernel
theorem terminal714_checked : terminal714.check = true := by decide +kernel
theorem terminal715_checked : terminal715.check = true := by decide +kernel
theorem terminal716_checked : terminal716.check = true := by decide +kernel
theorem terminal717_checked : terminal717.check = true := by decide +kernel
theorem terminal718_checked : terminal718.check = true := by decide +kernel
theorem terminal719_checked : terminal719.check = true := by decide +kernel
theorem terminal720_checked : terminal720.check = true := by decide +kernel
theorem terminal721_checked : terminal721.check = true := by decide +kernel
theorem terminal722_checked : terminal722.check = true := by decide +kernel
theorem terminal723_checked : terminal723.check = true := by decide +kernel
theorem terminal724_checked : terminal724.check = true := by decide +kernel
theorem terminal725_checked : terminal725.check = true := by decide +kernel
theorem terminal726_checked : terminal726.check = true := by decide +kernel
theorem terminal727_checked : terminal727.check = true := by decide +kernel
theorem terminal728_checked : terminal728.check = true := by decide +kernel
theorem terminal729_checked : terminal729.check = true := by decide +kernel
theorem terminal730_checked : terminal730.check = true := by decide +kernel
theorem terminal731_checked : terminal731.check = true := by decide +kernel
theorem terminal732_checked : terminal732.check = true := by decide +kernel
theorem terminal733_checked : terminal733.check = true := by decide +kernel
theorem terminal734_checked : terminal734.check = true := by decide +kernel
theorem terminal735_checked : terminal735.check = true := by decide +kernel
theorem terminal736_checked : terminal736.check = true := by decide +kernel
theorem terminals22_checked : terminals22.all Terminal.check = true := by
  simp only [terminals22, List.all_cons, List.all_nil, terminal705_checked, terminal706_checked, terminal707_checked, terminal708_checked, terminal709_checked, terminal710_checked, terminal711_checked, terminal712_checked, terminal713_checked, terminal714_checked, terminal715_checked, terminal716_checked, terminal717_checked, terminal718_checked, terminal719_checked, terminal720_checked, terminal721_checked, terminal722_checked, terminal723_checked, terminal724_checked, terminal725_checked, terminal726_checked, terminal727_checked, terminal728_checked, terminal729_checked, terminal730_checked, terminal731_checked, terminal732_checked, terminal733_checked, terminal734_checked, terminal735_checked, terminal736_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
