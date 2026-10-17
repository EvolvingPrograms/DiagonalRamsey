import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0123
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(6031 / 32000 : ℚ), (377 / 2000 : ℚ)⟩
  branch := .right
  r := (91203428258679 / 100000000000000 : ℚ)
  w := (1263724010027 / 1250000000000 : ℚ)
  center := (12063 / 64000 : ℚ)
  supportValue := (6975049231109701 / 10000000000000000 : ℚ)
  supportSlope := (5419410871720487 / 1000000000000000 : ℚ)
  oldCenter := (6975049231109701 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_510
  oldLo := (70150000000000001 / 100000000000000000 : ℚ)
  oldHi := (70000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1629]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6150 : Cell := { cellDefaults with
  r := (45645658158187 / 50000000000000 : ℚ)
  w := (2526904569411 / 2500000000000 : ℚ)
  newCoefficients := coefficients_509
  oldLo := (34850000000000003 / 50000000000000000 : ℚ)
  oldHi := (34900000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1619, piece_1620]
}

def cell_6151 : Cell := { cellDefaults with
  domain := ⟨(377 / 2000 : ℚ), (6033 / 32000 : ℚ)⟩
  center := (2413 / 12800 : ℚ)
  supportValue := (3485951806273909 / 5000000000000000 : ℚ)
  supportSlope := (270764389588507 / 50000000000000 : ℚ)
  oldCenter := (3485951806273909 / 5000000000000000 : ℚ)
  oldLo := (34850000000000003 / 50000000000000000 : ℚ)
  oldHi := (69750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1619]
}

def cell_6152 : Cell := { cellDefaults with
  domain := ⟨(6033 / 32000 : ℚ), (3017 / 16000 : ℚ)⟩
  center := (12067 / 64000 : ℚ)
  supportValue := (6973596012972929 / 10000000000000000 : ℚ)
  supportSlope := (10832152118318561 / 2000000000000000 : ℚ)
  oldCenter := (6973596012972929 / 10000000000000000 : ℚ)
  oldLo := (34850000000000003 / 50000000000000000 : ℚ)
  oldHi := (69750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1619]
}

def cell_6153 : Cell := { cellDefaults with
  domain := ⟨(3017 / 16000 : ℚ), (1509 / 8000 : ℚ)⟩
  center := (1207 / 6400 : ℚ)
  supportValue := (1744033394022709 / 2500000000000000 : ℚ)
  supportSlope := (5416843108559277 / 1000000000000000 : ℚ)
  oldCenter := (1744033394022709 / 2500000000000000 : ℚ)
  oldLo := (34850000000000003 / 50000000000000000 : ℚ)
  oldHi := (34900000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1619, piece_1620]
}

def cell_6154 : Cell := { cellDefaults with
  domain := ⟨(1509 / 8000 : ℚ), (3019 / 16000 : ℚ)⟩
  center := (6037 / 32000 : ℚ)
  supportValue := (6979519543366399 / 10000000000000000 : ℚ)
  supportSlope := (5418159038317327 / 1000000000000000 : ℚ)
  oldCenter := (6979519543366399 / 10000000000000000 : ℚ)
  oldLo := (69750000000000001 / 100000000000000000 : ℚ)
  oldHi := (69850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1620, piece_1621]
}

def cell_6155 : Cell := { cellDefaults with
  domain := ⟨(3019 / 16000 : ℚ), (151 / 800 : ℚ)⟩
  center := (6039 / 32000 : ℚ)
  supportValue := (6982906228883009 / 10000000000000000 : ℚ)
  supportSlope := (1354853990350957 / 250000000000000 : ℚ)
  oldCenter := (6982906228883009 / 10000000000000000 : ℚ)
  oldLo := (34900000000000003 / 50000000000000000 : ℚ)
  oldHi := (69850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1621]
}

def cell_6156 : Cell := { cellDefaults with
  domain := ⟨(151 / 800 : ℚ), (3021 / 16000 : ℚ)⟩
  center := (6041 / 32000 : ℚ)
  supportValue := (6986293736488167 / 10000000000000000 : ℚ)
  supportSlope := (10841105924551897 / 2000000000000000 : ℚ)
  oldCenter := (6986293736488167 / 10000000000000000 : ℚ)
  oldLo := (34900000000000003 / 50000000000000000 : ℚ)
  oldHi := (69900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1621, piece_1622]
}

def cell_6157 : Cell := { cellDefaults with
  domain := ⟨(3021 / 16000 : ℚ), (1511 / 8000 : ℚ)⟩
  center := (6043 / 32000 : ℚ)
  supportValue := (6989682036578313 / 10000000000000000 : ℚ)
  supportSlope := (10843734471457367 / 2000000000000000 : ℚ)
  oldCenter := (6989682036578313 / 10000000000000000 : ℚ)
  oldLo := (69850000000000001 / 100000000000000000 : ℚ)
  oldHi := (69950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1622, piece_1623]
}

def cell_6158 : Cell := { cellDefaults with
  domain := ⟨(1511 / 8000 : ℚ), (3023 / 16000 : ℚ)⟩
  center := (1209 / 6400 : ℚ)
  supportValue := (1398614207889839 / 2000000000000000 : ℚ)
  supportSlope := (10846293488253167 / 2000000000000000 : ℚ)
  oldCenter := (1398614207889839 / 2000000000000000 : ℚ)
  oldLo := (69900000000000007 / 100000000000000000 : ℚ)
  oldHi := (69950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1623]
}

def cell_6159 : Cell := { cellDefaults with
  domain := ⟨(3023 / 16000 : ℚ), (6047 / 32000 : ℚ)⟩
  center := (12093 / 64000 : ℚ)
  supportValue := (1399122951648137 / 2000000000000000 : ℚ)
  supportSlope := (10847798416165233 / 2000000000000000 : ℚ)
  oldCenter := (1399122951648137 / 2000000000000000 : ℚ)
  oldLo := (69900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1623, piece_1624]
}

def cell_6160 : Cell := { cellDefaults with
  domain := ⟨(6047 / 32000 : ℚ), (189 / 1000 : ℚ)⟩
  center := (2419 / 12800 : ℚ)
  supportValue := (3498654914120823 / 5000000000000000 : ℚ)
  supportSlope := (1084923547217187 / 200000000000000 : ℚ)
  oldCenter := (3498654914120823 / 5000000000000000 : ℚ)
  oldLo := (69950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1624]
}

def cell_6161 : Cell := { cellDefaults with
  domain := ⟨(189 / 1000 : ℚ), (6049 / 32000 : ℚ)⟩
  r := (3644630468121 / 4000000000000 : ℚ)
  w := (10111977246149 / 10000000000000 : ℚ)
  center := (12097 / 64000 : ℚ)
  supportValue := (6994159816201153 / 10000000000000000 : ℚ)
  supportSlope := (5420726277321819 / 1000000000000000 : ℚ)
  oldCenter := (6994159816201153 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_511
  oldLo := (69900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1623, piece_1624]
}

def cell_6162 : Cell := { cellDefaults with
  domain := ⟨(6049 / 32000 : ℚ), (121 / 640 : ℚ)⟩
  r := (3644630468121 / 4000000000000 : ℚ)
  w := (10111977246149 / 10000000000000 : ℚ)
  center := (12099 / 64000 : ℚ)
  supportValue := (349792691927891 / 500000000000000 : ℚ)
  supportSlope := (1355254981448617 / 250000000000000 : ℚ)
  oldCenter := (349792691927891 / 500000000000000 : ℚ)
  newCoefficients := coefficients_511
  oldLo := (69950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1624]
}

def cell_6163 : Cell := { cellDefaults with
  domain := ⟨(121 / 640 : ℚ), (1513 / 8000 : ℚ)⟩
  r := (3644630468121 / 4000000000000 : ℚ)
  w := (10111977246149 / 10000000000000 : ℚ)
  center := (6051 / 32000 : ℚ)
  supportValue := (6998393818175177 / 10000000000000000 : ℚ)
  supportSlope := (67777329846197 / 12500000000000 : ℚ)
  oldCenter := (6998393818175177 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_511
  oldLo := (69950000000000001 / 100000000000000000 : ℚ)
  oldHi := (70050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1624, piece_1625]
}

def cell_6164 : Cell := { cellDefaults with
  domain := ⟨(1513 / 8000 : ℚ), (3027 / 16000 : ℚ)⟩
  r := (3644630468121 / 4000000000000 : ℚ)
  w := (10111977246149 / 10000000000000 : ℚ)
  center := (6053 / 32000 : ℚ)
  supportValue := (700178302052039 / 1000000000000000 : ℚ)
  supportSlope := (2711638669611993 / 500000000000000 : ℚ)
  oldCenter := (700178302052039 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_511
  oldLo := (70000000000000007 / 100000000000000000 : ℚ)
  oldHi := (70050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1625]
}

def cell_6165 : Cell := { cellDefaults with
  domain := ⟨(3027 / 16000 : ℚ), (757 / 4000 : ℚ)⟩
  r := (3644630468121 / 4000000000000 : ℚ)
  w := (10111977246149 / 10000000000000 : ℚ)
  center := (1211 / 6400 : ℚ)
  supportValue := (3502586521613747 / 5000000000000000 : ℚ)
  supportSlope := (5424576705269857 / 1000000000000000 : ℚ)
  oldCenter := (3502586521613747 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_511
  oldLo := (70000000000000007 / 100000000000000000 : ℚ)
  oldHi := (70100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1625, piece_1626]
}

def cell_6166 : Cell := { cellDefaults with
  domain := ⟨(757 / 4000 : ℚ), (3029 / 16000 : ℚ)⟩
  r := (3644630468121 / 4000000000000 : ℚ)
  w := (10111977246149 / 10000000000000 : ℚ)
  center := (6057 / 32000 : ℚ)
  supportValue := (7008563755193143 / 10000000000000000 : ℚ)
  supportSlope := (8477950803501 / 1562500000000 : ℚ)
  oldCenter := (7008563755193143 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_511
  oldLo := (70050000000000001 / 100000000000000000 : ℚ)
  oldHi := (140268156424581 / 200000000000000 : ℚ)
  oldPieces := [piece_1626, piece_1627]
}

def cell_6167 : Cell := { cellDefaults with
  domain := ⟨(3029 / 16000 : ℚ), (303 / 1600 : ℚ)⟩
  r := (3644630468121 / 4000000000000 : ℚ)
  w := (10111977246149 / 10000000000000 : ℚ)
  center := (6059 / 32000 : ℚ)
  supportValue := (1402391054217367 / 2000000000000000 : ℚ)
  supportSlope := (2713501702614529 / 500000000000000 : ℚ)
  oldCenter := (1402391054217367 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_511
  oldLo := (70100000000000007 / 100000000000000000 : ℚ)
  oldHi := (70150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1627, piece_1628]
}

def cell_6168 : Cell := { cellDefaults with
  domain := ⟨(303 / 1600 : ℚ), (3031 / 16000 : ℚ)⟩
  r := (3644630468121 / 4000000000000 : ℚ)
  w := (10111977246149 / 10000000000000 : ℚ)
  center := (6061 / 32000 : ℚ)
  supportValue := (7015347605917757 / 10000000000000000 : ℚ)
  supportSlope := (217131005007829 / 40000000000000 : ℚ)
  oldCenter := (7015347605917757 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_511
  oldLo := (140268156424581 / 200000000000000 : ℚ)
  oldHi := (70200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1628, piece_1629]
}

def cell_6169 : Cell := { cellDefaults with
  domain := ⟨(3031 / 16000 : ℚ), (6063 / 32000 : ℚ)⟩
  r := (3644630468121 / 4000000000000 : ℚ)
  w := (10111977246149 / 10000000000000 : ℚ)
  center := (97 / 512 : ℚ)
  supportValue := (7017893696803231 / 10000000000000000 : ℚ)
  supportSlope := (5429256793437531 / 1000000000000000 : ℚ)
  oldCenter := (7017893696803231 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_511
  oldHi := (70200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1629]
}

def cell_6170 : Cell := { cellDefaults with
  domain := ⟨(6063 / 32000 : ℚ), (379 / 2000 : ℚ)⟩
  r := (3644630468121 / 4000000000000 : ℚ)
  w := (10111977246149 / 10000000000000 : ℚ)
  center := (12127 / 64000 : ℚ)
  supportValue := (7019590462091169 / 10000000000000000 : ℚ)
  supportSlope := (10859828329593313 / 2000000000000000 : ℚ)
  oldCenter := (7019590462091169 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_511
  oldHi := (70250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1629, piece_1630]
}

def cell_6171 : Cell := { cellDefaults with
  domain := ⟨(379 / 2000 : ℚ), (1213 / 6400 : ℚ)⟩
  r := (22757079732343 / 25000000000000 : ℚ)
  w := (632135873557 / 625000000000 : ℚ)
  center := (12129 / 64000 : ℚ)
  supportValue := (7016436268632233 / 10000000000000000 : ℚ)
  supportSlope := (2712829249496451 / 500000000000000 : ℚ)
  oldCenter := (7016436268632233 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_512
  oldHi := (70200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1629]
}

def cell_6172 : Cell := { cellDefaults with
  domain := ⟨(1213 / 6400 : ℚ), (3033 / 16000 : ℚ)⟩
  r := (22757079732343 / 25000000000000 : ℚ)
  w := (632135873557 / 625000000000 : ℚ)
  center := (12131 / 64000 : ℚ)
  supportValue := (1403626381886717 / 2000000000000000 : ℚ)
  supportSlope := (169576367529789 / 31250000000000 : ℚ)
  oldCenter := (1403626381886717 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_512
  oldHi := (70200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1629]
}

def cell_6173 : Cell := { cellDefaults with
  domain := ⟨(3033 / 16000 : ℚ), (1517 / 8000 : ℚ)⟩
  r := (22757079732343 / 25000000000000 : ℚ)
  w := (632135873557 / 625000000000 : ℚ)
  center := (6067 / 32000 : ℚ)
  supportValue := (1404134873023717 / 2000000000000000 : ℚ)
  supportSlope := (1356819062919179 / 250000000000000 : ℚ)
  oldCenter := (1404134873023717 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_512
  oldHi := (70250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1629, piece_1630]
}

def cell_6174 : Cell := { cellDefaults with
  domain := ⟨(1517 / 8000 : ℚ), (607 / 3200 : ℚ)⟩
  r := (22757079732343 / 25000000000000 : ℚ)
  w := (632135873557 / 625000000000 : ℚ)
  center := (6069 / 32000 : ℚ)
  supportValue := (702406680959831 / 1000000000000000 : ℚ)
  supportSlope := (1357146618413907 / 250000000000000 : ℚ)
  oldCenter := (702406680959831 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_512
  oldLo := (70200000000000007 / 100000000000000000 : ℚ)
  oldHi := (70300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1630, piece_1631]
}

def cell_6175 : Cell := { cellDefaults with
  domain := ⟨(607 / 3200 : ℚ), (759 / 4000 : ℚ)⟩
  r := (22757079732343 / 25000000000000 : ℚ)
  w := (632135873557 / 625000000000 : ℚ)
  center := (6071 / 32000 : ℚ)
  supportValue := (3513730005711389 / 5000000000000000 : ℚ)
  supportSlope := (5429773757256839 / 1000000000000000 : ℚ)
  oldCenter := (3513730005711389 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_512
  oldLo := (70250000000000001 / 100000000000000000 : ℚ)
  oldHi := (70300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1631]
}

def cell_6176 : Cell := { cellDefaults with
  domain := ⟨(759 / 4000 : ℚ), (3037 / 16000 : ℚ)⟩
  r := (22757079732343 / 25000000000000 : ℚ)
  w := (632135873557 / 625000000000 : ℚ)
  center := (6073 / 32000 : ℚ)
  supportValue := (3515427015841141 / 5000000000000000 : ℚ)
  supportSlope := (678871489291577 / 125000000000000 : ℚ)
  oldCenter := (3515427015841141 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_512
  oldLo := (70250000000000001 / 100000000000000000 : ℚ)
  oldHi := (70350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1631, piece_1632]
}

def cell_6177 : Cell := { cellDefaults with
  domain := ⟨(3037 / 16000 : ℚ), (1519 / 8000 : ℚ)⟩
  r := (22757079732343 / 25000000000000 : ℚ)
  w := (632135873557 / 625000000000 : ℚ)
  center := (243 / 1280 : ℚ)
  supportValue := (7034248801899257 / 10000000000000000 : ℚ)
  supportSlope := (2716140300528913 / 500000000000000 : ℚ)
  oldCenter := (7034248801899257 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_512
  oldLo := (70300000000000007 / 100000000000000000 : ℚ)
  oldHi := (70400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1632, piece_1633]
}

def cell_6178 : Cell := { cellDefaults with
  domain := ⟨(1519 / 8000 : ℚ), (3039 / 16000 : ℚ)⟩
  r := (22757079732343 / 25000000000000 : ℚ)
  w := (632135873557 / 625000000000 : ℚ)
  center := (6077 / 32000 : ℚ)
  supportValue := (1759411078073869 / 2500000000000000 : ℚ)
  supportSlope := (10866986833267589 / 2000000000000000 : ℚ)
  oldCenter := (1759411078073869 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_512
  oldLo := (70350000000000001 / 100000000000000000 : ℚ)
  oldHi := (70400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1633]
}

def cell_6179 : Cell := { cellDefaults with
  domain := ⟨(3039 / 16000 : ℚ), (6079 / 32000 : ℚ)⟩
  r := (22757079732343 / 25000000000000 : ℚ)
  w := (632135873557 / 625000000000 : ℚ)
  center := (12157 / 64000 : ℚ)
  supportValue := (7040192927676117 / 10000000000000000 : ℚ)
  supportSlope := (679295863386109 / 125000000000000 : ℚ)
  oldCenter := (7040192927676117 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_512
  oldLo := (70350000000000001 / 100000000000000000 : ℚ)
  oldHi := (35225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1633, piece_1634]
}

def cell_6180 : Cell := { cellDefaults with
  domain := ⟨(6079 / 32000 : ℚ), (19 / 100 : ℚ)⟩
  r := (22757079732343 / 25000000000000 : ℚ)
  w := (632135873557 / 625000000000 : ℚ)
  center := (12159 / 64000 : ℚ)
  supportValue := (176047280754523 / 250000000000000 : ℚ)
  supportSlope := (679370037171001 / 125000000000000 : ℚ)
  oldCenter := (176047280754523 / 250000000000000 : ℚ)
  newCoefficients := coefficients_512
  oldLo := (70400000000000007 / 100000000000000000 : ℚ)
  oldHi := (35225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1634]
}

def cell_6181 : Cell := { cellDefaults with
  domain := ⟨(19 / 100 : ℚ), (6081 / 32000 : ℚ)⟩
  r := (45470547664303 / 50000000000000 : ℚ)
  w := (101163825253 / 100000000000 : ℚ)
  center := (12161 / 64000 : ℚ)
  supportValue := (7038732856796601 / 10000000000000000 : ℚ)
  supportSlope := (5431070709125407 / 1000000000000000 : ℚ)
  oldCenter := (7038732856796601 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_513
  oldLo := (70350000000000001 / 100000000000000000 : ℚ)
  oldHi := (70400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1633]
}

def cell_6182 : Cell := { cellDefaults with
  domain := ⟨(6081 / 32000 : ℚ), (3041 / 16000 : ℚ)⟩
  r := (45470547664303 / 50000000000000 : ℚ)
  w := (101163825253 / 100000000000 : ℚ)
  center := (12163 / 64000 : ℚ)
  supportValue := (3520215074839269 / 5000000000000000 : ℚ)
  supportSlope := (2715741753204881 / 500000000000000 : ℚ)
  oldCenter := (3520215074839269 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_513
  oldLo := (70350000000000001 / 100000000000000000 : ℚ)
  oldHi := (35225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1633, piece_1634]
}

def cell_6183 : Cell := { cellDefaults with
  domain := ⟨(3041 / 16000 : ℚ), (1521 / 8000 : ℚ)⟩
  r := (45470547664303 / 50000000000000 : ℚ)
  w := (101163825253 / 100000000000 : ℚ)
  center := (6083 / 32000 : ℚ)
  supportValue := (3521487483683227 / 5000000000000000 : ℚ)
  supportSlope := (5432537640048807 / 1000000000000000 : ℚ)
  oldCenter := (3521487483683227 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_513
  oldLo := (70400000000000007 / 100000000000000000 : ℚ)
  oldHi := (35225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1634]
}

def cell_6184 : Cell := { cellDefaults with
  domain := ⟨(1521 / 8000 : ℚ), (3043 / 16000 : ℚ)⟩
  r := (45470547664303 / 50000000000000 : ℚ)
  w := (101163825253 / 100000000000 : ℚ)
  center := (1217 / 6400 : ℚ)
  supportValue := (1409274133562009 / 2000000000000000 : ℚ)
  supportSlope := (10867319380800211 / 2000000000000000 : ℚ)
  oldCenter := (1409274133562009 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_513
  oldLo := (70400000000000007 / 100000000000000000 : ℚ)
  oldHi := (70500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1634, piece_1635]
}

def cell_6185 : Cell := { cellDefaults with
  domain := ⟨(3043 / 16000 : ℚ), (761 / 4000 : ℚ)⟩
  r := (45470547664303 / 50000000000000 : ℚ)
  w := (101163825253 / 100000000000 : ℚ)
  center := (6087 / 32000 : ℚ)
  supportValue := (7049767164178459 / 10000000000000000 : ℚ)
  supportSlope := (339685413136559 / 62500000000000 : ℚ)
  oldCenter := (7049767164178459 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_513
  oldLo := (35225000000000001 / 50000000000000000 : ℚ)
  oldHi := (35275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1635, piece_1636]
}

def cell_6186 : Cell := { cellDefaults with
  domain := ⟨(761 / 4000 : ℚ), (609 / 3200 : ℚ)⟩
  r := (45470547664303 / 50000000000000 : ℚ)
  w := (101163825253 / 100000000000 : ℚ)
  center := (6089 / 32000 : ℚ)
  supportValue := (141063287060137 / 200000000000000 : ℚ)
  supportSlope := (10872506530269277 / 2000000000000000 : ℚ)
  oldCenter := (141063287060137 / 200000000000000 : ℚ)
  newCoefficients := coefficients_513
  oldLo := (70500000000000007 / 100000000000000000 : ℚ)
  oldHi := (35275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1636]
}

def cell_6187 : Cell := { cellDefaults with
  domain := ⟨(609 / 3200 : ℚ), (1523 / 8000 : ℚ)⟩
  r := (45470547664303 / 50000000000000 : ℚ)
  w := (101163825253 / 100000000000 : ℚ)
  center := (6091 / 32000 : ℚ)
  supportValue := (176414058954677 / 250000000000000 : ℚ)
  supportSlope := (1087469371770311 / 200000000000000 : ℚ)
  oldCenter := (176414058954677 / 250000000000000 : ℚ)
  newCoefficients := coefficients_513
  oldLo := (70500000000000007 / 100000000000000000 : ℚ)
  oldHi := (70600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1636, piece_1637]
}

def cell_6188 : Cell := { cellDefaults with
  domain := ⟨(1523 / 8000 : ℚ), (3047 / 16000 : ℚ)⟩
  r := (45470547664303 / 50000000000000 : ℚ)
  w := (101163825253 / 100000000000 : ℚ)
  center := (6093 / 32000 : ℚ)
  supportValue := (7059961175898883 / 10000000000000000 : ℚ)
  supportSlope := (5438652260307819 / 1000000000000000 : ℚ)
  oldCenter := (7059961175898883 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_513
  oldLo := (35275000000000001 / 50000000000000000 : ℚ)
  oldHi := (35325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1637, piece_1638]
}

def cell_6189 : Cell := { cellDefaults with
  domain := ⟨(3047 / 16000 : ℚ), (1219 / 6400 : ℚ)⟩
  r := (45470547664303 / 50000000000000 : ℚ)
  w := (101163825253 / 100000000000 : ℚ)
  center := (12189 / 64000 : ℚ)
  supportValue := (7062512116643581 / 10000000000000000 : ℚ)
  supportSlope := (5439574766498367 / 1000000000000000 : ℚ)
  oldCenter := (7062512116643581 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_513
  oldLo := (70600000000000007 / 100000000000000000 : ℚ)
  oldHi := (35325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1638]
}

def cell_6190 : Cell := { cellDefaults with
  domain := ⟨(1219 / 6400 : ℚ), (381 / 2000 : ℚ)⟩
  r := (45470547664303 / 50000000000000 : ℚ)
  w := (101163825253 / 100000000000 : ℚ)
  center := (12191 / 64000 : ℚ)
  supportValue := (1412842421164109 / 2000000000000000 : ℚ)
  supportSlope := (5440338940900347 / 1000000000000000 : ℚ)
  oldCenter := (1412842421164109 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_513
  oldLo := (70600000000000007 / 100000000000000000 : ℚ)
  oldHi := (3534357541899441 / 5000000000000000 : ℚ)
  oldPieces := [piece_1638, piece_1639]
}

def cell_6191 : Cell := { cellDefaults with
  domain := ⟨(381 / 2000 : ℚ), (6097 / 32000 : ℚ)⟩
  r := (90854092190227 / 100000000000000 : ℚ)
  w := (2023720637733 / 2000000000000 : ℚ)
  center := (12193 / 64000 : ℚ)
  supportValue := (882631226929701 / 1250000000000000 : ℚ)
  supportSlope := (1087195457854051 / 200000000000000 : ℚ)
  oldCenter := (882631226929701 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_514
  oldLo := (70600000000000007 / 100000000000000000 : ℚ)
  oldHi := (35325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1638]
}

def cell_6192 : Cell := { cellDefaults with
  domain := ⟨(6097 / 32000 : ℚ), (3049 / 16000 : ℚ)⟩
  r := (90854092190227 / 100000000000000 : ℚ)
  w := (2023720637733 / 2000000000000 : ℚ)
  center := (2439 / 12800 : ℚ)
  supportValue := (3531374340181489 / 5000000000000000 : ℚ)
  supportSlope := (13591898413416459 / 2500000000000000 : ℚ)
  oldCenter := (3531374340181489 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_514
  oldLo := (70600000000000007 / 100000000000000000 : ℚ)
  oldHi := (35325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1638]
}

def cell_6193 : Cell := { cellDefaults with
  domain := ⟨(3049 / 16000 : ℚ), (61 / 320 : ℚ)⟩
  r := (90854092190227 / 100000000000000 : ℚ)
  w := (2023720637733 / 2000000000000 : ℚ)
  center := (6099 / 32000 : ℚ)
  supportValue := (1766323999027393 / 2500000000000000 : ℚ)
  supportSlope := (679705528679797 / 125000000000000 : ℚ)
  oldCenter := (1766323999027393 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_514
  oldLo := (70600000000000007 / 100000000000000000 : ℚ)
  oldHi := (3534357541899441 / 5000000000000000 : ℚ)
  oldPieces := [piece_1638, piece_1639]
}

def cell_6194 : Cell := { cellDefaults with
  domain := ⟨(61 / 320 : ℚ), (3051 / 16000 : ℚ)⟩
  r := (90854092190227 / 100000000000000 : ℚ)
  w := (2023720637733 / 2000000000000 : ℚ)
  center := (6101 / 32000 : ℚ)
  supportValue := (5654955907967 / 8000000000000 : ℚ)
  supportSlope := (5438948082947093 / 1000000000000000 : ℚ)
  oldCenter := (5654955907967 / 8000000000000 : ℚ)
  newCoefficients := coefficients_514
  oldLo := (35325000000000001 / 50000000000000000 : ℚ)
  oldHi := (35375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1639, piece_1640, piece_1641]
}

def cell_6195 : Cell := { cellDefaults with
  domain := ⟨(3051 / 16000 : ℚ), (763 / 4000 : ℚ)⟩
  r := (90854092190227 / 100000000000000 : ℚ)
  w := (2023720637733 / 2000000000000 : ℚ)
  center := (6103 / 32000 : ℚ)
  supportValue := (1414418912327839 / 2000000000000000 : ℚ)
  supportSlope := (108801556563769 / 20000000000000 : ℚ)
  oldCenter := (1414418912327839 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_514
  oldLo := (70700000000000007 / 100000000000000000 : ℚ)
  oldHi := (35375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1641]
}

def cell_6196 : Cell := { cellDefaults with
  domain := ⟨(763 / 4000 : ℚ), (3053 / 16000 : ℚ)⟩
  r := (90854092190227 / 100000000000000 : ℚ)
  w := (2023720637733 / 2000000000000 : ℚ)
  center := (1221 / 6400 : ℚ)
  supportValue := (3537747526449687 / 5000000000000000 : ℚ)
  supportSlope := (5441323976061341 / 1000000000000000 : ℚ)
  oldCenter := (3537747526449687 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_514
  oldLo := (70700000000000007 / 100000000000000000 : ℚ)
  oldHi := (70800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1641, piece_1642]
}

def cell_6197 : Cell := { cellDefaults with
  domain := ⟨(3053 / 16000 : ℚ), (1527 / 8000 : ℚ)⟩
  r := (90854092190227 / 100000000000000 : ℚ)
  w := (2023720637733 / 2000000000000 : ℚ)
  center := (6107 / 32000 : ℚ)
  supportValue := (1415779251836809 / 2000000000000000 : ℚ)
  supportSlope := (2721313276015991 / 500000000000000 : ℚ)
  oldCenter := (1415779251836809 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_514
  oldLo := (35375000000000001 / 50000000000000000 : ℚ)
  oldHi := (35425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1642, piece_1643]
}

def cell_6198 : Cell := { cellDefaults with
  domain := ⟨(1527 / 8000 : ℚ), (611 / 3200 : ℚ)⟩
  r := (90854092190227 / 100000000000000 : ℚ)
  w := (2023720637733 / 2000000000000 : ℚ)
  center := (6109 / 32000 : ℚ)
  supportValue := (35411491174201 / 50000000000000 : ℚ)
  supportSlope := (5443784712907629 / 1000000000000000 : ℚ)
  oldCenter := (35411491174201 / 50000000000000 : ℚ)
  newCoefficients := coefficients_514
  oldLo := (70800000000000007 / 100000000000000000 : ℚ)
  oldHi := (35425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1643]
}

def cell_6199 : Cell := { cellDefaults with
  domain := ⟨(611 / 3200 : ℚ), (6111 / 32000 : ℚ)⟩
  r := (90854092190227 / 100000000000000 : ℚ)
  w := (2023720637733 / 2000000000000 : ℚ)
  center := (12221 / 64000 : ℚ)
  supportValue := (3542425849769841 / 5000000000000000 : ℚ)
  supportSlope := (5444753418032633 / 1000000000000000 : ℚ)
  oldCenter := (3542425849769841 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_514
  oldLo := (70800000000000007 / 100000000000000000 : ℚ)
  oldHi := (70900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1643, piece_1644]
}

theorem check_6150 : SourceCertificateFamily.RightNormalized.check cell_6150 = true := by
  decide +kernel

theorem check_6151 : SourceCertificateFamily.RightNormalized.check cell_6151 = true := by
  decide +kernel

theorem check_6152 : SourceCertificateFamily.RightNormalized.check cell_6152 = true := by
  decide +kernel

theorem check_6153 : SourceCertificateFamily.RightNormalized.check cell_6153 = true := by
  decide +kernel

theorem check_6154 : SourceCertificateFamily.RightNormalized.check cell_6154 = true := by
  decide +kernel

theorem check_6155 : SourceCertificateFamily.RightNormalized.check cell_6155 = true := by
  decide +kernel

theorem check_6156 : SourceCertificateFamily.RightNormalized.check cell_6156 = true := by
  decide +kernel

theorem check_6157 : SourceCertificateFamily.RightNormalized.check cell_6157 = true := by
  decide +kernel

theorem check_6158 : SourceCertificateFamily.RightNormalized.check cell_6158 = true := by
  decide +kernel

theorem check_6159 : SourceCertificateFamily.RightNormalized.check cell_6159 = true := by
  decide +kernel

theorem check_6160 : SourceCertificateFamily.RightNormalized.check cell_6160 = true := by
  decide +kernel

theorem check_6161 : SourceCertificateFamily.RightNormalized.check cell_6161 = true := by
  decide +kernel

theorem check_6162 : SourceCertificateFamily.RightNormalized.check cell_6162 = true := by
  decide +kernel

theorem check_6163 : SourceCertificateFamily.RightNormalized.check cell_6163 = true := by
  decide +kernel

theorem check_6164 : SourceCertificateFamily.RightNormalized.check cell_6164 = true := by
  decide +kernel

theorem check_6165 : SourceCertificateFamily.RightNormalized.check cell_6165 = true := by
  decide +kernel

theorem check_6166 : SourceCertificateFamily.RightNormalized.check cell_6166 = true := by
  decide +kernel

theorem check_6167 : SourceCertificateFamily.RightNormalized.check cell_6167 = true := by
  decide +kernel

theorem check_6168 : SourceCertificateFamily.RightNormalized.check cell_6168 = true := by
  decide +kernel

theorem check_6169 : SourceCertificateFamily.RightNormalized.check cell_6169 = true := by
  decide +kernel

theorem check_6170 : SourceCertificateFamily.RightNormalized.check cell_6170 = true := by
  decide +kernel

theorem check_6171 : SourceCertificateFamily.RightNormalized.check cell_6171 = true := by
  decide +kernel

theorem check_6172 : SourceCertificateFamily.RightNormalized.check cell_6172 = true := by
  decide +kernel

theorem check_6173 : SourceCertificateFamily.RightNormalized.check cell_6173 = true := by
  decide +kernel

theorem check_6174 : SourceCertificateFamily.RightNormalized.check cell_6174 = true := by
  decide +kernel

theorem check_6175 : SourceCertificateFamily.RightNormalized.check cell_6175 = true := by
  decide +kernel

theorem check_6176 : SourceCertificateFamily.RightNormalized.check cell_6176 = true := by
  decide +kernel

theorem check_6177 : SourceCertificateFamily.RightNormalized.check cell_6177 = true := by
  decide +kernel

theorem check_6178 : SourceCertificateFamily.RightNormalized.check cell_6178 = true := by
  decide +kernel

theorem check_6179 : SourceCertificateFamily.RightNormalized.check cell_6179 = true := by
  decide +kernel

theorem check_6180 : SourceCertificateFamily.RightNormalized.check cell_6180 = true := by
  decide +kernel

theorem check_6181 : SourceCertificateFamily.RightNormalized.check cell_6181 = true := by
  decide +kernel

theorem check_6182 : SourceCertificateFamily.RightNormalized.check cell_6182 = true := by
  decide +kernel

theorem check_6183 : SourceCertificateFamily.RightNormalized.check cell_6183 = true := by
  decide +kernel

theorem check_6184 : SourceCertificateFamily.RightNormalized.check cell_6184 = true := by
  decide +kernel

theorem check_6185 : SourceCertificateFamily.RightNormalized.check cell_6185 = true := by
  decide +kernel

theorem check_6186 : SourceCertificateFamily.RightNormalized.check cell_6186 = true := by
  decide +kernel

theorem check_6187 : SourceCertificateFamily.RightNormalized.check cell_6187 = true := by
  decide +kernel

theorem check_6188 : SourceCertificateFamily.RightNormalized.check cell_6188 = true := by
  decide +kernel

theorem check_6189 : SourceCertificateFamily.RightNormalized.check cell_6189 = true := by
  decide +kernel

theorem check_6190 : SourceCertificateFamily.RightNormalized.check cell_6190 = true := by
  decide +kernel

theorem check_6191 : SourceCertificateFamily.RightNormalized.check cell_6191 = true := by
  decide +kernel

theorem check_6192 : SourceCertificateFamily.RightNormalized.check cell_6192 = true := by
  decide +kernel

theorem check_6193 : SourceCertificateFamily.RightNormalized.check cell_6193 = true := by
  decide +kernel

theorem check_6194 : SourceCertificateFamily.RightNormalized.check cell_6194 = true := by
  decide +kernel

theorem check_6195 : SourceCertificateFamily.RightNormalized.check cell_6195 = true := by
  decide +kernel

theorem check_6196 : SourceCertificateFamily.RightNormalized.check cell_6196 = true := by
  decide +kernel

theorem check_6197 : SourceCertificateFamily.RightNormalized.check cell_6197 = true := by
  decide +kernel

theorem check_6198 : SourceCertificateFamily.RightNormalized.check cell_6198 = true := by
  decide +kernel

theorem check_6199 : SourceCertificateFamily.RightNormalized.check cell_6199 = true := by
  decide +kernel

def cells : List Cell := [cell_6150, cell_6151, cell_6152, cell_6153, cell_6154, cell_6155, cell_6156, cell_6157, cell_6158, cell_6159, cell_6160, cell_6161, cell_6162, cell_6163, cell_6164, cell_6165, cell_6166, cell_6167, cell_6168, cell_6169, cell_6170, cell_6171, cell_6172, cell_6173, cell_6174, cell_6175, cell_6176, cell_6177, cell_6178, cell_6179, cell_6180, cell_6181, cell_6182, cell_6183, cell_6184, cell_6185, cell_6186, cell_6187, cell_6188, cell_6189, cell_6190, cell_6191, cell_6192, cell_6193, cell_6194, cell_6195, cell_6196, cell_6197, cell_6198, cell_6199]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6150, SourceCertificateFamily.of_right_checked check_6151, SourceCertificateFamily.of_right_checked check_6152, SourceCertificateFamily.of_right_checked check_6153, SourceCertificateFamily.of_right_checked check_6154, SourceCertificateFamily.of_right_checked check_6155, SourceCertificateFamily.of_right_checked check_6156, SourceCertificateFamily.of_right_checked check_6157, SourceCertificateFamily.of_right_checked check_6158, SourceCertificateFamily.of_right_checked check_6159, SourceCertificateFamily.of_right_checked check_6160, SourceCertificateFamily.of_right_checked check_6161, SourceCertificateFamily.of_right_checked check_6162, SourceCertificateFamily.of_right_checked check_6163, SourceCertificateFamily.of_right_checked check_6164, SourceCertificateFamily.of_right_checked check_6165, SourceCertificateFamily.of_right_checked check_6166, SourceCertificateFamily.of_right_checked check_6167, SourceCertificateFamily.of_right_checked check_6168, SourceCertificateFamily.of_right_checked check_6169, SourceCertificateFamily.of_right_checked check_6170, SourceCertificateFamily.of_right_checked check_6171, SourceCertificateFamily.of_right_checked check_6172, SourceCertificateFamily.of_right_checked check_6173, SourceCertificateFamily.of_right_checked check_6174, SourceCertificateFamily.of_right_checked check_6175, SourceCertificateFamily.of_right_checked check_6176, SourceCertificateFamily.of_right_checked check_6177, SourceCertificateFamily.of_right_checked check_6178, SourceCertificateFamily.of_right_checked check_6179, SourceCertificateFamily.of_right_checked check_6180, SourceCertificateFamily.of_right_checked check_6181, SourceCertificateFamily.of_right_checked check_6182, SourceCertificateFamily.of_right_checked check_6183, SourceCertificateFamily.of_right_checked check_6184, SourceCertificateFamily.of_right_checked check_6185, SourceCertificateFamily.of_right_checked check_6186, SourceCertificateFamily.of_right_checked check_6187, SourceCertificateFamily.of_right_checked check_6188, SourceCertificateFamily.of_right_checked check_6189, SourceCertificateFamily.of_right_checked check_6190, SourceCertificateFamily.of_right_checked check_6191, SourceCertificateFamily.of_right_checked check_6192, SourceCertificateFamily.of_right_checked check_6193, SourceCertificateFamily.of_right_checked check_6194, SourceCertificateFamily.of_right_checked check_6195, SourceCertificateFamily.of_right_checked check_6196, SourceCertificateFamily.of_right_checked check_6197, SourceCertificateFamily.of_right_checked check_6198, SourceCertificateFamily.of_right_checked check_6199, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0123

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0123
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0123
open AnalyticBounds.ExpressionCertificate

theorem linked_6150 : Linked cell_6150 pieces := by
  apply Linked.of_piece piece_509 piece_509_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6150, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1619_mem, piece_1620_mem⟩

theorem linked_6151 : Linked cell_6151 pieces := by
  apply Linked.of_piece piece_510 piece_510_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6151, List.cons_subset, List.nil_subset, and_true]
  exact piece_1619_mem

theorem linked_6152 : Linked cell_6152 pieces := by
  apply Linked.of_piece piece_510 piece_510_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6152, List.cons_subset, List.nil_subset, and_true]
  exact piece_1619_mem

theorem linked_6153 : Linked cell_6153 pieces := by
  apply Linked.of_piece piece_510 piece_510_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6153, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1619_mem, piece_1620_mem⟩

theorem linked_6154 : Linked cell_6154 pieces := by
  apply Linked.of_piece piece_510 piece_510_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6154, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1620_mem, piece_1621_mem⟩

theorem linked_6155 : Linked cell_6155 pieces := by
  apply Linked.of_piece piece_510 piece_510_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6155, List.cons_subset, List.nil_subset, and_true]
  exact piece_1621_mem

theorem linked_6156 : Linked cell_6156 pieces := by
  apply Linked.of_piece piece_510 piece_510_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6156, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1621_mem, piece_1622_mem⟩

theorem linked_6157 : Linked cell_6157 pieces := by
  apply Linked.of_piece piece_510 piece_510_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6157, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1622_mem, piece_1623_mem⟩

theorem linked_6158 : Linked cell_6158 pieces := by
  apply Linked.of_piece piece_510 piece_510_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6158, List.cons_subset, List.nil_subset, and_true]
  exact piece_1623_mem

theorem linked_6159 : Linked cell_6159 pieces := by
  apply Linked.of_piece piece_510 piece_510_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6159, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1623_mem, piece_1624_mem⟩

theorem linked_6160 : Linked cell_6160 pieces := by
  apply Linked.of_piece piece_510 piece_510_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6160, List.cons_subset, List.nil_subset, and_true]
  exact piece_1624_mem

theorem linked_6161 : Linked cell_6161 pieces := by
  apply Linked.of_piece piece_511 piece_511_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6161, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1623_mem, piece_1624_mem⟩

theorem linked_6162 : Linked cell_6162 pieces := by
  apply Linked.of_piece piece_511 piece_511_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6162, List.cons_subset, List.nil_subset, and_true]
  exact piece_1624_mem

theorem linked_6163 : Linked cell_6163 pieces := by
  apply Linked.of_piece piece_511 piece_511_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6163, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1624_mem, piece_1625_mem⟩

theorem linked_6164 : Linked cell_6164 pieces := by
  apply Linked.of_piece piece_511 piece_511_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6164, List.cons_subset, List.nil_subset, and_true]
  exact piece_1625_mem

theorem linked_6165 : Linked cell_6165 pieces := by
  apply Linked.of_piece piece_511 piece_511_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6165, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1625_mem, piece_1626_mem⟩

theorem linked_6166 : Linked cell_6166 pieces := by
  apply Linked.of_piece piece_511 piece_511_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6166, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1626_mem, piece_1627_mem⟩

theorem linked_6167 : Linked cell_6167 pieces := by
  apply Linked.of_piece piece_511 piece_511_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6167, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1627_mem, piece_1628_mem⟩

theorem linked_6168 : Linked cell_6168 pieces := by
  apply Linked.of_piece piece_511 piece_511_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6168, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1628_mem, piece_1629_mem⟩

theorem linked_6169 : Linked cell_6169 pieces := by
  apply Linked.of_piece piece_511 piece_511_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6169, List.cons_subset, List.nil_subset, and_true]
  exact piece_1629_mem

theorem linked_6170 : Linked cell_6170 pieces := by
  apply Linked.of_piece piece_511 piece_511_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6170, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1629_mem, piece_1630_mem⟩

theorem linked_6171 : Linked cell_6171 pieces := by
  apply Linked.of_piece piece_512 piece_512_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6171, List.cons_subset, List.nil_subset, and_true]
  exact piece_1629_mem

theorem linked_6172 : Linked cell_6172 pieces := by
  apply Linked.of_piece piece_512 piece_512_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6172, List.cons_subset, List.nil_subset, and_true]
  exact piece_1629_mem

theorem linked_6173 : Linked cell_6173 pieces := by
  apply Linked.of_piece piece_512 piece_512_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6173, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1629_mem, piece_1630_mem⟩

theorem linked_6174 : Linked cell_6174 pieces := by
  apply Linked.of_piece piece_512 piece_512_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6174, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1630_mem, piece_1631_mem⟩

theorem linked_6175 : Linked cell_6175 pieces := by
  apply Linked.of_piece piece_512 piece_512_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6175, List.cons_subset, List.nil_subset, and_true]
  exact piece_1631_mem

theorem linked_6176 : Linked cell_6176 pieces := by
  apply Linked.of_piece piece_512 piece_512_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6176, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1631_mem, piece_1632_mem⟩

theorem linked_6177 : Linked cell_6177 pieces := by
  apply Linked.of_piece piece_512 piece_512_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6177, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1632_mem, piece_1633_mem⟩

theorem linked_6178 : Linked cell_6178 pieces := by
  apply Linked.of_piece piece_512 piece_512_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6178, List.cons_subset, List.nil_subset, and_true]
  exact piece_1633_mem

theorem linked_6179 : Linked cell_6179 pieces := by
  apply Linked.of_piece piece_512 piece_512_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6179, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1633_mem, piece_1634_mem⟩

theorem linked_6180 : Linked cell_6180 pieces := by
  apply Linked.of_piece piece_512 piece_512_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6180, List.cons_subset, List.nil_subset, and_true]
  exact piece_1634_mem

theorem linked_6181 : Linked cell_6181 pieces := by
  apply Linked.of_piece piece_513 piece_513_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6181, List.cons_subset, List.nil_subset, and_true]
  exact piece_1633_mem

theorem linked_6182 : Linked cell_6182 pieces := by
  apply Linked.of_piece piece_513 piece_513_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6182, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1633_mem, piece_1634_mem⟩

theorem linked_6183 : Linked cell_6183 pieces := by
  apply Linked.of_piece piece_513 piece_513_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6183, List.cons_subset, List.nil_subset, and_true]
  exact piece_1634_mem

theorem linked_6184 : Linked cell_6184 pieces := by
  apply Linked.of_piece piece_513 piece_513_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6184, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1634_mem, piece_1635_mem⟩

theorem linked_6185 : Linked cell_6185 pieces := by
  apply Linked.of_piece piece_513 piece_513_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6185, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1635_mem, piece_1636_mem⟩

theorem linked_6186 : Linked cell_6186 pieces := by
  apply Linked.of_piece piece_513 piece_513_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6186, List.cons_subset, List.nil_subset, and_true]
  exact piece_1636_mem

theorem linked_6187 : Linked cell_6187 pieces := by
  apply Linked.of_piece piece_513 piece_513_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6187, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1636_mem, piece_1637_mem⟩

theorem linked_6188 : Linked cell_6188 pieces := by
  apply Linked.of_piece piece_513 piece_513_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6188, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1637_mem, piece_1638_mem⟩

theorem linked_6189 : Linked cell_6189 pieces := by
  apply Linked.of_piece piece_513 piece_513_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6189, List.cons_subset, List.nil_subset, and_true]
  exact piece_1638_mem

theorem linked_6190 : Linked cell_6190 pieces := by
  apply Linked.of_piece piece_513 piece_513_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6190, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1638_mem, piece_1639_mem⟩

theorem linked_6191 : Linked cell_6191 pieces := by
  apply Linked.of_piece piece_514 piece_514_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6191, List.cons_subset, List.nil_subset, and_true]
  exact piece_1638_mem

theorem linked_6192 : Linked cell_6192 pieces := by
  apply Linked.of_piece piece_514 piece_514_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6192, List.cons_subset, List.nil_subset, and_true]
  exact piece_1638_mem

theorem linked_6193 : Linked cell_6193 pieces := by
  apply Linked.of_piece piece_514 piece_514_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6193, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1638_mem, piece_1639_mem⟩

theorem linked_6194 : Linked cell_6194 pieces := by
  apply Linked.of_piece piece_514 piece_514_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6194, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1639_mem, ⟨piece_1640_mem, piece_1641_mem⟩⟩

theorem linked_6195 : Linked cell_6195 pieces := by
  apply Linked.of_piece piece_514 piece_514_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6195, List.cons_subset, List.nil_subset, and_true]
  exact piece_1641_mem

theorem linked_6196 : Linked cell_6196 pieces := by
  apply Linked.of_piece piece_514 piece_514_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6196, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1641_mem, piece_1642_mem⟩

theorem linked_6197 : Linked cell_6197 pieces := by
  apply Linked.of_piece piece_514 piece_514_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6197, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1642_mem, piece_1643_mem⟩

theorem linked_6198 : Linked cell_6198 pieces := by
  apply Linked.of_piece piece_514 piece_514_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6198, List.cons_subset, List.nil_subset, and_true]
  exact piece_1643_mem

theorem linked_6199 : Linked cell_6199 pieces := by
  apply Linked.of_piece piece_514 piece_514_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6199, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1643_mem, piece_1644_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0123.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0123.cells,List.forall_mem_cons]
  exact ⟨linked_6150, linked_6151, linked_6152, linked_6153, linked_6154, linked_6155, linked_6156, linked_6157, linked_6158, linked_6159, linked_6160, linked_6161, linked_6162, linked_6163, linked_6164, linked_6165, linked_6166, linked_6167, linked_6168, linked_6169, linked_6170, linked_6171, linked_6172, linked_6173, linked_6174, linked_6175, linked_6176, linked_6177, linked_6178, linked_6179, linked_6180, linked_6181, linked_6182, linked_6183, linked_6184, linked_6185, linked_6186, linked_6187, linked_6188, linked_6189, linked_6190, linked_6191, linked_6192, linked_6193, linked_6194, linked_6195, linked_6196, linked_6197, linked_6198, linked_6199, by simp⟩

theorem covered : covers (6031 / 32000 : ℚ) (6111 / 32000 : ℚ)
    (SourceCertificates.Chunk0123.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0123
