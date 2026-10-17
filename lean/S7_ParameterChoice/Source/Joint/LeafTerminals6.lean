import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal193_checked : terminal193.check = true := by decide +kernel
theorem terminal194_checked : terminal194.check = true := by decide +kernel
theorem terminal195_checked : terminal195.check = true := by decide +kernel
theorem terminal196_checked : terminal196.check = true := by decide +kernel
theorem terminal197_checked : terminal197.check = true := by decide +kernel
theorem terminal198_checked : terminal198.check = true := by decide +kernel
theorem terminal199_checked : terminal199.check = true := by decide +kernel
theorem terminal200_checked : terminal200.check = true := by decide +kernel
theorem terminal201_checked : terminal201.check = true := by decide +kernel
theorem terminal202_checked : terminal202.check = true := by decide +kernel
theorem terminal203_checked : terminal203.check = true := by decide +kernel
theorem terminal204_checked : terminal204.check = true := by decide +kernel
theorem terminal205_checked : terminal205.check = true := by decide +kernel
theorem terminal206_checked : terminal206.check = true := by decide +kernel
theorem terminal207_checked : terminal207.check = true := by decide +kernel
theorem terminal208_checked : terminal208.check = true := by decide +kernel
theorem terminal209_checked : terminal209.check = true := by decide +kernel
theorem terminal210_checked : terminal210.check = true := by decide +kernel
theorem terminal211_checked : terminal211.check = true := by decide +kernel
theorem terminal212_checked : terminal212.check = true := by decide +kernel
theorem terminal213_checked : terminal213.check = true := by decide +kernel
theorem terminal214_checked : terminal214.check = true := by decide +kernel
theorem terminal215_checked : terminal215.check = true := by decide +kernel
theorem terminal216_checked : terminal216.check = true := by decide +kernel
theorem terminal217_checked : terminal217.check = true := by decide +kernel
theorem terminal218_checked : terminal218.check = true := by decide +kernel
theorem terminal219_checked : terminal219.check = true := by decide +kernel
theorem terminal220_checked : terminal220.check = true := by decide +kernel
theorem terminal221_checked : terminal221.check = true := by decide +kernel
theorem terminal222_checked : terminal222.check = true := by decide +kernel
theorem terminal223_checked : terminal223.check = true := by decide +kernel
theorem terminal224_checked : terminal224.check = true := by decide +kernel
theorem terminals6_checked : terminals6.all Terminal.check = true := by
  simp only [terminals6, List.all_cons, List.all_nil, terminal193_checked, terminal194_checked, terminal195_checked, terminal196_checked, terminal197_checked, terminal198_checked, terminal199_checked, terminal200_checked, terminal201_checked, terminal202_checked, terminal203_checked, terminal204_checked, terminal205_checked, terminal206_checked, terminal207_checked, terminal208_checked, terminal209_checked, terminal210_checked, terminal211_checked, terminal212_checked, terminal213_checked, terminal214_checked, terminal215_checked, terminal216_checked, terminal217_checked, terminal218_checked, terminal219_checked, terminal220_checked, terminal221_checked, terminal222_checked, terminal223_checked, terminal224_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
