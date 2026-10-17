import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0111
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(8396874999999999 / 50000000000000000 : ℚ), (8398437499999999 / 50000000000000000 : ℚ)⟩
  branch := .right
  r := (5937381801813 / 6250000000000 : ℚ)
  w := (2005718938777 / 2000000000000 : ℚ)
  center := (8397656249999999 / 50000000000000000 : ℚ)
  supportValue := (6077649937528887 / 10000000000000000 : ℚ)
  supportSlope := (648834841314283 / 125000000000000 : ℚ)
  oldCenter := (6077649937528887 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_465
  oldLo := (15237500000000001 / 25000000000000000 : ℚ)
  oldHi := (60999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1428]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5550 : Cell := { cellDefaults with
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (15187500000000001 / 25000000000000000 : ℚ)
  oldHi := (30399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1424]
}

def cell_5551 : Cell := { cellDefaults with
  domain := ⟨(8398437499999999 / 50000000000000000 : ℚ), (8399999999999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8399218749999999 / 50000000000000000 : ℚ)
  supportValue := (6079272157427613 / 10000000000000000 : ℚ)
  supportSlope := (1038299855015623 / 200000000000000 : ℚ)
  oldCenter := (6079272157427613 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (15187500000000001 / 25000000000000000 : ℚ)
  oldHi := (15212500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1424, piece_1425]
}

def cell_5552 : Cell := { cellDefaults with
  domain := ⟨(8399999999999999 / 50000000000000000 : ℚ), (8401562499999999 / 50000000000000000 : ℚ)⟩
  center := (8400781249999999 / 50000000000000000 : ℚ)
  supportValue := (3038198220889421 / 5000000000000000 : ℚ)
  supportSlope := (2593607810823073 / 500000000000000 : ℚ)
  oldCenter := (3038198220889421 / 5000000000000000 : ℚ)
  oldLo := (15187500000000001 / 25000000000000000 : ℚ)
  oldHi := (30399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1424]
}

def cell_5553 : Cell := { cellDefaults with
  domain := ⟨(8401562499999999 / 50000000000000000 : ℚ), (8403124999999999 / 50000000000000000 : ℚ)⟩
  center := (8402343749999999 / 50000000000000000 : ℚ)
  supportValue := (759752197437877 / 1250000000000000 : ℚ)
  supportSlope := (648508365653111 / 125000000000000 : ℚ)
  oldCenter := (759752197437877 / 1250000000000000 : ℚ)
  oldLo := (15187500000000001 / 25000000000000000 : ℚ)
  oldHi := (30399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1424]
}

def cell_5554 : Cell := { cellDefaults with
  domain := ⟨(8403124999999999 / 50000000000000000 : ℚ), (8404687499999999 / 50000000000000000 : ℚ)⟩
  center := (8403906249999999 / 50000000000000000 : ℚ)
  supportValue := (3039819491653099 / 5000000000000000 : ℚ)
  supportSlope := (5188755130504319 / 1000000000000000 : ℚ)
  oldCenter := (3039819491653099 / 5000000000000000 : ℚ)
  oldLo := (15187500000000001 / 25000000000000000 : ℚ)
  oldHi := (15212500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1424, piece_1425]
}

def cell_5555 : Cell := { cellDefaults with
  domain := ⟨(8404687499999999 / 50000000000000000 : ℚ), (8406249999999999 / 50000000000000000 : ℚ)⟩
  center := (8405468749999999 / 50000000000000000 : ℚ)
  supportValue := (1520315127556147 / 2500000000000000 : ℚ)
  supportSlope := (103783627174181 / 20000000000000 : ℚ)
  oldCenter := (1520315127556147 / 2500000000000000 : ℚ)
  oldLo := (30399999999999999 / 50000000000000000 : ℚ)
  oldHi := (15212500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1425]
}

def cell_5556 : Cell := { cellDefaults with
  domain := ⟨(8406249999999999 / 50000000000000000 : ℚ), (8407812499999999 / 50000000000000000 : ℚ)⟩
  center := (8407031249999999 / 50000000000000000 : ℚ)
  supportValue := (3041441131097643 / 5000000000000000 : ℚ)
  supportSlope := (1038006473220321 / 200000000000000 : ℚ)
  oldCenter := (3041441131097643 / 5000000000000000 : ℚ)
  oldLo := (30399999999999999 / 50000000000000000 : ℚ)
  oldHi := (15212500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1425]
}

def cell_5557 : Cell := { cellDefaults with
  domain := ⟨(8407812499999999 / 50000000000000000 : ℚ), (8409374999999999 / 50000000000000000 : ℚ)⟩
  center := (8408593749999999 / 50000000000000000 : ℚ)
  supportValue := (3042252140076147 / 5000000000000000 : ℚ)
  supportSlope := (1297692310283871 / 250000000000000 : ℚ)
  oldCenter := (3042252140076147 / 5000000000000000 : ℚ)
  oldLo := (30399999999999999 / 50000000000000000 : ℚ)
  oldHi := (60899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1425, piece_1426]
}

def cell_5558 : Cell := { cellDefaults with
  domain := ⟨(8409374999999999 / 50000000000000000 : ℚ), (8410937499999999 / 50000000000000000 : ℚ)⟩
  center := (8410156249999999 / 50000000000000000 : ℚ)
  supportValue := (3043063218269161 / 5000000000000000 : ℚ)
  supportSlope := (207645868354831 / 40000000000000 : ℚ)
  oldCenter := (3043063218269161 / 5000000000000000 : ℚ)
  oldLo := (15212500000000001 / 25000000000000000 : ℚ)
  oldHi := (60899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1426]
}

def cell_5559 : Cell := { cellDefaults with
  domain := ⟨(8410937499999999 / 50000000000000000 : ℚ), (8412499999999999 / 50000000000000000 : ℚ)⟩
  center := (8411718749999999 / 50000000000000000 : ℚ)
  supportValue := (3043874401265391 / 5000000000000000 : ℚ)
  supportSlope := (5191996755119277 / 1000000000000000 : ℚ)
  oldCenter := (3043874401265391 / 5000000000000000 : ℚ)
  oldLo := (15212500000000001 / 25000000000000000 : ℚ)
  oldHi := (60899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1426]
}

def cell_5560 : Cell := { cellDefaults with
  domain := ⟨(8412499999999999 / 50000000000000000 : ℚ), (8414062499999999 / 50000000000000000 : ℚ)⟩
  center := (8413281249999999 / 50000000000000000 : ℚ)
  supportValue := (6089371434208881 / 10000000000000000 : ℚ)
  supportSlope := (2596390423899919 / 500000000000000 : ℚ)
  oldCenter := (6089371434208881 / 10000000000000000 : ℚ)
  oldLo := (15212500000000001 / 25000000000000000 : ℚ)
  oldHi := (15237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1426, piece_1427]
}

def cell_5561 : Cell := { cellDefaults with
  domain := ⟨(8414062499999999 / 50000000000000000 : ℚ), (8415624999999999 / 50000000000000000 : ℚ)⟩
  center := (8414843749999999 / 50000000000000000 : ℚ)
  supportValue := (6090994219314523 / 10000000000000000 : ℚ)
  supportSlope := (5193110781927857 / 1000000000000000 : ℚ)
  oldCenter := (6090994219314523 / 10000000000000000 : ℚ)
  oldLo := (60899999999999999 / 100000000000000000 : ℚ)
  oldHi := (15237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1427]
}

def cell_5562 : Cell := { cellDefaults with
  domain := ⟨(8415624999999999 / 50000000000000000 : ℚ), (8417187499999999 / 50000000000000000 : ℚ)⟩
  center := (8416406249999999 / 50000000000000000 : ℚ)
  supportValue := (6092617198963173 / 10000000000000000 : ℚ)
  supportSlope := (5193960081683713 / 1000000000000000 : ℚ)
  oldCenter := (6092617198963173 / 10000000000000000 : ℚ)
  oldLo := (60899999999999999 / 100000000000000000 : ℚ)
  oldHi := (15237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1427]
}

def cell_5563 : Cell := { cellDefaults with
  domain := ⟨(8417187499999999 / 50000000000000000 : ℚ), (8418749999999999 / 50000000000000000 : ℚ)⟩
  center := (8417968749999999 / 50000000000000000 : ℚ)
  supportValue := (3047120222031967 / 5000000000000000 : ℚ)
  supportSlope := (5194790657181869 / 1000000000000000 : ℚ)
  oldCenter := (3047120222031967 / 5000000000000000 : ℚ)
  oldLo := (60899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1427, piece_1428]
}

def cell_5564 : Cell := { cellDefaults with
  domain := ⟨(8418749999999999 / 50000000000000000 : ℚ), (8420312499999999 / 50000000000000000 : ℚ)⟩
  center := (8419531249999999 / 50000000000000000 : ℚ)
  supportValue := (3047931928645237 / 5000000000000000 : ℚ)
  supportSlope := (5195073760184243 / 1000000000000000 : ℚ)
  oldCenter := (3047931928645237 / 5000000000000000 : ℚ)
  oldPieces := [piece_1428]
}

def cell_5565 : Cell := { cellDefaults with
  domain := ⟨(8420312499999999 / 50000000000000000 : ℚ), (8421874999999999 / 50000000000000000 : ℚ)⟩
  center := (8421093749999999 / 50000000000000000 : ℚ)
  supportValue := (1219497490056087 / 2000000000000000 : ℚ)
  supportSlope := (5195922487843063 / 1000000000000000 : ℚ)
  oldCenter := (1219497490056087 / 2000000000000000 : ℚ)
  oldPieces := [piece_1428]
}

def cell_5566 : Cell := { cellDefaults with
  domain := ⟨(8421874999999999 / 50000000000000000 : ℚ), (8423437499999999 / 50000000000000000 : ℚ)⟩
  center := (8422656249999999 / 50000000000000000 : ℚ)
  supportValue := (38119445678397 / 62500000000000 : ℚ)
  supportSlope := (2598385754202681 / 500000000000000 : ℚ)
  oldCenter := (38119445678397 / 62500000000000 : ℚ)
  oldPieces := [piece_1428]
}

def cell_5567 : Cell := { cellDefaults with
  domain := ⟨(8423437499999999 / 50000000000000000 : ℚ), (8424999999999999 / 50000000000000000 : ℚ)⟩
  center := (8424218749999999 / 50000000000000000 : ℚ)
  supportValue := (1525183837352459 / 2500000000000000 : ℚ)
  supportSlope := (5197063437297089 / 1000000000000000 : ℚ)
  oldCenter := (1525183837352459 / 2500000000000000 : ℚ)
  oldHi := (15262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1428, piece_1429]
}

def cell_5568 : Cell := { cellDefaults with
  domain := ⟨(8424999999999999 / 50000000000000000 : ℚ), (8426562499999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8425781249999999 / 50000000000000000 : ℚ)
  supportValue := (762231346826623 / 1250000000000000 : ℚ)
  supportSlope := (415464126175209 / 80000000000000 : ℚ)
  oldCenter := (762231346826623 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldPieces := [piece_1428]
}

def cell_5569 : Cell := { cellDefaults with
  domain := ⟨(8426562499999999 / 50000000000000000 : ℚ), (8428124999999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8427343749999999 / 50000000000000000 : ℚ)
  supportValue := (47652139171377 / 78125000000000 : ℚ)
  supportSlope := (1298512078877323 / 250000000000000 : ℚ)
  oldCenter := (47652139171377 / 78125000000000 : ℚ)
  newCoefficients := coefficients_466
  oldHi := (15262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1428, piece_1429]
}

def cell_5570 : Cell := { cellDefaults with
  domain := ⟨(8428124999999999 / 50000000000000000 : ℚ), (8429687499999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8428906249999999 / 50000000000000000 : ℚ)
  supportValue := (3050548497676109 / 5000000000000000 : ℚ)
  supportSlope := (2597208192808509 / 500000000000000 : ℚ)
  oldCenter := (3050548497676109 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (60999999999999999 / 100000000000000000 : ℚ)
  oldHi := (15262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1429]
}

def cell_5571 : Cell := { cellDefaults with
  domain := ⟨(8429687499999999 / 50000000000000000 : ℚ), (8431249999999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8430468749999999 / 50000000000000000 : ℚ)
  supportValue := (3051360191459359 / 5000000000000000 : ℚ)
  supportSlope := (519526515226687 / 100000000000000 : ℚ)
  oldCenter := (3051360191459359 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (60999999999999999 / 100000000000000000 : ℚ)
  oldHi := (15262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1429]
}

def cell_5572 : Cell := { cellDefaults with
  domain := ⟨(8431249999999999 / 50000000000000000 : ℚ), (8432812499999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8432031249999999 / 50000000000000000 : ℚ)
  supportValue := (610434403577061 / 1000000000000000 : ℚ)
  supportSlope := (1299014493401529 / 250000000000000 : ℚ)
  oldCenter := (610434403577061 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (60999999999999999 / 100000000000000000 : ℚ)
  oldHi := (61099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1429, piece_1430]
}

def cell_5573 : Cell := { cellDefaults with
  domain := ⟨(8432812499999999 / 50000000000000000 : ℚ), (8434374999999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8433593749999999 / 50000000000000000 : ℚ)
  supportValue := (19081149516309 / 31250000000000 : ℚ)
  supportSlope := (10392758966382587 / 2000000000000000 : ℚ)
  oldCenter := (19081149516309 / 31250000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (15262500000000001 / 25000000000000000 : ℚ)
  oldHi := (61099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1430]
}

def cell_5574 : Cell := { cellDefaults with
  domain := ⟨(8434374999999999 / 50000000000000000 : ℚ), (8435937499999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8435156249999999 / 50000000000000000 : ℚ)
  supportValue := (1526897961540907 / 2500000000000000 : ℚ)
  supportSlope := (2598613837767161 / 500000000000000 : ℚ)
  oldCenter := (1526897961540907 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (15262500000000001 / 25000000000000000 : ℚ)
  oldHi := (61099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1430]
}

def cell_5575 : Cell := { cellDefaults with
  domain := ⟨(8435937499999999 / 50000000000000000 : ℚ), (8437499999999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8436718749999999 / 50000000000000000 : ℚ)
  supportValue := (6109216112214083 / 10000000000000000 : ℚ)
  supportSlope := (2599032888955577 / 500000000000000 : ℚ)
  oldCenter := (6109216112214083 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (15262500000000001 / 25000000000000000 : ℚ)
  oldHi := (15287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1430, piece_1431]
}

def cell_5576 : Cell := { cellDefaults with
  domain := ⟨(8437499999999999 / 50000000000000000 : ℚ), (8439062499999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8438281249999999 / 50000000000000000 : ℚ)
  supportValue := (6110840549147077 / 10000000000000000 : ℚ)
  supportSlope := (162448178886887 / 31250000000000 : ℚ)
  oldCenter := (6110840549147077 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (61099999999999999 / 100000000000000000 : ℚ)
  oldHi := (15287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1431]
}

def cell_5577 : Cell := { cellDefaults with
  domain := ⟨(8439062499999999 / 50000000000000000 : ℚ), (8440624999999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8439843749999999 / 50000000000000000 : ℚ)
  supportValue := (6112465163201743 / 10000000000000000 : ℚ)
  supportSlope := (10398378675738229 / 2000000000000000 : ℚ)
  oldCenter := (6112465163201743 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (61099999999999999 / 100000000000000000 : ℚ)
  oldHi := (15287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1431]
}

def cell_5578 : Cell := { cellDefaults with
  domain := ⟨(8440624999999999 / 50000000000000000 : ℚ), (8442187499999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8441406249999999 / 50000000000000000 : ℚ)
  supportValue := (6114090042181017 / 10000000000000000 : ℚ)
  supportSlope := (260001862105419 / 50000000000000 : ℚ)
  oldCenter := (6114090042181017 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (61099999999999999 / 100000000000000000 : ℚ)
  oldHi := (15287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1431]
}

def cell_5579 : Cell := { cellDefaults with
  domain := ⟨(8442187499999999 / 50000000000000000 : ℚ), (8443749999999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8442968749999999 / 50000000000000000 : ℚ)
  supportValue := (1223143021214021 / 2000000000000000 : ℚ)
  supportSlope := (65004221862619 / 12500000000000 : ℚ)
  oldCenter := (1223143021214021 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (61099999999999999 / 100000000000000000 : ℚ)
  oldHi := (61199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1431, piece_1432]
}

def cell_5580 : Cell := { cellDefaults with
  domain := ⟨(8443749999999999 / 50000000000000000 : ℚ), (8445312499999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8444531249999999 / 50000000000000000 : ℚ)
  supportValue := (1529335083240941 / 2500000000000000 : ℚ)
  supportSlope := (2600575065416777 / 500000000000000 : ℚ)
  oldCenter := (1529335083240941 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (15287500000000001 / 25000000000000000 : ℚ)
  oldHi := (61199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1432]
}

def cell_5581 : Cell := { cellDefaults with
  domain := ⟨(8445312499999999 / 50000000000000000 : ℚ), (8446874999999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8446093749999999 / 50000000000000000 : ℚ)
  supportValue := (3059482912299709 / 5000000000000000 : ℚ)
  supportSlope := (5201997450054563 / 1000000000000000 : ℚ)
  oldCenter := (3059482912299709 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (15287500000000001 / 25000000000000000 : ℚ)
  oldHi := (61199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1432]
}

def cell_5582 : Cell := { cellDefaults with
  domain := ⟨(8446874999999999 / 50000000000000000 : ℚ), (8448437499999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8447656249999999 / 50000000000000000 : ℚ)
  supportValue := (6120591514914013 / 10000000000000000 : ℚ)
  supportSlope := (2601171229096977 / 500000000000000 : ℚ)
  oldCenter := (6120591514914013 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (15287500000000001 / 25000000000000000 : ℚ)
  oldHi := (15312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1432, piece_1433]
}

def cell_5583 : Cell := { cellDefaults with
  domain := ⟨(8448437499999999 / 50000000000000000 : ℚ), (8449999999999999 / 50000000000000000 : ℚ)⟩
  r := (94900683330947 / 100000000000000 : ℚ)
  w := (2006084096959 / 2000000000000 : ℚ)
  center := (8449218749999999 / 50000000000000000 : ℚ)
  supportValue := (6122217354372989 / 10000000000000000 : ℚ)
  supportSlope := (1300777511441531 / 250000000000000 : ℚ)
  oldCenter := (6122217354372989 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_466
  oldLo := (61199999999999999 / 100000000000000000 : ℚ)
  oldHi := (15312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1433]
}

def cell_5584 : Cell := { cellDefaults with
  domain := ⟨(8449999999999999 / 50000000000000000 : ℚ), (8451562499999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8450781249999999 / 50000000000000000 : ℚ)
  supportValue := (6119324429107957 / 10000000000000000 : ℚ)
  supportSlope := (1039863860098933 / 200000000000000 : ℚ)
  oldCenter := (6119324429107957 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (15287500000000001 / 25000000000000000 : ℚ)
  oldHi := (15312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1432, piece_1433]
}

def cell_5585 : Cell := { cellDefaults with
  domain := ⟨(8451562499999999 / 50000000000000000 : ℚ), (8453124999999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8452343749999999 / 50000000000000000 : ℚ)
  supportValue := (3060474628977107 / 5000000000000000 : ℚ)
  supportSlope := (207985407672453 / 40000000000000 : ℚ)
  oldCenter := (3060474628977107 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (61199999999999999 / 100000000000000000 : ℚ)
  oldHi := (15312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1433]
}

def cell_5586 : Cell := { cellDefaults with
  domain := ⟨(8453124999999999 / 50000000000000000 : ℚ), (8454687499999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8453906249999999 / 50000000000000000 : ℚ)
  supportValue := (47832611532273 / 78125000000000 : ℚ)
  supportSlope := (1040096450344663 / 200000000000000 : ℚ)
  oldCenter := (47832611532273 / 78125000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (61199999999999999 / 100000000000000000 : ℚ)
  oldHi := (15312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1433]
}

def cell_5587 : Cell := { cellDefaults with
  domain := ⟨(8454687499999999 / 50000000000000000 : ℚ), (8456249999999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8455468749999999 / 50000000000000000 : ℚ)
  supportValue := (382762472441197 / 625000000000000 : ℚ)
  supportSlope := (1300331248883957 / 250000000000000 : ℚ)
  oldCenter := (382762472441197 / 625000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (61199999999999999 / 100000000000000000 : ℚ)
  oldHi := (6128491620111731 / 10000000000000000 : ℚ)
  oldPieces := [piece_1433, piece_1434]
}

def cell_5588 : Cell := { cellDefaults with
  domain := ⟨(8456249999999999 / 50000000000000000 : ℚ), (8457812499999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8457031249999999 / 50000000000000000 : ℚ)
  supportValue := (1531456253682933 / 2500000000000000 : ℚ)
  supportSlope := (5201596665425967 / 1000000000000000 : ℚ)
  oldCenter := (1531456253682933 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (15312500000000001 / 25000000000000000 : ℚ)
  oldHi := (6128491620111731 / 10000000000000000 : ℚ)
  oldPieces := [piece_1434]
}

def cell_5589 : Cell := { cellDefaults with
  domain := ⟨(8457812499999999 / 50000000000000000 : ℚ), (8459374999999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8458593749999999 / 50000000000000000 : ℚ)
  supportValue := (245098025831133 / 400000000000000 : ℚ)
  supportSlope := (2601221572641421 / 500000000000000 : ℚ)
  oldCenter := (245098025831133 / 400000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (15312500000000001 / 25000000000000000 : ℚ)
  oldHi := (6128491620111731 / 10000000000000000 : ℚ)
  oldPieces := [piece_1434]
}

def cell_5590 : Cell := { cellDefaults with
  domain := ⟨(8459374999999999 / 50000000000000000 : ℚ), (8460937499999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8460156249999999 / 50000000000000000 : ℚ)
  supportValue := (3064538270737737 / 5000000000000000 : ℚ)
  supportSlope := (5203290524100623 / 1000000000000000 : ℚ)
  oldCenter := (3064538270737737 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (15312500000000001 / 25000000000000000 : ℚ)
  oldHi := (61299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1434, piece_1435]
}

def cell_5591 : Cell := { cellDefaults with
  domain := ⟨(8460937499999999 / 50000000000000000 : ℚ), (8462499999999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8461718749999999 / 50000000000000000 : ℚ)
  supportValue := (6130702623659877 / 10000000000000000 : ℚ)
  supportSlope := (10407194043963841 / 2000000000000000 : ℚ)
  oldCenter := (6130702623659877 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (6128491620111731 / 10000000000000000 : ℚ)
  oldHi := (12270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1435, piece_1436]
}

def cell_5592 : Cell := { cellDefaults with
  domain := ⟨(8462499999999999 / 50000000000000000 : ℚ), (8464062499999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8463281249999999 / 50000000000000000 : ℚ)
  supportValue := (3066164433757137 / 5000000000000000 : ℚ)
  supportSlope := (325275241171763 / 62500000000000 : ℚ)
  oldCenter := (3066164433757137 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (61299999999999999 / 100000000000000000 : ℚ)
  oldHi := (12270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1436]
}

def cell_5593 : Cell := { cellDefaults with
  domain := ⟨(8464062499999999 / 50000000000000000 : ℚ), (8465624999999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8464843749999999 / 50000000000000000 : ℚ)
  supportValue := (1226791075153753 / 2000000000000000 : ℚ)
  supportSlope := (5205250082784829 / 1000000000000000 : ℚ)
  oldCenter := (1226791075153753 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (61299999999999999 / 100000000000000000 : ℚ)
  oldHi := (12270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1436]
}

def cell_5594 : Cell := { cellDefaults with
  domain := ⟨(8465624999999999 / 50000000000000000 : ℚ), (8467187499999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8466406249999999 / 50000000000000000 : ℚ)
  supportValue := (3067791041870517 / 5000000000000000 : ℚ)
  supportSlope := (1301399921032953 / 250000000000000 : ℚ)
  oldCenter := (3067791041870517 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (61299999999999999 / 100000000000000000 : ℚ)
  oldHi := (61399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1436, piece_1437]
}

def cell_5595 : Cell := { cellDefaults with
  domain := ⟨(8467187499999999 / 50000000000000000 : ℚ), (8468749999999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8467968749999999 / 50000000000000000 : ℚ)
  supportValue := (3068604469960633 / 5000000000000000 : ℚ)
  supportSlope := (2603181484525763 / 500000000000000 : ℚ)
  oldCenter := (3068604469960633 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (12270000000000001 / 20000000000000000 : ℚ)
  oldHi := (61399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1437]
}

def cell_5596 : Cell := { cellDefaults with
  domain := ⟨(8468749999999999 / 50000000000000000 : ℚ), (8470312499999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8469531249999999 / 50000000000000000 : ℚ)
  supportValue := (3069418030146817 / 5000000000000000 : ℚ)
  supportSlope := (1301802131728813 / 250000000000000 : ℚ)
  oldCenter := (3069418030146817 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (12270000000000001 / 20000000000000000 : ℚ)
  oldHi := (61399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1437]
}

def cell_5597 : Cell := { cellDefaults with
  domain := ⟨(8470312499999999 / 50000000000000000 : ℚ), (8471874999999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8471093749999999 / 50000000000000000 : ℚ)
  supportValue := (1535115848367847 / 2500000000000000 : ℚ)
  supportSlope := (1041520102998561 / 200000000000000 : ℚ)
  oldCenter := (1535115848367847 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (12270000000000001 / 20000000000000000 : ℚ)
  oldHi := (12290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1437, piece_1438]
}

def cell_5598 : Cell := { cellDefaults with
  domain := ⟨(8471874999999999 / 50000000000000000 : ℚ), (8473437499999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8472656249999999 / 50000000000000000 : ℚ)
  supportValue := (6142090861674837 / 10000000000000000 : ℚ)
  supportSlope := (5208321145165229 / 1000000000000000 : ℚ)
  oldCenter := (6142090861674837 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (61399999999999999 / 100000000000000000 : ℚ)
  oldHi := (12290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1438]
}

def cell_5599 : Cell := { cellDefaults with
  domain := ⟨(8473437499999999 / 50000000000000000 : ℚ), (8474999999999999 / 50000000000000000 : ℚ)⟩
  r := (11850439077189 / 12500000000000 : ℚ)
  w := (10032252354287 / 10000000000000 : ℚ)
  center := (8474218749999999 / 50000000000000000 : ℚ)
  supportValue := (6143718593883833 / 10000000000000000 : ℚ)
  supportSlope := (2604583052638887 / 500000000000000 : ℚ)
  oldCenter := (6143718593883833 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_467
  oldLo := (61399999999999999 / 100000000000000000 : ℚ)
  oldHi := (12290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1438]
}

theorem check_5550 : SourceCertificateFamily.RightNormalized.check cell_5550 = true := by
  decide +kernel

theorem check_5551 : SourceCertificateFamily.RightNormalized.check cell_5551 = true := by
  decide +kernel

theorem check_5552 : SourceCertificateFamily.RightNormalized.check cell_5552 = true := by
  decide +kernel

theorem check_5553 : SourceCertificateFamily.RightNormalized.check cell_5553 = true := by
  decide +kernel

theorem check_5554 : SourceCertificateFamily.RightNormalized.check cell_5554 = true := by
  decide +kernel

theorem check_5555 : SourceCertificateFamily.RightNormalized.check cell_5555 = true := by
  decide +kernel

theorem check_5556 : SourceCertificateFamily.RightNormalized.check cell_5556 = true := by
  decide +kernel

theorem check_5557 : SourceCertificateFamily.RightNormalized.check cell_5557 = true := by
  decide +kernel

theorem check_5558 : SourceCertificateFamily.RightNormalized.check cell_5558 = true := by
  decide +kernel

theorem check_5559 : SourceCertificateFamily.RightNormalized.check cell_5559 = true := by
  decide +kernel

theorem check_5560 : SourceCertificateFamily.RightNormalized.check cell_5560 = true := by
  decide +kernel

theorem check_5561 : SourceCertificateFamily.RightNormalized.check cell_5561 = true := by
  decide +kernel

theorem check_5562 : SourceCertificateFamily.RightNormalized.check cell_5562 = true := by
  decide +kernel

theorem check_5563 : SourceCertificateFamily.RightNormalized.check cell_5563 = true := by
  decide +kernel

theorem check_5564 : SourceCertificateFamily.RightNormalized.check cell_5564 = true := by
  decide +kernel

theorem check_5565 : SourceCertificateFamily.RightNormalized.check cell_5565 = true := by
  decide +kernel

theorem check_5566 : SourceCertificateFamily.RightNormalized.check cell_5566 = true := by
  decide +kernel

theorem check_5567 : SourceCertificateFamily.RightNormalized.check cell_5567 = true := by
  decide +kernel

theorem check_5568 : SourceCertificateFamily.RightNormalized.check cell_5568 = true := by
  decide +kernel

theorem check_5569 : SourceCertificateFamily.RightNormalized.check cell_5569 = true := by
  decide +kernel

theorem check_5570 : SourceCertificateFamily.RightNormalized.check cell_5570 = true := by
  decide +kernel

theorem check_5571 : SourceCertificateFamily.RightNormalized.check cell_5571 = true := by
  decide +kernel

theorem check_5572 : SourceCertificateFamily.RightNormalized.check cell_5572 = true := by
  decide +kernel

theorem check_5573 : SourceCertificateFamily.RightNormalized.check cell_5573 = true := by
  decide +kernel

theorem check_5574 : SourceCertificateFamily.RightNormalized.check cell_5574 = true := by
  decide +kernel

theorem check_5575 : SourceCertificateFamily.RightNormalized.check cell_5575 = true := by
  decide +kernel

theorem check_5576 : SourceCertificateFamily.RightNormalized.check cell_5576 = true := by
  decide +kernel

theorem check_5577 : SourceCertificateFamily.RightNormalized.check cell_5577 = true := by
  decide +kernel

theorem check_5578 : SourceCertificateFamily.RightNormalized.check cell_5578 = true := by
  decide +kernel

theorem check_5579 : SourceCertificateFamily.RightNormalized.check cell_5579 = true := by
  decide +kernel

theorem check_5580 : SourceCertificateFamily.RightNormalized.check cell_5580 = true := by
  decide +kernel

theorem check_5581 : SourceCertificateFamily.RightNormalized.check cell_5581 = true := by
  decide +kernel

theorem check_5582 : SourceCertificateFamily.RightNormalized.check cell_5582 = true := by
  decide +kernel

theorem check_5583 : SourceCertificateFamily.RightNormalized.check cell_5583 = true := by
  decide +kernel

theorem check_5584 : SourceCertificateFamily.RightNormalized.check cell_5584 = true := by
  decide +kernel

theorem check_5585 : SourceCertificateFamily.RightNormalized.check cell_5585 = true := by
  decide +kernel

theorem check_5586 : SourceCertificateFamily.RightNormalized.check cell_5586 = true := by
  decide +kernel

theorem check_5587 : SourceCertificateFamily.RightNormalized.check cell_5587 = true := by
  decide +kernel

theorem check_5588 : SourceCertificateFamily.RightNormalized.check cell_5588 = true := by
  decide +kernel

theorem check_5589 : SourceCertificateFamily.RightNormalized.check cell_5589 = true := by
  decide +kernel

theorem check_5590 : SourceCertificateFamily.RightNormalized.check cell_5590 = true := by
  decide +kernel

theorem check_5591 : SourceCertificateFamily.RightNormalized.check cell_5591 = true := by
  decide +kernel

theorem check_5592 : SourceCertificateFamily.RightNormalized.check cell_5592 = true := by
  decide +kernel

theorem check_5593 : SourceCertificateFamily.RightNormalized.check cell_5593 = true := by
  decide +kernel

theorem check_5594 : SourceCertificateFamily.RightNormalized.check cell_5594 = true := by
  decide +kernel

theorem check_5595 : SourceCertificateFamily.RightNormalized.check cell_5595 = true := by
  decide +kernel

theorem check_5596 : SourceCertificateFamily.RightNormalized.check cell_5596 = true := by
  decide +kernel

theorem check_5597 : SourceCertificateFamily.RightNormalized.check cell_5597 = true := by
  decide +kernel

theorem check_5598 : SourceCertificateFamily.RightNormalized.check cell_5598 = true := by
  decide +kernel

theorem check_5599 : SourceCertificateFamily.RightNormalized.check cell_5599 = true := by
  decide +kernel

def cells : List Cell := [cell_5550, cell_5551, cell_5552, cell_5553, cell_5554, cell_5555, cell_5556, cell_5557, cell_5558, cell_5559, cell_5560, cell_5561, cell_5562, cell_5563, cell_5564, cell_5565, cell_5566, cell_5567, cell_5568, cell_5569, cell_5570, cell_5571, cell_5572, cell_5573, cell_5574, cell_5575, cell_5576, cell_5577, cell_5578, cell_5579, cell_5580, cell_5581, cell_5582, cell_5583, cell_5584, cell_5585, cell_5586, cell_5587, cell_5588, cell_5589, cell_5590, cell_5591, cell_5592, cell_5593, cell_5594, cell_5595, cell_5596, cell_5597, cell_5598, cell_5599]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5550, SourceCertificateFamily.of_right_checked check_5551, SourceCertificateFamily.of_right_checked check_5552, SourceCertificateFamily.of_right_checked check_5553, SourceCertificateFamily.of_right_checked check_5554, SourceCertificateFamily.of_right_checked check_5555, SourceCertificateFamily.of_right_checked check_5556, SourceCertificateFamily.of_right_checked check_5557, SourceCertificateFamily.of_right_checked check_5558, SourceCertificateFamily.of_right_checked check_5559, SourceCertificateFamily.of_right_checked check_5560, SourceCertificateFamily.of_right_checked check_5561, SourceCertificateFamily.of_right_checked check_5562, SourceCertificateFamily.of_right_checked check_5563, SourceCertificateFamily.of_right_checked check_5564, SourceCertificateFamily.of_right_checked check_5565, SourceCertificateFamily.of_right_checked check_5566, SourceCertificateFamily.of_right_checked check_5567, SourceCertificateFamily.of_right_checked check_5568, SourceCertificateFamily.of_right_checked check_5569, SourceCertificateFamily.of_right_checked check_5570, SourceCertificateFamily.of_right_checked check_5571, SourceCertificateFamily.of_right_checked check_5572, SourceCertificateFamily.of_right_checked check_5573, SourceCertificateFamily.of_right_checked check_5574, SourceCertificateFamily.of_right_checked check_5575, SourceCertificateFamily.of_right_checked check_5576, SourceCertificateFamily.of_right_checked check_5577, SourceCertificateFamily.of_right_checked check_5578, SourceCertificateFamily.of_right_checked check_5579, SourceCertificateFamily.of_right_checked check_5580, SourceCertificateFamily.of_right_checked check_5581, SourceCertificateFamily.of_right_checked check_5582, SourceCertificateFamily.of_right_checked check_5583, SourceCertificateFamily.of_right_checked check_5584, SourceCertificateFamily.of_right_checked check_5585, SourceCertificateFamily.of_right_checked check_5586, SourceCertificateFamily.of_right_checked check_5587, SourceCertificateFamily.of_right_checked check_5588, SourceCertificateFamily.of_right_checked check_5589, SourceCertificateFamily.of_right_checked check_5590, SourceCertificateFamily.of_right_checked check_5591, SourceCertificateFamily.of_right_checked check_5592, SourceCertificateFamily.of_right_checked check_5593, SourceCertificateFamily.of_right_checked check_5594, SourceCertificateFamily.of_right_checked check_5595, SourceCertificateFamily.of_right_checked check_5596, SourceCertificateFamily.of_right_checked check_5597, SourceCertificateFamily.of_right_checked check_5598, SourceCertificateFamily.of_right_checked check_5599, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0111
