import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

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
  apply Linked.of_piece piece_1095 piece_1095_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10250, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1120_mem, ⟨piece_1121_mem, piece_1122_mem⟩⟩

theorem linked_10251 : Linked cell_10251 pieces := by
  apply Linked.of_piece piece_1095 piece_1095_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10251, List.cons_subset, List.nil_subset, and_true]
  exact piece_1120_mem

theorem linked_10252 : Linked cell_10252 pieces := by
  apply Linked.of_piece piece_1096 piece_1096_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10252, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1121_mem, piece_1122_mem⟩

theorem linked_10253 : Linked cell_10253 pieces := by
  apply Linked.of_piece piece_1096 piece_1096_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10253, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1120_mem, piece_1121_mem⟩

theorem linked_10254 : Linked cell_10254 pieces := by
  apply Linked.of_piece piece_1096 piece_1096_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10254, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1119_mem, piece_1120_mem⟩

theorem linked_10255 : Linked cell_10255 pieces := by
  apply Linked.of_piece piece_1096 piece_1096_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10255, List.cons_subset, List.nil_subset, and_true]
  exact piece_1119_mem

theorem linked_10256 : Linked cell_10256 pieces := by
  apply Linked.of_piece piece_1097 piece_1097_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10256, List.cons_subset, List.nil_subset, and_true]
  exact piece_1119_mem

theorem linked_10257 : Linked cell_10257 pieces := by
  apply Linked.of_piece piece_1098 piece_1098_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10257, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1119_mem, piece_1120_mem⟩

theorem linked_10258 : Linked cell_10258 pieces := by
  apply Linked.of_piece piece_1098 piece_1098_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10258, List.cons_subset, List.nil_subset, and_true]
  exact piece_1119_mem

theorem linked_10259 : Linked cell_10259 pieces := by
  apply Linked.of_piece piece_1098 piece_1098_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10259, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1118_mem, piece_1119_mem⟩

theorem linked_10260 : Linked cell_10260 pieces := by
  apply Linked.of_piece piece_1098 piece_1098_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10260, List.cons_subset, List.nil_subset, and_true]
  exact piece_1118_mem

theorem linked_10261 : Linked cell_10261 pieces := by
  apply Linked.of_piece piece_1099 piece_1099_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10261, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1118_mem, piece_1119_mem⟩

theorem linked_10262 : Linked cell_10262 pieces := by
  apply Linked.of_piece piece_1099 piece_1099_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10262, List.cons_subset, List.nil_subset, and_true]
  exact piece_1118_mem

theorem linked_10263 : Linked cell_10263 pieces := by
  apply Linked.of_piece piece_1099 piece_1099_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10263, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1117_mem, piece_1118_mem⟩

theorem linked_10264 : Linked cell_10264 pieces := by
  apply Linked.of_piece piece_1099 piece_1099_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10264, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1116_mem, piece_1117_mem⟩

theorem linked_10265 : Linked cell_10265 pieces := by
  apply Linked.of_piece piece_1100 piece_1100_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10265, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1117_mem, piece_1118_mem⟩

theorem linked_10266 : Linked cell_10266 pieces := by
  apply Linked.of_piece piece_1100 piece_1100_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10266, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1116_mem, piece_1117_mem⟩

theorem linked_10267 : Linked cell_10267 pieces := by
  apply Linked.of_piece piece_1100 piece_1100_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10267, List.cons_subset, List.nil_subset, and_true]
  exact piece_1116_mem

theorem linked_10268 : Linked cell_10268 pieces := by
  apply Linked.of_piece piece_1100 piece_1100_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10268, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1115_mem, piece_1116_mem⟩

theorem linked_10269 : Linked cell_10269 pieces := by
  apply Linked.of_piece piece_1101 piece_1101_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10269, List.cons_subset, List.nil_subset, and_true]
  exact piece_1116_mem

theorem linked_10270 : Linked cell_10270 pieces := by
  apply Linked.of_piece piece_1101 piece_1101_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10270, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1115_mem, piece_1116_mem⟩

theorem linked_10271 : Linked cell_10271 pieces := by
  apply Linked.of_piece piece_1101 piece_1101_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10271, List.cons_subset, List.nil_subset, and_true]
  exact piece_1115_mem

theorem linked_10272 : Linked cell_10272 pieces := by
  apply Linked.of_piece piece_1101 piece_1101_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10272, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1114_mem, piece_1115_mem⟩

theorem linked_10273 : Linked cell_10273 pieces := by
  apply Linked.of_piece piece_1102 piece_1102_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10273, List.cons_subset, List.nil_subset, and_true]
  exact piece_1115_mem

theorem linked_10274 : Linked cell_10274 pieces := by
  apply Linked.of_piece piece_1102 piece_1102_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10274, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1114_mem, piece_1115_mem⟩

theorem linked_10275 : Linked cell_10275 pieces := by
  apply Linked.of_piece piece_1102 piece_1102_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10275, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1113_mem, piece_1114_mem⟩

theorem linked_10276 : Linked cell_10276 pieces := by
  apply Linked.of_piece piece_1102 piece_1102_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10276, List.cons_subset, List.nil_subset, and_true]
  exact piece_1113_mem

theorem linked_10277 : Linked cell_10277 pieces := by
  apply Linked.of_piece piece_1103 piece_1103_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10277, List.cons_subset, List.nil_subset, and_true]
  exact piece_1114_mem

theorem linked_10278 : Linked cell_10278 pieces := by
  apply Linked.of_piece piece_1103 piece_1103_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10278, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1113_mem, piece_1114_mem⟩

theorem linked_10279 : Linked cell_10279 pieces := by
  apply Linked.of_piece piece_1103 piece_1103_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10279, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1112_mem, piece_1113_mem⟩

theorem linked_10280 : Linked cell_10280 pieces := by
  apply Linked.of_piece piece_1103 piece_1103_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10280, List.cons_subset, List.nil_subset, and_true]
  exact piece_1112_mem

theorem linked_10281 : Linked cell_10281 pieces := by
  apply Linked.of_piece piece_1104 piece_1104_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10281, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1112_mem, piece_1113_mem⟩

theorem linked_10282 : Linked cell_10282 pieces := by
  apply Linked.of_piece piece_1104 piece_1104_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10282, List.cons_subset, List.nil_subset, and_true]
  exact piece_1112_mem

theorem linked_10283 : Linked cell_10283 pieces := by
  apply Linked.of_piece piece_1104 piece_1104_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10283, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1111_mem, piece_1112_mem⟩

theorem linked_10284 : Linked cell_10284 pieces := by
  apply Linked.of_piece piece_1104 piece_1104_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10284, List.cons_subset, List.nil_subset, and_true]
  exact piece_1111_mem

theorem linked_10285 : Linked cell_10285 pieces := by
  apply Linked.of_piece piece_1105 piece_1105_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10285, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1111_mem, piece_1112_mem⟩

theorem linked_10286 : Linked cell_10286 pieces := by
  apply Linked.of_piece piece_1105 piece_1105_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10286, List.cons_subset, List.nil_subset, and_true]
  exact piece_1111_mem

theorem linked_10287 : Linked cell_10287 pieces := by
  apply Linked.of_piece piece_1105 piece_1105_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10287, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1110_mem, piece_1111_mem⟩

theorem linked_10288 : Linked cell_10288 pieces := by
  apply Linked.of_piece piece_1105 piece_1105_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10288, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1108_mem, ⟨piece_1109_mem, piece_1110_mem⟩⟩

theorem linked_10289 : Linked cell_10289 pieces := by
  apply Linked.of_piece piece_1106 piece_1106_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10289, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1110_mem, piece_1111_mem⟩

theorem linked_10290 : Linked cell_10290 pieces := by
  apply Linked.of_piece piece_1106 piece_1106_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10290, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1108_mem, ⟨piece_1109_mem, piece_1110_mem⟩⟩

theorem linked_10291 : Linked cell_10291 pieces := by
  apply Linked.of_piece piece_1106 piece_1106_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10291, List.cons_subset, List.nil_subset, and_true]
  exact piece_1108_mem

theorem linked_10292 : Linked cell_10292 pieces := by
  apply Linked.of_piece piece_1106 piece_1106_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10292, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1107_mem, piece_1108_mem⟩

theorem linked_10293 : Linked cell_10293 pieces := by
  apply Linked.of_piece piece_1107 piece_1107_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10293, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1108_mem, piece_1109_mem⟩

theorem linked_10294 : Linked cell_10294 pieces := by
  apply Linked.of_piece piece_1107 piece_1107_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10294, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1107_mem, piece_1108_mem⟩

theorem linked_10295 : Linked cell_10295 pieces := by
  apply Linked.of_piece piece_1107 piece_1107_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10295, List.cons_subset, List.nil_subset, and_true]
  exact piece_1107_mem

theorem linked_10296 : Linked cell_10296 pieces := by
  apply Linked.of_piece piece_1107 piece_1107_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10296, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1106_mem, piece_1107_mem⟩

theorem linked_10297 : Linked cell_10297 pieces := by
  apply Linked.of_piece piece_1108 piece_1108_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10297, List.cons_subset, List.nil_subset, and_true]
  exact piece_1107_mem

theorem linked_10298 : Linked cell_10298 pieces := by
  apply Linked.of_piece piece_1108 piece_1108_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10298, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1106_mem, piece_1107_mem⟩

theorem linked_10299 : Linked cell_10299 pieces := by
  apply Linked.of_piece piece_1108 piece_1108_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10299, List.cons_subset, List.nil_subset, and_true]
  exact piece_1106_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0205.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0205.cells,List.forall_mem_cons]
  exact ⟨linked_10250, linked_10251, linked_10252, linked_10253, linked_10254, linked_10255, linked_10256, linked_10257, linked_10258, linked_10259, linked_10260, linked_10261, linked_10262, linked_10263, linked_10264, linked_10265, linked_10266, linked_10267, linked_10268, linked_10269, linked_10270, linked_10271, linked_10272, linked_10273, linked_10274, linked_10275, linked_10276, linked_10277, linked_10278, linked_10279, linked_10280, linked_10281, linked_10282, linked_10283, linked_10284, linked_10285, linked_10286, linked_10287, linked_10288, linked_10289, linked_10290, linked_10291, linked_10292, linked_10293, linked_10294, linked_10295, linked_10296, linked_10297, linked_10298, linked_10299, by simp⟩

theorem covered : covers (22862500000000001 / 50000000000000000 : ℚ) (23168750000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0205.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0205
