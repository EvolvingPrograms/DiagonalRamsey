import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0065
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(39900000000000001 / 400000000000000000 : ℚ), (319300000000000007 / 3200000000000000000 : ℚ)⟩
  branch := .right
  r := (11095362597341 / 10000000000000 : ℚ)
  w := (1911287819757 / 2000000000000 : ℚ)
  center := (127700000000000003 / 1280000000000000000 : ℚ)
  supportValue := (6648912786882791 / 2000000000000000 : ℚ)
  supportSlope := (0 / 1 : ℚ)
  oldCenter := (849066162884932430646738360648373 / 2560000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_317
  oldLo := (16625000000000001 / 50000000000000000 : ℚ)
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_824]
  ne := 20
  nl := 48
  nq := 32
  centered := true
}

def cell_3250 : Cell := { cellDefaults with
  branch := .small
  r := (11109135262453 / 10000000000000 : ℚ)
  w := (95457794442177 / 100000000000000 : ℚ)
  supportSlope := (3123036725511983 / 500000000000000 : ℚ)
  newCoefficients := coefficients_316
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822]
  nl := 16
}

def cell_3251 : Cell := { cellDefaults with
  domain := ⟨(319300000000000007 / 3200000000000000000 : ℚ), (159700000000000003 / 1600000000000000000 : ℚ)⟩
  branch := .small
  r := (11109135262453 / 10000000000000 : ℚ)
  w := (95457794442177 / 100000000000000 : ℚ)
  center := (638700000000000013 / 6400000000000000000 : ℚ)
  supportValue := (16623259507338173 / 5000000000000000 : ℚ)
  supportSlope := (1566614815843097 / 250000000000000 : ℚ)
  oldCenter := (10617275847336891311202373595396249 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_316
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822]
  nl := 16
}

def cell_3252 : Cell := { cellDefaults with
  domain := ⟨(159700000000000003 / 1600000000000000000 : ℚ), (63900000000000001 / 640000000000000000 : ℚ)⟩
  branch := .small
  r := (11109135262453 / 10000000000000 : ℚ)
  w := (95457794442177 / 100000000000000 : ℚ)
  center := (638900000000000011 / 6400000000000000000 : ℚ)
  supportValue := (16624240237532737 / 5000000000000000 : ℚ)
  supportSlope := (3143453174132591 / 500000000000000 : ℚ)
  oldCenter := (10621227087759665852166642612860107 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_316
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822]
  nl := 16
}

def cell_3253 : Cell := { cellDefaults with
  domain := ⟨(63900000000000001 / 640000000000000000 : ℚ), (79900000000000001 / 800000000000000000 : ℚ)⟩
  branch := .small
  r := (11109135262453 / 10000000000000 : ℚ)
  w := (95457794442177 / 100000000000000 : ℚ)
  center := (639100000000000009 / 6400000000000000000 : ℚ)
  supportValue := (831261079660219 / 250000000000000 : ℚ)
  supportSlope := (156583878218443 / 25000000000000 : ℚ)
  oldCenter := (531258956010845970381349716941971 / 1600000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_316
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822, piece_823]
  nl := 16
}

def cell_3254 : Cell := { cellDefaults with
  domain := ⟨(79900000000000001 / 800000000000000000 : ℚ), (319700000000000003 / 3200000000000000000 : ℚ)⟩
  branch := .small
  r := (11109135262453 / 10000000000000 : ℚ)
  w := (95457794442177 / 100000000000000 : ℚ)
  center := (639300000000000007 / 6400000000000000000 : ℚ)
  supportValue := (6650480039223333 / 2000000000000000 : ℚ)
  supportSlope := (6272546998644719 / 1000000000000000 : ℚ)
  oldCenter := (4251651889075476833453360274563331 / 12800000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_316
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823]
  nl := 16
}

def cell_3255 : Cell := { cellDefaults with
  domain := ⟨(319700000000000003 / 3200000000000000000 : ℚ), (159900000000000001 / 1600000000000000000 : ℚ)⟩
  branch := .small
  r := (11109135262453 / 10000000000000 : ℚ)
  w := (95457794442177 / 100000000000000 : ℚ)
  center := (127900000000000001 / 1280000000000000000 : ℚ)
  supportValue := (16627181765916923 / 5000000000000000 : ℚ)
  supportSlope := (1258564104699657 / 200000000000000 : ℚ)
  oldCenter := (2126616547860774468327181765916923 / 6400000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_316
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823]
  nl := 16
}

def cell_3256 : Cell := { cellDefaults with
  domain := ⟨(159900000000000001 / 1600000000000000000 : ℚ), (319900000000000001 / 3200000000000000000 : ℚ)⟩
  branch := .small
  r := (11109135262453 / 10000000000000 : ℚ)
  w := (95457794442177 / 100000000000000 : ℚ)
  center := (639700000000000003 / 6400000000000000000 : ℚ)
  supportValue := (6651266642502737 / 2000000000000000 : ℚ)
  supportSlope := (12626309690119923 / 2000000000000000 : ℚ)
  oldCenter := (4254815271209000878853799927508211 / 12800000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_316
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823]
  nl := 16
}

def cell_3257 : Cell := { cellDefaults with
  domain := ⟨(319900000000000001 / 3200000000000000000 : ℚ), (1 / 10 : ℚ)⟩
  branch := .small
  r := (11109135262453 / 10000000000000 : ℚ)
  w := (95457794442177 / 100000000000000 : ℚ)
  center := (639900000000000001 / 6400000000000000000 : ℚ)
  supportValue := (33258304940049257 / 10000000000000000 : ℚ)
  supportSlope := (78653780377281 / 12500000000000 : ℚ)
  oldCenter := (21281989331137519587558304940049257 / 64000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_316
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823, piece_824]
  nl := 16
}

def cell_3258 : Cell := { cellDefaults with
  domain := ⟨(1 / 10 : ℚ), (10000000000000001 / 100000000000000000 : ℚ)⟩
  branch := .small
  r := (5551123588053 / 5000000000000 : ℚ)
  w := (11938938140081 / 12500000000000 : ℚ)
  center := (20000000000000001 / 200000000000000000 : ℚ)
  supportValue := (6651187826720749 / 2000000000000000 : ℚ)
  oldCenter := (133023756534414986651187826720749 / 400000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_316
  nl := 16
  oldPieces := [piece_824]
}

def cell_3259 : Cell := { cellDefaults with
  domain := ⟨(10000000000000001 / 100000000000000000 : ℚ), (5000003051757813 / 50000000000000000 : ℚ)⟩
  center := (20000006103515627 / 200000000000000000 : ℚ)
  supportValue := (33252411080829763 / 100000000000000000 : ℚ)
  oldCenter := (33252411080829763 / 100000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3260 : Cell := { cellDefaults with
  domain := ⟨(5000003051757813 / 50000000000000000 : ℚ), (10000012207031251 / 100000000000000000 : ℚ)⟩
  center := (20000018310546877 / 200000000000000000 : ℚ)
  supportValue := (3325246513784813 / 10000000000000000 : ℚ)
  supportSlope := (39534321949759033 / 10000000000000000 : ℚ)
  oldCenter := (3325246513784813 / 10000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3261 : Cell := { cellDefaults with
  domain := ⟨(10000012207031251 / 100000000000000000 : ℚ), (10000024414062501 / 100000000000000000 : ℚ)⟩
  center := (2500004577636719 / 25000000000000000 : ℚ)
  supportValue := (8313125333157359 / 25000000000000000 : ℚ)
  supportSlope := (1976719610638611 / 500000000000000 : ℚ)
  oldCenter := (8313125333157359 / 25000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3262 : Cell := { cellDefaults with
  domain := ⟨(10000024414062501 / 100000000000000000 : ℚ), (10000048828125001 / 100000000000000000 : ℚ)⟩
  center := (10000036621093751 / 100000000000000000 : ℚ)
  supportValue := (6650514744476993 / 20000000000000000 : ℚ)
  supportSlope := (1976726634438819 / 500000000000000 : ℚ)
  oldCenter := (6650514744476993 / 20000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3263 : Cell := { cellDefaults with
  domain := ⟨(10000048828125001 / 100000000000000000 : ℚ), (10000097656250001 / 100000000000000000 : ℚ)⟩
  center := (10000073242187501 / 100000000000000000 : ℚ)
  supportValue := (3325271850266783 / 10000000000000000 : ℚ)
  supportSlope := (39534813683985703 / 10000000000000000 : ℚ)
  oldCenter := (3325271850266783 / 10000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3264 : Cell := { cellDefaults with
  domain := ⟨(10000097656250001 / 100000000000000000 : ℚ), (10000195312500001 / 100000000000000000 : ℚ)⟩
  center := (10000146484375001 / 100000000000000000 : ℚ)
  supportValue := (33253008066320633 / 100000000000000000 : ℚ)
  supportSlope := (790707513954203 / 200000000000000 : ℚ)
  oldCenter := (33253008066320633 / 100000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3265 : Cell := { cellDefaults with
  domain := ⟨(10000195312500001 / 100000000000000000 : ℚ), (10000390625000001 / 100000000000000000 : ℚ)⟩
  center := (10000292968750001 / 100000000000000000 : ℚ)
  supportValue := (3325358720597593 / 10000000000000000 : ℚ)
  supportSlope := (395364998590253 / 100000000000000 : ℚ)
  oldCenter := (3325358720597593 / 10000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3266 : Cell := { cellDefaults with
  domain := ⟨(10000390625000001 / 100000000000000000 : ℚ), (10000781250000001 / 100000000000000000 : ℚ)⟩
  center := (10000585937500001 / 100000000000000000 : ℚ)
  supportValue := (3325474553469411 / 10000000000000000 : ℚ)
  supportSlope := (39538748721099637 / 10000000000000000 : ℚ)
  oldCenter := (3325474553469411 / 10000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3267 : Cell := { cellDefaults with
  domain := ⟨(10000781250000001 / 100000000000000000 : ℚ), (10001562500000001 / 100000000000000000 : ℚ)⟩
  center := (10001171875000001 / 100000000000000000 : ℚ)
  supportValue := (6651412477966283 / 20000000000000000 : ℚ)
  supportSlope := (19771624295437107 / 5000000000000000 : ℚ)
  oldCenter := (6651412477966283 / 20000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3268 : Cell := { cellDefaults with
  domain := ⟨(10001562500000001 / 100000000000000000 : ℚ), (10003125000000001 / 100000000000000000 : ℚ)⟩
  center := (10002343750000001 / 100000000000000000 : ℚ)
  supportValue := (3326169689147663 / 10000000000000000 : ℚ)
  supportSlope := (3955225693207609 / 1000000000000000 : ℚ)
  oldCenter := (3326169689147663 / 10000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3269 : Cell := { cellDefaults with
  domain := ⟨(10003125000000001 / 100000000000000000 : ℚ), (10004687500000001 / 100000000000000000 : ℚ)⟩
  center := (10003906250000001 / 100000000000000000 : ℚ)
  supportValue := (51981059172297 / 156250000000000 : ℚ)
  supportSlope := (3956428446233673 / 1000000000000000 : ℚ)
  oldCenter := (51981059172297 / 156250000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3270 : Cell := { cellDefaults with
  domain := ⟨(10004687500000001 / 100000000000000000 : ℚ), (10006250000000001 / 100000000000000000 : ℚ)⟩
  center := (10005468750000001 / 100000000000000000 : ℚ)
  supportValue := (3327406072990543 / 10000000000000000 : ℚ)
  supportSlope := (3957633172223751 / 1000000000000000 : ℚ)
  oldCenter := (3327406072990543 / 10000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3271 : Cell := { cellDefaults with
  domain := ⟨(10006250000000001 / 100000000000000000 : ℚ), (10007812500000001 / 100000000000000000 : ℚ)⟩
  center := (10007031250000001 / 100000000000000000 : ℚ)
  supportValue := (33280245473468983 / 100000000000000000 : ℚ)
  supportSlope := (989709968929553 / 250000000000000 : ℚ)
  oldCenter := (33280245473468983 / 100000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3272 : Cell := { cellDefaults with
  domain := ⟨(10007812500000001 / 100000000000000000 : ℚ), (10009375000000001 / 100000000000000000 : ℚ)⟩
  center := (10008593750000001 / 100000000000000000 : ℚ)
  supportValue := (16643216052027063 / 50000000000000000 : ℚ)
  supportSlope := (9900121403108031 / 2500000000000000 : ℚ)
  oldCenter := (16643216052027063 / 50000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3273 : Cell := { cellDefaults with
  domain := ⟨(10009375000000001 / 100000000000000000 : ℚ), (10010937500000001 / 100000000000000000 : ℚ)⟩
  center := (10010156250000001 / 100000000000000000 : ℚ)
  supportValue := (16646310312380677 / 50000000000000000 : ℚ)
  supportSlope := (39612592333746477 / 10000000000000000 : ℚ)
  oldCenter := (16646310312380677 / 50000000000000000 : ℚ)
  oldPieces := [piece_824]
}

def cell_3274 : Cell := { cellDefaults with
  domain := ⟨(10010937500000001 / 100000000000000000 : ℚ), (10012500000000001 / 100000000000000000 : ℚ)⟩
  center := (10011718750000001 / 100000000000000000 : ℚ)
  supportValue := (3329881103869833 / 10000000000000000 : ℚ)
  supportSlope := (316863155553051 / 80000000000000 : ℚ)
  oldCenter := (3329881103869833 / 10000000000000000 : ℚ)
  oldHi := (16675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_824, piece_825]
}

def cell_3275 : Cell := { cellDefaults with
  domain := ⟨(10012500000000001 / 100000000000000000 : ℚ), (10014062500000001 / 100000000000000000 : ℚ)⟩
  center := (10013281250000001 / 100000000000000000 : ℚ)
  supportValue := (16652498227059717 / 50000000000000000 : ℚ)
  supportSlope := (1979110850955479 / 500000000000000 : ℚ)
  oldCenter := (16652498227059717 / 50000000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

def cell_3276 : Cell := { cellDefaults with
  domain := ⟨(10014062500000001 / 100000000000000000 : ℚ), (10015625000000001 / 100000000000000000 : ℚ)⟩
  center := (10014843750000001 / 100000000000000000 : ℚ)
  supportValue := (33311182111474963 / 100000000000000000 : ℚ)
  supportSlope := (19797104973520163 / 5000000000000000 : ℚ)
  oldCenter := (33311182111474963 / 100000000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

def cell_3277 : Cell := { cellDefaults with
  domain := ⟨(10015625000000001 / 100000000000000000 : ℚ), (10017187500000001 / 100000000000000000 : ℚ)⟩
  center := (10016406250000001 / 100000000000000000 : ℚ)
  supportValue := (6663473928851349 / 20000000000000000 : ℚ)
  supportSlope := (39606222489290133 / 10000000000000000 : ℚ)
  oldCenter := (6663473928851349 / 20000000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

def cell_3278 : Cell := { cellDefaults with
  domain := ⟨(10017187500000001 / 100000000000000000 : ℚ), (10018750000000001 / 100000000000000000 : ℚ)⟩
  center := (10017968750000001 / 100000000000000000 : ℚ)
  supportValue := (1332942362221323 / 4000000000000000 : ℚ)
  supportSlope := (19809127345205013 / 5000000000000000 : ℚ)
  oldCenter := (1332942362221323 / 4000000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

def cell_3279 : Cell := { cellDefaults with
  domain := ⟨(10018750000000001 / 100000000000000000 : ℚ), (10020312500000001 / 100000000000000000 : ℚ)⟩
  center := (10019531250000001 / 100000000000000000 : ℚ)
  supportValue := (33329750348379167 / 100000000000000000 : ℚ)
  supportSlope := (39630306595945797 / 10000000000000000 : ℚ)
  oldCenter := (33329750348379167 / 100000000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

def cell_3280 : Cell := { cellDefaults with
  domain := ⟨(10020312500000001 / 100000000000000000 : ℚ), (10021875000000001 / 100000000000000000 : ℚ)⟩
  center := (10021093750000001 / 100000000000000000 : ℚ)
  supportValue := (6667188705175463 / 20000000000000000 : ℚ)
  supportSlope := (1982118912529529 / 500000000000000 : ℚ)
  oldCenter := (6667188705175463 / 20000000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

def cell_3281 : Cell := { cellDefaults with
  domain := ⟨(10021875000000001 / 100000000000000000 : ℚ), (10023437500000001 / 100000000000000000 : ℚ)⟩
  center := (10022656250000001 / 100000000000000000 : ℚ)
  supportValue := (1667106929555843 / 5000000000000000 : ℚ)
  supportSlope := (4956808712464067 / 1250000000000000 : ℚ)
  oldCenter := (1667106929555843 / 5000000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

def cell_3282 : Cell := { cellDefaults with
  domain := ⟨(10023437500000001 / 100000000000000000 : ℚ), (10025000000000001 / 100000000000000000 : ℚ)⟩
  center := (10024218750000001 / 100000000000000000 : ℚ)
  supportValue := (333483355471943 / 1000000000000000 : ℚ)
  supportSlope := (2478373218848251 / 625000000000000 : ℚ)
  oldCenter := (333483355471943 / 1000000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825, piece_826]
}

def cell_3283 : Cell := { cellDefaults with
  domain := ⟨(10025000000000001 / 100000000000000000 : ℚ), (10026562500000001 / 100000000000000000 : ℚ)⟩
  center := (10025781250000001 / 100000000000000000 : ℚ)
  supportValue := (667090563501249 / 2000000000000000 : ℚ)
  supportSlope := (9906059443363091 / 2500000000000000 : ℚ)
  oldCenter := (667090563501249 / 2000000000000000 : ℚ)
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826]
}

def cell_3284 : Cell := { cellDefaults with
  domain := ⟨(10026562500000001 / 100000000000000000 : ℚ), (10028125000000001 / 100000000000000000 : ℚ)⟩
  center := (10027343750000001 / 100000000000000000 : ℚ)
  supportValue := (667214407898591 / 2000000000000000 : ℚ)
  supportSlope := (3963618931443591 / 1000000000000000 : ℚ)
  oldCenter := (667214407898591 / 2000000000000000 : ℚ)
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826]
}

def cell_3285 : Cell := { cellDefaults with
  domain := ⟨(10028125000000001 / 100000000000000000 : ℚ), (10029687500000001 / 100000000000000000 : ℚ)⟩
  center := (10028906250000001 / 100000000000000000 : ℚ)
  supportValue := (3336691448374521 / 10000000000000000 : ℚ)
  supportSlope := (9912040082102891 / 2500000000000000 : ℚ)
  oldCenter := (3336691448374521 / 10000000000000000 : ℚ)
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826]
}

def cell_3286 : Cell := { cellDefaults with
  domain := ⟨(10029687500000001 / 100000000000000000 : ℚ), (10031250000000001 / 100000000000000000 : ℚ)⟩
  center := (10030468750000001 / 100000000000000000 : ℚ)
  supportValue := (1668655522227779 / 5000000000000000 : ℚ)
  supportSlope := (39660150859823773 / 10000000000000000 : ℚ)
  oldCenter := (1668655522227779 / 5000000000000000 : ℚ)
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826]
}

def cell_3287 : Cell := { cellDefaults with
  domain := ⟨(10031250000000001 / 100000000000000000 : ℚ), (10032812500000001 / 100000000000000000 : ℚ)⟩
  center := (10032031250000001 / 100000000000000000 : ℚ)
  supportValue := (33379308280413683 / 100000000000000000 : ℚ)
  supportSlope := (1983608047654073 / 500000000000000 : ℚ)
  oldCenter := (33379308280413683 / 100000000000000000 : ℚ)
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826]
}

def cell_3288 : Cell := { cellDefaults with
  domain := ⟨(10032812500000001 / 100000000000000000 : ℚ), (10034375000000001 / 100000000000000000 : ℚ)⟩
  center := (10033593750000001 / 100000000000000000 : ℚ)
  supportValue := (16692753997189777 / 50000000000000000 : ℚ)
  supportSlope := (3968419065301987 / 1000000000000000 : ℚ)
  oldCenter := (16692753997189777 / 50000000000000000 : ℚ)
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826]
}

def cell_3289 : Cell := { cellDefaults with
  domain := ⟨(10034375000000001 / 100000000000000000 : ℚ), (10035937500000001 / 100000000000000000 : ℚ)⟩
  center := (10035156250000001 / 100000000000000000 : ℚ)
  supportValue := (1669585479476011 / 5000000000000000 : ℚ)
  supportSlope := (39696240004118977 / 10000000000000000 : ℚ)
  oldCenter := (1669585479476011 / 5000000000000000 : ℚ)
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826]
}

def cell_3290 : Cell := { cellDefaults with
  domain := ⟨(10035937500000001 / 100000000000000000 : ℚ), (10037500000000001 / 100000000000000000 : ℚ)⟩
  center := (10036718750000001 / 100000000000000000 : ℚ)
  supportValue := (8349478267227431 / 25000000000000000 : ℚ)
  supportSlope := (3969942358697409 / 1000000000000000 : ℚ)
  oldCenter := (8349478267227431 / 25000000000000000 : ℚ)
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826, piece_827]
}

def cell_3291 : Cell := { cellDefaults with
  domain := ⟨(10037500000000001 / 100000000000000000 : ℚ), (10039062500000001 / 100000000000000000 : ℚ)⟩
  center := (10038281250000001 / 100000000000000000 : ℚ)
  supportValue := (16702056407289967 / 50000000000000000 : ℚ)
  supportSlope := (1983308602989453 / 500000000000000 : ℚ)
  oldCenter := (16702056407289967 / 50000000000000000 : ℚ)
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827]
}

def cell_3292 : Cell := { cellDefaults with
  domain := ⟨(10039062500000001 / 100000000000000000 : ℚ), (10040625000000001 / 100000000000000000 : ℚ)⟩
  center := (10039843750000001 / 100000000000000000 : ℚ)
  supportValue := (3341031158415781 / 10000000000000000 : ℚ)
  supportSlope := (49597614131347 / 12500000000000 : ℚ)
  oldCenter := (3341031158415781 / 10000000000000000 : ℚ)
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827]
}

def cell_3293 : Cell := { cellDefaults with
  domain := ⟨(10040625000000001 / 100000000000000000 : ℚ), (10042187500000001 / 100000000000000000 : ℚ)⟩
  center := (10041406250000001 / 100000000000000000 : ℚ)
  supportValue := (1670825610881449 / 5000000000000000 : ℚ)
  supportSlope := (39690029907148983 / 10000000000000000 : ℚ)
  oldCenter := (1670825610881449 / 5000000000000000 : ℚ)
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827]
}

def cell_3294 : Cell := { cellDefaults with
  domain := ⟨(10042187500000001 / 100000000000000000 : ℚ), (10043750000000001 / 100000000000000000 : ℚ)⟩
  center := (10042968750000001 / 100000000000000000 : ℚ)
  supportValue := (6684542943604267 / 20000000000000000 : ℚ)
  supportSlope := (3970198791012791 / 1000000000000000 : ℚ)
  oldCenter := (6684542943604267 / 20000000000000000 : ℚ)
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827]
}

def cell_3295 : Cell := { cellDefaults with
  domain := ⟨(10043750000000001 / 100000000000000000 : ℚ), (10046875000000001 / 100000000000000000 : ℚ)⟩
  center := (10045312500000001 / 100000000000000000 : ℚ)
  supportValue := (1671600764466129 / 5000000000000000 : ℚ)
  supportSlope := (1985998191281091 / 500000000000000 : ℚ)
  oldCenter := (1671600764466129 / 5000000000000000 : ℚ)
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827]
}

def cell_3296 : Cell := { cellDefaults with
  domain := ⟨(10046875000000001 / 100000000000000000 : ℚ), (10048437500000001 / 100000000000000000 : ℚ)⟩
  center := (10047656250000001 / 100000000000000000 : ℚ)
  supportValue := (3344133345110813 / 10000000000000000 : ℚ)
  supportSlope := (3973797876380303 / 1000000000000000 : ℚ)
  oldCenter := (3344133345110813 / 10000000000000000 : ℚ)
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827]
}

def cell_3297 : Cell := { cellDefaults with
  domain := ⟨(10048437500000001 / 100000000000000000 : ℚ), (10050000000000001 / 100000000000000000 : ℚ)⟩
  center := (10049218750000001 / 100000000000000000 : ℚ)
  supportValue := (8361885862400599 / 25000000000000000 : ℚ)
  supportSlope := (19872175167652273 / 5000000000000000 : ℚ)
  oldCenter := (8361885862400599 / 25000000000000000 : ℚ)
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827, piece_828]
}

def cell_3298 : Cell := { cellDefaults with
  domain := ⟨(10050000000000001 / 100000000000000000 : ℚ), (10051562500000001 / 100000000000000000 : ℚ)⟩
  r := (11081611641023 / 10000000000000 : ℚ)
  w := (11958502906811 / 12500000000000 : ℚ)
  center := (10050781250000001 / 100000000000000000 : ℚ)
  supportValue := (33446237733096507 / 100000000000000000 : ℚ)
  supportSlope := (39746589896374473 / 10000000000000000 : ℚ)
  oldCenter := (33446237733096507 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_318
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827]
  nl := 16
}

def cell_3299 : Cell := { cellDefaults with
  domain := ⟨(10051562500000001 / 100000000000000000 : ℚ), (10053125000000001 / 100000000000000000 : ℚ)⟩
  r := (11081611641023 / 10000000000000 : ℚ)
  w := (11958502906811 / 12500000000000 : ℚ)
  center := (10052343750000001 / 100000000000000000 : ℚ)
  supportValue := (16726222875294397 / 50000000000000000 : ℚ)
  supportSlope := (9927582629325471 / 2500000000000000 : ℚ)
  oldCenter := (16726222875294397 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_318
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827, piece_828]
  nl := 16
}

theorem check_3250 : cell_3250.check = true := by
  decide +kernel

theorem check_3251 : cell_3251.check = true := by
  decide +kernel

theorem check_3252 : cell_3252.check = true := by
  decide +kernel

theorem check_3253 : cell_3253.check = true := by
  decide +kernel

theorem check_3254 : cell_3254.check = true := by
  decide +kernel

theorem check_3255 : cell_3255.check = true := by
  decide +kernel

theorem check_3256 : cell_3256.check = true := by
  decide +kernel

theorem check_3257 : cell_3257.check = true := by
  decide +kernel

theorem check_3258 : cell_3258.check = true := by
  decide +kernel

theorem check_3298 : SourceCertificateFamily.RightNormalized.check cell_3298 = true := by
  decide +kernel

theorem check_3299 : SourceCertificateFamily.RightNormalized.check cell_3299 = true := by
  decide +kernel

def cells : List Cell := [cell_3250, cell_3251, cell_3252, cell_3253, cell_3254, cell_3255, cell_3256, cell_3257, cell_3258, cell_3259, cell_3260, cell_3261, cell_3262, cell_3263, cell_3264, cell_3265, cell_3266, cell_3267, cell_3268, cell_3269, cell_3270, cell_3271, cell_3272, cell_3273, cell_3274, cell_3275, cell_3276, cell_3277, cell_3278, cell_3279, cell_3280, cell_3281, cell_3282, cell_3283, cell_3284, cell_3285, cell_3286, cell_3287, cell_3288, cell_3289, cell_3290, cell_3291, cell_3292, cell_3293, cell_3294, cell_3295, cell_3296, cell_3297, cell_3298, cell_3299]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_checked check_3250, SourceCertificateFamily.of_checked check_3251, SourceCertificateFamily.of_checked check_3252, SourceCertificateFamily.of_checked check_3253, SourceCertificateFamily.of_checked check_3254, SourceCertificateFamily.of_checked check_3255, SourceCertificateFamily.of_checked check_3256, SourceCertificateFamily.of_checked check_3257, SourceCertificateFamily.of_checked check_3258, (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), (Or.inr (by unfold SourceCertificateFamily.Covered317; decide +kernel)), SourceCertificateFamily.of_right_checked check_3298, SourceCertificateFamily.of_right_checked check_3299, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0065

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0065
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0065
open AnalyticBounds.ExpressionCertificate

theorem linked_3250 : Linked cell_3250 pieces := by
  apply Linked.of_piece piece_316 piece_316_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3250, List.cons_subset, List.nil_subset, and_true]
  exact piece_822_mem

theorem linked_3251 : Linked cell_3251 pieces := by
  apply Linked.of_piece piece_316 piece_316_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3251, List.cons_subset, List.nil_subset, and_true]
  exact piece_822_mem

theorem linked_3252 : Linked cell_3252 pieces := by
  apply Linked.of_piece piece_316 piece_316_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3252, List.cons_subset, List.nil_subset, and_true]
  exact piece_822_mem

theorem linked_3253 : Linked cell_3253 pieces := by
  apply Linked.of_piece piece_316 piece_316_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3253, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_822_mem, piece_823_mem⟩

theorem linked_3254 : Linked cell_3254 pieces := by
  apply Linked.of_piece piece_316 piece_316_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3254, List.cons_subset, List.nil_subset, and_true]
  exact piece_823_mem

theorem linked_3255 : Linked cell_3255 pieces := by
  apply Linked.of_piece piece_316 piece_316_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3255, List.cons_subset, List.nil_subset, and_true]
  exact piece_823_mem

theorem linked_3256 : Linked cell_3256 pieces := by
  apply Linked.of_piece piece_316 piece_316_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3256, List.cons_subset, List.nil_subset, and_true]
  exact piece_823_mem

theorem linked_3257 : Linked cell_3257 pieces := by
  apply Linked.of_piece piece_316 piece_316_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3257, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_823_mem, piece_824_mem⟩

theorem linked_3258 : Linked cell_3258 pieces := by
  apply Linked.of_piece piece_316 piece_316_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3258, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3259 : Linked cell_3259 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3259, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3260 : Linked cell_3260 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3260, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3261 : Linked cell_3261 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3261, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3262 : Linked cell_3262 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3262, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3263 : Linked cell_3263 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3263, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3264 : Linked cell_3264 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3264, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3265 : Linked cell_3265 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3265, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3266 : Linked cell_3266 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3266, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3267 : Linked cell_3267 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3267, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3268 : Linked cell_3268 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3268, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3269 : Linked cell_3269 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3269, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3270 : Linked cell_3270 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3270, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3271 : Linked cell_3271 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3271, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3272 : Linked cell_3272 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3272, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3273 : Linked cell_3273 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3273, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_3274 : Linked cell_3274 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3274, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_824_mem, piece_825_mem⟩

theorem linked_3275 : Linked cell_3275 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3275, List.cons_subset, List.nil_subset, and_true]
  exact piece_825_mem

theorem linked_3276 : Linked cell_3276 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3276, List.cons_subset, List.nil_subset, and_true]
  exact piece_825_mem

theorem linked_3277 : Linked cell_3277 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3277, List.cons_subset, List.nil_subset, and_true]
  exact piece_825_mem

theorem linked_3278 : Linked cell_3278 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3278, List.cons_subset, List.nil_subset, and_true]
  exact piece_825_mem

theorem linked_3279 : Linked cell_3279 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3279, List.cons_subset, List.nil_subset, and_true]
  exact piece_825_mem

theorem linked_3280 : Linked cell_3280 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3280, List.cons_subset, List.nil_subset, and_true]
  exact piece_825_mem

theorem linked_3281 : Linked cell_3281 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3281, List.cons_subset, List.nil_subset, and_true]
  exact piece_825_mem

theorem linked_3282 : Linked cell_3282 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3282, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_825_mem, piece_826_mem⟩

theorem linked_3283 : Linked cell_3283 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3283, List.cons_subset, List.nil_subset, and_true]
  exact piece_826_mem

theorem linked_3284 : Linked cell_3284 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3284, List.cons_subset, List.nil_subset, and_true]
  exact piece_826_mem

theorem linked_3285 : Linked cell_3285 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3285, List.cons_subset, List.nil_subset, and_true]
  exact piece_826_mem

theorem linked_3286 : Linked cell_3286 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3286, List.cons_subset, List.nil_subset, and_true]
  exact piece_826_mem

theorem linked_3287 : Linked cell_3287 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3287, List.cons_subset, List.nil_subset, and_true]
  exact piece_826_mem

theorem linked_3288 : Linked cell_3288 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3288, List.cons_subset, List.nil_subset, and_true]
  exact piece_826_mem

theorem linked_3289 : Linked cell_3289 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3289, List.cons_subset, List.nil_subset, and_true]
  exact piece_826_mem

theorem linked_3290 : Linked cell_3290 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3290, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_826_mem, piece_827_mem⟩

theorem linked_3291 : Linked cell_3291 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3291, List.cons_subset, List.nil_subset, and_true]
  exact piece_827_mem

theorem linked_3292 : Linked cell_3292 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3292, List.cons_subset, List.nil_subset, and_true]
  exact piece_827_mem

theorem linked_3293 : Linked cell_3293 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3293, List.cons_subset, List.nil_subset, and_true]
  exact piece_827_mem

theorem linked_3294 : Linked cell_3294 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3294, List.cons_subset, List.nil_subset, and_true]
  exact piece_827_mem

theorem linked_3295 : Linked cell_3295 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3295, List.cons_subset, List.nil_subset, and_true]
  exact piece_827_mem

theorem linked_3296 : Linked cell_3296 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3296, List.cons_subset, List.nil_subset, and_true]
  exact piece_827_mem

theorem linked_3297 : Linked cell_3297 pieces := by
  apply Linked.of_piece piece_317 piece_317_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3297, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_827_mem, piece_828_mem⟩

theorem linked_3298 : Linked cell_3298 pieces := by
  apply Linked.of_piece piece_318 piece_318_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3298, List.cons_subset, List.nil_subset, and_true]
  exact piece_827_mem

theorem linked_3299 : Linked cell_3299 pieces := by
  apply Linked.of_piece piece_318 piece_318_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3299, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_827_mem, piece_828_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0065.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0065.cells,List.forall_mem_cons]
  exact ⟨linked_3250, linked_3251, linked_3252, linked_3253, linked_3254, linked_3255, linked_3256, linked_3257, linked_3258, linked_3259, linked_3260, linked_3261, linked_3262, linked_3263, linked_3264, linked_3265, linked_3266, linked_3267, linked_3268, linked_3269, linked_3270, linked_3271, linked_3272, linked_3273, linked_3274, linked_3275, linked_3276, linked_3277, linked_3278, linked_3279, linked_3280, linked_3281, linked_3282, linked_3283, linked_3284, linked_3285, linked_3286, linked_3287, linked_3288, linked_3289, linked_3290, linked_3291, linked_3292, linked_3293, linked_3294, linked_3295, linked_3296, linked_3297, linked_3298, linked_3299, by simp⟩

theorem covered : covers (39900000000000001 / 400000000000000000 : ℚ) (10053125000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0065.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0065
