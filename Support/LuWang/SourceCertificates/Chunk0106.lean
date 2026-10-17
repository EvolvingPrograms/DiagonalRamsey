import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0106
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(5123 / 32000 : ℚ), (1281 / 8000 : ℚ)⟩
  branch := .right
  r := (6030662369007 / 6250000000000 : ℚ)
  w := (1250212304897 / 1250000000000 : ℚ)
  center := (10247 / 64000 : ℚ)
  supportValue := (574046161656333 / 1000000000000000 : ℚ)
  supportSlope := (10183467723486217 / 2000000000000000 : ℚ)
  oldCenter := (574046161656333 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_449
  oldLo := (57550000000000001 / 100000000000000000 : ℚ)
  oldHi := (29025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1354]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5300 : Cell := { cellDefaults with
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldLo := (57350000000000001 / 100000000000000000 : ℚ)
  oldHi := (1148268156424581 / 2000000000000000 : ℚ)
  oldPieces := [piece_1349, piece_1350]
}

def cell_5301 : Cell := { cellDefaults with
  domain := ⟨(1281 / 8000 : ℚ), (41 / 256 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (10249 / 64000 : ℚ)
  supportValue := (717756609787427 / 1250000000000000 : ℚ)
  supportSlope := (5092482970294299 / 1000000000000000 : ℚ)
  oldCenter := (717756609787427 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldLo := (57400000000000007 / 100000000000000000 : ℚ)
  oldHi := (57450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1350, piece_1351]
}

def cell_5302 : Cell := { cellDefaults with
  domain := ⟨(41 / 256 : ℚ), (2563 / 16000 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (10251 / 64000 : ℚ)
  supportValue := (5743644417989309 / 10000000000000000 : ℚ)
  supportSlope := (2546686053211289 / 500000000000000 : ℚ)
  oldCenter := (5743644417989309 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldLo := (1148268156424581 / 2000000000000000 : ℚ)
  oldHi := (57450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1351]
}

def cell_5303 : Cell := { cellDefaults with
  domain := ⟨(2563 / 16000 : ℚ), (5127 / 32000 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (10253 / 64000 : ℚ)
  supportValue := (5745236204448483 / 10000000000000000 : ℚ)
  supportSlope := (5093826805051549 / 1000000000000000 : ℚ)
  oldCenter := (5745236204448483 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldLo := (1148268156424581 / 2000000000000000 : ℚ)
  oldHi := (57500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1351, piece_1352]
}

def cell_5304 : Cell := { cellDefaults with
  domain := ⟨(5127 / 32000 : ℚ), (641 / 4000 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (2051 / 12800 : ℚ)
  supportValue := (5746828090422219 / 10000000000000000 : ℚ)
  supportSlope := (318404973006281 / 62500000000000 : ℚ)
  oldCenter := (5746828090422219 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldLo := (57450000000000001 / 100000000000000000 : ℚ)
  oldHi := (57500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1352]
}

def cell_5305 : Cell := { cellDefaults with
  domain := ⟨(641 / 4000 : ℚ), (5129 / 32000 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (10257 / 64000 : ℚ)
  supportValue := (5748420253890001 / 10000000000000000 : ℚ)
  supportSlope := (5095367740310053 / 1000000000000000 : ℚ)
  oldCenter := (5748420253890001 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldLo := (57450000000000001 / 100000000000000000 : ℚ)
  oldHi := (57500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1352]
}

def cell_5306 : Cell := { cellDefaults with
  domain := ⟨(5129 / 32000 : ℚ), (513 / 3200 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (10259 / 64000 : ℚ)
  supportValue := (2875006346615929 / 5000000000000000 : ℚ)
  supportSlope := (5095916448951243 / 1000000000000000 : ℚ)
  oldCenter := (2875006346615929 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldLo := (57450000000000001 / 100000000000000000 : ℚ)
  oldHi := (57550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1352, piece_1353]
}

def cell_5307 : Cell := { cellDefaults with
  domain := ⟨(513 / 3200 : ℚ), (5131 / 32000 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (10261 / 64000 : ℚ)
  supportValue := (2875802601480133 / 5000000000000000 : ℚ)
  supportSlope := (2548237562500333 / 500000000000000 : ℚ)
  oldCenter := (2875802601480133 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldLo := (57500000000000007 / 100000000000000000 : ℚ)
  oldHi := (57550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1353]
}

def cell_5308 : Cell := { cellDefaults with
  domain := ⟨(5131 / 32000 : ℚ), (1283 / 8000 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (10263 / 64000 : ℚ)
  supportValue := (115063959797923 / 200000000000000 : ℚ)
  supportSlope := (1274340594772383 / 250000000000000 : ℚ)
  oldCenter := (115063959797923 / 200000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldLo := (57500000000000007 / 100000000000000000 : ℚ)
  oldHi := (57550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1353]
}

def cell_5309 : Cell := { cellDefaults with
  domain := ⟨(1283 / 8000 : ℚ), (5133 / 32000 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (2053 / 12800 : ℚ)
  supportValue := (5754791054158327 / 10000000000000000 : ℚ)
  supportSlope := (2549001885927993 / 500000000000000 : ℚ)
  oldCenter := (5754791054158327 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldLo := (57500000000000007 / 100000000000000000 : ℚ)
  oldHi := (57600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1353, piece_1354]
}

def cell_5310 : Cell := { cellDefaults with
  domain := ⟨(5133 / 32000 : ℚ), (2567 / 16000 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (10267 / 64000 : ℚ)
  supportValue := (5756384214566651 / 10000000000000000 : ℚ)
  supportSlope := (2549234840873993 / 500000000000000 : ℚ)
  oldCenter := (5756384214566651 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldHi := (57600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354]
}

def cell_5311 : Cell := { cellDefaults with
  domain := ⟨(2567 / 16000 : ℚ), (1027 / 6400 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (10269 / 64000 : ℚ)
  supportValue := (2878988812328563 / 5000000000000000 : ℚ)
  supportSlope := (509935601158773 / 100000000000000 : ℚ)
  oldCenter := (2878988812328563 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldHi := (57600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354]
}

def cell_5312 : Cell := { cellDefaults with
  domain := ⟨(1027 / 6400 : ℚ), (321 / 2000 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (10271 / 64000 : ℚ)
  supportValue := (5759571311784731 / 10000000000000000 : ℚ)
  supportSlope := (10200177535168109 / 2000000000000000 : ℚ)
  oldCenter := (5759571311784731 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldHi := (57650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354, piece_1355]
}

def cell_5313 : Cell := { cellDefaults with
  domain := ⟨(321 / 2000 : ℚ), (5137 / 32000 : ℚ)⟩
  center := (10273 / 64000 : ℚ)
  supportValue := (1151368543293753 / 2000000000000000 : ℚ)
  supportSlope := (1274003451265493 / 250000000000000 : ℚ)
  oldCenter := (1151368543293753 / 2000000000000000 : ℚ)
  oldHi := (57600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354]
}

def cell_5314 : Cell := { cellDefaults with
  domain := ⟨(5137 / 32000 : ℚ), (2569 / 16000 : ℚ)⟩
  center := (411 / 2560 : ℚ)
  supportValue := (1439608839803733 / 2500000000000000 : ℚ)
  supportSlope := (5096900884687727 / 1000000000000000 : ℚ)
  oldCenter := (1439608839803733 / 2500000000000000 : ℚ)
  oldHi := (57600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354]
}

def cell_5315 : Cell := { cellDefaults with
  domain := ⟨(2569 / 16000 : ℚ), (5139 / 32000 : ℚ)⟩
  center := (10277 / 64000 : ℚ)
  supportValue := (5760028275470199 / 10000000000000000 : ℚ)
  supportSlope := (2548721834738643 / 500000000000000 : ℚ)
  oldCenter := (5760028275470199 / 10000000000000000 : ℚ)
  oldHi := (57650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354, piece_1355]
}

def cell_5316 : Cell := { cellDefaults with
  domain := ⟨(5139 / 32000 : ℚ), (257 / 1600 : ℚ)⟩
  center := (10279 / 64000 : ℚ)
  supportValue := (5761621264820941 / 10000000000000000 : ℚ)
  supportSlope := (10196018735733503 / 2000000000000000 : ℚ)
  oldCenter := (5761621264820941 / 10000000000000000 : ℚ)
  oldLo := (57600000000000007 / 100000000000000000 : ℚ)
  oldHi := (57650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1355]
}

def cell_5317 : Cell := { cellDefaults with
  domain := ⟨(257 / 1600 : ℚ), (5141 / 32000 : ℚ)⟩
  center := (10281 / 64000 : ℚ)
  supportValue := (1440803632758997 / 2500000000000000 : ℚ)
  supportSlope := (2549447761285961 / 500000000000000 : ℚ)
  oldCenter := (1440803632758997 / 2500000000000000 : ℚ)
  oldLo := (57600000000000007 / 100000000000000000 : ℚ)
  oldHi := (57650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1355]
}

def cell_5318 : Cell := { cellDefaults with
  domain := ⟨(5141 / 32000 : ℚ), (2571 / 16000 : ℚ)⟩
  center := (10283 / 64000 : ℚ)
  supportValue := (2882404037116697 / 5000000000000000 : ℚ)
  supportSlope := (1019905985096159 / 200000000000000 : ℚ)
  oldCenter := (2882404037116697 / 5000000000000000 : ℚ)
  oldLo := (57600000000000007 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1355, piece_1356]
}

def cell_5319 : Cell := { cellDefaults with
  domain := ⟨(2571 / 16000 : ℚ), (5143 / 32000 : ℚ)⟩
  center := (2057 / 12800 : ℚ)
  supportValue := (5766401711909187 / 10000000000000000 : ℚ)
  supportSlope := (1275000981984853 / 250000000000000 : ℚ)
  oldCenter := (5766401711909187 / 10000000000000000 : ℚ)
  oldLo := (57650000000000001 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1356]
}

def cell_5320 : Cell := { cellDefaults with
  domain := ⟨(5143 / 32000 : ℚ), (643 / 4000 : ℚ)⟩
  center := (10287 / 64000 : ℚ)
  supportValue := (5767995601278881 / 10000000000000000 : ℚ)
  supportSlope := (204035566082581 / 40000000000000 : ℚ)
  oldCenter := (5767995601278881 / 10000000000000000 : ℚ)
  oldLo := (57650000000000001 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1356]
}

def cell_5321 : Cell := { cellDefaults with
  domain := ⟨(643 / 4000 : ℚ), (1029 / 6400 : ℚ)⟩
  center := (10289 / 64000 : ℚ)
  supportValue := (2884794883669893 / 5000000000000000 : ℚ)
  supportSlope := (10203227711691909 / 2000000000000000 : ℚ)
  oldCenter := (2884794883669893 / 5000000000000000 : ℚ)
  oldLo := (57650000000000001 / 100000000000000000 : ℚ)
  oldHi := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1356, piece_1357]
}

def cell_5322 : Cell := { cellDefaults with
  domain := ⟨(1029 / 6400 : ℚ), (2573 / 16000 : ℚ)⟩
  center := (10291 / 64000 : ℚ)
  supportValue := (1154236811275331 / 2000000000000000 : ℚ)
  supportSlope := (1020399494878177 / 200000000000000 : ℚ)
  oldCenter := (1154236811275331 / 2000000000000000 : ℚ)
  oldLo := (57700000000000007 / 100000000000000000 : ℚ)
  oldHi := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1357]
}

def cell_5323 : Cell := { cellDefaults with
  domain := ⟨(2573 / 16000 : ℚ), (5147 / 32000 : ℚ)⟩
  center := (10293 / 64000 : ℚ)
  supportValue := (360798660536439 / 625000000000000 : ℚ)
  supportSlope := (2551440880107947 / 500000000000000 : ℚ)
  oldCenter := (360798660536439 / 625000000000000 : ℚ)
  oldLo := (57700000000000007 / 100000000000000000 : ℚ)
  oldHi := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1357]
}

def cell_5324 : Cell := { cellDefaults with
  domain := ⟨(5147 / 32000 : ℚ), (1287 / 8000 : ℚ)⟩
  center := (2059 / 12800 : ℚ)
  supportValue := (2887186678593519 / 5000000000000000 : ℚ)
  supportSlope := (637961930995079 / 125000000000000 : ℚ)
  oldCenter := (2887186678593519 / 5000000000000000 : ℚ)
  oldLo := (57700000000000007 / 100000000000000000 : ℚ)
  oldHi := (57800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1357, piece_1358]
}

def cell_5325 : Cell := { cellDefaults with
  domain := ⟨(1287 / 8000 : ℚ), (5149 / 32000 : ℚ)⟩
  center := (10297 / 64000 : ℚ)
  supportValue := (5775968296852317 / 10000000000000000 : ℚ)
  supportSlope := (159499687020781 / 31250000000000 : ℚ)
  oldCenter := (5775968296852317 / 10000000000000000 : ℚ)
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldHi := (57800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358]
}

def cell_5326 : Cell := { cellDefaults with
  domain := ⟨(5149 / 32000 : ℚ), (103 / 640 : ℚ)⟩
  center := (10299 / 64000 : ℚ)
  supportValue := (5777563431573779 / 10000000000000000 : ℚ)
  supportSlope := (5104873346390093 / 1000000000000000 : ℚ)
  oldCenter := (5777563431573779 / 10000000000000000 : ℚ)
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldHi := (57800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358]
}

def cell_5327 : Cell := { cellDefaults with
  domain := ⟨(103 / 640 : ℚ), (5151 / 32000 : ℚ)⟩
  center := (10301 / 64000 : ℚ)
  supportValue := (2889579421201881 / 5000000000000000 : ℚ)
  supportSlope := (204230283177651 / 40000000000000 : ℚ)
  oldCenter := (2889579421201881 / 5000000000000000 : ℚ)
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldHi := (57800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358]
}

def cell_5328 : Cell := { cellDefaults with
  domain := ⟨(5151 / 32000 : ℚ), (161 / 1000 : ℚ)⟩
  center := (10303 / 64000 : ℚ)
  supportValue := (36129715199457 / 62500000000000 : ℚ)
  supportSlope := (5105998843394133 / 1000000000000000 : ℚ)
  oldCenter := (36129715199457 / 62500000000000 : ℚ)
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldHi := (57850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358, piece_1359]
}

def cell_5329 : Cell := { cellDefaults with
  domain := ⟨(161 / 1000 : ℚ), (5153 / 32000 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (2061 / 12800 : ℚ)
  supportValue := (5778015033769031 / 10000000000000000 : ℚ)
  supportSlope := (1020480839120097 / 200000000000000 : ℚ)
  oldCenter := (5778015033769031 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldHi := (57800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358]
}

def cell_5330 : Cell := { cellDefaults with
  domain := ⟨(5153 / 32000 : ℚ), (2577 / 16000 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (10307 / 64000 : ℚ)
  supportValue := (2889804836590743 / 5000000000000000 : ℚ)
  supportSlope := (2551560336822689 / 500000000000000 : ℚ)
  oldCenter := (2889804836590743 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldHi := (57850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358, piece_1359]
}

def cell_5331 : Cell := { cellDefaults with
  domain := ⟨(2577 / 16000 : ℚ), (1031 / 6400 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (10309 / 64000 : ℚ)
  supportValue := (5781204433472201 / 10000000000000000 : ℚ)
  supportSlope := (5103514405924159 / 1000000000000000 : ℚ)
  oldCenter := (5781204433472201 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (57800000000000007 / 100000000000000000 : ℚ)
  oldHi := (57850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1359]
}

def cell_5332 : Cell := { cellDefaults with
  domain := ⟨(1031 / 6400 : ℚ), (1289 / 8000 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (10311 / 64000 : ℚ)
  supportValue := (1156559883940969 / 2000000000000000 : ℚ)
  supportSlope := (1276099649246909 / 250000000000000 : ℚ)
  oldCenter := (1156559883940969 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (57800000000000007 / 100000000000000000 : ℚ)
  oldHi := (57850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1359]
}

def cell_5333 : Cell := { cellDefaults with
  domain := ⟨(1289 / 8000 : ℚ), (5157 / 32000 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (10313 / 64000 : ℚ)
  supportValue := (1446098670576361 / 2500000000000000 : ℚ)
  supportSlope := (5105203545735293 / 1000000000000000 : ℚ)
  oldCenter := (1446098670576361 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (57800000000000007 / 100000000000000000 : ℚ)
  oldHi := (57900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1359, piece_1360]
}

def cell_5334 : Cell := { cellDefaults with
  domain := ⟨(5157 / 32000 : ℚ), (2579 / 16000 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (2063 / 12800 : ℚ)
  supportValue := (1446497523393159 / 2500000000000000 : ℚ)
  supportSlope := (5105508799989167 / 1000000000000000 : ℚ)
  oldCenter := (1446497523393159 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (57850000000000001 / 100000000000000000 : ℚ)
  oldHi := (57900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1360]
}

def cell_5335 : Cell := { cellDefaults with
  domain := ⟨(2579 / 16000 : ℚ), (5159 / 32000 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (10317 / 64000 : ℚ)
  supportValue := (5787585702919387 / 10000000000000000 : ℚ)
  supportSlope := (510639213311137 / 100000000000000 : ℚ)
  oldCenter := (5787585702919387 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (57850000000000001 / 100000000000000000 : ℚ)
  oldHi := (57900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1360]
}

def cell_5336 : Cell := { cellDefaults with
  domain := ⟨(5159 / 32000 : ℚ), (129 / 800 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (10319 / 64000 : ℚ)
  supportValue := (1157836317673133 / 2000000000000000 : ℚ)
  supportSlope := (5107275837222147 / 1000000000000000 : ℚ)
  oldCenter := (1157836317673133 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (57850000000000001 / 100000000000000000 : ℚ)
  oldHi := (57900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1360]
}

def cell_5337 : Cell := { cellDefaults with
  domain := ⟨(129 / 800 : ℚ), (5161 / 32000 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (10321 / 64000 : ℚ)
  supportValue := (289538882495601 / 500000000000000 : ℚ)
  supportSlope := (5107510488770117 / 1000000000000000 : ℚ)
  oldCenter := (289538882495601 / 500000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (57850000000000001 / 100000000000000000 : ℚ)
  oldHi := (28975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1360, piece_1361]
}

def cell_5338 : Cell := { cellDefaults with
  domain := ⟨(5161 / 32000 : ℚ), (2581 / 16000 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (10323 / 64000 : ℚ)
  supportValue := (5792373882075267 / 10000000000000000 : ℚ)
  supportSlope := (2554192303783509 / 500000000000000 : ℚ)
  oldCenter := (5792373882075267 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (57900000000000007 / 100000000000000000 : ℚ)
  oldHi := (28975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1361]
}

def cell_5339 : Cell := { cellDefaults with
  domain := ⟨(2581 / 16000 : ℚ), (5163 / 32000 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (413 / 2560 : ℚ)
  supportValue := (362123149375079 / 625000000000000 : ℚ)
  supportSlope := (5109267232739967 / 1000000000000000 : ℚ)
  oldCenter := (362123149375079 / 625000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (57900000000000007 / 100000000000000000 : ℚ)
  oldHi := (28975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1361]
}

def cell_5340 : Cell := { cellDefaults with
  domain := ⟨(5163 / 32000 : ℚ), (1291 / 8000 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (10327 / 64000 : ℚ)
  supportValue := (90555735953297 / 156250000000000 : ℚ)
  supportSlope := (2554794627167567 / 500000000000000 : ℚ)
  oldCenter := (90555735953297 / 156250000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (57900000000000007 / 100000000000000000 : ℚ)
  oldHi := (5796648044692737 / 10000000000000000 : ℚ)
  oldPieces := [piece_1361, piece_1362]
}

def cell_5341 : Cell := { cellDefaults with
  domain := ⟨(1291 / 8000 : ℚ), (1033 / 6400 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (10329 / 64000 : ℚ)
  supportValue := (1159432791103191 / 2000000000000000 : ℚ)
  supportSlope := (1277593769011709 / 250000000000000 : ℚ)
  oldCenter := (1159432791103191 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (28975000000000001 / 50000000000000000 : ℚ)
  oldHi := (58000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1362, piece_1363]
}

def cell_5342 : Cell := { cellDefaults with
  domain := ⟨(1033 / 6400 : ℚ), (2583 / 16000 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (10331 / 64000 : ℚ)
  supportValue := (5798761085256607 / 10000000000000000 : ℚ)
  supportSlope := (5111256573350431 / 1000000000000000 : ℚ)
  oldCenter := (5798761085256607 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (5796648044692737 / 10000000000000000 : ℚ)
  oldHi := (58000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1363]
}

def cell_5343 : Cell := { cellDefaults with
  domain := ⟨(2583 / 16000 : ℚ), (5167 / 32000 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (10333 / 64000 : ℚ)
  supportValue := (5800358444737397 / 10000000000000000 : ℚ)
  supportSlope := (5111665198601401 / 1000000000000000 : ℚ)
  oldCenter := (5800358444737397 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (5796648044692737 / 10000000000000000 : ℚ)
  oldPieces := [piece_1363, piece_1364]
}

def cell_5344 : Cell := { cellDefaults with
  domain := ⟨(5167 / 32000 : ℚ), (323 / 2000 : ℚ)⟩
  r := (48194626733793 / 50000000000000 : ℚ)
  w := (10003471060191 / 10000000000000 : ℚ)
  center := (2067 / 12800 : ℚ)
  supportValue := (1450488980349883 / 2500000000000000 : ℚ)
  supportSlope := (2556183027596859 / 500000000000000 : ℚ)
  oldCenter := (1450488980349883 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_450
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1364]
}

def cell_5345 : Cell := { cellDefaults with
  domain := ⟨(323 / 2000 : ℚ), (258450000000000001 / 1600000000000000000 : ℚ)⟩
  r := (96288175426211 / 100000000000000 : ℚ)
  w := (5002622979679 / 5000000000000 : ℚ)
  center := (516850000000000001 / 3200000000000000000 : ℚ)
  supportValue := (2899603084359017 / 5000000000000000 : ℚ)
  supportSlope := (2554386573615679 / 500000000000000 : ℚ)
  oldCenter := (2899603084359017 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_451
  oldLo := (5796648044692737 / 10000000000000000 : ℚ)
  oldPieces := [piece_1363, piece_1364]
}

def cell_5346 : Cell := { cellDefaults with
  domain := ⟨(258450000000000001 / 1600000000000000000 : ℚ), (129250000000000001 / 800000000000000000 : ℚ)⟩
  r := (96288175426211 / 100000000000000 : ℚ)
  w := (5002622979679 / 5000000000000 : ℚ)
  center := (516950000000000003 / 3200000000000000000 : ℚ)
  supportValue := (5800802696127519 / 10000000000000000 : ℚ)
  supportSlope := (1021800985103007 / 200000000000000 : ℚ)
  oldCenter := (5800802696127519 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_451
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1364]
}

def cell_5347 : Cell := { cellDefaults with
  domain := ⟨(129250000000000001 / 800000000000000000 : ℚ), (258550000000000003 / 1600000000000000000 : ℚ)⟩
  r := (96288175426211 / 100000000000000 : ℚ)
  w := (5002622979679 / 5000000000000 : ℚ)
  center := (103410000000000001 / 640000000000000000 : ℚ)
  supportValue := (5802399397678759 / 10000000000000000 : ℚ)
  supportSlope := (5109886115835747 / 1000000000000000 : ℚ)
  oldCenter := (5802399397678759 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_451
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1364]
}

def cell_5348 : Cell := { cellDefaults with
  domain := ⟨(258550000000000003 / 1600000000000000000 : ℚ), (64650000000000001 / 400000000000000000 : ℚ)⟩
  r := (96288175426211 / 100000000000000 : ℚ)
  w := (5002622979679 / 5000000000000 : ℚ)
  center := (517150000000000007 / 3200000000000000000 : ℚ)
  supportValue := (362749773416197 / 625000000000000 : ℚ)
  supportSlope := (5110767672341763 / 1000000000000000 : ℚ)
  oldCenter := (362749773416197 / 625000000000000 : ℚ)
  newCoefficients := coefficients_451
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1364]
}

def cell_5349 : Cell := { cellDefaults with
  domain := ⟨(64650000000000001 / 400000000000000000 : ℚ), (51730000000000001 / 320000000000000000 : ℚ)⟩
  r := (96288175426211 / 100000000000000 : ℚ)
  w := (5002622979679 / 5000000000000 : ℚ)
  center := (517250000000000009 / 3200000000000000000 : ℚ)
  supportValue := (1161118710285117 / 2000000000000000 : ℚ)
  supportSlope := (2555540439571351 / 500000000000000 : ℚ)
  oldCenter := (1161118710285117 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_451
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldHi := (58100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1364, piece_1365]
}

theorem check_5300 : SourceCertificateFamily.RightNormalized.check cell_5300 = true := by
  decide +kernel

theorem check_5301 : SourceCertificateFamily.RightNormalized.check cell_5301 = true := by
  decide +kernel

theorem check_5302 : SourceCertificateFamily.RightNormalized.check cell_5302 = true := by
  decide +kernel

theorem check_5303 : SourceCertificateFamily.RightNormalized.check cell_5303 = true := by
  decide +kernel

theorem check_5304 : SourceCertificateFamily.RightNormalized.check cell_5304 = true := by
  decide +kernel

theorem check_5305 : SourceCertificateFamily.RightNormalized.check cell_5305 = true := by
  decide +kernel

theorem check_5306 : SourceCertificateFamily.RightNormalized.check cell_5306 = true := by
  decide +kernel

theorem check_5307 : SourceCertificateFamily.RightNormalized.check cell_5307 = true := by
  decide +kernel

theorem check_5308 : SourceCertificateFamily.RightNormalized.check cell_5308 = true := by
  decide +kernel

theorem check_5309 : SourceCertificateFamily.RightNormalized.check cell_5309 = true := by
  decide +kernel

theorem check_5310 : SourceCertificateFamily.RightNormalized.check cell_5310 = true := by
  decide +kernel

theorem check_5311 : SourceCertificateFamily.RightNormalized.check cell_5311 = true := by
  decide +kernel

theorem check_5312 : SourceCertificateFamily.RightNormalized.check cell_5312 = true := by
  decide +kernel

theorem check_5313 : SourceCertificateFamily.RightNormalized.check cell_5313 = true := by
  decide +kernel

theorem check_5314 : SourceCertificateFamily.RightNormalized.check cell_5314 = true := by
  decide +kernel

theorem check_5315 : SourceCertificateFamily.RightNormalized.check cell_5315 = true := by
  decide +kernel

theorem check_5316 : SourceCertificateFamily.RightNormalized.check cell_5316 = true := by
  decide +kernel

theorem check_5317 : SourceCertificateFamily.RightNormalized.check cell_5317 = true := by
  decide +kernel

theorem check_5318 : SourceCertificateFamily.RightNormalized.check cell_5318 = true := by
  decide +kernel

theorem check_5319 : SourceCertificateFamily.RightNormalized.check cell_5319 = true := by
  decide +kernel

theorem check_5320 : SourceCertificateFamily.RightNormalized.check cell_5320 = true := by
  decide +kernel

theorem check_5321 : SourceCertificateFamily.RightNormalized.check cell_5321 = true := by
  decide +kernel

theorem check_5322 : SourceCertificateFamily.RightNormalized.check cell_5322 = true := by
  decide +kernel

theorem check_5323 : SourceCertificateFamily.RightNormalized.check cell_5323 = true := by
  decide +kernel

theorem check_5324 : SourceCertificateFamily.RightNormalized.check cell_5324 = true := by
  decide +kernel

theorem check_5325 : SourceCertificateFamily.RightNormalized.check cell_5325 = true := by
  decide +kernel

theorem check_5326 : SourceCertificateFamily.RightNormalized.check cell_5326 = true := by
  decide +kernel

theorem check_5327 : SourceCertificateFamily.RightNormalized.check cell_5327 = true := by
  decide +kernel

theorem check_5328 : SourceCertificateFamily.RightNormalized.check cell_5328 = true := by
  decide +kernel

theorem check_5329 : SourceCertificateFamily.RightNormalized.check cell_5329 = true := by
  decide +kernel

theorem check_5330 : SourceCertificateFamily.RightNormalized.check cell_5330 = true := by
  decide +kernel

theorem check_5331 : SourceCertificateFamily.RightNormalized.check cell_5331 = true := by
  decide +kernel

theorem check_5332 : SourceCertificateFamily.RightNormalized.check cell_5332 = true := by
  decide +kernel

theorem check_5333 : SourceCertificateFamily.RightNormalized.check cell_5333 = true := by
  decide +kernel

theorem check_5334 : SourceCertificateFamily.RightNormalized.check cell_5334 = true := by
  decide +kernel

theorem check_5335 : SourceCertificateFamily.RightNormalized.check cell_5335 = true := by
  decide +kernel

theorem check_5336 : SourceCertificateFamily.RightNormalized.check cell_5336 = true := by
  decide +kernel

theorem check_5337 : SourceCertificateFamily.RightNormalized.check cell_5337 = true := by
  decide +kernel

theorem check_5338 : SourceCertificateFamily.RightNormalized.check cell_5338 = true := by
  decide +kernel

theorem check_5339 : SourceCertificateFamily.RightNormalized.check cell_5339 = true := by
  decide +kernel

theorem check_5340 : SourceCertificateFamily.RightNormalized.check cell_5340 = true := by
  decide +kernel

theorem check_5341 : SourceCertificateFamily.RightNormalized.check cell_5341 = true := by
  decide +kernel

theorem check_5342 : SourceCertificateFamily.RightNormalized.check cell_5342 = true := by
  decide +kernel

theorem check_5343 : SourceCertificateFamily.RightNormalized.check cell_5343 = true := by
  decide +kernel

theorem check_5344 : SourceCertificateFamily.RightNormalized.check cell_5344 = true := by
  decide +kernel

theorem check_5345 : SourceCertificateFamily.RightNormalized.check cell_5345 = true := by
  decide +kernel

theorem check_5346 : SourceCertificateFamily.RightNormalized.check cell_5346 = true := by
  decide +kernel

theorem check_5347 : SourceCertificateFamily.RightNormalized.check cell_5347 = true := by
  decide +kernel

theorem check_5348 : SourceCertificateFamily.RightNormalized.check cell_5348 = true := by
  decide +kernel

theorem check_5349 : SourceCertificateFamily.RightNormalized.check cell_5349 = true := by
  decide +kernel

def cells : List Cell := [cell_5300, cell_5301, cell_5302, cell_5303, cell_5304, cell_5305, cell_5306, cell_5307, cell_5308, cell_5309, cell_5310, cell_5311, cell_5312, cell_5313, cell_5314, cell_5315, cell_5316, cell_5317, cell_5318, cell_5319, cell_5320, cell_5321, cell_5322, cell_5323, cell_5324, cell_5325, cell_5326, cell_5327, cell_5328, cell_5329, cell_5330, cell_5331, cell_5332, cell_5333, cell_5334, cell_5335, cell_5336, cell_5337, cell_5338, cell_5339, cell_5340, cell_5341, cell_5342, cell_5343, cell_5344, cell_5345, cell_5346, cell_5347, cell_5348, cell_5349]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5300, SourceCertificateFamily.of_right_checked check_5301, SourceCertificateFamily.of_right_checked check_5302, SourceCertificateFamily.of_right_checked check_5303, SourceCertificateFamily.of_right_checked check_5304, SourceCertificateFamily.of_right_checked check_5305, SourceCertificateFamily.of_right_checked check_5306, SourceCertificateFamily.of_right_checked check_5307, SourceCertificateFamily.of_right_checked check_5308, SourceCertificateFamily.of_right_checked check_5309, SourceCertificateFamily.of_right_checked check_5310, SourceCertificateFamily.of_right_checked check_5311, SourceCertificateFamily.of_right_checked check_5312, SourceCertificateFamily.of_right_checked check_5313, SourceCertificateFamily.of_right_checked check_5314, SourceCertificateFamily.of_right_checked check_5315, SourceCertificateFamily.of_right_checked check_5316, SourceCertificateFamily.of_right_checked check_5317, SourceCertificateFamily.of_right_checked check_5318, SourceCertificateFamily.of_right_checked check_5319, SourceCertificateFamily.of_right_checked check_5320, SourceCertificateFamily.of_right_checked check_5321, SourceCertificateFamily.of_right_checked check_5322, SourceCertificateFamily.of_right_checked check_5323, SourceCertificateFamily.of_right_checked check_5324, SourceCertificateFamily.of_right_checked check_5325, SourceCertificateFamily.of_right_checked check_5326, SourceCertificateFamily.of_right_checked check_5327, SourceCertificateFamily.of_right_checked check_5328, SourceCertificateFamily.of_right_checked check_5329, SourceCertificateFamily.of_right_checked check_5330, SourceCertificateFamily.of_right_checked check_5331, SourceCertificateFamily.of_right_checked check_5332, SourceCertificateFamily.of_right_checked check_5333, SourceCertificateFamily.of_right_checked check_5334, SourceCertificateFamily.of_right_checked check_5335, SourceCertificateFamily.of_right_checked check_5336, SourceCertificateFamily.of_right_checked check_5337, SourceCertificateFamily.of_right_checked check_5338, SourceCertificateFamily.of_right_checked check_5339, SourceCertificateFamily.of_right_checked check_5340, SourceCertificateFamily.of_right_checked check_5341, SourceCertificateFamily.of_right_checked check_5342, SourceCertificateFamily.of_right_checked check_5343, SourceCertificateFamily.of_right_checked check_5344, SourceCertificateFamily.of_right_checked check_5345, SourceCertificateFamily.of_right_checked check_5346, SourceCertificateFamily.of_right_checked check_5347, SourceCertificateFamily.of_right_checked check_5348, SourceCertificateFamily.of_right_checked check_5349, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0106
