import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal609_checked : terminal609.check = true := by decide +kernel
theorem terminal610_checked : terminal610.check = true := by decide +kernel
theorem terminal611_checked : terminal611.check = true := by decide +kernel
theorem terminal612_checked : terminal612.check = true := by decide +kernel
theorem terminal613_checked : terminal613.check = true := by decide +kernel
theorem terminal614_checked : terminal614.check = true := by decide +kernel
theorem terminal615_checked : terminal615.check = true := by decide +kernel
theorem terminal616_checked : terminal616.check = true := by decide +kernel
theorem terminal617_checked : terminal617.check = true := by decide +kernel
theorem terminal618_checked : terminal618.check = true := by decide +kernel
theorem terminal619_checked : terminal619.check = true := by decide +kernel
theorem terminal620_checked : terminal620.check = true := by decide +kernel
theorem terminal621_checked : terminal621.check = true := by decide +kernel
theorem terminal622_checked : terminal622.check = true := by decide +kernel
theorem terminal623_checked : terminal623.check = true := by decide +kernel
theorem terminal624_checked : terminal624.check = true := by decide +kernel
theorem terminal625_checked : terminal625.check = true := by decide +kernel
theorem terminal626_checked : terminal626.check = true := by decide +kernel
theorem terminal627_checked : terminal627.check = true := by decide +kernel
theorem terminal628_checked : terminal628.check = true := by decide +kernel
theorem terminal629_checked : terminal629.check = true := by decide +kernel
theorem terminal630_checked : terminal630.check = true := by decide +kernel
theorem terminal631_checked : terminal631.check = true := by decide +kernel
theorem terminal632_checked : terminal632.check = true := by decide +kernel
theorem terminal633_checked : terminal633.check = true := by decide +kernel
theorem terminal634_checked : terminal634.check = true := by decide +kernel
theorem terminal635_checked : terminal635.check = true := by decide +kernel
theorem terminal636_checked : terminal636.check = true := by decide +kernel
theorem terminal637_checked : terminal637.check = true := by decide +kernel
theorem terminal638_checked : terminal638.check = true := by decide +kernel
theorem terminal639_checked : terminal639.check = true := by decide +kernel
theorem terminal640_checked : terminal640.check = true := by decide +kernel
theorem terminals19_checked : terminals19.all Terminal.check = true := by
  simp only [terminals19, List.all_cons, List.all_nil, terminal609_checked, terminal610_checked, terminal611_checked, terminal612_checked, terminal613_checked, terminal614_checked, terminal615_checked, terminal616_checked, terminal617_checked, terminal618_checked, terminal619_checked, terminal620_checked, terminal621_checked, terminal622_checked, terminal623_checked, terminal624_checked, terminal625_checked, terminal626_checked, terminal627_checked, terminal628_checked, terminal629_checked, terminal630_checked, terminal631_checked, terminal632_checked, terminal633_checked, terminal634_checked, terminal635_checked, terminal636_checked, terminal637_checked, terminal638_checked, terminal639_checked, terminal640_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
