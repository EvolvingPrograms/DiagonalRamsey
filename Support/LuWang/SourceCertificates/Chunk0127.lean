import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0127
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(9990624999999999 / 50000000000000000 : ℚ), (9993749999999999 / 50000000000000000 : ℚ)⟩
  branch := .right
  r := (446210111401 / 500000000000 : ℚ)
  w := (10163190165243 / 10000000000000 : ℚ)
  center := (9992187499999999 / 50000000000000000 : ℚ)
  supportValue := (935549495700867 / 1250000000000000 : ℚ)
  supportSlope := (5532600413905797 / 1000000000000000 : ℚ)
  oldCenter := (935549495700867 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_535
  oldLo := (14970000000000001 / 20000000000000000 : ℚ)
  oldHi := (377 / 500 : ℚ)
  oldPieces := [piece_1731, piece_1732]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6350 : Cell := { cellDefaults with
  r := (44662482742413 / 50000000000000 : ℚ)
  w := (10160722833441 / 10000000000000 : ℚ)
  newCoefficients := coefficients_534
  oldLo := (187 / 250 : ℚ)
  oldHi := (749 / 1000 : ℚ)
  oldPieces := [piece_1730, piece_1731]
}

def cell_6351 : Cell := { cellDefaults with
  domain := ⟨(9993749999999999 / 50000000000000000 : ℚ), (9996874999999999 / 50000000000000000 : ℚ)⟩
  r := (44662482742413 / 50000000000000 : ℚ)
  w := (10160722833441 / 10000000000000 : ℚ)
  center := (9995312499999999 / 50000000000000000 : ℚ)
  supportValue := (374392708275161 / 500000000000000 : ℚ)
  supportSlope := (2766894808620357 / 500000000000000 : ℚ)
  oldCenter := (374392708275161 / 500000000000000 : ℚ)
  newCoefficients := coefficients_534
  oldHi := (749 / 1000 : ℚ)
  oldPieces := [piece_1731]
}

def cell_6352 : Cell := { cellDefaults with
  domain := ⟨(9996874999999999 / 50000000000000000 : ℚ), (9999999999999999 / 50000000000000000 : ℚ)⟩
  r := (44662482742413 / 50000000000000 : ℚ)
  w := (10160722833441 / 10000000000000 : ℚ)
  center := (9998437499999999 / 50000000000000000 : ℚ)
  supportValue := (7491313142443613 / 10000000000000000 : ℚ)
  supportSlope := (172965175311679 / 31250000000000 : ℚ)
  oldCenter := (7491313142443613 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_534
  oldHi := (37475000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1731, piece_1732]
}

def cell_6353 : Cell := { cellDefaults with
  domain := ⟨(9999999999999999 / 50000000000000000 : ℚ), (10003124999999999 / 50000000000000000 : ℚ)⟩
  center := (10001562499999999 / 50000000000000000 : ℚ)
  supportValue := (1497964978552621 / 2000000000000000 : ℚ)
  supportSlope := (5531518598086649 / 1000000000000000 : ℚ)
  oldCenter := (1497964978552621 / 2000000000000000 : ℚ)
  oldHi := (37475000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1731, piece_1732]
}

def cell_6354 : Cell := { cellDefaults with
  domain := ⟨(10003124999999999 / 50000000000000000 : ℚ), (10006249999999999 / 50000000000000000 : ℚ)⟩
  center := (10004687499999999 / 50000000000000000 : ℚ)
  supportValue := (7493282416344409 / 10000000000000000 : ℚ)
  supportSlope := (1383190297195469 / 250000000000000 : ℚ)
  oldCenter := (7493282416344409 / 10000000000000000 : ℚ)
  oldLo := (749 / 1000 : ℚ)
  oldHi := (3 / 4 : ℚ)
  oldPieces := [piece_1732, piece_1733]
}

def cell_6355 : Cell := { cellDefaults with
  domain := ⟨(10006249999999999 / 50000000000000000 : ℚ), (10009374999999999 / 50000000000000000 : ℚ)⟩
  center := (10007812499999999 / 50000000000000000 : ℚ)
  supportValue := (7496740716586819 / 10000000000000000 : ℚ)
  supportSlope := (2766902197527621 / 500000000000000 : ℚ)
  oldCenter := (7496740716586819 / 10000000000000000 : ℚ)
  oldLo := (37475000000000003 / 50000000000000000 : ℚ)
  oldHi := (3 / 4 : ℚ)
  oldPieces := [piece_1733]
}

def cell_6356 : Cell := { cellDefaults with
  domain := ⟨(10009374999999999 / 50000000000000000 : ℚ), (10012499999999999 / 50000000000000000 : ℚ)⟩
  center := (10010937499999999 / 50000000000000000 : ℚ)
  supportValue := (375009989645299 / 500000000000000 : ℚ)
  supportSlope := (1107008860968861 / 200000000000000 : ℚ)
  oldCenter := (375009989645299 / 500000000000000 : ℚ)
  oldLo := (37475000000000003 / 50000000000000000 : ℚ)
  oldHi := (37525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1733, piece_1734]
}

def cell_6357 : Cell := { cellDefaults with
  domain := ⟨(10012499999999999 / 50000000000000000 : ℚ), (10015624999999999 / 50000000000000000 : ℚ)⟩
  center := (10014062499999999 / 50000000000000000 : ℚ)
  supportValue := (7503659536124803 / 10000000000000000 : ℚ)
  supportSlope := (553628508451709 / 100000000000000 : ℚ)
  oldCenter := (7503659536124803 / 10000000000000000 : ℚ)
  oldLo := (3 / 4 : ℚ)
  oldHi := (751 / 1000 : ℚ)
  oldPieces := [piece_1734, piece_1735]
}

def cell_6358 : Cell := { cellDefaults with
  domain := ⟨(10015624999999999 / 50000000000000000 : ℚ), (10018749999999999 / 50000000000000000 : ℚ)⟩
  center := (10017187499999999 / 50000000000000000 : ℚ)
  supportValue := (7507120038502237 / 10000000000000000 : ℚ)
  supportSlope := (5537376433288443 / 1000000000000000 : ℚ)
  oldCenter := (7507120038502237 / 10000000000000000 : ℚ)
  oldLo := (37525000000000003 / 50000000000000000 : ℚ)
  oldHi := (751 / 1000 : ℚ)
  oldPieces := [piece_1735]
}

def cell_6359 : Cell := { cellDefaults with
  domain := ⟨(10018749999999999 / 50000000000000000 : ℚ), (10021874999999999 / 50000000000000000 : ℚ)⟩
  center := (10020312499999999 / 50000000000000000 : ℚ)
  supportValue := (1877645328969407 / 2500000000000000 : ℚ)
  supportSlope := (553856540597053 / 100000000000000 : ℚ)
  oldCenter := (1877645328969407 / 2500000000000000 : ℚ)
  oldLo := (37525000000000003 / 50000000000000000 : ℚ)
  oldHi := (37575000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1735, piece_1736, piece_1737]
}

def cell_6360 : Cell := { cellDefaults with
  domain := ⟨(10021874999999999 / 50000000000000000 : ℚ), (10024999999999999 / 50000000000000000 : ℚ)⟩
  center := (10023437499999999 / 50000000000000000 : ℚ)
  supportValue := (469627705638131 / 625000000000000 : ℚ)
  supportSlope := (5539804127730363 / 1000000000000000 : ℚ)
  oldCenter := (469627705638131 / 625000000000000 : ℚ)
  oldLo := (7511173184357541 / 10000000000000000 : ℚ)
  oldHi := (94 / 125 : ℚ)
  oldPieces := [piece_1737, piece_1738]
}

def cell_6361 : Cell := { cellDefaults with
  domain := ⟨(10024999999999999 / 50000000000000000 : ℚ), (10028124999999999 / 50000000000000000 : ℚ)⟩
  r := (11144910912977 / 12500000000000 : ℚ)
  w := (5082835514093 / 5000000000000 : ℚ)
  center := (10026562499999999 / 50000000000000000 : ℚ)
  supportValue := (234767330030711 / 312500000000000 : ℚ)
  supportSlope := (69204338467177 / 12500000000000 : ℚ)
  oldCenter := (234767330030711 / 312500000000000 : ℚ)
  newCoefficients := coefficients_536
  oldLo := (751 / 1000 : ℚ)
  oldHi := (37575000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1736, piece_1737]
}

def cell_6362 : Cell := { cellDefaults with
  domain := ⟨(10028124999999999 / 50000000000000000 : ℚ), (10031249999999999 / 50000000000000000 : ℚ)⟩
  r := (11144910912977 / 12500000000000 : ℚ)
  w := (5082835514093 / 5000000000000 : ℚ)
  center := (10029687499999999 / 50000000000000000 : ℚ)
  supportValue := (1879003789878329 / 2500000000000000 : ℚ)
  supportSlope := (553747908242741 / 100000000000000 : ℚ)
  oldCenter := (1879003789878329 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_536
  oldLo := (7511173184357541 / 10000000000000000 : ℚ)
  oldHi := (94 / 125 : ℚ)
  oldPieces := [piece_1737, piece_1738]
}

def cell_6363 : Cell := { cellDefaults with
  domain := ⟨(10031249999999999 / 50000000000000000 : ℚ), (10034374999999999 / 50000000000000000 : ℚ)⟩
  r := (11144910912977 / 12500000000000 : ℚ)
  w := (5082835514093 / 5000000000000 : ℚ)
  center := (10032812499999999 / 50000000000000000 : ℚ)
  supportValue := (939934561236443 / 1250000000000000 : ℚ)
  supportSlope := (2769358712457759 / 500000000000000 : ℚ)
  oldCenter := (939934561236443 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_536
  oldLo := (37575000000000003 / 50000000000000000 : ℚ)
  oldHi := (37625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1738, piece_1739]
}

def cell_6364 : Cell := { cellDefaults with
  domain := ⟨(10034374999999999 / 50000000000000000 : ℚ), (10037499999999999 / 50000000000000000 : ℚ)⟩
  r := (11144910912977 / 12500000000000 : ℚ)
  w := (5082835514093 / 5000000000000 : ℚ)
  center := (10035937499999999 / 50000000000000000 : ℚ)
  supportValue := (1880734627988257 / 2500000000000000 : ℚ)
  supportSlope := (5539912554871407 / 1000000000000000 : ℚ)
  oldCenter := (1880734627988257 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_536
  oldLo := (94 / 125 : ℚ)
  oldHi := (37625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1739]
}

def cell_6365 : Cell := { cellDefaults with
  domain := ⟨(10037499999999999 / 50000000000000000 : ℚ), (10040624999999999 / 50000000000000000 : ℚ)⟩
  r := (11144910912977 / 12500000000000 : ℚ)
  w := (5082835514093 / 5000000000000 : ℚ)
  center := (10039062499999999 / 50000000000000000 : ℚ)
  supportValue := (7526401307438781 / 10000000000000000 : ℚ)
  supportSlope := (554099373632333 / 100000000000000 : ℚ)
  oldCenter := (7526401307438781 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_536
  oldLo := (94 / 125 : ℚ)
  oldHi := (753 / 1000 : ℚ)
  oldPieces := [piece_1739, piece_1740]
}

def cell_6366 : Cell := { cellDefaults with
  domain := ⟨(10040624999999999 / 50000000000000000 : ℚ), (10043749999999999 / 50000000000000000 : ℚ)⟩
  r := (11144910912977 / 12500000000000 : ℚ)
  w := (5082835514093 / 5000000000000 : ℚ)
  center := (10042187499999999 / 50000000000000000 : ℚ)
  supportValue := (1505972973014679 / 2000000000000000 : ℚ)
  supportSlope := (346389397361091 / 62500000000000 : ℚ)
  oldCenter := (1505972973014679 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_536
  oldLo := (37625000000000003 / 50000000000000000 : ℚ)
  oldHi := (37675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1740, piece_1741]
}

def cell_6367 : Cell := { cellDefaults with
  domain := ⟨(10043749999999999 / 50000000000000000 : ℚ), (10046874999999999 / 50000000000000000 : ℚ)⟩
  r := (11144910912977 / 12500000000000 : ℚ)
  w := (5082835514093 / 5000000000000 : ℚ)
  center := (10045312499999999 / 50000000000000000 : ℚ)
  supportValue := (7533329082414851 / 10000000000000000 : ℚ)
  supportSlope := (2771733004038879 / 500000000000000 : ℚ)
  oldCenter := (7533329082414851 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_536
  oldLo := (753 / 1000 : ℚ)
  oldPieces := [piece_1741, piece_1742]
}

def cell_6368 : Cell := { cellDefaults with
  domain := ⟨(10046874999999999 / 50000000000000000 : ℚ), (10049999999999999 / 50000000000000000 : ℚ)⟩
  r := (11144910912977 / 12500000000000 : ℚ)
  w := (5082835514093 / 5000000000000 : ℚ)
  center := (10048437499999999 / 50000000000000000 : ℚ)
  supportValue := (7536794072090411 / 10000000000000000 : ℚ)
  supportSlope := (1386128036285239 / 250000000000000 : ℚ)
  oldCenter := (7536794072090411 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_536
  oldLo := (37675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1742]
}

def cell_6369 : Cell := { cellDefaults with
  domain := ⟨(10049999999999999 / 50000000000000000 : ℚ), (10053124999999999 / 50000000000000000 : ℚ)⟩
  r := (44538378709323 / 50000000000000 : ℚ)
  w := (1271020851361 / 1250000000000 : ℚ)
  center := (10051562499999999 / 50000000000000000 : ℚ)
  supportValue := (235478296660091 / 312500000000000 : ℚ)
  supportSlope := (1385285371596101 / 250000000000000 : ℚ)
  oldCenter := (235478296660091 / 312500000000000 : ℚ)
  newCoefficients := coefficients_537
  oldLo := (753 / 1000 : ℚ)
  oldPieces := [piece_1741, piece_1742]
}

def cell_6370 : Cell := { cellDefaults with
  domain := ⟨(10053124999999999 / 50000000000000000 : ℚ), (10056249999999999 / 50000000000000000 : ℚ)⟩
  r := (44538378709323 / 50000000000000 : ℚ)
  w := (1271020851361 / 1250000000000 : ℚ)
  center := (10054687499999999 / 50000000000000000 : ℚ)
  supportValue := (376938452725519 / 500000000000000 : ℚ)
  supportSlope := (2771188316772033 / 500000000000000 : ℚ)
  oldCenter := (376938452725519 / 500000000000000 : ℚ)
  newCoefficients := coefficients_537
  oldLo := (37675000000000003 / 50000000000000000 : ℚ)
  oldHi := (37725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1742, piece_1743]
}

def cell_6371 : Cell := { cellDefaults with
  domain := ⟨(10056249999999999 / 50000000000000000 : ℚ), (10059374999999999 / 50000000000000000 : ℚ)⟩
  r := (44538378709323 / 50000000000000 : ℚ)
  w := (1271020851361 / 1250000000000 : ℚ)
  center := (10057812499999999 / 50000000000000000 : ℚ)
  supportValue := (3771116681597803 / 5000000000000000 : ℚ)
  supportSlope := (2771739379251237 / 500000000000000 : ℚ)
  oldCenter := (3771116681597803 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_537
  oldLo := (377 / 500 : ℚ)
  oldHi := (37725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1743]
}

def cell_6372 : Cell := { cellDefaults with
  domain := ⟨(10059374999999999 / 50000000000000000 : ℚ), (10062499999999999 / 50000000000000000 : ℚ)⟩
  r := (44538378709323 / 50000000000000 : ℚ)
  w := (1271020851361 / 1250000000000 : ℚ)
  center := (10060937499999999 / 50000000000000000 : ℚ)
  supportValue := (7545698443296439 / 10000000000000000 : ℚ)
  supportSlope := (1108929701723227 / 200000000000000 : ℚ)
  oldCenter := (7545698443296439 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_537
  oldLo := (377 / 500 : ℚ)
  oldHi := (151 / 200 : ℚ)
  oldPieces := [piece_1743, piece_1744]
}

def cell_6373 : Cell := { cellDefaults with
  domain := ⟨(10062499999999999 / 50000000000000000 : ℚ), (10065624999999999 / 50000000000000000 : ℚ)⟩
  r := (44538378709323 / 50000000000000 : ℚ)
  w := (1271020851361 / 1250000000000 : ℚ)
  center := (10064062499999999 / 50000000000000000 : ℚ)
  supportValue := (3774582113825669 / 5000000000000000 : ℚ)
  supportSlope := (11091763765186613 / 2000000000000000 : ℚ)
  oldCenter := (3774582113825669 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_537
  oldLo := (37725000000000003 / 50000000000000000 : ℚ)
  oldHi := (37775000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1744, piece_1745]
}

def cell_6374 : Cell := { cellDefaults with
  domain := ⟨(10065624999999999 / 50000000000000000 : ℚ), (10068749999999999 / 50000000000000000 : ℚ)⟩
  r := (44538378709323 / 50000000000000 : ℚ)
  w := (1271020851361 / 1250000000000 : ℚ)
  center := (10067187499999999 / 50000000000000000 : ℚ)
  supportValue := (7552630726813633 / 10000000000000000 : ℚ)
  supportSlope := (554703349652641 / 100000000000000 : ℚ)
  oldCenter := (7552630726813633 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_537
  oldLo := (151 / 200 : ℚ)
  oldHi := (37775000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1745]
}

def cell_6375 : Cell := { cellDefaults with
  domain := ⟨(10068749999999999 / 50000000000000000 : ℚ), (10071874999999999 / 50000000000000000 : ℚ)⟩
  r := (44538378709323 / 50000000000000 : ℚ)
  w := (1271020851361 / 1250000000000 : ℚ)
  center := (10070312499999999 / 50000000000000000 : ℚ)
  supportValue := (3778048998139581 / 5000000000000000 : ℚ)
  supportSlope := (1109630201136369 / 200000000000000 : ℚ)
  oldCenter := (3778048998139581 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_537
  oldLo := (151 / 200 : ℚ)
  oldHi := (75600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1745, piece_1746]
}

def cell_6376 : Cell := { cellDefaults with
  domain := ⟨(10071874999999999 / 50000000000000000 : ℚ), (10074999999999999 / 50000000000000000 : ℚ)⟩
  r := (44538378709323 / 50000000000000 : ℚ)
  w := (1271020851361 / 1250000000000 : ℚ)
  center := (10073437499999999 / 50000000000000000 : ℚ)
  supportValue := (1511913200216273 / 2000000000000000 : ℚ)
  supportSlope := (1387345648597993 / 250000000000000 : ℚ)
  oldCenter := (1511913200216273 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_537
  oldLo := (37775000000000003 / 50000000000000000 : ℚ)
  oldHi := (37825000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1746, piece_1747]
}

def cell_6377 : Cell := { cellDefaults with
  domain := ⟨(10074999999999999 / 50000000000000000 : ℚ), (32249999999999997 / 160000000000000000 : ℚ)⟩
  r := (17798886926677 / 20000000000000 : ℚ)
  w := (1017067645489 / 1000000000000 : ℚ)
  center := (322449999999999969 / 1600000000000000000 : ℚ)
  supportValue := (1511615443108099 / 2000000000000000 : ℚ)
  supportSlope := (5545998057122747 / 1000000000000000 : ℚ)
  oldCenter := (1511615443108099 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_538
  oldLo := (37775000000000003 / 50000000000000000 : ℚ)
  oldHi := (75600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1746]
}

def cell_6378 : Cell := { cellDefaults with
  domain := ⟨(32249999999999997 / 160000000000000000 : ℚ), (80649999999999993 / 400000000000000000 : ℚ)⟩
  r := (17798886926677 / 20000000000000 : ℚ)
  w := (1017067645489 / 1000000000000 : ℚ)
  center := (322549999999999971 / 1600000000000000000 : ℚ)
  supportValue := (7561543802047497 / 10000000000000000 : ℚ)
  supportSlope := (693382240049431 / 125000000000000 : ℚ)
  oldCenter := (7561543802047497 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_538
  oldLo := (37775000000000003 / 50000000000000000 : ℚ)
  oldHi := (37825000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1746, piece_1747]
}

def cell_6379 : Cell := { cellDefaults with
  domain := ⟨(80649999999999993 / 400000000000000000 : ℚ), (161349999999999987 / 800000000000000000 : ℚ)⟩
  r := (17798886926677 / 20000000000000 : ℚ)
  w := (1017067645489 / 1000000000000 : ℚ)
  center := (322649999999999973 / 1600000000000000000 : ℚ)
  supportValue := (7565011157765531 / 10000000000000000 : ℚ)
  supportSlope := (5548288741452967 / 1000000000000000 : ℚ)
  oldCenter := (7565011157765531 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_538
  oldLo := (75600000000000001 / 100000000000000000 : ℚ)
  oldHi := (75700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1747, piece_1748, piece_1749]
}

def cell_6380 : Cell := { cellDefaults with
  domain := ⟨(161349999999999987 / 800000000000000000 : ℚ), (40349999999999997 / 200000000000000000 : ℚ)⟩
  r := (17798886926677 / 20000000000000 : ℚ)
  w := (1017067645489 / 1000000000000 : ℚ)
  center := (12909999999999999 / 64000000000000000 : ℚ)
  supportValue := (756847916175319 / 1000000000000000 : ℚ)
  supportSlope := (2774759278823369 / 500000000000000 : ℚ)
  oldCenter := (756847916175319 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_538
  oldLo := (3783240223463687 / 5000000000000000 : ℚ)
  oldHi := (37875000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1749, piece_1750]
}

def cell_6381 : Cell := { cellDefaults with
  domain := ⟨(40349999999999997 / 200000000000000000 : ℚ), (161449999999999989 / 800000000000000000 : ℚ)⟩
  r := (17798886926677 / 20000000000000 : ℚ)
  w := (1017067645489 / 1000000000000 : ℚ)
  center := (322849999999999977 / 1600000000000000000 : ℚ)
  supportValue := (7571947933339913 / 10000000000000000 : ℚ)
  supportSlope := (5550580905822389 / 1000000000000000 : ℚ)
  oldCenter := (7571947933339913 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_538
  oldLo := (75700000000000001 / 100000000000000000 : ℚ)
  oldHi := (37875000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1750]
}

def cell_6382 : Cell := { cellDefaults with
  domain := ⟨(161449999999999989 / 800000000000000000 : ℚ), (16149999999999999 / 80000000000000000 : ℚ)⟩
  r := (17798886926677 / 20000000000000 : ℚ)
  w := (1017067645489 / 1000000000000 : ℚ)
  center := (322949999999999979 / 1600000000000000000 : ℚ)
  supportValue := (7575417472973437 / 10000000000000000 : ℚ)
  supportSlope := (1110356495811593 / 200000000000000 : ℚ)
  oldCenter := (7575417472973437 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_538
  oldLo := (75700000000000001 / 100000000000000000 : ℚ)
  oldHi := (75800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1750, piece_1751]
}

def cell_6383 : Cell := { cellDefaults with
  domain := ⟨(16149999999999999 / 80000000000000000 : ℚ), (161549999999999991 / 800000000000000000 : ℚ)⟩
  r := (17798886926677 / 20000000000000 : ℚ)
  w := (1017067645489 / 1000000000000 : ℚ)
  center := (323049999999999981 / 1600000000000000000 : ℚ)
  supportValue := (7578887692388949 / 10000000000000000 : ℚ)
  supportSlope := (5553010452309937 / 1000000000000000 : ℚ)
  oldCenter := (7578887692388949 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_538
  oldLo := (37875000000000003 / 50000000000000000 : ℚ)
  oldHi := (37925000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1751, piece_1752]
}

def cell_6384 : Cell := { cellDefaults with
  domain := ⟨(161549999999999991 / 800000000000000000 : ℚ), (20199999999999999 / 100000000000000000 : ℚ)⟩
  r := (17798886926677 / 20000000000000 : ℚ)
  w := (1017067645489 / 1000000000000 : ℚ)
  center := (323149999999999983 / 1600000000000000000 : ℚ)
  supportValue := (7582358646099847 / 10000000000000000 : ℚ)
  supportSlope := (444329883207919 / 80000000000000 : ℚ)
  oldCenter := (7582358646099847 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_538
  oldLo := (75800000000000001 / 100000000000000000 : ℚ)
  oldHi := (37925000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1752]
}

def cell_6385 : Cell := { cellDefaults with
  domain := ⟨(20199999999999999 / 100000000000000000 : ℚ), (20206249999999999 / 100000000000000000 : ℚ)⟩
  r := (88912316970539 / 100000000000000 : ℚ)
  w := (10173201065293 / 10000000000000 : ℚ)
  center := (20203124999999999 / 100000000000000000 : ℚ)
  supportValue := (3790435126427953 / 5000000000000000 : ℚ)
  supportSlope := (11101373917657753 / 2000000000000000 : ℚ)
  oldCenter := (3790435126427953 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_539
  oldLo := (37875000000000003 / 50000000000000000 : ℚ)
  oldHi := (37925000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1751, piece_1752]
}

def cell_6386 : Cell := { cellDefaults with
  domain := ⟨(20206249999999999 / 100000000000000000 : ℚ), (20212499999999999 / 100000000000000000 : ℚ)⟩
  r := (88912316970539 / 100000000000000 : ℚ)
  w := (10173201065293 / 10000000000000 : ℚ)
  center := (20209374999999999 / 100000000000000000 : ℚ)
  supportValue := (7584339823098569 / 10000000000000000 : ℚ)
  supportSlope := (2775957077729707 / 500000000000000 : ℚ)
  oldCenter := (7584339823098569 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_539
  oldLo := (75800000000000001 / 100000000000000000 : ℚ)
  oldHi := (75900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1752, piece_1753]
}

def cell_6387 : Cell := { cellDefaults with
  domain := ⟨(20212499999999999 / 100000000000000000 : ℚ), (20218749999999999 / 100000000000000000 : ℚ)⟩
  r := (88912316970539 / 100000000000000 : ℚ)
  w := (10173201065293 / 10000000000000 : ℚ)
  center := (20215624999999999 / 100000000000000000 : ℚ)
  supportValue := (7587810091400673 / 10000000000000000 : ℚ)
  supportSlope := (5553083494424627 / 1000000000000000 : ℚ)
  oldCenter := (7587810091400673 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_539
  oldLo := (37925000000000003 / 50000000000000000 : ℚ)
  oldHi := (75900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1753]
}

def cell_6388 : Cell := { cellDefaults with
  domain := ⟨(20218749999999999 / 100000000000000000 : ℚ), (20224999999999999 / 100000000000000000 : ℚ)⟩
  r := (88912316970539 / 100000000000000 : ℚ)
  w := (10173201065293 / 10000000000000 : ℚ)
  center := (20221874999999999 / 100000000000000000 : ℚ)
  supportValue := (7591281126195363 / 10000000000000000 : ℚ)
  supportSlope := (1388543469205139 / 250000000000000 : ℚ)
  oldCenter := (7591281126195363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_539
  oldLo := (37925000000000003 / 50000000000000000 : ℚ)
  oldHi := (37975000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1753, piece_1754]
}

def cell_6389 : Cell := { cellDefaults with
  domain := ⟨(20224999999999999 / 100000000000000000 : ℚ), (20231249999999999 / 100000000000000000 : ℚ)⟩
  r := (88912316970539 / 100000000000000 : ℚ)
  w := (10173201065293 / 10000000000000 : ℚ)
  center := (20228124999999999 / 100000000000000000 : ℚ)
  supportValue := (7594752907596957 / 10000000000000000 : ℚ)
  supportSlope := (2777699663250921 / 500000000000000 : ℚ)
  oldCenter := (7594752907596957 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_539
  oldLo := (75900000000000001 / 100000000000000000 : ℚ)
  oldHi := (76000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1754, piece_1755]
}

def cell_6390 : Cell := { cellDefaults with
  domain := ⟨(20231249999999999 / 100000000000000000 : ℚ), (20237499999999999 / 100000000000000000 : ℚ)⟩
  r := (88912316970539 / 100000000000000 : ℚ)
  w := (10173201065293 / 10000000000000 : ℚ)
  center := (20234374999999999 / 100000000000000000 : ℚ)
  supportValue := (3799112676905913 / 5000000000000000 : ℚ)
  supportSlope := (347288702088111 / 62500000000000 : ℚ)
  oldCenter := (3799112676905913 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_539
  oldLo := (37975000000000003 / 50000000000000000 : ℚ)
  oldHi := (76000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1755]
}

def cell_6391 : Cell := { cellDefaults with
  domain := ⟨(20237499999999999 / 100000000000000000 : ℚ), (20243749999999999 / 100000000000000000 : ℚ)⟩
  r := (88912316970539 / 100000000000000 : ℚ)
  w := (10173201065293 / 10000000000000 : ℚ)
  center := (20240624999999999 / 100000000000000000 : ℚ)
  supportValue := (3800849282650171 / 5000000000000000 : ℚ)
  supportSlope := (5557656015561463 / 1000000000000000 : ℚ)
  oldCenter := (3800849282650171 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_539
  oldLo := (37975000000000003 / 50000000000000000 : ℚ)
  oldHi := (38025000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1755, piece_1756]
}

def cell_6392 : Cell := { cellDefaults with
  domain := ⟨(20243749999999999 / 100000000000000000 : ℚ), (20249999999999999 / 100000000000000000 : ℚ)⟩
  r := (88912316970539 / 100000000000000 : ℚ)
  w := (10173201065293 / 10000000000000 : ℚ)
  center := (20246874999999999 / 100000000000000000 : ℚ)
  supportValue := (7605172541408243 / 10000000000000000 : ℚ)
  supportSlope := (1111775914722557 / 200000000000000 : ℚ)
  oldCenter := (7605172541408243 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_539
  oldLo := (76000000000000001 / 100000000000000000 : ℚ)
  oldHi := (76100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1756, piece_1757]
}

def cell_6393 : Cell := { cellDefaults with
  domain := ⟨(20249999999999999 / 100000000000000000 : ℚ), (20256249999999999 / 100000000000000000 : ℚ)⟩
  r := (11103800547897 / 12500000000000 : ℚ)
  w := (5087870090709 / 5000000000000 : ℚ)
  center := (20253124999999999 / 100000000000000000 : ℚ)
  supportValue := (1900921081405951 / 2500000000000000 : ℚ)
  supportSlope := (1388881201463299 / 250000000000000 : ℚ)
  oldCenter := (1900921081405951 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_540
  oldLo := (76000000000000001 / 100000000000000000 : ℚ)
  oldHi := (76100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1756, piece_1757]
}

def cell_6394 : Cell := { cellDefaults with
  domain := ⟨(20256249999999999 / 100000000000000000 : ℚ), (20262499999999999 / 100000000000000000 : ℚ)⟩
  r := (11103800547897 / 12500000000000 : ℚ)
  w := (5087870090709 / 5000000000000 : ℚ)
  center := (20259374999999999 / 100000000000000000 : ℚ)
  supportValue := (7607156850096193 / 10000000000000000 : ℚ)
  supportSlope := (2778304720190583 / 500000000000000 : ℚ)
  oldCenter := (7607156850096193 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_540
  oldLo := (38025000000000003 / 50000000000000000 : ℚ)
  oldHi := (76100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1757]
}

def cell_6395 : Cell := { cellDefaults with
  domain := ⟨(20262499999999999 / 100000000000000000 : ℚ), (20268749999999999 / 100000000000000000 : ℚ)⟩
  r := (11103800547897 / 12500000000000 : ℚ)
  w := (5087870090709 / 5000000000000 : ℚ)
  center := (20265624999999999 / 100000000000000000 : ℚ)
  supportValue := (3805315069353723 / 5000000000000000 : ℚ)
  supportSlope := (5557779208215763 / 1000000000000000 : ℚ)
  oldCenter := (3805315069353723 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_540
  oldLo := (38025000000000003 / 50000000000000000 : ℚ)
  oldHi := (76150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1757, piece_1758]
}

def cell_6396 : Cell := { cellDefaults with
  domain := ⟨(20268749999999999 / 100000000000000000 : ℚ), (20274999999999999 / 100000000000000000 : ℚ)⟩
  r := (11103800547897 / 12500000000000 : ℚ)
  w := (5087870090709 / 5000000000000 : ℚ)
  center := (20271874999999999 / 100000000000000000 : ℚ)
  supportValue := (1522820824241473 / 2000000000000000 : ℚ)
  supportSlope := (2779500441830507 / 500000000000000 : ℚ)
  oldCenter := (1522820824241473 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_540
  oldLo := (76100000000000001 / 100000000000000000 : ℚ)
  oldHi := (76200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1758, piece_1759]
}

def cell_6397 : Cell := { cellDefaults with
  domain := ⟨(20274999999999999 / 100000000000000000 : ℚ), (20281249999999999 / 100000000000000000 : ℚ)⟩
  r := (11103800547897 / 12500000000000 : ℚ)
  w := (5087870090709 / 5000000000000 : ℚ)
  center := (20278124999999999 / 100000000000000000 : ℚ)
  supportValue := (1904394704477397 / 2500000000000000 : ℚ)
  supportSlope := (11120273575343731 / 2000000000000000 : ℚ)
  oldCenter := (1904394704477397 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_540
  oldLo := (76150000000000007 / 100000000000000000 : ℚ)
  oldHi := (76200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1759]
}

def cell_6398 : Cell := { cellDefaults with
  domain := ⟨(20281249999999999 / 100000000000000000 : ℚ), (20287499999999999 / 100000000000000000 : ℚ)⟩
  r := (11103800547897 / 12500000000000 : ℚ)
  w := (5087870090709 / 5000000000000 : ℚ)
  center := (20284374999999999 / 100000000000000000 : ℚ)
  supportValue := (7621054277562963 / 10000000000000000 : ℚ)
  supportSlope := (5561252865346589 / 1000000000000000 : ℚ)
  oldCenter := (7621054277562963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_540
  oldLo := (76150000000000007 / 100000000000000000 : ℚ)
  oldHi := (76250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1759, piece_1760, piece_1761]
}

def cell_6399 : Cell := { cellDefaults with
  domain := ⟨(20287499999999999 / 100000000000000000 : ℚ), (20293749999999999 / 100000000000000000 : ℚ)⟩
  r := (11103800547897 / 12500000000000 : ℚ)
  w := (5087870090709 / 5000000000000 : ℚ)
  center := (20290624999999999 / 100000000000000000 : ℚ)
  supportValue := (7624530464110603 / 10000000000000000 : ℚ)
  supportSlope := (5562473809398227 / 1000000000000000 : ℚ)
  oldCenter := (7624530464110603 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_540
  oldLo := (3810893854748603 / 5000000000000000 : ℚ)
  oldHi := (76300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1761, piece_1762]
}

theorem check_6350 : SourceCertificateFamily.RightNormalized.check cell_6350 = true := by
  decide +kernel

theorem check_6351 : SourceCertificateFamily.RightNormalized.check cell_6351 = true := by
  decide +kernel

theorem check_6352 : SourceCertificateFamily.RightNormalized.check cell_6352 = true := by
  decide +kernel

theorem check_6353 : SourceCertificateFamily.RightNormalized.check cell_6353 = true := by
  decide +kernel

theorem check_6354 : SourceCertificateFamily.RightNormalized.check cell_6354 = true := by
  decide +kernel

theorem check_6355 : SourceCertificateFamily.RightNormalized.check cell_6355 = true := by
  decide +kernel

theorem check_6356 : SourceCertificateFamily.RightNormalized.check cell_6356 = true := by
  decide +kernel

theorem check_6357 : SourceCertificateFamily.RightNormalized.check cell_6357 = true := by
  decide +kernel

theorem check_6358 : SourceCertificateFamily.RightNormalized.check cell_6358 = true := by
  decide +kernel

theorem check_6359 : SourceCertificateFamily.RightNormalized.check cell_6359 = true := by
  decide +kernel

theorem check_6360 : SourceCertificateFamily.RightNormalized.check cell_6360 = true := by
  decide +kernel

theorem check_6361 : SourceCertificateFamily.RightNormalized.check cell_6361 = true := by
  decide +kernel

theorem check_6362 : SourceCertificateFamily.RightNormalized.check cell_6362 = true := by
  decide +kernel

theorem check_6363 : SourceCertificateFamily.RightNormalized.check cell_6363 = true := by
  decide +kernel

theorem check_6364 : SourceCertificateFamily.RightNormalized.check cell_6364 = true := by
  decide +kernel

theorem check_6365 : SourceCertificateFamily.RightNormalized.check cell_6365 = true := by
  decide +kernel

theorem check_6366 : SourceCertificateFamily.RightNormalized.check cell_6366 = true := by
  decide +kernel

theorem check_6367 : SourceCertificateFamily.RightNormalized.check cell_6367 = true := by
  decide +kernel

theorem check_6368 : SourceCertificateFamily.RightNormalized.check cell_6368 = true := by
  decide +kernel

theorem check_6369 : SourceCertificateFamily.RightNormalized.check cell_6369 = true := by
  decide +kernel

theorem check_6370 : SourceCertificateFamily.RightNormalized.check cell_6370 = true := by
  decide +kernel

theorem check_6371 : SourceCertificateFamily.RightNormalized.check cell_6371 = true := by
  decide +kernel

theorem check_6372 : SourceCertificateFamily.RightNormalized.check cell_6372 = true := by
  decide +kernel

theorem check_6373 : SourceCertificateFamily.RightNormalized.check cell_6373 = true := by
  decide +kernel

theorem check_6374 : SourceCertificateFamily.RightNormalized.check cell_6374 = true := by
  decide +kernel

theorem check_6375 : SourceCertificateFamily.RightNormalized.check cell_6375 = true := by
  decide +kernel

theorem check_6376 : SourceCertificateFamily.RightNormalized.check cell_6376 = true := by
  decide +kernel

theorem check_6377 : SourceCertificateFamily.RightNormalized.check cell_6377 = true := by
  decide +kernel

theorem check_6378 : SourceCertificateFamily.RightNormalized.check cell_6378 = true := by
  decide +kernel

theorem check_6379 : SourceCertificateFamily.RightNormalized.check cell_6379 = true := by
  decide +kernel

theorem check_6380 : SourceCertificateFamily.RightNormalized.check cell_6380 = true := by
  decide +kernel

theorem check_6381 : SourceCertificateFamily.RightNormalized.check cell_6381 = true := by
  decide +kernel

theorem check_6382 : SourceCertificateFamily.RightNormalized.check cell_6382 = true := by
  decide +kernel

theorem check_6383 : SourceCertificateFamily.RightNormalized.check cell_6383 = true := by
  decide +kernel

theorem check_6384 : SourceCertificateFamily.RightNormalized.check cell_6384 = true := by
  decide +kernel

theorem check_6385 : SourceCertificateFamily.RightNormalized.check cell_6385 = true := by
  decide +kernel

theorem check_6386 : SourceCertificateFamily.RightNormalized.check cell_6386 = true := by
  decide +kernel

theorem check_6387 : SourceCertificateFamily.RightNormalized.check cell_6387 = true := by
  decide +kernel

theorem check_6388 : SourceCertificateFamily.RightNormalized.check cell_6388 = true := by
  decide +kernel

theorem check_6389 : SourceCertificateFamily.RightNormalized.check cell_6389 = true := by
  decide +kernel

theorem check_6390 : SourceCertificateFamily.RightNormalized.check cell_6390 = true := by
  decide +kernel

theorem check_6391 : SourceCertificateFamily.RightNormalized.check cell_6391 = true := by
  decide +kernel

theorem check_6392 : SourceCertificateFamily.RightNormalized.check cell_6392 = true := by
  decide +kernel

theorem check_6393 : SourceCertificateFamily.RightNormalized.check cell_6393 = true := by
  decide +kernel

theorem check_6394 : SourceCertificateFamily.RightNormalized.check cell_6394 = true := by
  decide +kernel

theorem check_6395 : SourceCertificateFamily.RightNormalized.check cell_6395 = true := by
  decide +kernel

theorem check_6396 : SourceCertificateFamily.RightNormalized.check cell_6396 = true := by
  decide +kernel

theorem check_6397 : SourceCertificateFamily.RightNormalized.check cell_6397 = true := by
  decide +kernel

theorem check_6398 : SourceCertificateFamily.RightNormalized.check cell_6398 = true := by
  decide +kernel

theorem check_6399 : SourceCertificateFamily.RightNormalized.check cell_6399 = true := by
  decide +kernel

def cells : List Cell := [cell_6350, cell_6351, cell_6352, cell_6353, cell_6354, cell_6355, cell_6356, cell_6357, cell_6358, cell_6359, cell_6360, cell_6361, cell_6362, cell_6363, cell_6364, cell_6365, cell_6366, cell_6367, cell_6368, cell_6369, cell_6370, cell_6371, cell_6372, cell_6373, cell_6374, cell_6375, cell_6376, cell_6377, cell_6378, cell_6379, cell_6380, cell_6381, cell_6382, cell_6383, cell_6384, cell_6385, cell_6386, cell_6387, cell_6388, cell_6389, cell_6390, cell_6391, cell_6392, cell_6393, cell_6394, cell_6395, cell_6396, cell_6397, cell_6398, cell_6399]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6350, SourceCertificateFamily.of_right_checked check_6351, SourceCertificateFamily.of_right_checked check_6352, SourceCertificateFamily.of_right_checked check_6353, SourceCertificateFamily.of_right_checked check_6354, SourceCertificateFamily.of_right_checked check_6355, SourceCertificateFamily.of_right_checked check_6356, SourceCertificateFamily.of_right_checked check_6357, SourceCertificateFamily.of_right_checked check_6358, SourceCertificateFamily.of_right_checked check_6359, SourceCertificateFamily.of_right_checked check_6360, SourceCertificateFamily.of_right_checked check_6361, SourceCertificateFamily.of_right_checked check_6362, SourceCertificateFamily.of_right_checked check_6363, SourceCertificateFamily.of_right_checked check_6364, SourceCertificateFamily.of_right_checked check_6365, SourceCertificateFamily.of_right_checked check_6366, SourceCertificateFamily.of_right_checked check_6367, SourceCertificateFamily.of_right_checked check_6368, SourceCertificateFamily.of_right_checked check_6369, SourceCertificateFamily.of_right_checked check_6370, SourceCertificateFamily.of_right_checked check_6371, SourceCertificateFamily.of_right_checked check_6372, SourceCertificateFamily.of_right_checked check_6373, SourceCertificateFamily.of_right_checked check_6374, SourceCertificateFamily.of_right_checked check_6375, SourceCertificateFamily.of_right_checked check_6376, SourceCertificateFamily.of_right_checked check_6377, SourceCertificateFamily.of_right_checked check_6378, SourceCertificateFamily.of_right_checked check_6379, SourceCertificateFamily.of_right_checked check_6380, SourceCertificateFamily.of_right_checked check_6381, SourceCertificateFamily.of_right_checked check_6382, SourceCertificateFamily.of_right_checked check_6383, SourceCertificateFamily.of_right_checked check_6384, SourceCertificateFamily.of_right_checked check_6385, SourceCertificateFamily.of_right_checked check_6386, SourceCertificateFamily.of_right_checked check_6387, SourceCertificateFamily.of_right_checked check_6388, SourceCertificateFamily.of_right_checked check_6389, SourceCertificateFamily.of_right_checked check_6390, SourceCertificateFamily.of_right_checked check_6391, SourceCertificateFamily.of_right_checked check_6392, SourceCertificateFamily.of_right_checked check_6393, SourceCertificateFamily.of_right_checked check_6394, SourceCertificateFamily.of_right_checked check_6395, SourceCertificateFamily.of_right_checked check_6396, SourceCertificateFamily.of_right_checked check_6397, SourceCertificateFamily.of_right_checked check_6398, SourceCertificateFamily.of_right_checked check_6399, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0127

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0127
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0127
open AnalyticBounds.ExpressionCertificate

theorem linked_6350 : Linked cell_6350 pieces := by
  apply Linked.of_piece piece_534 piece_534_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6350, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1730_mem, piece_1731_mem⟩

theorem linked_6351 : Linked cell_6351 pieces := by
  apply Linked.of_piece piece_534 piece_534_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6351, List.cons_subset, List.nil_subset, and_true]
  exact piece_1731_mem

theorem linked_6352 : Linked cell_6352 pieces := by
  apply Linked.of_piece piece_534 piece_534_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6352, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1731_mem, piece_1732_mem⟩

theorem linked_6353 : Linked cell_6353 pieces := by
  apply Linked.of_piece piece_535 piece_535_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6353, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1731_mem, piece_1732_mem⟩

theorem linked_6354 : Linked cell_6354 pieces := by
  apply Linked.of_piece piece_535 piece_535_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6354, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1732_mem, piece_1733_mem⟩

theorem linked_6355 : Linked cell_6355 pieces := by
  apply Linked.of_piece piece_535 piece_535_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6355, List.cons_subset, List.nil_subset, and_true]
  exact piece_1733_mem

theorem linked_6356 : Linked cell_6356 pieces := by
  apply Linked.of_piece piece_535 piece_535_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6356, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1733_mem, piece_1734_mem⟩

theorem linked_6357 : Linked cell_6357 pieces := by
  apply Linked.of_piece piece_535 piece_535_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6357, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1734_mem, piece_1735_mem⟩

theorem linked_6358 : Linked cell_6358 pieces := by
  apply Linked.of_piece piece_535 piece_535_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6358, List.cons_subset, List.nil_subset, and_true]
  exact piece_1735_mem

theorem linked_6359 : Linked cell_6359 pieces := by
  apply Linked.of_piece piece_535 piece_535_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6359, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1735_mem, ⟨piece_1736_mem, piece_1737_mem⟩⟩

theorem linked_6360 : Linked cell_6360 pieces := by
  apply Linked.of_piece piece_535 piece_535_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6360, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1737_mem, piece_1738_mem⟩

theorem linked_6361 : Linked cell_6361 pieces := by
  apply Linked.of_piece piece_536 piece_536_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6361, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1736_mem, piece_1737_mem⟩

theorem linked_6362 : Linked cell_6362 pieces := by
  apply Linked.of_piece piece_536 piece_536_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6362, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1737_mem, piece_1738_mem⟩

theorem linked_6363 : Linked cell_6363 pieces := by
  apply Linked.of_piece piece_536 piece_536_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6363, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1738_mem, piece_1739_mem⟩

theorem linked_6364 : Linked cell_6364 pieces := by
  apply Linked.of_piece piece_536 piece_536_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6364, List.cons_subset, List.nil_subset, and_true]
  exact piece_1739_mem

theorem linked_6365 : Linked cell_6365 pieces := by
  apply Linked.of_piece piece_536 piece_536_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6365, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1739_mem, piece_1740_mem⟩

theorem linked_6366 : Linked cell_6366 pieces := by
  apply Linked.of_piece piece_536 piece_536_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6366, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1740_mem, piece_1741_mem⟩

theorem linked_6367 : Linked cell_6367 pieces := by
  apply Linked.of_piece piece_536 piece_536_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6367, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1741_mem, piece_1742_mem⟩

theorem linked_6368 : Linked cell_6368 pieces := by
  apply Linked.of_piece piece_536 piece_536_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6368, List.cons_subset, List.nil_subset, and_true]
  exact piece_1742_mem

theorem linked_6369 : Linked cell_6369 pieces := by
  apply Linked.of_piece piece_537 piece_537_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6369, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1741_mem, piece_1742_mem⟩

theorem linked_6370 : Linked cell_6370 pieces := by
  apply Linked.of_piece piece_537 piece_537_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6370, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1742_mem, piece_1743_mem⟩

theorem linked_6371 : Linked cell_6371 pieces := by
  apply Linked.of_piece piece_537 piece_537_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6371, List.cons_subset, List.nil_subset, and_true]
  exact piece_1743_mem

theorem linked_6372 : Linked cell_6372 pieces := by
  apply Linked.of_piece piece_537 piece_537_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6372, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1743_mem, piece_1744_mem⟩

theorem linked_6373 : Linked cell_6373 pieces := by
  apply Linked.of_piece piece_537 piece_537_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6373, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1744_mem, piece_1745_mem⟩

theorem linked_6374 : Linked cell_6374 pieces := by
  apply Linked.of_piece piece_537 piece_537_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6374, List.cons_subset, List.nil_subset, and_true]
  exact piece_1745_mem

theorem linked_6375 : Linked cell_6375 pieces := by
  apply Linked.of_piece piece_537 piece_537_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6375, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1745_mem, piece_1746_mem⟩

theorem linked_6376 : Linked cell_6376 pieces := by
  apply Linked.of_piece piece_537 piece_537_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6376, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1746_mem, piece_1747_mem⟩

theorem linked_6377 : Linked cell_6377 pieces := by
  apply Linked.of_piece piece_538 piece_538_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6377, List.cons_subset, List.nil_subset, and_true]
  exact piece_1746_mem

theorem linked_6378 : Linked cell_6378 pieces := by
  apply Linked.of_piece piece_538 piece_538_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6378, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1746_mem, piece_1747_mem⟩

theorem linked_6379 : Linked cell_6379 pieces := by
  apply Linked.of_piece piece_538 piece_538_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6379, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1747_mem, ⟨piece_1748_mem, piece_1749_mem⟩⟩

theorem linked_6380 : Linked cell_6380 pieces := by
  apply Linked.of_piece piece_538 piece_538_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6380, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1749_mem, piece_1750_mem⟩

theorem linked_6381 : Linked cell_6381 pieces := by
  apply Linked.of_piece piece_538 piece_538_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6381, List.cons_subset, List.nil_subset, and_true]
  exact piece_1750_mem

theorem linked_6382 : Linked cell_6382 pieces := by
  apply Linked.of_piece piece_538 piece_538_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6382, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1750_mem, piece_1751_mem⟩

theorem linked_6383 : Linked cell_6383 pieces := by
  apply Linked.of_piece piece_538 piece_538_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6383, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1751_mem, piece_1752_mem⟩

theorem linked_6384 : Linked cell_6384 pieces := by
  apply Linked.of_piece piece_538 piece_538_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6384, List.cons_subset, List.nil_subset, and_true]
  exact piece_1752_mem

theorem linked_6385 : Linked cell_6385 pieces := by
  apply Linked.of_piece piece_539 piece_539_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6385, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1751_mem, piece_1752_mem⟩

theorem linked_6386 : Linked cell_6386 pieces := by
  apply Linked.of_piece piece_539 piece_539_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6386, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1752_mem, piece_1753_mem⟩

theorem linked_6387 : Linked cell_6387 pieces := by
  apply Linked.of_piece piece_539 piece_539_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6387, List.cons_subset, List.nil_subset, and_true]
  exact piece_1753_mem

theorem linked_6388 : Linked cell_6388 pieces := by
  apply Linked.of_piece piece_539 piece_539_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6388, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1753_mem, piece_1754_mem⟩

theorem linked_6389 : Linked cell_6389 pieces := by
  apply Linked.of_piece piece_539 piece_539_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6389, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1754_mem, piece_1755_mem⟩

theorem linked_6390 : Linked cell_6390 pieces := by
  apply Linked.of_piece piece_539 piece_539_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6390, List.cons_subset, List.nil_subset, and_true]
  exact piece_1755_mem

theorem linked_6391 : Linked cell_6391 pieces := by
  apply Linked.of_piece piece_539 piece_539_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6391, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1755_mem, piece_1756_mem⟩

theorem linked_6392 : Linked cell_6392 pieces := by
  apply Linked.of_piece piece_539 piece_539_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6392, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1756_mem, piece_1757_mem⟩

theorem linked_6393 : Linked cell_6393 pieces := by
  apply Linked.of_piece piece_540 piece_540_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6393, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1756_mem, piece_1757_mem⟩

theorem linked_6394 : Linked cell_6394 pieces := by
  apply Linked.of_piece piece_540 piece_540_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6394, List.cons_subset, List.nil_subset, and_true]
  exact piece_1757_mem

theorem linked_6395 : Linked cell_6395 pieces := by
  apply Linked.of_piece piece_540 piece_540_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6395, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1757_mem, piece_1758_mem⟩

theorem linked_6396 : Linked cell_6396 pieces := by
  apply Linked.of_piece piece_540 piece_540_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6396, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1758_mem, piece_1759_mem⟩

theorem linked_6397 : Linked cell_6397 pieces := by
  apply Linked.of_piece piece_540 piece_540_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6397, List.cons_subset, List.nil_subset, and_true]
  exact piece_1759_mem

theorem linked_6398 : Linked cell_6398 pieces := by
  apply Linked.of_piece piece_540 piece_540_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6398, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1759_mem, ⟨piece_1760_mem, piece_1761_mem⟩⟩

theorem linked_6399 : Linked cell_6399 pieces := by
  apply Linked.of_piece piece_540 piece_540_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6399, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1761_mem, piece_1762_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0127.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0127.cells,List.forall_mem_cons]
  exact ⟨linked_6350, linked_6351, linked_6352, linked_6353, linked_6354, linked_6355, linked_6356, linked_6357, linked_6358, linked_6359, linked_6360, linked_6361, linked_6362, linked_6363, linked_6364, linked_6365, linked_6366, linked_6367, linked_6368, linked_6369, linked_6370, linked_6371, linked_6372, linked_6373, linked_6374, linked_6375, linked_6376, linked_6377, linked_6378, linked_6379, linked_6380, linked_6381, linked_6382, linked_6383, linked_6384, linked_6385, linked_6386, linked_6387, linked_6388, linked_6389, linked_6390, linked_6391, linked_6392, linked_6393, linked_6394, linked_6395, linked_6396, linked_6397, linked_6398, linked_6399, by simp⟩

theorem covered : covers (9990624999999999 / 50000000000000000 : ℚ) (20293749999999999 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0127.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0127
