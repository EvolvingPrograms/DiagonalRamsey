import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal673_checked : terminal673.check = true := by decide +kernel
theorem terminal674_checked : terminal674.check = true := by decide +kernel
theorem terminal675_checked : terminal675.check = true := by decide +kernel
theorem terminal676_checked : terminal676.check = true := by decide +kernel
theorem terminal677_checked : terminal677.check = true := by decide +kernel
theorem terminal678_checked : terminal678.check = true := by decide +kernel
theorem terminal679_checked : terminal679.check = true := by decide +kernel
theorem terminal680_checked : terminal680.check = true := by decide +kernel
theorem terminal681_checked : terminal681.check = true := by decide +kernel
theorem terminal682_checked : terminal682.check = true := by decide +kernel
theorem terminal683_checked : terminal683.check = true := by decide +kernel
theorem terminal684_checked : terminal684.check = true := by decide +kernel
theorem terminal685_checked : terminal685.check = true := by decide +kernel
theorem terminal686_checked : terminal686.check = true := by decide +kernel
theorem terminal687_checked : terminal687.check = true := by decide +kernel
theorem terminal688_checked : terminal688.check = true := by decide +kernel
theorem terminal689_checked : terminal689.check = true := by decide +kernel
theorem terminal690_checked : terminal690.check = true := by decide +kernel
theorem terminal691_checked : terminal691.check = true := by decide +kernel
theorem terminal692_checked : terminal692.check = true := by decide +kernel
theorem terminal693_checked : terminal693.check = true := by decide +kernel
theorem terminal694_checked : terminal694.check = true := by decide +kernel
theorem terminal695_checked : terminal695.check = true := by decide +kernel
theorem terminal696_checked : terminal696.check = true := by decide +kernel
theorem terminal697_checked : terminal697.check = true := by decide +kernel
theorem terminal698_checked : terminal698.check = true := by decide +kernel
theorem terminal699_checked : terminal699.check = true := by decide +kernel
theorem terminal700_checked : terminal700.check = true := by decide +kernel
theorem terminal701_checked : terminal701.check = true := by decide +kernel
theorem terminal702_checked : terminal702.check = true := by decide +kernel
theorem terminal703_checked : terminal703.check = true := by decide +kernel
theorem terminal704_checked : terminal704.check = true := by decide +kernel
theorem terminals21_checked : terminals21.all Terminal.check = true := by
  simp only [terminals21, List.all_cons, List.all_nil, terminal673_checked, terminal674_checked, terminal675_checked, terminal676_checked, terminal677_checked, terminal678_checked, terminal679_checked, terminal680_checked, terminal681_checked, terminal682_checked, terminal683_checked, terminal684_checked, terminal685_checked, terminal686_checked, terminal687_checked, terminal688_checked, terminal689_checked, terminal690_checked, terminal691_checked, terminal692_checked, terminal693_checked, terminal694_checked, terminal695_checked, terminal696_checked, terminal697_checked, terminal698_checked, terminal699_checked, terminal700_checked, terminal701_checked, terminal702_checked, terminal703_checked, terminal704_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
