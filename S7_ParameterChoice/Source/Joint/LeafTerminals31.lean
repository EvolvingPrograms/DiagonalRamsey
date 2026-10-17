import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal993_checked : terminal993.check = true := by decide +kernel
theorem terminal994_checked : terminal994.check = true := by decide +kernel
theorem terminal995_checked : terminal995.check = true := by decide +kernel
theorem terminal996_checked : terminal996.check = true := by decide +kernel
theorem terminal997_checked : terminal997.check = true := by decide +kernel
theorem terminal998_checked : terminal998.check = true := by decide +kernel
theorem terminal999_checked : terminal999.check = true := by decide +kernel
theorem terminal1000_checked : terminal1000.check = true := by decide +kernel
theorem terminal1001_checked : terminal1001.check = true := by decide +kernel
theorem terminal1002_checked : terminal1002.check = true := by decide +kernel
theorem terminal1003_checked : terminal1003.check = true := by decide +kernel
theorem terminal1004_checked : terminal1004.check = true := by decide +kernel
theorem terminal1005_checked : terminal1005.check = true := by decide +kernel
theorem terminal1006_checked : terminal1006.check = true := by decide +kernel
theorem terminal1007_checked : terminal1007.check = true := by decide +kernel
theorem terminal1008_checked : terminal1008.check = true := by decide +kernel
theorem terminal1009_checked : terminal1009.check = true := by decide +kernel
theorem terminal1010_checked : terminal1010.check = true := by decide +kernel
theorem terminal1011_checked : terminal1011.check = true := by decide +kernel
theorem terminal1012_checked : terminal1012.check = true := by decide +kernel
theorem terminal1013_checked : terminal1013.check = true := by decide +kernel
theorem terminal1014_checked : terminal1014.check = true := by decide +kernel
theorem terminal1015_checked : terminal1015.check = true := by decide +kernel
theorem terminal1016_checked : terminal1016.check = true := by decide +kernel
theorem terminal1017_checked : terminal1017.check = true := by decide +kernel
theorem terminal1018_checked : terminal1018.check = true := by decide +kernel
theorem terminal1019_checked : terminal1019.check = true := by decide +kernel
theorem terminal1020_checked : terminal1020.check = true := by decide +kernel
theorem terminal1021_checked : terminal1021.check = true := by decide +kernel
theorem terminal1022_checked : terminal1022.check = true := by decide +kernel
theorem terminal1023_checked : terminal1023.check = true := by decide +kernel
theorem terminal1024_checked : terminal1024.check = true := by decide +kernel
theorem terminals31_checked : terminals31.all Terminal.check = true := by
  simp only [terminals31, List.all_cons, List.all_nil, terminal993_checked, terminal994_checked, terminal995_checked, terminal996_checked, terminal997_checked, terminal998_checked, terminal999_checked, terminal1000_checked, terminal1001_checked, terminal1002_checked, terminal1003_checked, terminal1004_checked, terminal1005_checked, terminal1006_checked, terminal1007_checked, terminal1008_checked, terminal1009_checked, terminal1010_checked, terminal1011_checked, terminal1012_checked, terminal1013_checked, terminal1014_checked, terminal1015_checked, terminal1016_checked, terminal1017_checked, terminal1018_checked, terminal1019_checked, terminal1020_checked, terminal1021_checked, terminal1022_checked, terminal1023_checked, terminal1024_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
