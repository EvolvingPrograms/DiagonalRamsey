import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0201
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(1747 / 4000 : ℚ), (699 / 1600 : ℚ)⟩
  branch := .left
  r := (66623798137599 / 100000000000000 : ℚ)
  w := (15303184910601 / 10000000000000 : ℚ)
  center := (6989 / 16000 : ℚ)
  supportValue := (395516535735231 / 800000000000000 : ℚ)
  supportSlope := (-2702108943698711 / 1000000000000000 : ℚ)
  oldCenter := (395516535735231 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1052
  oldLo := (9870000000000001 / 20000000000000000 : ℚ)
  oldHi := (9880000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1175]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10050 : Cell := { cellDefaults with
  r := (66664886329663 / 100000000000000 : ℚ)
  w := (191361221889 / 125000000000 : ℚ)
  newCoefficients := coefficients_1051
  oldLo := (9880000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1176, piece_1177]
}

def cell_10051 : Cell := { cellDefaults with
  domain := ⟨(699 / 1600 : ℚ), (6991 / 16000 : ℚ)⟩
  r := (66664886329663 / 100000000000000 : ℚ)
  w := (191361221889 / 125000000000 : ℚ)
  center := (13981 / 32000 : ℚ)
  supportValue := (9882841881961657 / 20000000000000000 : ℚ)
  supportSlope := (-6749992447918629 / 2500000000000000 : ℚ)
  oldCenter := (9882841881961657 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1051
  oldLo := (9880000000000001 / 20000000000000000 : ℚ)
  oldHi := (9890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1176]
}

def cell_10052 : Cell := { cellDefaults with
  domain := ⟨(6991 / 16000 : ℚ), (437 / 1000 : ℚ)⟩
  r := (66664886329663 / 100000000000000 : ℚ)
  w := (191361221889 / 125000000000 : ℚ)
  center := (13983 / 32000 : ℚ)
  supportValue := (49397338430778387 / 100000000000000000 : ℚ)
  supportSlope := (-674733922752413 / 250000000000000 : ℚ)
  oldCenter := (49397338430778387 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1051
  oldHi := (9890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1175, piece_1176]
}

def cell_10053 : Cell := { cellDefaults with
  domain := ⟨(437 / 1000 : ℚ), (6993 / 16000 : ℚ)⟩
  center := (2797 / 6400 : ℚ)
  supportValue := (2472534946904667 / 5000000000000000 : ℚ)
  supportSlope := (-13505791418255697 / 5000000000000000 : ℚ)
  oldCenter := (2472534946904667 / 5000000000000000 : ℚ)
  oldLo := (9880000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1176, piece_1177]
}

def cell_10054 : Cell := { cellDefaults with
  domain := ⟨(6993 / 16000 : ℚ), (3497 / 8000 : ℚ)⟩
  center := (13987 / 32000 : ℚ)
  supportValue := (6179227415873767 / 12500000000000000 : ℚ)
  supportSlope := (-13500094568748011 / 5000000000000000 : ℚ)
  oldCenter := (6179227415873767 / 12500000000000000 : ℚ)
  oldLo := (9880000000000001 / 20000000000000000 : ℚ)
  oldHi := (9890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1176]
}

def cell_10055 : Cell := { cellDefaults with
  domain := ⟨(3497 / 8000 : ℚ), (1749 / 4000 : ℚ)⟩
  center := (1399 / 3200 : ℚ)
  supportValue := (2470427584252899 / 5000000000000000 : ℚ)
  supportSlope := (-13489747157464649 / 5000000000000000 : ℚ)
  oldCenter := (2470427584252899 / 5000000000000000 : ℚ)
  oldHi := (9890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1175, piece_1176]
}

def cell_10056 : Cell := { cellDefaults with
  domain := ⟨(1749 / 4000 : ℚ), (3499 / 8000 : ℚ)⟩
  center := (6997 / 16000 : ℚ)
  supportValue := (4937484181388901 / 10000000000000000 : ℚ)
  supportSlope := (-26954641356935483 / 10000000000000000 : ℚ)
  oldCenter := (4937484181388901 / 10000000000000000 : ℚ)
  oldPieces := [piece_1175]
}

def cell_10057 : Cell := { cellDefaults with
  domain := ⟨(3499 / 8000 : ℚ), (6999 / 16000 : ℚ)⟩
  center := (13997 / 32000 : ℚ)
  supportValue := (24674773798457317 / 50000000000000000 : ℚ)
  supportSlope := (-13467900686947587 / 5000000000000000 : ℚ)
  oldCenter := (24674773798457317 / 50000000000000000 : ℚ)
  oldLo := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1174, piece_1175]
}

def cell_10058 : Cell := { cellDefaults with
  domain := ⟨(6999 / 16000 : ℚ), (7 / 16 : ℚ)⟩
  center := (13999 / 32000 : ℚ)
  supportValue := (2466635771951031 / 5000000000000000 : ℚ)
  supportSlope := (-1346200870332659 / 500000000000000 : ℚ)
  oldCenter := (2466635771951031 / 5000000000000000 : ℚ)
  oldLo := (9860000000000001 / 20000000000000000 : ℚ)
  oldHi := (9870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1174]
}

def cell_10059 : Cell := { cellDefaults with
  domain := ⟨(7 / 16 : ℚ), (7001 / 16000 : ℚ)⟩
  r := (1664569137747 / 2500000000000 : ℚ)
  w := (15297483471273 / 10000000000000 : ℚ)
  center := (14001 / 32000 : ℚ)
  supportValue := (6173244126139267 / 12500000000000000 : ℚ)
  supportSlope := (-26947426049304113 / 10000000000000000 : ℚ)
  oldCenter := (6173244126139267 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1053
  oldPieces := [piece_1175]
}

def cell_10060 : Cell := { cellDefaults with
  domain := ⟨(7001 / 16000 : ℚ), (3501 / 8000 : ℚ)⟩
  r := (1664569137747 / 2500000000000 : ℚ)
  w := (15297483471273 / 10000000000000 : ℚ)
  center := (14003 / 32000 : ℚ)
  supportValue := (24684557750063163 / 50000000000000000 : ℚ)
  supportSlope := (-673314773446787 / 250000000000000 : ℚ)
  oldCenter := (24684557750063163 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1053
  oldPieces := [piece_1175]
}

def cell_10061 : Cell := { cellDefaults with
  domain := ⟨(3501 / 8000 : ℚ), (1751 / 4000 : ℚ)⟩
  r := (1664569137747 / 2500000000000 : ℚ)
  w := (15297483471273 / 10000000000000 : ℚ)
  center := (7003 / 16000 : ℚ)
  supportValue := (12335977417042339 / 25000000000000000 : ℚ)
  supportSlope := (-13457395004872197 / 5000000000000000 : ℚ)
  oldCenter := (12335977417042339 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1053
  oldLo := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1174, piece_1175]
}

def cell_10062 : Cell := { cellDefaults with
  domain := ⟨(1751 / 4000 : ℚ), (3503 / 8000 : ℚ)⟩
  r := (1664569137747 / 2500000000000 : ℚ)
  w := (15297483471273 / 10000000000000 : ℚ)
  center := (1401 / 3200 : ℚ)
  supportValue := (394482256798497 / 800000000000000 : ℚ)
  supportSlope := (-1344424448322279 / 500000000000000 : ℚ)
  oldCenter := (394482256798497 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1053
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173, piece_1174]
}

def cell_10063 : Cell := { cellDefaults with
  domain := ⟨(3503 / 8000 : ℚ), (7007 / 16000 : ℚ)⟩
  r := (1664569137747 / 2500000000000 : ℚ)
  w := (15297483471273 / 10000000000000 : ℚ)
  center := (14013 / 32000 : ℚ)
  supportValue := (24642523796839397 / 50000000000000000 : ℚ)
  supportSlope := (-1343575843650413 / 500000000000000 : ℚ)
  oldCenter := (24642523796839397 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1053
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173]
}

def cell_10064 : Cell := { cellDefaults with
  domain := ⟨(7007 / 16000 : ℚ), (219 / 500 : ℚ)⟩
  r := (1664569137747 / 2500000000000 : ℚ)
  w := (15297483471273 / 10000000000000 : ℚ)
  center := (2803 / 6400 : ℚ)
  supportValue := (6158532189714383 / 12500000000000000 : ℚ)
  supportSlope := (-2685671448793059 / 1000000000000000 : ℚ)
  oldCenter := (6158532189714383 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1053
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173]
}

def cell_10065 : Cell := { cellDefaults with
  domain := ⟨(219 / 500 : ℚ), (7009 / 16000 : ℚ)⟩
  r := (3327089431517 / 5000000000000 : ℚ)
  w := (3058358901491 / 2000000000000 : ℚ)
  center := (14017 / 32000 : ℚ)
  supportValue := (1541292760507537 / 3125000000000000 : ℚ)
  supportSlope := (-26880021882451643 / 10000000000000000 : ℚ)
  oldCenter := (1541292760507537 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1054
  oldLo := (9860000000000001 / 20000000000000000 : ℚ)
  oldHi := (9870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1174]
}

def cell_10066 : Cell := { cellDefaults with
  domain := ⟨(7009 / 16000 : ℚ), (701 / 1600 : ℚ)⟩
  r := (3327089431517 / 5000000000000 : ℚ)
  w := (3058358901491 / 2000000000000 : ℚ)
  center := (14019 / 32000 : ℚ)
  supportValue := (4930457293846153 / 10000000000000000 : ℚ)
  supportSlope := (-4298676319479 / 1600000000000 : ℚ)
  oldCenter := (4930457293846153 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1054
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173, piece_1174]
}

def cell_10067 : Cell := { cellDefaults with
  domain := ⟨(701 / 1600 : ℚ), (1753 / 4000 : ℚ)⟩
  r := (3327089431517 / 5000000000000 : ℚ)
  w := (3058358901491 / 2000000000000 : ℚ)
  center := (7011 / 16000 : ℚ)
  supportValue := (197117706645627 / 400000000000000 : ℚ)
  supportSlope := (-671239311185623 / 250000000000000 : ℚ)
  oldCenter := (197117706645627 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1054
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173]
}

def cell_10068 : Cell := { cellDefaults with
  domain := ⟨(1753 / 4000 : ℚ), (3507 / 8000 : ℚ)⟩
  r := (3327089431517 / 5000000000000 : ℚ)
  w := (3058358901491 / 2000000000000 : ℚ)
  center := (7013 / 16000 : ℚ)
  supportValue := (4924588211461639 / 10000000000000000 : ℚ)
  supportSlope := (-2682410813991787 / 1000000000000000 : ℚ)
  oldCenter := (4924588211461639 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1054
  oldLo := (9840000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1172, piece_1173]
}

def cell_10069 : Cell := { cellDefaults with
  domain := ⟨(3507 / 8000 : ℚ), (1403 / 3200 : ℚ)⟩
  r := (3327089431517 / 5000000000000 : ℚ)
  w := (3058358901491 / 2000000000000 : ℚ)
  center := (14029 / 32000 : ℚ)
  supportValue := (24610354059369613 / 50000000000000000 : ℚ)
  supportSlope := (-335055117645533 / 125000000000000 : ℚ)
  oldCenter := (24610354059369613 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1054
  oldLo := (9840000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1172]
}

def cell_10070 : Cell := { cellDefaults with
  domain := ⟨(1403 / 3200 : ℚ), (877 / 2000 : ℚ)⟩
  r := (3327089431517 / 5000000000000 : ℚ)
  w := (3058358901491 / 2000000000000 : ℚ)
  center := (14031 / 32000 : ℚ)
  supportValue := (3075247498027249 / 6250000000000000 : ℚ)
  supportSlope := (-167446201664867 / 62500000000000 : ℚ)
  oldCenter := (3075247498027249 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1054
  oldLo := (9830000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1171, piece_1172]
}

def cell_10071 : Cell := { cellDefaults with
  domain := ⟨(877 / 2000 : ℚ), (7017 / 16000 : ℚ)⟩
  r := (831260839703 / 1250000000000 : ℚ)
  w := (3057223462803 / 2000000000000 : ℚ)
  center := (14033 / 32000 : ℚ)
  supportValue := (123142367421023 / 250000000000000 : ℚ)
  supportSlope := (-335167906827083 / 125000000000000 : ℚ)
  oldCenter := (123142367421023 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1055
  oldLo := (9840000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1172, piece_1173]
}

def cell_10072 : Cell := { cellDefaults with
  domain := ⟨(7017 / 16000 : ℚ), (3509 / 8000 : ℚ)⟩
  r := (831260839703 / 1250000000000 : ℚ)
  w := (3057223462803 / 2000000000000 : ℚ)
  center := (2807 / 6400 : ℚ)
  supportValue := (49240191134576133 / 100000000000000000 : ℚ)
  supportSlope := (-13402325607776433 / 5000000000000000 : ℚ)
  oldCenter := (49240191134576133 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1055
  oldLo := (9840000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1172]
}

def cell_10073 : Cell := { cellDefaults with
  domain := ⟨(3509 / 8000 : ℚ), (351 / 800 : ℚ)⟩
  r := (831260839703 / 1250000000000 : ℚ)
  w := (3057223462803 / 2000000000000 : ℚ)
  center := (7019 / 16000 : ℚ)
  supportValue := (1230377664662273 / 2500000000000000 : ℚ)
  supportSlope := (-2678286840340327 / 1000000000000000 : ℚ)
  oldCenter := (1230377664662273 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1055
  oldLo := (9830000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1171, piece_1172]
}

def cell_10074 : Cell := { cellDefaults with
  domain := ⟨(351 / 800 : ℚ), (3511 / 8000 : ℚ)⟩
  r := (831260839703 / 1250000000000 : ℚ)
  w := (3057223462803 / 2000000000000 : ℚ)
  center := (7021 / 16000 : ℚ)
  supportValue := (49181642285853483 / 100000000000000000 : ℚ)
  supportSlope := (-5351925867172369 / 2000000000000000 : ℚ)
  oldCenter := (49181642285853483 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1055
  oldLo := (9830000000000001 / 20000000000000000 : ℚ)
  oldHi := (9840000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1171]
}

def cell_10075 : Cell := { cellDefaults with
  domain := ⟨(3511 / 8000 : ℚ), (7023 / 16000 : ℚ)⟩
  r := (831260839703 / 1250000000000 : ℚ)
  w := (3057223462803 / 2000000000000 : ℚ)
  center := (2809 / 6400 : ℚ)
  supportValue := (49156531053581587 / 100000000000000000 : ℚ)
  supportSlope := (-13369136280463323 / 5000000000000000 : ℚ)
  oldCenter := (49156531053581587 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1055
  oldLo := (49117318435754187 / 100000000000000000 : ℚ)
  oldHi := (9840000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1170, piece_1171]
}

def cell_10076 : Cell := { cellDefaults with
  domain := ⟨(7023 / 16000 : ℚ), (439 / 1000 : ℚ)⟩
  r := (831260839703 / 1250000000000 : ℚ)
  w := (3057223462803 / 2000000000000 : ℚ)
  center := (14047 / 32000 : ℚ)
  supportValue := (4913982217114093 / 10000000000000000 : ℚ)
  supportSlope := (-208823490561727 / 78125000000000 : ℚ)
  oldCenter := (4913982217114093 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1055
  oldLo := (49117318435754187 / 100000000000000000 : ℚ)
  oldHi := (9830000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1170]
}

def cell_10077 : Cell := { cellDefaults with
  domain := ⟨(439 / 1000 : ℚ), (281 / 640 : ℚ)⟩
  r := (8307500119979 / 12500000000000 : ℚ)
  w := (7640225939211 / 5000000000000 : ℚ)
  center := (14049 / 32000 : ℚ)
  supportValue := (9838537300981971 / 20000000000000000 : ℚ)
  supportSlope := (-13376046922575213 / 5000000000000000 : ℚ)
  oldCenter := (9838537300981971 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1056
  oldLo := (9830000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1171, piece_1172]
}

def cell_10078 : Cell := { cellDefaults with
  domain := ⟨(281 / 640 : ℚ), (3513 / 8000 : ℚ)⟩
  r := (8307500119979 / 12500000000000 : ℚ)
  w := (7640225939211 / 5000000000000 : ℚ)
  center := (14051 / 32000 : ℚ)
  supportValue := (983519415742493 / 2000000000000000 : ℚ)
  supportSlope := (-534755734984671 / 200000000000000 : ℚ)
  oldCenter := (983519415742493 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1056
  oldLo := (9830000000000001 / 20000000000000000 : ℚ)
  oldHi := (9840000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1171]
}

def cell_10079 : Cell := { cellDefaults with
  domain := ⟨(3513 / 8000 : ℚ), (1757 / 4000 : ℚ)⟩
  r := (8307500119979 / 12500000000000 : ℚ)
  w := (7640225939211 / 5000000000000 : ℚ)
  center := (7027 / 16000 : ℚ)
  supportValue := (24575474421367463 / 50000000000000000 : ℚ)
  supportSlope := (-26718855204990177 / 10000000000000000 : ℚ)
  oldCenter := (24575474421367463 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1056
  oldLo := (49117318435754187 / 100000000000000000 : ℚ)
  oldHi := (9840000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1170, piece_1171]
}

def cell_10080 : Cell := { cellDefaults with
  domain := ⟨(1757 / 4000 : ℚ), (703 / 1600 : ℚ)⟩
  r := (8307500119979 / 12500000000000 : ℚ)
  w := (7640225939211 / 5000000000000 : ℚ)
  center := (7029 / 16000 : ℚ)
  supportValue := (306984778131917 / 625000000000000 : ℚ)
  supportSlope := (-2669293632490799 / 1000000000000000 : ℚ)
  oldCenter := (306984778131917 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1056
  oldLo := (9820000000000001 / 20000000000000000 : ℚ)
  oldHi := (9830000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1169, piece_1170]
}

def cell_10081 : Cell := { cellDefaults with
  domain := ⟨(703 / 1600 : ℚ), (7031 / 16000 : ℚ)⟩
  r := (8307500119979 / 12500000000000 : ℚ)
  w := (7640225939211 / 5000000000000 : ℚ)
  center := (14061 / 32000 : ℚ)
  supportValue := (24546256974432973 / 50000000000000000 : ℚ)
  supportSlope := (-26677183640586577 / 10000000000000000 : ℚ)
  oldCenter := (24546256974432973 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1056
  oldLo := (9810000000000001 / 20000000000000000 : ℚ)
  oldHi := (49117318435754187 / 100000000000000000 : ℚ)
  oldPieces := [piece_1168, piece_1169]
}

def cell_10082 : Cell := { cellDefaults with
  domain := ⟨(7031 / 16000 : ℚ), (879 / 2000 : ℚ)⟩
  r := (8307500119979 / 12500000000000 : ℚ)
  w := (7640225939211 / 5000000000000 : ℚ)
  center := (14063 / 32000 : ℚ)
  supportValue := (9815169017320613 / 20000000000000000 : ℚ)
  supportSlope := (-26662832864641217 / 10000000000000000 : ℚ)
  oldCenter := (9815169017320613 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1056
  oldLo := (9810000000000001 / 20000000000000000 : ℚ)
  oldHi := (9820000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1168]
}

def cell_10083 : Cell := { cellDefaults with
  domain := ⟨(879 / 2000 : ℚ), (3517 / 8000 : ℚ)⟩
  r := (6641919061861 / 10000000000000 : ℚ)
  w := (3818699554239 / 2500000000000 : ℚ)
  center := (7033 / 16000 : ℚ)
  supportValue := (4912028156127601 / 10000000000000000 : ℚ)
  supportSlope := (-2667849745357387 / 1000000000000000 : ℚ)
  oldCenter := (4912028156127601 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1057
  oldLo := (9820000000000001 / 20000000000000000 : ℚ)
  oldHi := (9830000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1169, piece_1170]
}

def cell_10084 : Cell := { cellDefaults with
  domain := ⟨(3517 / 8000 : ℚ), (1759 / 4000 : ℚ)⟩
  r := (6641919061861 / 10000000000000 : ℚ)
  w := (3818699554239 / 2500000000000 : ℚ)
  center := (1407 / 3200 : ℚ)
  supportValue := (9817389697364609 / 20000000000000000 : ℚ)
  supportSlope := (-13327535801836987 / 5000000000000000 : ℚ)
  oldCenter := (9817389697364609 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1057
  oldLo := (9810000000000001 / 20000000000000000 : ℚ)
  oldHi := (49117318435754187 / 100000000000000000 : ℚ)
  oldPieces := [piece_1168, piece_1169]
}

def cell_10085 : Cell := { cellDefaults with
  domain := ⟨(1759 / 4000 : ℚ), (3519 / 8000 : ℚ)⟩
  r := (6641919061861 / 10000000000000 : ℚ)
  w := (3818699554239 / 2500000000000 : ℚ)
  center := (7037 / 16000 : ℚ)
  supportValue := (196214588196823 / 400000000000000 : ℚ)
  supportSlope := (-2662907410321047 / 1000000000000000 : ℚ)
  oldCenter := (196214588196823 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1057
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldHi := (9820000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167, piece_1168]
}

def cell_10086 : Cell := { cellDefaults with
  domain := ⟨(3519 / 8000 : ℚ), (7039 / 16000 : ℚ)⟩
  r := (6641919061861 / 10000000000000 : ℚ)
  w := (3818699554239 / 2500000000000 : ℚ)
  center := (14077 / 32000 : ℚ)
  supportValue := (49028655365222373 / 100000000000000000 : ℚ)
  supportSlope := (-332639138765467 / 125000000000000 : ℚ)
  oldCenter := (49028655365222373 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1057
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldHi := (9810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167]
}

def cell_10087 : Cell := { cellDefaults with
  domain := ⟨(7039 / 16000 : ℚ), (11 / 25 : ℚ)⟩
  r := (6641919061861 / 10000000000000 : ℚ)
  w := (3818699554239 / 2500000000000 : ℚ)
  center := (14079 / 32000 : ℚ)
  supportValue := (4901202797638183 / 10000000000000000 : ℚ)
  supportSlope := (-13298250800097833 / 5000000000000000 : ℚ)
  oldCenter := (4901202797638183 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1057
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldHi := (9810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167]
}

def cell_10088 : Cell := { cellDefaults with
  domain := ⟨(11 / 25 : ℚ), (7041 / 16000 : ℚ)⟩
  r := (66378435523841 / 100000000000000 : ℚ)
  w := (15269155896101 / 10000000000000 : ℚ)
  center := (14081 / 32000 : ℚ)
  supportValue := (2453232328211583 / 5000000000000000 : ℚ)
  supportSlope := (-2661940119095263 / 1000000000000000 : ℚ)
  oldCenter := (2453232328211583 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1058
  oldLo := (9810000000000001 / 20000000000000000 : ℚ)
  oldHi := (9820000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1168]
}

def cell_10089 : Cell := { cellDefaults with
  domain := ⟨(7041 / 16000 : ℚ), (3521 / 8000 : ℚ)⟩
  r := (66378435523841 / 100000000000000 : ℚ)
  w := (15269155896101 / 10000000000000 : ℚ)
  center := (14083 / 32000 : ℚ)
  supportValue := (490480135026989 / 1000000000000000 : ℚ)
  supportSlope := (-26608887332102427 / 10000000000000000 : ℚ)
  oldCenter := (490480135026989 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1058
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldHi := (9820000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167, piece_1168]
}

def cell_10090 : Cell := { cellDefaults with
  domain := ⟨(3521 / 8000 : ℚ), (1761 / 4000 : ℚ)⟩
  r := (66378435523841 / 100000000000000 : ℚ)
  w := (15269155896101 / 10000000000000 : ℚ)
  center := (7043 / 16000 : ℚ)
  supportValue := (24511554954688053 / 50000000000000000 : ℚ)
  supportSlope := (-13294733928002067 / 5000000000000000 : ℚ)
  oldCenter := (24511554954688053 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1058
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldHi := (9810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167]
}

def cell_10091 : Cell := { cellDefaults with
  domain := ⟨(1761 / 4000 : ℚ), (3523 / 8000 : ℚ)⟩
  r := (66378435523841 / 100000000000000 : ℚ)
  w := (15269155896101 / 10000000000000 : ℚ)
  center := (1409 / 3200 : ℚ)
  supportValue := (9797977752108783 / 20000000000000000 : ℚ)
  supportSlope := (-26565604831292333 / 10000000000000000 : ℚ)
  oldCenter := (9797977752108783 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1058
  oldLo := (9790000000000001 / 20000000000000000 : ℚ)
  oldHi := (9810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1166, piece_1167]
}

def cell_10092 : Cell := { cellDefaults with
  domain := ⟨(3523 / 8000 : ℚ), (7047 / 16000 : ℚ)⟩
  r := (66378435523841 / 100000000000000 : ℚ)
  w := (15269155896101 / 10000000000000 : ℚ)
  center := (14093 / 32000 : ℚ)
  supportValue := (9792991653607317 / 20000000000000000 : ℚ)
  supportSlope := (-106179972148297 / 40000000000000 : ℚ)
  oldCenter := (9792991653607317 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1058
  oldLo := (9790000000000001 / 20000000000000000 : ℚ)
  oldHi := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1166]
}

def cell_10093 : Cell := { cellDefaults with
  domain := ⟨(7047 / 16000 : ℚ), (881 / 2000 : ℚ)⟩
  r := (66378435523841 / 100000000000000 : ℚ)
  w := (15269155896101 / 10000000000000 : ℚ)
  center := (2819 / 6400 : ℚ)
  supportValue := (9789674357453837 / 20000000000000000 : ℚ)
  supportSlope := (-26534395806478983 / 10000000000000000 : ℚ)
  oldCenter := (9789674357453837 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1058
  oldLo := (9780000000000001 / 20000000000000000 : ℚ)
  oldHi := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1165, piece_1166]
}

def cell_10094 : Cell := { cellDefaults with
  domain := ⟨(881 / 2000 : ℚ), (7049 / 16000 : ℚ)⟩
  r := (3316886770909 / 5000000000000 : ℚ)
  w := (152635261203 / 100000000000 : ℚ)
  center := (14097 / 32000 : ℚ)
  supportValue := (980017311957887 / 2000000000000000 : ℚ)
  supportSlope := (-26556187844253287 / 10000000000000000 : ℚ)
  oldCenter := (980017311957887 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1059
  oldLo := (9790000000000001 / 20000000000000000 : ℚ)
  oldHi := (9810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1166, piece_1167]
}

def cell_10095 : Cell := { cellDefaults with
  domain := ⟨(7049 / 16000 : ℚ), (141 / 320 : ℚ)⟩
  r := (3316886770909 / 5000000000000 : ℚ)
  w := (152635261203 / 100000000000 : ℚ)
  center := (14099 / 32000 : ℚ)
  supportValue := (391874163695093 / 800000000000000 : ℚ)
  supportSlope := (-13272627795641867 / 5000000000000000 : ℚ)
  oldCenter := (391874163695093 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1059
  oldLo := (9790000000000001 / 20000000000000000 : ℚ)
  oldHi := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1166]
}

def cell_10096 : Cell := { cellDefaults with
  domain := ⟨(141 / 320 : ℚ), (1763 / 4000 : ℚ)⟩
  r := (3316886770909 / 5000000000000 : ℚ)
  w := (152635261203 / 100000000000 : ℚ)
  center := (7051 / 16000 : ℚ)
  supportValue := (48959428797528803 / 100000000000000000 : ℚ)
  supportSlope := (-6631210921699271 / 2500000000000000 : ℚ)
  oldCenter := (48959428797528803 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1059
  oldLo := (9780000000000001 / 20000000000000000 : ℚ)
  oldHi := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1165, piece_1166]
}

def cell_10097 : Cell := { cellDefaults with
  domain := ⟨(1763 / 4000 : ℚ), (3527 / 8000 : ℚ)⟩
  r := (3316886770909 / 5000000000000 : ℚ)
  w := (152635261203 / 100000000000 : ℚ)
  center := (7053 / 16000 : ℚ)
  supportValue := (489262867607363 / 1000000000000000 : ℚ)
  supportSlope := (-2650091927984377 / 1000000000000000 : ℚ)
  oldCenter := (489262867607363 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1059
  oldLo := (9780000000000001 / 20000000000000000 : ℚ)
  oldHi := (9790000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1165]
}

def cell_10098 : Cell := { cellDefaults with
  domain := ⟨(3527 / 8000 : ℚ), (1411 / 3200 : ℚ)⟩
  r := (3316886770909 / 5000000000000 : ℚ)
  w := (152635261203 / 100000000000 : ℚ)
  center := (14109 / 32000 : ℚ)
  supportValue := (12225354531755299 / 25000000000000000 : ℚ)
  supportSlope := (-13240932303659747 / 5000000000000000 : ℚ)
  oldCenter := (12225354531755299 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1059
  oldLo := (9770000000000001 / 20000000000000000 : ℚ)
  oldHi := (9790000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1164, piece_1165]
}

def cell_10099 : Cell := { cellDefaults with
  domain := ⟨(1411 / 3200 : ℚ), (441 / 1000 : ℚ)⟩
  r := (3316886770909 / 5000000000000 : ℚ)
  w := (152635261203 / 100000000000 : ℚ)
  center := (14111 / 32000 : ℚ)
  supportValue := (48884869419523247 / 100000000000000000 : ℚ)
  supportSlope := (-1058848431271997 / 400000000000000 : ℚ)
  oldCenter := (48884869419523247 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1059
  oldLo := (9770000000000001 / 20000000000000000 : ℚ)
  oldHi := (9780000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1164]
}

theorem check_10050 : cell_10050.check = true := by
  decide +kernel

theorem check_10051 : cell_10051.check = true := by
  decide +kernel

theorem check_10052 : cell_10052.check = true := by
  decide +kernel

theorem check_10053 : cell_10053.check = true := by
  decide +kernel

theorem check_10054 : cell_10054.check = true := by
  decide +kernel

theorem check_10055 : cell_10055.check = true := by
  decide +kernel

theorem check_10056 : cell_10056.check = true := by
  decide +kernel

theorem check_10057 : cell_10057.check = true := by
  decide +kernel

theorem check_10058 : cell_10058.check = true := by
  decide +kernel

theorem check_10059 : cell_10059.check = true := by
  decide +kernel

theorem check_10060 : cell_10060.check = true := by
  decide +kernel

theorem check_10061 : cell_10061.check = true := by
  decide +kernel

theorem check_10062 : cell_10062.check = true := by
  decide +kernel

theorem check_10063 : cell_10063.check = true := by
  decide +kernel

theorem check_10064 : cell_10064.check = true := by
  decide +kernel

theorem check_10065 : cell_10065.check = true := by
  decide +kernel

theorem check_10066 : cell_10066.check = true := by
  decide +kernel

theorem check_10067 : cell_10067.check = true := by
  decide +kernel

theorem check_10068 : cell_10068.check = true := by
  decide +kernel

theorem check_10069 : cell_10069.check = true := by
  decide +kernel

theorem check_10070 : cell_10070.check = true := by
  decide +kernel

theorem check_10071 : cell_10071.check = true := by
  decide +kernel

theorem check_10072 : cell_10072.check = true := by
  decide +kernel

theorem check_10073 : cell_10073.check = true := by
  decide +kernel

theorem check_10074 : cell_10074.check = true := by
  decide +kernel

theorem check_10075 : cell_10075.check = true := by
  decide +kernel

theorem check_10076 : cell_10076.check = true := by
  decide +kernel

theorem check_10077 : cell_10077.check = true := by
  decide +kernel

theorem check_10078 : cell_10078.check = true := by
  decide +kernel

theorem check_10079 : cell_10079.check = true := by
  decide +kernel

theorem check_10080 : cell_10080.check = true := by
  decide +kernel

theorem check_10081 : cell_10081.check = true := by
  decide +kernel

theorem check_10082 : cell_10082.check = true := by
  decide +kernel

theorem check_10083 : cell_10083.check = true := by
  decide +kernel

theorem check_10084 : cell_10084.check = true := by
  decide +kernel

theorem check_10085 : cell_10085.check = true := by
  decide +kernel

theorem check_10086 : cell_10086.check = true := by
  decide +kernel

theorem check_10087 : cell_10087.check = true := by
  decide +kernel

theorem check_10088 : cell_10088.check = true := by
  decide +kernel

theorem check_10089 : cell_10089.check = true := by
  decide +kernel

theorem check_10090 : cell_10090.check = true := by
  decide +kernel

theorem check_10091 : cell_10091.check = true := by
  decide +kernel

theorem check_10092 : cell_10092.check = true := by
  decide +kernel

theorem check_10093 : cell_10093.check = true := by
  decide +kernel

theorem check_10094 : cell_10094.check = true := by
  decide +kernel

theorem check_10095 : cell_10095.check = true := by
  decide +kernel

theorem check_10096 : cell_10096.check = true := by
  decide +kernel

theorem check_10097 : cell_10097.check = true := by
  decide +kernel

theorem check_10098 : cell_10098.check = true := by
  decide +kernel

theorem check_10099 : cell_10099.check = true := by
  decide +kernel

def cells : List Cell := [cell_10050, cell_10051, cell_10052, cell_10053, cell_10054, cell_10055, cell_10056, cell_10057, cell_10058, cell_10059, cell_10060, cell_10061, cell_10062, cell_10063, cell_10064, cell_10065, cell_10066, cell_10067, cell_10068, cell_10069, cell_10070, cell_10071, cell_10072, cell_10073, cell_10074, cell_10075, cell_10076, cell_10077, cell_10078, cell_10079, cell_10080, cell_10081, cell_10082, cell_10083, cell_10084, cell_10085, cell_10086, cell_10087, cell_10088, cell_10089, cell_10090, cell_10091, cell_10092, cell_10093, cell_10094, cell_10095, cell_10096, cell_10097, cell_10098, cell_10099]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10050, check_10051, check_10052, check_10053, check_10054, check_10055, check_10056, check_10057, check_10058, check_10059, check_10060, check_10061, check_10062, check_10063, check_10064, check_10065, check_10066, check_10067, check_10068, check_10069, check_10070, check_10071, check_10072, check_10073, check_10074, check_10075, check_10076, check_10077, check_10078, check_10079, check_10080, check_10081, check_10082, check_10083, check_10084, check_10085, check_10086, check_10087, check_10088, check_10089, check_10090, check_10091, check_10092, check_10093, check_10094, check_10095, check_10096, check_10097, check_10098, check_10099, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0201
