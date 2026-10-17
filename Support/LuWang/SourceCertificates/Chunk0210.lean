import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

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
  apply Linked.of_piece piece_1162 piece_1162_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10500, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1047_mem, piece_1048_mem⟩

theorem linked_10501 : Linked cell_10501 pieces := by
  apply Linked.of_piece piece_1163 piece_1163_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10501, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1048_mem, piece_1049_mem⟩

theorem linked_10502 : Linked cell_10502 pieces := by
  apply Linked.of_piece piece_1163 piece_1163_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10502, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1047_mem, piece_1048_mem⟩

theorem linked_10503 : Linked cell_10503 pieces := by
  apply Linked.of_piece piece_1163 piece_1163_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10503, List.cons_subset, List.nil_subset, and_true]
  exact piece_1047_mem

theorem linked_10504 : Linked cell_10504 pieces := by
  apply Linked.of_piece piece_1163 piece_1163_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10504, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1046_mem, piece_1047_mem⟩

theorem linked_10505 : Linked cell_10505 pieces := by
  apply Linked.of_piece piece_1164 piece_1164_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10505, List.cons_subset, List.nil_subset, and_true]
  exact piece_1047_mem

theorem linked_10506 : Linked cell_10506 pieces := by
  apply Linked.of_piece piece_1164 piece_1164_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10506, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1046_mem, piece_1047_mem⟩

theorem linked_10507 : Linked cell_10507 pieces := by
  apply Linked.of_piece piece_1164 piece_1164_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10507, List.cons_subset, List.nil_subset, and_true]
  exact piece_1046_mem

theorem linked_10508 : Linked cell_10508 pieces := by
  apply Linked.of_piece piece_1164 piece_1164_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10508, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1045_mem, piece_1046_mem⟩

theorem linked_10509 : Linked cell_10509 pieces := by
  apply Linked.of_piece piece_1165 piece_1165_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10509, List.cons_subset, List.nil_subset, and_true]
  exact piece_1046_mem

theorem linked_10510 : Linked cell_10510 pieces := by
  apply Linked.of_piece piece_1165 piece_1165_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10510, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1045_mem, piece_1046_mem⟩

theorem linked_10511 : Linked cell_10511 pieces := by
  apply Linked.of_piece piece_1165 piece_1165_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10511, List.cons_subset, List.nil_subset, and_true]
  exact piece_1045_mem

theorem linked_10512 : Linked cell_10512 pieces := by
  apply Linked.of_piece piece_1165 piece_1165_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10512, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1044_mem, piece_1045_mem⟩

theorem linked_10513 : Linked cell_10513 pieces := by
  apply Linked.of_piece piece_1166 piece_1166_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10513, List.cons_subset, List.nil_subset, and_true]
  exact piece_1045_mem

theorem linked_10514 : Linked cell_10514 pieces := by
  apply Linked.of_piece piece_1166 piece_1166_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10514, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1044_mem, piece_1045_mem⟩

theorem linked_10515 : Linked cell_10515 pieces := by
  apply Linked.of_piece piece_1166 piece_1166_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10515, List.cons_subset, List.nil_subset, and_true]
  exact piece_1044_mem

theorem linked_10516 : Linked cell_10516 pieces := by
  apply Linked.of_piece piece_1166 piece_1166_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10516, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1043_mem, piece_1044_mem⟩

theorem linked_10517 : Linked cell_10517 pieces := by
  apply Linked.of_piece piece_1167 piece_1167_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10517, List.cons_subset, List.nil_subset, and_true]
  exact piece_1044_mem

theorem linked_10518 : Linked cell_10518 pieces := by
  apply Linked.of_piece piece_1167 piece_1167_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10518, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1043_mem, piece_1044_mem⟩

theorem linked_10519 : Linked cell_10519 pieces := by
  apply Linked.of_piece piece_1167 piece_1167_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10519, List.cons_subset, List.nil_subset, and_true]
  exact piece_1043_mem

theorem linked_10520 : Linked cell_10520 pieces := by
  apply Linked.of_piece piece_1167 piece_1167_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10520, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1042_mem, piece_1043_mem⟩

theorem linked_10521 : Linked cell_10521 pieces := by
  apply Linked.of_piece piece_1168 piece_1168_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10521, List.cons_subset, List.nil_subset, and_true]
  exact piece_1043_mem

theorem linked_10522 : Linked cell_10522 pieces := by
  apply Linked.of_piece piece_1168 piece_1168_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10522, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1042_mem, piece_1043_mem⟩

theorem linked_10523 : Linked cell_10523 pieces := by
  apply Linked.of_piece piece_1168 piece_1168_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10523, List.cons_subset, List.nil_subset, and_true]
  exact piece_1042_mem

theorem linked_10524 : Linked cell_10524 pieces := by
  apply Linked.of_piece piece_1168 piece_1168_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10524, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1041_mem, piece_1042_mem⟩

theorem linked_10525 : Linked cell_10525 pieces := by
  apply Linked.of_piece piece_1169 piece_1169_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10525, List.cons_subset, List.nil_subset, and_true]
  exact piece_1042_mem

theorem linked_10526 : Linked cell_10526 pieces := by
  apply Linked.of_piece piece_1169 piece_1169_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10526, List.cons_subset, List.nil_subset, and_true]
  exact piece_1042_mem

theorem linked_10527 : Linked cell_10527 pieces := by
  apply Linked.of_piece piece_1170 piece_1170_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10527, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1041_mem, piece_1042_mem⟩

theorem linked_10528 : Linked cell_10528 pieces := by
  apply Linked.of_piece piece_1170 piece_1170_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10528, List.cons_subset, List.nil_subset, and_true]
  exact piece_1041_mem

theorem linked_10529 : Linked cell_10529 pieces := by
  apply Linked.of_piece piece_1170 piece_1170_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10529, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1040_mem, piece_1041_mem⟩

theorem linked_10530 : Linked cell_10530 pieces := by
  apply Linked.of_piece piece_1171 piece_1171_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10530, List.cons_subset, List.nil_subset, and_true]
  exact piece_1041_mem

theorem linked_10531 : Linked cell_10531 pieces := by
  apply Linked.of_piece piece_1171 piece_1171_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10531, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1040_mem, piece_1041_mem⟩

theorem linked_10532 : Linked cell_10532 pieces := by
  apply Linked.of_piece piece_1171 piece_1171_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10532, List.cons_subset, List.nil_subset, and_true]
  exact piece_1040_mem

theorem linked_10533 : Linked cell_10533 pieces := by
  apply Linked.of_piece piece_1171 piece_1171_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10533, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1039_mem, piece_1040_mem⟩

theorem linked_10534 : Linked cell_10534 pieces := by
  apply Linked.of_piece piece_1172 piece_1172_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10534, List.cons_subset, List.nil_subset, and_true]
  exact piece_1040_mem

theorem linked_10535 : Linked cell_10535 pieces := by
  apply Linked.of_piece piece_1172 piece_1172_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10535, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1039_mem, piece_1040_mem⟩

theorem linked_10536 : Linked cell_10536 pieces := by
  apply Linked.of_piece piece_1172 piece_1172_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10536, List.cons_subset, List.nil_subset, and_true]
  exact piece_1039_mem

theorem linked_10537 : Linked cell_10537 pieces := by
  apply Linked.of_piece piece_1172 piece_1172_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10537, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1038_mem, piece_1039_mem⟩

theorem linked_10538 : Linked cell_10538 pieces := by
  apply Linked.of_piece piece_1173 piece_1173_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10538, List.cons_subset, List.nil_subset, and_true]
  exact piece_1039_mem

theorem linked_10539 : Linked cell_10539 pieces := by
  apply Linked.of_piece piece_1173 piece_1173_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10539, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1038_mem, piece_1039_mem⟩

theorem linked_10540 : Linked cell_10540 pieces := by
  apply Linked.of_piece piece_1173 piece_1173_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10540, List.cons_subset, List.nil_subset, and_true]
  exact piece_1038_mem

theorem linked_10541 : Linked cell_10541 pieces := by
  apply Linked.of_piece piece_1173 piece_1173_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10541, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1037_mem, piece_1038_mem⟩

theorem linked_10542 : Linked cell_10542 pieces := by
  apply Linked.of_piece piece_1174 piece_1174_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10542, List.cons_subset, List.nil_subset, and_true]
  exact piece_1038_mem

theorem linked_10543 : Linked cell_10543 pieces := by
  apply Linked.of_piece piece_1174 piece_1174_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10543, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1037_mem, piece_1038_mem⟩

theorem linked_10544 : Linked cell_10544 pieces := by
  apply Linked.of_piece piece_1174 piece_1174_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10544, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1036_mem, piece_1037_mem⟩

theorem linked_10545 : Linked cell_10545 pieces := by
  apply Linked.of_piece piece_1174 piece_1174_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10545, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1035_mem, piece_1036_mem⟩

theorem linked_10546 : Linked cell_10546 pieces := by
  apply Linked.of_piece piece_1175 piece_1175_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10546, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1036_mem, piece_1037_mem⟩

theorem linked_10547 : Linked cell_10547 pieces := by
  apply Linked.of_piece piece_1175 piece_1175_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10547, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1035_mem, piece_1036_mem⟩

theorem linked_10548 : Linked cell_10548 pieces := by
  apply Linked.of_piece piece_1175 piece_1175_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10548, List.cons_subset, List.nil_subset, and_true]
  exact piece_1035_mem

theorem linked_10549 : Linked cell_10549 pieces := by
  apply Linked.of_piece piece_1175 piece_1175_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10549, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1034_mem, piece_1035_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0210.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0210.cells,List.forall_mem_cons]
  exact ⟨linked_10500, linked_10501, linked_10502, linked_10503, linked_10504, linked_10505, linked_10506, linked_10507, linked_10508, linked_10509, linked_10510, linked_10511, linked_10512, linked_10513, linked_10514, linked_10515, linked_10516, linked_10517, linked_10518, linked_10519, linked_10520, linked_10521, linked_10522, linked_10523, linked_10524, linked_10525, linked_10526, linked_10527, linked_10528, linked_10529, linked_10530, linked_10531, linked_10532, linked_10533, linked_10534, linked_10535, linked_10536, linked_10537, linked_10538, linked_10539, linked_10540, linked_10541, linked_10542, linked_10543, linked_10544, linked_10545, linked_10546, linked_10547, linked_10548, linked_10549, by simp⟩

theorem covered : covers (12196875000000001 / 25000000000000000 : ℚ) (9880000000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0210.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0210
