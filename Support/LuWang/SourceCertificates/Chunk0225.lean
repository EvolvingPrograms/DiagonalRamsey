import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0225
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(115966480446927377 / 200000000000000000 : ℚ), (231966480446927391 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (56791589744419 / 100000000000000 : ℚ)
  w := (2813994853449 / 2000000000000 : ℚ)
  center := (92779888268156429 / 160000000000000000 : ℚ)
  supportValue := (35797464758685443 / 100000000000000000 : ℚ)
  supportSlope := (-3658072675042781 / 2500000000000000 : ℚ)
  oldCenter := (35797464758685443 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1364
  oldLo := (8937500000000001 / 25000000000000000 : ℚ)
  oldHi := (8950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_878]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_11250 : Cell := { cellDefaults with
  r := (14205088760261 / 25000000000000 : ℚ)
  w := (14073114483721 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1363
  oldHi := (3584357541899441 / 10000000000000000 : ℚ)
  oldPieces := [piece_878, piece_879]
}

noncomputable def cell_11251 : Cell := { cellDefaults with
  domain := ⟨(231966480446927391 / 400000000000000000 : ℚ), (58000000000000007 / 100000000000000000 : ℚ)⟩
  r := (14205088760261 / 25000000000000 : ℚ)
  w := (14073114483721 / 10000000000000 : ℚ)
  center := (463966480446927419 / 800000000000000000 : ℚ)
  supportValue := (3578517883210751 / 10000000000000000 : ℚ)
  supportSlope := (-7312877311873147 / 5000000000000000 : ℚ)
  oldCenter := (3578517883210751 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1363
  oldPieces := [piece_878]
}

noncomputable def cell_11252 : Cell := { cellDefaults with
  domain := ⟨(58000000000000007 / 100000000000000000 : ℚ), (232050000000000023 / 400000000000000000 : ℚ)⟩
  center := (464050000000000051 / 800000000000000000 : ℚ)
  supportValue := (716159571383043 / 2000000000000000 : ℚ)
  supportSlope := (-1828018803675851 / 1250000000000000 : ℚ)
  oldCenter := (716159571383043 / 2000000000000000 : ℚ)
  oldHi := (3584357541899441 / 10000000000000000 : ℚ)
  oldPieces := [piece_878, piece_879]
}

noncomputable def cell_11253 : Cell := { cellDefaults with
  domain := ⟨(232050000000000023 / 400000000000000000 : ℚ), (116050000000000009 / 200000000000000000 : ℚ)⟩
  center := (464150000000000041 / 800000000000000000 : ℚ)
  supportValue := (4473709225994197 / 12500000000000000 : ℚ)
  supportSlope := (-1827788535043911 / 1250000000000000 : ℚ)
  oldCenter := (4473709225994197 / 12500000000000000 : ℚ)
  oldPieces := [piece_878]
}

noncomputable def cell_11254 : Cell := { cellDefaults with
  domain := ⟨(116050000000000009 / 200000000000000000 : ℚ), (232150000000000013 / 400000000000000000 : ℚ)⟩
  center := (464250000000000031 / 800000000000000000 : ℚ)
  supportValue := (8942851559103021 / 25000000000000000 : ℚ)
  supportSlope := (-91286332202021 / 62500000000000 : ℚ)
  oldCenter := (8942851559103021 / 25000000000000000 : ℚ)
  oldPieces := [piece_878]
}

noncomputable def cell_11255 : Cell := { cellDefaults with
  domain := ⟨(232150000000000013 / 400000000000000000 : ℚ), (29025000000000001 / 50000000000000000 : ℚ)⟩
  center := (464350000000000021 / 800000000000000000 : ℚ)
  supportValue := (3575318427171533 / 10000000000000000 : ℚ)
  supportSlope := (-14594518567402697 / 10000000000000000 : ℚ)
  oldCenter := (3575318427171533 / 10000000000000000 : ℚ)
  oldLo := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_877, piece_878]
}

noncomputable def cell_11256 : Cell := { cellDefaults with
  domain := ⟨(29025000000000001 / 50000000000000000 : ℚ), (232250000000000013 / 400000000000000000 : ℚ)⟩
  r := (56762858931251 / 100000000000000 : ℚ)
  w := (281336880617 / 200000000000 : ℚ)
  center := (464450000000000021 / 800000000000000000 : ℚ)
  supportValue := (35772865054979347 / 100000000000000000 : ℚ)
  supportSlope := (-912477152049027 / 625000000000000 : ℚ)
  oldCenter := (35772865054979347 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1365
  oldPieces := [piece_878]
}

noncomputable def cell_11257 : Cell := { cellDefaults with
  domain := ⟨(232250000000000013 / 400000000000000000 : ℚ), (116150000000000009 / 200000000000000000 : ℚ)⟩
  r := (56762858931251 / 100000000000000 : ℚ)
  w := (281336880617 / 200000000000 : ℚ)
  center := (464550000000000031 / 800000000000000000 : ℚ)
  supportValue := (1787732540343169 / 5000000000000000 : ℚ)
  supportSlope := (-14587087826355079 / 10000000000000000 : ℚ)
  oldCenter := (1787732540343169 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1365
  oldLo := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_877, piece_878]
}

noncomputable def cell_11258 : Cell := { cellDefaults with
  domain := ⟨(116150000000000009 / 200000000000000000 : ℚ), (232350000000000023 / 400000000000000000 : ℚ)⟩
  r := (56762858931251 / 100000000000000 : ℚ)
  w := (281336880617 / 200000000000 : ℚ)
  center := (464650000000000041 / 800000000000000000 : ℚ)
  supportValue := (3573639237530813 / 10000000000000000 : ℚ)
  supportSlope := (-1458245079788721 / 1000000000000000 : ℚ)
  oldCenter := (3573639237530813 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1365
  oldLo := (8925000000000001 / 25000000000000000 : ℚ)
  oldHi := (8937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_877]
}

noncomputable def cell_11259 : Cell := { cellDefaults with
  domain := ⟨(232350000000000023 / 400000000000000000 : ℚ), (58100000000000007 / 100000000000000000 : ℚ)⟩
  r := (56762858931251 / 100000000000000 : ℚ)
  w := (281336880617 / 200000000000 : ℚ)
  center := (464750000000000051 / 800000000000000000 : ℚ)
  supportValue := (4464771825144543 / 12500000000000000 : ℚ)
  supportSlope := (-2913198964719463 / 2000000000000000 : ℚ)
  oldCenter := (4464771825144543 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1365
  oldLo := (8925000000000001 / 25000000000000000 : ℚ)
  oldHi := (8937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_877]
}

noncomputable def cell_11260 : Cell := { cellDefaults with
  domain := ⟨(58100000000000007 / 100000000000000000 : ℚ), (232450000000000023 / 400000000000000000 : ℚ)⟩
  r := (28367079911113 / 50000000000000 : ℚ)
  w := (14063716848633 / 10000000000000 : ℚ)
  center := (464850000000000051 / 800000000000000000 : ℚ)
  supportValue := (17868928377807533 / 50000000000000000 : ℚ)
  supportSlope := (-2915259488331337 / 2000000000000000 : ℚ)
  oldCenter := (17868928377807533 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1366
  oldLo := (8925000000000001 / 25000000000000000 : ℚ)
  oldHi := (8937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_877]
}

noncomputable def cell_11261 : Cell := { cellDefaults with
  domain := ⟨(232450000000000023 / 400000000000000000 : ℚ), (116250000000000009 / 200000000000000000 : ℚ)⟩
  r := (28367079911113 / 50000000000000 : ℚ)
  w := (14063716848633 / 10000000000000 : ℚ)
  center := (464950000000000041 / 800000000000000000 : ℚ)
  supportValue := (7143929333067447 / 20000000000000000 : ℚ)
  supportSlope := (-3639963492121731 / 2500000000000000 : ℚ)
  oldCenter := (7143929333067447 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1366
  oldLo := (8925000000000001 / 25000000000000000 : ℚ)
  oldHi := (8937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_877]
}

noncomputable def cell_11262 : Cell := { cellDefaults with
  domain := ⟨(116250000000000009 / 200000000000000000 : ℚ), (232550000000000013 / 400000000000000000 : ℚ)⟩
  r := (28367079911113 / 50000000000000 : ℚ)
  w := (14063716848633 / 10000000000000 : ℚ)
  center := (465050000000000031 / 800000000000000000 : ℚ)
  supportValue := (714029641624291 / 2000000000000000 : ℚ)
  supportSlope := (-7275043326272107 / 5000000000000000 : ℚ)
  oldCenter := (714029641624291 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1366
  oldLo := (8912500000000001 / 25000000000000000 : ℚ)
  oldHi := (8937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_876, piece_877]
}

noncomputable def cell_11263 : Cell := { cellDefaults with
  domain := ⟨(232550000000000013 / 400000000000000000 : ℚ), (29075000000000001 / 50000000000000000 : ℚ)⟩
  r := (28367079911113 / 50000000000000 : ℚ)
  w := (14063716848633 / 10000000000000 : ℚ)
  center := (465150000000000021 / 800000000000000000 : ℚ)
  supportValue := (1784163495009249 / 5000000000000000 : ℚ)
  supportSlope := (-727138525730881 / 500000000000000 : ℚ)
  oldCenter := (1784163495009249 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1366
  oldLo := (8912500000000001 / 25000000000000000 : ℚ)
  oldHi := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_876]
}

noncomputable def cell_11264 : Cell := { cellDefaults with
  domain := ⟨(29075000000000001 / 50000000000000000 : ℚ), (232650000000000013 / 400000000000000000 : ℚ)⟩
  r := (11341098997243 / 20000000000000 : ℚ)
  w := (14060598353471 / 10000000000000 : ℚ)
  center := (465250000000000021 / 800000000000000000 : ℚ)
  supportValue := (1785146721004427 / 5000000000000000 : ℚ)
  supportSlope := (-14542683073653573 / 10000000000000000 : ℚ)
  oldCenter := (1785146721004427 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1367
  oldLo := (8912500000000001 / 25000000000000000 : ℚ)
  oldHi := (8937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_876, piece_877]
}

noncomputable def cell_11265 : Cell := { cellDefaults with
  domain := ⟨(232650000000000013 / 400000000000000000 : ℚ), (116350000000000009 / 200000000000000000 : ℚ)⟩
  r := (11341098997243 / 20000000000000 : ℚ)
  w := (14060598353471 / 10000000000000 : ℚ)
  center := (465350000000000031 / 800000000000000000 : ℚ)
  supportValue := (35684731481682663 / 100000000000000000 : ℚ)
  supportSlope := (-181708034079779 / 125000000000000 : ℚ)
  oldCenter := (35684731481682663 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1367
  oldLo := (8912500000000001 / 25000000000000000 : ℚ)
  oldHi := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_876]
}

noncomputable def cell_11266 : Cell := { cellDefaults with
  domain := ⟨(116350000000000009 / 200000000000000000 : ℚ), (232750000000000023 / 400000000000000000 : ℚ)⟩
  r := (11341098997243 / 20000000000000 : ℚ)
  w := (14060598353471 / 10000000000000 : ℚ)
  center := (465450000000000041 / 800000000000000000 : ℚ)
  supportValue := (35666570935243863 / 100000000000000000 : ℚ)
  supportSlope := (-14520238552771727 / 10000000000000000 : ℚ)
  oldCenter := (35666570935243863 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1367
  oldLo := (8912500000000001 / 25000000000000000 : ℚ)
  oldHi := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_876]
}

noncomputable def cell_11267 : Cell := { cellDefaults with
  domain := ⟨(232750000000000023 / 400000000000000000 : ℚ), (58200000000000007 / 100000000000000000 : ℚ)⟩
  r := (11341098997243 / 20000000000000 : ℚ)
  w := (14060598353471 / 10000000000000 : ℚ)
  center := (465550000000000051 / 800000000000000000 : ℚ)
  supportValue := (17824227043629143 / 50000000000000000 : ℚ)
  supportSlope := (-3628288291299323 / 2500000000000000 : ℚ)
  oldCenter := (17824227043629143 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1367
  oldLo := (8900000000000001 / 25000000000000000 : ℚ)
  oldHi := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_875, piece_876]
}

noncomputable def cell_11268 : Cell := { cellDefaults with
  domain := ⟨(58200000000000007 / 100000000000000000 : ℚ), (232850000000000023 / 400000000000000000 : ℚ)⟩
  r := (3542303976819 / 6250000000000 : ℚ)
  w := (7028744496443 / 5000000000000 : ℚ)
  center := (465650000000000051 / 800000000000000000 : ℚ)
  supportValue := (35668012528305443 / 100000000000000000 : ℚ)
  supportSlope := (-14514106130595679 / 10000000000000000 : ℚ)
  oldCenter := (35668012528305443 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1368
  oldLo := (8912500000000001 / 25000000000000000 : ℚ)
  oldHi := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_876]
}

noncomputable def cell_11269 : Cell := { cellDefaults with
  domain := ⟨(232850000000000023 / 400000000000000000 : ℚ), (116450000000000009 / 200000000000000000 : ℚ)⟩
  r := (3542303976819 / 6250000000000 : ℚ)
  w := (7028744496443 / 5000000000000 : ℚ)
  center := (465750000000000041 / 800000000000000000 : ℚ)
  supportValue := (891247622955289 / 2500000000000000 : ℚ)
  supportSlope := (-1813221532795021 / 1250000000000000 : ℚ)
  oldCenter := (891247622955289 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1368
  oldLo := (8900000000000001 / 25000000000000000 : ℚ)
  oldHi := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_875, piece_876]
}

noncomputable def cell_11270 : Cell := { cellDefaults with
  domain := ⟨(116450000000000009 / 200000000000000000 : ℚ), (232950000000000013 / 400000000000000000 : ℚ)⟩
  r := (3542303976819 / 6250000000000 : ℚ)
  w := (7028744496443 / 5000000000000 : ℚ)
  center := (465850000000000031 / 800000000000000000 : ℚ)
  supportValue := (712634965192887 / 2000000000000000 : ℚ)
  supportSlope := (-3624288263608751 / 2500000000000000 : ℚ)
  oldCenter := (712634965192887 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1368
  oldLo := (8900000000000001 / 25000000000000000 : ℚ)
  oldHi := (8912500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_875]
}

noncomputable def cell_11271 : Cell := { cellDefaults with
  domain := ⟨(232950000000000013 / 400000000000000000 : ℚ), (29125000000000001 / 50000000000000000 : ℚ)⟩
  r := (3542303976819 / 6250000000000 : ℚ)
  w := (7028744496443 / 5000000000000 : ℚ)
  center := (465950000000000021 / 800000000000000000 : ℚ)
  supportValue := (7122727410026689 / 20000000000000000 : ℚ)
  supportSlope := (-1448078914902207 / 1000000000000000 : ℚ)
  oldCenter := (7122727410026689 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1368
  oldLo := (8900000000000001 / 25000000000000000 : ℚ)
  oldHi := (8912500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_875]
}

noncomputable def cell_11272 : Cell := { cellDefaults with
  domain := ⟨(29125000000000001 / 50000000000000000 : ℚ), (233050000000000013 / 400000000000000000 : ℚ)⟩
  r := (56648265458909 / 100000000000000 : ℚ)
  w := (1756798165641 / 1250000000000 : ℚ)
  center := (466050000000000021 / 800000000000000000 : ℚ)
  supportValue := (890829684920881 / 2500000000000000 : ℚ)
  supportSlope := (-7245519802120789 / 5000000000000000 : ℚ)
  oldCenter := (890829684920881 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1369
  oldLo := (8900000000000001 / 25000000000000000 : ℚ)
  oldHi := (8912500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_875]
}

noncomputable def cell_11273 : Cell := { cellDefaults with
  domain := ⟨(233050000000000013 / 400000000000000000 : ℚ), (116550000000000009 / 200000000000000000 : ℚ)⟩
  r := (56648265458909 / 100000000000000 : ℚ)
  w := (1756798165641 / 1250000000000 : ℚ)
  center := (466150000000000031 / 800000000000000000 : ℚ)
  supportValue := (356150838213887 / 1000000000000000 : ℚ)
  supportSlope := (-723734404161219 / 500000000000000 : ℚ)
  oldCenter := (356150838213887 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1369
  oldLo := (8900000000000001 / 25000000000000000 : ℚ)
  oldHi := (8912500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_875]
}

noncomputable def cell_11274 : Cell := { cellDefaults with
  domain := ⟨(116550000000000009 / 200000000000000000 : ℚ), (233150000000000023 / 400000000000000000 : ℚ)⟩
  r := (56648265458909 / 100000000000000 : ℚ)
  w := (1756798165641 / 1250000000000 : ℚ)
  center := (466250000000000041 / 800000000000000000 : ℚ)
  supportValue := (17798511133809203 / 50000000000000000 : ℚ)
  supportSlope := (-1446892773803687 / 1000000000000000 : ℚ)
  oldCenter := (17798511133809203 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1369
  oldLo := (8887500000000001 / 25000000000000000 : ℚ)
  oldHi := (8912500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_874, piece_875]
}

noncomputable def cell_11275 : Cell := { cellDefaults with
  domain := ⟨(233150000000000023 / 400000000000000000 : ℚ), (58300000000000007 / 100000000000000000 : ℚ)⟩
  r := (56648265458909 / 100000000000000 : ℚ)
  w := (1756798165641 / 1250000000000 : ℚ)
  center := (466350000000000051 / 800000000000000000 : ℚ)
  supportValue := (8894728704473219 / 25000000000000000 : ℚ)
  supportSlope := (-14457836195898797 / 10000000000000000 : ℚ)
  oldCenter := (8894728704473219 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1369
  oldLo := (8887500000000001 / 25000000000000000 : ℚ)
  oldHi := (8900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_874]
}

noncomputable def cell_11276 : Cell := { cellDefaults with
  domain := ⟨(58300000000000007 / 100000000000000000 : ℚ), (233250000000000023 / 400000000000000000 : ℚ)⟩
  r := (56619699135593 / 100000000000000 : ℚ)
  w := (27443920623 / 19531250000 : ℚ)
  center := (466450000000000051 / 800000000000000000 : ℚ)
  supportValue := (35598460275732213 / 100000000000000000 : ℚ)
  supportSlope := (-3615393650287319 / 2500000000000000 : ℚ)
  oldCenter := (35598460275732213 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1370
  oldLo := (8887500000000001 / 25000000000000000 : ℚ)
  oldHi := (8912500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_874, piece_875]
}

noncomputable def cell_11277 : Cell := { cellDefaults with
  domain := ⟨(233250000000000023 / 400000000000000000 : ℚ), (116650000000000009 / 200000000000000000 : ℚ)⟩
  r := (56619699135593 / 100000000000000 : ℚ)
  w := (27443920623 / 19531250000 : ℚ)
  center := (466550000000000041 / 800000000000000000 : ℚ)
  supportValue := (7116072086800499 / 20000000000000000 : ℚ)
  supportSlope := (-7225877305182149 / 5000000000000000 : ℚ)
  oldCenter := (7116072086800499 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1370
  oldLo := (8887500000000001 / 25000000000000000 : ℚ)
  oldHi := (8900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_874]
}

noncomputable def cell_11278 : Cell := { cellDefaults with
  domain := ⟨(116650000000000009 / 200000000000000000 : ℚ), (233350000000000013 / 400000000000000000 : ℚ)⟩
  r := (56619699135593 / 100000000000000 : ℚ)
  w := (27443920623 / 19531250000 : ℚ)
  center := (466650000000000031 / 800000000000000000 : ℚ)
  supportValue := (3556230593985061 / 10000000000000000 : ℚ)
  supportSlope := (-7217721506519059 / 5000000000000000 : ℚ)
  oldCenter := (3556230593985061 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1370
  oldLo := (8887500000000001 / 25000000000000000 : ℚ)
  oldHi := (8900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_874]
}

noncomputable def cell_11279 : Cell := { cellDefaults with
  domain := ⟨(233350000000000013 / 400000000000000000 : ℚ), (29175000000000001 / 50000000000000000 : ℚ)⟩
  r := (56619699135593 / 100000000000000 : ℚ)
  w := (27443920623 / 19531250000 : ℚ)
  center := (466750000000000021 / 800000000000000000 : ℚ)
  supportValue := (14217716145299 / 40000000000000 : ℚ)
  supportSlope := (-7216072986944877 / 5000000000000000 : ℚ)
  oldCenter := (14217716145299 / 40000000000000 : ℚ)
  newCoefficients := coefficients_1370
  oldLo := (8875000000000001 / 25000000000000000 : ℚ)
  oldHi := (8900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_873, piece_874]
}

noncomputable def cell_11280 : Cell := { cellDefaults with
  domain := ⟨(29175000000000001 / 50000000000000000 : ℚ), (233450000000000013 / 400000000000000000 : ℚ)⟩
  r := (28295583494931 / 50000000000000 : ℚ)
  w := (7024099483207 / 5000000000000 : ℚ)
  center := (466850000000000021 / 800000000000000000 : ℚ)
  supportValue := (3556372965338261 / 10000000000000000 : ℚ)
  supportSlope := (-1442935605135387 / 1000000000000000 : ℚ)
  oldCenter := (3556372965338261 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1371
  oldLo := (8887500000000001 / 25000000000000000 : ℚ)
  oldHi := (8900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_874]
}

noncomputable def cell_11281 : Cell := { cellDefaults with
  domain := ⟨(233450000000000013 / 400000000000000000 : ℚ), (116750000000000009 / 200000000000000000 : ℚ)⟩
  r := (28295583494931 / 50000000000000 : ℚ)
  w := (7024099483207 / 5000000000000 : ℚ)
  center := (466950000000000031 / 800000000000000000 : ℚ)
  supportValue := (888643081291447 / 2500000000000000 : ℚ)
  supportSlope := (-901550963081553 / 625000000000000 : ℚ)
  oldCenter := (888643081291447 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1371
  oldLo := (8875000000000001 / 25000000000000000 : ℚ)
  oldHi := (8900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_873, piece_874]
}

noncomputable def cell_11282 : Cell := { cellDefaults with
  domain := ⟨(116750000000000009 / 200000000000000000 : ℚ), (233550000000000023 / 400000000000000000 : ℚ)⟩
  r := (28295583494931 / 50000000000000 : ℚ)
  w := (7024099483207 / 5000000000000 : ℚ)
  center := (467050000000000041 / 800000000000000000 : ℚ)
  supportValue := (17763836187342183 / 50000000000000000 : ℚ)
  supportSlope := (-14412633506076469 / 10000000000000000 : ℚ)
  oldCenter := (17763836187342183 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1371
  oldLo := (8875000000000001 / 25000000000000000 : ℚ)
  oldHi := (8887500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_873]
}

noncomputable def cell_11283 : Cell := { cellDefaults with
  domain := ⟨(233550000000000023 / 400000000000000000 : ℚ), (58400000000000007 / 100000000000000000 : ℚ)⟩
  r := (28295583494931 / 50000000000000 : ℚ)
  w := (7024099483207 / 5000000000000 : ℚ)
  center := (467150000000000051 / 800000000000000000 : ℚ)
  supportValue := (1420386670220263 / 4000000000000000 : ℚ)
  supportSlope := (-14396364162737267 / 10000000000000000 : ℚ)
  oldCenter := (1420386670220263 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1371
  oldLo := (8875000000000001 / 25000000000000000 : ℚ)
  oldHi := (8887500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_873]
}

noncomputable def cell_11284 : Cell := { cellDefaults with
  domain := ⟨(58400000000000007 / 100000000000000000 : ℚ), (233650000000000023 / 400000000000000000 : ℚ)⟩
  r := (56562668319861 / 100000000000000 : ℚ)
  w := (14045118110853 / 10000000000000 : ℚ)
  center := (467250000000000051 / 800000000000000000 : ℚ)
  supportValue := (3552908878987713 / 10000000000000000 : ℚ)
  supportSlope := (-14406561138066483 / 10000000000000000 : ℚ)
  oldCenter := (3552908878987713 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1372
  oldLo := (8875000000000001 / 25000000000000000 : ℚ)
  oldHi := (8887500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_873]
}

noncomputable def cell_11285 : Cell := { cellDefaults with
  domain := ⟨(233650000000000023 / 400000000000000000 : ℚ), (116850000000000009 / 200000000000000000 : ℚ)⟩
  r := (56562668319861 / 100000000000000 : ℚ)
  w := (14045118110853 / 10000000000000 : ℚ)
  center := (467350000000000041 / 800000000000000000 : ℚ)
  supportValue := (8877772688315029 / 25000000000000000 : ℚ)
  supportSlope := (-14390304420414441 / 10000000000000000 : ℚ)
  oldCenter := (8877772688315029 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1372
  oldLo := (8875000000000001 / 25000000000000000 : ℚ)
  oldHi := (8887500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_873]
}

noncomputable def cell_11286 : Cell := { cellDefaults with
  domain := ⟨(116850000000000009 / 200000000000000000 : ℚ), (233750000000000013 / 400000000000000000 : ℚ)⟩
  r := (56562668319861 / 100000000000000 : ℚ)
  w := (14045118110853 / 10000000000000 : ℚ)
  center := (467450000000000031 / 800000000000000000 : ℚ)
  supportValue := (1774656510925179 / 5000000000000000 : ℚ)
  supportSlope := (-7194061199454369 / 5000000000000000 : ℚ)
  oldCenter := (1774656510925179 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1372
  oldLo := (8862500000000001 / 25000000000000000 : ℚ)
  oldHi := (8887500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_872, piece_873]
}

noncomputable def cell_11287 : Cell := { cellDefaults with
  domain := ⟨(233750000000000013 / 400000000000000000 : ℚ), (29225000000000001 / 50000000000000000 : ℚ)⟩
  r := (56562668319861 / 100000000000000 : ℚ)
  w := (14045118110853 / 10000000000000 : ℚ)
  center := (467550000000000021 / 800000000000000000 : ℚ)
  supportValue := (221719550570009 / 625000000000000 : ℚ)
  supportSlope := (-1437368483328571 / 1000000000000000 : ℚ)
  oldCenter := (221719550570009 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1372
  oldLo := (8862500000000001 / 25000000000000000 : ℚ)
  oldHi := (8875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_872]
}

noncomputable def cell_11288 : Cell := { cellDefaults with
  domain := ⟨(29225000000000001 / 50000000000000000 : ℚ), (116925000000000007 / 200000000000000000 : ℚ)⟩
  r := (7066775073509 / 12500000000000 : ℚ)
  w := (14042041044443 / 10000000000000 : ℚ)
  center := (233825000000000011 / 400000000000000000 : ℚ)
  supportValue := (3549455067926751 / 10000000000000000 : ℚ)
  supportSlope := (-14380818046396067 / 10000000000000000 : ℚ)
  oldCenter := (3549455067926751 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1373
  oldLo := (8862500000000001 / 25000000000000000 : ℚ)
  oldHi := (8887500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_872, piece_873]
}

noncomputable def cell_11289 : Cell := { cellDefaults with
  domain := ⟨(116925000000000007 / 200000000000000000 : ℚ), (11695000000000001 / 20000000000000000 : ℚ)⟩
  r := (7066775073509 / 12500000000000 : ℚ)
  w := (14042041044443 / 10000000000000 : ℚ)
  center := (233875000000000017 / 400000000000000000 : ℚ)
  supportValue := (17738278052315967 / 50000000000000000 : ℚ)
  supportSlope := (-7183824001345789 / 5000000000000000 : ℚ)
  oldCenter := (17738278052315967 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1373
  oldLo := (8862500000000001 / 25000000000000000 : ℚ)
  oldHi := (8875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_872]
}

noncomputable def cell_11290 : Cell := { cellDefaults with
  domain := ⟨(11695000000000001 / 20000000000000000 : ℚ), (116975000000000013 / 200000000000000000 : ℚ)⟩
  r := (7066775073509 / 12500000000000 : ℚ)
  w := (14042041044443 / 10000000000000 : ℚ)
  center := (233925000000000023 / 400000000000000000 : ℚ)
  supportValue := (886465787594853 / 2500000000000000 : ℚ)
  supportSlope := (-7175882123910099 / 5000000000000000 : ℚ)
  oldCenter := (886465787594853 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1373
  oldLo := (8850000000000001 / 25000000000000000 : ℚ)
  oldHi := (8875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_871, piece_872]
}

noncomputable def cell_11291 : Cell := { cellDefaults with
  domain := ⟨(116975000000000013 / 200000000000000000 : ℚ), (7312500000000001 / 12500000000000000 : ℚ)⟩
  r := (7066775073509 / 12500000000000 : ℚ)
  w := (14042041044443 / 10000000000000 : ℚ)
  center := (233975000000000029 / 400000000000000000 : ℚ)
  supportValue := (3544066712721347 / 10000000000000000 : ℚ)
  supportSlope := (-14351162321968813 / 10000000000000000 : ℚ)
  oldCenter := (3544066712721347 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1373
  oldLo := (8850000000000001 / 25000000000000000 : ℚ)
  oldHi := (8862500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_871]
}

noncomputable def cell_11292 : Cell := { cellDefaults with
  domain := ⟨(7312500000000001 / 12500000000000000 : ℚ), (29254888268156427 / 50000000000000000 : ℚ)⟩
  r := (28252883489611 / 50000000000000 : ℚ)
  w := (14038973885991 / 10000000000000 : ℚ)
  center := (58504888268156431 / 100000000000000000 : ℚ)
  supportValue := (3546196550401453 / 10000000000000000 : ℚ)
  supportSlope := (-7173575682013399 / 5000000000000000 : ℚ)
  oldCenter := (3546196550401453 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1374
  oldLo := (8862500000000001 / 25000000000000000 : ℚ)
  oldHi := (8875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_872]
}

noncomputable def cell_11293 : Cell := { cellDefaults with
  domain := ⟨(29254888268156427 / 50000000000000000 : ℚ), (585195530726257 / 1000000000000000 : ℚ)⟩
  r := (28252883489611 / 50000000000000 : ℚ)
  w := (14038973885991 / 10000000000000 : ℚ)
  center := (58514664804469277 / 100000000000000000 : ℚ)
  supportValue := (3544796765180049 / 10000000000000000 : ℚ)
  supportSlope := (-1434481980080221 / 1000000000000000 : ℚ)
  oldCenter := (3544796765180049 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1374
  oldLo := (8850000000000001 / 25000000000000000 : ℚ)
  oldHi := (8875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_871, piece_872]
}

noncomputable def cell_11294 : Cell := { cellDefaults with
  domain := ⟨(585195530726257 / 1000000000000000 : ℚ), (58534776536312851 / 100000000000000000 : ℚ)⟩
  r := (28252883489611 / 50000000000000 : ℚ)
  w := (14038973885991 / 10000000000000 : ℚ)
  center := (117054329608938551 / 200000000000000000 : ℚ)
  supportValue := (110718874171299 / 312500000000000 : ℚ)
  supportSlope := (-14334201566702123 / 10000000000000000 : ℚ)
  oldCenter := (110718874171299 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1375
  oldLo := (8850000000000001 / 25000000000000000 : ℚ)
  oldHi := (8862500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_871]
}

noncomputable def cell_11295 : Cell := { cellDefaults with
  domain := ⟨(58534776536312851 / 100000000000000000 : ℚ), (29275000000000001 / 50000000000000000 : ℚ)⟩
  r := (28252883489611 / 50000000000000 : ℚ)
  w := (14038973885991 / 10000000000000 : ℚ)
  center := (117084776536312853 / 200000000000000000 : ℚ)
  supportValue := (17704116556909333 / 50000000000000000 : ℚ)
  supportSlope := (-14316469571554973 / 10000000000000000 : ℚ)
  oldCenter := (17704116556909333 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1375
  oldLo := (8837500000000001 / 25000000000000000 : ℚ)
  oldHi := (8862500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_870, piece_871]
}

noncomputable def cell_11296 : Cell := { cellDefaults with
  domain := ⟨(29275000000000001 / 50000000000000000 : ℚ), (117125000000000007 / 200000000000000000 : ℚ)⟩
  r := (451818946527 / 800000000000 : ℚ)
  w := (14035915616917 / 10000000000000 : ℚ)
  center := (234225000000000011 / 400000000000000000 : ℚ)
  supportValue := (35425553238835317 / 100000000000000000 : ℚ)
  supportSlope := (-1432286929109067 / 1000000000000000 : ℚ)
  oldCenter := (35425553238835317 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1376
  oldLo := (8850000000000001 / 25000000000000000 : ℚ)
  oldHi := (8862500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_871]
}

noncomputable def cell_11297 : Cell := { cellDefaults with
  domain := ⟨(117125000000000007 / 200000000000000000 : ℚ), (11715000000000001 / 20000000000000000 : ℚ)⟩
  r := (451818946527 / 800000000000 : ℚ)
  w := (14035915616917 / 10000000000000 : ℚ)
  center := (234275000000000017 / 400000000000000000 : ℚ)
  supportValue := (708153690817767 / 2000000000000000 : ℚ)
  supportSlope := (-14307864902496863 / 10000000000000000 : ℚ)
  oldCenter := (708153690817767 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1376
  oldLo := (8837500000000001 / 25000000000000000 : ℚ)
  oldHi := (8862500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_870, piece_871]
}

noncomputable def cell_11298 : Cell := { cellDefaults with
  domain := ⟨(11715000000000001 / 20000000000000000 : ℚ), (117175000000000013 / 200000000000000000 : ℚ)⟩
  r := (451818946527 / 800000000000 : ℚ)
  w := (14035915616917 / 10000000000000 : ℚ)
  center := (234325000000000023 / 400000000000000000 : ℚ)
  supportValue := (17694887512481833 / 50000000000000000 : ℚ)
  supportSlope := (-1430651670505873 / 1000000000000000 : ℚ)
  oldCenter := (17694887512481833 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1376
  oldLo := (8837500000000001 / 25000000000000000 : ℚ)
  oldHi := (8850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_870]
}

noncomputable def cell_11299 : Cell := { cellDefaults with
  domain := ⟨(117175000000000013 / 200000000000000000 : ℚ), (7325000000000001 / 12500000000000000 : ℚ)⟩
  r := (451818946527 / 800000000000 : ℚ)
  w := (14035915616917 / 10000000000000 : ℚ)
  center := (234375000000000029 / 400000000000000000 : ℚ)
  supportValue := (707438040107729 / 2000000000000000 : ℚ)
  supportSlope := (-7145160845504459 / 5000000000000000 : ℚ)
  oldCenter := (707438040107729 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1376
  oldLo := (8837500000000001 / 25000000000000000 : ℚ)
  oldHi := (8850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_870]
}

theorem check_11250 : cell_11250.check = true := by
  decide +kernel

theorem check_11251 : cell_11251.check = true := by
  decide +kernel

theorem check_11252 : cell_11252.check = true := by
  decide +kernel

theorem check_11253 : cell_11253.check = true := by
  decide +kernel

theorem check_11254 : cell_11254.check = true := by
  decide +kernel

theorem check_11255 : cell_11255.check = true := by
  decide +kernel

theorem check_11256 : cell_11256.check = true := by
  decide +kernel

theorem check_11257 : cell_11257.check = true := by
  decide +kernel

theorem check_11258 : cell_11258.check = true := by
  decide +kernel

theorem check_11259 : cell_11259.check = true := by
  decide +kernel

theorem check_11260 : cell_11260.check = true := by
  decide +kernel

theorem check_11261 : cell_11261.check = true := by
  decide +kernel

theorem check_11262 : cell_11262.check = true := by
  decide +kernel

theorem check_11263 : cell_11263.check = true := by
  decide +kernel

theorem check_11264 : cell_11264.check = true := by
  decide +kernel

theorem check_11265 : cell_11265.check = true := by
  decide +kernel

theorem check_11266 : cell_11266.check = true := by
  decide +kernel

theorem check_11267 : cell_11267.check = true := by
  decide +kernel

theorem check_11268 : cell_11268.check = true := by
  decide +kernel

theorem check_11269 : cell_11269.check = true := by
  decide +kernel

theorem check_11270 : cell_11270.check = true := by
  decide +kernel

theorem check_11271 : cell_11271.check = true := by
  decide +kernel

theorem check_11272 : cell_11272.check = true := by
  decide +kernel

theorem check_11273 : cell_11273.check = true := by
  decide +kernel

theorem check_11274 : cell_11274.check = true := by
  decide +kernel

theorem check_11275 : cell_11275.check = true := by
  decide +kernel

theorem check_11276 : cell_11276.check = true := by
  decide +kernel

theorem check_11277 : cell_11277.check = true := by
  decide +kernel

theorem check_11278 : cell_11278.check = true := by
  decide +kernel

theorem check_11279 : cell_11279.check = true := by
  decide +kernel

theorem check_11280 : cell_11280.check = true := by
  decide +kernel

theorem check_11281 : cell_11281.check = true := by
  decide +kernel

theorem check_11282 : cell_11282.check = true := by
  decide +kernel

theorem check_11283 : cell_11283.check = true := by
  decide +kernel

theorem check_11284 : cell_11284.check = true := by
  decide +kernel

theorem check_11285 : cell_11285.check = true := by
  decide +kernel

theorem check_11286 : cell_11286.check = true := by
  decide +kernel

theorem check_11287 : cell_11287.check = true := by
  decide +kernel

theorem check_11288 : cell_11288.check = true := by
  decide +kernel

theorem check_11289 : cell_11289.check = true := by
  decide +kernel

theorem check_11290 : cell_11290.check = true := by
  decide +kernel

theorem check_11291 : cell_11291.check = true := by
  decide +kernel

theorem check_11292 : cell_11292.check = true := by
  decide +kernel

theorem check_11293 : cell_11293.check = true := by
  decide +kernel

theorem check_11294 : cell_11294.check = true := by
  decide +kernel

theorem check_11295 : cell_11295.check = true := by
  decide +kernel

theorem check_11296 : cell_11296.check = true := by
  decide +kernel

theorem check_11297 : cell_11297.check = true := by
  decide +kernel

theorem check_11298 : cell_11298.check = true := by
  decide +kernel

theorem check_11299 : cell_11299.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11250, cell_11251, cell_11252, cell_11253, cell_11254, cell_11255, cell_11256, cell_11257, cell_11258, cell_11259, cell_11260, cell_11261, cell_11262, cell_11263, cell_11264, cell_11265, cell_11266, cell_11267, cell_11268, cell_11269, cell_11270, cell_11271, cell_11272, cell_11273, cell_11274, cell_11275, cell_11276, cell_11277, cell_11278, cell_11279, cell_11280, cell_11281, cell_11282, cell_11283, cell_11284, cell_11285, cell_11286, cell_11287, cell_11288, cell_11289, cell_11290, cell_11291, cell_11292, cell_11293, cell_11294, cell_11295, cell_11296, cell_11297, cell_11298, cell_11299]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11250, check_11251, check_11252, check_11253, check_11254, check_11255, check_11256, check_11257, check_11258, check_11259, check_11260, check_11261, check_11262, check_11263, check_11264, check_11265, check_11266, check_11267, check_11268, check_11269, check_11270, check_11271, check_11272, check_11273, check_11274, check_11275, check_11276, check_11277, check_11278, check_11279, check_11280, check_11281, check_11282, check_11283, check_11284, check_11285, check_11286, check_11287, check_11288, check_11289, check_11290, check_11291, check_11292, check_11293, check_11294, check_11295, check_11296, check_11297, check_11298, check_11299, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0225

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0225
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0225
open AnalyticBounds.ExpressionCertificate

theorem linked_11250 : Linked cell_11250 pieces := by
  apply Linked.of_piece piece_1363 piece_1363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11250, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_878_mem, piece_879_mem⟩

theorem linked_11251 : Linked cell_11251 pieces := by
  apply Linked.of_piece piece_1363 piece_1363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11251, List.cons_subset, List.nil_subset, and_true]
  exact piece_878_mem

theorem linked_11252 : Linked cell_11252 pieces := by
  apply Linked.of_piece piece_1364 piece_1364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11252, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_878_mem, piece_879_mem⟩

theorem linked_11253 : Linked cell_11253 pieces := by
  apply Linked.of_piece piece_1364 piece_1364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11253, List.cons_subset, List.nil_subset, and_true]
  exact piece_878_mem

theorem linked_11254 : Linked cell_11254 pieces := by
  apply Linked.of_piece piece_1364 piece_1364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11254, List.cons_subset, List.nil_subset, and_true]
  exact piece_878_mem

theorem linked_11255 : Linked cell_11255 pieces := by
  apply Linked.of_piece piece_1364 piece_1364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11255, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_877_mem, piece_878_mem⟩

theorem linked_11256 : Linked cell_11256 pieces := by
  apply Linked.of_piece piece_1365 piece_1365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11256, List.cons_subset, List.nil_subset, and_true]
  exact piece_878_mem

theorem linked_11257 : Linked cell_11257 pieces := by
  apply Linked.of_piece piece_1365 piece_1365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11257, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_877_mem, piece_878_mem⟩

theorem linked_11258 : Linked cell_11258 pieces := by
  apply Linked.of_piece piece_1365 piece_1365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11258, List.cons_subset, List.nil_subset, and_true]
  exact piece_877_mem

theorem linked_11259 : Linked cell_11259 pieces := by
  apply Linked.of_piece piece_1365 piece_1365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11259, List.cons_subset, List.nil_subset, and_true]
  exact piece_877_mem

theorem linked_11260 : Linked cell_11260 pieces := by
  apply Linked.of_piece piece_1366 piece_1366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11260, List.cons_subset, List.nil_subset, and_true]
  exact piece_877_mem

theorem linked_11261 : Linked cell_11261 pieces := by
  apply Linked.of_piece piece_1366 piece_1366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11261, List.cons_subset, List.nil_subset, and_true]
  exact piece_877_mem

theorem linked_11262 : Linked cell_11262 pieces := by
  apply Linked.of_piece piece_1366 piece_1366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11262, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_876_mem, piece_877_mem⟩

theorem linked_11263 : Linked cell_11263 pieces := by
  apply Linked.of_piece piece_1366 piece_1366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11263, List.cons_subset, List.nil_subset, and_true]
  exact piece_876_mem

theorem linked_11264 : Linked cell_11264 pieces := by
  apply Linked.of_piece piece_1367 piece_1367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11264, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_876_mem, piece_877_mem⟩

theorem linked_11265 : Linked cell_11265 pieces := by
  apply Linked.of_piece piece_1367 piece_1367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11265, List.cons_subset, List.nil_subset, and_true]
  exact piece_876_mem

theorem linked_11266 : Linked cell_11266 pieces := by
  apply Linked.of_piece piece_1367 piece_1367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11266, List.cons_subset, List.nil_subset, and_true]
  exact piece_876_mem

theorem linked_11267 : Linked cell_11267 pieces := by
  apply Linked.of_piece piece_1367 piece_1367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11267, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_875_mem, piece_876_mem⟩

theorem linked_11268 : Linked cell_11268 pieces := by
  apply Linked.of_piece piece_1368 piece_1368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11268, List.cons_subset, List.nil_subset, and_true]
  exact piece_876_mem

theorem linked_11269 : Linked cell_11269 pieces := by
  apply Linked.of_piece piece_1368 piece_1368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11269, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_875_mem, piece_876_mem⟩

theorem linked_11270 : Linked cell_11270 pieces := by
  apply Linked.of_piece piece_1368 piece_1368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11270, List.cons_subset, List.nil_subset, and_true]
  exact piece_875_mem

theorem linked_11271 : Linked cell_11271 pieces := by
  apply Linked.of_piece piece_1368 piece_1368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11271, List.cons_subset, List.nil_subset, and_true]
  exact piece_875_mem

theorem linked_11272 : Linked cell_11272 pieces := by
  apply Linked.of_piece piece_1369 piece_1369_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11272, List.cons_subset, List.nil_subset, and_true]
  exact piece_875_mem

theorem linked_11273 : Linked cell_11273 pieces := by
  apply Linked.of_piece piece_1369 piece_1369_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11273, List.cons_subset, List.nil_subset, and_true]
  exact piece_875_mem

theorem linked_11274 : Linked cell_11274 pieces := by
  apply Linked.of_piece piece_1369 piece_1369_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11274, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_874_mem, piece_875_mem⟩

theorem linked_11275 : Linked cell_11275 pieces := by
  apply Linked.of_piece piece_1369 piece_1369_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11275, List.cons_subset, List.nil_subset, and_true]
  exact piece_874_mem

theorem linked_11276 : Linked cell_11276 pieces := by
  apply Linked.of_piece piece_1370 piece_1370_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11276, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_874_mem, piece_875_mem⟩

theorem linked_11277 : Linked cell_11277 pieces := by
  apply Linked.of_piece piece_1370 piece_1370_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11277, List.cons_subset, List.nil_subset, and_true]
  exact piece_874_mem

theorem linked_11278 : Linked cell_11278 pieces := by
  apply Linked.of_piece piece_1370 piece_1370_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11278, List.cons_subset, List.nil_subset, and_true]
  exact piece_874_mem

theorem linked_11279 : Linked cell_11279 pieces := by
  apply Linked.of_piece piece_1370 piece_1370_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11279, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_873_mem, piece_874_mem⟩

theorem linked_11280 : Linked cell_11280 pieces := by
  apply Linked.of_piece piece_1371 piece_1371_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11280, List.cons_subset, List.nil_subset, and_true]
  exact piece_874_mem

theorem linked_11281 : Linked cell_11281 pieces := by
  apply Linked.of_piece piece_1371 piece_1371_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11281, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_873_mem, piece_874_mem⟩

theorem linked_11282 : Linked cell_11282 pieces := by
  apply Linked.of_piece piece_1371 piece_1371_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11282, List.cons_subset, List.nil_subset, and_true]
  exact piece_873_mem

theorem linked_11283 : Linked cell_11283 pieces := by
  apply Linked.of_piece piece_1371 piece_1371_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11283, List.cons_subset, List.nil_subset, and_true]
  exact piece_873_mem

theorem linked_11284 : Linked cell_11284 pieces := by
  apply Linked.of_piece piece_1372 piece_1372_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11284, List.cons_subset, List.nil_subset, and_true]
  exact piece_873_mem

theorem linked_11285 : Linked cell_11285 pieces := by
  apply Linked.of_piece piece_1372 piece_1372_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11285, List.cons_subset, List.nil_subset, and_true]
  exact piece_873_mem

theorem linked_11286 : Linked cell_11286 pieces := by
  apply Linked.of_piece piece_1372 piece_1372_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11286, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_872_mem, piece_873_mem⟩

theorem linked_11287 : Linked cell_11287 pieces := by
  apply Linked.of_piece piece_1372 piece_1372_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11287, List.cons_subset, List.nil_subset, and_true]
  exact piece_872_mem

theorem linked_11288 : Linked cell_11288 pieces := by
  apply Linked.of_piece piece_1373 piece_1373_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11288, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_872_mem, piece_873_mem⟩

theorem linked_11289 : Linked cell_11289 pieces := by
  apply Linked.of_piece piece_1373 piece_1373_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11289, List.cons_subset, List.nil_subset, and_true]
  exact piece_872_mem

theorem linked_11290 : Linked cell_11290 pieces := by
  apply Linked.of_piece piece_1373 piece_1373_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11290, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_871_mem, piece_872_mem⟩

theorem linked_11291 : Linked cell_11291 pieces := by
  apply Linked.of_piece piece_1373 piece_1373_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11291, List.cons_subset, List.nil_subset, and_true]
  exact piece_871_mem

theorem linked_11292 : Linked cell_11292 pieces := by
  apply Linked.of_piece piece_1374 piece_1374_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11292, List.cons_subset, List.nil_subset, and_true]
  exact piece_872_mem

theorem linked_11293 : Linked cell_11293 pieces := by
  apply Linked.of_piece piece_1374 piece_1374_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11293, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_871_mem, piece_872_mem⟩

theorem linked_11294 : Linked cell_11294 pieces := by
  apply Linked.of_piece piece_1375 piece_1375_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11294, List.cons_subset, List.nil_subset, and_true]
  exact piece_871_mem

theorem linked_11295 : Linked cell_11295 pieces := by
  apply Linked.of_piece piece_1375 piece_1375_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11295, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_870_mem, piece_871_mem⟩

theorem linked_11296 : Linked cell_11296 pieces := by
  apply Linked.of_piece piece_1376 piece_1376_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11296, List.cons_subset, List.nil_subset, and_true]
  exact piece_871_mem

theorem linked_11297 : Linked cell_11297 pieces := by
  apply Linked.of_piece piece_1376 piece_1376_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11297, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_870_mem, piece_871_mem⟩

theorem linked_11298 : Linked cell_11298 pieces := by
  apply Linked.of_piece piece_1376 piece_1376_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11298, List.cons_subset, List.nil_subset, and_true]
  exact piece_870_mem

theorem linked_11299 : Linked cell_11299 pieces := by
  apply Linked.of_piece piece_1376 piece_1376_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11299, List.cons_subset, List.nil_subset, and_true]
  exact piece_870_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0225.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0225.cells,List.forall_mem_cons]
  exact ⟨linked_11250, linked_11251, linked_11252, linked_11253, linked_11254, linked_11255, linked_11256, linked_11257, linked_11258, linked_11259, linked_11260, linked_11261, linked_11262, linked_11263, linked_11264, linked_11265, linked_11266, linked_11267, linked_11268, linked_11269, linked_11270, linked_11271, linked_11272, linked_11273, linked_11274, linked_11275, linked_11276, linked_11277, linked_11278, linked_11279, linked_11280, linked_11281, linked_11282, linked_11283, linked_11284, linked_11285, linked_11286, linked_11287, linked_11288, linked_11289, linked_11290, linked_11291, linked_11292, linked_11293, linked_11294, linked_11295, linked_11296, linked_11297, linked_11298, linked_11299, by simp⟩

theorem covered : covers (115966480446927377 / 200000000000000000 : ℚ) (7325000000000001 / 12500000000000000 : ℚ)
    (SourceCertificates.Chunk0225.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0225
