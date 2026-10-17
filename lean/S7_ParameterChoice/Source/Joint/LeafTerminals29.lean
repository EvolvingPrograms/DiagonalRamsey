import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal929_checked : terminal929.check = true := by decide +kernel
theorem terminal930_checked : terminal930.check = true := by decide +kernel
theorem terminal931_checked : terminal931.check = true := by decide +kernel
theorem terminal932_checked : terminal932.check = true := by decide +kernel
theorem terminal933_checked : terminal933.check = true := by decide +kernel
theorem terminal934_checked : terminal934.check = true := by decide +kernel
theorem terminal935_checked : terminal935.check = true := by decide +kernel
theorem terminal936_checked : terminal936.check = true := by decide +kernel
theorem terminal937_checked : terminal937.check = true := by decide +kernel
theorem terminal938_checked : terminal938.check = true := by decide +kernel
theorem terminal939_checked : terminal939.check = true := by decide +kernel
theorem terminal940_checked : terminal940.check = true := by decide +kernel
theorem terminal941_checked : terminal941.check = true := by decide +kernel
theorem terminal942_checked : terminal942.check = true := by decide +kernel
theorem terminal943_checked : terminal943.check = true := by decide +kernel
theorem terminal944_checked : terminal944.check = true := by decide +kernel
theorem terminal945_checked : terminal945.check = true := by decide +kernel
theorem terminal946_checked : terminal946.check = true := by decide +kernel
theorem terminal947_checked : terminal947.check = true := by decide +kernel
theorem terminal948_checked : terminal948.check = true := by decide +kernel
theorem terminal949_checked : terminal949.check = true := by decide +kernel
theorem terminal950_checked : terminal950.check = true := by decide +kernel
theorem terminal951_checked : terminal951.check = true := by decide +kernel
theorem terminal952_checked : terminal952.check = true := by decide +kernel
theorem terminal953_checked : terminal953.check = true := by decide +kernel
theorem terminal954_checked : terminal954.check = true := by decide +kernel
theorem terminal955_checked : terminal955.check = true := by decide +kernel
theorem terminal956_checked : terminal956.check = true := by decide +kernel
theorem terminal957_checked : terminal957.check = true := by decide +kernel
theorem terminal958_checked : terminal958.check = true := by decide +kernel
theorem terminal959_checked : terminal959.check = true := by decide +kernel
theorem terminal960_checked : terminal960.check = true := by decide +kernel
theorem terminals29_checked : terminals29.all Terminal.check = true := by
  simp only [terminals29, List.all_cons, List.all_nil, terminal929_checked, terminal930_checked, terminal931_checked, terminal932_checked, terminal933_checked, terminal934_checked, terminal935_checked, terminal936_checked, terminal937_checked, terminal938_checked, terminal939_checked, terminal940_checked, terminal941_checked, terminal942_checked, terminal943_checked, terminal944_checked, terminal945_checked, terminal946_checked, terminal947_checked, terminal948_checked, terminal949_checked, terminal950_checked, terminal951_checked, terminal952_checked, terminal953_checked, terminal954_checked, terminal955_checked, terminal956_checked, terminal957_checked, terminal958_checked, terminal959_checked, terminal960_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
