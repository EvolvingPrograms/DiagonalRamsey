import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal897_checked : terminal897.check = true := by decide +kernel
theorem terminal898_checked : terminal898.check = true := by decide +kernel
theorem terminal899_checked : terminal899.check = true := by decide +kernel
theorem terminal900_checked : terminal900.check = true := by decide +kernel
theorem terminal901_checked : terminal901.check = true := by decide +kernel
theorem terminal902_checked : terminal902.check = true := by decide +kernel
theorem terminal903_checked : terminal903.check = true := by decide +kernel
theorem terminal904_checked : terminal904.check = true := by decide +kernel
theorem terminal905_checked : terminal905.check = true := by decide +kernel
theorem terminal906_checked : terminal906.check = true := by decide +kernel
theorem terminal907_checked : terminal907.check = true := by decide +kernel
theorem terminal908_checked : terminal908.check = true := by decide +kernel
theorem terminal909_checked : terminal909.check = true := by decide +kernel
theorem terminal910_checked : terminal910.check = true := by decide +kernel
theorem terminal911_checked : terminal911.check = true := by decide +kernel
theorem terminal912_checked : terminal912.check = true := by decide +kernel
theorem terminal913_checked : terminal913.check = true := by decide +kernel
theorem terminal914_checked : terminal914.check = true := by decide +kernel
theorem terminal915_checked : terminal915.check = true := by decide +kernel
theorem terminal916_checked : terminal916.check = true := by decide +kernel
theorem terminal917_checked : terminal917.check = true := by decide +kernel
theorem terminal918_checked : terminal918.check = true := by decide +kernel
theorem terminal919_checked : terminal919.check = true := by decide +kernel
theorem terminal920_checked : terminal920.check = true := by decide +kernel
theorem terminal921_checked : terminal921.check = true := by decide +kernel
theorem terminal922_checked : terminal922.check = true := by decide +kernel
theorem terminal923_checked : terminal923.check = true := by decide +kernel
theorem terminal924_checked : terminal924.check = true := by decide +kernel
theorem terminal925_checked : terminal925.check = true := by decide +kernel
theorem terminal926_checked : terminal926.check = true := by decide +kernel
theorem terminal927_checked : terminal927.check = true := by decide +kernel
theorem terminal928_checked : terminal928.check = true := by decide +kernel
theorem terminals28_checked : terminals28.all Terminal.check = true := by
  simp only [terminals28, List.all_cons, List.all_nil, terminal897_checked, terminal898_checked, terminal899_checked, terminal900_checked, terminal901_checked, terminal902_checked, terminal903_checked, terminal904_checked, terminal905_checked, terminal906_checked, terminal907_checked, terminal908_checked, terminal909_checked, terminal910_checked, terminal911_checked, terminal912_checked, terminal913_checked, terminal914_checked, terminal915_checked, terminal916_checked, terminal917_checked, terminal918_checked, terminal919_checked, terminal920_checked, terminal921_checked, terminal922_checked, terminal923_checked, terminal924_checked, terminal925_checked, terminal926_checked, terminal927_checked, terminal928_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
