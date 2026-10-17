import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0162
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(4987 / 16000 : ℚ), (1247 / 4000 : ℚ)⟩
  branch := .left
  r := (2462112438053 / 3125000000000 : ℚ)
  w := (4288688506059 / 2500000000000 : ℚ)
  center := (399 / 1280 : ℚ)
  supportValue := (7319680165736079 / 10000000000000000 : ℚ)
  supportSlope := (-5569092474562609 / 1000000000000000 : ℚ)
  oldCenter := (7319680165736079 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_779
  oldLo := (36549999999999999 / 50000000000000000 : ℚ)
  oldHi := (18287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1693, piece_1694]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8100 : Cell := { cellDefaults with
  r := (15817681959371 / 20000000000000 : ℚ)
  w := (4300907144377 / 2500000000000 : ℚ)
  newCoefficients := coefficients_778
  oldLo := (18287500000000001 / 25000000000000000 : ℚ)
  oldHi := (18312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1694, piece_1695]
}

def cell_8101 : Cell := { cellDefaults with
  domain := ⟨(1247 / 4000 : ℚ), (4989 / 16000 : ℚ)⟩
  r := (15817681959371 / 20000000000000 : ℚ)
  w := (4300907144377 / 2500000000000 : ℚ)
  center := (9977 / 32000 : ℚ)
  supportValue := (22863143091897 / 31250000000000 : ℚ)
  supportSlope := (-556517757111763 / 100000000000000 : ℚ)
  oldCenter := (22863143091897 / 31250000000000 : ℚ)
  newCoefficients := coefficients_778
  oldHi := (36599999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1693, piece_1694]
}

def cell_8102 : Cell := { cellDefaults with
  domain := ⟨(4989 / 16000 : ℚ), (499 / 1600 : ℚ)⟩
  r := (15817681959371 / 20000000000000 : ℚ)
  w := (4300907144377 / 2500000000000 : ℚ)
  center := (9979 / 32000 : ℚ)
  supportValue := (7312723588778177 / 10000000000000000 : ℚ)
  supportSlope := (-2780699660517527 / 500000000000000 : ℚ)
  oldCenter := (7312723588778177 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_778
  oldPieces := [piece_1693]
}

def cell_8103 : Cell := { cellDefaults with
  domain := ⟨(499 / 1600 : ℚ), (4991 / 16000 : ℚ)⟩
  r := (15817681959371 / 20000000000000 : ℚ)
  w := (4300907144377 / 2500000000000 : ℚ)
  center := (9981 / 32000 : ℚ)
  supportValue := (3654624477156127 / 5000000000000000 : ℚ)
  supportSlope := (-1389390758502529 / 250000000000000 : ℚ)
  oldCenter := (3654624477156127 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_778
  oldLo := (18262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1692, piece_1693]
}

def cell_8104 : Cell := { cellDefaults with
  domain := ⟨(4991 / 16000 : ℚ), (39 / 125 : ℚ)⟩
  r := (15817681959371 / 20000000000000 : ℚ)
  w := (4300907144377 / 2500000000000 : ℚ)
  center := (9983 / 32000 : ℚ)
  supportValue := (3652888348562987 / 5000000000000000 : ℚ)
  supportSlope := (-5553654499276917 / 1000000000000000 : ℚ)
  oldCenter := (3652888348562987 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_778
  oldLo := (36499999999999999 / 50000000000000000 : ℚ)
  oldHi := (36549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1691, piece_1692]
}

def cell_8105 : Cell := { cellDefaults with
  domain := ⟨(39 / 125 : ℚ), (4993 / 16000 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (1997 / 6400 : ℚ)
  supportValue := (1463232617384457 / 2000000000000000 : ℚ)
  supportSlope := (-5561159589014153 / 1000000000000000 : ℚ)
  oldCenter := (1463232617384457 / 2000000000000000 : ℚ)
  oldHi := (36599999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1693, piece_1694]
}

def cell_8106 : Cell := { cellDefaults with
  domain := ⟨(4993 / 16000 : ℚ), (2497 / 8000 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (9987 / 32000 : ℚ)
  supportValue := (3656344257732087 / 5000000000000000 : ℚ)
  supportSlope := (-27786936355376213 / 5000000000000000 : ℚ)
  oldCenter := (3656344257732087 / 5000000000000000 : ℚ)
  oldPieces := [piece_1693]
}

def cell_8107 : Cell := { cellDefaults with
  domain := ⟨(2497 / 8000 : ℚ), (999 / 3200 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (9989 / 32000 : ℚ)
  supportValue := (456826023889009 / 625000000000000 : ℚ)
  supportSlope := (-5553566519239439 / 1000000000000000 : ℚ)
  oldCenter := (456826023889009 / 625000000000000 : ℚ)
  oldLo := (18262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1692, piece_1693]
}

def cell_8108 : Cell := { cellDefaults with
  domain := ⟨(999 / 3200 : ℚ), (1249 / 4000 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (9991 / 32000 : ℚ)
  supportValue := (3652873311123359 / 5000000000000000 : ℚ)
  supportSlope := (-11099337079016891 / 2000000000000000 : ℚ)
  oldCenter := (3652873311123359 / 5000000000000000 : ℚ)
  oldLo := (36499999999999999 / 50000000000000000 : ℚ)
  oldHi := (36549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1691, piece_1692]
}

def cell_8109 : Cell := { cellDefaults with
  domain := ⟨(1249 / 4000 : ℚ), (4997 / 16000 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (9993 / 32000 : ℚ)
  supportValue := (292091169211577 / 400000000000000 : ℚ)
  supportSlope := (-2772923546300987 / 500000000000000 : ℚ)
  oldCenter := (292091169211577 / 400000000000000 : ℚ)
  oldLo := (36499999999999999 / 50000000000000000 : ℚ)
  oldHi := (18262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1691]
}

def cell_8110 : Cell := { cellDefaults with
  domain := ⟨(4997 / 16000 : ℚ), (2499 / 8000 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (1999 / 6400 : ℚ)
  supportValue := (1824703568120751 / 2500000000000000 : ℚ)
  supportSlope := (-554208993822769 / 100000000000000 : ℚ)
  oldCenter := (1824703568120751 / 2500000000000000 : ℚ)
  oldLo := (18237500000000001 / 25000000000000000 : ℚ)
  oldHi := (18262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1690, piece_1691]
}

def cell_8111 : Cell := { cellDefaults with
  domain := ⟨(2499 / 8000 : ℚ), (4999 / 16000 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (9997 / 32000 : ℚ)
  supportValue := (3647675858790879 / 5000000000000000 : ℚ)
  supportSlope := (-5538198414821949 / 1000000000000000 : ℚ)
  oldCenter := (3647675858790879 / 5000000000000000 : ℚ)
  oldLo := (36449999999999999 / 50000000000000000 : ℚ)
  oldHi := (36499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1689, piece_1690]
}

def cell_8112 : Cell := { cellDefaults with
  domain := ⟨(4999 / 16000 : ℚ), (5 / 16 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (9999 / 32000 : ℚ)
  supportValue := (3645945746016051 / 5000000000000000 : ℚ)
  supportSlope := (-110686611582409 / 20000000000000 : ℚ)
  oldCenter := (3645945746016051 / 5000000000000000 : ℚ)
  oldLo := (36449999999999999 / 50000000000000000 : ℚ)
  oldHi := (18237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1689]
}

def cell_8113 : Cell := { cellDefaults with
  domain := ⟨(5 / 16 : ℚ), (5001 / 16000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (10001 / 32000 : ℚ)
  supportValue := (7302246642795927 / 10000000000000000 : ℚ)
  supportSlope := (-5541846593455801 / 1000000000000000 : ℚ)
  oldCenter := (7302246642795927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (36499999999999999 / 50000000000000000 : ℚ)
  oldHi := (18262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1691]
}

def cell_8114 : Cell := { cellDefaults with
  domain := ⟨(5001 / 16000 : ℚ), (2501 / 8000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (10003 / 32000 : ℚ)
  supportValue := (7298784179201551 / 10000000000000000 : ℚ)
  supportSlope := (-27690523220496033 / 5000000000000000 : ℚ)
  oldCenter := (7298784179201551 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (18237500000000001 / 25000000000000000 : ℚ)
  oldHi := (18262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1690, piece_1691]
}

def cell_8115 : Cell := { cellDefaults with
  domain := ⟨(2501 / 8000 : ℚ), (5003 / 16000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (2001 / 6400 : ℚ)
  supportValue := (1459064822858649 / 2000000000000000 : ℚ)
  supportSlope := (-5534223667503113 / 1000000000000000 : ℚ)
  oldCenter := (1459064822858649 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (36449999999999999 / 50000000000000000 : ℚ)
  oldHi := (36499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1689, piece_1690]
}

def cell_8116 : Cell := { cellDefaults with
  domain := ⟨(5003 / 16000 : ℚ), (1251 / 4000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (10007 / 32000 : ℚ)
  supportValue := (1822966592390823 / 2500000000000000 : ℚ)
  supportSlope := (-11060726161645107 / 2000000000000000 : ℚ)
  oldCenter := (1822966592390823 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (36449999999999999 / 50000000000000000 : ℚ)
  oldHi := (18237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1689]
}

def cell_8117 : Cell := { cellDefaults with
  domain := ⟨(1251 / 4000 : ℚ), (1001 / 3200 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (10009 / 32000 : ℚ)
  supportValue := (7288416150616751 / 10000000000000000 : ℚ)
  supportSlope := (-10794295922191 / 1953125000000 : ℚ)
  oldCenter := (7288416150616751 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (18212500000000001 / 25000000000000000 : ℚ)
  oldHi := (18237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1687, piece_1688, piece_1689]
}

def cell_8118 : Cell := { cellDefaults with
  domain := ⟨(1001 / 3200 : ℚ), (2503 / 8000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (10011 / 32000 : ℚ)
  supportValue := (3642479075346603 / 5000000000000000 : ℚ)
  supportSlope := (-5522804816546767 / 1000000000000000 : ℚ)
  oldCenter := (3642479075346603 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (36399999999999999 / 50000000000000000 : ℚ)
  oldHi := (1822486033519553 / 2500000000000000 : ℚ)
  oldPieces := [piece_1686, piece_1687]
}

def cell_8119 : Cell := { cellDefaults with
  domain := ⟨(2503 / 8000 : ℚ), (5007 / 16000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (10013 / 32000 : ℚ)
  supportValue := (728151264115357 / 1000000000000000 : ℚ)
  supportSlope := (-110378641635549 / 20000000000000 : ℚ)
  oldCenter := (728151264115357 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (18187500000000001 / 25000000000000000 : ℚ)
  oldHi := (18212500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1685, piece_1686]
}

def cell_8120 : Cell := { cellDefaults with
  domain := ⟨(5007 / 16000 : ℚ), (313 / 1000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (2003 / 6400 : ℚ)
  supportValue := (11644894965213 / 16000000000000 : ℚ)
  supportSlope := (-1378811355494669 / 250000000000000 : ℚ)
  oldCenter := (11644894965213 / 16000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (18187500000000001 / 25000000000000000 : ℚ)
  oldHi := (36399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1685]
}

def cell_8121 : Cell := { cellDefaults with
  domain := ⟨(313 / 1000 : ℚ), (5009 / 16000 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10017 / 32000 : ℚ)
  supportValue := (728838885701483 / 1000000000000000 : ℚ)
  supportSlope := (-552270861641091 / 100000000000000 : ℚ)
  oldCenter := (728838885701483 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (18212500000000001 / 25000000000000000 : ℚ)
  oldHi := (18237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1687, piece_1688, piece_1689]
}

def cell_8122 : Cell := { cellDefaults with
  domain := ⟨(5009 / 16000 : ℚ), (501 / 1600 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10019 / 32000 : ℚ)
  supportValue := (7284933336197611 / 10000000000000000 : ℚ)
  supportSlope := (-5518842961443227 / 1000000000000000 : ℚ)
  oldCenter := (7284933336197611 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (36399999999999999 / 50000000000000000 : ℚ)
  oldHi := (1822486033519553 / 2500000000000000 : ℚ)
  oldPieces := [piece_1686, piece_1687]
}

def cell_8123 : Cell := { cellDefaults with
  domain := ⟨(501 / 1600 : ℚ), (5011 / 16000 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10021 / 32000 : ℚ)
  supportValue := (910186287751899 / 1250000000000000 : ℚ)
  supportSlope := (-551497925399147 / 100000000000000 : ℚ)
  oldCenter := (910186287751899 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (18187500000000001 / 25000000000000000 : ℚ)
  oldHi := (18212500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1685, piece_1686]
}

def cell_8124 : Cell := { cellDefaults with
  domain := ⟨(5011 / 16000 : ℚ), (1253 / 4000 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10023 / 32000 : ℚ)
  supportValue := (3639019740865923 / 5000000000000000 : ℚ)
  supportSlope := (-2755649514202929 / 500000000000000 : ℚ)
  oldCenter := (3639019740865923 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (18187500000000001 / 25000000000000000 : ℚ)
  oldHi := (36399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1685]
}

def cell_8125 : Cell := { cellDefaults with
  domain := ⟨(1253 / 4000 : ℚ), (5013 / 16000 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (401 / 1280 : ℚ)
  supportValue := (3637298085762641 / 5000000000000000 : ℚ)
  supportSlope := (-5507472832647409 / 1000000000000000 : ℚ)
  oldCenter := (3637298085762641 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (36349999999999999 / 50000000000000000 : ℚ)
  oldHi := (36399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1684, piece_1685]
}

def cell_8126 : Cell := { cellDefaults with
  domain := ⟨(5013 / 16000 : ℚ), (2507 / 8000 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10027 / 32000 : ℚ)
  supportValue := (1817788793354151 / 2500000000000000 : ℚ)
  supportSlope := (-1100723038344853 / 200000000000000 : ℚ)
  oldCenter := (1817788793354151 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (72650000000000003 / 100000000000000000 : ℚ)
  oldHi := (18187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1683, piece_1684]
}

def cell_8127 : Cell := { cellDefaults with
  domain := ⟨(2507 / 8000 : ℚ), (1003 / 3200 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10029 / 32000 : ℚ)
  supportValue := (7267716550345651 / 10000000000000000 : ℚ)
  supportSlope := (-2749948696985527 / 500000000000000 : ℚ)
  oldCenter := (7267716550345651 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (72650000000000003 / 100000000000000000 : ℚ)
  oldHi := (36349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1683]
}

def cell_8128 : Cell := { cellDefaults with
  domain := ⟨(1003 / 3200 : ℚ), (627 / 2000 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10031 / 32000 : ℚ)
  supportValue := (7264280336316447 / 10000000000000000 : ℚ)
  supportSlope := (-2748061393065271 / 500000000000000 : ℚ)
  oldCenter := (7264280336316447 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (36299999999999999 / 50000000000000000 : ℚ)
  oldHi := (36349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1682, piece_1683]
}

def cell_8129 : Cell := { cellDefaults with
  domain := ⟨(627 / 2000 : ℚ), (5017 / 16000 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (10033 / 32000 : ℚ)
  supportValue := (1818643363603979 / 2500000000000000 : ℚ)
  supportSlope := (-5503521064177619 / 1000000000000000 : ℚ)
  oldCenter := (1818643363603979 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (36349999999999999 / 50000000000000000 : ℚ)
  oldHi := (36399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1684, piece_1685]
}

def cell_8130 : Cell := { cellDefaults with
  domain := ⟨(5017 / 16000 : ℚ), (2509 / 8000 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (2007 / 6400 : ℚ)
  supportValue := (7271134924653181 / 10000000000000000 : ℚ)
  supportSlope := (-5499674200486027 / 1000000000000000 : ℚ)
  oldCenter := (7271134924653181 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (72650000000000003 / 100000000000000000 : ℚ)
  oldHi := (18187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1683, piece_1684]
}

def cell_8131 : Cell := { cellDefaults with
  domain := ⟨(2509 / 8000 : ℚ), (5019 / 16000 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (10037 / 32000 : ℚ)
  supportValue := (90846234515409 / 125000000000000 : ℚ)
  supportSlope := (-2747982436082097 / 500000000000000 : ℚ)
  oldCenter := (90846234515409 / 125000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (72650000000000003 / 100000000000000000 : ℚ)
  oldHi := (36349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1683]
}

def cell_8132 : Cell := { cellDefaults with
  domain := ⟨(5019 / 16000 : ℚ), (251 / 800 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (10039 / 32000 : ℚ)
  supportValue := (3632132500063683 / 5000000000000000 : ℚ)
  supportSlope := (-2196881461452449 / 400000000000000 : ℚ)
  oldCenter := (3632132500063683 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (36299999999999999 / 50000000000000000 : ℚ)
  oldHi := (36349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1682, piece_1683]
}

def cell_8133 : Cell := { cellDefaults with
  domain := ⟨(251 / 800 : ℚ), (5021 / 16000 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (10041 / 32000 : ℚ)
  supportValue := (453802098008557 / 625000000000000 : ℚ)
  supportSlope := (-1372090777443269 / 250000000000000 : ℚ)
  oldCenter := (453802098008557 / 625000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (72550000000000003 / 100000000000000000 : ℚ)
  oldHi := (72650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1681, piece_1682]
}

def cell_8134 : Cell := { cellDefaults with
  domain := ⟨(5021 / 16000 : ℚ), (2511 / 8000 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (10043 / 32000 : ℚ)
  supportValue := (7257404471762341 / 10000000000000000 : ℚ)
  supportSlope := (-5484619967383253 / 1000000000000000 : ℚ)
  oldCenter := (7257404471762341 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (72550000000000003 / 100000000000000000 : ℚ)
  oldHi := (36299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1681]
}

def cell_8135 : Cell := { cellDefaults with
  domain := ⟨(2511 / 8000 : ℚ), (5023 / 16000 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (2009 / 6400 : ℚ)
  supportValue := (7253977773754703 / 10000000000000000 : ℚ)
  supportSlope := (-2740453260642539 / 500000000000000 : ℚ)
  oldCenter := (7253977773754703 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (36249999999999999 / 50000000000000000 : ℚ)
  oldHi := (36299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1680, piece_1681]
}

def cell_8136 : Cell := { cellDefaults with
  domain := ⟨(5023 / 16000 : ℚ), (157 / 500 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (10047 / 32000 : ℚ)
  supportValue := (7250553425126993 / 10000000000000000 : ℚ)
  supportSlope := (-5477072289078677 / 1000000000000000 : ℚ)
  oldCenter := (7250553425126993 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (72450000000000003 / 100000000000000000 : ℚ)
  oldHi := (72550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1679, piece_1680]
}

def cell_8137 : Cell := { cellDefaults with
  domain := ⟨(157 / 500 : ℚ), (6280949720670391 / 20000000000000000 : ℚ)⟩
  center := (12560949720670391 / 40000000000000000 : ℚ)
  supportValue := (7261227352881233 / 10000000000000000 : ℚ)
  supportSlope := (-5484813287044279 / 1000000000000000 : ℚ)
  oldCenter := (7261227352881233 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_783
  oldLo := (72550000000000003 / 100000000000000000 : ℚ)
  oldHi := (72650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1681, piece_1682]
}

def cell_8138 : Cell := { cellDefaults with
  domain := ⟨(6280949720670391 / 20000000000000000 : ℚ), (3140949720670391 / 10000000000000000 : ℚ)⟩
  center := (12562849162011173 / 40000000000000000 : ℚ)
  supportValue := (7258623456094003 / 10000000000000000 : ℚ)
  supportSlope := (-5482170141574021 / 1000000000000000 : ℚ)
  oldCenter := (7258623456094003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_783
  oldLo := (72550000000000003 / 100000000000000000 : ℚ)
  oldHi := (36299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1681]
}

def cell_8139 : Cell := { cellDefaults with
  domain := ⟨(3140949720670391 / 10000000000000000 : ℚ), (6282849162011173 / 20000000000000000 : ℚ)⟩
  center := (2512949720670391 / 8000000000000000 : ℚ)
  supportValue := (7256020927053151 / 10000000000000000 : ℚ)
  supportSlope := (-273955932047339 / 50000000000000 : ℚ)
  oldCenter := (7256020927053151 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_783
  oldLo := (36249999999999999 / 50000000000000000 : ℚ)
  oldHi := (36299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1680, piece_1681]
}

def cell_8140 : Cell := { cellDefaults with
  domain := ⟨(6282849162011173 / 20000000000000000 : ℚ), (1570949720670391 / 5000000000000000 : ℚ)⟩
  center := (12566648044692737 / 40000000000000000 : ℚ)
  supportValue := (7253419733740719 / 10000000000000000 : ℚ)
  supportSlope := (-438115271824663 / 80000000000000 : ℚ)
  oldCenter := (7253419733740719 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_783
  oldLo := (36249999999999999 / 50000000000000000 : ℚ)
  oldHi := (72550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1680]
}

def cell_8141 : Cell := { cellDefaults with
  domain := ⟨(1570949720670391 / 5000000000000000 : ℚ), (1257 / 4000 : ℚ)⟩
  center := (3142199720670391 / 10000000000000000 : ℚ)
  supportValue := (3625237971521381 / 5000000000000000 : ℚ)
  supportSlope := (-10946196024768117 / 2000000000000000 : ℚ)
  oldCenter := (3625237971521381 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_784
  oldLo := (72450000000000003 / 100000000000000000 : ℚ)
  oldHi := (72550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1679, piece_1680]
}

def cell_8142 : Cell := { cellDefaults with
  domain := ⟨(1257 / 4000 : ℚ), (5029 / 16000 : ℚ)⟩
  center := (10057 / 32000 : ℚ)
  supportValue := (7247123219381639 / 10000000000000000 : ℚ)
  supportSlope := (-5469406041115121 / 1000000000000000 : ℚ)
  oldCenter := (7247123219381639 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_784
  oldLo := (72450000000000003 / 100000000000000000 : ℚ)
  oldHi := (36249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1679]
}

def cell_8143 : Cell := { cellDefaults with
  domain := ⟨(5029 / 16000 : ℚ), (503 / 1600 : ℚ)⟩
  center := (10059 / 32000 : ℚ)
  supportValue := (1448741200103543 / 2000000000000000 : ℚ)
  supportSlope := (-10931497780660493 / 2000000000000000 : ℚ)
  oldCenter := (1448741200103543 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_784
  oldLo := (36199999999999999 / 50000000000000000 : ℚ)
  oldHi := (36249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1678, piece_1679]
}

def cell_8144 : Cell := { cellDefaults with
  domain := ⟨(503 / 1600 : ℚ), (5031 / 16000 : ℚ)⟩
  center := (10061 / 32000 : ℚ)
  supportValue := (3620145571792513 / 5000000000000000 : ℚ)
  supportSlope := (-1365482747388569 / 250000000000000 : ℚ)
  oldCenter := (3620145571792513 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_784
  oldLo := (72350000000000003 / 100000000000000000 : ℚ)
  oldHi := (72450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1677, piece_1678]
}

def cell_8145 : Cell := { cellDefaults with
  domain := ⟨(5031 / 16000 : ℚ), (629 / 2000 : ℚ)⟩
  center := (10063 / 32000 : ℚ)
  supportValue := (723687855929521 / 1000000000000000 : ℚ)
  supportSlope := (-2729069266502293 / 500000000000000 : ℚ)
  oldCenter := (723687855929521 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_784
  oldLo := (72350000000000003 / 100000000000000000 : ℚ)
  oldHi := (36199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1677]
}

def cell_8146 : Cell := { cellDefaults with
  domain := ⟨(629 / 2000 : ℚ), (5033 / 16000 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (2013 / 6400 : ℚ)
  supportValue := (289884406928673 / 400000000000000 : ℚ)
  supportSlope := (-10930993811896883 / 2000000000000000 : ℚ)
  oldCenter := (289884406928673 / 400000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldLo := (72450000000000003 / 100000000000000000 : ℚ)
  oldHi := (36249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1679]
}

def cell_8147 : Cell := { cellDefaults with
  domain := ⟨(5033 / 16000 : ℚ), (2517 / 8000 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (10067 / 32000 : ℚ)
  supportValue := (28295685130721 / 39062500000000 : ℚ)
  supportSlope := (-2730925610794799 / 500000000000000 : ℚ)
  oldCenter := (28295685130721 / 39062500000000 : ℚ)
  newCoefficients := coefficients_785
  oldLo := (36199999999999999 / 50000000000000000 : ℚ)
  oldHi := (36249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1678, piece_1679]
}

def cell_8148 : Cell := { cellDefaults with
  domain := ⟨(2517 / 8000 : ℚ), (1007 / 3200 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (10069 / 32000 : ℚ)
  supportValue := (7240282970430323 / 10000000000000000 : ℚ)
  supportSlope := (-136451069924437 / 25000000000000 : ℚ)
  oldCenter := (7240282970430323 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldLo := (72350000000000003 / 100000000000000000 : ℚ)
  oldHi := (72450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1677, piece_1678]
}

def cell_8149 : Cell := { cellDefaults with
  domain := ⟨(1007 / 3200 : ℚ), (1259 / 4000 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (10071 / 32000 : ℚ)
  supportValue := (3618436406598863 / 5000000000000000 : ℚ)
  supportSlope := (-1090851834905493 / 200000000000000 : ℚ)
  oldCenter := (3618436406598863 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldLo := (72350000000000003 / 100000000000000000 : ℚ)
  oldHi := (36199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1677]
}

theorem check_8100 : cell_8100.check = true := by
  decide +kernel

theorem check_8101 : cell_8101.check = true := by
  decide +kernel

theorem check_8102 : cell_8102.check = true := by
  decide +kernel

theorem check_8103 : cell_8103.check = true := by
  decide +kernel

theorem check_8104 : cell_8104.check = true := by
  decide +kernel

theorem check_8105 : cell_8105.check = true := by
  decide +kernel

theorem check_8106 : cell_8106.check = true := by
  decide +kernel

theorem check_8107 : cell_8107.check = true := by
  decide +kernel

theorem check_8108 : cell_8108.check = true := by
  decide +kernel

theorem check_8109 : cell_8109.check = true := by
  decide +kernel

theorem check_8110 : cell_8110.check = true := by
  decide +kernel

theorem check_8111 : cell_8111.check = true := by
  decide +kernel

theorem check_8112 : cell_8112.check = true := by
  decide +kernel

theorem check_8113 : cell_8113.check = true := by
  decide +kernel

theorem check_8114 : cell_8114.check = true := by
  decide +kernel

theorem check_8115 : cell_8115.check = true := by
  decide +kernel

theorem check_8116 : cell_8116.check = true := by
  decide +kernel

theorem check_8117 : cell_8117.check = true := by
  decide +kernel

theorem check_8118 : cell_8118.check = true := by
  decide +kernel

theorem check_8119 : cell_8119.check = true := by
  decide +kernel

theorem check_8120 : cell_8120.check = true := by
  decide +kernel

theorem check_8121 : cell_8121.check = true := by
  decide +kernel

theorem check_8122 : cell_8122.check = true := by
  decide +kernel

theorem check_8123 : cell_8123.check = true := by
  decide +kernel

theorem check_8124 : cell_8124.check = true := by
  decide +kernel

theorem check_8125 : cell_8125.check = true := by
  decide +kernel

theorem check_8126 : cell_8126.check = true := by
  decide +kernel

theorem check_8127 : cell_8127.check = true := by
  decide +kernel

theorem check_8128 : cell_8128.check = true := by
  decide +kernel

theorem check_8129 : cell_8129.check = true := by
  decide +kernel

theorem check_8130 : cell_8130.check = true := by
  decide +kernel

theorem check_8131 : cell_8131.check = true := by
  decide +kernel

theorem check_8132 : cell_8132.check = true := by
  decide +kernel

theorem check_8133 : cell_8133.check = true := by
  decide +kernel

theorem check_8134 : cell_8134.check = true := by
  decide +kernel

theorem check_8135 : cell_8135.check = true := by
  decide +kernel

theorem check_8136 : cell_8136.check = true := by
  decide +kernel

theorem check_8137 : cell_8137.check = true := by
  decide +kernel

theorem check_8138 : cell_8138.check = true := by
  decide +kernel

theorem check_8139 : cell_8139.check = true := by
  decide +kernel

theorem check_8140 : cell_8140.check = true := by
  decide +kernel

theorem check_8141 : cell_8141.check = true := by
  decide +kernel

theorem check_8142 : cell_8142.check = true := by
  decide +kernel

theorem check_8143 : cell_8143.check = true := by
  decide +kernel

theorem check_8144 : cell_8144.check = true := by
  decide +kernel

theorem check_8145 : cell_8145.check = true := by
  decide +kernel

theorem check_8146 : cell_8146.check = true := by
  decide +kernel

theorem check_8147 : cell_8147.check = true := by
  decide +kernel

theorem check_8148 : cell_8148.check = true := by
  decide +kernel

theorem check_8149 : cell_8149.check = true := by
  decide +kernel

def cells : List Cell := [cell_8100, cell_8101, cell_8102, cell_8103, cell_8104, cell_8105, cell_8106, cell_8107, cell_8108, cell_8109, cell_8110, cell_8111, cell_8112, cell_8113, cell_8114, cell_8115, cell_8116, cell_8117, cell_8118, cell_8119, cell_8120, cell_8121, cell_8122, cell_8123, cell_8124, cell_8125, cell_8126, cell_8127, cell_8128, cell_8129, cell_8130, cell_8131, cell_8132, cell_8133, cell_8134, cell_8135, cell_8136, cell_8137, cell_8138, cell_8139, cell_8140, cell_8141, cell_8142, cell_8143, cell_8144, cell_8145, cell_8146, cell_8147, cell_8148, cell_8149]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8100, check_8101, check_8102, check_8103, check_8104, check_8105, check_8106, check_8107, check_8108, check_8109, check_8110, check_8111, check_8112, check_8113, check_8114, check_8115, check_8116, check_8117, check_8118, check_8119, check_8120, check_8121, check_8122, check_8123, check_8124, check_8125, check_8126, check_8127, check_8128, check_8129, check_8130, check_8131, check_8132, check_8133, check_8134, check_8135, check_8136, check_8137, check_8138, check_8139, check_8140, check_8141, check_8142, check_8143, check_8144, check_8145, check_8146, check_8147, check_8148, check_8149, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0162

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0162
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0162
open AnalyticBounds.ExpressionCertificate

theorem linked_8100 : Linked cell_8100 pieces := by
  refine ⟨piece_778,piece_778_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8100,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1694_mem
    · exact piece_1695_mem

theorem linked_8101 : Linked cell_8101 pieces := by
  refine ⟨piece_778,piece_778_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8101,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1693_mem
    · exact piece_1694_mem

theorem linked_8102 : Linked cell_8102 pieces := by
  refine ⟨piece_778,piece_778_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8102,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1693_mem

theorem linked_8103 : Linked cell_8103 pieces := by
  refine ⟨piece_778,piece_778_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8103,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1692_mem
    · exact piece_1693_mem

theorem linked_8104 : Linked cell_8104 pieces := by
  refine ⟨piece_778,piece_778_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8104,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1691_mem
    · exact piece_1692_mem

theorem linked_8105 : Linked cell_8105 pieces := by
  refine ⟨piece_779,piece_779_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8105,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1693_mem
    · exact piece_1694_mem

theorem linked_8106 : Linked cell_8106 pieces := by
  refine ⟨piece_779,piece_779_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8106,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1693_mem

theorem linked_8107 : Linked cell_8107 pieces := by
  refine ⟨piece_779,piece_779_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8107,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1692_mem
    · exact piece_1693_mem

theorem linked_8108 : Linked cell_8108 pieces := by
  refine ⟨piece_779,piece_779_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8108,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1691_mem
    · exact piece_1692_mem

theorem linked_8109 : Linked cell_8109 pieces := by
  refine ⟨piece_779,piece_779_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8109,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1691_mem

theorem linked_8110 : Linked cell_8110 pieces := by
  refine ⟨piece_779,piece_779_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8110,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1690_mem
    · exact piece_1691_mem

theorem linked_8111 : Linked cell_8111 pieces := by
  refine ⟨piece_779,piece_779_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8111,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1689_mem
    · exact piece_1690_mem

theorem linked_8112 : Linked cell_8112 pieces := by
  refine ⟨piece_779,piece_779_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8112,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1689_mem

theorem linked_8113 : Linked cell_8113 pieces := by
  refine ⟨piece_780,piece_780_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8113,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1691_mem

theorem linked_8114 : Linked cell_8114 pieces := by
  refine ⟨piece_780,piece_780_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8114,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1690_mem
    · exact piece_1691_mem

theorem linked_8115 : Linked cell_8115 pieces := by
  refine ⟨piece_780,piece_780_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8115,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1689_mem
    · exact piece_1690_mem

theorem linked_8116 : Linked cell_8116 pieces := by
  refine ⟨piece_780,piece_780_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8116,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1689_mem

theorem linked_8117 : Linked cell_8117 pieces := by
  refine ⟨piece_780,piece_780_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8117,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1687_mem
    · exact piece_1688_mem
    · exact piece_1689_mem

theorem linked_8118 : Linked cell_8118 pieces := by
  refine ⟨piece_780,piece_780_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8118,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1686_mem
    · exact piece_1687_mem

theorem linked_8119 : Linked cell_8119 pieces := by
  refine ⟨piece_780,piece_780_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8119,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1685_mem
    · exact piece_1686_mem

theorem linked_8120 : Linked cell_8120 pieces := by
  refine ⟨piece_780,piece_780_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8120,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1685_mem

theorem linked_8121 : Linked cell_8121 pieces := by
  refine ⟨piece_781,piece_781_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8121,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1687_mem
    · exact piece_1688_mem
    · exact piece_1689_mem

theorem linked_8122 : Linked cell_8122 pieces := by
  refine ⟨piece_781,piece_781_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8122,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1686_mem
    · exact piece_1687_mem

theorem linked_8123 : Linked cell_8123 pieces := by
  refine ⟨piece_781,piece_781_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8123,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1685_mem
    · exact piece_1686_mem

theorem linked_8124 : Linked cell_8124 pieces := by
  refine ⟨piece_781,piece_781_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8124,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1685_mem

theorem linked_8125 : Linked cell_8125 pieces := by
  refine ⟨piece_781,piece_781_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8125,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1684_mem
    · exact piece_1685_mem

theorem linked_8126 : Linked cell_8126 pieces := by
  refine ⟨piece_781,piece_781_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8126,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1683_mem
    · exact piece_1684_mem

theorem linked_8127 : Linked cell_8127 pieces := by
  refine ⟨piece_781,piece_781_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8127,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1683_mem

theorem linked_8128 : Linked cell_8128 pieces := by
  refine ⟨piece_781,piece_781_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8128,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1682_mem
    · exact piece_1683_mem

theorem linked_8129 : Linked cell_8129 pieces := by
  refine ⟨piece_782,piece_782_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8129,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1684_mem
    · exact piece_1685_mem

theorem linked_8130 : Linked cell_8130 pieces := by
  refine ⟨piece_782,piece_782_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8130,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1683_mem
    · exact piece_1684_mem

theorem linked_8131 : Linked cell_8131 pieces := by
  refine ⟨piece_782,piece_782_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8131,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1683_mem

theorem linked_8132 : Linked cell_8132 pieces := by
  refine ⟨piece_782,piece_782_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8132,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1682_mem
    · exact piece_1683_mem

theorem linked_8133 : Linked cell_8133 pieces := by
  refine ⟨piece_782,piece_782_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8133,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1681_mem
    · exact piece_1682_mem

theorem linked_8134 : Linked cell_8134 pieces := by
  refine ⟨piece_782,piece_782_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8134,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1681_mem

theorem linked_8135 : Linked cell_8135 pieces := by
  refine ⟨piece_782,piece_782_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8135,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1680_mem
    · exact piece_1681_mem

theorem linked_8136 : Linked cell_8136 pieces := by
  refine ⟨piece_782,piece_782_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8136,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1679_mem
    · exact piece_1680_mem

theorem linked_8137 : Linked cell_8137 pieces := by
  refine ⟨piece_783,piece_783_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8137,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1681_mem
    · exact piece_1682_mem

theorem linked_8138 : Linked cell_8138 pieces := by
  refine ⟨piece_783,piece_783_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8138,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1681_mem

theorem linked_8139 : Linked cell_8139 pieces := by
  refine ⟨piece_783,piece_783_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8139,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1680_mem
    · exact piece_1681_mem

theorem linked_8140 : Linked cell_8140 pieces := by
  refine ⟨piece_783,piece_783_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8140,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1680_mem

theorem linked_8141 : Linked cell_8141 pieces := by
  refine ⟨piece_784,piece_784_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8141,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1679_mem
    · exact piece_1680_mem

theorem linked_8142 : Linked cell_8142 pieces := by
  refine ⟨piece_784,piece_784_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8142,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1679_mem

theorem linked_8143 : Linked cell_8143 pieces := by
  refine ⟨piece_784,piece_784_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8143,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1678_mem
    · exact piece_1679_mem

theorem linked_8144 : Linked cell_8144 pieces := by
  refine ⟨piece_784,piece_784_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8144,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1677_mem
    · exact piece_1678_mem

theorem linked_8145 : Linked cell_8145 pieces := by
  refine ⟨piece_784,piece_784_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8145,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1677_mem

theorem linked_8146 : Linked cell_8146 pieces := by
  refine ⟨piece_785,piece_785_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8146,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1679_mem

theorem linked_8147 : Linked cell_8147 pieces := by
  refine ⟨piece_785,piece_785_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8147,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1678_mem
    · exact piece_1679_mem

theorem linked_8148 : Linked cell_8148 pieces := by
  refine ⟨piece_785,piece_785_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8148,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1677_mem
    · exact piece_1678_mem

theorem linked_8149 : Linked cell_8149 pieces := by
  refine ⟨piece_785,piece_785_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8149,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1677_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0162.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0162.cells,List.forall_mem_cons]
  exact ⟨linked_8100, linked_8101, linked_8102, linked_8103, linked_8104, linked_8105, linked_8106, linked_8107, linked_8108, linked_8109, linked_8110, linked_8111, linked_8112, linked_8113, linked_8114, linked_8115, linked_8116, linked_8117, linked_8118, linked_8119, linked_8120, linked_8121, linked_8122, linked_8123, linked_8124, linked_8125, linked_8126, linked_8127, linked_8128, linked_8129, linked_8130, linked_8131, linked_8132, linked_8133, linked_8134, linked_8135, linked_8136, linked_8137, linked_8138, linked_8139, linked_8140, linked_8141, linked_8142, linked_8143, linked_8144, linked_8145, linked_8146, linked_8147, linked_8148, linked_8149, by simp⟩

theorem covered : covers (4987 / 16000 : ℚ) (1259 / 4000 : ℚ)
    (SourceCertificates.Chunk0162.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0162
