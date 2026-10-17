import S7_ParameterChoice.Source.Joint.LeafData

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointLeaf
open DiagRamsey DiagRamsey.V5 JointGeometry JointFamily

theorem terminal961_checked : terminal961.check = true := by decide +kernel
theorem terminal962_checked : terminal962.check = true := by decide +kernel
theorem terminal963_checked : terminal963.check = true := by decide +kernel
theorem terminal964_checked : terminal964.check = true := by decide +kernel
theorem terminal965_checked : terminal965.check = true := by decide +kernel
theorem terminal966_checked : terminal966.check = true := by decide +kernel
theorem terminal967_checked : terminal967.check = true := by decide +kernel
theorem terminal968_checked : terminal968.check = true := by decide +kernel
theorem terminal969_checked : terminal969.check = true := by decide +kernel
theorem terminal970_checked : terminal970.check = true := by decide +kernel
theorem terminal971_checked : terminal971.check = true := by decide +kernel
theorem terminal972_checked : terminal972.check = true := by decide +kernel
theorem terminal973_checked : terminal973.check = true := by decide +kernel
theorem terminal974_checked : terminal974.check = true := by decide +kernel
theorem terminal975_checked : terminal975.check = true := by decide +kernel
theorem terminal976_checked : terminal976.check = true := by decide +kernel
theorem terminal977_checked : terminal977.check = true := by decide +kernel
theorem terminal978_checked : terminal978.check = true := by decide +kernel
theorem terminal979_checked : terminal979.check = true := by decide +kernel
theorem terminal980_checked : terminal980.check = true := by decide +kernel
theorem terminal981_checked : terminal981.check = true := by decide +kernel
theorem terminal982_checked : terminal982.check = true := by decide +kernel
theorem terminal983_checked : terminal983.check = true := by decide +kernel
theorem terminal984_checked : terminal984.check = true := by decide +kernel
theorem terminal985_checked : terminal985.check = true := by decide +kernel
theorem terminal986_checked : terminal986.check = true := by decide +kernel
theorem terminal987_checked : terminal987.check = true := by decide +kernel
theorem terminal988_checked : terminal988.check = true := by decide +kernel
theorem terminal989_checked : terminal989.check = true := by decide +kernel
theorem terminal990_checked : terminal990.check = true := by decide +kernel
theorem terminal991_checked : terminal991.check = true := by decide +kernel
theorem terminal992_checked : terminal992.check = true := by decide +kernel
theorem terminals30_checked : terminals30.all Terminal.check = true := by
  simp only [terminals30, List.all_cons, List.all_nil, terminal961_checked, terminal962_checked, terminal963_checked, terminal964_checked, terminal965_checked, terminal966_checked, terminal967_checked, terminal968_checked, terminal969_checked, terminal970_checked, terminal971_checked, terminal972_checked, terminal973_checked, terminal974_checked, terminal975_checked, terminal976_checked, terminal977_checked, terminal978_checked, terminal979_checked, terminal980_checked, terminal981_checked, terminal982_checked, terminal983_checked, terminal984_checked, terminal985_checked, terminal986_checked, terminal987_checked, terminal988_checked, terminal989_checked, terminal990_checked, terminal991_checked, terminal992_checked, Bool.and_true]

end DiagonalRamsey.JointLeaf
