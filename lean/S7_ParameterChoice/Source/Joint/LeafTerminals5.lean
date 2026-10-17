import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal161_checked : terminal161.check = true := by decide +kernel
theorem terminal162_checked : terminal162.check = true := by decide +kernel
theorem terminal163_checked : terminal163.check = true := by decide +kernel
theorem terminal164_checked : terminal164.check = true := by decide +kernel
theorem terminal165_checked : terminal165.check = true := by decide +kernel
theorem terminal166_checked : terminal166.check = true := by decide +kernel
theorem terminal167_checked : terminal167.check = true := by decide +kernel
theorem terminal168_checked : terminal168.check = true := by decide +kernel
theorem terminal169_checked : terminal169.check = true := by decide +kernel
theorem terminal170_checked : terminal170.check = true := by decide +kernel
theorem terminal171_checked : terminal171.check = true := by decide +kernel
theorem terminal172_checked : terminal172.check = true := by decide +kernel
theorem terminal173_checked : terminal173.check = true := by decide +kernel
theorem terminal174_checked : terminal174.check = true := by decide +kernel
theorem terminal175_checked : terminal175.check = true := by decide +kernel
theorem terminal176_checked : terminal176.check = true := by decide +kernel
theorem terminal177_checked : terminal177.check = true := by decide +kernel
theorem terminal178_checked : terminal178.check = true := by decide +kernel
theorem terminal179_checked : terminal179.check = true := by decide +kernel
theorem terminal180_checked : terminal180.check = true := by decide +kernel
theorem terminal181_checked : terminal181.check = true := by decide +kernel
theorem terminal182_checked : terminal182.check = true := by decide +kernel
theorem terminal183_checked : terminal183.check = true := by decide +kernel
theorem terminal184_checked : terminal184.check = true := by decide +kernel
theorem terminal185_checked : terminal185.check = true := by decide +kernel
theorem terminal186_checked : terminal186.check = true := by decide +kernel
theorem terminal187_checked : terminal187.check = true := by decide +kernel
theorem terminal188_checked : terminal188.check = true := by decide +kernel
theorem terminal189_checked : terminal189.check = true := by decide +kernel
theorem terminal190_checked : terminal190.check = true := by decide +kernel
theorem terminal191_checked : terminal191.check = true := by decide +kernel
theorem terminal192_checked : terminal192.check = true := by decide +kernel
theorem terminals5_checked : terminals5.all Terminal.check = true := by
  simp only [terminals5, List.all_cons, List.all_nil, terminal161_checked, terminal162_checked, terminal163_checked, terminal164_checked, terminal165_checked, terminal166_checked, terminal167_checked, terminal168_checked, terminal169_checked, terminal170_checked, terminal171_checked, terminal172_checked, terminal173_checked, terminal174_checked, terminal175_checked, terminal176_checked, terminal177_checked, terminal178_checked, terminal179_checked, terminal180_checked, terminal181_checked, terminal182_checked, terminal183_checked, terminal184_checked, terminal185_checked, terminal186_checked, terminal187_checked, terminal188_checked, terminal189_checked, terminal190_checked, terminal191_checked, terminal192_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
