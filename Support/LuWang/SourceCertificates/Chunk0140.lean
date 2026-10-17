import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0140
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(24162499999999999 / 100000000000000000 : ℚ), (24174999999999999 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (4145909417077 / 5000000000000 : ℚ)
  w := (10394580582671 / 10000000000000 : ℚ)
  center := (24168749999999999 / 100000000000000000 : ℚ)
  supportValue := (9456858528843499 / 10000000000000000 : ℚ)
  supportSlope := (376856502569467 / 62500000000000 : ℚ)
  oldCenter := (9456858528843499 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_628
  oldLo := (94900000000000007 / 100000000000000000 : ℚ)
  oldHi := (95250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2168, piece_2169]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_7000 : Cell := { cellDefaults with
  r := (41493429497759 / 50000000000000 : ℚ)
  w := (2078339888891 / 2000000000000 : ℚ)
  newCoefficients := coefficients_625
  oldLo := (47250000000000003 / 50000000000000000 : ℚ)
  oldHi := (94650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2160, piece_2161, piece_2162]
}

def cell_7001 : Cell := { cellDefaults with
  domain := ⟨(24174999999999999 / 100000000000000000 : ℚ), (24187499999999999 / 100000000000000000 : ℚ)⟩
  r := (41493429497759 / 50000000000000 : ℚ)
  w := (2078339888891 / 2000000000000 : ℚ)
  center := (24181249999999999 / 100000000000000000 : ℚ)
  supportValue := (9464397617968447 / 10000000000000000 : ℚ)
  supportSlope := (6032784776344613 / 1000000000000000 : ℚ)
  oldCenter := (9464397617968447 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_625
  oldLo := (47300000000000003 / 50000000000000000 : ℚ)
  oldHi := (47350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2162, piece_2163]
}

def cell_7002 : Cell := { cellDefaults with
  domain := ⟨(24187499999999999 / 100000000000000000 : ℚ), (24199999999999999 / 100000000000000000 : ℚ)⟩
  r := (41493429497759 / 50000000000000 : ℚ)
  w := (2078339888891 / 2000000000000 : ℚ)
  center := (24193749999999999 / 100000000000000000 : ℚ)
  supportValue := (947194055330883 / 1000000000000000 : ℚ)
  supportSlope := (1207197934142279 / 200000000000000 : ℚ)
  oldCenter := (947194055330883 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_625
  oldLo := (94650000000000001 / 100000000000000000 : ℚ)
  oldHi := (47400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2163, piece_2164, piece_2165]
}

def cell_7003 : Cell := { cellDefaults with
  domain := ⟨(24199999999999999 / 100000000000000000 : ℚ), (24212499999999999 / 100000000000000000 : ℚ)⟩
  center := (24206249999999999 / 100000000000000000 : ℚ)
  supportValue := (9473809515029121 / 10000000000000000 : ℚ)
  supportSlope := (6034102749282511 / 1000000000000000 : ℚ)
  oldCenter := (9473809515029121 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_626
  oldLo := (47350000000000003 / 50000000000000000 : ℚ)
  oldHi := (47400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2164, piece_2165]
}

def cell_7004 : Cell := { cellDefaults with
  domain := ⟨(24212499999999999 / 100000000000000000 : ℚ), (24218749999999999 / 100000000000000000 : ℚ)⟩
  center := (24215624999999999 / 100000000000000000 : ℚ)
  supportValue := (4739737154164857 / 5000000000000000 : ℚ)
  supportSlope := (6036550744617841 / 1000000000000000 : ℚ)
  oldCenter := (4739737154164857 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_626
  oldLo := (94750000000000001 / 100000000000000000 : ℚ)
  oldHi := (94850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2165, piece_2166]
}

def cell_7005 : Cell := { cellDefaults with
  domain := ⟨(24218749999999999 / 100000000000000000 : ℚ), (24224999999999999 / 100000000000000000 : ℚ)⟩
  center := (24221874999999999 / 100000000000000000 : ℚ)
  supportValue := (4741623791723781 / 5000000000000000 : ℚ)
  supportSlope := (94346647143001 / 15625000000000 : ℚ)
  oldCenter := (4741623791723781 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_626
  oldLo := (47400000000000003 / 50000000000000000 : ℚ)
  oldHi := (94900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2166, piece_2167]
}

def cell_7006 : Cell := { cellDefaults with
  domain := ⟨(24224999999999999 / 100000000000000000 : ℚ), (2422905027932961 / 10000000000000000 : ℚ)⟩
  center := (48454050279329609 / 200000000000000000 : ℚ)
  supportValue := (9486359527747001 / 10000000000000000 : ℚ)
  supportSlope := (6039217716049129 / 1000000000000000 : ℚ)
  oldCenter := (9486359527747001 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_626
  oldLo := (94850000000000001 / 100000000000000000 : ℚ)
  oldHi := (94900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2167]
}

def cell_7007 : Cell := { cellDefaults with
  domain := ⟨(2422905027932961 / 10000000000000000 : ℚ), (96937150837988829 / 400000000000000000 : ℚ)⟩
  center := (193853351955307269 / 800000000000000000 : ℚ)
  supportValue := (4744580914465009 / 5000000000000000 : ℚ)
  supportSlope := (6037896696775511 / 1000000000000000 : ℚ)
  oldCenter := (4744580914465009 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_627
  oldLo := (94850000000000001 / 100000000000000000 : ℚ)
  oldHi := (94950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2167, piece_2168]
}

def cell_7008 : Cell := { cellDefaults with
  domain := ⟨(96937150837988829 / 400000000000000000 : ℚ), (48479050279329609 / 200000000000000000 : ℚ)⟩
  center := (193895251396648047 / 800000000000000000 : ℚ)
  supportValue := (2373081081144089 / 2500000000000000 : ℚ)
  supportSlope := (6038805090209691 / 1000000000000000 : ℚ)
  oldCenter := (2373081081144089 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_627
  oldHi := (94950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2168]
}

def cell_7009 : Cell := { cellDefaults with
  domain := ⟨(48479050279329609 / 200000000000000000 : ℚ), (96979050279329607 / 400000000000000000 : ℚ)⟩
  center := (7757486033519553 / 32000000000000000 : ℚ)
  supportValue := (9495487435325047 / 10000000000000000 : ℚ)
  supportSlope := (6039798339571489 / 1000000000000000 : ℚ)
  oldCenter := (9495487435325047 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_627
  oldHi := (95000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2168, piece_2169]
}

def cell_7010 : Cell := { cellDefaults with
  domain := ⟨(96979050279329607 / 400000000000000000 : ℚ), (24249999999999999 / 100000000000000000 : ℚ)⟩
  center := (193979050279329603 / 800000000000000000 : ℚ)
  supportValue := (4749325494620857 / 5000000000000000 : ℚ)
  supportSlope := (3020485659302969 / 500000000000000 : ℚ)
  oldCenter := (4749325494620857 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_627
  oldLo := (94950000000000001 / 100000000000000000 : ℚ)
  oldHi := (2375558659217877 / 2500000000000000 : ℚ)
  oldPieces := [piece_2169, piece_2170]
}

def cell_7011 : Cell := { cellDefaults with
  domain := ⟨(24249999999999999 / 100000000000000000 : ℚ), (24256249999999999 / 100000000000000000 : ℚ)⟩
  r := (20712416175273 / 25000000000000 : ℚ)
  w := (10397466419793 / 10000000000000 : ℚ)
  center := (24253124999999999 / 100000000000000000 : ℚ)
  supportValue := (4748218291355087 / 5000000000000000 : ℚ)
  supportSlope := (3018473905689767 / 500000000000000 : ℚ)
  oldCenter := (4748218291355087 / 5000000000000000 : ℚ)
  oldHi := (95000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2168, piece_2169]
}

def cell_7012 : Cell := { cellDefaults with
  domain := ⟨(24256249999999999 / 100000000000000000 : ℚ), (24262499999999999 / 100000000000000000 : ℚ)⟩
  r := (20712416175273 / 25000000000000 : ℚ)
  w := (10397466419793 / 10000000000000 : ℚ)
  center := (24259374999999999 / 100000000000000000 : ℚ)
  supportValue := (1187526268382429 / 1250000000000000 : ℚ)
  supportSlope := (6038212220168759 / 1000000000000000 : ℚ)
  oldCenter := (1187526268382429 / 1250000000000000 : ℚ)
  oldLo := (94950000000000001 / 100000000000000000 : ℚ)
  oldHi := (2375558659217877 / 2500000000000000 : ℚ)
  oldPieces := [piece_2169, piece_2170]
}

def cell_7013 : Cell := { cellDefaults with
  domain := ⟨(24262499999999999 / 100000000000000000 : ℚ), (24268749999999999 / 100000000000000000 : ℚ)⟩
  r := (20712416175273 / 25000000000000 : ℚ)
  w := (10397466419793 / 10000000000000 : ℚ)
  center := (24265624999999999 / 100000000000000000 : ℚ)
  supportValue := (2375996093013293 / 2500000000000000 : ℚ)
  supportSlope := (3019737163790559 / 500000000000000 : ℚ)
  oldCenter := (2375996093013293 / 2500000000000000 : ℚ)
  oldLo := (95000000000000007 / 100000000000000000 : ℚ)
  oldHi := (95100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2170, piece_2171, piece_2172]
}

def cell_7014 : Cell := { cellDefaults with
  domain := ⟨(24268749999999999 / 100000000000000000 : ℚ), (24274999999999999 / 100000000000000000 : ℚ)⟩
  r := (20712416175273 / 25000000000000 : ℚ)
  w := (10397466419793 / 10000000000000 : ℚ)
  center := (24271874999999999 / 100000000000000000 : ℚ)
  supportValue := (4753879679773209 / 5000000000000000 : ℚ)
  supportSlope := (12081331708373 / 2000000000000 : ℚ)
  oldCenter := (4753879679773209 / 5000000000000000 : ℚ)
  oldLo := (95050000000000001 / 100000000000000000 : ℚ)
  oldHi := (95100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2172]
}

def cell_7015 : Cell := { cellDefaults with
  domain := ⟨(24274999999999999 / 100000000000000000 : ℚ), (24281249999999999 / 100000000000000000 : ℚ)⟩
  r := (20712416175273 / 25000000000000 : ℚ)
  w := (10397466419793 / 10000000000000 : ℚ)
  center := (24278124999999999 / 100000000000000000 : ℚ)
  supportValue := (9511535136156659 / 10000000000000000 : ℚ)
  supportSlope := (604175166006371 / 100000000000000 : ℚ)
  oldCenter := (9511535136156659 / 10000000000000000 : ℚ)
  oldLo := (95050000000000001 / 100000000000000000 : ℚ)
  oldHi := (95150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2172, piece_2173]
}

def cell_7016 : Cell := { cellDefaults with
  domain := ⟨(24281249999999999 / 100000000000000000 : ℚ), (24287499999999999 / 100000000000000000 : ℚ)⟩
  r := (20712416175273 / 25000000000000 : ℚ)
  w := (10397466419793 / 10000000000000 : ℚ)
  center := (24284374999999999 / 100000000000000000 : ℚ)
  supportValue := (4757655850537411 / 5000000000000000 : ℚ)
  supportSlope := (302150668320067 / 50000000000000 : ℚ)
  oldCenter := (4757655850537411 / 5000000000000000 : ℚ)
  oldLo := (95100000000000007 / 100000000000000000 : ℚ)
  oldHi := (95200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2173, piece_2174]
}

def cell_7017 : Cell := { cellDefaults with
  domain := ⟨(24287499999999999 / 100000000000000000 : ℚ), (24293749999999999 / 100000000000000000 : ℚ)⟩
  r := (20712416175273 / 25000000000000 : ℚ)
  w := (10397466419793 / 10000000000000 : ℚ)
  center := (24290624999999999 / 100000000000000000 : ℚ)
  supportValue := (4759544469872883 / 5000000000000000 : ℚ)
  supportSlope := (3022136889525129 / 500000000000000 : ℚ)
  oldCenter := (4759544469872883 / 5000000000000000 : ℚ)
  oldLo := (95150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2174, piece_2175]
}

def cell_7018 : Cell := { cellDefaults with
  domain := ⟨(24293749999999999 / 100000000000000000 : ℚ), (24299999999999999 / 100000000000000000 : ℚ)⟩
  r := (20712416175273 / 25000000000000 : ℚ)
  w := (10397466419793 / 10000000000000 : ℚ)
  center := (24296874999999999 / 100000000000000000 : ℚ)
  supportValue := (9522866926873179 / 10000000000000000 : ℚ)
  supportSlope := (1209096953660449 / 200000000000000 : ℚ)
  oldCenter := (9522866926873179 / 10000000000000000 : ℚ)
  oldLo := (95200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2175]
}

def cell_7019 : Cell := { cellDefaults with
  domain := ⟨(24299999999999999 / 100000000000000000 : ℚ), (24306249999999999 / 100000000000000000 : ℚ)⟩
  r := (82781288365919 / 100000000000000 : ℚ)
  w := (32501118457 / 31250000000 : ℚ)
  center := (24303124999999999 / 100000000000000000 : ℚ)
  supportValue := (9520954008328737 / 10000000000000000 : ℚ)
  supportSlope := (1510411940076839 / 250000000000000 : ℚ)
  oldCenter := (9520954008328737 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_629
  oldLo := (95150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2174, piece_2175]
}

def cell_7020 : Cell := { cellDefaults with
  domain := ⟨(24306249999999999 / 100000000000000000 : ℚ), (24312499999999999 / 100000000000000000 : ℚ)⟩
  r := (82781288365919 / 100000000000000 : ℚ)
  w := (32501118457 / 31250000000 : ℚ)
  center := (24309374999999999 / 100000000000000000 : ℚ)
  supportValue := (9524730473295001 / 10000000000000000 : ℚ)
  supportSlope := (6042906127001757 / 1000000000000000 : ℚ)
  oldCenter := (9524730473295001 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_629
  oldLo := (95200000000000007 / 100000000000000000 : ℚ)
  oldHi := (95300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2175, piece_2176]
}

def cell_7021 : Cell := { cellDefaults with
  domain := ⟨(24312499999999999 / 100000000000000000 : ℚ), (24318749999999999 / 100000000000000000 : ℚ)⟩
  r := (82781288365919 / 100000000000000 : ℚ)
  w := (32501118457 / 31250000000 : ℚ)
  center := (24315624999999999 / 100000000000000000 : ℚ)
  supportValue := (4764253802503441 / 5000000000000000 : ℚ)
  supportSlope := (6044163192893137 / 1000000000000000 : ℚ)
  oldCenter := (4764253802503441 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_629
  oldLo := (95250000000000001 / 100000000000000000 : ℚ)
  oldHi := (95350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2176, piece_2177]
}

def cell_7022 : Cell := { cellDefaults with
  domain := ⟨(24318749999999999 / 100000000000000000 : ℚ), (24324999999999999 / 100000000000000000 : ℚ)⟩
  r := (82781288365919 / 100000000000000 : ℚ)
  w := (32501118457 / 31250000000 : ℚ)
  center := (24321874999999999 / 100000000000000000 : ℚ)
  supportValue := (190645710452767 / 200000000000000 : ℚ)
  supportSlope := (1209051162164343 / 200000000000000 : ℚ)
  oldCenter := (190645710452767 / 200000000000000 : ℚ)
  newCoefficients := coefficients_629
  oldLo := (95300000000000007 / 100000000000000000 : ℚ)
  oldHi := (95350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2177]
}

def cell_7023 : Cell := { cellDefaults with
  domain := ⟨(24324999999999999 / 100000000000000000 : ℚ), (24331249999999999 / 100000000000000000 : ℚ)⟩
  r := (82781288365919 / 100000000000000 : ℚ)
  w := (32501118457 / 31250000000 : ℚ)
  center := (24328124999999999 / 100000000000000000 : ℚ)
  supportValue := (9536064225429853 / 10000000000000000 : ℚ)
  supportSlope := (6046432867053753 / 1000000000000000 : ℚ)
  oldCenter := (9536064225429853 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_629
  oldLo := (95300000000000007 / 100000000000000000 : ℚ)
  oldHi := (95400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2177, piece_2178]
}

def cell_7024 : Cell := { cellDefaults with
  domain := ⟨(24331249999999999 / 100000000000000000 : ℚ), (24337499999999999 / 100000000000000000 : ℚ)⟩
  r := (82781288365919 / 100000000000000 : ℚ)
  w := (32501118457 / 31250000000 : ℚ)
  center := (24334374999999999 / 100000000000000000 : ℚ)
  supportValue := (9539843693543423 / 10000000000000000 : ℚ)
  supportSlope := (12095376303111749 / 2000000000000000 : ℚ)
  oldCenter := (9539843693543423 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_629
  oldLo := (95350000000000001 / 100000000000000000 : ℚ)
  oldHi := (47725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2178, piece_2179]
}

def cell_7025 : Cell := { cellDefaults with
  domain := ⟨(24337499999999999 / 100000000000000000 : ℚ), (24343749999999999 / 100000000000000000 : ℚ)⟩
  r := (82781288365919 / 100000000000000 : ℚ)
  w := (32501118457 / 31250000000 : ℚ)
  center := (24340624999999999 / 100000000000000000 : ℚ)
  supportValue := (1908724762792179 / 2000000000000000 : ℚ)
  supportSlope := (3024471068817647 / 500000000000000 : ℚ)
  oldCenter := (1908724762792179 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_629
  oldLo := (95400000000000007 / 100000000000000000 : ℚ)
  oldHi := (95500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2179, piece_2180]
}

def cell_7026 : Cell := { cellDefaults with
  domain := ⟨(24343749999999999 / 100000000000000000 : ℚ), (24349999999999999 / 100000000000000000 : ℚ)⟩
  r := (82781288365919 / 100000000000000 : ℚ)
  w := (32501118457 / 31250000000 : ℚ)
  center := (24346874999999999 / 100000000000000000 : ℚ)
  supportValue := (9547404718374113 / 10000000000000000 : ℚ)
  supportSlope := (3025028495250659 / 500000000000000 : ℚ)
  oldCenter := (9547404718374113 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_629
  oldLo := (47725000000000001 / 50000000000000000 : ℚ)
  oldHi := (95500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2180]
}

def cell_7027 : Cell := { cellDefaults with
  domain := ⟨(24349999999999999 / 100000000000000000 : ℚ), (24362499999999999 / 100000000000000000 : ℚ)⟩
  r := (82713056335257 / 100000000000000 : ℚ)
  w := (5201627816021 / 5000000000000 : ℚ)
  center := (24356249999999999 / 100000000000000000 : ℚ)
  supportValue := (298355324205249 / 312500000000000 : ℚ)
  supportSlope := (3023469399435541 / 500000000000000 : ℚ)
  oldCenter := (298355324205249 / 312500000000000 : ℚ)
  newCoefficients := coefficients_630
  oldLo := (95400000000000007 / 100000000000000000 : ℚ)
  oldHi := (47775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2179, piece_2180, piece_2181]
}

def cell_7028 : Cell := { cellDefaults with
  domain := ⟨(24362499999999999 / 100000000000000000 : ℚ), (24374999999999999 / 100000000000000000 : ℚ)⟩
  r := (82713056335257 / 100000000000000 : ℚ)
  w := (5201627816021 / 5000000000000 : ℚ)
  center := (24368749999999999 / 100000000000000000 : ℚ)
  supportValue := (9554930597335877 / 10000000000000000 : ℚ)
  supportSlope := (3024657585395829 / 500000000000000 : ℚ)
  oldCenter := (9554930597335877 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_630
  oldLo := (95500000000000007 / 100000000000000000 : ℚ)
  oldHi := (95600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2181, piece_2182, piece_2183]
}

def cell_7029 : Cell := { cellDefaults with
  domain := ⟨(24374999999999999 / 100000000000000000 : ℚ), (24387499999999999 / 100000000000000000 : ℚ)⟩
  r := (82713056335257 / 100000000000000 : ℚ)
  w := (5201627816021 / 5000000000000 : ℚ)
  center := (24381249999999999 / 100000000000000000 : ℚ)
  supportValue := (4781246826859849 / 5000000000000000 : ℚ)
  supportSlope := (151292504307321 / 25000000000000 : ℚ)
  oldCenter := (4781246826859849 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_630
  oldLo := (9557541899441341 / 10000000000000000 : ℚ)
  oldHi := (95700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2183, piece_2184, piece_2185]
}

def cell_7030 : Cell := { cellDefaults with
  domain := ⟨(24387499999999999 / 100000000000000000 : ℚ), (24399999999999999 / 100000000000000000 : ℚ)⟩
  r := (82713056335257 / 100000000000000 : ℚ)
  w := (5201627816021 / 5000000000000 : ℚ)
  center := (24393749999999999 / 100000000000000000 : ℚ)
  supportValue := (4785029915852977 / 5000000000000000 : ℚ)
  supportSlope := (1513521169154819 / 250000000000000 : ℚ)
  oldCenter := (4785029915852977 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_630
  oldLo := (47825000000000001 / 50000000000000000 : ℚ)
  oldHi := (47875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2185, piece_2186]
}

def cell_7031 : Cell := { cellDefaults with
  domain := ⟨(24399999999999999 / 100000000000000000 : ℚ), (97649999999999997 / 400000000000000000 : ℚ)⟩
  r := (10330621404963 / 12500000000000 : ℚ)
  w := (2081231729267 / 2000000000000 : ℚ)
  center := (195249999999999993 / 800000000000000000 : ℚ)
  supportValue := (1196490129298879 / 1250000000000000 : ℚ)
  supportSlope := (1210312455439653 / 200000000000000 : ℚ)
  oldCenter := (1196490129298879 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_631
  oldLo := (47825000000000001 / 50000000000000000 : ℚ)
  oldHi := (95800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2185, piece_2186, piece_2187]
}

def cell_7032 : Cell := { cellDefaults with
  domain := ⟨(97649999999999997 / 400000000000000000 : ℚ), (48849999999999999 / 200000000000000000 : ℚ)⟩
  r := (10330621404963 / 12500000000000 : ℚ)
  w := (2081231729267 / 2000000000000 : ℚ)
  center := (39069999999999999 / 160000000000000000 : ℚ)
  supportValue := (2394871743810959 / 2500000000000000 : ℚ)
  supportSlope := (30269429811581823 / 5000000000000000 : ℚ)
  oldCenter := (2394871743810959 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_631
  oldLo := (47875000000000001 / 50000000000000000 : ℚ)
  oldHi := (47925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2187, piece_2188]
}

def cell_7033 : Cell := { cellDefaults with
  domain := ⟨(48849999999999999 / 200000000000000000 : ℚ), (97749999999999999 / 400000000000000000 : ℚ)⟩
  r := (10330621404963 / 12500000000000 : ℚ)
  w := (2081231729267 / 2000000000000 : ℚ)
  center := (195449999999999997 / 800000000000000000 : ℚ)
  supportValue := (9587055794400717 / 10000000000000000 : ℚ)
  supportSlope := (6056304408756809 / 1000000000000000 : ℚ)
  oldCenter := (9587055794400717 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_631
  oldLo := (95800000000000007 / 100000000000000000 : ℚ)
  oldHi := (47975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2188, piece_2189, piece_2190]
}

def cell_7034 : Cell := { cellDefaults with
  domain := ⟨(97749999999999999 / 400000000000000000 : ℚ), (489 / 2000 : ℚ)⟩
  r := (10330621404963 / 12500000000000 : ℚ)
  w := (2081231729267 / 2000000000000 : ℚ)
  center := (195549999999999999 / 800000000000000000 : ℚ)
  supportValue := (2398656919072901 / 2500000000000000 : ℚ)
  supportSlope := (378664816020883 / 62500000000000 : ℚ)
  oldCenter := (2398656919072901 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_631
  oldLo := (95900000000000007 / 100000000000000000 : ℚ)
  oldHi := (12000000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2190, piece_2191]
}

def cell_7035 : Cell := { cellDefaults with
  domain := ⟨(489 / 2000 : ℚ), (1957 / 8000 : ℚ)⟩
  r := (8257703060501 / 10000000000000 : ℚ)
  w := (5204533506307 / 5000000000000 : ℚ)
  center := (3913 / 16000 : ℚ)
  supportValue := (9596487095988907 / 10000000000000000 : ℚ)
  supportSlope := (12112299569515983 / 2000000000000000 : ℚ)
  oldCenter := (9596487095988907 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_632
  oldLo := (95900000000000007 / 100000000000000000 : ℚ)
  oldHi := (48025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2190, piece_2191, piece_2192]
}

def cell_7036 : Cell := { cellDefaults with
  domain := ⟨(1957 / 8000 : ℚ), (979 / 4000 : ℚ)⟩
  r := (8257703060501 / 10000000000000 : ℚ)
  w := (5204533506307 / 5000000000000 : ℚ)
  center := (783 / 3200 : ℚ)
  supportValue := (9604058713249031 / 10000000000000000 : ℚ)
  supportSlope := (1514605721056661 / 250000000000000 : ℚ)
  oldCenter := (9604058713249031 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_632
  oldLo := (12000000000000001 / 12500000000000000 : ℚ)
  oldHi := (12012500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2192, piece_2193]
}

def cell_7037 : Cell := { cellDefaults with
  domain := ⟨(979 / 4000 : ℚ), (1959 / 8000 : ℚ)⟩
  r := (8257703060501 / 10000000000000 : ℚ)
  w := (5204533506307 / 5000000000000 : ℚ)
  center := (3917 / 16000 : ℚ)
  supportValue := (961163324816301 / 1000000000000000 : ℚ)
  supportSlope := (6060870521601203 / 1000000000000000 : ℚ)
  oldCenter := (961163324816301 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_632
  oldLo := (48025000000000001 / 50000000000000000 : ℚ)
  oldHi := (12025000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2193, piece_2194, piece_2195, piece_2196]
}

def cell_7038 : Cell := { cellDefaults with
  domain := ⟨(1959 / 8000 : ℚ), (49 / 200 : ℚ)⟩
  r := (8257703060501 / 10000000000000 : ℚ)
  w := (5204533506307 / 5000000000000 : ℚ)
  center := (3919 / 16000 : ℚ)
  supportValue := (4809605390718469 / 5000000000000000 : ℚ)
  supportSlope := (3031577058727919 / 500000000000000 : ℚ)
  oldCenter := (4809605390718469 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_632
  oldLo := (48075000000000001 / 50000000000000000 : ℚ)
  oldHi := (48125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2196, piece_2197]
}

def cell_7039 : Cell := { cellDefaults with
  domain := ⟨(49 / 200 : ℚ), (1961 / 8000 : ℚ)⟩
  r := (20627309177529 / 25000000000000 : ℚ)
  w := (1041198207361 / 1000000000000 : ℚ)
  center := (3921 / 16000 : ℚ)
  supportValue := (1202633690638447 / 1250000000000000 : ℚ)
  supportSlope := (6060687614656501 / 1000000000000000 : ℚ)
  oldCenter := (1202633690638447 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_633
  oldLo := (48075000000000001 / 50000000000000000 : ℚ)
  oldHi := (48125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2196, piece_2197]
}

def cell_7040 : Cell := { cellDefaults with
  domain := ⟨(1961 / 8000 : ℚ), (981 / 4000 : ℚ)⟩
  r := (20627309177529 / 25000000000000 : ℚ)
  w := (1041198207361 / 1000000000000 : ℚ)
  center := (3923 / 16000 : ℚ)
  supportValue := (300895211761803 / 312500000000000 : ℚ)
  supportSlope := (606293867623009 / 100000000000000 : ℚ)
  oldCenter := (300895211761803 / 312500000000000 : ℚ)
  newCoefficients := coefficients_633
  oldLo := (12025000000000001 / 12500000000000000 : ℚ)
  oldHi := (48175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2197, piece_2198, piece_2199]
}

def cell_7041 : Cell := { cellDefaults with
  domain := ⟨(981 / 4000 : ℚ), (1963 / 8000 : ℚ)⟩
  r := (20627309177529 / 25000000000000 : ℚ)
  w := (1041198207361 / 1000000000000 : ℚ)
  center := (157 / 640 : ℚ)
  supportValue := (24090567453747 / 25000000000000 : ℚ)
  supportSlope := (6065400261227261 / 1000000000000000 : ℚ)
  oldCenter := (24090567453747 / 25000000000000 : ℚ)
  newCoefficients := coefficients_633
  oldLo := (12037500000000001 / 12500000000000000 : ℚ)
  oldHi := (48225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2199, piece_2200, piece_2201]
}

def cell_7042 : Cell := { cellDefaults with
  domain := ⟨(1963 / 8000 : ℚ), (491 / 2000 : ℚ)⟩
  r := (20627309177529 / 25000000000000 : ℚ)
  w := (1041198207361 / 1000000000000 : ℚ)
  center := (3927 / 16000 : ℚ)
  supportValue := (385752404981233 / 400000000000000 : ℚ)
  supportSlope := (1213527580365259 / 200000000000000 : ℚ)
  oldCenter := (385752404981233 / 400000000000000 : ℚ)
  newCoefficients := coefficients_633
  oldLo := (12050000000000001 / 12500000000000000 : ℚ)
  oldHi := (12062500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2201, piece_2202]
}

def cell_7043 : Cell := { cellDefaults with
  domain := ⟨(491 / 2000 : ℚ), (983 / 4000 : ℚ)⟩
  r := (82441586668819 / 100000000000000 : ℚ)
  w := (1301862864797 / 1250000000000 : ℚ)
  center := (393 / 1600 : ℚ)
  supportValue := (9649371604373503 / 10000000000000000 : ℚ)
  supportSlope := (6066304130614153 / 1000000000000000 : ℚ)
  oldCenter := (9649371604373503 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_634
  oldLo := (12050000000000001 / 12500000000000000 : ℚ)
  oldHi := (12075000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2201, piece_2202, piece_2203, piece_2204]
}

def cell_7044 : Cell := { cellDefaults with
  domain := ⟨(983 / 4000 : ℚ), (123 / 500 : ℚ)⟩
  r := (82441586668819 / 100000000000000 : ℚ)
  w := (1301862864797 / 1250000000000 : ℚ)
  center := (1967 / 8000 : ℚ)
  supportValue := (4832271541114143 / 5000000000000000 : ℚ)
  supportSlope := (3035494844864539 / 500000000000000 : ℚ)
  oldCenter := (4832271541114143 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_634
  oldLo := (48275000000000001 / 50000000000000000 : ℚ)
  oldHi := (96750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2204, piece_2205, piece_2206, piece_2207, piece_2208]
}

def cell_7045 : Cell := { cellDefaults with
  domain := ⟨(123 / 500 : ℚ), (3937 / 16000 : ℚ)⟩
  branch := .left
  r := (44106298481413 / 50000000000000 : ℚ)
  w := (18694367881099 / 10000000000000 : ℚ)
  center := (7873 / 32000 : ℚ)
  supportValue := (4901048298761453 / 5000000000000000 : ℚ)
  supportSlope := (-15321185527447767 / 2000000000000000 : ℚ)
  oldCenter := (4901048298761453 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_635
  oldLo := (24487500000000001 / 25000000000000000 : ℚ)
  oldHi := (24512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2235, piece_2236]
  nl := 24
}

def cell_7046 : Cell := { cellDefaults with
  domain := ⟨(3937 / 16000 : ℚ), (1969 / 8000 : ℚ)⟩
  branch := .left
  r := (44106298481413 / 50000000000000 : ℚ)
  w := (18694367881099 / 10000000000000 : ℚ)
  center := (63 / 256 : ℚ)
  supportValue := (612321401253643 / 625000000000000 : ℚ)
  supportSlope := (-4096247508408979 / 500000000000000 : ℚ)
  oldCenter := (612321401253643 / 625000000000000 : ℚ)
  newCoefficients := coefficients_635
  oldLo := (97900000000000009 / 100000000000000000 : ℚ)
  oldHi := (48999999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2234, piece_2235]
  nl := 24
}

def cell_7047 : Cell := { cellDefaults with
  domain := ⟨(1969 / 8000 : ℚ), (3939 / 16000 : ℚ)⟩
  branch := .left
  r := (44106298481413 / 50000000000000 : ℚ)
  w := (18694367881099 / 10000000000000 : ℚ)
  center := (7877 / 32000 : ℚ)
  supportValue := (2447963990203701 / 2500000000000000 : ℚ)
  supportSlope := (-2180983521124169 / 250000000000000 : ℚ)
  oldCenter := (2447963990203701 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_635
  oldLo := (24462500000000001 / 25000000000000000 : ℚ)
  oldHi := (24487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2233, piece_2234]
  nl := 24
}

def cell_7048 : Cell := { cellDefaults with
  domain := ⟨(3939 / 16000 : ℚ), (197 / 800 : ℚ)⟩
  branch := .left
  r := (44106298481413 / 50000000000000 : ℚ)
  w := (18694367881099 / 10000000000000 : ℚ)
  center := (7879 / 32000 : ℚ)
  supportValue := (9786237514968081 / 10000000000000000 : ℚ)
  supportSlope := (-4627446155222259 / 500000000000000 : ℚ)
  oldCenter := (9786237514968081 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_635
  oldLo := (97800000000000009 / 100000000000000000 : ℚ)
  oldHi := (97900000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2232, piece_2233]
  nl := 24
}

def cell_7049 : Cell := { cellDefaults with
  domain := ⟨(197 / 800 : ℚ), (3941 / 16000 : ℚ)⟩
  branch := .left
  r := (44106298481413 / 50000000000000 : ℚ)
  w := (18694367881099 / 10000000000000 : ℚ)
  center := (7881 / 32000 : ℚ)
  supportValue := (9780287388764477 / 10000000000000000 : ℚ)
  supportSlope := (-4892675842032901 / 500000000000000 : ℚ)
  oldCenter := (9780287388764477 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_635
  oldLo := (24437500000000001 / 25000000000000000 : ℚ)
  oldHi := (24462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2230, piece_2231, piece_2232]
  nl := 24
}

theorem check_7000 : SourceCertificateFamily.RightNormalized.check cell_7000 = true := by
  decide +kernel

theorem check_7001 : SourceCertificateFamily.RightNormalized.check cell_7001 = true := by
  decide +kernel

theorem check_7002 : SourceCertificateFamily.RightNormalized.check cell_7002 = true := by
  decide +kernel

theorem check_7003 : SourceCertificateFamily.RightNormalized.check cell_7003 = true := by
  decide +kernel

theorem check_7004 : SourceCertificateFamily.RightNormalized.check cell_7004 = true := by
  decide +kernel

theorem check_7005 : SourceCertificateFamily.RightNormalized.check cell_7005 = true := by
  decide +kernel

theorem check_7006 : SourceCertificateFamily.RightNormalized.check cell_7006 = true := by
  decide +kernel

theorem check_7007 : SourceCertificateFamily.RightNormalized.check cell_7007 = true := by
  decide +kernel

theorem check_7008 : SourceCertificateFamily.RightNormalized.check cell_7008 = true := by
  decide +kernel

theorem check_7009 : SourceCertificateFamily.RightNormalized.check cell_7009 = true := by
  decide +kernel

theorem check_7010 : SourceCertificateFamily.RightNormalized.check cell_7010 = true := by
  decide +kernel

theorem check_7011 : SourceCertificateFamily.RightNormalized.check cell_7011 = true := by
  decide +kernel

theorem check_7012 : SourceCertificateFamily.RightNormalized.check cell_7012 = true := by
  decide +kernel

theorem check_7013 : SourceCertificateFamily.RightNormalized.check cell_7013 = true := by
  decide +kernel

theorem check_7014 : SourceCertificateFamily.RightNormalized.check cell_7014 = true := by
  decide +kernel

theorem check_7015 : SourceCertificateFamily.RightNormalized.check cell_7015 = true := by
  decide +kernel

theorem check_7016 : SourceCertificateFamily.RightNormalized.check cell_7016 = true := by
  decide +kernel

theorem check_7017 : SourceCertificateFamily.RightNormalized.check cell_7017 = true := by
  decide +kernel

theorem check_7018 : SourceCertificateFamily.RightNormalized.check cell_7018 = true := by
  decide +kernel

theorem check_7019 : SourceCertificateFamily.RightNormalized.check cell_7019 = true := by
  decide +kernel

theorem check_7020 : SourceCertificateFamily.RightNormalized.check cell_7020 = true := by
  decide +kernel

theorem check_7021 : SourceCertificateFamily.RightNormalized.check cell_7021 = true := by
  decide +kernel

theorem check_7022 : SourceCertificateFamily.RightNormalized.check cell_7022 = true := by
  decide +kernel

theorem check_7023 : SourceCertificateFamily.RightNormalized.check cell_7023 = true := by
  decide +kernel

theorem check_7024 : SourceCertificateFamily.RightNormalized.check cell_7024 = true := by
  decide +kernel

theorem check_7025 : SourceCertificateFamily.RightNormalized.check cell_7025 = true := by
  decide +kernel

theorem check_7026 : SourceCertificateFamily.RightNormalized.check cell_7026 = true := by
  decide +kernel

theorem check_7027 : SourceCertificateFamily.RightNormalized.check cell_7027 = true := by
  decide +kernel

theorem check_7028 : SourceCertificateFamily.RightNormalized.check cell_7028 = true := by
  decide +kernel

theorem check_7029 : SourceCertificateFamily.RightNormalized.check cell_7029 = true := by
  decide +kernel

theorem check_7030 : SourceCertificateFamily.RightNormalized.check cell_7030 = true := by
  decide +kernel

theorem check_7031 : SourceCertificateFamily.RightNormalized.check cell_7031 = true := by
  decide +kernel

theorem check_7032 : SourceCertificateFamily.RightNormalized.check cell_7032 = true := by
  decide +kernel

theorem check_7033 : SourceCertificateFamily.RightNormalized.check cell_7033 = true := by
  decide +kernel

theorem check_7034 : SourceCertificateFamily.RightNormalized.check cell_7034 = true := by
  decide +kernel

theorem check_7035 : SourceCertificateFamily.RightNormalized.check cell_7035 = true := by
  decide +kernel

theorem check_7036 : SourceCertificateFamily.RightNormalized.check cell_7036 = true := by
  decide +kernel

theorem check_7037 : SourceCertificateFamily.RightNormalized.check cell_7037 = true := by
  decide +kernel

theorem check_7038 : SourceCertificateFamily.RightNormalized.check cell_7038 = true := by
  decide +kernel

theorem check_7039 : SourceCertificateFamily.RightNormalized.check cell_7039 = true := by
  decide +kernel

theorem check_7040 : SourceCertificateFamily.RightNormalized.check cell_7040 = true := by
  decide +kernel

theorem check_7041 : SourceCertificateFamily.RightNormalized.check cell_7041 = true := by
  decide +kernel

theorem check_7042 : SourceCertificateFamily.RightNormalized.check cell_7042 = true := by
  decide +kernel

theorem check_7043 : SourceCertificateFamily.RightNormalized.check cell_7043 = true := by
  decide +kernel

theorem check_7044 : SourceCertificateFamily.RightNormalized.check cell_7044 = true := by
  decide +kernel

theorem check_7045 : cell_7045.check = true := by
  decide +kernel

theorem check_7046 : cell_7046.check = true := by
  decide +kernel

theorem check_7047 : cell_7047.check = true := by
  decide +kernel

theorem check_7048 : cell_7048.check = true := by
  decide +kernel

theorem check_7049 : cell_7049.check = true := by
  decide +kernel

def cells : List Cell := [cell_7000, cell_7001, cell_7002, cell_7003, cell_7004, cell_7005, cell_7006, cell_7007, cell_7008, cell_7009, cell_7010, cell_7011, cell_7012, cell_7013, cell_7014, cell_7015, cell_7016, cell_7017, cell_7018, cell_7019, cell_7020, cell_7021, cell_7022, cell_7023, cell_7024, cell_7025, cell_7026, cell_7027, cell_7028, cell_7029, cell_7030, cell_7031, cell_7032, cell_7033, cell_7034, cell_7035, cell_7036, cell_7037, cell_7038, cell_7039, cell_7040, cell_7041, cell_7042, cell_7043, cell_7044, cell_7045, cell_7046, cell_7047, cell_7048, cell_7049]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_7000, SourceCertificateFamily.of_right_checked check_7001, SourceCertificateFamily.of_right_checked check_7002, SourceCertificateFamily.of_right_checked check_7003, SourceCertificateFamily.of_right_checked check_7004, SourceCertificateFamily.of_right_checked check_7005, SourceCertificateFamily.of_right_checked check_7006, SourceCertificateFamily.of_right_checked check_7007, SourceCertificateFamily.of_right_checked check_7008, SourceCertificateFamily.of_right_checked check_7009, SourceCertificateFamily.of_right_checked check_7010, SourceCertificateFamily.of_right_checked check_7011, SourceCertificateFamily.of_right_checked check_7012, SourceCertificateFamily.of_right_checked check_7013, SourceCertificateFamily.of_right_checked check_7014, SourceCertificateFamily.of_right_checked check_7015, SourceCertificateFamily.of_right_checked check_7016, SourceCertificateFamily.of_right_checked check_7017, SourceCertificateFamily.of_right_checked check_7018, SourceCertificateFamily.of_right_checked check_7019, SourceCertificateFamily.of_right_checked check_7020, SourceCertificateFamily.of_right_checked check_7021, SourceCertificateFamily.of_right_checked check_7022, SourceCertificateFamily.of_right_checked check_7023, SourceCertificateFamily.of_right_checked check_7024, SourceCertificateFamily.of_right_checked check_7025, SourceCertificateFamily.of_right_checked check_7026, SourceCertificateFamily.of_right_checked check_7027, SourceCertificateFamily.of_right_checked check_7028, SourceCertificateFamily.of_right_checked check_7029, SourceCertificateFamily.of_right_checked check_7030, SourceCertificateFamily.of_right_checked check_7031, SourceCertificateFamily.of_right_checked check_7032, SourceCertificateFamily.of_right_checked check_7033, SourceCertificateFamily.of_right_checked check_7034, SourceCertificateFamily.of_right_checked check_7035, SourceCertificateFamily.of_right_checked check_7036, SourceCertificateFamily.of_right_checked check_7037, SourceCertificateFamily.of_right_checked check_7038, SourceCertificateFamily.of_right_checked check_7039, SourceCertificateFamily.of_right_checked check_7040, SourceCertificateFamily.of_right_checked check_7041, SourceCertificateFamily.of_right_checked check_7042, SourceCertificateFamily.of_right_checked check_7043, SourceCertificateFamily.of_right_checked check_7044, SourceCertificateFamily.of_checked check_7045, SourceCertificateFamily.of_checked check_7046, SourceCertificateFamily.of_checked check_7047, SourceCertificateFamily.of_checked check_7048, SourceCertificateFamily.of_checked check_7049, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0140
