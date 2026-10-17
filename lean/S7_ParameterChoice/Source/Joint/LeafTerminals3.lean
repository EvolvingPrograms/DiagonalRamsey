import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal97_checked : terminal97.check = true := by decide +kernel
theorem terminal98_checked : terminal98.check = true := by decide +kernel
theorem terminal99_checked : terminal99.check = true := by decide +kernel
theorem terminal100_checked : terminal100.check = true := by decide +kernel
theorem terminal101_checked : terminal101.check = true := by decide +kernel
theorem terminal102_checked : terminal102.check = true := by decide +kernel
theorem terminal103_checked : terminal103.check = true := by decide +kernel
theorem terminal104_checked : terminal104.check = true := by decide +kernel
theorem terminal105_checked : terminal105.check = true := by decide +kernel
theorem terminal106_checked : terminal106.check = true := by decide +kernel
theorem terminal107_checked : terminal107.check = true := by decide +kernel
theorem terminal108_checked : terminal108.check = true := by decide +kernel
theorem terminal109_checked : terminal109.check = true := by decide +kernel
theorem terminal110_checked : terminal110.check = true := by decide +kernel
theorem terminal111_checked : terminal111.check = true := by decide +kernel
theorem terminal112_checked : terminal112.check = true := by decide +kernel
theorem terminal113_checked : terminal113.check = true := by decide +kernel
theorem terminal114_checked : terminal114.check = true := by decide +kernel
theorem terminal115_checked : terminal115.check = true := by decide +kernel
theorem terminal116_checked : terminal116.check = true := by decide +kernel
theorem terminal117_checked : terminal117.check = true := by decide +kernel
theorem terminal118_checked : terminal118.check = true := by decide +kernel
theorem terminal119_checked : terminal119.check = true := by decide +kernel
theorem terminal120_checked : terminal120.check = true := by decide +kernel
theorem terminal121_checked : terminal121.check = true := by decide +kernel
theorem terminal122_checked : terminal122.check = true := by decide +kernel
theorem terminal123_checked : terminal123.check = true := by decide +kernel
theorem terminal124_checked : terminal124.check = true := by decide +kernel
theorem terminal125_checked : terminal125.check = true := by decide +kernel
theorem terminal126_checked : terminal126.check = true := by decide +kernel
theorem terminal127_checked : terminal127.check = true := by decide +kernel
theorem terminal128_checked : terminal128.check = true := by decide +kernel
theorem terminals3_checked : terminals3.all Terminal.check = true := by
  simp only [terminals3, List.all_cons, List.all_nil, terminal97_checked, terminal98_checked, terminal99_checked, terminal100_checked, terminal101_checked, terminal102_checked, terminal103_checked, terminal104_checked, terminal105_checked, terminal106_checked, terminal107_checked, terminal108_checked, terminal109_checked, terminal110_checked, terminal111_checked, terminal112_checked, terminal113_checked, terminal114_checked, terminal115_checked, terminal116_checked, terminal117_checked, terminal118_checked, terminal119_checked, terminal120_checked, terminal121_checked, terminal122_checked, terminal123_checked, terminal124_checked, terminal125_checked, terminal126_checked, terminal127_checked, terminal128_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
