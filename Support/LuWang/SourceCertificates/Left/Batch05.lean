import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData
import Support.LuWang.SourceCertificateAssembly

/-! Independent left-certificate batch: original chunks 0204–0215. -/

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0204
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(45125000000000001 / 100000000000000000 : ℚ), (45137500000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (16354141160153 / 25000000000000 : ℚ)
  w := (7568600910317 / 5000000000000 : ℚ)
  center := (45131250000000001 / 100000000000000000 : ℚ)
  supportValue := (95252732910519 / 200000000000000 : ℚ)
  supportSlope := (-25203789881755867 / 10000000000000000 : ℚ)
  oldCenter := (95252732910519 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1083
  oldLo := (47550000000000003 / 100000000000000000 : ℚ)
  oldHi := (47600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1136]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10200 : Cell := { cellDefaults with
  r := (65495547237759 / 100000000000000 : ℚ)
  w := (7573974879269 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1082
  oldLo := (47600000000000003 / 100000000000000000 : ℚ)
  oldHi := (47650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1137]
}

def cell_10201 : Cell := { cellDefaults with
  domain := ⟨(45137500000000001 / 100000000000000000 : ℚ), (45143750000000001 / 100000000000000000 : ℚ)⟩
  r := (65495547237759 / 100000000000000 : ℚ)
  w := (7573974879269 / 5000000000000 : ℚ)
  center := (45140625000000001 / 100000000000000000 : ℚ)
  supportValue := (47602714214718533 / 100000000000000000 : ℚ)
  supportSlope := (-12592784139080493 / 5000000000000000 : ℚ)
  oldCenter := (47602714214718533 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1082
  oldHi := (47650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1136, piece_1137]
}

def cell_10202 : Cell := { cellDefaults with
  domain := ⟨(45143750000000001 / 100000000000000000 : ℚ), (45150000000000001 / 100000000000000000 : ℚ)⟩
  r := (65495547237759 / 100000000000000 : ℚ)
  w := (7573974879269 / 5000000000000 : ℚ)
  center := (45146875000000001 / 100000000000000000 : ℚ)
  supportValue := (9517395052564247 / 20000000000000000 : ℚ)
  supportSlope := (-629417114298203 / 250000000000000 : ℚ)
  oldCenter := (9517395052564247 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1082
  oldPieces := [piece_1136]
}

def cell_10203 : Cell := { cellDefaults with
  domain := ⟨(45150000000000001 / 100000000000000000 : ℚ), (45162500000000001 / 100000000000000000 : ℚ)⟩
  r := (13091205901591 / 20000000000000 : ℚ)
  w := (3028514037097 / 2000000000000 : ℚ)
  center := (45156250000000001 / 100000000000000000 : ℚ)
  supportValue := (9525807089184769 / 20000000000000000 : ℚ)
  supportSlope := (-12595232303218573 / 5000000000000000 : ℚ)
  oldCenter := (9525807089184769 / 20000000000000000 : ℚ)
  oldLo := (47600000000000003 / 100000000000000000 : ℚ)
  oldHi := (47650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1137]
}

def cell_10204 : Cell := { cellDefaults with
  domain := ⟨(45162500000000001 / 100000000000000000 : ℚ), (45175000000000001 / 100000000000000000 : ℚ)⟩
  r := (13091205901591 / 20000000000000 : ℚ)
  w := (3028514037097 / 2000000000000 : ℚ)
  center := (45168750000000001 / 100000000000000000 : ℚ)
  supportValue := (11899390941010489 / 25000000000000000 : ℚ)
  supportSlope := (-2516722173064423 / 1000000000000000 : ℚ)
  oldCenter := (11899390941010489 / 25000000000000000 : ℚ)
  oldHi := (47650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1136, piece_1137]
}

def cell_10205 : Cell := { cellDefaults with
  domain := ⟨(45175000000000001 / 100000000000000000 : ℚ), (45187500000000001 / 100000000000000000 : ℚ)⟩
  r := (13091205901591 / 20000000000000 : ℚ)
  w := (3028514037097 / 2000000000000 : ℚ)
  center := (45181250000000001 / 100000000000000000 : ℚ)
  supportValue := (2378305902277629 / 5000000000000000 : ℚ)
  supportSlope := (-2514284550122703 / 1000000000000000 : ℚ)
  oldCenter := (2378305902277629 / 5000000000000000 : ℚ)
  oldPieces := [piece_1136]
}

def cell_10206 : Cell := { cellDefaults with
  domain := ⟨(45187500000000001 / 100000000000000000 : ℚ), (45200000000000001 / 100000000000000000 : ℚ)⟩
  r := (13091205901591 / 20000000000000 : ℚ)
  w := (3028514037097 / 2000000000000 : ℚ)
  center := (45193750000000001 / 100000000000000000 : ℚ)
  supportValue := (2901287973051 / 6103515625000 : ℚ)
  supportSlope := (-12561308090330847 / 5000000000000000 : ℚ)
  oldCenter := (2901287973051 / 6103515625000 : ℚ)
  oldLo := (47500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1135, piece_1136]
}

def cell_10207 : Cell := { cellDefaults with
  domain := ⟨(45200000000000001 / 100000000000000000 : ℚ), (45212500000000001 / 100000000000000000 : ℚ)⟩
  center := (45206250000000001 / 100000000000000000 : ℚ)
  supportValue := (9513756730244629 / 20000000000000000 : ℚ)
  supportSlope := (-25129563241126363 / 10000000000000000 : ℚ)
  oldCenter := (9513756730244629 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1084
  oldPieces := [piece_1136]
}

def cell_10208 : Cell := { cellDefaults with
  domain := ⟨(45212500000000001 / 100000000000000000 : ℚ), (45225000000000001 / 100000000000000000 : ℚ)⟩
  center := (45218750000000001 / 100000000000000000 : ℚ)
  supportValue := (23768692553689527 / 50000000000000000 : ℚ)
  supportSlope := (-156929712844589 / 62500000000000 : ℚ)
  oldCenter := (23768692553689527 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1084
  oldLo := (47500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1135, piece_1136]
}

def cell_10209 : Cell := { cellDefaults with
  domain := ⟨(45225000000000001 / 100000000000000000 : ℚ), (90470810055865921 / 200000000000000000 : ℚ)⟩
  center := (180920810055865923 / 400000000000000000 : ℚ)
  supportValue := (593858034898467 / 1250000000000000 : ℚ)
  supportSlope := (-2508564663139307 / 1000000000000000 : ℚ)
  oldCenter := (593858034898467 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1084
  oldLo := (2966131284916201 / 6250000000000000 : ℚ)
  oldHi := (47550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1134, piece_1135]
}

def cell_10210 : Cell := { cellDefaults with
  domain := ⟨(90470810055865921 / 200000000000000000 : ℚ), (141393156424581 / 312500000000000 : ℚ)⟩
  center := (180962430167597761 / 400000000000000000 : ℚ)
  supportValue := (4748251589326247 / 10000000000000000 : ℚ)
  supportSlope := (-5013785397359543 / 2000000000000000 : ℚ)
  oldCenter := (4748251589326247 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1084
  oldLo := (2966131284916201 / 6250000000000000 : ℚ)
  oldHi := (47500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1134]
}

def cell_10211 : Cell := { cellDefaults with
  domain := ⟨(141393156424581 / 312500000000000 : ℚ), (45250000000000001 / 100000000000000000 : ℚ)⟩
  center := (90495810055865921 / 200000000000000000 : ℚ)
  supportValue := (23732109100637233 / 50000000000000000 : ℚ)
  supportSlope := (-1002119199019147 / 400000000000000 : ℚ)
  oldCenter := (23732109100637233 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1085
  oldLo := (2966131284916201 / 6250000000000000 : ℚ)
  oldHi := (47500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1134]
}

def cell_10212 : Cell := { cellDefaults with
  domain := ⟨(45250000000000001 / 100000000000000000 : ℚ), (45262500000000001 / 100000000000000000 : ℚ)⟩
  r := (2043036027473 / 3125000000000 : ℚ)
  w := (605273785007 / 400000000000 : ℚ)
  center := (45256250000000001 / 100000000000000000 : ℚ)
  supportValue := (1187716929070903 / 2500000000000000 : ℚ)
  supportSlope := (-2507050916305431 / 1000000000000000 : ℚ)
  oldCenter := (1187716929070903 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1086
  oldLo := (2966131284916201 / 6250000000000000 : ℚ)
  oldHi := (47550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1134, piece_1135]
}

def cell_10213 : Cell := { cellDefaults with
  domain := ⟨(45262500000000001 / 100000000000000000 : ℚ), (45275000000000001 / 100000000000000000 : ℚ)⟩
  r := (2043036027473 / 3125000000000 : ℚ)
  w := (605273785007 / 400000000000 : ℚ)
  center := (45268750000000001 / 100000000000000000 : ℚ)
  supportValue := (47477351507386123 / 100000000000000000 : ℚ)
  supportSlope := (-19569418694243 / 7812500000000 : ℚ)
  oldCenter := (47477351507386123 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1086
  oldLo := (2966131284916201 / 6250000000000000 : ℚ)
  oldHi := (47500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1134]
}

def cell_10214 : Cell := { cellDefaults with
  domain := ⟨(45275000000000001 / 100000000000000000 : ℚ), (45287500000000001 / 100000000000000000 : ℚ)⟩
  r := (2043036027473 / 3125000000000 : ℚ)
  w := (605273785007 / 400000000000 : ℚ)
  center := (45281250000000001 / 100000000000000000 : ℚ)
  supportValue := (4744605628271383 / 10000000000000000 : ℚ)
  supportSlope := (-12513086251373373 / 5000000000000000 : ℚ)
  oldCenter := (4744605628271383 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1086
  oldLo := (47400000000000003 / 100000000000000000 : ℚ)
  oldHi := (47500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1132, piece_1133, piece_1134]
}

def cell_10215 : Cell := { cellDefaults with
  domain := ⟨(45287500000000001 / 100000000000000000 : ℚ), (45300000000000001 / 100000000000000000 : ℚ)⟩
  r := (2043036027473 / 3125000000000 : ℚ)
  w := (605273785007 / 400000000000 : ℚ)
  center := (45293750000000001 / 100000000000000000 : ℚ)
  supportValue := (948295743604793 / 2000000000000000 : ℚ)
  supportSlope := (-12500921434734913 / 5000000000000000 : ℚ)
  oldCenter := (948295743604793 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1086
  oldLo := (47350000000000003 / 100000000000000000 : ℚ)
  oldHi := (47450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1131, piece_1132]
}

def cell_10216 : Cell := { cellDefaults with
  domain := ⟨(45300000000000001 / 100000000000000000 : ℚ), (45312500000000001 / 100000000000000000 : ℚ)⟩
  r := (32668896103541 / 50000000000000 : ℚ)
  w := (15126499087451 / 10000000000000 : ℚ)
  center := (45306250000000001 / 100000000000000000 : ℚ)
  supportValue := (2372435786468497 / 5000000000000000 : ℚ)
  supportSlope := (-12506178874351903 / 5000000000000000 : ℚ)
  oldCenter := (2372435786468497 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1087
  oldLo := (47400000000000003 / 100000000000000000 : ℚ)
  oldHi := (47500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1132, piece_1133, piece_1134]
}

def cell_10217 : Cell := { cellDefaults with
  domain := ⟨(45312500000000001 / 100000000000000000 : ℚ), (45325000000000001 / 100000000000000000 : ℚ)⟩
  r := (32668896103541 / 50000000000000 : ℚ)
  w := (15126499087451 / 10000000000000 : ℚ)
  center := (45318750000000001 / 100000000000000000 : ℚ)
  supportValue := (47417463098237367 / 100000000000000000 : ℚ)
  supportSlope := (-6247119032065651 / 2500000000000000 : ℚ)
  oldCenter := (47417463098237367 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1087
  oldLo := (47400000000000003 / 100000000000000000 : ℚ)
  oldHi := (47450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1132]
}

def cell_10218 : Cell := { cellDefaults with
  domain := ⟨(45325000000000001 / 100000000000000000 : ℚ), (45337500000000001 / 100000000000000000 : ℚ)⟩
  r := (32668896103541 / 50000000000000 : ℚ)
  w := (15126499087451 / 10000000000000 : ℚ)
  center := (45331250000000001 / 100000000000000000 : ℚ)
  supportValue := (4738624042081121 / 10000000000000000 : ℚ)
  supportSlope := (-156051103095467 / 62500000000000 : ℚ)
  oldCenter := (4738624042081121 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1087
  oldLo := (47350000000000003 / 100000000000000000 : ℚ)
  oldHi := (47450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1131, piece_1132]
}

def cell_10219 : Cell := { cellDefaults with
  domain := ⟨(45337500000000001 / 100000000000000000 : ℚ), (45350000000000001 / 100000000000000000 : ℚ)⟩
  r := (32668896103541 / 50000000000000 : ℚ)
  w := (15126499087451 / 10000000000000 : ℚ)
  center := (45343750000000001 / 100000000000000000 : ℚ)
  supportValue := (2367752331687063 / 5000000000000000 : ℚ)
  supportSlope := (-12471958514272963 / 5000000000000000 : ℚ)
  oldCenter := (2367752331687063 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1087
  oldLo := (47300000000000003 / 100000000000000000 : ℚ)
  oldHi := (47400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1130, piece_1131]
}

def cell_10220 : Cell := { cellDefaults with
  domain := ⟨(45350000000000001 / 100000000000000000 : ℚ), (45362500000000001 / 100000000000000000 : ℚ)⟩
  r := (65298484572883 / 100000000000000 : ℚ)
  w := (7560582076013 / 5000000000000 : ℚ)
  center := (45356250000000001 / 100000000000000000 : ℚ)
  supportValue := (2369444875264167 / 5000000000000000 : ℚ)
  supportSlope := (-2495440411476757 / 1000000000000000 : ℚ)
  oldCenter := (2369444875264167 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1088
  oldLo := (47350000000000003 / 100000000000000000 : ℚ)
  oldHi := (47450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1131, piece_1132]
}

def cell_10221 : Cell := { cellDefaults with
  domain := ⟨(45362500000000001 / 100000000000000000 : ℚ), (45375000000000001 / 100000000000000000 : ℚ)⟩
  r := (65298484572883 / 100000000000000 : ℚ)
  w := (7560582076013 / 5000000000000 : ℚ)
  center := (45368750000000001 / 100000000000000000 : ℚ)
  supportValue := (2367886006762203 / 5000000000000000 : ℚ)
  supportSlope := (-24930171010684177 / 10000000000000000 : ℚ)
  oldCenter := (2367886006762203 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1088
  oldLo := (47300000000000003 / 100000000000000000 : ℚ)
  oldHi := (47400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1130, piece_1131]
}

def cell_10222 : Cell := { cellDefaults with
  domain := ⟨(45375000000000001 / 100000000000000000 : ℚ), (45387500000000001 / 100000000000000000 : ℚ)⟩
  r := (65298484572883 / 100000000000000 : ℚ)
  w := (7560582076013 / 5000000000000 : ℚ)
  center := (45381250000000001 / 100000000000000000 : ℚ)
  supportValue := (4732656975803939 / 10000000000000000 : ℚ)
  supportSlope := (-4981703752379829 / 2000000000000000 : ℚ)
  oldCenter := (4732656975803939 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1088
  oldLo := (47300000000000003 / 100000000000000000 : ℚ)
  oldHi := (47350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1130]
}

def cell_10223 : Cell := { cellDefaults with
  domain := ⟨(45387500000000001 / 100000000000000000 : ℚ), (45400000000000001 / 100000000000000000 : ℚ)⟩
  r := (65298484572883 / 100000000000000 : ℚ)
  w := (7560582076013 / 5000000000000 : ℚ)
  center := (45393750000000001 / 100000000000000000 : ℚ)
  supportValue := (472954496578889 / 1000000000000000 : ℚ)
  supportSlope := (-1244309419769607 / 500000000000000 : ℚ)
  oldCenter := (472954496578889 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1088
  oldLo := (47250000000000003 / 100000000000000000 : ℚ)
  oldHi := (47350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1129, piece_1130]
}

def cell_10224 : Cell := { cellDefaults with
  domain := ⟨(45400000000000001 / 100000000000000000 : ℚ), (36330000000000001 / 80000000000000000 : ℚ)⟩
  r := (32629614508009 / 50000000000000 : ℚ)
  w := (118092494633 / 78125000000 : ℚ)
  center := (363250000000000009 / 800000000000000000 : ℚ)
  supportValue := (946584540585123 / 2000000000000000 : ℚ)
  supportSlope := (-2489541272664603 / 1000000000000000 : ℚ)
  oldCenter := (946584540585123 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1089
  oldLo := (47300000000000003 / 100000000000000000 : ℚ)
  oldHi := (47350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1130]
}

def cell_10225 : Cell := { cellDefaults with
  domain := ⟨(36330000000000001 / 80000000000000000 : ℚ), (90850000000000003 / 200000000000000000 : ℚ)⟩
  r := (32629614508009 / 50000000000000 : ℚ)
  w := (118092494633 / 78125000000 : ℚ)
  center := (363350000000000011 / 800000000000000000 : ℚ)
  supportValue := (1182453102019529 / 2500000000000000 : ℚ)
  supportSlope := (-24872485426996107 / 10000000000000000 : ℚ)
  oldCenter := (1182453102019529 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1089
  oldLo := (47250000000000003 / 100000000000000000 : ℚ)
  oldHi := (47350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1129, piece_1130]
}

def cell_10226 : Cell := { cellDefaults with
  domain := ⟨(90850000000000003 / 200000000000000000 : ℚ), (181750000000000007 / 400000000000000000 : ℚ)⟩
  r := (32629614508009 / 50000000000000 : ℚ)
  w := (118092494633 / 78125000000 : ℚ)
  center := (363450000000000013 / 800000000000000000 : ℚ)
  supportValue := (1181676158154889 / 2500000000000000 : ℚ)
  supportSlope := (-2484865588063329 / 1000000000000000 : ℚ)
  oldCenter := (1181676158154889 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1089
  oldLo := (47250000000000003 / 100000000000000000 : ℚ)
  oldHi := (47300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1129]
}

def cell_10227 : Cell := { cellDefaults with
  domain := ⟨(181750000000000007 / 400000000000000000 : ℚ), (22725000000000001 / 50000000000000000 : ℚ)⟩
  r := (32629614508009 / 50000000000000 : ℚ)
  w := (118092494633 / 78125000000 : ℚ)
  center := (72710000000000003 / 160000000000000000 : ℚ)
  supportValue := (2361799909452587 / 5000000000000000 : ℚ)
  supportSlope := (-24828660250415027 / 10000000000000000 : ℚ)
  oldCenter := (2361799909452587 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1089
  oldLo := (47200000000000003 / 100000000000000000 : ℚ)
  oldHi := (47300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1128, piece_1129]
}

def cell_10228 : Cell := { cellDefaults with
  domain := ⟨(22725000000000001 / 50000000000000000 : ℚ), (22731250000000001 / 50000000000000000 : ℚ)⟩
  r := (16305006371621 / 25000000000000 : ℚ)
  w := (15110526127753 / 10000000000000 : ℚ)
  center := (22728125000000001 / 50000000000000000 : ℚ)
  supportValue := (9453939724911421 / 20000000000000000 : ℚ)
  supportSlope := (-24835591032479343 / 10000000000000000 : ℚ)
  oldCenter := (9453939724911421 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1090
  oldLo := (47250000000000003 / 100000000000000000 : ℚ)
  oldHi := (47300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1129]
}

def cell_10229 : Cell := { cellDefaults with
  domain := ⟨(22731250000000001 / 50000000000000000 : ℚ), (22737500000000001 / 50000000000000000 : ℚ)⟩
  r := (16305006371621 / 25000000000000 : ℚ)
  w := (15110526127753 / 10000000000000 : ℚ)
  center := (22734375000000001 / 50000000000000000 : ℚ)
  supportValue := (92263022632483 / 195312500000000 : ℚ)
  supportSlope := (-496299965043967 / 200000000000000 : ℚ)
  oldCenter := (92263022632483 / 195312500000000 : ℚ)
  newCoefficients := coefficients_1090
  oldLo := (47200000000000003 / 100000000000000000 : ℚ)
  oldHi := (47300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1128, piece_1129]
}

def cell_10230 : Cell := { cellDefaults with
  domain := ⟨(22737500000000001 / 50000000000000000 : ℚ), (22743750000000001 / 50000000000000000 : ℚ)⟩
  r := (16305006371621 / 25000000000000 : ℚ)
  w := (15110526127753 / 10000000000000 : ℚ)
  center := (22740625000000001 / 50000000000000000 : ℚ)
  supportValue := (1475239514071317 / 3125000000000000 : ℚ)
  supportSlope := (-247908859100221 / 100000000000000 : ℚ)
  oldCenter := (1475239514071317 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1090
  oldLo := (47150000000000003 / 100000000000000000 : ℚ)
  oldHi := (47250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1127, piece_1128]
}

def cell_10231 : Cell := { cellDefaults with
  domain := ⟨(22743750000000001 / 50000000000000000 : ℚ), (22750000000000001 / 50000000000000000 : ℚ)⟩
  r := (16305006371621 / 25000000000000 : ℚ)
  w := (15110526127753 / 10000000000000 : ℚ)
  center := (22746875000000001 / 50000000000000000 : ℚ)
  supportValue := (1179417200877779 / 2500000000000000 : ℚ)
  supportSlope := (-619236085716679 / 250000000000000 : ℚ)
  oldCenter := (1179417200877779 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1090
  oldLo := (47150000000000003 / 100000000000000000 : ℚ)
  oldHi := (47200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1127]
}

def cell_10232 : Cell := { cellDefaults with
  domain := ⟨(22750000000000001 / 50000000000000000 : ℚ), (22756250000000001 / 50000000000000000 : ℚ)⟩
  r := (65180873256137 / 100000000000000 : ℚ)
  w := (15105223682917 / 10000000000000 : ℚ)
  center := (22753125000000001 / 50000000000000000 : ℚ)
  supportValue := (2950644709477631 / 6250000000000000 : ℚ)
  supportSlope := (-24777229842820603 / 10000000000000000 : ℚ)
  oldCenter := (2950644709477631 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1091
  oldLo := (47150000000000003 / 100000000000000000 : ℚ)
  oldHi := (47250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1127, piece_1128]
}

def cell_10233 : Cell := { cellDefaults with
  domain := ⟨(22756250000000001 / 50000000000000000 : ℚ), (22762500000000001 / 50000000000000000 : ℚ)⟩
  r := (65180873256137 / 100000000000000 : ℚ)
  w := (15105223682917 / 10000000000000 : ℚ)
  center := (22759375000000001 / 50000000000000000 : ℚ)
  supportValue := (2358967799185927 / 5000000000000000 : ℚ)
  supportSlope := (-618911469837613 / 250000000000000 : ℚ)
  oldCenter := (2358967799185927 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1091
  oldLo := (47150000000000003 / 100000000000000000 : ℚ)
  oldHi := (47200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1127]
}

def cell_10234 : Cell := { cellDefaults with
  domain := ⟨(22762500000000001 / 50000000000000000 : ℚ), (22768750000000001 / 50000000000000000 : ℚ)⟩
  r := (65180873256137 / 100000000000000 : ℚ)
  w := (15105223682917 / 10000000000000 : ℚ)
  center := (22765625000000001 / 50000000000000000 : ℚ)
  supportValue := (942968534222341 / 2000000000000000 : ℚ)
  supportSlope := (-6183415206613141 / 2500000000000000 : ℚ)
  oldCenter := (942968534222341 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1091
  oldLo := (47100000000000003 / 100000000000000000 : ℚ)
  oldHi := (47200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1126, piece_1127]
}

def cell_10235 : Cell := { cellDefaults with
  domain := ⟨(22768750000000001 / 50000000000000000 : ℚ), (22775000000000001 / 50000000000000000 : ℚ)⟩
  r := (65180873256137 / 100000000000000 : ℚ)
  w := (15105223682917 / 10000000000000 : ℚ)
  center := (22771875000000001 / 50000000000000000 : ℚ)
  supportValue := (942350445241821 / 2000000000000000 : ℚ)
  supportSlope := (-24710088024262333 / 10000000000000000 : ℚ)
  oldCenter := (942350445241821 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1091
  oldLo := (47100000000000003 / 100000000000000000 : ℚ)
  oldHi := (47150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1126]
}

def cell_10236 : Cell := { cellDefaults with
  domain := ⟨(22775000000000001 / 50000000000000000 : ℚ), (22781250000000001 / 50000000000000000 : ℚ)⟩
  r := (16285443331581 / 25000000000000 : ℚ)
  w := (15099932964687 / 10000000000000 : ℚ)
  center := (22778125000000001 / 50000000000000000 : ℚ)
  supportValue := (23575536052605653 / 50000000000000000 : ℚ)
  supportSlope := (-2472004526069327 / 1000000000000000 : ℚ)
  oldCenter := (23575536052605653 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1092
  oldLo := (47100000000000003 / 100000000000000000 : ℚ)
  oldHi := (47200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1126, piece_1127]
}

def cell_10237 : Cell := { cellDefaults with
  domain := ⟨(22781250000000001 / 50000000000000000 : ℚ), (22787500000000001 / 50000000000000000 : ℚ)⟩
  r := (16285443331581 / 25000000000000 : ℚ)
  w := (15099932964687 / 10000000000000 : ℚ)
  center := (22784375000000001 / 50000000000000000 : ℚ)
  supportValue := (2356009208294459 / 5000000000000000 : ℚ)
  supportSlope := (-6174285936073609 / 2500000000000000 : ℚ)
  oldCenter := (2356009208294459 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1092
  oldLo := (47100000000000003 / 100000000000000000 : ℚ)
  oldHi := (47150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1126]
}

def cell_10238 : Cell := { cellDefaults with
  domain := ⟨(22787500000000001 / 50000000000000000 : ℚ), (22793750000000001 / 50000000000000000 : ℚ)⟩
  r := (16285443331581 / 25000000000000 : ℚ)
  w := (15099932964687 / 10000000000000 : ℚ)
  center := (22790625000000001 / 50000000000000000 : ℚ)
  supportValue := (11772331559267589 / 25000000000000000 : ℚ)
  supportSlope := (-246766276540189 / 100000000000000 : ℚ)
  oldCenter := (11772331559267589 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1092
  oldLo := (47050000000000003 / 100000000000000000 : ℚ)
  oldHi := (47150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1125, piece_1126]
}

def cell_10239 : Cell := { cellDefaults with
  domain := ⟨(22793750000000001 / 50000000000000000 : ℚ), (22800000000000001 / 50000000000000000 : ℚ)⟩
  r := (16285443331581 / 25000000000000 : ℚ)
  w := (15099932964687 / 10000000000000 : ℚ)
  center := (22796875000000001 / 50000000000000000 : ℚ)
  supportValue := (117646239435791 / 250000000000000 : ℚ)
  supportSlope := (-493052601793309 / 200000000000000 : ℚ)
  oldCenter := (117646239435791 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1092
  oldLo := (47000000000000003 / 100000000000000000 : ℚ)
  oldHi := (47100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1124, piece_1125]
}

def cell_10240 : Cell := { cellDefaults with
  domain := ⟨(22800000000000001 / 50000000000000000 : ℚ), (22806250000000001 / 50000000000000000 : ℚ)⟩
  r := (65102724709579 / 100000000000000 : ℚ)
  w := (754732623011 / 500000000000 : ℚ)
  center := (22803125000000001 / 50000000000000000 : ℚ)
  supportValue := (4709197174065577 / 10000000000000000 : ℚ)
  supportSlope := (-6165763686234449 / 2500000000000000 : ℚ)
  oldCenter := (4709197174065577 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1093
  oldLo := (47050000000000003 / 100000000000000000 : ℚ)
  oldHi := (47150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1125, piece_1126]
}

def cell_10241 : Cell := { cellDefaults with
  domain := ⟨(22806250000000001 / 50000000000000000 : ℚ), (22812500000000001 / 50000000000000000 : ℚ)⟩
  r := (65102724709579 / 100000000000000 : ℚ)
  w := (754732623011 / 500000000000 : ℚ)
  center := (22809375000000001 / 50000000000000000 : ℚ)
  supportValue := (588264467804883 / 1250000000000000 : ℚ)
  supportSlope := (-1231954097063781 / 500000000000000 : ℚ)
  oldCenter := (588264467804883 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1093
  oldLo := (47000000000000003 / 100000000000000000 : ℚ)
  oldHi := (47100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1124, piece_1125]
}

def cell_10242 : Cell := { cellDefaults with
  domain := ⟨(22812500000000001 / 50000000000000000 : ℚ), (22818750000000001 / 50000000000000000 : ℚ)⟩
  r := (65102724709579 / 100000000000000 : ℚ)
  w := (754732623011 / 500000000000 : ℚ)
  center := (22815625000000001 / 50000000000000000 : ℚ)
  supportValue := (47030370597130033 / 100000000000000000 : ℚ)
  supportSlope := (-61546868955209 / 25000000000000 : ℚ)
  oldCenter := (47030370597130033 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1093
  oldLo := (47000000000000003 / 100000000000000000 : ℚ)
  oldHi := (47050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1124]
}

def cell_10243 : Cell := { cellDefaults with
  domain := ⟨(22818750000000001 / 50000000000000000 : ℚ), (22825000000000001 / 50000000000000000 : ℚ)⟩
  r := (65102724709579 / 100000000000000 : ℚ)
  w := (754732623011 / 500000000000 : ℚ)
  center := (22821875000000001 / 50000000000000000 : ℚ)
  supportValue := (9399922744521293 / 20000000000000000 : ℚ)
  supportSlope := (-12297928874653863 / 5000000000000000 : ℚ)
  oldCenter := (9399922744521293 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1093
  oldLo := (46950000000000003 / 100000000000000000 : ℚ)
  oldHi := (47050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1123, piece_1124]
}

def cell_10244 : Cell := { cellDefaults with
  domain := ⟨(22825000000000001 / 50000000000000000 : ℚ), (22831250000000001 / 50000000000000000 : ℚ)⟩
  r := (32531863906349 / 50000000000000 : ℚ)
  w := (15089382247791 / 10000000000000 : ℚ)
  center := (22828125000000001 / 50000000000000000 : ℚ)
  supportValue := (2351650746092419 / 5000000000000000 : ℚ)
  supportSlope := (-2460585675075677 / 1000000000000000 : ℚ)
  oldCenter := (2351650746092419 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1094
  oldLo := (47000000000000003 / 100000000000000000 : ℚ)
  oldHi := (47050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1124]
}

def cell_10245 : Cell := { cellDefaults with
  domain := ⟨(22831250000000001 / 50000000000000000 : ℚ), (22837500000000001 / 50000000000000000 : ℚ)⟩
  r := (32531863906349 / 50000000000000 : ℚ)
  w := (15089382247791 / 10000000000000 : ℚ)
  center := (22834375000000001 / 50000000000000000 : ℚ)
  supportValue := (47002274272181127 / 100000000000000000 : ℚ)
  supportSlope := (-24582351597048913 / 10000000000000000 : ℚ)
  oldCenter := (47002274272181127 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1094
  oldLo := (46950000000000003 / 100000000000000000 : ℚ)
  oldHi := (47050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1123, piece_1124]
}

def cell_10246 : Cell := { cellDefaults with
  domain := ⟨(22837500000000001 / 50000000000000000 : ℚ), (22843750000000001 / 50000000000000000 : ℚ)⟩
  r := (32531863906349 / 50000000000000 : ℚ)
  w := (15089382247791 / 10000000000000 : ℚ)
  center := (22840625000000001 / 50000000000000000 : ℚ)
  supportValue := (1174288957650893 / 2500000000000000 : ℚ)
  supportSlope := (-2455993992979799 / 1000000000000000 : ℚ)
  oldCenter := (1174288957650893 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1094
  oldLo := (46950000000000003 / 100000000000000000 : ℚ)
  oldHi := (47000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1123]
}

def cell_10247 : Cell := { cellDefaults with
  domain := ⟨(22843750000000001 / 50000000000000000 : ℚ), (22850000000000001 / 50000000000000000 : ℚ)⟩
  r := (32531863906349 / 50000000000000 : ℚ)
  w := (15089382247791 / 10000000000000 : ℚ)
  center := (22846875000000001 / 50000000000000000 : ℚ)
  supportValue := (4694087220887709 / 10000000000000000 : ℚ)
  supportSlope := (-2453927806119971 / 1000000000000000 : ℚ)
  oldCenter := (4694087220887709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1094
  oldLo := (4690502793296089 / 10000000000000000 : ℚ)
  oldHi := (47000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1122, piece_1123]
}

def cell_10248 : Cell := { cellDefaults with
  domain := ⟨(22850000000000001 / 50000000000000000 : ℚ), (22856250000000001 / 50000000000000000 : ℚ)⟩
  r := (8128097903001 / 12500000000000 : ℚ)
  w := (15084123482809 / 10000000000000 : ℚ)
  center := (22853125000000001 / 50000000000000000 : ℚ)
  supportValue := (46974196833061743 / 100000000000000000 : ℚ)
  supportSlope := (-24547089006752287 / 10000000000000000 : ℚ)
  oldCenter := (46974196833061743 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1095
  oldLo := (46950000000000003 / 100000000000000000 : ℚ)
  oldHi := (47000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1123]
}

def cell_10249 : Cell := { cellDefaults with
  domain := ⟨(22856250000000001 / 50000000000000000 : ℚ), (22862500000000001 / 50000000000000000 : ℚ)⟩
  r := (8128097903001 / 12500000000000 : ℚ)
  w := (15084123482809 / 10000000000000 : ℚ)
  center := (22859375000000001 / 50000000000000000 : ℚ)
  supportValue := (23471763795726863 / 50000000000000000 : ℚ)
  supportSlope := (-12262905828199777 / 5000000000000000 : ℚ)
  oldCenter := (23471763795726863 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1095
  oldLo := (4690502793296089 / 10000000000000000 : ℚ)
  oldHi := (47000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1122, piece_1123]
}

theorem check_10200 : cell_10200.check = true := by
  decide +kernel

theorem check_10201 : cell_10201.check = true := by
  decide +kernel

theorem check_10202 : cell_10202.check = true := by
  decide +kernel

theorem check_10203 : cell_10203.check = true := by
  decide +kernel

theorem check_10204 : cell_10204.check = true := by
  decide +kernel

theorem check_10205 : cell_10205.check = true := by
  decide +kernel

theorem check_10206 : cell_10206.check = true := by
  decide +kernel

theorem check_10207 : cell_10207.check = true := by
  decide +kernel

theorem check_10208 : cell_10208.check = true := by
  decide +kernel

theorem check_10209 : cell_10209.check = true := by
  decide +kernel

theorem check_10210 : cell_10210.check = true := by
  decide +kernel

theorem check_10211 : cell_10211.check = true := by
  decide +kernel

theorem check_10212 : cell_10212.check = true := by
  decide +kernel

theorem check_10213 : cell_10213.check = true := by
  decide +kernel

theorem check_10214 : cell_10214.check = true := by
  decide +kernel

theorem check_10215 : cell_10215.check = true := by
  decide +kernel

theorem check_10216 : cell_10216.check = true := by
  decide +kernel

theorem check_10217 : cell_10217.check = true := by
  decide +kernel

theorem check_10218 : cell_10218.check = true := by
  decide +kernel

theorem check_10219 : cell_10219.check = true := by
  decide +kernel

theorem check_10220 : cell_10220.check = true := by
  decide +kernel

theorem check_10221 : cell_10221.check = true := by
  decide +kernel

theorem check_10222 : cell_10222.check = true := by
  decide +kernel

theorem check_10223 : cell_10223.check = true := by
  decide +kernel

theorem check_10224 : cell_10224.check = true := by
  decide +kernel

theorem check_10225 : cell_10225.check = true := by
  decide +kernel

theorem check_10226 : cell_10226.check = true := by
  decide +kernel

theorem check_10227 : cell_10227.check = true := by
  decide +kernel

theorem check_10228 : cell_10228.check = true := by
  decide +kernel

theorem check_10229 : cell_10229.check = true := by
  decide +kernel

theorem check_10230 : cell_10230.check = true := by
  decide +kernel

theorem check_10231 : cell_10231.check = true := by
  decide +kernel

theorem check_10232 : cell_10232.check = true := by
  decide +kernel

theorem check_10233 : cell_10233.check = true := by
  decide +kernel

theorem check_10234 : cell_10234.check = true := by
  decide +kernel

theorem check_10235 : cell_10235.check = true := by
  decide +kernel

theorem check_10236 : cell_10236.check = true := by
  decide +kernel

theorem check_10237 : cell_10237.check = true := by
  decide +kernel

theorem check_10238 : cell_10238.check = true := by
  decide +kernel

theorem check_10239 : cell_10239.check = true := by
  decide +kernel

theorem check_10240 : cell_10240.check = true := by
  decide +kernel

theorem check_10241 : cell_10241.check = true := by
  decide +kernel

theorem check_10242 : cell_10242.check = true := by
  decide +kernel

theorem check_10243 : cell_10243.check = true := by
  decide +kernel

theorem check_10244 : cell_10244.check = true := by
  decide +kernel

theorem check_10245 : cell_10245.check = true := by
  decide +kernel

theorem check_10246 : cell_10246.check = true := by
  decide +kernel

theorem check_10247 : cell_10247.check = true := by
  decide +kernel

theorem check_10248 : cell_10248.check = true := by
  decide +kernel

theorem check_10249 : cell_10249.check = true := by
  decide +kernel

def cells : List Cell := [cell_10200, cell_10201, cell_10202, cell_10203, cell_10204, cell_10205, cell_10206, cell_10207, cell_10208, cell_10209, cell_10210, cell_10211, cell_10212, cell_10213, cell_10214, cell_10215, cell_10216, cell_10217, cell_10218, cell_10219, cell_10220, cell_10221, cell_10222, cell_10223, cell_10224, cell_10225, cell_10226, cell_10227, cell_10228, cell_10229, cell_10230, cell_10231, cell_10232, cell_10233, cell_10234, cell_10235, cell_10236, cell_10237, cell_10238, cell_10239, cell_10240, cell_10241, cell_10242, cell_10243, cell_10244, cell_10245, cell_10246, cell_10247, cell_10248, cell_10249]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10200, check_10201, check_10202, check_10203, check_10204, check_10205, check_10206, check_10207, check_10208, check_10209, check_10210, check_10211, check_10212, check_10213, check_10214, check_10215, check_10216, check_10217, check_10218, check_10219, check_10220, check_10221, check_10222, check_10223, check_10224, check_10225, check_10226, check_10227, check_10228, check_10229, check_10230, check_10231, check_10232, check_10233, check_10234, check_10235, check_10236, check_10237, check_10238, check_10239, check_10240, check_10241, check_10242, check_10243, check_10244, check_10245, check_10246, check_10247, check_10248, check_10249, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0204

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0204
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0204
open AnalyticBounds.ExpressionCertificate

theorem linked_10200 : Linked cell_10200 pieces := by
  link_source cell_10200 with piece_1082 using piece_1082_mem, piece_1137_mem

theorem linked_10201 : Linked cell_10201 pieces := by
  link_source cell_10201 with piece_1082 using piece_1082_mem, ⟨piece_1136_mem, piece_1137_mem⟩

theorem linked_10202 : Linked cell_10202 pieces := by
  link_source cell_10202 with piece_1082 using piece_1082_mem, piece_1136_mem

theorem linked_10203 : Linked cell_10203 pieces := by
  link_source cell_10203 with piece_1083 using piece_1083_mem, piece_1137_mem

theorem linked_10204 : Linked cell_10204 pieces := by
  link_source cell_10204 with piece_1083 using piece_1083_mem, ⟨piece_1136_mem, piece_1137_mem⟩

theorem linked_10205 : Linked cell_10205 pieces := by
  link_source cell_10205 with piece_1083 using piece_1083_mem, piece_1136_mem

theorem linked_10206 : Linked cell_10206 pieces := by
  link_source cell_10206 with piece_1083 using piece_1083_mem, ⟨piece_1135_mem, piece_1136_mem⟩

theorem linked_10207 : Linked cell_10207 pieces := by
  link_source cell_10207 with piece_1084 using piece_1084_mem, piece_1136_mem

theorem linked_10208 : Linked cell_10208 pieces := by
  link_source cell_10208 with piece_1084 using piece_1084_mem, ⟨piece_1135_mem, piece_1136_mem⟩

theorem linked_10209 : Linked cell_10209 pieces := by
  link_source cell_10209 with piece_1084 using piece_1084_mem, ⟨piece_1134_mem, piece_1135_mem⟩

theorem linked_10210 : Linked cell_10210 pieces := by
  link_source cell_10210 with piece_1084 using piece_1084_mem, piece_1134_mem

theorem linked_10211 : Linked cell_10211 pieces := by
  link_source cell_10211 with piece_1085 using piece_1085_mem, piece_1134_mem

theorem linked_10212 : Linked cell_10212 pieces := by
  link_source cell_10212 with piece_1086 using piece_1086_mem, ⟨piece_1134_mem, piece_1135_mem⟩

theorem linked_10213 : Linked cell_10213 pieces := by
  link_source cell_10213 with piece_1086 using piece_1086_mem, piece_1134_mem

theorem linked_10214 : Linked cell_10214 pieces := by
  link_source cell_10214 with piece_1086 using piece_1086_mem, ⟨piece_1132_mem, ⟨piece_1133_mem, piece_1134_mem⟩⟩

theorem linked_10215 : Linked cell_10215 pieces := by
  link_source cell_10215 with piece_1086 using piece_1086_mem, ⟨piece_1131_mem, piece_1132_mem⟩

theorem linked_10216 : Linked cell_10216 pieces := by
  link_source cell_10216 with piece_1087 using piece_1087_mem, ⟨piece_1132_mem, ⟨piece_1133_mem, piece_1134_mem⟩⟩

theorem linked_10217 : Linked cell_10217 pieces := by
  link_source cell_10217 with piece_1087 using piece_1087_mem, piece_1132_mem

theorem linked_10218 : Linked cell_10218 pieces := by
  link_source cell_10218 with piece_1087 using piece_1087_mem, ⟨piece_1131_mem, piece_1132_mem⟩

theorem linked_10219 : Linked cell_10219 pieces := by
  link_source cell_10219 with piece_1087 using piece_1087_mem, ⟨piece_1130_mem, piece_1131_mem⟩

theorem linked_10220 : Linked cell_10220 pieces := by
  link_source cell_10220 with piece_1088 using piece_1088_mem, ⟨piece_1131_mem, piece_1132_mem⟩

theorem linked_10221 : Linked cell_10221 pieces := by
  link_source cell_10221 with piece_1088 using piece_1088_mem, ⟨piece_1130_mem, piece_1131_mem⟩

theorem linked_10222 : Linked cell_10222 pieces := by
  link_source cell_10222 with piece_1088 using piece_1088_mem, piece_1130_mem

theorem linked_10223 : Linked cell_10223 pieces := by
  link_source cell_10223 with piece_1088 using piece_1088_mem, ⟨piece_1129_mem, piece_1130_mem⟩

theorem linked_10224 : Linked cell_10224 pieces := by
  link_source cell_10224 with piece_1089 using piece_1089_mem, piece_1130_mem

theorem linked_10225 : Linked cell_10225 pieces := by
  link_source cell_10225 with piece_1089 using piece_1089_mem, ⟨piece_1129_mem, piece_1130_mem⟩

theorem linked_10226 : Linked cell_10226 pieces := by
  link_source cell_10226 with piece_1089 using piece_1089_mem, piece_1129_mem

theorem linked_10227 : Linked cell_10227 pieces := by
  link_source cell_10227 with piece_1089 using piece_1089_mem, ⟨piece_1128_mem, piece_1129_mem⟩

theorem linked_10228 : Linked cell_10228 pieces := by
  link_source cell_10228 with piece_1090 using piece_1090_mem, piece_1129_mem

theorem linked_10229 : Linked cell_10229 pieces := by
  link_source cell_10229 with piece_1090 using piece_1090_mem, ⟨piece_1128_mem, piece_1129_mem⟩

theorem linked_10230 : Linked cell_10230 pieces := by
  link_source cell_10230 with piece_1090 using piece_1090_mem, ⟨piece_1127_mem, piece_1128_mem⟩

theorem linked_10231 : Linked cell_10231 pieces := by
  link_source cell_10231 with piece_1090 using piece_1090_mem, piece_1127_mem

theorem linked_10232 : Linked cell_10232 pieces := by
  link_source cell_10232 with piece_1091 using piece_1091_mem, ⟨piece_1127_mem, piece_1128_mem⟩

theorem linked_10233 : Linked cell_10233 pieces := by
  link_source cell_10233 with piece_1091 using piece_1091_mem, piece_1127_mem

theorem linked_10234 : Linked cell_10234 pieces := by
  link_source cell_10234 with piece_1091 using piece_1091_mem, ⟨piece_1126_mem, piece_1127_mem⟩

theorem linked_10235 : Linked cell_10235 pieces := by
  link_source cell_10235 with piece_1091 using piece_1091_mem, piece_1126_mem

theorem linked_10236 : Linked cell_10236 pieces := by
  link_source cell_10236 with piece_1092 using piece_1092_mem, ⟨piece_1126_mem, piece_1127_mem⟩

theorem linked_10237 : Linked cell_10237 pieces := by
  link_source cell_10237 with piece_1092 using piece_1092_mem, piece_1126_mem

theorem linked_10238 : Linked cell_10238 pieces := by
  link_source cell_10238 with piece_1092 using piece_1092_mem, ⟨piece_1125_mem, piece_1126_mem⟩

theorem linked_10239 : Linked cell_10239 pieces := by
  link_source cell_10239 with piece_1092 using piece_1092_mem, ⟨piece_1124_mem, piece_1125_mem⟩

theorem linked_10240 : Linked cell_10240 pieces := by
  link_source cell_10240 with piece_1093 using piece_1093_mem, ⟨piece_1125_mem, piece_1126_mem⟩

theorem linked_10241 : Linked cell_10241 pieces := by
  link_source cell_10241 with piece_1093 using piece_1093_mem, ⟨piece_1124_mem, piece_1125_mem⟩

theorem linked_10242 : Linked cell_10242 pieces := by
  link_source cell_10242 with piece_1093 using piece_1093_mem, piece_1124_mem

theorem linked_10243 : Linked cell_10243 pieces := by
  link_source cell_10243 with piece_1093 using piece_1093_mem, ⟨piece_1123_mem, piece_1124_mem⟩

theorem linked_10244 : Linked cell_10244 pieces := by
  link_source cell_10244 with piece_1094 using piece_1094_mem, piece_1124_mem

theorem linked_10245 : Linked cell_10245 pieces := by
  link_source cell_10245 with piece_1094 using piece_1094_mem, ⟨piece_1123_mem, piece_1124_mem⟩

theorem linked_10246 : Linked cell_10246 pieces := by
  link_source cell_10246 with piece_1094 using piece_1094_mem, piece_1123_mem

theorem linked_10247 : Linked cell_10247 pieces := by
  link_source cell_10247 with piece_1094 using piece_1094_mem, ⟨piece_1122_mem, piece_1123_mem⟩

theorem linked_10248 : Linked cell_10248 pieces := by
  link_source cell_10248 with piece_1095 using piece_1095_mem, piece_1123_mem

theorem linked_10249 : Linked cell_10249 pieces := by
  link_source cell_10249 with piece_1095 using piece_1095_mem, ⟨piece_1122_mem, piece_1123_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0204.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0204.cells,List.forall_mem_cons]
  exact ⟨linked_10200, linked_10201, linked_10202, linked_10203, linked_10204, linked_10205, linked_10206, linked_10207, linked_10208, linked_10209, linked_10210, linked_10211, linked_10212, linked_10213, linked_10214, linked_10215, linked_10216, linked_10217, linked_10218, linked_10219, linked_10220, linked_10221, linked_10222, linked_10223, linked_10224, linked_10225, linked_10226, linked_10227, linked_10228, linked_10229, linked_10230, linked_10231, linked_10232, linked_10233, linked_10234, linked_10235, linked_10236, linked_10237, linked_10238, linked_10239, linked_10240, linked_10241, linked_10242, linked_10243, linked_10244, linked_10245, linked_10246, linked_10247, linked_10248, linked_10249, by simp⟩

theorem covered : covers (45125000000000001 / 100000000000000000 : ℚ) (22862500000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0204.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0204
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0205
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(22862500000000001 / 50000000000000000 : ℚ), (22868750000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (4061618074443 / 6250000000000 : ℚ)
  w := (7539437657099 / 5000000000000 : ℚ)
  center := (22865625000000001 / 50000000000000000 : ℚ)
  supportValue := (4691288424615547 / 10000000000000000 : ℚ)
  supportSlope := (-12250975708818501 / 5000000000000000 : ℚ)
  oldCenter := (4691288424615547 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1096
  oldLo := (46800000000000003 / 100000000000000000 : ℚ)
  oldHi := (46850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1119]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10250 : Cell := { cellDefaults with
  r := (8128097903001 / 12500000000000 : ℚ)
  w := (15084123482809 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1095
  oldLo := (46850000000000003 / 100000000000000000 : ℚ)
  oldHi := (46950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1120, piece_1121, piece_1122]
}

def cell_10251 : Cell := { cellDefaults with
  domain := ⟨(22868750000000001 / 50000000000000000 : ℚ), (22875000000000001 / 50000000000000000 : ℚ)⟩
  r := (8128097903001 / 12500000000000 : ℚ)
  w := (15084123482809 / 10000000000000 : ℚ)
  center := (22871875000000001 / 50000000000000000 : ℚ)
  supportValue := (4688226868774701 / 10000000000000000 : ℚ)
  supportSlope := (-24482278659512247 / 10000000000000000 : ℚ)
  oldCenter := (4688226868774701 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1095
  oldLo := (46850000000000003 / 100000000000000000 : ℚ)
  oldHi := (46900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1120]
}

def cell_10252 : Cell := { cellDefaults with
  domain := ⟨(22875000000000001 / 50000000000000000 : ℚ), (22881250000000001 / 50000000000000000 : ℚ)⟩
  center := (22878125000000001 / 50000000000000000 : ℚ)
  supportValue := (2345776079038647 / 5000000000000000 : ℚ)
  supportSlope := (-1224426659095279 / 500000000000000 : ℚ)
  oldCenter := (2345776079038647 / 5000000000000000 : ℚ)
  oldLo := (46900000000000003 / 100000000000000000 : ℚ)
  oldHi := (46950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1121, piece_1122]
}

def cell_10253 : Cell := { cellDefaults with
  domain := ⟨(22881250000000001 / 50000000000000000 : ℚ), (22887500000000001 / 50000000000000000 : ℚ)⟩
  center := (22884375000000001 / 50000000000000000 : ℚ)
  supportValue := (4688492282614221 / 10000000000000000 : ℚ)
  supportSlope := (-2446946359156321 / 1000000000000000 : ℚ)
  oldCenter := (4688492282614221 / 10000000000000000 : ℚ)
  oldLo := (46850000000000003 / 100000000000000000 : ℚ)
  oldHi := (4690502793296089 / 10000000000000000 : ℚ)
  oldPieces := [piece_1120, piece_1121]
}

def cell_10254 : Cell := { cellDefaults with
  domain := ⟨(22887500000000001 / 50000000000000000 : ℚ), (11446735335195531 / 25000000000000000 : ℚ)⟩
  center := (45780970670391063 / 100000000000000000 : ℚ)
  supportValue := (46855035292492603 / 100000000000000000 : ℚ)
  supportSlope := (-61115087849621 / 25000000000000 : ℚ)
  oldCenter := (46855035292492603 / 100000000000000000 : ℚ)
  oldHi := (46900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1119, piece_1120]
}

def cell_10255 : Cell := { cellDefaults with
  domain := ⟨(11446735335195531 / 25000000000000000 : ℚ), (22899441340782123 / 50000000000000000 : ℚ)⟩
  center := (9158582402234637 / 20000000000000000 : ℚ)
  supportValue := (4682585404018869 / 10000000000000000 : ℚ)
  supportSlope := (-305321888010521 / 125000000000000 : ℚ)
  oldCenter := (4682585404018869 / 10000000000000000 : ℚ)
  oldPieces := [piece_1119]
}

def cell_10256 : Cell := { cellDefaults with
  domain := ⟨(22899441340782123 / 50000000000000000 : ℚ), (22900000000000001 / 50000000000000000 : ℚ)⟩
  center := (11449860335195531 / 25000000000000000 : ℚ)
  supportValue := (23404934021940757 / 50000000000000000 : ℚ)
  supportSlope := (-4882378339103961 / 2000000000000000 : ℚ)
  oldCenter := (23404934021940757 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1097
  oldPieces := [piece_1119]
}

def cell_10257 : Cell := { cellDefaults with
  domain := ⟨(22900000000000001 / 50000000000000000 : ℚ), (22906250000000001 / 50000000000000000 : ℚ)⟩
  r := (64947046611889 / 100000000000000 : ℚ)
  w := (15073638162231 / 10000000000000 : ℚ)
  center := (22903125000000001 / 50000000000000000 : ℚ)
  supportValue := (4685698600986973 / 10000000000000000 : ℚ)
  supportSlope := (-24432248676484747 / 10000000000000000 : ℚ)
  oldCenter := (4685698600986973 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1098
  oldHi := (46900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1119, piece_1120]
}

def cell_10258 : Cell := { cellDefaults with
  domain := ⟨(22906250000000001 / 50000000000000000 : ℚ), (22912500000000001 / 50000000000000000 : ℚ)⟩
  r := (64947046611889 / 100000000000000 : ℚ)
  w := (15073638162231 / 10000000000000 : ℚ)
  center := (22909375000000001 / 50000000000000000 : ℚ)
  supportValue := (4682645750573767 / 10000000000000000 : ℚ)
  supportSlope := (-12205620238203707 / 5000000000000000 : ℚ)
  oldCenter := (4682645750573767 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1098
  oldPieces := [piece_1119]
}

def cell_10259 : Cell := { cellDefaults with
  domain := ⟨(22912500000000001 / 50000000000000000 : ℚ), (22918750000000001 / 50000000000000000 : ℚ)⟩
  r := (64947046611889 / 100000000000000 : ℚ)
  w := (15073638162231 / 10000000000000 : ℚ)
  center := (22915625000000001 / 50000000000000000 : ℚ)
  supportValue := (292474741926511 / 625000000000000 : ℚ)
  supportSlope := (-2438957175815659 / 1000000000000000 : ℚ)
  oldCenter := (292474741926511 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1098
  oldLo := (46750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1118, piece_1119]
}

def cell_10260 : Cell := { cellDefaults with
  domain := ⟨(22918750000000001 / 50000000000000000 : ℚ), (22925000000000001 / 50000000000000000 : ℚ)⟩
  r := (64947046611889 / 100000000000000 : ℚ)
  w := (15073638162231 / 10000000000000 : ℚ)
  center := (22921875000000001 / 50000000000000000 : ℚ)
  supportValue := (4676548479373693 / 10000000000000000 : ℚ)
  supportSlope := (-95179183067437 / 39062500000000 : ℚ)
  oldCenter := (4676548479373693 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1098
  oldLo := (46750000000000003 / 100000000000000000 : ℚ)
  oldHi := (46800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1118]
}

def cell_10261 : Cell := { cellDefaults with
  domain := ⟨(22925000000000001 / 50000000000000000 : ℚ), (22931250000000001 / 50000000000000000 : ℚ)⟩
  r := (8113531879787 / 12500000000000 : ℚ)
  w := (3013682411287 / 2000000000000 : ℚ)
  center := (22928125000000001 / 50000000000000000 : ℚ)
  supportValue := (23399294701153553 / 50000000000000000 : ℚ)
  supportSlope := (-1218809575779023 / 500000000000000 : ℚ)
  oldCenter := (23399294701153553 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1099
  oldLo := (46750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1118, piece_1119]
}

def cell_10262 : Cell := { cellDefaults with
  domain := ⟨(22931250000000001 / 50000000000000000 : ℚ), (22937500000000001 / 50000000000000000 : ℚ)⟩
  r := (8113531879787 / 12500000000000 : ℚ)
  w := (3013682411287 / 2000000000000 : ℚ)
  center := (22934375000000001 / 50000000000000000 : ℚ)
  supportValue := (4676813137144159 / 10000000000000000 : ℚ)
  supportSlope := (-2435318050794777 / 1000000000000000 : ℚ)
  oldCenter := (4676813137144159 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1099
  oldLo := (46750000000000003 / 100000000000000000 : ℚ)
  oldHi := (46800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1118]
}

def cell_10263 : Cell := { cellDefaults with
  domain := ⟨(22937500000000001 / 50000000000000000 : ℚ), (22943750000000001 / 50000000000000000 : ℚ)⟩
  r := (8113531879787 / 12500000000000 : ℚ)
  w := (3013682411287 / 2000000000000 : ℚ)
  center := (22940625000000001 / 50000000000000000 : ℚ)
  supportValue := (9347540501782191 / 20000000000000000 : ℚ)
  supportSlope := (-1520854087305179 / 625000000000000 : ℚ)
  oldCenter := (9347540501782191 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1099
  oldLo := (46700000000000003 / 100000000000000000 : ℚ)
  oldHi := (46800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1117, piece_1118]
}

def cell_10264 : Cell := { cellDefaults with
  domain := ⟨(22943750000000001 / 50000000000000000 : ℚ), (22950000000000001 / 50000000000000000 : ℚ)⟩
  r := (8113531879787 / 12500000000000 : ℚ)
  w := (3013682411287 / 2000000000000 : ℚ)
  center := (22946875000000001 / 50000000000000000 : ℚ)
  supportValue := (934146020269311 / 2000000000000000 : ℚ)
  supportSlope := (-2430997383812361 / 1000000000000000 : ℚ)
  oldCenter := (934146020269311 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1099
  oldLo := (46650000000000003 / 100000000000000000 : ℚ)
  oldHi := (46750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1116, piece_1117]
}

def cell_10265 : Cell := { cellDefaults with
  domain := ⟨(22950000000000001 / 50000000000000000 : ℚ), (22956250000000001 / 50000000000000000 : ℚ)⟩
  r := (64869514584813 / 100000000000000 : ℚ)
  w := (15063196239677 / 10000000000000 : ℚ)
  center := (22953125000000001 / 50000000000000000 : ℚ)
  supportValue := (4674033161748601 / 10000000000000000 : ℚ)
  supportSlope := (-4864065261598327 / 2000000000000000 : ℚ)
  oldCenter := (4674033161748601 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1100
  oldLo := (46700000000000003 / 100000000000000000 : ℚ)
  oldHi := (46800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1117, piece_1118]
}

def cell_10266 : Cell := { cellDefaults with
  domain := ⟨(22956250000000001 / 50000000000000000 : ℚ), (22962500000000001 / 50000000000000000 : ℚ)⟩
  r := (64869514584813 / 100000000000000 : ℚ)
  w := (15063196239677 / 10000000000000 : ℚ)
  center := (22959375000000001 / 50000000000000000 : ℚ)
  supportValue := (4670994595292857 / 10000000000000000 : ℚ)
  supportSlope := (-24296658070026567 / 10000000000000000 : ℚ)
  oldCenter := (4670994595292857 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1100
  oldLo := (46650000000000003 / 100000000000000000 : ℚ)
  oldHi := (46750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1116, piece_1117]
}

def cell_10267 : Cell := { cellDefaults with
  domain := ⟨(22962500000000001 / 50000000000000000 : ℚ), (22968750000000001 / 50000000000000000 : ℚ)⟩
  r := (64869514584813 / 100000000000000 : ℚ)
  w := (15063196239677 / 10000000000000 : ℚ)
  center := (22965625000000001 / 50000000000000000 : ℚ)
  supportValue := (1166989669814443 / 2500000000000000 : ℚ)
  supportSlope := (-37932210133651 / 15625000000000 : ℚ)
  oldCenter := (1166989669814443 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1100
  oldLo := (46650000000000003 / 100000000000000000 : ℚ)
  oldHi := (46700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1116]
}

def cell_10268 : Cell := { cellDefaults with
  domain := ⟨(22968750000000001 / 50000000000000000 : ℚ), (22975000000000001 / 50000000000000000 : ℚ)⟩
  r := (64869514584813 / 100000000000000 : ℚ)
  w := (15063196239677 / 10000000000000 : ℚ)
  center := (22971875000000001 / 50000000000000000 : ℚ)
  supportValue := (9329851442020649 / 20000000000000000 : ℚ)
  supportSlope := (-1515894755330649 / 625000000000000 : ℚ)
  oldCenter := (9329851442020649 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1100
  oldLo := (46600000000000003 / 100000000000000000 : ℚ)
  oldHi := (46700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1115, piece_1116]
}

def cell_10269 : Cell := { cellDefaults with
  domain := ⟨(22975000000000001 / 50000000000000000 : ℚ), (22981250000000001 / 50000000000000000 : ℚ)⟩
  r := (32415412646469 / 50000000000000 : ℚ)
  w := (15057991154393 / 10000000000000 : ℚ)
  center := (22978125000000001 / 50000000000000000 : ℚ)
  supportValue := (4668221264155397 / 10000000000000000 : ℚ)
  supportSlope := (-6065993682753401 / 2500000000000000 : ℚ)
  oldCenter := (4668221264155397 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1101
  oldLo := (46650000000000003 / 100000000000000000 : ℚ)
  oldHi := (46700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1116]
}

def cell_10270 : Cell := { cellDefaults with
  domain := ⟨(22981250000000001 / 50000000000000000 : ℚ), (22987500000000001 / 50000000000000000 : ℚ)⟩
  r := (32415412646469 / 50000000000000 : ℚ)
  w := (15057991154393 / 10000000000000 : ℚ)
  center := (22984375000000001 / 50000000000000000 : ℚ)
  supportValue := (9111699040753 / 19531250000000 : ℚ)
  supportSlope := (-303013003332131 / 125000000000000 : ℚ)
  oldCenter := (9111699040753 / 19531250000000 : ℚ)
  newCoefficients := coefficients_1101
  oldLo := (46600000000000003 / 100000000000000000 : ℚ)
  oldHi := (46700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1115, piece_1116]
}

def cell_10271 : Cell := { cellDefaults with
  domain := ⟨(22987500000000001 / 50000000000000000 : ℚ), (22993750000000001 / 50000000000000000 : ℚ)⟩
  r := (32415412646469 / 50000000000000 : ℚ)
  w := (15057991154393 / 10000000000000 : ℚ)
  center := (22990625000000001 / 50000000000000000 : ℚ)
  supportValue := (23310804699659493 / 50000000000000000 : ℚ)
  supportSlope := (-2421904728136859 / 1000000000000000 : ℚ)
  oldCenter := (23310804699659493 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1101
  oldLo := (46600000000000003 / 100000000000000000 : ℚ)
  oldHi := (46650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1115]
}

def cell_10272 : Cell := { cellDefaults with
  domain := ⟨(22993750000000001 / 50000000000000000 : ℚ), (23000000000000001 / 50000000000000000 : ℚ)⟩
  r := (32415412646469 / 50000000000000 : ℚ)
  w := (15057991154393 / 10000000000000 : ℚ)
  center := (22996875000000001 / 50000000000000000 : ℚ)
  supportValue := (4659134921014633 / 10000000000000000 : ℚ)
  supportSlope := (-483976851612411 / 200000000000000 : ℚ)
  oldCenter := (4659134921014633 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1101
  oldLo := (23275000000000001 / 50000000000000000 : ℚ)
  oldHi := (46650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1114, piece_1115]
}

def cell_10273 : Cell := { cellDefaults with
  domain := ⟨(23000000000000001 / 50000000000000000 : ℚ), (23006250000000001 / 50000000000000000 : ℚ)⟩
  r := (2591687487273 / 4000000000000 : ℚ)
  w := (3010559254129 / 2000000000000 : ℚ)
  center := (23003125000000001 / 50000000000000000 : ℚ)
  supportValue := (932484668283341 / 2000000000000000 : ℚ)
  supportSlope := (-24206449264134733 / 10000000000000000 : ℚ)
  oldCenter := (932484668283341 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1102
  oldLo := (46600000000000003 / 100000000000000000 : ℚ)
  oldHi := (46650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1115]
}

def cell_10274 : Cell := { cellDefaults with
  domain := ⟨(23006250000000001 / 50000000000000000 : ℚ), (23012500000000001 / 50000000000000000 : ℚ)⟩
  r := (2591687487273 / 4000000000000 : ℚ)
  w := (3010559254129 / 2000000000000 : ℚ)
  center := (23009375000000001 / 50000000000000000 : ℚ)
  supportValue := (5824248723909383 / 12500000000000000 : ℚ)
  supportSlope := (-4837121416786161 / 2000000000000000 : ℚ)
  oldCenter := (5824248723909383 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1102
  oldLo := (23275000000000001 / 50000000000000000 : ℚ)
  oldHi := (46650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1114, piece_1115]
}

def cell_10275 : Cell := { cellDefaults with
  domain := ⟨(23012500000000001 / 50000000000000000 : ℚ), (23018750000000001 / 50000000000000000 : ℚ)⟩
  r := (2591687487273 / 4000000000000 : ℚ)
  w := (3010559254129 / 2000000000000 : ℚ)
  center := (23015625000000001 / 50000000000000000 : ℚ)
  supportValue := (145511785215867 / 312500000000000 : ℚ)
  supportSlope := (-1208101772192549 / 500000000000000 : ℚ)
  oldCenter := (145511785215867 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1102
  oldLo := (23250000000000001 / 50000000000000000 : ℚ)
  oldHi := (46600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1113, piece_1114]
}

def cell_10276 : Cell := { cellDefaults with
  domain := ⟨(23018750000000001 / 50000000000000000 : ℚ), (23025000000000001 / 50000000000000000 : ℚ)⟩
  r := (2591687487273 / 4000000000000 : ℚ)
  w := (3010559254129 / 2000000000000 : ℚ)
  center := (23021875000000001 / 50000000000000000 : ℚ)
  supportValue := (4653358024279601 / 10000000000000000 : ℚ)
  supportSlope := (-24143201945188153 / 10000000000000000 : ℚ)
  oldCenter := (4653358024279601 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1102
  oldLo := (23250000000000001 / 50000000000000000 : ℚ)
  oldHi := (23275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1113]
}

def cell_10277 : Cell := { cellDefaults with
  domain := ⟨(23025000000000001 / 50000000000000000 : ℚ), (23031250000000001 / 50000000000000000 : ℚ)⟩
  r := (12950719721243 / 20000000000000 : ℚ)
  w := (15047612835037 / 10000000000000 : ℚ)
  center := (23028125000000001 / 50000000000000000 : ℚ)
  supportValue := (2328319564641701 / 5000000000000000 : ℚ)
  supportSlope := (-4829825247426811 / 2000000000000000 : ℚ)
  oldCenter := (2328319564641701 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1103
  oldLo := (23275000000000001 / 50000000000000000 : ℚ)
  oldHi := (46600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1114]
}

def cell_10278 : Cell := { cellDefaults with
  domain := ⟨(23031250000000001 / 50000000000000000 : ℚ), (23037500000000001 / 50000000000000000 : ℚ)⟩
  r := (12950719721243 / 20000000000000 : ℚ)
  w := (15047612835037 / 10000000000000 : ℚ)
  center := (23034375000000001 / 50000000000000000 : ℚ)
  supportValue := (5817027097930453 / 12500000000000000 : ℚ)
  supportSlope := (-150814733721083 / 62500000000000 : ℚ)
  oldCenter := (5817027097930453 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1103
  oldLo := (23250000000000001 / 50000000000000000 : ℚ)
  oldHi := (46600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1113, piece_1114]
}

def cell_10279 : Cell := { cellDefaults with
  domain := ⟨(23037500000000001 / 50000000000000000 : ℚ), (23043750000000001 / 50000000000000000 : ℚ)⟩
  r := (12950719721243 / 20000000000000 : ℚ)
  w := (15047612835037 / 10000000000000 : ℚ)
  center := (23040625000000001 / 50000000000000000 : ℚ)
  supportValue := (4650606976238467 / 10000000000000000 : ℚ)
  supportSlope := (-2410684727980339 / 1000000000000000 : ℚ)
  oldCenter := (4650606976238467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1103
  oldLo := (23225000000000001 / 50000000000000000 : ℚ)
  oldHi := (23275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1112, piece_1113]
}

def cell_10280 : Cell := { cellDefaults with
  domain := ⟨(23043750000000001 / 50000000000000000 : ℚ), (23050000000000001 / 50000000000000000 : ℚ)⟩
  r := (12950719721243 / 20000000000000 : ℚ)
  w := (15047612835037 / 10000000000000 : ℚ)
  center := (23046875000000001 / 50000000000000000 : ℚ)
  supportValue := (4647594767001969 / 10000000000000000 : ℚ)
  supportSlope := (-602153085735857 / 250000000000000 : ℚ)
  oldCenter := (4647594767001969 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1103
  oldLo := (23225000000000001 / 50000000000000000 : ℚ)
  oldHi := (23250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1112]
}

def cell_10281 : Cell := { cellDefaults with
  domain := ⟨(23050000000000001 / 50000000000000000 : ℚ), (23056250000000001 / 50000000000000000 : ℚ)⟩
  r := (64715061545917 / 100000000000000 : ℚ)
  w := (3760609905881 / 2500000000000 : ℚ)
  center := (23053125000000001 / 50000000000000000 : ℚ)
  supportValue := (4650868703211773 / 10000000000000000 : ℚ)
  supportSlope := (-481873124497767 / 200000000000000 : ℚ)
  oldCenter := (4650868703211773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1104
  oldLo := (23225000000000001 / 50000000000000000 : ℚ)
  oldHi := (23275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1112, piece_1113]
}

def cell_10282 : Cell := { cellDefaults with
  domain := ⟨(23056250000000001 / 50000000000000000 : ℚ), (23062500000000001 / 50000000000000000 : ℚ)⟩
  r := (64715061545917 / 100000000000000 : ℚ)
  w := (3760609905881 / 2500000000000 : ℚ)
  center := (23059375000000001 / 50000000000000000 : ℚ)
  supportValue := (46478581406835123 / 100000000000000000 : ℚ)
  supportSlope := (-6018410368162641 / 2500000000000000 : ℚ)
  oldCenter := (46478581406835123 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1104
  oldLo := (23225000000000001 / 50000000000000000 : ℚ)
  oldHi := (23250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1112]
}

def cell_10283 : Cell := { cellDefaults with
  domain := ⟨(23062500000000001 / 50000000000000000 : ℚ), (23068750000000001 / 50000000000000000 : ℚ)⟩
  r := (64715061545917 / 100000000000000 : ℚ)
  w := (3760609905881 / 2500000000000 : ℚ)
  center := (23065625000000001 / 50000000000000000 : ℚ)
  supportValue := (1161212628357823 / 2500000000000000 : ℚ)
  supportSlope := (-1503240146439877 / 625000000000000 : ℚ)
  oldCenter := (1161212628357823 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1104
  oldLo := (23200000000000001 / 50000000000000000 : ℚ)
  oldHi := (23250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1111, piece_1112]
}

def cell_10284 : Cell := { cellDefaults with
  domain := ⟨(23068750000000001 / 50000000000000000 : ℚ), (23075000000000001 / 50000000000000000 : ℚ)⟩
  r := (64715061545917 / 100000000000000 : ℚ)
  w := (3760609905881 / 2500000000000 : ℚ)
  center := (23071875000000001 / 50000000000000000 : ℚ)
  supportValue := (11604613061309431 / 25000000000000000 : ℚ)
  supportSlope := (-6007312078919469 / 2500000000000000 : ℚ)
  oldCenter := (11604613061309431 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1104
  oldLo := (23200000000000001 / 50000000000000000 : ℚ)
  oldHi := (23225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1111]
}

def cell_10285 : Cell := { cellDefaults with
  domain := ⟨(23075000000000001 / 50000000000000000 : ℚ), (23081250000000001 / 50000000000000000 : ℚ)⟩
  r := (64676575357151 / 100000000000000 : ℚ)
  w := (751863859387 / 500000000000 : ℚ)
  center := (23078125000000001 / 50000000000000000 : ℚ)
  supportValue := (929022379458831 / 2000000000000000 : ℚ)
  supportSlope := (-24038690397185647 / 10000000000000000 : ℚ)
  oldCenter := (929022379458831 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1105
  oldLo := (23200000000000001 / 50000000000000000 : ℚ)
  oldHi := (23250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1111, piece_1112]
}

def cell_10286 : Cell := { cellDefaults with
  domain := ⟨(23081250000000001 / 50000000000000000 : ℚ), (23087500000000001 / 50000000000000000 : ℚ)⟩
  r := (64676575357151 / 100000000000000 : ℚ)
  w := (751863859387 / 500000000000 : ℚ)
  center := (23084375000000001 / 50000000000000000 : ℚ)
  supportValue := (2901317625230921 / 6250000000000000 : ℚ)
  supportSlope := (-600420152332859 / 250000000000000 : ℚ)
  oldCenter := (2901317625230921 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1105
  oldLo := (23200000000000001 / 50000000000000000 : ℚ)
  oldHi := (23225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1111]
}

def cell_10287 : Cell := { cellDefaults with
  domain := ⟨(23087500000000001 / 50000000000000000 : ℚ), (23093750000000001 / 50000000000000000 : ℚ)⟩
  r := (64676575357151 / 100000000000000 : ℚ)
  w := (751863859387 / 500000000000 : ℚ)
  center := (23090625000000001 / 50000000000000000 : ℚ)
  supportValue := (46391074310667413 / 100000000000000000 : ℚ)
  supportSlope := (-23997019888355453 / 10000000000000000 : ℚ)
  oldCenter := (46391074310667413 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1105
  oldLo := (4635195530726257 / 10000000000000000 : ℚ)
  oldHi := (23225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1110, piece_1111]
}

def cell_10288 : Cell := { cellDefaults with
  domain := ⟨(23093750000000001 / 50000000000000000 : ℚ), (23100000000000001 / 50000000000000000 : ℚ)⟩
  r := (64676575357151 / 100000000000000 : ℚ)
  w := (751863859387 / 500000000000 : ℚ)
  center := (23096875000000001 / 50000000000000000 : ℚ)
  supportValue := (2318054615688939 / 5000000000000000 : ℚ)
  supportSlope := (-5993400444430641 / 2500000000000000 : ℚ)
  oldCenter := (2318054615688939 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1105
  oldLo := (23150000000000001 / 50000000000000000 : ℚ)
  oldHi := (23200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1108, piece_1109, piece_1110]
}

def cell_10289 : Cell := { cellDefaults with
  domain := ⟨(23100000000000001 / 50000000000000000 : ℚ), (23106250000000001 / 50000000000000000 : ℚ)⟩
  r := (64638139808087 / 100000000000000 : ℚ)
  w := (15032126142079 / 10000000000000 : ℚ)
  center := (23103125000000001 / 50000000000000000 : ℚ)
  supportValue := (2319684135214079 / 5000000000000000 : ℚ)
  supportSlope := (-1199195303787537 / 500000000000000 : ℚ)
  oldCenter := (2319684135214079 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1106
  oldLo := (4635195530726257 / 10000000000000000 : ℚ)
  oldHi := (23225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1110, piece_1111]
}

def cell_10290 : Cell := { cellDefaults with
  domain := ⟨(23106250000000001 / 50000000000000000 : ℚ), (23112500000000001 / 50000000000000000 : ℚ)⟩
  r := (64638139808087 / 100000000000000 : ℚ)
  w := (15032126142079 / 10000000000000 : ℚ)
  center := (23109375000000001 / 50000000000000000 : ℚ)
  supportValue := (4636371623196379 / 10000000000000000 : ℚ)
  supportSlope := (-299506375629921 / 125000000000000 : ℚ)
  oldCenter := (4636371623196379 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1106
  oldLo := (23150000000000001 / 50000000000000000 : ℚ)
  oldHi := (23200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1108, piece_1109, piece_1110]
}

def cell_10291 : Cell := { cellDefaults with
  domain := ⟨(23112500000000001 / 50000000000000000 : ℚ), (23118750000000001 / 50000000000000000 : ℚ)⟩
  r := (64638139808087 / 100000000000000 : ℚ)
  w := (15032126142079 / 10000000000000 : ℚ)
  center := (23115625000000001 / 50000000000000000 : ℚ)
  supportValue := (9266755378958067 / 20000000000000000 : ℚ)
  supportSlope := (-11971017537182327 / 5000000000000000 : ℚ)
  oldCenter := (9266755378958067 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1106
  oldLo := (23150000000000001 / 50000000000000000 : ℚ)
  oldHi := (23175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1108]
}

def cell_10292 : Cell := { cellDefaults with
  domain := ⟨(23118750000000001 / 50000000000000000 : ℚ), (23125000000000001 / 50000000000000000 : ℚ)⟩
  r := (64638139808087 / 100000000000000 : ℚ)
  w := (15032126142079 / 10000000000000 : ℚ)
  center := (23121875000000001 / 50000000000000000 : ℚ)
  supportValue := (4630386554544759 / 10000000000000000 : ℚ)
  supportSlope := (-11959507005681047 / 5000000000000000 : ℚ)
  oldCenter := (4630386554544759 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1106
  oldLo := (23125000000000001 / 50000000000000000 : ℚ)
  oldHi := (23175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1107, piece_1108]
}

def cell_10293 : Cell := { cellDefaults with
  domain := ⟨(23125000000000001 / 50000000000000000 : ℚ), (23131250000000001 / 50000000000000000 : ℚ)⟩
  r := (32299876699763 / 50000000000000 : ℚ)
  w := (15026984232883 / 10000000000000 : ℚ)
  center := (23128125000000001 / 50000000000000000 : ℚ)
  supportValue := (926727763056679 / 2000000000000000 : ℚ)
  supportSlope := (-23929303161667193 / 10000000000000000 : ℚ)
  oldCenter := (926727763056679 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1107
  oldLo := (23150000000000001 / 50000000000000000 : ℚ)
  oldHi := (4635195530726257 / 10000000000000000 : ℚ)
  oldPieces := [piece_1108, piece_1109]
}

def cell_10294 : Cell := { cellDefaults with
  domain := ⟨(23131250000000001 / 50000000000000000 : ℚ), (23137500000000001 / 50000000000000000 : ℚ)⟩
  r := (32299876699763 / 50000000000000 : ℚ)
  w := (15026984232883 / 10000000000000 : ℚ)
  center := (23134375000000001 / 50000000000000000 : ℚ)
  supportValue := (1852259690910119 / 4000000000000000 : ℚ)
  supportSlope := (-298824544930687 / 125000000000000 : ℚ)
  oldCenter := (1852259690910119 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1107
  oldLo := (23125000000000001 / 50000000000000000 : ℚ)
  oldHi := (23175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1107, piece_1108]
}

def cell_10295 : Cell := { cellDefaults with
  domain := ⟨(23137500000000001 / 50000000000000000 : ℚ), (23143750000000001 / 50000000000000000 : ℚ)⟩
  r := (32299876699763 / 50000000000000 : ℚ)
  w := (15026984232883 / 10000000000000 : ℚ)
  center := (23140625000000001 / 50000000000000000 : ℚ)
  supportValue := (2313831053371281 / 5000000000000000 : ℚ)
  supportSlope := (-2388568276664671 / 1000000000000000 : ℚ)
  oldCenter := (2313831053371281 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1107
  oldLo := (23125000000000001 / 50000000000000000 : ℚ)
  oldHi := (23150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1107]
}

def cell_10296 : Cell := { cellDefaults with
  domain := ⟨(23143750000000001 / 50000000000000000 : ℚ), (23150000000000001 / 50000000000000000 : ℚ)⟩
  r := (32299876699763 / 50000000000000 : ℚ)
  w := (15026984232883 / 10000000000000 : ℚ)
  center := (23146875000000001 / 50000000000000000 : ℚ)
  supportValue := (4624677902799193 / 10000000000000000 : ℚ)
  supportSlope := (-5966153336616209 / 2500000000000000 : ℚ)
  oldCenter := (4624677902799193 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1107
  oldLo := (23100000000000001 / 50000000000000000 : ℚ)
  oldHi := (23150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1106, piece_1107]
}

def cell_10297 : Cell := { cellDefaults with
  domain := ⟨(23150000000000001 / 50000000000000000 : ℚ), (23156250000000001 / 50000000000000000 : ℚ)⟩
  r := (64561417720257 / 100000000000000 : ℚ)
  w := (7510926264483 / 5000000000000 : ℚ)
  center := (23153125000000001 / 50000000000000000 : ℚ)
  supportValue := (46279229699012847 / 100000000000000000 : ℚ)
  supportSlope := (-2387333215822629 / 1000000000000000 : ℚ)
  oldCenter := (46279229699012847 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1108
  oldLo := (23125000000000001 / 50000000000000000 : ℚ)
  oldHi := (23150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1107]
}

def cell_10298 : Cell := { cellDefaults with
  domain := ⟨(23156250000000001 / 50000000000000000 : ℚ), (23162500000000001 / 50000000000000000 : ℚ)⟩
  r := (64561417720257 / 100000000000000 : ℚ)
  w := (7510926264483 / 5000000000000 : ℚ)
  center := (23159375000000001 / 50000000000000000 : ℚ)
  supportValue := (144529387329133 / 312500000000000 : ℚ)
  supportSlope := (-23851601677895573 / 10000000000000000 : ℚ)
  oldCenter := (144529387329133 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1108
  oldLo := (23100000000000001 / 50000000000000000 : ℚ)
  oldHi := (23150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1106, piece_1107]
}

def cell_10299 : Cell := { cellDefaults with
  domain := ⟨(23162500000000001 / 50000000000000000 : ℚ), (23168750000000001 / 50000000000000000 : ℚ)⟩
  r := (64561417720257 / 100000000000000 : ℚ)
  w := (7510926264483 / 5000000000000 : ℚ)
  center := (23165625000000001 / 50000000000000000 : ℚ)
  supportValue := (46219600854658677 / 100000000000000000 : ℚ)
  supportSlope := (-2382953105121821 / 1000000000000000 : ℚ)
  oldCenter := (46219600854658677 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1108
  oldLo := (23100000000000001 / 50000000000000000 : ℚ)
  oldHi := (23125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1106]
}

theorem check_10250 : cell_10250.check = true := by
  decide +kernel

theorem check_10251 : cell_10251.check = true := by
  decide +kernel

theorem check_10252 : cell_10252.check = true := by
  decide +kernel

theorem check_10253 : cell_10253.check = true := by
  decide +kernel

theorem check_10254 : cell_10254.check = true := by
  decide +kernel

theorem check_10255 : cell_10255.check = true := by
  decide +kernel

theorem check_10256 : cell_10256.check = true := by
  decide +kernel

theorem check_10257 : cell_10257.check = true := by
  decide +kernel

theorem check_10258 : cell_10258.check = true := by
  decide +kernel

theorem check_10259 : cell_10259.check = true := by
  decide +kernel

theorem check_10260 : cell_10260.check = true := by
  decide +kernel

theorem check_10261 : cell_10261.check = true := by
  decide +kernel

theorem check_10262 : cell_10262.check = true := by
  decide +kernel

theorem check_10263 : cell_10263.check = true := by
  decide +kernel

theorem check_10264 : cell_10264.check = true := by
  decide +kernel

theorem check_10265 : cell_10265.check = true := by
  decide +kernel

theorem check_10266 : cell_10266.check = true := by
  decide +kernel

theorem check_10267 : cell_10267.check = true := by
  decide +kernel

theorem check_10268 : cell_10268.check = true := by
  decide +kernel

theorem check_10269 : cell_10269.check = true := by
  decide +kernel

theorem check_10270 : cell_10270.check = true := by
  decide +kernel

theorem check_10271 : cell_10271.check = true := by
  decide +kernel

theorem check_10272 : cell_10272.check = true := by
  decide +kernel

theorem check_10273 : cell_10273.check = true := by
  decide +kernel

theorem check_10274 : cell_10274.check = true := by
  decide +kernel

theorem check_10275 : cell_10275.check = true := by
  decide +kernel

theorem check_10276 : cell_10276.check = true := by
  decide +kernel

theorem check_10277 : cell_10277.check = true := by
  decide +kernel

theorem check_10278 : cell_10278.check = true := by
  decide +kernel

theorem check_10279 : cell_10279.check = true := by
  decide +kernel

theorem check_10280 : cell_10280.check = true := by
  decide +kernel

theorem check_10281 : cell_10281.check = true := by
  decide +kernel

theorem check_10282 : cell_10282.check = true := by
  decide +kernel

theorem check_10283 : cell_10283.check = true := by
  decide +kernel

theorem check_10284 : cell_10284.check = true := by
  decide +kernel

theorem check_10285 : cell_10285.check = true := by
  decide +kernel

theorem check_10286 : cell_10286.check = true := by
  decide +kernel

theorem check_10287 : cell_10287.check = true := by
  decide +kernel

theorem check_10288 : cell_10288.check = true := by
  decide +kernel

theorem check_10289 : cell_10289.check = true := by
  decide +kernel

theorem check_10290 : cell_10290.check = true := by
  decide +kernel

theorem check_10291 : cell_10291.check = true := by
  decide +kernel

theorem check_10292 : cell_10292.check = true := by
  decide +kernel

theorem check_10293 : cell_10293.check = true := by
  decide +kernel

theorem check_10294 : cell_10294.check = true := by
  decide +kernel

theorem check_10295 : cell_10295.check = true := by
  decide +kernel

theorem check_10296 : cell_10296.check = true := by
  decide +kernel

theorem check_10297 : cell_10297.check = true := by
  decide +kernel

theorem check_10298 : cell_10298.check = true := by
  decide +kernel

theorem check_10299 : cell_10299.check = true := by
  decide +kernel

def cells : List Cell := [cell_10250, cell_10251, cell_10252, cell_10253, cell_10254, cell_10255, cell_10256, cell_10257, cell_10258, cell_10259, cell_10260, cell_10261, cell_10262, cell_10263, cell_10264, cell_10265, cell_10266, cell_10267, cell_10268, cell_10269, cell_10270, cell_10271, cell_10272, cell_10273, cell_10274, cell_10275, cell_10276, cell_10277, cell_10278, cell_10279, cell_10280, cell_10281, cell_10282, cell_10283, cell_10284, cell_10285, cell_10286, cell_10287, cell_10288, cell_10289, cell_10290, cell_10291, cell_10292, cell_10293, cell_10294, cell_10295, cell_10296, cell_10297, cell_10298, cell_10299]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10250, check_10251, check_10252, check_10253, check_10254, check_10255, check_10256, check_10257, check_10258, check_10259, check_10260, check_10261, check_10262, check_10263, check_10264, check_10265, check_10266, check_10267, check_10268, check_10269, check_10270, check_10271, check_10272, check_10273, check_10274, check_10275, check_10276, check_10277, check_10278, check_10279, check_10280, check_10281, check_10282, check_10283, check_10284, check_10285, check_10286, check_10287, check_10288, check_10289, check_10290, check_10291, check_10292, check_10293, check_10294, check_10295, check_10296, check_10297, check_10298, check_10299, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0205

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0205
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0205
open AnalyticBounds.ExpressionCertificate

theorem linked_10250 : Linked cell_10250 pieces := by
  link_source cell_10250 with piece_1095 using piece_1095_mem, ⟨piece_1120_mem, ⟨piece_1121_mem, piece_1122_mem⟩⟩

theorem linked_10251 : Linked cell_10251 pieces := by
  link_source cell_10251 with piece_1095 using piece_1095_mem, piece_1120_mem

theorem linked_10252 : Linked cell_10252 pieces := by
  link_source cell_10252 with piece_1096 using piece_1096_mem, ⟨piece_1121_mem, piece_1122_mem⟩

theorem linked_10253 : Linked cell_10253 pieces := by
  link_source cell_10253 with piece_1096 using piece_1096_mem, ⟨piece_1120_mem, piece_1121_mem⟩

theorem linked_10254 : Linked cell_10254 pieces := by
  link_source cell_10254 with piece_1096 using piece_1096_mem, ⟨piece_1119_mem, piece_1120_mem⟩

theorem linked_10255 : Linked cell_10255 pieces := by
  link_source cell_10255 with piece_1096 using piece_1096_mem, piece_1119_mem

theorem linked_10256 : Linked cell_10256 pieces := by
  link_source cell_10256 with piece_1097 using piece_1097_mem, piece_1119_mem

theorem linked_10257 : Linked cell_10257 pieces := by
  link_source cell_10257 with piece_1098 using piece_1098_mem, ⟨piece_1119_mem, piece_1120_mem⟩

theorem linked_10258 : Linked cell_10258 pieces := by
  link_source cell_10258 with piece_1098 using piece_1098_mem, piece_1119_mem

theorem linked_10259 : Linked cell_10259 pieces := by
  link_source cell_10259 with piece_1098 using piece_1098_mem, ⟨piece_1118_mem, piece_1119_mem⟩

theorem linked_10260 : Linked cell_10260 pieces := by
  link_source cell_10260 with piece_1098 using piece_1098_mem, piece_1118_mem

theorem linked_10261 : Linked cell_10261 pieces := by
  link_source cell_10261 with piece_1099 using piece_1099_mem, ⟨piece_1118_mem, piece_1119_mem⟩

theorem linked_10262 : Linked cell_10262 pieces := by
  link_source cell_10262 with piece_1099 using piece_1099_mem, piece_1118_mem

theorem linked_10263 : Linked cell_10263 pieces := by
  link_source cell_10263 with piece_1099 using piece_1099_mem, ⟨piece_1117_mem, piece_1118_mem⟩

theorem linked_10264 : Linked cell_10264 pieces := by
  link_source cell_10264 with piece_1099 using piece_1099_mem, ⟨piece_1116_mem, piece_1117_mem⟩

theorem linked_10265 : Linked cell_10265 pieces := by
  link_source cell_10265 with piece_1100 using piece_1100_mem, ⟨piece_1117_mem, piece_1118_mem⟩

theorem linked_10266 : Linked cell_10266 pieces := by
  link_source cell_10266 with piece_1100 using piece_1100_mem, ⟨piece_1116_mem, piece_1117_mem⟩

theorem linked_10267 : Linked cell_10267 pieces := by
  link_source cell_10267 with piece_1100 using piece_1100_mem, piece_1116_mem

theorem linked_10268 : Linked cell_10268 pieces := by
  link_source cell_10268 with piece_1100 using piece_1100_mem, ⟨piece_1115_mem, piece_1116_mem⟩

theorem linked_10269 : Linked cell_10269 pieces := by
  link_source cell_10269 with piece_1101 using piece_1101_mem, piece_1116_mem

theorem linked_10270 : Linked cell_10270 pieces := by
  link_source cell_10270 with piece_1101 using piece_1101_mem, ⟨piece_1115_mem, piece_1116_mem⟩

theorem linked_10271 : Linked cell_10271 pieces := by
  link_source cell_10271 with piece_1101 using piece_1101_mem, piece_1115_mem

theorem linked_10272 : Linked cell_10272 pieces := by
  link_source cell_10272 with piece_1101 using piece_1101_mem, ⟨piece_1114_mem, piece_1115_mem⟩

theorem linked_10273 : Linked cell_10273 pieces := by
  link_source cell_10273 with piece_1102 using piece_1102_mem, piece_1115_mem

theorem linked_10274 : Linked cell_10274 pieces := by
  link_source cell_10274 with piece_1102 using piece_1102_mem, ⟨piece_1114_mem, piece_1115_mem⟩

theorem linked_10275 : Linked cell_10275 pieces := by
  link_source cell_10275 with piece_1102 using piece_1102_mem, ⟨piece_1113_mem, piece_1114_mem⟩

theorem linked_10276 : Linked cell_10276 pieces := by
  link_source cell_10276 with piece_1102 using piece_1102_mem, piece_1113_mem

theorem linked_10277 : Linked cell_10277 pieces := by
  link_source cell_10277 with piece_1103 using piece_1103_mem, piece_1114_mem

theorem linked_10278 : Linked cell_10278 pieces := by
  link_source cell_10278 with piece_1103 using piece_1103_mem, ⟨piece_1113_mem, piece_1114_mem⟩

theorem linked_10279 : Linked cell_10279 pieces := by
  link_source cell_10279 with piece_1103 using piece_1103_mem, ⟨piece_1112_mem, piece_1113_mem⟩

theorem linked_10280 : Linked cell_10280 pieces := by
  link_source cell_10280 with piece_1103 using piece_1103_mem, piece_1112_mem

theorem linked_10281 : Linked cell_10281 pieces := by
  link_source cell_10281 with piece_1104 using piece_1104_mem, ⟨piece_1112_mem, piece_1113_mem⟩

theorem linked_10282 : Linked cell_10282 pieces := by
  link_source cell_10282 with piece_1104 using piece_1104_mem, piece_1112_mem

theorem linked_10283 : Linked cell_10283 pieces := by
  link_source cell_10283 with piece_1104 using piece_1104_mem, ⟨piece_1111_mem, piece_1112_mem⟩

theorem linked_10284 : Linked cell_10284 pieces := by
  link_source cell_10284 with piece_1104 using piece_1104_mem, piece_1111_mem

theorem linked_10285 : Linked cell_10285 pieces := by
  link_source cell_10285 with piece_1105 using piece_1105_mem, ⟨piece_1111_mem, piece_1112_mem⟩

theorem linked_10286 : Linked cell_10286 pieces := by
  link_source cell_10286 with piece_1105 using piece_1105_mem, piece_1111_mem

theorem linked_10287 : Linked cell_10287 pieces := by
  link_source cell_10287 with piece_1105 using piece_1105_mem, ⟨piece_1110_mem, piece_1111_mem⟩

theorem linked_10288 : Linked cell_10288 pieces := by
  link_source cell_10288 with piece_1105 using piece_1105_mem, ⟨piece_1108_mem, ⟨piece_1109_mem, piece_1110_mem⟩⟩

theorem linked_10289 : Linked cell_10289 pieces := by
  link_source cell_10289 with piece_1106 using piece_1106_mem, ⟨piece_1110_mem, piece_1111_mem⟩

theorem linked_10290 : Linked cell_10290 pieces := by
  link_source cell_10290 with piece_1106 using piece_1106_mem, ⟨piece_1108_mem, ⟨piece_1109_mem, piece_1110_mem⟩⟩

theorem linked_10291 : Linked cell_10291 pieces := by
  link_source cell_10291 with piece_1106 using piece_1106_mem, piece_1108_mem

theorem linked_10292 : Linked cell_10292 pieces := by
  link_source cell_10292 with piece_1106 using piece_1106_mem, ⟨piece_1107_mem, piece_1108_mem⟩

theorem linked_10293 : Linked cell_10293 pieces := by
  link_source cell_10293 with piece_1107 using piece_1107_mem, ⟨piece_1108_mem, piece_1109_mem⟩

theorem linked_10294 : Linked cell_10294 pieces := by
  link_source cell_10294 with piece_1107 using piece_1107_mem, ⟨piece_1107_mem, piece_1108_mem⟩

theorem linked_10295 : Linked cell_10295 pieces := by
  link_source cell_10295 with piece_1107 using piece_1107_mem, piece_1107_mem

theorem linked_10296 : Linked cell_10296 pieces := by
  link_source cell_10296 with piece_1107 using piece_1107_mem, ⟨piece_1106_mem, piece_1107_mem⟩

theorem linked_10297 : Linked cell_10297 pieces := by
  link_source cell_10297 with piece_1108 using piece_1108_mem, piece_1107_mem

theorem linked_10298 : Linked cell_10298 pieces := by
  link_source cell_10298 with piece_1108 using piece_1108_mem, ⟨piece_1106_mem, piece_1107_mem⟩

theorem linked_10299 : Linked cell_10299 pieces := by
  link_source cell_10299 with piece_1108 using piece_1108_mem, piece_1106_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0205.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0205.cells,List.forall_mem_cons]
  exact ⟨linked_10250, linked_10251, linked_10252, linked_10253, linked_10254, linked_10255, linked_10256, linked_10257, linked_10258, linked_10259, linked_10260, linked_10261, linked_10262, linked_10263, linked_10264, linked_10265, linked_10266, linked_10267, linked_10268, linked_10269, linked_10270, linked_10271, linked_10272, linked_10273, linked_10274, linked_10275, linked_10276, linked_10277, linked_10278, linked_10279, linked_10280, linked_10281, linked_10282, linked_10283, linked_10284, linked_10285, linked_10286, linked_10287, linked_10288, linked_10289, linked_10290, linked_10291, linked_10292, linked_10293, linked_10294, linked_10295, linked_10296, linked_10297, linked_10298, linked_10299, by simp⟩

theorem covered : covers (22862500000000001 / 50000000000000000 : ℚ) (23168750000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0205.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0205
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0206
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(23168750000000001 / 50000000000000000 : ℚ), (23175000000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (32261566553 / 50000000000 : ℚ)
  w := (600669312219 / 400000000000 : ℚ)
  center := (23171875000000001 / 50000000000000000 : ℚ)
  supportValue := (5773728330988677 / 12500000000000000 : ℚ)
  supportSlope := (-23810387603058203 / 10000000000000000 : ℚ)
  oldCenter := (5773728330988677 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1110
  oldLo := (22800000000000001 / 50000000000000000 : ℚ)
  oldHi := (22825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1100, piece_1101]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10300 : Cell := { cellDefaults with
  r := (64561417720257 / 100000000000000 : ℚ)
  w := (7510926264483 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1108
  oldLo := (23075000000000001 / 50000000000000000 : ℚ)
  oldHi := (23125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1105, piece_1106]
}

def cell_10301 : Cell := { cellDefaults with
  domain := ⟨(23175000000000001 / 50000000000000000 : ℚ), (4635195530726257 / 10000000000000000 : ℚ)⟩
  center := (23175488826815643 / 50000000000000000 : ℚ)
  supportValue := (2889669951646201 / 6250000000000000 : ℚ)
  supportSlope := (-476561923942659 / 200000000000000 : ℚ)
  oldCenter := (2889669951646201 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1109
  oldLo := (23100000000000001 / 50000000000000000 : ℚ)
  oldHi := (23125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1106]
}

def cell_10302 : Cell := { cellDefaults with
  domain := ⟨(4635195530726257 / 10000000000000000 : ℚ), (23181738826815643 / 50000000000000000 : ℚ)⟩
  center := (2897357280027933 / 6250000000000000 : ℚ)
  supportValue := (184874832669663 / 400000000000000 : ℚ)
  supportSlope := (-11907095455262837 / 5000000000000000 : ℚ)
  oldCenter := (184874832669663 / 400000000000000 : ℚ)
  oldLo := (23100000000000001 / 50000000000000000 : ℚ)
  oldHi := (23125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1106]
}

def cell_10303 : Cell := { cellDefaults with
  domain := ⟨(23181738826815643 / 50000000000000000 : ℚ), (23187500000000001 / 50000000000000000 : ℚ)⟩
  center := (11592309706703911 / 25000000000000000 : ℚ)
  supportValue := (23095639689065303 / 50000000000000000 : ℚ)
  supportSlope := (-2379691134450483 / 1000000000000000 : ℚ)
  oldCenter := (23095639689065303 / 50000000000000000 : ℚ)
  oldLo := (23075000000000001 / 50000000000000000 : ℚ)
  oldHi := (23125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1105, piece_1106]
}

def cell_10304 : Cell := { cellDefaults with
  domain := ⟨(23187500000000001 / 50000000000000000 : ℚ), (23193750000000001 / 50000000000000000 : ℚ)⟩
  center := (23190625000000001 / 50000000000000000 : ℚ)
  supportValue := (923254192714193 / 2000000000000000 : ℚ)
  supportSlope := (-118870788249259 / 50000000000000 : ℚ)
  oldCenter := (923254192714193 / 2000000000000000 : ℚ)
  oldLo := (23050000000000001 / 50000000000000000 : ℚ)
  oldHi := (23100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1104, piece_1105]
}

def cell_10305 : Cell := { cellDefaults with
  domain := ⟨(23193750000000001 / 50000000000000000 : ℚ), (23200000000000001 / 50000000000000000 : ℚ)⟩
  center := (23196875000000001 / 50000000000000000 : ℚ)
  supportValue := (46133003043104737 / 100000000000000000 : ℚ)
  supportSlope := (-593893792337763 / 250000000000000 : ℚ)
  oldCenter := (46133003043104737 / 100000000000000000 : ℚ)
  oldLo := (23050000000000001 / 50000000000000000 : ℚ)
  oldHi := (23075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1104]
}

def cell_10306 : Cell := { cellDefaults with
  domain := ⟨(23200000000000001 / 50000000000000000 : ℚ), (23206250000000001 / 50000000000000000 : ℚ)⟩
  r := (64484897488033 / 100000000000000 : ℚ)
  w := (15011622739899 / 10000000000000 : ℚ)
  center := (23203125000000001 / 50000000000000000 : ℚ)
  supportValue := (23082655111212863 / 50000000000000000 : ℚ)
  supportSlope := (-2320439442937 / 976562500000 : ℚ)
  oldCenter := (23082655111212863 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1111
  oldLo := (23075000000000001 / 50000000000000000 : ℚ)
  oldHi := (23100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1105]
}

def cell_10307 : Cell := { cellDefaults with
  domain := ⟨(23206250000000001 / 50000000000000000 : ℚ), (23212500000000001 / 50000000000000000 : ℚ)⟩
  r := (64484897488033 / 100000000000000 : ℚ)
  w := (15011622739899 / 10000000000000 : ℚ)
  center := (23209375000000001 / 50000000000000000 : ℚ)
  supportValue := (4613561982008243 / 10000000000000000 : ℚ)
  supportSlope := (-37099065796381 / 15625000000000 : ℚ)
  oldCenter := (4613561982008243 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1111
  oldLo := (23050000000000001 / 50000000000000000 : ℚ)
  oldHi := (23100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1104, piece_1105]
}

def cell_10308 : Cell := { cellDefaults with
  domain := ⟨(23212500000000001 / 50000000000000000 : ℚ), (23218750000000001 / 50000000000000000 : ℚ)⟩
  r := (64484897488033 / 100000000000000 : ℚ)
  w := (15011622739899 / 10000000000000 : ℚ)
  center := (23215625000000001 / 50000000000000000 : ℚ)
  supportValue := (23052978236092647 / 50000000000000000 : ℚ)
  supportSlope := (-593005084147169 / 250000000000000 : ℚ)
  oldCenter := (23052978236092647 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1111
  oldLo := (23025000000000001 / 50000000000000000 : ℚ)
  oldHi := (23075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1103, piece_1104]
}

def cell_10309 : Cell := { cellDefaults with
  domain := ⟨(23218750000000001 / 50000000000000000 : ℚ), (23225000000000001 / 50000000000000000 : ℚ)⟩
  r := (64484897488033 / 100000000000000 : ℚ)
  w := (15011622739899 / 10000000000000 : ℚ)
  center := (23221875000000001 / 50000000000000000 : ℚ)
  supportValue := (23038158635847153 / 50000000000000000 : ℚ)
  supportSlope := (-5925018310748431 / 2500000000000000 : ℚ)
  oldCenter := (23038158635847153 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1111
  oldLo := (23025000000000001 / 50000000000000000 : ℚ)
  oldHi := (23050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1103]
}

def cell_10310 : Cell := { cellDefaults with
  domain := ⟨(23225000000000001 / 50000000000000000 : ℚ), (23231250000000001 / 50000000000000000 : ℚ)⟩
  r := (32223356860837 / 50000000000000 : ℚ)
  w := (1500652361363 / 1000000000000 : ℚ)
  center := (23228125000000001 / 50000000000000000 : ℚ)
  supportValue := (288178438438117 / 625000000000000 : ℚ)
  supportSlope := (-2370727138098161 / 1000000000000000 : ℚ)
  oldCenter := (288178438438117 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1112
  oldLo := (23025000000000001 / 50000000000000000 : ℚ)
  oldHi := (23075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1103, piece_1104]
}

def cell_10311 : Cell := { cellDefaults with
  domain := ⟨(23231250000000001 / 50000000000000000 : ℚ), (23237500000000001 / 50000000000000000 : ℚ)⟩
  r := (32223356860837 / 50000000000000 : ℚ)
  w := (1500652361363 / 1000000000000 : ℚ)
  center := (23234375000000001 / 50000000000000000 : ℚ)
  supportValue := (23039463546755437 / 50000000000000000 : ℚ)
  supportSlope := (-473757447422507 / 200000000000000 : ℚ)
  oldCenter := (23039463546755437 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1112
  oldLo := (23025000000000001 / 50000000000000000 : ℚ)
  oldHi := (23050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1103]
}

def cell_10312 : Cell := { cellDefaults with
  domain := ⟨(23237500000000001 / 50000000000000000 : ℚ), (23243750000000001 / 50000000000000000 : ℚ)⟩
  r := (32223356860837 / 50000000000000 : ℚ)
  w := (1500652361363 / 1000000000000 : ℚ)
  center := (23240625000000001 / 50000000000000000 : ℚ)
  supportValue := (4604933300964831 / 10000000000000000 : ℚ)
  supportSlope := (-11833211455587467 / 5000000000000000 : ℚ)
  oldCenter := (4604933300964831 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1112
  oldLo := (23000000000000001 / 50000000000000000 : ℚ)
  oldHi := (23050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1102, piece_1103]
}

def cell_10313 : Cell := { cellDefaults with
  domain := ⟨(23243750000000001 / 50000000000000000 : ℚ), (23250000000000001 / 50000000000000000 : ℚ)⟩
  r := (32223356860837 / 50000000000000 : ℚ)
  w := (1500652361363 / 1000000000000 : ℚ)
  center := (23246875000000001 / 50000000000000000 : ℚ)
  supportValue := (23009880612454553 / 50000000000000000 : ℚ)
  supportSlope := (-23644588049576143 / 10000000000000000 : ℚ)
  oldCenter := (23009880612454553 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1112
  oldLo := (23000000000000001 / 50000000000000000 : ℚ)
  oldHi := (23025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1102]
}

def cell_10314 : Cell := { cellDefaults with
  domain := ⟨(23250000000000001 / 50000000000000000 : ℚ), (23256250000000001 / 50000000000000000 : ℚ)⟩
  r := (64408577684609 / 100000000000000 : ℚ)
  w := (1500143418931 / 1000000000000 : ℚ)
  center := (23253125000000001 / 50000000000000000 : ℚ)
  supportValue := (230259643129123 / 500000000000000 : ℚ)
  supportSlope := (-2365353095853173 / 1000000000000000 : ℚ)
  oldCenter := (230259643129123 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1113
  oldLo := (23000000000000001 / 50000000000000000 : ℚ)
  oldHi := (23050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1102, piece_1103]
}

def cell_10315 : Cell := { cellDefaults with
  domain := ⟨(23256250000000001 / 50000000000000000 : ℚ), (23262500000000001 / 50000000000000000 : ℚ)⟩
  r := (64408577684609 / 100000000000000 : ℚ)
  w := (1500143418931 / 1000000000000 : ℚ)
  center := (23259375000000001 / 50000000000000000 : ℚ)
  supportValue := (9204474538854659 / 20000000000000000 : ℚ)
  supportSlope := (-23632429702287183 / 10000000000000000 : ℚ)
  oldCenter := (9204474538854659 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1113
  oldLo := (23000000000000001 / 50000000000000000 : ℚ)
  oldHi := (23025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1102]
}

def cell_10316 : Cell := { cellDefaults with
  domain := ⟨(23262500000000001 / 50000000000000000 : ℚ), (23268750000000001 / 50000000000000000 : ℚ)⟩
  r := (64408577684609 / 100000000000000 : ℚ)
  w := (1500143418931 / 1000000000000 : ℚ)
  center := (23265625000000001 / 50000000000000000 : ℚ)
  supportValue := (14717710613307 / 32000000000000 : ℚ)
  supportSlope := (-11806409052237399 / 5000000000000000 : ℚ)
  oldCenter := (14717710613307 / 32000000000000 : ℚ)
  newCoefficients := coefficients_1113
  oldLo := (22975000000000001 / 50000000000000000 : ℚ)
  oldHi := (23025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1101, piece_1102]
}

def cell_10317 : Cell := { cellDefaults with
  domain := ⟨(23268750000000001 / 50000000000000000 : ℚ), (23275000000000001 / 50000000000000000 : ℚ)⟩
  r := (64408577684609 / 100000000000000 : ℚ)
  w := (1500143418931 / 1000000000000 : ℚ)
  center := (23271875000000001 / 50000000000000000 : ℚ)
  supportValue := (4596334303800777 / 10000000000000000 : ℚ)
  supportSlope := (-4717938926749099 / 2000000000000000 : ℚ)
  oldCenter := (4596334303800777 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1113
  oldLo := (22950000000000001 / 50000000000000000 : ℚ)
  oldHi := (23000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1100, piece_1101]
}

def cell_10318 : Cell := { cellDefaults with
  domain := ⟨(23275000000000001 / 50000000000000000 : ℚ), (186250000000000009 / 400000000000000000 : ℚ)⟩
  r := (64370492648007 / 100000000000000 : ℚ)
  w := (14996355990439 / 10000000000000 : ℚ)
  center := (372450000000000017 / 800000000000000000 : ℚ)
  supportValue := (2299771736430451 / 5000000000000000 : ℚ)
  supportSlope := (-4719992567890591 / 2000000000000000 : ℚ)
  oldCenter := (2299771736430451 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1114
  oldLo := (22975000000000001 / 50000000000000000 : ℚ)
  oldHi := (23025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1101, piece_1102]
}

def cell_10319 : Cell := { cellDefaults with
  domain := ⟨(186250000000000009 / 400000000000000000 : ℚ), (18630000000000001 / 40000000000000000 : ℚ)⟩
  r := (64370492648007 / 100000000000000 : ℚ)
  w := (14996355990439 / 10000000000000 : ℚ)
  center := (372550000000000019 / 800000000000000000 : ℚ)
  supportValue := (4596594727114591 / 10000000000000000 : ℚ)
  supportSlope := (-23577179233544383 / 10000000000000000 : ℚ)
  oldCenter := (4596594727114591 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1114
  oldLo := (22975000000000001 / 50000000000000000 : ℚ)
  oldHi := (23000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1101]
}

def cell_10320 : Cell := { cellDefaults with
  domain := ⟨(18630000000000001 / 40000000000000000 : ℚ), (186350000000000011 / 400000000000000000 : ℚ)⟩
  r := (64370492648007 / 100000000000000 : ℚ)
  w := (14996355990439 / 10000000000000 : ℚ)
  center := (372650000000000021 / 800000000000000000 : ℚ)
  supportValue := (18374594833763 / 40000000000000 : ℚ)
  supportSlope := (-1177969315226489 / 500000000000000 : ℚ)
  oldCenter := (18374594833763 / 40000000000000 : ℚ)
  newCoefficients := coefficients_1114
  oldLo := (22950000000000001 / 50000000000000000 : ℚ)
  oldHi := (23000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1100, piece_1101]
}

def cell_10321 : Cell := { cellDefaults with
  domain := ⟨(186350000000000011 / 400000000000000000 : ℚ), (46600000000000003 / 100000000000000000 : ℚ)⟩
  r := (64370492648007 / 100000000000000 : ℚ)
  w := (14996355990439 / 10000000000000 : ℚ)
  center := (372750000000000023 / 800000000000000000 : ℚ)
  supportValue := (22953526684809483 / 50000000000000000 : ℚ)
  supportSlope := (-23536318041567723 / 10000000000000000 : ℚ)
  oldCenter := (22953526684809483 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1114
  oldLo := (22925000000000001 / 50000000000000000 : ℚ)
  oldHi := (22975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1099, piece_1100]
}

def cell_10322 : Cell := { cellDefaults with
  domain := ⟨(46600000000000003 / 100000000000000000 : ℚ), (46612500000000003 / 100000000000000000 : ℚ)⟩
  r := (32166228406039 / 50000000000000 : ℚ)
  w := (14991288544083 / 10000000000000 : ℚ)
  center := (46606250000000003 / 100000000000000000 : ℚ)
  supportValue := (71779800603737 / 156250000000000 : ℚ)
  supportSlope := (-23546568545995683 / 10000000000000000 : ℚ)
  oldCenter := (71779800603737 / 156250000000000 : ℚ)
  newCoefficients := coefficients_1115
  oldLo := (22950000000000001 / 50000000000000000 : ℚ)
  oldHi := (23000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1100, piece_1101]
}

def cell_10323 : Cell := { cellDefaults with
  domain := ⟨(46612500000000003 / 100000000000000000 : ℚ), (46625000000000003 / 100000000000000000 : ℚ)⟩
  r := (32166228406039 / 50000000000000 : ℚ)
  w := (14991288544083 / 10000000000000 : ℚ)
  center := (46618750000000003 / 100000000000000000 : ℚ)
  supportValue := (9181930758883371 / 20000000000000000 : ℚ)
  supportSlope := (-11761760296971069 / 5000000000000000 : ℚ)
  oldCenter := (9181930758883371 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1115
  oldLo := (22925000000000001 / 50000000000000000 : ℚ)
  oldHi := (22975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1099, piece_1100]
}

def cell_10324 : Cell := { cellDefaults with
  domain := ⟨(46625000000000003 / 100000000000000000 : ℚ), (46637500000000003 / 100000000000000000 : ℚ)⟩
  r := (32166228406039 / 50000000000000 : ℚ)
  w := (14991288544083 / 10000000000000 : ℚ)
  center := (46631250000000003 / 100000000000000000 : ℚ)
  supportValue := (4588026023095927 / 10000000000000000 : ℚ)
  supportSlope := (-4700946366581249 / 2000000000000000 : ℚ)
  oldCenter := (4588026023095927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1115
  oldLo := (22925000000000001 / 50000000000000000 : ℚ)
  oldHi := (22950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1099]
}

def cell_10325 : Cell := { cellDefaults with
  domain := ⟨(46637500000000003 / 100000000000000000 : ℚ), (46650000000000003 / 100000000000000000 : ℚ)⟩
  r := (32166228406039 / 50000000000000 : ℚ)
  w := (14991288544083 / 10000000000000 : ℚ)
  center := (46643750000000003 / 100000000000000000 : ℚ)
  supportValue := (22925447593900733 / 50000000000000000 : ℚ)
  supportSlope := (-1174155666510579 / 500000000000000 : ℚ)
  oldCenter := (22925447593900733 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1115
  oldLo := (22900000000000001 / 50000000000000000 : ℚ)
  oldHi := (22950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1098, piece_1099]
}

def cell_10326 : Cell := { cellDefaults with
  domain := ⟨(46650000000000003 / 100000000000000000 : ℚ), (46662500000000003 / 100000000000000000 : ℚ)⟩
  r := (64294470178319 / 100000000000000 : ℚ)
  w := (7493115060451 / 5000000000000 : ℚ)
  center := (46656250000000003 / 100000000000000000 : ℚ)
  supportValue := (11470711731111989 / 25000000000000000 : ℚ)
  supportSlope := (-117463302749643 / 50000000000000 : ℚ)
  oldCenter := (11470711731111989 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1116
  oldLo := (22925000000000001 / 50000000000000000 : ℚ)
  oldHi := (22950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1099]
}

def cell_10327 : Cell := { cellDefaults with
  domain := ⟨(46662500000000003 / 100000000000000000 : ℚ), (46675000000000003 / 100000000000000000 : ℚ)⟩
  r := (64294470178319 / 100000000000000 : ℚ)
  w := (7493115060451 / 5000000000000 : ℚ)
  center := (46668750000000003 / 100000000000000000 : ℚ)
  supportValue := (11463374237861411 / 25000000000000000 : ℚ)
  supportSlope := (-23470355219661343 / 10000000000000000 : ℚ)
  oldCenter := (11463374237861411 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1116
  oldLo := (22900000000000001 / 50000000000000000 : ℚ)
  oldHi := (22950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1098, piece_1099]
}

def cell_10328 : Cell := { cellDefaults with
  domain := ⟨(46675000000000003 / 100000000000000000 : ℚ), (46687500000000003 / 100000000000000000 : ℚ)⟩
  r := (64294470178319 / 100000000000000 : ℚ)
  w := (7493115060451 / 5000000000000 : ℚ)
  center := (46681250000000003 / 100000000000000000 : ℚ)
  supportValue := (572802122429707 / 1250000000000000 : ℚ)
  supportSlope := (-5862488333339133 / 2500000000000000 : ℚ)
  oldCenter := (572802122429707 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1116
  oldLo := (22900000000000001 / 50000000000000000 : ℚ)
  oldHi := (22925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1098]
}

def cell_10329 : Cell := { cellDefaults with
  domain := ⟨(46687500000000003 / 100000000000000000 : ℚ), (46700000000000003 / 100000000000000000 : ℚ)⟩
  r := (64294470178319 / 100000000000000 : ℚ)
  w := (7493115060451 / 5000000000000 : ℚ)
  center := (46693750000000003 / 100000000000000000 : ℚ)
  supportValue := (22897435693587817 / 50000000000000000 : ℚ)
  supportSlope := (-11715039517201653 / 5000000000000000 : ℚ)
  oldCenter := (22897435693587817 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1116
  oldLo := (22875000000000001 / 50000000000000000 : ℚ)
  oldHi := (22925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1096, piece_1097, piece_1098]
}

def cell_10330 : Cell := { cellDefaults with
  domain := ⟨(46700000000000003 / 100000000000000000 : ℚ), (46712500000000003 / 100000000000000000 : ℚ)⟩
  r := (64256533182361 / 100000000000000 : ℚ)
  w := (7490591034329 / 5000000000000 : ℚ)
  center := (46706250000000003 / 100000000000000000 : ℚ)
  supportValue := (45826752963918377 / 100000000000000000 : ℚ)
  supportSlope := (-2343792097070363 / 1000000000000000 : ℚ)
  oldCenter := (45826752963918377 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1117
  oldLo := (22900000000000001 / 50000000000000000 : ℚ)
  oldHi := (22925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1098]
}

def cell_10331 : Cell := { cellDefaults with
  domain := ⟨(46712500000000003 / 100000000000000000 : ℚ), (46725000000000003 / 100000000000000000 : ℚ)⟩
  r := (64256533182361 / 100000000000000 : ℚ)
  w := (7490591034329 / 5000000000000 : ℚ)
  center := (46718750000000003 / 100000000000000000 : ℚ)
  supportValue := (715585476227031 / 1562500000000000 : ℚ)
  supportSlope := (-585433953790071 / 250000000000000 : ℚ)
  oldCenter := (715585476227031 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1117
  oldLo := (22875000000000001 / 50000000000000000 : ℚ)
  oldHi := (22925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1096, piece_1097, piece_1098]
}

def cell_10332 : Cell := { cellDefaults with
  domain := ⟨(46725000000000003 / 100000000000000000 : ℚ), (46737500000000003 / 100000000000000000 : ℚ)⟩
  r := (64256533182361 / 100000000000000 : ℚ)
  w := (7490591034329 / 5000000000000 : ℚ)
  center := (46731250000000003 / 100000000000000000 : ℚ)
  supportValue := (45768210409428073 / 100000000000000000 : ℚ)
  supportSlope := (-2339536768369399 / 1000000000000000 : ℚ)
  oldCenter := (45768210409428073 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1117
  oldLo := (22875000000000001 / 50000000000000000 : ℚ)
  oldHi := (22899441340782123 / 50000000000000000 : ℚ)
  oldPieces := [piece_1096]
}

def cell_10333 : Cell := { cellDefaults with
  domain := ⟨(46737500000000003 / 100000000000000000 : ℚ), (46750000000000003 / 100000000000000000 : ℚ)⟩
  r := (64256533182361 / 100000000000000 : ℚ)
  w := (7490591034329 / 5000000000000 : ℚ)
  center := (46743750000000003 / 100000000000000000 : ℚ)
  supportValue := (571737226608481 / 1250000000000000 : ℚ)
  supportSlope := (-2337721830951267 / 1000000000000000 : ℚ)
  oldCenter := (571737226608481 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1117
  oldLo := (22850000000000001 / 50000000000000000 : ℚ)
  oldHi := (22899441340782123 / 50000000000000000 : ℚ)
  oldPieces := [piece_1095, piece_1096]
}

def cell_10334 : Cell := { cellDefaults with
  domain := ⟨(46750000000000003 / 100000000000000000 : ℚ), (46762500000000003 / 100000000000000000 : ℚ)⟩
  r := (8027330715151 / 12500000000000 : ℚ)
  w := (14976145018451 / 10000000000000 : ℚ)
  center := (46756250000000003 / 100000000000000000 : ℚ)
  supportValue := (11442697005007299 / 25000000000000000 : ℚ)
  supportSlope := (-23383372199301533 / 10000000000000000 : ℚ)
  oldCenter := (11442697005007299 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1118
  oldLo := (22875000000000001 / 50000000000000000 : ℚ)
  oldHi := (22899441340782123 / 50000000000000000 : ℚ)
  oldPieces := [piece_1096]
}

def cell_10335 : Cell := { cellDefaults with
  domain := ⟨(46762500000000003 / 100000000000000000 : ℚ), (46775000000000003 / 100000000000000000 : ℚ)⟩
  r := (8027330715151 / 12500000000000 : ℚ)
  w := (14976145018451 / 10000000000000 : ℚ)
  center := (46768750000000003 / 100000000000000000 : ℚ)
  supportValue := (22870785807960567 / 50000000000000000 : ℚ)
  supportSlope := (-23364533723650993 / 10000000000000000 : ℚ)
  oldCenter := (22870785807960567 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1118
  oldLo := (22850000000000001 / 50000000000000000 : ℚ)
  oldHi := (22899441340782123 / 50000000000000000 : ℚ)
  oldPieces := [piece_1095, piece_1096]
}

def cell_10336 : Cell := { cellDefaults with
  domain := ⟨(46775000000000003 / 100000000000000000 : ℚ), (46787500000000003 / 100000000000000000 : ℚ)⟩
  r := (8027330715151 / 12500000000000 : ℚ)
  w := (14976145018451 / 10000000000000 : ℚ)
  center := (46781250000000003 / 100000000000000000 : ℚ)
  supportValue := (45712379585651153 / 100000000000000000 : ℚ)
  supportSlope := (-23341603206361583 / 10000000000000000 : ℚ)
  oldCenter := (45712379585651153 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1118
  oldLo := (22825000000000001 / 50000000000000000 : ℚ)
  oldHi := (22875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1094, piece_1095]
}

def cell_10337 : Cell := { cellDefaults with
  domain := ⟨(46787500000000003 / 100000000000000000 : ℚ), (46800000000000003 / 100000000000000000 : ℚ)⟩
  r := (8027330715151 / 12500000000000 : ℚ)
  w := (14976145018451 / 10000000000000 : ℚ)
  center := (46793750000000003 / 100000000000000000 : ℚ)
  supportValue := (4568321322241651 / 10000000000000000 : ℚ)
  supportSlope := (-4664778710187889 / 2000000000000000 : ℚ)
  oldCenter := (4568321322241651 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1118
  oldLo := (22825000000000001 / 50000000000000000 : ℚ)
  oldHi := (22850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1094]
}

def cell_10338 : Cell := { cellDefaults with
  domain := ⟨(46800000000000003 / 100000000000000000 : ℚ), (46812500000000003 / 100000000000000000 : ℚ)⟩
  r := (8022600939857 / 12500000000000 : ℚ)
  w := (3742779619517 / 2500000000000 : ℚ)
  center := (46806250000000003 / 100000000000000000 : ℚ)
  supportValue := (45714953286219007 / 100000000000000000 : ℚ)
  supportSlope := (-1166450765287319 / 500000000000000 : ℚ)
  oldCenter := (45714953286219007 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1119
  oldLo := (22850000000000001 / 50000000000000000 : ℚ)
  oldHi := (22875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1095]
}

def cell_10339 : Cell := { cellDefaults with
  domain := ⟨(46812500000000003 / 100000000000000000 : ℚ), (46825000000000003 / 100000000000000000 : ℚ)⟩
  r := (8022600939857 / 12500000000000 : ℚ)
  w := (3742779619517 / 2500000000000 : ℚ)
  center := (46818750000000003 / 100000000000000000 : ℚ)
  supportValue := (4568580275347591 / 10000000000000000 : ℚ)
  supportSlope := (-11655938341328387 / 5000000000000000 : ℚ)
  oldCenter := (4568580275347591 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1119
  oldLo := (22825000000000001 / 50000000000000000 : ℚ)
  oldHi := (22875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1094, piece_1095]
}

def cell_10340 : Cell := { cellDefaults with
  domain := ⟨(46825000000000003 / 100000000000000000 : ℚ), (46837500000000003 / 100000000000000000 : ℚ)⟩
  r := (8022600939857 / 12500000000000 : ℚ)
  w := (3742779619517 / 2500000000000 : ℚ)
  center := (46831250000000003 / 100000000000000000 : ℚ)
  supportValue := (4565667852563003 / 10000000000000000 : ℚ)
  supportSlope := (-23288995957022607 / 10000000000000000 : ℚ)
  oldCenter := (4565667852563003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1119
  oldHi := (22850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1093, piece_1094]
}

def cell_10341 : Cell := { cellDefaults with
  domain := ⟨(46837500000000003 / 100000000000000000 : ℚ), (46850000000000003 / 100000000000000000 : ℚ)⟩
  r := (8022600939857 / 12500000000000 : ℚ)
  w := (3742779619517 / 2500000000000 : ℚ)
  center := (46843750000000003 / 100000000000000000 : ℚ)
  supportValue := (45627577871476477 / 100000000000000000 : ℚ)
  supportSlope := (-11634883410547303 / 5000000000000000 : ℚ)
  oldCenter := (45627577871476477 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1119
  oldPieces := [piece_1093]
}

def cell_10342 : Cell := { cellDefaults with
  domain := ⟨(46850000000000003 / 100000000000000000 : ℚ), (46862500000000003 / 100000000000000000 : ℚ)⟩
  r := (64143018293631 / 100000000000000 : ℚ)
  w := (7483051099883 / 5000000000000 : ℚ)
  center := (46856250000000003 / 100000000000000000 : ℚ)
  supportValue := (4565924921615773 / 10000000000000000 : ℚ)
  supportSlope := (-232763519801793 / 100000000000000 : ℚ)
  oldCenter := (4565924921615773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1120
  oldHi := (22850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1093, piece_1094]
}

def cell_10343 : Cell := { cellDefaults with
  domain := ⟨(46862500000000003 / 100000000000000000 : ℚ), (46875000000000003 / 100000000000000000 : ℚ)⟩
  r := (64143018293631 / 100000000000000 : ℚ)
  w := (7483051099883 / 5000000000000 : ℚ)
  center := (46868750000000003 / 100000000000000000 : ℚ)
  supportValue := (4563016434620707 / 10000000000000000 : ℚ)
  supportSlope := (-23257881808813607 / 10000000000000000 : ℚ)
  oldCenter := (4563016434620707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1120
  oldPieces := [piece_1093]
}

def cell_10344 : Cell := { cellDefaults with
  domain := ⟨(46875000000000003 / 100000000000000000 : ℚ), (46887500000000003 / 100000000000000000 : ℚ)⟩
  r := (64143018293631 / 100000000000000 : ℚ)
  w := (7483051099883 / 5000000000000 : ℚ)
  center := (46881250000000003 / 100000000000000000 : ℚ)
  supportValue := (35625865377981 / 78125000000000 : ℚ)
  supportSlope := (-2323655625796839 / 1000000000000000 : ℚ)
  oldCenter := (35625865377981 / 78125000000000 : ℚ)
  newCoefficients := coefficients_1120
  oldLo := (22775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1092, piece_1093]
}

def cell_10345 : Cell := { cellDefaults with
  domain := ⟨(46887500000000003 / 100000000000000000 : ℚ), (46900000000000003 / 100000000000000000 : ℚ)⟩
  r := (64143018293631 / 100000000000000 : ℚ)
  w := (7483051099883 / 5000000000000 : ℚ)
  center := (46893750000000003 / 100000000000000000 : ℚ)
  supportValue := (2278603626442751 / 5000000000000000 : ℚ)
  supportSlope := (-5803957692751549 / 2500000000000000 : ℚ)
  oldCenter := (2278603626442751 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1120
  oldLo := (22775000000000001 / 50000000000000000 : ℚ)
  oldHi := (22800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1092]
}

def cell_10346 : Cell := { cellDefaults with
  domain := ⟨(46900000000000003 / 100000000000000000 : ℚ), (4690502793296089 / 10000000000000000 : ℚ)⟩
  r := (32052639567909 / 50000000000000 : ℚ)
  w := (3740273843817 / 2500000000000 : ℚ)
  center := (93805027932960893 / 200000000000000000 : ℚ)
  supportValue := (4561231209094297 / 10000000000000000 : ℚ)
  supportSlope := (-580709081759509 / 250000000000000 : ℚ)
  oldCenter := (4561231209094297 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1121
  oldPieces := [piece_1093]
}

def cell_10347 : Cell := { cellDefaults with
  domain := ⟨(4690502793296089 / 10000000000000000 : ℚ), (93830027932960893 / 200000000000000000 : ℚ)⟩
  r := (32052639567909 / 50000000000000 : ℚ)
  w := (3740273843817 / 2500000000000 : ℚ)
  center := (187640083798882673 / 400000000000000000 : ℚ)
  supportValue := (4559491946888181 / 10000000000000000 : ℚ)
  supportSlope := (-5804806421710157 / 2500000000000000 : ℚ)
  oldCenter := (4559491946888181 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1122
  oldLo := (22775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1092, piece_1093]
}

def cell_10348 : Cell := { cellDefaults with
  domain := ⟨(93830027932960893 / 200000000000000000 : ℚ), (46925000000000003 / 100000000000000000 : ℚ)⟩
  r := (32052639567909 / 50000000000000 : ℚ)
  w := (3740273843817 / 2500000000000 : ℚ)
  center := (187680027932960899 / 400000000000000000 : ℚ)
  supportValue := (4557170847622763 / 10000000000000000 : ℚ)
  supportSlope := (-4640292077473739 / 2000000000000000 : ℚ)
  oldCenter := (4557170847622763 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1122
  oldLo := (22775000000000001 / 50000000000000000 : ℚ)
  oldHi := (22800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1092]
}

def cell_10349 : Cell := { cellDefaults with
  domain := ⟨(46925000000000003 / 100000000000000000 : ℚ), (46937500000000003 / 100000000000000000 : ℚ)⟩
  r := (32052639567909 / 50000000000000 : ℚ)
  w := (3740273843817 / 2500000000000 : ℚ)
  center := (46931250000000003 / 100000000000000000 : ℚ)
  supportValue := (4554566602753159 / 10000000000000000 : ℚ)
  supportSlope := (-2318428383244253 / 1000000000000000 : ℚ)
  oldCenter := (4554566602753159 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1122
  oldLo := (22750000000000001 / 50000000000000000 : ℚ)
  oldHi := (22800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1091, piece_1092]
}

theorem check_10300 : cell_10300.check = true := by
  decide +kernel

theorem check_10301 : cell_10301.check = true := by
  decide +kernel

theorem check_10302 : cell_10302.check = true := by
  decide +kernel

theorem check_10303 : cell_10303.check = true := by
  decide +kernel

theorem check_10304 : cell_10304.check = true := by
  decide +kernel

theorem check_10305 : cell_10305.check = true := by
  decide +kernel

theorem check_10306 : cell_10306.check = true := by
  decide +kernel

theorem check_10307 : cell_10307.check = true := by
  decide +kernel

theorem check_10308 : cell_10308.check = true := by
  decide +kernel

theorem check_10309 : cell_10309.check = true := by
  decide +kernel

theorem check_10310 : cell_10310.check = true := by
  decide +kernel

theorem check_10311 : cell_10311.check = true := by
  decide +kernel

theorem check_10312 : cell_10312.check = true := by
  decide +kernel

theorem check_10313 : cell_10313.check = true := by
  decide +kernel

theorem check_10314 : cell_10314.check = true := by
  decide +kernel

theorem check_10315 : cell_10315.check = true := by
  decide +kernel

theorem check_10316 : cell_10316.check = true := by
  decide +kernel

theorem check_10317 : cell_10317.check = true := by
  decide +kernel

theorem check_10318 : cell_10318.check = true := by
  decide +kernel

theorem check_10319 : cell_10319.check = true := by
  decide +kernel

theorem check_10320 : cell_10320.check = true := by
  decide +kernel

theorem check_10321 : cell_10321.check = true := by
  decide +kernel

theorem check_10322 : cell_10322.check = true := by
  decide +kernel

theorem check_10323 : cell_10323.check = true := by
  decide +kernel

theorem check_10324 : cell_10324.check = true := by
  decide +kernel

theorem check_10325 : cell_10325.check = true := by
  decide +kernel

theorem check_10326 : cell_10326.check = true := by
  decide +kernel

theorem check_10327 : cell_10327.check = true := by
  decide +kernel

theorem check_10328 : cell_10328.check = true := by
  decide +kernel

theorem check_10329 : cell_10329.check = true := by
  decide +kernel

theorem check_10330 : cell_10330.check = true := by
  decide +kernel

theorem check_10331 : cell_10331.check = true := by
  decide +kernel

theorem check_10332 : cell_10332.check = true := by
  decide +kernel

theorem check_10333 : cell_10333.check = true := by
  decide +kernel

theorem check_10334 : cell_10334.check = true := by
  decide +kernel

theorem check_10335 : cell_10335.check = true := by
  decide +kernel

theorem check_10336 : cell_10336.check = true := by
  decide +kernel

theorem check_10337 : cell_10337.check = true := by
  decide +kernel

theorem check_10338 : cell_10338.check = true := by
  decide +kernel

theorem check_10339 : cell_10339.check = true := by
  decide +kernel

theorem check_10340 : cell_10340.check = true := by
  decide +kernel

theorem check_10341 : cell_10341.check = true := by
  decide +kernel

theorem check_10342 : cell_10342.check = true := by
  decide +kernel

theorem check_10343 : cell_10343.check = true := by
  decide +kernel

theorem check_10344 : cell_10344.check = true := by
  decide +kernel

theorem check_10345 : cell_10345.check = true := by
  decide +kernel

theorem check_10346 : cell_10346.check = true := by
  decide +kernel

theorem check_10347 : cell_10347.check = true := by
  decide +kernel

theorem check_10348 : cell_10348.check = true := by
  decide +kernel

theorem check_10349 : cell_10349.check = true := by
  decide +kernel

def cells : List Cell := [cell_10300, cell_10301, cell_10302, cell_10303, cell_10304, cell_10305, cell_10306, cell_10307, cell_10308, cell_10309, cell_10310, cell_10311, cell_10312, cell_10313, cell_10314, cell_10315, cell_10316, cell_10317, cell_10318, cell_10319, cell_10320, cell_10321, cell_10322, cell_10323, cell_10324, cell_10325, cell_10326, cell_10327, cell_10328, cell_10329, cell_10330, cell_10331, cell_10332, cell_10333, cell_10334, cell_10335, cell_10336, cell_10337, cell_10338, cell_10339, cell_10340, cell_10341, cell_10342, cell_10343, cell_10344, cell_10345, cell_10346, cell_10347, cell_10348, cell_10349]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10300, check_10301, check_10302, check_10303, check_10304, check_10305, check_10306, check_10307, check_10308, check_10309, check_10310, check_10311, check_10312, check_10313, check_10314, check_10315, check_10316, check_10317, check_10318, check_10319, check_10320, check_10321, check_10322, check_10323, check_10324, check_10325, check_10326, check_10327, check_10328, check_10329, check_10330, check_10331, check_10332, check_10333, check_10334, check_10335, check_10336, check_10337, check_10338, check_10339, check_10340, check_10341, check_10342, check_10343, check_10344, check_10345, check_10346, check_10347, check_10348, check_10349, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0206

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0206
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0206
open AnalyticBounds.ExpressionCertificate

theorem linked_10300 : Linked cell_10300 pieces := by
  link_source cell_10300 with piece_1108 using piece_1108_mem, ⟨piece_1105_mem, piece_1106_mem⟩

theorem linked_10301 : Linked cell_10301 pieces := by
  link_source cell_10301 with piece_1109 using piece_1109_mem, piece_1106_mem

theorem linked_10302 : Linked cell_10302 pieces := by
  link_source cell_10302 with piece_1110 using piece_1110_mem, piece_1106_mem

theorem linked_10303 : Linked cell_10303 pieces := by
  link_source cell_10303 with piece_1110 using piece_1110_mem, ⟨piece_1105_mem, piece_1106_mem⟩

theorem linked_10304 : Linked cell_10304 pieces := by
  link_source cell_10304 with piece_1110 using piece_1110_mem, ⟨piece_1104_mem, piece_1105_mem⟩

theorem linked_10305 : Linked cell_10305 pieces := by
  link_source cell_10305 with piece_1110 using piece_1110_mem, piece_1104_mem

theorem linked_10306 : Linked cell_10306 pieces := by
  link_source cell_10306 with piece_1111 using piece_1111_mem, piece_1105_mem

theorem linked_10307 : Linked cell_10307 pieces := by
  link_source cell_10307 with piece_1111 using piece_1111_mem, ⟨piece_1104_mem, piece_1105_mem⟩

theorem linked_10308 : Linked cell_10308 pieces := by
  link_source cell_10308 with piece_1111 using piece_1111_mem, ⟨piece_1103_mem, piece_1104_mem⟩

theorem linked_10309 : Linked cell_10309 pieces := by
  link_source cell_10309 with piece_1111 using piece_1111_mem, piece_1103_mem

theorem linked_10310 : Linked cell_10310 pieces := by
  link_source cell_10310 with piece_1112 using piece_1112_mem, ⟨piece_1103_mem, piece_1104_mem⟩

theorem linked_10311 : Linked cell_10311 pieces := by
  link_source cell_10311 with piece_1112 using piece_1112_mem, piece_1103_mem

theorem linked_10312 : Linked cell_10312 pieces := by
  link_source cell_10312 with piece_1112 using piece_1112_mem, ⟨piece_1102_mem, piece_1103_mem⟩

theorem linked_10313 : Linked cell_10313 pieces := by
  link_source cell_10313 with piece_1112 using piece_1112_mem, piece_1102_mem

theorem linked_10314 : Linked cell_10314 pieces := by
  link_source cell_10314 with piece_1113 using piece_1113_mem, ⟨piece_1102_mem, piece_1103_mem⟩

theorem linked_10315 : Linked cell_10315 pieces := by
  link_source cell_10315 with piece_1113 using piece_1113_mem, piece_1102_mem

theorem linked_10316 : Linked cell_10316 pieces := by
  link_source cell_10316 with piece_1113 using piece_1113_mem, ⟨piece_1101_mem, piece_1102_mem⟩

theorem linked_10317 : Linked cell_10317 pieces := by
  link_source cell_10317 with piece_1113 using piece_1113_mem, ⟨piece_1100_mem, piece_1101_mem⟩

theorem linked_10318 : Linked cell_10318 pieces := by
  link_source cell_10318 with piece_1114 using piece_1114_mem, ⟨piece_1101_mem, piece_1102_mem⟩

theorem linked_10319 : Linked cell_10319 pieces := by
  link_source cell_10319 with piece_1114 using piece_1114_mem, piece_1101_mem

theorem linked_10320 : Linked cell_10320 pieces := by
  link_source cell_10320 with piece_1114 using piece_1114_mem, ⟨piece_1100_mem, piece_1101_mem⟩

theorem linked_10321 : Linked cell_10321 pieces := by
  link_source cell_10321 with piece_1114 using piece_1114_mem, ⟨piece_1099_mem, piece_1100_mem⟩

theorem linked_10322 : Linked cell_10322 pieces := by
  link_source cell_10322 with piece_1115 using piece_1115_mem, ⟨piece_1100_mem, piece_1101_mem⟩

theorem linked_10323 : Linked cell_10323 pieces := by
  link_source cell_10323 with piece_1115 using piece_1115_mem, ⟨piece_1099_mem, piece_1100_mem⟩

theorem linked_10324 : Linked cell_10324 pieces := by
  link_source cell_10324 with piece_1115 using piece_1115_mem, piece_1099_mem

theorem linked_10325 : Linked cell_10325 pieces := by
  link_source cell_10325 with piece_1115 using piece_1115_mem, ⟨piece_1098_mem, piece_1099_mem⟩

theorem linked_10326 : Linked cell_10326 pieces := by
  link_source cell_10326 with piece_1116 using piece_1116_mem, piece_1099_mem

theorem linked_10327 : Linked cell_10327 pieces := by
  link_source cell_10327 with piece_1116 using piece_1116_mem, ⟨piece_1098_mem, piece_1099_mem⟩

theorem linked_10328 : Linked cell_10328 pieces := by
  link_source cell_10328 with piece_1116 using piece_1116_mem, piece_1098_mem

theorem linked_10329 : Linked cell_10329 pieces := by
  link_source cell_10329 with piece_1116 using piece_1116_mem, ⟨piece_1096_mem, ⟨piece_1097_mem, piece_1098_mem⟩⟩

theorem linked_10330 : Linked cell_10330 pieces := by
  link_source cell_10330 with piece_1117 using piece_1117_mem, piece_1098_mem

theorem linked_10331 : Linked cell_10331 pieces := by
  link_source cell_10331 with piece_1117 using piece_1117_mem, ⟨piece_1096_mem, ⟨piece_1097_mem, piece_1098_mem⟩⟩

theorem linked_10332 : Linked cell_10332 pieces := by
  link_source cell_10332 with piece_1117 using piece_1117_mem, piece_1096_mem

theorem linked_10333 : Linked cell_10333 pieces := by
  link_source cell_10333 with piece_1117 using piece_1117_mem, ⟨piece_1095_mem, piece_1096_mem⟩

theorem linked_10334 : Linked cell_10334 pieces := by
  link_source cell_10334 with piece_1118 using piece_1118_mem, piece_1096_mem

theorem linked_10335 : Linked cell_10335 pieces := by
  link_source cell_10335 with piece_1118 using piece_1118_mem, ⟨piece_1095_mem, piece_1096_mem⟩

theorem linked_10336 : Linked cell_10336 pieces := by
  link_source cell_10336 with piece_1118 using piece_1118_mem, ⟨piece_1094_mem, piece_1095_mem⟩

theorem linked_10337 : Linked cell_10337 pieces := by
  link_source cell_10337 with piece_1118 using piece_1118_mem, piece_1094_mem

theorem linked_10338 : Linked cell_10338 pieces := by
  link_source cell_10338 with piece_1119 using piece_1119_mem, piece_1095_mem

theorem linked_10339 : Linked cell_10339 pieces := by
  link_source cell_10339 with piece_1119 using piece_1119_mem, ⟨piece_1094_mem, piece_1095_mem⟩

theorem linked_10340 : Linked cell_10340 pieces := by
  link_source cell_10340 with piece_1119 using piece_1119_mem, ⟨piece_1093_mem, piece_1094_mem⟩

theorem linked_10341 : Linked cell_10341 pieces := by
  link_source cell_10341 with piece_1119 using piece_1119_mem, piece_1093_mem

theorem linked_10342 : Linked cell_10342 pieces := by
  link_source cell_10342 with piece_1120 using piece_1120_mem, ⟨piece_1093_mem, piece_1094_mem⟩

theorem linked_10343 : Linked cell_10343 pieces := by
  link_source cell_10343 with piece_1120 using piece_1120_mem, piece_1093_mem

theorem linked_10344 : Linked cell_10344 pieces := by
  link_source cell_10344 with piece_1120 using piece_1120_mem, ⟨piece_1092_mem, piece_1093_mem⟩

theorem linked_10345 : Linked cell_10345 pieces := by
  link_source cell_10345 with piece_1120 using piece_1120_mem, piece_1092_mem

theorem linked_10346 : Linked cell_10346 pieces := by
  link_source cell_10346 with piece_1121 using piece_1121_mem, piece_1093_mem

theorem linked_10347 : Linked cell_10347 pieces := by
  link_source cell_10347 with piece_1122 using piece_1122_mem, ⟨piece_1092_mem, piece_1093_mem⟩

theorem linked_10348 : Linked cell_10348 pieces := by
  link_source cell_10348 with piece_1122 using piece_1122_mem, piece_1092_mem

theorem linked_10349 : Linked cell_10349 pieces := by
  link_source cell_10349 with piece_1122 using piece_1122_mem, ⟨piece_1091_mem, piece_1092_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0206.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0206.cells,List.forall_mem_cons]
  exact ⟨linked_10300, linked_10301, linked_10302, linked_10303, linked_10304, linked_10305, linked_10306, linked_10307, linked_10308, linked_10309, linked_10310, linked_10311, linked_10312, linked_10313, linked_10314, linked_10315, linked_10316, linked_10317, linked_10318, linked_10319, linked_10320, linked_10321, linked_10322, linked_10323, linked_10324, linked_10325, linked_10326, linked_10327, linked_10328, linked_10329, linked_10330, linked_10331, linked_10332, linked_10333, linked_10334, linked_10335, linked_10336, linked_10337, linked_10338, linked_10339, linked_10340, linked_10341, linked_10342, linked_10343, linked_10344, linked_10345, linked_10346, linked_10347, linked_10348, linked_10349, by simp⟩

theorem covered : covers (23168750000000001 / 50000000000000000 : ℚ) (46937500000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0206.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0206
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0207
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(46937500000000003 / 100000000000000000 : ℚ), (46950000000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (63693355728517 / 100000000000000 : ℚ)
  w := (14906695314011 / 10000000000000 : ℚ)
  center := (46943750000000003 / 100000000000000000 : ℚ)
  supportValue := (4551669772257679 / 10000000000000000 : ℚ)
  supportSlope := (-23162084891161783 / 10000000000000000 : ℚ)
  oldCenter := (4551669772257679 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1123
  oldLo := (44950000000000001 / 100000000000000000 : ℚ)
  oldHi := (45000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1089, piece_1090]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10350 : Cell := { cellDefaults with
  r := (32052639567909 / 50000000000000 : ℚ)
  w := (3740273843817 / 2500000000000 : ℚ)
  newCoefficients := coefficients_1122
  oldLo := (22750000000000001 / 50000000000000000 : ℚ)
  oldHi := (22775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1091]
}

def cell_10351 : Cell := { cellDefaults with
  domain := ⟨(46950000000000003 / 100000000000000000 : ℚ), (46962500000000003 / 100000000000000000 : ℚ)⟩
  r := (6406758844089 / 10000000000000 : ℚ)
  w := (1869512412671 / 1250000000000 : ℚ)
  center := (46956250000000003 / 100000000000000000 : ℚ)
  supportValue := (2277411564337037 / 5000000000000000 : ℚ)
  supportSlope := (-23171713659353443 / 10000000000000000 : ℚ)
  oldCenter := (2277411564337037 / 5000000000000000 : ℚ)
  oldLo := (22750000000000001 / 50000000000000000 : ℚ)
  oldHi := (22800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1091, piece_1092]
}

def cell_10352 : Cell := { cellDefaults with
  domain := ⟨(46962500000000003 / 100000000000000000 : ℚ), (46975000000000003 / 100000000000000000 : ℚ)⟩
  r := (6406758844089 / 10000000000000 : ℚ)
  w := (1869512412671 / 1250000000000 : ℚ)
  center := (46968750000000003 / 100000000000000000 : ℚ)
  supportValue := (11379819440233671 / 25000000000000000 : ℚ)
  supportSlope := (-11575138094563897 / 5000000000000000 : ℚ)
  oldCenter := (11379819440233671 / 25000000000000000 : ℚ)
  oldLo := (22750000000000001 / 50000000000000000 : ℚ)
  oldHi := (22775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1091]
}

def cell_10353 : Cell := { cellDefaults with
  domain := ⟨(46975000000000003 / 100000000000000000 : ℚ), (46987500000000003 / 100000000000000000 : ℚ)⟩
  r := (6406758844089 / 10000000000000 : ℚ)
  w := (1869512412671 / 1250000000000 : ℚ)
  center := (46981250000000003 / 100000000000000000 : ℚ)
  supportValue := (9098070409998077 / 20000000000000000 : ℚ)
  supportSlope := (-4626435371964277 / 2000000000000000 : ℚ)
  oldCenter := (9098070409998077 / 20000000000000000 : ℚ)
  oldLo := (22725000000000001 / 50000000000000000 : ℚ)
  oldHi := (22775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1090, piece_1091]
}

def cell_10354 : Cell := { cellDefaults with
  domain := ⟨(46987500000000003 / 100000000000000000 : ℚ), (47000000000000003 / 100000000000000000 : ℚ)⟩
  r := (6406758844089 / 10000000000000 : ℚ)
  w := (1869512412671 / 1250000000000 : ℚ)
  center := (46993750000000003 / 100000000000000000 : ℚ)
  supportValue := (22730725368191007 / 50000000000000000 : ℚ)
  supportSlope := (-23109401286927067 / 10000000000000000 : ℚ)
  oldCenter := (22730725368191007 / 50000000000000000 : ℚ)
  oldLo := (45400000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1089, piece_1090]
}

def cell_10355 : Cell := { cellDefaults with
  domain := ⟨(47000000000000003 / 100000000000000000 : ℚ), (47012500000000003 / 100000000000000000 : ℚ)⟩
  r := (32014973798941 / 50000000000000 : ℚ)
  w := (14951114342469 / 10000000000000 : ℚ)
  center := (47006250000000003 / 100000000000000000 : ℚ)
  supportValue := (45492910019801663 / 100000000000000000 : ℚ)
  supportSlope := (-722488799946297 / 312500000000000 : ℚ)
  oldCenter := (45492910019801663 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1124
  oldLo := (22725000000000001 / 50000000000000000 : ℚ)
  oldHi := (22775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1090, piece_1091]
}

def cell_10356 : Cell := { cellDefaults with
  domain := ⟨(47012500000000003 / 100000000000000000 : ℚ), (47025000000000003 / 100000000000000000 : ℚ)⟩
  r := (32014973798941 / 50000000000000 : ℚ)
  w := (14951114342469 / 10000000000000 : ℚ)
  center := (47018750000000003 / 100000000000000000 : ℚ)
  supportValue := (5683002930150207 / 12500000000000000 : ℚ)
  supportSlope := (-5774221136582991 / 2500000000000000 : ℚ)
  oldCenter := (5683002930150207 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1124
  oldLo := (45400000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1089, piece_1090]
}

def cell_10357 : Cell := { cellDefaults with
  domain := ⟨(47025000000000003 / 100000000000000000 : ℚ), (47037500000000003 / 100000000000000000 : ℚ)⟩
  r := (32014973798941 / 50000000000000 : ℚ)
  w := (14951114342469 / 10000000000000 : ℚ)
  center := (47031250000000003 / 100000000000000000 : ℚ)
  supportValue := (2271758135479883 / 5000000000000000 : ℚ)
  supportSlope := (-5770025702160897 / 2500000000000000 : ℚ)
  oldCenter := (2271758135479883 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1124
  oldLo := (45400000000000001 / 100000000000000000 : ℚ)
  oldHi := (22725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1089]
}

def cell_10358 : Cell := { cellDefaults with
  domain := ⟨(47037500000000003 / 100000000000000000 : ℚ), (47050000000000003 / 100000000000000000 : ℚ)⟩
  r := (32014973798941 / 50000000000000 : ℚ)
  w := (14951114342469 / 10000000000000 : ℚ)
  center := (47043750000000003 / 100000000000000000 : ℚ)
  supportValue := (45406328154539327 / 100000000000000000 : ℚ)
  supportSlope := (-11528753342981979 / 5000000000000000 : ℚ)
  oldCenter := (45406328154539327 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1124
  oldLo := (45350000000000001 / 100000000000000000 : ℚ)
  oldHi := (22725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1088, piece_1089]
}

def cell_10359 : Cell := { cellDefaults with
  domain := ⟨(47050000000000003 / 100000000000000000 : ℚ), (47062500000000003 / 100000000000000000 : ℚ)⟩
  r := (6399235370067 / 10000000000000 : ℚ)
  w := (7473069001499 / 5000000000000 : ℚ)
  center := (47056250000000003 / 100000000000000000 : ℚ)
  supportValue := (283985777073059 / 625000000000000 : ℚ)
  supportSlope := (-11533868639554967 / 5000000000000000 : ℚ)
  oldCenter := (283985777073059 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1125
  oldLo := (45400000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1089, piece_1090]
}

def cell_10360 : Cell := { cellDefaults with
  domain := ⟨(47062500000000003 / 100000000000000000 : ℚ), (47075000000000003 / 100000000000000000 : ℚ)⟩
  r := (6399235370067 / 10000000000000 : ℚ)
  w := (7473069001499 / 5000000000000 : ℚ)
  center := (47068750000000003 / 100000000000000000 : ℚ)
  supportValue := (567611305731143 / 1250000000000000 : ℚ)
  supportSlope := (-2304502873174741 / 1000000000000000 : ℚ)
  oldCenter := (567611305731143 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1125
  oldLo := (45350000000000001 / 100000000000000000 : ℚ)
  oldHi := (22725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1088, piece_1089]
}

def cell_10361 : Cell := { cellDefaults with
  domain := ⟨(47075000000000003 / 100000000000000000 : ℚ), (47087500000000003 / 100000000000000000 : ℚ)⟩
  r := (6399235370067 / 10000000000000 : ℚ)
  w := (7473069001499 / 5000000000000 : ℚ)
  center := (47081250000000003 / 100000000000000000 : ℚ)
  supportValue := (45380108496388527 / 100000000000000000 : ℚ)
  supportSlope := (-23026853794219093 / 10000000000000000 : ℚ)
  oldCenter := (45380108496388527 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1125
  oldLo := (45350000000000001 / 100000000000000000 : ℚ)
  oldHi := (45400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1088]
}

def cell_10362 : Cell := { cellDefaults with
  domain := ⟨(47087500000000003 / 100000000000000000 : ℚ), (47100000000000003 / 100000000000000000 : ℚ)⟩
  r := (6399235370067 / 10000000000000 : ℚ)
  w := (7473069001499 / 5000000000000 : ℚ)
  center := (47093750000000003 / 100000000000000000 : ℚ)
  supportValue := (1417229389378067 / 3125000000000000 : ℚ)
  supportSlope := (-1150288887921569 / 500000000000000 : ℚ)
  oldCenter := (1417229389378067 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1125
  oldLo := (45300000000000001 / 100000000000000000 : ℚ)
  oldHi := (45400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1087, piece_1088]
}

def cell_10363 : Cell := { cellDefaults with
  domain := ⟨(47100000000000003 / 100000000000000000 : ℚ), (47112500000000003 / 100000000000000000 : ℚ)⟩
  r := (15988702425601 / 25000000000000 : ℚ)
  w := (14941172204477 / 10000000000000 : ℚ)
  center := (47106250000000003 / 100000000000000000 : ℚ)
  supportValue := (1418208254247387 / 3125000000000000 : ℚ)
  supportSlope := (-460302601022633 / 200000000000000 : ℚ)
  oldCenter := (1418208254247387 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1126
  oldLo := (45350000000000001 / 100000000000000000 : ℚ)
  oldHi := (45400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1088]
}

def cell_10364 : Cell := { cellDefaults with
  domain := ⟨(47112500000000003 / 100000000000000000 : ℚ), (47125000000000003 / 100000000000000000 : ℚ)⟩
  r := (15988702425601 / 25000000000000 : ℚ)
  w := (14941172204477 / 10000000000000 : ℚ)
  center := (47118750000000003 / 100000000000000000 : ℚ)
  supportValue := (22676955368102017 / 50000000000000000 : ℚ)
  supportSlope := (-22993334873726567 / 10000000000000000 : ℚ)
  oldCenter := (22676955368102017 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1126
  oldLo := (45300000000000001 / 100000000000000000 : ℚ)
  oldHi := (45400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1087, piece_1088]
}

def cell_10365 : Cell := { cellDefaults with
  domain := ⟨(47125000000000003 / 100000000000000000 : ℚ), (47137500000000003 / 100000000000000000 : ℚ)⟩
  r := (15988702425601 / 25000000000000 : ℚ)
  w := (14941172204477 / 10000000000000 : ℚ)
  center := (47131250000000003 / 100000000000000000 : ℚ)
  supportValue := (22662589670737257 / 50000000000000000 : ℚ)
  supportSlope := (-459475766090911 / 200000000000000 : ℚ)
  oldCenter := (22662589670737257 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1126
  oldLo := (45300000000000001 / 100000000000000000 : ℚ)
  oldHi := (45350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1087]
}

def cell_10366 : Cell := { cellDefaults with
  domain := ⟨(47137500000000003 / 100000000000000000 : ℚ), (47150000000000003 / 100000000000000000 : ℚ)⟩
  r := (15988702425601 / 25000000000000 : ℚ)
  w := (14941172204477 / 10000000000000 : ℚ)
  center := (47143750000000003 / 100000000000000000 : ℚ)
  supportValue := (11324119072588959 / 25000000000000000 : ℚ)
  supportSlope := (-2295420657663527 / 1000000000000000 : ℚ)
  oldCenter := (11324119072588959 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1126
  oldLo := (45250000000000001 / 100000000000000000 : ℚ)
  oldHi := (45350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1086, piece_1087]
}

def cell_10367 : Cell := { cellDefaults with
  domain := ⟨(47150000000000003 / 100000000000000000 : ℚ), (47162500000000003 / 100000000000000000 : ℚ)⟩
  r := (15979328534483 / 25000000000000 : ℚ)
  w := (14936216231773 / 10000000000000 : ℚ)
  center := (47156250000000003 / 100000000000000000 : ℚ)
  supportValue := (45327732742055893 / 100000000000000000 : ℚ)
  supportSlope := (-45924206573833 / 20000000000000 : ℚ)
  oldCenter := (45327732742055893 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1127
  oldLo := (45300000000000001 / 100000000000000000 : ℚ)
  oldHi := (45350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1087]
}

def cell_10368 : Cell := { cellDefaults with
  domain := ⟨(47162500000000003 / 100000000000000000 : ℚ), (47175000000000003 / 100000000000000000 : ℚ)⟩
  r := (15979328534483 / 25000000000000 : ℚ)
  w := (14936216231773 / 10000000000000 : ℚ)
  center := (47168750000000003 / 100000000000000000 : ℚ)
  supportValue := (4529904521919843 / 10000000000000000 : ℚ)
  supportSlope := (-22941799890494607 / 10000000000000000 : ℚ)
  oldCenter := (4529904521919843 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1127
  oldLo := (45250000000000001 / 100000000000000000 : ℚ)
  oldHi := (45350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1086, piece_1087]
}

def cell_10369 : Cell := { cellDefaults with
  domain := ⟨(47175000000000003 / 100000000000000000 : ℚ), (47187500000000003 / 100000000000000000 : ℚ)⟩
  r := (15979328534483 / 25000000000000 : ℚ)
  w := (14936216231773 / 10000000000000 : ℚ)
  center := (47181250000000003 / 100000000000000000 : ℚ)
  supportValue := (11317594639587171 / 25000000000000000 : ℚ)
  supportSlope := (-4584182004489179 / 2000000000000000 : ℚ)
  oldCenter := (11317594639587171 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1127
  oldLo := (45250000000000001 / 100000000000000000 : ℚ)
  oldHi := (45300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1086]
}

def cell_10370 : Cell := { cellDefaults with
  domain := ⟨(47187500000000003 / 100000000000000000 : ℚ), (47200000000000003 / 100000000000000000 : ℚ)⟩
  r := (15979328534483 / 25000000000000 : ℚ)
  w := (14936216231773 / 10000000000000 : ℚ)
  center := (47193750000000003 / 100000000000000000 : ℚ)
  supportValue := (4524173981344877 / 10000000000000000 : ℚ)
  supportSlope := (-286285011142251 / 125000000000000 : ℚ)
  oldCenter := (4524173981344877 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1127
  oldLo := (45200000000000001 / 100000000000000000 : ℚ)
  oldHi := (45300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1084, piece_1085, piece_1086]
}

def cell_10371 : Cell := { cellDefaults with
  domain := ⟨(47200000000000003 / 100000000000000000 : ℚ), (47212500000000003 / 100000000000000000 : ℚ)⟩
  r := (63879866532133 / 100000000000000 : ℚ)
  w := (933204484499 / 625000000000 : ℚ)
  center := (47206250000000003 / 100000000000000000 : ℚ)
  supportValue := (45272924990567737 / 100000000000000000 : ℚ)
  supportSlope := (-28636574446117 / 12500000000000 : ℚ)
  oldCenter := (45272924990567737 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1128
  oldLo := (45250000000000001 / 100000000000000000 : ℚ)
  oldHi := (45300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1086]
}

def cell_10372 : Cell := { cellDefaults with
  domain := ⟨(47212500000000003 / 100000000000000000 : ℚ), (47225000000000003 / 100000000000000000 : ℚ)⟩
  r := (63879866532133 / 100000000000000 : ℚ)
  w := (933204484499 / 625000000000 : ℚ)
  center := (47218750000000003 / 100000000000000000 : ℚ)
  supportValue := (2262215086562609 / 5000000000000000 : ℚ)
  supportSlope := (-2289042857222867 / 1000000000000000 : ℚ)
  oldCenter := (2262215086562609 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1128
  oldLo := (45200000000000001 / 100000000000000000 : ℚ)
  oldHi := (45300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1084, piece_1085, piece_1086]
}

def cell_10373 : Cell := { cellDefaults with
  domain := ⟨(47225000000000003 / 100000000000000000 : ℚ), (47237500000000003 / 100000000000000000 : ℚ)⟩
  r := (63879866532133 / 100000000000000 : ℚ)
  w := (933204484499 / 625000000000 : ℚ)
  center := (47231250000000003 / 100000000000000000 : ℚ)
  supportValue := (904314019661503 / 2000000000000000 : ℚ)
  supportSlope := (-5717053273166517 / 2500000000000000 : ℚ)
  oldCenter := (904314019661503 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1128
  oldLo := (45200000000000001 / 100000000000000000 : ℚ)
  oldHi := (141393156424581 / 312500000000000 : ℚ)
  oldPieces := [piece_1084]
}

def cell_10374 : Cell := { cellDefaults with
  domain := ⟨(47237500000000003 / 100000000000000000 : ℚ), (47250000000000003 / 100000000000000000 : ℚ)⟩
  r := (63879866532133 / 100000000000000 : ℚ)
  w := (933204484499 / 625000000000 : ℚ)
  center := (47243750000000003 / 100000000000000000 : ℚ)
  supportValue := (5648390793588317 / 12500000000000000 : ℚ)
  supportSlope := (-4570310775594777 / 2000000000000000 : ℚ)
  oldCenter := (5648390793588317 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1128
  oldLo := (45150000000000001 / 100000000000000000 : ℚ)
  oldHi := (141393156424581 / 312500000000000 : ℚ)
  oldPieces := [piece_1083, piece_1084]
}

def cell_10375 : Cell := { cellDefaults with
  domain := ⟨(47250000000000003 / 100000000000000000 : ℚ), (47262500000000003 / 100000000000000000 : ℚ)⟩
  r := (510739741661 / 800000000000 : ℚ)
  w := (2985267288877 / 2000000000000 : ℚ)
  center := (47256250000000003 / 100000000000000000 : ℚ)
  supportValue := (2260912318004101 / 5000000000000000 : ℚ)
  supportSlope := (-2285660172542059 / 1000000000000000 : ℚ)
  oldCenter := (2260912318004101 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1129
  oldLo := (45200000000000001 / 100000000000000000 : ℚ)
  oldHi := (141393156424581 / 312500000000000 : ℚ)
  oldPieces := [piece_1084]
}

def cell_10376 : Cell := { cellDefaults with
  domain := ⟨(47262500000000003 / 100000000000000000 : ℚ), (47275000000000003 / 100000000000000000 : ℚ)⟩
  r := (510739741661 / 800000000000 : ℚ)
  w := (2985267288877 / 2000000000000 : ℚ)
  center := (47268750000000003 / 100000000000000000 : ℚ)
  supportValue := (22594843583060023 / 50000000000000000 : ℚ)
  supportSlope := (-1141960883070503 / 500000000000000 : ℚ)
  oldCenter := (22594843583060023 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1129
  oldLo := (45150000000000001 / 100000000000000000 : ℚ)
  oldHi := (141393156424581 / 312500000000000 : ℚ)
  oldPieces := [piece_1083, piece_1084]
}

def cell_10377 : Cell := { cellDefaults with
  domain := ⟨(47275000000000003 / 100000000000000000 : ℚ), (47287500000000003 / 100000000000000000 : ℚ)⟩
  r := (510739741661 / 800000000000 : ℚ)
  w := (2985267288877 / 2000000000000 : ℚ)
  center := (47281250000000003 / 100000000000000000 : ℚ)
  supportValue := (225805760478919 / 500000000000000 : ℚ)
  supportSlope := (-22816641491596457 / 10000000000000000 : ℚ)
  oldCenter := (225805760478919 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1129
  oldLo := (45100000000000001 / 100000000000000000 : ℚ)
  oldHi := (45200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1082, piece_1083]
}

def cell_10378 : Cell := { cellDefaults with
  domain := ⟨(47287500000000003 / 100000000000000000 : ℚ), (47300000000000003 / 100000000000000000 : ℚ)⟩
  r := (510739741661 / 800000000000 : ℚ)
  w := (2985267288877 / 2000000000000 : ℚ)
  center := (47293750000000003 / 100000000000000000 : ℚ)
  supportValue := (2256632068472817 / 5000000000000000 : ℚ)
  supportSlope := (-11399764942674473 / 5000000000000000 : ℚ)
  oldCenter := (2256632068472817 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1129
  oldLo := (45100000000000001 / 100000000000000000 : ℚ)
  oldHi := (45150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1082]
}

def cell_10379 : Cell := { cellDefaults with
  domain := ⟨(47300000000000003 / 100000000000000000 : ℚ), (47312500000000003 / 100000000000000000 : ℚ)⟩
  r := (31902558935947 / 50000000000000 : ℚ)
  w := (7460705402249 / 5000000000000 : ℚ)
  center := (47306250000000003 / 100000000000000000 : ℚ)
  supportValue := (4516369445471207 / 10000000000000000 : ℚ)
  supportSlope := (-5701077267983301 / 2500000000000000 : ℚ)
  oldCenter := (4516369445471207 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1130
  oldLo := (45100000000000001 / 100000000000000000 : ℚ)
  oldHi := (45200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1082, piece_1083]
}

def cell_10380 : Cell := { cellDefaults with
  domain := ⟨(47312500000000003 / 100000000000000000 : ℚ), (47325000000000003 / 100000000000000000 : ℚ)⟩
  r := (31902558935947 / 50000000000000 : ℚ)
  w := (7460705402249 / 5000000000000 : ℚ)
  center := (47318750000000003 / 100000000000000000 : ℚ)
  supportValue := (5641899890528667 / 12500000000000000 : ℚ)
  supportSlope := (-4557597629455401 / 2000000000000000 : ℚ)
  oldCenter := (5641899890528667 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1130
  oldLo := (45100000000000001 / 100000000000000000 : ℚ)
  oldHi := (45150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1082]
}

def cell_10381 : Cell := { cellDefaults with
  domain := ⟨(47325000000000003 / 100000000000000000 : ℚ), (47337500000000003 / 100000000000000000 : ℚ)⟩
  r := (31902558935947 / 50000000000000 : ℚ)
  w := (7460705402249 / 5000000000000 : ℚ)
  center := (47331250000000003 / 100000000000000000 : ℚ)
  supportValue := (4510672950277669 / 10000000000000000 : ℚ)
  supportSlope := (-2276563307905377 / 1000000000000000 : ℚ)
  oldCenter := (4510672950277669 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1130
  oldLo := (45050000000000001 / 100000000000000000 : ℚ)
  oldHi := (45150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1081, piece_1082]
}

def cell_10382 : Cell := { cellDefaults with
  domain := ⟨(47337500000000003 / 100000000000000000 : ℚ), (47350000000000003 / 100000000000000000 : ℚ)⟩
  r := (31902558935947 / 50000000000000 : ℚ)
  w := (7460705402249 / 5000000000000 : ℚ)
  center := (47343750000000003 / 100000000000000000 : ℚ)
  supportValue := (45078282487245913 / 100000000000000000 : ℚ)
  supportSlope := (-227472831950859 / 100000000000000 : ℚ)
  oldCenter := (45078282487245913 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1130
  oldLo := (45050000000000001 / 100000000000000000 : ℚ)
  oldHi := (45100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1081]
}

def cell_10383 : Cell := { cellDefaults with
  domain := ⟨(47350000000000003 / 100000000000000000 : ℚ), (47362500000000003 / 100000000000000000 : ℚ)⟩
  r := (6376781595679 / 10000000000000 : ℚ)
  w := (298329927121 / 200000000000 : ℚ)
  center := (47356250000000003 / 100000000000000000 : ℚ)
  supportValue := (2255463264092437 / 5000000000000000 : ℚ)
  supportSlope := (-22753334405720693 / 10000000000000000 : ℚ)
  oldCenter := (2255463264092437 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1131
  oldLo := (45050000000000001 / 100000000000000000 : ℚ)
  oldHi := (45150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1081, piece_1082]
}

def cell_10384 : Cell := { cellDefaults with
  domain := ⟨(47362500000000003 / 100000000000000000 : ℚ), (47375000000000003 / 100000000000000000 : ℚ)⟩
  r := (6376781595679 / 10000000000000 : ℚ)
  w := (298329927121 / 200000000000 : ℚ)
  center := (47368750000000003 / 100000000000000000 : ℚ)
  supportValue := (4508083361972159 / 10000000000000000 : ℚ)
  supportSlope := (-11367888335387377 / 5000000000000000 : ℚ)
  oldCenter := (4508083361972159 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1131
  oldLo := (45050000000000001 / 100000000000000000 : ℚ)
  oldHi := (45100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1081]
}

def cell_10385 : Cell := { cellDefaults with
  domain := ⟨(47375000000000003 / 100000000000000000 : ℚ), (47387500000000003 / 100000000000000000 : ℚ)⟩
  r := (6376781595679 / 10000000000000 : ℚ)
  w := (298329927121 / 200000000000 : ℚ)
  center := (47381250000000003 / 100000000000000000 : ℚ)
  supportValue := (901048584428441 / 2000000000000000 : ℚ)
  supportSlope := (-2839347659827629 / 1250000000000000 : ℚ)
  oldCenter := (901048584428441 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1131
  oldLo := (45000000000000001 / 100000000000000000 : ℚ)
  oldHi := (45100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1080, piece_1081]
}

def cell_10386 : Cell := { cellDefaults with
  domain := ⟨(47387500000000003 / 100000000000000000 : ℚ), (47400000000000003 / 100000000000000000 : ℚ)⟩
  r := (6376781595679 / 10000000000000 : ℚ)
  w := (298329927121 / 200000000000 : ℚ)
  center := (47393750000000003 / 100000000000000000 : ℚ)
  supportValue := (11256011430137891 / 25000000000000000 : ℚ)
  supportSlope := (-1134760901653653 / 500000000000000 : ℚ)
  oldCenter := (11256011430137891 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1131
  oldLo := (45000000000000001 / 100000000000000000 : ℚ)
  oldHi := (45050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1080]
}

def cell_10387 : Cell := { cellDefaults with
  domain := ⟨(47400000000000003 / 100000000000000000 : ℚ), (47412500000000003 / 100000000000000000 : ℚ)⟩
  r := (15932640429679 / 25000000000000 : ℚ)
  w := (931974437931 / 625000000000 : ℚ)
  center := (47406250000000003 / 100000000000000000 : ℚ)
  supportValue := (4505496488367867 / 10000000000000000 : ℚ)
  supportSlope := (-2837814861833543 / 1250000000000000 : ℚ)
  oldCenter := (4505496488367867 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1132
  oldLo := (45000000000000001 / 100000000000000000 : ℚ)
  oldHi := (45100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1080, piece_1081]
}

def cell_10388 : Cell := { cellDefaults with
  domain := ⟨(47412500000000003 / 100000000000000000 : ℚ), (47425000000000003 / 100000000000000000 : ℚ)⟩
  r := (15932640429679 / 25000000000000 : ℚ)
  w := (931974437931 / 625000000000 : ℚ)
  center := (47418750000000003 / 100000000000000000 : ℚ)
  supportValue := (45026596691067533 / 100000000000000000 : ℚ)
  supportSlope := (-2268375042676851 / 1000000000000000 : ℚ)
  oldCenter := (45026596691067533 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1132
  oldLo := (45000000000000001 / 100000000000000000 : ℚ)
  oldHi := (45050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1080]
}

def cell_10389 : Cell := { cellDefaults with
  domain := ⟨(47425000000000003 / 100000000000000000 : ℚ), (47437500000000003 / 100000000000000000 : ℚ)⟩
  r := (15932640429679 / 25000000000000 : ℚ)
  w := (931974437931 / 625000000000 : ℚ)
  center := (47431250000000003 / 100000000000000000 : ℚ)
  supportValue := (4499825660803809 / 10000000000000000 : ℚ)
  supportSlope := (-11332043022034277 / 5000000000000000 : ℚ)
  oldCenter := (4499825660803809 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1132
  oldHi := (45050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1079, piece_1080]
}

def cell_10390 : Cell := { cellDefaults with
  domain := ⟨(47437500000000003 / 100000000000000000 : ℚ), (47450000000000003 / 100000000000000000 : ℚ)⟩
  r := (15932640429679 / 25000000000000 : ℚ)
  w := (931974437931 / 625000000000 : ℚ)
  center := (47443750000000003 / 100000000000000000 : ℚ)
  supportValue := (22484968552318063 / 50000000000000000 : ℚ)
  supportSlope := (-1132166731720563 / 500000000000000 : ℚ)
  oldCenter := (22484968552318063 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1132
  oldPieces := [piece_1079]
}

def cell_10391 : Cell := { cellDefaults with
  domain := ⟨(47450000000000003 / 100000000000000000 : ℚ), (2966131284916201 / 6250000000000000 : ℚ)⟩
  center := (94908100558659219 / 200000000000000000 : ℚ)
  supportValue := (2250287055768447 / 5000000000000000 : ℚ)
  supportSlope := (-113268575500359 / 50000000000000 : ℚ)
  oldCenter := (2250287055768447 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1133
  oldHi := (45050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1079, piece_1080]
}

def cell_10392 : Cell := { cellDefaults with
  domain := ⟨(2966131284916201 / 6250000000000000 : ℚ), (94933100558659219 / 200000000000000000 : ℚ)⟩
  center := (189849301675977651 / 400000000000000000 : ℚ)
  supportValue := (8997399590183509 / 20000000000000000 : ℚ)
  supportSlope := (-2264447629767759 / 1000000000000000 : ℚ)
  oldCenter := (8997399590183509 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1134
  oldPieces := [piece_1079]
}

def cell_10393 : Cell := { cellDefaults with
  domain := ⟨(94933100558659219 / 200000000000000000 : ℚ), (47475000000000003 / 100000000000000000 : ℚ)⟩
  center := (7595324022346369 / 16000000000000000 : ℚ)
  supportValue := (4496787098346247 / 10000000000000000 : ℚ)
  supportSlope := (-11313971588240619 / 5000000000000000 : ℚ)
  oldCenter := (4496787098346247 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1134
  oldPieces := [piece_1079]
}

def cell_10394 : Cell := { cellDefaults with
  domain := ⟨(47475000000000003 / 100000000000000000 : ℚ), (47487500000000003 / 100000000000000000 : ℚ)⟩
  center := (47481250000000003 / 100000000000000000 : ℚ)
  supportValue := (4494420848205243 / 10000000000000000 : ℚ)
  supportSlope := (-904541924079183 / 400000000000000 : ℚ)
  oldCenter := (4494420848205243 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1134
  oldLo := (44900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1078, piece_1079]
}

def cell_10395 : Cell := { cellDefaults with
  domain := ⟨(47487500000000003 / 100000000000000000 : ℚ), (47500000000000003 / 100000000000000000 : ℚ)⟩
  center := (47493750000000003 / 100000000000000000 : ℚ)
  supportValue := (8983190728259327 / 20000000000000000 : ℚ)
  supportSlope := (-11295818807655067 / 5000000000000000 : ℚ)
  oldCenter := (8983190728259327 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1134
  oldLo := (44900000000000001 / 100000000000000000 : ℚ)
  oldHi := (44950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1078]
}

def cell_10396 : Cell := { cellDefaults with
  domain := ⟨(47500000000000003 / 100000000000000000 : ℚ), (47512500000000003 / 100000000000000000 : ℚ)⟩
  r := (15914049634509 / 25000000000000 : ℚ)
  w := (3725452735507 / 2500000000000 : ℚ)
  center := (47506250000000003 / 100000000000000000 : ℚ)
  supportValue := (22473366911482953 / 50000000000000000 : ℚ)
  supportSlope := (-2260135393954421 / 1000000000000000 : ℚ)
  oldCenter := (22473366911482953 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1135
  oldLo := (44900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1078, piece_1079]
}

def cell_10397 : Cell := { cellDefaults with
  domain := ⟨(47512500000000003 / 100000000000000000 : ℚ), (47525000000000003 / 100000000000000000 : ℚ)⟩
  r := (15914049634509 / 25000000000000 : ℚ)
  w := (3725452735507 / 2500000000000 : ℚ)
  center := (47518750000000003 / 100000000000000000 : ℚ)
  supportValue := (5614811655766487 / 12500000000000000 : ℚ)
  supportSlope := (-2258024037654849 / 1000000000000000 : ℚ)
  oldCenter := (5614811655766487 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1135
  oldLo := (44900000000000001 / 100000000000000000 : ℚ)
  oldHi := (44950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1078]
}

def cell_10398 : Cell := { cellDefaults with
  domain := ⟨(47525000000000003 / 100000000000000000 : ℚ), (47537500000000003 / 100000000000000000 : ℚ)⟩
  r := (15914049634509 / 25000000000000 : ℚ)
  w := (3725452735507 / 2500000000000 : ℚ)
  center := (47531250000000003 / 100000000000000000 : ℚ)
  supportValue := (44890279415335393 / 100000000000000000 : ℚ)
  supportSlope := (-22563165718523237 / 10000000000000000 : ℚ)
  oldCenter := (44890279415335393 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1135
  oldLo := (44850000000000001 / 100000000000000000 : ℚ)
  oldHi := (44950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1077, piece_1078]
}

def cell_10399 : Cell := { cellDefaults with
  domain := ⟨(47537500000000003 / 100000000000000000 : ℚ), (47550000000000003 / 100000000000000000 : ℚ)⟩
  r := (15914049634509 / 25000000000000 : ℚ)
  w := (3725452735507 / 2500000000000 : ℚ)
  center := (47543750000000003 / 100000000000000000 : ℚ)
  supportValue := (22431044507264167 / 50000000000000000 : ℚ)
  supportSlope := (-2254074529289163 / 1000000000000000 : ℚ)
  oldCenter := (22431044507264167 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1135
  oldLo := (44800000000000001 / 100000000000000000 : ℚ)
  oldHi := (44900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1076, piece_1077]
}

theorem check_10350 : cell_10350.check = true := by
  decide +kernel

theorem check_10351 : cell_10351.check = true := by
  decide +kernel

theorem check_10352 : cell_10352.check = true := by
  decide +kernel

theorem check_10353 : cell_10353.check = true := by
  decide +kernel

theorem check_10354 : cell_10354.check = true := by
  decide +kernel

theorem check_10355 : cell_10355.check = true := by
  decide +kernel

theorem check_10356 : cell_10356.check = true := by
  decide +kernel

theorem check_10357 : cell_10357.check = true := by
  decide +kernel

theorem check_10358 : cell_10358.check = true := by
  decide +kernel

theorem check_10359 : cell_10359.check = true := by
  decide +kernel

theorem check_10360 : cell_10360.check = true := by
  decide +kernel

theorem check_10361 : cell_10361.check = true := by
  decide +kernel

theorem check_10362 : cell_10362.check = true := by
  decide +kernel

theorem check_10363 : cell_10363.check = true := by
  decide +kernel

theorem check_10364 : cell_10364.check = true := by
  decide +kernel

theorem check_10365 : cell_10365.check = true := by
  decide +kernel

theorem check_10366 : cell_10366.check = true := by
  decide +kernel

theorem check_10367 : cell_10367.check = true := by
  decide +kernel

theorem check_10368 : cell_10368.check = true := by
  decide +kernel

theorem check_10369 : cell_10369.check = true := by
  decide +kernel

theorem check_10370 : cell_10370.check = true := by
  decide +kernel

theorem check_10371 : cell_10371.check = true := by
  decide +kernel

theorem check_10372 : cell_10372.check = true := by
  decide +kernel

theorem check_10373 : cell_10373.check = true := by
  decide +kernel

theorem check_10374 : cell_10374.check = true := by
  decide +kernel

theorem check_10375 : cell_10375.check = true := by
  decide +kernel

theorem check_10376 : cell_10376.check = true := by
  decide +kernel

theorem check_10377 : cell_10377.check = true := by
  decide +kernel

theorem check_10378 : cell_10378.check = true := by
  decide +kernel

theorem check_10379 : cell_10379.check = true := by
  decide +kernel

theorem check_10380 : cell_10380.check = true := by
  decide +kernel

theorem check_10381 : cell_10381.check = true := by
  decide +kernel

theorem check_10382 : cell_10382.check = true := by
  decide +kernel

theorem check_10383 : cell_10383.check = true := by
  decide +kernel

theorem check_10384 : cell_10384.check = true := by
  decide +kernel

theorem check_10385 : cell_10385.check = true := by
  decide +kernel

theorem check_10386 : cell_10386.check = true := by
  decide +kernel

theorem check_10387 : cell_10387.check = true := by
  decide +kernel

theorem check_10388 : cell_10388.check = true := by
  decide +kernel

theorem check_10389 : cell_10389.check = true := by
  decide +kernel

theorem check_10390 : cell_10390.check = true := by
  decide +kernel

theorem check_10391 : cell_10391.check = true := by
  decide +kernel

theorem check_10392 : cell_10392.check = true := by
  decide +kernel

theorem check_10393 : cell_10393.check = true := by
  decide +kernel

theorem check_10394 : cell_10394.check = true := by
  decide +kernel

theorem check_10395 : cell_10395.check = true := by
  decide +kernel

theorem check_10396 : cell_10396.check = true := by
  decide +kernel

theorem check_10397 : cell_10397.check = true := by
  decide +kernel

theorem check_10398 : cell_10398.check = true := by
  decide +kernel

theorem check_10399 : cell_10399.check = true := by
  decide +kernel

def cells : List Cell := [cell_10350, cell_10351, cell_10352, cell_10353, cell_10354, cell_10355, cell_10356, cell_10357, cell_10358, cell_10359, cell_10360, cell_10361, cell_10362, cell_10363, cell_10364, cell_10365, cell_10366, cell_10367, cell_10368, cell_10369, cell_10370, cell_10371, cell_10372, cell_10373, cell_10374, cell_10375, cell_10376, cell_10377, cell_10378, cell_10379, cell_10380, cell_10381, cell_10382, cell_10383, cell_10384, cell_10385, cell_10386, cell_10387, cell_10388, cell_10389, cell_10390, cell_10391, cell_10392, cell_10393, cell_10394, cell_10395, cell_10396, cell_10397, cell_10398, cell_10399]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10350, check_10351, check_10352, check_10353, check_10354, check_10355, check_10356, check_10357, check_10358, check_10359, check_10360, check_10361, check_10362, check_10363, check_10364, check_10365, check_10366, check_10367, check_10368, check_10369, check_10370, check_10371, check_10372, check_10373, check_10374, check_10375, check_10376, check_10377, check_10378, check_10379, check_10380, check_10381, check_10382, check_10383, check_10384, check_10385, check_10386, check_10387, check_10388, check_10389, check_10390, check_10391, check_10392, check_10393, check_10394, check_10395, check_10396, check_10397, check_10398, check_10399, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0207

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0207
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0207
open AnalyticBounds.ExpressionCertificate

theorem linked_10350 : Linked cell_10350 pieces := by
  link_source cell_10350 with piece_1122 using piece_1122_mem, piece_1091_mem

theorem linked_10351 : Linked cell_10351 pieces := by
  link_source cell_10351 with piece_1123 using piece_1123_mem, ⟨piece_1091_mem, piece_1092_mem⟩

theorem linked_10352 : Linked cell_10352 pieces := by
  link_source cell_10352 with piece_1123 using piece_1123_mem, piece_1091_mem

theorem linked_10353 : Linked cell_10353 pieces := by
  link_source cell_10353 with piece_1123 using piece_1123_mem, ⟨piece_1090_mem, piece_1091_mem⟩

theorem linked_10354 : Linked cell_10354 pieces := by
  link_source cell_10354 with piece_1123 using piece_1123_mem, ⟨piece_1089_mem, piece_1090_mem⟩

theorem linked_10355 : Linked cell_10355 pieces := by
  link_source cell_10355 with piece_1124 using piece_1124_mem, ⟨piece_1090_mem, piece_1091_mem⟩

theorem linked_10356 : Linked cell_10356 pieces := by
  link_source cell_10356 with piece_1124 using piece_1124_mem, ⟨piece_1089_mem, piece_1090_mem⟩

theorem linked_10357 : Linked cell_10357 pieces := by
  link_source cell_10357 with piece_1124 using piece_1124_mem, piece_1089_mem

theorem linked_10358 : Linked cell_10358 pieces := by
  link_source cell_10358 with piece_1124 using piece_1124_mem, ⟨piece_1088_mem, piece_1089_mem⟩

theorem linked_10359 : Linked cell_10359 pieces := by
  link_source cell_10359 with piece_1125 using piece_1125_mem, ⟨piece_1089_mem, piece_1090_mem⟩

theorem linked_10360 : Linked cell_10360 pieces := by
  link_source cell_10360 with piece_1125 using piece_1125_mem, ⟨piece_1088_mem, piece_1089_mem⟩

theorem linked_10361 : Linked cell_10361 pieces := by
  link_source cell_10361 with piece_1125 using piece_1125_mem, piece_1088_mem

theorem linked_10362 : Linked cell_10362 pieces := by
  link_source cell_10362 with piece_1125 using piece_1125_mem, ⟨piece_1087_mem, piece_1088_mem⟩

theorem linked_10363 : Linked cell_10363 pieces := by
  link_source cell_10363 with piece_1126 using piece_1126_mem, piece_1088_mem

theorem linked_10364 : Linked cell_10364 pieces := by
  link_source cell_10364 with piece_1126 using piece_1126_mem, ⟨piece_1087_mem, piece_1088_mem⟩

theorem linked_10365 : Linked cell_10365 pieces := by
  link_source cell_10365 with piece_1126 using piece_1126_mem, piece_1087_mem

theorem linked_10366 : Linked cell_10366 pieces := by
  link_source cell_10366 with piece_1126 using piece_1126_mem, ⟨piece_1086_mem, piece_1087_mem⟩

theorem linked_10367 : Linked cell_10367 pieces := by
  link_source cell_10367 with piece_1127 using piece_1127_mem, piece_1087_mem

theorem linked_10368 : Linked cell_10368 pieces := by
  link_source cell_10368 with piece_1127 using piece_1127_mem, ⟨piece_1086_mem, piece_1087_mem⟩

theorem linked_10369 : Linked cell_10369 pieces := by
  link_source cell_10369 with piece_1127 using piece_1127_mem, piece_1086_mem

theorem linked_10370 : Linked cell_10370 pieces := by
  link_source cell_10370 with piece_1127 using piece_1127_mem, ⟨piece_1084_mem, ⟨piece_1085_mem, piece_1086_mem⟩⟩

theorem linked_10371 : Linked cell_10371 pieces := by
  link_source cell_10371 with piece_1128 using piece_1128_mem, piece_1086_mem

theorem linked_10372 : Linked cell_10372 pieces := by
  link_source cell_10372 with piece_1128 using piece_1128_mem, ⟨piece_1084_mem, ⟨piece_1085_mem, piece_1086_mem⟩⟩

theorem linked_10373 : Linked cell_10373 pieces := by
  link_source cell_10373 with piece_1128 using piece_1128_mem, piece_1084_mem

theorem linked_10374 : Linked cell_10374 pieces := by
  link_source cell_10374 with piece_1128 using piece_1128_mem, ⟨piece_1083_mem, piece_1084_mem⟩

theorem linked_10375 : Linked cell_10375 pieces := by
  link_source cell_10375 with piece_1129 using piece_1129_mem, piece_1084_mem

theorem linked_10376 : Linked cell_10376 pieces := by
  link_source cell_10376 with piece_1129 using piece_1129_mem, ⟨piece_1083_mem, piece_1084_mem⟩

theorem linked_10377 : Linked cell_10377 pieces := by
  link_source cell_10377 with piece_1129 using piece_1129_mem, ⟨piece_1082_mem, piece_1083_mem⟩

theorem linked_10378 : Linked cell_10378 pieces := by
  link_source cell_10378 with piece_1129 using piece_1129_mem, piece_1082_mem

theorem linked_10379 : Linked cell_10379 pieces := by
  link_source cell_10379 with piece_1130 using piece_1130_mem, ⟨piece_1082_mem, piece_1083_mem⟩

theorem linked_10380 : Linked cell_10380 pieces := by
  link_source cell_10380 with piece_1130 using piece_1130_mem, piece_1082_mem

theorem linked_10381 : Linked cell_10381 pieces := by
  link_source cell_10381 with piece_1130 using piece_1130_mem, ⟨piece_1081_mem, piece_1082_mem⟩

theorem linked_10382 : Linked cell_10382 pieces := by
  link_source cell_10382 with piece_1130 using piece_1130_mem, piece_1081_mem

theorem linked_10383 : Linked cell_10383 pieces := by
  link_source cell_10383 with piece_1131 using piece_1131_mem, ⟨piece_1081_mem, piece_1082_mem⟩

theorem linked_10384 : Linked cell_10384 pieces := by
  link_source cell_10384 with piece_1131 using piece_1131_mem, piece_1081_mem

theorem linked_10385 : Linked cell_10385 pieces := by
  link_source cell_10385 with piece_1131 using piece_1131_mem, ⟨piece_1080_mem, piece_1081_mem⟩

theorem linked_10386 : Linked cell_10386 pieces := by
  link_source cell_10386 with piece_1131 using piece_1131_mem, piece_1080_mem

theorem linked_10387 : Linked cell_10387 pieces := by
  link_source cell_10387 with piece_1132 using piece_1132_mem, ⟨piece_1080_mem, piece_1081_mem⟩

theorem linked_10388 : Linked cell_10388 pieces := by
  link_source cell_10388 with piece_1132 using piece_1132_mem, piece_1080_mem

theorem linked_10389 : Linked cell_10389 pieces := by
  link_source cell_10389 with piece_1132 using piece_1132_mem, ⟨piece_1079_mem, piece_1080_mem⟩

theorem linked_10390 : Linked cell_10390 pieces := by
  link_source cell_10390 with piece_1132 using piece_1132_mem, piece_1079_mem

theorem linked_10391 : Linked cell_10391 pieces := by
  link_source cell_10391 with piece_1133 using piece_1133_mem, ⟨piece_1079_mem, piece_1080_mem⟩

theorem linked_10392 : Linked cell_10392 pieces := by
  link_source cell_10392 with piece_1134 using piece_1134_mem, piece_1079_mem

theorem linked_10393 : Linked cell_10393 pieces := by
  link_source cell_10393 with piece_1134 using piece_1134_mem, piece_1079_mem

theorem linked_10394 : Linked cell_10394 pieces := by
  link_source cell_10394 with piece_1134 using piece_1134_mem, ⟨piece_1078_mem, piece_1079_mem⟩

theorem linked_10395 : Linked cell_10395 pieces := by
  link_source cell_10395 with piece_1134 using piece_1134_mem, piece_1078_mem

theorem linked_10396 : Linked cell_10396 pieces := by
  link_source cell_10396 with piece_1135 using piece_1135_mem, ⟨piece_1078_mem, piece_1079_mem⟩

theorem linked_10397 : Linked cell_10397 pieces := by
  link_source cell_10397 with piece_1135 using piece_1135_mem, piece_1078_mem

theorem linked_10398 : Linked cell_10398 pieces := by
  link_source cell_10398 with piece_1135 using piece_1135_mem, ⟨piece_1077_mem, piece_1078_mem⟩

theorem linked_10399 : Linked cell_10399 pieces := by
  link_source cell_10399 with piece_1135 using piece_1135_mem, ⟨piece_1076_mem, piece_1077_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0207.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0207.cells,List.forall_mem_cons]
  exact ⟨linked_10350, linked_10351, linked_10352, linked_10353, linked_10354, linked_10355, linked_10356, linked_10357, linked_10358, linked_10359, linked_10360, linked_10361, linked_10362, linked_10363, linked_10364, linked_10365, linked_10366, linked_10367, linked_10368, linked_10369, linked_10370, linked_10371, linked_10372, linked_10373, linked_10374, linked_10375, linked_10376, linked_10377, linked_10378, linked_10379, linked_10380, linked_10381, linked_10382, linked_10383, linked_10384, linked_10385, linked_10386, linked_10387, linked_10388, linked_10389, linked_10390, linked_10391, linked_10392, linked_10393, linked_10394, linked_10395, linked_10396, linked_10397, linked_10398, linked_10399, by simp⟩

theorem covered : covers (46937500000000003 / 100000000000000000 : ℚ) (47550000000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0207.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0207
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0208
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(47550000000000003 / 100000000000000000 : ℚ), (47562500000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (6361908801873 / 10000000000000 : ℚ)
  w := (14896935790381 / 10000000000000 : ℚ)
  center := (47556250000000003 / 100000000000000000 : ℚ)
  supportValue := (11223201220706959 / 25000000000000000 : ℚ)
  supportSlope := (-11275503690617583 / 5000000000000000 : ℚ)
  oldCenter := (11223201220706959 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1136
  oldLo := (44750000000000001 / 100000000000000000 : ℚ)
  oldHi := (44800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1076, piece_1077]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10400 : Cell := { cellDefaults with
  oldLo := (44850000000000001 / 100000000000000000 : ℚ)
  oldHi := (44950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1077, piece_1078]
}

def cell_10401 : Cell := { cellDefaults with
  domain := ⟨(47562500000000003 / 100000000000000000 : ℚ), (47575000000000003 / 100000000000000000 : ℚ)⟩
  center := (47568750000000003 / 100000000000000000 : ℚ)
  supportValue := (2243231434860313 / 5000000000000000 : ℚ)
  supportSlope := (-1126437956122217 / 500000000000000 : ℚ)
  oldCenter := (2243231434860313 / 5000000000000000 : ℚ)
  oldLo := (44850000000000001 / 100000000000000000 : ℚ)
  oldHi := (44900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1077]
}

def cell_10402 : Cell := { cellDefaults with
  domain := ⟨(47575000000000003 / 100000000000000000 : ℚ), (47587500000000003 / 100000000000000000 : ℚ)⟩
  center := (47581250000000003 / 100000000000000000 : ℚ)
  supportValue := (1401139928142503 / 3125000000000000 : ℚ)
  supportSlope := (-1407058637032943 / 625000000000000 : ℚ)
  oldCenter := (1401139928142503 / 3125000000000000 : ℚ)
  oldLo := (44800000000000001 / 100000000000000000 : ℚ)
  oldHi := (44900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1076, piece_1077]
}

def cell_10403 : Cell := { cellDefaults with
  domain := ⟨(47587500000000003 / 100000000000000000 : ℚ), (47600000000000003 / 100000000000000000 : ℚ)⟩
  center := (47593750000000003 / 100000000000000000 : ℚ)
  supportValue := (2240417575668677 / 5000000000000000 : ℚ)
  supportSlope := (-11245276921054703 / 5000000000000000 : ℚ)
  oldCenter := (2240417575668677 / 5000000000000000 : ℚ)
  oldHi := (44850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1075, piece_1076]
}

def cell_10404 : Cell := { cellDefaults with
  domain := ⟨(47600000000000003 / 100000000000000000 : ℚ), (47612500000000003 / 100000000000000000 : ℚ)⟩
  r := (63582026749719 / 100000000000000 : ℚ)
  w := (1861508854317 / 1250000000000 : ℚ)
  center := (47606250000000003 / 100000000000000000 : ℚ)
  supportValue := (1793559883090321 / 4000000000000000 : ℚ)
  supportSlope := (-4500162702127497 / 2000000000000000 : ℚ)
  oldCenter := (1793559883090321 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1137
  oldLo := (44800000000000001 / 100000000000000000 : ℚ)
  oldHi := (44900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1076, piece_1077]
}

def cell_10405 : Cell := { cellDefaults with
  domain := ⟨(47612500000000003 / 100000000000000000 : ℚ), (47625000000000003 / 100000000000000000 : ℚ)⟩
  r := (63582026749719 / 100000000000000 : ℚ)
  w := (1861508854317 / 1250000000000 : ℚ)
  center := (47618750000000003 / 100000000000000000 : ℚ)
  supportValue := (2240544253065167 / 5000000000000000 : ℚ)
  supportSlope := (-702451412913363 / 312500000000000 : ℚ)
  oldCenter := (2240544253065167 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1137
  oldHi := (44850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1075, piece_1076]
}

def cell_10406 : Cell := { cellDefaults with
  domain := ⟨(47625000000000003 / 100000000000000000 : ℚ), (47637500000000003 / 100000000000000000 : ℚ)⟩
  r := (63582026749719 / 100000000000000 : ℚ)
  w := (1861508854317 / 1250000000000 : ℚ)
  center := (47631250000000003 / 100000000000000000 : ℚ)
  supportValue := (2239139835644927 / 5000000000000000 : ℚ)
  supportSlope := (-561546727171347 / 250000000000000 : ℚ)
  oldCenter := (2239139835644927 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1137
  oldPieces := [piece_1075]
}

def cell_10407 : Cell := { cellDefaults with
  domain := ⟨(47637500000000003 / 100000000000000000 : ℚ), (47650000000000003 / 100000000000000000 : ℚ)⟩
  r := (63582026749719 / 100000000000000 : ℚ)
  w := (1861508854317 / 1250000000000 : ℚ)
  center := (47643750000000003 / 100000000000000000 : ℚ)
  supportValue := (11188683628750619 / 25000000000000000 : ℚ)
  supportSlope := (-2805064822570813 / 1250000000000000 : ℚ)
  oldCenter := (11188683628750619 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1137
  oldLo := (44700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1074, piece_1075]
}

def cell_10408 : Cell := { cellDefaults with
  domain := ⟨(47650000000000003 / 100000000000000000 : ℚ), (190650000000000013 / 400000000000000000 : ℚ)⟩
  r := (63545011685399 / 100000000000000 : ℚ)
  w := (14887215438391 / 10000000000000 : ℚ)
  center := (15250000000000001 / 32000000000000000 : ℚ)
  supportValue := (1119632883824121 / 2500000000000000 : ℚ)
  supportSlope := (-22450555907517873 / 10000000000000000 : ℚ)
  oldCenter := (1119632883824121 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1138
  oldPieces := [piece_1075]
}

def cell_10409 : Cell := { cellDefaults with
  domain := ⟨(190650000000000013 / 400000000000000000 : ℚ), (95350000000000007 / 200000000000000000 : ℚ)⟩
  r := (63545011685399 / 100000000000000 : ℚ)
  w := (14887215438391 / 10000000000000 : ℚ)
  center := (381350000000000027 / 800000000000000000 : ℚ)
  supportValue := (1118931681983301 / 2500000000000000 : ℚ)
  supportSlope := (-280355558384121 / 125000000000000 : ℚ)
  oldCenter := (1118931681983301 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1138
  oldLo := (44700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1074, piece_1075]
}

def cell_10410 : Cell := { cellDefaults with
  domain := ⟨(95350000000000007 / 200000000000000000 : ℚ), (38150000000000003 / 80000000000000000 : ℚ)⟩
  r := (63545011685399 / 100000000000000 : ℚ)
  w := (14887215438391 / 10000000000000 : ℚ)
  center := (381450000000000029 / 800000000000000000 : ℚ)
  supportValue := (447292413814589 / 1000000000000000 : ℚ)
  supportSlope := (-2241082781465797 / 1000000000000000 : ℚ)
  oldCenter := (447292413814589 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1138
  oldLo := (44700000000000001 / 100000000000000000 : ℚ)
  oldHi := (44750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1074]
}

def cell_10411 : Cell := { cellDefaults with
  domain := ⟨(38150000000000003 / 80000000000000000 : ℚ), (11925000000000001 / 25000000000000000 : ℚ)⟩
  r := (63545011685399 / 100000000000000 : ℚ)
  w := (14887215438391 / 10000000000000 : ℚ)
  center := (381550000000000031 / 800000000000000000 : ℚ)
  supportValue := (894024858941091 / 2000000000000000 : ℚ)
  supportSlope := (-1119531654765171 / 500000000000000 : ℚ)
  oldCenter := (894024858941091 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1138
  oldLo := (44650000000000001 / 100000000000000000 : ℚ)
  oldHi := (44750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1072, piece_1073, piece_1074]
}

def cell_10412 : Cell := { cellDefaults with
  domain := ⟨(11925000000000001 / 25000000000000000 : ℚ), (11928125000000001 / 25000000000000000 : ℚ)⟩
  r := (63508045613767 / 100000000000000 : ℚ)
  w := (14882369309597 / 10000000000000 : ℚ)
  center := (11926562500000001 / 25000000000000000 : ℚ)
  supportValue := (44731756661446237 / 100000000000000000 : ℚ)
  supportSlope := (-2239955125205917 / 1000000000000000 : ℚ)
  oldCenter := (44731756661446237 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1139
  oldLo := (44700000000000001 / 100000000000000000 : ℚ)
  oldHi := (44750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1074]
}

def cell_10413 : Cell := { cellDefaults with
  domain := ⟨(11928125000000001 / 25000000000000000 : ℚ), (11931250000000001 / 25000000000000000 : ℚ)⟩
  r := (63508045613767 / 100000000000000 : ℚ)
  w := (14882369309597 / 10000000000000 : ℚ)
  center := (11929687500000001 / 25000000000000000 : ℚ)
  supportValue := (111759430763973 / 250000000000000 : ℚ)
  supportSlope := (-559464839589463 / 250000000000000 : ℚ)
  oldCenter := (111759430763973 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1139
  oldLo := (44650000000000001 / 100000000000000000 : ℚ)
  oldHi := (44750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1072, piece_1073, piece_1074]
}

def cell_10414 : Cell := { cellDefaults with
  domain := ⟨(11931250000000001 / 25000000000000000 : ℚ), (11934375000000001 / 25000000000000000 : ℚ)⟩
  r := (63508045613767 / 100000000000000 : ℚ)
  w := (14882369309597 / 10000000000000 : ℚ)
  center := (11932812500000001 / 25000000000000000 : ℚ)
  supportValue := (2233790433697933 / 5000000000000000 : ℚ)
  supportSlope := (-2794995034745007 / 1250000000000000 : ℚ)
  oldCenter := (2233790433697933 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1139
  oldLo := (44650000000000001 / 100000000000000000 : ℚ)
  oldHi := (8938547486033519 / 20000000000000000 : ℚ)
  oldPieces := [piece_1072]
}

def cell_10415 : Cell := { cellDefaults with
  domain := ⟨(11934375000000001 / 25000000000000000 : ℚ), (11937500000000001 / 25000000000000000 : ℚ)⟩
  r := (63508045613767 / 100000000000000 : ℚ)
  w := (14882369309597 / 10000000000000 : ℚ)
  center := (11935937500000001 / 25000000000000000 : ℚ)
  supportValue := (44647872932199867 / 100000000000000000 : ℚ)
  supportSlope := (-22340894800940703 / 10000000000000000 : ℚ)
  oldCenter := (44647872932199867 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1139
  oldLo := (44600000000000001 / 100000000000000000 : ℚ)
  oldHi := (8938547486033519 / 20000000000000000 : ℚ)
  oldPieces := [piece_1071, piece_1072]
}

def cell_10416 : Cell := { cellDefaults with
  domain := ⟨(11937500000000001 / 25000000000000000 : ℚ), (11940625000000001 / 25000000000000000 : ℚ)⟩
  r := (63471125745949 / 100000000000000 : ℚ)
  w := (14877533974421 / 10000000000000 : ℚ)
  center := (11939062500000001 / 25000000000000000 : ℚ)
  supportValue := (4467831911067203 / 10000000000000000 : ℚ)
  supportSlope := (-1117435942258549 / 500000000000000 : ℚ)
  oldCenter := (4467831911067203 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1140
  oldLo := (44650000000000001 / 100000000000000000 : ℚ)
  oldHi := (8938547486033519 / 20000000000000000 : ℚ)
  oldPieces := [piece_1072]
}

def cell_10417 : Cell := { cellDefaults with
  domain := ⟨(11940625000000001 / 25000000000000000 : ℚ), (11943750000000001 / 25000000000000000 : ℚ)⟩
  r := (63471125745949 / 100000000000000 : ℚ)
  w := (14877533974421 / 10000000000000 : ℚ)
  center := (11942187500000001 / 25000000000000000 : ℚ)
  supportValue := (279064989110587 / 625000000000000 : ℚ)
  supportSlope := (-5582221989159919 / 2500000000000000 : ℚ)
  oldCenter := (279064989110587 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1140
  oldLo := (44600000000000001 / 100000000000000000 : ℚ)
  oldHi := (8938547486033519 / 20000000000000000 : ℚ)
  oldPieces := [piece_1071, piece_1072]
}

def cell_10418 : Cell := { cellDefaults with
  domain := ⟨(11943750000000001 / 25000000000000000 : ℚ), (11946875000000001 / 25000000000000000 : ℚ)⟩
  r := (63471125745949 / 100000000000000 : ℚ)
  w := (14877533974421 / 10000000000000 : ℚ)
  center := (11945312500000001 / 25000000000000000 : ℚ)
  supportValue := (44622496705998677 / 100000000000000000 : ℚ)
  supportSlope := (-11154635917178801 / 5000000000000000 : ℚ)
  oldCenter := (44622496705998677 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1140
  oldLo := (44600000000000001 / 100000000000000000 : ℚ)
  oldHi := (44650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1071]
}

def cell_10419 : Cell := { cellDefaults with
  domain := ⟨(11946875000000001 / 25000000000000000 : ℚ), (11950000000000001 / 25000000000000000 : ℚ)⟩
  r := (63471125745949 / 100000000000000 : ℚ)
  w := (14877533974421 / 10000000000000 : ℚ)
  center := (11948437500000001 / 25000000000000000 : ℚ)
  supportValue := (1114865574946423 / 2500000000000000 : ℚ)
  supportSlope := (-89165232145767 / 40000000000000 : ℚ)
  oldCenter := (1114865574946423 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1140
  oldLo := (44550000000000001 / 100000000000000000 : ℚ)
  oldHi := (44650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1070, piece_1071]
}

def cell_10420 : Cell := { cellDefaults with
  domain := ⟨(11950000000000001 / 25000000000000000 : ℚ), (11953125000000001 / 25000000000000000 : ℚ)⟩
  r := (31717126952171 / 50000000000000 : ℚ)
  w := (7436354121071 / 5000000000000 : ℚ)
  center := (11951562500000001 / 25000000000000000 : ℚ)
  supportValue := (557812544231683 / 1250000000000000 : ℚ)
  supportSlope := (-2229806692230163 / 1000000000000000 : ℚ)
  oldCenter := (557812544231683 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1141
  oldLo := (44600000000000001 / 100000000000000000 : ℚ)
  oldHi := (44650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1071]
}

def cell_10421 : Cell := { cellDefaults with
  domain := ⟨(11953125000000001 / 25000000000000000 : ℚ), (11956250000000001 / 25000000000000000 : ℚ)⟩
  r := (31717126952171 / 50000000000000 : ℚ)
  w := (7436354121071 / 5000000000000 : ℚ)
  center := (11954687500000001 / 25000000000000000 : ℚ)
  supportValue := (4459714481613329 / 10000000000000000 : ℚ)
  supportSlope := (-4455866916487139 / 2000000000000000 : ℚ)
  oldCenter := (4459714481613329 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1141
  oldLo := (44550000000000001 / 100000000000000000 : ℚ)
  oldHi := (44650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1070, piece_1071]
}

def cell_10422 : Cell := { cellDefaults with
  domain := ⟨(11956250000000001 / 25000000000000000 : ℚ), (11959375000000001 / 25000000000000000 : ℚ)⟩
  r := (31717126952171 / 50000000000000 : ℚ)
  w := (7436354121071 / 5000000000000 : ℚ)
  center := (11957812500000001 / 25000000000000000 : ℚ)
  supportValue := (1114232657579181 / 2500000000000000 : ℚ)
  supportSlope := (-5564689970964931 / 2500000000000000 : ℚ)
  oldCenter := (1114232657579181 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1141
  oldLo := (44550000000000001 / 100000000000000000 : ℚ)
  oldHi := (44600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1070]
}

def cell_10423 : Cell := { cellDefaults with
  domain := ⟨(11959375000000001 / 25000000000000000 : ℚ), (11962500000000001 / 25000000000000000 : ℚ)⟩
  r := (31717126952171 / 50000000000000 : ℚ)
  w := (7436354121071 / 5000000000000 : ℚ)
  center := (11960937500000001 / 25000000000000000 : ℚ)
  supportValue := (1113537361094201 / 2500000000000000 : ℚ)
  supportSlope := (-22241868864840697 / 10000000000000000 : ℚ)
  oldCenter := (1113537361094201 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1141
  oldLo := (44500000000000001 / 100000000000000000 : ℚ)
  oldHi := (44600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1069, piece_1070]
}

def cell_10424 : Cell := { cellDefaults with
  domain := ⟨(11962500000000001 / 25000000000000000 : ℚ), (11965625000000001 / 25000000000000000 : ℚ)⟩
  r := (79246787117 / 125000000000 : ℚ)
  w := (14867891813711 / 10000000000000 : ℚ)
  center := (11964062500000001 / 25000000000000000 : ℚ)
  supportValue := (4457181071325727 / 10000000000000000 : ℚ)
  supportSlope := (-2780948927656457 / 1250000000000000 : ℚ)
  oldCenter := (4457181071325727 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1142
  oldLo := (44550000000000001 / 100000000000000000 : ℚ)
  oldHi := (44600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1070]
}

def cell_10425 : Cell := { cellDefaults with
  domain := ⟨(11965625000000001 / 25000000000000000 : ℚ), (11968750000000001 / 25000000000000000 : ℚ)⟩
  r := (79246787117 / 125000000000 : ℚ)
  w := (14867891813711 / 10000000000000 : ℚ)
  center := (11967187500000001 / 25000000000000000 : ℚ)
  supportValue := (44544013797114773 / 100000000000000000 : ℚ)
  supportSlope := (-2222992965213777 / 1000000000000000 : ℚ)
  oldCenter := (44544013797114773 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1142
  oldLo := (44500000000000001 / 100000000000000000 : ℚ)
  oldHi := (44600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1069, piece_1070]
}

def cell_10426 : Cell := { cellDefaults with
  domain := ⟨(11968750000000001 / 25000000000000000 : ℚ), (11971875000000001 / 25000000000000000 : ℚ)⟩
  r := (79246787117 / 125000000000 : ℚ)
  w := (14867891813711 / 10000000000000 : ℚ)
  center := (11970312500000001 / 25000000000000000 : ℚ)
  supportValue := (2225811912009353 / 5000000000000000 : ℚ)
  supportSlope := (-11104212917802947 / 5000000000000000 : ℚ)
  oldCenter := (2225811912009353 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1142
  oldLo := (44500000000000001 / 100000000000000000 : ℚ)
  oldHi := (44550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1069]
}

def cell_10427 : Cell := { cellDefaults with
  domain := ⟨(11971875000000001 / 25000000000000000 : ℚ), (11975000000000001 / 25000000000000000 : ℚ)⟩
  r := (79246787117 / 125000000000 : ℚ)
  w := (14867891813711 / 10000000000000 : ℚ)
  center := (11973437500000001 / 25000000000000000 : ℚ)
  supportValue := (44488488043218827 / 100000000000000000 : ℚ)
  supportSlope := (-4438515814666033 / 2000000000000000 : ℚ)
  oldCenter := (44488488043218827 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1142
  oldLo := (44450000000000001 / 100000000000000000 : ℚ)
  oldHi := (44550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1068, piece_1069]
}

def cell_10428 : Cell := { cellDefaults with
  domain := ⟨(11975000000000001 / 25000000000000000 : ℚ), (11978125000000001 / 25000000000000000 : ℚ)⟩
  r := (20275408541 / 32000000000 : ℚ)
  w := (14863085522573 / 10000000000000 : ℚ)
  center := (11976562500000001 / 25000000000000000 : ℚ)
  supportValue := (22259369610086713 / 50000000000000000 : ℚ)
  supportSlope := (-2219729300615647 / 1000000000000000 : ℚ)
  oldCenter := (22259369610086713 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1143
  oldLo := (44500000000000001 / 100000000000000000 : ℚ)
  oldHi := (44550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1069]
}

def cell_10429 : Cell := { cellDefaults with
  domain := ⟨(11978125000000001 / 25000000000000000 : ℚ), (11981250000000001 / 25000000000000000 : ℚ)⟩
  r := (20275408541 / 32000000000 : ℚ)
  w := (14863085522573 / 10000000000000 : ℚ)
  center := (11979687500000001 / 25000000000000000 : ℚ)
  supportValue := (11122750981273001 / 25000000000000000 : ℚ)
  supportSlope := (-11090336401933243 / 5000000000000000 : ℚ)
  oldCenter := (11122750981273001 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1143
  oldLo := (44450000000000001 / 100000000000000000 : ℚ)
  oldHi := (44550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1068, piece_1069]
}

def cell_10430 : Cell := { cellDefaults with
  domain := ⟨(11981250000000001 / 25000000000000000 : ℚ), (11984375000000001 / 25000000000000000 : ℚ)⟩
  r := (20275408541 / 32000000000 : ℚ)
  w := (14863085522573 / 10000000000000 : ℚ)
  center := (11982812500000001 / 25000000000000000 : ℚ)
  supportValue := (44463291103041913 / 100000000000000000 : ℚ)
  supportSlope := (-22158461332670853 / 10000000000000000 : ℚ)
  oldCenter := (44463291103041913 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1143
  oldLo := (44400000000000001 / 100000000000000000 : ℚ)
  oldHi := (44500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1067, piece_1068]
}

def cell_10431 : Cell := { cellDefaults with
  domain := ⟨(11984375000000001 / 25000000000000000 : ℚ), (11987500000000001 / 25000000000000000 : ℚ)⟩
  r := (20275408541 / 32000000000 : ℚ)
  w := (14863085522573 / 10000000000000 : ℚ)
  center := (11985937500000001 / 25000000000000000 : ℚ)
  supportValue := (5554450298022217 / 12500000000000000 : ℚ)
  supportSlope := (-22143244037478027 / 10000000000000000 : ℚ)
  oldCenter := (5554450298022217 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1143
  oldLo := (44400000000000001 / 100000000000000000 : ℚ)
  oldHi := (44450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1067]
}

def cell_10432 : Cell := { cellDefaults with
  domain := ⟨(11987500000000001 / 25000000000000000 : ℚ), (11990625000000001 / 25000000000000000 : ℚ)⟩
  r := (63323921399349 / 100000000000000 : ℚ)
  w := (14858289165989 / 10000000000000 : ℚ)
  center := (11989062500000001 / 25000000000000000 : ℚ)
  supportValue := (4446578729543331 / 10000000000000000 : ℚ)
  supportSlope := (-22147170747057743 / 10000000000000000 : ℚ)
  oldCenter := (4446578729543331 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1144
  oldLo := (44450000000000001 / 100000000000000000 : ℚ)
  oldHi := (44500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1068]
}

def cell_10433 : Cell := { cellDefaults with
  domain := ⟨(11990625000000001 / 25000000000000000 : ℚ), (11993750000000001 / 25000000000000000 : ℚ)⟩
  r := (63323921399349 / 100000000000000 : ℚ)
  w := (14858289165989 / 10000000000000 : ℚ)
  center := (11992187500000001 / 25000000000000000 : ℚ)
  supportValue := (88876226875019 / 200000000000000 : ℚ)
  supportSlope := (-2766445371653603 / 1250000000000000 : ℚ)
  oldCenter := (88876226875019 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1144
  oldLo := (44400000000000001 / 100000000000000000 : ℚ)
  oldHi := (44500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1067, piece_1068]
}

def cell_10434 : Cell := { cellDefaults with
  domain := ⟨(11993750000000001 / 25000000000000000 : ℚ), (11996875000000001 / 25000000000000000 : ℚ)⟩
  r := (63323921399349 / 100000000000000 : ℚ)
  w := (14858289165989 / 10000000000000 : ℚ)
  center := (11995312500000001 / 25000000000000000 : ℚ)
  supportValue := (222052315652229 / 500000000000000 : ℚ)
  supportSlope := (-110546927907329 / 50000000000000 : ℚ)
  oldCenter := (222052315652229 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1144
  oldLo := (44350000000000001 / 100000000000000000 : ℚ)
  oldHi := (44450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1066, piece_1067]
}

def cell_10435 : Cell := { cellDefaults with
  domain := ⟨(11996875000000001 / 25000000000000000 : ℚ), (12000000000000001 / 25000000000000000 : ℚ)⟩
  r := (63323921399349 / 100000000000000 : ℚ)
  w := (14858289165989 / 10000000000000 : ℚ)
  center := (11998437500000001 / 25000000000000000 : ℚ)
  supportValue := (4438283570611041 / 10000000000000000 : ℚ)
  supportSlope := (-5523335619843639 / 2500000000000000 : ℚ)
  oldCenter := (4438283570611041 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1144
  oldLo := (44350000000000001 / 100000000000000000 : ℚ)
  oldHi := (44400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1066]
}

def cell_10436 : Cell := { cellDefaults with
  domain := ⟨(12000000000000001 / 25000000000000000 : ℚ), (2400558659217877 / 5000000000000000 : ℚ)⟩
  r := (63287238912191 / 100000000000000 : ℚ)
  w := (7426751476117 / 5000000000000 : ℚ)
  center := (12001396648044693 / 25000000000000000 : ℚ)
  supportValue := (4441438851984973 / 10000000000000000 : ℚ)
  supportSlope := (-11049243924198793 / 5000000000000000 : ℚ)
  oldCenter := (4441438851984973 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1145
  oldLo := (44400000000000001 / 100000000000000000 : ℚ)
  oldHi := (44450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1067]
}

def cell_10437 : Cell := { cellDefaults with
  domain := ⟨(2400558659217877 / 5000000000000000 : ℚ), (12006250000000001 / 25000000000000000 : ℚ)⟩
  r := (63287238912191 / 100000000000000 : ℚ)
  w := (7426751476117 / 5000000000000 : ℚ)
  center := (12004521648044693 / 25000000000000000 : ℚ)
  supportValue := (44386806016356933 / 100000000000000000 : ℚ)
  supportSlope := (-22082981476990153 / 10000000000000000 : ℚ)
  oldCenter := (44386806016356933 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1146
  oldLo := (44350000000000001 / 100000000000000000 : ℚ)
  oldHi := (44450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1066, piece_1067]
}

def cell_10438 : Cell := { cellDefaults with
  domain := ⟨(12006250000000001 / 25000000000000000 : ℚ), (12009375000000001 / 25000000000000000 : ℚ)⟩
  r := (63287238912191 / 100000000000000 : ℚ)
  w := (7426751476117 / 5000000000000 : ℚ)
  center := (12007812500000001 / 25000000000000000 : ℚ)
  supportValue := (4435775300548767 / 10000000000000000 : ℚ)
  supportSlope := (-1103022707282797 / 500000000000000 : ℚ)
  oldCenter := (4435775300548767 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1146
  oldLo := (443 / 1000 : ℚ)
  oldHi := (44400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1065, piece_1066]
}

def cell_10439 : Cell := { cellDefaults with
  domain := ⟨(12009375000000001 / 25000000000000000 : ℚ), (12012500000000001 / 25000000000000000 : ℚ)⟩
  r := (63287238912191 / 100000000000000 : ℚ)
  w := (7426751476117 / 5000000000000 : ℚ)
  center := (12010937500000001 / 25000000000000000 : ℚ)
  supportValue := (1773207467808511 / 4000000000000000 : ℚ)
  supportSlope := (-1102180690364829 / 500000000000000 : ℚ)
  oldCenter := (1773207467808511 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1146
  oldLo := (443 / 1000 : ℚ)
  oldHi := (44350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1065]
}

def cell_10440 : Cell := { cellDefaults with
  domain := ⟨(12012500000000001 / 25000000000000000 : ℚ), (12015625000000001 / 25000000000000000 : ℚ)⟩
  r := (7906325469867 / 12500000000000 : ℚ)
  w := (2969745177699 / 2000000000000 : ℚ)
  center := (12014062500000001 / 25000000000000000 : ℚ)
  supportValue := (44360241135903783 / 100000000000000000 : ℚ)
  supportSlope := (-2204861581987849 / 1000000000000000 : ℚ)
  oldCenter := (44360241135903783 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1147
  oldLo := (443 / 1000 : ℚ)
  oldHi := (44400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1065, piece_1066]
}

def cell_10441 : Cell := { cellDefaults with
  domain := ⟨(12015625000000001 / 25000000000000000 : ℚ), (12018750000000001 / 25000000000000000 : ℚ)⟩
  r := (7906325469867 / 12500000000000 : ℚ)
  w := (2969745177699 / 2000000000000 : ℚ)
  center := (12017187500000001 / 25000000000000000 : ℚ)
  supportValue := (4433268960451337 / 10000000000000000 : ℚ)
  supportSlope := (-22032616652509773 / 10000000000000000 : ℚ)
  oldCenter := (4433268960451337 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1147
  oldLo := (443 / 1000 : ℚ)
  oldHi := (44350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1065]
}

def cell_10442 : Cell := { cellDefaults with
  domain := ⟨(12018750000000001 / 25000000000000000 : ℚ), (12021875000000001 / 25000000000000000 : ℚ)⟩
  r := (7906325469867 / 12500000000000 : ℚ)
  w := (2969745177699 / 2000000000000 : ℚ)
  center := (12020312500000001 / 25000000000000000 : ℚ)
  supportValue := (2215258183786299 / 5000000000000000 : ℚ)
  supportSlope := (-440233265665313 / 200000000000000 : ℚ)
  oldCenter := (2215258183786299 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1147
  oldLo := (177 / 400 : ℚ)
  oldHi := (44350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1064, piece_1065]
}

def cell_10443 : Cell := { cellDefaults with
  domain := ⟨(12021875000000001 / 25000000000000000 : ℚ), (12025000000000001 / 25000000000000000 : ℚ)⟩
  r := (7906325469867 / 12500000000000 : ℚ)
  w := (2969745177699 / 2000000000000 : ℚ)
  center := (12023437500000001 / 25000000000000000 : ℚ)
  supportValue := (4427765830400319 / 10000000000000000 : ℚ)
  supportSlope := (-2199405879377281 / 1000000000000000 : ℚ)
  oldCenter := (4427765830400319 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1147
  oldLo := (177 / 400 : ℚ)
  oldHi := (443 / 1000 : ℚ)
  oldPieces := [piece_1064]
}

def cell_10444 : Cell := { cellDefaults with
  domain := ⟨(12025000000000001 / 25000000000000000 : ℚ), (12028125000000001 / 25000000000000000 : ℚ)⟩
  r := (12642802740001 / 20000000000000 : ℚ)
  w := (14843958651677 / 10000000000000 : ℚ)
  center := (12026562500000001 / 25000000000000000 : ℚ)
  supportValue := (4430764988676377 / 10000000000000000 : ℚ)
  supportSlope := (-21999858183452403 / 10000000000000000 : ℚ)
  oldCenter := (4430764988676377 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1148
  oldLo := (177 / 400 : ℚ)
  oldHi := (44350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1064, piece_1065]
}

def cell_10445 : Cell := { cellDefaults with
  domain := ⟨(12028125000000001 / 25000000000000000 : ℚ), (12031250000000001 / 25000000000000000 : ℚ)⟩
  r := (12642802740001 / 20000000000000 : ℚ)
  w := (14843958651677 / 10000000000000 : ℚ)
  center := (12029687500000001 / 25000000000000000 : ℚ)
  supportValue := (221400796264501 / 500000000000000 : ℚ)
  supportSlope := (-2198309727812209 / 1000000000000000 : ℚ)
  oldCenter := (221400796264501 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1148
  oldLo := (177 / 400 : ℚ)
  oldHi := (443 / 1000 : ℚ)
  oldPieces := [piece_1064]
}

def cell_10446 : Cell := { cellDefaults with
  domain := ⟨(12031250000000001 / 25000000000000000 : ℚ), (12034375000000001 / 25000000000000000 : ℚ)⟩
  r := (12642802740001 / 20000000000000 : ℚ)
  w := (14843958651677 / 10000000000000 : ℚ)
  center := (12032812500000001 / 25000000000000000 : ℚ)
  supportValue := (4425269518384407 / 10000000000000000 : ℚ)
  supportSlope := (-2196302123673277 / 1000000000000000 : ℚ)
  oldCenter := (4425269518384407 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1148
  oldLo := (221 / 500 : ℚ)
  oldHi := (443 / 1000 : ℚ)
  oldPieces := [piece_1063, piece_1064]
}

def cell_10447 : Cell := { cellDefaults with
  domain := ⟨(12034375000000001 / 25000000000000000 : ℚ), (12037500000000001 / 25000000000000000 : ℚ)⟩
  r := (12642802740001 / 20000000000000 : ℚ)
  w := (14843958651677 / 10000000000000 : ℚ)
  center := (12035937500000001 / 25000000000000000 : ℚ)
  supportValue := (4422525056523493 / 10000000000000000 : ℚ)
  supportSlope := (-21944680157570673 / 10000000000000000 : ℚ)
  oldCenter := (4422525056523493 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1148
  oldLo := (221 / 500 : ℚ)
  oldHi := (177 / 400 : ℚ)
  oldPieces := [piece_1063]
}

def cell_10448 : Cell := { cellDefaults with
  domain := ⟨(12037500000000001 / 25000000000000000 : ℚ), (12040625000000001 / 25000000000000000 : ℚ)⟩
  r := (63177472081187 / 100000000000000 : ℚ)
  w := (927450099373 / 625000000000 : ℚ)
  center := (12039062500000001 / 25000000000000000 : ℚ)
  supportValue := (2212758715034411 / 5000000000000000 : ℚ)
  supportSlope := (-21951247446114763 / 10000000000000000 : ℚ)
  oldCenter := (2212758715034411 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1149
  oldLo := (221 / 500 : ℚ)
  oldHi := (443 / 1000 : ℚ)
  oldPieces := [piece_1063, piece_1064]
}

def cell_10449 : Cell := { cellDefaults with
  domain := ⟨(12040625000000001 / 25000000000000000 : ℚ), (12043750000000001 / 25000000000000000 : ℚ)⟩
  r := (63177472081187 / 100000000000000 : ℚ)
  w := (927450099373 / 625000000000 : ℚ)
  center := (12042187500000001 / 25000000000000000 : ℚ)
  supportValue := (4422774438046961 / 10000000000000000 : ℚ)
  supportSlope := (-1096687581144451 / 500000000000000 : ℚ)
  oldCenter := (4422774438046961 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1149
  oldLo := (221 / 500 : ℚ)
  oldHi := (177 / 400 : ℚ)
  oldPieces := [piece_1063]
}

theorem check_10400 : cell_10400.check = true := by
  decide +kernel

theorem check_10401 : cell_10401.check = true := by
  decide +kernel

theorem check_10402 : cell_10402.check = true := by
  decide +kernel

theorem check_10403 : cell_10403.check = true := by
  decide +kernel

theorem check_10404 : cell_10404.check = true := by
  decide +kernel

theorem check_10405 : cell_10405.check = true := by
  decide +kernel

theorem check_10406 : cell_10406.check = true := by
  decide +kernel

theorem check_10407 : cell_10407.check = true := by
  decide +kernel

theorem check_10408 : cell_10408.check = true := by
  decide +kernel

theorem check_10409 : cell_10409.check = true := by
  decide +kernel

theorem check_10410 : cell_10410.check = true := by
  decide +kernel

theorem check_10411 : cell_10411.check = true := by
  decide +kernel

theorem check_10412 : cell_10412.check = true := by
  decide +kernel

theorem check_10413 : cell_10413.check = true := by
  decide +kernel

theorem check_10414 : cell_10414.check = true := by
  decide +kernel

theorem check_10415 : cell_10415.check = true := by
  decide +kernel

theorem check_10416 : cell_10416.check = true := by
  decide +kernel

theorem check_10417 : cell_10417.check = true := by
  decide +kernel

theorem check_10418 : cell_10418.check = true := by
  decide +kernel

theorem check_10419 : cell_10419.check = true := by
  decide +kernel

theorem check_10420 : cell_10420.check = true := by
  decide +kernel

theorem check_10421 : cell_10421.check = true := by
  decide +kernel

theorem check_10422 : cell_10422.check = true := by
  decide +kernel

theorem check_10423 : cell_10423.check = true := by
  decide +kernel

theorem check_10424 : cell_10424.check = true := by
  decide +kernel

theorem check_10425 : cell_10425.check = true := by
  decide +kernel

theorem check_10426 : cell_10426.check = true := by
  decide +kernel

theorem check_10427 : cell_10427.check = true := by
  decide +kernel

theorem check_10428 : cell_10428.check = true := by
  decide +kernel

theorem check_10429 : cell_10429.check = true := by
  decide +kernel

theorem check_10430 : cell_10430.check = true := by
  decide +kernel

theorem check_10431 : cell_10431.check = true := by
  decide +kernel

theorem check_10432 : cell_10432.check = true := by
  decide +kernel

theorem check_10433 : cell_10433.check = true := by
  decide +kernel

theorem check_10434 : cell_10434.check = true := by
  decide +kernel

theorem check_10435 : cell_10435.check = true := by
  decide +kernel

theorem check_10436 : cell_10436.check = true := by
  decide +kernel

theorem check_10437 : cell_10437.check = true := by
  decide +kernel

theorem check_10438 : cell_10438.check = true := by
  decide +kernel

theorem check_10439 : cell_10439.check = true := by
  decide +kernel

theorem check_10440 : cell_10440.check = true := by
  decide +kernel

theorem check_10441 : cell_10441.check = true := by
  decide +kernel

theorem check_10442 : cell_10442.check = true := by
  decide +kernel

theorem check_10443 : cell_10443.check = true := by
  decide +kernel

theorem check_10444 : cell_10444.check = true := by
  decide +kernel

theorem check_10445 : cell_10445.check = true := by
  decide +kernel

theorem check_10446 : cell_10446.check = true := by
  decide +kernel

theorem check_10447 : cell_10447.check = true := by
  decide +kernel

theorem check_10448 : cell_10448.check = true := by
  decide +kernel

theorem check_10449 : cell_10449.check = true := by
  decide +kernel

def cells : List Cell := [cell_10400, cell_10401, cell_10402, cell_10403, cell_10404, cell_10405, cell_10406, cell_10407, cell_10408, cell_10409, cell_10410, cell_10411, cell_10412, cell_10413, cell_10414, cell_10415, cell_10416, cell_10417, cell_10418, cell_10419, cell_10420, cell_10421, cell_10422, cell_10423, cell_10424, cell_10425, cell_10426, cell_10427, cell_10428, cell_10429, cell_10430, cell_10431, cell_10432, cell_10433, cell_10434, cell_10435, cell_10436, cell_10437, cell_10438, cell_10439, cell_10440, cell_10441, cell_10442, cell_10443, cell_10444, cell_10445, cell_10446, cell_10447, cell_10448, cell_10449]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10400, check_10401, check_10402, check_10403, check_10404, check_10405, check_10406, check_10407, check_10408, check_10409, check_10410, check_10411, check_10412, check_10413, check_10414, check_10415, check_10416, check_10417, check_10418, check_10419, check_10420, check_10421, check_10422, check_10423, check_10424, check_10425, check_10426, check_10427, check_10428, check_10429, check_10430, check_10431, check_10432, check_10433, check_10434, check_10435, check_10436, check_10437, check_10438, check_10439, check_10440, check_10441, check_10442, check_10443, check_10444, check_10445, check_10446, check_10447, check_10448, check_10449, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0208

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0208
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0208
open AnalyticBounds.ExpressionCertificate

theorem linked_10400 : Linked cell_10400 pieces := by
  link_source cell_10400 with piece_1136 using piece_1136_mem, ⟨piece_1077_mem, piece_1078_mem⟩

theorem linked_10401 : Linked cell_10401 pieces := by
  link_source cell_10401 with piece_1136 using piece_1136_mem, piece_1077_mem

theorem linked_10402 : Linked cell_10402 pieces := by
  link_source cell_10402 with piece_1136 using piece_1136_mem, ⟨piece_1076_mem, piece_1077_mem⟩

theorem linked_10403 : Linked cell_10403 pieces := by
  link_source cell_10403 with piece_1136 using piece_1136_mem, ⟨piece_1075_mem, piece_1076_mem⟩

theorem linked_10404 : Linked cell_10404 pieces := by
  link_source cell_10404 with piece_1137 using piece_1137_mem, ⟨piece_1076_mem, piece_1077_mem⟩

theorem linked_10405 : Linked cell_10405 pieces := by
  link_source cell_10405 with piece_1137 using piece_1137_mem, ⟨piece_1075_mem, piece_1076_mem⟩

theorem linked_10406 : Linked cell_10406 pieces := by
  link_source cell_10406 with piece_1137 using piece_1137_mem, piece_1075_mem

theorem linked_10407 : Linked cell_10407 pieces := by
  link_source cell_10407 with piece_1137 using piece_1137_mem, ⟨piece_1074_mem, piece_1075_mem⟩

theorem linked_10408 : Linked cell_10408 pieces := by
  link_source cell_10408 with piece_1138 using piece_1138_mem, piece_1075_mem

theorem linked_10409 : Linked cell_10409 pieces := by
  link_source cell_10409 with piece_1138 using piece_1138_mem, ⟨piece_1074_mem, piece_1075_mem⟩

theorem linked_10410 : Linked cell_10410 pieces := by
  link_source cell_10410 with piece_1138 using piece_1138_mem, piece_1074_mem

theorem linked_10411 : Linked cell_10411 pieces := by
  link_source cell_10411 with piece_1138 using piece_1138_mem, ⟨piece_1072_mem, ⟨piece_1073_mem, piece_1074_mem⟩⟩

theorem linked_10412 : Linked cell_10412 pieces := by
  link_source cell_10412 with piece_1139 using piece_1139_mem, piece_1074_mem

theorem linked_10413 : Linked cell_10413 pieces := by
  link_source cell_10413 with piece_1139 using piece_1139_mem, ⟨piece_1072_mem, ⟨piece_1073_mem, piece_1074_mem⟩⟩

theorem linked_10414 : Linked cell_10414 pieces := by
  link_source cell_10414 with piece_1139 using piece_1139_mem, piece_1072_mem

theorem linked_10415 : Linked cell_10415 pieces := by
  link_source cell_10415 with piece_1139 using piece_1139_mem, ⟨piece_1071_mem, piece_1072_mem⟩

theorem linked_10416 : Linked cell_10416 pieces := by
  link_source cell_10416 with piece_1140 using piece_1140_mem, piece_1072_mem

theorem linked_10417 : Linked cell_10417 pieces := by
  link_source cell_10417 with piece_1140 using piece_1140_mem, ⟨piece_1071_mem, piece_1072_mem⟩

theorem linked_10418 : Linked cell_10418 pieces := by
  link_source cell_10418 with piece_1140 using piece_1140_mem, piece_1071_mem

theorem linked_10419 : Linked cell_10419 pieces := by
  link_source cell_10419 with piece_1140 using piece_1140_mem, ⟨piece_1070_mem, piece_1071_mem⟩

theorem linked_10420 : Linked cell_10420 pieces := by
  link_source cell_10420 with piece_1141 using piece_1141_mem, piece_1071_mem

theorem linked_10421 : Linked cell_10421 pieces := by
  link_source cell_10421 with piece_1141 using piece_1141_mem, ⟨piece_1070_mem, piece_1071_mem⟩

theorem linked_10422 : Linked cell_10422 pieces := by
  link_source cell_10422 with piece_1141 using piece_1141_mem, piece_1070_mem

theorem linked_10423 : Linked cell_10423 pieces := by
  link_source cell_10423 with piece_1141 using piece_1141_mem, ⟨piece_1069_mem, piece_1070_mem⟩

theorem linked_10424 : Linked cell_10424 pieces := by
  link_source cell_10424 with piece_1142 using piece_1142_mem, piece_1070_mem

theorem linked_10425 : Linked cell_10425 pieces := by
  link_source cell_10425 with piece_1142 using piece_1142_mem, ⟨piece_1069_mem, piece_1070_mem⟩

theorem linked_10426 : Linked cell_10426 pieces := by
  link_source cell_10426 with piece_1142 using piece_1142_mem, piece_1069_mem

theorem linked_10427 : Linked cell_10427 pieces := by
  link_source cell_10427 with piece_1142 using piece_1142_mem, ⟨piece_1068_mem, piece_1069_mem⟩

theorem linked_10428 : Linked cell_10428 pieces := by
  link_source cell_10428 with piece_1143 using piece_1143_mem, piece_1069_mem

theorem linked_10429 : Linked cell_10429 pieces := by
  link_source cell_10429 with piece_1143 using piece_1143_mem, ⟨piece_1068_mem, piece_1069_mem⟩

theorem linked_10430 : Linked cell_10430 pieces := by
  link_source cell_10430 with piece_1143 using piece_1143_mem, ⟨piece_1067_mem, piece_1068_mem⟩

theorem linked_10431 : Linked cell_10431 pieces := by
  link_source cell_10431 with piece_1143 using piece_1143_mem, piece_1067_mem

theorem linked_10432 : Linked cell_10432 pieces := by
  link_source cell_10432 with piece_1144 using piece_1144_mem, piece_1068_mem

theorem linked_10433 : Linked cell_10433 pieces := by
  link_source cell_10433 with piece_1144 using piece_1144_mem, ⟨piece_1067_mem, piece_1068_mem⟩

theorem linked_10434 : Linked cell_10434 pieces := by
  link_source cell_10434 with piece_1144 using piece_1144_mem, ⟨piece_1066_mem, piece_1067_mem⟩

theorem linked_10435 : Linked cell_10435 pieces := by
  link_source cell_10435 with piece_1144 using piece_1144_mem, piece_1066_mem

theorem linked_10436 : Linked cell_10436 pieces := by
  link_source cell_10436 with piece_1145 using piece_1145_mem, piece_1067_mem

theorem linked_10437 : Linked cell_10437 pieces := by
  link_source cell_10437 with piece_1146 using piece_1146_mem, ⟨piece_1066_mem, piece_1067_mem⟩

theorem linked_10438 : Linked cell_10438 pieces := by
  link_source cell_10438 with piece_1146 using piece_1146_mem, ⟨piece_1065_mem, piece_1066_mem⟩

theorem linked_10439 : Linked cell_10439 pieces := by
  link_source cell_10439 with piece_1146 using piece_1146_mem, piece_1065_mem

theorem linked_10440 : Linked cell_10440 pieces := by
  link_source cell_10440 with piece_1147 using piece_1147_mem, ⟨piece_1065_mem, piece_1066_mem⟩

theorem linked_10441 : Linked cell_10441 pieces := by
  link_source cell_10441 with piece_1147 using piece_1147_mem, piece_1065_mem

theorem linked_10442 : Linked cell_10442 pieces := by
  link_source cell_10442 with piece_1147 using piece_1147_mem, ⟨piece_1064_mem, piece_1065_mem⟩

theorem linked_10443 : Linked cell_10443 pieces := by
  link_source cell_10443 with piece_1147 using piece_1147_mem, piece_1064_mem

theorem linked_10444 : Linked cell_10444 pieces := by
  link_source cell_10444 with piece_1148 using piece_1148_mem, ⟨piece_1064_mem, piece_1065_mem⟩

theorem linked_10445 : Linked cell_10445 pieces := by
  link_source cell_10445 with piece_1148 using piece_1148_mem, piece_1064_mem

theorem linked_10446 : Linked cell_10446 pieces := by
  link_source cell_10446 with piece_1148 using piece_1148_mem, ⟨piece_1063_mem, piece_1064_mem⟩

theorem linked_10447 : Linked cell_10447 pieces := by
  link_source cell_10447 with piece_1148 using piece_1148_mem, piece_1063_mem

theorem linked_10448 : Linked cell_10448 pieces := by
  link_source cell_10448 with piece_1149 using piece_1149_mem, ⟨piece_1063_mem, piece_1064_mem⟩

theorem linked_10449 : Linked cell_10449 pieces := by
  link_source cell_10449 with piece_1149 using piece_1149_mem, piece_1063_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0208.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0208.cells,List.forall_mem_cons]
  exact ⟨linked_10400, linked_10401, linked_10402, linked_10403, linked_10404, linked_10405, linked_10406, linked_10407, linked_10408, linked_10409, linked_10410, linked_10411, linked_10412, linked_10413, linked_10414, linked_10415, linked_10416, linked_10417, linked_10418, linked_10419, linked_10420, linked_10421, linked_10422, linked_10423, linked_10424, linked_10425, linked_10426, linked_10427, linked_10428, linked_10429, linked_10430, linked_10431, linked_10432, linked_10433, linked_10434, linked_10435, linked_10436, linked_10437, linked_10438, linked_10439, linked_10440, linked_10441, linked_10442, linked_10443, linked_10444, linked_10445, linked_10446, linked_10447, linked_10448, linked_10449, by simp⟩

theorem covered : covers (47550000000000003 / 100000000000000000 : ℚ) (12043750000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0208.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0208
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0209
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(12043750000000001 / 25000000000000000 : ℚ), (12046875000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (62886809284559 / 100000000000000 : ℚ)
  w := (7400744651981 / 5000000000000 : ℚ)
  center := (12045312500000001 / 25000000000000000 : ℚ)
  supportValue := (2210017097920113 / 5000000000000000 : ℚ)
  supportSlope := (-21914518168761887 / 10000000000000000 : ℚ)
  oldCenter := (2210017097920113 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1150
  oldLo := (883 / 2000 : ℚ)
  oldHi := (221 / 500 : ℚ)
  oldPieces := [piece_1055, piece_1056]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10450 : Cell := { cellDefaults with
  r := (63177472081187 / 100000000000000 : ℚ)
  w := (927450099373 / 625000000000 : ℚ)
  newCoefficients := coefficients_1149
  oldHi := (177 / 400 : ℚ)
  oldPieces := [piece_1062, piece_1063]
}

def cell_10451 : Cell := { cellDefaults with
  domain := ⟨(12046875000000001 / 25000000000000000 : ℚ), (12050000000000001 / 25000000000000000 : ℚ)⟩
  r := (63177472081187 / 100000000000000 : ℚ)
  w := (927450099373 / 625000000000 : ℚ)
  center := (12048437500000001 / 25000000000000000 : ℚ)
  supportValue := (22086478959208053 / 50000000000000000 : ℚ)
  supportSlope := (-109477355768961 / 50000000000000 : ℚ)
  oldCenter := (22086478959208053 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1149
  oldPieces := [piece_1062]
}

def cell_10452 : Cell := { cellDefaults with
  domain := ⟨(12050000000000001 / 25000000000000000 : ℚ), (12053125000000001 / 25000000000000000 : ℚ)⟩
  r := (31570488004539 / 50000000000000 : ℚ)
  w := (14834454124301 / 10000000000000 : ℚ)
  center := (12051562500000001 / 25000000000000000 : ℚ)
  supportValue := (22101409473169517 / 50000000000000000 : ℚ)
  supportSlope := (-21902776997064777 / 10000000000000000 : ℚ)
  oldCenter := (22101409473169517 / 50000000000000000 : ℚ)
  oldHi := (177 / 400 : ℚ)
  oldPieces := [piece_1062, piece_1063]
}

def cell_10453 : Cell := { cellDefaults with
  domain := ⟨(12053125000000001 / 25000000000000000 : ℚ), (12056250000000001 / 25000000000000000 : ℚ)⟩
  r := (31570488004539 / 50000000000000 : ℚ)
  w := (14834454124301 / 10000000000000 : ℚ)
  center := (12054687500000001 / 25000000000000000 : ℚ)
  supportValue := (1104386239100579 / 2500000000000000 : ℚ)
  supportSlope := (-4376915695795347 / 2000000000000000 : ℚ)
  oldCenter := (1104386239100579 / 2500000000000000 : ℚ)
  oldPieces := [piece_1062]
}

def cell_10454 : Cell := { cellDefaults with
  domain := ⟨(12056250000000001 / 25000000000000000 : ℚ), (12059375000000001 / 25000000000000000 : ℚ)⟩
  r := (31570488004539 / 50000000000000 : ℚ)
  w := (14834454124301 / 10000000000000 : ℚ)
  center := (12057812500000001 / 25000000000000000 : ℚ)
  supportValue := (4414810776821471 / 10000000000000000 : ℚ)
  supportSlope := (-21866156744945187 / 10000000000000000 : ℚ)
  oldCenter := (4414810776821471 / 10000000000000000 : ℚ)
  oldLo := (441 / 1000 : ℚ)
  oldPieces := [piece_1060, piece_1061, piece_1062]
}

def cell_10455 : Cell := { cellDefaults with
  domain := ⟨(12059375000000001 / 25000000000000000 : ℚ), (12062500000000001 / 25000000000000000 : ℚ)⟩
  r := (31570488004539 / 50000000000000 : ℚ)
  w := (14834454124301 / 10000000000000 : ℚ)
  center := (12060937500000001 / 25000000000000000 : ℚ)
  supportValue := (4412078493239449 / 10000000000000000 : ℚ)
  supportSlope := (-1092321935718843 / 500000000000000 : ℚ)
  oldCenter := (4412078493239449 / 10000000000000000 : ℚ)
  oldLo := (441 / 1000 : ℚ)
  oldHi := (4413966480446927 / 10000000000000000 : ℚ)
  oldPieces := [piece_1060]
}

def cell_10456 : Cell := { cellDefaults with
  domain := ⟨(12062500000000001 / 25000000000000000 : ℚ), (12065625000000001 / 25000000000000000 : ℚ)⟩
  r := (1577613188089 / 2500000000000 : ℚ)
  w := (7414857970347 / 5000000000000 : ℚ)
  center := (12064062500000001 / 25000000000000000 : ℚ)
  supportValue := (4415058177628901 / 10000000000000000 : ℚ)
  supportSlope := (-2731805918144703 / 1250000000000000 : ℚ)
  oldCenter := (4415058177628901 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1151
  oldLo := (441 / 1000 : ℚ)
  oldPieces := [piece_1060, piece_1061, piece_1062]
}

def cell_10457 : Cell := { cellDefaults with
  domain := ⟨(12065625000000001 / 25000000000000000 : ℚ), (12068750000000001 / 25000000000000000 : ℚ)⟩
  r := (1577613188089 / 2500000000000 : ℚ)
  w := (7414857970347 / 5000000000000 : ℚ)
  center := (12067187500000001 / 25000000000000000 : ℚ)
  supportValue := (22061636376668567 / 50000000000000000 : ℚ)
  supportSlope := (-2183558083665993 / 1000000000000000 : ℚ)
  oldCenter := (22061636376668567 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1151
  oldLo := (441 / 1000 : ℚ)
  oldHi := (4413966480446927 / 10000000000000000 : ℚ)
  oldPieces := [piece_1060]
}

def cell_10458 : Cell := { cellDefaults with
  domain := ⟨(12068750000000001 / 25000000000000000 : ℚ), (12071875000000001 / 25000000000000000 : ℚ)⟩
  r := (1577613188089 / 2500000000000 : ℚ)
  w := (7414857970347 / 5000000000000 : ℚ)
  center := (12070312500000001 / 25000000000000000 : ℚ)
  supportValue := (1102399782014209 / 2500000000000000 : ℚ)
  supportSlope := (-272724221791143 / 125000000000000 : ℚ)
  oldCenter := (1102399782014209 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1151
  oldLo := (881 / 2000 : ℚ)
  oldHi := (4413966480446927 / 10000000000000000 : ℚ)
  oldPieces := [piece_1059, piece_1060]
}

def cell_10459 : Cell := { cellDefaults with
  domain := ⟨(12071875000000001 / 25000000000000000 : ℚ), (12075000000000001 / 25000000000000000 : ℚ)⟩
  r := (1577613188089 / 2500000000000 : ℚ)
  w := (7414857970347 / 5000000000000 : ℚ)
  center := (12073437500000001 / 25000000000000000 : ℚ)
  supportValue := (44068729559693987 / 100000000000000000 : ℚ)
  supportSlope := (-1089878693717683 / 500000000000000 : ℚ)
  oldCenter := (44068729559693987 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1151
  oldLo := (881 / 2000 : ℚ)
  oldHi := (441 / 1000 : ℚ)
  oldPieces := [piece_1059]
}

def cell_10460 : Cell := { cellDefaults with
  domain := ⟨(12075000000000001 / 25000000000000000 : ℚ), (12078125000000001 / 25000000000000000 : ℚ)⟩
  r := (15767031234993 / 25000000000000 : ℚ)
  w := (14824987455109 / 10000000000000 : ℚ)
  center := (12076562500000001 / 25000000000000000 : ℚ)
  supportValue := (22049231149969753 / 50000000000000000 : ℚ)
  supportSlope := (-2180626111662143 / 1000000000000000 : ℚ)
  oldCenter := (22049231149969753 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1152
  oldLo := (881 / 2000 : ℚ)
  oldHi := (4413966480446927 / 10000000000000000 : ℚ)
  oldPieces := [piece_1059, piece_1060]
}

def cell_10461 : Cell := { cellDefaults with
  domain := ⟨(12078125000000001 / 25000000000000000 : ℚ), (12081250000000001 / 25000000000000000 : ℚ)⟩
  r := (15767031234993 / 25000000000000 : ℚ)
  w := (14824987455109 / 10000000000000 : ℚ)
  center := (12079687500000001 / 25000000000000000 : ℚ)
  supportValue := (1762848564958307 / 4000000000000000 : ℚ)
  supportSlope := (-680835959147863 / 312500000000000 : ℚ)
  oldCenter := (1762848564958307 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1152
  oldLo := (881 / 2000 : ℚ)
  oldHi := (441 / 1000 : ℚ)
  oldPieces := [piece_1059]
}

def cell_10462 : Cell := { cellDefaults with
  domain := ⟨(12081250000000001 / 25000000000000000 : ℚ), (12084375000000001 / 25000000000000000 : ℚ)⟩
  r := (15767031234993 / 25000000000000 : ℚ)
  w := (14824987455109 / 10000000000000 : ℚ)
  center := (12082812500000001 / 25000000000000000 : ℚ)
  supportValue := (880879856107507 / 2000000000000000 : ℚ)
  supportSlope := (-544246359448497 / 250000000000000 : ℚ)
  oldCenter := (880879856107507 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1152
  oldLo := (11 / 25 : ℚ)
  oldHi := (441 / 1000 : ℚ)
  oldPieces := [piece_1058, piece_1059]
}

def cell_10463 : Cell := { cellDefaults with
  domain := ⟨(12084375000000001 / 25000000000000000 : ℚ), (12087500000000001 / 25000000000000000 : ℚ)⟩
  r := (15767031234993 / 25000000000000 : ℚ)
  w := (14824987455109 / 10000000000000 : ℚ)
  center := (12085937500000001 / 25000000000000000 : ℚ)
  supportValue := (4401679198732199 / 10000000000000000 : ℚ)
  supportSlope := (-21748879803951127 / 10000000000000000 : ℚ)
  oldCenter := (4401679198732199 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1152
  oldLo := (11 / 25 : ℚ)
  oldHi := (881 / 2000 : ℚ)
  oldPieces := [piece_1058]
}

def cell_10464 : Cell := { cellDefaults with
  domain := ⟨(12087500000000001 / 25000000000000000 : ℚ), (12090625000000001 / 25000000000000000 : ℚ)⟩
  r := (3077723099 / 4882812500 : ℚ)
  w := (926266773953 / 625000000000 : ℚ)
  center := (12089062500000001 / 25000000000000000 : ℚ)
  supportValue := (2202323016235217 / 5000000000000000 : ℚ)
  supportSlope := (-174065675797479 / 80000000000000 : ℚ)
  oldCenter := (2202323016235217 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1153
  oldLo := (11 / 25 : ℚ)
  oldHi := (441 / 1000 : ℚ)
  oldPieces := [piece_1058, piece_1059]
}

def cell_10465 : Cell := { cellDefaults with
  domain := ⟨(12090625000000001 / 25000000000000000 : ℚ), (12093750000000001 / 25000000000000000 : ℚ)⟩
  r := (3077723099 / 4882812500 : ℚ)
  w := (926266773953 / 625000000000 : ℚ)
  center := (12092187500000001 / 25000000000000000 : ℚ)
  supportValue := (44019273008105303 / 100000000000000000 : ℚ)
  supportSlope := (-4347618316398183 / 2000000000000000 : ℚ)
  oldCenter := (44019273008105303 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1153
  oldLo := (11 / 25 : ℚ)
  oldHi := (881 / 2000 : ℚ)
  oldPieces := [piece_1058]
}

def cell_10466 : Cell := { cellDefaults with
  domain := ⟨(12093750000000001 / 25000000000000000 : ℚ), (12096875000000001 / 25000000000000000 : ℚ)⟩
  r := (3077723099 / 4882812500 : ℚ)
  w := (926266773953 / 625000000000 : ℚ)
  center := (12095312500000001 / 25000000000000000 : ℚ)
  supportValue := (35193689336493 / 80000000000000 : ℚ)
  supportSlope := (-868876377088057 / 400000000000000 : ℚ)
  oldCenter := (35193689336493 / 80000000000000 : ℚ)
  newCoefficients := coefficients_1153
  oldLo := (879 / 2000 : ℚ)
  oldHi := (881 / 2000 : ℚ)
  oldPieces := [piece_1057, piece_1058]
}

def cell_10467 : Cell := { cellDefaults with
  domain := ⟨(12096875000000001 / 25000000000000000 : ℚ), (12100000000000001 / 25000000000000000 : ℚ)⟩
  r := (3077723099 / 4882812500 : ℚ)
  w := (926266773953 / 625000000000 : ℚ)
  center := (12098437500000001 / 25000000000000000 : ℚ)
  supportValue := (2198248577066717 / 5000000000000000 : ℚ)
  supportSlope := (-434007145378601 / 200000000000000 : ℚ)
  oldCenter := (2198248577066717 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1153
  oldLo := (879 / 2000 : ℚ)
  oldHi := (11 / 25 : ℚ)
  oldPieces := [piece_1057]
}

def cell_10468 : Cell := { cellDefaults with
  domain := ⟨(12100000000000001 / 25000000000000000 : ℚ), (12103125000000001 / 25000000000000000 : ℚ)⟩
  r := (787443252021 / 1250000000000 : ℚ)
  w := (7407779826043 / 5000000000000 : ℚ)
  center := (12101562500000001 / 25000000000000000 : ℚ)
  supportValue := (4399457245894799 / 10000000000000000 : ℚ)
  supportSlope := (-10855147620918437 / 5000000000000000 : ℚ)
  oldCenter := (4399457245894799 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1154
  oldLo := (879 / 2000 : ℚ)
  oldHi := (881 / 2000 : ℚ)
  oldPieces := [piece_1057, piece_1058]
}

def cell_10469 : Cell := { cellDefaults with
  domain := ⟨(12103125000000001 / 25000000000000000 : ℚ), (12106250000000001 / 25000000000000000 : ℚ)⟩
  r := (787443252021 / 1250000000000 : ℚ)
  w := (7407779826043 / 5000000000000 : ℚ)
  center := (12104687500000001 / 25000000000000000 : ℚ)
  supportValue := (879348915815967 / 2000000000000000 : ℚ)
  supportSlope := (-21689601190253427 / 10000000000000000 : ℚ)
  oldCenter := (879348915815967 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1154
  oldLo := (879 / 2000 : ℚ)
  oldHi := (11 / 25 : ℚ)
  oldPieces := [piece_1057]
}

def cell_10470 : Cell := { cellDefaults with
  domain := ⟨(12106250000000001 / 25000000000000000 : ℚ), (12109375000000001 / 25000000000000000 : ℚ)⟩
  r := (787443252021 / 1250000000000 : ℚ)
  w := (7407779826043 / 5000000000000 : ℚ)
  center := (12107812500000001 / 25000000000000000 : ℚ)
  supportValue := (878806885266719 / 2000000000000000 : ℚ)
  supportSlope := (-5418525457729917 / 2500000000000000 : ℚ)
  oldCenter := (878806885266719 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1154
  oldLo := (439 / 1000 : ℚ)
  oldHi := (11 / 25 : ℚ)
  oldPieces := [piece_1056, piece_1057]
}

def cell_10471 : Cell := { cellDefaults with
  domain := ⟨(12109375000000001 / 25000000000000000 : ℚ), (12112500000000001 / 25000000000000000 : ℚ)⟩
  r := (787443252021 / 1250000000000 : ℚ)
  w := (7407779826043 / 5000000000000 : ℚ)
  center := (12110937500000001 / 25000000000000000 : ℚ)
  supportValue := (43913264610644503 / 100000000000000000 : ℚ)
  supportSlope := (-216521100018241 / 100000000000000 : ℚ)
  oldCenter := (43913264610644503 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1154
  oldLo := (877 / 2000 : ℚ)
  oldHi := (879 / 2000 : ℚ)
  oldPieces := [piece_1055, piece_1056]
}

def cell_10472 : Cell := { cellDefaults with
  domain := ⟨(12112500000000001 / 25000000000000000 : ℚ), (12115625000000001 / 25000000000000000 : ℚ)⟩
  r := (15739799209913 / 25000000000000 : ℚ)
  w := (14810859851873 / 10000000000000 : ℚ)
  center := (12114062500000001 / 25000000000000000 : ℚ)
  supportValue := (2197140197698519 / 5000000000000000 : ℚ)
  supportSlope := (-21662520025689247 / 10000000000000000 : ℚ)
  oldCenter := (2197140197698519 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1155
  oldLo := (439 / 1000 : ℚ)
  oldHi := (11 / 25 : ℚ)
  oldPieces := [piece_1056, piece_1057]
}

def cell_10473 : Cell := { cellDefaults with
  domain := ⟨(12115625000000001 / 25000000000000000 : ℚ), (12118750000000001 / 25000000000000000 : ℚ)⟩
  r := (15739799209913 / 25000000000000 : ℚ)
  w := (14810859851873 / 10000000000000 : ℚ)
  center := (12117187500000001 / 25000000000000000 : ℚ)
  supportValue := (4391573771755223 / 10000000000000000 : ℚ)
  supportSlope := (-21641284221214363 / 10000000000000000 : ℚ)
  oldCenter := (4391573771755223 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1155
  oldLo := (439 / 1000 : ℚ)
  oldHi := (879 / 2000 : ℚ)
  oldPieces := [piece_1056]
}

def cell_10474 : Cell := { cellDefaults with
  domain := ⟨(12118750000000001 / 25000000000000000 : ℚ), (12121875000000001 / 25000000000000000 : ℚ)⟩
  r := (15739799209913 / 25000000000000 : ℚ)
  w := (14810859851873 / 10000000000000 : ℚ)
  center := (12120312500000001 / 25000000000000000 : ℚ)
  supportValue := (4388869582646971 / 10000000000000000 : ℚ)
  supportSlope := (-5406608190006157 / 2500000000000000 : ℚ)
  oldCenter := (4388869582646971 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1155
  oldLo := (877 / 2000 : ℚ)
  oldHi := (879 / 2000 : ℚ)
  oldPieces := [piece_1055, piece_1056]
}

def cell_10475 : Cell := { cellDefaults with
  domain := ⟨(12121875000000001 / 25000000000000000 : ℚ), (12125000000000001 / 25000000000000000 : ℚ)⟩
  r := (15739799209913 / 25000000000000 : ℚ)
  w := (14810859851873 / 10000000000000 : ℚ)
  center := (12123437500000001 / 25000000000000000 : ℚ)
  supportValue := (2193083821747913 / 5000000000000000 : ℚ)
  supportSlope := (-2160446557084583 / 1000000000000000 : ℚ)
  oldCenter := (2193083821747913 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1155
  oldLo := (219 / 500 : ℚ)
  oldHi := (439 / 1000 : ℚ)
  oldPieces := [piece_1054, piece_1055]
}

def cell_10476 : Cell := { cellDefaults with
  domain := ⟨(12125000000000001 / 25000000000000000 : ℚ), (12128125000000001 / 25000000000000000 : ℚ)⟩
  r := (3146149012859 / 5000000000000 : ℚ)
  w := (14806169365853 / 10000000000000 : ℚ)
  center := (12126562500000001 / 25000000000000000 : ℚ)
  supportValue := (4389115174369939 / 10000000000000000 : ℚ)
  supportSlope := (-432297648432467 / 200000000000000 : ℚ)
  oldCenter := (4389115174369939 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1156
  oldLo := (877 / 2000 : ℚ)
  oldHi := (879 / 2000 : ℚ)
  oldPieces := [piece_1055, piece_1056]
}

def cell_10477 : Cell := { cellDefaults with
  domain := ⟨(12128125000000001 / 25000000000000000 : ℚ), (12131250000000001 / 25000000000000000 : ℚ)⟩
  r := (3146149012859 / 5000000000000 : ℚ)
  w := (14806169365853 / 10000000000000 : ℚ)
  center := (12129687500000001 / 25000000000000000 : ℚ)
  supportValue := (2193207286286339 / 5000000000000000 : ℚ)
  supportSlope := (-21593137311519683 / 10000000000000000 : ℚ)
  oldCenter := (2193207286286339 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1156
  oldLo := (877 / 2000 : ℚ)
  oldHi := (439 / 1000 : ℚ)
  oldPieces := [piece_1055]
}

def cell_10478 : Cell := { cellDefaults with
  domain := ⟨(12131250000000001 / 25000000000000000 : ℚ), (12134375000000001 / 25000000000000000 : ℚ)⟩
  r := (3146149012859 / 5000000000000 : ℚ)
  w := (14806169365853 / 10000000000000 : ℚ)
  center := (12132812500000001 / 25000000000000000 : ℚ)
  supportValue := (175348653201071 / 400000000000000 : ℚ)
  supportSlope := (-21578900208929497 / 10000000000000000 : ℚ)
  oldCenter := (175348653201071 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1156
  oldLo := (219 / 500 : ℚ)
  oldHi := (439 / 1000 : ℚ)
  oldPieces := [piece_1054, piece_1055]
}

def cell_10479 : Cell := { cellDefaults with
  domain := ⟨(12134375000000001 / 25000000000000000 : ℚ), (12137500000000001 / 25000000000000000 : ℚ)⟩
  r := (3146149012859 / 5000000000000 : ℚ)
  w := (14806169365853 / 10000000000000 : ℚ)
  center := (12135937500000001 / 25000000000000000 : ℚ)
  supportValue := (4381020395919821 / 10000000000000000 : ℚ)
  supportSlope := (-1347309605956859 / 625000000000000 : ℚ)
  oldCenter := (4381020395919821 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1156
  oldLo := (7 / 16 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1053, piece_1054]
}

def cell_10480 : Cell := { cellDefaults with
  domain := ⟨(12137500000000001 / 25000000000000000 : ℚ), (12139280726256983 / 25000000000000000 : ℚ)⟩
  center := (3034597590782123 / 6250000000000000 : ℚ)
  supportValue := (43845382080223017 / 100000000000000000 : ℚ)
  supportSlope := (-21571599922058757 / 10000000000000000 : ℚ)
  oldCenter := (43845382080223017 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1157
  oldLo := (219 / 500 : ℚ)
  oldHi := (439 / 1000 : ℚ)
  oldPieces := [piece_1054, piece_1055]
}

def cell_10481 : Cell := { cellDefaults with
  domain := ⟨(12139280726256983 / 25000000000000000 : ℚ), (2428212290502793 / 5000000000000000 : ℚ)⟩
  center := (6070085544692737 / 12500000000000000 : ℚ)
  supportValue := (2191501012368181 / 5000000000000000 : ℚ)
  supportSlope := (-10780082463065497 / 5000000000000000 : ℚ)
  oldCenter := (2191501012368181 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1157
  oldLo := (219 / 500 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1054]
}

def cell_10482 : Cell := { cellDefaults with
  domain := ⟨(2428212290502793 / 5000000000000000 : ℚ), (12143750000000001 / 25000000000000000 : ℚ)⟩
  center := (12142405726256983 / 25000000000000000 : ℚ)
  supportValue := (2190539334531389 / 5000000000000000 : ℚ)
  supportSlope := (-430877395130221 / 200000000000000 : ℚ)
  oldCenter := (2190539334531389 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1158
  oldLo := (7 / 16 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1053, piece_1054]
}

def cell_10483 : Cell := { cellDefaults with
  domain := ⟨(12143750000000001 / 25000000000000000 : ℚ), (12146875000000001 / 25000000000000000 : ℚ)⟩
  center := (12145312500000001 / 25000000000000000 : ℚ)
  supportValue := (437857441847217 / 1000000000000000 : ℚ)
  supportSlope := (-430624193092477 / 200000000000000 : ℚ)
  oldCenter := (437857441847217 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1158
  oldLo := (7 / 16 : ℚ)
  oldHi := (219 / 500 : ℚ)
  oldPieces := [piece_1053]
}

def cell_10484 : Cell := { cellDefaults with
  domain := ⟨(12146875000000001 / 25000000000000000 : ℚ), (12150000000000001 / 25000000000000000 : ℚ)⟩
  center := (12148437500000001 / 25000000000000000 : ℚ)
  supportValue := (2734927792864289 / 6250000000000000 : ℚ)
  supportSlope := (-4301915098189113 / 2000000000000000 : ℚ)
  oldCenter := (2734927792864289 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1158
  oldLo := (437 / 1000 : ℚ)
  oldHi := (219 / 500 : ℚ)
  oldPieces := [piece_1052, piece_1053]
}

def cell_10485 : Cell := { cellDefaults with
  domain := ⟨(12150000000000001 / 25000000000000000 : ℚ), (12153125000000001 / 25000000000000000 : ℚ)⟩
  r := (62850683641383 / 100000000000000 : ℚ)
  w := (14796818049573 / 10000000000000 : ℚ)
  center := (12151562500000001 / 25000000000000000 : ℚ)
  supportValue := (4378819323203779 / 10000000000000000 : ℚ)
  supportSlope := (-538000294916019 / 250000000000000 : ℚ)
  oldCenter := (4378819323203779 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1159
  oldLo := (7 / 16 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1053, piece_1054]
}

def cell_10486 : Cell := { cellDefaults with
  domain := ⟨(12153125000000001 / 25000000000000000 : ℚ), (12156250000000001 / 25000000000000000 : ℚ)⟩
  r := (62850683641383 / 100000000000000 : ℚ)
  w := (14796818049573 / 10000000000000 : ℚ)
  center := (12154687500000001 / 25000000000000000 : ℚ)
  supportValue := (4376130702097737 / 10000000000000000 : ℚ)
  supportSlope := (-21498099253989267 / 10000000000000000 : ℚ)
  oldCenter := (4376130702097737 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1159
  oldLo := (437 / 1000 : ℚ)
  oldHi := (219 / 500 : ℚ)
  oldPieces := [piece_1052, piece_1053]
}

def cell_10487 : Cell := { cellDefaults with
  domain := ⟨(12156250000000001 / 25000000000000000 : ℚ), (12159375000000001 / 25000000000000000 : ℚ)⟩
  r := (62850683641383 / 100000000000000 : ℚ)
  w := (14796818049573 / 10000000000000 : ℚ)
  center := (12157812500000001 / 25000000000000000 : ℚ)
  supportValue := (21867221514956117 / 50000000000000000 : ℚ)
  supportSlope := (-21483478760124797 / 10000000000000000 : ℚ)
  oldCenter := (21867221514956117 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1159
  oldLo := (437 / 1000 : ℚ)
  oldHi := (7 / 16 : ℚ)
  oldPieces := [piece_1052]
}

def cell_10488 : Cell := { cellDefaults with
  domain := ⟨(12159375000000001 / 25000000000000000 : ℚ), (12162500000000001 / 25000000000000000 : ℚ)⟩
  r := (62850683641383 / 100000000000000 : ℚ)
  w := (14796818049573 / 10000000000000 : ℚ)
  center := (12160937500000001 / 25000000000000000 : ℚ)
  supportValue := (10926900790562609 / 25000000000000000 : ℚ)
  supportSlope := (-4292465873952267 / 2000000000000000 : ℚ)
  oldCenter := (10926900790562609 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1159
  oldLo := (873 / 2000 : ℚ)
  oldHi := (7 / 16 : ℚ)
  oldPieces := [piece_1051, piece_1052]
}

def cell_10489 : Cell := { cellDefaults with
  domain := ⟨(12162500000000001 / 25000000000000000 : ℚ), (12165625000000001 / 25000000000000000 : ℚ)⟩
  r := (15703651299533 / 25000000000000 : ℚ)
  w := (2958431430557 / 2000000000000 : ℚ)
  center := (12164062500000001 / 25000000000000000 : ℚ)
  supportValue := (5467110520201407 / 12500000000000000 : ℚ)
  supportSlope := (-5368193771055907 / 2500000000000000 : ℚ)
  oldCenter := (5467110520201407 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1160
  oldLo := (437 / 1000 : ℚ)
  oldHi := (219 / 500 : ℚ)
  oldPieces := [piece_1052, piece_1053]
}

def cell_10490 : Cell := { cellDefaults with
  domain := ⟨(12165625000000001 / 25000000000000000 : ℚ), (12168750000000001 / 25000000000000000 : ℚ)⟩
  r := (15703651299533 / 25000000000000 : ℚ)
  w := (2958431430557 / 2000000000000 : ℚ)
  center := (12167187500000001 / 25000000000000000 : ℚ)
  supportValue := (4371005754275521 / 10000000000000000 : ℚ)
  supportSlope := (-8379250983407 / 3906250000000 : ℚ)
  oldCenter := (4371005754275521 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1160
  oldLo := (873 / 2000 : ℚ)
  oldHi := (7 / 16 : ℚ)
  oldPieces := [piece_1051, piece_1052]
}

def cell_10491 : Cell := { cellDefaults with
  domain := ⟨(12168750000000001 / 25000000000000000 : ℚ), (12171875000000001 / 25000000000000000 : ℚ)⟩
  r := (15703651299533 / 25000000000000 : ℚ)
  w := (2958431430557 / 2000000000000 : ℚ)
  center := (12170312500000001 / 25000000000000000 : ℚ)
  supportValue := (54604065652561 / 125000000000000 : ℚ)
  supportSlope := (-1071795600596559 / 500000000000000 : ℚ)
  oldCenter := (54604065652561 / 125000000000000 : ℚ)
  newCoefficients := coefficients_1160
  oldLo := (873 / 2000 : ℚ)
  oldHi := (437 / 1000 : ℚ)
  oldPieces := [piece_1051]
}

def cell_10492 : Cell := { cellDefaults with
  domain := ⟨(12171875000000001 / 25000000000000000 : ℚ), (12175000000000001 / 25000000000000000 : ℚ)⟩
  r := (15703651299533 / 25000000000000 : ℚ)
  w := (2958431430557 / 2000000000000 : ℚ)
  center := (12173437500000001 / 25000000000000000 : ℚ)
  supportValue := (4365647208035059 / 10000000000000000 : ℚ)
  supportSlope := (-2141521336292307 / 1000000000000000 : ℚ)
  oldCenter := (4365647208035059 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1160
  oldLo := (8720000000000001 / 20000000000000000 : ℚ)
  oldHi := (437 / 1000 : ℚ)
  oldPieces := [piece_1050, piece_1051]
}

def cell_10493 : Cell := { cellDefaults with
  domain := ⟨(12175000000000001 / 25000000000000000 : ℚ), (12178125000000001 / 25000000000000000 : ℚ)⟩
  r := (31389285554479 / 50000000000000 : ℚ)
  w := (1848438054287 / 1250000000000 : ℚ)
  center := (12176562500000001 / 25000000000000000 : ℚ)
  supportValue := (4368569532938937 / 10000000000000000 : ℚ)
  supportSlope := (-4285067556464739 / 2000000000000000 : ℚ)
  oldCenter := (4368569532938937 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1161
  oldLo := (873 / 2000 : ℚ)
  oldHi := (437 / 1000 : ℚ)
  oldPieces := [piece_1051]
}

def cell_10494 : Cell := { cellDefaults with
  domain := ⟨(12178125000000001 / 25000000000000000 : ℚ), (12181250000000001 / 25000000000000000 : ℚ)⟩
  r := (31389285554479 / 50000000000000 : ℚ)
  w := (1848438054287 / 1250000000000 : ℚ)
  center := (12179687500000001 / 25000000000000000 : ℚ)
  supportValue := (21829464044928393 / 50000000000000000 : ℚ)
  supportSlope := (-4280759727867789 / 2000000000000000 : ℚ)
  oldCenter := (21829464044928393 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1161
  oldLo := (8720000000000001 / 20000000000000000 : ℚ)
  oldHi := (437 / 1000 : ℚ)
  oldPieces := [piece_1050, piece_1051]
}

def cell_10495 : Cell := { cellDefaults with
  domain := ⟨(12181250000000001 / 25000000000000000 : ℚ), (12184375000000001 / 25000000000000000 : ℚ)⟩
  r := (31389285554479 / 50000000000000 : ℚ)
  w := (1848438054287 / 1250000000000 : ℚ)
  center := (12182812500000001 / 25000000000000000 : ℚ)
  supportValue := (2181609093671373 / 5000000000000000 : ℚ)
  supportSlope := (-2138851567245581 / 1000000000000000 : ℚ)
  oldCenter := (2181609093671373 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1161
  oldLo := (8720000000000001 / 20000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1050]
}

def cell_10496 : Cell := { cellDefaults with
  domain := ⟨(12184375000000001 / 25000000000000000 : ℚ), (12187500000000001 / 25000000000000000 : ℚ)⟩
  r := (31389285554479 / 50000000000000 : ℚ)
  w := (1848438054287 / 1250000000000 : ℚ)
  center := (12185937500000001 / 25000000000000000 : ℚ)
  supportValue := (545068258056613 / 1250000000000000 : ℚ)
  supportSlope := (-2671028737269987 / 1250000000000000 : ℚ)
  oldCenter := (545068258056613 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1161
  oldLo := (871731843575419 / 2000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1049, piece_1050]
}

def cell_10497 : Cell := { cellDefaults with
  domain := ⟨(12187500000000001 / 25000000000000000 : ℚ), (12190625000000001 / 25000000000000000 : ℚ)⟩
  r := (62742585127727 / 100000000000000 : ℚ)
  w := (14782861912863 / 10000000000000 : ℚ)
  center := (12189062500000001 / 25000000000000000 : ℚ)
  supportValue := (4363461583085761 / 10000000000000000 : ℚ)
  supportSlope := (-85511887277967 / 40000000000000 : ℚ)
  oldCenter := (4363461583085761 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1162
  oldLo := (8720000000000001 / 20000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1050]
}

def cell_10498 : Cell := { cellDefaults with
  domain := ⟨(12190625000000001 / 25000000000000000 : ℚ), (12193750000000001 / 25000000000000000 : ℚ)⟩
  r := (62742585127727 / 100000000000000 : ℚ)
  w := (14782861912863 / 10000000000000 : ℚ)
  center := (12192187500000001 / 25000000000000000 : ℚ)
  supportValue := (1090197694155257 / 2500000000000000 : ℚ)
  supportSlope := (-2135684403836713 / 1000000000000000 : ℚ)
  oldCenter := (1090197694155257 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1162
  oldLo := (871731843575419 / 2000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1049, piece_1050]
}

def cell_10499 : Cell := { cellDefaults with
  domain := ⟨(12193750000000001 / 25000000000000000 : ℚ), (12196875000000001 / 25000000000000000 : ℚ)⟩
  r := (62742585127727 / 100000000000000 : ℚ)
  w := (14782861912863 / 10000000000000 : ℚ)
  center := (12195312500000001 / 25000000000000000 : ℚ)
  supportValue := (435812201907957 / 1000000000000000 : ℚ)
  supportSlope := (-426825752170501 / 200000000000000 : ℚ)
  oldCenter := (435812201907957 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1162
  oldLo := (8710000000000001 / 20000000000000000 : ℚ)
  oldHi := (8720000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1048, piece_1049]
}

theorem check_10450 : cell_10450.check = true := by
  decide +kernel

theorem check_10451 : cell_10451.check = true := by
  decide +kernel

theorem check_10452 : cell_10452.check = true := by
  decide +kernel

theorem check_10453 : cell_10453.check = true := by
  decide +kernel

theorem check_10454 : cell_10454.check = true := by
  decide +kernel

theorem check_10455 : cell_10455.check = true := by
  decide +kernel

theorem check_10456 : cell_10456.check = true := by
  decide +kernel

theorem check_10457 : cell_10457.check = true := by
  decide +kernel

theorem check_10458 : cell_10458.check = true := by
  decide +kernel

theorem check_10459 : cell_10459.check = true := by
  decide +kernel

theorem check_10460 : cell_10460.check = true := by
  decide +kernel

theorem check_10461 : cell_10461.check = true := by
  decide +kernel

theorem check_10462 : cell_10462.check = true := by
  decide +kernel

theorem check_10463 : cell_10463.check = true := by
  decide +kernel

theorem check_10464 : cell_10464.check = true := by
  decide +kernel

theorem check_10465 : cell_10465.check = true := by
  decide +kernel

theorem check_10466 : cell_10466.check = true := by
  decide +kernel

theorem check_10467 : cell_10467.check = true := by
  decide +kernel

theorem check_10468 : cell_10468.check = true := by
  decide +kernel

theorem check_10469 : cell_10469.check = true := by
  decide +kernel

theorem check_10470 : cell_10470.check = true := by
  decide +kernel

theorem check_10471 : cell_10471.check = true := by
  decide +kernel

theorem check_10472 : cell_10472.check = true := by
  decide +kernel

theorem check_10473 : cell_10473.check = true := by
  decide +kernel

theorem check_10474 : cell_10474.check = true := by
  decide +kernel

theorem check_10475 : cell_10475.check = true := by
  decide +kernel

theorem check_10476 : cell_10476.check = true := by
  decide +kernel

theorem check_10477 : cell_10477.check = true := by
  decide +kernel

theorem check_10478 : cell_10478.check = true := by
  decide +kernel

theorem check_10479 : cell_10479.check = true := by
  decide +kernel

theorem check_10480 : cell_10480.check = true := by
  decide +kernel

theorem check_10481 : cell_10481.check = true := by
  decide +kernel

theorem check_10482 : cell_10482.check = true := by
  decide +kernel

theorem check_10483 : cell_10483.check = true := by
  decide +kernel

theorem check_10484 : cell_10484.check = true := by
  decide +kernel

theorem check_10485 : cell_10485.check = true := by
  decide +kernel

theorem check_10486 : cell_10486.check = true := by
  decide +kernel

theorem check_10487 : cell_10487.check = true := by
  decide +kernel

theorem check_10488 : cell_10488.check = true := by
  decide +kernel

theorem check_10489 : cell_10489.check = true := by
  decide +kernel

theorem check_10490 : cell_10490.check = true := by
  decide +kernel

theorem check_10491 : cell_10491.check = true := by
  decide +kernel

theorem check_10492 : cell_10492.check = true := by
  decide +kernel

theorem check_10493 : cell_10493.check = true := by
  decide +kernel

theorem check_10494 : cell_10494.check = true := by
  decide +kernel

theorem check_10495 : cell_10495.check = true := by
  decide +kernel

theorem check_10496 : cell_10496.check = true := by
  decide +kernel

theorem check_10497 : cell_10497.check = true := by
  decide +kernel

theorem check_10498 : cell_10498.check = true := by
  decide +kernel

theorem check_10499 : cell_10499.check = true := by
  decide +kernel

def cells : List Cell := [cell_10450, cell_10451, cell_10452, cell_10453, cell_10454, cell_10455, cell_10456, cell_10457, cell_10458, cell_10459, cell_10460, cell_10461, cell_10462, cell_10463, cell_10464, cell_10465, cell_10466, cell_10467, cell_10468, cell_10469, cell_10470, cell_10471, cell_10472, cell_10473, cell_10474, cell_10475, cell_10476, cell_10477, cell_10478, cell_10479, cell_10480, cell_10481, cell_10482, cell_10483, cell_10484, cell_10485, cell_10486, cell_10487, cell_10488, cell_10489, cell_10490, cell_10491, cell_10492, cell_10493, cell_10494, cell_10495, cell_10496, cell_10497, cell_10498, cell_10499]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10450, check_10451, check_10452, check_10453, check_10454, check_10455, check_10456, check_10457, check_10458, check_10459, check_10460, check_10461, check_10462, check_10463, check_10464, check_10465, check_10466, check_10467, check_10468, check_10469, check_10470, check_10471, check_10472, check_10473, check_10474, check_10475, check_10476, check_10477, check_10478, check_10479, check_10480, check_10481, check_10482, check_10483, check_10484, check_10485, check_10486, check_10487, check_10488, check_10489, check_10490, check_10491, check_10492, check_10493, check_10494, check_10495, check_10496, check_10497, check_10498, check_10499, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0209

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0209
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0209
open AnalyticBounds.ExpressionCertificate

theorem linked_10450 : Linked cell_10450 pieces := by
  link_source cell_10450 with piece_1149 using piece_1149_mem, ⟨piece_1062_mem, piece_1063_mem⟩

theorem linked_10451 : Linked cell_10451 pieces := by
  link_source cell_10451 with piece_1149 using piece_1149_mem, piece_1062_mem

theorem linked_10452 : Linked cell_10452 pieces := by
  link_source cell_10452 with piece_1150 using piece_1150_mem, ⟨piece_1062_mem, piece_1063_mem⟩

theorem linked_10453 : Linked cell_10453 pieces := by
  link_source cell_10453 with piece_1150 using piece_1150_mem, piece_1062_mem

theorem linked_10454 : Linked cell_10454 pieces := by
  link_source cell_10454 with piece_1150 using piece_1150_mem, ⟨piece_1060_mem, ⟨piece_1061_mem, piece_1062_mem⟩⟩

theorem linked_10455 : Linked cell_10455 pieces := by
  link_source cell_10455 with piece_1150 using piece_1150_mem, piece_1060_mem

theorem linked_10456 : Linked cell_10456 pieces := by
  link_source cell_10456 with piece_1151 using piece_1151_mem, ⟨piece_1060_mem, ⟨piece_1061_mem, piece_1062_mem⟩⟩

theorem linked_10457 : Linked cell_10457 pieces := by
  link_source cell_10457 with piece_1151 using piece_1151_mem, piece_1060_mem

theorem linked_10458 : Linked cell_10458 pieces := by
  link_source cell_10458 with piece_1151 using piece_1151_mem, ⟨piece_1059_mem, piece_1060_mem⟩

theorem linked_10459 : Linked cell_10459 pieces := by
  link_source cell_10459 with piece_1151 using piece_1151_mem, piece_1059_mem

theorem linked_10460 : Linked cell_10460 pieces := by
  link_source cell_10460 with piece_1152 using piece_1152_mem, ⟨piece_1059_mem, piece_1060_mem⟩

theorem linked_10461 : Linked cell_10461 pieces := by
  link_source cell_10461 with piece_1152 using piece_1152_mem, piece_1059_mem

theorem linked_10462 : Linked cell_10462 pieces := by
  link_source cell_10462 with piece_1152 using piece_1152_mem, ⟨piece_1058_mem, piece_1059_mem⟩

theorem linked_10463 : Linked cell_10463 pieces := by
  link_source cell_10463 with piece_1152 using piece_1152_mem, piece_1058_mem

theorem linked_10464 : Linked cell_10464 pieces := by
  link_source cell_10464 with piece_1153 using piece_1153_mem, ⟨piece_1058_mem, piece_1059_mem⟩

theorem linked_10465 : Linked cell_10465 pieces := by
  link_source cell_10465 with piece_1153 using piece_1153_mem, piece_1058_mem

theorem linked_10466 : Linked cell_10466 pieces := by
  link_source cell_10466 with piece_1153 using piece_1153_mem, ⟨piece_1057_mem, piece_1058_mem⟩

theorem linked_10467 : Linked cell_10467 pieces := by
  link_source cell_10467 with piece_1153 using piece_1153_mem, piece_1057_mem

theorem linked_10468 : Linked cell_10468 pieces := by
  link_source cell_10468 with piece_1154 using piece_1154_mem, ⟨piece_1057_mem, piece_1058_mem⟩

theorem linked_10469 : Linked cell_10469 pieces := by
  link_source cell_10469 with piece_1154 using piece_1154_mem, piece_1057_mem

theorem linked_10470 : Linked cell_10470 pieces := by
  link_source cell_10470 with piece_1154 using piece_1154_mem, ⟨piece_1056_mem, piece_1057_mem⟩

theorem linked_10471 : Linked cell_10471 pieces := by
  link_source cell_10471 with piece_1154 using piece_1154_mem, ⟨piece_1055_mem, piece_1056_mem⟩

theorem linked_10472 : Linked cell_10472 pieces := by
  link_source cell_10472 with piece_1155 using piece_1155_mem, ⟨piece_1056_mem, piece_1057_mem⟩

theorem linked_10473 : Linked cell_10473 pieces := by
  link_source cell_10473 with piece_1155 using piece_1155_mem, piece_1056_mem

theorem linked_10474 : Linked cell_10474 pieces := by
  link_source cell_10474 with piece_1155 using piece_1155_mem, ⟨piece_1055_mem, piece_1056_mem⟩

theorem linked_10475 : Linked cell_10475 pieces := by
  link_source cell_10475 with piece_1155 using piece_1155_mem, ⟨piece_1054_mem, piece_1055_mem⟩

theorem linked_10476 : Linked cell_10476 pieces := by
  link_source cell_10476 with piece_1156 using piece_1156_mem, ⟨piece_1055_mem, piece_1056_mem⟩

theorem linked_10477 : Linked cell_10477 pieces := by
  link_source cell_10477 with piece_1156 using piece_1156_mem, piece_1055_mem

theorem linked_10478 : Linked cell_10478 pieces := by
  link_source cell_10478 with piece_1156 using piece_1156_mem, ⟨piece_1054_mem, piece_1055_mem⟩

theorem linked_10479 : Linked cell_10479 pieces := by
  link_source cell_10479 with piece_1156 using piece_1156_mem, ⟨piece_1053_mem, piece_1054_mem⟩

theorem linked_10480 : Linked cell_10480 pieces := by
  link_source cell_10480 with piece_1157 using piece_1157_mem, ⟨piece_1054_mem, piece_1055_mem⟩

theorem linked_10481 : Linked cell_10481 pieces := by
  link_source cell_10481 with piece_1157 using piece_1157_mem, piece_1054_mem

theorem linked_10482 : Linked cell_10482 pieces := by
  link_source cell_10482 with piece_1158 using piece_1158_mem, ⟨piece_1053_mem, piece_1054_mem⟩

theorem linked_10483 : Linked cell_10483 pieces := by
  link_source cell_10483 with piece_1158 using piece_1158_mem, piece_1053_mem

theorem linked_10484 : Linked cell_10484 pieces := by
  link_source cell_10484 with piece_1158 using piece_1158_mem, ⟨piece_1052_mem, piece_1053_mem⟩

theorem linked_10485 : Linked cell_10485 pieces := by
  link_source cell_10485 with piece_1159 using piece_1159_mem, ⟨piece_1053_mem, piece_1054_mem⟩

theorem linked_10486 : Linked cell_10486 pieces := by
  link_source cell_10486 with piece_1159 using piece_1159_mem, ⟨piece_1052_mem, piece_1053_mem⟩

theorem linked_10487 : Linked cell_10487 pieces := by
  link_source cell_10487 with piece_1159 using piece_1159_mem, piece_1052_mem

theorem linked_10488 : Linked cell_10488 pieces := by
  link_source cell_10488 with piece_1159 using piece_1159_mem, ⟨piece_1051_mem, piece_1052_mem⟩

theorem linked_10489 : Linked cell_10489 pieces := by
  link_source cell_10489 with piece_1160 using piece_1160_mem, ⟨piece_1052_mem, piece_1053_mem⟩

theorem linked_10490 : Linked cell_10490 pieces := by
  link_source cell_10490 with piece_1160 using piece_1160_mem, ⟨piece_1051_mem, piece_1052_mem⟩

theorem linked_10491 : Linked cell_10491 pieces := by
  link_source cell_10491 with piece_1160 using piece_1160_mem, piece_1051_mem

theorem linked_10492 : Linked cell_10492 pieces := by
  link_source cell_10492 with piece_1160 using piece_1160_mem, ⟨piece_1050_mem, piece_1051_mem⟩

theorem linked_10493 : Linked cell_10493 pieces := by
  link_source cell_10493 with piece_1161 using piece_1161_mem, piece_1051_mem

theorem linked_10494 : Linked cell_10494 pieces := by
  link_source cell_10494 with piece_1161 using piece_1161_mem, ⟨piece_1050_mem, piece_1051_mem⟩

theorem linked_10495 : Linked cell_10495 pieces := by
  link_source cell_10495 with piece_1161 using piece_1161_mem, piece_1050_mem

theorem linked_10496 : Linked cell_10496 pieces := by
  link_source cell_10496 with piece_1161 using piece_1161_mem, ⟨piece_1049_mem, piece_1050_mem⟩

theorem linked_10497 : Linked cell_10497 pieces := by
  link_source cell_10497 with piece_1162 using piece_1162_mem, piece_1050_mem

theorem linked_10498 : Linked cell_10498 pieces := by
  link_source cell_10498 with piece_1162 using piece_1162_mem, ⟨piece_1049_mem, piece_1050_mem⟩

theorem linked_10499 : Linked cell_10499 pieces := by
  link_source cell_10499 with piece_1162 using piece_1162_mem, ⟨piece_1048_mem, piece_1049_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0209.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0209.cells,List.forall_mem_cons]
  exact ⟨linked_10450, linked_10451, linked_10452, linked_10453, linked_10454, linked_10455, linked_10456, linked_10457, linked_10458, linked_10459, linked_10460, linked_10461, linked_10462, linked_10463, linked_10464, linked_10465, linked_10466, linked_10467, linked_10468, linked_10469, linked_10470, linked_10471, linked_10472, linked_10473, linked_10474, linked_10475, linked_10476, linked_10477, linked_10478, linked_10479, linked_10480, linked_10481, linked_10482, linked_10483, linked_10484, linked_10485, linked_10486, linked_10487, linked_10488, linked_10489, linked_10490, linked_10491, linked_10492, linked_10493, linked_10494, linked_10495, linked_10496, linked_10497, linked_10498, linked_10499, by simp⟩

theorem covered : covers (12043750000000001 / 25000000000000000 : ℚ) (12196875000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0209.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0209
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0210
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(12196875000000001 / 25000000000000000 : ℚ), (12200000000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (312459733551 / 500000000000 : ℚ)
  w := (2950125266351 / 2000000000000 : ℚ)
  center := (12198437500000001 / 25000000000000000 : ℚ)
  supportValue := (4355455796183423 / 10000000000000000 : ℚ)
  supportSlope := (-21321381791876703 / 10000000000000000 : ℚ)
  oldCenter := (4355455796183423 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1163
  oldLo := (8650000000000001 / 20000000000000000 : ℚ)
  oldHi := (8660000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1042]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10500 : Cell := { cellDefaults with
  r := (62742585127727 / 100000000000000 : ℚ)
  w := (14782861912863 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1162
  oldLo := (8700000000000001 / 20000000000000000 : ℚ)
  oldHi := (871731843575419 / 2000000000000000 : ℚ)
  oldPieces := [piece_1047, piece_1048]
}

def cell_10501 : Cell := { cellDefaults with
  domain := ⟨(12200000000000001 / 25000000000000000 : ℚ), (195250000000000017 / 400000000000000000 : ℚ)⟩
  r := (31353321403897 / 50000000000000 : ℚ)
  w := (3694557133 / 2500000000 : ℚ)
  center := (390450000000000033 / 800000000000000000 : ℚ)
  supportValue := (42562161575921 / 97656250000000 : ℚ)
  supportSlope := (-4266155771002559 / 2000000000000000 : ℚ)
  oldCenter := (42562161575921 / 97656250000000 : ℚ)
  oldLo := (8710000000000001 / 20000000000000000 : ℚ)
  oldHi := (8720000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1048, piece_1049]
}

def cell_10502 : Cell := { cellDefaults with
  domain := ⟨(195250000000000017 / 400000000000000000 : ℚ), (97650000000000009 / 200000000000000000 : ℚ)⟩
  r := (31353321403897 / 50000000000000 : ℚ)
  w := (3694557133 / 2500000000 : ℚ)
  center := (78110000000000007 / 160000000000000000 : ℚ)
  supportValue := (871140086895459 / 2000000000000000 : ℚ)
  supportSlope := (-10655013381643883 / 5000000000000000 : ℚ)
  oldCenter := (871140086895459 / 2000000000000000 : ℚ)
  oldLo := (8700000000000001 / 20000000000000000 : ℚ)
  oldHi := (871731843575419 / 2000000000000000 : ℚ)
  oldPieces := [piece_1047, piece_1048]
}

def cell_10503 : Cell := { cellDefaults with
  domain := ⟨(97650000000000009 / 200000000000000000 : ℚ), (195350000000000019 / 400000000000000000 : ℚ)⟩
  r := (31353321403897 / 50000000000000 : ℚ)
  w := (3694557133 / 2500000000 : ℚ)
  center := (390650000000000037 / 800000000000000000 : ℚ)
  supportValue := (4353037524251509 / 10000000000000000 : ℚ)
  supportSlope := (-10647112355330677 / 5000000000000000 : ℚ)
  oldCenter := (4353037524251509 / 10000000000000000 : ℚ)
  oldLo := (8700000000000001 / 20000000000000000 : ℚ)
  oldHi := (8710000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1047]
}

def cell_10504 : Cell := { cellDefaults with
  domain := ⟨(195350000000000019 / 400000000000000000 : ℚ), (9770000000000001 / 20000000000000000 : ℚ)⟩
  r := (31353321403897 / 50000000000000 : ℚ)
  w := (3694557133 / 2500000000 : ℚ)
  center := (390750000000000039 / 800000000000000000 : ℚ)
  supportValue := (21751885906042817 / 50000000000000000 : ℚ)
  supportSlope := (-2659332043264353 / 1250000000000000 : ℚ)
  oldCenter := (21751885906042817 / 50000000000000000 : ℚ)
  oldLo := (8690000000000001 / 20000000000000000 : ℚ)
  oldHi := (8710000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1046, piece_1047]
}

def cell_10505 : Cell := { cellDefaults with
  domain := ⟨(9770000000000001 / 20000000000000000 : ℚ), (9772500000000001 / 20000000000000000 : ℚ)⟩
  r := (979230410931 / 1562500000000 : ℚ)
  w := (14773604672913 / 10000000000000 : ℚ)
  center := (9771250000000001 / 20000000000000000 : ℚ)
  supportValue := (21766401998876367 / 50000000000000000 : ℚ)
  supportSlope := (-4256749840148899 / 2000000000000000 : ℚ)
  oldCenter := (21766401998876367 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1164
  oldLo := (8700000000000001 / 20000000000000000 : ℚ)
  oldHi := (8710000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1047]
}

def cell_10506 : Cell := { cellDefaults with
  domain := ⟨(9772500000000001 / 20000000000000000 : ℚ), (9775000000000001 / 20000000000000000 : ℚ)⟩
  r := (979230410931 / 1562500000000 : ℚ)
  w := (14773604672913 / 10000000000000 : ℚ)
  center := (9773750000000001 / 20000000000000000 : ℚ)
  supportValue := (2719138352890579 / 6250000000000000 : ℚ)
  supportSlope := (-2126333148543047 / 1000000000000000 : ℚ)
  oldCenter := (2719138352890579 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1164
  oldLo := (8690000000000001 / 20000000000000000 : ℚ)
  oldHi := (8710000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1046, piece_1047]
}

def cell_10507 : Cell := { cellDefaults with
  domain := ⟨(9775000000000001 / 20000000000000000 : ℚ), (9777500000000001 / 20000000000000000 : ℚ)⟩
  r := (979230410931 / 1562500000000 : ℚ)
  w := (14773604672913 / 10000000000000 : ℚ)
  center := (9776250000000001 / 20000000000000000 : ℚ)
  supportValue := (8695928572510373 / 20000000000000000 : ℚ)
  supportSlope := (-2124732613881797 / 1000000000000000 : ℚ)
  oldCenter := (8695928572510373 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1164
  oldLo := (8690000000000001 / 20000000000000000 : ℚ)
  oldHi := (8700000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1046]
}

def cell_10508 : Cell := { cellDefaults with
  domain := ⟨(9777500000000001 / 20000000000000000 : ℚ), (9780000000000001 / 20000000000000000 : ℚ)⟩
  r := (979230410931 / 1562500000000 : ℚ)
  w := (14773604672913 / 10000000000000 : ℚ)
  center := (9778750000000001 / 20000000000000000 : ℚ)
  supportValue := (43453098022296527 / 100000000000000000 : ℚ)
  supportSlope := (-21228060373754687 / 10000000000000000 : ℚ)
  oldCenter := (43453098022296527 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1164
  oldLo := (8680000000000001 / 20000000000000000 : ℚ)
  oldHi := (8700000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1045, piece_1046]
}

def cell_10509 : Cell := { cellDefaults with
  domain := ⟨(9780000000000001 / 20000000000000000 : ℚ), (9782500000000001 / 20000000000000000 : ℚ)⟩
  r := (31317447762721 / 50000000000000 : ℚ)
  w := (590759634103 / 400000000000 : ℚ)
  center := (9781250000000001 / 20000000000000000 : ℚ)
  supportValue := (5435258189588097 / 12500000000000000 : ℚ)
  supportSlope := (-5309220545102189 / 2500000000000000 : ℚ)
  oldCenter := (5435258189588097 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1165
  oldLo := (8690000000000001 / 20000000000000000 : ℚ)
  oldHi := (8700000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1046]
}

def cell_10510 : Cell := { cellDefaults with
  domain := ⟨(9782500000000001 / 20000000000000000 : ℚ), (9785000000000001 / 20000000000000000 : ℚ)⟩
  r := (31317447762721 / 50000000000000 : ℚ)
  w := (590759634103 / 400000000000 : ℚ)
  center := (9783750000000001 / 20000000000000000 : ℚ)
  supportValue := (543194171451023 / 1250000000000000 : ℚ)
  supportSlope := (-2652095565720547 / 1250000000000000 : ℚ)
  oldCenter := (543194171451023 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1165
  oldLo := (8680000000000001 / 20000000000000000 : ℚ)
  oldHi := (8700000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1045, piece_1046]
}

def cell_10511 : Cell := { cellDefaults with
  domain := ⟨(9785000000000001 / 20000000000000000 : ℚ), (9787500000000001 / 20000000000000000 : ℚ)⟩
  r := (31317447762721 / 50000000000000 : ℚ)
  w := (590759634103 / 400000000000 : ℚ)
  center := (9786250000000001 / 20000000000000000 : ℚ)
  supportValue := (4342902109066679 / 10000000000000000 : ℚ)
  supportSlope := (-4240118535138393 / 2000000000000000 : ℚ)
  oldCenter := (4342902109066679 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1165
  oldLo := (8680000000000001 / 20000000000000000 : ℚ)
  oldHi := (8690000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1045]
}

def cell_10512 : Cell := { cellDefaults with
  domain := ⟨(9787500000000001 / 20000000000000000 : ℚ), (9790000000000001 / 20000000000000000 : ℚ)⟩
  r := (31317447762721 / 50000000000000 : ℚ)
  w := (590759634103 / 400000000000 : ℚ)
  center := (9788750000000001 / 20000000000000000 : ℚ)
  supportValue := (542531682927101 / 1250000000000000 : ℚ)
  supportSlope := (-423631855196227 / 200000000000000 : ℚ)
  oldCenter := (542531682927101 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1165
  oldLo := (8670000000000001 / 20000000000000000 : ℚ)
  oldHi := (8690000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1044, piece_1045]
}

def cell_10513 : Cell := { cellDefaults with
  domain := ⟨(9790000000000001 / 20000000000000000 : ℚ), (9792500000000001 / 20000000000000000 : ℚ)⟩
  r := (31299545357337 / 50000000000000 : ℚ)
  w := (3691096329291 / 2500000000000 : ℚ)
  center := (9791250000000001 / 20000000000000000 : ℚ)
  supportValue := (4343144234008057 / 10000000000000000 : ℚ)
  supportSlope := (-211901835114503 / 100000000000000 : ℚ)
  oldCenter := (4343144234008057 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1166
  oldLo := (8680000000000001 / 20000000000000000 : ℚ)
  oldHi := (8690000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1045]
}

def cell_10514 : Cell := { cellDefaults with
  domain := ⟨(9792500000000001 / 20000000000000000 : ℚ), (9795000000000001 / 20000000000000000 : ℚ)⟩
  r := (31299545357337 / 50000000000000 : ℚ)
  w := (3691096329291 / 2500000000000 : ℚ)
  center := (9793750000000001 / 20000000000000000 : ℚ)
  supportValue := (868099377597843 / 2000000000000000 : ℚ)
  supportSlope := (-21170327362058927 / 10000000000000000 : ℚ)
  oldCenter := (868099377597843 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1166
  oldLo := (8670000000000001 / 20000000000000000 : ℚ)
  oldHi := (8690000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1044, piece_1045]
}

def cell_10515 : Cell := { cellDefaults with
  domain := ⟨(9795000000000001 / 20000000000000000 : ℚ), (9797500000000001 / 20000000000000000 : ℚ)⟩
  r := (31299545357337 / 50000000000000 : ℚ)
  w := (3691096329291 / 2500000000000 : ℚ)
  center := (9796250000000001 / 20000000000000000 : ℚ)
  supportValue := (867570285009541 / 2000000000000000 : ℚ)
  supportSlope := (-10577013289019277 / 5000000000000000 : ℚ)
  oldCenter := (867570285009541 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1166
  oldLo := (8670000000000001 / 20000000000000000 : ℚ)
  oldHi := (8680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1044]
}

def cell_10516 : Cell := { cellDefaults with
  domain := ⟨(9797500000000001 / 20000000000000000 : ℚ), (9800000000000001 / 20000000000000000 : ℚ)⟩
  r := (31299545357337 / 50000000000000 : ℚ)
  w := (3691096329291 / 2500000000000 : ℚ)
  center := (9798750000000001 / 20000000000000000 : ℚ)
  supportValue := (43352085971156357 / 100000000000000000 : ℚ)
  supportSlope := (-1320953195942387 / 625000000000000 : ℚ)
  oldCenter := (43352085971156357 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1166
  oldLo := (8660000000000001 / 20000000000000000 : ℚ)
  oldHi := (8680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1043, piece_1044]
}

def cell_10517 : Cell := { cellDefaults with
  domain := ⟨(9800000000000001 / 20000000000000000 : ℚ), (9802500000000001 / 20000000000000000 : ℚ)⟩
  r := (1564083266259 / 2500000000000 : ℚ)
  w := (14759790058717 / 10000000000000 : ℚ)
  center := (9801250000000001 / 20000000000000000 : ℚ)
  supportValue := (43380929525484563 / 100000000000000000 : ℚ)
  supportSlope := (-2642956142878683 / 1250000000000000 : ℚ)
  oldCenter := (43380929525484563 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1167
  oldLo := (8670000000000001 / 20000000000000000 : ℚ)
  oldHi := (8680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1044]
}

def cell_10518 : Cell := { cellDefaults with
  domain := ⟨(9802500000000001 / 20000000000000000 : ℚ), (9805000000000001 / 20000000000000000 : ℚ)⟩
  r := (1564083266259 / 2500000000000 : ℚ)
  w := (14759790058717 / 10000000000000 : ℚ)
  center := (9803750000000001 / 20000000000000000 : ℚ)
  supportValue := (43354514202852323 / 100000000000000000 : ℚ)
  supportSlope := (-2112401448704837 / 1000000000000000 : ℚ)
  oldCenter := (43354514202852323 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1167
  oldLo := (8660000000000001 / 20000000000000000 : ℚ)
  oldHi := (8680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1043, piece_1044]
}

def cell_10519 : Cell := { cellDefaults with
  domain := ⟨(9805000000000001 / 20000000000000000 : ℚ), (9807500000000001 / 20000000000000000 : ℚ)⟩
  r := (1564083266259 / 2500000000000 : ℚ)
  w := (14759790058717 / 10000000000000 : ℚ)
  center := (9806250000000001 / 20000000000000000 : ℚ)
  supportValue := (4332811741343541 / 10000000000000000 : ℚ)
  supportSlope := (-131922633862247 / 62500000000000 : ℚ)
  oldCenter := (4332811741343541 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1167
  oldLo := (8660000000000001 / 20000000000000000 : ℚ)
  oldHi := (8670000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1043]
}

def cell_10520 : Cell := { cellDefaults with
  domain := ⟨(9807500000000001 / 20000000000000000 : ℚ), (9810000000000001 / 20000000000000000 : ℚ)⟩
  r := (1564083266259 / 2500000000000 : ℚ)
  w := (14759790058717 / 10000000000000 : ℚ)
  center := (9808750000000001 / 20000000000000000 : ℚ)
  supportValue := (43301747113596323 / 100000000000000000 : ℚ)
  supportSlope := (-527225660554187 / 250000000000000 : ℚ)
  oldCenter := (43301747113596323 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1167
  oldHi := (8670000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1042, piece_1043]
}

def cell_10521 : Cell := { cellDefaults with
  domain := ⟨(9810000000000001 / 20000000000000000 : ℚ), (9812500000000001 / 20000000000000000 : ℚ)⟩
  r := (62527616419979 / 100000000000000 : ℚ)
  w := (14755203914553 / 10000000000000 : ℚ)
  center := (9811250000000001 / 20000000000000000 : ℚ)
  supportValue := (4333052867164217 / 10000000000000000 : ℚ)
  supportSlope := (-1054863868517053 / 500000000000000 : ℚ)
  oldCenter := (4333052867164217 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1168
  oldLo := (8660000000000001 / 20000000000000000 : ℚ)
  oldHi := (8670000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1043]
}

def cell_10522 : Cell := { cellDefaults with
  domain := ⟨(9812500000000001 / 20000000000000000 : ℚ), (9815000000000001 / 20000000000000000 : ℚ)⟩
  r := (62527616419979 / 100000000000000 : ℚ)
  w := (14755203914553 / 10000000000000 : ℚ)
  center := (9813750000000001 / 20000000000000000 : ℚ)
  supportValue := (43304171286803617 / 100000000000000000 : ℚ)
  supportSlope := (-10538909613049263 / 5000000000000000 : ℚ)
  oldCenter := (43304171286803617 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1168
  oldHi := (8670000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1042, piece_1043]
}

def cell_10523 : Cell := { cellDefaults with
  domain := ⟨(9815000000000001 / 20000000000000000 : ℚ), (9817500000000001 / 20000000000000000 : ℚ)⟩
  r := (62527616419979 / 100000000000000 : ℚ)
  w := (14755203914553 / 10000000000000 : ℚ)
  center := (9816250000000001 / 20000000000000000 : ℚ)
  supportValue := (2163891609496119 / 5000000000000000 : ℚ)
  supportSlope := (-5265344612153111 / 2500000000000000 : ℚ)
  oldCenter := (2163891609496119 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1168
  oldPieces := [piece_1042]
}

def cell_10524 : Cell := { cellDefaults with
  domain := ⟨(9817500000000001 / 20000000000000000 : ℚ), (9820000000000001 / 20000000000000000 : ℚ)⟩
  r := (62527616419979 / 100000000000000 : ℚ)
  w := (14755203914553 / 10000000000000 : ℚ)
  center := (9818750000000001 / 20000000000000000 : ℚ)
  supportValue := (8650303931838691 / 20000000000000000 : ℚ)
  supportSlope := (-10521466747825947 / 5000000000000000 : ℚ)
  oldCenter := (8650303931838691 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1168
  oldLo := (8640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1041, piece_1042]
}

def cell_10525 : Cell := { cellDefaults with
  domain := ⟨(9820000000000001 / 20000000000000000 : ℚ), (6138582402234637 / 12500000000000000 : ℚ)⟩
  center := (98208659217877101 / 200000000000000000 : ℚ)
  supportValue := (8656851015753727 / 20000000000000000 : ℚ)
  supportSlope := (-10527280887958619 / 5000000000000000 : ℚ)
  oldCenter := (8656851015753727 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1169
  oldPieces := [piece_1042]
}

def cell_10526 : Cell := { cellDefaults with
  domain := ⟨(6138582402234637 / 12500000000000000 : ℚ), (49117318435754187 / 100000000000000000 : ℚ)⟩
  center := (98225977653631283 / 200000000000000000 : ℚ)
  supportValue := (21633015145092113 / 50000000000000000 : ℚ)
  supportSlope := (-131492600986609 / 62500000000000 : ℚ)
  oldCenter := (21633015145092113 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1169
  oldPieces := [piece_1042]
}

def cell_10527 : Cell := { cellDefaults with
  domain := ⟨(49117318435754187 / 100000000000000000 : ℚ), (9825000000000001 / 20000000000000000 : ℚ)⟩
  center := (6140144902234637 / 12500000000000000 : ℚ)
  supportValue := (270305289206227 / 625000000000000 : ℚ)
  supportSlope := (-84118066057459 / 40000000000000 : ℚ)
  oldCenter := (270305289206227 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1170
  oldLo := (8640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1041, piece_1042]
}

def cell_10528 : Cell := { cellDefaults with
  domain := ⟨(9825000000000001 / 20000000000000000 : ℚ), (9827500000000001 / 20000000000000000 : ℚ)⟩
  center := (9826250000000001 / 20000000000000000 : ℚ)
  supportValue := (4322766118319939 / 10000000000000000 : ℚ)
  supportSlope := (-840612135679919 / 400000000000000 : ℚ)
  oldCenter := (4322766118319939 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1170
  oldLo := (8640000000000001 / 20000000000000000 : ℚ)
  oldHi := (8650000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1041]
}

def cell_10529 : Cell := { cellDefaults with
  domain := ⟨(9827500000000001 / 20000000000000000 : ℚ), (9830000000000001 / 20000000000000000 : ℚ)⟩
  center := (9828750000000001 / 20000000000000000 : ℚ)
  supportValue := (2160070310853021 / 5000000000000000 : ℚ)
  supportSlope := (-20996961871118103 / 10000000000000000 : ℚ)
  oldCenter := (2160070310853021 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1170
  oldLo := (8630000000000001 / 20000000000000000 : ℚ)
  oldHi := (8650000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1040, piece_1041]
}

def cell_10530 : Cell := { cellDefaults with
  domain := ⟨(9830000000000001 / 20000000000000000 : ℚ), (9832500000000001 / 20000000000000000 : ℚ)⟩
  r := (62456322693027 / 100000000000000 : ℚ)
  w := (7373029538493 / 5000000000000 : ℚ)
  center := (9831250000000001 / 20000000000000000 : ℚ)
  supportValue := (2161503184067467 / 5000000000000000 : ℚ)
  supportSlope := (-21005023688083213 / 10000000000000000 : ℚ)
  oldCenter := (2161503184067467 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1171
  oldLo := (8640000000000001 / 20000000000000000 : ℚ)
  oldHi := (8650000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1041]
}

def cell_10531 : Cell := { cellDefaults with
  domain := ⟨(9832500000000001 / 20000000000000000 : ℚ), (9835000000000001 / 20000000000000000 : ℚ)⟩
  r := (62456322693027 / 100000000000000 : ℚ)
  w := (7373029538493 / 5000000000000 : ℚ)
  center := (9833750000000001 / 20000000000000000 : ℚ)
  supportValue := (10800955387467609 / 25000000000000000 : ℚ)
  supportSlope := (-2098581249883047 / 1000000000000000 : ℚ)
  oldCenter := (10800955387467609 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1171
  oldLo := (8630000000000001 / 20000000000000000 : ℚ)
  oldHi := (8650000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1040, piece_1041]
}

def cell_10532 : Cell := { cellDefaults with
  domain := ⟨(9835000000000001 / 20000000000000000 : ℚ), (9837500000000001 / 20000000000000000 : ℚ)⟩
  r := (62456322693027 / 100000000000000 : ℚ)
  w := (7373029538493 / 5000000000000 : ℚ)
  center := (9836250000000001 / 20000000000000000 : ℚ)
  supportValue := (10794399339994369 / 25000000000000000 : ℚ)
  supportSlope := (-2096938723758157 / 1000000000000000 : ℚ)
  oldCenter := (10794399339994369 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1171
  oldLo := (8630000000000001 / 20000000000000000 : ℚ)
  oldHi := (8640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1040]
}

def cell_10533 : Cell := { cellDefaults with
  domain := ⟨(9837500000000001 / 20000000000000000 : ℚ), (9840000000000001 / 20000000000000000 : ℚ)⟩
  r := (62456322693027 / 100000000000000 : ℚ)
  w := (7373029538493 / 5000000000000 : ℚ)
  center := (9838750000000001 / 20000000000000000 : ℚ)
  supportValue := (2157569987995333 / 5000000000000000 : ℚ)
  supportSlope := (-10475554813171861 / 5000000000000000 : ℚ)
  oldCenter := (2157569987995333 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1171
  oldLo := (8620000000000001 / 20000000000000000 : ℚ)
  oldHi := (8640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1039, piece_1040]
}

def cell_10534 : Cell := { cellDefaults with
  domain := ⟨(9840000000000001 / 20000000000000000 : ℚ), (9842500000000001 / 20000000000000000 : ℚ)⟩
  r := (31210371909923 / 50000000000000 : ℚ)
  w := (2948300120277 / 2000000000000 : ℚ)
  center := (9841250000000001 / 20000000000000000 : ℚ)
  supportValue := (2698749820095089 / 6250000000000000 : ℚ)
  supportSlope := (-1047957051016013 / 500000000000000 : ℚ)
  oldCenter := (2698749820095089 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1172
  oldLo := (8630000000000001 / 20000000000000000 : ℚ)
  oldHi := (8640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1040]
}

def cell_10535 : Cell := { cellDefaults with
  domain := ⟨(9842500000000001 / 20000000000000000 : ℚ), (9845000000000001 / 20000000000000000 : ℚ)⟩
  r := (31210371909923 / 50000000000000 : ℚ)
  w := (2948300120277 / 2000000000000 : ℚ)
  center := (9843750000000001 / 20000000000000000 : ℚ)
  supportValue := (8630762462859951 / 20000000000000000 : ℚ)
  supportSlope := (-2093998944800113 / 1000000000000000 : ℚ)
  oldCenter := (8630762462859951 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1172
  oldLo := (8620000000000001 / 20000000000000000 : ℚ)
  oldHi := (8640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1039, piece_1040]
}

def cell_10536 : Cell := { cellDefaults with
  domain := ⟨(9845000000000001 / 20000000000000000 : ℚ), (9847500000000001 / 20000000000000000 : ℚ)⟩
  r := (31210371909923 / 50000000000000 : ℚ)
  w := (2948300120277 / 2000000000000 : ℚ)
  center := (9846250000000001 / 20000000000000000 : ℚ)
  supportValue := (2695477834489049 / 6250000000000000 : ℚ)
  supportSlope := (-1046181679977387 / 500000000000000 : ℚ)
  oldCenter := (2695477834489049 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1172
  oldLo := (8620000000000001 / 20000000000000000 : ℚ)
  oldHi := (8630000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1039]
}

def cell_10537 : Cell := { cellDefaults with
  domain := ⟨(9847500000000001 / 20000000000000000 : ℚ), (9850000000000001 / 20000000000000000 : ℚ)⟩
  r := (31210371909923 / 50000000000000 : ℚ)
  w := (2948300120277 / 2000000000000 : ℚ)
  center := (9848750000000001 / 20000000000000000 : ℚ)
  supportValue := (21550752457250283 / 50000000000000000 : ℚ)
  supportSlope := (-65329306962153 / 31250000000000 : ℚ)
  oldCenter := (21550752457250283 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1172
  oldLo := (8610000000000001 / 20000000000000000 : ℚ)
  oldHi := (8630000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1038, piece_1039]
}

def cell_10538 : Cell := { cellDefaults with
  domain := ⟨(9850000000000001 / 20000000000000000 : ℚ), (9852500000000001 / 20000000000000000 : ℚ)⟩
  r := (31192604538031 / 50000000000000 : ℚ)
  w := (921059461421 / 625000000000 : ℚ)
  center := (9851250000000001 / 20000000000000000 : ℚ)
  supportValue := (43130042005782937 / 100000000000000000 : ℚ)
  supportSlope := (-8169304809999 / 3906250000000 : ℚ)
  oldCenter := (43130042005782937 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1173
  oldLo := (8620000000000001 / 20000000000000000 : ℚ)
  oldHi := (8630000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1039]
}

def cell_10539 : Cell := { cellDefaults with
  domain := ⟨(9852500000000001 / 20000000000000000 : ℚ), (9855000000000001 / 20000000000000000 : ℚ)⟩
  r := (31192604538031 / 50000000000000 : ℚ)
  w := (921059461421 / 625000000000 : ℚ)
  center := (9853750000000001 / 20000000000000000 : ℚ)
  supportValue := (5387989290025473 / 12500000000000000 : ℚ)
  supportSlope := (-20894286829857833 / 10000000000000000 : ℚ)
  oldCenter := (5387989290025473 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1173
  oldLo := (8610000000000001 / 20000000000000000 : ℚ)
  oldHi := (8630000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1038, piece_1039]
}

def cell_10540 : Cell := { cellDefaults with
  domain := ⟨(9855000000000001 / 20000000000000000 : ℚ), (9857500000000001 / 20000000000000000 : ℚ)⟩
  r := (31192604538031 / 50000000000000 : ℚ)
  w := (921059461421 / 625000000000 : ℚ)
  center := (9856250000000001 / 20000000000000000 : ℚ)
  supportValue := (4307780443463347 / 10000000000000000 : ℚ)
  supportSlope := (-2087804213642741 / 1000000000000000 : ℚ)
  oldCenter := (4307780443463347 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1173
  oldLo := (8610000000000001 / 20000000000000000 : ℚ)
  oldHi := (8620000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1038]
}

def cell_10541 : Cell := { cellDefaults with
  domain := ⟨(9857500000000001 / 20000000000000000 : ℚ), (9860000000000001 / 20000000000000000 : ℚ)⟩
  r := (31192604538031 / 50000000000000 : ℚ)
  w := (921059461421 / 625000000000 : ℚ)
  center := (9858750000000001 / 20000000000000000 : ℚ)
  supportValue := (2152586047859049 / 5000000000000000 : ℚ)
  supportSlope := (-2085976685753721 / 1000000000000000 : ℚ)
  oldCenter := (2152586047859049 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1173
  oldLo := (2689594972067039 / 6250000000000000 : ℚ)
  oldHi := (8620000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1037, piece_1038]
}

def cell_10542 : Cell := { cellDefaults with
  domain := ⟨(9860000000000001 / 20000000000000000 : ℚ), (9862500000000001 / 20000000000000000 : ℚ)⟩
  r := (12469944003947 / 20000000000000 : ℚ)
  w := (3683103041017 / 2500000000000 : ℚ)
  center := (9861250000000001 / 20000000000000000 : ℚ)
  supportValue := (1077004846069463 / 2500000000000000 : ℚ)
  supportSlope := (-4173571873362647 / 2000000000000000 : ℚ)
  oldCenter := (1077004846069463 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1174
  oldLo := (8610000000000001 / 20000000000000000 : ℚ)
  oldHi := (8620000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1038]
}

def cell_10543 : Cell := { cellDefaults with
  domain := ⟨(9862500000000001 / 20000000000000000 : ℚ), (9865000000000001 / 20000000000000000 : ℚ)⟩
  r := (12469944003947 / 20000000000000 : ℚ)
  w := (3683103041017 / 2500000000000 : ℚ)
  center := (9863750000000001 / 20000000000000000 : ℚ)
  supportValue := (43054123079308093 / 100000000000000000 : ℚ)
  supportSlope := (-1042435144387177 / 500000000000000 : ℚ)
  oldCenter := (43054123079308093 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1174
  oldLo := (2689594972067039 / 6250000000000000 : ℚ)
  oldHi := (8620000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1037, piece_1038]
}

def cell_10544 : Cell := { cellDefaults with
  domain := ⟨(9865000000000001 / 20000000000000000 : ℚ), (9867500000000001 / 20000000000000000 : ℚ)⟩
  r := (12469944003947 / 20000000000000 : ℚ)
  w := (3683103041017 / 2500000000000 : ℚ)
  center := (9866250000000001 / 20000000000000000 : ℚ)
  supportValue := (4302807012168273 / 10000000000000000 : ℚ)
  supportSlope := (-104163061288709 / 50000000000000 : ℚ)
  oldCenter := (4302807012168273 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1174
  oldLo := (8600000000000001 / 20000000000000000 : ℚ)
  oldHi := (8610000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1036, piece_1037]
}

def cell_10545 : Cell := { cellDefaults with
  domain := ⟨(9867500000000001 / 20000000000000000 : ℚ), (9870000000000001 / 20000000000000000 : ℚ)⟩
  r := (12469944003947 / 20000000000000 : ℚ)
  w := (3683103041017 / 2500000000000 : ℚ)
  center := (9868750000000001 / 20000000000000000 : ℚ)
  supportValue := (4300204340084521 / 10000000000000000 : ℚ)
  supportSlope := (-4162855367145113 / 2000000000000000 : ℚ)
  oldCenter := (4300204340084521 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1174
  oldLo := (8590000000000001 / 20000000000000000 : ℚ)
  oldHi := (2689594972067039 / 6250000000000000 : ℚ)
  oldPieces := [piece_1035, piece_1036]
}

def cell_10546 : Cell := { cellDefaults with
  domain := ⟨(9870000000000001 / 20000000000000000 : ℚ), (9872500000000001 / 20000000000000000 : ℚ)⟩
  r := (15578568588567 / 25000000000000 : ℚ)
  w := (7363940671263 / 5000000000000 : ℚ)
  center := (9871250000000001 / 20000000000000000 : ℚ)
  supportValue := (10757614862484391 / 25000000000000000 : ℚ)
  supportSlope := (-5205615896670679 / 2500000000000000 : ℚ)
  oldCenter := (10757614862484391 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1175
  oldLo := (8600000000000001 / 20000000000000000 : ℚ)
  oldHi := (8610000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1036, piece_1037]
}

def cell_10547 : Cell := { cellDefaults with
  domain := ⟨(9872500000000001 / 20000000000000000 : ℚ), (9875000000000001 / 20000000000000000 : ℚ)⟩
  r := (15578568588567 / 25000000000000 : ℚ)
  w := (7363940671263 / 5000000000000 : ℚ)
  center := (9873750000000001 / 20000000000000000 : ℚ)
  supportValue := (8600889079944749 / 20000000000000000 : ℚ)
  supportSlope := (-1040162131558553 / 500000000000000 : ℚ)
  oldCenter := (8600889079944749 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1175
  oldLo := (8590000000000001 / 20000000000000000 : ℚ)
  oldHi := (2689594972067039 / 6250000000000000 : ℚ)
  oldPieces := [piece_1035, piece_1036]
}

def cell_10548 : Cell := { cellDefaults with
  domain := ⟨(9875000000000001 / 20000000000000000 : ℚ), (9877500000000001 / 20000000000000000 : ℚ)⟩
  r := (15578568588567 / 25000000000000 : ℚ)
  w := (7363940671263 / 5000000000000 : ℚ)
  center := (9876250000000001 / 20000000000000000 : ℚ)
  supportValue := (4297844921664507 / 10000000000000000 : ℚ)
  supportSlope := (-1039367291569171 / 500000000000000 : ℚ)
  oldCenter := (4297844921664507 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1175
  oldLo := (8590000000000001 / 20000000000000000 : ℚ)
  oldHi := (8600000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1035]
}

def cell_10549 : Cell := { cellDefaults with
  domain := ⟨(9877500000000001 / 20000000000000000 : ℚ), (9880000000000001 / 20000000000000000 : ℚ)⟩
  r := (15578568588567 / 25000000000000 : ℚ)
  w := (7363940671263 / 5000000000000 : ℚ)
  center := (9878750000000001 / 20000000000000000 : ℚ)
  supportValue := (2147623952517277 / 5000000000000000 : ℚ)
  supportSlope := (-83075615081043 / 40000000000000 : ℚ)
  oldCenter := (2147623952517277 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1175
  oldLo := (8580000000000001 / 20000000000000000 : ℚ)
  oldHi := (8600000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1034, piece_1035]
}

theorem check_10500 : cell_10500.check = true := by
  decide +kernel

theorem check_10501 : cell_10501.check = true := by
  decide +kernel

theorem check_10502 : cell_10502.check = true := by
  decide +kernel

theorem check_10503 : cell_10503.check = true := by
  decide +kernel

theorem check_10504 : cell_10504.check = true := by
  decide +kernel

theorem check_10505 : cell_10505.check = true := by
  decide +kernel

theorem check_10506 : cell_10506.check = true := by
  decide +kernel

theorem check_10507 : cell_10507.check = true := by
  decide +kernel

theorem check_10508 : cell_10508.check = true := by
  decide +kernel

theorem check_10509 : cell_10509.check = true := by
  decide +kernel

theorem check_10510 : cell_10510.check = true := by
  decide +kernel

theorem check_10511 : cell_10511.check = true := by
  decide +kernel

theorem check_10512 : cell_10512.check = true := by
  decide +kernel

theorem check_10513 : cell_10513.check = true := by
  decide +kernel

theorem check_10514 : cell_10514.check = true := by
  decide +kernel

theorem check_10515 : cell_10515.check = true := by
  decide +kernel

theorem check_10516 : cell_10516.check = true := by
  decide +kernel

theorem check_10517 : cell_10517.check = true := by
  decide +kernel

theorem check_10518 : cell_10518.check = true := by
  decide +kernel

theorem check_10519 : cell_10519.check = true := by
  decide +kernel

theorem check_10520 : cell_10520.check = true := by
  decide +kernel

theorem check_10521 : cell_10521.check = true := by
  decide +kernel

theorem check_10522 : cell_10522.check = true := by
  decide +kernel

theorem check_10523 : cell_10523.check = true := by
  decide +kernel

theorem check_10524 : cell_10524.check = true := by
  decide +kernel

theorem check_10525 : cell_10525.check = true := by
  decide +kernel

theorem check_10526 : cell_10526.check = true := by
  decide +kernel

theorem check_10527 : cell_10527.check = true := by
  decide +kernel

theorem check_10528 : cell_10528.check = true := by
  decide +kernel

theorem check_10529 : cell_10529.check = true := by
  decide +kernel

theorem check_10530 : cell_10530.check = true := by
  decide +kernel

theorem check_10531 : cell_10531.check = true := by
  decide +kernel

theorem check_10532 : cell_10532.check = true := by
  decide +kernel

theorem check_10533 : cell_10533.check = true := by
  decide +kernel

theorem check_10534 : cell_10534.check = true := by
  decide +kernel

theorem check_10535 : cell_10535.check = true := by
  decide +kernel

theorem check_10536 : cell_10536.check = true := by
  decide +kernel

theorem check_10537 : cell_10537.check = true := by
  decide +kernel

theorem check_10538 : cell_10538.check = true := by
  decide +kernel

theorem check_10539 : cell_10539.check = true := by
  decide +kernel

theorem check_10540 : cell_10540.check = true := by
  decide +kernel

theorem check_10541 : cell_10541.check = true := by
  decide +kernel

theorem check_10542 : cell_10542.check = true := by
  decide +kernel

theorem check_10543 : cell_10543.check = true := by
  decide +kernel

theorem check_10544 : cell_10544.check = true := by
  decide +kernel

theorem check_10545 : cell_10545.check = true := by
  decide +kernel

theorem check_10546 : cell_10546.check = true := by
  decide +kernel

theorem check_10547 : cell_10547.check = true := by
  decide +kernel

theorem check_10548 : cell_10548.check = true := by
  decide +kernel

theorem check_10549 : cell_10549.check = true := by
  decide +kernel

def cells : List Cell := [cell_10500, cell_10501, cell_10502, cell_10503, cell_10504, cell_10505, cell_10506, cell_10507, cell_10508, cell_10509, cell_10510, cell_10511, cell_10512, cell_10513, cell_10514, cell_10515, cell_10516, cell_10517, cell_10518, cell_10519, cell_10520, cell_10521, cell_10522, cell_10523, cell_10524, cell_10525, cell_10526, cell_10527, cell_10528, cell_10529, cell_10530, cell_10531, cell_10532, cell_10533, cell_10534, cell_10535, cell_10536, cell_10537, cell_10538, cell_10539, cell_10540, cell_10541, cell_10542, cell_10543, cell_10544, cell_10545, cell_10546, cell_10547, cell_10548, cell_10549]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10500, check_10501, check_10502, check_10503, check_10504, check_10505, check_10506, check_10507, check_10508, check_10509, check_10510, check_10511, check_10512, check_10513, check_10514, check_10515, check_10516, check_10517, check_10518, check_10519, check_10520, check_10521, check_10522, check_10523, check_10524, check_10525, check_10526, check_10527, check_10528, check_10529, check_10530, check_10531, check_10532, check_10533, check_10534, check_10535, check_10536, check_10537, check_10538, check_10539, check_10540, check_10541, check_10542, check_10543, check_10544, check_10545, check_10546, check_10547, check_10548, check_10549, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0210

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0210
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0210
open AnalyticBounds.ExpressionCertificate

theorem linked_10500 : Linked cell_10500 pieces := by
  link_source cell_10500 with piece_1162 using piece_1162_mem, ⟨piece_1047_mem, piece_1048_mem⟩

theorem linked_10501 : Linked cell_10501 pieces := by
  link_source cell_10501 with piece_1163 using piece_1163_mem, ⟨piece_1048_mem, piece_1049_mem⟩

theorem linked_10502 : Linked cell_10502 pieces := by
  link_source cell_10502 with piece_1163 using piece_1163_mem, ⟨piece_1047_mem, piece_1048_mem⟩

theorem linked_10503 : Linked cell_10503 pieces := by
  link_source cell_10503 with piece_1163 using piece_1163_mem, piece_1047_mem

theorem linked_10504 : Linked cell_10504 pieces := by
  link_source cell_10504 with piece_1163 using piece_1163_mem, ⟨piece_1046_mem, piece_1047_mem⟩

theorem linked_10505 : Linked cell_10505 pieces := by
  link_source cell_10505 with piece_1164 using piece_1164_mem, piece_1047_mem

theorem linked_10506 : Linked cell_10506 pieces := by
  link_source cell_10506 with piece_1164 using piece_1164_mem, ⟨piece_1046_mem, piece_1047_mem⟩

theorem linked_10507 : Linked cell_10507 pieces := by
  link_source cell_10507 with piece_1164 using piece_1164_mem, piece_1046_mem

theorem linked_10508 : Linked cell_10508 pieces := by
  link_source cell_10508 with piece_1164 using piece_1164_mem, ⟨piece_1045_mem, piece_1046_mem⟩

theorem linked_10509 : Linked cell_10509 pieces := by
  link_source cell_10509 with piece_1165 using piece_1165_mem, piece_1046_mem

theorem linked_10510 : Linked cell_10510 pieces := by
  link_source cell_10510 with piece_1165 using piece_1165_mem, ⟨piece_1045_mem, piece_1046_mem⟩

theorem linked_10511 : Linked cell_10511 pieces := by
  link_source cell_10511 with piece_1165 using piece_1165_mem, piece_1045_mem

theorem linked_10512 : Linked cell_10512 pieces := by
  link_source cell_10512 with piece_1165 using piece_1165_mem, ⟨piece_1044_mem, piece_1045_mem⟩

theorem linked_10513 : Linked cell_10513 pieces := by
  link_source cell_10513 with piece_1166 using piece_1166_mem, piece_1045_mem

theorem linked_10514 : Linked cell_10514 pieces := by
  link_source cell_10514 with piece_1166 using piece_1166_mem, ⟨piece_1044_mem, piece_1045_mem⟩

theorem linked_10515 : Linked cell_10515 pieces := by
  link_source cell_10515 with piece_1166 using piece_1166_mem, piece_1044_mem

theorem linked_10516 : Linked cell_10516 pieces := by
  link_source cell_10516 with piece_1166 using piece_1166_mem, ⟨piece_1043_mem, piece_1044_mem⟩

theorem linked_10517 : Linked cell_10517 pieces := by
  link_source cell_10517 with piece_1167 using piece_1167_mem, piece_1044_mem

theorem linked_10518 : Linked cell_10518 pieces := by
  link_source cell_10518 with piece_1167 using piece_1167_mem, ⟨piece_1043_mem, piece_1044_mem⟩

theorem linked_10519 : Linked cell_10519 pieces := by
  link_source cell_10519 with piece_1167 using piece_1167_mem, piece_1043_mem

theorem linked_10520 : Linked cell_10520 pieces := by
  link_source cell_10520 with piece_1167 using piece_1167_mem, ⟨piece_1042_mem, piece_1043_mem⟩

theorem linked_10521 : Linked cell_10521 pieces := by
  link_source cell_10521 with piece_1168 using piece_1168_mem, piece_1043_mem

theorem linked_10522 : Linked cell_10522 pieces := by
  link_source cell_10522 with piece_1168 using piece_1168_mem, ⟨piece_1042_mem, piece_1043_mem⟩

theorem linked_10523 : Linked cell_10523 pieces := by
  link_source cell_10523 with piece_1168 using piece_1168_mem, piece_1042_mem

theorem linked_10524 : Linked cell_10524 pieces := by
  link_source cell_10524 with piece_1168 using piece_1168_mem, ⟨piece_1041_mem, piece_1042_mem⟩

theorem linked_10525 : Linked cell_10525 pieces := by
  link_source cell_10525 with piece_1169 using piece_1169_mem, piece_1042_mem

theorem linked_10526 : Linked cell_10526 pieces := by
  link_source cell_10526 with piece_1169 using piece_1169_mem, piece_1042_mem

theorem linked_10527 : Linked cell_10527 pieces := by
  link_source cell_10527 with piece_1170 using piece_1170_mem, ⟨piece_1041_mem, piece_1042_mem⟩

theorem linked_10528 : Linked cell_10528 pieces := by
  link_source cell_10528 with piece_1170 using piece_1170_mem, piece_1041_mem

theorem linked_10529 : Linked cell_10529 pieces := by
  link_source cell_10529 with piece_1170 using piece_1170_mem, ⟨piece_1040_mem, piece_1041_mem⟩

theorem linked_10530 : Linked cell_10530 pieces := by
  link_source cell_10530 with piece_1171 using piece_1171_mem, piece_1041_mem

theorem linked_10531 : Linked cell_10531 pieces := by
  link_source cell_10531 with piece_1171 using piece_1171_mem, ⟨piece_1040_mem, piece_1041_mem⟩

theorem linked_10532 : Linked cell_10532 pieces := by
  link_source cell_10532 with piece_1171 using piece_1171_mem, piece_1040_mem

theorem linked_10533 : Linked cell_10533 pieces := by
  link_source cell_10533 with piece_1171 using piece_1171_mem, ⟨piece_1039_mem, piece_1040_mem⟩

theorem linked_10534 : Linked cell_10534 pieces := by
  link_source cell_10534 with piece_1172 using piece_1172_mem, piece_1040_mem

theorem linked_10535 : Linked cell_10535 pieces := by
  link_source cell_10535 with piece_1172 using piece_1172_mem, ⟨piece_1039_mem, piece_1040_mem⟩

theorem linked_10536 : Linked cell_10536 pieces := by
  link_source cell_10536 with piece_1172 using piece_1172_mem, piece_1039_mem

theorem linked_10537 : Linked cell_10537 pieces := by
  link_source cell_10537 with piece_1172 using piece_1172_mem, ⟨piece_1038_mem, piece_1039_mem⟩

theorem linked_10538 : Linked cell_10538 pieces := by
  link_source cell_10538 with piece_1173 using piece_1173_mem, piece_1039_mem

theorem linked_10539 : Linked cell_10539 pieces := by
  link_source cell_10539 with piece_1173 using piece_1173_mem, ⟨piece_1038_mem, piece_1039_mem⟩

theorem linked_10540 : Linked cell_10540 pieces := by
  link_source cell_10540 with piece_1173 using piece_1173_mem, piece_1038_mem

theorem linked_10541 : Linked cell_10541 pieces := by
  link_source cell_10541 with piece_1173 using piece_1173_mem, ⟨piece_1037_mem, piece_1038_mem⟩

theorem linked_10542 : Linked cell_10542 pieces := by
  link_source cell_10542 with piece_1174 using piece_1174_mem, piece_1038_mem

theorem linked_10543 : Linked cell_10543 pieces := by
  link_source cell_10543 with piece_1174 using piece_1174_mem, ⟨piece_1037_mem, piece_1038_mem⟩

theorem linked_10544 : Linked cell_10544 pieces := by
  link_source cell_10544 with piece_1174 using piece_1174_mem, ⟨piece_1036_mem, piece_1037_mem⟩

theorem linked_10545 : Linked cell_10545 pieces := by
  link_source cell_10545 with piece_1174 using piece_1174_mem, ⟨piece_1035_mem, piece_1036_mem⟩

theorem linked_10546 : Linked cell_10546 pieces := by
  link_source cell_10546 with piece_1175 using piece_1175_mem, ⟨piece_1036_mem, piece_1037_mem⟩

theorem linked_10547 : Linked cell_10547 pieces := by
  link_source cell_10547 with piece_1175 using piece_1175_mem, ⟨piece_1035_mem, piece_1036_mem⟩

theorem linked_10548 : Linked cell_10548 pieces := by
  link_source cell_10548 with piece_1175 using piece_1175_mem, piece_1035_mem

theorem linked_10549 : Linked cell_10549 pieces := by
  link_source cell_10549 with piece_1175 using piece_1175_mem, ⟨piece_1034_mem, piece_1035_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0210.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0210.cells,List.forall_mem_cons]
  exact ⟨linked_10500, linked_10501, linked_10502, linked_10503, linked_10504, linked_10505, linked_10506, linked_10507, linked_10508, linked_10509, linked_10510, linked_10511, linked_10512, linked_10513, linked_10514, linked_10515, linked_10516, linked_10517, linked_10518, linked_10519, linked_10520, linked_10521, linked_10522, linked_10523, linked_10524, linked_10525, linked_10526, linked_10527, linked_10528, linked_10529, linked_10530, linked_10531, linked_10532, linked_10533, linked_10534, linked_10535, linked_10536, linked_10537, linked_10538, linked_10539, linked_10540, linked_10541, linked_10542, linked_10543, linked_10544, linked_10545, linked_10546, linked_10547, linked_10548, linked_10549, by simp⟩

theorem covered : covers (12196875000000001 / 25000000000000000 : ℚ) (9880000000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0210.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0210
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0211
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(9880000000000001 / 20000000000000000 : ℚ), (9882500000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (62102541608001 / 100000000000000 : ℚ)
  w := (14700890451739 / 10000000000000 : ℚ)
  center := (9881250000000001 / 20000000000000000 : ℚ)
  supportValue := (1074520788307749 / 2500000000000000 : ℚ)
  supportSlope := (-2077722747311661 / 1000000000000000 : ℚ)
  oldCenter := (1074520788307749 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1176
  oldLo := (8540000000000001 / 20000000000000000 : ℚ)
  oldHi := (8550000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1030]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10550 : Cell := { cellDefaults with
  r := (62278874488127 / 100000000000000 : ℚ)
  w := (3680840071267 / 2500000000000 : ℚ)
  oldLo := (8590000000000001 / 20000000000000000 : ℚ)
  oldHi := (8600000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1035]
}

def cell_10551 : Cell := { cellDefaults with
  domain := ⟨(9882500000000001 / 20000000000000000 : ℚ), (9885000000000001 / 20000000000000000 : ℚ)⟩
  r := (62278874488127 / 100000000000000 : ℚ)
  w := (3680840071267 / 2500000000000 : ℚ)
  center := (9883750000000001 / 20000000000000000 : ℚ)
  supportValue := (10738718499826079 / 25000000000000000 : ℚ)
  supportSlope := (-8303158744841 / 4000000000000 : ℚ)
  oldCenter := (10738718499826079 / 25000000000000000 : ℚ)
  oldLo := (8580000000000001 / 20000000000000000 : ℚ)
  oldHi := (8600000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1034, piece_1035]
}

def cell_10552 : Cell := { cellDefaults with
  domain := ⟨(9885000000000001 / 20000000000000000 : ℚ), (9887500000000001 / 20000000000000000 : ℚ)⟩
  r := (62278874488127 / 100000000000000 : ℚ)
  w := (3680840071267 / 2500000000000 : ℚ)
  center := (9886250000000001 / 20000000000000000 : ℚ)
  supportValue := (670764600742251 / 1562500000000000 : ℚ)
  supportSlope := (-648194923579537 / 312500000000000 : ℚ)
  oldCenter := (670764600742251 / 1562500000000000 : ℚ)
  oldLo := (8580000000000001 / 20000000000000000 : ℚ)
  oldHi := (8590000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1034]
}

def cell_10553 : Cell := { cellDefaults with
  domain := ⟨(9887500000000001 / 20000000000000000 : ℚ), (9890000000000001 / 20000000000000000 : ℚ)⟩
  r := (62278874488127 / 100000000000000 : ℚ)
  w := (3680840071267 / 2500000000000 : ℚ)
  center := (9888750000000001 / 20000000000000000 : ℚ)
  supportValue := (4290302063668559 / 10000000000000000 : ℚ)
  supportSlope := (-1036182409554609 / 500000000000000 : ℚ)
  oldCenter := (4290302063668559 / 10000000000000000 : ℚ)
  oldLo := (8570000000000001 / 20000000000000000 : ℚ)
  oldHi := (8590000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1033, piece_1034]
}

def cell_10554 : Cell := { cellDefaults with
  domain := ⟨(9890000000000001 / 20000000000000000 : ℚ), (9892500000000001 / 20000000000000000 : ℚ)⟩
  r := (62243519383521 / 100000000000000 : ℚ)
  w := (14718847726571 / 10000000000000 : ℚ)
  center := (9891250000000001 / 20000000000000000 : ℚ)
  supportValue := (536641430713031 / 1250000000000000 : ℚ)
  supportSlope := (-2073215229396297 / 1000000000000000 : ℚ)
  oldCenter := (536641430713031 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1177
  oldLo := (8580000000000001 / 20000000000000000 : ℚ)
  oldHi := (8590000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1034]
}

def cell_10555 : Cell := { cellDefaults with
  domain := ⟨(9892500000000001 / 20000000000000000 : ℚ), (9895000000000001 / 20000000000000000 : ℚ)⟩
  r := (62243519383521 / 100000000000000 : ℚ)
  w := (14718847726571 / 10000000000000 : ℚ)
  center := (9893750000000001 / 20000000000000000 : ℚ)
  supportValue := (1072635330958013 / 2500000000000000 : ℚ)
  supportSlope := (-2071266975923969 / 1000000000000000 : ℚ)
  oldCenter := (1072635330958013 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1177
  oldLo := (8570000000000001 / 20000000000000000 : ℚ)
  oldHi := (8590000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1033, piece_1034]
}

def cell_10556 : Cell := { cellDefaults with
  domain := ⟨(9895000000000001 / 20000000000000000 : ℚ), (9897500000000001 / 20000000000000000 : ℚ)⟩
  r := (62243519383521 / 100000000000000 : ℚ)
  w := (14718847726571 / 10000000000000 : ℚ)
  center := (9896250000000001 / 20000000000000000 : ℚ)
  supportValue := (4287953016913241 / 10000000000000000 : ℚ)
  supportSlope := (-517432282869601 / 250000000000000 : ℚ)
  oldCenter := (4287953016913241 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1177
  oldLo := (8570000000000001 / 20000000000000000 : ℚ)
  oldHi := (8580000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1033]
}

def cell_10557 : Cell := { cellDefaults with
  domain := ⟨(9897500000000001 / 20000000000000000 : ℚ), (9900000000000001 / 20000000000000000 : ℚ)⟩
  r := (62243519383521 / 100000000000000 : ℚ)
  w := (14718847726571 / 10000000000000 : ℚ)
  center := (9898750000000001 / 20000000000000000 : ℚ)
  supportValue := (2142683625667451 / 5000000000000000 : ℚ)
  supportSlope := (-5169627006222921 / 2500000000000000 : ℚ)
  oldCenter := (2142683625667451 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1177
  oldLo := (8560000000000001 / 20000000000000000 : ℚ)
  oldHi := (8580000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1032, piece_1033]
}

def cell_10558 : Cell := { cellDefaults with
  domain := ⟨(9900000000000001 / 20000000000000000 : ℚ), (9902500000000001 / 20000000000000000 : ℚ)⟩
  r := (62208208142257 / 100000000000000 : ℚ)
  w := (14714344492913 / 10000000000000 : ℚ)
  center := (9901250000000001 / 20000000000000000 : ℚ)
  supportValue := (2144095318529339 / 5000000000000000 : ℚ)
  supportSlope := (-1034361904280079 / 500000000000000 : ℚ)
  oldCenter := (2144095318529339 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1178
  oldLo := (8570000000000001 / 20000000000000000 : ℚ)
  oldHi := (8580000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1033]
}

def cell_10559 : Cell := { cellDefaults with
  domain := ⟨(9902500000000001 / 20000000000000000 : ℚ), (9905000000000001 / 20000000000000000 : ℚ)⟩
  r := (62208208142257 / 100000000000000 : ℚ)
  w := (14714344492913 / 10000000000000 : ℚ)
  center := (9903750000000001 / 20000000000000000 : ℚ)
  supportValue := (4285606126690441 / 10000000000000000 : ℚ)
  supportSlope := (-20667557370996903 / 10000000000000000 : ℚ)
  oldCenter := (4285606126690441 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1178
  oldLo := (8560000000000001 / 20000000000000000 : ℚ)
  oldHi := (8580000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1032, piece_1033]
}

def cell_10560 : Cell := { cellDefaults with
  domain := ⟨(9905000000000001 / 20000000000000000 : ℚ), (9907500000000001 / 20000000000000000 : ℚ)⟩
  r := (62208208142257 / 100000000000000 : ℚ)
  w := (14714344492913 / 10000000000000 : ℚ)
  center := (9906250000000001 / 20000000000000000 : ℚ)
  supportValue := (1070755863404807 / 2500000000000000 : ℚ)
  supportSlope := (-5163125984404271 / 2500000000000000 : ℚ)
  oldCenter := (1070755863404807 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1178
  oldLo := (8560000000000001 / 20000000000000000 : ℚ)
  oldHi := (8570000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1032]
}

def cell_10561 : Cell := { cellDefaults with
  domain := ⟨(9907500000000001 / 20000000000000000 : ℚ), (9910000000000001 / 20000000000000000 : ℚ)⟩
  r := (62208208142257 / 100000000000000 : ℚ)
  w := (14714344492913 / 10000000000000 : ℚ)
  center := (9908750000000001 / 20000000000000000 : ℚ)
  supportValue := (10701108209799351 / 25000000000000000 : ℚ)
  supportSlope := (-10316738720854701 / 5000000000000000 : ℚ)
  oldCenter := (10701108209799351 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1178
  oldLo := (8550000000000001 / 20000000000000000 : ℚ)
  oldHi := (8570000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1031, piece_1032]
}

def cell_10562 : Cell := { cellDefaults with
  domain := ⟨(9910000000000001 / 20000000000000000 : ℚ), (9912500000000001 / 20000000000000000 : ℚ)⟩
  r := (15543235250909 / 25000000000000 : ℚ)
  w := (3677462706381 / 2500000000000 : ℚ)
  center := (9911250000000001 / 20000000000000000 : ℚ)
  supportValue := (4283260579565419 / 10000000000000000 : ℚ)
  supportSlope := (-516062054127131 / 250000000000000 : ℚ)
  oldCenter := (4283260579565419 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1179
  oldLo := (8560000000000001 / 20000000000000000 : ℚ)
  oldHi := (8570000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1032]
}

def cell_10563 : Cell := { cellDefaults with
  domain := ⟨(9912500000000001 / 20000000000000000 : ℚ), (9915000000000001 / 20000000000000000 : ℚ)⟩
  r := (15543235250909 / 25000000000000 : ℚ)
  w := (3677462706381 / 2500000000000 : ℚ)
  center := (9913750000000001 / 20000000000000000 : ℚ)
  supportValue := (535085207643497 / 1250000000000000 : ℚ)
  supportSlope := (-2062255439948757 / 1000000000000000 : ℚ)
  oldCenter := (535085207643497 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1179
  oldLo := (8550000000000001 / 20000000000000000 : ℚ)
  oldHi := (8570000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1031, piece_1032]
}

def cell_10564 : Cell := { cellDefaults with
  domain := ⟨(9915000000000001 / 20000000000000000 : ℚ), (9917500000000001 / 20000000000000000 : ℚ)⟩
  r := (15543235250909 / 25000000000000 : ℚ)
  w := (3677462706381 / 2500000000000 : ℚ)
  center := (9916250000000001 / 20000000000000000 : ℚ)
  supportValue := (855620921657919 / 2000000000000000 : ℚ)
  supportSlope := (-20607873690625667 / 10000000000000000 : ℚ)
  oldCenter := (855620921657919 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1179
  oldLo := (8550000000000001 / 20000000000000000 : ℚ)
  oldHi := (8560000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1031]
}

def cell_10565 : Cell := { cellDefaults with
  domain := ⟨(9917500000000001 / 20000000000000000 : ℚ), (9920000000000001 / 20000000000000000 : ℚ)⟩
  r := (15543235250909 / 25000000000000 : ℚ)
  w := (3677462706381 / 2500000000000 : ℚ)
  center := (9918750000000001 / 20000000000000000 : ℚ)
  supportValue := (34204240114007 / 80000000000000 : ℚ)
  supportSlope := (-10294283455714037 / 5000000000000000 : ℚ)
  oldCenter := (34204240114007 / 80000000000000 : ℚ)
  newCoefficients := coefficients_1179
  oldHi := (8560000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1030, piece_1031]
}

def cell_10566 : Cell := { cellDefaults with
  domain := ⟨(9920000000000001 / 20000000000000000 : ℚ), (9922500000000001 / 20000000000000000 : ℚ)⟩
  r := (6213771938159 / 10000000000000 : ℚ)
  w := (14705365733557 / 10000000000000 : ℚ)
  center := (9921250000000001 / 20000000000000000 : ℚ)
  supportValue := (4278341344996359 / 10000000000000000 : ℚ)
  supportSlope := (-514947082188133 / 250000000000000 : ℚ)
  oldCenter := (4278341344996359 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1180
  oldLo := (8550000000000001 / 20000000000000000 : ℚ)
  oldHi := (8560000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1031]
}

def cell_10567 : Cell := { cellDefaults with
  domain := ⟨(9922500000000001 / 20000000000000000 : ℚ), (9925000000000001 / 20000000000000000 : ℚ)⟩
  r := (6213771938159 / 10000000000000 : ℚ)
  w := (14705365733557 / 10000000000000 : ℚ)
  center := (9923750000000001 / 20000000000000000 : ℚ)
  supportValue := (10689419995807141 / 25000000000000000 : ℚ)
  supportSlope := (-10288835753642367 / 5000000000000000 : ℚ)
  oldCenter := (10689419995807141 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1180
  oldHi := (8560000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1030, piece_1031]
}

def cell_10568 : Cell := { cellDefaults with
  domain := ⟨(9925000000000001 / 20000000000000000 : ℚ), (9927500000000001 / 20000000000000000 : ℚ)⟩
  r := (6213771938159 / 10000000000000 : ℚ)
  w := (14705365733557 / 10000000000000 : ℚ)
  center := (9926250000000001 / 20000000000000000 : ℚ)
  supportValue := (21365982753321247 / 50000000000000000 : ℚ)
  supportSlope := (-822536217847869 / 400000000000000 : ℚ)
  oldCenter := (21365982753321247 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1180
  oldPieces := [piece_1030]
}

def cell_10569 : Cell := { cellDefaults with
  domain := ⟨(9927500000000001 / 20000000000000000 : ℚ), (9930000000000001 / 20000000000000000 : ℚ)⟩
  r := (6213771938159 / 10000000000000 : ℚ)
  w := (14705365733557 / 10000000000000 : ℚ)
  center := (9928750000000001 / 20000000000000000 : ℚ)
  supportValue := (333642774416857 / 781250000000000 : ℚ)
  supportSlope := (-2567970765934291 / 1250000000000000 : ℚ)
  oldCenter := (333642774416857 / 781250000000000 : ℚ)
  newCoefficients := coefficients_1180
  oldLo := (8530000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1029, piece_1030]
}

def cell_10570 : Cell := { cellDefaults with
  domain := ⟨(9930000000000001 / 20000000000000000 : ℚ), (19864078212290503 / 40000000000000000 : ℚ)⟩
  center := (7944815642458101 / 16000000000000000 : ℚ)
  supportValue := (2136833282684363 / 5000000000000000 : ℚ)
  supportSlope := (-20555494535476653 / 10000000000000000 : ℚ)
  oldCenter := (2136833282684363 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1181
  oldPieces := [piece_1030]
}

def cell_10571 : Cell := { cellDefaults with
  domain := ⟨(19864078212290503 / 40000000000000000 : ℚ), (4967039106145251 / 10000000000000000 : ℚ)⟩
  center := (39732234636871507 / 80000000000000000 : ℚ)
  supportValue := (42715717472133213 / 100000000000000000 : ℚ)
  supportSlope := (-20537375273139 / 10000000000000 : ℚ)
  oldCenter := (42715717472133213 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1181
  oldPieces := [piece_1030]
}

def cell_10572 : Cell := { cellDefaults with
  domain := ⟨(4967039106145251 / 10000000000000000 : ℚ), (9935000000000001 / 20000000000000000 : ℚ)⟩
  center := (19869078212290503 / 40000000000000000 : ℚ)
  supportValue := (2135025577092761 / 5000000000000000 : ℚ)
  supportSlope := (-4105746739178537 / 2000000000000000 : ℚ)
  oldCenter := (2135025577092761 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1182
  oldLo := (8530000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1029, piece_1030]
}

def cell_10573 : Cell := { cellDefaults with
  domain := ⟨(9935000000000001 / 20000000000000000 : ℚ), (9937500000000001 / 20000000000000000 : ℚ)⟩
  center := (9936250000000001 / 20000000000000000 : ℚ)
  supportValue := (5335373837832233 / 12500000000000000 : ℚ)
  supportSlope := (-5129773424936701 / 2500000000000000 : ℚ)
  oldCenter := (5335373837832233 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1182
  oldLo := (8530000000000001 / 20000000000000000 : ℚ)
  oldHi := (8540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1029]
}

def cell_10574 : Cell := { cellDefaults with
  domain := ⟨(9937500000000001 / 20000000000000000 : ℚ), (9940000000000001 / 20000000000000000 : ℚ)⟩
  center := (9938750000000001 / 20000000000000000 : ℚ)
  supportValue := (853147113698127 / 2000000000000000 : ℚ)
  supportSlope := (-20499075360707053 / 10000000000000000 : ℚ)
  oldCenter := (853147113698127 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1182
  oldLo := (8520000000000001 / 20000000000000000 : ℚ)
  oldHi := (8540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1028, piece_1029]
}

def cell_10575 : Cell := { cellDefaults with
  domain := ⟨(9940000000000001 / 20000000000000000 : ℚ), (9942500000000001 / 20000000000000000 : ℚ)⟩
  r := (62067407927933 / 100000000000000 : ℚ)
  w := (3674106066143 / 2500000000000 : ℚ)
  center := (9941250000000001 / 20000000000000000 : ℚ)
  supportValue := (4268534835716759 / 10000000000000000 : ℚ)
  supportSlope := (-5127291325477401 / 2500000000000000 : ℚ)
  oldCenter := (4268534835716759 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1183
  oldLo := (8530000000000001 / 20000000000000000 : ℚ)
  oldHi := (8540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1029]
}

def cell_10576 : Cell := { cellDefaults with
  domain := ⟨(9942500000000001 / 20000000000000000 : ℚ), (9945000000000001 / 20000000000000000 : ℚ)⟩
  r := (62067407927933 / 100000000000000 : ℚ)
  w := (3674106066143 / 2500000000000 : ℚ)
  center := (9943750000000001 / 20000000000000000 : ℚ)
  supportValue := (10664931433910671 / 25000000000000000 : ℚ)
  supportSlope := (-640257308707759 / 312500000000000 : ℚ)
  oldCenter := (10664931433910671 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1183
  oldLo := (8520000000000001 / 20000000000000000 : ℚ)
  oldHi := (8540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1028, piece_1029]
}

def cell_10577 : Cell := { cellDefaults with
  domain := ⟨(9945000000000001 / 20000000000000000 : ℚ), (9947500000000001 / 20000000000000000 : ℚ)⟩
  r := (62067407927933 / 100000000000000 : ℚ)
  w := (3674106066143 / 2500000000000 : ℚ)
  center := (9946250000000001 / 20000000000000000 : ℚ)
  supportValue := (42634122951405357 / 100000000000000000 : ℚ)
  supportSlope := (-20474939044126117 / 10000000000000000 : ℚ)
  oldCenter := (42634122951405357 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1183
  oldLo := (8520000000000001 / 20000000000000000 : ℚ)
  oldHi := (8530000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1028]
}

def cell_10578 : Cell := { cellDefaults with
  domain := ⟨(9947500000000001 / 20000000000000000 : ℚ), (9950000000000001 / 20000000000000000 : ℚ)⟩
  r := (62067407927933 / 100000000000000 : ℚ)
  w := (3674106066143 / 2500000000000 : ℚ)
  center := (9948750000000001 / 20000000000000000 : ℚ)
  supportValue := (4260854310061881 / 10000000000000000 : ℚ)
  supportSlope := (-2556811788118063 / 1250000000000000 : ℚ)
  oldCenter := (4260854310061881 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1183
  oldLo := (10637500000000001 / 25000000000000000 : ℚ)
  oldHi := (8530000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1027, piece_1028]
}

def cell_10579 : Cell := { cellDefaults with
  domain := ⟨(9950000000000001 / 20000000000000000 : ℚ), (9952500000000001 / 20000000000000000 : ℚ)⟩
  r := (62032318254987 / 100000000000000 : ℚ)
  w := (3672991518969 / 2500000000000 : ℚ)
  center := (9951250000000001 / 20000000000000000 : ℚ)
  supportValue := (10659119910790911 / 25000000000000000 : ℚ)
  supportSlope := (-5116261036208769 / 2500000000000000 : ℚ)
  oldCenter := (10659119910790911 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1184
  oldLo := (8520000000000001 / 20000000000000000 : ℚ)
  oldHi := (8530000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1028]
}

def cell_10580 : Cell := { cellDefaults with
  domain := ⟨(9952500000000001 / 20000000000000000 : ℚ), (9955000000000001 / 20000000000000000 : ℚ)⟩
  r := (62032318254987 / 100000000000000 : ℚ)
  w := (3672991518969 / 2500000000000 : ℚ)
  center := (9953750000000001 / 20000000000000000 : ℚ)
  supportValue := (4261091214678853 / 10000000000000000 : ℚ)
  supportSlope := (-2044368075377001 / 1000000000000000 : ℚ)
  oldCenter := (4261091214678853 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1184
  oldLo := (10637500000000001 / 25000000000000000 : ℚ)
  oldHi := (8530000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1027, piece_1028]
}

def cell_10581 : Cell := { cellDefaults with
  domain := ⟨(9955000000000001 / 20000000000000000 : ℚ), (9957500000000001 / 20000000000000000 : ℚ)⟩
  r := (62032318254987 / 100000000000000 : ℚ)
  w := (3672991518969 / 2500000000000 : ℚ)
  center := (9956250000000001 / 20000000000000000 : ℚ)
  supportValue := (42585365001656567 / 100000000000000000 : ℚ)
  supportSlope := (-4086188782441269 / 2000000000000000 : ℚ)
  oldCenter := (42585365001656567 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1184
  oldLo := (10637500000000001 / 25000000000000000 : ℚ)
  oldHi := (8520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1027]
}

def cell_10582 : Cell := { cellDefaults with
  domain := ⟨(9957500000000001 / 20000000000000000 : ℚ), (9960000000000001 / 20000000000000000 : ℚ)⟩
  r := (62032318254987 / 100000000000000 : ℚ)
  w := (3672991518969 / 2500000000000 : ℚ)
  center := (9958750000000001 / 20000000000000000 : ℚ)
  supportValue := (4255984011825829 / 10000000000000000 : ℚ)
  supportSlope := (-204100235395277 / 100000000000000 : ℚ)
  oldCenter := (4255984011825829 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1184
  oldLo := (10625000000000001 / 25000000000000000 : ℚ)
  oldHi := (8520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1026, piece_1027]
}

def cell_10583 : Cell := { cellDefaults with
  domain := ⟨(9960000000000001 / 20000000000000000 : ℚ), (9962500000000001 / 20000000000000000 : ℚ)⟩
  r := (30998636605501 / 50000000000000 : ℚ)
  w := (3671879467199 / 2500000000000 : ℚ)
  center := (9961250000000001 / 20000000000000000 : ℚ)
  supportValue := (425877141642659 / 1000000000000000 : ℚ)
  supportSlope := (-510522607592101 / 250000000000000 : ℚ)
  oldCenter := (425877141642659 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1185
  oldLo := (10637500000000001 / 25000000000000000 : ℚ)
  oldHi := (8530000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1027, piece_1028]
}

def cell_10584 : Cell := { cellDefaults with
  domain := ⟨(9962500000000001 / 20000000000000000 : ℚ), (9965000000000001 / 20000000000000000 : ℚ)⟩
  r := (30998636605501 / 50000000000000 : ℚ)
  w := (3671879467199 / 2500000000000 : ℚ)
  center := (9963750000000001 / 20000000000000000 : ℚ)
  supportValue := (21281100799586153 / 50000000000000000 : ℚ)
  supportSlope := (-509980895363471 / 250000000000000 : ℚ)
  oldCenter := (21281100799586153 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1185
  oldLo := (10625000000000001 / 25000000000000000 : ℚ)
  oldHi := (8520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1026, piece_1027]
}

def cell_10585 : Cell := { cellDefaults with
  domain := ⟨(9965000000000001 / 20000000000000000 : ℚ), (9967500000000001 / 20000000000000000 : ℚ)⟩
  r := (30998636605501 / 50000000000000 : ℚ)
  w := (3671879467199 / 2500000000000 : ℚ)
  center := (9966250000000001 / 20000000000000000 : ℚ)
  supportValue := (10634177489549479 / 25000000000000000 : ℚ)
  supportSlope := (-1019355169187719 / 500000000000000 : ℚ)
  oldCenter := (10634177489549479 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1185
  oldLo := (10625000000000001 / 25000000000000000 : ℚ)
  oldHi := (10637500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1026]
}

def cell_10586 : Cell := { cellDefaults with
  domain := ⟨(9967500000000001 / 20000000000000000 : ℚ), (9970000000000001 / 20000000000000000 : ℚ)⟩
  r := (30998636605501 / 50000000000000 : ℚ)
  w := (3671879467199 / 2500000000000 : ℚ)
  center := (9968750000000001 / 20000000000000000 : ℚ)
  supportValue := (8502247969795369 / 20000000000000000 : ℚ)
  supportSlope := (-2036565984232297 / 1000000000000000 : ℚ)
  oldCenter := (8502247969795369 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1185
  oldLo := (424804469273743 / 1000000000000000 : ℚ)
  oldHi := (10637500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1025, piece_1026]
}

def cell_10587 : Cell := { cellDefaults with
  domain := ⟨(9970000000000001 / 20000000000000000 : ℚ), (9972500000000001 / 20000000000000000 : ℚ)⟩
  r := (30981135889467 / 50000000000000 : ℚ)
  w := (7341539343999 / 5000000000000 : ℚ)
  center := (9971250000000001 / 20000000000000000 : ℚ)
  supportValue := (4253905535657631 / 10000000000000000 : ℚ)
  supportSlope := (-2037656953739919 / 1000000000000000 : ℚ)
  oldCenter := (4253905535657631 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1186
  oldLo := (10625000000000001 / 25000000000000000 : ℚ)
  oldHi := (8520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1026, piece_1027]
}

def cell_10588 : Cell := { cellDefaults with
  domain := ⟨(9972500000000001 / 20000000000000000 : ℚ), (9975000000000001 / 20000000000000000 : ℚ)⟩
  r := (30981135889467 / 50000000000000 : ℚ)
  w := (7341539343999 / 5000000000000 : ℚ)
  center := (9973750000000001 / 20000000000000000 : ℚ)
  supportValue := (4251359752664779 / 10000000000000000 : ℚ)
  supportSlope := (-2035523492743607 / 1000000000000000 : ℚ)
  oldCenter := (4251359752664779 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1186
  oldLo := (10625000000000001 / 25000000000000000 : ℚ)
  oldHi := (10637500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1026]
}

def cell_10589 : Cell := { cellDefaults with
  domain := ⟨(9975000000000001 / 20000000000000000 : ℚ), (9977500000000001 / 20000000000000000 : ℚ)⟩
  r := (30981135889467 / 50000000000000 : ℚ)
  w := (7341539343999 / 5000000000000 : ℚ)
  center := (9976250000000001 / 20000000000000000 : ℚ)
  supportValue := (2124408062711503 / 5000000000000000 : ℚ)
  supportSlope := (-4068617043179401 / 2000000000000000 : ℚ)
  oldCenter := (2124408062711503 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1186
  oldLo := (10612500000000001 / 25000000000000000 : ℚ)
  oldHi := (10637500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1024, piece_1025, piece_1026]
}

def cell_10590 : Cell := { cellDefaults with
  domain := ⟨(9977500000000001 / 20000000000000000 : ℚ), (9980000000000001 / 20000000000000000 : ℚ)⟩
  r := (30981135889467 / 50000000000000 : ℚ)
  w := (7341539343999 / 5000000000000 : ℚ)
  center := (9978750000000001 / 20000000000000000 : ℚ)
  supportValue := (424627457194563 / 1000000000000000 : ℚ)
  supportSlope := (-20321409929104917 / 10000000000000000 : ℚ)
  oldCenter := (424627457194563 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1186
  oldLo := (10612500000000001 / 25000000000000000 : ℚ)
  oldHi := (424804469273743 / 1000000000000000 : ℚ)
  oldPieces := [piece_1024]
}

def cell_10591 : Cell := { cellDefaults with
  domain := ⟨(9980000000000001 / 20000000000000000 : ℚ), (199650000000000021 / 400000000000000000 : ℚ)⟩
  r := (61927313164149 / 100000000000000 : ℚ)
  w := (14678648352953 / 10000000000000 : ℚ)
  center := (399250000000000041 / 800000000000000000 : ℚ)
  supportValue := (531131302110717 / 1250000000000000 : ℚ)
  supportSlope := (-10166172015777317 / 5000000000000000 : ℚ)
  oldCenter := (531131302110717 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1187
  oldLo := (10612500000000001 / 25000000000000000 : ℚ)
  oldHi := (10637500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1024, piece_1025, piece_1026]
}

def cell_10592 : Cell := { cellDefaults with
  domain := ⟨(199650000000000021 / 400000000000000000 : ℚ), (99850000000000011 / 200000000000000000 : ℚ)⟩
  r := (61927313164149 / 100000000000000 : ℚ)
  w := (14678648352953 / 10000000000000 : ℚ)
  center := (399350000000000043 / 800000000000000000 : ℚ)
  supportValue := (4246510087400111 / 10000000000000000 : ℚ)
  supportSlope := (-406232588761127 / 200000000000000 : ℚ)
  oldCenter := (4246510087400111 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1187
  oldLo := (10612500000000001 / 25000000000000000 : ℚ)
  oldHi := (424804469273743 / 1000000000000000 : ℚ)
  oldPieces := [piece_1024]
}

def cell_10593 : Cell := { cellDefaults with
  domain := ⟨(99850000000000011 / 200000000000000000 : ℚ), (199750000000000023 / 400000000000000000 : ℚ)⟩
  r := (61927313164149 / 100000000000000 : ℚ)
  w := (14678648352953 / 10000000000000 : ℚ)
  center := (79890000000000009 / 160000000000000000 : ℚ)
  supportValue := (42439719831251127 / 100000000000000000 : ℚ)
  supportSlope := (-10149471393136953 / 5000000000000000 : ℚ)
  oldCenter := (42439719831251127 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1187
  oldLo := (10600000000000001 / 25000000000000000 : ℚ)
  oldHi := (424804469273743 / 1000000000000000 : ℚ)
  oldPieces := [piece_1023, piece_1024]
}

def cell_10594 : Cell := { cellDefaults with
  domain := ⟨(199750000000000023 / 400000000000000000 : ℚ), (24975000000000003 / 50000000000000000 : ℚ)⟩
  r := (61927313164149 / 100000000000000 : ℚ)
  w := (14678648352953 / 10000000000000 : ℚ)
  center := (399550000000000047 / 800000000000000000 : ℚ)
  supportValue := (1060358966858117 / 2500000000000000 : ℚ)
  supportSlope := (-1013896425612317 / 500000000000000 : ℚ)
  oldCenter := (1060358966858117 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1187
  oldLo := (10600000000000001 / 25000000000000000 : ℚ)
  oldHi := (10612500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1023]
}

def cell_10595 : Cell := { cellDefaults with
  domain := ⟨(24975000000000003 / 50000000000000000 : ℚ), (99925000000000009 / 200000000000000000 : ℚ)⟩
  r := (12378479871101 / 20000000000000 : ℚ)
  w := (14674226609981 / 10000000000000 : ℚ)
  center := (199825000000000021 / 400000000000000000 : ℚ)
  supportValue := (1697682340977553 / 4000000000000000 : ℚ)
  supportSlope := (-1014411431851003 / 500000000000000 : ℚ)
  oldCenter := (1697682340977553 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1188
  oldLo := (10600000000000001 / 25000000000000000 : ℚ)
  oldHi := (424804469273743 / 1000000000000000 : ℚ)
  oldPieces := [piece_1023, piece_1024]
}

def cell_10596 : Cell := { cellDefaults with
  domain := ⟨(99925000000000009 / 200000000000000000 : ℚ), (49975000000000003 / 100000000000000000 : ℚ)⟩
  r := (12378479871101 / 20000000000000 : ℚ)
  w := (14674226609981 / 10000000000000 : ℚ)
  center := (39975000000000003 / 80000000000000000 : ℚ)
  supportValue := (10604177392182669 / 25000000000000000 : ℚ)
  supportSlope := (-10134089312324839 / 5000000000000000 : ℚ)
  oldCenter := (10604177392182669 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1188
  oldLo := (10600000000000001 / 25000000000000000 : ℚ)
  oldHi := (10612500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1023]
}

def cell_10597 : Cell := { cellDefaults with
  domain := ⟨(49975000000000003 / 100000000000000000 : ℚ), (99975000000000003 / 200000000000000000 : ℚ)⟩
  r := (12378479871101 / 20000000000000 : ℚ)
  w := (14674226609981 / 10000000000000 : ℚ)
  center := (199925000000000009 / 400000000000000000 : ℚ)
  supportValue := (847827672480251 / 2000000000000000 : ℚ)
  supportSlope := (-2025490618817537 / 1000000000000000 : ℚ)
  oldCenter := (847827672480251 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1188
  oldLo := (10587500000000001 / 25000000000000000 : ℚ)
  oldHi := (10612500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1022, piece_1023]
}

def cell_10598 : Cell := { cellDefaults with
  domain := ⟨(99975000000000003 / 200000000000000000 : ℚ), (1 / 2 : ℚ)⟩
  r := (12378479871101 / 20000000000000 : ℚ)
  w := (14674226609981 / 10000000000000 : ℚ)
  center := (199975000000000003 / 400000000000000000 : ℚ)
  supportValue := (8473215330057261 / 20000000000000000 : ℚ)
  supportSlope := (-20234601935602763 / 10000000000000000 : ℚ)
  oldCenter := (8473215330057261 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1188
  oldLo := (10587500000000001 / 25000000000000000 : ℚ)
  oldHi := (10600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1022]
}

def cell_10599 : Cell := { cellDefaults with
  domain := ⟨(1 / 2 : ℚ), (100024999999999997 / 200000000000000000 : ℚ)⟩
  r := (61857529035433 / 100000000000000 : ℚ)
  w := (14669814073461 / 10000000000000 : ℚ)
  center := (200024999999999997 / 400000000000000000 : ℚ)
  supportValue := (4239371771535067 / 10000000000000000 : ℚ)
  supportSlope := (-4048843699749713 / 2000000000000000 : ℚ)
  oldCenter := (4239371771535067 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1189
  oldLo := (10587500000000001 / 25000000000000000 : ℚ)
  oldHi := (10612500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1022, piece_1023]
}

theorem check_10550 : cell_10550.check = true := by
  decide +kernel

theorem check_10551 : cell_10551.check = true := by
  decide +kernel

theorem check_10552 : cell_10552.check = true := by
  decide +kernel

theorem check_10553 : cell_10553.check = true := by
  decide +kernel

theorem check_10554 : cell_10554.check = true := by
  decide +kernel

theorem check_10555 : cell_10555.check = true := by
  decide +kernel

theorem check_10556 : cell_10556.check = true := by
  decide +kernel

theorem check_10557 : cell_10557.check = true := by
  decide +kernel

theorem check_10558 : cell_10558.check = true := by
  decide +kernel

theorem check_10559 : cell_10559.check = true := by
  decide +kernel

theorem check_10560 : cell_10560.check = true := by
  decide +kernel

theorem check_10561 : cell_10561.check = true := by
  decide +kernel

theorem check_10562 : cell_10562.check = true := by
  decide +kernel

theorem check_10563 : cell_10563.check = true := by
  decide +kernel

theorem check_10564 : cell_10564.check = true := by
  decide +kernel

theorem check_10565 : cell_10565.check = true := by
  decide +kernel

theorem check_10566 : cell_10566.check = true := by
  decide +kernel

theorem check_10567 : cell_10567.check = true := by
  decide +kernel

theorem check_10568 : cell_10568.check = true := by
  decide +kernel

theorem check_10569 : cell_10569.check = true := by
  decide +kernel

theorem check_10570 : cell_10570.check = true := by
  decide +kernel

theorem check_10571 : cell_10571.check = true := by
  decide +kernel

theorem check_10572 : cell_10572.check = true := by
  decide +kernel

theorem check_10573 : cell_10573.check = true := by
  decide +kernel

theorem check_10574 : cell_10574.check = true := by
  decide +kernel

theorem check_10575 : cell_10575.check = true := by
  decide +kernel

theorem check_10576 : cell_10576.check = true := by
  decide +kernel

theorem check_10577 : cell_10577.check = true := by
  decide +kernel

theorem check_10578 : cell_10578.check = true := by
  decide +kernel

theorem check_10579 : cell_10579.check = true := by
  decide +kernel

theorem check_10580 : cell_10580.check = true := by
  decide +kernel

theorem check_10581 : cell_10581.check = true := by
  decide +kernel

theorem check_10582 : cell_10582.check = true := by
  decide +kernel

theorem check_10583 : cell_10583.check = true := by
  decide +kernel

theorem check_10584 : cell_10584.check = true := by
  decide +kernel

theorem check_10585 : cell_10585.check = true := by
  decide +kernel

theorem check_10586 : cell_10586.check = true := by
  decide +kernel

theorem check_10587 : cell_10587.check = true := by
  decide +kernel

theorem check_10588 : cell_10588.check = true := by
  decide +kernel

theorem check_10589 : cell_10589.check = true := by
  decide +kernel

theorem check_10590 : cell_10590.check = true := by
  decide +kernel

theorem check_10591 : cell_10591.check = true := by
  decide +kernel

theorem check_10592 : cell_10592.check = true := by
  decide +kernel

theorem check_10593 : cell_10593.check = true := by
  decide +kernel

theorem check_10594 : cell_10594.check = true := by
  decide +kernel

theorem check_10595 : cell_10595.check = true := by
  decide +kernel

theorem check_10596 : cell_10596.check = true := by
  decide +kernel

theorem check_10597 : cell_10597.check = true := by
  decide +kernel

theorem check_10598 : cell_10598.check = true := by
  decide +kernel

theorem check_10599 : cell_10599.check = true := by
  decide +kernel

def cells : List Cell := [cell_10550, cell_10551, cell_10552, cell_10553, cell_10554, cell_10555, cell_10556, cell_10557, cell_10558, cell_10559, cell_10560, cell_10561, cell_10562, cell_10563, cell_10564, cell_10565, cell_10566, cell_10567, cell_10568, cell_10569, cell_10570, cell_10571, cell_10572, cell_10573, cell_10574, cell_10575, cell_10576, cell_10577, cell_10578, cell_10579, cell_10580, cell_10581, cell_10582, cell_10583, cell_10584, cell_10585, cell_10586, cell_10587, cell_10588, cell_10589, cell_10590, cell_10591, cell_10592, cell_10593, cell_10594, cell_10595, cell_10596, cell_10597, cell_10598, cell_10599]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10550, check_10551, check_10552, check_10553, check_10554, check_10555, check_10556, check_10557, check_10558, check_10559, check_10560, check_10561, check_10562, check_10563, check_10564, check_10565, check_10566, check_10567, check_10568, check_10569, check_10570, check_10571, check_10572, check_10573, check_10574, check_10575, check_10576, check_10577, check_10578, check_10579, check_10580, check_10581, check_10582, check_10583, check_10584, check_10585, check_10586, check_10587, check_10588, check_10589, check_10590, check_10591, check_10592, check_10593, check_10594, check_10595, check_10596, check_10597, check_10598, check_10599, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0211

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0211
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0211
open AnalyticBounds.ExpressionCertificate

theorem linked_10550 : Linked cell_10550 pieces := by
  link_source cell_10550 with piece_1176 using piece_1176_mem, piece_1035_mem

theorem linked_10551 : Linked cell_10551 pieces := by
  link_source cell_10551 with piece_1176 using piece_1176_mem, ⟨piece_1034_mem, piece_1035_mem⟩

theorem linked_10552 : Linked cell_10552 pieces := by
  link_source cell_10552 with piece_1176 using piece_1176_mem, piece_1034_mem

theorem linked_10553 : Linked cell_10553 pieces := by
  link_source cell_10553 with piece_1176 using piece_1176_mem, ⟨piece_1033_mem, piece_1034_mem⟩

theorem linked_10554 : Linked cell_10554 pieces := by
  link_source cell_10554 with piece_1177 using piece_1177_mem, piece_1034_mem

theorem linked_10555 : Linked cell_10555 pieces := by
  link_source cell_10555 with piece_1177 using piece_1177_mem, ⟨piece_1033_mem, piece_1034_mem⟩

theorem linked_10556 : Linked cell_10556 pieces := by
  link_source cell_10556 with piece_1177 using piece_1177_mem, piece_1033_mem

theorem linked_10557 : Linked cell_10557 pieces := by
  link_source cell_10557 with piece_1177 using piece_1177_mem, ⟨piece_1032_mem, piece_1033_mem⟩

theorem linked_10558 : Linked cell_10558 pieces := by
  link_source cell_10558 with piece_1178 using piece_1178_mem, piece_1033_mem

theorem linked_10559 : Linked cell_10559 pieces := by
  link_source cell_10559 with piece_1178 using piece_1178_mem, ⟨piece_1032_mem, piece_1033_mem⟩

theorem linked_10560 : Linked cell_10560 pieces := by
  link_source cell_10560 with piece_1178 using piece_1178_mem, piece_1032_mem

theorem linked_10561 : Linked cell_10561 pieces := by
  link_source cell_10561 with piece_1178 using piece_1178_mem, ⟨piece_1031_mem, piece_1032_mem⟩

theorem linked_10562 : Linked cell_10562 pieces := by
  link_source cell_10562 with piece_1179 using piece_1179_mem, piece_1032_mem

theorem linked_10563 : Linked cell_10563 pieces := by
  link_source cell_10563 with piece_1179 using piece_1179_mem, ⟨piece_1031_mem, piece_1032_mem⟩

theorem linked_10564 : Linked cell_10564 pieces := by
  link_source cell_10564 with piece_1179 using piece_1179_mem, piece_1031_mem

theorem linked_10565 : Linked cell_10565 pieces := by
  link_source cell_10565 with piece_1179 using piece_1179_mem, ⟨piece_1030_mem, piece_1031_mem⟩

theorem linked_10566 : Linked cell_10566 pieces := by
  link_source cell_10566 with piece_1180 using piece_1180_mem, piece_1031_mem

theorem linked_10567 : Linked cell_10567 pieces := by
  link_source cell_10567 with piece_1180 using piece_1180_mem, ⟨piece_1030_mem, piece_1031_mem⟩

theorem linked_10568 : Linked cell_10568 pieces := by
  link_source cell_10568 with piece_1180 using piece_1180_mem, piece_1030_mem

theorem linked_10569 : Linked cell_10569 pieces := by
  link_source cell_10569 with piece_1180 using piece_1180_mem, ⟨piece_1029_mem, piece_1030_mem⟩

theorem linked_10570 : Linked cell_10570 pieces := by
  link_source cell_10570 with piece_1181 using piece_1181_mem, piece_1030_mem

theorem linked_10571 : Linked cell_10571 pieces := by
  link_source cell_10571 with piece_1181 using piece_1181_mem, piece_1030_mem

theorem linked_10572 : Linked cell_10572 pieces := by
  link_source cell_10572 with piece_1182 using piece_1182_mem, ⟨piece_1029_mem, piece_1030_mem⟩

theorem linked_10573 : Linked cell_10573 pieces := by
  link_source cell_10573 with piece_1182 using piece_1182_mem, piece_1029_mem

theorem linked_10574 : Linked cell_10574 pieces := by
  link_source cell_10574 with piece_1182 using piece_1182_mem, ⟨piece_1028_mem, piece_1029_mem⟩

theorem linked_10575 : Linked cell_10575 pieces := by
  link_source cell_10575 with piece_1183 using piece_1183_mem, piece_1029_mem

theorem linked_10576 : Linked cell_10576 pieces := by
  link_source cell_10576 with piece_1183 using piece_1183_mem, ⟨piece_1028_mem, piece_1029_mem⟩

theorem linked_10577 : Linked cell_10577 pieces := by
  link_source cell_10577 with piece_1183 using piece_1183_mem, piece_1028_mem

theorem linked_10578 : Linked cell_10578 pieces := by
  link_source cell_10578 with piece_1183 using piece_1183_mem, ⟨piece_1027_mem, piece_1028_mem⟩

theorem linked_10579 : Linked cell_10579 pieces := by
  link_source cell_10579 with piece_1184 using piece_1184_mem, piece_1028_mem

theorem linked_10580 : Linked cell_10580 pieces := by
  link_source cell_10580 with piece_1184 using piece_1184_mem, ⟨piece_1027_mem, piece_1028_mem⟩

theorem linked_10581 : Linked cell_10581 pieces := by
  link_source cell_10581 with piece_1184 using piece_1184_mem, piece_1027_mem

theorem linked_10582 : Linked cell_10582 pieces := by
  link_source cell_10582 with piece_1184 using piece_1184_mem, ⟨piece_1026_mem, piece_1027_mem⟩

theorem linked_10583 : Linked cell_10583 pieces := by
  link_source cell_10583 with piece_1185 using piece_1185_mem, ⟨piece_1027_mem, piece_1028_mem⟩

theorem linked_10584 : Linked cell_10584 pieces := by
  link_source cell_10584 with piece_1185 using piece_1185_mem, ⟨piece_1026_mem, piece_1027_mem⟩

theorem linked_10585 : Linked cell_10585 pieces := by
  link_source cell_10585 with piece_1185 using piece_1185_mem, piece_1026_mem

theorem linked_10586 : Linked cell_10586 pieces := by
  link_source cell_10586 with piece_1185 using piece_1185_mem, ⟨piece_1025_mem, piece_1026_mem⟩

theorem linked_10587 : Linked cell_10587 pieces := by
  link_source cell_10587 with piece_1186 using piece_1186_mem, ⟨piece_1026_mem, piece_1027_mem⟩

theorem linked_10588 : Linked cell_10588 pieces := by
  link_source cell_10588 with piece_1186 using piece_1186_mem, piece_1026_mem

theorem linked_10589 : Linked cell_10589 pieces := by
  link_source cell_10589 with piece_1186 using piece_1186_mem, ⟨piece_1024_mem, ⟨piece_1025_mem, piece_1026_mem⟩⟩

theorem linked_10590 : Linked cell_10590 pieces := by
  link_source cell_10590 with piece_1186 using piece_1186_mem, piece_1024_mem

theorem linked_10591 : Linked cell_10591 pieces := by
  link_source cell_10591 with piece_1187 using piece_1187_mem, ⟨piece_1024_mem, ⟨piece_1025_mem, piece_1026_mem⟩⟩

theorem linked_10592 : Linked cell_10592 pieces := by
  link_source cell_10592 with piece_1187 using piece_1187_mem, piece_1024_mem

theorem linked_10593 : Linked cell_10593 pieces := by
  link_source cell_10593 with piece_1187 using piece_1187_mem, ⟨piece_1023_mem, piece_1024_mem⟩

theorem linked_10594 : Linked cell_10594 pieces := by
  link_source cell_10594 with piece_1187 using piece_1187_mem, piece_1023_mem

theorem linked_10595 : Linked cell_10595 pieces := by
  link_source cell_10595 with piece_1188 using piece_1188_mem, ⟨piece_1023_mem, piece_1024_mem⟩

theorem linked_10596 : Linked cell_10596 pieces := by
  link_source cell_10596 with piece_1188 using piece_1188_mem, piece_1023_mem

theorem linked_10597 : Linked cell_10597 pieces := by
  link_source cell_10597 with piece_1188 using piece_1188_mem, ⟨piece_1022_mem, piece_1023_mem⟩

theorem linked_10598 : Linked cell_10598 pieces := by
  link_source cell_10598 with piece_1188 using piece_1188_mem, piece_1022_mem

theorem linked_10599 : Linked cell_10599 pieces := by
  link_source cell_10599 with piece_1189 using piece_1189_mem, ⟨piece_1022_mem, piece_1023_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0211.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0211.cells,List.forall_mem_cons]
  exact ⟨linked_10550, linked_10551, linked_10552, linked_10553, linked_10554, linked_10555, linked_10556, linked_10557, linked_10558, linked_10559, linked_10560, linked_10561, linked_10562, linked_10563, linked_10564, linked_10565, linked_10566, linked_10567, linked_10568, linked_10569, linked_10570, linked_10571, linked_10572, linked_10573, linked_10574, linked_10575, linked_10576, linked_10577, linked_10578, linked_10579, linked_10580, linked_10581, linked_10582, linked_10583, linked_10584, linked_10585, linked_10586, linked_10587, linked_10588, linked_10589, linked_10590, linked_10591, linked_10592, linked_10593, linked_10594, linked_10595, linked_10596, linked_10597, linked_10598, linked_10599, by simp⟩

theorem covered : covers (9880000000000001 / 20000000000000000 : ℚ) (100024999999999997 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0211.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0211
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0212
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(100024999999999997 / 200000000000000000 : ℚ), (50024999999999997 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (1928702578457 / 3125000000000 : ℚ)
  w := (3663063628019 / 2500000000000 : ℚ)
  center := (200074999999999991 / 400000000000000000 : ℚ)
  supportValue := (2118421145233063 / 5000000000000000 : ℚ)
  supportSlope := (-20224882560537987 / 10000000000000000 : ℚ)
  oldCenter := (2118421145233063 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1190
  oldLo := (10537500000000001 / 25000000000000000 : ℚ)
  oldHi := (10550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1018]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_10600 : Cell := { cellDefaults with
  r := (61857529035433 / 100000000000000 : ℚ)
  w := (14669814073461 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1189
  oldLo := (10587500000000001 / 25000000000000000 : ℚ)
  oldHi := (10600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1022]
}

noncomputable def cell_10601 : Cell := { cellDefaults with
  domain := ⟨(50024999999999997 / 100000000000000000 : ℚ), (100074999999999991 / 200000000000000000 : ℚ)⟩
  r := (61857529035433 / 100000000000000 : ℚ)
  w := (14669814073461 / 10000000000000 : ℚ)
  center := (40024999999999997 / 80000000000000000 : ℚ)
  supportValue := (2117157596403489 / 5000000000000000 : ℚ)
  supportSlope := (-2021097431047523 / 1000000000000000 : ℚ)
  oldCenter := (2117157596403489 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1189
  oldLo := (10575000000000001 / 25000000000000000 : ℚ)
  oldHi := (10600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1021, piece_1022]
}

noncomputable def cell_10602 : Cell := { cellDefaults with
  domain := ⟨(100074999999999991 / 200000000000000000 : ℚ), (25024999999999997 / 50000000000000000 : ℚ)⟩
  r := (61857529035433 / 100000000000000 : ℚ)
  w := (14669814073461 / 10000000000000 : ℚ)
  center := (200174999999999979 / 400000000000000000 : ℚ)
  supportValue := (528973736803711 / 1250000000000000 : ℚ)
  supportSlope := (-315491063794009 / 156250000000000 : ℚ)
  oldCenter := (528973736803711 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1189
  oldLo := (10575000000000001 / 25000000000000000 : ℚ)
  oldHi := (10587500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1021]
}

noncomputable def cell_10603 : Cell := { cellDefaults with
  domain := ⟨(25024999999999997 / 50000000000000000 : ℚ), (100124999999999991 / 200000000000000000 : ℚ)⟩
  r := (1236454046451 / 2000000000000 : ℚ)
  w := (7332705706981 / 5000000000000 : ℚ)
  center := (200224999999999979 / 400000000000000000 : ℚ)
  supportValue := (8469095843939679 / 20000000000000000 : ℚ)
  supportSlope := (-10100156007995973 / 5000000000000000 : ℚ)
  oldCenter := (8469095843939679 / 20000000000000000 : ℚ)
  oldLo := (10575000000000001 / 25000000000000000 : ℚ)
  oldHi := (10600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1021, piece_1022]
}

noncomputable def cell_10604 : Cell := { cellDefaults with
  domain := ⟨(100124999999999991 / 200000000000000000 : ℚ), (50074999999999997 / 100000000000000000 : ℚ)⟩
  r := (1236454046451 / 2000000000000 : ℚ)
  w := (7332705706981 / 5000000000000 : ℚ)
  center := (40054999999999997 / 80000000000000000 : ℚ)
  supportValue := (846404767252673 / 2000000000000000 : ℚ)
  supportSlope := (-10090868871713743 / 5000000000000000 : ℚ)
  oldCenter := (846404767252673 / 2000000000000000 : ℚ)
  oldLo := (10575000000000001 / 25000000000000000 : ℚ)
  oldHi := (10587500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1021]
}

noncomputable def cell_10605 : Cell := { cellDefaults with
  domain := ⟨(50074999999999997 / 100000000000000000 : ℚ), (100174999999999997 / 200000000000000000 : ℚ)⟩
  r := (1236454046451 / 2000000000000 : ℚ)
  w := (7332705706981 / 5000000000000 : ℚ)
  center := (200324999999999991 / 400000000000000000 : ℚ)
  supportValue := (42295022231641793 / 100000000000000000 : ℚ)
  supportSlope := (-126044624868467 / 62500000000000 : ℚ)
  oldCenter := (42295022231641793 / 100000000000000000 : ℚ)
  oldLo := (10562500000000001 / 25000000000000000 : ℚ)
  oldHi := (10587500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1020, piece_1021]
}

noncomputable def cell_10606 : Cell := { cellDefaults with
  domain := ⟨(100174999999999997 / 200000000000000000 : ℚ), (501 / 1000 : ℚ)⟩
  r := (1236454046451 / 2000000000000 : ℚ)
  w := (7332705706981 / 5000000000000 : ℚ)
  center := (200374999999999997 / 400000000000000000 : ℚ)
  supportValue := (8453964609633241 / 20000000000000000 : ℚ)
  supportSlope := (-251855133327231 / 125000000000000 : ℚ)
  oldCenter := (8453964609633241 / 20000000000000000 : ℚ)
  oldLo := (10562500000000001 / 25000000000000000 : ℚ)
  oldHi := (10575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1020]
}

noncomputable def cell_10607 : Cell := { cellDefaults with
  domain := ⟨(501 / 1000 : ℚ), (40089999999999999 / 80000000000000000 : ℚ)⟩
  r := (30893959423339 / 50000000000000 : ℚ)
  w := (2932203409783 / 2000000000000 : ℚ)
  center := (80169999999999999 / 160000000000000000 : ℚ)
  supportValue := (1057433687605809 / 2500000000000000 : ℚ)
  supportSlope := (-4031300843561473 / 2000000000000000 : ℚ)
  oldCenter := (1057433687605809 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1191
  oldLo := (10562500000000001 / 25000000000000000 : ℚ)
  oldHi := (10587500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1020, piece_1021]
}

noncomputable def cell_10608 : Cell := { cellDefaults with
  domain := ⟨(40089999999999999 / 80000000000000000 : ℚ), (20049999999999999 / 40000000000000000 : ℚ)⟩
  r := (30893959423339 / 50000000000000 : ℚ)
  w := (2932203409783 / 2000000000000 : ℚ)
  center := (80189999999999997 / 160000000000000000 : ℚ)
  supportValue := (845443208163421 / 2000000000000000 : ℚ)
  supportSlope := (-4027750345271433 / 2000000000000000 : ℚ)
  oldCenter := (845443208163421 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1191
  oldLo := (10562500000000001 / 25000000000000000 : ℚ)
  oldHi := (10575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1020]
}

noncomputable def cell_10609 : Cell := { cellDefaults with
  domain := ⟨(20049999999999999 / 40000000000000000 : ℚ), (40109999999999997 / 80000000000000000 : ℚ)⟩
  r := (30893959423339 / 50000000000000 : ℚ)
  w := (2932203409783 / 2000000000000 : ℚ)
  center := (16041999999999999 / 32000000000000000 : ℚ)
  supportValue := (5280874873167097 / 12500000000000000 : ℚ)
  supportSlope := (-4024683188870573 / 2000000000000000 : ℚ)
  oldCenter := (5280874873167097 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1191
  oldLo := (10550000000000001 / 25000000000000000 : ℚ)
  oldHi := (10575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1019, piece_1020]
}

noncomputable def cell_10610 : Cell := { cellDefaults with
  domain := ⟨(40109999999999997 / 80000000000000000 : ℚ), (10029999999999999 / 20000000000000000 : ℚ)⟩
  r := (30893959423339 / 50000000000000 : ℚ)
  w := (2932203409783 / 2000000000000 : ℚ)
  center := (80229999999999993 / 160000000000000000 : ℚ)
  supportValue := (10555463350613531 / 25000000000000000 : ℚ)
  supportSlope := (-502638722016219 / 250000000000000 : ℚ)
  oldCenter := (10555463350613531 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1191
  oldLo := (10550000000000001 / 25000000000000000 : ℚ)
  oldHi := (10562500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1019]
}

noncomputable def cell_10611 : Cell := { cellDefaults with
  domain := ⟨(10029999999999999 / 20000000000000000 : ℚ), (40129999999999997 / 80000000000000000 : ℚ)⟩
  r := (12350635878921 / 20000000000000 : ℚ)
  w := (14656631101023 / 10000000000000 : ℚ)
  center := (80249999999999993 / 160000000000000000 : ℚ)
  supportValue := (42249320824631453 / 100000000000000000 : ℚ)
  supportSlope := (-5028201628684611 / 2500000000000000 : ℚ)
  oldCenter := (42249320824631453 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1192
  oldLo := (10550000000000001 / 25000000000000000 : ℚ)
  oldHi := (10575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1019, piece_1020]
}

noncomputable def cell_10612 : Cell := { cellDefaults with
  domain := ⟨(40129999999999997 / 80000000000000000 : ℚ), (20069999999999999 / 40000000000000000 : ℚ)⟩
  r := (12350635878921 / 20000000000000 : ℚ)
  w := (14656631101023 / 10000000000000 : ℚ)
  center := (16053999999999999 / 32000000000000000 : ℚ)
  supportValue := (10556046822555011 / 25000000000000000 : ℚ)
  supportSlope := (-20095921063505653 / 10000000000000000 : ℚ)
  oldCenter := (10556046822555011 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1192
  oldLo := (10550000000000001 / 25000000000000000 : ℚ)
  oldHi := (10562500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1019]
}

noncomputable def cell_10613 : Cell := { cellDefaults with
  domain := ⟨(20069999999999999 / 40000000000000000 : ℚ), (40149999999999999 / 80000000000000000 : ℚ)⟩
  r := (12350635878921 / 20000000000000 : ℚ)
  w := (14656631101023 / 10000000000000 : ℚ)
  center := (80289999999999997 / 160000000000000000 : ℚ)
  supportValue := (42199080452302407 / 100000000000000000 : ℚ)
  supportSlope := (-4015958203110113 / 2000000000000000 : ℚ)
  oldCenter := (42199080452302407 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1192
  oldHi := (10562500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1018, piece_1019]
}

noncomputable def cell_10614 : Cell := { cellDefaults with
  domain := ⟨(40149999999999999 / 80000000000000000 : ℚ), (251 / 500 : ℚ)⟩
  r := (12350635878921 / 20000000000000 : ℚ)
  w := (14656631101023 / 10000000000000 : ℚ)
  center := (80309999999999999 / 160000000000000000 : ℚ)
  supportValue := (2108699413856593 / 5000000000000000 : ℚ)
  supportSlope := (-1253927585470479 / 625000000000000 : ℚ)
  oldCenter := (2108699413856593 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1192
  oldPieces := [piece_1018]
}

noncomputable def cell_10615 : Cell := { cellDefaults with
  domain := ⟨(251 / 500 : ℚ), (2510586592178771 / 5000000000000000 : ℚ)⟩
  center := (5020586592178771 / 10000000000000000 : ℚ)
  supportValue := (2110108383095871 / 5000000000000000 : ℚ)
  supportSlope := (-501737426680367 / 250000000000000 : ℚ)
  oldCenter := (2110108383095871 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1193
  oldHi := (10562500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1018, piece_1019]
}

noncomputable def cell_10616 : Cell := { cellDefaults with
  domain := ⟨(2510586592178771 / 5000000000000000 : ℚ), (1255586592178771 / 2500000000000000 : ℚ)⟩
  center := (5021759776536313 / 10000000000000000 : ℚ)
  supportValue := (1687145130911347 / 4000000000000000 : ℚ)
  supportSlope := (-10027622768686917 / 5000000000000000 : ℚ)
  oldCenter := (1687145130911347 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1193
  oldPieces := [piece_1018]
}

noncomputable def cell_10617 : Cell := { cellDefaults with
  domain := ⟨(1255586592178771 / 2500000000000000 : ℚ), (20089999999999999 / 40000000000000000 : ℚ)⟩
  center := (8035877094972067 / 16000000000000000 : ℚ)
  supportValue := (4216528932810933 / 10000000000000000 : ℚ)
  supportSlope := (-400874448796301 / 200000000000000 : ℚ)
  oldCenter := (4216528932810933 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1194
  oldPieces := [piece_1018]
}

noncomputable def cell_10618 : Cell := { cellDefaults with
  domain := ⟨(20089999999999999 / 40000000000000000 : ℚ), (40189999999999997 / 80000000000000000 : ℚ)⟩
  center := (16073999999999999 / 32000000000000000 : ℚ)
  supportValue := (21075632267939623 / 50000000000000000 : ℚ)
  supportSlope := (-20036265191534013 / 10000000000000000 : ℚ)
  oldCenter := (21075632267939623 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1194
  oldLo := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1017, piece_1018]
}

noncomputable def cell_10619 : Cell := { cellDefaults with
  domain := ⟨(40189999999999997 / 80000000000000000 : ℚ), (10049999999999999 / 20000000000000000 : ℚ)⟩
  center := (80389999999999993 / 160000000000000000 : ℚ)
  supportValue := (4212622621531857 / 10000000000000000 : ℚ)
  supportSlope := (-2002028733597983 / 1000000000000000 : ℚ)
  oldCenter := (4212622621531857 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1194
  oldLo := (10525000000000001 / 25000000000000000 : ℚ)
  oldHi := (10537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1017]
}

noncomputable def cell_10620 : Cell := { cellDefaults with
  domain := ⟨(10049999999999999 / 20000000000000000 : ℚ), (40209999999999997 / 80000000000000000 : ℚ)⟩
  r := (6168382965219 / 10000000000000 : ℚ)
  w := (2929577302017 / 2000000000000 : ℚ)
  center := (80409999999999993 / 160000000000000000 : ℚ)
  supportValue := (168614305473293 / 400000000000000 : ℚ)
  supportSlope := (-250321334674039 / 125000000000000 : ℚ)
  oldCenter := (168614305473293 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1195
  oldLo := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1017, piece_1018]
}

noncomputable def cell_10621 : Cell := { cellDefaults with
  domain := ⟨(40209999999999997 / 80000000000000000 : ℚ), (20109999999999999 / 40000000000000000 : ℚ)⟩
  r := (6168382965219 / 10000000000000 : ℚ)
  w := (2929577302017 / 2000000000000 : ℚ)
  center := (16085999999999999 / 32000000000000000 : ℚ)
  supportValue := (42128551229301403 / 100000000000000000 : ℚ)
  supportSlope := (-5002679941461029 / 2500000000000000 : ℚ)
  oldCenter := (42128551229301403 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1195
  oldLo := (10525000000000001 / 25000000000000000 : ℚ)
  oldHi := (10537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1017]
}

noncomputable def cell_10622 : Cell := { cellDefaults with
  domain := ⟨(20109999999999999 / 40000000000000000 : ℚ), (40229999999999999 / 80000000000000000 : ℚ)⟩
  r := (6168382965219 / 10000000000000 : ℚ)
  w := (2929577302017 / 2000000000000 : ℚ)
  center := (80449999999999997 / 160000000000000000 : ℚ)
  supportValue := (4210355134537081 / 10000000000000000 : ℚ)
  supportSlope := (-4998209505366391 / 2500000000000000 : ℚ)
  oldCenter := (4210355134537081 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1195
  oldLo := (10512500000000001 / 25000000000000000 : ℚ)
  oldHi := (10537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1016, piece_1017]
}

noncomputable def cell_10623 : Cell := { cellDefaults with
  domain := ⟨(40229999999999999 / 80000000000000000 : ℚ), (503 / 1000 : ℚ)⟩
  r := (6168382965219 / 10000000000000 : ℚ)
  w := (2929577302017 / 2000000000000 : ℚ)
  center := (80469999999999999 / 160000000000000000 : ℚ)
  supportValue := (10519641813780961 / 25000000000000000 : ℚ)
  supportSlope := (-4994471735665973 / 2500000000000000 : ℚ)
  oldCenter := (10519641813780961 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1195
  oldLo := (10512500000000001 / 25000000000000000 : ℚ)
  oldHi := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1016]
}

noncomputable def cell_10624 : Cell := { cellDefaults with
  domain := ⟨(503 / 1000 : ℚ), (40249999999999999 / 80000000000000000 : ℚ)⟩
  r := (30824609974949 / 50000000000000 : ℚ)
  w := (915220499761 / 625000000000 : ℚ)
  center := (80489999999999999 / 160000000000000000 : ℚ)
  supportValue := (1052646431331393 / 2500000000000000 : ℚ)
  supportSlope := (-19982304727854447 / 10000000000000000 : ℚ)
  oldCenter := (1052646431331393 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1196
  oldLo := (10512500000000001 / 25000000000000000 : ℚ)
  oldHi := (10537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1016, piece_1017]
}

noncomputable def cell_10625 : Cell := { cellDefaults with
  domain := ⟨(40249999999999999 / 80000000000000000 : ℚ), (20129999999999999 / 40000000000000000 : ℚ)⟩
  r := (30824609974949 / 50000000000000 : ℚ)
  w := (915220499761 / 625000000000 : ℚ)
  center := (80509999999999997 / 160000000000000000 : ℚ)
  supportValue := (4208088631342347 / 10000000000000000 : ℚ)
  supportSlope := (-3993669617715811 / 2000000000000000 : ℚ)
  oldCenter := (4208088631342347 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1196
  oldLo := (10512500000000001 / 25000000000000000 : ℚ)
  oldHi := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1016]
}

noncomputable def cell_10626 : Cell := { cellDefaults with
  domain := ⟨(20129999999999999 / 40000000000000000 : ℚ), (40269999999999997 / 80000000000000000 : ℚ)⟩
  r := (30824609974949 / 50000000000000 : ℚ)
  w := (915220499761 / 625000000000 : ℚ)
  center := (16105999999999999 / 32000000000000000 : ℚ)
  supportValue := (841118787413829 / 2000000000000000 : ℚ)
  supportSlope := (-1994950816152063 / 1000000000000000 : ℚ)
  oldCenter := (841118787413829 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1196
  oldLo := (10500000000000001 / 25000000000000000 : ℚ)
  oldHi := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1015, piece_1016]
}

noncomputable def cell_10627 : Cell := { cellDefaults with
  domain := ⟨(40269999999999997 / 80000000000000000 : ℚ), (10069999999999999 / 20000000000000000 : ℚ)⟩
  r := (30824609974949 / 50000000000000 : ℚ)
  w := (915220499761 / 625000000000 : ℚ)
  center := (80549999999999993 / 160000000000000000 : ℚ)
  supportValue := (840620187787931 / 2000000000000000 : ℚ)
  supportSlope := (-19935638369316993 / 10000000000000000 : ℚ)
  oldCenter := (840620187787931 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1196
  oldLo := (10500000000000001 / 25000000000000000 : ℚ)
  oldHi := (10512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1015]
}

noncomputable def cell_10628 : Cell := { cellDefaults with
  domain := ⟨(10069999999999999 / 20000000000000000 : ℚ), (40289999999999997 / 80000000000000000 : ℚ)⟩
  r := (61614653545467 / 100000000000000 : ℚ)
  w := (14639178338187 / 10000000000000 : ℚ)
  center := (80569999999999993 / 160000000000000000 : ℚ)
  supportValue := (4205824083222481 / 10000000000000000 : ℚ)
  supportSlope := (-19938999964386421 / 10000000000000000 : ℚ)
  oldCenter := (4205824083222481 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1197
  oldLo := (10500000000000001 / 25000000000000000 : ℚ)
  oldHi := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1015, piece_1016]
}

noncomputable def cell_10629 : Cell := { cellDefaults with
  domain := ⟨(40289999999999997 / 80000000000000000 : ℚ), (20149999999999999 / 40000000000000000 : ℚ)⟩
  r := (61614653545467 / 100000000000000 : ℚ)
  w := (14639178338187 / 10000000000000 : ℚ)
  center := (16117999999999999 / 32000000000000000 : ℚ)
  supportValue := (4203332396983371 / 10000000000000000 : ℚ)
  supportSlope := (-1992612944617967 / 1000000000000000 : ℚ)
  oldCenter := (4203332396983371 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1197
  oldLo := (10500000000000001 / 25000000000000000 : ℚ)
  oldHi := (10512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1015]
}

noncomputable def cell_10630 : Cell := { cellDefaults with
  domain := ⟨(20149999999999999 / 40000000000000000 : ℚ), (40309999999999999 / 80000000000000000 : ℚ)⟩
  r := (61614653545467 / 100000000000000 : ℚ)
  w := (14639178338187 / 10000000000000 : ℚ)
  center := (80609999999999997 / 160000000000000000 : ℚ)
  supportValue := (8401685955317173 / 20000000000000000 : ℚ)
  supportSlope := (-1244142249646627 / 625000000000000 : ℚ)
  oldCenter := (8401685955317173 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1197
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014, piece_1015]
}

noncomputable def cell_10631 : Cell := { cellDefaults with
  domain := ⟨(40309999999999999 / 80000000000000000 : ℚ), (63 / 125 : ℚ)⟩
  r := (61614653545467 / 100000000000000 : ℚ)
  w := (14639178338187 / 10000000000000 : ℚ)
  center := (80629999999999999 / 160000000000000000 : ℚ)
  supportValue := (4198355378163643 / 10000000000000000 : ℚ)
  supportSlope := (-397870885396361 / 200000000000000 : ℚ)
  oldCenter := (4198355378163643 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1197
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014]
}

noncomputable def cell_10632 : Cell := { cellDefaults with
  domain := ⟨(63 / 125 : ℚ), (40329999999999999 / 80000000000000000 : ℚ)⟩
  r := (61580130116243 / 100000000000000 : ℚ)
  w := (1463483746347 / 1000000000000 : ℚ)
  center := (80649999999999999 / 160000000000000000 : ℚ)
  supportValue := (8402145443878839 / 20000000000000000 : ℚ)
  supportSlope := (-4973948241251911 / 2500000000000000 : ℚ)
  oldCenter := (8402145443878839 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1198
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014, piece_1015]
}

noncomputable def cell_10633 : Cell := { cellDefaults with
  domain := ⟨(40329999999999999 / 80000000000000000 : ℚ), (20169999999999999 / 40000000000000000 : ℚ)⟩
  r := (61580130116243 / 100000000000000 : ℚ)
  w := (1463483746347 / 1000000000000 : ℚ)
  center := (80669999999999997 / 160000000000000000 : ℚ)
  supportValue := (10496466078011589 / 25000000000000000 : ℚ)
  supportSlope := (-19884065061479317 / 10000000000000000 : ℚ)
  oldCenter := (10496466078011589 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1198
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014]
}

noncomputable def cell_10634 : Cell := { cellDefaults with
  domain := ⟨(20169999999999999 / 40000000000000000 : ℚ), (40349999999999997 / 80000000000000000 : ℚ)⟩
  r := (61580130116243 / 100000000000000 : ℚ)
  w := (1463483746347 / 1000000000000 : ℚ)
  center := (16137999999999999 / 32000000000000000 : ℚ)
  supportValue := (2098051133769469 / 5000000000000000 : ℚ)
  supportSlope := (-19863141191882359 / 10000000000000000 : ℚ)
  oldCenter := (2098051133769469 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1198
  oldLo := (2096368715083799 / 5000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1013, piece_1014]
}

noncomputable def cell_10635 : Cell := { cellDefaults with
  domain := ⟨(40349999999999997 / 80000000000000000 : ℚ), (10089999999999999 / 20000000000000000 : ℚ)⟩
  r := (61580130116243 / 100000000000000 : ℚ)
  w := (1463483746347 / 1000000000000 : ℚ)
  center := (80709999999999993 / 160000000000000000 : ℚ)
  supportValue := (20968100272988177 / 50000000000000000 : ℚ)
  supportSlope := (-794064102759941 / 400000000000000 : ℚ)
  oldCenter := (20968100272988177 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1198
  oldLo := (10475000000000001 / 25000000000000000 : ℚ)
  oldHi := (10487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1012, piece_1013]
}

noncomputable def cell_10636 : Cell := { cellDefaults with
  domain := ⟨(10089999999999999 / 20000000000000000 : ℚ), (40369999999999997 / 80000000000000000 : ℚ)⟩
  r := (30772824992821 / 50000000000000 : ℚ)
  w := (14630505089313 / 10000000000000 : ℚ)
  center := (80729999999999993 / 160000000000000000 : ℚ)
  supportValue := (20981658187541813 / 50000000000000000 : ℚ)
  supportSlope := (-496326380474427 / 250000000000000 : ℚ)
  oldCenter := (20981658187541813 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1199
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014]
}

noncomputable def cell_10637 : Cell := { cellDefaults with
  domain := ⟨(40369999999999997 / 80000000000000000 : ℚ), (20189999999999999 / 40000000000000000 : ℚ)⟩
  r := (30772824992821 / 50000000000000 : ℚ)
  w := (14630505089313 / 10000000000000 : ℚ)
  center := (16149999999999999 / 32000000000000000 : ℚ)
  supportValue := (1677540292069599 / 4000000000000000 : ℚ)
  supportSlope := (-793671275353623 / 400000000000000 : ℚ)
  oldCenter := (1677540292069599 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1199
  oldLo := (10475000000000001 / 25000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1012, piece_1013, piece_1014]
}

noncomputable def cell_10638 : Cell := { cellDefaults with
  domain := ⟨(20189999999999999 / 40000000000000000 : ℚ), (40389999999999999 / 80000000000000000 : ℚ)⟩
  r := (30772824992821 / 50000000000000 : ℚ)
  w := (14630505089313 / 10000000000000 : ℚ)
  center := (80769999999999997 / 160000000000000000 : ℚ)
  supportValue := (2095685901637343 / 5000000000000000 : ℚ)
  supportSlope := (-9910326908405661 / 5000000000000000 : ℚ)
  oldCenter := (2095685901637343 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1199
  oldLo := (10475000000000001 / 25000000000000000 : ℚ)
  oldHi := (2096368715083799 / 5000000000000000 : ℚ)
  oldPieces := [piece_1012]
}

noncomputable def cell_10639 : Cell := { cellDefaults with
  domain := ⟨(40389999999999999 / 80000000000000000 : ℚ), (101 / 200 : ℚ)⟩
  r := (30772824992821 / 50000000000000 : ℚ)
  w := (14630505089313 / 10000000000000 : ℚ)
  center := (80789999999999999 / 160000000000000000 : ℚ)
  supportValue := (4188894965210739 / 10000000000000000 : ℚ)
  supportSlope := (-4952314487744529 / 2500000000000000 : ℚ)
  oldCenter := (4188894965210739 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1199
  oldLo := (10462500000000001 / 25000000000000000 : ℚ)
  oldHi := (2096368715083799 / 5000000000000000 : ℚ)
  oldPieces := [piece_1011, piece_1012]
}

noncomputable def cell_10640 : Cell := { cellDefaults with
  domain := ⟨(101 / 200 : ℚ), (40409999999999999 / 80000000000000000 : ℚ)⟩
  r := (12302242389467 / 20000000000000 : ℚ)
  w := (14626181893133 / 10000000000000 : ℚ)
  center := (80809999999999999 / 160000000000000000 : ℚ)
  supportValue := (8383201464670611 / 20000000000000000 : ℚ)
  supportSlope := (-9905604114660451 / 5000000000000000 : ℚ)
  oldCenter := (8383201464670611 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1200
  oldLo := (10475000000000001 / 25000000000000000 : ℚ)
  oldHi := (10487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1012, piece_1013]
}

noncomputable def cell_10641 : Cell := { cellDefaults with
  domain := ⟨(40409999999999999 / 80000000000000000 : ℚ), (20209999999999999 / 40000000000000000 : ℚ)⟩
  r := (12302242389467 / 20000000000000 : ℚ)
  w := (14626181893133 / 10000000000000 : ℚ)
  center := (80829999999999997 / 160000000000000000 : ℚ)
  supportValue := (4189125196801031 / 10000000000000000 : ℚ)
  supportSlope := (-9899425333080737 / 5000000000000000 : ℚ)
  oldCenter := (4189125196801031 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1200
  oldLo := (10462500000000001 / 25000000000000000 : ℚ)
  oldHi := (2096368715083799 / 5000000000000000 : ℚ)
  oldPieces := [piece_1011, piece_1012]
}

noncomputable def cell_10642 : Cell := { cellDefaults with
  domain := ⟨(20209999999999999 / 40000000000000000 : ℚ), (40429999999999997 / 80000000000000000 : ℚ)⟩
  r := (12302242389467 / 20000000000000 : ℚ)
  w := (14626181893133 / 10000000000000 : ℚ)
  center := (16169999999999999 / 32000000000000000 : ℚ)
  supportValue := (837330297495559 / 2000000000000000 : ℚ)
  supportSlope := (-19778932625327017 / 10000000000000000 : ℚ)
  oldCenter := (837330297495559 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1200
  oldLo := (10462500000000001 / 25000000000000000 : ℚ)
  oldHi := (10475000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1011]
}

noncomputable def cell_10643 : Cell := { cellDefaults with
  domain := ⟨(40429999999999997 / 80000000000000000 : ℚ), (10109999999999999 / 20000000000000000 : ℚ)⟩
  r := (12302242389467 / 20000000000000 : ℚ)
  w := (14626181893133 / 10000000000000 : ℚ)
  center := (80869999999999993 / 160000000000000000 : ℚ)
  supportValue := (20920900060859837 / 50000000000000000 : ℚ)
  supportSlope := (-19766399581861749 / 10000000000000000 : ℚ)
  oldCenter := (20920900060859837 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1200
  oldLo := (10450000000000001 / 25000000000000000 : ℚ)
  oldHi := (10475000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1010, piece_1011]
}

noncomputable def cell_10644 : Cell := { cellDefaults with
  domain := ⟨(10109999999999999 / 20000000000000000 : ℚ), (101124999999999993 / 200000000000000000 : ℚ)⟩
  r := (15369204381849 / 25000000000000 : ℚ)
  w := (14621867910849 / 10000000000000 : ℚ)
  center := (202224999999999983 / 400000000000000000 : ℚ)
  supportValue := (20934398877092003 / 50000000000000000 : ℚ)
  supportSlope := (-19769515120644359 / 10000000000000000 : ℚ)
  oldCenter := (20934398877092003 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1201
  oldLo := (10462500000000001 / 25000000000000000 : ℚ)
  oldHi := (10475000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1011]
}

noncomputable def cell_10645 : Cell := { cellDefaults with
  domain := ⟨(101124999999999993 / 200000000000000000 : ℚ), (25287499999999999 / 50000000000000000 : ℚ)⟩
  r := (15369204381849 / 25000000000000 : ℚ)
  w := (14621867910849 / 10000000000000 : ℚ)
  center := (202274999999999989 / 400000000000000000 : ℚ)
  supportValue := (4184409599648421 / 10000000000000000 : ℚ)
  supportSlope := (-19756016386966853 / 10000000000000000 : ℚ)
  oldCenter := (4184409599648421 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1201
  oldLo := (10450000000000001 / 25000000000000000 : ℚ)
  oldHi := (10475000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1010, piece_1011]
}

noncomputable def cell_10646 : Cell := { cellDefaults with
  domain := ⟨(25287499999999999 / 50000000000000000 : ℚ), (101174999999999999 / 200000000000000000 : ℚ)⟩
  r := (15369204381849 / 25000000000000 : ℚ)
  w := (14621867910849 / 10000000000000 : ℚ)
  center := (40464999999999999 / 80000000000000000 : ℚ)
  supportValue := (1306856590289307 / 3125000000000000 : ℚ)
  supportSlope := (-9868679757313241 / 5000000000000000 : ℚ)
  oldCenter := (1306856590289307 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1201
  oldLo := (10450000000000001 / 25000000000000000 : ℚ)
  oldHi := (10462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1010]
}

noncomputable def cell_10647 : Cell := { cellDefaults with
  domain := ⟨(101174999999999999 / 200000000000000000 : ℚ), (50600000000000001 / 100000000000000000 : ℚ)⟩
  r := (15369204381849 / 25000000000000 : ℚ)
  w := (14621867910849 / 10000000000000 : ℚ)
  center := (202375000000000001 / 400000000000000000 : ℚ)
  supportValue := (8358949931122599 / 20000000000000000 : ℚ)
  supportSlope := (-1972362748529063 / 1000000000000000 : ℚ)
  oldCenter := (8358949931122599 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1201
  oldLo := (10437500000000001 / 25000000000000000 : ℚ)
  oldHi := (10462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1009, piece_1010]
}

noncomputable def cell_10648 : Cell := { cellDefaults with
  domain := ⟨(50600000000000001 / 100000000000000000 : ℚ), (101224999999999999 / 200000000000000000 : ℚ)⟩
  r := (61442465409501 / 100000000000000 : ℚ)
  w := (2923512439453 / 2000000000000 : ℚ)
  center := (202425000000000001 / 400000000000000000 : ℚ)
  supportValue := (2091084569156397 / 5000000000000000 : ℚ)
  supportSlope := (-308249580328083 / 156250000000000 : ℚ)
  oldCenter := (2091084569156397 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1202
  oldLo := (10450000000000001 / 25000000000000000 : ℚ)
  oldHi := (10462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1010]
}

noncomputable def cell_10649 : Cell := { cellDefaults with
  domain := ⟨(101224999999999999 / 200000000000000000 : ℚ), (25312499999999999 / 50000000000000000 : ℚ)⟩
  r := (61442465409501 / 100000000000000 : ℚ)
  w := (2923512439453 / 2000000000000 : ℚ)
  center := (40494999999999999 / 80000000000000000 : ℚ)
  supportValue := (10449260778341521 / 25000000000000000 : ℚ)
  supportSlope := (-4928317243145277 / 2500000000000000 : ℚ)
  oldCenter := (10449260778341521 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1202
  oldLo := (10437500000000001 / 25000000000000000 : ℚ)
  oldHi := (10462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1009, piece_1010]
}

theorem check_10600 : cell_10600.check = true := by
  decide +kernel

theorem check_10601 : cell_10601.check = true := by
  decide +kernel

theorem check_10602 : cell_10602.check = true := by
  decide +kernel

theorem check_10603 : cell_10603.check = true := by
  decide +kernel

theorem check_10604 : cell_10604.check = true := by
  decide +kernel

theorem check_10605 : cell_10605.check = true := by
  decide +kernel

theorem check_10606 : cell_10606.check = true := by
  decide +kernel

theorem check_10607 : cell_10607.check = true := by
  decide +kernel

theorem check_10608 : cell_10608.check = true := by
  decide +kernel

theorem check_10609 : cell_10609.check = true := by
  decide +kernel

theorem check_10610 : cell_10610.check = true := by
  decide +kernel

theorem check_10611 : cell_10611.check = true := by
  decide +kernel

theorem check_10612 : cell_10612.check = true := by
  decide +kernel

theorem check_10613 : cell_10613.check = true := by
  decide +kernel

theorem check_10614 : cell_10614.check = true := by
  decide +kernel

theorem check_10615 : cell_10615.check = true := by
  decide +kernel

theorem check_10616 : cell_10616.check = true := by
  decide +kernel

theorem check_10617 : cell_10617.check = true := by
  decide +kernel

theorem check_10618 : cell_10618.check = true := by
  decide +kernel

theorem check_10619 : cell_10619.check = true := by
  decide +kernel

theorem check_10620 : cell_10620.check = true := by
  decide +kernel

theorem check_10621 : cell_10621.check = true := by
  decide +kernel

theorem check_10622 : cell_10622.check = true := by
  decide +kernel

theorem check_10623 : cell_10623.check = true := by
  decide +kernel

theorem check_10624 : cell_10624.check = true := by
  decide +kernel

theorem check_10625 : cell_10625.check = true := by
  decide +kernel

theorem check_10626 : cell_10626.check = true := by
  decide +kernel

theorem check_10627 : cell_10627.check = true := by
  decide +kernel

theorem check_10628 : cell_10628.check = true := by
  decide +kernel

theorem check_10629 : cell_10629.check = true := by
  decide +kernel

theorem check_10630 : cell_10630.check = true := by
  decide +kernel

theorem check_10631 : cell_10631.check = true := by
  decide +kernel

theorem check_10632 : cell_10632.check = true := by
  decide +kernel

theorem check_10633 : cell_10633.check = true := by
  decide +kernel

theorem check_10634 : cell_10634.check = true := by
  decide +kernel

theorem check_10635 : cell_10635.check = true := by
  decide +kernel

theorem check_10636 : cell_10636.check = true := by
  decide +kernel

theorem check_10637 : cell_10637.check = true := by
  decide +kernel

theorem check_10638 : cell_10638.check = true := by
  decide +kernel

theorem check_10639 : cell_10639.check = true := by
  decide +kernel

theorem check_10640 : cell_10640.check = true := by
  decide +kernel

theorem check_10641 : cell_10641.check = true := by
  decide +kernel

theorem check_10642 : cell_10642.check = true := by
  decide +kernel

theorem check_10643 : cell_10643.check = true := by
  decide +kernel

theorem check_10644 : cell_10644.check = true := by
  decide +kernel

theorem check_10645 : cell_10645.check = true := by
  decide +kernel

theorem check_10646 : cell_10646.check = true := by
  decide +kernel

theorem check_10647 : cell_10647.check = true := by
  decide +kernel

theorem check_10648 : cell_10648.check = true := by
  decide +kernel

theorem check_10649 : cell_10649.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_10600, cell_10601, cell_10602, cell_10603, cell_10604, cell_10605, cell_10606, cell_10607, cell_10608, cell_10609, cell_10610, cell_10611, cell_10612, cell_10613, cell_10614, cell_10615, cell_10616, cell_10617, cell_10618, cell_10619, cell_10620, cell_10621, cell_10622, cell_10623, cell_10624, cell_10625, cell_10626, cell_10627, cell_10628, cell_10629, cell_10630, cell_10631, cell_10632, cell_10633, cell_10634, cell_10635, cell_10636, cell_10637, cell_10638, cell_10639, cell_10640, cell_10641, cell_10642, cell_10643, cell_10644, cell_10645, cell_10646, cell_10647, cell_10648, cell_10649]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10600, check_10601, check_10602, check_10603, check_10604, check_10605, check_10606, check_10607, check_10608, check_10609, check_10610, check_10611, check_10612, check_10613, check_10614, check_10615, check_10616, check_10617, check_10618, check_10619, check_10620, check_10621, check_10622, check_10623, check_10624, check_10625, check_10626, check_10627, check_10628, check_10629, check_10630, check_10631, check_10632, check_10633, check_10634, check_10635, check_10636, check_10637, check_10638, check_10639, check_10640, check_10641, check_10642, check_10643, check_10644, check_10645, check_10646, check_10647, check_10648, check_10649, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0212

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0212
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0212
open AnalyticBounds.ExpressionCertificate

theorem linked_10600 : Linked cell_10600 pieces := by
  link_source cell_10600 with piece_1189 using piece_1189_mem, piece_1022_mem

theorem linked_10601 : Linked cell_10601 pieces := by
  link_source cell_10601 with piece_1189 using piece_1189_mem, ⟨piece_1021_mem, piece_1022_mem⟩

theorem linked_10602 : Linked cell_10602 pieces := by
  link_source cell_10602 with piece_1189 using piece_1189_mem, piece_1021_mem

theorem linked_10603 : Linked cell_10603 pieces := by
  link_source cell_10603 with piece_1190 using piece_1190_mem, ⟨piece_1021_mem, piece_1022_mem⟩

theorem linked_10604 : Linked cell_10604 pieces := by
  link_source cell_10604 with piece_1190 using piece_1190_mem, piece_1021_mem

theorem linked_10605 : Linked cell_10605 pieces := by
  link_source cell_10605 with piece_1190 using piece_1190_mem, ⟨piece_1020_mem, piece_1021_mem⟩

theorem linked_10606 : Linked cell_10606 pieces := by
  link_source cell_10606 with piece_1190 using piece_1190_mem, piece_1020_mem

theorem linked_10607 : Linked cell_10607 pieces := by
  link_source cell_10607 with piece_1191 using piece_1191_mem, ⟨piece_1020_mem, piece_1021_mem⟩

theorem linked_10608 : Linked cell_10608 pieces := by
  link_source cell_10608 with piece_1191 using piece_1191_mem, piece_1020_mem

theorem linked_10609 : Linked cell_10609 pieces := by
  link_source cell_10609 with piece_1191 using piece_1191_mem, ⟨piece_1019_mem, piece_1020_mem⟩

theorem linked_10610 : Linked cell_10610 pieces := by
  link_source cell_10610 with piece_1191 using piece_1191_mem, piece_1019_mem

theorem linked_10611 : Linked cell_10611 pieces := by
  link_source cell_10611 with piece_1192 using piece_1192_mem, ⟨piece_1019_mem, piece_1020_mem⟩

theorem linked_10612 : Linked cell_10612 pieces := by
  link_source cell_10612 with piece_1192 using piece_1192_mem, piece_1019_mem

theorem linked_10613 : Linked cell_10613 pieces := by
  link_source cell_10613 with piece_1192 using piece_1192_mem, ⟨piece_1018_mem, piece_1019_mem⟩

theorem linked_10614 : Linked cell_10614 pieces := by
  link_source cell_10614 with piece_1192 using piece_1192_mem, piece_1018_mem

theorem linked_10615 : Linked cell_10615 pieces := by
  link_source cell_10615 with piece_1193 using piece_1193_mem, ⟨piece_1018_mem, piece_1019_mem⟩

theorem linked_10616 : Linked cell_10616 pieces := by
  link_source cell_10616 with piece_1193 using piece_1193_mem, piece_1018_mem

theorem linked_10617 : Linked cell_10617 pieces := by
  link_source cell_10617 with piece_1194 using piece_1194_mem, piece_1018_mem

theorem linked_10618 : Linked cell_10618 pieces := by
  link_source cell_10618 with piece_1194 using piece_1194_mem, ⟨piece_1017_mem, piece_1018_mem⟩

theorem linked_10619 : Linked cell_10619 pieces := by
  link_source cell_10619 with piece_1194 using piece_1194_mem, piece_1017_mem

theorem linked_10620 : Linked cell_10620 pieces := by
  link_source cell_10620 with piece_1195 using piece_1195_mem, ⟨piece_1017_mem, piece_1018_mem⟩

theorem linked_10621 : Linked cell_10621 pieces := by
  link_source cell_10621 with piece_1195 using piece_1195_mem, piece_1017_mem

theorem linked_10622 : Linked cell_10622 pieces := by
  link_source cell_10622 with piece_1195 using piece_1195_mem, ⟨piece_1016_mem, piece_1017_mem⟩

theorem linked_10623 : Linked cell_10623 pieces := by
  link_source cell_10623 with piece_1195 using piece_1195_mem, piece_1016_mem

theorem linked_10624 : Linked cell_10624 pieces := by
  link_source cell_10624 with piece_1196 using piece_1196_mem, ⟨piece_1016_mem, piece_1017_mem⟩

theorem linked_10625 : Linked cell_10625 pieces := by
  link_source cell_10625 with piece_1196 using piece_1196_mem, piece_1016_mem

theorem linked_10626 : Linked cell_10626 pieces := by
  link_source cell_10626 with piece_1196 using piece_1196_mem, ⟨piece_1015_mem, piece_1016_mem⟩

theorem linked_10627 : Linked cell_10627 pieces := by
  link_source cell_10627 with piece_1196 using piece_1196_mem, piece_1015_mem

theorem linked_10628 : Linked cell_10628 pieces := by
  link_source cell_10628 with piece_1197 using piece_1197_mem, ⟨piece_1015_mem, piece_1016_mem⟩

theorem linked_10629 : Linked cell_10629 pieces := by
  link_source cell_10629 with piece_1197 using piece_1197_mem, piece_1015_mem

theorem linked_10630 : Linked cell_10630 pieces := by
  link_source cell_10630 with piece_1197 using piece_1197_mem, ⟨piece_1014_mem, piece_1015_mem⟩

theorem linked_10631 : Linked cell_10631 pieces := by
  link_source cell_10631 with piece_1197 using piece_1197_mem, piece_1014_mem

theorem linked_10632 : Linked cell_10632 pieces := by
  link_source cell_10632 with piece_1198 using piece_1198_mem, ⟨piece_1014_mem, piece_1015_mem⟩

theorem linked_10633 : Linked cell_10633 pieces := by
  link_source cell_10633 with piece_1198 using piece_1198_mem, piece_1014_mem

theorem linked_10634 : Linked cell_10634 pieces := by
  link_source cell_10634 with piece_1198 using piece_1198_mem, ⟨piece_1013_mem, piece_1014_mem⟩

theorem linked_10635 : Linked cell_10635 pieces := by
  link_source cell_10635 with piece_1198 using piece_1198_mem, ⟨piece_1012_mem, piece_1013_mem⟩

theorem linked_10636 : Linked cell_10636 pieces := by
  link_source cell_10636 with piece_1199 using piece_1199_mem, piece_1014_mem

theorem linked_10637 : Linked cell_10637 pieces := by
  link_source cell_10637 with piece_1199 using piece_1199_mem, ⟨piece_1012_mem, ⟨piece_1013_mem, piece_1014_mem⟩⟩

theorem linked_10638 : Linked cell_10638 pieces := by
  link_source cell_10638 with piece_1199 using piece_1199_mem, piece_1012_mem

theorem linked_10639 : Linked cell_10639 pieces := by
  link_source cell_10639 with piece_1199 using piece_1199_mem, ⟨piece_1011_mem, piece_1012_mem⟩

theorem linked_10640 : Linked cell_10640 pieces := by
  link_source cell_10640 with piece_1200 using piece_1200_mem, ⟨piece_1012_mem, piece_1013_mem⟩

theorem linked_10641 : Linked cell_10641 pieces := by
  link_source cell_10641 with piece_1200 using piece_1200_mem, ⟨piece_1011_mem, piece_1012_mem⟩

theorem linked_10642 : Linked cell_10642 pieces := by
  link_source cell_10642 with piece_1200 using piece_1200_mem, piece_1011_mem

theorem linked_10643 : Linked cell_10643 pieces := by
  link_source cell_10643 with piece_1200 using piece_1200_mem, ⟨piece_1010_mem, piece_1011_mem⟩

theorem linked_10644 : Linked cell_10644 pieces := by
  link_source cell_10644 with piece_1201 using piece_1201_mem, piece_1011_mem

theorem linked_10645 : Linked cell_10645 pieces := by
  link_source cell_10645 with piece_1201 using piece_1201_mem, ⟨piece_1010_mem, piece_1011_mem⟩

theorem linked_10646 : Linked cell_10646 pieces := by
  link_source cell_10646 with piece_1201 using piece_1201_mem, piece_1010_mem

theorem linked_10647 : Linked cell_10647 pieces := by
  link_source cell_10647 with piece_1201 using piece_1201_mem, ⟨piece_1009_mem, piece_1010_mem⟩

theorem linked_10648 : Linked cell_10648 pieces := by
  link_source cell_10648 with piece_1202 using piece_1202_mem, piece_1010_mem

theorem linked_10649 : Linked cell_10649 pieces := by
  link_source cell_10649 with piece_1202 using piece_1202_mem, ⟨piece_1009_mem, piece_1010_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0212.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0212.cells,List.forall_mem_cons]
  exact ⟨linked_10600, linked_10601, linked_10602, linked_10603, linked_10604, linked_10605, linked_10606, linked_10607, linked_10608, linked_10609, linked_10610, linked_10611, linked_10612, linked_10613, linked_10614, linked_10615, linked_10616, linked_10617, linked_10618, linked_10619, linked_10620, linked_10621, linked_10622, linked_10623, linked_10624, linked_10625, linked_10626, linked_10627, linked_10628, linked_10629, linked_10630, linked_10631, linked_10632, linked_10633, linked_10634, linked_10635, linked_10636, linked_10637, linked_10638, linked_10639, linked_10640, linked_10641, linked_10642, linked_10643, linked_10644, linked_10645, linked_10646, linked_10647, linked_10648, linked_10649, by simp⟩

theorem covered : covers (100024999999999997 / 200000000000000000 : ℚ) (25312499999999999 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0212.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0212
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0213
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(25312499999999999 / 50000000000000000 : ℚ), (101274999999999993 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (61339666270449 / 100000000000000 : ℚ)
  w := (14604698705579 / 10000000000000 : ℚ)
  center := (202524999999999989 / 400000000000000000 : ℚ)
  supportValue := (2088620490189727 / 5000000000000000 : ℚ)
  supportSlope := (-19695942022866093 / 10000000000000000 : ℚ)
  oldCenter := (2088620490189727 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1203
  oldLo := (10400000000000001 / 25000000000000000 : ℚ)
  oldHi := (10400000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_10650 : Cell := { cellDefaults with
  r := (61442465409501 / 100000000000000 : ℚ)
  w := (2923512439453 / 2000000000000 : ℚ)
  newCoefficients := coefficients_1202
  oldLo := (10437500000000001 / 25000000000000000 : ℚ)
  oldHi := (10450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1009]
}

noncomputable def cell_10651 : Cell := { cellDefaults with
  domain := ⟨(101274999999999993 / 200000000000000000 : ℚ), (10129999999999999 / 20000000000000000 : ℚ)⟩
  r := (61442465409501 / 100000000000000 : ℚ)
  w := (2923512439453 / 2000000000000 : ℚ)
  center := (202574999999999983 / 400000000000000000 : ℚ)
  supportValue := (2087390098280521 / 5000000000000000 : ℚ)
  supportSlope := (-9840477365840109 / 5000000000000000 : ℚ)
  oldCenter := (2087390098280521 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1202
  oldLo := (10425000000000001 / 25000000000000000 : ℚ)
  oldHi := (10450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1008, piece_1009]
}

noncomputable def cell_10652 : Cell := { cellDefaults with
  domain := ⟨(10129999999999999 / 20000000000000000 : ℚ), (101324999999999993 / 200000000000000000 : ℚ)⟩
  r := (30704078094319 / 50000000000000 : ℚ)
  w := (14613265678299 / 10000000000000 : ℚ)
  center := (202624999999999983 / 400000000000000000 : ℚ)
  supportValue := (4177468448267793 / 10000000000000000 : ℚ)
  supportSlope := (-1968658337206483 / 1000000000000000 : ℚ)
  oldCenter := (4177468448267793 / 10000000000000000 : ℚ)
  oldLo := (10437500000000001 / 25000000000000000 : ℚ)
  oldHi := (10450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1009]
}

noncomputable def cell_10653 : Cell := { cellDefaults with
  domain := ⟨(101324999999999993 / 200000000000000000 : ℚ), (25337499999999999 / 50000000000000000 : ℚ)⟩
  r := (30704078094319 / 50000000000000 : ℚ)
  w := (14613265678299 / 10000000000000 : ℚ)
  center := (202674999999999989 / 400000000000000000 : ℚ)
  supportValue := (163086287315251 / 390625000000000 : ℚ)
  supportSlope := (-19670620212985797 / 10000000000000000 : ℚ)
  oldCenter := (163086287315251 / 390625000000000 : ℚ)
  oldLo := (10425000000000001 / 25000000000000000 : ℚ)
  oldHi := (10450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1008, piece_1009]
}

noncomputable def cell_10654 : Cell := { cellDefaults with
  domain := ⟨(25337499999999999 / 50000000000000000 : ℚ), (101374999999999999 / 200000000000000000 : ℚ)⟩
  r := (30704078094319 / 50000000000000 : ℚ)
  w := (14613265678299 / 10000000000000 : ℚ)
  center := (40544999999999999 / 80000000000000000 : ℚ)
  supportValue := (5215688484210533 / 12500000000000000 : ℚ)
  supportSlope := (-98273373958057 / 50000000000000 : ℚ)
  oldCenter := (5215688484210533 / 12500000000000000 : ℚ)
  oldLo := (10425000000000001 / 25000000000000000 : ℚ)
  oldHi := (10437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1008]
}

noncomputable def cell_10655 : Cell := { cellDefaults with
  domain := ⟨(101374999999999999 / 200000000000000000 : ℚ), (50700000000000001 / 100000000000000000 : ℚ)⟩
  r := (30704078094319 / 50000000000000 : ℚ)
  w := (14613265678299 / 10000000000000 : ℚ)
  center := (202775000000000001 / 400000000000000000 : ℚ)
  supportValue := (10425238205562011 / 25000000000000000 : ℚ)
  supportSlope := (-6136990230781 / 3125000000000 : ℚ)
  oldCenter := (10425238205562011 / 25000000000000000 : ℚ)
  oldLo := (10412500000000001 / 25000000000000000 : ℚ)
  oldHi := (10437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1007, piece_1008]
}

noncomputable def cell_10656 : Cell := { cellDefaults with
  domain := ⟨(50700000000000001 / 100000000000000000 : ℚ), (101424999999999999 / 200000000000000000 : ℚ)⟩
  r := (61373889686711 / 100000000000000 : ℚ)
  w := (14608978048181 / 10000000000000 : ℚ)
  center := (202825000000000001 / 400000000000000000 : ℚ)
  supportValue := (834555553141323 / 2000000000000000 : ℚ)
  supportSlope := (-785813805826857 / 400000000000000 : ℚ)
  oldCenter := (834555553141323 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1204
  oldLo := (10425000000000001 / 25000000000000000 : ℚ)
  oldHi := (10437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1008]
}

noncomputable def cell_10657 : Cell := { cellDefaults with
  domain := ⟨(101424999999999999 / 200000000000000000 : ℚ), (25362499999999999 / 50000000000000000 : ℚ)⟩
  r := (61373889686711 / 100000000000000 : ℚ)
  w := (14608978048181 / 10000000000000 : ℚ)
  center := (40574999999999999 / 80000000000000000 : ℚ)
  supportValue := (4170323425461239 / 10000000000000000 : ℚ)
  supportSlope := (-9814029010583103 / 5000000000000000 : ℚ)
  oldCenter := (4170323425461239 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1204
  oldLo := (10412500000000001 / 25000000000000000 : ℚ)
  oldHi := (10437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1007, piece_1008]
}

noncomputable def cell_10658 : Cell := { cellDefaults with
  domain := ⟨(25362499999999999 / 50000000000000000 : ℚ), (101474999999999993 / 200000000000000000 : ℚ)⟩
  r := (61373889686711 / 100000000000000 : ℚ)
  w := (14608978048181 / 10000000000000 : ℚ)
  center := (202924999999999989 / 400000000000000000 : ℚ)
  supportValue := (1041967643078591 / 2500000000000000 : ℚ)
  supportSlope := (-9806778729296649 / 5000000000000000 : ℚ)
  oldCenter := (1041967643078591 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1204
  oldLo := (10412500000000001 / 25000000000000000 : ℚ)
  oldHi := (10425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1007]
}

noncomputable def cell_10659 : Cell := { cellDefaults with
  domain := ⟨(101474999999999993 / 200000000000000000 : ℚ), (10149999999999999 / 20000000000000000 : ℚ)⟩
  r := (61373889686711 / 100000000000000 : ℚ)
  w := (14608978048181 / 10000000000000 : ℚ)
  center := (202974999999999983 / 400000000000000000 : ℚ)
  supportValue := (4165420204810227 / 10000000000000000 : ℚ)
  supportSlope := (-4898967530105357 / 2500000000000000 : ℚ)
  oldCenter := (4165420204810227 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1204
  oldHi := (10425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006, piece_1007]
}

noncomputable def cell_10660 : Cell := { cellDefaults with
  domain := ⟨(10149999999999999 / 20000000000000000 : ℚ), (101524999999999993 / 200000000000000000 : ℚ)⟩
  center := (203024999999999983 / 400000000000000000 : ℚ)
  supportValue := (41680971728612587 / 100000000000000000 : ℚ)
  supportSlope := (-38289565477147 / 19531250000000 : ℚ)
  oldCenter := (41680971728612587 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1205
  oldLo := (10412500000000001 / 25000000000000000 : ℚ)
  oldHi := (10425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1007]
}

noncomputable def cell_10661 : Cell := { cellDefaults with
  domain := ⟨(101524999999999993 / 200000000000000000 : ℚ), (25387499999999999 / 50000000000000000 : ℚ)⟩
  center := (203074999999999989 / 400000000000000000 : ℚ)
  supportValue := (4165647966545567 / 10000000000000000 : ℚ)
  supportSlope := (-9792791707975359 / 5000000000000000 : ℚ)
  oldCenter := (4165647966545567 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1205
  oldHi := (10425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006, piece_1007]
}

noncomputable def cell_10662 : Cell := { cellDefaults with
  domain := ⟨(25387499999999999 / 50000000000000000 : ℚ), (1269413407821229 / 2500000000000000 : ℚ)⟩
  center := (50775768156424579 / 100000000000000000 : ℚ)
  supportValue := (8328539729465051 / 20000000000000000 : ℚ)
  supportSlope := (-2447739612004807 / 1250000000000000 : ℚ)
  oldCenter := (8328539729465051 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1205
  oldHi := (10412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006]
}

noncomputable def cell_10663 : Cell := { cellDefaults with
  domain := ⟨(1269413407821229 / 2500000000000000 : ℚ), (101576536312849161 / 200000000000000000 : ℚ)⟩
  center := (203129608938547481 / 400000000000000000 : ℚ)
  supportValue := (4162971992051217 / 10000000000000000 : ℚ)
  supportSlope := (-3914126239084339 / 2000000000000000 : ℚ)
  oldCenter := (4162971992051217 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1206
  oldHi := (10412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006]
}

noncomputable def cell_10664 : Cell := { cellDefaults with
  domain := ⟨(101576536312849161 / 200000000000000000 : ℚ), (50800000000000001 / 100000000000000000 : ℚ)⟩
  center := (203176536312849163 / 400000000000000000 : ℚ)
  supportValue := (10401700192855691 / 25000000000000000 : ℚ)
  supportSlope := (-9776472141820699 / 5000000000000000 : ℚ)
  oldCenter := (10401700192855691 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1206
  oldLo := (10387500000000001 / 25000000000000000 : ℚ)
  oldHi := (10412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1005, piece_1006]
}

noncomputable def cell_10665 : Cell := { cellDefaults with
  domain := ⟨(50800000000000001 / 100000000000000000 : ℚ), (101624999999999999 / 200000000000000000 : ℚ)⟩
  r := (3065274198767 / 5000000000000 : ℚ)
  w := (14600427741439 / 10000000000000 : ℚ)
  center := (203225000000000001 / 400000000000000000 : ℚ)
  supportValue := (2081713412782471 / 5000000000000000 : ℚ)
  supportSlope := (-9781660790518849 / 5000000000000000 : ℚ)
  oldCenter := (2081713412782471 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1207
  oldHi := (10412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006]
}

noncomputable def cell_10666 : Cell := { cellDefaults with
  domain := ⟨(101624999999999999 / 200000000000000000 : ℚ), (25412499999999999 / 50000000000000000 : ℚ)⟩
  r := (3065274198767 / 5000000000000 : ℚ)
  w := (14600427741439 / 10000000000000 : ℚ)
  center := (40654999999999999 / 80000000000000000 : ℚ)
  supportValue := (325076776110093 / 781250000000000 : ℚ)
  supportSlope := (-9771598053368641 / 5000000000000000 : ℚ)
  oldCenter := (325076776110093 / 781250000000000 : ℚ)
  newCoefficients := coefficients_1207
  oldLo := (10387500000000001 / 25000000000000000 : ℚ)
  oldHi := (10412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1005, piece_1006]
}

noncomputable def cell_10667 : Cell := { cellDefaults with
  domain := ⟨(25412499999999999 / 50000000000000000 : ℚ), (101674999999999993 / 200000000000000000 : ℚ)⟩
  r := (3065274198767 / 5000000000000 : ℚ)
  w := (14600427741439 / 10000000000000 : ℚ)
  center := (203324999999999989 / 400000000000000000 : ℚ)
  supportValue := (4158540477778993 / 10000000000000000 : ℚ)
  supportSlope := (-9765887850329341 / 5000000000000000 : ℚ)
  oldCenter := (4158540477778993 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1207
  oldLo := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1005]
}

noncomputable def cell_10668 : Cell := { cellDefaults with
  domain := ⟨(101674999999999993 / 200000000000000000 : ℚ), (10169999999999999 / 20000000000000000 : ℚ)⟩
  r := (3065274198767 / 5000000000000 : ℚ)
  w := (14600427741439 / 10000000000000 : ℚ)
  center := (203374999999999983 / 400000000000000000 : ℚ)
  supportValue := (2078050164442397 / 5000000000000000 : ℚ)
  supportSlope := (-9755567008779057 / 5000000000000000 : ℚ)
  oldCenter := (2078050164442397 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1207
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004, piece_1005]
}

noncomputable def cell_10669 : Cell := { cellDefaults with
  domain := ⟨(10169999999999999 / 20000000000000000 : ℚ), (101724999999999993 / 200000000000000000 : ℚ)⟩
  r := (30635672424463 / 50000000000000 : ℚ)
  w := (14596166376637 / 10000000000000 : ℚ)
  center := (203424999999999983 / 400000000000000000 : ℚ)
  supportValue := (831753220727711 / 2000000000000000 : ℚ)
  supportSlope := (-1220158320983509 / 625000000000000 : ℚ)
  oldCenter := (831753220727711 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1208
  oldLo := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1005]
}

noncomputable def cell_10670 : Cell := { cellDefaults with
  domain := ⟨(101724999999999993 / 200000000000000000 : ℚ), (25437499999999999 / 50000000000000000 : ℚ)⟩
  r := (30635672424463 / 50000000000000 : ℚ)
  w := (14596166376637 / 10000000000000 : ℚ)
  center := (203474999999999989 / 400000000000000000 : ℚ)
  supportValue := (64942611074667 / 156250000000000 : ℚ)
  supportSlope := (-4875340486704653 / 2500000000000000 : ℚ)
  oldCenter := (64942611074667 / 156250000000000 : ℚ)
  newCoefficients := coefficients_1208
  oldLo := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1005]
}

noncomputable def cell_10671 : Cell := { cellDefaults with
  domain := ⟨(25437499999999999 / 50000000000000000 : ℚ), (101774999999999999 / 200000000000000000 : ℚ)⟩
  r := (30635672424463 / 50000000000000 : ℚ)
  w := (14596166376637 / 10000000000000 : ℚ)
  center := (40704999999999999 / 80000000000000000 : ℚ)
  supportValue := (41538901345844337 / 100000000000000000 : ℚ)
  supportSlope := (-4872660174361469 / 2500000000000000 : ℚ)
  oldCenter := (41538901345844337 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1208
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004, piece_1005]
}

noncomputable def cell_10672 : Cell := { cellDefaults with
  domain := ⟨(101774999999999999 / 200000000000000000 : ℚ), (50900000000000001 / 100000000000000000 : ℚ)⟩
  r := (30635672424463 / 50000000000000 : ℚ)
  w := (14596166376637 / 10000000000000 : ℚ)
  center := (203575000000000001 / 400000000000000000 : ℚ)
  supportValue := (1037863766755389 / 2500000000000000 : ℚ)
  supportSlope := (-778798002125831 / 400000000000000 : ℚ)
  oldCenter := (1037863766755389 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1208
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldHi := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004]
}

noncomputable def cell_10673 : Cell := { cellDefaults with
  domain := ⟨(50900000000000001 / 100000000000000000 : ℚ), (101824999999999999 / 200000000000000000 : ℚ)⟩
  r := (30618623725221 / 50000000000000 : ℚ)
  w := (2918382403953 / 2000000000000 : ℚ)
  center := (203625000000000001 / 400000000000000000 : ℚ)
  supportValue := (8308231704114859 / 20000000000000000 : ℚ)
  supportSlope := (-19480422417130887 / 10000000000000000 : ℚ)
  oldCenter := (8308231704114859 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1209
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004, piece_1005]
}

noncomputable def cell_10674 : Cell := { cellDefaults with
  domain := ⟨(101824999999999999 / 200000000000000000 : ℚ), (25462499999999999 / 50000000000000000 : ℚ)⟩
  r := (30618623725221 / 50000000000000 : ℚ)
  w := (2918382403953 / 2000000000000 : ℚ)
  center := (40734999999999999 / 80000000000000000 : ℚ)
  supportValue := (4151681934474877 / 10000000000000000 : ℚ)
  supportSlope := (-3892152090629009 / 2000000000000000 : ℚ)
  oldCenter := (4151681934474877 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1209
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldHi := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004]
}

noncomputable def cell_10675 : Cell := { cellDefaults with
  domain := ⟨(25462499999999999 / 50000000000000000 : ℚ), (101874999999999993 / 200000000000000000 : ℚ)⟩
  r := (30618623725221 / 50000000000000 : ℚ)
  w := (2918382403953 / 2000000000000 : ℚ)
  center := (203724999999999989 / 400000000000000000 : ℚ)
  supportValue := (4149250231648133 / 10000000000000000 : ℚ)
  supportSlope := (-9724256898456851 / 5000000000000000 : ℚ)
  oldCenter := (4149250231648133 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1209
  oldLo := (10362500000000001 / 25000000000000000 : ℚ)
  oldHi := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1003, piece_1004]
}

noncomputable def cell_10676 : Cell := { cellDefaults with
  domain := ⟨(101874999999999993 / 200000000000000000 : ℚ), (10189999999999999 / 20000000000000000 : ℚ)⟩
  r := (30618623725221 / 50000000000000 : ℚ)
  w := (2918382403953 / 2000000000000 : ℚ)
  center := (203774999999999983 / 400000000000000000 : ℚ)
  supportValue := (518352528272403 / 1250000000000000 : ℚ)
  supportSlope := (-4857367558127073 / 2500000000000000 : ℚ)
  oldCenter := (518352528272403 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1209
  oldLo := (10362500000000001 / 25000000000000000 : ℚ)
  oldHi := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1003]
}

noncomputable def cell_10677 : Cell := { cellDefaults with
  domain := ⟨(10189999999999999 / 20000000000000000 : ℚ), (101924999999999993 / 200000000000000000 : ℚ)⟩
  r := (30601596634279 / 50000000000000 : ℚ)
  w := (14587667792769 / 10000000000000 : ℚ)
  center := (203824999999999983 / 400000000000000000 : ℚ)
  supportValue := (8298949971074041 / 20000000000000000 : ℚ)
  supportSlope := (-6220261679379 / 3200000000000 : ℚ)
  oldCenter := (8298949971074041 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1210
  oldLo := (10362500000000001 / 25000000000000000 : ℚ)
  oldHi := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1003, piece_1004]
}

noncomputable def cell_10678 : Cell := { cellDefaults with
  domain := ⟨(101924999999999993 / 200000000000000000 : ℚ), (25487499999999999 / 50000000000000000 : ℚ)⟩
  r := (30601596634279 / 50000000000000 : ℚ)
  w := (14587667792769 / 10000000000000 : ℚ)
  center := (203874999999999989 / 400000000000000000 : ℚ)
  supportValue := (1658818450770839 / 4000000000000000 : ℚ)
  supportSlope := (-1213769097197913 / 625000000000000 : ℚ)
  oldCenter := (1658818450770839 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1210
  oldLo := (10362500000000001 / 25000000000000000 : ℚ)
  oldHi := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1003]
}

noncomputable def cell_10679 : Cell := { cellDefaults with
  domain := ⟨(25487499999999999 / 50000000000000000 : ℚ), (101974999999999999 / 200000000000000000 : ℚ)⟩
  r := (30601596634279 / 50000000000000 : ℚ)
  w := (14587667792769 / 10000000000000 : ℚ)
  center := (40784999999999999 / 80000000000000000 : ℚ)
  supportValue := (4144619684985809 / 10000000000000000 : ℚ)
  supportSlope := (-1940647063413559 / 1000000000000000 : ℚ)
  oldCenter := (4144619684985809 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1210
  oldLo := (41400000000000003 / 100000000000000000 : ℚ)
  oldHi := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1002, piece_1003]
}

noncomputable def cell_10680 : Cell := { cellDefaults with
  domain := ⟨(101974999999999999 / 200000000000000000 : ℚ), (51000000000000001 / 100000000000000000 : ℚ)⟩
  r := (30601596634279 / 50000000000000 : ℚ)
  w := (14587667792769 / 10000000000000 : ℚ)
  center := (203975000000000001 / 400000000000000000 : ℚ)
  supportValue := (4142194723296753 / 10000000000000000 : ℚ)
  supportSlope := (-19389137074658953 / 10000000000000000 : ℚ)
  oldCenter := (4142194723296753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1210
  oldLo := (41400000000000003 / 100000000000000000 : ℚ)
  oldHi := (10362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1002]
}

noncomputable def cell_10681 : Cell := { cellDefaults with
  domain := ⟨(51000000000000001 / 100000000000000000 : ℚ), (102024999999999999 / 200000000000000000 : ℚ)⟩
  r := (30584590269877 / 50000000000000 : ℚ)
  w := (1822928927703 / 1250000000000 : ℚ)
  center := (204025000000000001 / 400000000000000000 : ℚ)
  supportValue := (828968859355971 / 2000000000000000 : ℚ)
  supportSlope := (-387925976383887 / 200000000000000 : ℚ)
  oldCenter := (828968859355971 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1211
  oldLo := (41400000000000003 / 100000000000000000 : ℚ)
  oldHi := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1002, piece_1003]
}

noncomputable def cell_10682 : Cell := { cellDefaults with
  domain := ⟨(102024999999999999 / 200000000000000000 : ℚ), (25512499999999999 / 50000000000000000 : ℚ)⟩
  r := (30584590269877 / 50000000000000 : ℚ)
  w := (1822928927703 / 1250000000000 : ℚ)
  center := (40814999999999999 / 80000000000000000 : ℚ)
  supportValue := (41424204781202933 / 100000000000000000 : ℚ)
  supportSlope := (-4845000750797771 / 2500000000000000 : ℚ)
  oldCenter := (41424204781202933 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1211
  oldLo := (41400000000000003 / 100000000000000000 : ℚ)
  oldHi := (10362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1002]
}

noncomputable def cell_10683 : Cell := { cellDefaults with
  domain := ⟨(25512499999999999 / 50000000000000000 : ℚ), (102074999999999993 / 200000000000000000 : ℚ)⟩
  r := (30584590269877 / 50000000000000 : ℚ)
  w := (1822928927703 / 1250000000000 : ℚ)
  center := (204124999999999989 / 400000000000000000 : ℚ)
  supportValue := (20699996431909143 / 50000000000000000 : ℚ)
  supportSlope := (-1936451367710267 / 1000000000000000 : ℚ)
  oldCenter := (20699996431909143 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1211
  oldLo := (20687150837988827 / 50000000000000000 : ℚ)
  oldHi := (10362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1001, piece_1002]
}

noncomputable def cell_10684 : Cell := { cellDefaults with
  domain := ⟨(102074999999999993 / 200000000000000000 : ℚ), (10209999999999999 / 20000000000000000 : ℚ)⟩
  r := (30584590269877 / 50000000000000 : ℚ)
  w := (1822928927703 / 1250000000000 : ℚ)
  center := (204174999999999983 / 400000000000000000 : ℚ)
  supportValue := (12929935466691 / 31250000000000 : ℚ)
  supportSlope := (-773958122498279 / 400000000000000 : ℚ)
  oldCenter := (12929935466691 / 31250000000000 : ℚ)
  newCoefficients := coefficients_1211
  oldLo := (41350000000000003 / 100000000000000000 : ℚ)
  oldHi := (41400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1000, piece_1001]
}

noncomputable def cell_10685 : Cell := { cellDefaults with
  domain := ⟨(10209999999999999 / 20000000000000000 : ℚ), (102124999999999993 / 200000000000000000 : ℚ)⟩
  r := (61135209896307 / 100000000000000 : ℚ)
  w := (1457920416439 / 1000000000000 : ℚ)
  center := (204224999999999983 / 400000000000000000 : ℚ)
  supportValue := (41402231949285523 / 100000000000000000 : ℚ)
  supportSlope := (-3870872888268797 / 2000000000000000 : ℚ)
  oldCenter := (41402231949285523 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1212
  oldLo := (20687150837988827 / 50000000000000000 : ℚ)
  oldHi := (10362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1001, piece_1002]
}

noncomputable def cell_10686 : Cell := { cellDefaults with
  domain := ⟨(102124999999999993 / 200000000000000000 : ℚ), (25537499999999999 / 50000000000000000 : ℚ)⟩
  r := (61135209896307 / 100000000000000 : ℚ)
  w := (1457920416439 / 1000000000000 : ℚ)
  center := (204274999999999989 / 400000000000000000 : ℚ)
  supportValue := (517225565276577 / 1250000000000000 : ℚ)
  supportSlope := (-19339846813675077 / 10000000000000000 : ℚ)
  oldCenter := (517225565276577 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1212
  oldLo := (41350000000000003 / 100000000000000000 : ℚ)
  oldHi := (41400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1000, piece_1001]
}

noncomputable def cell_10687 : Cell := { cellDefaults with
  domain := ⟨(25537499999999999 / 50000000000000000 : ℚ), (102174999999999999 / 200000000000000000 : ℚ)⟩
  r := (61135209896307 / 100000000000000 : ℚ)
  w := (1457920416439 / 1000000000000 : ℚ)
  center := (40864999999999999 / 80000000000000000 : ℚ)
  supportValue := (4135388351163261 / 10000000000000000 : ℚ)
  supportSlope := (-1207664504628691 / 625000000000000 : ℚ)
  oldCenter := (4135388351163261 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1212
  oldLo := (41300000000000003 / 100000000000000000 : ℚ)
  oldHi := (20687150837988827 / 50000000000000000 : ℚ)
  oldPieces := [piece_999, piece_1000]
}

noncomputable def cell_10688 : Cell := { cellDefaults with
  domain := ⟨(102174999999999999 / 200000000000000000 : ℚ), (51100000000000001 / 100000000000000000 : ℚ)⟩
  r := (61135209896307 / 100000000000000 : ℚ)
  w := (1457920416439 / 1000000000000 : ℚ)
  center := (204375000000000001 / 400000000000000000 : ℚ)
  supportValue := (41329736409473017 / 100000000000000000 : ℚ)
  supportSlope := (-9654457626945231 / 5000000000000000 : ℚ)
  oldCenter := (41329736409473017 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1212
  oldLo := (41300000000000003 / 100000000000000000 : ℚ)
  oldHi := (41350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_999]
}

noncomputable def cell_10689 : Cell := { cellDefaults with
  domain := ⟨(51100000000000001 / 100000000000000000 : ℚ), (102224999999999999 / 200000000000000000 : ℚ)⟩
  r := (7637660132867 / 12500000000000 : ℚ)
  w := (1457498559497 / 1000000000000 : ℚ)
  center := (204425000000000001 / 400000000000000000 : ℚ)
  supportValue := (4135611813803349 / 10000000000000000 : ℚ)
  supportSlope := (-386250111304289 / 200000000000000 : ℚ)
  oldCenter := (4135611813803349 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1213
  oldLo := (41300000000000003 / 100000000000000000 : ℚ)
  oldHi := (20687150837988827 / 50000000000000000 : ℚ)
  oldPieces := [piece_999, piece_1000]
}

noncomputable def cell_10690 : Cell := { cellDefaults with
  domain := ⟨(102224999999999999 / 200000000000000000 : ℚ), (25562499999999999 / 50000000000000000 : ℚ)⟩
  r := (7637660132867 / 12500000000000 : ℚ)
  w := (1457498559497 / 1000000000000 : ℚ)
  center := (40894999999999999 / 80000000000000000 : ℚ)
  supportValue := (1033299591953307 / 2500000000000000 : ℚ)
  supportSlope := (-771993491493909 / 400000000000000 : ℚ)
  oldCenter := (1033299591953307 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1213
  oldLo := (41300000000000003 / 100000000000000000 : ℚ)
  oldHi := (41350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_999]
}

noncomputable def cell_10691 : Cell := { cellDefaults with
  domain := ⟨(25562499999999999 / 50000000000000000 : ℚ), (102274999999999993 / 200000000000000000 : ℚ)⟩
  r := (7637660132867 / 12500000000000 : ℚ)
  w := (1457498559497 / 1000000000000 : ℚ)
  center := (204524999999999989 / 400000000000000000 : ℚ)
  supportValue := (1652314878398639 / 4000000000000000 : ℚ)
  supportSlope := (-9640414906245721 / 5000000000000000 : ℚ)
  oldCenter := (1652314878398639 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1213
  oldLo := (41250000000000003 / 100000000000000000 : ℚ)
  oldHi := (41350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_998, piece_999]
}

noncomputable def cell_10692 : Cell := { cellDefaults with
  domain := ⟨(102274999999999993 / 200000000000000000 : ℚ), (10229999999999999 / 20000000000000000 : ℚ)⟩
  r := (7637660132867 / 12500000000000 : ℚ)
  w := (1457498559497 / 1000000000000 : ℚ)
  center := (204574999999999983 / 400000000000000000 : ℚ)
  supportValue := (825675541097619 / 2000000000000000 : ℚ)
  supportSlope := (-9634513651320997 / 5000000000000000 : ℚ)
  oldCenter := (825675541097619 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1213
  oldLo := (41250000000000003 / 100000000000000000 : ℚ)
  oldHi := (41300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_998]
}

noncomputable def cell_10693 : Cell := { cellDefaults with
  domain := ⟨(10229999999999999 / 20000000000000000 : ℚ), (102324999999999993 / 200000000000000000 : ℚ)⟩
  r := (61067394807191 / 100000000000000 : ℚ)
  w := (14570775653391 / 10000000000000 : ℚ)
  center := (204624999999999983 / 400000000000000000 : ℚ)
  supportValue := (1032752532612721 / 2500000000000000 : ℚ)
  supportSlope := (-19270726226403487 / 10000000000000000 : ℚ)
  oldCenter := (1032752532612721 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1214
  oldLo := (41250000000000003 / 100000000000000000 : ℚ)
  oldHi := (41350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_998, piece_999]
}

noncomputable def cell_10694 : Cell := { cellDefaults with
  domain := ⟨(102324999999999993 / 200000000000000000 : ℚ), (25587499999999999 / 50000000000000000 : ℚ)⟩
  r := (61067394807191 / 100000000000000 : ℚ)
  w := (14570775653391 / 10000000000000 : ℚ)
  center := (204674999999999989 / 400000000000000000 : ℚ)
  supportValue := (2064300950683231 / 5000000000000000 : ℚ)
  supportSlope := (-154079811781979 / 80000000000000 : ℚ)
  oldCenter := (2064300950683231 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1214
  oldLo := (41250000000000003 / 100000000000000000 : ℚ)
  oldHi := (41300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_998]
}

noncomputable def cell_10695 : Cell := { cellDefaults with
  domain := ⟨(25587499999999999 / 50000000000000000 : ℚ), (102374999999999999 / 200000000000000000 : ℚ)⟩
  r := (61067394807191 / 100000000000000 : ℚ)
  w := (14570775653391 / 10000000000000 : ℚ)
  center := (40944999999999999 / 80000000000000000 : ℚ)
  supportValue := (2063097854931337 / 5000000000000000 : ℚ)
  supportSlope := (-4809778550238209 / 2500000000000000 : ℚ)
  oldCenter := (2063097854931337 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1214
  oldLo := (41200000000000003 / 100000000000000000 : ℚ)
  oldHi := (41300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_997, piece_998]
}

noncomputable def cell_10696 : Cell := { cellDefaults with
  domain := ⟨(102374999999999999 / 200000000000000000 : ℚ), (51200000000000001 / 100000000000000000 : ℚ)⟩
  r := (61067394807191 / 100000000000000 : ℚ)
  w := (14570775653391 / 10000000000000 : ℚ)
  center := (204775000000000001 / 400000000000000000 : ℚ)
  supportValue := (41237914281649507 / 100000000000000000 : ℚ)
  supportSlope := (-1201830707307361 / 625000000000000 : ℚ)
  oldCenter := (41237914281649507 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1214
  oldLo := (41200000000000003 / 100000000000000000 : ℚ)
  oldHi := (41250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_997]
}

noncomputable def cell_10697 : Cell := { cellDefaults with
  domain := ⟨(51200000000000001 / 100000000000000000 : ℚ), (204849999999999999 / 400000000000000000 : ℚ)⟩
  r := (3814596843169 / 6250000000000 : ℚ)
  w := (7283287026757 / 5000000000000 : ℚ)
  center := (409650000000000003 / 800000000000000000 : ℚ)
  supportValue := (8252836737834437 / 20000000000000000 : ℚ)
  supportSlope := (-240375235762393 / 125000000000000 : ℚ)
  oldCenter := (8252836737834437 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1215
  oldLo := (41250000000000003 / 100000000000000000 : ℚ)
  oldHi := (41300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_998]
}

noncomputable def cell_10698 : Cell := { cellDefaults with
  domain := ⟨(204849999999999999 / 400000000000000000 : ℚ), (102449999999999997 / 200000000000000000 : ℚ)⟩
  r := (3814596843169 / 6250000000000 : ℚ)
  w := (7283287026757 / 5000000000000 : ℚ)
  center := (409749999999999993 / 800000000000000000 : ℚ)
  supportValue := (4124015345772369 / 10000000000000000 : ℚ)
  supportSlope := (-2402410532036621 / 1250000000000000 : ℚ)
  oldCenter := (4124015345772369 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1215
  oldLo := (41200000000000003 / 100000000000000000 : ℚ)
  oldHi := (41300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_997, piece_998]
}

noncomputable def cell_10699 : Cell := { cellDefaults with
  domain := ⟨(102449999999999997 / 200000000000000000 : ℚ), (204949999999999989 / 400000000000000000 : ℚ)⟩
  r := (3814596843169 / 6250000000000 : ℚ)
  w := (7283287026757 / 5000000000000 : ℚ)
  center := (409849999999999983 / 800000000000000000 : ℚ)
  supportValue := (2060807057927707 / 5000000000000000 : ℚ)
  supportSlope := (-9599693347991227 / 5000000000000000 : ℚ)
  oldCenter := (2060807057927707 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1215
  oldLo := (41200000000000003 / 100000000000000000 : ℚ)
  oldHi := (41250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_997]
}

theorem check_10650 : cell_10650.check = true := by
  decide +kernel

theorem check_10651 : cell_10651.check = true := by
  decide +kernel

theorem check_10652 : cell_10652.check = true := by
  decide +kernel

theorem check_10653 : cell_10653.check = true := by
  decide +kernel

theorem check_10654 : cell_10654.check = true := by
  decide +kernel

theorem check_10655 : cell_10655.check = true := by
  decide +kernel

theorem check_10656 : cell_10656.check = true := by
  decide +kernel

theorem check_10657 : cell_10657.check = true := by
  decide +kernel

theorem check_10658 : cell_10658.check = true := by
  decide +kernel

theorem check_10659 : cell_10659.check = true := by
  decide +kernel

theorem check_10660 : cell_10660.check = true := by
  decide +kernel

theorem check_10661 : cell_10661.check = true := by
  decide +kernel

theorem check_10662 : cell_10662.check = true := by
  decide +kernel

theorem check_10663 : cell_10663.check = true := by
  decide +kernel

theorem check_10664 : cell_10664.check = true := by
  decide +kernel

theorem check_10665 : cell_10665.check = true := by
  decide +kernel

theorem check_10666 : cell_10666.check = true := by
  decide +kernel

theorem check_10667 : cell_10667.check = true := by
  decide +kernel

theorem check_10668 : cell_10668.check = true := by
  decide +kernel

theorem check_10669 : cell_10669.check = true := by
  decide +kernel

theorem check_10670 : cell_10670.check = true := by
  decide +kernel

theorem check_10671 : cell_10671.check = true := by
  decide +kernel

theorem check_10672 : cell_10672.check = true := by
  decide +kernel

theorem check_10673 : cell_10673.check = true := by
  decide +kernel

theorem check_10674 : cell_10674.check = true := by
  decide +kernel

theorem check_10675 : cell_10675.check = true := by
  decide +kernel

theorem check_10676 : cell_10676.check = true := by
  decide +kernel

theorem check_10677 : cell_10677.check = true := by
  decide +kernel

theorem check_10678 : cell_10678.check = true := by
  decide +kernel

theorem check_10679 : cell_10679.check = true := by
  decide +kernel

theorem check_10680 : cell_10680.check = true := by
  decide +kernel

theorem check_10681 : cell_10681.check = true := by
  decide +kernel

theorem check_10682 : cell_10682.check = true := by
  decide +kernel

theorem check_10683 : cell_10683.check = true := by
  decide +kernel

theorem check_10684 : cell_10684.check = true := by
  decide +kernel

theorem check_10685 : cell_10685.check = true := by
  decide +kernel

theorem check_10686 : cell_10686.check = true := by
  decide +kernel

theorem check_10687 : cell_10687.check = true := by
  decide +kernel

theorem check_10688 : cell_10688.check = true := by
  decide +kernel

theorem check_10689 : cell_10689.check = true := by
  decide +kernel

theorem check_10690 : cell_10690.check = true := by
  decide +kernel

theorem check_10691 : cell_10691.check = true := by
  decide +kernel

theorem check_10692 : cell_10692.check = true := by
  decide +kernel

theorem check_10693 : cell_10693.check = true := by
  decide +kernel

theorem check_10694 : cell_10694.check = true := by
  decide +kernel

theorem check_10695 : cell_10695.check = true := by
  decide +kernel

theorem check_10696 : cell_10696.check = true := by
  decide +kernel

theorem check_10697 : cell_10697.check = true := by
  decide +kernel

theorem check_10698 : cell_10698.check = true := by
  decide +kernel

theorem check_10699 : cell_10699.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_10650, cell_10651, cell_10652, cell_10653, cell_10654, cell_10655, cell_10656, cell_10657, cell_10658, cell_10659, cell_10660, cell_10661, cell_10662, cell_10663, cell_10664, cell_10665, cell_10666, cell_10667, cell_10668, cell_10669, cell_10670, cell_10671, cell_10672, cell_10673, cell_10674, cell_10675, cell_10676, cell_10677, cell_10678, cell_10679, cell_10680, cell_10681, cell_10682, cell_10683, cell_10684, cell_10685, cell_10686, cell_10687, cell_10688, cell_10689, cell_10690, cell_10691, cell_10692, cell_10693, cell_10694, cell_10695, cell_10696, cell_10697, cell_10698, cell_10699]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10650, check_10651, check_10652, check_10653, check_10654, check_10655, check_10656, check_10657, check_10658, check_10659, check_10660, check_10661, check_10662, check_10663, check_10664, check_10665, check_10666, check_10667, check_10668, check_10669, check_10670, check_10671, check_10672, check_10673, check_10674, check_10675, check_10676, check_10677, check_10678, check_10679, check_10680, check_10681, check_10682, check_10683, check_10684, check_10685, check_10686, check_10687, check_10688, check_10689, check_10690, check_10691, check_10692, check_10693, check_10694, check_10695, check_10696, check_10697, check_10698, check_10699, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0213

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0213
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0213
open AnalyticBounds.ExpressionCertificate

theorem linked_10650 : Linked cell_10650 pieces := by
  link_source cell_10650 with piece_1202 using piece_1202_mem, piece_1009_mem

theorem linked_10651 : Linked cell_10651 pieces := by
  link_source cell_10651 with piece_1202 using piece_1202_mem, ⟨piece_1008_mem, piece_1009_mem⟩

theorem linked_10652 : Linked cell_10652 pieces := by
  link_source cell_10652 with piece_1203 using piece_1203_mem, piece_1009_mem

theorem linked_10653 : Linked cell_10653 pieces := by
  link_source cell_10653 with piece_1203 using piece_1203_mem, ⟨piece_1008_mem, piece_1009_mem⟩

theorem linked_10654 : Linked cell_10654 pieces := by
  link_source cell_10654 with piece_1203 using piece_1203_mem, piece_1008_mem

theorem linked_10655 : Linked cell_10655 pieces := by
  link_source cell_10655 with piece_1203 using piece_1203_mem, ⟨piece_1007_mem, piece_1008_mem⟩

theorem linked_10656 : Linked cell_10656 pieces := by
  link_source cell_10656 with piece_1204 using piece_1204_mem, piece_1008_mem

theorem linked_10657 : Linked cell_10657 pieces := by
  link_source cell_10657 with piece_1204 using piece_1204_mem, ⟨piece_1007_mem, piece_1008_mem⟩

theorem linked_10658 : Linked cell_10658 pieces := by
  link_source cell_10658 with piece_1204 using piece_1204_mem, piece_1007_mem

theorem linked_10659 : Linked cell_10659 pieces := by
  link_source cell_10659 with piece_1204 using piece_1204_mem, ⟨piece_1006_mem, piece_1007_mem⟩

theorem linked_10660 : Linked cell_10660 pieces := by
  link_source cell_10660 with piece_1205 using piece_1205_mem, piece_1007_mem

theorem linked_10661 : Linked cell_10661 pieces := by
  link_source cell_10661 with piece_1205 using piece_1205_mem, ⟨piece_1006_mem, piece_1007_mem⟩

theorem linked_10662 : Linked cell_10662 pieces := by
  link_source cell_10662 with piece_1205 using piece_1205_mem, piece_1006_mem

theorem linked_10663 : Linked cell_10663 pieces := by
  link_source cell_10663 with piece_1206 using piece_1206_mem, piece_1006_mem

theorem linked_10664 : Linked cell_10664 pieces := by
  link_source cell_10664 with piece_1206 using piece_1206_mem, ⟨piece_1005_mem, piece_1006_mem⟩

theorem linked_10665 : Linked cell_10665 pieces := by
  link_source cell_10665 with piece_1207 using piece_1207_mem, piece_1006_mem

theorem linked_10666 : Linked cell_10666 pieces := by
  link_source cell_10666 with piece_1207 using piece_1207_mem, ⟨piece_1005_mem, piece_1006_mem⟩

theorem linked_10667 : Linked cell_10667 pieces := by
  link_source cell_10667 with piece_1207 using piece_1207_mem, piece_1005_mem

theorem linked_10668 : Linked cell_10668 pieces := by
  link_source cell_10668 with piece_1207 using piece_1207_mem, ⟨piece_1004_mem, piece_1005_mem⟩

theorem linked_10669 : Linked cell_10669 pieces := by
  link_source cell_10669 with piece_1208 using piece_1208_mem, piece_1005_mem

theorem linked_10670 : Linked cell_10670 pieces := by
  link_source cell_10670 with piece_1208 using piece_1208_mem, piece_1005_mem

theorem linked_10671 : Linked cell_10671 pieces := by
  link_source cell_10671 with piece_1208 using piece_1208_mem, ⟨piece_1004_mem, piece_1005_mem⟩

theorem linked_10672 : Linked cell_10672 pieces := by
  link_source cell_10672 with piece_1208 using piece_1208_mem, piece_1004_mem

theorem linked_10673 : Linked cell_10673 pieces := by
  link_source cell_10673 with piece_1209 using piece_1209_mem, ⟨piece_1004_mem, piece_1005_mem⟩

theorem linked_10674 : Linked cell_10674 pieces := by
  link_source cell_10674 with piece_1209 using piece_1209_mem, piece_1004_mem

theorem linked_10675 : Linked cell_10675 pieces := by
  link_source cell_10675 with piece_1209 using piece_1209_mem, ⟨piece_1003_mem, piece_1004_mem⟩

theorem linked_10676 : Linked cell_10676 pieces := by
  link_source cell_10676 with piece_1209 using piece_1209_mem, piece_1003_mem

theorem linked_10677 : Linked cell_10677 pieces := by
  link_source cell_10677 with piece_1210 using piece_1210_mem, ⟨piece_1003_mem, piece_1004_mem⟩

theorem linked_10678 : Linked cell_10678 pieces := by
  link_source cell_10678 with piece_1210 using piece_1210_mem, piece_1003_mem

theorem linked_10679 : Linked cell_10679 pieces := by
  link_source cell_10679 with piece_1210 using piece_1210_mem, ⟨piece_1002_mem, piece_1003_mem⟩

theorem linked_10680 : Linked cell_10680 pieces := by
  link_source cell_10680 with piece_1210 using piece_1210_mem, piece_1002_mem

theorem linked_10681 : Linked cell_10681 pieces := by
  link_source cell_10681 with piece_1211 using piece_1211_mem, ⟨piece_1002_mem, piece_1003_mem⟩

theorem linked_10682 : Linked cell_10682 pieces := by
  link_source cell_10682 with piece_1211 using piece_1211_mem, piece_1002_mem

theorem linked_10683 : Linked cell_10683 pieces := by
  link_source cell_10683 with piece_1211 using piece_1211_mem, ⟨piece_1001_mem, piece_1002_mem⟩

theorem linked_10684 : Linked cell_10684 pieces := by
  link_source cell_10684 with piece_1211 using piece_1211_mem, ⟨piece_1000_mem, piece_1001_mem⟩

theorem linked_10685 : Linked cell_10685 pieces := by
  link_source cell_10685 with piece_1212 using piece_1212_mem, ⟨piece_1001_mem, piece_1002_mem⟩

theorem linked_10686 : Linked cell_10686 pieces := by
  link_source cell_10686 with piece_1212 using piece_1212_mem, ⟨piece_1000_mem, piece_1001_mem⟩

theorem linked_10687 : Linked cell_10687 pieces := by
  link_source cell_10687 with piece_1212 using piece_1212_mem, ⟨piece_999_mem, piece_1000_mem⟩

theorem linked_10688 : Linked cell_10688 pieces := by
  link_source cell_10688 with piece_1212 using piece_1212_mem, piece_999_mem

theorem linked_10689 : Linked cell_10689 pieces := by
  link_source cell_10689 with piece_1213 using piece_1213_mem, ⟨piece_999_mem, piece_1000_mem⟩

theorem linked_10690 : Linked cell_10690 pieces := by
  link_source cell_10690 with piece_1213 using piece_1213_mem, piece_999_mem

theorem linked_10691 : Linked cell_10691 pieces := by
  link_source cell_10691 with piece_1213 using piece_1213_mem, ⟨piece_998_mem, piece_999_mem⟩

theorem linked_10692 : Linked cell_10692 pieces := by
  link_source cell_10692 with piece_1213 using piece_1213_mem, piece_998_mem

theorem linked_10693 : Linked cell_10693 pieces := by
  link_source cell_10693 with piece_1214 using piece_1214_mem, ⟨piece_998_mem, piece_999_mem⟩

theorem linked_10694 : Linked cell_10694 pieces := by
  link_source cell_10694 with piece_1214 using piece_1214_mem, piece_998_mem

theorem linked_10695 : Linked cell_10695 pieces := by
  link_source cell_10695 with piece_1214 using piece_1214_mem, ⟨piece_997_mem, piece_998_mem⟩

theorem linked_10696 : Linked cell_10696 pieces := by
  link_source cell_10696 with piece_1214 using piece_1214_mem, piece_997_mem

theorem linked_10697 : Linked cell_10697 pieces := by
  link_source cell_10697 with piece_1215 using piece_1215_mem, piece_998_mem

theorem linked_10698 : Linked cell_10698 pieces := by
  link_source cell_10698 with piece_1215 using piece_1215_mem, ⟨piece_997_mem, piece_998_mem⟩

theorem linked_10699 : Linked cell_10699 pieces := by
  link_source cell_10699 with piece_1215 using piece_1215_mem, piece_997_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0213.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0213.cells,List.forall_mem_cons]
  exact ⟨linked_10650, linked_10651, linked_10652, linked_10653, linked_10654, linked_10655, linked_10656, linked_10657, linked_10658, linked_10659, linked_10660, linked_10661, linked_10662, linked_10663, linked_10664, linked_10665, linked_10666, linked_10667, linked_10668, linked_10669, linked_10670, linked_10671, linked_10672, linked_10673, linked_10674, linked_10675, linked_10676, linked_10677, linked_10678, linked_10679, linked_10680, linked_10681, linked_10682, linked_10683, linked_10684, linked_10685, linked_10686, linked_10687, linked_10688, linked_10689, linked_10690, linked_10691, linked_10692, linked_10693, linked_10694, linked_10695, linked_10696, linked_10697, linked_10698, linked_10699, by simp⟩

theorem covered : covers (25312499999999999 / 50000000000000000 : ℚ) (204949999999999989 / 400000000000000000 : ℚ)
    (SourceCertificates.Chunk0213.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0213
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0214
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(204949999999999989 / 400000000000000000 : ℚ), (12812499999999999 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (60965986431421 / 100000000000000 : ℚ)
  w := (14558197430993 / 10000000000000 : ℚ)
  center := (409949999999999973 / 800000000000000000 : ℚ)
  supportValue := (20596075168116007 / 50000000000000000 : ℚ)
  supportSlope := (-9593895079814523 / 5000000000000000 : ℚ)
  oldCenter := (20596075168116007 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1216
  oldLo := (40750000000000003 / 100000000000000000 : ℚ)
  oldHi := (41050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_10700 : Cell := { cellDefaults with
  r := (3814596843169 / 6250000000000 : ℚ)
  w := (7283287026757 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1215
  oldLo := (41150000000000003 / 100000000000000000 : ℚ)
  oldHi := (41250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_996, piece_997]
}

noncomputable def cell_10701 : Cell := { cellDefaults with
  domain := ⟨(12812499999999999 / 25000000000000000 : ℚ), (205049999999999989 / 400000000000000000 : ℚ)⟩
  r := (60999747324899 / 100000000000000 : ℚ)
  w := (455074415841 / 312500000000 : ℚ)
  center := (410049999999999973 / 800000000000000000 : ℚ)
  supportValue := (824367218279563 / 2000000000000000 : ℚ)
  supportSlope := (-4797591719447123 / 2500000000000000 : ℚ)
  oldCenter := (824367218279563 / 2000000000000000 : ℚ)
  oldLo := (41200000000000003 / 100000000000000000 : ℚ)
  oldHi := (41250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_997]
}

noncomputable def cell_10702 : Cell := { cellDefaults with
  domain := ⟨(205049999999999989 / 400000000000000000 : ℚ), (102549999999999997 / 200000000000000000 : ℚ)⟩
  r := (60999747324899 / 100000000000000 : ℚ)
  w := (455074415841 / 312500000000 : ℚ)
  center := (410149999999999983 / 800000000000000000 : ℚ)
  supportValue := (2059719132494837 / 5000000000000000 : ℚ)
  supportSlope := (-19177756099731127 / 10000000000000000 : ℚ)
  oldCenter := (2059719132494837 / 5000000000000000 : ℚ)
  oldLo := (41150000000000003 / 100000000000000000 : ℚ)
  oldHi := (41250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_996, piece_997]
}

noncomputable def cell_10703 : Cell := { cellDefaults with
  domain := ⟨(102549999999999997 / 200000000000000000 : ℚ), (205149999999999999 / 400000000000000000 : ℚ)⟩
  r := (60999747324899 / 100000000000000 : ℚ)
  w := (455074415841 / 312500000000 : ℚ)
  center := (410249999999999993 / 800000000000000000 : ℚ)
  supportValue := (4117041978413751 / 10000000000000000 : ℚ)
  supportSlope := (-4789963478272839 / 2500000000000000 : ℚ)
  oldCenter := (4117041978413751 / 10000000000000000 : ℚ)
  oldLo := (41150000000000003 / 100000000000000000 : ℚ)
  oldHi := (41200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_996]
}

noncomputable def cell_10704 : Cell := { cellDefaults with
  domain := ⟨(205149999999999999 / 400000000000000000 : ℚ), (51300000000000001 / 100000000000000000 : ℚ)⟩
  r := (60999747324899 / 100000000000000 : ℚ)
  w := (455074415841 / 312500000000 : ℚ)
  center := (410350000000000003 / 800000000000000000 : ℚ)
  supportValue := (205732404316347 / 500000000000000 : ℚ)
  supportSlope := (-19146314775946611 / 10000000000000000 : ℚ)
  oldCenter := (205732404316347 / 500000000000000 : ℚ)
  oldLo := (41100000000000003 / 100000000000000000 : ℚ)
  oldHi := (41200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_995, piece_996]
}

noncomputable def cell_10705 : Cell := { cellDefaults with
  domain := ⟨(51300000000000001 / 100000000000000000 : ℚ), (205249999999999999 / 400000000000000000 : ℚ)⟩
  center := (410450000000000003 / 800000000000000000 : ℚ)
  supportValue := (257328966669433 / 625000000000000 : ℚ)
  supportSlope := (-9575431087479449 / 5000000000000000 : ℚ)
  oldCenter := (257328966669433 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1217
  oldLo := (41150000000000003 / 100000000000000000 : ℚ)
  oldHi := (41200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_996]
}

noncomputable def cell_10706 : Cell := { cellDefaults with
  domain := ⟨(205249999999999999 / 400000000000000000 : ℚ), (102649999999999997 / 200000000000000000 : ℚ)⟩
  center := (410549999999999993 / 800000000000000000 : ℚ)
  supportValue := (4114870827685587 / 10000000000000000 : ℚ)
  supportSlope := (-19136302568842603 / 10000000000000000 : ℚ)
  oldCenter := (4114870827685587 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1217
  oldLo := (41100000000000003 / 100000000000000000 : ℚ)
  oldHi := (41200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_995, piece_996]
}

noncomputable def cell_10707 : Cell := { cellDefaults with
  domain := ⟨(102649999999999997 / 200000000000000000 : ℚ), (5132960893854749 / 10000000000000000 : ℚ)⟩
  center := (205309217877094977 / 400000000000000000 : ℚ)
  supportValue := (205661514915549 / 500000000000000 : ℚ)
  supportSlope := (-956351627793051 / 500000000000000 : ℚ)
  oldCenter := (205661514915549 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1217
  oldLo := (41100000000000003 / 100000000000000000 : ℚ)
  oldHi := (41150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_995]
}

noncomputable def cell_10708 : Cell := { cellDefaults with
  domain := ⟨(5132960893854749 / 10000000000000000 : ℚ), (51339804469273743 / 100000000000000000 : ℚ)⟩
  center := (102669413407821233 / 200000000000000000 : ℚ)
  supportValue := (513976968584257 / 1250000000000000 : ℚ)
  supportSlope := (-9557359405484369 / 5000000000000000 : ℚ)
  oldCenter := (513976968584257 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1218
  oldLo := (41100000000000003 / 100000000000000000 : ℚ)
  oldHi := (41150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_995]
}

noncomputable def cell_10709 : Cell := { cellDefaults with
  domain := ⟨(51339804469273743 / 100000000000000000 : ℚ), (12837499999999999 / 25000000000000000 : ℚ)⟩
  center := (102689804469273739 / 200000000000000000 : ℚ)
  supportValue := (8219741125309059 / 20000000000000000 : ℚ)
  supportSlope := (-19104178298877577 / 10000000000000000 : ℚ)
  oldCenter := (8219741125309059 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1218
  oldLo := (41050000000000003 / 100000000000000000 : ℚ)
  oldHi := (41150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_994, piece_995]
}

noncomputable def cell_10710 : Cell := { cellDefaults with
  domain := ⟨(12837499999999999 / 25000000000000000 : ℚ), (205449999999999989 / 400000000000000000 : ℚ)⟩
  r := (15233066812413 / 25000000000000 : ℚ)
  w := (7277011263459 / 5000000000000 : ℚ)
  center := (410849999999999973 / 800000000000000000 : ℚ)
  supportValue := (4112700375845691 / 10000000000000000 : ℚ)
  supportSlope := (-4777875739009973 / 2500000000000000 : ℚ)
  oldCenter := (4112700375845691 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1219
  oldLo := (41100000000000003 / 100000000000000000 : ℚ)
  oldHi := (41150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_995]
}

noncomputable def cell_10711 : Cell := { cellDefaults with
  domain := ⟨(205449999999999989 / 400000000000000000 : ℚ), (102749999999999997 / 200000000000000000 : ℚ)⟩
  r := (15233066812413 / 25000000000000 : ℚ)
  w := (7277011263459 / 5000000000000 : ℚ)
  center := (410949999999999983 / 800000000000000000 : ℚ)
  supportValue := (102757818325081 / 250000000000000 : ℚ)
  supportSlope := (-3055187604657 / 1600000000000 : ℚ)
  oldCenter := (102757818325081 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1219
  oldLo := (41050000000000003 / 100000000000000000 : ℚ)
  oldHi := (41150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_994, piece_995]
}

noncomputable def cell_10712 : Cell := { cellDefaults with
  domain := ⟨(102749999999999997 / 200000000000000000 : ℚ), (205549999999999999 / 400000000000000000 : ℚ)⟩
  r := (15233066812413 / 25000000000000 : ℚ)
  w := (7277011263459 / 5000000000000 : ℚ)
  center := (411049999999999993 / 800000000000000000 : ℚ)
  supportValue := (10269816150465219 / 25000000000000000 : ℚ)
  supportSlope := (-9540614166864293 / 5000000000000000 : ℚ)
  oldCenter := (10269816150465219 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1219
  oldLo := (41050000000000003 / 100000000000000000 : ℚ)
  oldHi := (41100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_994]
}

noncomputable def cell_10713 : Cell := { cellDefaults with
  domain := ⟨(205549999999999999 / 400000000000000000 : ℚ), (51400000000000001 / 100000000000000000 : ℚ)⟩
  r := (15233066812413 / 25000000000000 : ℚ)
  w := (7277011263459 / 5000000000000 : ℚ)
  center := (411150000000000003 / 800000000000000000 : ℚ)
  supportValue := (4105542601128621 / 10000000000000000 : ℚ)
  supportSlope := (-9531792487308557 / 5000000000000000 : ℚ)
  oldCenter := (4105542601128621 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1219
  oldLo := (41000000000000003 / 100000000000000000 : ℚ)
  oldHi := (41100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_993, piece_994]
}

noncomputable def cell_10714 : Cell := { cellDefaults with
  domain := ⟨(51400000000000001 / 100000000000000000 : ℚ), (205649999999999999 / 400000000000000000 : ℚ)⟩
  r := (15224647212093 / 25000000000000 : ℚ)
  w := (3637463836353 / 2500000000000 : ℚ)
  center := (411250000000000003 / 800000000000000000 : ℚ)
  supportValue := (8216294456377573 / 20000000000000000 : ℚ)
  supportSlope := (-19072293440986727 / 10000000000000000 : ℚ)
  oldCenter := (8216294456377573 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1220
  oldLo := (41050000000000003 / 100000000000000000 : ℚ)
  oldHi := (41100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_994]
}

noncomputable def cell_10715 : Cell := { cellDefaults with
  domain := ⟨(205649999999999999 / 400000000000000000 : ℚ), (102849999999999997 / 200000000000000000 : ℚ)⟩
  r := (15224647212093 / 25000000000000 : ℚ)
  w := (3637463836353 / 2500000000000 : ℚ)
  center := (411349999999999993 / 800000000000000000 : ℚ)
  supportValue := (4105764484760381 / 10000000000000000 : ℚ)
  supportSlope := (-19053617189419243 / 10000000000000000 : ℚ)
  oldCenter := (4105764484760381 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1220
  oldLo := (41000000000000003 / 100000000000000000 : ℚ)
  oldHi := (41100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_993, piece_994]
}

noncomputable def cell_10716 : Cell := { cellDefaults with
  domain := ⟨(102849999999999997 / 200000000000000000 : ℚ), (205749999999999989 / 400000000000000000 : ℚ)⟩
  r := (15224647212093 / 25000000000000 : ℚ)
  w := (3637463836353 / 2500000000000 : ℚ)
  center := (411449999999999983 / 800000000000000000 : ℚ)
  supportValue := (1025845842356319 / 2500000000000000 : ℚ)
  supportSlope := (-4760534615829069 / 2500000000000000 : ℚ)
  oldCenter := (1025845842356319 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1220
  oldLo := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_993]
}

noncomputable def cell_10717 : Cell := { cellDefaults with
  domain := ⟨(205749999999999989 / 400000000000000000 : ℚ), (12862499999999999 / 25000000000000000 : ℚ)⟩
  r := (15224647212093 / 25000000000000 : ℚ)
  w := (3637463836353 / 2500000000000 : ℚ)
  center := (411549999999999973 / 800000000000000000 : ℚ)
  supportValue := (4101004394798413 / 10000000000000000 : ℚ)
  supportSlope := (-1902233135482069 / 1000000000000000 : ℚ)
  oldCenter := (4101004394798413 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1220
  oldLo := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_992, piece_993]
}

noncomputable def cell_10718 : Cell := { cellDefaults with
  domain := ⟨(12862499999999999 / 25000000000000000 : ℚ), (205849999999999989 / 400000000000000000 : ℚ)⟩
  r := (60864953001701 / 100000000000000 : ℚ)
  w := (7272848443077 / 5000000000000 : ℚ)
  center := (411649999999999973 / 800000000000000000 : ℚ)
  supportValue := (41036035043188973 / 100000000000000000 : ℚ)
  supportSlope := (-9516615053807457 / 5000000000000000 : ℚ)
  oldCenter := (41036035043188973 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1221
  oldLo := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_993]
}

noncomputable def cell_10719 : Cell := { cellDefaults with
  domain := ⟨(205849999999999989 / 400000000000000000 : ℚ), (102949999999999997 / 200000000000000000 : ℚ)⟩
  r := (60864953001701 / 100000000000000 : ℚ)
  w := (7272848443077 / 5000000000000 : ℚ)
  center := (411749999999999983 / 800000000000000000 : ℚ)
  supportValue := (410122564201539 / 1000000000000000 : ℚ)
  supportSlope := (-19012545011827573 / 10000000000000000 : ℚ)
  oldCenter := (410122564201539 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1221
  oldLo := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_993]
}

noncomputable def cell_10720 : Cell := { cellDefaults with
  domain := ⟨(102949999999999997 / 200000000000000000 : ℚ), (205949999999999999 / 400000000000000000 : ℚ)⟩
  r := (60864953001701 / 100000000000000 : ℚ)
  w := (7272848443077 / 5000000000000 : ℚ)
  center := (411849999999999993 / 800000000000000000 : ℚ)
  supportValue := (4098849674933921 / 10000000000000000 : ℚ)
  supportSlope := (-19003036541860627 / 10000000000000000 : ℚ)
  oldCenter := (4098849674933921 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1221
  oldLo := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_992, piece_993]
}

noncomputable def cell_10721 : Cell := { cellDefaults with
  domain := ⟨(205949999999999999 / 400000000000000000 : ℚ), (51500000000000001 / 100000000000000000 : ℚ)⟩
  r := (60864953001701 / 100000000000000 : ℚ)
  w := (7272848443077 / 5000000000000 : ℚ)
  center := (411950000000000003 / 800000000000000000 : ℚ)
  supportValue := (20482377831039983 / 50000000000000000 : ℚ)
  supportSlope := (-9491260619832903 / 5000000000000000 : ℚ)
  oldCenter := (20482377831039983 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1221
  oldLo := (40950000000000003 / 100000000000000000 : ℚ)
  oldHi := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_992]
}

noncomputable def cell_10722 : Cell := { cellDefaults with
  domain := ⟨(51500000000000001 / 100000000000000000 : ℚ), (206049999999999999 / 400000000000000000 : ℚ)⟩
  r := (30415678924777 / 50000000000000 : ℚ)
  w := (7270773227323 / 5000000000000 : ℚ)
  center := (412050000000000003 / 800000000000000000 : ℚ)
  supportValue := (40990695663732957 / 100000000000000000 : ℚ)
  supportSlope := (-18993110827942539 / 10000000000000000 : ℚ)
  oldCenter := (40990695663732957 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1222
  oldLo := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_992, piece_993]
}

noncomputable def cell_10723 : Cell := { cellDefaults with
  domain := ⟨(206049999999999999 / 400000000000000000 : ℚ), (103049999999999997 / 200000000000000000 : ℚ)⟩
  r := (30415678924777 / 50000000000000 : ℚ)
  w := (7270773227323 / 5000000000000 : ℚ)
  center := (412149999999999993 / 800000000000000000 : ℚ)
  supportValue := (4096696566361411 / 10000000000000000 : ℚ)
  supportSlope := (-4743415316348839 / 2500000000000000 : ℚ)
  oldCenter := (4096696566361411 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1222
  oldLo := (40950000000000003 / 100000000000000000 : ℚ)
  oldHi := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_992]
}

noncomputable def cell_10724 : Cell := { cellDefaults with
  domain := ⟨(103049999999999997 / 200000000000000000 : ℚ), (206149999999999989 / 400000000000000000 : ℚ)⟩
  r := (30415678924777 / 50000000000000 : ℚ)
  w := (7270773227323 / 5000000000000 : ℚ)
  center := (412249999999999983 / 800000000000000000 : ℚ)
  supportValue := (2047162869207229 / 5000000000000000 : ℚ)
  supportSlope := (-1896196779400417 / 1000000000000000 : ℚ)
  oldCenter := (2047162869207229 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1222
  oldLo := (40900000000000003 / 100000000000000000 : ℚ)
  oldHi := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_991, piece_992]
}

noncomputable def cell_10725 : Cell := { cellDefaults with
  domain := ⟨(206149999999999989 / 400000000000000000 : ℚ), (12887499999999999 / 25000000000000000 : ℚ)⟩
  r := (30415678924777 / 50000000000000 : ℚ)
  w := (7270773227323 / 5000000000000 : ℚ)
  center := (412349999999999973 / 800000000000000000 : ℚ)
  supportValue := (40919564772566447 / 100000000000000000 : ℚ)
  supportSlope := (-3788751103464373 / 2000000000000000 : ℚ)
  oldCenter := (40919564772566447 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1222
  oldLo := (40900000000000003 / 100000000000000000 : ℚ)
  oldHi := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_991]
}

noncomputable def cell_10726 : Cell := { cellDefaults with
  domain := ⟨(12887499999999999 / 25000000000000000 : ℚ), (206249999999999989 / 400000000000000000 : ℚ)⟩
  r := (7599725411413 / 12500000000000 : ℚ)
  w := (7268702279491 / 5000000000000 : ℚ)
  center := (412449999999999973 / 800000000000000000 : ℚ)
  supportValue := (204727262236281 / 500000000000000 : ℚ)
  supportSlope := (-1895206401534099 / 1000000000000000 : ℚ)
  oldCenter := (204727262236281 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1223
  oldLo := (40900000000000003 / 100000000000000000 : ℚ)
  oldHi := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_991, piece_992]
}

noncomputable def cell_10727 : Cell := { cellDefaults with
  domain := ⟨(206249999999999989 / 400000000000000000 : ℚ), (103149999999999997 / 200000000000000000 : ℚ)⟩
  r := (7599725411413 / 12500000000000 : ℚ)
  w := (7268702279491 / 5000000000000 : ℚ)
  center := (412549999999999983 / 800000000000000000 : ℚ)
  supportValue := (40921770888225967 / 100000000000000000 : ℚ)
  supportSlope := (-18934923189542257 / 10000000000000000 : ℚ)
  oldCenter := (40921770888225967 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1223
  oldLo := (40900000000000003 / 100000000000000000 : ℚ)
  oldHi := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_991]
}

noncomputable def cell_10728 : Cell := { cellDefaults with
  domain := ⟨(103149999999999997 / 200000000000000000 : ℚ), (206349999999999999 / 400000000000000000 : ℚ)⟩
  r := (7599725411413 / 12500000000000 : ℚ)
  w := (7268702279491 / 5000000000000 : ℚ)
  center := (412649999999999993 / 800000000000000000 : ℚ)
  supportValue := (4089811391096761 / 10000000000000000 : ℚ)
  supportSlope := (-9460486008040667 / 5000000000000000 : ℚ)
  oldCenter := (4089811391096761 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1223
  oldLo := (40850000000000003 / 100000000000000000 : ℚ)
  oldHi := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_990, piece_991]
}

noncomputable def cell_10729 : Cell := { cellDefaults with
  domain := ⟨(206349999999999999 / 400000000000000000 : ℚ), (51600000000000001 / 100000000000000000 : ℚ)⟩
  r := (7599725411413 / 12500000000000 : ℚ)
  w := (7268702279491 / 5000000000000 : ℚ)
  center := (412750000000000003 / 800000000000000000 : ℚ)
  supportValue := (4087446958982029 / 10000000000000000 : ℚ)
  supportSlope := (-4726284049560519 / 2500000000000000 : ℚ)
  oldCenter := (4087446958982029 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1223
  oldLo := (40850000000000003 / 100000000000000000 : ℚ)
  oldHi := (40900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_990]
}

noncomputable def cell_10730 : Cell := { cellDefaults with
  domain := ⟨(51600000000000001 / 100000000000000000 : ℚ), (206449999999999999 / 400000000000000000 : ℚ)⟩
  r := (30382145598411 / 50000000000000 : ℚ)
  w := (290665431193 / 200000000000 : ℚ)
  center := (412850000000000003 / 800000000000000000 : ℚ)
  supportValue := (8180060342948633 / 20000000000000000 : ℚ)
  supportSlope := (-9455544641126913 / 5000000000000000 : ℚ)
  oldCenter := (8180060342948633 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1224
  oldLo := (40850000000000003 / 100000000000000000 : ℚ)
  oldHi := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_990, piece_991]
}

noncomputable def cell_10731 : Cell := { cellDefaults with
  domain := ⟨(206449999999999999 / 400000000000000000 : ℚ), (103249999999999997 / 200000000000000000 : ℚ)⟩
  r := (30382145598411 / 50000000000000 : ℚ)
  w := (290665431193 / 200000000000 : ℚ)
  center := (412949999999999993 / 800000000000000000 : ℚ)
  supportValue := (255479178569867 / 625000000000000 : ℚ)
  supportSlope := (-18896329621933219 / 10000000000000000 : ℚ)
  oldCenter := (255479178569867 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1224
  oldLo := (40850000000000003 / 100000000000000000 : ℚ)
  oldHi := (40900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_990]
}

noncomputable def cell_10732 : Cell := { cellDefaults with
  domain := ⟨(103249999999999997 / 200000000000000000 : ℚ), (206549999999999989 / 400000000000000000 : ℚ)⟩
  r := (30382145598411 / 50000000000000 : ℚ)
  w := (290665431193 / 200000000000 : ℚ)
  center := (413049999999999983 / 800000000000000000 : ℚ)
  supportValue := (4085306098030909 / 10000000000000000 : ℚ)
  supportSlope := (-472001102244593 / 250000000000000 : ℚ)
  oldCenter := (4085306098030909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1224
  oldLo := (4082122905027933 / 10000000000000000 : ℚ)
  oldHi := (40900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_989, piece_990]
}

noncomputable def cell_10733 : Cell := { cellDefaults with
  domain := ⟨(206549999999999989 / 400000000000000000 : ℚ), (12912499999999999 / 25000000000000000 : ℚ)⟩
  r := (30382145598411 / 50000000000000 : ℚ)
  w := (290665431193 / 200000000000 : ℚ)
  center := (413149999999999973 / 800000000000000000 : ℚ)
  supportValue := (10207366650063919 / 25000000000000000 : ℚ)
  supportSlope := (-18866660051248483 / 10000000000000000 : ℚ)
  oldCenter := (10207366650063919 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1224
  oldLo := (40800000000000003 / 100000000000000000 : ℚ)
  oldHi := (40850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_988, piece_989]
}

noncomputable def cell_10734 : Cell := { cellDefaults with
  domain := ⟨(12912499999999999 / 25000000000000000 : ℚ), (20664999999999999 / 40000000000000000 : ℚ)⟩
  r := (60730819816697 / 100000000000000 : ℚ)
  w := (1816143327361 / 1250000000000 : ℚ)
  center := (206624999999999987 / 400000000000000000 : ℚ)
  supportValue := (1276726395888147 / 3125000000000000 : ℚ)
  supportSlope := (-4717545680745217 / 2500000000000000 : ℚ)
  oldCenter := (1276726395888147 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1225
  oldLo := (4082122905027933 / 10000000000000000 : ℚ)
  oldHi := (40900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_989, piece_990]
}

noncomputable def cell_10735 : Cell := { cellDefaults with
  domain := ⟨(20664999999999999 / 40000000000000000 : ℚ), (51674999999999999 / 100000000000000000 : ℚ)⟩
  r := (60730819816697 / 100000000000000 : ℚ)
  w := (1816143327361 / 1250000000000 : ℚ)
  center := (206674999999999993 / 400000000000000000 : ℚ)
  supportValue := (8166332519929299 / 20000000000000000 : ℚ)
  supportSlope := (-18857882673086703 / 10000000000000000 : ℚ)
  oldCenter := (8166332519929299 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1225
  oldLo := (40800000000000003 / 100000000000000000 : ℚ)
  oldHi := (40850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_988, piece_989]
}

noncomputable def cell_10736 : Cell := { cellDefaults with
  domain := ⟨(51674999999999999 / 100000000000000000 : ℚ), (103375000000000001 / 200000000000000000 : ℚ)⟩
  r := (60730819816697 / 100000000000000 : ℚ)
  w := (1816143327361 / 1250000000000 : ℚ)
  center := (206724999999999999 / 400000000000000000 : ℚ)
  supportValue := (4080810305678169 / 10000000000000000 : ℚ)
  supportSlope := (-4709793273919839 / 2500000000000000 : ℚ)
  oldCenter := (4080810305678169 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1225
  oldHi := (4082122905027933 / 10000000000000000 : ℚ)
  oldPieces := [piece_987, piece_988]
}

noncomputable def cell_10737 : Cell := { cellDefaults with
  domain := ⟨(103375000000000001 / 200000000000000000 : ℚ), (25850000000000001 / 50000000000000000 : ℚ)⟩
  r := (60730819816697 / 100000000000000 : ℚ)
  w := (1816143327361 / 1250000000000 : ℚ)
  center := (41355000000000001 / 80000000000000000 : ℚ)
  supportValue := (40784559707630313 / 100000000000000000 : ℚ)
  supportSlope := (-18828326549724623 / 10000000000000000 : ℚ)
  oldCenter := (40784559707630313 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1225
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987]
}

noncomputable def cell_10738 : Cell := { cellDefaults with
  domain := ⟨(25850000000000001 / 50000000000000000 : ℚ), (103425000000000001 / 200000000000000000 : ℚ)⟩
  r := (30348694991969 / 50000000000000 : ℚ)
  w := (453907200203 / 312500000000 : ℚ)
  center := (41365000000000001 / 80000000000000000 : ℚ)
  supportValue := (8162056175254293 / 20000000000000000 : ℚ)
  supportSlope := (-1882933301642579 / 1000000000000000 : ℚ)
  oldCenter := (8162056175254293 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1226
  oldHi := (40850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987, piece_988, piece_989]
}

noncomputable def cell_10739 : Cell := { cellDefaults with
  domain := ⟨(103425000000000001 / 200000000000000000 : ℚ), (51724999999999999 / 100000000000000000 : ℚ)⟩
  r := (30348694991969 / 50000000000000 : ℚ)
  w := (453907200203 / 312500000000 : ℚ)
  center := (206874999999999999 / 400000000000000000 : ℚ)
  supportValue := (40786749812639983 / 100000000000000000 : ℚ)
  supportSlope := (-752782976166079 / 400000000000000 : ℚ)
  oldCenter := (40786749812639983 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1226
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987]
}

noncomputable def cell_10740 : Cell := { cellDefaults with
  domain := ⟨(51724999999999999 / 100000000000000000 : ℚ), (20694999999999999 / 40000000000000000 : ℚ)⟩
  r := (30348694991969 / 50000000000000 : ℚ)
  w := (453907200203 / 312500000000 : ℚ)
  center := (206924999999999993 / 400000000000000000 : ℚ)
  supportValue := (40763238132100993 / 100000000000000000 : ℚ)
  supportSlope := (-18799093142949397 / 10000000000000000 : ℚ)
  oldCenter := (40763238132100993 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1226
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987]
}

noncomputable def cell_10741 : Cell := { cellDefaults with
  domain := ⟨(20694999999999999 / 40000000000000000 : ℚ), (12937499999999999 / 25000000000000000 : ℚ)⟩
  r := (30348694991969 / 50000000000000 : ℚ)
  w := (453907200203 / 312500000000 : ℚ)
  center := (206974999999999987 / 400000000000000000 : ℚ)
  supportValue := (407397457147483 / 1000000000000000 : ℚ)
  supportSlope := (-4697358512564817 / 2500000000000000 : ℚ)
  oldCenter := (407397457147483 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1226
  oldLo := (40700000000000003 / 100000000000000000 : ℚ)
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_986, piece_987]
}

noncomputable def cell_10742 : Cell := { cellDefaults with
  domain := ⟨(12937499999999999 / 25000000000000000 : ℚ), (20704999999999999 / 40000000000000000 : ℚ)⟩
  r := (30332000235529 / 50000000000000 : ℚ)
  w := (14520922357901 / 10000000000000 : ℚ)
  center := (207024999999999987 / 400000000000000000 : ℚ)
  supportValue := (5095676611395817 / 12500000000000000 : ℚ)
  supportSlope := (-18790344836074857 / 10000000000000000 : ℚ)
  oldCenter := (5095676611395817 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1227
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987]
}

noncomputable def cell_10743 : Cell := { cellDefaults with
  domain := ⟨(20704999999999999 / 40000000000000000 : ℚ), (51774999999999999 / 100000000000000000 : ℚ)⟩
  r := (30332000235529 / 50000000000000 : ℚ)
  w := (14520922357901 / 10000000000000 : ℚ)
  center := (207074999999999993 / 400000000000000000 : ℚ)
  supportValue := (2037096636639561 / 5000000000000000 : ℚ)
  supportSlope := (-4694909769673009 / 2500000000000000 : ℚ)
  oldCenter := (2037096636639561 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1227
  oldLo := (40700000000000003 / 100000000000000000 : ℚ)
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_986, piece_987]
}

noncomputable def cell_10744 : Cell := { cellDefaults with
  domain := ⟨(51774999999999999 / 100000000000000000 : ℚ), (103575000000000001 / 200000000000000000 : ℚ)⟩
  r := (30332000235529 / 50000000000000 : ℚ)
  w := (14520922357901 / 10000000000000 : ℚ)
  center := (207124999999999999 / 400000000000000000 : ℚ)
  supportValue := (254490429548469 / 625000000000000 : ℚ)
  supportSlope := (-58628013582633 / 31250000000000 : ℚ)
  oldCenter := (254490429548469 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1227
  oldLo := (40700000000000003 / 100000000000000000 : ℚ)
  oldHi := (40750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_986]
}

noncomputable def cell_10745 : Cell := { cellDefaults with
  domain := ⟨(103575000000000001 / 200000000000000000 : ℚ), (25900000000000001 / 50000000000000000 : ℚ)⟩
  r := (30332000235529 / 50000000000000 : ℚ)
  w := (14520922357901 / 10000000000000 : ℚ)
  center := (41435000000000001 / 80000000000000000 : ℚ)
  supportValue := (81390054331543 / 200000000000000 : ℚ)
  supportSlope := (-9374398640552547 / 5000000000000000 : ℚ)
  oldCenter := (81390054331543 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1227
  oldLo := (40650000000000003 / 100000000000000000 : ℚ)
  oldHi := (40750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_985, piece_986]
}

noncomputable def cell_10746 : Cell := { cellDefaults with
  domain := ⟨(25900000000000001 / 50000000000000000 : ℚ), (103625000000000001 / 200000000000000000 : ℚ)⟩
  r := (60630653055421 / 100000000000000 : ℚ)
  w := (907301459703 / 625000000000 : ℚ)
  center := (41445000000000001 / 80000000000000000 : ℚ)
  supportValue := (8144127173646557 / 20000000000000000 : ℚ)
  supportSlope := (-9376120695373539 / 5000000000000000 : ℚ)
  oldCenter := (8144127173646557 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1228
  oldLo := (40700000000000003 / 100000000000000000 : ℚ)
  oldHi := (40750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_986]
}

noncomputable def cell_10747 : Cell := { cellDefaults with
  domain := ⟨(103625000000000001 / 200000000000000000 : ℚ), (51824999999999999 / 100000000000000000 : ℚ)⟩
  r := (60630653055421 / 100000000000000 : ℚ)
  w := (907301459703 / 625000000000 : ℚ)
  center := (207274999999999999 / 400000000000000000 : ℚ)
  supportValue := (4069720654009497 / 10000000000000000 : ℚ)
  supportSlope := (-4684755562390237 / 2500000000000000 : ℚ)
  oldCenter := (4069720654009497 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1228
  oldLo := (40650000000000003 / 100000000000000000 : ℚ)
  oldHi := (40750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_985, piece_986]
}

noncomputable def cell_10748 : Cell := { cellDefaults with
  domain := ⟨(51824999999999999 / 100000000000000000 : ℚ), (20734999999999999 / 40000000000000000 : ℚ)⟩
  r := (60630653055421 / 100000000000000 : ℚ)
  w := (907301459703 / 625000000000 : ℚ)
  center := (207324999999999993 / 400000000000000000 : ℚ)
  supportValue := (8134758006365883 / 20000000000000000 : ℚ)
  supportSlope := (-18722978400209669 / 10000000000000000 : ℚ)
  oldCenter := (8134758006365883 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1228
  oldLo := (40650000000000003 / 100000000000000000 : ℚ)
  oldHi := (40700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_985]
}

noncomputable def cell_10749 : Cell := { cellDefaults with
  domain := ⟨(20734999999999999 / 40000000000000000 : ℚ), (12962499999999999 / 25000000000000000 : ℚ)⟩
  r := (60630653055421 / 100000000000000 : ℚ)
  w := (907301459703 / 625000000000 : ℚ)
  center := (207374999999999987 / 400000000000000000 : ℚ)
  supportValue := (2032519951345079 / 5000000000000000 : ℚ)
  supportSlope := (-4677055248494827 / 2500000000000000 : ℚ)
  oldCenter := (2032519951345079 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1228
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984, piece_985]
}

theorem check_10700 : cell_10700.check = true := by
  decide +kernel

theorem check_10701 : cell_10701.check = true := by
  decide +kernel

theorem check_10702 : cell_10702.check = true := by
  decide +kernel

theorem check_10703 : cell_10703.check = true := by
  decide +kernel

theorem check_10704 : cell_10704.check = true := by
  decide +kernel

theorem check_10705 : cell_10705.check = true := by
  decide +kernel

theorem check_10706 : cell_10706.check = true := by
  decide +kernel

theorem check_10707 : cell_10707.check = true := by
  decide +kernel

theorem check_10708 : cell_10708.check = true := by
  decide +kernel

theorem check_10709 : cell_10709.check = true := by
  decide +kernel

theorem check_10710 : cell_10710.check = true := by
  decide +kernel

theorem check_10711 : cell_10711.check = true := by
  decide +kernel

theorem check_10712 : cell_10712.check = true := by
  decide +kernel

theorem check_10713 : cell_10713.check = true := by
  decide +kernel

theorem check_10714 : cell_10714.check = true := by
  decide +kernel

theorem check_10715 : cell_10715.check = true := by
  decide +kernel

theorem check_10716 : cell_10716.check = true := by
  decide +kernel

theorem check_10717 : cell_10717.check = true := by
  decide +kernel

theorem check_10718 : cell_10718.check = true := by
  decide +kernel

theorem check_10719 : cell_10719.check = true := by
  decide +kernel

theorem check_10720 : cell_10720.check = true := by
  decide +kernel

theorem check_10721 : cell_10721.check = true := by
  decide +kernel

theorem check_10722 : cell_10722.check = true := by
  decide +kernel

theorem check_10723 : cell_10723.check = true := by
  decide +kernel

theorem check_10724 : cell_10724.check = true := by
  decide +kernel

theorem check_10725 : cell_10725.check = true := by
  decide +kernel

theorem check_10726 : cell_10726.check = true := by
  decide +kernel

theorem check_10727 : cell_10727.check = true := by
  decide +kernel

theorem check_10728 : cell_10728.check = true := by
  decide +kernel

theorem check_10729 : cell_10729.check = true := by
  decide +kernel

theorem check_10730 : cell_10730.check = true := by
  decide +kernel

theorem check_10731 : cell_10731.check = true := by
  decide +kernel

theorem check_10732 : cell_10732.check = true := by
  decide +kernel

theorem check_10733 : cell_10733.check = true := by
  decide +kernel

theorem check_10734 : cell_10734.check = true := by
  decide +kernel

theorem check_10735 : cell_10735.check = true := by
  decide +kernel

theorem check_10736 : cell_10736.check = true := by
  decide +kernel

theorem check_10737 : cell_10737.check = true := by
  decide +kernel

theorem check_10738 : cell_10738.check = true := by
  decide +kernel

theorem check_10739 : cell_10739.check = true := by
  decide +kernel

theorem check_10740 : cell_10740.check = true := by
  decide +kernel

theorem check_10741 : cell_10741.check = true := by
  decide +kernel

theorem check_10742 : cell_10742.check = true := by
  decide +kernel

theorem check_10743 : cell_10743.check = true := by
  decide +kernel

theorem check_10744 : cell_10744.check = true := by
  decide +kernel

theorem check_10745 : cell_10745.check = true := by
  decide +kernel

theorem check_10746 : cell_10746.check = true := by
  decide +kernel

theorem check_10747 : cell_10747.check = true := by
  decide +kernel

theorem check_10748 : cell_10748.check = true := by
  decide +kernel

theorem check_10749 : cell_10749.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_10700, cell_10701, cell_10702, cell_10703, cell_10704, cell_10705, cell_10706, cell_10707, cell_10708, cell_10709, cell_10710, cell_10711, cell_10712, cell_10713, cell_10714, cell_10715, cell_10716, cell_10717, cell_10718, cell_10719, cell_10720, cell_10721, cell_10722, cell_10723, cell_10724, cell_10725, cell_10726, cell_10727, cell_10728, cell_10729, cell_10730, cell_10731, cell_10732, cell_10733, cell_10734, cell_10735, cell_10736, cell_10737, cell_10738, cell_10739, cell_10740, cell_10741, cell_10742, cell_10743, cell_10744, cell_10745, cell_10746, cell_10747, cell_10748, cell_10749]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10700, check_10701, check_10702, check_10703, check_10704, check_10705, check_10706, check_10707, check_10708, check_10709, check_10710, check_10711, check_10712, check_10713, check_10714, check_10715, check_10716, check_10717, check_10718, check_10719, check_10720, check_10721, check_10722, check_10723, check_10724, check_10725, check_10726, check_10727, check_10728, check_10729, check_10730, check_10731, check_10732, check_10733, check_10734, check_10735, check_10736, check_10737, check_10738, check_10739, check_10740, check_10741, check_10742, check_10743, check_10744, check_10745, check_10746, check_10747, check_10748, check_10749, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0214

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0214
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0214
open AnalyticBounds.ExpressionCertificate

theorem linked_10700 : Linked cell_10700 pieces := by
  link_source cell_10700 with piece_1215 using piece_1215_mem, ⟨piece_996_mem, piece_997_mem⟩

theorem linked_10701 : Linked cell_10701 pieces := by
  link_source cell_10701 with piece_1216 using piece_1216_mem, piece_997_mem

theorem linked_10702 : Linked cell_10702 pieces := by
  link_source cell_10702 with piece_1216 using piece_1216_mem, ⟨piece_996_mem, piece_997_mem⟩

theorem linked_10703 : Linked cell_10703 pieces := by
  link_source cell_10703 with piece_1216 using piece_1216_mem, piece_996_mem

theorem linked_10704 : Linked cell_10704 pieces := by
  link_source cell_10704 with piece_1216 using piece_1216_mem, ⟨piece_995_mem, piece_996_mem⟩

theorem linked_10705 : Linked cell_10705 pieces := by
  link_source cell_10705 with piece_1217 using piece_1217_mem, piece_996_mem

theorem linked_10706 : Linked cell_10706 pieces := by
  link_source cell_10706 with piece_1217 using piece_1217_mem, ⟨piece_995_mem, piece_996_mem⟩

theorem linked_10707 : Linked cell_10707 pieces := by
  link_source cell_10707 with piece_1217 using piece_1217_mem, piece_995_mem

theorem linked_10708 : Linked cell_10708 pieces := by
  link_source cell_10708 with piece_1218 using piece_1218_mem, piece_995_mem

theorem linked_10709 : Linked cell_10709 pieces := by
  link_source cell_10709 with piece_1218 using piece_1218_mem, ⟨piece_994_mem, piece_995_mem⟩

theorem linked_10710 : Linked cell_10710 pieces := by
  link_source cell_10710 with piece_1219 using piece_1219_mem, piece_995_mem

theorem linked_10711 : Linked cell_10711 pieces := by
  link_source cell_10711 with piece_1219 using piece_1219_mem, ⟨piece_994_mem, piece_995_mem⟩

theorem linked_10712 : Linked cell_10712 pieces := by
  link_source cell_10712 with piece_1219 using piece_1219_mem, piece_994_mem

theorem linked_10713 : Linked cell_10713 pieces := by
  link_source cell_10713 with piece_1219 using piece_1219_mem, ⟨piece_993_mem, piece_994_mem⟩

theorem linked_10714 : Linked cell_10714 pieces := by
  link_source cell_10714 with piece_1220 using piece_1220_mem, piece_994_mem

theorem linked_10715 : Linked cell_10715 pieces := by
  link_source cell_10715 with piece_1220 using piece_1220_mem, ⟨piece_993_mem, piece_994_mem⟩

theorem linked_10716 : Linked cell_10716 pieces := by
  link_source cell_10716 with piece_1220 using piece_1220_mem, piece_993_mem

theorem linked_10717 : Linked cell_10717 pieces := by
  link_source cell_10717 with piece_1220 using piece_1220_mem, ⟨piece_992_mem, piece_993_mem⟩

theorem linked_10718 : Linked cell_10718 pieces := by
  link_source cell_10718 with piece_1221 using piece_1221_mem, piece_993_mem

theorem linked_10719 : Linked cell_10719 pieces := by
  link_source cell_10719 with piece_1221 using piece_1221_mem, piece_993_mem

theorem linked_10720 : Linked cell_10720 pieces := by
  link_source cell_10720 with piece_1221 using piece_1221_mem, ⟨piece_992_mem, piece_993_mem⟩

theorem linked_10721 : Linked cell_10721 pieces := by
  link_source cell_10721 with piece_1221 using piece_1221_mem, piece_992_mem

theorem linked_10722 : Linked cell_10722 pieces := by
  link_source cell_10722 with piece_1222 using piece_1222_mem, ⟨piece_992_mem, piece_993_mem⟩

theorem linked_10723 : Linked cell_10723 pieces := by
  link_source cell_10723 with piece_1222 using piece_1222_mem, piece_992_mem

theorem linked_10724 : Linked cell_10724 pieces := by
  link_source cell_10724 with piece_1222 using piece_1222_mem, ⟨piece_991_mem, piece_992_mem⟩

theorem linked_10725 : Linked cell_10725 pieces := by
  link_source cell_10725 with piece_1222 using piece_1222_mem, piece_991_mem

theorem linked_10726 : Linked cell_10726 pieces := by
  link_source cell_10726 with piece_1223 using piece_1223_mem, ⟨piece_991_mem, piece_992_mem⟩

theorem linked_10727 : Linked cell_10727 pieces := by
  link_source cell_10727 with piece_1223 using piece_1223_mem, piece_991_mem

theorem linked_10728 : Linked cell_10728 pieces := by
  link_source cell_10728 with piece_1223 using piece_1223_mem, ⟨piece_990_mem, piece_991_mem⟩

theorem linked_10729 : Linked cell_10729 pieces := by
  link_source cell_10729 with piece_1223 using piece_1223_mem, piece_990_mem

theorem linked_10730 : Linked cell_10730 pieces := by
  link_source cell_10730 with piece_1224 using piece_1224_mem, ⟨piece_990_mem, piece_991_mem⟩

theorem linked_10731 : Linked cell_10731 pieces := by
  link_source cell_10731 with piece_1224 using piece_1224_mem, piece_990_mem

theorem linked_10732 : Linked cell_10732 pieces := by
  link_source cell_10732 with piece_1224 using piece_1224_mem, ⟨piece_989_mem, piece_990_mem⟩

theorem linked_10733 : Linked cell_10733 pieces := by
  link_source cell_10733 with piece_1224 using piece_1224_mem, ⟨piece_988_mem, piece_989_mem⟩

theorem linked_10734 : Linked cell_10734 pieces := by
  link_source cell_10734 with piece_1225 using piece_1225_mem, ⟨piece_989_mem, piece_990_mem⟩

theorem linked_10735 : Linked cell_10735 pieces := by
  link_source cell_10735 with piece_1225 using piece_1225_mem, ⟨piece_988_mem, piece_989_mem⟩

theorem linked_10736 : Linked cell_10736 pieces := by
  link_source cell_10736 with piece_1225 using piece_1225_mem, ⟨piece_987_mem, piece_988_mem⟩

theorem linked_10737 : Linked cell_10737 pieces := by
  link_source cell_10737 with piece_1225 using piece_1225_mem, piece_987_mem

theorem linked_10738 : Linked cell_10738 pieces := by
  link_source cell_10738 with piece_1226 using piece_1226_mem, ⟨piece_987_mem, ⟨piece_988_mem, piece_989_mem⟩⟩

theorem linked_10739 : Linked cell_10739 pieces := by
  link_source cell_10739 with piece_1226 using piece_1226_mem, piece_987_mem

theorem linked_10740 : Linked cell_10740 pieces := by
  link_source cell_10740 with piece_1226 using piece_1226_mem, piece_987_mem

theorem linked_10741 : Linked cell_10741 pieces := by
  link_source cell_10741 with piece_1226 using piece_1226_mem, ⟨piece_986_mem, piece_987_mem⟩

theorem linked_10742 : Linked cell_10742 pieces := by
  link_source cell_10742 with piece_1227 using piece_1227_mem, piece_987_mem

theorem linked_10743 : Linked cell_10743 pieces := by
  link_source cell_10743 with piece_1227 using piece_1227_mem, ⟨piece_986_mem, piece_987_mem⟩

theorem linked_10744 : Linked cell_10744 pieces := by
  link_source cell_10744 with piece_1227 using piece_1227_mem, piece_986_mem

theorem linked_10745 : Linked cell_10745 pieces := by
  link_source cell_10745 with piece_1227 using piece_1227_mem, ⟨piece_985_mem, piece_986_mem⟩

theorem linked_10746 : Linked cell_10746 pieces := by
  link_source cell_10746 with piece_1228 using piece_1228_mem, piece_986_mem

theorem linked_10747 : Linked cell_10747 pieces := by
  link_source cell_10747 with piece_1228 using piece_1228_mem, ⟨piece_985_mem, piece_986_mem⟩

theorem linked_10748 : Linked cell_10748 pieces := by
  link_source cell_10748 with piece_1228 using piece_1228_mem, piece_985_mem

theorem linked_10749 : Linked cell_10749 pieces := by
  link_source cell_10749 with piece_1228 using piece_1228_mem, ⟨piece_984_mem, piece_985_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0214.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0214.cells,List.forall_mem_cons]
  exact ⟨linked_10700, linked_10701, linked_10702, linked_10703, linked_10704, linked_10705, linked_10706, linked_10707, linked_10708, linked_10709, linked_10710, linked_10711, linked_10712, linked_10713, linked_10714, linked_10715, linked_10716, linked_10717, linked_10718, linked_10719, linked_10720, linked_10721, linked_10722, linked_10723, linked_10724, linked_10725, linked_10726, linked_10727, linked_10728, linked_10729, linked_10730, linked_10731, linked_10732, linked_10733, linked_10734, linked_10735, linked_10736, linked_10737, linked_10738, linked_10739, linked_10740, linked_10741, linked_10742, linked_10743, linked_10744, linked_10745, linked_10746, linked_10747, linked_10748, linked_10749, by simp⟩

theorem covered : covers (204949999999999989 / 400000000000000000 : ℚ) (12962499999999999 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0214.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0214
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0215
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(12962499999999999 / 25000000000000000 : ℚ), (20744999999999999 / 40000000000000000 : ℚ)⟩
  branch := .left
  r := (15149336469421 / 25000000000000 : ℚ)
  w := (14512733132919 / 10000000000000 : ℚ)
  center := (207424999999999987 / 400000000000000000 : ℚ)
  supportValue := (40675952264000753 / 100000000000000000 : ℚ)
  supportSlope := (-4678570535553977 / 2500000000000000 : ℚ)
  oldCenter := (40675952264000753 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1231
  oldLo := (40350000000000003 / 100000000000000000 : ℚ)
  oldHi := (40600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_10750 : Cell := { cellDefaults with
  newCoefficients := coefficients_1229
  oldLo := (40650000000000003 / 100000000000000000 : ℚ)
  oldHi := (40700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_985]
}

noncomputable def cell_10751 : Cell := { cellDefaults with
  domain := ⟨(20744999999999999 / 40000000000000000 : ℚ), (51874999999999999 / 100000000000000000 : ℚ)⟩
  center := (207474999999999993 / 400000000000000000 : ℚ)
  supportValue := (203262860587481 / 500000000000000 : ℚ)
  supportSlope := (-2337308301702809 / 1250000000000000 : ℚ)
  oldCenter := (203262860587481 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1229
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984, piece_985]
}

noncomputable def cell_10752 : Cell := { cellDefaults with
  domain := ⟨(51874999999999999 / 100000000000000000 : ℚ), (259413407821229 / 500000000000000 : ℚ)⟩
  center := (103757681564245799 / 200000000000000000 : ℚ)
  supportValue := (1015841954699603 / 2500000000000000 : ℚ)
  supportSlope := (-3737812929480857 / 2000000000000000 : ℚ)
  oldCenter := (1015841954699603 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1229
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984]
}

noncomputable def cell_10753 : Cell := { cellDefaults with
  domain := ⟨(259413407821229 / 500000000000000 : ℚ), (51891340782122901 / 100000000000000000 : ℚ)⟩
  center := (103774022346368701 / 200000000000000000 : ℚ)
  supportValue := (20309206964344237 / 50000000000000000 : ℚ)
  supportSlope := (-9337875221970987 / 5000000000000000 : ℚ)
  oldCenter := (20309206964344237 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1230
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984]
}

noncomputable def cell_10754 : Cell := { cellDefaults with
  domain := ⟨(51891340782122901 / 100000000000000000 : ℚ), (25950000000000001 / 50000000000000000 : ℚ)⟩
  center := (103791340782122903 / 200000000000000000 : ℚ)
  supportValue := (20301124142245383 / 50000000000000000 : ℚ)
  supportSlope := (-18665877542920883 / 10000000000000000 : ℚ)
  oldCenter := (20301124142245383 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1230
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983, piece_984]
}

noncomputable def cell_10755 : Cell := { cellDefaults with
  domain := ⟨(25950000000000001 / 50000000000000000 : ℚ), (103825000000000001 / 200000000000000000 : ℚ)⟩
  r := (60564079613033 / 100000000000000 : ℚ)
  w := (14508651330451 / 10000000000000 : ℚ)
  center := (41525000000000001 / 80000000000000000 : ℚ)
  supportValue := (20315680953448717 / 50000000000000000 : ℚ)
  supportSlope := (-1867646800928437 / 1000000000000000 : ℚ)
  oldCenter := (20315680953448717 / 50000000000000000 : ℚ)
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984]
}

noncomputable def cell_10756 : Cell := { cellDefaults with
  domain := ⟨(103825000000000001 / 200000000000000000 : ℚ), (51924999999999999 / 100000000000000000 : ℚ)⟩
  r := (60564079613033 / 100000000000000 : ℚ)
  w := (14508651330451 / 10000000000000 : ℚ)
  center := (207674999999999999 / 400000000000000000 : ℚ)
  supportValue := (2030401450673141 / 5000000000000000 : ℚ)
  supportSlope := (-1166123232423517 / 625000000000000 : ℚ)
  oldCenter := (2030401450673141 / 5000000000000000 : ℚ)
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983, piece_984]
}

noncomputable def cell_10757 : Cell := { cellDefaults with
  domain := ⟨(51924999999999999 / 100000000000000000 : ℚ), (20774999999999999 / 40000000000000000 : ℚ)⟩
  r := (60564079613033 / 100000000000000 : ℚ)
  w := (14508651330451 / 10000000000000 : ℚ)
  center := (207724999999999993 / 400000000000000000 : ℚ)
  supportValue := (4058471195303769 / 10000000000000000 : ℚ)
  supportSlope := (-9323720662216547 / 5000000000000000 : ℚ)
  oldCenter := (4058471195303769 / 10000000000000000 : ℚ)
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983]
}

noncomputable def cell_10758 : Cell := { cellDefaults with
  domain := ⟨(20774999999999999 / 40000000000000000 : ℚ), (12987499999999999 / 25000000000000000 : ℚ)⟩
  r := (60564079613033 / 100000000000000 : ℚ)
  w := (14508651330451 / 10000000000000 : ℚ)
  center := (207774999999999987 / 400000000000000000 : ℚ)
  supportValue := (2028070766994003 / 5000000000000000 : ℚ)
  supportSlope := (-18627251401952551 / 10000000000000000 : ℚ)
  oldCenter := (2028070766994003 / 5000000000000000 : ℚ)
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982, piece_983]
}

noncomputable def cell_10759 : Cell := { cellDefaults with
  domain := ⟨(12987499999999999 / 25000000000000000 : ℚ), (20784999999999999 / 40000000000000000 : ℚ)⟩
  r := (12106170842031 / 20000000000000 : ℚ)
  w := (226634010173 / 156250000000 : ℚ)
  center := (207824999999999987 / 400000000000000000 : ℚ)
  supportValue := (405868679922263 / 1000000000000000 : ℚ)
  supportSlope := (-1863880095367197 / 1000000000000000 : ℚ)
  oldCenter := (405868679922263 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1232
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983]
}

noncomputable def cell_10760 : Cell := { cellDefaults with
  domain := ⟨(20784999999999999 / 40000000000000000 : ℚ), (51974999999999999 / 100000000000000000 : ℚ)⟩
  r := (12106170842031 / 20000000000000 : ℚ)
  w := (226634010173 / 156250000000 : ℚ)
  center := (207874999999999993 / 400000000000000000 : ℚ)
  supportValue := (40563582167804757 / 100000000000000000 : ℚ)
  supportSlope := (-18618497151983147 / 10000000000000000 : ℚ)
  oldCenter := (40563582167804757 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1232
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983]
}

noncomputable def cell_10761 : Cell := { cellDefaults with
  domain := ⟨(51974999999999999 / 100000000000000000 : ℚ), (103975000000000001 / 200000000000000000 : ℚ)⟩
  r := (12106170842031 / 20000000000000 : ℚ)
  w := (226634010173 / 156250000000 : ℚ)
  center := (207924999999999999 / 400000000000000000 : ℚ)
  supportValue := (40540315590673903 / 100000000000000000 : ℚ)
  supportSlope := (-18608933252550741 / 10000000000000000 : ℚ)
  oldCenter := (40540315590673903 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1232
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982, piece_983]
}

noncomputable def cell_10762 : Cell := { cellDefaults with
  domain := ⟨(103975000000000001 / 200000000000000000 : ℚ), (26000000000000001 / 50000000000000000 : ℚ)⟩
  r := (12106170842031 / 20000000000000 : ℚ)
  w := (226634010173 / 156250000000 : ℚ)
  center := (41595000000000001 / 80000000000000000 : ℚ)
  supportValue := (8103413179712431 / 20000000000000000 : ℚ)
  supportSlope := (-18589594097606623 / 10000000000000000 : ℚ)
  oldCenter := (8103413179712431 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1232
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldHi := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982]
}

noncomputable def cell_10763 : Cell := { cellDefaults with
  domain := ⟨(26000000000000001 / 50000000000000000 : ℚ), (208050000000000013 / 400000000000000000 : ℚ)⟩
  r := (3781104330923 / 6250000000000 : ℚ)
  w := (14500510999561 / 10000000000000 : ℚ)
  center := (416050000000000021 / 800000000000000000 : ℚ)
  supportValue := (8108493075882437 / 20000000000000000 : ℚ)
  supportSlope := (-4649810055796323 / 2500000000000000 : ℚ)
  oldCenter := (8108493075882437 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1233
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982, piece_983]
}

noncomputable def cell_10764 : Cell := { cellDefaults with
  domain := ⟨(208050000000000013 / 400000000000000000 : ℚ), (104050000000000009 / 200000000000000000 : ℚ)⟩
  r := (3781104330923 / 6250000000000 : ℚ)
  w := (14500510999561 / 10000000000000 : ℚ)
  center := (416150000000000031 / 800000000000000000 : ℚ)
  supportValue := (10129806611064611 / 25000000000000000 : ℚ)
  supportSlope := (-4645249472321013 / 2500000000000000 : ℚ)
  oldCenter := (10129806611064611 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1233
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldHi := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982]
}

noncomputable def cell_10765 : Cell := { cellDefaults with
  domain := ⟨(104050000000000009 / 200000000000000000 : ℚ), (208150000000000023 / 400000000000000000 : ℚ)⟩
  r := (3781104330923 / 6250000000000 : ℚ)
  w := (14500510999561 / 10000000000000 : ℚ)
  center := (416250000000000041 / 800000000000000000 : ℚ)
  supportValue := (202480051380383 / 500000000000000 : ℚ)
  supportSlope := (-4642163304466409 / 2500000000000000 : ℚ)
  oldCenter := (202480051380383 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1233
  oldLo := (40450000000000003 / 100000000000000000 : ℚ)
  oldHi := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_981, piece_982]
}

noncomputable def cell_10766 : Cell := { cellDefaults with
  domain := ⟨(208150000000000023 / 400000000000000000 : ℚ), (52050000000000007 / 100000000000000000 : ℚ)⟩
  r := (3781104330923 / 6250000000000 : ℚ)
  w := (14500510999561 / 10000000000000 : ℚ)
  center := (416350000000000051 / 800000000000000000 : ℚ)
  supportValue := (101182018312743 / 250000000000000 : ℚ)
  supportSlope := (-579756673940943 / 312500000000000 : ℚ)
  oldCenter := (101182018312743 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1233
  oldLo := (40450000000000003 / 100000000000000000 : ℚ)
  oldHi := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_981]
}

noncomputable def cell_10767 : Cell := { cellDefaults with
  domain := ⟨(52050000000000007 / 100000000000000000 : ℚ), (208250000000000023 / 400000000000000000 : ℚ)⟩
  r := (60464524559123 / 100000000000000 : ℚ)
  w := (7248226491553 / 5000000000000 : ℚ)
  center := (416450000000000051 / 800000000000000000 : ℚ)
  supportValue := (809963156296537 / 2000000000000000 : ℚ)
  supportSlope := (-9279490375116811 / 5000000000000000 : ℚ)
  oldCenter := (809963156296537 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1234
  oldLo := (40450000000000003 / 100000000000000000 : ℚ)
  oldHi := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_981, piece_982]
}

noncomputable def cell_10768 : Cell := { cellDefaults with
  domain := ⟨(208250000000000023 / 400000000000000000 : ℚ), (104150000000000009 / 200000000000000000 : ℚ)⟩
  r := (60464524559123 / 100000000000000 : ℚ)
  w := (7248226491553 / 5000000000000 : ℚ)
  center := (416550000000000041 / 800000000000000000 : ℚ)
  supportValue := (404749655858041 / 1000000000000000 : ℚ)
  supportSlope := (-185436453303219 / 100000000000000 : ℚ)
  oldCenter := (404749655858041 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1234
  oldLo := (40450000000000003 / 100000000000000000 : ℚ)
  oldHi := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_981]
}

noncomputable def cell_10769 : Cell := { cellDefaults with
  domain := ⟨(104150000000000009 / 200000000000000000 : ℚ), (208350000000000013 / 400000000000000000 : ℚ)⟩
  r := (60464524559123 / 100000000000000 : ℚ)
  w := (7248226491553 / 5000000000000 : ℚ)
  center := (416650000000000031 / 800000000000000000 : ℚ)
  supportValue := (4045179863478681 / 10000000000000000 : ℚ)
  supportSlope := (-57901352589407 / 31250000000000 : ℚ)
  oldCenter := (4045179863478681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1234
  oldLo := (40400000000000003 / 100000000000000000 : ℚ)
  oldHi := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_980, piece_981]
}

noncomputable def cell_10770 : Cell := { cellDefaults with
  domain := ⟨(208350000000000013 / 400000000000000000 : ℚ), (26050000000000001 / 50000000000000000 : ℚ)⟩
  r := (60464524559123 / 100000000000000 : ℚ)
  w := (7248226491553 / 5000000000000 : ℚ)
  center := (416750000000000021 / 800000000000000000 : ℚ)
  supportValue := (2021432167936147 / 5000000000000000 : ℚ)
  supportSlope := (-4628744960509153 / 2500000000000000 : ℚ)
  oldCenter := (2021432167936147 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1234
  oldLo := (40400000000000003 / 100000000000000000 : ℚ)
  oldHi := (40450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_980]
}

noncomputable def cell_10771 : Cell := { cellDefaults with
  domain := ⟨(26050000000000001 / 50000000000000000 : ℚ), (208450000000000013 / 400000000000000000 : ℚ)⟩
  r := (60431420884487 / 100000000000000 : ℚ)
  w := (7246201882289 / 5000000000000 : ℚ)
  center := (416850000000000021 / 800000000000000000 : ℚ)
  supportValue := (2022696914202307 / 5000000000000000 : ℚ)
  supportSlope := (-1851878005613187 / 1000000000000000 : ℚ)
  oldCenter := (2022696914202307 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1235
  oldLo := (40400000000000003 / 100000000000000000 : ℚ)
  oldHi := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_980, piece_981]
}

noncomputable def cell_10772 : Cell := { cellDefaults with
  domain := ⟨(208450000000000013 / 400000000000000000 : ℚ), (104250000000000009 / 200000000000000000 : ℚ)⟩
  r := (60431420884487 / 100000000000000 : ℚ)
  w := (7246201882289 / 5000000000000 : ℚ)
  center := (416950000000000031 / 800000000000000000 : ℚ)
  supportValue := (4043079505930533 / 10000000000000000 : ℚ)
  supportSlope := (-18506436482963833 / 10000000000000000 : ℚ)
  oldCenter := (4043079505930533 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1235
  oldLo := (40400000000000003 / 100000000000000000 : ℚ)
  oldHi := (40450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_980]
}

noncomputable def cell_10773 : Cell := { cellDefaults with
  domain := ⟨(104250000000000009 / 200000000000000000 : ℚ), (208550000000000023 / 400000000000000000 : ℚ)⟩
  r := (60431420884487 / 100000000000000 : ℚ)
  w := (7246201882289 / 5000000000000 : ℚ)
  center := (417050000000000041 / 800000000000000000 : ℚ)
  supportValue := (8081534920746709 / 20000000000000000 : ℚ)
  supportSlope := (-1848827138088353 / 1000000000000000 : ℚ)
  oldCenter := (8081534920746709 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1235
  oldHi := (40450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979, piece_980]
}

noncomputable def cell_10774 : Cell := { cellDefaults with
  domain := ⟨(208550000000000023 / 400000000000000000 : ℚ), (52150000000000007 / 100000000000000000 : ℚ)⟩
  r := (60431420884487 / 100000000000000 : ℚ)
  w := (7246201882289 / 5000000000000 : ℚ)
  center := (417150000000000051 / 800000000000000000 : ℚ)
  supportValue := (2524035591882641 / 6250000000000000 : ℚ)
  supportSlope := (-18477890139381543 / 10000000000000000 : ℚ)
  oldCenter := (2524035591882641 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1235
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979]
}

noncomputable def cell_10775 : Cell := { cellDefaults with
  domain := ⟨(52150000000000007 / 100000000000000000 : ℚ), (208650000000000023 / 400000000000000000 : ℚ)⟩
  r := (188744867293 / 312500000000 : ℚ)
  w := (14488363373359 / 10000000000000 : ℚ)
  center := (417250000000000051 / 800000000000000000 : ℚ)
  supportValue := (631403255450821 / 1562500000000000 : ℚ)
  supportSlope := (-4619659506073699 / 2500000000000000 : ℚ)
  oldCenter := (631403255450821 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1236
  oldHi := (40450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979, piece_980]
}

noncomputable def cell_10776 : Cell := { cellDefaults with
  domain := ⟨(208650000000000023 / 400000000000000000 : ℚ), (104350000000000009 / 200000000000000000 : ℚ)⟩
  r := (188744867293 / 312500000000 : ℚ)
  w := (14488363373359 / 10000000000000 : ℚ)
  center := (417350000000000041 / 800000000000000000 : ℚ)
  supportValue := (4038671524211657 / 10000000000000000 : ℚ)
  supportSlope := (-9234686124180803 / 5000000000000000 : ℚ)
  oldCenter := (4038671524211657 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1236
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979]
}

noncomputable def cell_10777 : Cell := { cellDefaults with
  domain := ⟨(104350000000000009 / 200000000000000000 : ℚ), (208750000000000013 / 400000000000000000 : ℚ)⟩
  r := (188744867293 / 312500000000 : ℚ)
  w := (14488363373359 / 10000000000000 : ℚ)
  center := (417450000000000031 / 800000000000000000 : ℚ)
  supportValue := (40363641103653747 / 100000000000000000 : ℚ)
  supportSlope := (-461230716426943 / 250000000000000 : ℚ)
  oldCenter := (40363641103653747 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1236
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979]
}

noncomputable def cell_10778 : Cell := { cellDefaults with
  domain := ⟨(208750000000000013 / 400000000000000000 : ℚ), (26100000000000001 / 50000000000000000 : ℚ)⟩
  r := (188744867293 / 312500000000 : ℚ)
  w := (14488363373359 / 10000000000000 : ℚ)
  center := (417550000000000021 / 800000000000000000 : ℚ)
  supportValue := (4034058604440771 / 10000000000000000 : ℚ)
  supportSlope := (-2304984856374101 / 1250000000000000 : ℚ)
  oldCenter := (4034058604440771 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1236
  oldLo := (20150000000000001 / 50000000000000000 : ℚ)
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_978, piece_979]
}

noncomputable def cell_10779 : Cell := { cellDefaults with
  domain := ⟨(26100000000000001 / 50000000000000000 : ℚ), (104425000000000007 / 200000000000000000 : ℚ)⟩
  r := (15091333819851 / 25000000000000 : ℚ)
  w := (72421656351 / 50000000000 : ℚ)
  center := (208825000000000011 / 400000000000000000 : ℚ)
  supportValue := (403657694029411 / 1000000000000000 : ℚ)
  supportSlope := (-4610178218455443 / 2500000000000000 : ℚ)
  oldCenter := (403657694029411 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1237
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979]
}

noncomputable def cell_10780 : Cell := { cellDefaults with
  domain := ⟨(104425000000000007 / 200000000000000000 : ℚ), (10445000000000001 / 20000000000000000 : ℚ)⟩
  r := (15091333819851 / 25000000000000 : ℚ)
  w := (72421656351 / 50000000000 : ℚ)
  center := (208875000000000017 / 400000000000000000 : ℚ)
  supportValue := (4034272634649443 / 10000000000000000 : ℚ)
  supportSlope := (-18430288655284521 / 10000000000000000 : ℚ)
  oldCenter := (4034272634649443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1237
  oldLo := (20150000000000001 / 50000000000000000 : ℚ)
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_978, piece_979]
}

noncomputable def cell_10781 : Cell := { cellDefaults with
  domain := ⟨(10445000000000001 / 20000000000000000 : ℚ), (104475000000000013 / 200000000000000000 : ℚ)⟩
  r := (15091333819851 / 25000000000000 : ℚ)
  w := (72421656351 / 50000000000 : ℚ)
  center := (208925000000000023 / 400000000000000000 : ℚ)
  supportValue := (10079924586528559 / 25000000000000000 : ℚ)
  supportSlope := (-2301540823106131 / 1250000000000000 : ℚ)
  oldCenter := (10079924586528559 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1237
  oldLo := (20150000000000001 / 50000000000000000 : ℚ)
  oldHi := (40350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_978]
}

noncomputable def cell_10782 : Cell := { cellDefaults with
  domain := ⟨(104475000000000013 / 200000000000000000 : ℚ), (6531250000000001 / 12500000000000000 : ℚ)⟩
  r := (15091333819851 / 25000000000000 : ℚ)
  w := (72421656351 / 50000000000 : ℚ)
  center := (208975000000000029 / 400000000000000000 : ℚ)
  supportValue := (40296693303250003 / 100000000000000000 : ℚ)
  supportSlope := (-9199956943940497 / 5000000000000000 : ℚ)
  oldCenter := (40296693303250003 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1237
  oldLo := (40268156424581003 / 100000000000000000 : ℚ)
  oldHi := (40350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_977, piece_978]
}

noncomputable def cell_10783 : Cell := { cellDefaults with
  domain := ⟨(6531250000000001 / 12500000000000000 : ℚ), (104525000000000013 / 200000000000000000 : ℚ)⟩
  r := (15083088208651 / 25000000000000 : ℚ)
  w := (7240153867531 / 5000000000000 : ℚ)
  center := (209025000000000029 / 400000000000000000 : ℚ)
  supportValue := (10080455443532861 / 25000000000000000 : ℚ)
  supportSlope := (-920191859270169 / 500000000000000 : ℚ)
  oldCenter := (10080455443532861 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1238
  oldLo := (20150000000000001 / 50000000000000000 : ℚ)
  oldHi := (40350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_978]
}

noncomputable def cell_10784 : Cell := { cellDefaults with
  domain := ⟨(104525000000000013 / 200000000000000000 : ℚ), (10455000000000001 / 20000000000000000 : ℚ)⟩
  r := (15083088208651 / 25000000000000 : ℚ)
  w := (7240153867531 / 5000000000000 : ℚ)
  center := (209075000000000023 / 400000000000000000 : ℚ)
  supportValue := (1007470717738377 / 2500000000000000 : ℚ)
  supportSlope := (-1149396420972031 / 625000000000000 : ℚ)
  oldCenter := (1007470717738377 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1238
  oldLo := (40268156424581003 / 100000000000000000 : ℚ)
  oldHi := (40350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_977, piece_978]
}

noncomputable def cell_10785 : Cell := { cellDefaults with
  domain := ⟨(10455000000000001 / 20000000000000000 : ℚ), (104575000000000007 / 200000000000000000 : ℚ)⟩
  r := (15083088208651 / 25000000000000 : ℚ)
  w := (7240153867531 / 5000000000000 : ℚ)
  center := (209125000000000017 / 400000000000000000 : ℚ)
  supportValue := (8055169334189377 / 20000000000000000 : ℚ)
  supportSlope := (-18375570900961407 / 10000000000000000 : ℚ)
  oldCenter := (8055169334189377 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1238
  oldLo := (20125000000000001 / 50000000000000000 : ℚ)
  oldHi := (20150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_976, piece_977]
}

noncomputable def cell_10786 : Cell := { cellDefaults with
  domain := ⟨(104575000000000007 / 200000000000000000 : ℚ), (26150000000000001 / 50000000000000000 : ℚ)⟩
  r := (15083088208651 / 25000000000000 : ℚ)
  w := (7240153867531 / 5000000000000 : ℚ)
  center := (209175000000000011 / 400000000000000000 : ℚ)
  supportValue := (402528897171719 / 1000000000000000 : ℚ)
  supportSlope := (-4590002033829083 / 2500000000000000 : ℚ)
  oldCenter := (402528897171719 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1238
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (40268156424581003 / 100000000000000000 : ℚ)
  oldPieces := [piece_975, piece_976]
}

noncomputable def cell_10787 : Cell := { cellDefaults with
  domain := ⟨(26150000000000001 / 50000000000000000 : ℚ), (104625000000000007 / 200000000000000000 : ℚ)⟩
  r := (7537426310289 / 12500000000000 : ℚ)
  w := (3619073012873 / 2500000000000 : ℚ)
  center := (209225000000000011 / 400000000000000000 : ℚ)
  supportValue := (4027796671397539 / 10000000000000000 : ℚ)
  supportSlope := (-18367108276107231 / 10000000000000000 : ℚ)
  oldCenter := (4027796671397539 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1239
  oldLo := (20125000000000001 / 50000000000000000 : ℚ)
  oldHi := (20150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_976, piece_977]
}

noncomputable def cell_10788 : Cell := { cellDefaults with
  domain := ⟨(104625000000000007 / 200000000000000000 : ℚ), (10465000000000001 / 20000000000000000 : ℚ)⟩
  r := (7537426310289 / 12500000000000 : ℚ)
  w := (3619073012873 / 2500000000000 : ℚ)
  center := (209275000000000017 / 400000000000000000 : ℚ)
  supportValue := (40255020327163127 / 100000000000000000 : ℚ)
  supportSlope := (-73401826001911 / 40000000000000 : ℚ)
  oldCenter := (40255020327163127 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1239
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (40268156424581003 / 100000000000000000 : ℚ)
  oldPieces := [piece_975, piece_976]
}

noncomputable def cell_10789 : Cell := { cellDefaults with
  domain := ⟨(10465000000000001 / 20000000000000000 : ℚ), (104675000000000013 / 200000000000000000 : ℚ)⟩
  r := (7537426310289 / 12500000000000 : ℚ)
  w := (3619073012873 / 2500000000000 : ℚ)
  center := (209325000000000023 / 400000000000000000 : ℚ)
  supportValue := (20116043652957827 / 50000000000000000 : ℚ)
  supportSlope := (-9169479163725357 / 5000000000000000 : ℚ)
  oldCenter := (20116043652957827 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1239
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_975]
}

noncomputable def cell_10790 : Cell := { cellDefaults with
  domain := ⟨(104675000000000013 / 200000000000000000 : ℚ), (6543750000000001 / 12500000000000000 : ℚ)⟩
  r := (7537426310289 / 12500000000000 : ℚ)
  w := (3619073012873 / 2500000000000 : ℚ)
  center := (209375000000000029 / 400000000000000000 : ℚ)
  supportValue := (20104588052512473 / 50000000000000000 : ℚ)
  supportSlope := (-9160075274800017 / 5000000000000000 : ℚ)
  oldCenter := (20104588052512473 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1239
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974, piece_975]
}

noncomputable def cell_10791 : Cell := { cellDefaults with
  domain := ⟨(6543750000000001 / 12500000000000000 : ℚ), (104725000000000013 / 200000000000000000 : ℚ)⟩
  r := (60266508407219 / 100000000000000 : ℚ)
  w := (7236142483 / 5000000000 : ℚ)
  center := (209425000000000029 / 400000000000000000 : ℚ)
  supportValue := (502927520257617 / 1250000000000000 : ℚ)
  supportSlope := (-9165260418574339 / 5000000000000000 : ℚ)
  oldCenter := (502927520257617 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1240
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_975]
}

noncomputable def cell_10792 : Cell := { cellDefaults with
  domain := ⟨(104725000000000013 / 200000000000000000 : ℚ), (10475000000000001 / 20000000000000000 : ℚ)⟩
  r := (60266508407219 / 100000000000000 : ℚ)
  w := (7236142483 / 5000000000 : ℚ)
  center := (209475000000000023 / 400000000000000000 : ℚ)
  supportValue := (4021130095513039 / 10000000000000000 : ℚ)
  supportSlope := (-9155308898535207 / 5000000000000000 : ℚ)
  oldCenter := (4021130095513039 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1240
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974, piece_975]
}

noncomputable def cell_10793 : Cell := { cellDefaults with
  domain := ⟨(10475000000000001 / 20000000000000000 : ℚ), (104775000000000007 / 200000000000000000 : ℚ)⟩
  r := (60266508407219 / 100000000000000 : ℚ)
  w := (7236142483 / 5000000000 : ℚ)
  center := (209525000000000017 / 400000000000000000 : ℚ)
  supportValue := (8037683534086777 / 20000000000000000 : ℚ)
  supportSlope := (-18302490591255411 / 10000000000000000 : ℚ)
  oldCenter := (8037683534086777 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1240
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974]
}

noncomputable def cell_10794 : Cell := { cellDefaults with
  domain := ⟨(104775000000000007 / 200000000000000000 : ℚ), (26200000000000001 / 50000000000000000 : ℚ)⟩
  r := (60266508407219 / 100000000000000 : ℚ)
  w := (7236142483 / 5000000000 : ℚ)
  center := (209575000000000011 / 400000000000000000 : ℚ)
  supportValue := (502069400534697 / 1250000000000000 : ℚ)
  supportSlope := (-18282493376704483 / 10000000000000000 : ℚ)
  oldCenter := (502069400534697 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1240
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974]
}

noncomputable def cell_10795 : Cell := { cellDefaults with
  domain := ⟨(26200000000000001 / 50000000000000000 : ℚ), (104825000000000007 / 200000000000000000 : ℚ)⟩
  r := (60233646584621 / 100000000000000 : ℚ)
  w := (723414238661 / 500000000000 : ℚ)
  center := (209625000000000011 / 400000000000000000 : ℚ)
  supportValue := (20095265372802723 / 50000000000000000 : ℚ)
  supportSlope := (-1829307375052161 / 1000000000000000 : ℚ)
  oldCenter := (20095265372802723 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1241
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974, piece_975]
}

noncomputable def cell_10796 : Cell := { cellDefaults with
  domain := ⟨(104825000000000007 / 200000000000000000 : ℚ), (10485000000000001 / 20000000000000000 : ℚ)⟩
  r := (60233646584621 / 100000000000000 : ℚ)
  w := (723414238661 / 500000000000 : ℚ)
  center := (209675000000000017 / 400000000000000000 : ℚ)
  supportValue := (4016767561770067 / 10000000000000000 : ℚ)
  supportSlope := (-4568525665788477 / 2500000000000000 : ℚ)
  oldCenter := (4016767561770067 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1241
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974]
}

noncomputable def cell_10797 : Cell := { cellDefaults with
  domain := ⟨(10485000000000001 / 20000000000000000 : ℚ), (5243575418994413 / 10000000000000000 : ℚ)⟩
  r := (60233646584621 / 100000000000000 : ℚ)
  w := (723414238661 / 500000000000 : ℚ)
  center := (20972150837988827 / 40000000000000000 : ℚ)
  supportValue := (1605857461414699 / 4000000000000000 : ℚ)
  supportSlope := (-1826375787190497 / 1000000000000000 : ℚ)
  oldCenter := (1605857461414699 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1241
  oldLo := (20050000000000001 / 50000000000000000 : ℚ)
  oldHi := (20100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_973, piece_974]
}

noncomputable def cell_10798 : Cell := { cellDefaults with
  domain := ⟨(5243575418994413 / 10000000000000000 : ℚ), (6556250000000001 / 12500000000000000 : ℚ)⟩
  r := (60233646584621 / 100000000000000 : ℚ)
  w := (723414238661 / 500000000000 : ℚ)
  center := (52442877094972069 / 100000000000000000 : ℚ)
  supportValue := (80247229108047 / 200000000000000 : ℚ)
  supportSlope := (-18247584559799193 / 10000000000000000 : ℚ)
  oldCenter := (80247229108047 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1242
  oldLo := (20050000000000001 / 50000000000000000 : ℚ)
  oldHi := (20075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_973]
}

noncomputable def cell_10799 : Cell := { cellDefaults with
  domain := ⟨(6556250000000001 / 12500000000000000 : ℚ), (104925000000000013 / 200000000000000000 : ℚ)⟩
  r := (15050206146189 / 25000000000000 : ℚ)
  w := (3616073474141 / 2500000000000 : ℚ)
  center := (209825000000000029 / 400000000000000000 : ℚ)
  supportValue := (20073473846185397 / 50000000000000000 : ℚ)
  supportSlope := (-3650680111567877 / 2000000000000000 : ℚ)
  oldCenter := (20073473846185397 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1243
  oldLo := (20050000000000001 / 50000000000000000 : ℚ)
  oldHi := (20100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_973, piece_974]
}

theorem check_10750 : cell_10750.check = true := by
  decide +kernel

theorem check_10751 : cell_10751.check = true := by
  decide +kernel

theorem check_10752 : cell_10752.check = true := by
  decide +kernel

theorem check_10753 : cell_10753.check = true := by
  decide +kernel

theorem check_10754 : cell_10754.check = true := by
  decide +kernel

theorem check_10755 : cell_10755.check = true := by
  decide +kernel

theorem check_10756 : cell_10756.check = true := by
  decide +kernel

theorem check_10757 : cell_10757.check = true := by
  decide +kernel

theorem check_10758 : cell_10758.check = true := by
  decide +kernel

theorem check_10759 : cell_10759.check = true := by
  decide +kernel

theorem check_10760 : cell_10760.check = true := by
  decide +kernel

theorem check_10761 : cell_10761.check = true := by
  decide +kernel

theorem check_10762 : cell_10762.check = true := by
  decide +kernel

theorem check_10763 : cell_10763.check = true := by
  decide +kernel

theorem check_10764 : cell_10764.check = true := by
  decide +kernel

theorem check_10765 : cell_10765.check = true := by
  decide +kernel

theorem check_10766 : cell_10766.check = true := by
  decide +kernel

theorem check_10767 : cell_10767.check = true := by
  decide +kernel

theorem check_10768 : cell_10768.check = true := by
  decide +kernel

theorem check_10769 : cell_10769.check = true := by
  decide +kernel

theorem check_10770 : cell_10770.check = true := by
  decide +kernel

theorem check_10771 : cell_10771.check = true := by
  decide +kernel

theorem check_10772 : cell_10772.check = true := by
  decide +kernel

theorem check_10773 : cell_10773.check = true := by
  decide +kernel

theorem check_10774 : cell_10774.check = true := by
  decide +kernel

theorem check_10775 : cell_10775.check = true := by
  decide +kernel

theorem check_10776 : cell_10776.check = true := by
  decide +kernel

theorem check_10777 : cell_10777.check = true := by
  decide +kernel

theorem check_10778 : cell_10778.check = true := by
  decide +kernel

theorem check_10779 : cell_10779.check = true := by
  decide +kernel

theorem check_10780 : cell_10780.check = true := by
  decide +kernel

theorem check_10781 : cell_10781.check = true := by
  decide +kernel

theorem check_10782 : cell_10782.check = true := by
  decide +kernel

theorem check_10783 : cell_10783.check = true := by
  decide +kernel

theorem check_10784 : cell_10784.check = true := by
  decide +kernel

theorem check_10785 : cell_10785.check = true := by
  decide +kernel

theorem check_10786 : cell_10786.check = true := by
  decide +kernel

theorem check_10787 : cell_10787.check = true := by
  decide +kernel

theorem check_10788 : cell_10788.check = true := by
  decide +kernel

theorem check_10789 : cell_10789.check = true := by
  decide +kernel

theorem check_10790 : cell_10790.check = true := by
  decide +kernel

theorem check_10791 : cell_10791.check = true := by
  decide +kernel

theorem check_10792 : cell_10792.check = true := by
  decide +kernel

theorem check_10793 : cell_10793.check = true := by
  decide +kernel

theorem check_10794 : cell_10794.check = true := by
  decide +kernel

theorem check_10795 : cell_10795.check = true := by
  decide +kernel

theorem check_10796 : cell_10796.check = true := by
  decide +kernel

theorem check_10797 : cell_10797.check = true := by
  decide +kernel

theorem check_10798 : cell_10798.check = true := by
  decide +kernel

theorem check_10799 : cell_10799.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_10750, cell_10751, cell_10752, cell_10753, cell_10754, cell_10755, cell_10756, cell_10757, cell_10758, cell_10759, cell_10760, cell_10761, cell_10762, cell_10763, cell_10764, cell_10765, cell_10766, cell_10767, cell_10768, cell_10769, cell_10770, cell_10771, cell_10772, cell_10773, cell_10774, cell_10775, cell_10776, cell_10777, cell_10778, cell_10779, cell_10780, cell_10781, cell_10782, cell_10783, cell_10784, cell_10785, cell_10786, cell_10787, cell_10788, cell_10789, cell_10790, cell_10791, cell_10792, cell_10793, cell_10794, cell_10795, cell_10796, cell_10797, cell_10798, cell_10799]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10750, check_10751, check_10752, check_10753, check_10754, check_10755, check_10756, check_10757, check_10758, check_10759, check_10760, check_10761, check_10762, check_10763, check_10764, check_10765, check_10766, check_10767, check_10768, check_10769, check_10770, check_10771, check_10772, check_10773, check_10774, check_10775, check_10776, check_10777, check_10778, check_10779, check_10780, check_10781, check_10782, check_10783, check_10784, check_10785, check_10786, check_10787, check_10788, check_10789, check_10790, check_10791, check_10792, check_10793, check_10794, check_10795, check_10796, check_10797, check_10798, check_10799, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0215

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0215
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0215
open AnalyticBounds.ExpressionCertificate

theorem linked_10750 : Linked cell_10750 pieces := by
  link_source cell_10750 with piece_1229 using piece_1229_mem, piece_985_mem

theorem linked_10751 : Linked cell_10751 pieces := by
  link_source cell_10751 with piece_1229 using piece_1229_mem, ⟨piece_984_mem, piece_985_mem⟩

theorem linked_10752 : Linked cell_10752 pieces := by
  link_source cell_10752 with piece_1229 using piece_1229_mem, piece_984_mem

theorem linked_10753 : Linked cell_10753 pieces := by
  link_source cell_10753 with piece_1230 using piece_1230_mem, piece_984_mem

theorem linked_10754 : Linked cell_10754 pieces := by
  link_source cell_10754 with piece_1230 using piece_1230_mem, ⟨piece_983_mem, piece_984_mem⟩

theorem linked_10755 : Linked cell_10755 pieces := by
  link_source cell_10755 with piece_1231 using piece_1231_mem, piece_984_mem

theorem linked_10756 : Linked cell_10756 pieces := by
  link_source cell_10756 with piece_1231 using piece_1231_mem, ⟨piece_983_mem, piece_984_mem⟩

theorem linked_10757 : Linked cell_10757 pieces := by
  link_source cell_10757 with piece_1231 using piece_1231_mem, piece_983_mem

theorem linked_10758 : Linked cell_10758 pieces := by
  link_source cell_10758 with piece_1231 using piece_1231_mem, ⟨piece_982_mem, piece_983_mem⟩

theorem linked_10759 : Linked cell_10759 pieces := by
  link_source cell_10759 with piece_1232 using piece_1232_mem, piece_983_mem

theorem linked_10760 : Linked cell_10760 pieces := by
  link_source cell_10760 with piece_1232 using piece_1232_mem, piece_983_mem

theorem linked_10761 : Linked cell_10761 pieces := by
  link_source cell_10761 with piece_1232 using piece_1232_mem, ⟨piece_982_mem, piece_983_mem⟩

theorem linked_10762 : Linked cell_10762 pieces := by
  link_source cell_10762 with piece_1232 using piece_1232_mem, piece_982_mem

theorem linked_10763 : Linked cell_10763 pieces := by
  link_source cell_10763 with piece_1233 using piece_1233_mem, ⟨piece_982_mem, piece_983_mem⟩

theorem linked_10764 : Linked cell_10764 pieces := by
  link_source cell_10764 with piece_1233 using piece_1233_mem, piece_982_mem

theorem linked_10765 : Linked cell_10765 pieces := by
  link_source cell_10765 with piece_1233 using piece_1233_mem, ⟨piece_981_mem, piece_982_mem⟩

theorem linked_10766 : Linked cell_10766 pieces := by
  link_source cell_10766 with piece_1233 using piece_1233_mem, piece_981_mem

theorem linked_10767 : Linked cell_10767 pieces := by
  link_source cell_10767 with piece_1234 using piece_1234_mem, ⟨piece_981_mem, piece_982_mem⟩

theorem linked_10768 : Linked cell_10768 pieces := by
  link_source cell_10768 with piece_1234 using piece_1234_mem, piece_981_mem

theorem linked_10769 : Linked cell_10769 pieces := by
  link_source cell_10769 with piece_1234 using piece_1234_mem, ⟨piece_980_mem, piece_981_mem⟩

theorem linked_10770 : Linked cell_10770 pieces := by
  link_source cell_10770 with piece_1234 using piece_1234_mem, piece_980_mem

theorem linked_10771 : Linked cell_10771 pieces := by
  link_source cell_10771 with piece_1235 using piece_1235_mem, ⟨piece_980_mem, piece_981_mem⟩

theorem linked_10772 : Linked cell_10772 pieces := by
  link_source cell_10772 with piece_1235 using piece_1235_mem, piece_980_mem

theorem linked_10773 : Linked cell_10773 pieces := by
  link_source cell_10773 with piece_1235 using piece_1235_mem, ⟨piece_979_mem, piece_980_mem⟩

theorem linked_10774 : Linked cell_10774 pieces := by
  link_source cell_10774 with piece_1235 using piece_1235_mem, piece_979_mem

theorem linked_10775 : Linked cell_10775 pieces := by
  link_source cell_10775 with piece_1236 using piece_1236_mem, ⟨piece_979_mem, piece_980_mem⟩

theorem linked_10776 : Linked cell_10776 pieces := by
  link_source cell_10776 with piece_1236 using piece_1236_mem, piece_979_mem

theorem linked_10777 : Linked cell_10777 pieces := by
  link_source cell_10777 with piece_1236 using piece_1236_mem, piece_979_mem

theorem linked_10778 : Linked cell_10778 pieces := by
  link_source cell_10778 with piece_1236 using piece_1236_mem, ⟨piece_978_mem, piece_979_mem⟩

theorem linked_10779 : Linked cell_10779 pieces := by
  link_source cell_10779 with piece_1237 using piece_1237_mem, piece_979_mem

theorem linked_10780 : Linked cell_10780 pieces := by
  link_source cell_10780 with piece_1237 using piece_1237_mem, ⟨piece_978_mem, piece_979_mem⟩

theorem linked_10781 : Linked cell_10781 pieces := by
  link_source cell_10781 with piece_1237 using piece_1237_mem, piece_978_mem

theorem linked_10782 : Linked cell_10782 pieces := by
  link_source cell_10782 with piece_1237 using piece_1237_mem, ⟨piece_977_mem, piece_978_mem⟩

theorem linked_10783 : Linked cell_10783 pieces := by
  link_source cell_10783 with piece_1238 using piece_1238_mem, piece_978_mem

theorem linked_10784 : Linked cell_10784 pieces := by
  link_source cell_10784 with piece_1238 using piece_1238_mem, ⟨piece_977_mem, piece_978_mem⟩

theorem linked_10785 : Linked cell_10785 pieces := by
  link_source cell_10785 with piece_1238 using piece_1238_mem, ⟨piece_976_mem, piece_977_mem⟩

theorem linked_10786 : Linked cell_10786 pieces := by
  link_source cell_10786 with piece_1238 using piece_1238_mem, ⟨piece_975_mem, piece_976_mem⟩

theorem linked_10787 : Linked cell_10787 pieces := by
  link_source cell_10787 with piece_1239 using piece_1239_mem, ⟨piece_976_mem, piece_977_mem⟩

theorem linked_10788 : Linked cell_10788 pieces := by
  link_source cell_10788 with piece_1239 using piece_1239_mem, ⟨piece_975_mem, piece_976_mem⟩

theorem linked_10789 : Linked cell_10789 pieces := by
  link_source cell_10789 with piece_1239 using piece_1239_mem, piece_975_mem

theorem linked_10790 : Linked cell_10790 pieces := by
  link_source cell_10790 with piece_1239 using piece_1239_mem, ⟨piece_974_mem, piece_975_mem⟩

theorem linked_10791 : Linked cell_10791 pieces := by
  link_source cell_10791 with piece_1240 using piece_1240_mem, piece_975_mem

theorem linked_10792 : Linked cell_10792 pieces := by
  link_source cell_10792 with piece_1240 using piece_1240_mem, ⟨piece_974_mem, piece_975_mem⟩

theorem linked_10793 : Linked cell_10793 pieces := by
  link_source cell_10793 with piece_1240 using piece_1240_mem, piece_974_mem

theorem linked_10794 : Linked cell_10794 pieces := by
  link_source cell_10794 with piece_1240 using piece_1240_mem, piece_974_mem

theorem linked_10795 : Linked cell_10795 pieces := by
  link_source cell_10795 with piece_1241 using piece_1241_mem, ⟨piece_974_mem, piece_975_mem⟩

theorem linked_10796 : Linked cell_10796 pieces := by
  link_source cell_10796 with piece_1241 using piece_1241_mem, piece_974_mem

theorem linked_10797 : Linked cell_10797 pieces := by
  link_source cell_10797 with piece_1241 using piece_1241_mem, ⟨piece_973_mem, piece_974_mem⟩

theorem linked_10798 : Linked cell_10798 pieces := by
  link_source cell_10798 with piece_1242 using piece_1242_mem, piece_973_mem

theorem linked_10799 : Linked cell_10799 pieces := by
  link_source cell_10799 with piece_1243 using piece_1243_mem, ⟨piece_973_mem, piece_974_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0215.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0215.cells,List.forall_mem_cons]
  exact ⟨linked_10750, linked_10751, linked_10752, linked_10753, linked_10754, linked_10755, linked_10756, linked_10757, linked_10758, linked_10759, linked_10760, linked_10761, linked_10762, linked_10763, linked_10764, linked_10765, linked_10766, linked_10767, linked_10768, linked_10769, linked_10770, linked_10771, linked_10772, linked_10773, linked_10774, linked_10775, linked_10776, linked_10777, linked_10778, linked_10779, linked_10780, linked_10781, linked_10782, linked_10783, linked_10784, linked_10785, linked_10786, linked_10787, linked_10788, linked_10789, linked_10790, linked_10791, linked_10792, linked_10793, linked_10794, linked_10795, linked_10796, linked_10797, linked_10798, linked_10799, by simp⟩

theorem covered : covers (12962499999999999 / 25000000000000000 : ℚ) (104925000000000013 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0215.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0215
end
