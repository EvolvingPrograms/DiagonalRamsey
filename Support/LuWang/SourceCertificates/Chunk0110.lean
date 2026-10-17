import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0110
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(8318749999999999 / 50000000000000000 : ℚ), (8320312499999999 / 50000000000000000 : ℚ)⟩
  branch := .right
  r := (47645959873977 / 50000000000000 : ℚ)
  w := (2004629327693 / 2000000000000 : ℚ)
  center := (8319531249999999 / 50000000000000000 : ℚ)
  supportValue := (1202029217213441 / 2000000000000000 : ℚ)
  supportSlope := (1292852571256553 / 250000000000000 : ℚ)
  oldCenter := (1202029217213441 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_462
  oldLo := (30049999999999999 / 50000000000000000 : ℚ)
  oldHi := (30299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1409]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5500 : Cell := { cellDefaults with
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldLo := (60050000000000003 / 100000000000000000 : ℚ)
  oldHi := (60150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1408, piece_1409]
}

def cell_5501 : Cell := { cellDefaults with
  domain := ⟨(8320312499999999 / 50000000000000000 : ℚ), (8321874999999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8321093749999999 / 50000000000000000 : ℚ)
  supportValue := (3005881104309173 / 5000000000000000 : ℚ)
  supportSlope := (2586010548103701 / 500000000000000 : ℚ)
  oldCenter := (3005881104309173 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldHi := (60150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1409]
}

def cell_5502 : Cell := { cellDefaults with
  domain := ⟨(8321874999999999 / 50000000000000000 : ℚ), (8323437499999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8322656249999999 / 50000000000000000 : ℚ)
  supportValue := (6013378598953323 / 10000000000000000 : ℚ)
  supportSlope := (5172878159719119 / 1000000000000000 : ℚ)
  oldCenter := (6013378598953323 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldHi := (60150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1409]
}

def cell_5503 : Cell := { cellDefaults with
  domain := ⟨(8323437499999999 / 50000000000000000 : ℚ), (8324999999999999 / 50000000000000000 : ℚ)⟩
  r := (95390370838907 / 100000000000000 : ℚ)
  w := (10021340082659 / 10000000000000 : ℚ)
  center := (8324218749999999 / 50000000000000000 : ℚ)
  supportValue := (3007497628584559 / 5000000000000000 : ℚ)
  supportSlope := (1034687351355501 / 200000000000000 : ℚ)
  oldCenter := (3007497628584559 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_461
  oldHi := (6017877094972067 / 10000000000000000 : ℚ)
  oldPieces := [piece_1409, piece_1410]
}

def cell_5504 : Cell := { cellDefaults with
  domain := ⟨(8324999999999999 / 50000000000000000 : ℚ), (8326562499999999 / 50000000000000000 : ℚ)⟩
  center := (8325781249999999 / 50000000000000000 : ℚ)
  supportValue := (3006073370247801 / 5000000000000000 : ℚ)
  supportSlope := (10338868560488379 / 2000000000000000 : ℚ)
  oldCenter := (3006073370247801 / 5000000000000000 : ℚ)
  oldHi := (60150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1409]
}

def cell_5505 : Cell := { cellDefaults with
  domain := ⟨(8326562499999999 / 50000000000000000 : ℚ), (8328124999999999 / 50000000000000000 : ℚ)⟩
  center := (8327343749999999 / 50000000000000000 : ℚ)
  supportValue := (187930072579593 / 312500000000000 : ℚ)
  supportSlope := (517029196053187 / 100000000000000 : ℚ)
  oldCenter := (187930072579593 / 312500000000000 : ℚ)
  oldHi := (60150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1409]
}

def cell_5506 : Cell := { cellDefaults with
  domain := ⟨(8328124999999999 / 50000000000000000 : ℚ), (8329687499999999 / 50000000000000000 : ℚ)⟩
  center := (8328906249999999 / 50000000000000000 : ℚ)
  supportValue := (601537812871661 / 1000000000000000 : ℚ)
  supportSlope := (1292677235650963 / 250000000000000 : ℚ)
  oldCenter := (601537812871661 / 1000000000000000 : ℚ)
  oldHi := (6017877094972067 / 10000000000000000 : ℚ)
  oldPieces := [piece_1409, piece_1410]
}

def cell_5507 : Cell := { cellDefaults with
  domain := ⟨(8329687499999999 / 50000000000000000 : ℚ), (8331249999999999 / 50000000000000000 : ℚ)⟩
  center := (8330468749999999 / 50000000000000000 : ℚ)
  supportValue := (1203398811832159 / 2000000000000000 : ℚ)
  supportSlope := (5171406284130597 / 1000000000000000 : ℚ)
  oldCenter := (1203398811832159 / 2000000000000000 : ℚ)
  oldLo := (60150000000000003 / 100000000000000000 : ℚ)
  oldHi := (6017877094972067 / 10000000000000000 : ℚ)
  oldPieces := [piece_1410]
}

def cell_5508 : Cell := { cellDefaults with
  domain := ⟨(8331249999999999 / 50000000000000000 : ℚ), (8332812499999999 / 50000000000000000 : ℚ)⟩
  center := (8332031249999999 / 50000000000000000 : ℚ)
  supportValue := (1504652564413049 / 2500000000000000 : ℚ)
  supportSlope := (5172265280336319 / 1000000000000000 : ℚ)
  oldCenter := (1504652564413049 / 2500000000000000 : ℚ)
  oldLo := (60150000000000003 / 100000000000000000 : ℚ)
  oldHi := (30099999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1410, piece_1411]
}

def cell_5509 : Cell := { cellDefaults with
  domain := ⟨(8332812499999999 / 50000000000000000 : ℚ), (8334374999999999 / 50000000000000000 : ℚ)⟩
  center := (8333593749999999 / 50000000000000000 : ℚ)
  supportValue := (1204045339608139 / 2000000000000000 : ℚ)
  supportSlope := (1293184681707693 / 250000000000000 : ℚ)
  oldCenter := (1204045339608139 / 2000000000000000 : ℚ)
  oldLo := (6017877094972067 / 10000000000000000 : ℚ)
  oldHi := (15062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1411, piece_1412]
}

def cell_5510 : Cell := { cellDefaults with
  domain := ⟨(8334374999999999 / 50000000000000000 : ℚ), (8335937499999999 / 50000000000000000 : ℚ)⟩
  center := (8335156249999999 / 50000000000000000 : ℚ)
  supportValue := (6021843245242097 / 10000000000000000 : ℚ)
  supportSlope := (1293344885767489 / 250000000000000 : ℚ)
  oldCenter := (6021843245242097 / 10000000000000000 : ℚ)
  oldLo := (30099999999999999 / 50000000000000000 : ℚ)
  oldHi := (15062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1412]
}

def cell_5511 : Cell := { cellDefaults with
  domain := ⟨(8335937499999999 / 50000000000000000 : ℚ), (8337499999999999 / 50000000000000000 : ℚ)⟩
  center := (8336718749999999 / 50000000000000000 : ℚ)
  supportValue := (6023460059955893 / 10000000000000000 : ℚ)
  supportSlope := (5174235737182897 / 1000000000000000 : ℚ)
  oldCenter := (6023460059955893 / 10000000000000000 : ℚ)
  oldLo := (30099999999999999 / 50000000000000000 : ℚ)
  oldHi := (15062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1412]
}

def cell_5512 : Cell := { cellDefaults with
  domain := ⟨(8337499999999999 / 50000000000000000 : ℚ), (8339062499999999 / 50000000000000000 : ℚ)⟩
  center := (8338281249999999 / 50000000000000000 : ℚ)
  supportValue := (6025077133299377 / 10000000000000000 : ℚ)
  supportSlope := (1293691108064543 / 250000000000000 : ℚ)
  oldCenter := (6025077133299377 / 10000000000000000 : ℚ)
  oldLo := (30099999999999999 / 50000000000000000 : ℚ)
  oldHi := (30149999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1412, piece_1413]
}

def cell_5513 : Cell := { cellDefaults with
  domain := ⟨(8339062499999999 / 50000000000000000 : ℚ), (8340624999999999 / 50000000000000000 : ℚ)⟩
  center := (8339843749999999 / 50000000000000000 : ℚ)
  supportValue := (1205338859255531 / 2000000000000000 : ℚ)
  supportSlope := (10350699342218661 / 2000000000000000 : ℚ)
  oldCenter := (1205338859255531 / 2000000000000000 : ℚ)
  oldLo := (15062500000000001 / 25000000000000000 : ℚ)
  oldHi := (30149999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1413]
}

def cell_5514 : Cell := { cellDefaults with
  domain := ⟨(8340624999999999 / 50000000000000000 : ℚ), (8342187499999999 / 50000000000000000 : ℚ)⟩
  center := (8341406249999999 / 50000000000000000 : ℚ)
  supportValue := (188384741454511 / 312500000000000 : ℚ)
  supportSlope := (517620514768069 / 100000000000000 : ℚ)
  oldCenter := (188384741454511 / 312500000000000 : ℚ)
  oldLo := (15062500000000001 / 25000000000000000 : ℚ)
  oldHi := (30149999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1413]
}

def cell_5515 : Cell := { cellDefaults with
  domain := ⟨(8342187499999999 / 50000000000000000 : ℚ), (8343749999999999 / 50000000000000000 : ℚ)⟩
  center := (8342968749999999 / 50000000000000000 : ℚ)
  supportValue := (6029929424195447 / 10000000000000000 : ℚ)
  supportSlope := (647098485546671 / 125000000000000 : ℚ)
  oldCenter := (6029929424195447 / 10000000000000000 : ℚ)
  oldLo := (15062500000000001 / 25000000000000000 : ℚ)
  oldHi := (15087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1413, piece_1414]
}

def cell_5516 : Cell := { cellDefaults with
  domain := ⟨(8343749999999999 / 50000000000000000 : ℚ), (8345312499999999 / 50000000000000000 : ℚ)⟩
  center := (8344531249999999 / 50000000000000000 : ℚ)
  supportValue := (1206309442109223 / 2000000000000000 : ℚ)
  supportSlope := (517731876352201 / 100000000000000 : ℚ)
  oldCenter := (1206309442109223 / 2000000000000000 : ℚ)
  oldLo := (30149999999999999 / 50000000000000000 : ℚ)
  oldHi := (15087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1414]
}

def cell_5517 : Cell := { cellDefaults with
  domain := ⟨(8345312499999999 / 50000000000000000 : ℚ), (8346874999999999 / 50000000000000000 : ℚ)⟩
  center := (8346093749999999 / 50000000000000000 : ℚ)
  supportValue := (6033165256200843 / 10000000000000000 : ℚ)
  supportSlope := (647271817395989 / 125000000000000 : ℚ)
  oldCenter := (6033165256200843 / 10000000000000000 : ℚ)
  oldLo := (30149999999999999 / 50000000000000000 : ℚ)
  oldHi := (15087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1414]
}

def cell_5518 : Cell := { cellDefaults with
  domain := ⟨(8346874999999999 / 50000000000000000 : ℚ), (8348437499999999 / 50000000000000000 : ℚ)⟩
  center := (8347656249999999 / 50000000000000000 : ℚ)
  supportValue := (3017391784666741 / 5000000000000000 : ℚ)
  supportSlope := (5178811463967037 / 1000000000000000 : ℚ)
  oldCenter := (3017391784666741 / 5000000000000000 : ℚ)
  oldLo := (30149999999999999 / 50000000000000000 : ℚ)
  oldHi := (30199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1414, piece_1415]
}

def cell_5519 : Cell := { cellDefaults with
  domain := ⟨(8348437499999999 / 50000000000000000 : ℚ), (8349999999999999 / 50000000000000000 : ℚ)⟩
  center := (8349218749999999 / 50000000000000000 : ℚ)
  supportValue := (3018200994013577 / 5000000000000000 : ℚ)
  supportSlope := (5179287967592927 / 1000000000000000 : ℚ)
  oldCenter := (3018200994013577 / 5000000000000000 : ℚ)
  oldLo := (15087500000000001 / 25000000000000000 : ℚ)
  oldHi := (30199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1415]
}

def cell_5520 : Cell := { cellDefaults with
  domain := ⟨(8349999999999999 / 50000000000000000 : ℚ), (8351562499999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8350781249999999 / 50000000000000000 : ℚ)
  supportValue := (6033544236247183 / 10000000000000000 : ℚ)
  supportSlope := (2587789565339449 / 500000000000000 : ℚ)
  oldCenter := (6033544236247183 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (30149999999999999 / 50000000000000000 : ℚ)
  oldHi := (15087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1414]
}

def cell_5521 : Cell := { cellDefaults with
  domain := ⟨(8351562499999999 / 50000000000000000 : ℚ), (8353124999999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8352343749999999 / 50000000000000000 : ℚ)
  supportValue := (6035161719676841 / 10000000000000000 : ℚ)
  supportSlope := (5176076994800383 / 1000000000000000 : ℚ)
  oldCenter := (6035161719676841 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (30149999999999999 / 50000000000000000 : ℚ)
  oldHi := (30199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1414, piece_1415]
}

def cell_5522 : Cell := { cellDefaults with
  domain := ⟨(8353124999999999 / 50000000000000000 : ℚ), (8354687499999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8353906249999999 / 50000000000000000 : ℚ)
  supportValue := (6036779302648199 / 10000000000000000 : ℚ)
  supportSlope := (258834679631903 / 50000000000000 : ℚ)
  oldCenter := (6036779302648199 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (15087500000000001 / 25000000000000000 : ℚ)
  oldHi := (30199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1415]
}

def cell_5523 : Cell := { cellDefaults with
  domain := ⟨(8354687499999999 / 50000000000000000 : ℚ), (8356249999999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8355468749999999 / 50000000000000000 : ℚ)
  supportValue := (6038397152872677 / 10000000000000000 : ℚ)
  supportSlope := (2588774478111233 / 500000000000000 : ℚ)
  oldCenter := (6038397152872677 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (15087500000000001 / 25000000000000000 : ℚ)
  oldHi := (30199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1415]
}

def cell_5524 : Cell := { cellDefaults with
  domain := ⟨(8356249999999999 / 50000000000000000 : ℚ), (8357812499999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8357031249999999 / 50000000000000000 : ℚ)
  supportValue := (302000763431037 / 500000000000000 : ℚ)
  supportSlope := (10356201598277437 / 2000000000000000 : ℚ)
  oldCenter := (302000763431037 / 500000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (15087500000000001 / 25000000000000000 : ℚ)
  oldHi := (15112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1415, piece_1416]
}

def cell_5525 : Cell := { cellDefaults with
  domain := ⟨(8357812499999999 / 50000000000000000 : ℚ), (8359374999999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8358593749999999 / 50000000000000000 : ℚ)
  supportValue := (188801045851597 / 312500000000000 : ℚ)
  supportSlope := (10357326443838133 / 2000000000000000 : ℚ)
  oldCenter := (188801045851597 / 312500000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (30199999999999999 / 50000000000000000 : ℚ)
  oldHi := (15112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1416]
}

def cell_5526 : Cell := { cellDefaults with
  domain := ⟨(8359374999999999 / 50000000000000000 : ℚ), (8360937499999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8360156249999999 / 50000000000000000 : ℚ)
  supportValue := (6043251932834589 / 10000000000000000 : ℚ)
  supportSlope := (5179517624434027 / 1000000000000000 : ℚ)
  oldCenter := (6043251932834589 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (30199999999999999 / 50000000000000000 : ℚ)
  oldHi := (15112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1416]
}

def cell_5527 : Cell := { cellDefaults with
  domain := ⟨(8360937499999999 / 50000000000000000 : ℚ), (8362499999999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8361718749999999 / 50000000000000000 : ℚ)
  supportValue := (1511217666366623 / 2500000000000000 : ℚ)
  supportSlope := (2590061152689671 / 500000000000000 : ℚ)
  oldCenter := (1511217666366623 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (30199999999999999 / 50000000000000000 : ℚ)
  oldHi := (30249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1416, piece_1417]
}

def cell_5528 : Cell := { cellDefaults with
  domain := ⟨(8362499999999999 / 50000000000000000 : ℚ), (8364062499999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8363281249999999 / 50000000000000000 : ℚ)
  supportValue := (6046489494090161 / 10000000000000000 : ℚ)
  supportSlope := (1295157911105349 / 250000000000000 : ℚ)
  oldCenter := (6046489494090161 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (15112500000000001 / 25000000000000000 : ℚ)
  oldHi := (30249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1417]
}

def cell_5529 : Cell := { cellDefaults with
  domain := ⟨(8364062499999999 / 50000000000000000 : ℚ), (8365624999999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8364843749999999 / 50000000000000000 : ℚ)
  supportValue := (6048108574710659 / 10000000000000000 : ℚ)
  supportSlope := (2590742719423389 / 500000000000000 : ℚ)
  oldCenter := (6048108574710659 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (15112500000000001 / 25000000000000000 : ℚ)
  oldHi := (30249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1417]
}

def cell_5530 : Cell := { cellDefaults with
  domain := ⟨(8365624999999999 / 50000000000000000 : ℚ), (8367187499999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8366406249999999 / 50000000000000000 : ℚ)
  supportValue := (3024863961094661 / 5000000000000000 : ℚ)
  supportSlope := (1295535549433069 / 250000000000000 : ℚ)
  oldCenter := (3024863961094661 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (15112500000000001 / 25000000000000000 : ℚ)
  oldHi := (15137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1417, piece_1418]
}

def cell_5531 : Cell := { cellDefaults with
  domain := ⟨(8367187499999999 / 50000000000000000 : ℚ), (8368749999999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8367968749999999 / 50000000000000000 : ℚ)
  supportValue := (1512836845520857 / 2500000000000000 : ℚ)
  supportSlope := (1295649798760401 / 250000000000000 : ℚ)
  oldCenter := (1512836845520857 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (30249999999999999 / 50000000000000000 : ℚ)
  oldHi := (15137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1418]
}

def cell_5532 : Cell := { cellDefaults with
  domain := ⟨(8368749999999999 / 50000000000000000 : ℚ), (8370312499999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8369531249999999 / 50000000000000000 : ℚ)
  supportValue := (6052967077467539 / 10000000000000000 : ℚ)
  supportSlope := (2073380950160697 / 400000000000000 : ℚ)
  oldCenter := (6052967077467539 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (30249999999999999 / 50000000000000000 : ℚ)
  oldHi := (15137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1418]
}

def cell_5533 : Cell := { cellDefaults with
  domain := ⟨(8370312499999999 / 50000000000000000 : ℚ), (8371874999999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8371093749999999 / 50000000000000000 : ℚ)
  supportValue := (60545870395177 / 100000000000000 : ℚ)
  supportSlope := (2592080164749433 / 500000000000000 : ℚ)
  oldCenter := (60545870395177 / 100000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (30249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1418, piece_1419]
}

def cell_5534 : Cell := { cellDefaults with
  domain := ⟨(8371874999999999 / 50000000000000000 : ℚ), (8373437499999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8372656249999999 / 50000000000000000 : ℚ)
  supportValue := (6056207130132117 / 10000000000000000 : ℚ)
  supportSlope := (5184565862993651 / 1000000000000000 : ℚ)
  oldCenter := (6056207130132117 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (15137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1419]
}

def cell_5535 : Cell := { cellDefaults with
  domain := ⟨(8373437499999999 / 50000000000000000 : ℚ), (8374999999999999 / 50000000000000000 : ℚ)⟩
  r := (95193724480149 / 100000000000000 : ℚ)
  w := (10024957664847 / 10000000000000 : ℚ)
  center := (8374218749999999 / 50000000000000000 : ℚ)
  supportValue := (6057827440003597 / 10000000000000000 : ℚ)
  supportSlope := (207416737065671 / 40000000000000 : ℚ)
  oldCenter := (6057827440003597 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_463
  oldLo := (15137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1419]
}

def cell_5536 : Cell := { cellDefaults with
  domain := ⟨(8374999999999999 / 50000000000000000 : ℚ), (8376562499999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8375781249999999 / 50000000000000000 : ℚ)
  supportValue := (1210992218724611 / 2000000000000000 : ℚ)
  supportSlope := (259071000483857 / 50000000000000 : ℚ)
  oldCenter := (1210992218724611 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (30249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1418, piece_1419]
}

def cell_5537 : Cell := { cellDefaults with
  domain := ⟨(8376562499999999 / 50000000000000000 : ℚ), (8378124999999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8377343749999999 / 50000000000000000 : ℚ)
  supportValue := (605658032797457 / 1000000000000000 : ℚ)
  supportSlope := (5181962896635639 / 1000000000000000 : ℚ)
  oldCenter := (605658032797457 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (15137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1419]
}

def cell_5538 : Cell := { cellDefaults with
  domain := ⟨(8378124999999999 / 50000000000000000 : ℚ), (8379687499999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8378906249999999 / 50000000000000000 : ℚ)
  supportValue := (6058199824511281 / 10000000000000000 : ℚ)
  supportSlope := (161963001574561 / 31250000000000 : ℚ)
  oldCenter := (6058199824511281 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (15137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1419]
}

def cell_5539 : Cell := { cellDefaults with
  domain := ⟨(8379687499999999 / 50000000000000000 : ℚ), (8381249999999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8380468749999999 / 50000000000000000 : ℚ)
  supportValue := (242392783508231 / 400000000000000 : ℚ)
  supportSlope := (2591719650313351 / 500000000000000 : ℚ)
  oldCenter := (242392783508231 / 400000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (15137500000000001 / 25000000000000000 : ℚ)
  oldHi := (15162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1419, piece_1420]
}

def cell_5540 : Cell := { cellDefaults with
  domain := ⟨(8381249999999999 / 50000000000000000 : ℚ), (8382812499999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8382031249999999 / 50000000000000000 : ℚ)
  supportValue := (1515359863285243 / 2500000000000000 : ℚ)
  supportSlope := (5183930422255401 / 1000000000000000 : ℚ)
  oldCenter := (1515359863285243 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (30299999999999999 / 50000000000000000 : ℚ)
  oldHi := (15162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1420]
}

def cell_5541 : Cell := { cellDefaults with
  domain := ⟨(8382812499999999 / 50000000000000000 : ℚ), (8384374999999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8383593749999999 / 50000000000000000 : ℚ)
  supportValue := (6063059564433129 / 10000000000000000 : ℚ)
  supportSlope := (5184782959663181 / 1000000000000000 : ℚ)
  oldCenter := (6063059564433129 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (30299999999999999 / 50000000000000000 : ℚ)
  oldHi := (15162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1420]
}

def cell_5542 : Cell := { cellDefaults with
  domain := ⟨(8384374999999999 / 50000000000000000 : ℚ), (8385937499999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8385156249999999 / 50000000000000000 : ℚ)
  supportValue := (6064679942190241 / 10000000000000000 : ℚ)
  supportSlope := (10370913674393023 / 2000000000000000 : ℚ)
  oldCenter := (6064679942190241 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (30299999999999999 / 50000000000000000 : ℚ)
  oldHi := (30349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1420, piece_1421]
}

def cell_5543 : Cell := { cellDefaults with
  domain := ⟨(8385937499999999 / 50000000000000000 : ℚ), (8387499999999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8386718749999999 / 50000000000000000 : ℚ)
  supportValue := (3033150219080521 / 5000000000000000 : ℚ)
  supportSlope := (10371794137284951 / 2000000000000000 : ℚ)
  oldCenter := (3033150219080521 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (15162500000000001 / 25000000000000000 : ℚ)
  oldHi := (30349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1421]
}

def cell_5544 : Cell := { cellDefaults with
  domain := ⟨(8387499999999999 / 50000000000000000 : ℚ), (8389062499999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8388281249999999 / 50000000000000000 : ℚ)
  supportValue := (3033960581966651 / 5000000000000000 : ℚ)
  supportSlope := (2593374493008227 / 500000000000000 : ℚ)
  oldCenter := (3033960581966651 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (15162500000000001 / 25000000000000000 : ℚ)
  oldHi := (30349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1421]
}

def cell_5545 : Cell := { cellDefaults with
  domain := ⟨(8389062499999999 / 50000000000000000 : ℚ), (8390624999999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8389843749999999 / 50000000000000000 : ℚ)
  supportValue := (6069542155976543 / 10000000000000000 : ℚ)
  supportSlope := (5187472616185573 / 1000000000000000 : ℚ)
  oldCenter := (6069542155976543 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (15162500000000001 / 25000000000000000 : ℚ)
  oldHi := (6073184357541899 / 10000000000000000 : ℚ)
  oldPieces := [piece_1421, piece_1422]
}

def cell_5546 : Cell := { cellDefaults with
  domain := ⟨(8390624999999999 / 50000000000000000 : ℚ), (8392187499999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8391406249999999 / 50000000000000000 : ℚ)
  supportValue := (3035581640966883 / 5000000000000000 : ℚ)
  supportSlope := (5187862828368139 / 1000000000000000 : ℚ)
  oldCenter := (3035581640966883 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (30349999999999999 / 50000000000000000 : ℚ)
  oldHi := (6073184357541899 / 10000000000000000 : ℚ)
  oldPieces := [piece_1422]
}

def cell_5547 : Cell := { cellDefaults with
  domain := ⟨(8392187499999999 / 50000000000000000 : ℚ), (8393749999999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8392968749999999 / 50000000000000000 : ℚ)
  supportValue := (6072784621908159 / 10000000000000000 : ℚ)
  supportSlope := (5188714196663113 / 1000000000000000 : ℚ)
  oldCenter := (6072784621908159 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (30349999999999999 / 50000000000000000 : ℚ)
  oldHi := (15187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1422, piece_1423]
}

def cell_5548 : Cell := { cellDefaults with
  domain := ⟨(8393749999999999 / 50000000000000000 : ℚ), (8395312499999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8394531249999999 / 50000000000000000 : ℚ)
  supportValue := (3037203114015183 / 5000000000000000 : ℚ)
  supportSlope := (5189486943880439 / 1000000000000000 : ℚ)
  oldCenter := (3037203114015183 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (6073184357541899 / 10000000000000000 : ℚ)
  oldHi := (30399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1423, piece_1424]
}

def cell_5549 : Cell := { cellDefaults with
  domain := ⟨(8395312499999999 / 50000000000000000 : ℚ), (8396874999999999 / 50000000000000000 : ℚ)⟩
  r := (742935857897 / 781250000000 : ℚ)
  w := (10026773979427 / 10000000000000 : ℚ)
  center := (8396093749999999 / 50000000000000000 : ℚ)
  supportValue := (6076027983522257 / 10000000000000000 : ℚ)
  supportSlope := (103796560483147 / 20000000000000 : ℚ)
  oldCenter := (6076027983522257 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_464
  oldLo := (15187500000000001 / 25000000000000000 : ℚ)
  oldHi := (30399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1424]
}

theorem check_5500 : SourceCertificateFamily.RightNormalized.check cell_5500 = true := by
  decide +kernel

theorem check_5501 : SourceCertificateFamily.RightNormalized.check cell_5501 = true := by
  decide +kernel

theorem check_5502 : SourceCertificateFamily.RightNormalized.check cell_5502 = true := by
  decide +kernel

theorem check_5503 : SourceCertificateFamily.RightNormalized.check cell_5503 = true := by
  decide +kernel

theorem check_5504 : SourceCertificateFamily.RightNormalized.check cell_5504 = true := by
  decide +kernel

theorem check_5505 : SourceCertificateFamily.RightNormalized.check cell_5505 = true := by
  decide +kernel

theorem check_5506 : SourceCertificateFamily.RightNormalized.check cell_5506 = true := by
  decide +kernel

theorem check_5507 : SourceCertificateFamily.RightNormalized.check cell_5507 = true := by
  decide +kernel

theorem check_5508 : SourceCertificateFamily.RightNormalized.check cell_5508 = true := by
  decide +kernel

theorem check_5509 : SourceCertificateFamily.RightNormalized.check cell_5509 = true := by
  decide +kernel

theorem check_5510 : SourceCertificateFamily.RightNormalized.check cell_5510 = true := by
  decide +kernel

theorem check_5511 : SourceCertificateFamily.RightNormalized.check cell_5511 = true := by
  decide +kernel

theorem check_5512 : SourceCertificateFamily.RightNormalized.check cell_5512 = true := by
  decide +kernel

theorem check_5513 : SourceCertificateFamily.RightNormalized.check cell_5513 = true := by
  decide +kernel

theorem check_5514 : SourceCertificateFamily.RightNormalized.check cell_5514 = true := by
  decide +kernel

theorem check_5515 : SourceCertificateFamily.RightNormalized.check cell_5515 = true := by
  decide +kernel

theorem check_5516 : SourceCertificateFamily.RightNormalized.check cell_5516 = true := by
  decide +kernel

theorem check_5517 : SourceCertificateFamily.RightNormalized.check cell_5517 = true := by
  decide +kernel

theorem check_5518 : SourceCertificateFamily.RightNormalized.check cell_5518 = true := by
  decide +kernel

theorem check_5519 : SourceCertificateFamily.RightNormalized.check cell_5519 = true := by
  decide +kernel

theorem check_5520 : SourceCertificateFamily.RightNormalized.check cell_5520 = true := by
  decide +kernel

theorem check_5521 : SourceCertificateFamily.RightNormalized.check cell_5521 = true := by
  decide +kernel

theorem check_5522 : SourceCertificateFamily.RightNormalized.check cell_5522 = true := by
  decide +kernel

theorem check_5523 : SourceCertificateFamily.RightNormalized.check cell_5523 = true := by
  decide +kernel

theorem check_5524 : SourceCertificateFamily.RightNormalized.check cell_5524 = true := by
  decide +kernel

theorem check_5525 : SourceCertificateFamily.RightNormalized.check cell_5525 = true := by
  decide +kernel

theorem check_5526 : SourceCertificateFamily.RightNormalized.check cell_5526 = true := by
  decide +kernel

theorem check_5527 : SourceCertificateFamily.RightNormalized.check cell_5527 = true := by
  decide +kernel

theorem check_5528 : SourceCertificateFamily.RightNormalized.check cell_5528 = true := by
  decide +kernel

theorem check_5529 : SourceCertificateFamily.RightNormalized.check cell_5529 = true := by
  decide +kernel

theorem check_5530 : SourceCertificateFamily.RightNormalized.check cell_5530 = true := by
  decide +kernel

theorem check_5531 : SourceCertificateFamily.RightNormalized.check cell_5531 = true := by
  decide +kernel

theorem check_5532 : SourceCertificateFamily.RightNormalized.check cell_5532 = true := by
  decide +kernel

theorem check_5533 : SourceCertificateFamily.RightNormalized.check cell_5533 = true := by
  decide +kernel

theorem check_5534 : SourceCertificateFamily.RightNormalized.check cell_5534 = true := by
  decide +kernel

theorem check_5535 : SourceCertificateFamily.RightNormalized.check cell_5535 = true := by
  decide +kernel

theorem check_5536 : SourceCertificateFamily.RightNormalized.check cell_5536 = true := by
  decide +kernel

theorem check_5537 : SourceCertificateFamily.RightNormalized.check cell_5537 = true := by
  decide +kernel

theorem check_5538 : SourceCertificateFamily.RightNormalized.check cell_5538 = true := by
  decide +kernel

theorem check_5539 : SourceCertificateFamily.RightNormalized.check cell_5539 = true := by
  decide +kernel

theorem check_5540 : SourceCertificateFamily.RightNormalized.check cell_5540 = true := by
  decide +kernel

theorem check_5541 : SourceCertificateFamily.RightNormalized.check cell_5541 = true := by
  decide +kernel

theorem check_5542 : SourceCertificateFamily.RightNormalized.check cell_5542 = true := by
  decide +kernel

theorem check_5543 : SourceCertificateFamily.RightNormalized.check cell_5543 = true := by
  decide +kernel

theorem check_5544 : SourceCertificateFamily.RightNormalized.check cell_5544 = true := by
  decide +kernel

theorem check_5545 : SourceCertificateFamily.RightNormalized.check cell_5545 = true := by
  decide +kernel

theorem check_5546 : SourceCertificateFamily.RightNormalized.check cell_5546 = true := by
  decide +kernel

theorem check_5547 : SourceCertificateFamily.RightNormalized.check cell_5547 = true := by
  decide +kernel

theorem check_5548 : SourceCertificateFamily.RightNormalized.check cell_5548 = true := by
  decide +kernel

theorem check_5549 : SourceCertificateFamily.RightNormalized.check cell_5549 = true := by
  decide +kernel

def cells : List Cell := [cell_5500, cell_5501, cell_5502, cell_5503, cell_5504, cell_5505, cell_5506, cell_5507, cell_5508, cell_5509, cell_5510, cell_5511, cell_5512, cell_5513, cell_5514, cell_5515, cell_5516, cell_5517, cell_5518, cell_5519, cell_5520, cell_5521, cell_5522, cell_5523, cell_5524, cell_5525, cell_5526, cell_5527, cell_5528, cell_5529, cell_5530, cell_5531, cell_5532, cell_5533, cell_5534, cell_5535, cell_5536, cell_5537, cell_5538, cell_5539, cell_5540, cell_5541, cell_5542, cell_5543, cell_5544, cell_5545, cell_5546, cell_5547, cell_5548, cell_5549]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5500, SourceCertificateFamily.of_right_checked check_5501, SourceCertificateFamily.of_right_checked check_5502, SourceCertificateFamily.of_right_checked check_5503, SourceCertificateFamily.of_right_checked check_5504, SourceCertificateFamily.of_right_checked check_5505, SourceCertificateFamily.of_right_checked check_5506, SourceCertificateFamily.of_right_checked check_5507, SourceCertificateFamily.of_right_checked check_5508, SourceCertificateFamily.of_right_checked check_5509, SourceCertificateFamily.of_right_checked check_5510, SourceCertificateFamily.of_right_checked check_5511, SourceCertificateFamily.of_right_checked check_5512, SourceCertificateFamily.of_right_checked check_5513, SourceCertificateFamily.of_right_checked check_5514, SourceCertificateFamily.of_right_checked check_5515, SourceCertificateFamily.of_right_checked check_5516, SourceCertificateFamily.of_right_checked check_5517, SourceCertificateFamily.of_right_checked check_5518, SourceCertificateFamily.of_right_checked check_5519, SourceCertificateFamily.of_right_checked check_5520, SourceCertificateFamily.of_right_checked check_5521, SourceCertificateFamily.of_right_checked check_5522, SourceCertificateFamily.of_right_checked check_5523, SourceCertificateFamily.of_right_checked check_5524, SourceCertificateFamily.of_right_checked check_5525, SourceCertificateFamily.of_right_checked check_5526, SourceCertificateFamily.of_right_checked check_5527, SourceCertificateFamily.of_right_checked check_5528, SourceCertificateFamily.of_right_checked check_5529, SourceCertificateFamily.of_right_checked check_5530, SourceCertificateFamily.of_right_checked check_5531, SourceCertificateFamily.of_right_checked check_5532, SourceCertificateFamily.of_right_checked check_5533, SourceCertificateFamily.of_right_checked check_5534, SourceCertificateFamily.of_right_checked check_5535, SourceCertificateFamily.of_right_checked check_5536, SourceCertificateFamily.of_right_checked check_5537, SourceCertificateFamily.of_right_checked check_5538, SourceCertificateFamily.of_right_checked check_5539, SourceCertificateFamily.of_right_checked check_5540, SourceCertificateFamily.of_right_checked check_5541, SourceCertificateFamily.of_right_checked check_5542, SourceCertificateFamily.of_right_checked check_5543, SourceCertificateFamily.of_right_checked check_5544, SourceCertificateFamily.of_right_checked check_5545, SourceCertificateFamily.of_right_checked check_5546, SourceCertificateFamily.of_right_checked check_5547, SourceCertificateFamily.of_right_checked check_5548, SourceCertificateFamily.of_right_checked check_5549, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0110

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0110
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0110
open AnalyticBounds.ExpressionCertificate

theorem linked_5500 : Linked cell_5500 pieces := by
  apply Linked.of_piece piece_461 piece_461_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5500, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1408_mem, piece_1409_mem⟩

theorem linked_5501 : Linked cell_5501 pieces := by
  apply Linked.of_piece piece_461 piece_461_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5501, List.cons_subset, List.nil_subset, and_true]
  exact piece_1409_mem

theorem linked_5502 : Linked cell_5502 pieces := by
  apply Linked.of_piece piece_461 piece_461_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5502, List.cons_subset, List.nil_subset, and_true]
  exact piece_1409_mem

theorem linked_5503 : Linked cell_5503 pieces := by
  apply Linked.of_piece piece_461 piece_461_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5503, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1409_mem, piece_1410_mem⟩

theorem linked_5504 : Linked cell_5504 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5504, List.cons_subset, List.nil_subset, and_true]
  exact piece_1409_mem

theorem linked_5505 : Linked cell_5505 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5505, List.cons_subset, List.nil_subset, and_true]
  exact piece_1409_mem

theorem linked_5506 : Linked cell_5506 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5506, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1409_mem, piece_1410_mem⟩

theorem linked_5507 : Linked cell_5507 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5507, List.cons_subset, List.nil_subset, and_true]
  exact piece_1410_mem

theorem linked_5508 : Linked cell_5508 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5508, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1410_mem, piece_1411_mem⟩

theorem linked_5509 : Linked cell_5509 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5509, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1411_mem, piece_1412_mem⟩

theorem linked_5510 : Linked cell_5510 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5510, List.cons_subset, List.nil_subset, and_true]
  exact piece_1412_mem

theorem linked_5511 : Linked cell_5511 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5511, List.cons_subset, List.nil_subset, and_true]
  exact piece_1412_mem

theorem linked_5512 : Linked cell_5512 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5512, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1412_mem, piece_1413_mem⟩

theorem linked_5513 : Linked cell_5513 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5513, List.cons_subset, List.nil_subset, and_true]
  exact piece_1413_mem

theorem linked_5514 : Linked cell_5514 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5514, List.cons_subset, List.nil_subset, and_true]
  exact piece_1413_mem

theorem linked_5515 : Linked cell_5515 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5515, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1413_mem, piece_1414_mem⟩

theorem linked_5516 : Linked cell_5516 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5516, List.cons_subset, List.nil_subset, and_true]
  exact piece_1414_mem

theorem linked_5517 : Linked cell_5517 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5517, List.cons_subset, List.nil_subset, and_true]
  exact piece_1414_mem

theorem linked_5518 : Linked cell_5518 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5518, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1414_mem, piece_1415_mem⟩

theorem linked_5519 : Linked cell_5519 pieces := by
  apply Linked.of_piece piece_462 piece_462_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5519, List.cons_subset, List.nil_subset, and_true]
  exact piece_1415_mem

theorem linked_5520 : Linked cell_5520 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5520, List.cons_subset, List.nil_subset, and_true]
  exact piece_1414_mem

theorem linked_5521 : Linked cell_5521 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5521, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1414_mem, piece_1415_mem⟩

theorem linked_5522 : Linked cell_5522 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5522, List.cons_subset, List.nil_subset, and_true]
  exact piece_1415_mem

theorem linked_5523 : Linked cell_5523 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5523, List.cons_subset, List.nil_subset, and_true]
  exact piece_1415_mem

theorem linked_5524 : Linked cell_5524 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5524, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1415_mem, piece_1416_mem⟩

theorem linked_5525 : Linked cell_5525 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5525, List.cons_subset, List.nil_subset, and_true]
  exact piece_1416_mem

theorem linked_5526 : Linked cell_5526 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5526, List.cons_subset, List.nil_subset, and_true]
  exact piece_1416_mem

theorem linked_5527 : Linked cell_5527 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5527, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1416_mem, piece_1417_mem⟩

theorem linked_5528 : Linked cell_5528 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5528, List.cons_subset, List.nil_subset, and_true]
  exact piece_1417_mem

theorem linked_5529 : Linked cell_5529 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5529, List.cons_subset, List.nil_subset, and_true]
  exact piece_1417_mem

theorem linked_5530 : Linked cell_5530 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5530, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1417_mem, piece_1418_mem⟩

theorem linked_5531 : Linked cell_5531 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5531, List.cons_subset, List.nil_subset, and_true]
  exact piece_1418_mem

theorem linked_5532 : Linked cell_5532 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5532, List.cons_subset, List.nil_subset, and_true]
  exact piece_1418_mem

theorem linked_5533 : Linked cell_5533 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5533, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1418_mem, piece_1419_mem⟩

theorem linked_5534 : Linked cell_5534 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5534, List.cons_subset, List.nil_subset, and_true]
  exact piece_1419_mem

theorem linked_5535 : Linked cell_5535 pieces := by
  apply Linked.of_piece piece_463 piece_463_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5535, List.cons_subset, List.nil_subset, and_true]
  exact piece_1419_mem

theorem linked_5536 : Linked cell_5536 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5536, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1418_mem, piece_1419_mem⟩

theorem linked_5537 : Linked cell_5537 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5537, List.cons_subset, List.nil_subset, and_true]
  exact piece_1419_mem

theorem linked_5538 : Linked cell_5538 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5538, List.cons_subset, List.nil_subset, and_true]
  exact piece_1419_mem

theorem linked_5539 : Linked cell_5539 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5539, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1419_mem, piece_1420_mem⟩

theorem linked_5540 : Linked cell_5540 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5540, List.cons_subset, List.nil_subset, and_true]
  exact piece_1420_mem

theorem linked_5541 : Linked cell_5541 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5541, List.cons_subset, List.nil_subset, and_true]
  exact piece_1420_mem

theorem linked_5542 : Linked cell_5542 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5542, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1420_mem, piece_1421_mem⟩

theorem linked_5543 : Linked cell_5543 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5543, List.cons_subset, List.nil_subset, and_true]
  exact piece_1421_mem

theorem linked_5544 : Linked cell_5544 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5544, List.cons_subset, List.nil_subset, and_true]
  exact piece_1421_mem

theorem linked_5545 : Linked cell_5545 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5545, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1421_mem, piece_1422_mem⟩

theorem linked_5546 : Linked cell_5546 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5546, List.cons_subset, List.nil_subset, and_true]
  exact piece_1422_mem

theorem linked_5547 : Linked cell_5547 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5547, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1422_mem, piece_1423_mem⟩

theorem linked_5548 : Linked cell_5548 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5548, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1423_mem, piece_1424_mem⟩

theorem linked_5549 : Linked cell_5549 pieces := by
  apply Linked.of_piece piece_464 piece_464_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5549, List.cons_subset, List.nil_subset, and_true]
  exact piece_1424_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0110.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0110.cells,List.forall_mem_cons]
  exact ⟨linked_5500, linked_5501, linked_5502, linked_5503, linked_5504, linked_5505, linked_5506, linked_5507, linked_5508, linked_5509, linked_5510, linked_5511, linked_5512, linked_5513, linked_5514, linked_5515, linked_5516, linked_5517, linked_5518, linked_5519, linked_5520, linked_5521, linked_5522, linked_5523, linked_5524, linked_5525, linked_5526, linked_5527, linked_5528, linked_5529, linked_5530, linked_5531, linked_5532, linked_5533, linked_5534, linked_5535, linked_5536, linked_5537, linked_5538, linked_5539, linked_5540, linked_5541, linked_5542, linked_5543, linked_5544, linked_5545, linked_5546, linked_5547, linked_5548, linked_5549, by simp⟩

theorem covered : covers (8318749999999999 / 50000000000000000 : ℚ) (8396874999999999 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0110.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0110
