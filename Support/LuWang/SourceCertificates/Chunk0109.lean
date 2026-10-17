import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0109
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(32961033519553071 / 200000000000000000 : ℚ), (16486033519553073 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (19117609989471 / 20000000000000 : ℚ)
  w := (2504434835137 / 2500000000000 : ℚ)
  center := (65933100558659217 / 400000000000000000 : ℚ)
  supportValue := (5943071950750647 / 10000000000000000 : ℚ)
  supportSlope := (5152203415076689 / 1000000000000000 : ℚ)
  oldCenter := (5943071950750647 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_459
  oldLo := (59450000000000003 / 100000000000000000 : ℚ)
  oldHi := (59950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1405]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5450 : Cell := { cellDefaults with
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  newCoefficients := coefficients_457
  oldLo := (7425000000000001 / 12500000000000000 : ℚ)
  oldHi := (59450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1394]
}

def cell_5451 : Cell := { cellDefaults with
  domain := ⟨(16486033519553073 / 100000000000000000 : ℚ), (8243749999999999 / 50000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (32973533519553071 / 200000000000000000 : ℚ)
  supportValue := (2972436130797929 / 5000000000000000 : ℚ)
  supportSlope := (5152965568384151 / 1000000000000000 : ℚ)
  oldCenter := (2972436130797929 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_458
  oldLo := (7425000000000001 / 12500000000000000 : ℚ)
  oldHi := (7437500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1394, piece_1395]
}

def cell_5452 : Cell := { cellDefaults with
  domain := ⟨(8243749999999999 / 50000000000000000 : ℚ), (8245312499999999 / 50000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (8244531249999999 / 50000000000000000 : ℚ)
  supportValue := (743256905259387 / 1250000000000000 : ℚ)
  supportSlope := (5153188568410627 / 1000000000000000 : ℚ)
  oldCenter := (743256905259387 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_458
  oldHi := (7437500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1395]
}

def cell_5453 : Cell := { cellDefaults with
  domain := ⟨(8245312499999999 / 50000000000000000 : ℚ), (8246874999999999 / 50000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (8246093749999999 / 50000000000000000 : ℚ)
  supportValue := (5947665748297557 / 10000000000000000 : ℚ)
  supportSlope := (5154052367451811 / 1000000000000000 : ℚ)
  oldCenter := (5947665748297557 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_458
  oldHi := (7437500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1395]
}

def cell_5454 : Cell := { cellDefaults with
  domain := ⟨(8246874999999999 / 50000000000000000 : ℚ), (8248437499999999 / 50000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (8247656249999999 / 50000000000000000 : ℚ)
  supportValue := (1189855304901611 / 2000000000000000 : ℚ)
  supportSlope := (5154884968714413 / 1000000000000000 : ℚ)
  oldCenter := (1189855304901611 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_458
  oldHi := (59550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1395, piece_1396]
}

def cell_5455 : Cell := { cellDefaults with
  domain := ⟨(8248437499999999 / 50000000000000000 : ℚ), (8249999999999999 / 50000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (8249218749999999 / 50000000000000000 : ℚ)
  supportValue := (2975443732412051 / 5000000000000000 : ℚ)
  supportSlope := (2577582625292507 / 500000000000000 : ℚ)
  oldCenter := (2975443732412051 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_458
  oldLo := (7437500000000001 / 12500000000000000 : ℚ)
  oldHi := (59550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1396]
}

def cell_5456 : Cell := { cellDefaults with
  domain := ⟨(8249999999999999 / 50000000000000000 : ℚ), (8251562499999999 / 50000000000000000 : ℚ)⟩
  center := (8250781249999999 / 50000000000000000 : ℚ)
  supportValue := (743508387143887 / 1250000000000000 : ℚ)
  supportSlope := (321968432693831 / 62500000000000 : ℚ)
  oldCenter := (743508387143887 / 1250000000000000 : ℚ)
  oldHi := (7437500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1395]
}

def cell_5457 : Cell := { cellDefaults with
  domain := ⟨(8251562499999999 / 50000000000000000 : ℚ), (8253124999999999 / 50000000000000000 : ℚ)⟩
  center := (8252343749999999 / 50000000000000000 : ℚ)
  supportValue := (1487419268569993 / 2500000000000000 : ℚ)
  supportSlope := (10304351065570927 / 2000000000000000 : ℚ)
  oldCenter := (1487419268569993 / 2500000000000000 : ℚ)
  oldHi := (59550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1395, piece_1396]
}

def cell_5458 : Cell := { cellDefaults with
  domain := ⟨(8253124999999999 / 50000000000000000 : ℚ), (8254687499999999 / 50000000000000000 : ℚ)⟩
  center := (8253906249999999 / 50000000000000000 : ℚ)
  supportValue := (1190257433600183 / 2000000000000000 : ℚ)
  supportSlope := (2576304617997849 / 500000000000000 : ℚ)
  oldCenter := (1190257433600183 / 2000000000000000 : ℚ)
  oldLo := (7437500000000001 / 12500000000000000 : ℚ)
  oldHi := (59550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1396]
}

def cell_5459 : Cell := { cellDefaults with
  domain := ⟨(8254687499999999 / 50000000000000000 : ℚ), (8256249999999999 / 50000000000000000 : ℚ)⟩
  center := (8255468749999999 / 50000000000000000 : ℚ)
  supportValue := (1488224373295143 / 2500000000000000 : ℚ)
  supportSlope := (515347302585667 / 100000000000000 : ℚ)
  oldCenter := (1488224373295143 / 2500000000000000 : ℚ)
  oldLo := (7437500000000001 / 12500000000000000 : ℚ)
  oldHi := (59550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1396]
}

def cell_5460 : Cell := { cellDefaults with
  domain := ⟨(8256249999999999 / 50000000000000000 : ℚ), (8257812499999999 / 50000000000000000 : ℚ)⟩
  center := (8257031249999999 / 50000000000000000 : ℚ)
  supportValue := (5954508088345447 / 10000000000000000 : ℚ)
  supportSlope := (5154217542070683 / 1000000000000000 : ℚ)
  oldCenter := (5954508088345447 / 10000000000000000 : ℚ)
  oldLo := (7437500000000001 / 12500000000000000 : ℚ)
  oldHi := (59600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1396, piece_1397]
}

def cell_5461 : Cell := { cellDefaults with
  domain := ⟨(8257812499999999 / 50000000000000000 : ℚ), (8259374999999999 / 50000000000000000 : ℚ)⟩
  center := (8258593749999999 / 50000000000000000 : ℚ)
  supportValue := (59561188202849 / 100000000000000 : ℚ)
  supportSlope := (10309174286781797 / 2000000000000000 : ℚ)
  oldCenter := (59561188202849 / 100000000000000 : ℚ)
  oldLo := (59550000000000003 / 100000000000000000 : ℚ)
  oldHi := (59600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1397]
}

def cell_5462 : Cell := { cellDefaults with
  domain := ⟨(8259374999999999 / 50000000000000000 : ℚ), (8260937499999999 / 50000000000000000 : ℚ)⟩
  center := (8260156249999999 / 50000000000000000 : ℚ)
  supportValue := (5957729763438917 / 10000000000000000 : ℚ)
  supportSlope := (2577725077152593 / 500000000000000 : ℚ)
  oldCenter := (5957729763438917 / 10000000000000000 : ℚ)
  oldLo := (59550000000000003 / 100000000000000000 : ℚ)
  oldHi := (59600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1397]
}

def cell_5463 : Cell := { cellDefaults with
  domain := ⟨(8260937499999999 / 50000000000000000 : ℚ), (8262499999999999 / 50000000000000000 : ℚ)⟩
  center := (8261718749999999 / 50000000000000000 : ℚ)
  supportValue := (5959340976334441 / 10000000000000000 : ℚ)
  supportSlope := (5156257544779663 / 1000000000000000 : ℚ)
  oldCenter := (5959340976334441 / 10000000000000000 : ℚ)
  oldLo := (59550000000000003 / 100000000000000000 : ℚ)
  oldHi := (1192513966480447 / 2000000000000000 : ℚ)
  oldPieces := [piece_1397, piece_1398]
}

def cell_5464 : Cell := { cellDefaults with
  domain := ⟨(8262499999999999 / 50000000000000000 : ℚ), (8264062499999999 / 50000000000000000 : ℚ)⟩
  center := (8263281249999999 / 50000000000000000 : ℚ)
  supportValue := (1490238086466353 / 2500000000000000 : ℚ)
  supportSlope := (1289141017857709 / 250000000000000 : ℚ)
  oldCenter := (1490238086466353 / 2500000000000000 : ℚ)
  oldLo := (59600000000000009 / 100000000000000000 : ℚ)
  oldHi := (1192513966480447 / 2000000000000000 : ℚ)
  oldPieces := [piece_1398]
}

def cell_5465 : Cell := { cellDefaults with
  domain := ⟨(8264062499999999 / 50000000000000000 : ℚ), (8265624999999999 / 50000000000000000 : ℚ)⟩
  center := (8264843749999999 / 50000000000000000 : ℚ)
  supportValue := (5962563906686971 / 10000000000000000 : ℚ)
  supportSlope := (1289356745787451 / 250000000000000 : ℚ)
  oldCenter := (5962563906686971 / 10000000000000000 : ℚ)
  oldLo := (59600000000000009 / 100000000000000000 : ℚ)
  oldHi := (59650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1398, piece_1399]
}

def cell_5466 : Cell := { cellDefaults with
  domain := ⟨(8265624999999999 / 50000000000000000 : ℚ), (8267187499999999 / 50000000000000000 : ℚ)⟩
  center := (8266406249999999 / 50000000000000000 : ℚ)
  supportValue := (745521967178977 / 1250000000000000 : ℚ)
  supportSlope := (1289572550975393 / 250000000000000 : ℚ)
  oldCenter := (745521967178977 / 1250000000000000 : ℚ)
  oldLo := (1192513966480447 / 2000000000000000 : ℚ)
  oldHi := (59650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1399]
}

def cell_5467 : Cell := { cellDefaults with
  domain := ⟨(8267187499999999 / 50000000000000000 : ℚ), (8268749999999999 / 50000000000000000 : ℚ)⟩
  center := (8267968749999999 / 50000000000000000 : ℚ)
  supportValue := (745723468043099 / 1250000000000000 : ℚ)
  supportSlope := (10317096049291763 / 2000000000000000 : ℚ)
  oldCenter := (745723468043099 / 1250000000000000 : ℚ)
  oldLo := (1192513966480447 / 2000000000000000 : ℚ)
  oldHi := (29849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1399, piece_1400]
}

def cell_5468 : Cell := { cellDefaults with
  domain := ⟨(8268749999999999 / 50000000000000000 : ℚ), (8270312499999999 / 50000000000000000 : ℚ)⟩
  center := (8269531249999999 / 50000000000000000 : ℚ)
  supportValue := (119347998458673 / 200000000000000 : ℚ)
  supportSlope := (5159402743480257 / 1000000000000000 : ℚ)
  oldCenter := (119347998458673 / 200000000000000 : ℚ)
  oldLo := (59650000000000003 / 100000000000000000 : ℚ)
  oldHi := (29849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1400]
}

def cell_5469 : Cell := { cellDefaults with
  domain := ⟨(8270312499999999 / 50000000000000000 : ℚ), (8271874999999999 / 50000000000000000 : ℚ)⟩
  center := (8271093749999999 / 50000000000000000 : ℚ)
  supportValue := (2984506185381019 / 5000000000000000 : ℚ)
  supportSlope := (5160264470337239 / 1000000000000000 : ℚ)
  oldCenter := (2984506185381019 / 5000000000000000 : ℚ)
  oldLo := (59650000000000003 / 100000000000000000 : ℚ)
  oldHi := (29849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1400]
}

def cell_5470 : Cell := { cellDefaults with
  domain := ⟨(8271874999999999 / 50000000000000000 : ℚ), (8273437499999999 / 50000000000000000 : ℚ)⟩
  center := (8272656249999999 / 50000000000000000 : ℚ)
  supportValue := (5970625013978197 / 10000000000000000 : ℚ)
  supportSlope := (2580292242813087 / 500000000000000 : ℚ)
  oldCenter := (5970625013978197 / 10000000000000000 : ℚ)
  oldLo := (59650000000000003 / 100000000000000000 : ℚ)
  oldHi := (59750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1400, piece_1401]
}

def cell_5471 : Cell := { cellDefaults with
  domain := ⟨(8273437499999999 / 50000000000000000 : ℚ), (8274999999999999 / 50000000000000000 : ℚ)⟩
  center := (8274218749999999 / 50000000000000000 : ℚ)
  supportValue := (2986118904791369 / 5000000000000000 : ℚ)
  supportSlope := (322586049747553 / 62500000000000 : ℚ)
  oldCenter := (2986118904791369 / 5000000000000000 : ℚ)
  oldLo := (29849999999999999 / 50000000000000000 : ℚ)
  oldHi := (59750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1401]
}

def cell_5472 : Cell := { cellDefaults with
  domain := ⟨(8274999999999999 / 50000000000000000 : ℚ), (8276562499999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8275781249999999 / 50000000000000000 : ℚ)
  supportValue := (5969408146232457 / 10000000000000000 : ℚ)
  supportSlope := (5157616891253269 / 1000000000000000 : ℚ)
  oldCenter := (5969408146232457 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (59650000000000003 / 100000000000000000 : ℚ)
  oldHi := (59750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1400, piece_1401]
}

def cell_5473 : Cell := { cellDefaults with
  domain := ⟨(8276562499999999 / 50000000000000000 : ℚ), (8278124999999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8277343749999999 / 50000000000000000 : ℚ)
  supportValue := (5971019940805219 / 10000000000000000 : ℚ)
  supportSlope := (5157950211074791 / 1000000000000000 : ℚ)
  oldCenter := (5971019940805219 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (29849999999999999 / 50000000000000000 : ℚ)
  oldHi := (59750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1401]
}

def cell_5474 : Cell := { cellDefaults with
  domain := ⟨(8278124999999999 / 50000000000000000 : ℚ), (8279687499999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8278906249999999 / 50000000000000000 : ℚ)
  supportValue := (373289495914269 / 625000000000000 : ℚ)
  supportSlope := (2579405684194569 / 500000000000000 : ℚ)
  oldCenter := (373289495914269 / 625000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (29849999999999999 / 50000000000000000 : ℚ)
  oldHi := (59750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1401]
}

def cell_5475 : Cell := { cellDefaults with
  domain := ⟨(8279687499999999 / 50000000000000000 : ℚ), (8281249999999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8280468749999999 / 50000000000000000 : ℚ)
  supportValue := (11668445698463 / 19531250000000 : ℚ)
  supportSlope := (644956700031063 / 125000000000000 : ℚ)
  oldCenter := (11668445698463 / 19531250000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (29849999999999999 / 50000000000000000 : ℚ)
  oldHi := (29899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1401, piece_1402]
}

def cell_5476 : Cell := { cellDefaults with
  domain := ⟨(8281249999999999 / 50000000000000000 : ℚ), (8282812499999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8282031249999999 / 50000000000000000 : ℚ)
  supportValue := (2987928314372477 / 5000000000000000 : ℚ)
  supportSlope := (5159925572492341 / 1000000000000000 : ℚ)
  oldCenter := (2987928314372477 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (59750000000000003 / 100000000000000000 : ℚ)
  oldHi := (29899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1402]
}

def cell_5477 : Cell := { cellDefaults with
  domain := ⟨(8282812499999999 / 50000000000000000 : ℚ), (8284374999999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8283593749999999 / 50000000000000000 : ℚ)
  supportValue := (5977469239750273 / 10000000000000000 : ℚ)
  supportSlope := (322549123326743 / 62500000000000 : ℚ)
  oldCenter := (5977469239750273 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (59750000000000003 / 100000000000000000 : ℚ)
  oldHi := (29899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1402]
}

def cell_5478 : Cell := { cellDefaults with
  domain := ⟨(8284374999999999 / 50000000000000000 : ℚ), (8285937499999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8285156249999999 / 50000000000000000 : ℚ)
  supportValue := (2989541059840277 / 5000000000000000 : ℚ)
  supportSlope := (5161646692503297 / 1000000000000000 : ℚ)
  oldCenter := (2989541059840277 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (59750000000000003 / 100000000000000000 : ℚ)
  oldHi := (29899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1402]
}

def cell_5479 : Cell := { cellDefaults with
  domain := ⟨(8285937499999999 / 50000000000000000 : ℚ), (8287499999999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8286718749999999 / 50000000000000000 : ℚ)
  supportValue := (5980695186659587 / 10000000000000000 : ℚ)
  supportSlope := (5161941149602001 / 1000000000000000 : ℚ)
  oldCenter := (5980695186659587 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (59750000000000003 / 100000000000000000 : ℚ)
  oldHi := (59850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1402, piece_1403]
}

def cell_5480 : Cell := { cellDefaults with
  domain := ⟨(8287499999999999 / 50000000000000000 : ℚ), (8289062499999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8288281249999999 / 50000000000000000 : ℚ)
  supportValue := (29911542072571 / 50000000000000 : ℚ)
  supportSlope := (1290689991598093 / 250000000000000 : ℚ)
  oldCenter := (29911542072571 / 50000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (29899999999999999 / 50000000000000000 : ℚ)
  oldHi := (59850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1403]
}

def cell_5481 : Cell := { cellDefaults with
  domain := ⟨(8289062499999999 / 50000000000000000 : ℚ), (8290624999999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8289843749999999 / 50000000000000000 : ℚ)
  supportValue := (5983921911340799 / 10000000000000000 : ℚ)
  supportSlope := (516362083617139 / 100000000000000 : ℚ)
  oldCenter := (5983921911340799 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (29899999999999999 / 50000000000000000 : ℚ)
  oldHi := (59850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1403]
}

def cell_5482 : Cell := { cellDefaults with
  domain := ⟨(8290624999999999 / 50000000000000000 : ℚ), (8292187499999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8291406249999999 / 50000000000000000 : ℚ)
  supportValue := (598553561409863 / 1000000000000000 : ℚ)
  supportSlope := (5163975592836323 / 1000000000000000 : ℚ)
  oldCenter := (598553561409863 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (29899999999999999 / 50000000000000000 : ℚ)
  oldHi := (29949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1403, piece_1404]
}

def cell_5483 : Cell := { cellDefaults with
  domain := ⟨(8292187499999999 / 50000000000000000 : ℚ), (8293749999999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8292968749999999 / 50000000000000000 : ℚ)
  supportValue := (1496787364698239 / 2500000000000000 : ℚ)
  supportSlope := (5164733461903381 / 1000000000000000 : ℚ)
  oldCenter := (1496787364698239 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (59850000000000003 / 100000000000000000 : ℚ)
  oldHi := (29949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1404]
}

def cell_5484 : Cell := { cellDefaults with
  domain := ⟨(8293749999999999 / 50000000000000000 : ℚ), (8295312499999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8294531249999999 / 50000000000000000 : ℚ)
  supportValue := (239550542888571 / 400000000000000 : ℚ)
  supportSlope := (645699193349003 / 125000000000000 : ℚ)
  oldCenter := (239550542888571 / 400000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (59850000000000003 / 100000000000000000 : ℚ)
  oldHi := (29949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1404]
}

def cell_5485 : Cell := { cellDefaults with
  domain := ⟨(8295312499999999 / 50000000000000000 : ℚ), (8296874999999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8296093749999999 / 50000000000000000 : ℚ)
  supportValue := (5990377910015381 / 10000000000000000 : ℚ)
  supportSlope := (2583004035622949 / 500000000000000 : ℚ)
  oldCenter := (5990377910015381 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (59850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1404, piece_1405]
}

def cell_5486 : Cell := { cellDefaults with
  domain := ⟨(8296874999999999 / 50000000000000000 : ℚ), (8298437499999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8297656249999999 / 50000000000000000 : ℚ)
  supportValue := (5991992371255033 / 10000000000000000 : ℚ)
  supportSlope := (2583352955056739 / 500000000000000 : ℚ)
  oldCenter := (5991992371255033 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (29949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1405]
}

def cell_5487 : Cell := { cellDefaults with
  domain := ⟨(8298437499999999 / 50000000000000000 : ℚ), (8299999999999999 / 50000000000000000 : ℚ)⟩
  r := (47744539232843 / 50000000000000 : ℚ)
  w := (1001953788433 / 1000000000000 : ℚ)
  center := (8299218749999999 / 50000000000000000 : ℚ)
  supportValue := (1198721420182173 / 2000000000000000 : ℚ)
  supportSlope := (5167564999336349 / 1000000000000000 : ℚ)
  oldCenter := (1198721420182173 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_460
  oldLo := (29949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1405]
}

def cell_5488 : Cell := { cellDefaults with
  domain := ⟨(8299999999999999 / 50000000000000000 : ℚ), (8301562499999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8300781249999999 / 50000000000000000 : ℚ)
  supportValue := (5990768064363401 / 10000000000000000 : ℚ)
  supportSlope := (10326569370533889 / 2000000000000000 : ℚ)
  oldCenter := (5990768064363401 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldLo := (59850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1404, piece_1405]
}

def cell_5489 : Cell := { cellDefaults with
  domain := ⟨(8301562499999999 / 50000000000000000 : ℚ), (8303124999999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8302343749999999 / 50000000000000000 : ℚ)
  supportValue := (599238172052179 / 1000000000000000 : ℚ)
  supportSlope := (5164130137647049 / 1000000000000000 : ℚ)
  oldCenter := (599238172052179 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldLo := (29949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1405]
}

def cell_5490 : Cell := { cellDefaults with
  domain := ⟨(8303124999999999 / 50000000000000000 : ℚ), (8304687499999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8303906249999999 / 50000000000000000 : ℚ)
  supportValue := (37462472783759 / 62500000000000 : ℚ)
  supportSlope := (2582495102151583 / 500000000000000 : ℚ)
  oldCenter := (37462472783759 / 62500000000000 : ℚ)
  newCoefficients := coefficients_461
  oldLo := (29949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1405]
}

def cell_5491 : Cell := { cellDefaults with
  domain := ⟨(8304687499999999 / 50000000000000000 : ℚ), (8306249999999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8305468749999999 / 50000000000000000 : ℚ)
  supportValue := (5995609767608141 / 10000000000000000 : ℚ)
  supportSlope := (10330637881985183 / 2000000000000000 : ℚ)
  oldCenter := (5995609767608141 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldLo := (29949999999999999 / 50000000000000000 : ℚ)
  oldHi := (29999999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1405, piece_1406]
}

def cell_5492 : Cell := { cellDefaults with
  domain := ⟨(8306249999999999 / 50000000000000000 : ℚ), (8307812499999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8307031249999999 / 50000000000000000 : ℚ)
  supportValue := (5997224040802663 / 10000000000000000 : ℚ)
  supportSlope := (5166104283148343 / 1000000000000000 : ℚ)
  oldCenter := (5997224040802663 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldLo := (59950000000000003 / 100000000000000000 : ℚ)
  oldHi := (29999999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1406]
}

def cell_5493 : Cell := { cellDefaults with
  domain := ⟨(8307812499999999 / 50000000000000000 : ℚ), (8309374999999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8308593749999999 / 50000000000000000 : ℚ)
  supportValue := (749854822810857 / 1250000000000000 : ℚ)
  supportSlope := (2583481803926091 / 500000000000000 : ℚ)
  oldCenter := (749854822810857 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldLo := (59950000000000003 / 100000000000000000 : ℚ)
  oldHi := (29999999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1406]
}

def cell_5494 : Cell := { cellDefaults with
  domain := ⟨(8309374999999999 / 50000000000000000 : ℚ), (8310937499999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8310156249999999 / 50000000000000000 : ℚ)
  supportValue := (3000226669866203 / 5000000000000000 : ℚ)
  supportSlope := (64591892929311 / 12500000000000 : ℚ)
  oldCenter := (3000226669866203 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldLo := (59950000000000003 / 100000000000000000 : ℚ)
  oldHi := (60050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1406, piece_1407]
}

def cell_5495 : Cell := { cellDefaults with
  domain := ⟨(8310937499999999 / 50000000000000000 : ℚ), (8312499999999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8311718749999999 / 50000000000000000 : ℚ)
  supportValue := (6002068229729467 / 10000000000000000 : ℚ)
  supportSlope := (2584038838438829 / 500000000000000 : ℚ)
  oldCenter := (6002068229729467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldLo := (29999999999999999 / 50000000000000000 : ℚ)
  oldHi := (60050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1407]
}

def cell_5496 : Cell := { cellDefaults with
  domain := ⟨(8312499999999999 / 50000000000000000 : ℚ), (8314062499999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8313281249999999 / 50000000000000000 : ℚ)
  supportValue := (6003683387981951 / 10000000000000000 : ℚ)
  supportSlope := (5168936251180867 / 1000000000000000 : ℚ)
  oldCenter := (6003683387981951 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldLo := (29999999999999999 / 50000000000000000 : ℚ)
  oldHi := (60050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1407]
}

def cell_5497 : Cell := { cellDefaults with
  domain := ⟨(8314062499999999 / 50000000000000000 : ℚ), (8315624999999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8314843749999999 / 50000000000000000 : ℚ)
  supportValue := (1201059755937239 / 2000000000000000 : ℚ)
  supportSlope := (2067752742692619 / 400000000000000 : ℚ)
  oldCenter := (1201059755937239 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldLo := (29999999999999999 / 50000000000000000 : ℚ)
  oldHi := (30049999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1407, piece_1408]
}

def cell_5498 : Cell := { cellDefaults with
  domain := ⟨(8315624999999999 / 50000000000000000 : ℚ), (8317187499999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8316406249999999 / 50000000000000000 : ℚ)
  supportValue := (375432142882087 / 625000000000000 : ℚ)
  supportSlope := (2585024939046221 / 500000000000000 : ℚ)
  oldCenter := (375432142882087 / 625000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldLo := (60050000000000003 / 100000000000000000 : ℚ)
  oldHi := (30049999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1408]
}

def cell_5499 : Cell := { cellDefaults with
  domain := ⟨(8317187499999999 / 50000000000000000 : ℚ), (8318749999999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8317968749999999 / 50000000000000000 : ℚ)
  supportValue := (187766564392539 / 312500000000000 : ℚ)
  supportSlope := (517090770029327 / 100000000000000 : ℚ)
  oldCenter := (187766564392539 / 312500000000000 : ℚ)
  newCoefficients := coefficients_461
  oldLo := (60050000000000003 / 100000000000000000 : ℚ)
  oldHi := (30049999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1408]
}

theorem check_5450 : SourceCertificateFamily.RightNormalized.check cell_5450 = true := by
  decide +kernel

theorem check_5451 : SourceCertificateFamily.RightNormalized.check cell_5451 = true := by
  decide +kernel

theorem check_5452 : SourceCertificateFamily.RightNormalized.check cell_5452 = true := by
  decide +kernel

theorem check_5453 : SourceCertificateFamily.RightNormalized.check cell_5453 = true := by
  decide +kernel

theorem check_5454 : SourceCertificateFamily.RightNormalized.check cell_5454 = true := by
  decide +kernel

theorem check_5455 : SourceCertificateFamily.RightNormalized.check cell_5455 = true := by
  decide +kernel

theorem check_5456 : SourceCertificateFamily.RightNormalized.check cell_5456 = true := by
  decide +kernel

theorem check_5457 : SourceCertificateFamily.RightNormalized.check cell_5457 = true := by
  decide +kernel

theorem check_5458 : SourceCertificateFamily.RightNormalized.check cell_5458 = true := by
  decide +kernel

theorem check_5459 : SourceCertificateFamily.RightNormalized.check cell_5459 = true := by
  decide +kernel

theorem check_5460 : SourceCertificateFamily.RightNormalized.check cell_5460 = true := by
  decide +kernel

theorem check_5461 : SourceCertificateFamily.RightNormalized.check cell_5461 = true := by
  decide +kernel

theorem check_5462 : SourceCertificateFamily.RightNormalized.check cell_5462 = true := by
  decide +kernel

theorem check_5463 : SourceCertificateFamily.RightNormalized.check cell_5463 = true := by
  decide +kernel

theorem check_5464 : SourceCertificateFamily.RightNormalized.check cell_5464 = true := by
  decide +kernel

theorem check_5465 : SourceCertificateFamily.RightNormalized.check cell_5465 = true := by
  decide +kernel

theorem check_5466 : SourceCertificateFamily.RightNormalized.check cell_5466 = true := by
  decide +kernel

theorem check_5467 : SourceCertificateFamily.RightNormalized.check cell_5467 = true := by
  decide +kernel

theorem check_5468 : SourceCertificateFamily.RightNormalized.check cell_5468 = true := by
  decide +kernel

theorem check_5469 : SourceCertificateFamily.RightNormalized.check cell_5469 = true := by
  decide +kernel

theorem check_5470 : SourceCertificateFamily.RightNormalized.check cell_5470 = true := by
  decide +kernel

theorem check_5471 : SourceCertificateFamily.RightNormalized.check cell_5471 = true := by
  decide +kernel

theorem check_5472 : SourceCertificateFamily.RightNormalized.check cell_5472 = true := by
  decide +kernel

theorem check_5473 : SourceCertificateFamily.RightNormalized.check cell_5473 = true := by
  decide +kernel

theorem check_5474 : SourceCertificateFamily.RightNormalized.check cell_5474 = true := by
  decide +kernel

theorem check_5475 : SourceCertificateFamily.RightNormalized.check cell_5475 = true := by
  decide +kernel

theorem check_5476 : SourceCertificateFamily.RightNormalized.check cell_5476 = true := by
  decide +kernel

theorem check_5477 : SourceCertificateFamily.RightNormalized.check cell_5477 = true := by
  decide +kernel

theorem check_5478 : SourceCertificateFamily.RightNormalized.check cell_5478 = true := by
  decide +kernel

theorem check_5479 : SourceCertificateFamily.RightNormalized.check cell_5479 = true := by
  decide +kernel

theorem check_5480 : SourceCertificateFamily.RightNormalized.check cell_5480 = true := by
  decide +kernel

theorem check_5481 : SourceCertificateFamily.RightNormalized.check cell_5481 = true := by
  decide +kernel

theorem check_5482 : SourceCertificateFamily.RightNormalized.check cell_5482 = true := by
  decide +kernel

theorem check_5483 : SourceCertificateFamily.RightNormalized.check cell_5483 = true := by
  decide +kernel

theorem check_5484 : SourceCertificateFamily.RightNormalized.check cell_5484 = true := by
  decide +kernel

theorem check_5485 : SourceCertificateFamily.RightNormalized.check cell_5485 = true := by
  decide +kernel

theorem check_5486 : SourceCertificateFamily.RightNormalized.check cell_5486 = true := by
  decide +kernel

theorem check_5487 : SourceCertificateFamily.RightNormalized.check cell_5487 = true := by
  decide +kernel

theorem check_5488 : SourceCertificateFamily.RightNormalized.check cell_5488 = true := by
  decide +kernel

theorem check_5489 : SourceCertificateFamily.RightNormalized.check cell_5489 = true := by
  decide +kernel

theorem check_5490 : SourceCertificateFamily.RightNormalized.check cell_5490 = true := by
  decide +kernel

theorem check_5491 : SourceCertificateFamily.RightNormalized.check cell_5491 = true := by
  decide +kernel

theorem check_5492 : SourceCertificateFamily.RightNormalized.check cell_5492 = true := by
  decide +kernel

theorem check_5493 : SourceCertificateFamily.RightNormalized.check cell_5493 = true := by
  decide +kernel

theorem check_5494 : SourceCertificateFamily.RightNormalized.check cell_5494 = true := by
  decide +kernel

theorem check_5495 : SourceCertificateFamily.RightNormalized.check cell_5495 = true := by
  decide +kernel

theorem check_5496 : SourceCertificateFamily.RightNormalized.check cell_5496 = true := by
  decide +kernel

theorem check_5497 : SourceCertificateFamily.RightNormalized.check cell_5497 = true := by
  decide +kernel

theorem check_5498 : SourceCertificateFamily.RightNormalized.check cell_5498 = true := by
  decide +kernel

theorem check_5499 : SourceCertificateFamily.RightNormalized.check cell_5499 = true := by
  decide +kernel

def cells : List Cell := [cell_5450, cell_5451, cell_5452, cell_5453, cell_5454, cell_5455, cell_5456, cell_5457, cell_5458, cell_5459, cell_5460, cell_5461, cell_5462, cell_5463, cell_5464, cell_5465, cell_5466, cell_5467, cell_5468, cell_5469, cell_5470, cell_5471, cell_5472, cell_5473, cell_5474, cell_5475, cell_5476, cell_5477, cell_5478, cell_5479, cell_5480, cell_5481, cell_5482, cell_5483, cell_5484, cell_5485, cell_5486, cell_5487, cell_5488, cell_5489, cell_5490, cell_5491, cell_5492, cell_5493, cell_5494, cell_5495, cell_5496, cell_5497, cell_5498, cell_5499]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5450, SourceCertificateFamily.of_right_checked check_5451, SourceCertificateFamily.of_right_checked check_5452, SourceCertificateFamily.of_right_checked check_5453, SourceCertificateFamily.of_right_checked check_5454, SourceCertificateFamily.of_right_checked check_5455, SourceCertificateFamily.of_right_checked check_5456, SourceCertificateFamily.of_right_checked check_5457, SourceCertificateFamily.of_right_checked check_5458, SourceCertificateFamily.of_right_checked check_5459, SourceCertificateFamily.of_right_checked check_5460, SourceCertificateFamily.of_right_checked check_5461, SourceCertificateFamily.of_right_checked check_5462, SourceCertificateFamily.of_right_checked check_5463, SourceCertificateFamily.of_right_checked check_5464, SourceCertificateFamily.of_right_checked check_5465, SourceCertificateFamily.of_right_checked check_5466, SourceCertificateFamily.of_right_checked check_5467, SourceCertificateFamily.of_right_checked check_5468, SourceCertificateFamily.of_right_checked check_5469, SourceCertificateFamily.of_right_checked check_5470, SourceCertificateFamily.of_right_checked check_5471, SourceCertificateFamily.of_right_checked check_5472, SourceCertificateFamily.of_right_checked check_5473, SourceCertificateFamily.of_right_checked check_5474, SourceCertificateFamily.of_right_checked check_5475, SourceCertificateFamily.of_right_checked check_5476, SourceCertificateFamily.of_right_checked check_5477, SourceCertificateFamily.of_right_checked check_5478, SourceCertificateFamily.of_right_checked check_5479, SourceCertificateFamily.of_right_checked check_5480, SourceCertificateFamily.of_right_checked check_5481, SourceCertificateFamily.of_right_checked check_5482, SourceCertificateFamily.of_right_checked check_5483, SourceCertificateFamily.of_right_checked check_5484, SourceCertificateFamily.of_right_checked check_5485, SourceCertificateFamily.of_right_checked check_5486, SourceCertificateFamily.of_right_checked check_5487, SourceCertificateFamily.of_right_checked check_5488, SourceCertificateFamily.of_right_checked check_5489, SourceCertificateFamily.of_right_checked check_5490, SourceCertificateFamily.of_right_checked check_5491, SourceCertificateFamily.of_right_checked check_5492, SourceCertificateFamily.of_right_checked check_5493, SourceCertificateFamily.of_right_checked check_5494, SourceCertificateFamily.of_right_checked check_5495, SourceCertificateFamily.of_right_checked check_5496, SourceCertificateFamily.of_right_checked check_5497, SourceCertificateFamily.of_right_checked check_5498, SourceCertificateFamily.of_right_checked check_5499, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0109

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0109
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0109
open AnalyticBounds.ExpressionCertificate

theorem linked_5450 : Linked cell_5450 pieces := by
  refine ⟨piece_457,piece_457_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5450,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1394_mem

theorem linked_5451 : Linked cell_5451 pieces := by
  refine ⟨piece_458,piece_458_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5451,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1394_mem
    · exact piece_1395_mem

theorem linked_5452 : Linked cell_5452 pieces := by
  refine ⟨piece_458,piece_458_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5452,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1395_mem

theorem linked_5453 : Linked cell_5453 pieces := by
  refine ⟨piece_458,piece_458_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5453,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1395_mem

theorem linked_5454 : Linked cell_5454 pieces := by
  refine ⟨piece_458,piece_458_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5454,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1395_mem
    · exact piece_1396_mem

theorem linked_5455 : Linked cell_5455 pieces := by
  refine ⟨piece_458,piece_458_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5455,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1396_mem

theorem linked_5456 : Linked cell_5456 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5456,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1395_mem

theorem linked_5457 : Linked cell_5457 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5457,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1395_mem
    · exact piece_1396_mem

theorem linked_5458 : Linked cell_5458 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5458,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1396_mem

theorem linked_5459 : Linked cell_5459 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5459,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1396_mem

theorem linked_5460 : Linked cell_5460 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5460,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1396_mem
    · exact piece_1397_mem

theorem linked_5461 : Linked cell_5461 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5461,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1397_mem

theorem linked_5462 : Linked cell_5462 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5462,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1397_mem

theorem linked_5463 : Linked cell_5463 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5463,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1397_mem
    · exact piece_1398_mem

theorem linked_5464 : Linked cell_5464 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5464,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1398_mem

theorem linked_5465 : Linked cell_5465 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5465,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1398_mem
    · exact piece_1399_mem

theorem linked_5466 : Linked cell_5466 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5466,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1399_mem

theorem linked_5467 : Linked cell_5467 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5467,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1399_mem
    · exact piece_1400_mem

theorem linked_5468 : Linked cell_5468 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5468,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1400_mem

theorem linked_5469 : Linked cell_5469 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5469,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1400_mem

theorem linked_5470 : Linked cell_5470 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5470,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1400_mem
    · exact piece_1401_mem

theorem linked_5471 : Linked cell_5471 pieces := by
  refine ⟨piece_459,piece_459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5471,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1401_mem

theorem linked_5472 : Linked cell_5472 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5472,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1400_mem
    · exact piece_1401_mem

theorem linked_5473 : Linked cell_5473 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5473,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1401_mem

theorem linked_5474 : Linked cell_5474 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5474,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1401_mem

theorem linked_5475 : Linked cell_5475 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5475,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1401_mem
    · exact piece_1402_mem

theorem linked_5476 : Linked cell_5476 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5476,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1402_mem

theorem linked_5477 : Linked cell_5477 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5477,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1402_mem

theorem linked_5478 : Linked cell_5478 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5478,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1402_mem

theorem linked_5479 : Linked cell_5479 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5479,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1402_mem
    · exact piece_1403_mem

theorem linked_5480 : Linked cell_5480 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5480,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1403_mem

theorem linked_5481 : Linked cell_5481 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5481,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1403_mem

theorem linked_5482 : Linked cell_5482 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5482,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1403_mem
    · exact piece_1404_mem

theorem linked_5483 : Linked cell_5483 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5483,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1404_mem

theorem linked_5484 : Linked cell_5484 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5484,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1404_mem

theorem linked_5485 : Linked cell_5485 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5485,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1404_mem
    · exact piece_1405_mem

theorem linked_5486 : Linked cell_5486 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5486,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1405_mem

theorem linked_5487 : Linked cell_5487 pieces := by
  refine ⟨piece_460,piece_460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5487,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1405_mem

theorem linked_5488 : Linked cell_5488 pieces := by
  refine ⟨piece_461,piece_461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5488,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1404_mem
    · exact piece_1405_mem

theorem linked_5489 : Linked cell_5489 pieces := by
  refine ⟨piece_461,piece_461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5489,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1405_mem

theorem linked_5490 : Linked cell_5490 pieces := by
  refine ⟨piece_461,piece_461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5490,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1405_mem

theorem linked_5491 : Linked cell_5491 pieces := by
  refine ⟨piece_461,piece_461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5491,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1405_mem
    · exact piece_1406_mem

theorem linked_5492 : Linked cell_5492 pieces := by
  refine ⟨piece_461,piece_461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5492,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1406_mem

theorem linked_5493 : Linked cell_5493 pieces := by
  refine ⟨piece_461,piece_461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5493,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1406_mem

theorem linked_5494 : Linked cell_5494 pieces := by
  refine ⟨piece_461,piece_461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5494,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1406_mem
    · exact piece_1407_mem

theorem linked_5495 : Linked cell_5495 pieces := by
  refine ⟨piece_461,piece_461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5495,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1407_mem

theorem linked_5496 : Linked cell_5496 pieces := by
  refine ⟨piece_461,piece_461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5496,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1407_mem

theorem linked_5497 : Linked cell_5497 pieces := by
  refine ⟨piece_461,piece_461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5497,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1407_mem
    · exact piece_1408_mem

theorem linked_5498 : Linked cell_5498 pieces := by
  refine ⟨piece_461,piece_461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5498,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1408_mem

theorem linked_5499 : Linked cell_5499 pieces := by
  refine ⟨piece_461,piece_461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5499,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1408_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0109.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0109.cells,List.forall_mem_cons]
  exact ⟨linked_5450, linked_5451, linked_5452, linked_5453, linked_5454, linked_5455, linked_5456, linked_5457, linked_5458, linked_5459, linked_5460, linked_5461, linked_5462, linked_5463, linked_5464, linked_5465, linked_5466, linked_5467, linked_5468, linked_5469, linked_5470, linked_5471, linked_5472, linked_5473, linked_5474, linked_5475, linked_5476, linked_5477, linked_5478, linked_5479, linked_5480, linked_5481, linked_5482, linked_5483, linked_5484, linked_5485, linked_5486, linked_5487, linked_5488, linked_5489, linked_5490, linked_5491, linked_5492, linked_5493, linked_5494, linked_5495, linked_5496, linked_5497, linked_5498, linked_5499, by simp⟩

theorem covered : covers (32961033519553071 / 200000000000000000 : ℚ) (8318749999999999 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0109.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0109
