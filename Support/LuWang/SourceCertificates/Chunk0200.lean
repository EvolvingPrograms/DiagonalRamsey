import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0200
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(8651250000000001 / 20000000000000000 : ℚ), (8652500000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (8369259262921 / 12500000000000 : ℚ)
  w := (15349224043981 / 10000000000000 : ℚ)
  center := (8651875000000001 / 20000000000000000 : ℚ)
  supportValue := (5002357963492579 / 10000000000000000 : ℚ)
  supportSlope := (-27600752125387373 / 10000000000000000 : ℚ)
  oldCenter := (5002357963492579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1043
  oldLo := (9980000000000001 / 20000000000000000 : ℚ)
  oldHi := (24975000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1187]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10000 : Cell := { cellDefaults with
  r := (33497806254177 / 50000000000000 : ℚ)
  w := (15355032889167 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1042
  oldLo := (1 / 2 : ℚ)
  oldHi := (25024999999999997 / 50000000000000000 : ℚ)
  oldPieces := [piece_1189]
}

def cell_10001 : Cell := { cellDefaults with
  domain := ⟨(8652500000000001 / 20000000000000000 : ℚ), (8655000000000001 / 20000000000000000 : ℚ)⟩
  r := (33497806254177 / 50000000000000 : ℚ)
  w := (15355032889167 / 10000000000000 : ℚ)
  center := (8653750000000001 / 20000000000000000 : ℚ)
  supportValue := (2499887456626237 / 5000000000000000 : ℚ)
  supportSlope := (-220651205357143 / 80000000000000 : ℚ)
  oldCenter := (2499887456626237 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1042
  oldLo := (24975000000000003 / 50000000000000000 : ℚ)
  oldHi := (25024999999999997 / 50000000000000000 : ℚ)
  oldPieces := [piece_1188, piece_1189]
}

def cell_10002 : Cell := { cellDefaults with
  domain := ⟨(8655000000000001 / 20000000000000000 : ℚ), (8657500000000001 / 20000000000000000 : ℚ)⟩
  r := (33497806254177 / 50000000000000 : ℚ)
  w := (15355032889167 / 10000000000000 : ℚ)
  center := (8656250000000001 / 20000000000000000 : ℚ)
  supportValue := (9992657607927623 / 20000000000000000 : ℚ)
  supportSlope := (-27554316058333583 / 10000000000000000 : ℚ)
  oldCenter := (9992657607927623 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1042
  oldHi := (1 / 2 : ℚ)
  oldPieces := [piece_1187, piece_1188]
}

def cell_10003 : Cell := { cellDefaults with
  domain := ⟨(8657500000000001 / 20000000000000000 : ℚ), (8658750000000001 / 20000000000000000 : ℚ)⟩
  r := (33497806254177 / 50000000000000 : ℚ)
  w := (15355032889167 / 10000000000000 : ℚ)
  center := (8658125000000001 / 20000000000000000 : ℚ)
  supportValue := (49937429419060203 / 100000000000000000 : ℚ)
  supportSlope := (-5507398744406089 / 2000000000000000 : ℚ)
  oldCenter := (49937429419060203 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1042
  oldPieces := [piece_1187]
}

def cell_10004 : Cell := { cellDefaults with
  domain := ⟨(8658750000000001 / 20000000000000000 : ℚ), (8660000000000001 / 20000000000000000 : ℚ)⟩
  r := (33497806254177 / 50000000000000 : ℚ)
  w := (15355032889167 / 10000000000000 : ℚ)
  center := (8659375000000001 / 20000000000000000 : ℚ)
  supportValue := (49920223558808713 / 100000000000000000 : ℚ)
  supportSlope := (-5504349402986719 / 2000000000000000 : ℚ)
  oldCenter := (49920223558808713 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1042
  oldPieces := [piece_1187]
}

def cell_10005 : Cell := { cellDefaults with
  domain := ⟨(8660000000000001 / 20000000000000000 : ℚ), (8661250000000001 / 20000000000000000 : ℚ)⟩
  center := (8660625000000001 / 20000000000000000 : ℚ)
  supportValue := (49974595623313633 / 100000000000000000 : ℚ)
  supportSlope := (-6886529459015911 / 2500000000000000 : ℚ)
  oldCenter := (49974595623313633 / 100000000000000000 : ℚ)
  oldLo := (24975000000000003 / 50000000000000000 : ℚ)
  oldHi := (1 / 2 : ℚ)
  oldPieces := [piece_1188]
}

def cell_10006 : Cell := { cellDefaults with
  domain := ⟨(8661250000000001 / 20000000000000000 : ℚ), (8662500000000001 / 20000000000000000 : ℚ)⟩
  center := (8661875000000001 / 20000000000000000 : ℚ)
  supportValue := (1998295362164747 / 4000000000000000 : ℚ)
  supportSlope := (-2753134143180347 / 1000000000000000 : ℚ)
  oldCenter := (1998295362164747 / 4000000000000000 : ℚ)
  oldHi := (1 / 2 : ℚ)
  oldPieces := [piece_1187, piece_1188]
}

def cell_10007 : Cell := { cellDefaults with
  domain := ⟨(8662500000000001 / 20000000000000000 : ℚ), (8665000000000001 / 20000000000000000 : ℚ)⟩
  center := (8663750000000001 / 20000000000000000 : ℚ)
  supportValue := (2496580764478783 / 5000000000000000 : ℚ)
  supportSlope := (-859822744441463 / 312500000000000 : ℚ)
  oldCenter := (2496580764478783 / 5000000000000000 : ℚ)
  oldPieces := [piece_1187]
}

def cell_10008 : Cell := { cellDefaults with
  domain := ⟨(8665000000000001 / 20000000000000000 : ℚ), (8667500000000001 / 20000000000000000 : ℚ)⟩
  center := (8666250000000001 / 20000000000000000 : ℚ)
  supportValue := (24948620361677487 / 50000000000000000 : ℚ)
  supportSlope := (-13743781708148717 / 5000000000000000 : ℚ)
  oldCenter := (24948620361677487 / 50000000000000000 : ℚ)
  oldLo := (9970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1186, piece_1187]
}

def cell_10009 : Cell := { cellDefaults with
  domain := ⟨(8667500000000001 / 20000000000000000 : ℚ), (8668750000000001 / 20000000000000000 : ℚ)⟩
  center := (8668125000000001 / 20000000000000000 : ℚ)
  supportValue := (4987144442390453 / 10000000000000000 : ℚ)
  supportSlope := (-2746738234254309 / 1000000000000000 : ℚ)
  oldCenter := (4987144442390453 / 10000000000000000 : ℚ)
  oldLo := (9970000000000001 / 20000000000000000 : ℚ)
  oldHi := (9980000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1186]
}

def cell_10010 : Cell := { cellDefaults with
  domain := ⟨(8668750000000001 / 20000000000000000 : ℚ), (8670000000000001 / 20000000000000000 : ℚ)⟩
  center := (8669375000000001 / 20000000000000000 : ℚ)
  supportValue := (4985428205326647 / 10000000000000000 : ℚ)
  supportSlope := (-2745377860545517 / 1000000000000000 : ℚ)
  oldCenter := (4985428205326647 / 10000000000000000 : ℚ)
  oldLo := (9960000000000001 / 20000000000000000 : ℚ)
  oldHi := (9980000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1185, piece_1186]
}

def cell_10011 : Cell := { cellDefaults with
  domain := ⟨(8670000000000001 / 20000000000000000 : ℚ), (8671250000000001 / 20000000000000000 : ℚ)⟩
  r := (66912592984213 / 100000000000000 : ℚ)
  w := (15343427209667 / 10000000000000 : ℚ)
  center := (8670625000000001 / 20000000000000000 : ℚ)
  supportValue := (623856568313241 / 1250000000000000 : ℚ)
  supportSlope := (-27476486368858133 / 10000000000000000 : ℚ)
  oldCenter := (623856568313241 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1044
  oldLo := (9970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1186, piece_1187]
}

def cell_10012 : Cell := { cellDefaults with
  domain := ⟨(8671250000000001 / 20000000000000000 : ℚ), (8672500000000001 / 20000000000000000 : ℚ)⟩
  r := (66912592984213 / 100000000000000 : ℚ)
  w := (15343427209667 / 10000000000000 : ℚ)
  center := (8671875000000001 / 20000000000000000 : ℚ)
  supportValue := (4989135543337613 / 10000000000000000 : ℚ)
  supportSlope := (-13733783306184577 / 5000000000000000 : ℚ)
  oldCenter := (4989135543337613 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1044
  oldLo := (9970000000000001 / 20000000000000000 : ℚ)
  oldHi := (9980000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1186]
}

def cell_10013 : Cell := { cellDefaults with
  domain := ⟨(8672500000000001 / 20000000000000000 : ℚ), (8675000000000001 / 20000000000000000 : ℚ)⟩
  r := (66912592984213 / 100000000000000 : ℚ)
  w := (15343427209667 / 10000000000000 : ℚ)
  center := (8673750000000001 / 20000000000000000 : ℚ)
  supportValue := (49865650166575043 / 100000000000000000 : ℚ)
  supportSlope := (-2744508079366881 / 1000000000000000 : ℚ)
  oldCenter := (49865650166575043 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1044
  oldLo := (9960000000000001 / 20000000000000000 : ℚ)
  oldHi := (9980000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1185, piece_1186]
}

def cell_10014 : Cell := { cellDefaults with
  domain := ⟨(8675000000000001 / 20000000000000000 : ℚ), (8677500000000001 / 20000000000000000 : ℚ)⟩
  r := (66912592984213 / 100000000000000 : ℚ)
  w := (15343427209667 / 10000000000000 : ℚ)
  center := (8676250000000001 / 20000000000000000 : ℚ)
  supportValue := (4983135879726097 / 10000000000000000 : ℚ)
  supportSlope := (-685519238062593 / 250000000000000 : ℚ)
  oldCenter := (4983135879726097 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1044
  oldLo := (9960000000000001 / 20000000000000000 : ℚ)
  oldHi := (9970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1185]
}

def cell_10015 : Cell := { cellDefaults with
  domain := ⟨(8677500000000001 / 20000000000000000 : ℚ), (8678750000000001 / 20000000000000000 : ℚ)⟩
  r := (66912592984213 / 100000000000000 : ℚ)
  w := (15343427209667 / 10000000000000 : ℚ)
  center := (8678125000000001 / 20000000000000000 : ℚ)
  supportValue := (24902813799603177 / 50000000000000000 : ℚ)
  supportSlope := (-6849780681101869 / 2500000000000000 : ℚ)
  oldCenter := (24902813799603177 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1044
  oldLo := (9950000000000001 / 20000000000000000 : ℚ)
  oldHi := (9970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1184, piece_1185]
}

def cell_10016 : Cell := { cellDefaults with
  domain := ⟨(8678750000000001 / 20000000000000000 : ℚ), (8680000000000001 / 20000000000000000 : ℚ)⟩
  r := (66912592984213 / 100000000000000 : ℚ)
  w := (15343427209667 / 10000000000000 : ℚ)
  center := (8679375000000001 / 20000000000000000 : ℚ)
  supportValue := (24894252948892043 / 50000000000000000 : ℚ)
  supportSlope := (-6847302669759081 / 2500000000000000 : ℚ)
  oldCenter := (24894252948892043 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1044
  oldLo := (9950000000000001 / 20000000000000000 : ℚ)
  oldHi := (9960000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1184]
}

def cell_10017 : Cell := { cellDefaults with
  domain := ⟨(8680000000000001 / 20000000000000000 : ℚ), (8681250000000001 / 20000000000000000 : ℚ)⟩
  r := (16717791797073 / 25000000000000 : ℚ)
  w := (15337641631033 / 10000000000000 : ℚ)
  center := (8680625000000001 / 20000000000000000 : ℚ)
  supportValue := (1246065669719109 / 2500000000000000 : ℚ)
  supportSlope := (-219303418878809 / 80000000000000 : ℚ)
  oldCenter := (1246065669719109 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1045
  oldLo := (9960000000000001 / 20000000000000000 : ℚ)
  oldHi := (9980000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1185, piece_1186]
}

def cell_10018 : Cell := { cellDefaults with
  domain := ⟨(8681250000000001 / 20000000000000000 : ℚ), (8682500000000001 / 20000000000000000 : ℚ)⟩
  r := (16717791797073 / 25000000000000 : ℚ)
  w := (15337641631033 / 10000000000000 : ℚ)
  center := (8681875000000001 / 20000000000000000 : ℚ)
  supportValue := (4982549816777 / 10000000000000 : ℚ)
  supportSlope := (-13699106615376877 / 5000000000000000 : ℚ)
  oldCenter := (4982549816777 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1045
  oldLo := (9960000000000001 / 20000000000000000 : ℚ)
  oldHi := (9970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1185]
}

def cell_10019 : Cell := { cellDefaults with
  domain := ⟨(8682500000000001 / 20000000000000000 : ℚ), (8685000000000001 / 20000000000000000 : ℚ)⟩
  r := (16717791797073 / 25000000000000 : ℚ)
  w := (15337641631033 / 10000000000000 : ℚ)
  center := (8683750000000001 / 20000000000000000 : ℚ)
  supportValue := (995997155806081 / 2000000000000000 : ℚ)
  supportSlope := (-2737871842906081 / 1000000000000000 : ℚ)
  oldCenter := (995997155806081 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1045
  oldLo := (9950000000000001 / 20000000000000000 : ℚ)
  oldHi := (9970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1184, piece_1185]
}

def cell_10020 : Cell := { cellDefaults with
  domain := ⟨(8685000000000001 / 20000000000000000 : ℚ), (8687500000000001 / 20000000000000000 : ℚ)⟩
  r := (16717791797073 / 25000000000000 : ℚ)
  w := (15337641631033 / 10000000000000 : ℚ)
  center := (8686250000000001 / 20000000000000000 : ℚ)
  supportValue := (4976564935774071 / 10000000000000000 : ℚ)
  supportSlope := (-27351874717949087 / 10000000000000000 : ℚ)
  oldCenter := (4976564935774071 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1045
  oldLo := (9940000000000001 / 20000000000000000 : ℚ)
  oldHi := (9960000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1183, piece_1184]
}

def cell_10021 : Cell := { cellDefaults with
  domain := ⟨(8687500000000001 / 20000000000000000 : ℚ), (8688750000000001 / 20000000000000000 : ℚ)⟩
  r := (16717791797073 / 25000000000000 : ℚ)
  w := (15337641631033 / 10000000000000 : ℚ)
  center := (8688125000000001 / 20000000000000000 : ℚ)
  supportValue := (621749758576273 / 1250000000000000 : ℚ)
  supportSlope := (-6833819465770219 / 2500000000000000 : ℚ)
  oldCenter := (621749758576273 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1045
  oldLo := (9940000000000001 / 20000000000000000 : ℚ)
  oldHi := (9950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1183]
}

def cell_10022 : Cell := { cellDefaults with
  domain := ⟨(8688750000000001 / 20000000000000000 : ℚ), (8690000000000001 / 20000000000000000 : ℚ)⟩
  r := (16717791797073 / 25000000000000 : ℚ)
  w := (15337641631033 / 10000000000000 : ℚ)
  center := (8689375000000001 / 20000000000000000 : ℚ)
  supportValue := (49722900856578617 / 100000000000000000 : ℚ)
  supportSlope := (-13660082324866707 / 5000000000000000 : ℚ)
  oldCenter := (49722900856578617 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1045
  oldLo := (9940000000000001 / 20000000000000000 : ℚ)
  oldHi := (9950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1183]
}

def cell_10023 : Cell := { cellDefaults with
  domain := ⟨(8690000000000001 / 20000000000000000 : ℚ), (8691250000000001 / 20000000000000000 : ℚ)⟩
  r := (66829798919361 / 100000000000000 : ℚ)
  w := (1533186898911 / 1000000000000 : ℚ)
  center := (8690625000000001 / 20000000000000000 : ℚ)
  supportValue := (995537800318481 / 2000000000000000 : ℚ)
  supportSlope := (-27344208857211783 / 10000000000000000 : ℚ)
  oldCenter := (995537800318481 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1046
  oldLo := (9950000000000001 / 20000000000000000 : ℚ)
  oldHi := (9960000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1184]
}

def cell_10024 : Cell := { cellDefaults with
  domain := ⟨(8691250000000001 / 20000000000000000 : ℚ), (8692500000000001 / 20000000000000000 : ℚ)⟩
  r := (66829798919361 / 100000000000000 : ℚ)
  w := (1533186898911 / 1000000000000 : ℚ)
  center := (8691875000000001 / 20000000000000000 : ℚ)
  supportValue := (24879902298816217 / 50000000000000000 : ℚ)
  supportSlope := (-27329117688896787 / 10000000000000000 : ℚ)
  oldCenter := (24879902298816217 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1046
  oldLo := (9950000000000001 / 20000000000000000 : ℚ)
  oldHi := (9960000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1184]
}

def cell_10025 : Cell := { cellDefaults with
  domain := ⟨(8692500000000001 / 20000000000000000 : ℚ), (8695000000000001 / 20000000000000000 : ℚ)⟩
  r := (66829798919361 / 100000000000000 : ℚ)
  w := (1533186898911 / 1000000000000 : ℚ)
  center := (8693750000000001 / 20000000000000000 : ℚ)
  supportValue := (4973422528813427 / 10000000000000000 : ℚ)
  supportSlope := (-5462519591167947 / 2000000000000000 : ℚ)
  oldCenter := (4973422528813427 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1046
  oldLo := (9940000000000001 / 20000000000000000 : ℚ)
  oldHi := (9960000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1183, piece_1184]
}

def cell_10026 : Cell := { cellDefaults with
  domain := ⟨(8695000000000001 / 20000000000000000 : ℚ), (8697500000000001 / 20000000000000000 : ℚ)⟩
  r := (66829798919361 / 100000000000000 : ℚ)
  w := (1533186898911 / 1000000000000 : ℚ)
  center := (8696250000000001 / 20000000000000000 : ℚ)
  supportValue := (24850051535151163 / 50000000000000000 : ℚ)
  supportSlope := (-13642923574757049 / 5000000000000000 : ℚ)
  oldCenter := (24850051535151163 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1046
  oldLo := (4967039106145251 / 10000000000000000 : ℚ)
  oldHi := (9950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1182, piece_1183]
}

def cell_10027 : Cell := { cellDefaults with
  domain := ⟨(8697500000000001 / 20000000000000000 : ℚ), (8698750000000001 / 20000000000000000 : ℚ)⟩
  r := (66829798919361 / 100000000000000 : ℚ)
  w := (1533186898911 / 1000000000000 : ℚ)
  center := (8698125000000001 / 20000000000000000 : ℚ)
  supportValue := (4967449540859267 / 10000000000000000 : ℚ)
  supportSlope := (-3408303627769893 / 1250000000000000 : ℚ)
  oldCenter := (4967449540859267 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1046
  oldLo := (9930000000000001 / 20000000000000000 : ℚ)
  oldHi := (9940000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1181, piece_1182]
}

def cell_10028 : Cell := { cellDefaults with
  domain := ⟨(8698750000000001 / 20000000000000000 : ℚ), (8700000000000001 / 20000000000000000 : ℚ)⟩
  r := (66829798919361 / 100000000000000 : ℚ)
  w := (1533186898911 / 1000000000000 : ℚ)
  center := (8699375000000001 / 20000000000000000 : ℚ)
  supportValue := (496574585920773 / 1000000000000000 : ℚ)
  supportSlope := (-27251773669263457 / 10000000000000000 : ℚ)
  oldCenter := (496574585920773 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1046
  oldLo := (9920000000000001 / 20000000000000000 : ℚ)
  oldHi := (4967039106145251 / 10000000000000000 : ℚ)
  oldPieces := [piece_1180, piece_1181]
}

def cell_10029 : Cell := { cellDefaults with
  domain := ⟨(8700000000000001 / 20000000000000000 : ℚ), (8701250000000001 / 20000000000000000 : ℚ)⟩
  r := (66788486485421 / 100000000000000 : ℚ)
  w := (7663053967499 / 5000000000000 : ℚ)
  center := (8700625000000001 / 20000000000000000 : ℚ)
  supportValue := (4971132285272129 / 10000000000000000 : ℚ)
  supportSlope := (-136376581258979 / 50000000000000 : ℚ)
  oldCenter := (4971132285272129 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1047
  oldLo := (9940000000000001 / 20000000000000000 : ℚ)
  oldHi := (9950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1183]
}

def cell_10030 : Cell := { cellDefaults with
  domain := ⟨(8701250000000001 / 20000000000000000 : ℚ), (8702500000000001 / 20000000000000000 : ℚ)⟩
  r := (66788486485421 / 100000000000000 : ℚ)
  w := (7663053967499 / 5000000000000 : ℚ)
  center := (8701875000000001 / 20000000000000000 : ℚ)
  supportValue := (993885582747613 / 2000000000000000 : ℚ)
  supportSlope := (-2726559281827079 / 1000000000000000 : ℚ)
  oldCenter := (993885582747613 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1047
  oldLo := (4967039106145251 / 10000000000000000 : ℚ)
  oldHi := (9950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1182, piece_1183]
}

def cell_10031 : Cell := { cellDefaults with
  domain := ⟨(8702500000000001 / 20000000000000000 : ℚ), (8705000000000001 / 20000000000000000 : ℚ)⟩
  r := (66788486485421 / 100000000000000 : ℚ)
  w := (7663053967499 / 5000000000000 : ℚ)
  center := (8703750000000001 / 20000000000000000 : ℚ)
  supportValue := (4966876201470157 / 10000000000000000 : ℚ)
  supportSlope := (-27244060812670057 / 10000000000000000 : ℚ)
  oldCenter := (4966876201470157 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1047
  oldLo := (9930000000000001 / 20000000000000000 : ℚ)
  oldHi := (9940000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1181, piece_1182]
}

def cell_10032 : Cell := { cellDefaults with
  domain := ⟨(8705000000000001 / 20000000000000000 : ℚ), (8707500000000001 / 20000000000000000 : ℚ)⟩
  r := (66788486485421 / 100000000000000 : ℚ)
  w := (7663053967499 / 5000000000000 : ℚ)
  center := (8706250000000001 / 20000000000000000 : ℚ)
  supportValue := (12408680525710901 / 25000000000000000 : ℚ)
  supportSlope := (-2722005986955267 / 1000000000000000 : ℚ)
  oldCenter := (12408680525710901 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1047
  oldLo := (9920000000000001 / 20000000000000000 : ℚ)
  oldHi := (4967039106145251 / 10000000000000000 : ℚ)
  oldPieces := [piece_1180, piece_1181]
}

def cell_10033 : Cell := { cellDefaults with
  domain := ⟨(8707500000000001 / 20000000000000000 : ℚ), (8708750000000001 / 20000000000000000 : ℚ)⟩
  r := (66788486485421 / 100000000000000 : ℚ)
  w := (7663053967499 / 5000000000000 : ℚ)
  center := (8708125000000001 / 20000000000000000 : ℚ)
  supportValue := (49609178817871397 / 100000000000000000 : ℚ)
  supportSlope := (-13598918548058947 / 5000000000000000 : ℚ)
  oldCenter := (49609178817871397 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1047
  oldLo := (9920000000000001 / 20000000000000000 : ℚ)
  oldHi := (9930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1180]
}

def cell_10034 : Cell := { cellDefaults with
  domain := ⟨(8708750000000001 / 20000000000000000 : ℚ), (8710000000000001 / 20000000000000000 : ℚ)⟩
  r := (66788486485421 / 100000000000000 : ℚ)
  w := (7663053967499 / 5000000000000 : ℚ)
  center := (8709375000000001 / 20000000000000000 : ℚ)
  supportValue := (247960915054069 / 500000000000000 : ℚ)
  supportSlope := (-6797243907610273 / 2500000000000000 : ℚ)
  oldCenter := (247960915054069 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1047
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179, piece_1180]
}

def cell_10035 : Cell := { cellDefaults with
  domain := ⟨(8710000000000001 / 20000000000000000 : ℚ), (8711250000000001 / 20000000000000000 : ℚ)⟩
  r := (6674722985067 / 10000000000000 : ℚ)
  w := (766017980853 / 500000000000 : ℚ)
  center := (8710625000000001 / 20000000000000000 : ℚ)
  supportValue := (49645919615462863 / 100000000000000000 : ℚ)
  supportSlope := (-2721139703160347 / 1000000000000000 : ℚ)
  oldCenter := (49645919615462863 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1048
  oldLo := (9920000000000001 / 20000000000000000 : ℚ)
  oldHi := (4967039106145251 / 10000000000000000 : ℚ)
  oldPieces := [piece_1180, piece_1181]
}

def cell_10036 : Cell := { cellDefaults with
  domain := ⟨(8711250000000001 / 20000000000000000 : ℚ), (8712500000000001 / 20000000000000000 : ℚ)⟩
  r := (6674722985067 / 10000000000000 : ℚ)
  w := (766017980853 / 500000000000 : ℚ)
  center := (8711875000000001 / 20000000000000000 : ℚ)
  supportValue := (9925783229302697 / 20000000000000000 : ℚ)
  supportSlope := (-27198035566460277 / 10000000000000000 : ℚ)
  oldCenter := (9925783229302697 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1048
  oldLo := (9920000000000001 / 20000000000000000 : ℚ)
  oldHi := (9930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1180]
}

def cell_10037 : Cell := { cellDefaults with
  domain := ⟨(8712500000000001 / 20000000000000000 : ℚ), (8715000000000001 / 20000000000000000 : ℚ)⟩
  r := (6674722985067 / 10000000000000 : ℚ)
  w := (766017980853 / 500000000000 : ℚ)
  center := (8713750000000001 / 20000000000000000 : ℚ)
  supportValue := (24801731625220577 / 50000000000000000 : ℚ)
  supportSlope := (-1358904882855061 / 500000000000000 : ℚ)
  oldCenter := (24801731625220577 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1048
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179, piece_1180]
}

def cell_10038 : Cell := { cellDefaults with
  domain := ⟨(8715000000000001 / 20000000000000000 : ℚ), (871731843575419 / 2000000000000000 : ℚ)⟩
  r := (6674722985067 / 10000000000000 : ℚ)
  w := (766017980853 / 500000000000 : ℚ)
  center := (17432318435754191 / 40000000000000000 : ℚ)
  supportValue := (4957073781924329 / 10000000000000000 : ℚ)
  supportSlope := (-212133148405577 / 78125000000000 : ℚ)
  oldCenter := (4957073781924329 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1048
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179]
}

def cell_10039 : Cell := { cellDefaults with
  domain := ⟨(871731843575419 / 2000000000000000 : ℚ), (17437318435754191 / 40000000000000000 : ℚ)⟩
  r := (6674722985067 / 10000000000000 : ℚ)
  w := (766017980853 / 500000000000 : ℚ)
  center := (34871955307262571 / 80000000000000000 : ℚ)
  supportValue := (4954587243477999 / 10000000000000000 : ℚ)
  supportSlope := (-5427159250401191 / 2000000000000000 : ℚ)
  oldCenter := (4954587243477999 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1049
  oldLo := (9900000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1178, piece_1179]
}

def cell_10040 : Cell := { cellDefaults with
  domain := ⟨(17437318435754191 / 40000000000000000 : ℚ), (8720000000000001 / 20000000000000000 : ℚ)⟩
  r := (6674722985067 / 10000000000000 : ℚ)
  w := (766017980853 / 500000000000 : ℚ)
  center := (34877318435754193 / 80000000000000000 : ℚ)
  supportValue := (619096063118149 / 1250000000000000 : ℚ)
  supportSlope := (-2712147386662513 / 1000000000000000 : ℚ)
  oldCenter := (619096063118149 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1049
  oldLo := (9900000000000001 / 20000000000000000 : ℚ)
  oldHi := (9910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1178]
}

def cell_10041 : Cell := { cellDefaults with
  domain := ⟨(8720000000000001 / 20000000000000000 : ℚ), (69770000000000007 / 160000000000000000 : ℚ)⟩
  r := (66706029665663 / 100000000000000 : ℚ)
  w := (1914327755523 / 1250000000000 : ℚ)
  center := (27906000000000003 / 64000000000000000 : ℚ)
  supportValue := (991613672387219 / 2000000000000000 : ℚ)
  supportSlope := (-27144658390184033 / 10000000000000000 : ℚ)
  oldCenter := (991613672387219 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1050
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179]
}

def cell_10042 : Cell := { cellDefaults with
  domain := ⟨(69770000000000007 / 160000000000000000 : ℚ), (34890000000000003 / 80000000000000000 : ℚ)⟩
  r := (66706029665663 / 100000000000000 : ℚ)
  w := (1914327755523 / 1250000000000 : ℚ)
  center := (139550000000000013 / 320000000000000000 : ℚ)
  supportValue := (9912744575993323 / 20000000000000000 : ℚ)
  supportSlope := (-13564847896116141 / 5000000000000000 : ℚ)
  oldCenter := (9912744575993323 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1050
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179]
}

def cell_10043 : Cell := { cellDefaults with
  domain := ⟨(34890000000000003 / 80000000000000000 : ℚ), (17450000000000001 / 40000000000000000 : ℚ)⟩
  r := (66706029665663 / 100000000000000 : ℚ)
  w := (1914327755523 / 1250000000000 : ℚ)
  center := (13958000000000001 / 32000000000000000 : ℚ)
  supportValue := (9907666239659797 / 20000000000000000 : ℚ)
  supportSlope := (-542253856498097 / 200000000000000 : ℚ)
  oldCenter := (9907666239659797 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1050
  oldLo := (9900000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1178, piece_1179]
}

def cell_10044 : Cell := { cellDefaults with
  domain := ⟨(17450000000000001 / 40000000000000000 : ℚ), (34910000000000001 / 80000000000000000 : ℚ)⟩
  r := (66706029665663 / 100000000000000 : ℚ)
  w := (1914327755523 / 1250000000000 : ℚ)
  center := (69810000000000003 / 160000000000000000 : ℚ)
  supportValue := (618805721899203 / 1250000000000000 : ℚ)
  supportSlope := (-3385771331661297 / 1250000000000000 : ℚ)
  oldCenter := (618805721899203 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1050
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177, piece_1178]
}

def cell_10045 : Cell := { cellDefaults with
  domain := ⟨(34910000000000001 / 80000000000000000 : ℚ), (69830000000000001 / 160000000000000000 : ℚ)⟩
  r := (66706029665663 / 100000000000000 : ℚ)
  w := (1914327755523 / 1250000000000 : ℚ)
  center := (139650000000000003 / 320000000000000000 : ℚ)
  supportValue := (2473951877687179 / 5000000000000000 : ℚ)
  supportSlope := (-5413563367590343 / 2000000000000000 : ℚ)
  oldCenter := (2473951877687179 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1050
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177]
}

def cell_10046 : Cell := { cellDefaults with
  domain := ⟨(69830000000000001 / 160000000000000000 : ℚ), (873 / 2000 : ℚ)⟩
  r := (66706029665663 / 100000000000000 : ℚ)
  w := (1914327755523 / 1250000000000 : ℚ)
  center := (139670000000000001 / 320000000000000000 : ℚ)
  supportValue := (9892424965983977 / 20000000000000000 : ℚ)
  supportSlope := (-27052887569641233 / 10000000000000000 : ℚ)
  oldCenter := (9892424965983977 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1050
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177]
}

def cell_10047 : Cell := { cellDefaults with
  domain := ⟨(873 / 2000 : ℚ), (1397 / 3200 : ℚ)⟩
  r := (66664886329663 / 100000000000000 : ℚ)
  w := (191361221889 / 125000000000 : ℚ)
  center := (13969 / 32000 : ℚ)
  supportValue := (2475780380088967 / 5000000000000000 : ℚ)
  supportSlope := (-27076511634991363 / 10000000000000000 : ℚ)
  oldCenter := (2475780380088967 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1051
  oldLo := (9900000000000001 / 20000000000000000 : ℚ)
  oldHi := (9910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1178]
}

def cell_10048 : Cell := { cellDefaults with
  domain := ⟨(1397 / 3200 : ℚ), (3493 / 8000 : ℚ)⟩
  r := (66664886329663 / 100000000000000 : ℚ)
  w := (191361221889 / 125000000000 : ℚ)
  center := (13971 / 32000 : ℚ)
  supportValue := (24749344560813097 / 50000000000000000 : ℚ)
  supportSlope := (-27065322409516313 / 10000000000000000 : ℚ)
  oldCenter := (24749344560813097 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1051
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177, piece_1178]
}

def cell_10049 : Cell := { cellDefaults with
  domain := ⟨(3493 / 8000 : ℚ), (1747 / 4000 : ℚ)⟩
  r := (66664886329663 / 100000000000000 : ℚ)
  w := (191361221889 / 125000000000 : ℚ)
  center := (6987 / 16000 : ℚ)
  supportValue := (49473357952721747 / 100000000000000000 : ℚ)
  supportSlope := (-13522830164882649 / 5000000000000000 : ℚ)
  oldCenter := (49473357952721747 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1051
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177]
}

theorem check_10000 : cell_10000.check = true := by
  decide +kernel

theorem check_10001 : cell_10001.check = true := by
  decide +kernel

theorem check_10002 : cell_10002.check = true := by
  decide +kernel

theorem check_10003 : cell_10003.check = true := by
  decide +kernel

theorem check_10004 : cell_10004.check = true := by
  decide +kernel

theorem check_10005 : cell_10005.check = true := by
  decide +kernel

theorem check_10006 : cell_10006.check = true := by
  decide +kernel

theorem check_10007 : cell_10007.check = true := by
  decide +kernel

theorem check_10008 : cell_10008.check = true := by
  decide +kernel

theorem check_10009 : cell_10009.check = true := by
  decide +kernel

theorem check_10010 : cell_10010.check = true := by
  decide +kernel

theorem check_10011 : cell_10011.check = true := by
  decide +kernel

theorem check_10012 : cell_10012.check = true := by
  decide +kernel

theorem check_10013 : cell_10013.check = true := by
  decide +kernel

theorem check_10014 : cell_10014.check = true := by
  decide +kernel

theorem check_10015 : cell_10015.check = true := by
  decide +kernel

theorem check_10016 : cell_10016.check = true := by
  decide +kernel

theorem check_10017 : cell_10017.check = true := by
  decide +kernel

theorem check_10018 : cell_10018.check = true := by
  decide +kernel

theorem check_10019 : cell_10019.check = true := by
  decide +kernel

theorem check_10020 : cell_10020.check = true := by
  decide +kernel

theorem check_10021 : cell_10021.check = true := by
  decide +kernel

theorem check_10022 : cell_10022.check = true := by
  decide +kernel

theorem check_10023 : cell_10023.check = true := by
  decide +kernel

theorem check_10024 : cell_10024.check = true := by
  decide +kernel

theorem check_10025 : cell_10025.check = true := by
  decide +kernel

theorem check_10026 : cell_10026.check = true := by
  decide +kernel

theorem check_10027 : cell_10027.check = true := by
  decide +kernel

theorem check_10028 : cell_10028.check = true := by
  decide +kernel

theorem check_10029 : cell_10029.check = true := by
  decide +kernel

theorem check_10030 : cell_10030.check = true := by
  decide +kernel

theorem check_10031 : cell_10031.check = true := by
  decide +kernel

theorem check_10032 : cell_10032.check = true := by
  decide +kernel

theorem check_10033 : cell_10033.check = true := by
  decide +kernel

theorem check_10034 : cell_10034.check = true := by
  decide +kernel

theorem check_10035 : cell_10035.check = true := by
  decide +kernel

theorem check_10036 : cell_10036.check = true := by
  decide +kernel

theorem check_10037 : cell_10037.check = true := by
  decide +kernel

theorem check_10038 : cell_10038.check = true := by
  decide +kernel

theorem check_10039 : cell_10039.check = true := by
  decide +kernel

theorem check_10040 : cell_10040.check = true := by
  decide +kernel

theorem check_10041 : cell_10041.check = true := by
  decide +kernel

theorem check_10042 : cell_10042.check = true := by
  decide +kernel

theorem check_10043 : cell_10043.check = true := by
  decide +kernel

theorem check_10044 : cell_10044.check = true := by
  decide +kernel

theorem check_10045 : cell_10045.check = true := by
  decide +kernel

theorem check_10046 : cell_10046.check = true := by
  decide +kernel

theorem check_10047 : cell_10047.check = true := by
  decide +kernel

theorem check_10048 : cell_10048.check = true := by
  decide +kernel

theorem check_10049 : cell_10049.check = true := by
  decide +kernel

def cells : List Cell := [cell_10000, cell_10001, cell_10002, cell_10003, cell_10004, cell_10005, cell_10006, cell_10007, cell_10008, cell_10009, cell_10010, cell_10011, cell_10012, cell_10013, cell_10014, cell_10015, cell_10016, cell_10017, cell_10018, cell_10019, cell_10020, cell_10021, cell_10022, cell_10023, cell_10024, cell_10025, cell_10026, cell_10027, cell_10028, cell_10029, cell_10030, cell_10031, cell_10032, cell_10033, cell_10034, cell_10035, cell_10036, cell_10037, cell_10038, cell_10039, cell_10040, cell_10041, cell_10042, cell_10043, cell_10044, cell_10045, cell_10046, cell_10047, cell_10048, cell_10049]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10000, check_10001, check_10002, check_10003, check_10004, check_10005, check_10006, check_10007, check_10008, check_10009, check_10010, check_10011, check_10012, check_10013, check_10014, check_10015, check_10016, check_10017, check_10018, check_10019, check_10020, check_10021, check_10022, check_10023, check_10024, check_10025, check_10026, check_10027, check_10028, check_10029, check_10030, check_10031, check_10032, check_10033, check_10034, check_10035, check_10036, check_10037, check_10038, check_10039, check_10040, check_10041, check_10042, check_10043, check_10044, check_10045, check_10046, check_10047, check_10048, check_10049, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0200

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0200
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0200
open AnalyticBounds.ExpressionCertificate

theorem linked_10000 : Linked cell_10000 pieces := by
  refine ⟨piece_1042,piece_1042_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10000,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1189_mem

theorem linked_10001 : Linked cell_10001 pieces := by
  refine ⟨piece_1042,piece_1042_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10001,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1188_mem
    · exact piece_1189_mem

theorem linked_10002 : Linked cell_10002 pieces := by
  refine ⟨piece_1042,piece_1042_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10002,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1187_mem
    · exact piece_1188_mem

theorem linked_10003 : Linked cell_10003 pieces := by
  refine ⟨piece_1042,piece_1042_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10003,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1187_mem

theorem linked_10004 : Linked cell_10004 pieces := by
  refine ⟨piece_1042,piece_1042_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10004,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1187_mem

theorem linked_10005 : Linked cell_10005 pieces := by
  refine ⟨piece_1043,piece_1043_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10005,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1188_mem

theorem linked_10006 : Linked cell_10006 pieces := by
  refine ⟨piece_1043,piece_1043_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10006,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1187_mem
    · exact piece_1188_mem

theorem linked_10007 : Linked cell_10007 pieces := by
  refine ⟨piece_1043,piece_1043_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10007,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1187_mem

theorem linked_10008 : Linked cell_10008 pieces := by
  refine ⟨piece_1043,piece_1043_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10008,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1186_mem
    · exact piece_1187_mem

theorem linked_10009 : Linked cell_10009 pieces := by
  refine ⟨piece_1043,piece_1043_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10009,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1186_mem

theorem linked_10010 : Linked cell_10010 pieces := by
  refine ⟨piece_1043,piece_1043_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10010,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1185_mem
    · exact piece_1186_mem

theorem linked_10011 : Linked cell_10011 pieces := by
  refine ⟨piece_1044,piece_1044_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10011,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1186_mem
    · exact piece_1187_mem

theorem linked_10012 : Linked cell_10012 pieces := by
  refine ⟨piece_1044,piece_1044_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10012,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1186_mem

theorem linked_10013 : Linked cell_10013 pieces := by
  refine ⟨piece_1044,piece_1044_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10013,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1185_mem
    · exact piece_1186_mem

theorem linked_10014 : Linked cell_10014 pieces := by
  refine ⟨piece_1044,piece_1044_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10014,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1185_mem

theorem linked_10015 : Linked cell_10015 pieces := by
  refine ⟨piece_1044,piece_1044_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10015,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1184_mem
    · exact piece_1185_mem

theorem linked_10016 : Linked cell_10016 pieces := by
  refine ⟨piece_1044,piece_1044_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10016,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1184_mem

theorem linked_10017 : Linked cell_10017 pieces := by
  refine ⟨piece_1045,piece_1045_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10017,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1185_mem
    · exact piece_1186_mem

theorem linked_10018 : Linked cell_10018 pieces := by
  refine ⟨piece_1045,piece_1045_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10018,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1185_mem

theorem linked_10019 : Linked cell_10019 pieces := by
  refine ⟨piece_1045,piece_1045_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10019,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1184_mem
    · exact piece_1185_mem

theorem linked_10020 : Linked cell_10020 pieces := by
  refine ⟨piece_1045,piece_1045_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10020,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1183_mem
    · exact piece_1184_mem

theorem linked_10021 : Linked cell_10021 pieces := by
  refine ⟨piece_1045,piece_1045_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10021,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1183_mem

theorem linked_10022 : Linked cell_10022 pieces := by
  refine ⟨piece_1045,piece_1045_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10022,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1183_mem

theorem linked_10023 : Linked cell_10023 pieces := by
  refine ⟨piece_1046,piece_1046_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10023,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1184_mem

theorem linked_10024 : Linked cell_10024 pieces := by
  refine ⟨piece_1046,piece_1046_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10024,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1184_mem

theorem linked_10025 : Linked cell_10025 pieces := by
  refine ⟨piece_1046,piece_1046_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10025,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1183_mem
    · exact piece_1184_mem

theorem linked_10026 : Linked cell_10026 pieces := by
  refine ⟨piece_1046,piece_1046_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10026,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1182_mem
    · exact piece_1183_mem

theorem linked_10027 : Linked cell_10027 pieces := by
  refine ⟨piece_1046,piece_1046_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10027,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1181_mem
    · exact piece_1182_mem

theorem linked_10028 : Linked cell_10028 pieces := by
  refine ⟨piece_1046,piece_1046_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10028,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1180_mem
    · exact piece_1181_mem

theorem linked_10029 : Linked cell_10029 pieces := by
  refine ⟨piece_1047,piece_1047_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10029,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1183_mem

theorem linked_10030 : Linked cell_10030 pieces := by
  refine ⟨piece_1047,piece_1047_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10030,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1182_mem
    · exact piece_1183_mem

theorem linked_10031 : Linked cell_10031 pieces := by
  refine ⟨piece_1047,piece_1047_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10031,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1181_mem
    · exact piece_1182_mem

theorem linked_10032 : Linked cell_10032 pieces := by
  refine ⟨piece_1047,piece_1047_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10032,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1180_mem
    · exact piece_1181_mem

theorem linked_10033 : Linked cell_10033 pieces := by
  refine ⟨piece_1047,piece_1047_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10033,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1180_mem

theorem linked_10034 : Linked cell_10034 pieces := by
  refine ⟨piece_1047,piece_1047_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10034,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1179_mem
    · exact piece_1180_mem

theorem linked_10035 : Linked cell_10035 pieces := by
  refine ⟨piece_1048,piece_1048_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10035,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1180_mem
    · exact piece_1181_mem

theorem linked_10036 : Linked cell_10036 pieces := by
  refine ⟨piece_1048,piece_1048_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10036,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1180_mem

theorem linked_10037 : Linked cell_10037 pieces := by
  refine ⟨piece_1048,piece_1048_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10037,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1179_mem
    · exact piece_1180_mem

theorem linked_10038 : Linked cell_10038 pieces := by
  refine ⟨piece_1048,piece_1048_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10038,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1179_mem

theorem linked_10039 : Linked cell_10039 pieces := by
  refine ⟨piece_1049,piece_1049_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10039,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1178_mem
    · exact piece_1179_mem

theorem linked_10040 : Linked cell_10040 pieces := by
  refine ⟨piece_1049,piece_1049_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10040,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1178_mem

theorem linked_10041 : Linked cell_10041 pieces := by
  refine ⟨piece_1050,piece_1050_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10041,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1179_mem

theorem linked_10042 : Linked cell_10042 pieces := by
  refine ⟨piece_1050,piece_1050_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10042,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1179_mem

theorem linked_10043 : Linked cell_10043 pieces := by
  refine ⟨piece_1050,piece_1050_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10043,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1178_mem
    · exact piece_1179_mem

theorem linked_10044 : Linked cell_10044 pieces := by
  refine ⟨piece_1050,piece_1050_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10044,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1177_mem
    · exact piece_1178_mem

theorem linked_10045 : Linked cell_10045 pieces := by
  refine ⟨piece_1050,piece_1050_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10045,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1177_mem

theorem linked_10046 : Linked cell_10046 pieces := by
  refine ⟨piece_1050,piece_1050_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10046,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1177_mem

theorem linked_10047 : Linked cell_10047 pieces := by
  refine ⟨piece_1051,piece_1051_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10047,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1178_mem

theorem linked_10048 : Linked cell_10048 pieces := by
  refine ⟨piece_1051,piece_1051_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10048,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1177_mem
    · exact piece_1178_mem

theorem linked_10049 : Linked cell_10049 pieces := by
  refine ⟨piece_1051,piece_1051_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10049,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1177_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0200.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0200.cells,List.forall_mem_cons]
  exact ⟨linked_10000, linked_10001, linked_10002, linked_10003, linked_10004, linked_10005, linked_10006, linked_10007, linked_10008, linked_10009, linked_10010, linked_10011, linked_10012, linked_10013, linked_10014, linked_10015, linked_10016, linked_10017, linked_10018, linked_10019, linked_10020, linked_10021, linked_10022, linked_10023, linked_10024, linked_10025, linked_10026, linked_10027, linked_10028, linked_10029, linked_10030, linked_10031, linked_10032, linked_10033, linked_10034, linked_10035, linked_10036, linked_10037, linked_10038, linked_10039, linked_10040, linked_10041, linked_10042, linked_10043, linked_10044, linked_10045, linked_10046, linked_10047, linked_10048, linked_10049, by simp⟩

theorem covered : covers (8651250000000001 / 20000000000000000 : ℚ) (1747 / 4000 : ℚ)
    (SourceCertificates.Chunk0200.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0200
