import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0102
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(615195530726257 / 4000000000000000 : ℚ), (1230695530726257 / 8000000000000000 : ℚ)⟩
  branch := .right
  r := (24458208644877 / 25000000000000 : ℚ)
  w := (99786634289549 / 100000000000000 : ℚ)
  center := (2461086592178771 / 16000000000000000 : ℚ)
  supportValue := (54775158570073 / 100000000000000 : ℚ)
  supportSlope := (501281361010347 / 100000000000000 : ℚ)
  oldCenter := (54775158570073 / 100000000000000 : ℚ)
  newCoefficients := coefficients_435
  oldLo := (13700000000000001 / 25000000000000000 : ℚ)
  oldHi := (11020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1299]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5100 : Cell := { cellDefaults with
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  newCoefficients := coefficients_434
  oldLo := (54749999999999999 / 100000000000000000 : ℚ)
  oldHi := (13700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1293]
}

def cell_5101 : Cell := { cellDefaults with
  domain := ⟨(1230695530726257 / 8000000000000000 : ℚ), (1231 / 8000 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (2461695530726257 / 16000000000000000 : ℚ)
  supportValue := (684927985269897 / 1250000000000000 : ℚ)
  supportSlope := (626724227665059 / 125000000000000 : ℚ)
  oldCenter := (684927985269897 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_434
  oldLo := (54749999999999999 / 100000000000000000 : ℚ)
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1293, piece_1294]
}

def cell_5102 : Cell := { cellDefaults with
  domain := ⟨(1231 / 8000 : ℚ), (197 / 1280 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (9849 / 64000 : ℚ)
  supportValue := (5481161431327153 / 10000000000000000 : ℚ)
  supportSlope := (1253551248143303 / 250000000000000 : ℚ)
  oldCenter := (5481161431327153 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_434
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1294]
}

def cell_5103 : Cell := { cellDefaults with
  domain := ⟨(197 / 1280 : ℚ), (2463 / 16000 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (9851 / 64000 : ℚ)
  supportValue := (1370682128851721 / 2500000000000000 : ℚ)
  supportSlope := (5015134242572827 / 1000000000000000 : ℚ)
  oldCenter := (1370682128851721 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_434
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1294]
}

def cell_5104 : Cell := { cellDefaults with
  domain := ⟨(2463 / 16000 : ℚ), (4927 / 32000 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (9853 / 64000 : ℚ)
  supportValue := (2742147944976723 / 5000000000000000 : ℚ)
  supportSlope := (2508012260109993 / 500000000000000 : ℚ)
  oldCenter := (2742147944976723 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_434
  oldHi := (13725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1294, piece_1295]
}

def cell_5105 : Cell := { cellDefaults with
  domain := ⟨(4927 / 32000 : ℚ), (77 / 500 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (1971 / 12800 : ℚ)
  supportValue := (5485863422199763 / 10000000000000000 : ℚ)
  supportSlope := (5016221741207971 / 1000000000000000 : ℚ)
  oldCenter := (5485863422199763 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_434
  oldLo := (54849999999999999 / 100000000000000000 : ℚ)
  oldHi := (13725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1295]
}

def cell_5106 : Cell := { cellDefaults with
  domain := ⟨(77 / 500 : ℚ), (4929 / 32000 : ℚ)⟩
  center := (9857 / 64000 : ℚ)
  supportValue := (1096657330817439 / 2000000000000000 : ℚ)
  supportSlope := (50128658992179 / 10000000000000 : ℚ)
  oldCenter := (1096657330817439 / 2000000000000000 : ℚ)
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1294]
}

def cell_5107 : Cell := { cellDefaults with
  domain := ⟨(4929 / 32000 : ℚ), (493 / 3200 : ℚ)⟩
  center := (9859 / 64000 : ℚ)
  supportValue := (5484853319987767 / 10000000000000000 : ℚ)
  supportSlope := (10026966721682129 / 2000000000000000 : ℚ)
  oldCenter := (5484853319987767 / 10000000000000000 : ℚ)
  oldHi := (13725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1294, piece_1295]
}

def cell_5108 : Cell := { cellDefaults with
  domain := ⟨(493 / 3200 : ℚ), (4931 / 32000 : ℚ)⟩
  center := (9861 / 64000 : ℚ)
  supportValue := (1097284011648097 / 2000000000000000 : ℚ)
  supportSlope := (5013955510666079 / 1000000000000000 : ℚ)
  oldCenter := (1097284011648097 / 2000000000000000 : ℚ)
  oldLo := (54849999999999999 / 100000000000000000 : ℚ)
  oldHi := (13725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1295]
}

def cell_5109 : Cell := { cellDefaults with
  domain := ⟨(4931 / 32000 : ℚ), (1233 / 8000 : ℚ)⟩
  center := (9863 / 64000 : ℚ)
  supportValue := (34299919152251 / 62500000000000 : ℚ)
  supportSlope := (1253721195001667 / 250000000000000 : ℚ)
  oldCenter := (34299919152251 / 62500000000000 : ℚ)
  oldLo := (54849999999999999 / 100000000000000000 : ℚ)
  oldHi := (13725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1295]
}

def cell_5110 : Cell := { cellDefaults with
  domain := ⟨(1233 / 8000 : ℚ), (4933 / 32000 : ℚ)⟩
  center := (1973 / 12800 : ℚ)
  supportValue := (2744777180476333 / 5000000000000000 : ℚ)
  supportSlope := (5015648501647263 / 1000000000000000 : ℚ)
  oldCenter := (2744777180476333 / 5000000000000000 : ℚ)
  oldLo := (54849999999999999 / 100000000000000000 : ℚ)
  oldHi := (54949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1295, piece_1296]
}

def cell_5111 : Cell := { cellDefaults with
  domain := ⟨(4933 / 32000 : ℚ), (2467 / 16000 : ℚ)⟩
  center := (9867 / 64000 : ℚ)
  supportValue := (2745560888025887 / 5000000000000000 : ℚ)
  supportSlope := (2507987305252257 / 500000000000000 : ℚ)
  oldCenter := (2745560888025887 / 5000000000000000 : ℚ)
  oldLo := (13725000000000001 / 25000000000000000 : ℚ)
  oldHi := (54949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1296]
}

def cell_5112 : Cell := { cellDefaults with
  domain := ⟨(2467 / 16000 : ℚ), (987 / 6400 : ℚ)⟩
  center := (9869 / 64000 : ℚ)
  supportValue := (2746344706470963 / 5000000000000000 : ℚ)
  supportSlope := (250845130541677 / 50000000000000 : ℚ)
  oldCenter := (2746344706470963 / 5000000000000000 : ℚ)
  oldLo := (13725000000000001 / 25000000000000000 : ℚ)
  oldHi := (54949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1296]
}

def cell_5113 : Cell := { cellDefaults with
  domain := ⟨(987 / 6400 : ℚ), (617 / 4000 : ℚ)⟩
  center := (9871 / 64000 : ℚ)
  supportValue := (1098851467981569 / 2000000000000000 : ℚ)
  supportSlope := (1254452649421367 / 250000000000000 : ℚ)
  oldCenter := (1098851467981569 / 2000000000000000 : ℚ)
  oldLo := (13725000000000001 / 25000000000000000 : ℚ)
  oldHi := (13750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1296, piece_1297]
}

def cell_5114 : Cell := { cellDefaults with
  domain := ⟨(617 / 4000 : ℚ), (4937 / 32000 : ℚ)⟩
  center := (9873 / 64000 : ℚ)
  supportValue := (1373956357721999 / 2500000000000000 : ℚ)
  supportSlope := (100359852566001 / 20000000000000 : ℚ)
  oldCenter := (1373956357721999 / 2500000000000000 : ℚ)
  oldLo := (54949999999999999 / 100000000000000000 : ℚ)
  oldHi := (13750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1297]
}

def cell_5115 : Cell := { cellDefaults with
  domain := ⟨(4937 / 32000 : ℚ), (2469 / 16000 : ℚ)⟩
  center := (79 / 512 : ℚ)
  supportValue := (5497393698217077 / 10000000000000000 : ℚ)
  supportSlope := (5018919401791777 / 1000000000000000 : ℚ)
  oldCenter := (5497393698217077 / 10000000000000000 : ℚ)
  oldLo := (54949999999999999 / 100000000000000000 : ℚ)
  oldHi := (13750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1297]
}

def cell_5116 : Cell := { cellDefaults with
  domain := ⟨(2469 / 16000 : ℚ), (4939 / 32000 : ℚ)⟩
  center := (9877 / 64000 : ℚ)
  supportValue := (687370281904757 / 1250000000000000 : ℚ)
  supportSlope := (2509923328384289 / 500000000000000 : ℚ)
  oldCenter := (687370281904757 / 1250000000000000 : ℚ)
  oldLo := (54949999999999999 / 100000000000000000 : ℚ)
  oldHi := (13750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1297]
}

def cell_5117 : Cell := { cellDefaults with
  domain := ⟨(4939 / 32000 : ℚ), (247 / 1600 : ℚ)⟩
  center := (9879 / 64000 : ℚ)
  supportValue := (5500531021181171 / 10000000000000000 : ℚ)
  supportSlope := (627516599844391 / 125000000000000 : ℚ)
  oldCenter := (5500531021181171 / 10000000000000000 : ℚ)
  oldLo := (54949999999999999 / 100000000000000000 : ℚ)
  oldHi := (55049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1297, piece_1298]
}

def cell_5118 : Cell := { cellDefaults with
  domain := ⟨(247 / 1600 : ℚ), (4941 / 32000 : ℚ)⟩
  center := (9881 / 64000 : ℚ)
  supportValue := (55020999186699 / 100000000000000 : ℚ)
  supportSlope := (5020935281187633 / 1000000000000000 : ℚ)
  oldCenter := (55020999186699 / 100000000000000 : ℚ)
  oldLo := (13750000000000001 / 25000000000000000 : ℚ)
  oldHi := (55049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1298]
}

def cell_5119 : Cell := { cellDefaults with
  domain := ⟨(4941 / 32000 : ℚ), (2471 / 16000 : ℚ)⟩
  center := (9883 / 64000 : ℚ)
  supportValue := (5503669105455483 / 10000000000000000 : ℚ)
  supportSlope := (5021861270446237 / 1000000000000000 : ℚ)
  oldCenter := (5503669105455483 / 10000000000000000 : ℚ)
  oldLo := (13750000000000001 / 25000000000000000 : ℚ)
  oldHi := (55049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1298]
}

def cell_5120 : Cell := { cellDefaults with
  domain := ⟨(2471 / 16000 : ℚ), (4943 / 32000 : ℚ)⟩
  center := (1977 / 12800 : ℚ)
  supportValue := (2752619272706297 / 5000000000000000 : ℚ)
  supportSlope := (5022290264360407 / 1000000000000000 : ℚ)
  oldCenter := (2752619272706297 / 5000000000000000 : ℚ)
  oldLo := (13750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1298, piece_1299]
}

def cell_5121 : Cell := { cellDefaults with
  domain := ⟨(4943 / 32000 : ℚ), (309 / 2000 : ℚ)⟩
  center := (9887 / 64000 : ℚ)
  supportValue := (1101361614531937 / 2000000000000000 : ℚ)
  supportSlope := (10045899771000677 / 2000000000000000 : ℚ)
  oldCenter := (1101361614531937 / 2000000000000000 : ℚ)
  oldLo := (55049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1299]
}

def cell_5122 : Cell := { cellDefaults with
  domain := ⟨(309 / 2000 : ℚ), (989 / 6400 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (9889 / 64000 : ℚ)
  supportValue := (55042190771811 / 100000000000000 : ℚ)
  supportSlope := (5019574442449937 / 1000000000000000 : ℚ)
  oldCenter := (55042190771811 / 100000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (13750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1298, piece_1299]
}

def cell_5123 : Cell := { cellDefaults with
  domain := ⟨(989 / 6400 : ℚ), (2473 / 16000 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (9891 / 64000 : ℚ)
  supportValue := (275289385996557 / 500000000000000 : ℚ)
  supportSlope := (5019741540714051 / 1000000000000000 : ℚ)
  oldCenter := (275289385996557 / 500000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (55049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1299]
}

def cell_5124 : Cell := { cellDefaults with
  domain := ⟨(2473 / 16000 : ℚ), (4947 / 32000 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (9893 / 64000 : ℚ)
  supportValue := (2753678266808637 / 5000000000000000 : ℚ)
  supportSlope := (10041334348166231 / 2000000000000000 : ℚ)
  oldCenter := (2753678266808637 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (55049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1299]
}

def cell_5125 : Cell := { cellDefaults with
  domain := ⟨(4947 / 32000 : ℚ), (1237 / 8000 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (1979 / 12800 : ℚ)
  supportValue := (1101785127327703 / 2000000000000000 : ℚ)
  supportSlope := (5021593285714943 / 1000000000000000 : ℚ)
  oldCenter := (1101785127327703 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (55049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1299]
}

def cell_5126 : Cell := { cellDefaults with
  domain := ⟨(1237 / 8000 : ℚ), (4949 / 32000 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (9897 / 64000 : ℚ)
  supportValue := (5510494954195289 / 10000000000000000 : ℚ)
  supportSlope := (156934366034589 / 31250000000000 : ℚ)
  oldCenter := (5510494954195289 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (55049999999999999 / 100000000000000000 : ℚ)
  oldHi := (55149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1299, piece_1300]
}

def cell_5127 : Cell := { cellDefaults with
  domain := ⟨(4949 / 32000 : ℚ), (99 / 640 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (9899 / 64000 : ℚ)
  supportValue := (5512064398422463 / 10000000000000000 : ℚ)
  supportSlope := (1255671070763853 / 250000000000000 : ℚ)
  oldCenter := (5512064398422463 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (11020000000000001 / 20000000000000000 : ℚ)
  oldHi := (55149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1300]
}

def cell_5128 : Cell := { cellDefaults with
  domain := ⟨(99 / 640 : ℚ), (4951 / 32000 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (9901 / 64000 : ℚ)
  supportValue := (5513634131595403 / 10000000000000000 : ℚ)
  supportSlope := (1255902286804833 / 250000000000000 : ℚ)
  oldCenter := (5513634131595403 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (11020000000000001 / 20000000000000000 : ℚ)
  oldHi := (55149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1300]
}

def cell_5129 : Cell := { cellDefaults with
  domain := ⟨(4951 / 32000 : ℚ), (619 / 4000 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (9903 / 64000 : ℚ)
  supportValue := (1378801030754121 / 2500000000000000 : ℚ)
  supportSlope := (2512028399452859 / 500000000000000 : ℚ)
  oldCenter := (1378801030754121 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (11020000000000001 / 20000000000000000 : ℚ)
  oldHi := (11040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1300, piece_1301]
}

def cell_5130 : Cell := { cellDefaults with
  domain := ⟨(619 / 4000 : ℚ), (4953 / 32000 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (1981 / 12800 : ℚ)
  supportValue := (5516774197454737 / 10000000000000000 : ℚ)
  supportSlope := (1004940066389537 / 200000000000000 : ℚ)
  oldCenter := (5516774197454737 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (55149999999999999 / 100000000000000000 : ℚ)
  oldHi := (11040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1301]
}

def cell_5131 : Cell := { cellDefaults with
  domain := ⟨(4953 / 32000 : ℚ), (2477 / 16000 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (9907 / 64000 : ℚ)
  supportValue := (1103668912089357 / 2000000000000000 : ℚ)
  supportSlope := (1256405985062159 / 250000000000000 : ℚ)
  oldCenter := (1103668912089357 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (55149999999999999 / 100000000000000000 : ℚ)
  oldHi := (11040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1301]
}

def cell_5132 : Cell := { cellDefaults with
  domain := ⟨(2477 / 16000 : ℚ), (991 / 6400 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (9909 / 64000 : ℚ)
  supportValue := (1103983042428043 / 2000000000000000 : ℚ)
  supportSlope := (2513105454701403 / 500000000000000 : ℚ)
  oldCenter := (1103983042428043 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (55149999999999999 / 100000000000000000 : ℚ)
  oldHi := (55249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1301, piece_1302, piece_1303]
}

def cell_5133 : Cell := { cellDefaults with
  domain := ⟨(991 / 6400 : ℚ), (1239 / 8000 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (9911 / 64000 : ℚ)
  supportValue := (5521485929138833 / 10000000000000000 : ℚ)
  supportSlope := (5026715453492869 / 1000000000000000 : ℚ)
  oldCenter := (5521485929138833 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (690013966480447 / 1250000000000000 : ℚ)
  oldHi := (55249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1303]
}

def cell_5134 : Cell := { cellDefaults with
  domain := ⟨(1239 / 8000 : ℚ), (4957 / 32000 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (9913 / 64000 : ℚ)
  supportValue := (552305692166307 / 1000000000000000 : ℚ)
  supportSlope := (5027637824358777 / 1000000000000000 : ℚ)
  oldCenter := (552305692166307 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (690013966480447 / 1250000000000000 : ℚ)
  oldHi := (55249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1303]
}

def cell_5135 : Cell := { cellDefaults with
  domain := ⟨(4957 / 32000 : ℚ), (2479 / 16000 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (1983 / 12800 : ℚ)
  supportValue := (5524628202501509 / 10000000000000000 : ℚ)
  supportSlope := (10056724180792287 / 2000000000000000 : ℚ)
  oldCenter := (5524628202501509 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (690013966480447 / 1250000000000000 : ℚ)
  oldHi := (11060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1303, piece_1304]
}

def cell_5136 : Cell := { cellDefaults with
  domain := ⟨(2479 / 16000 : ℚ), (4959 / 32000 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (9917 / 64000 : ℚ)
  supportValue := (690774948993947 / 1250000000000000 : ℚ)
  supportSlope := (5028729418469879 / 1000000000000000 : ℚ)
  oldCenter := (690774948993947 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (55249999999999999 / 100000000000000000 : ℚ)
  oldHi := (11060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1304]
}

def cell_5137 : Cell := { cellDefaults with
  domain := ⟨(4959 / 32000 : ℚ), (31 / 200 : ℚ)⟩
  r := (97727930411099 / 100000000000000 : ℚ)
  w := (99804436962237 / 100000000000000 : ℚ)
  center := (9919 / 64000 : ℚ)
  supportValue := (5527771213641689 / 10000000000000000 : ℚ)
  supportSlope := (2514825260304221 / 500000000000000 : ℚ)
  oldCenter := (5527771213641689 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_436
  oldLo := (55249999999999999 / 100000000000000000 : ℚ)
  oldHi := (11060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1304]
}

def cell_5138 : Cell := { cellDefaults with
  domain := ⟨(31 / 200 : ℚ), (4961 / 32000 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (9921 / 64000 : ℚ)
  supportValue := (552516963717843 / 1000000000000000 : ℚ)
  supportSlope := (1256450256226671 / 250000000000000 : ℚ)
  oldCenter := (552516963717843 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (690013966480447 / 1250000000000000 : ℚ)
  oldHi := (11060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1303, piece_1304]
}

def cell_5139 : Cell := { cellDefaults with
  domain := ⟨(4961 / 32000 : ℚ), (2481 / 16000 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (9923 / 64000 : ℚ)
  supportValue := (5526740251887917 / 10000000000000000 : ℚ)
  supportSlope := (5026428587029841 / 1000000000000000 : ℚ)
  oldCenter := (5526740251887917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (55249999999999999 / 100000000000000000 : ℚ)
  oldHi := (11060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1304]
}

def cell_5140 : Cell := { cellDefaults with
  domain := ⟨(2481 / 16000 : ℚ), (4963 / 32000 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (397 / 2560 : ℚ)
  supportValue := (552831115476779 / 1000000000000000 : ℚ)
  supportSlope := (5027350966756217 / 1000000000000000 : ℚ)
  oldCenter := (552831115476779 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (55249999999999999 / 100000000000000000 : ℚ)
  oldHi := (11060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1304]
}

def cell_5141 : Cell := { cellDefaults with
  domain := ⟨(4963 / 32000 : ℚ), (1241 / 8000 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (9927 / 64000 : ℚ)
  supportValue := (5529882345964587 / 10000000000000000 : ℚ)
  supportSlope := (5027954457499817 / 1000000000000000 : ℚ)
  oldCenter := (5529882345964587 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (55249999999999999 / 100000000000000000 : ℚ)
  oldHi := (55349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1304, piece_1305]
}

def cell_5142 : Cell := { cellDefaults with
  domain := ⟨(1241 / 8000 : ℚ), (993 / 6400 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (9929 / 64000 : ℚ)
  supportValue := (2765726804181767 / 5000000000000000 : ℚ)
  supportSlope := (1005688948977479 / 200000000000000 : ℚ)
  oldCenter := (2765726804181767 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (11060000000000001 / 20000000000000000 : ℚ)
  oldHi := (55349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1305]
}

def cell_5143 : Cell := { cellDefaults with
  domain := ⟨(993 / 6400 : ℚ), (2483 / 16000 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (9931 / 64000 : ℚ)
  supportValue := (691628142639691 / 1250000000000000 : ℚ)
  supportSlope := (5029366003004299 / 1000000000000000 : ℚ)
  oldCenter := (691628142639691 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (11060000000000001 / 20000000000000000 : ℚ)
  oldHi := (55349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1305]
}

def cell_5144 : Cell := { cellDefaults with
  domain := ⟨(2483 / 16000 : ℚ), (4967 / 32000 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (9933 / 64000 : ℚ)
  supportValue := (5534596961837509 / 10000000000000000 : ℚ)
  supportSlope := (5030105156969 / 1000000000000 : ℚ)
  oldCenter := (5534596961837509 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (11060000000000001 / 20000000000000000 : ℚ)
  oldHi := (11080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1305, piece_1306]
}

def cell_5145 : Cell := { cellDefaults with
  domain := ⟨(4967 / 32000 : ℚ), (621 / 4000 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (1987 / 12800 : ℚ)
  supportValue := (2768084448267661 / 5000000000000000 : ℚ)
  supportSlope := (1257614986700517 / 250000000000000 : ℚ)
  oldCenter := (2768084448267661 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (55349999999999999 / 100000000000000000 : ℚ)
  oldHi := (11080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1306]
}

def cell_5146 : Cell := { cellDefaults with
  domain := ⟨(621 / 4000 : ℚ), (4969 / 32000 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (9937 / 64000 : ℚ)
  supportValue := (5537741058848743 / 10000000000000000 : ℚ)
  supportSlope := (157230624408089 / 31250000000000 : ℚ)
  oldCenter := (5537741058848743 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (55349999999999999 / 100000000000000000 : ℚ)
  oldHi := (11080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1306]
}

def cell_5147 : Cell := { cellDefaults with
  domain := ⟨(4969 / 32000 : ℚ), (497 / 3200 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (9939 / 64000 : ℚ)
  supportValue := (2769656754372609 / 5000000000000000 : ℚ)
  supportSlope := (629031607229269 / 125000000000000 : ℚ)
  oldCenter := (2769656754372609 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (55349999999999999 / 100000000000000000 : ℚ)
  oldHi := (55449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1306, piece_1307]
}

def cell_5148 : Cell := { cellDefaults with
  domain := ⟨(497 / 3200 : ℚ), (4971 / 32000 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (9941 / 64000 : ℚ)
  supportValue := (692610764351537 / 1250000000000000 : ℚ)
  supportSlope := (503247406708951 / 100000000000000 : ℚ)
  oldCenter := (692610764351537 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (11080000000000001 / 20000000000000000 : ℚ)
  oldHi := (55449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1307]
}

def cell_5149 : Cell := { cellDefaults with
  domain := ⟨(4971 / 32000 : ℚ), (1243 / 8000 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (9943 / 64000 : ℚ)
  supportValue := (1385614726587661 / 2500000000000000 : ℚ)
  supportSlope := (2516696449987421 / 500000000000000 : ℚ)
  oldCenter := (1385614726587661 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (11080000000000001 / 20000000000000000 : ℚ)
  oldHi := (55449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1307]
}

theorem check_5100 : SourceCertificateFamily.RightNormalized.check cell_5100 = true := by
  decide +kernel

theorem check_5101 : SourceCertificateFamily.RightNormalized.check cell_5101 = true := by
  decide +kernel

theorem check_5102 : SourceCertificateFamily.RightNormalized.check cell_5102 = true := by
  decide +kernel

theorem check_5103 : SourceCertificateFamily.RightNormalized.check cell_5103 = true := by
  decide +kernel

theorem check_5104 : SourceCertificateFamily.RightNormalized.check cell_5104 = true := by
  decide +kernel

theorem check_5105 : SourceCertificateFamily.RightNormalized.check cell_5105 = true := by
  decide +kernel

theorem check_5106 : SourceCertificateFamily.RightNormalized.check cell_5106 = true := by
  decide +kernel

theorem check_5107 : SourceCertificateFamily.RightNormalized.check cell_5107 = true := by
  decide +kernel

theorem check_5108 : SourceCertificateFamily.RightNormalized.check cell_5108 = true := by
  decide +kernel

theorem check_5109 : SourceCertificateFamily.RightNormalized.check cell_5109 = true := by
  decide +kernel

theorem check_5110 : SourceCertificateFamily.RightNormalized.check cell_5110 = true := by
  decide +kernel

theorem check_5111 : SourceCertificateFamily.RightNormalized.check cell_5111 = true := by
  decide +kernel

theorem check_5112 : SourceCertificateFamily.RightNormalized.check cell_5112 = true := by
  decide +kernel

theorem check_5113 : SourceCertificateFamily.RightNormalized.check cell_5113 = true := by
  decide +kernel

theorem check_5114 : SourceCertificateFamily.RightNormalized.check cell_5114 = true := by
  decide +kernel

theorem check_5115 : SourceCertificateFamily.RightNormalized.check cell_5115 = true := by
  decide +kernel

theorem check_5116 : SourceCertificateFamily.RightNormalized.check cell_5116 = true := by
  decide +kernel

theorem check_5117 : SourceCertificateFamily.RightNormalized.check cell_5117 = true := by
  decide +kernel

theorem check_5118 : SourceCertificateFamily.RightNormalized.check cell_5118 = true := by
  decide +kernel

theorem check_5119 : SourceCertificateFamily.RightNormalized.check cell_5119 = true := by
  decide +kernel

theorem check_5120 : SourceCertificateFamily.RightNormalized.check cell_5120 = true := by
  decide +kernel

theorem check_5121 : SourceCertificateFamily.RightNormalized.check cell_5121 = true := by
  decide +kernel

theorem check_5122 : SourceCertificateFamily.RightNormalized.check cell_5122 = true := by
  decide +kernel

theorem check_5123 : SourceCertificateFamily.RightNormalized.check cell_5123 = true := by
  decide +kernel

theorem check_5124 : SourceCertificateFamily.RightNormalized.check cell_5124 = true := by
  decide +kernel

theorem check_5125 : SourceCertificateFamily.RightNormalized.check cell_5125 = true := by
  decide +kernel

theorem check_5126 : SourceCertificateFamily.RightNormalized.check cell_5126 = true := by
  decide +kernel

theorem check_5127 : SourceCertificateFamily.RightNormalized.check cell_5127 = true := by
  decide +kernel

theorem check_5128 : SourceCertificateFamily.RightNormalized.check cell_5128 = true := by
  decide +kernel

theorem check_5129 : SourceCertificateFamily.RightNormalized.check cell_5129 = true := by
  decide +kernel

theorem check_5130 : SourceCertificateFamily.RightNormalized.check cell_5130 = true := by
  decide +kernel

theorem check_5131 : SourceCertificateFamily.RightNormalized.check cell_5131 = true := by
  decide +kernel

theorem check_5132 : SourceCertificateFamily.RightNormalized.check cell_5132 = true := by
  decide +kernel

theorem check_5133 : SourceCertificateFamily.RightNormalized.check cell_5133 = true := by
  decide +kernel

theorem check_5134 : SourceCertificateFamily.RightNormalized.check cell_5134 = true := by
  decide +kernel

theorem check_5135 : SourceCertificateFamily.RightNormalized.check cell_5135 = true := by
  decide +kernel

theorem check_5136 : SourceCertificateFamily.RightNormalized.check cell_5136 = true := by
  decide +kernel

theorem check_5137 : SourceCertificateFamily.RightNormalized.check cell_5137 = true := by
  decide +kernel

theorem check_5138 : SourceCertificateFamily.RightNormalized.check cell_5138 = true := by
  decide +kernel

theorem check_5139 : SourceCertificateFamily.RightNormalized.check cell_5139 = true := by
  decide +kernel

theorem check_5140 : SourceCertificateFamily.RightNormalized.check cell_5140 = true := by
  decide +kernel

theorem check_5141 : SourceCertificateFamily.RightNormalized.check cell_5141 = true := by
  decide +kernel

theorem check_5142 : SourceCertificateFamily.RightNormalized.check cell_5142 = true := by
  decide +kernel

theorem check_5143 : SourceCertificateFamily.RightNormalized.check cell_5143 = true := by
  decide +kernel

theorem check_5144 : SourceCertificateFamily.RightNormalized.check cell_5144 = true := by
  decide +kernel

theorem check_5145 : SourceCertificateFamily.RightNormalized.check cell_5145 = true := by
  decide +kernel

theorem check_5146 : SourceCertificateFamily.RightNormalized.check cell_5146 = true := by
  decide +kernel

theorem check_5147 : SourceCertificateFamily.RightNormalized.check cell_5147 = true := by
  decide +kernel

theorem check_5148 : SourceCertificateFamily.RightNormalized.check cell_5148 = true := by
  decide +kernel

theorem check_5149 : SourceCertificateFamily.RightNormalized.check cell_5149 = true := by
  decide +kernel

def cells : List Cell := [cell_5100, cell_5101, cell_5102, cell_5103, cell_5104, cell_5105, cell_5106, cell_5107, cell_5108, cell_5109, cell_5110, cell_5111, cell_5112, cell_5113, cell_5114, cell_5115, cell_5116, cell_5117, cell_5118, cell_5119, cell_5120, cell_5121, cell_5122, cell_5123, cell_5124, cell_5125, cell_5126, cell_5127, cell_5128, cell_5129, cell_5130, cell_5131, cell_5132, cell_5133, cell_5134, cell_5135, cell_5136, cell_5137, cell_5138, cell_5139, cell_5140, cell_5141, cell_5142, cell_5143, cell_5144, cell_5145, cell_5146, cell_5147, cell_5148, cell_5149]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5100, SourceCertificateFamily.of_right_checked check_5101, SourceCertificateFamily.of_right_checked check_5102, SourceCertificateFamily.of_right_checked check_5103, SourceCertificateFamily.of_right_checked check_5104, SourceCertificateFamily.of_right_checked check_5105, SourceCertificateFamily.of_right_checked check_5106, SourceCertificateFamily.of_right_checked check_5107, SourceCertificateFamily.of_right_checked check_5108, SourceCertificateFamily.of_right_checked check_5109, SourceCertificateFamily.of_right_checked check_5110, SourceCertificateFamily.of_right_checked check_5111, SourceCertificateFamily.of_right_checked check_5112, SourceCertificateFamily.of_right_checked check_5113, SourceCertificateFamily.of_right_checked check_5114, SourceCertificateFamily.of_right_checked check_5115, SourceCertificateFamily.of_right_checked check_5116, SourceCertificateFamily.of_right_checked check_5117, SourceCertificateFamily.of_right_checked check_5118, SourceCertificateFamily.of_right_checked check_5119, SourceCertificateFamily.of_right_checked check_5120, SourceCertificateFamily.of_right_checked check_5121, SourceCertificateFamily.of_right_checked check_5122, SourceCertificateFamily.of_right_checked check_5123, SourceCertificateFamily.of_right_checked check_5124, SourceCertificateFamily.of_right_checked check_5125, SourceCertificateFamily.of_right_checked check_5126, SourceCertificateFamily.of_right_checked check_5127, SourceCertificateFamily.of_right_checked check_5128, SourceCertificateFamily.of_right_checked check_5129, SourceCertificateFamily.of_right_checked check_5130, SourceCertificateFamily.of_right_checked check_5131, SourceCertificateFamily.of_right_checked check_5132, SourceCertificateFamily.of_right_checked check_5133, SourceCertificateFamily.of_right_checked check_5134, SourceCertificateFamily.of_right_checked check_5135, SourceCertificateFamily.of_right_checked check_5136, SourceCertificateFamily.of_right_checked check_5137, SourceCertificateFamily.of_right_checked check_5138, SourceCertificateFamily.of_right_checked check_5139, SourceCertificateFamily.of_right_checked check_5140, SourceCertificateFamily.of_right_checked check_5141, SourceCertificateFamily.of_right_checked check_5142, SourceCertificateFamily.of_right_checked check_5143, SourceCertificateFamily.of_right_checked check_5144, SourceCertificateFamily.of_right_checked check_5145, SourceCertificateFamily.of_right_checked check_5146, SourceCertificateFamily.of_right_checked check_5147, SourceCertificateFamily.of_right_checked check_5148, SourceCertificateFamily.of_right_checked check_5149, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0102

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0102
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0102
open AnalyticBounds.ExpressionCertificate

theorem linked_5100 : Linked cell_5100 pieces := by
  refine ⟨piece_434,piece_434_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5100,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1293_mem

theorem linked_5101 : Linked cell_5101 pieces := by
  refine ⟨piece_434,piece_434_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5101,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1293_mem
    · exact piece_1294_mem

theorem linked_5102 : Linked cell_5102 pieces := by
  refine ⟨piece_434,piece_434_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5102,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1294_mem

theorem linked_5103 : Linked cell_5103 pieces := by
  refine ⟨piece_434,piece_434_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5103,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1294_mem

theorem linked_5104 : Linked cell_5104 pieces := by
  refine ⟨piece_434,piece_434_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5104,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1294_mem
    · exact piece_1295_mem

theorem linked_5105 : Linked cell_5105 pieces := by
  refine ⟨piece_434,piece_434_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5105,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1295_mem

theorem linked_5106 : Linked cell_5106 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5106,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1294_mem

theorem linked_5107 : Linked cell_5107 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5107,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1294_mem
    · exact piece_1295_mem

theorem linked_5108 : Linked cell_5108 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5108,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1295_mem

theorem linked_5109 : Linked cell_5109 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5109,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1295_mem

theorem linked_5110 : Linked cell_5110 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5110,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1295_mem
    · exact piece_1296_mem

theorem linked_5111 : Linked cell_5111 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5111,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1296_mem

theorem linked_5112 : Linked cell_5112 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5112,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1296_mem

theorem linked_5113 : Linked cell_5113 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5113,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1296_mem
    · exact piece_1297_mem

theorem linked_5114 : Linked cell_5114 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5114,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1297_mem

theorem linked_5115 : Linked cell_5115 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5115,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1297_mem

theorem linked_5116 : Linked cell_5116 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5116,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1297_mem

theorem linked_5117 : Linked cell_5117 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5117,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1297_mem
    · exact piece_1298_mem

theorem linked_5118 : Linked cell_5118 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5118,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1298_mem

theorem linked_5119 : Linked cell_5119 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5119,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1298_mem

theorem linked_5120 : Linked cell_5120 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5120,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1298_mem
    · exact piece_1299_mem

theorem linked_5121 : Linked cell_5121 pieces := by
  refine ⟨piece_435,piece_435_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5121,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1299_mem

theorem linked_5122 : Linked cell_5122 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5122,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1298_mem
    · exact piece_1299_mem

theorem linked_5123 : Linked cell_5123 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5123,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1299_mem

theorem linked_5124 : Linked cell_5124 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5124,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1299_mem

theorem linked_5125 : Linked cell_5125 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5125,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1299_mem

theorem linked_5126 : Linked cell_5126 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5126,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1299_mem
    · exact piece_1300_mem

theorem linked_5127 : Linked cell_5127 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5127,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1300_mem

theorem linked_5128 : Linked cell_5128 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5128,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1300_mem

theorem linked_5129 : Linked cell_5129 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5129,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1300_mem
    · exact piece_1301_mem

theorem linked_5130 : Linked cell_5130 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5130,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1301_mem

theorem linked_5131 : Linked cell_5131 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5131,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1301_mem

theorem linked_5132 : Linked cell_5132 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5132,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1301_mem
    · exact piece_1302_mem
    · exact piece_1303_mem

theorem linked_5133 : Linked cell_5133 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5133,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1303_mem

theorem linked_5134 : Linked cell_5134 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5134,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1303_mem

theorem linked_5135 : Linked cell_5135 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5135,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1303_mem
    · exact piece_1304_mem

theorem linked_5136 : Linked cell_5136 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5136,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1304_mem

theorem linked_5137 : Linked cell_5137 pieces := by
  refine ⟨piece_436,piece_436_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5137,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1304_mem

theorem linked_5138 : Linked cell_5138 pieces := by
  refine ⟨piece_437,piece_437_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5138,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1303_mem
    · exact piece_1304_mem

theorem linked_5139 : Linked cell_5139 pieces := by
  refine ⟨piece_437,piece_437_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5139,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1304_mem

theorem linked_5140 : Linked cell_5140 pieces := by
  refine ⟨piece_437,piece_437_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5140,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1304_mem

theorem linked_5141 : Linked cell_5141 pieces := by
  refine ⟨piece_437,piece_437_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5141,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1304_mem
    · exact piece_1305_mem

theorem linked_5142 : Linked cell_5142 pieces := by
  refine ⟨piece_437,piece_437_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5142,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1305_mem

theorem linked_5143 : Linked cell_5143 pieces := by
  refine ⟨piece_437,piece_437_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5143,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1305_mem

theorem linked_5144 : Linked cell_5144 pieces := by
  refine ⟨piece_437,piece_437_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5144,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1305_mem
    · exact piece_1306_mem

theorem linked_5145 : Linked cell_5145 pieces := by
  refine ⟨piece_437,piece_437_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5145,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1306_mem

theorem linked_5146 : Linked cell_5146 pieces := by
  refine ⟨piece_437,piece_437_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5146,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1306_mem

theorem linked_5147 : Linked cell_5147 pieces := by
  refine ⟨piece_437,piece_437_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5147,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1306_mem
    · exact piece_1307_mem

theorem linked_5148 : Linked cell_5148 pieces := by
  refine ⟨piece_437,piece_437_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5148,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1307_mem

theorem linked_5149 : Linked cell_5149 pieces := by
  refine ⟨piece_437,piece_437_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5149,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1307_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0102.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0102.cells,List.forall_mem_cons]
  exact ⟨linked_5100, linked_5101, linked_5102, linked_5103, linked_5104, linked_5105, linked_5106, linked_5107, linked_5108, linked_5109, linked_5110, linked_5111, linked_5112, linked_5113, linked_5114, linked_5115, linked_5116, linked_5117, linked_5118, linked_5119, linked_5120, linked_5121, linked_5122, linked_5123, linked_5124, linked_5125, linked_5126, linked_5127, linked_5128, linked_5129, linked_5130, linked_5131, linked_5132, linked_5133, linked_5134, linked_5135, linked_5136, linked_5137, linked_5138, linked_5139, linked_5140, linked_5141, linked_5142, linked_5143, linked_5144, linked_5145, linked_5146, linked_5147, linked_5148, linked_5149, by simp⟩

theorem covered : covers (615195530726257 / 4000000000000000 : ℚ) (1243 / 8000 : ℚ)
    (SourceCertificates.Chunk0102.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0102
