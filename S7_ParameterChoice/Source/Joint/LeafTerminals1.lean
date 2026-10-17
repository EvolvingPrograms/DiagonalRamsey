import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal33_checked : terminal33.check = true := by decide +kernel
theorem terminal34_checked : terminal34.check = true := by decide +kernel
theorem terminal35_checked : terminal35.check = true := by decide +kernel
theorem terminal36_checked : terminal36.check = true := by decide +kernel
theorem terminal37_checked : terminal37.check = true := by decide +kernel
theorem terminal38_checked : terminal38.check = true := by decide +kernel
theorem terminal39_checked : terminal39.check = true := by decide +kernel
theorem terminal40_checked : terminal40.check = true := by decide +kernel
theorem terminal41_checked : terminal41.check = true := by decide +kernel
theorem terminal42_checked : terminal42.check = true := by decide +kernel
theorem terminal43_checked : terminal43.check = true := by decide +kernel
theorem terminal44_checked : terminal44.check = true := by decide +kernel
theorem terminal45_checked : terminal45.check = true := by decide +kernel
theorem terminal46_checked : terminal46.check = true := by decide +kernel
theorem terminal47_checked : terminal47.check = true := by decide +kernel
theorem terminal48_checked : terminal48.check = true := by decide +kernel
theorem terminal49_checked : terminal49.check = true := by decide +kernel
theorem terminal50_checked : terminal50.check = true := by decide +kernel
theorem terminal51_checked : terminal51.check = true := by decide +kernel
theorem terminal52_checked : terminal52.check = true := by decide +kernel
theorem terminal53_checked : terminal53.check = true := by decide +kernel
theorem terminal54_checked : terminal54.check = true := by decide +kernel
theorem terminal55_checked : terminal55.check = true := by decide +kernel
theorem terminal56_checked : terminal56.check = true := by decide +kernel
theorem terminal57_checked : terminal57.check = true := by decide +kernel
theorem terminal58_checked : terminal58.check = true := by decide +kernel
theorem terminal59_checked : terminal59.check = true := by decide +kernel
theorem terminal60_checked : terminal60.check = true := by decide +kernel
theorem terminal61_checked : terminal61.check = true := by decide +kernel
theorem terminal62_checked : terminal62.check = true := by decide +kernel
theorem terminal63_checked : terminal63.check = true := by decide +kernel
theorem terminal64_checked : terminal64.check = true := by decide +kernel
theorem terminals1_checked : terminals1.all Terminal.check = true := by
  simp only [terminals1, List.all_cons, List.all_nil, terminal33_checked, terminal34_checked, terminal35_checked, terminal36_checked, terminal37_checked, terminal38_checked, terminal39_checked, terminal40_checked, terminal41_checked, terminal42_checked, terminal43_checked, terminal44_checked, terminal45_checked, terminal46_checked, terminal47_checked, terminal48_checked, terminal49_checked, terminal50_checked, terminal51_checked, terminal52_checked, terminal53_checked, terminal54_checked, terminal55_checked, terminal56_checked, terminal57_checked, terminal58_checked, terminal59_checked, terminal60_checked, terminal61_checked, terminal62_checked, terminal63_checked, terminal64_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
