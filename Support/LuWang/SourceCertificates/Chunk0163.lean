import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0163
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(1259 / 4000 : ℚ), (5037 / 16000 : ℚ)⟩
  branch := .left
  r := (983350426949 / 1250000000000 : ℚ)
  w := (17135347135771 / 10000000000000 : ℚ)
  center := (10073 / 32000 : ℚ)
  supportValue := (1808366258619537 / 2500000000000000 : ℚ)
  supportSlope := (-545065301082559 / 100000000000000 : ℚ)
  oldCenter := (1808366258619537 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_786
  oldLo := (72200000000000009 / 100000000000000000 : ℚ)
  oldHi := (72250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1675, piece_1676, piece_1677]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8150 : Cell := { cellDefaults with
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldLo := (72300000000000009 / 100000000000000000 : ℚ)
  oldHi := (36199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1675, piece_1676, piece_1677]
}

def cell_8151 : Cell := { cellDefaults with
  domain := ⟨(5037 / 16000 : ℚ), (2519 / 8000 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (403 / 1280 : ℚ)
  supportValue := (7230059628403277 / 10000000000000000 : ℚ)
  supportSlope := (-1089370096867981 / 200000000000000 : ℚ)
  oldCenter := (7230059628403277 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldLo := (72250000000000003 / 100000000000000000 : ℚ)
  oldHi := (361731843575419 / 500000000000000 : ℚ)
  oldPieces := [piece_1674, piece_1675]
}

def cell_8152 : Cell := { cellDefaults with
  domain := ⟨(2519 / 8000 : ℚ), (5039 / 16000 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (10077 / 32000 : ℚ)
  supportValue := (7226661522616483 / 10000000000000000 : ℚ)
  supportSlope := (-2721525026601057 / 500000000000000 : ℚ)
  oldCenter := (7226661522616483 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldHi := (72300000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1673, piece_1674]
}

def cell_8153 : Cell := { cellDefaults with
  domain := ⟨(5039 / 16000 : ℚ), (63 / 200 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (10079 / 32000 : ℚ)
  supportValue := (451453479619683 / 625000000000000 : ℚ)
  supportSlope := (-5439468796815561 / 1000000000000000 : ℚ)
  oldCenter := (451453479619683 / 625000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldPieces := [piece_1673]
}

def cell_8154 : Cell := { cellDefaults with
  domain := ⟨(63 / 200 : ℚ), (5041 / 16000 : ℚ)⟩
  center := (10081 / 32000 : ℚ)
  supportValue := (723345644416983 / 1000000000000000 : ℚ)
  supportSlope := (-2723383552913461 / 500000000000000 : ℚ)
  oldCenter := (723345644416983 / 1000000000000000 : ℚ)
  oldLo := (72300000000000009 / 100000000000000000 : ℚ)
  oldHi := (36199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1675, piece_1676, piece_1677]
}

def cell_8155 : Cell := { cellDefaults with
  domain := ⟨(5041 / 16000 : ℚ), (2521 / 8000 : ℚ)⟩
  center := (10083 / 32000 : ℚ)
  supportValue := (90375668305589 / 125000000000000 : ℚ)
  supportSlope := (-5442974118793131 / 1000000000000000 : ℚ)
  oldCenter := (90375668305589 / 125000000000000 : ℚ)
  oldLo := (72250000000000003 / 100000000000000000 : ℚ)
  oldHi := (361731843575419 / 500000000000000 : ℚ)
  oldPieces := [piece_1674, piece_1675]
}

def cell_8156 : Cell := { cellDefaults with
  domain := ⟨(2521 / 8000 : ℚ), (5043 / 16000 : ℚ)⟩
  center := (2017 / 6400 : ℚ)
  supportValue := (3613328889151749 / 5000000000000000 : ℚ)
  supportSlope := (-10878366431469999 / 2000000000000000 : ℚ)
  oldCenter := (3613328889151749 / 5000000000000000 : ℚ)
  oldHi := (72300000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1673, piece_1674]
}

def cell_8157 : Cell := { cellDefaults with
  domain := ⟨(5043 / 16000 : ℚ), (1261 / 4000 : ℚ)⟩
  center := (10087 / 32000 : ℚ)
  supportValue := (1805813585824533 / 2500000000000000 : ℚ)
  supportSlope := (-5435611460427481 / 1000000000000000 : ℚ)
  oldCenter := (1805813585824533 / 2500000000000000 : ℚ)
  oldPieces := [piece_1673]
}

def cell_8158 : Cell := { cellDefaults with
  domain := ⟨(1261 / 4000 : ℚ), (1009 / 3200 : ℚ)⟩
  center := (10089 / 32000 : ℚ)
  supportValue := (902482291797347 / 1250000000000000 : ℚ)
  supportSlope := (-5431831844113333 / 1000000000000000 : ℚ)
  oldCenter := (902482291797347 / 1250000000000000 : ℚ)
  oldLo := (72150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1672, piece_1673]
}

def cell_8159 : Cell := { cellDefaults with
  domain := ⟨(1009 / 3200 : ℚ), (2523 / 8000 : ℚ)⟩
  center := (10091 / 32000 : ℚ)
  supportValue := (7216464563754157 / 10000000000000000 : ℚ)
  supportSlope := (-5428047011122317 / 1000000000000000 : ℚ)
  oldCenter := (7216464563754157 / 10000000000000000 : ℚ)
  oldLo := (72100000000000009 / 100000000000000000 : ℚ)
  oldHi := (72200000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1671, piece_1672]
}

def cell_8160 : Cell := { cellDefaults with
  domain := ⟨(2523 / 8000 : ℚ), (5047 / 16000 : ℚ)⟩
  center := (10093 / 32000 : ℚ)
  supportValue := (1803268286293421 / 2500000000000000 : ℚ)
  supportSlope := (-5424456926540699 / 1000000000000000 : ℚ)
  oldCenter := (1803268286293421 / 2500000000000000 : ℚ)
  oldLo := (72100000000000009 / 100000000000000000 : ℚ)
  oldHi := (72150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1671]
}

def cell_8161 : Cell := { cellDefaults with
  domain := ⟨(5047 / 16000 : ℚ), (631 / 2000 : ℚ)⟩
  center := (2019 / 6400 : ℚ)
  supportValue := (3604842045101353 / 5000000000000000 : ℚ)
  supportSlope := (-10841418608414699 / 2000000000000000 : ℚ)
  oldCenter := (3604842045101353 / 5000000000000000 : ℚ)
  oldLo := (72050000000000003 / 100000000000000000 : ℚ)
  oldHi := (72150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1670, piece_1671]
}

def cell_8162 : Cell := { cellDefaults with
  domain := ⟨(631 / 2000 : ℚ), (5049 / 16000 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10097 / 32000 : ℚ)
  supportValue := (360992729566337 / 500000000000000 : ℚ)
  supportSlope := (-33924794181317 / 6250000000000 : ℚ)
  oldCenter := (360992729566337 / 500000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (72150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1672, piece_1673]
}

def cell_8163 : Cell := { cellDefaults with
  domain := ⟨(5049 / 16000 : ℚ), (101 / 320 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10099 / 32000 : ℚ)
  supportValue := (721646323341213 / 1000000000000000 : ℚ)
  supportSlope := (-2712095912466239 / 500000000000000 : ℚ)
  oldCenter := (721646323341213 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (72100000000000009 / 100000000000000000 : ℚ)
  oldHi := (72200000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1671, piece_1672]
}

def cell_8164 : Cell := { cellDefaults with
  domain := ⟨(101 / 320 : ℚ), (5051 / 16000 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10101 / 32000 : ℚ)
  supportValue := (7213074221223927 / 10000000000000000 : ℚ)
  supportSlope := (-5420611639717521 / 1000000000000000 : ℚ)
  oldCenter := (7213074221223927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (72100000000000009 / 100000000000000000 : ℚ)
  oldHi := (72150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1671]
}

def cell_8165 : Cell := { cellDefaults with
  domain := ⟨(5051 / 16000 : ℚ), (1263 / 4000 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10103 / 32000 : ℚ)
  supportValue := (901210945832569 / 1250000000000000 : ℚ)
  supportSlope := (-2708436803239067 / 500000000000000 : ℚ)
  oldCenter := (901210945832569 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (72050000000000003 / 100000000000000000 : ℚ)
  oldHi := (72150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1670, piece_1671]
}

def cell_8166 : Cell := { cellDefaults with
  domain := ⟨(1263 / 4000 : ℚ), (5053 / 16000 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (2021 / 6400 : ℚ)
  supportValue := (1801575788618971 / 2500000000000000 : ℚ)
  supportSlope := (-541310444629417 / 100000000000000 : ℚ)
  oldCenter := (1801575788618971 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (9000000000000001 / 12500000000000000 : ℚ)
  oldHi := (72100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1669, piece_1670]
}

def cell_8167 : Cell := { cellDefaults with
  domain := ⟨(5053 / 16000 : ℚ), (2527 / 8000 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10107 / 32000 : ℚ)
  supportValue := (3601460534775273 / 5000000000000000 : ℚ)
  supportSlope := (-2163803890886129 / 400000000000000 : ℚ)
  oldCenter := (3601460534775273 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (9000000000000001 / 12500000000000000 : ℚ)
  oldHi := (72050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1669]
}

def cell_8168 : Cell := { cellDefaults with
  domain := ⟨(2527 / 8000 : ℚ), (1011 / 3200 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10109 / 32000 : ℚ)
  supportValue := (719954133848071 / 1000000000000000 : ℚ)
  supportSlope := (-10811599203748301 / 2000000000000000 : ℚ)
  oldCenter := (719954133848071 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (71950000000000003 / 100000000000000000 : ℚ)
  oldHi := (72050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1668, piece_1669]
}

def cell_8169 : Cell := { cellDefaults with
  domain := ⟨(1011 / 3200 : ℚ), (79 / 250 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10111 / 32000 : ℚ)
  supportValue := (359808192909083 / 500000000000000 : ℚ)
  supportSlope := (-10804072813236587 / 2000000000000000 : ℚ)
  oldCenter := (359808192909083 / 500000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (8987500000000001 / 12500000000000000 : ℚ)
  oldHi := (9000000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1667, piece_1668]
}

def cell_8170 : Cell := { cellDefaults with
  domain := ⟨(79 / 250 : ℚ), (5057 / 16000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (10113 / 32000 : ℚ)
  supportValue := (3603151890302017 / 5000000000000000 : ℚ)
  supportSlope := (-5409260131248317 / 1000000000000000 : ℚ)
  oldCenter := (3603151890302017 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (9000000000000001 / 12500000000000000 : ℚ)
  oldHi := (72100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1669, piece_1670]
}

def cell_8171 : Cell := { cellDefaults with
  domain := ⟨(5057 / 16000 : ℚ), (2529 / 8000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (2023 / 6400 : ℚ)
  supportValue := (3601462047628683 / 5000000000000000 : ℚ)
  supportSlope := (-1351418911707647 / 250000000000000 : ℚ)
  oldCenter := (3601462047628683 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (9000000000000001 / 12500000000000000 : ℚ)
  oldHi := (72050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1669]
}

def cell_8172 : Cell := { cellDefaults with
  domain := ⟨(2529 / 8000 : ℚ), (5059 / 16000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (10117 / 32000 : ℚ)
  supportValue := (899943344717907 / 1250000000000000 : ℚ)
  supportSlope := (-5401974897850437 / 1000000000000000 : ℚ)
  oldCenter := (899943344717907 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (71950000000000003 / 100000000000000000 : ℚ)
  oldHi := (72050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1668, piece_1669]
}

def cell_8173 : Cell := { cellDefaults with
  domain := ⟨(5059 / 16000 : ℚ), (253 / 800 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (10119 / 32000 : ℚ)
  supportValue := (7196171664295969 / 10000000000000000 : ℚ)
  supportSlope := (-2699110662359061 / 500000000000000 : ℚ)
  oldCenter := (7196171664295969 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (8987500000000001 / 12500000000000000 : ℚ)
  oldHi := (9000000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1667, piece_1668]
}

def cell_8174 : Cell := { cellDefaults with
  domain := ⟨(253 / 800 : ℚ), (5061 / 16000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (10121 / 32000 : ℚ)
  supportValue := (3596399437928423 / 5000000000000000 : ℚ)
  supportSlope := (-107892522621853 / 20000000000000 : ℚ)
  oldCenter := (3596399437928423 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (8987500000000001 / 12500000000000000 : ℚ)
  oldHi := (71950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1667]
}

def cell_8175 : Cell := { cellDefaults with
  domain := ⟨(5061 / 16000 : ℚ), (2531 / 8000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (10123 / 32000 : ℚ)
  supportValue := (7189428431447703 / 10000000000000000 : ℚ)
  supportSlope := (-5390949853982363 / 1000000000000000 : ℚ)
  oldCenter := (7189428431447703 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (71850000000000003 / 100000000000000000 : ℚ)
  oldHi := (71950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1666, piece_1667]
}

def cell_8176 : Cell := { cellDefaults with
  domain := ⟨(2531 / 8000 : ℚ), (5063 / 16000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (81 / 256 : ℚ)
  supportValue := (7186060236658971 / 10000000000000000 : ℚ)
  supportSlope := (-2693601341261953 / 500000000000000 : ℚ)
  oldCenter := (7186060236658971 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (8975000000000001 / 12500000000000000 : ℚ)
  oldHi := (8987500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1665, piece_1666]
}

def cell_8177 : Cell := { cellDefaults with
  domain := ⟨(5063 / 16000 : ℚ), (633 / 2000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (10127 / 32000 : ℚ)
  supportValue := (448918395783539 / 625000000000000 : ℚ)
  supportSlope := (-5383599774113179 / 1000000000000000 : ℚ)
  oldCenter := (448918395783539 / 625000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (8975000000000001 / 12500000000000000 : ℚ)
  oldHi := (71850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1665]
}

def cell_8178 : Cell := { cellDefaults with
  domain := ⟨(633 / 2000 : ℚ), (1013 / 3200 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10129 / 32000 : ℚ)
  supportValue := (1798200965125919 / 2500000000000000 : ℚ)
  supportSlope := (-1347700700205401 / 250000000000000 : ℚ)
  oldCenter := (1798200965125919 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (8987500000000001 / 12500000000000000 : ℚ)
  oldHi := (71950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1667]
}

def cell_8179 : Cell := { cellDefaults with
  domain := ⟨(1013 / 3200 : ℚ), (2533 / 8000 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10131 / 32000 : ℚ)
  supportValue := (898679475385727 / 1250000000000000 : ℚ)
  supportSlope := (-2693567841458133 / 500000000000000 : ℚ)
  oldCenter := (898679475385727 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (71850000000000003 / 100000000000000000 : ℚ)
  oldHi := (71950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1666, piece_1667]
}

def cell_8180 : Cell := { cellDefaults with
  domain := ⟨(2533 / 8000 : ℚ), (5067 / 16000 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10133 / 32000 : ℚ)
  supportValue := (224564687136693 / 312500000000000 : ℚ)
  supportSlope := (-1076679638955369 / 200000000000000 : ℚ)
  oldCenter := (224564687136693 / 312500000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (8975000000000001 / 12500000000000000 : ℚ)
  oldHi := (8987500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1665, piece_1666]
}

def cell_8181 : Cell := { cellDefaults with
  domain := ⟨(5067 / 16000 : ℚ), (1267 / 4000 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (2027 / 6400 : ℚ)
  supportValue := (7182706458927959 / 10000000000000000 : ℚ)
  supportSlope := (-10759613676555091 / 2000000000000000 : ℚ)
  oldCenter := (7182706458927959 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (8975000000000001 / 12500000000000000 : ℚ)
  oldHi := (71850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1665]
}

def cell_8182 : Cell := { cellDefaults with
  domain := ⟨(1267 / 4000 : ℚ), (5069 / 16000 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10137 / 32000 : ℚ)
  supportValue := (3589672631677759 / 5000000000000000 : ℚ)
  supportSlope := (-5376160163468313 / 1000000000000000 : ℚ)
  oldCenter := (3589672631677759 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (71750000000000003 / 100000000000000000 : ℚ)
  oldHi := (71850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1663, piece_1664, piece_1665]
}

def cell_8183 : Cell := { cellDefaults with
  domain := ⟨(5069 / 16000 : ℚ), (507 / 1600 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10139 / 32000 : ℚ)
  supportValue := (1435197262904119 / 2000000000000000 : ℚ)
  supportSlope := (-10744855608621151 / 2000000000000000 : ℚ)
  oldCenter := (1435197262904119 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (8962500000000001 / 12500000000000000 : ℚ)
  oldHi := (7179329608938547 / 10000000000000000 : ℚ)
  oldPieces := [piece_1662, piece_1663]
}

def cell_8184 : Cell := { cellDefaults with
  domain := ⟨(507 / 1600 : ℚ), (5071 / 16000 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10141 / 32000 : ℚ)
  supportValue := (7172629639233891 / 10000000000000000 : ℚ)
  supportSlope := (-5368832186224637 / 1000000000000000 : ℚ)
  oldCenter := (7172629639233891 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (8962500000000001 / 12500000000000000 : ℚ)
  oldHi := (71750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1662]
}

def cell_8185 : Cell := { cellDefaults with
  domain := ⟨(5071 / 16000 : ℚ), (317 / 1000 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10143 / 32000 : ℚ)
  supportValue := (7169275294439009 / 10000000000000000 : ℚ)
  supportSlope := (-1073040594582153 / 200000000000000 : ℚ)
  oldCenter := (7169275294439009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (71650000000000003 / 100000000000000000 : ℚ)
  oldHi := (71750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1661, piece_1662]
}

def cell_8186 : Cell := { cellDefaults with
  domain := ⟨(317 / 1000 : ℚ), (5073 / 16000 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (2029 / 6400 : ℚ)
  supportValue := (1794838679870937 / 2500000000000000 : ℚ)
  supportSlope := (-5372356140007639 / 1000000000000000 : ℚ)
  oldCenter := (1794838679870937 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (71750000000000003 / 100000000000000000 : ℚ)
  oldHi := (71850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1663, piece_1664, piece_1665]
}

def cell_8187 : Cell := { cellDefaults with
  domain := ⟨(5073 / 16000 : ℚ), (2537 / 8000 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (10147 / 32000 : ℚ)
  supportValue := (7175998144178393 / 10000000000000000 : ℚ)
  supportSlope := (-1073726704291289 / 200000000000000 : ℚ)
  oldCenter := (7175998144178393 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (8962500000000001 / 12500000000000000 : ℚ)
  oldHi := (7179329608938547 / 10000000000000000 : ℚ)
  oldPieces := [piece_1662, piece_1663]
}

def cell_8188 : Cell := { cellDefaults with
  domain := ⟨(2537 / 8000 : ℚ), (203 / 640 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (10149 / 32000 : ℚ)
  supportValue := (717264383717051 / 1000000000000000 : ℚ)
  supportSlope := (-2682524908124151 / 500000000000000 : ℚ)
  oldCenter := (717264383717051 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (8962500000000001 / 12500000000000000 : ℚ)
  oldHi := (71750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1662]
}

def cell_8189 : Cell := { cellDefaults with
  domain := ⟨(203 / 640 : ℚ), (1269 / 4000 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (10151 / 32000 : ℚ)
  supportValue := (224040370455421 / 312500000000000 : ℚ)
  supportSlope := (-670178561072543 / 125000000000000 : ℚ)
  oldCenter := (224040370455421 / 312500000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (71650000000000003 / 100000000000000000 : ℚ)
  oldHi := (71750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1661, piece_1662]
}

def cell_8190 : Cell := { cellDefaults with
  domain := ⟨(1269 / 4000 : ℚ), (5077 / 16000 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (10153 / 32000 : ℚ)
  supportValue := (716594211205379 / 1000000000000000 : ℚ)
  supportSlope := (-1071542506888079 / 200000000000000 : ℚ)
  oldCenter := (716594211205379 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (8950000000000001 / 12500000000000000 : ℚ)
  oldHi := (8962500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1660, piece_1661]
}

def cell_8191 : Cell := { cellDefaults with
  domain := ⟨(5077 / 16000 : ℚ), (2539 / 8000 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (2031 / 6400 : ℚ)
  supportValue := (7162594628338089 / 10000000000000000 : ℚ)
  supportSlope := (-10708257419445033 / 2000000000000000 : ℚ)
  oldCenter := (7162594628338089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (8950000000000001 / 12500000000000000 : ℚ)
  oldHi := (71650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1660]
}

def cell_8192 : Cell := { cellDefaults with
  domain := ⟨(2539 / 8000 : ℚ), (5079 / 16000 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (10157 / 32000 : ℚ)
  supportValue := (7159249465158061 / 10000000000000000 : ℚ)
  supportSlope := (-2675260573637317 / 500000000000000 : ℚ)
  oldCenter := (7159249465158061 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (35775000000000001 / 50000000000000000 : ℚ)
  oldHi := (71650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1659, piece_1660]
}

def cell_8193 : Cell := { cellDefaults with
  domain := ⟨(5079 / 16000 : ℚ), (127 / 400 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (10159 / 32000 : ℚ)
  supportValue := (7155906541234491 / 10000000000000000 : ℚ)
  supportSlope := (-5346811384349337 / 1000000000000000 : ℚ)
  oldCenter := (7155906541234491 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (8937500000000001 / 12500000000000000 : ℚ)
  oldHi := (8950000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1658, piece_1659]
}

def cell_8194 : Cell := { cellDefaults with
  domain := ⟨(127 / 400 : ℚ), (5081 / 16000 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (10161 / 32000 : ℚ)
  supportValue := (7165955941355759 / 10000000000000000 : ℚ)
  supportSlope := (-1070785612351699 / 200000000000000 : ℚ)
  oldCenter := (7165955941355759 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldLo := (8950000000000001 / 12500000000000000 : ℚ)
  oldHi := (8962500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1660, piece_1661]
}

def cell_8195 : Cell := { cellDefaults with
  domain := ⟨(5081 / 16000 : ℚ), (2541 / 8000 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (10163 / 32000 : ℚ)
  supportValue := (71626108197899 / 100000000000000 : ℚ)
  supportSlope := (-1337589106833903 / 250000000000000 : ℚ)
  oldCenter := (71626108197899 / 100000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldLo := (8950000000000001 / 12500000000000000 : ℚ)
  oldHi := (71650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1660]
}

def cell_8196 : Cell := { cellDefaults with
  domain := ⟨(2541 / 8000 : ℚ), (5083 / 16000 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (2033 / 6400 : ℚ)
  supportValue := (3579634006341747 / 5000000000000000 : ℚ)
  supportSlope := (-2673378228998047 / 500000000000000 : ℚ)
  oldCenter := (3579634006341747 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldLo := (35775000000000001 / 50000000000000000 : ℚ)
  oldHi := (71650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1659, piece_1660]
}

def cell_8197 : Cell := { cellDefaults with
  domain := ⟨(5083 / 16000 : ℚ), (1271 / 4000 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (10167 / 32000 : ℚ)
  supportValue := (7155927436909189 / 10000000000000000 : ℚ)
  supportSlope := (-2671528201803497 / 500000000000000 : ℚ)
  oldCenter := (7155927436909189 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldLo := (8937500000000001 / 12500000000000000 : ℚ)
  oldHi := (8950000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1658, piece_1659]
}

def cell_8198 : Cell := { cellDefaults with
  domain := ⟨(1271 / 4000 : ℚ), (1017 / 3200 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (10169 / 32000 : ℚ)
  supportValue := (3576294553907127 / 5000000000000000 : ℚ)
  supportSlope := (-5339488496492351 / 1000000000000000 : ℚ)
  oldCenter := (3576294553907127 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldLo := (8937500000000001 / 12500000000000000 : ℚ)
  oldHi := (35775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1658]
}

def cell_8199 : Cell := { cellDefaults with
  domain := ⟨(1017 / 3200 : ℚ), (2543 / 8000 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (10171 / 32000 : ℚ)
  supportValue := (893656636166237 / 1250000000000000 : ℚ)
  supportSlope := (-213435934894477 / 40000000000000 : ℚ)
  oldCenter := (893656636166237 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldLo := (35725000000000001 / 50000000000000000 : ℚ)
  oldHi := (35775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1657, piece_1658]
}

theorem check_8150 : cell_8150.check = true := by
  decide +kernel

theorem check_8151 : cell_8151.check = true := by
  decide +kernel

theorem check_8152 : cell_8152.check = true := by
  decide +kernel

theorem check_8153 : cell_8153.check = true := by
  decide +kernel

theorem check_8154 : cell_8154.check = true := by
  decide +kernel

theorem check_8155 : cell_8155.check = true := by
  decide +kernel

theorem check_8156 : cell_8156.check = true := by
  decide +kernel

theorem check_8157 : cell_8157.check = true := by
  decide +kernel

theorem check_8158 : cell_8158.check = true := by
  decide +kernel

theorem check_8159 : cell_8159.check = true := by
  decide +kernel

theorem check_8160 : cell_8160.check = true := by
  decide +kernel

theorem check_8161 : cell_8161.check = true := by
  decide +kernel

theorem check_8162 : cell_8162.check = true := by
  decide +kernel

theorem check_8163 : cell_8163.check = true := by
  decide +kernel

theorem check_8164 : cell_8164.check = true := by
  decide +kernel

theorem check_8165 : cell_8165.check = true := by
  decide +kernel

theorem check_8166 : cell_8166.check = true := by
  decide +kernel

theorem check_8167 : cell_8167.check = true := by
  decide +kernel

theorem check_8168 : cell_8168.check = true := by
  decide +kernel

theorem check_8169 : cell_8169.check = true := by
  decide +kernel

theorem check_8170 : cell_8170.check = true := by
  decide +kernel

theorem check_8171 : cell_8171.check = true := by
  decide +kernel

theorem check_8172 : cell_8172.check = true := by
  decide +kernel

theorem check_8173 : cell_8173.check = true := by
  decide +kernel

theorem check_8174 : cell_8174.check = true := by
  decide +kernel

theorem check_8175 : cell_8175.check = true := by
  decide +kernel

theorem check_8176 : cell_8176.check = true := by
  decide +kernel

theorem check_8177 : cell_8177.check = true := by
  decide +kernel

theorem check_8178 : cell_8178.check = true := by
  decide +kernel

theorem check_8179 : cell_8179.check = true := by
  decide +kernel

theorem check_8180 : cell_8180.check = true := by
  decide +kernel

theorem check_8181 : cell_8181.check = true := by
  decide +kernel

theorem check_8182 : cell_8182.check = true := by
  decide +kernel

theorem check_8183 : cell_8183.check = true := by
  decide +kernel

theorem check_8184 : cell_8184.check = true := by
  decide +kernel

theorem check_8185 : cell_8185.check = true := by
  decide +kernel

theorem check_8186 : cell_8186.check = true := by
  decide +kernel

theorem check_8187 : cell_8187.check = true := by
  decide +kernel

theorem check_8188 : cell_8188.check = true := by
  decide +kernel

theorem check_8189 : cell_8189.check = true := by
  decide +kernel

theorem check_8190 : cell_8190.check = true := by
  decide +kernel

theorem check_8191 : cell_8191.check = true := by
  decide +kernel

theorem check_8192 : cell_8192.check = true := by
  decide +kernel

theorem check_8193 : cell_8193.check = true := by
  decide +kernel

theorem check_8194 : cell_8194.check = true := by
  decide +kernel

theorem check_8195 : cell_8195.check = true := by
  decide +kernel

theorem check_8196 : cell_8196.check = true := by
  decide +kernel

theorem check_8197 : cell_8197.check = true := by
  decide +kernel

theorem check_8198 : cell_8198.check = true := by
  decide +kernel

theorem check_8199 : cell_8199.check = true := by
  decide +kernel

def cells : List Cell := [cell_8150, cell_8151, cell_8152, cell_8153, cell_8154, cell_8155, cell_8156, cell_8157, cell_8158, cell_8159, cell_8160, cell_8161, cell_8162, cell_8163, cell_8164, cell_8165, cell_8166, cell_8167, cell_8168, cell_8169, cell_8170, cell_8171, cell_8172, cell_8173, cell_8174, cell_8175, cell_8176, cell_8177, cell_8178, cell_8179, cell_8180, cell_8181, cell_8182, cell_8183, cell_8184, cell_8185, cell_8186, cell_8187, cell_8188, cell_8189, cell_8190, cell_8191, cell_8192, cell_8193, cell_8194, cell_8195, cell_8196, cell_8197, cell_8198, cell_8199]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8150, check_8151, check_8152, check_8153, check_8154, check_8155, check_8156, check_8157, check_8158, check_8159, check_8160, check_8161, check_8162, check_8163, check_8164, check_8165, check_8166, check_8167, check_8168, check_8169, check_8170, check_8171, check_8172, check_8173, check_8174, check_8175, check_8176, check_8177, check_8178, check_8179, check_8180, check_8181, check_8182, check_8183, check_8184, check_8185, check_8186, check_8187, check_8188, check_8189, check_8190, check_8191, check_8192, check_8193, check_8194, check_8195, check_8196, check_8197, check_8198, check_8199, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0163

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0163
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0163
open AnalyticBounds.ExpressionCertificate

theorem linked_8150 : Linked cell_8150 pieces := by
  apply Linked.of_piece piece_785 piece_785_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8150, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1675_mem, ⟨piece_1676_mem, piece_1677_mem⟩⟩

theorem linked_8151 : Linked cell_8151 pieces := by
  apply Linked.of_piece piece_785 piece_785_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8151, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1674_mem, piece_1675_mem⟩

theorem linked_8152 : Linked cell_8152 pieces := by
  apply Linked.of_piece piece_785 piece_785_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8152, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1673_mem, piece_1674_mem⟩

theorem linked_8153 : Linked cell_8153 pieces := by
  apply Linked.of_piece piece_785 piece_785_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8153, List.cons_subset, List.nil_subset, and_true]
  exact piece_1673_mem

theorem linked_8154 : Linked cell_8154 pieces := by
  apply Linked.of_piece piece_786 piece_786_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8154, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1675_mem, ⟨piece_1676_mem, piece_1677_mem⟩⟩

theorem linked_8155 : Linked cell_8155 pieces := by
  apply Linked.of_piece piece_786 piece_786_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8155, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1674_mem, piece_1675_mem⟩

theorem linked_8156 : Linked cell_8156 pieces := by
  apply Linked.of_piece piece_786 piece_786_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8156, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1673_mem, piece_1674_mem⟩

theorem linked_8157 : Linked cell_8157 pieces := by
  apply Linked.of_piece piece_786 piece_786_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8157, List.cons_subset, List.nil_subset, and_true]
  exact piece_1673_mem

theorem linked_8158 : Linked cell_8158 pieces := by
  apply Linked.of_piece piece_786 piece_786_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8158, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1672_mem, piece_1673_mem⟩

theorem linked_8159 : Linked cell_8159 pieces := by
  apply Linked.of_piece piece_786 piece_786_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8159, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1671_mem, piece_1672_mem⟩

theorem linked_8160 : Linked cell_8160 pieces := by
  apply Linked.of_piece piece_786 piece_786_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8160, List.cons_subset, List.nil_subset, and_true]
  exact piece_1671_mem

theorem linked_8161 : Linked cell_8161 pieces := by
  apply Linked.of_piece piece_786 piece_786_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8161, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1670_mem, piece_1671_mem⟩

theorem linked_8162 : Linked cell_8162 pieces := by
  apply Linked.of_piece piece_787 piece_787_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8162, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1672_mem, piece_1673_mem⟩

theorem linked_8163 : Linked cell_8163 pieces := by
  apply Linked.of_piece piece_787 piece_787_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8163, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1671_mem, piece_1672_mem⟩

theorem linked_8164 : Linked cell_8164 pieces := by
  apply Linked.of_piece piece_787 piece_787_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8164, List.cons_subset, List.nil_subset, and_true]
  exact piece_1671_mem

theorem linked_8165 : Linked cell_8165 pieces := by
  apply Linked.of_piece piece_787 piece_787_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8165, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1670_mem, piece_1671_mem⟩

theorem linked_8166 : Linked cell_8166 pieces := by
  apply Linked.of_piece piece_787 piece_787_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8166, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1669_mem, piece_1670_mem⟩

theorem linked_8167 : Linked cell_8167 pieces := by
  apply Linked.of_piece piece_787 piece_787_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8167, List.cons_subset, List.nil_subset, and_true]
  exact piece_1669_mem

theorem linked_8168 : Linked cell_8168 pieces := by
  apply Linked.of_piece piece_787 piece_787_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8168, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1668_mem, piece_1669_mem⟩

theorem linked_8169 : Linked cell_8169 pieces := by
  apply Linked.of_piece piece_787 piece_787_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8169, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1667_mem, piece_1668_mem⟩

theorem linked_8170 : Linked cell_8170 pieces := by
  apply Linked.of_piece piece_788 piece_788_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8170, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1669_mem, piece_1670_mem⟩

theorem linked_8171 : Linked cell_8171 pieces := by
  apply Linked.of_piece piece_788 piece_788_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8171, List.cons_subset, List.nil_subset, and_true]
  exact piece_1669_mem

theorem linked_8172 : Linked cell_8172 pieces := by
  apply Linked.of_piece piece_788 piece_788_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8172, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1668_mem, piece_1669_mem⟩

theorem linked_8173 : Linked cell_8173 pieces := by
  apply Linked.of_piece piece_788 piece_788_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8173, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1667_mem, piece_1668_mem⟩

theorem linked_8174 : Linked cell_8174 pieces := by
  apply Linked.of_piece piece_788 piece_788_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8174, List.cons_subset, List.nil_subset, and_true]
  exact piece_1667_mem

theorem linked_8175 : Linked cell_8175 pieces := by
  apply Linked.of_piece piece_788 piece_788_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8175, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1666_mem, piece_1667_mem⟩

theorem linked_8176 : Linked cell_8176 pieces := by
  apply Linked.of_piece piece_788 piece_788_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8176, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1665_mem, piece_1666_mem⟩

theorem linked_8177 : Linked cell_8177 pieces := by
  apply Linked.of_piece piece_788 piece_788_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8177, List.cons_subset, List.nil_subset, and_true]
  exact piece_1665_mem

theorem linked_8178 : Linked cell_8178 pieces := by
  apply Linked.of_piece piece_789 piece_789_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8178, List.cons_subset, List.nil_subset, and_true]
  exact piece_1667_mem

theorem linked_8179 : Linked cell_8179 pieces := by
  apply Linked.of_piece piece_789 piece_789_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8179, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1666_mem, piece_1667_mem⟩

theorem linked_8180 : Linked cell_8180 pieces := by
  apply Linked.of_piece piece_789 piece_789_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8180, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1665_mem, piece_1666_mem⟩

theorem linked_8181 : Linked cell_8181 pieces := by
  apply Linked.of_piece piece_789 piece_789_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8181, List.cons_subset, List.nil_subset, and_true]
  exact piece_1665_mem

theorem linked_8182 : Linked cell_8182 pieces := by
  apply Linked.of_piece piece_789 piece_789_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8182, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1663_mem, ⟨piece_1664_mem, piece_1665_mem⟩⟩

theorem linked_8183 : Linked cell_8183 pieces := by
  apply Linked.of_piece piece_789 piece_789_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8183, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1662_mem, piece_1663_mem⟩

theorem linked_8184 : Linked cell_8184 pieces := by
  apply Linked.of_piece piece_789 piece_789_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8184, List.cons_subset, List.nil_subset, and_true]
  exact piece_1662_mem

theorem linked_8185 : Linked cell_8185 pieces := by
  apply Linked.of_piece piece_789 piece_789_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8185, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1661_mem, piece_1662_mem⟩

theorem linked_8186 : Linked cell_8186 pieces := by
  apply Linked.of_piece piece_790 piece_790_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8186, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1663_mem, ⟨piece_1664_mem, piece_1665_mem⟩⟩

theorem linked_8187 : Linked cell_8187 pieces := by
  apply Linked.of_piece piece_790 piece_790_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8187, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1662_mem, piece_1663_mem⟩

theorem linked_8188 : Linked cell_8188 pieces := by
  apply Linked.of_piece piece_790 piece_790_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8188, List.cons_subset, List.nil_subset, and_true]
  exact piece_1662_mem

theorem linked_8189 : Linked cell_8189 pieces := by
  apply Linked.of_piece piece_790 piece_790_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8189, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1661_mem, piece_1662_mem⟩

theorem linked_8190 : Linked cell_8190 pieces := by
  apply Linked.of_piece piece_790 piece_790_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8190, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1660_mem, piece_1661_mem⟩

theorem linked_8191 : Linked cell_8191 pieces := by
  apply Linked.of_piece piece_790 piece_790_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8191, List.cons_subset, List.nil_subset, and_true]
  exact piece_1660_mem

theorem linked_8192 : Linked cell_8192 pieces := by
  apply Linked.of_piece piece_790 piece_790_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8192, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1659_mem, piece_1660_mem⟩

theorem linked_8193 : Linked cell_8193 pieces := by
  apply Linked.of_piece piece_790 piece_790_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8193, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1658_mem, piece_1659_mem⟩

theorem linked_8194 : Linked cell_8194 pieces := by
  apply Linked.of_piece piece_791 piece_791_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8194, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1660_mem, piece_1661_mem⟩

theorem linked_8195 : Linked cell_8195 pieces := by
  apply Linked.of_piece piece_791 piece_791_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8195, List.cons_subset, List.nil_subset, and_true]
  exact piece_1660_mem

theorem linked_8196 : Linked cell_8196 pieces := by
  apply Linked.of_piece piece_791 piece_791_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8196, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1659_mem, piece_1660_mem⟩

theorem linked_8197 : Linked cell_8197 pieces := by
  apply Linked.of_piece piece_791 piece_791_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8197, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1658_mem, piece_1659_mem⟩

theorem linked_8198 : Linked cell_8198 pieces := by
  apply Linked.of_piece piece_791 piece_791_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8198, List.cons_subset, List.nil_subset, and_true]
  exact piece_1658_mem

theorem linked_8199 : Linked cell_8199 pieces := by
  apply Linked.of_piece piece_791 piece_791_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8199, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1657_mem, piece_1658_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0163.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0163.cells,List.forall_mem_cons]
  exact ⟨linked_8150, linked_8151, linked_8152, linked_8153, linked_8154, linked_8155, linked_8156, linked_8157, linked_8158, linked_8159, linked_8160, linked_8161, linked_8162, linked_8163, linked_8164, linked_8165, linked_8166, linked_8167, linked_8168, linked_8169, linked_8170, linked_8171, linked_8172, linked_8173, linked_8174, linked_8175, linked_8176, linked_8177, linked_8178, linked_8179, linked_8180, linked_8181, linked_8182, linked_8183, linked_8184, linked_8185, linked_8186, linked_8187, linked_8188, linked_8189, linked_8190, linked_8191, linked_8192, linked_8193, linked_8194, linked_8195, linked_8196, linked_8197, linked_8198, linked_8199, by simp⟩

theorem covered : covers (1259 / 4000 : ℚ) (2543 / 8000 : ℚ)
    (SourceCertificates.Chunk0163.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0163
