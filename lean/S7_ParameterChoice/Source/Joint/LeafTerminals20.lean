import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal641_checked : terminal641.check = true := by decide +kernel
theorem terminal642_checked : terminal642.check = true := by decide +kernel
theorem terminal643_checked : terminal643.check = true := by decide +kernel
theorem terminal644_checked : terminal644.check = true := by decide +kernel
theorem terminal645_checked : terminal645.check = true := by decide +kernel
theorem terminal646_checked : terminal646.check = true := by decide +kernel
theorem terminal647_checked : terminal647.check = true := by decide +kernel
theorem terminal648_checked : terminal648.check = true := by decide +kernel
theorem terminal649_checked : terminal649.check = true := by decide +kernel
theorem terminal650_checked : terminal650.check = true := by decide +kernel
theorem terminal651_checked : terminal651.check = true := by decide +kernel
theorem terminal652_checked : terminal652.check = true := by decide +kernel
theorem terminal653_checked : terminal653.check = true := by decide +kernel
theorem terminal654_checked : terminal654.check = true := by decide +kernel
theorem terminal655_checked : terminal655.check = true := by decide +kernel
theorem terminal656_checked : terminal656.check = true := by decide +kernel
theorem terminal657_checked : terminal657.check = true := by decide +kernel
theorem terminal658_checked : terminal658.check = true := by decide +kernel
theorem terminal659_checked : terminal659.check = true := by decide +kernel
theorem terminal660_checked : terminal660.check = true := by decide +kernel
theorem terminal661_checked : terminal661.check = true := by decide +kernel
theorem terminal662_checked : terminal662.check = true := by decide +kernel
theorem terminal663_checked : terminal663.check = true := by decide +kernel
theorem terminal664_checked : terminal664.check = true := by decide +kernel
theorem terminal665_checked : terminal665.check = true := by decide +kernel
theorem terminal666_checked : terminal666.check = true := by decide +kernel
theorem terminal667_checked : terminal667.check = true := by decide +kernel
theorem terminal668_checked : terminal668.check = true := by decide +kernel
theorem terminal669_checked : terminal669.check = true := by decide +kernel
theorem terminal670_checked : terminal670.check = true := by decide +kernel
theorem terminal671_checked : terminal671.check = true := by decide +kernel
theorem terminal672_checked : terminal672.check = true := by decide +kernel
theorem terminals20_checked : terminals20.all Terminal.check = true := by
  simp only [terminals20, List.all_cons, List.all_nil, terminal641_checked, terminal642_checked, terminal643_checked, terminal644_checked, terminal645_checked, terminal646_checked, terminal647_checked, terminal648_checked, terminal649_checked, terminal650_checked, terminal651_checked, terminal652_checked, terminal653_checked, terminal654_checked, terminal655_checked, terminal656_checked, terminal657_checked, terminal658_checked, terminal659_checked, terminal660_checked, terminal661_checked, terminal662_checked, terminal663_checked, terminal664_checked, terminal665_checked, terminal666_checked, terminal667_checked, terminal668_checked, terminal669_checked, terminal670_checked, terminal671_checked, terminal672_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
