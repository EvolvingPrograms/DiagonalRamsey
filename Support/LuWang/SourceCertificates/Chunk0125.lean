import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0125
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(19362500000000001 / 100000000000000000 : ℚ), (19368750000000001 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (11281398843367 / 12500000000000 : ℚ)
  w := (2026897163627 / 2000000000000 : ℚ)
  center := (19365625000000001 / 100000000000000000 : ℚ)
  supportValue := (7203066087729691 / 10000000000000000 : ℚ)
  supportSlope := (546959087817811 / 100000000000000 : ℚ)
  oldCenter := (7203066087729691 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_522
  oldLo := (72150000000000003 / 100000000000000000 : ℚ)
  oldHi := (72250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1672, piece_1673]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6250 : Cell := { cellDefaults with
  r := (90336668950929 / 100000000000000 : ℚ)
  w := (5066089979737 / 5000000000000 : ℚ)
  newCoefficients := coefficients_521
  oldLo := (9000000000000001 / 12500000000000000 : ℚ)
  oldHi := (72050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1669]
}

def cell_6251 : Cell := { cellDefaults with
  domain := ⟨(19368750000000001 / 100000000000000000 : ℚ), (19375000000000001 / 100000000000000000 : ℚ)⟩
  r := (90336668950929 / 100000000000000 : ℚ)
  w := (5066089979737 / 5000000000000 : ℚ)
  center := (19371875000000001 / 100000000000000000 : ℚ)
  supportValue := (1801621233247791 / 2500000000000000 : ℚ)
  supportSlope := (273534287471211 / 50000000000000 : ℚ)
  oldCenter := (1801621233247791 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_521
  oldLo := (9000000000000001 / 12500000000000000 : ℚ)
  oldHi := (72100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1669, piece_1670]
}

def cell_6252 : Cell := { cellDefaults with
  domain := ⟨(19375000000000001 / 100000000000000000 : ℚ), (19381250000000001 / 100000000000000000 : ℚ)⟩
  r := (90336668950929 / 100000000000000 : ℚ)
  w := (5066089979737 / 5000000000000 : ℚ)
  center := (19378125000000001 / 100000000000000000 : ℚ)
  supportValue := (901238071660281 / 1250000000000000 : ℚ)
  supportSlope := (5471970936063997 / 1000000000000000 : ℚ)
  oldCenter := (901238071660281 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_521
  oldLo := (72050000000000003 / 100000000000000000 : ℚ)
  oldHi := (72150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1670, piece_1671]
}

def cell_6253 : Cell := { cellDefaults with
  domain := ⟨(19381250000000001 / 100000000000000000 : ℚ), (19387500000000001 / 100000000000000000 : ℚ)⟩
  r := (90336668950929 / 100000000000000 : ℚ)
  w := (5066089979737 / 5000000000000 : ℚ)
  center := (19384375000000001 / 100000000000000000 : ℚ)
  supportValue := (1442664977252563 / 2000000000000000 : ℚ)
  supportSlope := (5473255257671283 / 1000000000000000 : ℚ)
  oldCenter := (1442664977252563 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_521
  oldLo := (72100000000000009 / 100000000000000000 : ℚ)
  oldHi := (72200000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1671, piece_1672]
}

def cell_6254 : Cell := { cellDefaults with
  domain := ⟨(19387500000000001 / 100000000000000000 : ℚ), (19393750000000001 / 100000000000000000 : ℚ)⟩
  r := (90336668950929 / 100000000000000 : ℚ)
  w := (5066089979737 / 5000000000000 : ℚ)
  center := (19390625000000001 / 100000000000000000 : ℚ)
  supportValue := (225523312561947 / 312500000000000 : ℚ)
  supportSlope := (10948646628175851 / 2000000000000000 : ℚ)
  oldCenter := (225523312561947 / 312500000000000 : ℚ)
  newCoefficients := coefficients_521
  oldHi := (72200000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1672]
}

def cell_6255 : Cell := { cellDefaults with
  domain := ⟨(19393750000000001 / 100000000000000000 : ℚ), (19400000000000001 / 100000000000000000 : ℚ)⟩
  r := (90336668950929 / 100000000000000 : ℚ)
  w := (5066089979737 / 5000000000000 : ℚ)
  center := (19396875000000001 / 100000000000000000 : ℚ)
  supportValue := (72201679199023 / 100000000000000 : ℚ)
  supportSlope := (10951203268191989 / 2000000000000000 : ℚ)
  oldCenter := (72201679199023 / 100000000000000 : ℚ)
  newCoefficients := coefficients_521
  oldPieces := [piece_1672, piece_1673]
}

def cell_6256 : Cell := { cellDefaults with
  domain := ⟨(19400000000000001 / 100000000000000000 : ℚ), (19406250000000001 / 100000000000000000 : ℚ)⟩
  center := (19403125000000001 / 100000000000000000 : ℚ)
  supportValue := (7218690794482813 / 10000000000000000 : ℚ)
  supportSlope := (5472217329785423 / 1000000000000000 : ℚ)
  oldCenter := (7218690794482813 / 10000000000000000 : ℚ)
  oldPieces := [piece_1672, piece_1673]
}

def cell_6257 : Cell := { cellDefaults with
  domain := ⟨(19406250000000001 / 100000000000000000 : ℚ), (19412500000000001 / 100000000000000000 : ℚ)⟩
  center := (19409375000000001 / 100000000000000000 : ℚ)
  supportValue := (361105563069177 / 500000000000000 : ℚ)
  supportSlope := (2736668084834193 / 500000000000000 : ℚ)
  oldCenter := (361105563069177 / 500000000000000 : ℚ)
  oldLo := (72200000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1673]
}

def cell_6258 : Cell := { cellDefaults with
  domain := ⟨(19412500000000001 / 100000000000000000 : ℚ), (19418750000000001 / 100000000000000000 : ℚ)⟩
  center := (19415625000000001 / 100000000000000000 : ℚ)
  supportValue := (1806383132559029 / 2500000000000000 : ℚ)
  supportSlope := (1368640736120419 / 250000000000000 : ℚ)
  oldCenter := (1806383132559029 / 2500000000000000 : ℚ)
  oldLo := (72200000000000009 / 100000000000000000 : ℚ)
  oldHi := (72300000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1673, piece_1674]
}

def cell_6259 : Cell := { cellDefaults with
  domain := ⟨(19418750000000001 / 100000000000000000 : ℚ), (19425000000000001 / 100000000000000000 : ℚ)⟩
  center := (19421875000000001 / 100000000000000000 : ℚ)
  supportValue := (3614477254776341 / 5000000000000000 : ℚ)
  supportSlope := (5475845244204081 / 1000000000000000 : ℚ)
  oldCenter := (3614477254776341 / 5000000000000000 : ℚ)
  oldLo := (72250000000000003 / 100000000000000000 : ℚ)
  oldHi := (361731843575419 / 500000000000000 : ℚ)
  oldPieces := [piece_1674, piece_1675]
}

def cell_6260 : Cell := { cellDefaults with
  domain := ⟨(19425000000000001 / 100000000000000000 : ℚ), (19431250000000001 / 100000000000000000 : ℚ)⟩
  center := (19428125000000001 / 100000000000000000 : ℚ)
  supportValue := (723237724362453 / 1000000000000000 : ℚ)
  supportSlope := (2738500111218123 / 500000000000000 : ℚ)
  oldCenter := (723237724362453 / 1000000000000000 : ℚ)
  oldLo := (72300000000000009 / 100000000000000000 : ℚ)
  oldHi := (361731843575419 / 500000000000000 : ℚ)
  oldPieces := [piece_1675]
}

def cell_6261 : Cell := { cellDefaults with
  domain := ⟨(19431250000000001 / 100000000000000000 : ℚ), (19437500000000001 / 100000000000000000 : ℚ)⟩
  center := (19434375000000001 / 100000000000000000 : ℚ)
  supportValue := (1808950194746489 / 2500000000000000 : ℚ)
  supportSlope := (1369547318163189 / 250000000000000 : ℚ)
  oldCenter := (1808950194746489 / 2500000000000000 : ℚ)
  oldLo := (72300000000000009 / 100000000000000000 : ℚ)
  oldHi := (36199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1675, piece_1676, piece_1677]
}

def cell_6262 : Cell := { cellDefaults with
  domain := ⟨(19437500000000001 / 100000000000000000 : ℚ), (19443750000000001 / 100000000000000000 : ℚ)⟩
  center := (19440625000000001 / 100000000000000000 : ℚ)
  supportValue := (361961252394287 / 500000000000000 : ℚ)
  supportSlope := (5479470307172107 / 1000000000000000 : ℚ)
  oldCenter := (361961252394287 / 500000000000000 : ℚ)
  oldLo := (72350000000000003 / 100000000000000000 : ℚ)
  oldHi := (72450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1677, piece_1678]
}

def cell_6263 : Cell := { cellDefaults with
  domain := ⟨(19443750000000001 / 100000000000000000 : ℚ), (19450000000000001 / 100000000000000000 : ℚ)⟩
  center := (19446875000000001 / 100000000000000000 : ℚ)
  supportValue := (7242650047359657 / 10000000000000000 : ℚ)
  supportSlope := (5480661995163061 / 1000000000000000 : ℚ)
  oldCenter := (7242650047359657 / 10000000000000000 : ℚ)
  oldLo := (36199999999999999 / 50000000000000000 : ℚ)
  oldHi := (72450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1678]
}

def cell_6264 : Cell := { cellDefaults with
  domain := ⟨(19450000000000001 / 100000000000000000 : ℚ), (19456250000000001 / 100000000000000000 : ℚ)⟩
  r := (22541481997313 / 25000000000000 : ℚ)
  w := (2534201256163 / 2500000000000 : ℚ)
  center := (19453125000000001 / 100000000000000000 : ℚ)
  supportValue := (3620585854524663 / 5000000000000000 : ℚ)
  supportSlope := (10954295426842009 / 2000000000000000 : ℚ)
  oldCenter := (3620585854524663 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_523
  oldLo := (72350000000000003 / 100000000000000000 : ℚ)
  oldHi := (72450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1677, piece_1678]
}

def cell_6265 : Cell := { cellDefaults with
  domain := ⟨(19456250000000001 / 100000000000000000 : ℚ), (19462500000000001 / 100000000000000000 : ℚ)⟩
  r := (22541481997313 / 25000000000000 : ℚ)
  w := (2534201256163 / 2500000000000 : ℚ)
  center := (19459375000000001 / 100000000000000000 : ℚ)
  supportValue := (1448919071807089 / 2000000000000000 : ℚ)
  supportSlope := (1369607050298427 / 250000000000000 : ℚ)
  oldCenter := (1448919071807089 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_523
  oldLo := (36199999999999999 / 50000000000000000 : ℚ)
  oldHi := (36249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1678, piece_1679]
}

def cell_6266 : Cell := { cellDefaults with
  domain := ⟨(19462500000000001 / 100000000000000000 : ℚ), (19468750000000001 / 100000000000000000 : ℚ)⟩
  r := (22541481997313 / 25000000000000 : ℚ)
  w := (2534201256163 / 2500000000000 : ℚ)
  center := (19465625000000001 / 100000000000000000 : ℚ)
  supportValue := (7248019707088059 / 10000000000000000 : ℚ)
  supportSlope := (2739835489080633 / 500000000000000 : ℚ)
  oldCenter := (7248019707088059 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_523
  oldLo := (72450000000000003 / 100000000000000000 : ℚ)
  oldHi := (36249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1679]
}

def cell_6267 : Cell := { cellDefaults with
  domain := ⟨(19468750000000001 / 100000000000000000 : ℚ), (19475000000000001 / 100000000000000000 : ℚ)⟩
  r := (22541481997313 / 25000000000000 : ℚ)
  w := (2534201256163 / 2500000000000 : ℚ)
  center := (19471875000000001 / 100000000000000000 : ℚ)
  supportValue := (7251444854977571 / 10000000000000000 : ℚ)
  supportSlope := (5480768380659029 / 1000000000000000 : ℚ)
  oldCenter := (7251444854977571 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_523
  oldLo := (72450000000000003 / 100000000000000000 : ℚ)
  oldHi := (72550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1679, piece_1680]
}

def cell_6268 : Cell := { cellDefaults with
  domain := ⟨(19475000000000001 / 100000000000000000 : ℚ), (19481250000000001 / 100000000000000000 : ℚ)⟩
  r := (22541481997313 / 25000000000000 : ℚ)
  w := (2534201256163 / 2500000000000 : ℚ)
  center := (19478125000000001 / 100000000000000000 : ℚ)
  supportValue := (7254870791174327 / 10000000000000000 : ℚ)
  supportSlope := (5482047356377251 / 1000000000000000 : ℚ)
  oldCenter := (7254870791174327 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_523
  oldLo := (36249999999999999 / 50000000000000000 : ℚ)
  oldHi := (36299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1680, piece_1681]
}

def cell_6269 : Cell := { cellDefaults with
  domain := ⟨(19481250000000001 / 100000000000000000 : ℚ), (19487500000000001 / 100000000000000000 : ℚ)⟩
  r := (22541481997313 / 25000000000000 : ℚ)
  w := (2534201256163 / 2500000000000 : ℚ)
  center := (19484375000000001 / 100000000000000000 : ℚ)
  supportValue := (7258297400931103 / 10000000000000000 : ℚ)
  supportSlope := (548332552303421 / 100000000000000 : ℚ)
  oldCenter := (7258297400931103 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_523
  oldLo := (72550000000000003 / 100000000000000000 : ℚ)
  oldHi := (72650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1681, piece_1682]
}

def cell_6270 : Cell := { cellDefaults with
  domain := ⟨(19487500000000001 / 100000000000000000 : ℚ), (19493750000000001 / 100000000000000000 : ℚ)⟩
  r := (22541481997313 / 25000000000000 : ℚ)
  w := (2534201256163 / 2500000000000 : ℚ)
  center := (19490625000000001 / 100000000000000000 : ℚ)
  supportValue := (7261724809568343 / 10000000000000000 : ℚ)
  supportSlope := (5484386985864731 / 1000000000000000 : ℚ)
  oldCenter := (7261724809568343 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_523
  oldLo := (36299999999999999 / 50000000000000000 : ℚ)
  oldHi := (72650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1682]
}

def cell_6271 : Cell := { cellDefaults with
  domain := ⟨(19493750000000001 / 100000000000000000 : ℚ), (19500000000000001 / 100000000000000000 : ℚ)⟩
  r := (22541481997313 / 25000000000000 : ℚ)
  w := (2534201256163 / 2500000000000 : ℚ)
  center := (19496875000000001 / 100000000000000000 : ℚ)
  supportValue := (7265153016580851 / 10000000000000000 : ℚ)
  supportSlope := (5485662591727447 / 1000000000000000 : ℚ)
  oldCenter := (7265153016580851 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_523
  oldLo := (36299999999999999 / 50000000000000000 : ℚ)
  oldHi := (36349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1682, piece_1683]
}

def cell_6272 : Cell := { cellDefaults with
  domain := ⟨(19500000000000001 / 100000000000000000 : ℚ), (19506250000000001 / 100000000000000000 : ℚ)⟩
  r := (90080877053569 / 100000000000000 : ℚ)
  w := (506956851137 / 500000000000 : ℚ)
  center := (19503125000000001 / 100000000000000000 : ℚ)
  supportValue := (7263672964368927 / 10000000000000000 : ℚ)
  supportSlope := (109645594084391 / 20000000000000 : ℚ)
  oldCenter := (7263672964368927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_524
  oldLo := (36299999999999999 / 50000000000000000 : ℚ)
  oldHi := (36349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1682, piece_1683]
}

def cell_6273 : Cell := { cellDefaults with
  domain := ⟨(19506250000000001 / 100000000000000000 : ℚ), (19512500000000001 / 100000000000000000 : ℚ)⟩
  r := (90080877053569 / 100000000000000 : ℚ)
  w := (506956851137 / 500000000000 : ℚ)
  center := (19509375000000001 / 100000000000000000 : ℚ)
  supportValue := (1816774929811239 / 2500000000000000 : ℚ)
  supportSlope := (10966785560732717 / 2000000000000000 : ℚ)
  oldCenter := (1816774929811239 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_524
  oldLo := (72650000000000003 / 100000000000000000 : ℚ)
  oldHi := (36349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1683]
}

def cell_6274 : Cell := { cellDefaults with
  domain := ⟨(19512500000000001 / 100000000000000000 : ℚ), (19518750000000001 / 100000000000000000 : ℚ)⟩
  r := (90080877053569 / 100000000000000 : ℚ)
  w := (506956851137 / 500000000000 : ℚ)
  center := (19515625000000001 / 100000000000000000 : ℚ)
  supportValue := (7270527272243449 / 10000000000000000 : ℚ)
  supportSlope := (685576996518833 / 125000000000000 : ℚ)
  oldCenter := (7270527272243449 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_524
  oldLo := (72650000000000003 / 100000000000000000 : ℚ)
  oldHi := (18187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1683, piece_1684]
}

def cell_6275 : Cell := { cellDefaults with
  domain := ⟨(19518750000000001 / 100000000000000000 : ℚ), (19525000000000001 / 100000000000000000 : ℚ)⟩
  r := (90080877053569 / 100000000000000 : ℚ)
  w := (506956851137 / 500000000000 : ℚ)
  center := (19521875000000001 / 100000000000000000 : ℚ)
  supportValue := (909244441602107 / 1250000000000000 : ℚ)
  supportSlope := (137147305061891 / 25000000000000 : ℚ)
  oldCenter := (909244441602107 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_524
  oldLo := (36349999999999999 / 50000000000000000 : ℚ)
  oldHi := (36399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1684, piece_1685]
}

def cell_6276 : Cell := { cellDefaults with
  domain := ⟨(19525000000000001 / 100000000000000000 : ℚ), (19531250000000001 / 100000000000000000 : ℚ)⟩
  r := (90080877053569 / 100000000000000 : ℚ)
  w := (506956851137 / 500000000000 : ℚ)
  center := (19528125000000001 / 100000000000000000 : ℚ)
  supportValue := (7277384545236877 / 10000000000000000 : ℚ)
  supportSlope := (685880444366127 / 125000000000000 : ℚ)
  oldCenter := (7277384545236877 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_524
  oldLo := (18187500000000001 / 25000000000000000 : ℚ)
  oldHi := (36399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1685]
}

def cell_6277 : Cell := { cellDefaults with
  domain := ⟨(19531250000000001 / 100000000000000000 : ℚ), (19537500000000001 / 100000000000000000 : ℚ)⟩
  r := (90080877053569 / 100000000000000 : ℚ)
  w := (506956851137 / 500000000000 : ℚ)
  center := (19534375000000001 / 100000000000000000 : ℚ)
  supportValue := (3640407177419347 / 5000000000000000 : ℚ)
  supportSlope := (2744113054048647 / 500000000000000 : ℚ)
  oldCenter := (3640407177419347 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_524
  oldLo := (18187500000000001 / 25000000000000000 : ℚ)
  oldHi := (18212500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1685, piece_1686]
}

def cell_6278 : Cell := { cellDefaults with
  domain := ⟨(19537500000000001 / 100000000000000000 : ℚ), (19543750000000001 / 100000000000000000 : ℚ)⟩
  r := (90080877053569 / 100000000000000 : ℚ)
  w := (506956851137 / 500000000000 : ℚ)
  center := (19540625000000001 / 100000000000000000 : ℚ)
  supportValue := (3642122448038097 / 5000000000000000 : ℚ)
  supportSlope := (5489500488684129 / 1000000000000000 : ℚ)
  oldCenter := (3642122448038097 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_524
  oldLo := (36399999999999999 / 50000000000000000 : ℚ)
  oldHi := (1822486033519553 / 2500000000000000 : ℚ)
  oldPieces := [piece_1686, piece_1687]
}

def cell_6279 : Cell := { cellDefaults with
  domain := ⟨(19543750000000001 / 100000000000000000 : ℚ), (19550000000000001 / 100000000000000000 : ℚ)⟩
  r := (90080877053569 / 100000000000000 : ℚ)
  w := (506956851137 / 500000000000 : ℚ)
  center := (19546875000000001 / 100000000000000000 : ℚ)
  supportValue := (7287676163402803 / 10000000000000000 : ℚ)
  supportSlope := (5490690837227419 / 1000000000000000 : ℚ)
  oldCenter := (7287676163402803 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_524
  oldLo := (18212500000000001 / 25000000000000000 : ℚ)
  oldHi := (1822486033519553 / 2500000000000000 : ℚ)
  oldPieces := [piece_1687]
}

def cell_6280 : Cell := { cellDefaults with
  domain := ⟨(19550000000000001 / 100000000000000000 : ℚ), (31290000000000001 / 160000000000000000 : ℚ)⟩
  r := (89996041844687 / 100000000000000 : ℚ)
  w := (10141482279637 / 10000000000000 : ℚ)
  center := (312850000000000013 / 1600000000000000000 : ℚ)
  supportValue := (7286195086650291 / 10000000000000000 : ℚ)
  supportSlope := (548717676837673 / 100000000000000 : ℚ)
  oldCenter := (7286195086650291 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_525
  oldLo := (36399999999999999 / 50000000000000000 : ℚ)
  oldHi := (1822486033519553 / 2500000000000000 : ℚ)
  oldPieces := [piece_1686, piece_1687]
}

def cell_6281 : Cell := { cellDefaults with
  domain := ⟨(31290000000000001 / 160000000000000000 : ℚ), (78250000000000001 / 400000000000000000 : ℚ)⟩
  r := (89996041844687 / 100000000000000 : ℚ)
  w := (10141482279637 / 10000000000000 : ℚ)
  center := (312950000000000007 / 1600000000000000000 : ℚ)
  supportValue := (7289625004719567 / 10000000000000000 : ℚ)
  supportSlope := (343028190005999 / 62500000000000 : ℚ)
  oldCenter := (7289625004719567 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_525
  oldLo := (18212500000000001 / 25000000000000000 : ℚ)
  oldHi := (18237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1687, piece_1688, piece_1689]
}

def cell_6282 : Cell := { cellDefaults with
  domain := ⟨(78250000000000001 / 400000000000000000 : ℚ), (156549999999999999 / 800000000000000000 : ℚ)⟩
  r := (89996041844687 / 100000000000000 : ℚ)
  w := (10141482279637 / 10000000000000 : ℚ)
  center := (313050000000000001 / 1600000000000000000 : ℚ)
  supportValue := (3646527808097143 / 5000000000000000 : ℚ)
  supportSlope := (34310584556909 / 6250000000000 : ℚ)
  oldCenter := (3646527808097143 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_525
  oldLo := (36449999999999999 / 50000000000000000 : ℚ)
  oldHi := (18237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1689]
}

def cell_6283 : Cell := { cellDefaults with
  domain := ⟨(156549999999999999 / 800000000000000000 : ℚ), (39149999999999999 / 200000000000000000 : ℚ)⟩
  r := (89996041844687 / 100000000000000 : ℚ)
  w := (10141482279637 / 10000000000000 : ℚ)
  center := (62629999999999999 / 320000000000000000 : ℚ)
  supportValue := (7296487023524201 / 10000000000000000 : ℚ)
  supportSlope := (5490781760541071 / 1000000000000000 : ℚ)
  oldCenter := (7296487023524201 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_525
  oldLo := (36449999999999999 / 50000000000000000 : ℚ)
  oldHi := (36499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1689, piece_1690]
}

def cell_6284 : Cell := { cellDefaults with
  domain := ⟨(39149999999999999 / 200000000000000000 : ℚ), (156649999999999993 / 800000000000000000 : ℚ)⟩
  r := (89996041844687 / 100000000000000 : ℚ)
  w := (10141482279637 / 10000000000000 : ℚ)
  center := (313249999999999989 / 1600000000000000000 : ℚ)
  supportValue := (7299919219360209 / 10000000000000000 : ℚ)
  supportSlope := (5492054013340183 / 1000000000000000 : ℚ)
  oldCenter := (7299919219360209 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_525
  oldLo := (18237500000000001 / 25000000000000000 : ℚ)
  oldHi := (18262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1690, piece_1691]
}

def cell_6285 : Cell := { cellDefaults with
  domain := ⟨(156649999999999993 / 800000000000000000 : ℚ), (15669999999999999 / 80000000000000000 : ℚ)⟩
  r := (89996041844687 / 100000000000000 : ℚ)
  w := (10141482279637 / 10000000000000 : ℚ)
  center := (313349999999999983 / 1600000000000000000 : ℚ)
  supportValue := (3651676041025649 / 5000000000000000 : ℚ)
  supportSlope := (1098665078286553 / 200000000000000 : ℚ)
  oldCenter := (3651676041025649 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_525
  oldLo := (36499999999999999 / 50000000000000000 : ℚ)
  oldHi := (36549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1691, piece_1692]
}

def cell_6286 : Cell := { cellDefaults with
  domain := ⟨(15669999999999999 / 80000000000000000 : ℚ), (156749999999999987 / 800000000000000000 : ℚ)⟩
  r := (89996041844687 / 100000000000000 : ℚ)
  w := (10141482279637 / 10000000000000 : ℚ)
  center := (313449999999999977 / 1600000000000000000 : ℚ)
  supportValue := (7306785739549149 / 10000000000000000 : ℚ)
  supportSlope := (5494391365667869 / 1000000000000000 : ℚ)
  oldCenter := (7306785739549149 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_525
  oldLo := (18262500000000001 / 25000000000000000 : ℚ)
  oldHi := (36549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1692]
}

def cell_6287 : Cell := { cellDefaults with
  domain := ⟨(156749999999999987 / 800000000000000000 : ℚ), (9799999999999999 / 50000000000000000 : ℚ)⟩
  r := (89996041844687 / 100000000000000 : ℚ)
  w := (10141482279637 / 10000000000000 : ℚ)
  center := (313549999999999971 / 1600000000000000000 : ℚ)
  supportValue := (3655110095653699 / 5000000000000000 : ℚ)
  supportSlope := (5495652493328837 / 1000000000000000 : ℚ)
  oldCenter := (3655110095653699 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_525
  oldLo := (18262500000000001 / 25000000000000000 : ℚ)
  oldHi := (18287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1692, piece_1693]
}

def cell_6288 : Cell := { cellDefaults with
  domain := ⟨(9799999999999999 / 50000000000000000 : ℚ), (9803124999999999 / 50000000000000000 : ℚ)⟩
  r := (89911418361897 / 100000000000000 : ℚ)
  w := (5071919965879 / 5000000000000 : ℚ)
  center := (9801562499999999 / 50000000000000000 : ℚ)
  supportValue := (3654368712062297 / 5000000000000000 : ℚ)
  supportSlope := (686533958573099 / 125000000000000 : ℚ)
  oldCenter := (3654368712062297 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_526
  oldLo := (18262500000000001 / 25000000000000000 : ℚ)
  oldHi := (18287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1692, piece_1693]
}

def cell_6289 : Cell := { cellDefaults with
  domain := ⟨(9803124999999999 / 50000000000000000 : ℚ), (9806249999999999 / 50000000000000000 : ℚ)⟩
  r := (89911418361897 / 100000000000000 : ℚ)
  w := (5071919965879 / 5000000000000 : ℚ)
  center := (9804687499999999 / 50000000000000000 : ℚ)
  supportValue := (1462434084596061 / 2000000000000000 : ℚ)
  supportSlope := (5493390214923011 / 1000000000000000 : ℚ)
  oldCenter := (1462434084596061 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_526
  oldLo := (36549999999999999 / 50000000000000000 : ℚ)
  oldHi := (18287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1693]
}

def cell_6290 : Cell := { cellDefaults with
  domain := ⟨(9806249999999999 / 50000000000000000 : ℚ), (9809374999999999 / 50000000000000000 : ℚ)⟩
  r := (89911418361897 / 100000000000000 : ℚ)
  w := (5071919965879 / 5000000000000 : ℚ)
  center := (9807812499999999 / 50000000000000000 : ℚ)
  supportValue := (365780210797007 / 500000000000000 : ℚ)
  supportSlope := (1098919662558373 / 200000000000000 : ℚ)
  oldCenter := (365780210797007 / 500000000000000 : ℚ)
  newCoefficients := coefficients_526
  oldLo := (36549999999999999 / 50000000000000000 : ℚ)
  oldHi := (36599999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1693, piece_1694]
}

def cell_6291 : Cell := { cellDefaults with
  domain := ⟨(9809374999999999 / 50000000000000000 : ℚ), (9812499999999999 / 50000000000000000 : ℚ)⟩
  r := (89911418361897 / 100000000000000 : ℚ)
  w := (5071919965879 / 5000000000000 : ℚ)
  center := (9810937499999999 / 50000000000000000 : ℚ)
  supportValue := (7319038720537967 / 10000000000000000 : ℚ)
  supportSlope := (10991736122814899 / 2000000000000000 : ℚ)
  oldCenter := (7319038720537967 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_526
  oldLo := (18287500000000001 / 25000000000000000 : ℚ)
  oldHi := (18312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1694, piece_1695]
}

def cell_6292 : Cell := { cellDefaults with
  domain := ⟨(9812499999999999 / 50000000000000000 : ℚ), (9815624999999999 / 50000000000000000 : ℚ)⟩
  r := (89911418361897 / 100000000000000 : ℚ)
  w := (5071919965879 / 5000000000000 : ℚ)
  center := (9814062499999999 / 50000000000000000 : ℚ)
  supportValue := (7322473966863527 / 10000000000000000 : ℚ)
  supportSlope := (1099405386822383 / 200000000000000 : ℚ)
  oldCenter := (7322473966863527 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_526
  oldLo := (36599999999999999 / 50000000000000000 : ℚ)
  oldHi := (18312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1695]
}

def cell_6293 : Cell := { cellDefaults with
  domain := ⟨(9815624999999999 / 50000000000000000 : ℚ), (9818749999999999 / 50000000000000000 : ℚ)⟩
  r := (89911418361897 / 100000000000000 : ℚ)
  w := (5071919965879 / 5000000000000 : ℚ)
  center := (9817187499999999 / 50000000000000000 : ℚ)
  supportValue := (7325910006266563 / 10000000000000000 : ℚ)
  supportSlope := (219927687247079 / 40000000000000 : ℚ)
  oldCenter := (7325910006266563 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_526
  oldLo := (36599999999999999 / 50000000000000000 : ℚ)
  oldHi := (36649999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1695, piece_1696]
}

def cell_6294 : Cell := { cellDefaults with
  domain := ⟨(9818749999999999 / 50000000000000000 : ℚ), (9821874999999999 / 50000000000000000 : ℚ)⟩
  r := (89911418361897 / 100000000000000 : ℚ)
  w := (5071919965879 / 5000000000000 : ℚ)
  center := (9820312499999999 / 50000000000000000 : ℚ)
  supportValue := (7329346782738447 / 10000000000000000 : ℚ)
  supportSlope := (5499460240196541 / 1000000000000000 : ℚ)
  oldCenter := (7329346782738447 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_526
  oldLo := (18312500000000001 / 25000000000000000 : ℚ)
  oldHi := (18337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1696, piece_1697]
}

def cell_6295 : Cell := { cellDefaults with
  domain := ⟨(9821874999999999 / 50000000000000000 : ℚ), (9824999999999999 / 50000000000000000 : ℚ)⟩
  r := (89911418361897 / 100000000000000 : ℚ)
  w := (5071919965879 / 5000000000000 : ℚ)
  center := (9823437499999999 / 50000000000000000 : ℚ)
  supportValue := (3666392136955597 / 5000000000000000 : ℚ)
  supportSlope := (5500660402816493 / 1000000000000000 : ℚ)
  oldCenter := (3666392136955597 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_526
  oldLo := (36649999999999999 / 50000000000000000 : ℚ)
  oldHi := (18337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1697]
}

def cell_6296 : Cell := { cellDefaults with
  domain := ⟨(9824999999999999 / 50000000000000000 : ℚ), (9828124999999999 / 50000000000000000 : ℚ)⟩
  r := (22456751928811 / 25000000000000 : ℚ)
  w := (2536552778473 / 2500000000000 : ℚ)
  center := (9826562499999999 / 50000000000000000 : ℚ)
  supportValue := (916412575483187 / 1250000000000000 : ℚ)
  supportSlope := (5497134850628527 / 1000000000000000 : ℚ)
  oldCenter := (916412575483187 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_527
  oldLo := (18312500000000001 / 25000000000000000 : ℚ)
  oldHi := (18337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1696, piece_1697]
}

def cell_6297 : Cell := { cellDefaults with
  domain := ⟨(9828124999999999 / 50000000000000000 : ℚ), (9831249999999999 / 50000000000000000 : ℚ)⟩
  r := (22456751928811 / 25000000000000 : ℚ)
  w := (2536552778473 / 2500000000000 : ℚ)
  center := (9829687499999999 / 50000000000000000 : ℚ)
  supportValue := (3667368376358767 / 5000000000000000 : ℚ)
  supportSlope := (687300339141883 / 125000000000000 : ℚ)
  oldCenter := (3667368376358767 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_527
  oldLo := (36649999999999999 / 50000000000000000 : ℚ)
  oldHi := (73399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1697, piece_1698]
}

def cell_6298 : Cell := { cellDefaults with
  domain := ⟨(9831249999999999 / 50000000000000000 : ℚ), (9834374999999999 / 50000000000000000 : ℚ)⟩
  r := (22456751928811 / 25000000000000 : ℚ)
  w := (2536552778473 / 2500000000000 : ℚ)
  center := (9832812499999999 / 50000000000000000 : ℚ)
  supportValue := (1834543395686823 / 2500000000000000 : ℚ)
  supportSlope := (5499655166905981 / 1000000000000000 : ℚ)
  oldCenter := (1834543395686823 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_527
  oldLo := (18337500000000001 / 25000000000000000 : ℚ)
  oldHi := (73399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1698]
}

def cell_6299 : Cell := { cellDefaults with
  domain := ⟨(9834374999999999 / 50000000000000000 : ℚ), (9837499999999999 / 50000000000000000 : ℚ)⟩
  r := (22456751928811 / 25000000000000 : ℚ)
  w := (2536552778473 / 2500000000000 : ℚ)
  center := (9835937499999999 / 50000000000000000 : ℚ)
  supportValue := (7341611204591 / 10000000000000 : ℚ)
  supportSlope := (5500723363661919 / 1000000000000000 : ℚ)
  oldCenter := (7341611204591 / 10000000000000 : ℚ)
  newCoefficients := coefficients_527
  oldLo := (18337500000000001 / 25000000000000000 : ℚ)
  oldHi := (18362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1698, piece_1699]
}

theorem check_6250 : SourceCertificateFamily.RightNormalized.check cell_6250 = true := by
  decide +kernel

theorem check_6251 : SourceCertificateFamily.RightNormalized.check cell_6251 = true := by
  decide +kernel

theorem check_6252 : SourceCertificateFamily.RightNormalized.check cell_6252 = true := by
  decide +kernel

theorem check_6253 : SourceCertificateFamily.RightNormalized.check cell_6253 = true := by
  decide +kernel

theorem check_6254 : SourceCertificateFamily.RightNormalized.check cell_6254 = true := by
  decide +kernel

theorem check_6255 : SourceCertificateFamily.RightNormalized.check cell_6255 = true := by
  decide +kernel

theorem check_6256 : SourceCertificateFamily.RightNormalized.check cell_6256 = true := by
  decide +kernel

theorem check_6257 : SourceCertificateFamily.RightNormalized.check cell_6257 = true := by
  decide +kernel

theorem check_6258 : SourceCertificateFamily.RightNormalized.check cell_6258 = true := by
  decide +kernel

theorem check_6259 : SourceCertificateFamily.RightNormalized.check cell_6259 = true := by
  decide +kernel

theorem check_6260 : SourceCertificateFamily.RightNormalized.check cell_6260 = true := by
  decide +kernel

theorem check_6261 : SourceCertificateFamily.RightNormalized.check cell_6261 = true := by
  decide +kernel

theorem check_6262 : SourceCertificateFamily.RightNormalized.check cell_6262 = true := by
  decide +kernel

theorem check_6263 : SourceCertificateFamily.RightNormalized.check cell_6263 = true := by
  decide +kernel

theorem check_6264 : SourceCertificateFamily.RightNormalized.check cell_6264 = true := by
  decide +kernel

theorem check_6265 : SourceCertificateFamily.RightNormalized.check cell_6265 = true := by
  decide +kernel

theorem check_6266 : SourceCertificateFamily.RightNormalized.check cell_6266 = true := by
  decide +kernel

theorem check_6267 : SourceCertificateFamily.RightNormalized.check cell_6267 = true := by
  decide +kernel

theorem check_6268 : SourceCertificateFamily.RightNormalized.check cell_6268 = true := by
  decide +kernel

theorem check_6269 : SourceCertificateFamily.RightNormalized.check cell_6269 = true := by
  decide +kernel

theorem check_6270 : SourceCertificateFamily.RightNormalized.check cell_6270 = true := by
  decide +kernel

theorem check_6271 : SourceCertificateFamily.RightNormalized.check cell_6271 = true := by
  decide +kernel

theorem check_6272 : SourceCertificateFamily.RightNormalized.check cell_6272 = true := by
  decide +kernel

theorem check_6273 : SourceCertificateFamily.RightNormalized.check cell_6273 = true := by
  decide +kernel

theorem check_6274 : SourceCertificateFamily.RightNormalized.check cell_6274 = true := by
  decide +kernel

theorem check_6275 : SourceCertificateFamily.RightNormalized.check cell_6275 = true := by
  decide +kernel

theorem check_6276 : SourceCertificateFamily.RightNormalized.check cell_6276 = true := by
  decide +kernel

theorem check_6277 : SourceCertificateFamily.RightNormalized.check cell_6277 = true := by
  decide +kernel

theorem check_6278 : SourceCertificateFamily.RightNormalized.check cell_6278 = true := by
  decide +kernel

theorem check_6279 : SourceCertificateFamily.RightNormalized.check cell_6279 = true := by
  decide +kernel

theorem check_6280 : SourceCertificateFamily.RightNormalized.check cell_6280 = true := by
  decide +kernel

theorem check_6281 : SourceCertificateFamily.RightNormalized.check cell_6281 = true := by
  decide +kernel

theorem check_6282 : SourceCertificateFamily.RightNormalized.check cell_6282 = true := by
  decide +kernel

theorem check_6283 : SourceCertificateFamily.RightNormalized.check cell_6283 = true := by
  decide +kernel

theorem check_6284 : SourceCertificateFamily.RightNormalized.check cell_6284 = true := by
  decide +kernel

theorem check_6285 : SourceCertificateFamily.RightNormalized.check cell_6285 = true := by
  decide +kernel

theorem check_6286 : SourceCertificateFamily.RightNormalized.check cell_6286 = true := by
  decide +kernel

theorem check_6287 : SourceCertificateFamily.RightNormalized.check cell_6287 = true := by
  decide +kernel

theorem check_6288 : SourceCertificateFamily.RightNormalized.check cell_6288 = true := by
  decide +kernel

theorem check_6289 : SourceCertificateFamily.RightNormalized.check cell_6289 = true := by
  decide +kernel

theorem check_6290 : SourceCertificateFamily.RightNormalized.check cell_6290 = true := by
  decide +kernel

theorem check_6291 : SourceCertificateFamily.RightNormalized.check cell_6291 = true := by
  decide +kernel

theorem check_6292 : SourceCertificateFamily.RightNormalized.check cell_6292 = true := by
  decide +kernel

theorem check_6293 : SourceCertificateFamily.RightNormalized.check cell_6293 = true := by
  decide +kernel

theorem check_6294 : SourceCertificateFamily.RightNormalized.check cell_6294 = true := by
  decide +kernel

theorem check_6295 : SourceCertificateFamily.RightNormalized.check cell_6295 = true := by
  decide +kernel

theorem check_6296 : SourceCertificateFamily.RightNormalized.check cell_6296 = true := by
  decide +kernel

theorem check_6297 : SourceCertificateFamily.RightNormalized.check cell_6297 = true := by
  decide +kernel

theorem check_6298 : SourceCertificateFamily.RightNormalized.check cell_6298 = true := by
  decide +kernel

theorem check_6299 : SourceCertificateFamily.RightNormalized.check cell_6299 = true := by
  decide +kernel

def cells : List Cell := [cell_6250, cell_6251, cell_6252, cell_6253, cell_6254, cell_6255, cell_6256, cell_6257, cell_6258, cell_6259, cell_6260, cell_6261, cell_6262, cell_6263, cell_6264, cell_6265, cell_6266, cell_6267, cell_6268, cell_6269, cell_6270, cell_6271, cell_6272, cell_6273, cell_6274, cell_6275, cell_6276, cell_6277, cell_6278, cell_6279, cell_6280, cell_6281, cell_6282, cell_6283, cell_6284, cell_6285, cell_6286, cell_6287, cell_6288, cell_6289, cell_6290, cell_6291, cell_6292, cell_6293, cell_6294, cell_6295, cell_6296, cell_6297, cell_6298, cell_6299]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6250, SourceCertificateFamily.of_right_checked check_6251, SourceCertificateFamily.of_right_checked check_6252, SourceCertificateFamily.of_right_checked check_6253, SourceCertificateFamily.of_right_checked check_6254, SourceCertificateFamily.of_right_checked check_6255, SourceCertificateFamily.of_right_checked check_6256, SourceCertificateFamily.of_right_checked check_6257, SourceCertificateFamily.of_right_checked check_6258, SourceCertificateFamily.of_right_checked check_6259, SourceCertificateFamily.of_right_checked check_6260, SourceCertificateFamily.of_right_checked check_6261, SourceCertificateFamily.of_right_checked check_6262, SourceCertificateFamily.of_right_checked check_6263, SourceCertificateFamily.of_right_checked check_6264, SourceCertificateFamily.of_right_checked check_6265, SourceCertificateFamily.of_right_checked check_6266, SourceCertificateFamily.of_right_checked check_6267, SourceCertificateFamily.of_right_checked check_6268, SourceCertificateFamily.of_right_checked check_6269, SourceCertificateFamily.of_right_checked check_6270, SourceCertificateFamily.of_right_checked check_6271, SourceCertificateFamily.of_right_checked check_6272, SourceCertificateFamily.of_right_checked check_6273, SourceCertificateFamily.of_right_checked check_6274, SourceCertificateFamily.of_right_checked check_6275, SourceCertificateFamily.of_right_checked check_6276, SourceCertificateFamily.of_right_checked check_6277, SourceCertificateFamily.of_right_checked check_6278, SourceCertificateFamily.of_right_checked check_6279, SourceCertificateFamily.of_right_checked check_6280, SourceCertificateFamily.of_right_checked check_6281, SourceCertificateFamily.of_right_checked check_6282, SourceCertificateFamily.of_right_checked check_6283, SourceCertificateFamily.of_right_checked check_6284, SourceCertificateFamily.of_right_checked check_6285, SourceCertificateFamily.of_right_checked check_6286, SourceCertificateFamily.of_right_checked check_6287, SourceCertificateFamily.of_right_checked check_6288, SourceCertificateFamily.of_right_checked check_6289, SourceCertificateFamily.of_right_checked check_6290, SourceCertificateFamily.of_right_checked check_6291, SourceCertificateFamily.of_right_checked check_6292, SourceCertificateFamily.of_right_checked check_6293, SourceCertificateFamily.of_right_checked check_6294, SourceCertificateFamily.of_right_checked check_6295, SourceCertificateFamily.of_right_checked check_6296, SourceCertificateFamily.of_right_checked check_6297, SourceCertificateFamily.of_right_checked check_6298, SourceCertificateFamily.of_right_checked check_6299, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0125

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0125
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0125
open AnalyticBounds.ExpressionCertificate

theorem linked_6250 : Linked cell_6250 pieces := by
  refine ⟨piece_521,piece_521_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6250,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1669_mem

theorem linked_6251 : Linked cell_6251 pieces := by
  refine ⟨piece_521,piece_521_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6251,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1669_mem
    · exact piece_1670_mem

theorem linked_6252 : Linked cell_6252 pieces := by
  refine ⟨piece_521,piece_521_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6252,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1670_mem
    · exact piece_1671_mem

theorem linked_6253 : Linked cell_6253 pieces := by
  refine ⟨piece_521,piece_521_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6253,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1671_mem
    · exact piece_1672_mem

theorem linked_6254 : Linked cell_6254 pieces := by
  refine ⟨piece_521,piece_521_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6254,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1672_mem

theorem linked_6255 : Linked cell_6255 pieces := by
  refine ⟨piece_521,piece_521_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6255,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1672_mem
    · exact piece_1673_mem

theorem linked_6256 : Linked cell_6256 pieces := by
  refine ⟨piece_522,piece_522_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6256,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1672_mem
    · exact piece_1673_mem

theorem linked_6257 : Linked cell_6257 pieces := by
  refine ⟨piece_522,piece_522_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6257,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1673_mem

theorem linked_6258 : Linked cell_6258 pieces := by
  refine ⟨piece_522,piece_522_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6258,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1673_mem
    · exact piece_1674_mem

theorem linked_6259 : Linked cell_6259 pieces := by
  refine ⟨piece_522,piece_522_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6259,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1674_mem
    · exact piece_1675_mem

theorem linked_6260 : Linked cell_6260 pieces := by
  refine ⟨piece_522,piece_522_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6260,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1675_mem

theorem linked_6261 : Linked cell_6261 pieces := by
  refine ⟨piece_522,piece_522_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6261,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1675_mem
    · exact piece_1676_mem
    · exact piece_1677_mem

theorem linked_6262 : Linked cell_6262 pieces := by
  refine ⟨piece_522,piece_522_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6262,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1677_mem
    · exact piece_1678_mem

theorem linked_6263 : Linked cell_6263 pieces := by
  refine ⟨piece_522,piece_522_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6263,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1678_mem

theorem linked_6264 : Linked cell_6264 pieces := by
  refine ⟨piece_523,piece_523_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6264,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1677_mem
    · exact piece_1678_mem

theorem linked_6265 : Linked cell_6265 pieces := by
  refine ⟨piece_523,piece_523_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6265,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1678_mem
    · exact piece_1679_mem

theorem linked_6266 : Linked cell_6266 pieces := by
  refine ⟨piece_523,piece_523_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6266,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1679_mem

theorem linked_6267 : Linked cell_6267 pieces := by
  refine ⟨piece_523,piece_523_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6267,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1679_mem
    · exact piece_1680_mem

theorem linked_6268 : Linked cell_6268 pieces := by
  refine ⟨piece_523,piece_523_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6268,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1680_mem
    · exact piece_1681_mem

theorem linked_6269 : Linked cell_6269 pieces := by
  refine ⟨piece_523,piece_523_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6269,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1681_mem
    · exact piece_1682_mem

theorem linked_6270 : Linked cell_6270 pieces := by
  refine ⟨piece_523,piece_523_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6270,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1682_mem

theorem linked_6271 : Linked cell_6271 pieces := by
  refine ⟨piece_523,piece_523_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6271,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1682_mem
    · exact piece_1683_mem

theorem linked_6272 : Linked cell_6272 pieces := by
  refine ⟨piece_524,piece_524_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6272,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1682_mem
    · exact piece_1683_mem

theorem linked_6273 : Linked cell_6273 pieces := by
  refine ⟨piece_524,piece_524_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6273,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1683_mem

theorem linked_6274 : Linked cell_6274 pieces := by
  refine ⟨piece_524,piece_524_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6274,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1683_mem
    · exact piece_1684_mem

theorem linked_6275 : Linked cell_6275 pieces := by
  refine ⟨piece_524,piece_524_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6275,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1684_mem
    · exact piece_1685_mem

theorem linked_6276 : Linked cell_6276 pieces := by
  refine ⟨piece_524,piece_524_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6276,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1685_mem

theorem linked_6277 : Linked cell_6277 pieces := by
  refine ⟨piece_524,piece_524_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6277,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1685_mem
    · exact piece_1686_mem

theorem linked_6278 : Linked cell_6278 pieces := by
  refine ⟨piece_524,piece_524_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6278,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1686_mem
    · exact piece_1687_mem

theorem linked_6279 : Linked cell_6279 pieces := by
  refine ⟨piece_524,piece_524_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6279,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1687_mem

theorem linked_6280 : Linked cell_6280 pieces := by
  refine ⟨piece_525,piece_525_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6280,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1686_mem
    · exact piece_1687_mem

theorem linked_6281 : Linked cell_6281 pieces := by
  refine ⟨piece_525,piece_525_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6281,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1687_mem
    · exact piece_1688_mem
    · exact piece_1689_mem

theorem linked_6282 : Linked cell_6282 pieces := by
  refine ⟨piece_525,piece_525_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6282,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1689_mem

theorem linked_6283 : Linked cell_6283 pieces := by
  refine ⟨piece_525,piece_525_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6283,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1689_mem
    · exact piece_1690_mem

theorem linked_6284 : Linked cell_6284 pieces := by
  refine ⟨piece_525,piece_525_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6284,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1690_mem
    · exact piece_1691_mem

theorem linked_6285 : Linked cell_6285 pieces := by
  refine ⟨piece_525,piece_525_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6285,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1691_mem
    · exact piece_1692_mem

theorem linked_6286 : Linked cell_6286 pieces := by
  refine ⟨piece_525,piece_525_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6286,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1692_mem

theorem linked_6287 : Linked cell_6287 pieces := by
  refine ⟨piece_525,piece_525_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6287,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1692_mem
    · exact piece_1693_mem

theorem linked_6288 : Linked cell_6288 pieces := by
  refine ⟨piece_526,piece_526_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6288,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1692_mem
    · exact piece_1693_mem

theorem linked_6289 : Linked cell_6289 pieces := by
  refine ⟨piece_526,piece_526_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6289,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1693_mem

theorem linked_6290 : Linked cell_6290 pieces := by
  refine ⟨piece_526,piece_526_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6290,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1693_mem
    · exact piece_1694_mem

theorem linked_6291 : Linked cell_6291 pieces := by
  refine ⟨piece_526,piece_526_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6291,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1694_mem
    · exact piece_1695_mem

theorem linked_6292 : Linked cell_6292 pieces := by
  refine ⟨piece_526,piece_526_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6292,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1695_mem

theorem linked_6293 : Linked cell_6293 pieces := by
  refine ⟨piece_526,piece_526_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6293,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1695_mem
    · exact piece_1696_mem

theorem linked_6294 : Linked cell_6294 pieces := by
  refine ⟨piece_526,piece_526_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6294,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1696_mem
    · exact piece_1697_mem

theorem linked_6295 : Linked cell_6295 pieces := by
  refine ⟨piece_526,piece_526_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6295,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1697_mem

theorem linked_6296 : Linked cell_6296 pieces := by
  refine ⟨piece_527,piece_527_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6296,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1696_mem
    · exact piece_1697_mem

theorem linked_6297 : Linked cell_6297 pieces := by
  refine ⟨piece_527,piece_527_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6297,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1697_mem
    · exact piece_1698_mem

theorem linked_6298 : Linked cell_6298 pieces := by
  refine ⟨piece_527,piece_527_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6298,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1698_mem

theorem linked_6299 : Linked cell_6299 pieces := by
  refine ⟨piece_527,piece_527_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6299,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1698_mem
    · exact piece_1699_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0125.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0125.cells,List.forall_mem_cons]
  exact ⟨linked_6250, linked_6251, linked_6252, linked_6253, linked_6254, linked_6255, linked_6256, linked_6257, linked_6258, linked_6259, linked_6260, linked_6261, linked_6262, linked_6263, linked_6264, linked_6265, linked_6266, linked_6267, linked_6268, linked_6269, linked_6270, linked_6271, linked_6272, linked_6273, linked_6274, linked_6275, linked_6276, linked_6277, linked_6278, linked_6279, linked_6280, linked_6281, linked_6282, linked_6283, linked_6284, linked_6285, linked_6286, linked_6287, linked_6288, linked_6289, linked_6290, linked_6291, linked_6292, linked_6293, linked_6294, linked_6295, linked_6296, linked_6297, linked_6298, linked_6299, by simp⟩

theorem covered : covers (19362500000000001 / 100000000000000000 : ℚ) (9837499999999999 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0125.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0125
