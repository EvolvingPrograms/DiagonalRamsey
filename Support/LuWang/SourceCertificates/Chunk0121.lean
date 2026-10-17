import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0121
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(5889 / 32000 : ℚ), (589 / 3200 : ℚ)⟩
  branch := .right
  r := (11489103468451 / 12500000000000 : ℚ)
  w := (10092713763281 / 10000000000000 : ℚ)
  center := (11779 / 64000 : ℚ)
  supportValue := (6774177473814597 / 10000000000000000 : ℚ)
  supportSlope := (1342120500877897 / 250000000000000 : ℚ)
  oldCenter := (6774177473814597 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_501
  oldLo := (68149999999999999 / 100000000000000000 : ℚ)
  oldHi := (13600000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1581]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6050 : Cell := { cellDefaults with
  r := (23000630979357 / 25000000000000 : ℚ)
  w := (10090627758357 / 10000000000000 : ℚ)
  newCoefficients := coefficients_500
  oldLo := (13540000000000001 / 20000000000000000 : ℚ)
  oldHi := (13560000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1575, piece_1576]
}

def cell_6051 : Cell := { cellDefaults with
  domain := ⟨(589 / 3200 : ℚ), (5891 / 32000 : ℚ)⟩
  r := (23000630979357 / 25000000000000 : ℚ)
  w := (10090627758357 / 10000000000000 : ℚ)
  center := (11781 / 64000 : ℚ)
  supportValue := (6775855169671433 / 10000000000000000 : ℚ)
  supportSlope := (5368777549211501 / 1000000000000000 : ℚ)
  oldCenter := (6775855169671433 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_500
  oldLo := (67749999999999999 / 100000000000000000 : ℚ)
  oldHi := (13560000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1576]
}

def cell_6052 : Cell := { cellDefaults with
  domain := ⟨(5891 / 32000 : ℚ), (1473 / 8000 : ℚ)⟩
  r := (23000630979357 / 25000000000000 : ℚ)
  w := (10090627758357 / 10000000000000 : ℚ)
  center := (11783 / 64000 : ℚ)
  supportValue := (1694383259391507 / 2500000000000000 : ℚ)
  supportSlope := (2684789050762859 / 500000000000000 : ℚ)
  oldCenter := (1694383259391507 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_500
  oldLo := (67749999999999999 / 100000000000000000 : ℚ)
  oldHi := (13560000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1576]
}

def cell_6053 : Cell := { cellDefaults with
  domain := ⟨(1473 / 8000 : ℚ), (2947 / 16000 : ℚ)⟩
  r := (23000630979357 / 25000000000000 : ℚ)
  w := (10090627758357 / 10000000000000 : ℚ)
  center := (5893 / 32000 : ℚ)
  supportValue := (6780048947709553 / 10000000000000000 : ℚ)
  supportSlope := (1074103257423431 / 200000000000000 : ℚ)
  oldCenter := (6780048947709553 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_500
  oldLo := (67749999999999999 / 100000000000000000 : ℚ)
  oldHi := (67849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1576, piece_1577]
}

def cell_6054 : Cell := { cellDefaults with
  domain := ⟨(2947 / 16000 : ℚ), (737 / 4000 : ℚ)⟩
  r := (23000630979357 / 25000000000000 : ℚ)
  w := (10090627758357 / 10000000000000 : ℚ)
  center := (1179 / 6400 : ℚ)
  supportValue := (339170293249591 / 500000000000000 : ℚ)
  supportSlope := (2685928155209183 / 500000000000000 : ℚ)
  oldCenter := (339170293249591 / 500000000000000 : ℚ)
  newCoefficients := coefficients_500
  oldLo := (13560000000000001 / 20000000000000000 : ℚ)
  oldHi := (13580000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1577, piece_1578]
}

def cell_6055 : Cell := { cellDefaults with
  domain := ⟨(737 / 4000 : ℚ), (2949 / 16000 : ℚ)⟩
  r := (23000630979357 / 25000000000000 : ℚ)
  w := (10090627758357 / 10000000000000 : ℚ)
  center := (5897 / 32000 : ℚ)
  supportValue := (6786763615024167 / 10000000000000000 : ℚ)
  supportSlope := (167904995503787 / 31250000000000 : ℚ)
  oldCenter := (6786763615024167 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_500
  oldLo := (67849999999999999 / 100000000000000000 : ℚ)
  oldHi := (13580000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1578]
}

def cell_6056 : Cell := { cellDefaults with
  domain := ⟨(2949 / 16000 : ℚ), (59 / 320 : ℚ)⟩
  r := (23000630979357 / 25000000000000 : ℚ)
  w := (10090627758357 / 10000000000000 : ℚ)
  center := (5899 / 32000 : ℚ)
  supportValue := (6790122202010267 / 10000000000000000 : ℚ)
  supportSlope := (2687142956091293 / 500000000000000 : ℚ)
  oldCenter := (6790122202010267 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_500
  oldLo := (67849999999999999 / 100000000000000000 : ℚ)
  oldHi := (6792178770949721 / 10000000000000000 : ℚ)
  oldPieces := [piece_1578, piece_1579]
}

def cell_6057 : Cell := { cellDefaults with
  domain := ⟨(59 / 320 : ℚ), (5901 / 32000 : ℚ)⟩
  r := (23000630979357 / 25000000000000 : ℚ)
  w := (10090627758357 / 10000000000000 : ℚ)
  center := (11801 / 64000 : ℚ)
  supportValue := (1358528585375051 / 2000000000000000 : ℚ)
  supportSlope := (5375249426172957 / 1000000000000000 : ℚ)
  oldCenter := (1358528585375051 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_500
  oldLo := (13580000000000001 / 20000000000000000 : ℚ)
  oldHi := (67949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1579, piece_1580]
}

def cell_6058 : Cell := { cellDefaults with
  domain := ⟨(5901 / 32000 : ℚ), (2951 / 16000 : ℚ)⟩
  r := (23000630979357 / 25000000000000 : ℚ)
  w := (10090627758357 / 10000000000000 : ℚ)
  center := (11803 / 64000 : ℚ)
  supportValue := (3397161408545709 / 5000000000000000 : ℚ)
  supportSlope := (10751999012967417 / 2000000000000000 : ℚ)
  oldCenter := (3397161408545709 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_500
  oldLo := (6792178770949721 / 10000000000000000 : ℚ)
  oldPieces := [piece_1580, piece_1581]
}

def cell_6059 : Cell := { cellDefaults with
  domain := ⟨(2951 / 16000 : ℚ), (5903 / 32000 : ℚ)⟩
  r := (23000630979357 / 25000000000000 : ℚ)
  w := (10090627758357 / 10000000000000 : ℚ)
  center := (2361 / 12800 : ℚ)
  supportValue := (849500357769407 / 1250000000000000 : ℚ)
  supportSlope := (1344084835753101 / 250000000000000 : ℚ)
  oldCenter := (849500357769407 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_500
  oldLo := (67949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1581]
}

def cell_6060 : Cell := { cellDefaults with
  domain := ⟨(5903 / 32000 : ℚ), (369 / 2000 : ℚ)⟩
  r := (23000630979357 / 25000000000000 : ℚ)
  w := (10090627758357 / 10000000000000 : ℚ)
  center := (11807 / 64000 : ℚ)
  supportValue := (3398841546440329 / 5000000000000000 : ℚ)
  supportSlope := (2688569212827119 / 500000000000000 : ℚ)
  oldCenter := (3398841546440329 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_500
  oldLo := (67949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1581]
}

def cell_6061 : Cell := { cellDefaults with
  domain := ⟨(369 / 2000 : ℚ), (1181 / 6400 : ℚ)⟩
  center := (11809 / 64000 : ℚ)
  supportValue := (3397287992460999 / 5000000000000000 : ℚ)
  supportSlope := (21492519920983 / 4000000000000 : ℚ)
  oldCenter := (3397287992460999 / 5000000000000000 : ℚ)
  oldLo := (6792178770949721 / 10000000000000000 : ℚ)
  oldPieces := [piece_1580, piece_1581]
}

def cell_6062 : Cell := { cellDefaults with
  domain := ⟨(1181 / 6400 : ℚ), (2953 / 16000 : ℚ)⟩
  center := (11811 / 64000 : ℚ)
  supportValue := (1359251026661239 / 2000000000000000 : ℚ)
  supportSlope := (1343386675177527 / 250000000000000 : ℚ)
  oldCenter := (1359251026661239 / 2000000000000000 : ℚ)
  oldLo := (67949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1581]
}

def cell_6063 : Cell := { cellDefaults with
  domain := ⟨(2953 / 16000 : ℚ), (5907 / 32000 : ℚ)⟩
  center := (11813 / 64000 : ℚ)
  supportValue := (6797934491356837 / 10000000000000000 : ℚ)
  supportSlope := (5374345949206827 / 1000000000000000 : ℚ)
  oldCenter := (6797934491356837 / 10000000000000000 : ℚ)
  oldLo := (67949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1581]
}

def cell_6064 : Cell := { cellDefaults with
  domain := ⟨(5907 / 32000 : ℚ), (1477 / 8000 : ℚ)⟩
  center := (2363 / 12800 : ℚ)
  supportValue := (3399807049602251 / 5000000000000000 : ℚ)
  supportSlope := (5375007708185109 / 1000000000000000 : ℚ)
  oldCenter := (3399807049602251 / 5000000000000000 : ℚ)
  oldLo := (67949999999999999 / 100000000000000000 : ℚ)
  oldHi := (68049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1581, piece_1582]
}

def cell_6065 : Cell := { cellDefaults with
  domain := ⟨(1477 / 8000 : ℚ), (591 / 3200 : ℚ)⟩
  center := (5909 / 32000 : ℚ)
  supportValue := (6802132416874397 / 10000000000000000 : ℚ)
  supportSlope := (1343958809763901 / 250000000000000 : ℚ)
  oldCenter := (6802132416874397 / 10000000000000000 : ℚ)
  oldLo := (13600000000000001 / 20000000000000000 : ℚ)
  oldHi := (68049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1582]
}

def cell_6066 : Cell := { cellDefaults with
  domain := ⟨(591 / 3200 : ℚ), (739 / 4000 : ℚ)⟩
  center := (5911 / 32000 : ℚ)
  supportValue := (3402746382758133 / 5000000000000000 : ℚ)
  supportSlope := (5377104224729479 / 1000000000000000 : ℚ)
  oldCenter := (3402746382758133 / 5000000000000000 : ℚ)
  oldLo := (13600000000000001 / 20000000000000000 : ℚ)
  oldHi := (13620000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1582, piece_1583]
}

def cell_6067 : Cell := { cellDefaults with
  domain := ⟨(739 / 4000 : ℚ), (2957 / 16000 : ℚ)⟩
  center := (5913 / 32000 : ℚ)
  supportValue := (6808853841761691 / 10000000000000000 : ℚ)
  supportSlope := (10756882445587479 / 2000000000000000 : ℚ)
  oldCenter := (6808853841761691 / 10000000000000000 : ℚ)
  oldLo := (68049999999999999 / 100000000000000000 : ℚ)
  oldHi := (68149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1583, piece_1584]
}

def cell_6068 : Cell := { cellDefaults with
  domain := ⟨(2957 / 16000 : ℚ), (1479 / 8000 : ℚ)⟩
  center := (1183 / 6400 : ℚ)
  supportValue := (3406107853442051 / 5000000000000000 : ℚ)
  supportSlope := (5379611271980167 / 1000000000000000 : ℚ)
  oldCenter := (3406107853442051 / 5000000000000000 : ℚ)
  oldLo := (13620000000000001 / 20000000000000000 : ℚ)
  oldHi := (68149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1584]
}

def cell_6069 : Cell := { cellDefaults with
  domain := ⟨(1479 / 8000 : ℚ), (5917 / 32000 : ℚ)⟩
  center := (11833 / 64000 : ℚ)
  supportValue := (136294780850903 / 200000000000000 : ℚ)
  supportSlope := (2690316825592731 / 500000000000000 : ℚ)
  oldCenter := (136294780850903 / 200000000000000 : ℚ)
  oldLo := (13620000000000001 / 20000000000000000 : ℚ)
  oldHi := (13640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1584, piece_1585]
}

def cell_6070 : Cell := { cellDefaults with
  domain := ⟨(5917 / 32000 : ℚ), (2959 / 16000 : ℚ)⟩
  center := (2367 / 12800 : ℚ)
  supportValue := (6816420535769921 / 10000000000000000 : ℚ)
  supportSlope := (2690549608626469 / 500000000000000 : ℚ)
  oldCenter := (6816420535769921 / 10000000000000000 : ℚ)
  oldHi := (13640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1585]
}

def cell_6071 : Cell := { cellDefaults with
  domain := ⟨(2959 / 16000 : ℚ), (5919 / 32000 : ℚ)⟩
  center := (11837 / 64000 : ℚ)
  supportValue := (3409051126895709 / 5000000000000000 : ℚ)
  supportSlope := (2690948623506273 / 500000000000000 : ℚ)
  oldCenter := (3409051126895709 / 5000000000000000 : ℚ)
  oldHi := (13640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1585]
}

def cell_6072 : Cell := { cellDefaults with
  domain := ⟨(5919 / 32000 : ℚ), (37 / 200 : ℚ)⟩
  center := (11839 / 64000 : ℚ)
  supportValue := (3409892110614343 / 5000000000000000 : ℚ)
  supportSlope := (5382506563446299 / 1000000000000000 : ℚ)
  oldCenter := (3409892110614343 / 5000000000000000 : ℚ)
  oldHi := (273 / 400 : ℚ)
  oldPieces := [piece_1585, piece_1586]
}

def cell_6073 : Cell := { cellDefaults with
  domain := ⟨(37 / 200 : ℚ), (5921 / 32000 : ℚ)⟩
  r := (91823360879151 / 100000000000000 : ℚ)
  w := (10094810614267 / 10000000000000 : ℚ)
  center := (11841 / 64000 : ℚ)
  supportValue := (1704168007006503 / 2500000000000000 : ℚ)
  supportSlope := (5378303728679867 / 1000000000000000 : ℚ)
  oldCenter := (1704168007006503 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_502
  oldHi := (13640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1585]
}

def cell_6074 : Cell := { cellDefaults with
  domain := ⟨(5921 / 32000 : ℚ), (2961 / 16000 : ℚ)⟩
  r := (91823360879151 / 100000000000000 : ℚ)
  w := (10094810614267 / 10000000000000 : ℚ)
  center := (11843 / 64000 : ℚ)
  supportValue := (6818352872477137 / 10000000000000000 : ℚ)
  supportSlope := (1344775471221027 / 250000000000000 : ℚ)
  oldCenter := (6818352872477137 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_502
  oldHi := (13640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1585]
}

def cell_6075 : Cell := { cellDefaults with
  domain := ⟨(2961 / 16000 : ℚ), (5923 / 32000 : ℚ)⟩
  r := (91823360879151 / 100000000000000 : ℚ)
  w := (10094810614267 / 10000000000000 : ℚ)
  center := (2369 / 12800 : ℚ)
  supportValue := (682003396311699 / 1000000000000000 : ℚ)
  supportSlope := (5379636057675441 / 1000000000000000 : ℚ)
  oldCenter := (682003396311699 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_502
  oldHi := (273 / 400 : ℚ)
  oldPieces := [piece_1585, piece_1586]
}

def cell_6076 : Cell := { cellDefaults with
  domain := ⟨(5923 / 32000 : ℚ), (1481 / 8000 : ℚ)⟩
  r := (91823360879151 / 100000000000000 : ℚ)
  w := (10094810614267 / 10000000000000 : ℚ)
  center := (11847 / 64000 : ℚ)
  supportValue := (3410857573944101 / 5000000000000000 : ℚ)
  supportSlope := (2690095327738007 / 500000000000000 : ℚ)
  oldCenter := (3410857573944101 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_502
  oldLo := (13640000000000001 / 20000000000000000 : ℚ)
  oldHi := (273 / 400 : ℚ)
  oldPieces := [piece_1586]
}

def cell_6077 : Cell := { cellDefaults with
  domain := ⟨(1481 / 8000 : ℚ), (2963 / 16000 : ℚ)⟩
  r := (91823360879151 / 100000000000000 : ℚ)
  w := (10094810614267 / 10000000000000 : ℚ)
  center := (237 / 1280 : ℚ)
  supportValue := (6824236027648547 / 10000000000000000 : ℚ)
  supportSlope := (2690624410768727 / 500000000000000 : ℚ)
  oldCenter := (6824236027648547 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_502
  oldLo := (13640000000000001 / 20000000000000000 : ℚ)
  oldHi := (13660000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1586, piece_1587]
}

def cell_6078 : Cell := { cellDefaults with
  domain := ⟨(2963 / 16000 : ℚ), (741 / 4000 : ℚ)⟩
  r := (91823360879151 / 100000000000000 : ℚ)
  w := (10094810614267 / 10000000000000 : ℚ)
  center := (5927 / 32000 : ℚ)
  supportValue := (3413799823635229 / 5000000000000000 : ℚ)
  supportSlope := (5382475652536911 / 1000000000000000 : ℚ)
  oldCenter := (3413799823635229 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_502
  oldLo := (273 / 400 : ℚ)
  oldHi := (13660000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1587]
}

def cell_6079 : Cell := { cellDefaults with
  domain := ⟨(741 / 4000 : ℚ), (593 / 3200 : ℚ)⟩
  r := (91823360879151 / 100000000000000 : ℚ)
  w := (10094810614267 / 10000000000000 : ℚ)
  center := (5929 / 32000 : ℚ)
  supportValue := (3415482050543339 / 5000000000000000 : ℚ)
  supportSlope := (538367170873677 / 100000000000000 : ℚ)
  oldCenter := (3415482050543339 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_502
  oldLo := (273 / 400 : ℚ)
  oldHi := (1367 / 2000 : ℚ)
  oldPieces := [piece_1587, piece_1588]
}

def cell_6080 : Cell := { cellDefaults with
  domain := ⟨(593 / 3200 : ℚ), (1483 / 8000 : ℚ)⟩
  r := (91823360879151 / 100000000000000 : ℚ)
  w := (10094810614267 / 10000000000000 : ℚ)
  center := (5931 / 32000 : ℚ)
  supportValue := (170858233142389 / 250000000000000 : ℚ)
  supportSlope := (5385005617952743 / 1000000000000000 : ℚ)
  oldCenter := (170858233142389 / 250000000000000 : ℚ)
  newCoefficients := coefficients_502
  oldLo := (13660000000000001 / 20000000000000000 : ℚ)
  oldHi := (13680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1588, piece_1589]
}

def cell_6081 : Cell := { cellDefaults with
  domain := ⟨(1483 / 8000 : ℚ), (5933 / 32000 : ℚ)⟩
  r := (91823360879151 / 100000000000000 : ℚ)
  w := (10094810614267 / 10000000000000 : ℚ)
  center := (2373 / 12800 : ℚ)
  supportValue := (6836855090949359 / 10000000000000000 : ℚ)
  supportSlope := (5385847146296641 / 1000000000000000 : ℚ)
  oldCenter := (6836855090949359 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_502
  oldLo := (1367 / 2000 : ℚ)
  oldHi := (13680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1589]
}

def cell_6082 : Cell := { cellDefaults with
  domain := ⟨(5933 / 32000 : ℚ), (2967 / 16000 : ℚ)⟩
  r := (91823360879151 / 100000000000000 : ℚ)
  w := (10094810614267 / 10000000000000 : ℚ)
  center := (11867 / 64000 : ℚ)
  supportValue := (6838538292497867 / 10000000000000000 : ℚ)
  supportSlope := (1346660972826541 / 250000000000000 : ℚ)
  oldCenter := (6838538292497867 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_502
  oldLo := (1367 / 2000 : ℚ)
  oldHi := (13680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1589]
}

def cell_6083 : Cell := { cellDefaults with
  domain := ⟨(2967 / 16000 : ℚ), (1187 / 6400 : ℚ)⟩
  r := (91823360879151 / 100000000000000 : ℚ)
  w := (10094810614267 / 10000000000000 : ℚ)
  center := (11869 / 64000 : ℚ)
  supportValue := (6840221722171999 / 10000000000000000 : ℚ)
  supportSlope := (2693560440283349 / 500000000000000 : ℚ)
  oldCenter := (6840221722171999 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_502
  oldLo := (1367 / 2000 : ℚ)
  oldHi := (1369 / 2000 : ℚ)
  oldPieces := [piece_1589, piece_1590]
}

def cell_6084 : Cell := { cellDefaults with
  domain := ⟨(1187 / 6400 : ℚ), (371 / 2000 : ℚ)⟩
  r := (91823360879151 / 100000000000000 : ℚ)
  w := (10094810614267 / 10000000000000 : ℚ)
  center := (11871 / 64000 : ℚ)
  supportValue := (1368381052708747 / 2000000000000000 : ℚ)
  supportSlope := (269386553306461 / 50000000000000 : ℚ)
  oldCenter := (1368381052708747 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_502
  oldLo := (13680000000000001 / 20000000000000000 : ℚ)
  oldHi := (1369 / 2000 : ℚ)
  oldPieces := [piece_1590]
}

def cell_6085 : Cell := { cellDefaults with
  domain := ⟨(371 / 2000 : ℚ), (5937 / 32000 : ℚ)⟩
  r := (91734121673507 / 100000000000000 : ℚ)
  w := (10096917588793 / 10000000000000 : ℚ)
  center := (11873 / 64000 : ℚ)
  supportValue := (3419393906517801 / 5000000000000000 : ℚ)
  supportSlope := (1345961502202897 / 250000000000000 : ℚ)
  oldCenter := (3419393906517801 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_503
  oldLo := (1367 / 2000 : ℚ)
  oldHi := (13680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1589]
}

def cell_6086 : Cell := { cellDefaults with
  domain := ⟨(5937 / 32000 : ℚ), (2969 / 16000 : ℚ)⟩
  r := (91734121673507 / 100000000000000 : ℚ)
  w := (10096917588793 / 10000000000000 : ℚ)
  center := (95 / 512 : ℚ)
  supportValue := (3420235172508073 / 5000000000000000 : ℚ)
  supportSlope := (5384248332344299 / 1000000000000000 : ℚ)
  oldCenter := (3420235172508073 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_503
  oldLo := (1367 / 2000 : ℚ)
  oldHi := (1369 / 2000 : ℚ)
  oldPieces := [piece_1589, piece_1590]
}

def cell_6087 : Cell := { cellDefaults with
  domain := ⟨(2969 / 16000 : ℚ), (5939 / 32000 : ℚ)⟩
  r := (91734121673507 / 100000000000000 : ℚ)
  w := (10096917588793 / 10000000000000 : ℚ)
  center := (11877 / 64000 : ℚ)
  supportValue := (1368430602419041 / 2000000000000000 : ℚ)
  supportSlope := (1076986666485169 / 200000000000000 : ℚ)
  oldCenter := (1368430602419041 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_503
  oldLo := (13680000000000001 / 20000000000000000 : ℚ)
  oldHi := (1369 / 2000 : ℚ)
  oldPieces := [piece_1590]
}

def cell_6088 : Cell := { cellDefaults with
  domain := ⟨(5939 / 32000 : ℚ), (297 / 1600 : ℚ)⟩
  r := (91734121673507 / 100000000000000 : ℚ)
  w := (10096917588793 / 10000000000000 : ℚ)
  center := (11879 / 64000 : ℚ)
  supportValue := (6843835928027967 / 10000000000000000 : ℚ)
  supportSlope := (2692864882140711 / 500000000000000 : ℚ)
  oldCenter := (6843835928027967 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_503
  oldLo := (13680000000000001 / 20000000000000000 : ℚ)
  oldHi := (1369 / 2000 : ℚ)
  oldPieces := [piece_1590]
}

def cell_6089 : Cell := { cellDefaults with
  domain := ⟨(297 / 1600 : ℚ), (2971 / 16000 : ℚ)⟩
  r := (91734121673507 / 100000000000000 : ℚ)
  w := (10096917588793 / 10000000000000 : ℚ)
  center := (5941 / 32000 : ℚ)
  supportValue := (6846359271573033 / 10000000000000000 : ℚ)
  supportSlope := (673308371363257 / 125000000000000 : ℚ)
  oldCenter := (6846359271573033 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_503
  oldLo := (13680000000000001 / 20000000000000000 : ℚ)
  oldHi := (13700000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1590, piece_1591, piece_1592]
}

def cell_6090 : Cell := { cellDefaults with
  domain := ⟨(2971 / 16000 : ℚ), (743 / 4000 : ℚ)⟩
  r := (91734121673507 / 100000000000000 : ℚ)
  w := (10096917588793 / 10000000000000 : ℚ)
  center := (5943 / 32000 : ℚ)
  supportValue := (6849726279625699 / 10000000000000000 : ℚ)
  supportSlope := (2693899313396031 / 500000000000000 : ℚ)
  oldCenter := (6849726279625699 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_503
  oldLo := (6847486033519553 / 10000000000000000 : ℚ)
  oldHi := (1371 / 2000 : ℚ)
  oldPieces := [piece_1592, piece_1593]
}

def cell_6091 : Cell := { cellDefaults with
  domain := ⟨(743 / 4000 : ℚ), (2973 / 16000 : ℚ)⟩
  r := (91734121673507 / 100000000000000 : ℚ)
  w := (10096917588793 / 10000000000000 : ℚ)
  center := (1189 / 6400 : ℚ)
  supportValue := (3426546996148369 / 5000000000000000 : ℚ)
  supportSlope := (673637109189551 / 125000000000000 : ℚ)
  oldCenter := (3426546996148369 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_503
  oldLo := (13700000000000001 / 20000000000000000 : ℚ)
  oldHi := (1371 / 2000 : ℚ)
  oldPieces := [piece_1593]
}

def cell_6092 : Cell := { cellDefaults with
  domain := ⟨(2973 / 16000 : ℚ), (1487 / 8000 : ℚ)⟩
  r := (91734121673507 / 100000000000000 : ℚ)
  w := (10096917588793 / 10000000000000 : ℚ)
  center := (5947 / 32000 : ℚ)
  supportValue := (13391528392547 / 19531250000000 : ℚ)
  supportSlope := (5390216180177987 / 1000000000000000 : ℚ)
  oldCenter := (13391528392547 / 19531250000000 : ℚ)
  newCoefficients := coefficients_503
  oldLo := (13700000000000001 / 20000000000000000 : ℚ)
  oldHi := (13720000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1593, piece_1594]
}

def cell_6093 : Cell := { cellDefaults with
  domain := ⟨(1487 / 8000 : ℚ), (5949 / 32000 : ℚ)⟩
  r := (91734121673507 / 100000000000000 : ℚ)
  w := (10096917588793 / 10000000000000 : ℚ)
  center := (11897 / 64000 : ℚ)
  supportValue := (6858990836049037 / 10000000000000000 : ℚ)
  supportSlope := (10782752873481627 / 2000000000000000 : ℚ)
  oldCenter := (6858990836049037 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_503
  oldLo := (1371 / 2000 : ℚ)
  oldHi := (13720000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1594]
}

def cell_6094 : Cell := { cellDefaults with
  domain := ⟨(5949 / 32000 : ℚ), (119 / 640 : ℚ)⟩
  r := (91734121673507 / 100000000000000 : ℚ)
  w := (10096917588793 / 10000000000000 : ℚ)
  center := (11899 / 64000 : ℚ)
  supportValue := (6860675702006933 / 10000000000000000 : ℚ)
  supportSlope := (2695858434591969 / 500000000000000 : ℚ)
  oldCenter := (6860675702006933 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_503
  oldLo := (1371 / 2000 : ℚ)
  oldHi := (1373 / 2000 : ℚ)
  oldPieces := [piece_1594, piece_1595]
}

def cell_6095 : Cell := { cellDefaults with
  domain := ⟨(119 / 640 : ℚ), (5951 / 32000 : ℚ)⟩
  r := (91734121673507 / 100000000000000 : ℚ)
  w := (10096917588793 / 10000000000000 : ℚ)
  center := (11901 / 64000 : ℚ)
  supportValue := (1715590180508547 / 2500000000000000 : ℚ)
  supportSlope := (5392462160330069 / 1000000000000000 : ℚ)
  oldCenter := (1715590180508547 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_503
  oldLo := (13720000000000001 / 20000000000000000 : ℚ)
  oldHi := (1373 / 2000 : ℚ)
  oldPieces := [piece_1595]
}

def cell_6096 : Cell := { cellDefaults with
  domain := ⟨(5951 / 32000 : ℚ), (93 / 500 : ℚ)⟩
  r := (91734121673507 / 100000000000000 : ℚ)
  w := (10096917588793 / 10000000000000 : ℚ)
  center := (11903 / 64000 : ℚ)
  supportValue := (1716011497633879 / 2500000000000000 : ℚ)
  supportSlope := (10786514752084031 / 2000000000000000 : ℚ)
  oldCenter := (1716011497633879 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_503
  oldLo := (13720000000000001 / 20000000000000000 : ℚ)
  oldHi := (1373 / 2000 : ℚ)
  oldPieces := [piece_1595]
}

def cell_6097 : Cell := { cellDefaults with
  domain := ⟨(93 / 500 : ℚ), (5953 / 32000 : ℚ)⟩
  r := (4582255520621 / 5000000000000 : ℚ)
  w := (5049517835391 / 5000000000000 : ℚ)
  center := (2381 / 12800 : ℚ)
  supportValue := (3430461876900453 / 5000000000000000 : ℚ)
  supportSlope := (5388866666866221 / 1000000000000000 : ℚ)
  oldCenter := (3430461876900453 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_504
  oldLo := (13720000000000001 / 20000000000000000 : ℚ)
  oldHi := (1373 / 2000 : ℚ)
  oldPieces := [piece_1595]
}

def cell_6098 : Cell := { cellDefaults with
  domain := ⟨(5953 / 32000 : ℚ), (2977 / 16000 : ℚ)⟩
  r := (4582255520621 / 5000000000000 : ℚ)
  w := (5049517835391 / 5000000000000 : ℚ)
  center := (11907 / 64000 : ℚ)
  supportValue := (686260789872011 / 1000000000000000 : ℚ)
  supportSlope := (538966194352497 / 100000000000000 : ℚ)
  oldCenter := (686260789872011 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_504
  oldLo := (13720000000000001 / 20000000000000000 : ℚ)
  oldHi := (1373 / 2000 : ℚ)
  oldPieces := [piece_1595]
}

def cell_6099 : Cell := { cellDefaults with
  domain := ⟨(2977 / 16000 : ℚ), (1191 / 6400 : ℚ)⟩
  r := (4582255520621 / 5000000000000 : ℚ)
  w := (5049517835391 / 5000000000000 : ℚ)
  center := (11909 / 64000 : ℚ)
  supportValue := (27457169168777 / 40000000000000 : ℚ)
  supportSlope := (2156166774113899 / 400000000000000 : ℚ)
  oldCenter := (27457169168777 / 40000000000000 : ℚ)
  newCoefficients := coefficients_504
  oldLo := (13720000000000001 / 20000000000000000 : ℚ)
  oldHi := (34350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1595, piece_1596]
}

theorem check_6050 : SourceCertificateFamily.RightNormalized.check cell_6050 = true := by
  decide +kernel

theorem check_6051 : SourceCertificateFamily.RightNormalized.check cell_6051 = true := by
  decide +kernel

theorem check_6052 : SourceCertificateFamily.RightNormalized.check cell_6052 = true := by
  decide +kernel

theorem check_6053 : SourceCertificateFamily.RightNormalized.check cell_6053 = true := by
  decide +kernel

theorem check_6054 : SourceCertificateFamily.RightNormalized.check cell_6054 = true := by
  decide +kernel

theorem check_6055 : SourceCertificateFamily.RightNormalized.check cell_6055 = true := by
  decide +kernel

theorem check_6056 : SourceCertificateFamily.RightNormalized.check cell_6056 = true := by
  decide +kernel

theorem check_6057 : SourceCertificateFamily.RightNormalized.check cell_6057 = true := by
  decide +kernel

theorem check_6058 : SourceCertificateFamily.RightNormalized.check cell_6058 = true := by
  decide +kernel

theorem check_6059 : SourceCertificateFamily.RightNormalized.check cell_6059 = true := by
  decide +kernel

theorem check_6060 : SourceCertificateFamily.RightNormalized.check cell_6060 = true := by
  decide +kernel

theorem check_6061 : SourceCertificateFamily.RightNormalized.check cell_6061 = true := by
  decide +kernel

theorem check_6062 : SourceCertificateFamily.RightNormalized.check cell_6062 = true := by
  decide +kernel

theorem check_6063 : SourceCertificateFamily.RightNormalized.check cell_6063 = true := by
  decide +kernel

theorem check_6064 : SourceCertificateFamily.RightNormalized.check cell_6064 = true := by
  decide +kernel

theorem check_6065 : SourceCertificateFamily.RightNormalized.check cell_6065 = true := by
  decide +kernel

theorem check_6066 : SourceCertificateFamily.RightNormalized.check cell_6066 = true := by
  decide +kernel

theorem check_6067 : SourceCertificateFamily.RightNormalized.check cell_6067 = true := by
  decide +kernel

theorem check_6068 : SourceCertificateFamily.RightNormalized.check cell_6068 = true := by
  decide +kernel

theorem check_6069 : SourceCertificateFamily.RightNormalized.check cell_6069 = true := by
  decide +kernel

theorem check_6070 : SourceCertificateFamily.RightNormalized.check cell_6070 = true := by
  decide +kernel

theorem check_6071 : SourceCertificateFamily.RightNormalized.check cell_6071 = true := by
  decide +kernel

theorem check_6072 : SourceCertificateFamily.RightNormalized.check cell_6072 = true := by
  decide +kernel

theorem check_6073 : SourceCertificateFamily.RightNormalized.check cell_6073 = true := by
  decide +kernel

theorem check_6074 : SourceCertificateFamily.RightNormalized.check cell_6074 = true := by
  decide +kernel

theorem check_6075 : SourceCertificateFamily.RightNormalized.check cell_6075 = true := by
  decide +kernel

theorem check_6076 : SourceCertificateFamily.RightNormalized.check cell_6076 = true := by
  decide +kernel

theorem check_6077 : SourceCertificateFamily.RightNormalized.check cell_6077 = true := by
  decide +kernel

theorem check_6078 : SourceCertificateFamily.RightNormalized.check cell_6078 = true := by
  decide +kernel

theorem check_6079 : SourceCertificateFamily.RightNormalized.check cell_6079 = true := by
  decide +kernel

theorem check_6080 : SourceCertificateFamily.RightNormalized.check cell_6080 = true := by
  decide +kernel

theorem check_6081 : SourceCertificateFamily.RightNormalized.check cell_6081 = true := by
  decide +kernel

theorem check_6082 : SourceCertificateFamily.RightNormalized.check cell_6082 = true := by
  decide +kernel

theorem check_6083 : SourceCertificateFamily.RightNormalized.check cell_6083 = true := by
  decide +kernel

theorem check_6084 : SourceCertificateFamily.RightNormalized.check cell_6084 = true := by
  decide +kernel

theorem check_6085 : SourceCertificateFamily.RightNormalized.check cell_6085 = true := by
  decide +kernel

theorem check_6086 : SourceCertificateFamily.RightNormalized.check cell_6086 = true := by
  decide +kernel

theorem check_6087 : SourceCertificateFamily.RightNormalized.check cell_6087 = true := by
  decide +kernel

theorem check_6088 : SourceCertificateFamily.RightNormalized.check cell_6088 = true := by
  decide +kernel

theorem check_6089 : SourceCertificateFamily.RightNormalized.check cell_6089 = true := by
  decide +kernel

theorem check_6090 : SourceCertificateFamily.RightNormalized.check cell_6090 = true := by
  decide +kernel

theorem check_6091 : SourceCertificateFamily.RightNormalized.check cell_6091 = true := by
  decide +kernel

theorem check_6092 : SourceCertificateFamily.RightNormalized.check cell_6092 = true := by
  decide +kernel

theorem check_6093 : SourceCertificateFamily.RightNormalized.check cell_6093 = true := by
  decide +kernel

theorem check_6094 : SourceCertificateFamily.RightNormalized.check cell_6094 = true := by
  decide +kernel

theorem check_6095 : SourceCertificateFamily.RightNormalized.check cell_6095 = true := by
  decide +kernel

theorem check_6096 : SourceCertificateFamily.RightNormalized.check cell_6096 = true := by
  decide +kernel

theorem check_6097 : SourceCertificateFamily.RightNormalized.check cell_6097 = true := by
  decide +kernel

theorem check_6098 : SourceCertificateFamily.RightNormalized.check cell_6098 = true := by
  decide +kernel

theorem check_6099 : SourceCertificateFamily.RightNormalized.check cell_6099 = true := by
  decide +kernel

def cells : List Cell := [cell_6050, cell_6051, cell_6052, cell_6053, cell_6054, cell_6055, cell_6056, cell_6057, cell_6058, cell_6059, cell_6060, cell_6061, cell_6062, cell_6063, cell_6064, cell_6065, cell_6066, cell_6067, cell_6068, cell_6069, cell_6070, cell_6071, cell_6072, cell_6073, cell_6074, cell_6075, cell_6076, cell_6077, cell_6078, cell_6079, cell_6080, cell_6081, cell_6082, cell_6083, cell_6084, cell_6085, cell_6086, cell_6087, cell_6088, cell_6089, cell_6090, cell_6091, cell_6092, cell_6093, cell_6094, cell_6095, cell_6096, cell_6097, cell_6098, cell_6099]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6050, SourceCertificateFamily.of_right_checked check_6051, SourceCertificateFamily.of_right_checked check_6052, SourceCertificateFamily.of_right_checked check_6053, SourceCertificateFamily.of_right_checked check_6054, SourceCertificateFamily.of_right_checked check_6055, SourceCertificateFamily.of_right_checked check_6056, SourceCertificateFamily.of_right_checked check_6057, SourceCertificateFamily.of_right_checked check_6058, SourceCertificateFamily.of_right_checked check_6059, SourceCertificateFamily.of_right_checked check_6060, SourceCertificateFamily.of_right_checked check_6061, SourceCertificateFamily.of_right_checked check_6062, SourceCertificateFamily.of_right_checked check_6063, SourceCertificateFamily.of_right_checked check_6064, SourceCertificateFamily.of_right_checked check_6065, SourceCertificateFamily.of_right_checked check_6066, SourceCertificateFamily.of_right_checked check_6067, SourceCertificateFamily.of_right_checked check_6068, SourceCertificateFamily.of_right_checked check_6069, SourceCertificateFamily.of_right_checked check_6070, SourceCertificateFamily.of_right_checked check_6071, SourceCertificateFamily.of_right_checked check_6072, SourceCertificateFamily.of_right_checked check_6073, SourceCertificateFamily.of_right_checked check_6074, SourceCertificateFamily.of_right_checked check_6075, SourceCertificateFamily.of_right_checked check_6076, SourceCertificateFamily.of_right_checked check_6077, SourceCertificateFamily.of_right_checked check_6078, SourceCertificateFamily.of_right_checked check_6079, SourceCertificateFamily.of_right_checked check_6080, SourceCertificateFamily.of_right_checked check_6081, SourceCertificateFamily.of_right_checked check_6082, SourceCertificateFamily.of_right_checked check_6083, SourceCertificateFamily.of_right_checked check_6084, SourceCertificateFamily.of_right_checked check_6085, SourceCertificateFamily.of_right_checked check_6086, SourceCertificateFamily.of_right_checked check_6087, SourceCertificateFamily.of_right_checked check_6088, SourceCertificateFamily.of_right_checked check_6089, SourceCertificateFamily.of_right_checked check_6090, SourceCertificateFamily.of_right_checked check_6091, SourceCertificateFamily.of_right_checked check_6092, SourceCertificateFamily.of_right_checked check_6093, SourceCertificateFamily.of_right_checked check_6094, SourceCertificateFamily.of_right_checked check_6095, SourceCertificateFamily.of_right_checked check_6096, SourceCertificateFamily.of_right_checked check_6097, SourceCertificateFamily.of_right_checked check_6098, SourceCertificateFamily.of_right_checked check_6099, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0121

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0121
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0121
open AnalyticBounds.ExpressionCertificate

theorem linked_6050 : Linked cell_6050 pieces := by
  apply Linked.of_piece piece_500 piece_500_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6050, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1575_mem, piece_1576_mem⟩

theorem linked_6051 : Linked cell_6051 pieces := by
  apply Linked.of_piece piece_500 piece_500_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6051, List.cons_subset, List.nil_subset, and_true]
  exact piece_1576_mem

theorem linked_6052 : Linked cell_6052 pieces := by
  apply Linked.of_piece piece_500 piece_500_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6052, List.cons_subset, List.nil_subset, and_true]
  exact piece_1576_mem

theorem linked_6053 : Linked cell_6053 pieces := by
  apply Linked.of_piece piece_500 piece_500_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6053, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1576_mem, piece_1577_mem⟩

theorem linked_6054 : Linked cell_6054 pieces := by
  apply Linked.of_piece piece_500 piece_500_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6054, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1577_mem, piece_1578_mem⟩

theorem linked_6055 : Linked cell_6055 pieces := by
  apply Linked.of_piece piece_500 piece_500_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6055, List.cons_subset, List.nil_subset, and_true]
  exact piece_1578_mem

theorem linked_6056 : Linked cell_6056 pieces := by
  apply Linked.of_piece piece_500 piece_500_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6056, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1578_mem, piece_1579_mem⟩

theorem linked_6057 : Linked cell_6057 pieces := by
  apply Linked.of_piece piece_500 piece_500_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6057, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1579_mem, piece_1580_mem⟩

theorem linked_6058 : Linked cell_6058 pieces := by
  apply Linked.of_piece piece_500 piece_500_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6058, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1580_mem, piece_1581_mem⟩

theorem linked_6059 : Linked cell_6059 pieces := by
  apply Linked.of_piece piece_500 piece_500_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6059, List.cons_subset, List.nil_subset, and_true]
  exact piece_1581_mem

theorem linked_6060 : Linked cell_6060 pieces := by
  apply Linked.of_piece piece_500 piece_500_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6060, List.cons_subset, List.nil_subset, and_true]
  exact piece_1581_mem

theorem linked_6061 : Linked cell_6061 pieces := by
  apply Linked.of_piece piece_501 piece_501_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6061, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1580_mem, piece_1581_mem⟩

theorem linked_6062 : Linked cell_6062 pieces := by
  apply Linked.of_piece piece_501 piece_501_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6062, List.cons_subset, List.nil_subset, and_true]
  exact piece_1581_mem

theorem linked_6063 : Linked cell_6063 pieces := by
  apply Linked.of_piece piece_501 piece_501_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6063, List.cons_subset, List.nil_subset, and_true]
  exact piece_1581_mem

theorem linked_6064 : Linked cell_6064 pieces := by
  apply Linked.of_piece piece_501 piece_501_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6064, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1581_mem, piece_1582_mem⟩

theorem linked_6065 : Linked cell_6065 pieces := by
  apply Linked.of_piece piece_501 piece_501_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6065, List.cons_subset, List.nil_subset, and_true]
  exact piece_1582_mem

theorem linked_6066 : Linked cell_6066 pieces := by
  apply Linked.of_piece piece_501 piece_501_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6066, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1582_mem, piece_1583_mem⟩

theorem linked_6067 : Linked cell_6067 pieces := by
  apply Linked.of_piece piece_501 piece_501_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6067, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1583_mem, piece_1584_mem⟩

theorem linked_6068 : Linked cell_6068 pieces := by
  apply Linked.of_piece piece_501 piece_501_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6068, List.cons_subset, List.nil_subset, and_true]
  exact piece_1584_mem

theorem linked_6069 : Linked cell_6069 pieces := by
  apply Linked.of_piece piece_501 piece_501_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6069, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1584_mem, piece_1585_mem⟩

theorem linked_6070 : Linked cell_6070 pieces := by
  apply Linked.of_piece piece_501 piece_501_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6070, List.cons_subset, List.nil_subset, and_true]
  exact piece_1585_mem

theorem linked_6071 : Linked cell_6071 pieces := by
  apply Linked.of_piece piece_501 piece_501_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6071, List.cons_subset, List.nil_subset, and_true]
  exact piece_1585_mem

theorem linked_6072 : Linked cell_6072 pieces := by
  apply Linked.of_piece piece_501 piece_501_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6072, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1585_mem, piece_1586_mem⟩

theorem linked_6073 : Linked cell_6073 pieces := by
  apply Linked.of_piece piece_502 piece_502_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6073, List.cons_subset, List.nil_subset, and_true]
  exact piece_1585_mem

theorem linked_6074 : Linked cell_6074 pieces := by
  apply Linked.of_piece piece_502 piece_502_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6074, List.cons_subset, List.nil_subset, and_true]
  exact piece_1585_mem

theorem linked_6075 : Linked cell_6075 pieces := by
  apply Linked.of_piece piece_502 piece_502_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6075, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1585_mem, piece_1586_mem⟩

theorem linked_6076 : Linked cell_6076 pieces := by
  apply Linked.of_piece piece_502 piece_502_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6076, List.cons_subset, List.nil_subset, and_true]
  exact piece_1586_mem

theorem linked_6077 : Linked cell_6077 pieces := by
  apply Linked.of_piece piece_502 piece_502_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6077, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1586_mem, piece_1587_mem⟩

theorem linked_6078 : Linked cell_6078 pieces := by
  apply Linked.of_piece piece_502 piece_502_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6078, List.cons_subset, List.nil_subset, and_true]
  exact piece_1587_mem

theorem linked_6079 : Linked cell_6079 pieces := by
  apply Linked.of_piece piece_502 piece_502_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6079, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1587_mem, piece_1588_mem⟩

theorem linked_6080 : Linked cell_6080 pieces := by
  apply Linked.of_piece piece_502 piece_502_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6080, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1588_mem, piece_1589_mem⟩

theorem linked_6081 : Linked cell_6081 pieces := by
  apply Linked.of_piece piece_502 piece_502_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6081, List.cons_subset, List.nil_subset, and_true]
  exact piece_1589_mem

theorem linked_6082 : Linked cell_6082 pieces := by
  apply Linked.of_piece piece_502 piece_502_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6082, List.cons_subset, List.nil_subset, and_true]
  exact piece_1589_mem

theorem linked_6083 : Linked cell_6083 pieces := by
  apply Linked.of_piece piece_502 piece_502_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6083, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1589_mem, piece_1590_mem⟩

theorem linked_6084 : Linked cell_6084 pieces := by
  apply Linked.of_piece piece_502 piece_502_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6084, List.cons_subset, List.nil_subset, and_true]
  exact piece_1590_mem

theorem linked_6085 : Linked cell_6085 pieces := by
  apply Linked.of_piece piece_503 piece_503_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6085, List.cons_subset, List.nil_subset, and_true]
  exact piece_1589_mem

theorem linked_6086 : Linked cell_6086 pieces := by
  apply Linked.of_piece piece_503 piece_503_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6086, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1589_mem, piece_1590_mem⟩

theorem linked_6087 : Linked cell_6087 pieces := by
  apply Linked.of_piece piece_503 piece_503_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6087, List.cons_subset, List.nil_subset, and_true]
  exact piece_1590_mem

theorem linked_6088 : Linked cell_6088 pieces := by
  apply Linked.of_piece piece_503 piece_503_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6088, List.cons_subset, List.nil_subset, and_true]
  exact piece_1590_mem

theorem linked_6089 : Linked cell_6089 pieces := by
  apply Linked.of_piece piece_503 piece_503_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6089, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1590_mem, ⟨piece_1591_mem, piece_1592_mem⟩⟩

theorem linked_6090 : Linked cell_6090 pieces := by
  apply Linked.of_piece piece_503 piece_503_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6090, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1592_mem, piece_1593_mem⟩

theorem linked_6091 : Linked cell_6091 pieces := by
  apply Linked.of_piece piece_503 piece_503_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6091, List.cons_subset, List.nil_subset, and_true]
  exact piece_1593_mem

theorem linked_6092 : Linked cell_6092 pieces := by
  apply Linked.of_piece piece_503 piece_503_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6092, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1593_mem, piece_1594_mem⟩

theorem linked_6093 : Linked cell_6093 pieces := by
  apply Linked.of_piece piece_503 piece_503_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6093, List.cons_subset, List.nil_subset, and_true]
  exact piece_1594_mem

theorem linked_6094 : Linked cell_6094 pieces := by
  apply Linked.of_piece piece_503 piece_503_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6094, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1594_mem, piece_1595_mem⟩

theorem linked_6095 : Linked cell_6095 pieces := by
  apply Linked.of_piece piece_503 piece_503_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6095, List.cons_subset, List.nil_subset, and_true]
  exact piece_1595_mem

theorem linked_6096 : Linked cell_6096 pieces := by
  apply Linked.of_piece piece_503 piece_503_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6096, List.cons_subset, List.nil_subset, and_true]
  exact piece_1595_mem

theorem linked_6097 : Linked cell_6097 pieces := by
  apply Linked.of_piece piece_504 piece_504_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6097, List.cons_subset, List.nil_subset, and_true]
  exact piece_1595_mem

theorem linked_6098 : Linked cell_6098 pieces := by
  apply Linked.of_piece piece_504 piece_504_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6098, List.cons_subset, List.nil_subset, and_true]
  exact piece_1595_mem

theorem linked_6099 : Linked cell_6099 pieces := by
  apply Linked.of_piece piece_504 piece_504_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6099, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1595_mem, piece_1596_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0121.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0121.cells,List.forall_mem_cons]
  exact ⟨linked_6050, linked_6051, linked_6052, linked_6053, linked_6054, linked_6055, linked_6056, linked_6057, linked_6058, linked_6059, linked_6060, linked_6061, linked_6062, linked_6063, linked_6064, linked_6065, linked_6066, linked_6067, linked_6068, linked_6069, linked_6070, linked_6071, linked_6072, linked_6073, linked_6074, linked_6075, linked_6076, linked_6077, linked_6078, linked_6079, linked_6080, linked_6081, linked_6082, linked_6083, linked_6084, linked_6085, linked_6086, linked_6087, linked_6088, linked_6089, linked_6090, linked_6091, linked_6092, linked_6093, linked_6094, linked_6095, linked_6096, linked_6097, linked_6098, linked_6099, by simp⟩

theorem covered : covers (5889 / 32000 : ℚ) (1191 / 6400 : ℚ)
    (SourceCertificates.Chunk0121.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0121
