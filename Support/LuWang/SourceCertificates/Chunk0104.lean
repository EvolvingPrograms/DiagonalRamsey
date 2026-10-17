import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0104
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(2511 / 16000 : ℚ), (5023 / 32000 : ℚ)⟩
  branch := .right
  r := (97207578369203 / 100000000000000 : ℚ)
  w := (99893105187757 / 100000000000000 : ℚ)
  center := (2009 / 12800 : ℚ)
  supportValue := (561022577114291 / 1000000000000000 : ℚ)
  supportSlope := (1010961144148581 / 200000000000000 : ℚ)
  oldCenter := (561022577114291 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_441
  oldLo := (28250000000000003 / 50000000000000000 : ℚ)
  oldHi := (1123 / 2000 : ℚ)
  oldPieces := [piece_1331]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5200 : Cell := { cellDefaults with
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (1121 / 2000 : ℚ)
  oldPieces := [piece_1321, piece_1322]
}

def cell_5201 : Cell := { cellDefaults with
  domain := ⟨(5023 / 32000 : ℚ), (157 / 1000 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (10047 / 64000 : ℚ)
  supportValue := (5611805459540329 / 10000000000000000 : ℚ)
  supportSlope := (252772839126969 / 50000000000000 : ℚ)
  oldCenter := (5611805459540329 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (11220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1322]
}

def cell_5202 : Cell := { cellDefaults with
  domain := ⟨(157 / 1000 : ℚ), (201 / 1280 : ℚ)⟩
  center := (10049 / 64000 : ℚ)
  supportValue := (5609155749942969 / 10000000000000000 : ℚ)
  supportSlope := (5051996413701687 / 1000000000000000 : ℚ)
  oldCenter := (5609155749942969 / 10000000000000000 : ℚ)
  oldLo := (1121 / 2000 : ℚ)
  oldHi := (11220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1321]
}

def cell_5203 : Cell := { cellDefaults with
  domain := ⟨(201 / 1280 : ℚ), (2513 / 16000 : ℚ)⟩
  center := (10051 / 64000 : ℚ)
  supportValue := (1402683634106537 / 2500000000000000 : ℚ)
  supportSlope := (5052212941340173 / 1000000000000000 : ℚ)
  oldCenter := (1402683634106537 / 2500000000000000 : ℚ)
  oldLo := (1121 / 2000 : ℚ)
  oldPieces := [piece_1321, piece_1322]
}

def cell_5204 : Cell := { cellDefaults with
  domain := ⟨(2513 / 16000 : ℚ), (5027 / 32000 : ℚ)⟩
  center := (10053 / 64000 : ℚ)
  supportValue := (5612313486929313 / 10000000000000000 : ℚ)
  supportSlope := (5053096035631199 / 1000000000000000 : ℚ)
  oldCenter := (5612313486929313 / 10000000000000000 : ℚ)
  oldLo := (11220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1322]
}

def cell_5205 : Cell := { cellDefaults with
  domain := ⟨(5027 / 32000 : ℚ), (1257 / 8000 : ℚ)⟩
  center := (2011 / 12800 : ℚ)
  supportValue := (5613892721166329 / 10000000000000000 : ℚ)
  supportSlope := (1263501050000393 / 250000000000000 : ℚ)
  oldCenter := (5613892721166329 / 10000000000000000 : ℚ)
  oldLo := (11220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1322]
}

def cell_5206 : Cell := { cellDefaults with
  domain := ⟨(1257 / 8000 : ℚ), (5029 / 32000 : ℚ)⟩
  center := (10057 / 64000 : ℚ)
  supportValue := (2807736086193837 / 5000000000000000 : ℚ)
  supportSlope := (10108681471400871 / 2000000000000000 : ℚ)
  oldCenter := (2807736086193837 / 5000000000000000 : ℚ)
  oldLo := (11220000000000001 / 20000000000000000 : ℚ)
  oldHi := (28100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1322, piece_1323]
}

def cell_5207 : Cell := { cellDefaults with
  domain := ⟨(5029 / 32000 : ℚ), (503 / 3200 : ℚ)⟩
  center := (10059 / 64000 : ℚ)
  supportValue := (5617051750535077 / 10000000000000000 : ℚ)
  supportSlope := (202204156278043 / 40000000000000 : ℚ)
  oldCenter := (5617051750535077 / 10000000000000000 : ℚ)
  oldLo := (1123 / 2000 : ℚ)
  oldHi := (28100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1323]
}

def cell_5208 : Cell := { cellDefaults with
  domain := ⟨(503 / 3200 : ℚ), (5031 / 32000 : ℚ)⟩
  center := (10061 / 64000 : ℚ)
  supportValue := (1404657903011771 / 2500000000000000 : ℚ)
  supportSlope := (505601088831753 / 100000000000000 : ℚ)
  oldCenter := (1404657903011771 / 2500000000000000 : ℚ)
  oldLo := (1123 / 2000 : ℚ)
  oldHi := (28100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1323]
}

def cell_5209 : Cell := { cellDefaults with
  domain := ⟨(5031 / 32000 : ℚ), (629 / 4000 : ℚ)⟩
  center := (10063 / 64000 : ℚ)
  supportValue := (2810105863564491 / 5000000000000000 : ℚ)
  supportSlope := (632058215374709 / 125000000000000 : ℚ)
  oldCenter := (2810105863564491 / 5000000000000000 : ℚ)
  oldLo := (1123 / 2000 : ℚ)
  oldHi := (9 / 16 : ℚ)
  oldPieces := [piece_1323, piece_1324]
}

def cell_5210 : Cell := { cellDefaults with
  domain := ⟨(629 / 4000 : ℚ), (5033 / 32000 : ℚ)⟩
  center := (2013 / 12800 : ℚ)
  supportValue := (5621791932576947 / 10000000000000000 : ℚ)
  supportSlope := (2528555337459437 / 500000000000000 : ℚ)
  oldCenter := (5621791932576947 / 10000000000000000 : ℚ)
  oldLo := (28100000000000003 / 50000000000000000 : ℚ)
  oldHi := (9 / 16 : ℚ)
  oldPieces := [piece_1324]
}

def cell_5211 : Cell := { cellDefaults with
  domain := ⟨(5033 / 32000 : ℚ), (2517 / 16000 : ℚ)⟩
  center := (10067 / 64000 : ℚ)
  supportValue := (5623372421018029 / 10000000000000000 : ℚ)
  supportSlope := (5058016466104931 / 1000000000000000 : ℚ)
  oldCenter := (5623372421018029 / 10000000000000000 : ℚ)
  oldLo := (28100000000000003 / 50000000000000000 : ℚ)
  oldHi := (9 / 16 : ℚ)
  oldPieces := [piece_1324]
}

def cell_5212 : Cell := { cellDefaults with
  domain := ⟨(2517 / 16000 : ℚ), (1007 / 6400 : ℚ)⟩
  center := (10069 / 64000 : ℚ)
  supportValue := (5624953192585461 / 10000000000000000 : ℚ)
  supportSlope := (5058587873769227 / 1000000000000000 : ℚ)
  oldCenter := (5624953192585461 / 10000000000000000 : ℚ)
  oldLo := (28100000000000003 / 50000000000000000 : ℚ)
  oldHi := (28150000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1324, piece_1325]
}

def cell_5213 : Cell := { cellDefaults with
  domain := ⟨(1007 / 6400 : ℚ), (1259 / 8000 : ℚ)⟩
  center := (10071 / 64000 : ℚ)
  supportValue := (2813267015735737 / 5000000000000000 : ℚ)
  supportSlope := (2023646528184031 / 400000000000000 : ℚ)
  oldCenter := (2813267015735737 / 5000000000000000 : ℚ)
  oldLo := (9 / 16 : ℚ)
  oldHi := (28150000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1325]
}

def cell_5214 : Cell := { cellDefaults with
  domain := ⟨(1259 / 8000 : ℚ), (5037 / 32000 : ℚ)⟩
  center := (10073 / 64000 : ℚ)
  supportValue := (5628115146498629 / 10000000000000000 : ℚ)
  supportSlope := (5060020971143331 / 1000000000000000 : ℚ)
  oldCenter := (5628115146498629 / 10000000000000000 : ℚ)
  oldLo := (9 / 16 : ℚ)
  oldHi := (28150000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1325]
}

def cell_5215 : Cell := { cellDefaults with
  domain := ⟨(5037 / 32000 : ℚ), (2519 / 16000 : ℚ)⟩
  center := (403 / 2560 : ℚ)
  supportValue := (2814848272147647 / 5000000000000000 : ℚ)
  supportSlope := (632588369656073 / 125000000000000 : ℚ)
  oldCenter := (2814848272147647 / 5000000000000000 : ℚ)
  oldLo := (9 / 16 : ℚ)
  oldHi := (5630726256983241 / 10000000000000000 : ℚ)
  oldPieces := [piece_1325, piece_1326]
}

def cell_5216 : Cell := { cellDefaults with
  domain := ⟨(2519 / 16000 : ℚ), (5039 / 32000 : ℚ)⟩
  center := (10077 / 64000 : ℚ)
  supportValue := (1407819511349739 / 2500000000000000 : ℚ)
  supportSlope := (5061119923080781 / 1000000000000000 : ℚ)
  oldCenter := (1407819511349739 / 2500000000000000 : ℚ)
  oldLo := (28150000000000003 / 50000000000000000 : ℚ)
  oldHi := (1127 / 2000 : ℚ)
  oldPieces := [piece_1326, piece_1327]
}

def cell_5217 : Cell := { cellDefaults with
  domain := ⟨(5039 / 32000 : ℚ), (63 / 400 : ℚ)⟩
  center := (10079 / 64000 : ℚ)
  supportValue := (1408214946636367 / 2500000000000000 : ℚ)
  supportSlope := (5062024655781983 / 1000000000000000 : ℚ)
  oldCenter := (1408214946636367 / 2500000000000000 : ℚ)
  oldLo := (5630726256983241 / 10000000000000000 : ℚ)
  oldHi := (1127 / 2000 : ℚ)
  oldPieces := [piece_1327]
}

def cell_5218 : Cell := { cellDefaults with
  domain := ⟨(63 / 400 : ℚ), (5041 / 32000 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (10081 / 64000 : ℚ)
  supportValue := (5630198582795807 / 10000000000000000 : ℚ)
  supportSlope := (1264526359206819 / 250000000000000 : ℚ)
  oldCenter := (5630198582795807 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (9 / 16 : ℚ)
  oldHi := (1127 / 2000 : ℚ)
  oldPieces := [piece_1325, piece_1326, piece_1327]
}

def cell_5219 : Cell := { cellDefaults with
  domain := ⟨(5041 / 32000 : ℚ), (2521 / 16000 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (10083 / 64000 : ℚ)
  supportValue := (1126355859799649 / 2000000000000000 : ℚ)
  supportSlope := (202349794645329 / 40000000000000 : ℚ)
  oldCenter := (1126355859799649 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (5630726256983241 / 10000000000000000 : ℚ)
  oldHi := (1127 / 2000 : ℚ)
  oldPieces := [piece_1327]
}

def cell_5220 : Cell := { cellDefaults with
  domain := ⟨(2521 / 16000 : ℚ), (5043 / 32000 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (2017 / 12800 : ℚ)
  supportValue := (563336029814021 / 1000000000000000 : ℚ)
  supportSlope := (202386030432109 / 40000000000000 : ℚ)
  oldCenter := (563336029814021 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (5630726256983241 / 10000000000000000 : ℚ)
  oldHi := (1127 / 2000 : ℚ)
  oldPieces := [piece_1327]
}

def cell_5221 : Cell := { cellDefaults with
  domain := ⟨(5043 / 32000 : ℚ), (1261 / 8000 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (10087 / 64000 : ℚ)
  supportValue := (5634941580440831 / 10000000000000000 : ℚ)
  supportSlope := (253011419018101 / 50000000000000 : ℚ)
  oldCenter := (5634941580440831 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (5630726256983241 / 10000000000000000 : ℚ)
  oldHi := (28200000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1327, piece_1328]
}

def cell_5222 : Cell := { cellDefaults with
  domain := ⟨(1261 / 8000 : ℚ), (1009 / 6400 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (10089 / 64000 : ℚ)
  supportValue := (1409130733069783 / 2500000000000000 : ℚ)
  supportSlope := (632594064760017 / 125000000000000 : ℚ)
  oldCenter := (1409130733069783 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (1127 / 2000 : ℚ)
  oldHi := (28200000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1328]
}

def cell_5223 : Cell := { cellDefaults with
  domain := ⟨(1009 / 6400 : ℚ), (2523 / 16000 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (10091 / 64000 : ℚ)
  supportValue := (1127620911716547 / 2000000000000000 : ℚ)
  supportSlope := (5061656942906723 / 1000000000000000 : ℚ)
  oldCenter := (1127620911716547 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (1127 / 2000 : ℚ)
  oldHi := (28200000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1328]
}

def cell_5224 : Cell := { cellDefaults with
  domain := ⟨(2523 / 16000 : ℚ), (5047 / 32000 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (10093 / 64000 : ℚ)
  supportValue := (5639686467585129 / 10000000000000000 : ℚ)
  supportSlope := (1265587080577113 / 250000000000000 : ℚ)
  oldCenter := (5639686467585129 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (1127 / 2000 : ℚ)
  oldHi := (1129 / 2000 : ℚ)
  oldPieces := [piece_1328, piece_1329]
}

def cell_5225 : Cell := { cellDefaults with
  domain := ⟨(5047 / 32000 : ℚ), (631 / 4000 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (2019 / 12800 : ℚ)
  supportValue := (2820634241079129 / 5000000000000000 : ℚ)
  supportSlope := (5062758846793969 / 1000000000000000 : ℚ)
  oldCenter := (2820634241079129 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (28200000000000003 / 50000000000000000 : ℚ)
  oldHi := (1129 / 2000 : ℚ)
  oldPieces := [piece_1329]
}

def cell_5226 : Cell := { cellDefaults with
  domain := ⟨(631 / 4000 : ℚ), (5049 / 32000 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (10097 / 64000 : ℚ)
  supportValue := (1410712683802307 / 2500000000000000 : ℚ)
  supportSlope := (316478862304459 / 62500000000000 : ℚ)
  oldCenter := (1410712683802307 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (28200000000000003 / 50000000000000000 : ℚ)
  oldHi := (1129 / 2000 : ℚ)
  oldPieces := [piece_1329]
}

def cell_5227 : Cell := { cellDefaults with
  domain := ⟨(5049 / 32000 : ℚ), (101 / 640 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (10099 / 64000 : ℚ)
  supportValue := (5644433270497589 / 10000000000000000 : ℚ)
  supportSlope := (253223250074619 / 50000000000000 : ℚ)
  oldCenter := (5644433270497589 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (28200000000000003 / 50000000000000000 : ℚ)
  oldHi := (28250000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1329, piece_1330]
}

def cell_5228 : Cell := { cellDefaults with
  domain := ⟨(101 / 640 : ℚ), (5051 / 32000 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (10101 / 64000 : ℚ)
  supportValue := (2823007973370633 / 5000000000000000 : ℚ)
  supportSlope := (1012952732585859 / 200000000000000 : ℚ)
  oldCenter := (2823007973370633 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (1129 / 2000 : ℚ)
  oldHi := (28250000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1330]
}

def cell_5229 : Cell := { cellDefaults with
  domain := ⟨(5051 / 32000 : ℚ), (1263 / 8000 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (10103 / 64000 : ℚ)
  supportValue := (5647598826132629 / 10000000000000000 : ℚ)
  supportSlope := (5065665559015997 / 1000000000000000 : ℚ)
  oldCenter := (5647598826132629 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (1129 / 2000 : ℚ)
  oldHi := (28250000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1330]
}

def cell_5230 : Cell := { cellDefaults with
  domain := ⟨(1263 / 8000 : ℚ), (5053 / 32000 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (2021 / 12800 : ℚ)
  supportValue := (1129836397486323 / 2000000000000000 : ℚ)
  supportSlope := (316660492000409 / 62500000000000 : ℚ)
  oldCenter := (1129836397486323 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (1129 / 2000 : ℚ)
  oldHi := (28250000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1330]
}

def cell_5231 : Cell := { cellDefaults with
  domain := ⟨(5053 / 32000 : ℚ), (2527 / 16000 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (10107 / 64000 : ℚ)
  supportValue := (1130153064911863 / 2000000000000000 : ℚ)
  supportSlope := (5066778863970001 / 1000000000000000 : ℚ)
  oldCenter := (1130153064911863 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldLo := (1129 / 2000 : ℚ)
  oldHi := (1131 / 2000 : ℚ)
  oldPieces := [piece_1330, piece_1331]
}

def cell_5232 : Cell := { cellDefaults with
  domain := ⟨(2527 / 16000 : ℚ), (1011 / 6400 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (10109 / 64000 : ℚ)
  supportValue := (45218790639729 / 80000000000000 : ℚ)
  supportSlope := (633458534728959 / 125000000000000 : ℚ)
  oldCenter := (45218790639729 / 80000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldHi := (1131 / 2000 : ℚ)
  oldPieces := [piece_1331]
}

def cell_5233 : Cell := { cellDefaults with
  domain := ⟨(1011 / 6400 : ℚ), (79 / 500 : ℚ)⟩
  r := (24276084120521 / 25000000000000 : ℚ)
  w := (49955402209109 / 50000000000000 : ℚ)
  center := (10111 / 64000 : ℚ)
  supportValue := (5653932616948601 / 10000000000000000 : ℚ)
  supportSlope := (1267142381820463 / 250000000000000 : ℚ)
  oldCenter := (5653932616948601 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_442
  oldHi := (1131 / 2000 : ℚ)
  oldPieces := [piece_1331]
}

def cell_5234 : Cell := { cellDefaults with
  domain := ⟨(79 / 500 : ℚ), (5057 / 32000 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (10113 / 64000 : ℚ)
  supportValue := (2825629777708329 / 5000000000000000 : ℚ)
  supportSlope := (1012875450621209 / 200000000000000 : ℚ)
  oldCenter := (2825629777708329 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldHi := (1131 / 2000 : ℚ)
  oldPieces := [piece_1331]
}

def cell_5235 : Cell := { cellDefaults with
  domain := ⟨(5057 / 32000 : ℚ), (2529 / 16000 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (2023 / 12800 : ℚ)
  supportValue := (5652842314052763 / 10000000000000000 : ℚ)
  supportSlope := (5065279135081369 / 1000000000000000 : ℚ)
  oldCenter := (5652842314052763 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldHi := (1131 / 2000 : ℚ)
  oldPieces := [piece_1331]
}

def cell_5236 : Cell := { cellDefaults with
  domain := ⟨(2529 / 16000 : ℚ), (5059 / 32000 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (10117 / 64000 : ℚ)
  supportValue := (706803169324009 / 1250000000000000 : ℚ)
  supportSlope := (5066085246486551 / 1000000000000000 : ℚ)
  oldCenter := (706803169324009 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldHi := (28300000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1331, piece_1332]
}

def cell_5237 : Cell := { cellDefaults with
  domain := ⟨(5059 / 32000 : ℚ), (253 / 1600 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (10119 / 64000 : ℚ)
  supportValue := (1131201707521613 / 2000000000000000 : ℚ)
  supportSlope := (158324461976167 / 31250000000000 : ℚ)
  oldCenter := (1131201707521613 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldLo := (1131 / 2000 : ℚ)
  oldHi := (28300000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1332]
}

def cell_5238 : Cell := { cellDefaults with
  domain := ⟨(253 / 1600 : ℚ), (5061 / 32000 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (10121 / 64000 : ℚ)
  supportValue := (1414397980701659 / 2500000000000000 : ℚ)
  supportSlope := (101345672089721 / 20000000000000 : ℚ)
  oldCenter := (1414397980701659 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldLo := (1131 / 2000 : ℚ)
  oldHi := (28300000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1332]
}

def cell_5239 : Cell := { cellDefaults with
  domain := ⟨(5061 / 32000 : ℚ), (2531 / 16000 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (10123 / 64000 : ℚ)
  supportValue := (5659175589576521 / 10000000000000000 : ℚ)
  supportSlope := (20272739359811 / 4000000000000 : ℚ)
  oldCenter := (5659175589576521 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldLo := (1131 / 2000 : ℚ)
  oldHi := (28300000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1332]
}

def cell_5240 : Cell := { cellDefaults with
  domain := ⟨(2531 / 16000 : ℚ), (5063 / 32000 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (81 / 512 : ℚ)
  supportValue := (5660759433279761 / 10000000000000000 : ℚ)
  supportSlope := (316775083686327 / 62500000000000 : ℚ)
  oldCenter := (5660759433279761 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldLo := (1131 / 2000 : ℚ)
  oldHi := (1133 / 2000 : ℚ)
  oldPieces := [piece_1332, piece_1333]
}

def cell_5241 : Cell := { cellDefaults with
  domain := ⟨(5063 / 32000 : ℚ), (633 / 4000 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (10127 / 64000 : ℚ)
  supportValue := (5662343444715813 / 10000000000000000 : ℚ)
  supportSlope := (10138574059503469 / 2000000000000000 : ℚ)
  oldCenter := (5662343444715813 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldLo := (28300000000000003 / 50000000000000000 : ℚ)
  oldHi := (1133 / 2000 : ℚ)
  oldPieces := [piece_1333]
}

def cell_5242 : Cell := { cellDefaults with
  domain := ⟨(633 / 4000 : ℚ), (1013 / 6400 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (10129 / 64000 : ℚ)
  supportValue := (2831963868694341 / 5000000000000000 : ℚ)
  supportSlope := (2535093596774729 / 500000000000000 : ℚ)
  oldCenter := (2831963868694341 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldLo := (28300000000000003 / 50000000000000000 : ℚ)
  oldHi := (1133 / 2000 : ℚ)
  oldPieces := [piece_1333]
}

def cell_5243 : Cell := { cellDefaults with
  domain := ⟨(1013 / 6400 : ℚ), (2533 / 16000 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (10131 / 64000 : ℚ)
  supportValue := (283275612048249 / 500000000000000 : ℚ)
  supportSlope := (633814184685999 / 125000000000000 : ℚ)
  oldCenter := (283275612048249 / 500000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldLo := (28300000000000003 / 50000000000000000 : ℚ)
  oldHi := (28350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1333, piece_1334]
}

def cell_5244 : Cell := { cellDefaults with
  domain := ⟨(2533 / 16000 : ℚ), (5067 / 32000 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (10133 / 64000 : ℚ)
  supportValue := (708387109788617 / 1250000000000000 : ℚ)
  supportSlope := (633911174649171 / 125000000000000 : ℚ)
  oldCenter := (708387109788617 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldLo := (1133 / 2000 : ℚ)
  oldHi := (28350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1334]
}

def cell_5245 : Cell := { cellDefaults with
  domain := ⟨(5067 / 32000 : ℚ), (1267 / 8000 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (2027 / 12800 : ℚ)
  supportValue := (5668681796553233 / 10000000000000000 : ℚ)
  supportSlope := (2536094241479603 / 500000000000000 : ℚ)
  oldCenter := (5668681796553233 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldLo := (1133 / 2000 : ℚ)
  oldHi := (28350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1334]
}

def cell_5246 : Cell := { cellDefaults with
  domain := ⟨(1267 / 8000 : ℚ), (5069 / 32000 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (10137 / 64000 : ℚ)
  supportValue := (2835133479593301 / 5000000000000000 : ℚ)
  supportSlope := (5072623005659693 / 1000000000000000 : ℚ)
  oldCenter := (2835133479593301 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldLo := (1133 / 2000 : ℚ)
  oldHi := (227 / 400 : ℚ)
  oldPieces := [piece_1334, piece_1335]
}

def cell_5247 : Cell := { cellDefaults with
  domain := ⟨(5069 / 32000 : ℚ), (507 / 3200 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (10139 / 64000 : ℚ)
  supportValue := (5671852222105183 / 10000000000000000 : ℚ)
  supportSlope := (1268322673363187 / 250000000000000 : ℚ)
  oldCenter := (5671852222105183 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldLo := (28350000000000003 / 50000000000000000 : ℚ)
  oldHi := (227 / 400 : ℚ)
  oldPieces := [piece_1335]
}

def cell_5248 : Cell := { cellDefaults with
  domain := ⟨(507 / 3200 : ℚ), (5071 / 32000 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (10141 / 64000 : ℚ)
  supportValue := (5673437765584691 / 10000000000000000 : ℚ)
  supportSlope := (1268547172948331 / 250000000000000 : ℚ)
  oldCenter := (5673437765584691 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldLo := (28350000000000003 / 50000000000000000 : ℚ)
  oldHi := (227 / 400 : ℚ)
  oldPieces := [piece_1335]
}

def cell_5249 : Cell := { cellDefaults with
  domain := ⟨(5071 / 32000 : ℚ), (317 / 2000 : ℚ)⟩
  r := (48500683656197 / 50000000000000 : ℚ)
  w := (9992849337991 / 10000000000000 : ℚ)
  center := (10143 / 64000 : ℚ)
  supportValue := (1418755896613767 / 2500000000000000 : ℚ)
  supportSlope := (634341238590963 / 125000000000000 : ℚ)
  oldCenter := (1418755896613767 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_443
  oldLo := (28350000000000003 / 50000000000000000 : ℚ)
  oldHi := (28400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1335, piece_1336]
}

theorem check_5200 : SourceCertificateFamily.RightNormalized.check cell_5200 = true := by
  decide +kernel

theorem check_5201 : SourceCertificateFamily.RightNormalized.check cell_5201 = true := by
  decide +kernel

theorem check_5202 : SourceCertificateFamily.RightNormalized.check cell_5202 = true := by
  decide +kernel

theorem check_5203 : SourceCertificateFamily.RightNormalized.check cell_5203 = true := by
  decide +kernel

theorem check_5204 : SourceCertificateFamily.RightNormalized.check cell_5204 = true := by
  decide +kernel

theorem check_5205 : SourceCertificateFamily.RightNormalized.check cell_5205 = true := by
  decide +kernel

theorem check_5206 : SourceCertificateFamily.RightNormalized.check cell_5206 = true := by
  decide +kernel

theorem check_5207 : SourceCertificateFamily.RightNormalized.check cell_5207 = true := by
  decide +kernel

theorem check_5208 : SourceCertificateFamily.RightNormalized.check cell_5208 = true := by
  decide +kernel

theorem check_5209 : SourceCertificateFamily.RightNormalized.check cell_5209 = true := by
  decide +kernel

theorem check_5210 : SourceCertificateFamily.RightNormalized.check cell_5210 = true := by
  decide +kernel

theorem check_5211 : SourceCertificateFamily.RightNormalized.check cell_5211 = true := by
  decide +kernel

theorem check_5212 : SourceCertificateFamily.RightNormalized.check cell_5212 = true := by
  decide +kernel

theorem check_5213 : SourceCertificateFamily.RightNormalized.check cell_5213 = true := by
  decide +kernel

theorem check_5214 : SourceCertificateFamily.RightNormalized.check cell_5214 = true := by
  decide +kernel

theorem check_5215 : SourceCertificateFamily.RightNormalized.check cell_5215 = true := by
  decide +kernel

theorem check_5216 : SourceCertificateFamily.RightNormalized.check cell_5216 = true := by
  decide +kernel

theorem check_5217 : SourceCertificateFamily.RightNormalized.check cell_5217 = true := by
  decide +kernel

theorem check_5218 : SourceCertificateFamily.RightNormalized.check cell_5218 = true := by
  decide +kernel

theorem check_5219 : SourceCertificateFamily.RightNormalized.check cell_5219 = true := by
  decide +kernel

theorem check_5220 : SourceCertificateFamily.RightNormalized.check cell_5220 = true := by
  decide +kernel

theorem check_5221 : SourceCertificateFamily.RightNormalized.check cell_5221 = true := by
  decide +kernel

theorem check_5222 : SourceCertificateFamily.RightNormalized.check cell_5222 = true := by
  decide +kernel

theorem check_5223 : SourceCertificateFamily.RightNormalized.check cell_5223 = true := by
  decide +kernel

theorem check_5224 : SourceCertificateFamily.RightNormalized.check cell_5224 = true := by
  decide +kernel

theorem check_5225 : SourceCertificateFamily.RightNormalized.check cell_5225 = true := by
  decide +kernel

theorem check_5226 : SourceCertificateFamily.RightNormalized.check cell_5226 = true := by
  decide +kernel

theorem check_5227 : SourceCertificateFamily.RightNormalized.check cell_5227 = true := by
  decide +kernel

theorem check_5228 : SourceCertificateFamily.RightNormalized.check cell_5228 = true := by
  decide +kernel

theorem check_5229 : SourceCertificateFamily.RightNormalized.check cell_5229 = true := by
  decide +kernel

theorem check_5230 : SourceCertificateFamily.RightNormalized.check cell_5230 = true := by
  decide +kernel

theorem check_5231 : SourceCertificateFamily.RightNormalized.check cell_5231 = true := by
  decide +kernel

theorem check_5232 : SourceCertificateFamily.RightNormalized.check cell_5232 = true := by
  decide +kernel

theorem check_5233 : SourceCertificateFamily.RightNormalized.check cell_5233 = true := by
  decide +kernel

theorem check_5234 : SourceCertificateFamily.RightNormalized.check cell_5234 = true := by
  decide +kernel

theorem check_5235 : SourceCertificateFamily.RightNormalized.check cell_5235 = true := by
  decide +kernel

theorem check_5236 : SourceCertificateFamily.RightNormalized.check cell_5236 = true := by
  decide +kernel

theorem check_5237 : SourceCertificateFamily.RightNormalized.check cell_5237 = true := by
  decide +kernel

theorem check_5238 : SourceCertificateFamily.RightNormalized.check cell_5238 = true := by
  decide +kernel

theorem check_5239 : SourceCertificateFamily.RightNormalized.check cell_5239 = true := by
  decide +kernel

theorem check_5240 : SourceCertificateFamily.RightNormalized.check cell_5240 = true := by
  decide +kernel

theorem check_5241 : SourceCertificateFamily.RightNormalized.check cell_5241 = true := by
  decide +kernel

theorem check_5242 : SourceCertificateFamily.RightNormalized.check cell_5242 = true := by
  decide +kernel

theorem check_5243 : SourceCertificateFamily.RightNormalized.check cell_5243 = true := by
  decide +kernel

theorem check_5244 : SourceCertificateFamily.RightNormalized.check cell_5244 = true := by
  decide +kernel

theorem check_5245 : SourceCertificateFamily.RightNormalized.check cell_5245 = true := by
  decide +kernel

theorem check_5246 : SourceCertificateFamily.RightNormalized.check cell_5246 = true := by
  decide +kernel

theorem check_5247 : SourceCertificateFamily.RightNormalized.check cell_5247 = true := by
  decide +kernel

theorem check_5248 : SourceCertificateFamily.RightNormalized.check cell_5248 = true := by
  decide +kernel

theorem check_5249 : SourceCertificateFamily.RightNormalized.check cell_5249 = true := by
  decide +kernel

def cells : List Cell := [cell_5200, cell_5201, cell_5202, cell_5203, cell_5204, cell_5205, cell_5206, cell_5207, cell_5208, cell_5209, cell_5210, cell_5211, cell_5212, cell_5213, cell_5214, cell_5215, cell_5216, cell_5217, cell_5218, cell_5219, cell_5220, cell_5221, cell_5222, cell_5223, cell_5224, cell_5225, cell_5226, cell_5227, cell_5228, cell_5229, cell_5230, cell_5231, cell_5232, cell_5233, cell_5234, cell_5235, cell_5236, cell_5237, cell_5238, cell_5239, cell_5240, cell_5241, cell_5242, cell_5243, cell_5244, cell_5245, cell_5246, cell_5247, cell_5248, cell_5249]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5200, SourceCertificateFamily.of_right_checked check_5201, SourceCertificateFamily.of_right_checked check_5202, SourceCertificateFamily.of_right_checked check_5203, SourceCertificateFamily.of_right_checked check_5204, SourceCertificateFamily.of_right_checked check_5205, SourceCertificateFamily.of_right_checked check_5206, SourceCertificateFamily.of_right_checked check_5207, SourceCertificateFamily.of_right_checked check_5208, SourceCertificateFamily.of_right_checked check_5209, SourceCertificateFamily.of_right_checked check_5210, SourceCertificateFamily.of_right_checked check_5211, SourceCertificateFamily.of_right_checked check_5212, SourceCertificateFamily.of_right_checked check_5213, SourceCertificateFamily.of_right_checked check_5214, SourceCertificateFamily.of_right_checked check_5215, SourceCertificateFamily.of_right_checked check_5216, SourceCertificateFamily.of_right_checked check_5217, SourceCertificateFamily.of_right_checked check_5218, SourceCertificateFamily.of_right_checked check_5219, SourceCertificateFamily.of_right_checked check_5220, SourceCertificateFamily.of_right_checked check_5221, SourceCertificateFamily.of_right_checked check_5222, SourceCertificateFamily.of_right_checked check_5223, SourceCertificateFamily.of_right_checked check_5224, SourceCertificateFamily.of_right_checked check_5225, SourceCertificateFamily.of_right_checked check_5226, SourceCertificateFamily.of_right_checked check_5227, SourceCertificateFamily.of_right_checked check_5228, SourceCertificateFamily.of_right_checked check_5229, SourceCertificateFamily.of_right_checked check_5230, SourceCertificateFamily.of_right_checked check_5231, SourceCertificateFamily.of_right_checked check_5232, SourceCertificateFamily.of_right_checked check_5233, SourceCertificateFamily.of_right_checked check_5234, SourceCertificateFamily.of_right_checked check_5235, SourceCertificateFamily.of_right_checked check_5236, SourceCertificateFamily.of_right_checked check_5237, SourceCertificateFamily.of_right_checked check_5238, SourceCertificateFamily.of_right_checked check_5239, SourceCertificateFamily.of_right_checked check_5240, SourceCertificateFamily.of_right_checked check_5241, SourceCertificateFamily.of_right_checked check_5242, SourceCertificateFamily.of_right_checked check_5243, SourceCertificateFamily.of_right_checked check_5244, SourceCertificateFamily.of_right_checked check_5245, SourceCertificateFamily.of_right_checked check_5246, SourceCertificateFamily.of_right_checked check_5247, SourceCertificateFamily.of_right_checked check_5248, SourceCertificateFamily.of_right_checked check_5249, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0104

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0104
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0104
open AnalyticBounds.ExpressionCertificate

theorem linked_5200 : Linked cell_5200 pieces := by
  refine ⟨piece_440,piece_440_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5200,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1321_mem
    · exact piece_1322_mem

theorem linked_5201 : Linked cell_5201 pieces := by
  refine ⟨piece_440,piece_440_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5201,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1322_mem

theorem linked_5202 : Linked cell_5202 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5202,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1321_mem

theorem linked_5203 : Linked cell_5203 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5203,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1321_mem
    · exact piece_1322_mem

theorem linked_5204 : Linked cell_5204 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5204,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1322_mem

theorem linked_5205 : Linked cell_5205 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5205,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1322_mem

theorem linked_5206 : Linked cell_5206 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5206,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1322_mem
    · exact piece_1323_mem

theorem linked_5207 : Linked cell_5207 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5207,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1323_mem

theorem linked_5208 : Linked cell_5208 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5208,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1323_mem

theorem linked_5209 : Linked cell_5209 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5209,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1323_mem
    · exact piece_1324_mem

theorem linked_5210 : Linked cell_5210 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5210,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1324_mem

theorem linked_5211 : Linked cell_5211 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5211,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1324_mem

theorem linked_5212 : Linked cell_5212 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5212,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1324_mem
    · exact piece_1325_mem

theorem linked_5213 : Linked cell_5213 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5213,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1325_mem

theorem linked_5214 : Linked cell_5214 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5214,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1325_mem

theorem linked_5215 : Linked cell_5215 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5215,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1325_mem
    · exact piece_1326_mem

theorem linked_5216 : Linked cell_5216 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5216,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1326_mem
    · exact piece_1327_mem

theorem linked_5217 : Linked cell_5217 pieces := by
  refine ⟨piece_441,piece_441_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5217,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1327_mem

theorem linked_5218 : Linked cell_5218 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5218,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1325_mem
    · exact piece_1326_mem
    · exact piece_1327_mem

theorem linked_5219 : Linked cell_5219 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5219,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1327_mem

theorem linked_5220 : Linked cell_5220 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5220,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1327_mem

theorem linked_5221 : Linked cell_5221 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5221,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1327_mem
    · exact piece_1328_mem

theorem linked_5222 : Linked cell_5222 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5222,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1328_mem

theorem linked_5223 : Linked cell_5223 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5223,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1328_mem

theorem linked_5224 : Linked cell_5224 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5224,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1328_mem
    · exact piece_1329_mem

theorem linked_5225 : Linked cell_5225 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5225,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1329_mem

theorem linked_5226 : Linked cell_5226 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5226,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1329_mem

theorem linked_5227 : Linked cell_5227 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5227,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1329_mem
    · exact piece_1330_mem

theorem linked_5228 : Linked cell_5228 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5228,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1330_mem

theorem linked_5229 : Linked cell_5229 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5229,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1330_mem

theorem linked_5230 : Linked cell_5230 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5230,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1330_mem

theorem linked_5231 : Linked cell_5231 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5231,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1330_mem
    · exact piece_1331_mem

theorem linked_5232 : Linked cell_5232 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5232,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1331_mem

theorem linked_5233 : Linked cell_5233 pieces := by
  refine ⟨piece_442,piece_442_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5233,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1331_mem

theorem linked_5234 : Linked cell_5234 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5234,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1331_mem

theorem linked_5235 : Linked cell_5235 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5235,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1331_mem

theorem linked_5236 : Linked cell_5236 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5236,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1331_mem
    · exact piece_1332_mem

theorem linked_5237 : Linked cell_5237 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5237,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1332_mem

theorem linked_5238 : Linked cell_5238 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5238,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1332_mem

theorem linked_5239 : Linked cell_5239 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5239,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1332_mem

theorem linked_5240 : Linked cell_5240 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5240,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1332_mem
    · exact piece_1333_mem

theorem linked_5241 : Linked cell_5241 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5241,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1333_mem

theorem linked_5242 : Linked cell_5242 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5242,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1333_mem

theorem linked_5243 : Linked cell_5243 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5243,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1333_mem
    · exact piece_1334_mem

theorem linked_5244 : Linked cell_5244 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5244,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1334_mem

theorem linked_5245 : Linked cell_5245 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5245,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1334_mem

theorem linked_5246 : Linked cell_5246 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5246,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1334_mem
    · exact piece_1335_mem

theorem linked_5247 : Linked cell_5247 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5247,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1335_mem

theorem linked_5248 : Linked cell_5248 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5248,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1335_mem

theorem linked_5249 : Linked cell_5249 pieces := by
  refine ⟨piece_443,piece_443_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5249,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1335_mem
    · exact piece_1336_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0104.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0104.cells,List.forall_mem_cons]
  exact ⟨linked_5200, linked_5201, linked_5202, linked_5203, linked_5204, linked_5205, linked_5206, linked_5207, linked_5208, linked_5209, linked_5210, linked_5211, linked_5212, linked_5213, linked_5214, linked_5215, linked_5216, linked_5217, linked_5218, linked_5219, linked_5220, linked_5221, linked_5222, linked_5223, linked_5224, linked_5225, linked_5226, linked_5227, linked_5228, linked_5229, linked_5230, linked_5231, linked_5232, linked_5233, linked_5234, linked_5235, linked_5236, linked_5237, linked_5238, linked_5239, linked_5240, linked_5241, linked_5242, linked_5243, linked_5244, linked_5245, linked_5246, linked_5247, linked_5248, linked_5249, by simp⟩

theorem covered : covers (2511 / 16000 : ℚ) (317 / 2000 : ℚ)
    (SourceCertificates.Chunk0104.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0104
