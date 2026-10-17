import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0165
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(32093750000000001 / 100000000000000000 : ℚ), (32100000000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (9744946178973 / 12500000000000 : ℚ)
  w := (2127576690919 / 1250000000000 : ℚ)
  center := (32096875000000001 / 100000000000000000 : ℚ)
  supportValue := (7063707656026571 / 10000000000000000 : ℚ)
  supportSlope := (-1044264713014087 / 200000000000000 : ℚ)
  oldCenter := (7063707656026571 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_799
  oldLo := (35275000000000001 / 50000000000000000 : ℚ)
  oldHi := (70600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1638, piece_1639]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8250 : Cell := { cellDefaults with
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (70600000000000007 / 100000000000000000 : ℚ)
  oldHi := (3534357541899441 / 5000000000000000 : ℚ)
  oldPieces := [piece_1638, piece_1639]
}

def cell_8251 : Cell := { cellDefaults with
  domain := ⟨(32100000000000001 / 100000000000000000 : ℚ), (32106250000000001 / 100000000000000000 : ℚ)⟩
  center := (32103125000000001 / 100000000000000000 : ℚ)
  supportValue := (7073549898896461 / 10000000000000000 : ℚ)
  supportSlope := (-2614102083834169 / 500000000000000 : ℚ)
  oldCenter := (7073549898896461 / 10000000000000000 : ℚ)
  oldLo := (70700000000000007 / 100000000000000000 : ℚ)
  oldHi := (70800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1641, piece_1642]
}

def cell_8252 : Cell := { cellDefaults with
  domain := ⟨(32106250000000001 / 100000000000000000 : ℚ), (32112500000000001 / 100000000000000000 : ℚ)⟩
  center := (32109375000000001 / 100000000000000000 : ℚ)
  supportValue := (1414056688774223 / 2000000000000000 : ℚ)
  supportSlope := (-2612309105726851 / 500000000000000 : ℚ)
  oldCenter := (1414056688774223 / 2000000000000000 : ℚ)
  oldLo := (35325000000000001 / 50000000000000000 : ℚ)
  oldHi := (35375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1639, piece_1640, piece_1641]
}

def cell_8253 : Cell := { cellDefaults with
  domain := ⟨(32112500000000001 / 100000000000000000 : ℚ), (32118750000000001 / 100000000000000000 : ℚ)⟩
  center := (32115625000000001 / 100000000000000000 : ℚ)
  supportValue := (1413403819674993 / 2000000000000000 : ℚ)
  supportSlope := (-1044217989606011 / 200000000000000 : ℚ)
  oldCenter := (1413403819674993 / 2000000000000000 : ℚ)
  oldLo := (35325000000000001 / 50000000000000000 : ℚ)
  oldHi := (3534357541899441 / 5000000000000000 : ℚ)
  oldPieces := [piece_1639]
}

def cell_8254 : Cell := { cellDefaults with
  domain := ⟨(32118750000000001 / 100000000000000000 : ℚ), (32125000000000001 / 100000000000000000 : ℚ)⟩
  center := (32121875000000001 / 100000000000000000 : ℚ)
  supportValue := (7063756992186477 / 10000000000000000 : ℚ)
  supportSlope := (-5217702837132521 / 1000000000000000 : ℚ)
  oldCenter := (7063756992186477 / 10000000000000000 : ℚ)
  oldLo := (70600000000000007 / 100000000000000000 : ℚ)
  oldHi := (3534357541899441 / 5000000000000000 : ℚ)
  oldPieces := [piece_1638, piece_1639]
}

def cell_8255 : Cell := { cellDefaults with
  domain := ⟨(32125000000000001 / 100000000000000000 : ℚ), (32131250000000001 / 100000000000000000 : ℚ)⟩
  center := (32128125000000001 / 100000000000000000 : ℚ)
  supportValue := (7060497079853189 / 10000000000000000 : ℚ)
  supportSlope := (-2607061255078591 / 500000000000000 : ℚ)
  oldCenter := (7060497079853189 / 10000000000000000 : ℚ)
  oldHi := (35325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1637, piece_1638]
}

def cell_8256 : Cell := { cellDefaults with
  domain := ⟨(32131250000000001 / 100000000000000000 : ℚ), (32137500000000001 / 100000000000000000 : ℚ)⟩
  center := (32134375000000001 / 100000000000000000 : ℚ)
  supportValue := (705723929211637 / 1000000000000000 : ℚ)
  supportSlope := (-1042126357381079 / 200000000000000 : ℚ)
  oldCenter := (705723929211637 / 1000000000000000 : ℚ)
  oldPieces := [piece_1637]
}

def cell_8257 : Cell := { cellDefaults with
  domain := ⟨(32137500000000001 / 100000000000000000 : ℚ), (32143750000000001 / 100000000000000000 : ℚ)⟩
  center := (32140625000000001 / 100000000000000000 : ℚ)
  supportValue := (1763495935075279 / 2500000000000000 : ℚ)
  supportSlope := (-325451215607897 / 62500000000000 : ℚ)
  oldCenter := (1763495935075279 / 2500000000000000 : ℚ)
  oldLo := (70500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1636, piece_1637]
}

def cell_8258 : Cell := { cellDefaults with
  domain := ⟨(32143750000000001 / 100000000000000000 : ℚ), (32150000000000001 / 100000000000000000 : ℚ)⟩
  center := (32146875000000001 / 100000000000000000 : ℚ)
  supportValue := (3525365178787157 / 5000000000000000 : ℚ)
  supportSlope := (-5203644824135267 / 1000000000000000 : ℚ)
  oldCenter := (3525365178787157 / 5000000000000000 : ℚ)
  oldLo := (35225000000000001 / 50000000000000000 : ℚ)
  oldHi := (35275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1635, piece_1636]
}

def cell_8259 : Cell := { cellDefaults with
  domain := ⟨(32150000000000001 / 100000000000000000 : ℚ), (32156250000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32153125000000001 / 100000000000000000 : ℚ)
  supportValue := (7060543286145151 / 10000000000000000 : ℚ)
  supportSlope := (-5210492798603639 / 1000000000000000 : ℚ)
  oldCenter := (7060543286145151 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldHi := (35325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1637, piece_1638]
}

def cell_8260 : Cell := { cellDefaults with
  domain := ⟨(32156250000000001 / 100000000000000000 : ℚ), (32162500000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32159375000000001 / 100000000000000000 : ℚ)
  supportValue := (3528643882037649 / 5000000000000000 : ℚ)
  supportSlope := (-130175454886583 / 25000000000000 : ℚ)
  oldCenter := (3528643882037649 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldPieces := [piece_1637]
}

def cell_8261 : Cell := { cellDefaults with
  domain := ⟨(32162500000000001 / 100000000000000000 : ℚ), (32168750000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32165625000000001 / 100000000000000000 : ℚ)
  supportValue := (7054034472340783 / 10000000000000000 : ℚ)
  supportSlope := (-650450995137053 / 125000000000000 : ℚ)
  oldCenter := (7054034472340783 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldLo := (70500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1636, piece_1637]
}

def cell_8262 : Cell := { cellDefaults with
  domain := ⟨(32168750000000001 / 100000000000000000 : ℚ), (32175000000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32171875000000001 / 100000000000000000 : ℚ)
  supportValue := (7050783339316593 / 10000000000000000 : ℚ)
  supportSlope := (-2600021130415797 / 500000000000000 : ℚ)
  oldCenter := (7050783339316593 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldLo := (35225000000000001 / 50000000000000000 : ℚ)
  oldHi := (35275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1635, piece_1636]
}

def cell_8263 : Cell := { cellDefaults with
  domain := ⟨(32175000000000001 / 100000000000000000 : ℚ), (32181250000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32178125000000001 / 100000000000000000 : ℚ)
  supportValue := (7047534346588773 / 10000000000000000 : ℚ)
  supportSlope := (-5196609736387359 / 1000000000000000 : ℚ)
  oldCenter := (7047534346588773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldLo := (35225000000000001 / 50000000000000000 : ℚ)
  oldHi := (70500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1635]
}

def cell_8264 : Cell := { cellDefaults with
  domain := ⟨(32181250000000001 / 100000000000000000 : ℚ), (32187500000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32184375000000001 / 100000000000000000 : ℚ)
  supportValue := (176107189516293 / 250000000000000 : ℚ)
  supportSlope := (-519317028104993 / 100000000000000 : ℚ)
  oldCenter := (176107189516293 / 250000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldLo := (70400000000000007 / 100000000000000000 : ℚ)
  oldHi := (70500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1634, piece_1635]
}

def cell_8265 : Cell := { cellDefaults with
  domain := ⟨(32187500000000001 / 100000000000000000 : ℚ), (32193750000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32190625000000001 / 100000000000000000 : ℚ)
  supportValue := (704104294619783 / 1000000000000000 : ℚ)
  supportSlope := (-5189610248059751 / 1000000000000000 : ℚ)
  oldCenter := (704104294619783 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldLo := (70350000000000001 / 100000000000000000 : ℚ)
  oldHi := (35225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1633, piece_1634]
}

def cell_8266 : Cell := { cellDefaults with
  domain := ⟨(32193750000000001 / 100000000000000000 : ℚ), (32200000000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32196875000000001 / 100000000000000000 : ℚ)
  supportValue := (879725058904437 / 1250000000000000 : ℚ)
  supportSlope := (-129655569383047 / 25000000000000 : ℚ)
  oldCenter := (879725058904437 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldLo := (70350000000000001 / 100000000000000000 : ℚ)
  oldHi := (70400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1633]
}

def cell_8267 : Cell := { cellDefaults with
  domain := ⟨(32200000000000001 / 100000000000000000 : ℚ), (32206250000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32203125000000001 / 100000000000000000 : ℚ)
  supportValue := (3523792183714923 / 5000000000000000 : ℚ)
  supportSlope := (-5193005286834307 / 1000000000000000 : ℚ)
  oldCenter := (3523792183714923 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (35225000000000001 / 50000000000000000 : ℚ)
  oldHi := (70500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1635]
}

def cell_8268 : Cell := { cellDefaults with
  domain := ⟨(32206250000000001 / 100000000000000000 : ℚ), (32212500000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32209375000000001 / 100000000000000000 : ℚ)
  supportValue := (1761084963998661 / 2500000000000000 : ℚ)
  supportSlope := (-1037913548562841 / 200000000000000 : ℚ)
  oldCenter := (1761084963998661 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70400000000000007 / 100000000000000000 : ℚ)
  oldHi := (70500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1634, piece_1635]
}

def cell_8269 : Cell := { cellDefaults with
  domain := ⟨(32212500000000001 / 100000000000000000 : ℚ), (32218750000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32215625000000001 / 100000000000000000 : ℚ)
  supportValue := (7041097465484579 / 10000000000000000 : ℚ)
  supportSlope := (-5186016683076389 / 1000000000000000 : ℚ)
  oldCenter := (7041097465484579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70350000000000001 / 100000000000000000 : ℚ)
  oldHi := (35225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1633, piece_1634]
}

def cell_8270 : Cell := { cellDefaults with
  domain := ⟨(32218750000000001 / 100000000000000000 : ℚ), (32225000000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32221875000000001 / 100000000000000000 : ℚ)
  supportValue := (7037857233590119 / 10000000000000000 : ℚ)
  supportSlope := (-5182646586987971 / 1000000000000000 : ℚ)
  oldCenter := (7037857233590119 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70350000000000001 / 100000000000000000 : ℚ)
  oldHi := (70400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1633]
}

def cell_8271 : Cell := { cellDefaults with
  domain := ⟨(32225000000000001 / 100000000000000000 : ℚ), (32231250000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32228125000000001 / 100000000000000000 : ℚ)
  supportValue := (1758654804835091 / 2500000000000000 : ℚ)
  supportSlope := (-2589587916462577 / 500000000000000 : ℚ)
  oldCenter := (1758654804835091 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70300000000000007 / 100000000000000000 : ℚ)
  oldHi := (70400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1632, piece_1633]
}

def cell_8272 : Cell := { cellDefaults with
  domain := ⟨(32231250000000001 / 100000000000000000 : ℚ), (32237500000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32234375000000001 / 100000000000000000 : ℚ)
  supportValue := (3515691648165621 / 5000000000000000 : ℚ)
  supportSlope := (-5175630366291983 / 1000000000000000 : ℚ)
  oldCenter := (3515691648165621 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70250000000000001 / 100000000000000000 : ℚ)
  oldHi := (70350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1631, piece_1632]
}

def cell_8273 : Cell := { cellDefaults with
  domain := ⟨(32237500000000001 / 100000000000000000 : ℚ), (32243750000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32240625000000001 / 100000000000000000 : ℚ)
  supportValue := (7028149553644963 / 10000000000000000 : ℚ)
  supportSlope := (-5172309254021457 / 1000000000000000 : ℚ)
  oldCenter := (7028149553644963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70250000000000001 / 100000000000000000 : ℚ)
  oldHi := (70300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1631]
}

def cell_8274 : Cell := { cellDefaults with
  domain := ⟨(32243750000000001 / 100000000000000000 : ℚ), (32250000000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32246875000000001 / 100000000000000000 : ℚ)
  supportValue := (702491802514729 / 1000000000000000 : ℚ)
  supportSlope := (-1292200550606637 / 250000000000000 : ℚ)
  oldCenter := (702491802514729 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70200000000000007 / 100000000000000000 : ℚ)
  oldHi := (70300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1630, piece_1631]
}

def cell_8275 : Cell := { cellDefaults with
  domain := ⟨(32250000000000001 / 100000000000000000 : ℚ), (32256250000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32253125000000001 / 100000000000000000 : ℚ)
  supportValue := (1406934589037699 / 2000000000000000 : ℚ)
  supportSlope := (-258779094732553 / 50000000000000 : ℚ)
  oldCenter := (1406934589037699 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70300000000000007 / 100000000000000000 : ℚ)
  oldHi := (70400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1632, piece_1633]
}

def cell_8276 : Cell := { cellDefaults with
  domain := ⟨(32256250000000001 / 100000000000000000 : ℚ), (32262500000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32259375000000001 / 100000000000000000 : ℚ)
  supportValue := (7031439260608923 / 10000000000000000 : ℚ)
  supportSlope := (-517204538966709 / 100000000000000 : ℚ)
  oldCenter := (7031439260608923 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70250000000000001 / 100000000000000000 : ℚ)
  oldHi := (70350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1631, piece_1632]
}

def cell_8277 : Cell := { cellDefaults with
  domain := ⟨(32262500000000001 / 100000000000000000 : ℚ), (32268750000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32265625000000001 / 100000000000000000 : ℚ)
  supportValue := (3514103877812723 / 5000000000000000 : ℚ)
  supportSlope := (-5168741874626903 / 1000000000000000 : ℚ)
  oldCenter := (3514103877812723 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70250000000000001 / 100000000000000000 : ℚ)
  oldHi := (70300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1631]
}

def cell_8278 : Cell := { cellDefaults with
  domain := ⟨(32268750000000001 / 100000000000000000 : ℚ), (32275000000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32271875000000001 / 100000000000000000 : ℚ)
  supportValue := (3512489229618407 / 5000000000000000 : ℚ)
  supportSlope := (-5165235475207197 / 1000000000000000 : ℚ)
  oldCenter := (3512489229618407 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70200000000000007 / 100000000000000000 : ℚ)
  oldHi := (70300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1630, piece_1631]
}

def cell_8279 : Cell := { cellDefaults with
  domain := ⟨(32275000000000001 / 100000000000000000 : ℚ), (32281250000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32278125000000001 / 100000000000000000 : ℚ)
  supportValue := (438859450701607 / 625000000000000 : ℚ)
  supportSlope := (-5161724407102497 / 1000000000000000 : ℚ)
  oldCenter := (438859450701607 / 625000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70200000000000007 / 100000000000000000 : ℚ)
  oldHi := (70250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1630]
}

def cell_8280 : Cell := { cellDefaults with
  domain := ⟨(32281250000000001 / 100000000000000000 : ℚ), (32287500000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32284375000000001 / 100000000000000000 : ℚ)
  supportValue := (7018526167046667 / 10000000000000000 : ℚ)
  supportSlope := (-515843415172057 / 100000000000000 : ℚ)
  oldCenter := (7018526167046667 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70150000000000001 / 100000000000000000 : ℚ)
  oldHi := (70250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1629, piece_1630]
}

def cell_8281 : Cell := { cellDefaults with
  domain := ⟨(32287500000000001 / 100000000000000000 : ℚ), (32293750000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32290625000000001 / 100000000000000000 : ℚ)
  supportValue := (7015303300502763 / 10000000000000000 : ℚ)
  supportSlope := (-5154907396288877 / 1000000000000000 : ℚ)
  oldCenter := (7015303300502763 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (140268156424581 / 200000000000000 : ℚ)
  oldHi := (70200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1628, piece_1629]
}

def cell_8282 : Cell := { cellDefaults with
  domain := ⟨(32293750000000001 / 100000000000000000 : ℚ), (32300000000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32296875000000001 / 100000000000000000 : ℚ)
  supportValue := (1753020625708971 / 2500000000000000 : ℚ)
  supportSlope := (-5151451959836351 / 1000000000000000 : ℚ)
  oldCenter := (1753020625708971 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70100000000000007 / 100000000000000000 : ℚ)
  oldHi := (70150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1627, piece_1628]
}

def cell_8283 : Cell := { cellDefaults with
  domain := ⟨(32300000000000001 / 100000000000000000 : ℚ), (32306250000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32303125000000001 / 100000000000000000 : ℚ)
  supportValue := (7021809038799257 / 10000000000000000 : ℚ)
  supportSlope := (-5158159103093141 / 1000000000000000 : ℚ)
  oldCenter := (7021809038799257 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (70200000000000007 / 100000000000000000 : ℚ)
  oldHi := (70250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1630]
}

def cell_8284 : Cell := { cellDefaults with
  domain := ⟨(32306250000000001 / 100000000000000000 : ℚ), (32312500000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32309375000000001 / 100000000000000000 : ℚ)
  supportValue := (1754646556436349 / 2500000000000000 : ℚ)
  supportSlope := (-5154868437220017 / 1000000000000000 : ℚ)
  oldCenter := (1754646556436349 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (70150000000000001 / 100000000000000000 : ℚ)
  oldHi := (70250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1629, piece_1630]
}

def cell_8285 : Cell := { cellDefaults with
  domain := ⟨(32312500000000001 / 100000000000000000 : ℚ), (32318750000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32315625000000001 / 100000000000000000 : ℚ)
  supportValue := (7015365579766533 / 10000000000000000 : ℚ)
  supportSlope := (-5151349497587887 / 1000000000000000 : ℚ)
  oldCenter := (7015365579766533 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (140268156424581 / 200000000000000 : ℚ)
  oldHi := (70200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1628, piece_1629]
}

def cell_8286 : Cell := { cellDefaults with
  domain := ⟨(32318750000000001 / 100000000000000000 : ℚ), (32325000000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32321875000000001 / 100000000000000000 : ℚ)
  supportValue := (7012147003253669 / 10000000000000000 : ℚ)
  supportSlope := (-1029582282739483 / 200000000000000 : ℚ)
  oldCenter := (7012147003253669 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (70100000000000007 / 100000000000000000 : ℚ)
  oldHi := (70150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1627, piece_1628]
}

def cell_8287 : Cell := { cellDefaults with
  domain := ⟨(32325000000000001 / 100000000000000000 : ℚ), (32331250000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32328125000000001 / 100000000000000000 : ℚ)
  supportValue := (3504465311915937 / 5000000000000000 : ℚ)
  supportSlope := (-1286144546072343 / 250000000000000 : ℚ)
  oldCenter := (3504465311915937 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (70050000000000001 / 100000000000000000 : ℚ)
  oldHi := (140268156424581 / 200000000000000 : ℚ)
  oldPieces := [piece_1626, piece_1627]
}

def cell_8288 : Cell := { cellDefaults with
  domain := ⟨(32331250000000001 / 100000000000000000 : ℚ), (32337500000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32334375000000001 / 100000000000000000 : ℚ)
  supportValue := (1401143275181667 / 2000000000000000 : ℚ)
  supportSlope := (-10282129718206079 / 2000000000000000 : ℚ)
  oldCenter := (1401143275181667 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (70000000000000007 / 100000000000000000 : ℚ)
  oldHi := (70100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1625, piece_1626]
}

def cell_8289 : Cell := { cellDefaults with
  domain := ⟨(32337500000000001 / 100000000000000000 : ℚ), (32343750000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32340625000000001 / 100000000000000000 : ℚ)
  supportValue := (7002504225391619 / 10000000000000000 : ℚ)
  supportSlope := (-1027536807180951 / 200000000000000 : ℚ)
  oldCenter := (7002504225391619 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (70000000000000007 / 100000000000000000 : ℚ)
  oldHi := (70050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1625]
}

def cell_8290 : Cell := { cellDefaults with
  domain := ⟨(32343750000000001 / 100000000000000000 : ℚ), (32350000000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32346875000000001 / 100000000000000000 : ℚ)
  supportValue := (1399858853793217 / 2000000000000000 : ℚ)
  supportSlope := (-5134304898955833 / 1000000000000000 : ℚ)
  oldCenter := (1399858853793217 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (69950000000000001 / 100000000000000000 : ℚ)
  oldHi := (70050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1624, piece_1625]
}

def cell_8291 : Cell := { cellDefaults with
  domain := ⟨(32350000000000001 / 100000000000000000 : ℚ), (32356250000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32353125000000001 / 100000000000000000 : ℚ)
  supportValue := (700899159457981 / 1000000000000000 : ℚ)
  supportSlope := (-5141020152628073 / 1000000000000000 : ℚ)
  oldCenter := (700899159457981 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (70050000000000001 / 100000000000000000 : ℚ)
  oldHi := (140268156424581 / 200000000000000 : ℚ)
  oldPieces := [piece_1626, piece_1627]
}

def cell_8292 : Cell := { cellDefaults with
  domain := ⟨(32356250000000001 / 100000000000000000 : ℚ), (32362500000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32359375000000001 / 100000000000000000 : ℚ)
  supportValue := (700577956192191 / 1000000000000000 : ℚ)
  supportSlope := (-2568757966770363 / 500000000000000 : ℚ)
  oldCenter := (700577956192191 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (70000000000000007 / 100000000000000000 : ℚ)
  oldHi := (70100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1625, piece_1626]
}

def cell_8293 : Cell := { cellDefaults with
  domain := ⟨(32362500000000001 / 100000000000000000 : ℚ), (32368750000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32365625000000001 / 100000000000000000 : ℚ)
  supportValue := (3501284813265849 / 5000000000000000 : ℚ)
  supportSlope := (-5134153929866159 / 1000000000000000 : ℚ)
  oldCenter := (3501284813265849 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (70000000000000007 / 100000000000000000 : ℚ)
  oldHi := (70050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1625]
}

def cell_8294 : Cell := { cellDefaults with
  domain := ⟨(32368750000000001 / 100000000000000000 : ℚ), (32375000000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32371875000000001 / 100000000000000000 : ℚ)
  supportValue := (1749840469887079 / 2500000000000000 : ℚ)
  supportSlope := (-5130774510764269 / 1000000000000000 : ℚ)
  oldCenter := (1749840469887079 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (69950000000000001 / 100000000000000000 : ℚ)
  oldHi := (70050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1624, piece_1625]
}

def cell_8295 : Cell := { cellDefaults with
  domain := ⟨(32375000000000001 / 100000000000000000 : ℚ), (32381250000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32378125000000001 / 100000000000000000 : ℚ)
  supportValue := (3498078107304079 / 5000000000000000 : ℚ)
  supportSlope := (-5127275825049793 / 1000000000000000 : ℚ)
  oldCenter := (3498078107304079 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (69900000000000007 / 100000000000000000 : ℚ)
  oldHi := (70000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1623, piece_1624]
}

def cell_8296 : Cell := { cellDefaults with
  domain := ⟨(32381250000000001 / 100000000000000000 : ℚ), (32387500000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32384375000000001 / 100000000000000000 : ℚ)
  supportValue := (3496476338542011 / 5000000000000000 : ℚ)
  supportSlope := (-1280994040052441 / 250000000000000 : ℚ)
  oldCenter := (3496476338542011 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (69900000000000007 / 100000000000000000 : ℚ)
  oldHi := (69950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1623]
}

def cell_8297 : Cell := { cellDefaults with
  domain := ⟨(32387500000000001 / 100000000000000000 : ℚ), (32393750000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32390625000000001 / 100000000000000000 : ℚ)
  supportValue := (6989751324486181 / 10000000000000000 : ℚ)
  supportSlope := (-320034192144103 / 62500000000000 : ℚ)
  oldCenter := (6989751324486181 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (69850000000000001 / 100000000000000000 : ℚ)
  oldHi := (69950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1622, piece_1623]
}

def cell_8298 : Cell := { cellDefaults with
  domain := ⟨(32393750000000001 / 100000000000000000 : ℚ), (32400000000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32396875000000001 / 100000000000000000 : ℚ)
  supportValue := (6986552014002481 / 10000000000000000 : ℚ)
  supportSlope := (-5117053867760291 / 1000000000000000 : ℚ)
  oldCenter := (6986552014002481 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (34900000000000003 / 50000000000000000 : ℚ)
  oldHi := (69900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1621, piece_1622]
}

def cell_8299 : Cell := { cellDefaults with
  domain := ⟨(32400000000000001 / 100000000000000000 : ℚ), (32406250000000001 / 100000000000000000 : ℚ)⟩
  r := (1940273265221 / 2500000000000 : ℚ)
  w := (8482170442379 / 5000000000000 : ℚ)
  center := (32403125000000001 / 100000000000000000 : ℚ)
  supportValue := (3498110394885799 / 5000000000000000 : ℚ)
  supportSlope := (-1280933887751523 / 250000000000000 : ℚ)
  oldCenter := (3498110394885799 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_805
  oldLo := (69900000000000007 / 100000000000000000 : ℚ)
  oldHi := (70000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1623, piece_1624]
}

theorem check_8250 : cell_8250.check = true := by
  decide +kernel

theorem check_8251 : cell_8251.check = true := by
  decide +kernel

theorem check_8252 : cell_8252.check = true := by
  decide +kernel

theorem check_8253 : cell_8253.check = true := by
  decide +kernel

theorem check_8254 : cell_8254.check = true := by
  decide +kernel

theorem check_8255 : cell_8255.check = true := by
  decide +kernel

theorem check_8256 : cell_8256.check = true := by
  decide +kernel

theorem check_8257 : cell_8257.check = true := by
  decide +kernel

theorem check_8258 : cell_8258.check = true := by
  decide +kernel

theorem check_8259 : cell_8259.check = true := by
  decide +kernel

theorem check_8260 : cell_8260.check = true := by
  decide +kernel

theorem check_8261 : cell_8261.check = true := by
  decide +kernel

theorem check_8262 : cell_8262.check = true := by
  decide +kernel

theorem check_8263 : cell_8263.check = true := by
  decide +kernel

theorem check_8264 : cell_8264.check = true := by
  decide +kernel

theorem check_8265 : cell_8265.check = true := by
  decide +kernel

theorem check_8266 : cell_8266.check = true := by
  decide +kernel

theorem check_8267 : cell_8267.check = true := by
  decide +kernel

theorem check_8268 : cell_8268.check = true := by
  decide +kernel

theorem check_8269 : cell_8269.check = true := by
  decide +kernel

theorem check_8270 : cell_8270.check = true := by
  decide +kernel

theorem check_8271 : cell_8271.check = true := by
  decide +kernel

theorem check_8272 : cell_8272.check = true := by
  decide +kernel

theorem check_8273 : cell_8273.check = true := by
  decide +kernel

theorem check_8274 : cell_8274.check = true := by
  decide +kernel

theorem check_8275 : cell_8275.check = true := by
  decide +kernel

theorem check_8276 : cell_8276.check = true := by
  decide +kernel

theorem check_8277 : cell_8277.check = true := by
  decide +kernel

theorem check_8278 : cell_8278.check = true := by
  decide +kernel

theorem check_8279 : cell_8279.check = true := by
  decide +kernel

theorem check_8280 : cell_8280.check = true := by
  decide +kernel

theorem check_8281 : cell_8281.check = true := by
  decide +kernel

theorem check_8282 : cell_8282.check = true := by
  decide +kernel

theorem check_8283 : cell_8283.check = true := by
  decide +kernel

theorem check_8284 : cell_8284.check = true := by
  decide +kernel

theorem check_8285 : cell_8285.check = true := by
  decide +kernel

theorem check_8286 : cell_8286.check = true := by
  decide +kernel

theorem check_8287 : cell_8287.check = true := by
  decide +kernel

theorem check_8288 : cell_8288.check = true := by
  decide +kernel

theorem check_8289 : cell_8289.check = true := by
  decide +kernel

theorem check_8290 : cell_8290.check = true := by
  decide +kernel

theorem check_8291 : cell_8291.check = true := by
  decide +kernel

theorem check_8292 : cell_8292.check = true := by
  decide +kernel

theorem check_8293 : cell_8293.check = true := by
  decide +kernel

theorem check_8294 : cell_8294.check = true := by
  decide +kernel

theorem check_8295 : cell_8295.check = true := by
  decide +kernel

theorem check_8296 : cell_8296.check = true := by
  decide +kernel

theorem check_8297 : cell_8297.check = true := by
  decide +kernel

theorem check_8298 : cell_8298.check = true := by
  decide +kernel

theorem check_8299 : cell_8299.check = true := by
  decide +kernel

def cells : List Cell := [cell_8250, cell_8251, cell_8252, cell_8253, cell_8254, cell_8255, cell_8256, cell_8257, cell_8258, cell_8259, cell_8260, cell_8261, cell_8262, cell_8263, cell_8264, cell_8265, cell_8266, cell_8267, cell_8268, cell_8269, cell_8270, cell_8271, cell_8272, cell_8273, cell_8274, cell_8275, cell_8276, cell_8277, cell_8278, cell_8279, cell_8280, cell_8281, cell_8282, cell_8283, cell_8284, cell_8285, cell_8286, cell_8287, cell_8288, cell_8289, cell_8290, cell_8291, cell_8292, cell_8293, cell_8294, cell_8295, cell_8296, cell_8297, cell_8298, cell_8299]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8250, check_8251, check_8252, check_8253, check_8254, check_8255, check_8256, check_8257, check_8258, check_8259, check_8260, check_8261, check_8262, check_8263, check_8264, check_8265, check_8266, check_8267, check_8268, check_8269, check_8270, check_8271, check_8272, check_8273, check_8274, check_8275, check_8276, check_8277, check_8278, check_8279, check_8280, check_8281, check_8282, check_8283, check_8284, check_8285, check_8286, check_8287, check_8288, check_8289, check_8290, check_8291, check_8292, check_8293, check_8294, check_8295, check_8296, check_8297, check_8298, check_8299, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0165

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0165
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0165
open AnalyticBounds.ExpressionCertificate

theorem linked_8250 : Linked cell_8250 pieces := by
  apply Linked.of_piece piece_798 piece_798_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8250, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1638_mem, piece_1639_mem⟩

theorem linked_8251 : Linked cell_8251 pieces := by
  apply Linked.of_piece piece_799 piece_799_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8251, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1641_mem, piece_1642_mem⟩

theorem linked_8252 : Linked cell_8252 pieces := by
  apply Linked.of_piece piece_799 piece_799_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8252, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1639_mem, ⟨piece_1640_mem, piece_1641_mem⟩⟩

theorem linked_8253 : Linked cell_8253 pieces := by
  apply Linked.of_piece piece_799 piece_799_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8253, List.cons_subset, List.nil_subset, and_true]
  exact piece_1639_mem

theorem linked_8254 : Linked cell_8254 pieces := by
  apply Linked.of_piece piece_799 piece_799_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8254, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1638_mem, piece_1639_mem⟩

theorem linked_8255 : Linked cell_8255 pieces := by
  apply Linked.of_piece piece_799 piece_799_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8255, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1637_mem, piece_1638_mem⟩

theorem linked_8256 : Linked cell_8256 pieces := by
  apply Linked.of_piece piece_799 piece_799_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8256, List.cons_subset, List.nil_subset, and_true]
  exact piece_1637_mem

theorem linked_8257 : Linked cell_8257 pieces := by
  apply Linked.of_piece piece_799 piece_799_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8257, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1636_mem, piece_1637_mem⟩

theorem linked_8258 : Linked cell_8258 pieces := by
  apply Linked.of_piece piece_799 piece_799_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8258, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1635_mem, piece_1636_mem⟩

theorem linked_8259 : Linked cell_8259 pieces := by
  apply Linked.of_piece piece_800 piece_800_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8259, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1637_mem, piece_1638_mem⟩

theorem linked_8260 : Linked cell_8260 pieces := by
  apply Linked.of_piece piece_800 piece_800_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8260, List.cons_subset, List.nil_subset, and_true]
  exact piece_1637_mem

theorem linked_8261 : Linked cell_8261 pieces := by
  apply Linked.of_piece piece_800 piece_800_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8261, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1636_mem, piece_1637_mem⟩

theorem linked_8262 : Linked cell_8262 pieces := by
  apply Linked.of_piece piece_800 piece_800_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8262, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1635_mem, piece_1636_mem⟩

theorem linked_8263 : Linked cell_8263 pieces := by
  apply Linked.of_piece piece_800 piece_800_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8263, List.cons_subset, List.nil_subset, and_true]
  exact piece_1635_mem

theorem linked_8264 : Linked cell_8264 pieces := by
  apply Linked.of_piece piece_800 piece_800_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8264, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1634_mem, piece_1635_mem⟩

theorem linked_8265 : Linked cell_8265 pieces := by
  apply Linked.of_piece piece_800 piece_800_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8265, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1633_mem, piece_1634_mem⟩

theorem linked_8266 : Linked cell_8266 pieces := by
  apply Linked.of_piece piece_800 piece_800_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8266, List.cons_subset, List.nil_subset, and_true]
  exact piece_1633_mem

theorem linked_8267 : Linked cell_8267 pieces := by
  apply Linked.of_piece piece_801 piece_801_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8267, List.cons_subset, List.nil_subset, and_true]
  exact piece_1635_mem

theorem linked_8268 : Linked cell_8268 pieces := by
  apply Linked.of_piece piece_801 piece_801_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8268, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1634_mem, piece_1635_mem⟩

theorem linked_8269 : Linked cell_8269 pieces := by
  apply Linked.of_piece piece_801 piece_801_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8269, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1633_mem, piece_1634_mem⟩

theorem linked_8270 : Linked cell_8270 pieces := by
  apply Linked.of_piece piece_801 piece_801_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8270, List.cons_subset, List.nil_subset, and_true]
  exact piece_1633_mem

theorem linked_8271 : Linked cell_8271 pieces := by
  apply Linked.of_piece piece_801 piece_801_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8271, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1632_mem, piece_1633_mem⟩

theorem linked_8272 : Linked cell_8272 pieces := by
  apply Linked.of_piece piece_801 piece_801_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8272, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1631_mem, piece_1632_mem⟩

theorem linked_8273 : Linked cell_8273 pieces := by
  apply Linked.of_piece piece_801 piece_801_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8273, List.cons_subset, List.nil_subset, and_true]
  exact piece_1631_mem

theorem linked_8274 : Linked cell_8274 pieces := by
  apply Linked.of_piece piece_801 piece_801_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8274, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1630_mem, piece_1631_mem⟩

theorem linked_8275 : Linked cell_8275 pieces := by
  apply Linked.of_piece piece_802 piece_802_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8275, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1632_mem, piece_1633_mem⟩

theorem linked_8276 : Linked cell_8276 pieces := by
  apply Linked.of_piece piece_802 piece_802_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8276, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1631_mem, piece_1632_mem⟩

theorem linked_8277 : Linked cell_8277 pieces := by
  apply Linked.of_piece piece_802 piece_802_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8277, List.cons_subset, List.nil_subset, and_true]
  exact piece_1631_mem

theorem linked_8278 : Linked cell_8278 pieces := by
  apply Linked.of_piece piece_802 piece_802_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8278, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1630_mem, piece_1631_mem⟩

theorem linked_8279 : Linked cell_8279 pieces := by
  apply Linked.of_piece piece_802 piece_802_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8279, List.cons_subset, List.nil_subset, and_true]
  exact piece_1630_mem

theorem linked_8280 : Linked cell_8280 pieces := by
  apply Linked.of_piece piece_802 piece_802_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8280, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1629_mem, piece_1630_mem⟩

theorem linked_8281 : Linked cell_8281 pieces := by
  apply Linked.of_piece piece_802 piece_802_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8281, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1628_mem, piece_1629_mem⟩

theorem linked_8282 : Linked cell_8282 pieces := by
  apply Linked.of_piece piece_802 piece_802_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8282, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1627_mem, piece_1628_mem⟩

theorem linked_8283 : Linked cell_8283 pieces := by
  apply Linked.of_piece piece_803 piece_803_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8283, List.cons_subset, List.nil_subset, and_true]
  exact piece_1630_mem

theorem linked_8284 : Linked cell_8284 pieces := by
  apply Linked.of_piece piece_803 piece_803_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8284, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1629_mem, piece_1630_mem⟩

theorem linked_8285 : Linked cell_8285 pieces := by
  apply Linked.of_piece piece_803 piece_803_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8285, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1628_mem, piece_1629_mem⟩

theorem linked_8286 : Linked cell_8286 pieces := by
  apply Linked.of_piece piece_803 piece_803_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8286, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1627_mem, piece_1628_mem⟩

theorem linked_8287 : Linked cell_8287 pieces := by
  apply Linked.of_piece piece_803 piece_803_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8287, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1626_mem, piece_1627_mem⟩

theorem linked_8288 : Linked cell_8288 pieces := by
  apply Linked.of_piece piece_803 piece_803_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8288, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1625_mem, piece_1626_mem⟩

theorem linked_8289 : Linked cell_8289 pieces := by
  apply Linked.of_piece piece_803 piece_803_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8289, List.cons_subset, List.nil_subset, and_true]
  exact piece_1625_mem

theorem linked_8290 : Linked cell_8290 pieces := by
  apply Linked.of_piece piece_803 piece_803_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8290, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1624_mem, piece_1625_mem⟩

theorem linked_8291 : Linked cell_8291 pieces := by
  apply Linked.of_piece piece_804 piece_804_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8291, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1626_mem, piece_1627_mem⟩

theorem linked_8292 : Linked cell_8292 pieces := by
  apply Linked.of_piece piece_804 piece_804_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8292, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1625_mem, piece_1626_mem⟩

theorem linked_8293 : Linked cell_8293 pieces := by
  apply Linked.of_piece piece_804 piece_804_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8293, List.cons_subset, List.nil_subset, and_true]
  exact piece_1625_mem

theorem linked_8294 : Linked cell_8294 pieces := by
  apply Linked.of_piece piece_804 piece_804_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8294, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1624_mem, piece_1625_mem⟩

theorem linked_8295 : Linked cell_8295 pieces := by
  apply Linked.of_piece piece_804 piece_804_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8295, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1623_mem, piece_1624_mem⟩

theorem linked_8296 : Linked cell_8296 pieces := by
  apply Linked.of_piece piece_804 piece_804_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8296, List.cons_subset, List.nil_subset, and_true]
  exact piece_1623_mem

theorem linked_8297 : Linked cell_8297 pieces := by
  apply Linked.of_piece piece_804 piece_804_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8297, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1622_mem, piece_1623_mem⟩

theorem linked_8298 : Linked cell_8298 pieces := by
  apply Linked.of_piece piece_804 piece_804_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8298, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1621_mem, piece_1622_mem⟩

theorem linked_8299 : Linked cell_8299 pieces := by
  apply Linked.of_piece piece_805 piece_805_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8299, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1623_mem, piece_1624_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0165.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0165.cells,List.forall_mem_cons]
  exact ⟨linked_8250, linked_8251, linked_8252, linked_8253, linked_8254, linked_8255, linked_8256, linked_8257, linked_8258, linked_8259, linked_8260, linked_8261, linked_8262, linked_8263, linked_8264, linked_8265, linked_8266, linked_8267, linked_8268, linked_8269, linked_8270, linked_8271, linked_8272, linked_8273, linked_8274, linked_8275, linked_8276, linked_8277, linked_8278, linked_8279, linked_8280, linked_8281, linked_8282, linked_8283, linked_8284, linked_8285, linked_8286, linked_8287, linked_8288, linked_8289, linked_8290, linked_8291, linked_8292, linked_8293, linked_8294, linked_8295, linked_8296, linked_8297, linked_8298, linked_8299, by simp⟩

theorem covered : covers (32093750000000001 / 100000000000000000 : ℚ) (32406250000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0165.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0165
