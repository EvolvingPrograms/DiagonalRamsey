import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0122
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(1191 / 6400 : ℚ), (1489 / 8000 : ℚ)⟩
  branch := .right
  r := (22866940675137 / 25000000000000 : ℚ)
  w := (2020660965147 / 2000000000000 : ℚ)
  center := (11911 / 64000 : ℚ)
  supportValue := (6865976842815773 / 10000000000000000 : ℚ)
  supportSlope := (5390748429142889 / 1000000000000000 : ℚ)
  oldCenter := (6865976842815773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_507
  oldLo := (277 / 400 : ℚ)
  oldHi := (34550000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1609]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6100 : Cell := { cellDefaults with
  r := (4582255520621 / 5000000000000 : ℚ)
  w := (5049517835391 / 5000000000000 : ℚ)
  newCoefficients := coefficients_504
  oldLo := (1373 / 2000 : ℚ)
  oldHi := (34350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1596]
}

def cell_6101 : Cell := { cellDefaults with
  domain := ⟨(1489 / 8000 : ℚ), (2979 / 16000 : ℚ)⟩
  r := (4582255520621 / 5000000000000 : ℚ)
  w := (5049517835391 / 5000000000000 : ℚ)
  center := (5957 / 32000 : ℚ)
  supportValue := (1717125665416877 / 2500000000000000 : ℚ)
  supportSlope := (10783825211898801 / 2000000000000000 : ℚ)
  oldCenter := (1717125665416877 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_504
  oldLo := (1373 / 2000 : ℚ)
  oldHi := (11 / 16 : ℚ)
  oldPieces := [piece_1596, piece_1597]
}

def cell_6102 : Cell := { cellDefaults with
  domain := ⟨(2979 / 16000 : ℚ), (149 / 800 : ℚ)⟩
  r := (4582255520621 / 5000000000000 : ℚ)
  w := (5049517835391 / 5000000000000 : ℚ)
  center := (5959 / 32000 : ℚ)
  supportValue := (171796823635961 / 250000000000000 : ℚ)
  supportSlope := (674128353464809 / 125000000000000 : ℚ)
  oldCenter := (171796823635961 / 250000000000000 : ℚ)
  newCoefficients := coefficients_504
  oldLo := (34350000000000003 / 50000000000000000 : ℚ)
  oldHi := (11 / 16 : ℚ)
  oldPieces := [piece_1597]
}

def cell_6103 : Cell := { cellDefaults with
  domain := ⟨(149 / 800 : ℚ), (2981 / 16000 : ℚ)⟩
  r := (4582255520621 / 5000000000000 : ℚ)
  w := (5049517835391 / 5000000000000 : ℚ)
  center := (5961 / 32000 : ℚ)
  supportValue := (6875244059939309 / 10000000000000000 : ℚ)
  supportSlope := (5394327665161569 / 1000000000000000 : ℚ)
  oldCenter := (6875244059939309 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_504
  oldLo := (34350000000000003 / 50000000000000000 : ℚ)
  oldHi := (34400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1597, piece_1598]
}

def cell_6104 : Cell := { cellDefaults with
  domain := ⟨(2981 / 16000 : ℚ), (1491 / 8000 : ℚ)⟩
  r := (4582255520621 / 5000000000000 : ℚ)
  w := (5049517835391 / 5000000000000 : ℚ)
  center := (5963 / 32000 : ℚ)
  supportValue := (6878615875824161 / 10000000000000000 : ℚ)
  supportSlope := (53956560816939 / 10000000000000 : ℚ)
  oldCenter := (6878615875824161 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_504
  oldLo := (11 / 16 : ℚ)
  oldHi := (1377 / 2000 : ℚ)
  oldPieces := [piece_1598, piece_1599]
}

def cell_6105 : Cell := { cellDefaults with
  domain := ⟨(1491 / 8000 : ℚ), (1193 / 6400 : ℚ)⟩
  r := (4582255520621 / 5000000000000 : ℚ)
  w := (5049517835391 / 5000000000000 : ℚ)
  center := (11929 / 64000 : ℚ)
  supportValue := (6881146658626279 / 10000000000000000 : ℚ)
  supportSlope := (1079277902257303 / 200000000000000 : ℚ)
  oldCenter := (6881146658626279 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_504
  oldLo := (34400000000000003 / 50000000000000000 : ℚ)
  oldHi := (1377 / 2000 : ℚ)
  oldPieces := [piece_1599]
}

def cell_6106 : Cell := { cellDefaults with
  domain := ⟨(1193 / 6400 : ℚ), (2983 / 16000 : ℚ)⟩
  r := (4582255520621 / 5000000000000 : ℚ)
  w := (5049517835391 / 5000000000000 : ℚ)
  center := (11931 / 64000 : ℚ)
  supportValue := (6882833154240953 / 10000000000000000 : ℚ)
  supportSlope := (2698591775468273 / 500000000000000 : ℚ)
  oldCenter := (6882833154240953 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_504
  oldLo := (34400000000000003 / 50000000000000000 : ℚ)
  oldHi := (1377 / 2000 : ℚ)
  oldPieces := [piece_1599]
}

def cell_6107 : Cell := { cellDefaults with
  domain := ⟨(2983 / 16000 : ℚ), (5967 / 32000 : ℚ)⟩
  r := (4582255520621 / 5000000000000 : ℚ)
  w := (5049517835391 / 5000000000000 : ℚ)
  center := (11933 / 64000 : ℚ)
  supportValue := (6884519898023591 / 10000000000000000 : ℚ)
  supportSlope := (1079573843390591 / 200000000000000 : ℚ)
  oldCenter := (6884519898023591 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_504
  oldLo := (34400000000000003 / 50000000000000000 : ℚ)
  oldHi := (34450000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1599, piece_1600]
}

def cell_6108 : Cell := { cellDefaults with
  domain := ⟨(5967 / 32000 : ℚ), (373 / 2000 : ℚ)⟩
  r := (4582255520621 / 5000000000000 : ℚ)
  w := (5049517835391 / 5000000000000 : ℚ)
  center := (2387 / 12800 : ℚ)
  supportValue := (275448271097591 / 400000000000000 : ℚ)
  supportSlope := (5398268481329183 / 1000000000000000 : ℚ)
  oldCenter := (275448271097591 / 400000000000000 : ℚ)
  newCoefficients := coefficients_504
  oldLo := (1377 / 2000 : ℚ)
  oldHi := (34450000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1600]
}

def cell_6109 : Cell := { cellDefaults with
  domain := ⟨(373 / 2000 : ℚ), (5969 / 32000 : ℚ)⟩
  r := (9155632405617 / 10000000000000 : ℚ)
  w := (5050582269717 / 5000000000000 : ℚ)
  center := (11937 / 64000 : ℚ)
  supportValue := (6883079521948257 / 10000000000000000 : ℚ)
  supportSlope := (5394380348885619 / 1000000000000000 : ℚ)
  oldCenter := (6883079521948257 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_505
  oldLo := (34400000000000003 / 50000000000000000 : ℚ)
  oldHi := (1377 / 2000 : ℚ)
  oldPieces := [piece_1599]
}

def cell_6110 : Cell := { cellDefaults with
  domain := ⟨(5969 / 32000 : ℚ), (597 / 3200 : ℚ)⟩
  r := (9155632405617 / 10000000000000 : ℚ)
  w := (5050582269717 / 5000000000000 : ℚ)
  center := (11939 / 64000 : ℚ)
  supportValue := (860595673717109 / 1250000000000000 : ℚ)
  supportSlope := (5394992949927513 / 1000000000000000 : ℚ)
  oldCenter := (860595673717109 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_505
  oldLo := (34400000000000003 / 50000000000000000 : ℚ)
  oldHi := (34450000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1599, piece_1600]
}

def cell_6111 : Cell := { cellDefaults with
  domain := ⟨(597 / 3200 : ℚ), (1493 / 8000 : ℚ)⟩
  r := (9155632405617 / 10000000000000 : ℚ)
  w := (5050582269717 / 5000000000000 : ℚ)
  center := (5971 / 32000 : ℚ)
  supportValue := (6887293065280417 / 10000000000000000 : ℚ)
  supportSlope := (337241393303489 / 62500000000000 : ℚ)
  oldCenter := (6887293065280417 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_505
  oldLo := (1377 / 2000 : ℚ)
  oldHi := (34450000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1600]
}

def cell_6112 : Cell := { cellDefaults with
  domain := ⟨(1493 / 8000 : ℚ), (2987 / 16000 : ℚ)⟩
  r := (9155632405617 / 10000000000000 : ℚ)
  w := (5050582269717 / 5000000000000 : ℚ)
  center := (5973 / 32000 : ℚ)
  supportValue := (3445332956040843 / 5000000000000000 : ℚ)
  supportSlope := (5397098858930249 / 1000000000000000 : ℚ)
  oldCenter := (3445332956040843 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_505
  oldLo := (1377 / 2000 : ℚ)
  oldHi := (1379 / 2000 : ℚ)
  oldPieces := [piece_1600, piece_1601]
}

def cell_6113 : Cell := { cellDefaults with
  domain := ⟨(2987 / 16000 : ℚ), (747 / 4000 : ℚ)⟩
  r := (9155632405617 / 10000000000000 : ℚ)
  w := (5050582269717 / 5000000000000 : ℚ)
  center := (239 / 1280 : ℚ)
  supportValue := (3447019749429581 / 5000000000000000 : ℚ)
  supportSlope := (2699212696558817 / 500000000000000 : ℚ)
  oldCenter := (3447019749429581 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_505
  oldLo := (34450000000000003 / 50000000000000000 : ℚ)
  oldHi := (34500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1601, piece_1602]
}

def cell_6114 : Cell := { cellDefaults with
  domain := ⟨(747 / 4000 : ℚ), (2989 / 16000 : ℚ)⟩
  r := (9155632405617 / 10000000000000 : ℚ)
  w := (5050582269717 / 5000000000000 : ℚ)
  center := (5977 / 32000 : ℚ)
  supportValue := (6897413852565207 / 10000000000000000 : ℚ)
  supportSlope := (674952240312221 / 125000000000000 : ℚ)
  oldCenter := (6897413852565207 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_505
  oldLo := (1379 / 2000 : ℚ)
  oldHi := (34500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1602]
}

def cell_6115 : Cell := { cellDefaults with
  domain := ⟨(2989 / 16000 : ℚ), (299 / 1600 : ℚ)⟩
  r := (9155632405617 / 10000000000000 : ℚ)
  w := (5050582269717 / 5000000000000 : ℚ)
  center := (5979 / 32000 : ℚ)
  supportValue := (1380157806976013 / 2000000000000000 : ℚ)
  supportSlope := (5400835209682597 / 1000000000000000 : ℚ)
  oldCenter := (1380157806976013 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_505
  oldLo := (1379 / 2000 : ℚ)
  oldHi := (3451396648044693 / 5000000000000000 : ℚ)
  oldPieces := [piece_1602, piece_1603]
}

def cell_6116 : Cell := { cellDefaults with
  domain := ⟨(299 / 1600 : ℚ), (3738582402234637 / 20000000000000000 : ℚ)⟩
  r := (9155632405617 / 10000000000000 : ℚ)
  w := (5050582269717 / 5000000000000 : ℚ)
  center := (7476082402234637 / 40000000000000000 : ℚ)
  supportValue := (6903938617487331 / 10000000000000000 : ℚ)
  supportSlope := (5402112169358261 / 1000000000000000 : ℚ)
  oldCenter := (6903938617487331 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_505
  oldLo := (34500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1603, piece_1604, piece_1605]
}

def cell_6117 : Cell := { cellDefaults with
  domain := ⟨(3738582402234637 / 20000000000000000 : ℚ), (1869832402234637 / 10000000000000000 : ℚ)⟩
  r := (9155632405617 / 10000000000000 : ℚ)
  w := (5050582269717 / 5000000000000 : ℚ)
  center := (7478247206703911 / 40000000000000000 : ℚ)
  supportValue := (11050979970363 / 16000000000000 : ℚ)
  supportSlope := (1080610421669377 / 200000000000000 : ℚ)
  oldCenter := (11050979970363 / 16000000000000 : ℚ)
  newCoefficients := coefficients_505
  oldLo := (1381 / 2000 : ℚ)
  oldPieces := [piece_1605]
}

def cell_6118 : Cell := { cellDefaults with
  domain := ⟨(1869832402234637 / 10000000000000000 : ℚ), (187 / 1000 : ℚ)⟩
  r := (9155632405617 / 10000000000000 : ℚ)
  w := (5050582269717 / 5000000000000 : ℚ)
  center := (3739832402234637 / 20000000000000000 : ℚ)
  supportValue := (6908778860545381 / 10000000000000000 : ℚ)
  supportSlope := (5403950865366379 / 1000000000000000 : ℚ)
  oldCenter := (6908778860545381 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_506
  oldLo := (1381 / 2000 : ℚ)
  oldPieces := [piece_1605]
}

def cell_6119 : Cell := { cellDefaults with
  domain := ⟨(187 / 1000 : ℚ), (1197 / 6400 : ℚ)⟩
  center := (11969 / 64000 : ℚ)
  supportValue := (3452627756904619 / 5000000000000000 : ℚ)
  supportSlope := (5399552256715623 / 1000000000000000 : ℚ)
  oldCenter := (3452627756904619 / 5000000000000000 : ℚ)
  oldLo := (3451396648044693 / 5000000000000000 : ℚ)
  oldPieces := [piece_1604, piece_1605]
}

def cell_6120 : Cell := { cellDefaults with
  domain := ⟨(1197 / 6400 : ℚ), (2993 / 16000 : ℚ)⟩
  center := (11971 / 64000 : ℚ)
  supportValue := (6906942942969219 / 10000000000000000 : ℚ)
  supportSlope := (5400169986611303 / 1000000000000000 : ℚ)
  oldCenter := (6906942942969219 / 10000000000000000 : ℚ)
  oldLo := (1381 / 2000 : ℚ)
  oldPieces := [piece_1605]
}

def cell_6121 : Cell := { cellDefaults with
  domain := ⟨(2993 / 16000 : ℚ), (1497 / 8000 : ℚ)⟩
  center := (5987 / 32000 : ℚ)
  supportValue := (863684146135229 / 1250000000000000 : ℚ)
  supportSlope := (5401185937103037 / 1000000000000000 : ℚ)
  oldCenter := (863684146135229 / 1250000000000000 : ℚ)
  oldLo := (1381 / 2000 : ℚ)
  oldHi := (1383 / 2000 : ℚ)
  oldPieces := [piece_1605, piece_1606]
}

def cell_6122 : Cell := { cellDefaults with
  domain := ⟨(1497 / 8000 : ℚ), (599 / 3200 : ℚ)⟩
  center := (5989 / 32000 : ℚ)
  supportValue := (6912849247796059 / 10000000000000000 : ℚ)
  supportSlope := (5402441714897677 / 1000000000000000 : ℚ)
  oldCenter := (6912849247796059 / 10000000000000000 : ℚ)
  oldLo := (34550000000000003 / 50000000000000000 : ℚ)
  oldHi := (1383 / 2000 : ℚ)
  oldPieces := [piece_1606]
}

def cell_6123 : Cell := { cellDefaults with
  domain := ⟨(599 / 3200 : ℚ), (749 / 4000 : ℚ)⟩
  center := (5991 / 32000 : ℚ)
  supportValue := (6916226154058487 / 10000000000000000 : ℚ)
  supportSlope := (5403593067009993 / 1000000000000000 : ℚ)
  oldCenter := (6916226154058487 / 10000000000000000 : ℚ)
  oldLo := (34550000000000003 / 50000000000000000 : ℚ)
  oldHi := (34600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1606, piece_1607]
}

def cell_6124 : Cell := { cellDefaults with
  domain := ⟨(749 / 4000 : ℚ), (2997 / 16000 : ℚ)⟩
  center := (5993 / 32000 : ℚ)
  supportValue := (6919603850883337 / 10000000000000000 : ℚ)
  supportSlope := (1351229100582163 / 250000000000000 : ℚ)
  oldCenter := (6919603850883337 / 10000000000000000 : ℚ)
  oldLo := (1383 / 2000 : ℚ)
  oldHi := (277 / 400 : ℚ)
  oldPieces := [piece_1607, piece_1608]
}

def cell_6125 : Cell := { cellDefaults with
  domain := ⟨(2997 / 16000 : ℚ), (1499 / 8000 : ℚ)⟩
  center := (1199 / 6400 : ℚ)
  supportValue := (6922982260887129 / 10000000000000000 : ℚ)
  supportSlope := (2703095334535277 / 500000000000000 : ℚ)
  oldCenter := (6922982260887129 / 10000000000000000 : ℚ)
  oldLo := (34600000000000003 / 50000000000000000 : ℚ)
  oldHi := (277 / 400 : ℚ)
  oldPieces := [piece_1608]
}

def cell_6126 : Cell := { cellDefaults with
  domain := ⟨(1499 / 8000 : ℚ), (5997 / 32000 : ℚ)⟩
  center := (11993 / 64000 : ℚ)
  supportValue := (1731379506843033 / 2500000000000000 : ℚ)
  supportSlope := (1351743501969871 / 250000000000000 : ℚ)
  oldCenter := (1731379506843033 / 2500000000000000 : ℚ)
  oldLo := (34600000000000003 / 50000000000000000 : ℚ)
  oldHi := (34650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1608, piece_1609]
}

def cell_6127 : Cell := { cellDefaults with
  domain := ⟨(5997 / 32000 : ℚ), (2999 / 16000 : ℚ)⟩
  center := (2399 / 12800 : ℚ)
  supportValue := (3463603899997919 / 5000000000000000 : ℚ)
  supportSlope := (1081533696032011 / 200000000000000 : ℚ)
  oldCenter := (3463603899997919 / 5000000000000000 : ℚ)
  oldHi := (34650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1609]
}

def cell_6128 : Cell := { cellDefaults with
  domain := ⟨(2999 / 16000 : ℚ), (5999 / 32000 : ℚ)⟩
  center := (11997 / 64000 : ℚ)
  supportValue := (6928897819849231 / 10000000000000000 : ℚ)
  supportSlope := (2704229855531537 / 500000000000000 : ℚ)
  oldCenter := (6928897819849231 / 10000000000000000 : ℚ)
  oldHi := (34650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1609]
}

def cell_6129 : Cell := { cellDefaults with
  domain := ⟨(5999 / 32000 : ℚ), (3 / 16 : ℚ)⟩
  center := (11999 / 64000 : ℚ)
  supportValue := (216580876016579 / 312500000000000 : ℚ)
  supportSlope := (5408826493450647 / 1000000000000000 : ℚ)
  oldCenter := (216580876016579 / 312500000000000 : ℚ)
  oldHi := (69350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1609, piece_1610]
}

def cell_6130 : Cell := { cellDefaults with
  domain := ⟨(3 / 16 : ℚ), (6001 / 32000 : ℚ)⟩
  r := (91379427383681 / 100000000000000 : ℚ)
  w := (505272770221 / 500000000000 : ℚ)
  center := (12001 / 64000 : ℚ)
  supportValue := (6927451185688457 / 10000000000000000 : ℚ)
  supportSlope := (270243086075439 / 50000000000000 : ℚ)
  oldCenter := (6927451185688457 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_508
  oldHi := (34650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1609]
}

def cell_6131 : Cell := { cellDefaults with
  domain := ⟨(6001 / 32000 : ℚ), (3001 / 16000 : ℚ)⟩
  r := (91379427383681 / 100000000000000 : ℚ)
  w := (505272770221 / 500000000000 : ℚ)
  center := (12003 / 64000 : ℚ)
  supportValue := (866142541054281 / 1250000000000000 : ℚ)
  supportSlope := (10811305961567541 / 2000000000000000 : ℚ)
  oldCenter := (866142541054281 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_508
  oldHi := (34650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1609]
}

def cell_6132 : Cell := { cellDefaults with
  domain := ⟨(3001 / 16000 : ℚ), (1501 / 8000 : ℚ)⟩
  r := (91379427383681 / 100000000000000 : ℚ)
  w := (505272770221 / 500000000000 : ℚ)
  center := (6003 / 32000 : ℚ)
  supportValue := (216614780152609 / 312500000000000 : ℚ)
  supportSlope := (5406341558966687 / 1000000000000000 : ℚ)
  oldCenter := (216614780152609 / 312500000000000 : ℚ)
  newCoefficients := coefficients_508
  oldHi := (69350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1609, piece_1610]
}

def cell_6133 : Cell := { cellDefaults with
  domain := ⟨(1501 / 8000 : ℚ), (3003 / 16000 : ℚ)⟩
  r := (91379427383681 / 100000000000000 : ℚ)
  w := (505272770221 / 500000000000 : ℚ)
  center := (1201 / 6400 : ℚ)
  supportValue := (6935052415254463 / 10000000000000000 : ℚ)
  supportSlope := (2703831613720453 / 500000000000000 : ℚ)
  oldCenter := (6935052415254463 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_508
  oldLo := (34650000000000003 / 50000000000000000 : ℚ)
  oldHi := (34700000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1610, piece_1611]
}

def cell_6134 : Cell := { cellDefaults with
  domain := ⟨(3003 / 16000 : ℚ), (751 / 4000 : ℚ)⟩
  r := (91379427383681 / 100000000000000 : ℚ)
  w := (505272770221 / 500000000000 : ℚ)
  center := (6007 / 32000 : ℚ)
  supportValue := (6938432546708703 / 10000000000000000 : ℚ)
  supportSlope := (5408983823077307 / 1000000000000000 : ℚ)
  oldCenter := (6938432546708703 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_508
  oldLo := (69350000000000001 / 100000000000000000 : ℚ)
  oldHi := (69450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1611, piece_1612]
}

def cell_6135 : Cell := { cellDefaults with
  domain := ⟨(751 / 4000 : ℚ), (601 / 3200 : ℚ)⟩
  r := (91379427383681 / 100000000000000 : ℚ)
  w := (505272770221 / 500000000000 : ℚ)
  center := (6009 / 32000 : ℚ)
  supportValue := (1735453374641173 / 2500000000000000 : ℚ)
  supportSlope := (1352520889896791 / 250000000000000 : ℚ)
  oldCenter := (1735453374641173 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_508
  oldLo := (34700000000000003 / 50000000000000000 : ℚ)
  oldHi := (69450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1612]
}

def cell_6136 : Cell := { cellDefaults with
  domain := ⟨(601 / 3200 : ℚ), (1503 / 8000 : ℚ)⟩
  r := (91379427383681 / 100000000000000 : ℚ)
  w := (505272770221 / 500000000000 : ℚ)
  center := (6011 / 32000 : ℚ)
  supportValue := (3472597637666789 / 5000000000000000 : ℚ)
  supportSlope := (5411385011429459 / 1000000000000000 : ℚ)
  oldCenter := (3472597637666789 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_508
  oldLo := (34700000000000003 / 50000000000000000 : ℚ)
  oldHi := (34750000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1612, piece_1613]
}

def cell_6137 : Cell := { cellDefaults with
  domain := ⟨(1503 / 8000 : ℚ), (3007 / 16000 : ℚ)⟩
  r := (91379427383681 / 100000000000000 : ℚ)
  w := (505272770221 / 500000000000 : ℚ)
  center := (6013 / 32000 : ℚ)
  supportValue := (6948577745842209 / 10000000000000000 : ℚ)
  supportSlope := (5412704149742709 / 1000000000000000 : ℚ)
  oldCenter := (6948577745842209 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_508
  oldLo := (69450000000000001 / 100000000000000000 : ℚ)
  oldHi := (69550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1613, piece_1614]
}

def cell_6138 : Cell := { cellDefaults with
  domain := ⟨(3007 / 16000 : ℚ), (1203 / 6400 : ℚ)⟩
  r := (91379427383681 / 100000000000000 : ℚ)
  w := (505272770221 / 500000000000 : ℚ)
  center := (12029 / 64000 : ℚ)
  supportValue := (1390223306771999 / 2000000000000000 : ℚ)
  supportSlope := (676678744580439 / 125000000000000 : ℚ)
  oldCenter := (1390223306771999 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_508
  oldLo := (34750000000000003 / 50000000000000000 : ℚ)
  oldHi := (69550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1614]
}

def cell_6139 : Cell := { cellDefaults with
  domain := ⟨(1203 / 6400 : ℚ), (47 / 250 : ℚ)⟩
  r := (91379427383681 / 100000000000000 : ℚ)
  w := (505272770221 / 500000000000 : ℚ)
  center := (12031 / 64000 : ℚ)
  supportValue := (6952808353877001 / 10000000000000000 : ℚ)
  supportSlope := (676777410277829 / 125000000000000 : ℚ)
  oldCenter := (6952808353877001 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_508
  oldLo := (34750000000000003 / 50000000000000000 : ℚ)
  oldHi := (69550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1614]
}

def cell_6140 : Cell := { cellDefaults with
  domain := ⟨(47 / 250 : ℚ), (6017 / 32000 : ℚ)⟩
  r := (45645658158187 / 50000000000000 : ℚ)
  w := (2526904569411 / 2500000000000 : ℚ)
  center := (12033 / 64000 : ℚ)
  supportValue := (6949667490563693 / 10000000000000000 : ℚ)
  supportSlope := (5410179635827461 / 1000000000000000 : ℚ)
  oldCenter := (6949667490563693 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_509
  oldLo := (69450000000000001 / 100000000000000000 : ℚ)
  oldHi := (69550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1613, piece_1614]
}

def cell_6141 : Cell := { cellDefaults with
  domain := ⟨(6017 / 32000 : ℚ), (3009 / 16000 : ℚ)⟩
  r := (45645658158187 / 50000000000000 : ℚ)
  w := (2526904569411 / 2500000000000 : ℚ)
  center := (2407 / 12800 : ℚ)
  supportValue := (3475679108519529 / 5000000000000000 : ℚ)
  supportSlope := (5410622104914609 / 1000000000000000 : ℚ)
  oldCenter := (3475679108519529 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_509
  oldLo := (34750000000000003 / 50000000000000000 : ℚ)
  oldHi := (69550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1614]
}

def cell_6142 : Cell := { cellDefaults with
  domain := ⟨(3009 / 16000 : ℚ), (301 / 1600 : ℚ)⟩
  r := (45645658158187 / 50000000000000 : ℚ)
  w := (2526904569411 / 2500000000000 : ℚ)
  center := (6019 / 32000 : ℚ)
  supportValue := (6953893332624639 / 10000000000000000 : ℚ)
  supportSlope := (5411719835036521 / 1000000000000000 : ℚ)
  oldCenter := (6953893332624639 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_509
  oldLo := (34750000000000003 / 50000000000000000 : ℚ)
  oldHi := (6958100558659217 / 10000000000000000 : ℚ)
  oldPieces := [piece_1614, piece_1615]
}

def cell_6143 : Cell := { cellDefaults with
  domain := ⟨(301 / 1600 : ℚ), (3011 / 16000 : ℚ)⟩
  r := (45645658158187 / 50000000000000 : ℚ)
  w := (2526904569411 / 2500000000000 : ℚ)
  center := (6021 / 32000 : ℚ)
  supportValue := (6957275994171541 / 10000000000000000 : ℚ)
  supportSlope := (2706443242097123 / 500000000000000 : ℚ)
  oldCenter := (6957275994171541 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_509
  oldLo := (69550000000000001 / 100000000000000000 : ℚ)
  oldHi := (34800000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1615, piece_1616]
}

def cell_6144 : Cell := { cellDefaults with
  domain := ⟨(3011 / 16000 : ℚ), (753 / 4000 : ℚ)⟩
  r := (45645658158187 / 50000000000000 : ℚ)
  w := (2526904569411 / 2500000000000 : ℚ)
  center := (6023 / 32000 : ℚ)
  supportValue := (3480329739767743 / 5000000000000000 : ℚ)
  supportSlope := (541411825600413 / 100000000000000 : ℚ)
  oldCenter := (3480329739767743 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_509
  oldLo := (6958100558659217 / 10000000000000000 : ℚ)
  oldHi := (69650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1616, piece_1617]
}

def cell_6145 : Cell := { cellDefaults with
  domain := ⟨(753 / 4000 : ℚ), (3013 / 16000 : ℚ)⟩
  r := (45645658158187 / 50000000000000 : ℚ)
  w := (2526904569411 / 2500000000000 : ℚ)
  center := (241 / 1280 : ℚ)
  supportValue := (3482021850347763 / 5000000000000000 : ℚ)
  supportSlope := (5415435825925741 / 1000000000000000 : ℚ)
  oldCenter := (3482021850347763 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_509
  oldLo := (34800000000000003 / 50000000000000000 : ℚ)
  oldHi := (34850000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1617, piece_1618]
}

def cell_6146 : Cell := { cellDefaults with
  domain := ⟨(3013 / 16000 : ℚ), (1507 / 8000 : ℚ)⟩
  r := (45645658158187 / 50000000000000 : ℚ)
  w := (2526904569411 / 2500000000000 : ℚ)
  center := (6027 / 32000 : ℚ)
  supportValue := (6967428684506429 / 10000000000000000 : ℚ)
  supportSlope := (5416623942352317 / 1000000000000000 : ℚ)
  oldCenter := (6967428684506429 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_509
  oldLo := (69650000000000001 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1618]
}

def cell_6147 : Cell := { cellDefaults with
  domain := ⟨(1507 / 8000 : ℚ), (6029 / 32000 : ℚ)⟩
  r := (45645658158187 / 50000000000000 : ℚ)
  w := (2526904569411 / 2500000000000 : ℚ)
  center := (12057 / 64000 : ℚ)
  supportValue := (6969969397445003 / 10000000000000000 : ℚ)
  supportSlope := (5417566911688709 / 1000000000000000 : ℚ)
  oldCenter := (6969969397445003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_509
  oldLo := (69650000000000001 / 100000000000000000 : ℚ)
  oldHi := (69750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1618, piece_1619]
}

def cell_6148 : Cell := { cellDefaults with
  domain := ⟨(6029 / 32000 : ℚ), (603 / 3200 : ℚ)⟩
  r := (45645658158187 / 50000000000000 : ℚ)
  w := (2526904569411 / 2500000000000 : ℚ)
  center := (12059 / 64000 : ℚ)
  supportValue := (871457804047509 / 1250000000000000 : ℚ)
  supportSlope := (541809759051759 / 100000000000000 : ℚ)
  oldCenter := (871457804047509 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_509
  oldLo := (34850000000000003 / 50000000000000000 : ℚ)
  oldHi := (69750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1619]
}

def cell_6149 : Cell := { cellDefaults with
  domain := ⟨(603 / 3200 : ℚ), (6031 / 32000 : ℚ)⟩
  r := (45645658158187 / 50000000000000 : ℚ)
  w := (2526904569411 / 2500000000000 : ℚ)
  center := (12061 / 64000 : ℚ)
  supportValue := (1394671142172099 / 2000000000000000 : ℚ)
  supportSlope := (5418885814780339 / 1000000000000000 : ℚ)
  oldCenter := (1394671142172099 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_509
  oldLo := (34850000000000003 / 50000000000000000 : ℚ)
  oldHi := (69750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1619]
}

theorem check_6100 : SourceCertificateFamily.RightNormalized.check cell_6100 = true := by
  decide +kernel

theorem check_6101 : SourceCertificateFamily.RightNormalized.check cell_6101 = true := by
  decide +kernel

theorem check_6102 : SourceCertificateFamily.RightNormalized.check cell_6102 = true := by
  decide +kernel

theorem check_6103 : SourceCertificateFamily.RightNormalized.check cell_6103 = true := by
  decide +kernel

theorem check_6104 : SourceCertificateFamily.RightNormalized.check cell_6104 = true := by
  decide +kernel

theorem check_6105 : SourceCertificateFamily.RightNormalized.check cell_6105 = true := by
  decide +kernel

theorem check_6106 : SourceCertificateFamily.RightNormalized.check cell_6106 = true := by
  decide +kernel

theorem check_6107 : SourceCertificateFamily.RightNormalized.check cell_6107 = true := by
  decide +kernel

theorem check_6108 : SourceCertificateFamily.RightNormalized.check cell_6108 = true := by
  decide +kernel

theorem check_6109 : SourceCertificateFamily.RightNormalized.check cell_6109 = true := by
  decide +kernel

theorem check_6110 : SourceCertificateFamily.RightNormalized.check cell_6110 = true := by
  decide +kernel

theorem check_6111 : SourceCertificateFamily.RightNormalized.check cell_6111 = true := by
  decide +kernel

theorem check_6112 : SourceCertificateFamily.RightNormalized.check cell_6112 = true := by
  decide +kernel

theorem check_6113 : SourceCertificateFamily.RightNormalized.check cell_6113 = true := by
  decide +kernel

theorem check_6114 : SourceCertificateFamily.RightNormalized.check cell_6114 = true := by
  decide +kernel

theorem check_6115 : SourceCertificateFamily.RightNormalized.check cell_6115 = true := by
  decide +kernel

theorem check_6116 : SourceCertificateFamily.RightNormalized.check cell_6116 = true := by
  decide +kernel

theorem check_6117 : SourceCertificateFamily.RightNormalized.check cell_6117 = true := by
  decide +kernel

theorem check_6118 : SourceCertificateFamily.RightNormalized.check cell_6118 = true := by
  decide +kernel

theorem check_6119 : SourceCertificateFamily.RightNormalized.check cell_6119 = true := by
  decide +kernel

theorem check_6120 : SourceCertificateFamily.RightNormalized.check cell_6120 = true := by
  decide +kernel

theorem check_6121 : SourceCertificateFamily.RightNormalized.check cell_6121 = true := by
  decide +kernel

theorem check_6122 : SourceCertificateFamily.RightNormalized.check cell_6122 = true := by
  decide +kernel

theorem check_6123 : SourceCertificateFamily.RightNormalized.check cell_6123 = true := by
  decide +kernel

theorem check_6124 : SourceCertificateFamily.RightNormalized.check cell_6124 = true := by
  decide +kernel

theorem check_6125 : SourceCertificateFamily.RightNormalized.check cell_6125 = true := by
  decide +kernel

theorem check_6126 : SourceCertificateFamily.RightNormalized.check cell_6126 = true := by
  decide +kernel

theorem check_6127 : SourceCertificateFamily.RightNormalized.check cell_6127 = true := by
  decide +kernel

theorem check_6128 : SourceCertificateFamily.RightNormalized.check cell_6128 = true := by
  decide +kernel

theorem check_6129 : SourceCertificateFamily.RightNormalized.check cell_6129 = true := by
  decide +kernel

theorem check_6130 : SourceCertificateFamily.RightNormalized.check cell_6130 = true := by
  decide +kernel

theorem check_6131 : SourceCertificateFamily.RightNormalized.check cell_6131 = true := by
  decide +kernel

theorem check_6132 : SourceCertificateFamily.RightNormalized.check cell_6132 = true := by
  decide +kernel

theorem check_6133 : SourceCertificateFamily.RightNormalized.check cell_6133 = true := by
  decide +kernel

theorem check_6134 : SourceCertificateFamily.RightNormalized.check cell_6134 = true := by
  decide +kernel

theorem check_6135 : SourceCertificateFamily.RightNormalized.check cell_6135 = true := by
  decide +kernel

theorem check_6136 : SourceCertificateFamily.RightNormalized.check cell_6136 = true := by
  decide +kernel

theorem check_6137 : SourceCertificateFamily.RightNormalized.check cell_6137 = true := by
  decide +kernel

theorem check_6138 : SourceCertificateFamily.RightNormalized.check cell_6138 = true := by
  decide +kernel

theorem check_6139 : SourceCertificateFamily.RightNormalized.check cell_6139 = true := by
  decide +kernel

theorem check_6140 : SourceCertificateFamily.RightNormalized.check cell_6140 = true := by
  decide +kernel

theorem check_6141 : SourceCertificateFamily.RightNormalized.check cell_6141 = true := by
  decide +kernel

theorem check_6142 : SourceCertificateFamily.RightNormalized.check cell_6142 = true := by
  decide +kernel

theorem check_6143 : SourceCertificateFamily.RightNormalized.check cell_6143 = true := by
  decide +kernel

theorem check_6144 : SourceCertificateFamily.RightNormalized.check cell_6144 = true := by
  decide +kernel

theorem check_6145 : SourceCertificateFamily.RightNormalized.check cell_6145 = true := by
  decide +kernel

theorem check_6146 : SourceCertificateFamily.RightNormalized.check cell_6146 = true := by
  decide +kernel

theorem check_6147 : SourceCertificateFamily.RightNormalized.check cell_6147 = true := by
  decide +kernel

theorem check_6148 : SourceCertificateFamily.RightNormalized.check cell_6148 = true := by
  decide +kernel

theorem check_6149 : SourceCertificateFamily.RightNormalized.check cell_6149 = true := by
  decide +kernel

def cells : List Cell := [cell_6100, cell_6101, cell_6102, cell_6103, cell_6104, cell_6105, cell_6106, cell_6107, cell_6108, cell_6109, cell_6110, cell_6111, cell_6112, cell_6113, cell_6114, cell_6115, cell_6116, cell_6117, cell_6118, cell_6119, cell_6120, cell_6121, cell_6122, cell_6123, cell_6124, cell_6125, cell_6126, cell_6127, cell_6128, cell_6129, cell_6130, cell_6131, cell_6132, cell_6133, cell_6134, cell_6135, cell_6136, cell_6137, cell_6138, cell_6139, cell_6140, cell_6141, cell_6142, cell_6143, cell_6144, cell_6145, cell_6146, cell_6147, cell_6148, cell_6149]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6100, SourceCertificateFamily.of_right_checked check_6101, SourceCertificateFamily.of_right_checked check_6102, SourceCertificateFamily.of_right_checked check_6103, SourceCertificateFamily.of_right_checked check_6104, SourceCertificateFamily.of_right_checked check_6105, SourceCertificateFamily.of_right_checked check_6106, SourceCertificateFamily.of_right_checked check_6107, SourceCertificateFamily.of_right_checked check_6108, SourceCertificateFamily.of_right_checked check_6109, SourceCertificateFamily.of_right_checked check_6110, SourceCertificateFamily.of_right_checked check_6111, SourceCertificateFamily.of_right_checked check_6112, SourceCertificateFamily.of_right_checked check_6113, SourceCertificateFamily.of_right_checked check_6114, SourceCertificateFamily.of_right_checked check_6115, SourceCertificateFamily.of_right_checked check_6116, SourceCertificateFamily.of_right_checked check_6117, SourceCertificateFamily.of_right_checked check_6118, SourceCertificateFamily.of_right_checked check_6119, SourceCertificateFamily.of_right_checked check_6120, SourceCertificateFamily.of_right_checked check_6121, SourceCertificateFamily.of_right_checked check_6122, SourceCertificateFamily.of_right_checked check_6123, SourceCertificateFamily.of_right_checked check_6124, SourceCertificateFamily.of_right_checked check_6125, SourceCertificateFamily.of_right_checked check_6126, SourceCertificateFamily.of_right_checked check_6127, SourceCertificateFamily.of_right_checked check_6128, SourceCertificateFamily.of_right_checked check_6129, SourceCertificateFamily.of_right_checked check_6130, SourceCertificateFamily.of_right_checked check_6131, SourceCertificateFamily.of_right_checked check_6132, SourceCertificateFamily.of_right_checked check_6133, SourceCertificateFamily.of_right_checked check_6134, SourceCertificateFamily.of_right_checked check_6135, SourceCertificateFamily.of_right_checked check_6136, SourceCertificateFamily.of_right_checked check_6137, SourceCertificateFamily.of_right_checked check_6138, SourceCertificateFamily.of_right_checked check_6139, SourceCertificateFamily.of_right_checked check_6140, SourceCertificateFamily.of_right_checked check_6141, SourceCertificateFamily.of_right_checked check_6142, SourceCertificateFamily.of_right_checked check_6143, SourceCertificateFamily.of_right_checked check_6144, SourceCertificateFamily.of_right_checked check_6145, SourceCertificateFamily.of_right_checked check_6146, SourceCertificateFamily.of_right_checked check_6147, SourceCertificateFamily.of_right_checked check_6148, SourceCertificateFamily.of_right_checked check_6149, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0122

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0122
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0122
open AnalyticBounds.ExpressionCertificate

theorem linked_6100 : Linked cell_6100 pieces := by
  refine ⟨piece_504,piece_504_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6100,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1596_mem

theorem linked_6101 : Linked cell_6101 pieces := by
  refine ⟨piece_504,piece_504_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6101,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1596_mem
    · exact piece_1597_mem

theorem linked_6102 : Linked cell_6102 pieces := by
  refine ⟨piece_504,piece_504_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6102,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1597_mem

theorem linked_6103 : Linked cell_6103 pieces := by
  refine ⟨piece_504,piece_504_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6103,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1597_mem
    · exact piece_1598_mem

theorem linked_6104 : Linked cell_6104 pieces := by
  refine ⟨piece_504,piece_504_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6104,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1598_mem
    · exact piece_1599_mem

theorem linked_6105 : Linked cell_6105 pieces := by
  refine ⟨piece_504,piece_504_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6105,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1599_mem

theorem linked_6106 : Linked cell_6106 pieces := by
  refine ⟨piece_504,piece_504_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6106,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1599_mem

theorem linked_6107 : Linked cell_6107 pieces := by
  refine ⟨piece_504,piece_504_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6107,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1599_mem
    · exact piece_1600_mem

theorem linked_6108 : Linked cell_6108 pieces := by
  refine ⟨piece_504,piece_504_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6108,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1600_mem

theorem linked_6109 : Linked cell_6109 pieces := by
  refine ⟨piece_505,piece_505_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6109,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1599_mem

theorem linked_6110 : Linked cell_6110 pieces := by
  refine ⟨piece_505,piece_505_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6110,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1599_mem
    · exact piece_1600_mem

theorem linked_6111 : Linked cell_6111 pieces := by
  refine ⟨piece_505,piece_505_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6111,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1600_mem

theorem linked_6112 : Linked cell_6112 pieces := by
  refine ⟨piece_505,piece_505_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6112,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1600_mem
    · exact piece_1601_mem

theorem linked_6113 : Linked cell_6113 pieces := by
  refine ⟨piece_505,piece_505_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6113,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1601_mem
    · exact piece_1602_mem

theorem linked_6114 : Linked cell_6114 pieces := by
  refine ⟨piece_505,piece_505_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6114,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1602_mem

theorem linked_6115 : Linked cell_6115 pieces := by
  refine ⟨piece_505,piece_505_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6115,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1602_mem
    · exact piece_1603_mem

theorem linked_6116 : Linked cell_6116 pieces := by
  refine ⟨piece_505,piece_505_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6116,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1603_mem
    · exact piece_1604_mem
    · exact piece_1605_mem

theorem linked_6117 : Linked cell_6117 pieces := by
  refine ⟨piece_505,piece_505_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6117,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1605_mem

theorem linked_6118 : Linked cell_6118 pieces := by
  refine ⟨piece_506,piece_506_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6118,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1605_mem

theorem linked_6119 : Linked cell_6119 pieces := by
  refine ⟨piece_507,piece_507_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6119,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1604_mem
    · exact piece_1605_mem

theorem linked_6120 : Linked cell_6120 pieces := by
  refine ⟨piece_507,piece_507_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6120,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1605_mem

theorem linked_6121 : Linked cell_6121 pieces := by
  refine ⟨piece_507,piece_507_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6121,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1605_mem
    · exact piece_1606_mem

theorem linked_6122 : Linked cell_6122 pieces := by
  refine ⟨piece_507,piece_507_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6122,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1606_mem

theorem linked_6123 : Linked cell_6123 pieces := by
  refine ⟨piece_507,piece_507_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6123,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1606_mem
    · exact piece_1607_mem

theorem linked_6124 : Linked cell_6124 pieces := by
  refine ⟨piece_507,piece_507_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6124,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1607_mem
    · exact piece_1608_mem

theorem linked_6125 : Linked cell_6125 pieces := by
  refine ⟨piece_507,piece_507_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6125,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1608_mem

theorem linked_6126 : Linked cell_6126 pieces := by
  refine ⟨piece_507,piece_507_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6126,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1608_mem
    · exact piece_1609_mem

theorem linked_6127 : Linked cell_6127 pieces := by
  refine ⟨piece_507,piece_507_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6127,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1609_mem

theorem linked_6128 : Linked cell_6128 pieces := by
  refine ⟨piece_507,piece_507_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6128,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1609_mem

theorem linked_6129 : Linked cell_6129 pieces := by
  refine ⟨piece_507,piece_507_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6129,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1609_mem
    · exact piece_1610_mem

theorem linked_6130 : Linked cell_6130 pieces := by
  refine ⟨piece_508,piece_508_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6130,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1609_mem

theorem linked_6131 : Linked cell_6131 pieces := by
  refine ⟨piece_508,piece_508_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6131,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1609_mem

theorem linked_6132 : Linked cell_6132 pieces := by
  refine ⟨piece_508,piece_508_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6132,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1609_mem
    · exact piece_1610_mem

theorem linked_6133 : Linked cell_6133 pieces := by
  refine ⟨piece_508,piece_508_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6133,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1610_mem
    · exact piece_1611_mem

theorem linked_6134 : Linked cell_6134 pieces := by
  refine ⟨piece_508,piece_508_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6134,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1611_mem
    · exact piece_1612_mem

theorem linked_6135 : Linked cell_6135 pieces := by
  refine ⟨piece_508,piece_508_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6135,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1612_mem

theorem linked_6136 : Linked cell_6136 pieces := by
  refine ⟨piece_508,piece_508_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6136,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1612_mem
    · exact piece_1613_mem

theorem linked_6137 : Linked cell_6137 pieces := by
  refine ⟨piece_508,piece_508_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6137,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1613_mem
    · exact piece_1614_mem

theorem linked_6138 : Linked cell_6138 pieces := by
  refine ⟨piece_508,piece_508_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6138,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1614_mem

theorem linked_6139 : Linked cell_6139 pieces := by
  refine ⟨piece_508,piece_508_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6139,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1614_mem

theorem linked_6140 : Linked cell_6140 pieces := by
  refine ⟨piece_509,piece_509_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6140,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1613_mem
    · exact piece_1614_mem

theorem linked_6141 : Linked cell_6141 pieces := by
  refine ⟨piece_509,piece_509_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6141,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1614_mem

theorem linked_6142 : Linked cell_6142 pieces := by
  refine ⟨piece_509,piece_509_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6142,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1614_mem
    · exact piece_1615_mem

theorem linked_6143 : Linked cell_6143 pieces := by
  refine ⟨piece_509,piece_509_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6143,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1615_mem
    · exact piece_1616_mem

theorem linked_6144 : Linked cell_6144 pieces := by
  refine ⟨piece_509,piece_509_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6144,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1616_mem
    · exact piece_1617_mem

theorem linked_6145 : Linked cell_6145 pieces := by
  refine ⟨piece_509,piece_509_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6145,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1617_mem
    · exact piece_1618_mem

theorem linked_6146 : Linked cell_6146 pieces := by
  refine ⟨piece_509,piece_509_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6146,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1618_mem

theorem linked_6147 : Linked cell_6147 pieces := by
  refine ⟨piece_509,piece_509_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6147,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1618_mem
    · exact piece_1619_mem

theorem linked_6148 : Linked cell_6148 pieces := by
  refine ⟨piece_509,piece_509_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6148,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1619_mem

theorem linked_6149 : Linked cell_6149 pieces := by
  refine ⟨piece_509,piece_509_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6149,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1619_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0122.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0122.cells,List.forall_mem_cons]
  exact ⟨linked_6100, linked_6101, linked_6102, linked_6103, linked_6104, linked_6105, linked_6106, linked_6107, linked_6108, linked_6109, linked_6110, linked_6111, linked_6112, linked_6113, linked_6114, linked_6115, linked_6116, linked_6117, linked_6118, linked_6119, linked_6120, linked_6121, linked_6122, linked_6123, linked_6124, linked_6125, linked_6126, linked_6127, linked_6128, linked_6129, linked_6130, linked_6131, linked_6132, linked_6133, linked_6134, linked_6135, linked_6136, linked_6137, linked_6138, linked_6139, linked_6140, linked_6141, linked_6142, linked_6143, linked_6144, linked_6145, linked_6146, linked_6147, linked_6148, linked_6149, by simp⟩

theorem covered : covers (1191 / 6400 : ℚ) (6031 / 32000 : ℚ)
    (SourceCertificates.Chunk0122.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0122
