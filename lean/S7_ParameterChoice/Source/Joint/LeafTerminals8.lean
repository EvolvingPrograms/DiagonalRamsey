import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal257_checked : terminal257.check = true := by decide +kernel
theorem terminal258_checked : terminal258.check = true := by decide +kernel
theorem terminal259_checked : terminal259.check = true := by decide +kernel
theorem terminal260_checked : terminal260.check = true := by decide +kernel
theorem terminal261_checked : terminal261.check = true := by decide +kernel
theorem terminal262_checked : terminal262.check = true := by decide +kernel
theorem terminal263_checked : terminal263.check = true := by decide +kernel
theorem terminal264_checked : terminal264.check = true := by decide +kernel
theorem terminal265_checked : terminal265.check = true := by decide +kernel
theorem terminal266_checked : terminal266.check = true := by decide +kernel
theorem terminal267_checked : terminal267.check = true := by decide +kernel
theorem terminal268_checked : terminal268.check = true := by decide +kernel
theorem terminal269_checked : terminal269.check = true := by decide +kernel
theorem terminal270_checked : terminal270.check = true := by decide +kernel
theorem terminal271_checked : terminal271.check = true := by decide +kernel
theorem terminal272_checked : terminal272.check = true := by decide +kernel
theorem terminal273_checked : terminal273.check = true := by decide +kernel
theorem terminal274_checked : terminal274.check = true := by decide +kernel
theorem terminal275_checked : terminal275.check = true := by decide +kernel
theorem terminal276_checked : terminal276.check = true := by decide +kernel
theorem terminal277_checked : terminal277.check = true := by decide +kernel
theorem terminal278_checked : terminal278.check = true := by decide +kernel
theorem terminal279_checked : terminal279.check = true := by decide +kernel
theorem terminal280_checked : terminal280.check = true := by decide +kernel
theorem terminal281_checked : terminal281.check = true := by decide +kernel
theorem terminal282_checked : terminal282.check = true := by decide +kernel
theorem terminal283_checked : terminal283.check = true := by decide +kernel
theorem terminal284_checked : terminal284.check = true := by decide +kernel
theorem terminal285_checked : terminal285.check = true := by decide +kernel
theorem terminal286_checked : terminal286.check = true := by decide +kernel
theorem terminal287_checked : terminal287.check = true := by decide +kernel
theorem terminal288_checked : terminal288.check = true := by decide +kernel
theorem terminals8_checked : terminals8.all Terminal.check = true := by
  simp only [terminals8, List.all_cons, List.all_nil, terminal257_checked, terminal258_checked, terminal259_checked, terminal260_checked, terminal261_checked, terminal262_checked, terminal263_checked, terminal264_checked, terminal265_checked, terminal266_checked, terminal267_checked, terminal268_checked, terminal269_checked, terminal270_checked, terminal271_checked, terminal272_checked, terminal273_checked, terminal274_checked, terminal275_checked, terminal276_checked, terminal277_checked, terminal278_checked, terminal279_checked, terminal280_checked, terminal281_checked, terminal282_checked, terminal283_checked, terminal284_checked, terminal285_checked, terminal286_checked, terminal287_checked, terminal288_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
