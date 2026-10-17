import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0129
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(20599999999999999 / 100000000000000000 : ℚ), (20606249999999999 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (17652540217683 / 20000000000000 : ℚ)
  w := (2548484187713 / 2500000000000 : ℚ)
  center := (20603124999999999 / 100000000000000000 : ℚ)
  supportValue := (1940994510145479 / 2500000000000000 : ℚ)
  supportSlope := (5588206053628753 / 1000000000000000 : ℚ)
  oldCenter := (1940994510145479 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_548
  oldLo := (9756250000000001 / 12500000000000000 : ℚ)
  oldHi := (78600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1801, piece_1802]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6450 : Cell := { cellDefaults with
  oldLo := (38800000000000001 / 50000000000000000 : ℚ)
  oldHi := (38850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1791, piece_1792]
}

def cell_6451 : Cell := { cellDefaults with
  domain := ⟨(20606249999999999 / 100000000000000000 : ℚ), (20612499999999999 / 100000000000000000 : ℚ)⟩
  center := (20609374999999999 / 100000000000000000 : ℚ)
  supportValue := (1941867746554289 / 2500000000000000 : ℚ)
  supportSlope := (5589307439612057 / 1000000000000000 : ℚ)
  oldCenter := (1941867746554289 / 2500000000000000 : ℚ)
  oldLo := (9706250000000001 / 12500000000000000 : ℚ)
  oldHi := (38850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1792]
}

def cell_6452 : Cell := { cellDefaults with
  domain := ⟨(20612499999999999 / 100000000000000000 : ℚ), (20618749999999999 / 100000000000000000 : ℚ)⟩
  center := (20615624999999999 / 100000000000000000 : ℚ)
  supportValue := (3885482338377473 / 5000000000000000 : ℚ)
  supportSlope := (5590414896362361 / 1000000000000000 : ℚ)
  oldCenter := (3885482338377473 / 5000000000000000 : ℚ)
  oldLo := (9706250000000001 / 12500000000000000 : ℚ)
  oldHi := (9718750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1792, piece_1793]
}

def cell_6453 : Cell := { cellDefaults with
  domain := ⟨(20618749999999999 / 100000000000000000 : ℚ), (20624999999999999 / 100000000000000000 : ℚ)⟩
  center := (20621874999999999 / 100000000000000000 : ℚ)
  supportValue := (3887229536294609 / 5000000000000000 : ℚ)
  supportSlope := (2795802858997831 / 500000000000000 : ℚ)
  oldCenter := (3887229536294609 / 5000000000000000 : ℚ)
  oldLo := (38850000000000001 / 50000000000000000 : ℚ)
  oldHi := (38900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1793, piece_1794]
}

def cell_6454 : Cell := { cellDefaults with
  domain := ⟨(20624999999999999 / 100000000000000000 : ℚ), (20631249999999999 / 100000000000000000 : ℚ)⟩
  center := (20628124999999999 / 100000000000000000 : ℚ)
  supportValue := (7777954142662379 / 10000000000000000 : ℚ)
  supportSlope := (699095164967467 / 125000000000000 : ℚ)
  oldCenter := (7777954142662379 / 10000000000000000 : ℚ)
  oldLo := (9718750000000001 / 12500000000000000 : ℚ)
  oldHi := (38900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1794]
}

def cell_6455 : Cell := { cellDefaults with
  domain := ⟨(20631249999999999 / 100000000000000000 : ℚ), (20637499999999999 / 100000000000000000 : ℚ)⟩
  center := (20634374999999999 / 100000000000000000 : ℚ)
  supportValue := (7781449956373327 / 10000000000000000 : ℚ)
  supportSlope := (349613211529487 / 62500000000000 : ℚ)
  oldCenter := (7781449956373327 / 10000000000000000 : ℚ)
  oldLo := (9718750000000001 / 12500000000000000 : ℚ)
  oldHi := (9731250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1794, piece_1795]
}

def cell_6456 : Cell := { cellDefaults with
  domain := ⟨(20637499999999999 / 100000000000000000 : ℚ), (20643749999999999 / 100000000000000000 : ℚ)⟩
  center := (20640624999999999 / 100000000000000000 : ℚ)
  supportValue := (7784946509226913 / 10000000000000000 : ℚ)
  supportSlope := (699375006085079 / 125000000000000 : ℚ)
  oldCenter := (7784946509226913 / 10000000000000000 : ℚ)
  oldLo := (38900000000000001 / 50000000000000000 : ℚ)
  oldHi := (486731843575419 / 625000000000000 : ℚ)
  oldPieces := [piece_1795, piece_1796]
}

def cell_6457 : Cell := { cellDefaults with
  domain := ⟨(20643749999999999 / 100000000000000000 : ℚ), (20649999999999999 / 100000000000000000 : ℚ)⟩
  center := (20646874999999999 / 100000000000000000 : ℚ)
  supportValue := (3894221849705623 / 5000000000000000 : ℚ)
  supportSlope := (27980911662446317 / 5000000000000000 : ℚ)
  oldCenter := (3894221849705623 / 5000000000000000 : ℚ)
  oldLo := (9731250000000001 / 12500000000000000 : ℚ)
  oldHi := (9743750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1796, piece_1797, piece_1798]
}

def cell_6458 : Cell := { cellDefaults with
  domain := ⟨(20649999999999999 / 100000000000000000 : ℚ), (20656249999999999 / 100000000000000000 : ℚ)⟩
  r := (44091202438173 / 50000000000000 : ℚ)
  w := (5098299360497 / 5000000000000 : ℚ)
  center := (20653124999999999 / 100000000000000000 : ℚ)
  supportValue := (7786962753899593 / 10000000000000000 : ℚ)
  supportSlope := (2796354328869377 / 500000000000000 : ℚ)
  oldCenter := (7786962753899593 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_549
  oldLo := (9731250000000001 / 12500000000000000 : ℚ)
  oldHi := (77900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1796, piece_1797]
}

def cell_6459 : Cell := { cellDefaults with
  domain := ⟨(20656249999999999 / 100000000000000000 : ℚ), (20662499999999999 / 100000000000000000 : ℚ)⟩
  r := (44091202438173 / 50000000000000 : ℚ)
  w := (5098299360497 / 5000000000000 : ℚ)
  center := (20659374999999999 / 100000000000000000 : ℚ)
  supportValue := (1558091720603431 / 2000000000000000 : ℚ)
  supportSlope := (2237546601217133 / 400000000000000 : ℚ)
  oldCenter := (1558091720603431 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_549
  oldLo := (486731843575419 / 625000000000000 : ℚ)
  oldHi := (9743750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1797, piece_1798]
}

def cell_6460 : Cell := { cellDefaults with
  domain := ⟨(20662499999999999 / 100000000000000000 : ℚ), (20668749999999999 / 100000000000000000 : ℚ)⟩
  r := (44091202438173 / 50000000000000 : ℚ)
  w := (5098299360497 / 5000000000000 : ℚ)
  center := (20665624999999999 / 100000000000000000 : ℚ)
  supportValue := (7793955118673661 / 10000000000000000 : ℚ)
  supportSlope := (5595053638321801 / 1000000000000000 : ℚ)
  oldCenter := (7793955118673661 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_549
  oldLo := (77900000000000003 / 100000000000000000 : ℚ)
  oldHi := (78000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1798, piece_1799]
}

def cell_6461 : Cell := { cellDefaults with
  domain := ⟨(20668749999999999 / 100000000000000000 : ℚ), (20674999999999999 / 100000000000000000 : ℚ)⟩
  r := (44091202438173 / 50000000000000 : ℚ)
  w := (5098299360497 / 5000000000000 : ℚ)
  center := (20671874999999999 / 100000000000000000 : ℚ)
  supportValue := (7797452343365361 / 10000000000000000 : ℚ)
  supportSlope := (5596148976923843 / 1000000000000000 : ℚ)
  oldCenter := (7797452343365361 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_549
  oldLo := (9743750000000001 / 12500000000000000 : ℚ)
  oldHi := (78000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1799]
}

def cell_6462 : Cell := { cellDefaults with
  domain := ⟨(20674999999999999 / 100000000000000000 : ℚ), (20681249999999999 / 100000000000000000 : ℚ)⟩
  r := (44091202438173 / 50000000000000 : ℚ)
  w := (5098299360497 / 5000000000000 : ℚ)
  center := (20678124999999999 / 100000000000000000 : ℚ)
  supportValue := (975118788854389 / 1250000000000000 : ℚ)
  supportSlope := (11194522133127549 / 2000000000000000 : ℚ)
  oldCenter := (975118788854389 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_549
  oldLo := (9743750000000001 / 12500000000000000 : ℚ)
  oldHi := (9756250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1799, piece_1800]
}

def cell_6463 : Cell := { cellDefaults with
  domain := ⟨(20681249999999999 / 100000000000000000 : ℚ), (20687499999999999 / 100000000000000000 : ℚ)⟩
  r := (44091202438173 / 50000000000000 : ℚ)
  w := (5098299360497 / 5000000000000 : ℚ)
  center := (20684374999999999 / 100000000000000000 : ℚ)
  supportValue := (487778061473631 / 625000000000000 : ℚ)
  supportSlope := (2799223655165939 / 500000000000000 : ℚ)
  oldCenter := (487778061473631 / 625000000000000 : ℚ)
  newCoefficients := coefficients_549
  oldLo := (78000000000000003 / 100000000000000000 : ℚ)
  oldHi := (78100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1800, piece_1801]
}

def cell_6464 : Cell := { cellDefaults with
  domain := ⟨(20687499999999999 / 100000000000000000 : ℚ), (20693749999999999 / 100000000000000000 : ℚ)⟩
  r := (44091202438173 / 50000000000000 : ℚ)
  w := (5098299360497 / 5000000000000 : ℚ)
  center := (20690624999999999 / 100000000000000000 : ℚ)
  supportValue := (975993541087647 / 1250000000000000 : ℚ)
  supportSlope := (559959648149011 / 100000000000000 : ℚ)
  oldCenter := (975993541087647 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_549
  oldHi := (78100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1801]
}

def cell_6465 : Cell := { cellDefaults with
  domain := ⟨(20693749999999999 / 100000000000000000 : ℚ), (20699999999999999 / 100000000000000000 : ℚ)⟩
  r := (44091202438173 / 50000000000000 : ℚ)
  w := (5098299360497 / 5000000000000 : ℚ)
  center := (20696874999999999 / 100000000000000000 : ℚ)
  supportValue := (1562289682660887 / 2000000000000000 : ℚ)
  supportSlope := (700080414819837 / 125000000000000 : ℚ)
  oldCenter := (1562289682660887 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_549
  oldHi := (9768750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1801, piece_1802]
}

def cell_6466 : Cell := { cellDefaults with
  domain := ⟨(20699999999999999 / 100000000000000000 : ℚ), (20706249999999999 / 100000000000000000 : ℚ)⟩
  r := (2753197210457 / 3125000000000 : ℚ)
  w := (1274909552681 / 1250000000000 : ℚ)
  center := (20703124999999999 / 100000000000000000 : ℚ)
  supportValue := (780996910376893 / 1000000000000000 : ℚ)
  supportSlope := (2798659190060171 / 500000000000000 : ℚ)
  oldCenter := (780996910376893 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_550
  oldHi := (9768750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1801, piece_1802]
}

def cell_6467 : Cell := { cellDefaults with
  domain := ⟨(20706249999999999 / 100000000000000000 : ℚ), (20712499999999999 / 100000000000000000 : ℚ)⟩
  r := (2753197210457 / 3125000000000 : ℚ)
  w := (1274909552681 / 1250000000000 : ℚ)
  center := (20709374999999999 / 100000000000000000 : ℚ)
  supportValue := (3906733871512301 / 5000000000000000 : ℚ)
  supportSlope := (5598500390084027 / 1000000000000000 : ℚ)
  oldCenter := (3906733871512301 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_550
  oldLo := (78100000000000003 / 100000000000000000 : ℚ)
  oldHi := (78200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1802, piece_1803]
}

def cell_6468 : Cell := { cellDefaults with
  domain := ⟨(20712499999999999 / 100000000000000000 : ℚ), (20718749999999999 / 100000000000000000 : ℚ)⟩
  r := (2753197210457 / 3125000000000 : ℚ)
  w := (1274909552681 / 1250000000000 : ℚ)
  center := (20715624999999999 / 100000000000000000 : ℚ)
  supportValue := (195424178027819 / 250000000000000 : ℚ)
  supportSlope := (5599537240788877 / 1000000000000000 : ℚ)
  oldCenter := (195424178027819 / 250000000000000 : ℚ)
  newCoefficients := coefficients_550
  oldLo := (9768750000000001 / 12500000000000000 : ℚ)
  oldHi := (78200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1803]
}

def cell_6469 : Cell := { cellDefaults with
  domain := ⟨(20718749999999999 / 100000000000000000 : ℚ), (20724999999999999 / 100000000000000000 : ℚ)⟩
  r := (2753197210457 / 3125000000000 : ℚ)
  w := (1274909552681 / 1250000000000 : ℚ)
  center := (20721874999999999 / 100000000000000000 : ℚ)
  supportValue := (1564093447458853 / 2000000000000000 : ℚ)
  supportSlope := (1120138701691431 / 200000000000000 : ℚ)
  oldCenter := (1564093447458853 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_550
  oldLo := (9768750000000001 / 12500000000000000 : ℚ)
  oldHi := (9781250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1803, piece_1804]
}

def cell_6470 : Cell := { cellDefaults with
  domain := ⟨(20724999999999999 / 100000000000000000 : ℚ), (20731249999999999 / 100000000000000000 : ℚ)⟩
  r := (2753197210457 / 3125000000000 : ℚ)
  w := (1274909552681 / 1250000000000 : ℚ)
  center := (20728124999999999 / 100000000000000000 : ℚ)
  supportValue := (1955992004669783 / 2500000000000000 : ℚ)
  supportSlope := (1400468349977313 / 250000000000000 : ℚ)
  oldCenter := (1955992004669783 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_550
  oldLo := (78200000000000003 / 100000000000000000 : ℚ)
  oldHi := (78300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1804, piece_1805]
}

def cell_6471 : Cell := { cellDefaults with
  domain := ⟨(20731249999999999 / 100000000000000000 : ℚ), (20737499999999999 / 100000000000000000 : ℚ)⟩
  r := (2753197210457 / 3125000000000 : ℚ)
  w := (1274909552681 / 1250000000000 : ℚ)
  center := (20734374999999999 / 100000000000000000 : ℚ)
  supportValue := (1565493900906269 / 2000000000000000 : ℚ)
  supportSlope := (5602965215386391 / 1000000000000000 : ℚ)
  oldCenter := (1565493900906269 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_550
  oldLo := (9781250000000001 / 12500000000000000 : ℚ)
  oldHi := (78300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1805]
}

def cell_6472 : Cell := { cellDefaults with
  domain := ⟨(20737499999999999 / 100000000000000000 : ℚ), (20743749999999999 / 100000000000000000 : ℚ)⟩
  r := (2753197210457 / 3125000000000 : ℚ)
  w := (1274909552681 / 1250000000000 : ℚ)
  center := (20740624999999999 / 100000000000000000 : ℚ)
  supportValue := (39154858635843 / 50000000000000 : ℚ)
  supportSlope := (2241625295579297 / 400000000000000 : ℚ)
  oldCenter := (39154858635843 / 50000000000000 : ℚ)
  newCoefficients := coefficients_550
  oldLo := (9781250000000001 / 12500000000000000 : ℚ)
  oldHi := (78350000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1805, piece_1806]
}

def cell_6473 : Cell := { cellDefaults with
  domain := ⟨(20743749999999999 / 100000000000000000 : ℚ), (20749999999999999 / 100000000000000000 : ℚ)⟩
  r := (2753197210457 / 3125000000000 : ℚ)
  w := (1274909552681 / 1250000000000 : ℚ)
  center := (20746874999999999 / 100000000000000000 : ℚ)
  supportValue := (489654665580539 / 625000000000000 : ℚ)
  supportSlope := (140131020425871 / 25000000000000 : ℚ)
  oldCenter := (489654665580539 / 625000000000000 : ℚ)
  newCoefficients := coefficients_550
  oldLo := (78300000000000003 / 100000000000000000 : ℚ)
  oldHi := (78400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1806, piece_1807]
}

def cell_6474 : Cell := { cellDefaults with
  domain := ⟨(20749999999999999 / 100000000000000000 : ℚ), (20756249999999999 / 100000000000000000 : ℚ)⟩
  r := (44011206909779 / 50000000000000 : ℚ)
  w := (10201970053061 / 10000000000000 : ℚ)
  center := (20753124999999999 / 100000000000000000 : ℚ)
  supportValue := (78329967096377 / 100000000000000 : ℚ)
  supportSlope := (11203783319949423 / 2000000000000000 : ℚ)
  oldCenter := (78329967096377 / 100000000000000 : ℚ)
  newCoefficients := coefficients_551
  oldLo := (78300000000000003 / 100000000000000000 : ℚ)
  oldHi := (78350000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1806]
}

def cell_6475 : Cell := { cellDefaults with
  domain := ⟨(20756249999999999 / 100000000000000000 : ℚ), (20762499999999999 / 100000000000000000 : ℚ)⟩
  r := (44011206909779 / 50000000000000 : ℚ)
  w := (10201970053061 / 10000000000000 : ℚ)
  center := (20759374999999999 / 100000000000000000 : ℚ)
  supportValue := (7836498224130891 / 10000000000000000 : ℚ)
  supportSlope := (700366215544479 / 125000000000000 : ℚ)
  oldCenter := (7836498224130891 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_551
  oldLo := (78300000000000003 / 100000000000000000 : ℚ)
  oldHi := (78400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1806, piece_1807]
}

def cell_6476 : Cell := { cellDefaults with
  domain := ⟨(20762499999999999 / 100000000000000000 : ℚ), (20768749999999999 / 100000000000000000 : ℚ)⟩
  r := (44011206909779 / 50000000000000 : ℚ)
  w := (10201970053061 / 10000000000000 : ℚ)
  center := (20765624999999999 / 100000000000000000 : ℚ)
  supportValue := (7840000473789563 / 10000000000000000 : ℚ)
  supportSlope := (11208212278216223 / 2000000000000000 : ℚ)
  oldCenter := (7840000473789563 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_551
  oldLo := (78350000000000009 / 100000000000000000 : ℚ)
  oldHi := (1568603351955307 / 2000000000000000 : ℚ)
  oldPieces := [piece_1807, piece_1808]
}

def cell_6477 : Cell := { cellDefaults with
  domain := ⟨(20768749999999999 / 100000000000000000 : ℚ), (20774999999999999 / 100000000000000000 : ℚ)⟩
  r := (44011206909779 / 50000000000000 : ℚ)
  w := (10201970053061 / 10000000000000 : ℚ)
  center := (20771874999999999 / 100000000000000000 : ℚ)
  supportValue := (1960875838394967 / 2500000000000000 : ℚ)
  supportSlope := (5605273778222397 / 1000000000000000 : ℚ)
  oldCenter := (1960875838394967 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_551
  oldLo := (78400000000000003 / 100000000000000000 : ℚ)
  oldHi := (78500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1808, piece_1809, piece_1810]
}

def cell_6478 : Cell := { cellDefaults with
  domain := ⟨(20774999999999999 / 100000000000000000 : ℚ), (20781249999999999 / 100000000000000000 : ℚ)⟩
  r := (44011206909779 / 50000000000000 : ℚ)
  w := (10201970053061 / 10000000000000 : ℚ)
  center := (20778124999999999 / 100000000000000000 : ℚ)
  supportValue := (7847006961585477 / 10000000000000000 : ℚ)
  supportSlope := (560630766016601 / 100000000000000 : ℚ)
  oldCenter := (7847006961585477 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_551
  oldLo := (78450000000000009 / 100000000000000000 : ℚ)
  oldHi := (78500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1810]
}

def cell_6479 : Cell := { cellDefaults with
  domain := ⟨(20781249999999999 / 100000000000000000 : ℚ), (20787499999999999 / 100000000000000000 : ℚ)⟩
  r := (44011206909779 / 50000000000000 : ℚ)
  w := (10201970053061 / 10000000000000 : ℚ)
  center := (20784374999999999 / 100000000000000000 : ℚ)
  supportValue := (7850511303905603 / 10000000000000000 : ℚ)
  supportSlope := (5607454210634799 / 1000000000000000 : ℚ)
  oldCenter := (7850511303905603 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_551
  oldLo := (78450000000000009 / 100000000000000000 : ℚ)
  oldHi := (78550000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1810, piece_1811]
}

def cell_6480 : Cell := { cellDefaults with
  domain := ⟨(20787499999999999 / 100000000000000000 : ℚ), (20793749999999999 / 100000000000000000 : ℚ)⟩
  r := (44011206909779 / 50000000000000 : ℚ)
  w := (10201970053061 / 10000000000000 : ℚ)
  center := (20790624999999999 / 100000000000000000 : ℚ)
  supportValue := (1963504078097071 / 2500000000000000 : ℚ)
  supportSlope := (1121725599835699 / 200000000000000 : ℚ)
  oldCenter := (1963504078097071 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_551
  oldLo := (78500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1811, piece_1812]
}

def cell_6481 : Cell := { cellDefaults with
  domain := ⟨(20793749999999999 / 100000000000000000 : ℚ), (20799999999999999 / 100000000000000000 : ℚ)⟩
  r := (44011206909779 / 50000000000000 : ℚ)
  w := (10201970053061 / 10000000000000 : ℚ)
  center := (20796874999999999 / 100000000000000000 : ℚ)
  supportValue := (3928761009577563 / 5000000000000000 : ℚ)
  supportSlope := (5609721422802139 / 1000000000000000 : ℚ)
  oldCenter := (3928761009577563 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_551
  oldLo := (78550000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1812]
}

def cell_6482 : Cell := { cellDefaults with
  domain := ⟨(20799999999999999 / 100000000000000000 : ℚ), (20806249999999999 / 100000000000000000 : ℚ)⟩
  r := (17588543426201 / 20000000000000 : ℚ)
  w := (510234029403 / 500000000000 : ℚ)
  center := (20803124999999999 / 100000000000000000 : ℚ)
  supportValue := (491002898578559 / 625000000000000 : ℚ)
  supportSlope := (5606319909626123 / 1000000000000000 : ℚ)
  oldCenter := (491002898578559 / 625000000000000 : ℚ)
  newCoefficients := coefficients_552
  oldLo := (78500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1811, piece_1812]
}

def cell_6483 : Cell := { cellDefaults with
  domain := ⟨(20806249999999999 / 100000000000000000 : ℚ), (20812499999999999 / 100000000000000000 : ℚ)⟩
  r := (17588543426201 / 20000000000000 : ℚ)
  w := (510234029403 / 500000000000 : ℚ)
  center := (20809374999999999 / 100000000000000000 : ℚ)
  supportValue := (7859550713197277 / 10000000000000000 : ℚ)
  supportSlope := (560749262508331 / 100000000000000 : ℚ)
  oldCenter := (7859550713197277 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_552
  oldLo := (78550000000000009 / 100000000000000000 : ℚ)
  oldHi := (78650000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1812, piece_1813]
}

def cell_6484 : Cell := { cellDefaults with
  domain := ⟨(20812499999999999 / 100000000000000000 : ℚ), (20818749999999999 / 100000000000000000 : ℚ)⟩
  r := (17588543426201 / 20000000000000 : ℚ)
  w := (510234029403 / 500000000000 : ℚ)
  center := (20815624999999999 / 100000000000000000 : ℚ)
  supportValue := (3931527855032893 / 5000000000000000 : ℚ)
  supportSlope := (5608643436993077 / 1000000000000000 : ℚ)
  oldCenter := (3931527855032893 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_552
  oldLo := (78600000000000003 / 100000000000000000 : ℚ)
  oldHi := (78650000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1813]
}

def cell_6485 : Cell := { cellDefaults with
  domain := ⟨(20818749999999999 / 100000000000000000 : ℚ), (20824999999999999 / 100000000000000000 : ℚ)⟩
  r := (17588543426201 / 20000000000000 : ℚ)
  w := (510234029403 / 500000000000 : ℚ)
  center := (20821874999999999 / 100000000000000000 : ℚ)
  supportValue := (7866561439183729 / 10000000000000000 : ℚ)
  supportSlope := (5609672011514633 / 1000000000000000 : ℚ)
  oldCenter := (7866561439183729 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_552
  oldLo := (78600000000000003 / 100000000000000000 : ℚ)
  oldHi := (78700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1813, piece_1814]
}

def cell_6486 : Cell := { cellDefaults with
  domain := ⟨(20824999999999999 / 100000000000000000 : ℚ), (20831249999999999 / 100000000000000000 : ℚ)⟩
  r := (17588543426201 / 20000000000000 : ℚ)
  w := (510234029403 / 500000000000 : ℚ)
  center := (20828124999999999 / 100000000000000000 : ℚ)
  supportValue := (1967516974940491 / 2500000000000000 : ℚ)
  supportSlope := (5610842488778189 / 1000000000000000 : ℚ)
  oldCenter := (1967516974940491 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_552
  oldLo := (78650000000000009 / 100000000000000000 : ℚ)
  oldHi := (78750000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1814, piece_1815]
}

def cell_6487 : Cell := { cellDefaults with
  domain := ⟨(20831249999999999 / 100000000000000000 : ℚ), (20837499999999999 / 100000000000000000 : ℚ)⟩
  r := (17588543426201 / 20000000000000 : ℚ)
  w := (510234029403 / 500000000000 : ℚ)
  center := (20834374999999999 / 100000000000000000 : ℚ)
  supportValue := (393678749734477 / 500000000000000 : ℚ)
  supportSlope := (5612011705956377 / 1000000000000000 : ℚ)
  oldCenter := (393678749734477 / 500000000000000 : ℚ)
  newCoefficients := coefficients_552
  oldLo := (78700000000000003 / 100000000000000000 : ℚ)
  oldHi := (78800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1815, piece_1816]
}

def cell_6488 : Cell := { cellDefaults with
  domain := ⟨(20837499999999999 / 100000000000000000 : ℚ), (20843749999999999 / 100000000000000000 : ℚ)⟩
  r := (17588543426201 / 20000000000000 : ℚ)
  w := (510234029403 / 500000000000 : ℚ)
  center := (20840624999999999 / 100000000000000000 : ℚ)
  supportValue := (492317675980403 / 625000000000000 : ℚ)
  supportSlope := (701631790787971 / 125000000000000 : ℚ)
  oldCenter := (492317675980403 / 625000000000000 : ℚ)
  newCoefficients := coefficients_552
  oldLo := (78750000000000009 / 100000000000000000 : ℚ)
  oldHi := (78800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1816]
}

def cell_6489 : Cell := { cellDefaults with
  domain := ⟨(20843749999999999 / 100000000000000000 : ℚ), (20849999999999999 / 100000000000000000 : ℚ)⟩
  r := (17588543426201 / 20000000000000 : ℚ)
  w := (510234029403 / 500000000000 : ℚ)
  center := (20846874999999999 / 100000000000000000 : ℚ)
  supportValue := (492536960421809 / 625000000000000 : ℚ)
  supportSlope := (2807093327313659 / 500000000000000 : ℚ)
  oldCenter := (492536960421809 / 625000000000000 : ℚ)
  newCoefficients := coefficients_552
  oldLo := (78750000000000009 / 100000000000000000 : ℚ)
  oldHi := (39424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1816, piece_1817]
}

def cell_6490 : Cell := { cellDefaults with
  domain := ⟨(20849999999999999 / 100000000000000000 : ℚ), (20856249999999999 / 100000000000000000 : ℚ)⟩
  r := (21965804257191 / 25000000000000 : ℚ)
  w := (10207406858143 / 10000000000000 : ℚ)
  center := (20853124999999999 / 100000000000000000 : ℚ)
  supportValue := (393955860845929 / 500000000000000 : ℚ)
  supportSlope := (350679599146031 / 62500000000000 : ℚ)
  oldCenter := (393955860845929 / 500000000000000 : ℚ)
  newCoefficients := coefficients_553
  oldLo := (78750000000000009 / 100000000000000000 : ℚ)
  oldHi := (39424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1816, piece_1817]
}

def cell_6491 : Cell := { cellDefaults with
  domain := ⟨(20856249999999999 / 100000000000000000 : ℚ), (20862499999999999 / 100000000000000000 : ℚ)⟩
  r := (21965804257191 / 25000000000000 : ℚ)
  w := (10207406858143 / 10000000000000 : ℚ)
  center := (20859374999999999 / 100000000000000000 : ℚ)
  supportValue := (1576524865259541 / 2000000000000000 : ℚ)
  supportSlope := (224478945632427 / 40000000000000 : ℚ)
  oldCenter := (1576524865259541 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_553
  oldLo := (78800000000000003 / 100000000000000000 : ℚ)
  oldHi := (39424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1817]
}

def cell_6492 : Cell := { cellDefaults with
  domain := ⟨(20862499999999999 / 100000000000000000 : ℚ), (20868749999999999 / 100000000000000000 : ℚ)⟩
  r := (21965804257191 / 25000000000000 : ℚ)
  w := (10207406858143 / 10000000000000 : ℚ)
  center := (20865624999999999 / 100000000000000000 : ℚ)
  supportValue := (3943066082465837 / 5000000000000000 : ℚ)
  supportSlope := (5613046289877133 / 1000000000000000 : ℚ)
  oldCenter := (3943066082465837 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_553
  oldLo := (78800000000000003 / 100000000000000000 : ℚ)
  oldHi := (78900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1817, piece_1818]
}

def cell_6493 : Cell := { cellDefaults with
  domain := ⟨(20868749999999999 / 100000000000000000 : ℚ), (20874999999999999 / 100000000000000000 : ℚ)⟩
  r := (21965804257191 / 25000000000000 : ℚ)
  w := (10207406858143 / 10000000000000 : ℚ)
  center := (20871874999999999 / 100000000000000000 : ℚ)
  supportValue := (197241017703869 / 250000000000000 : ℚ)
  supportSlope := (1754441263808193 / 312500000000000 : ℚ)
  oldCenter := (197241017703869 / 250000000000000 : ℚ)
  newCoefficients := coefficients_553
  oldLo := (39424999999999999 / 50000000000000000 : ℚ)
  oldHi := (39474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1818, piece_1819]
}

def cell_6494 : Cell := { cellDefaults with
  domain := ⟨(20874999999999999 / 100000000000000000 : ℚ), (20881249999999999 / 100000000000000000 : ℚ)⟩
  r := (21965804257191 / 25000000000000 : ℚ)
  w := (10207406858143 / 10000000000000 : ℚ)
  center := (20878124999999999 / 100000000000000000 : ℚ)
  supportValue := (394657495183821 / 500000000000000 : ℚ)
  supportSlope := (1123073315992329 / 200000000000000 : ℚ)
  oldCenter := (394657495183821 / 500000000000000 : ℚ)
  newCoefficients := coefficients_553
  oldLo := (78900000000000003 / 100000000000000000 : ℚ)
  oldHi := (39474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1819]
}

def cell_6495 : Cell := { cellDefaults with
  domain := ⟨(20881249999999999 / 100000000000000000 : ℚ), (20887499999999999 / 100000000000000000 : ℚ)⟩
  r := (21965804257191 / 25000000000000 : ℚ)
  w := (10207406858143 / 10000000000000 : ℚ)
  center := (20884374999999999 / 100000000000000000 : ℚ)
  supportValue := (3948329913541433 / 5000000000000000 : ℚ)
  supportSlope := (561637340317489 / 100000000000000 : ℚ)
  oldCenter := (3948329913541433 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_553
  oldLo := (78900000000000003 / 100000000000000000 : ℚ)
  oldHi := (19750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1819, piece_1820, piece_1821]
}

def cell_6496 : Cell := { cellDefaults with
  domain := ⟨(20887499999999999 / 100000000000000000 : ℚ), (20893749999999999 / 100000000000000000 : ℚ)⟩
  r := (21965804257191 / 25000000000000 : ℚ)
  w := (10207406858143 / 10000000000000 : ℚ)
  center := (20890624999999999 / 100000000000000000 : ℚ)
  supportValue := (4937606491707 / 6250000000000 : ℚ)
  supportSlope := (175541695984327 / 31250000000000 : ℚ)
  oldCenter := (4937606491707 / 6250000000000 : ℚ)
  newCoefficients := coefficients_553
  oldLo := (61705656424581 / 78125000000000 : ℚ)
  oldHi := (39524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1821, piece_1822]
}

def cell_6497 : Cell := { cellDefaults with
  domain := ⟨(20893749999999999 / 100000000000000000 : ℚ), (20899999999999999 / 100000000000000000 : ℚ)⟩
  r := (21965804257191 / 25000000000000 : ℚ)
  w := (10207406858143 / 10000000000000 : ℚ)
  center := (20896874999999999 / 100000000000000000 : ℚ)
  supportValue := (3951840793909767 / 5000000000000000 : ℚ)
  supportSlope := (5618574487812111 / 1000000000000000 : ℚ)
  oldCenter := (3951840793909767 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_553
  oldLo := (19750000000000001 / 25000000000000000 : ℚ)
  oldHi := (19775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1822, piece_1823]
}

def cell_6498 : Cell := { cellDefaults with
  domain := ⟨(20899999999999999 / 100000000000000000 : ℚ), (2613163407821229 / 12500000000000000 : ℚ)⟩
  r := (87783916433913 / 100000000000000 : ℚ)
  w := (1021015039739 / 1000000000000 : ℚ)
  center := (41805307262569831 / 200000000000000000 : ℚ)
  supportValue := (3950972702901001 / 5000000000000000 : ℚ)
  supportSlope := (1123008710505843 / 200000000000000 : ℚ)
  oldCenter := (3950972702901001 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_554
  oldLo := (19750000000000001 / 25000000000000000 : ℚ)
  oldHi := (39524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1822]
}

def cell_6499 : Cell := { cellDefaults with
  domain := ⟨(2613163407821229 / 12500000000000000 : ℚ), (4182122905027933 / 20000000000000000 : ℚ)⟩
  r := (87783916433913 / 100000000000000 : ℚ)
  w := (1021015039739 / 1000000000000 : ℚ)
  center := (41815921787709497 / 200000000000000000 : ℚ)
  supportValue := (1976231442576987 / 2500000000000000 : ℚ)
  supportSlope := (2808025475449893 / 500000000000000 : ℚ)
  oldCenter := (1976231442576987 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_554
  oldLo := (19750000000000001 / 25000000000000000 : ℚ)
  oldHi := (19775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1822, piece_1823]
}

theorem check_6450 : SourceCertificateFamily.RightNormalized.check cell_6450 = true := by
  decide +kernel

theorem check_6451 : SourceCertificateFamily.RightNormalized.check cell_6451 = true := by
  decide +kernel

theorem check_6452 : SourceCertificateFamily.RightNormalized.check cell_6452 = true := by
  decide +kernel

theorem check_6453 : SourceCertificateFamily.RightNormalized.check cell_6453 = true := by
  decide +kernel

theorem check_6454 : SourceCertificateFamily.RightNormalized.check cell_6454 = true := by
  decide +kernel

theorem check_6455 : SourceCertificateFamily.RightNormalized.check cell_6455 = true := by
  decide +kernel

theorem check_6456 : SourceCertificateFamily.RightNormalized.check cell_6456 = true := by
  decide +kernel

theorem check_6457 : SourceCertificateFamily.RightNormalized.check cell_6457 = true := by
  decide +kernel

theorem check_6458 : SourceCertificateFamily.RightNormalized.check cell_6458 = true := by
  decide +kernel

theorem check_6459 : SourceCertificateFamily.RightNormalized.check cell_6459 = true := by
  decide +kernel

theorem check_6460 : SourceCertificateFamily.RightNormalized.check cell_6460 = true := by
  decide +kernel

theorem check_6461 : SourceCertificateFamily.RightNormalized.check cell_6461 = true := by
  decide +kernel

theorem check_6462 : SourceCertificateFamily.RightNormalized.check cell_6462 = true := by
  decide +kernel

theorem check_6463 : SourceCertificateFamily.RightNormalized.check cell_6463 = true := by
  decide +kernel

theorem check_6464 : SourceCertificateFamily.RightNormalized.check cell_6464 = true := by
  decide +kernel

theorem check_6465 : SourceCertificateFamily.RightNormalized.check cell_6465 = true := by
  decide +kernel

theorem check_6466 : SourceCertificateFamily.RightNormalized.check cell_6466 = true := by
  decide +kernel

theorem check_6467 : SourceCertificateFamily.RightNormalized.check cell_6467 = true := by
  decide +kernel

theorem check_6468 : SourceCertificateFamily.RightNormalized.check cell_6468 = true := by
  decide +kernel

theorem check_6469 : SourceCertificateFamily.RightNormalized.check cell_6469 = true := by
  decide +kernel

theorem check_6470 : SourceCertificateFamily.RightNormalized.check cell_6470 = true := by
  decide +kernel

theorem check_6471 : SourceCertificateFamily.RightNormalized.check cell_6471 = true := by
  decide +kernel

theorem check_6472 : SourceCertificateFamily.RightNormalized.check cell_6472 = true := by
  decide +kernel

theorem check_6473 : SourceCertificateFamily.RightNormalized.check cell_6473 = true := by
  decide +kernel

theorem check_6474 : SourceCertificateFamily.RightNormalized.check cell_6474 = true := by
  decide +kernel

theorem check_6475 : SourceCertificateFamily.RightNormalized.check cell_6475 = true := by
  decide +kernel

theorem check_6476 : SourceCertificateFamily.RightNormalized.check cell_6476 = true := by
  decide +kernel

theorem check_6477 : SourceCertificateFamily.RightNormalized.check cell_6477 = true := by
  decide +kernel

theorem check_6478 : SourceCertificateFamily.RightNormalized.check cell_6478 = true := by
  decide +kernel

theorem check_6479 : SourceCertificateFamily.RightNormalized.check cell_6479 = true := by
  decide +kernel

theorem check_6480 : SourceCertificateFamily.RightNormalized.check cell_6480 = true := by
  decide +kernel

theorem check_6481 : SourceCertificateFamily.RightNormalized.check cell_6481 = true := by
  decide +kernel

theorem check_6482 : SourceCertificateFamily.RightNormalized.check cell_6482 = true := by
  decide +kernel

theorem check_6483 : SourceCertificateFamily.RightNormalized.check cell_6483 = true := by
  decide +kernel

theorem check_6484 : SourceCertificateFamily.RightNormalized.check cell_6484 = true := by
  decide +kernel

theorem check_6485 : SourceCertificateFamily.RightNormalized.check cell_6485 = true := by
  decide +kernel

theorem check_6486 : SourceCertificateFamily.RightNormalized.check cell_6486 = true := by
  decide +kernel

theorem check_6487 : SourceCertificateFamily.RightNormalized.check cell_6487 = true := by
  decide +kernel

theorem check_6488 : SourceCertificateFamily.RightNormalized.check cell_6488 = true := by
  decide +kernel

theorem check_6489 : SourceCertificateFamily.RightNormalized.check cell_6489 = true := by
  decide +kernel

theorem check_6490 : SourceCertificateFamily.RightNormalized.check cell_6490 = true := by
  decide +kernel

theorem check_6491 : SourceCertificateFamily.RightNormalized.check cell_6491 = true := by
  decide +kernel

theorem check_6492 : SourceCertificateFamily.RightNormalized.check cell_6492 = true := by
  decide +kernel

theorem check_6493 : SourceCertificateFamily.RightNormalized.check cell_6493 = true := by
  decide +kernel

theorem check_6494 : SourceCertificateFamily.RightNormalized.check cell_6494 = true := by
  decide +kernel

theorem check_6495 : SourceCertificateFamily.RightNormalized.check cell_6495 = true := by
  decide +kernel

theorem check_6496 : SourceCertificateFamily.RightNormalized.check cell_6496 = true := by
  decide +kernel

theorem check_6497 : SourceCertificateFamily.RightNormalized.check cell_6497 = true := by
  decide +kernel

theorem check_6498 : SourceCertificateFamily.RightNormalized.check cell_6498 = true := by
  decide +kernel

theorem check_6499 : SourceCertificateFamily.RightNormalized.check cell_6499 = true := by
  decide +kernel

def cells : List Cell := [cell_6450, cell_6451, cell_6452, cell_6453, cell_6454, cell_6455, cell_6456, cell_6457, cell_6458, cell_6459, cell_6460, cell_6461, cell_6462, cell_6463, cell_6464, cell_6465, cell_6466, cell_6467, cell_6468, cell_6469, cell_6470, cell_6471, cell_6472, cell_6473, cell_6474, cell_6475, cell_6476, cell_6477, cell_6478, cell_6479, cell_6480, cell_6481, cell_6482, cell_6483, cell_6484, cell_6485, cell_6486, cell_6487, cell_6488, cell_6489, cell_6490, cell_6491, cell_6492, cell_6493, cell_6494, cell_6495, cell_6496, cell_6497, cell_6498, cell_6499]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6450, SourceCertificateFamily.of_right_checked check_6451, SourceCertificateFamily.of_right_checked check_6452, SourceCertificateFamily.of_right_checked check_6453, SourceCertificateFamily.of_right_checked check_6454, SourceCertificateFamily.of_right_checked check_6455, SourceCertificateFamily.of_right_checked check_6456, SourceCertificateFamily.of_right_checked check_6457, SourceCertificateFamily.of_right_checked check_6458, SourceCertificateFamily.of_right_checked check_6459, SourceCertificateFamily.of_right_checked check_6460, SourceCertificateFamily.of_right_checked check_6461, SourceCertificateFamily.of_right_checked check_6462, SourceCertificateFamily.of_right_checked check_6463, SourceCertificateFamily.of_right_checked check_6464, SourceCertificateFamily.of_right_checked check_6465, SourceCertificateFamily.of_right_checked check_6466, SourceCertificateFamily.of_right_checked check_6467, SourceCertificateFamily.of_right_checked check_6468, SourceCertificateFamily.of_right_checked check_6469, SourceCertificateFamily.of_right_checked check_6470, SourceCertificateFamily.of_right_checked check_6471, SourceCertificateFamily.of_right_checked check_6472, SourceCertificateFamily.of_right_checked check_6473, SourceCertificateFamily.of_right_checked check_6474, SourceCertificateFamily.of_right_checked check_6475, SourceCertificateFamily.of_right_checked check_6476, SourceCertificateFamily.of_right_checked check_6477, SourceCertificateFamily.of_right_checked check_6478, SourceCertificateFamily.of_right_checked check_6479, SourceCertificateFamily.of_right_checked check_6480, SourceCertificateFamily.of_right_checked check_6481, SourceCertificateFamily.of_right_checked check_6482, SourceCertificateFamily.of_right_checked check_6483, SourceCertificateFamily.of_right_checked check_6484, SourceCertificateFamily.of_right_checked check_6485, SourceCertificateFamily.of_right_checked check_6486, SourceCertificateFamily.of_right_checked check_6487, SourceCertificateFamily.of_right_checked check_6488, SourceCertificateFamily.of_right_checked check_6489, SourceCertificateFamily.of_right_checked check_6490, SourceCertificateFamily.of_right_checked check_6491, SourceCertificateFamily.of_right_checked check_6492, SourceCertificateFamily.of_right_checked check_6493, SourceCertificateFamily.of_right_checked check_6494, SourceCertificateFamily.of_right_checked check_6495, SourceCertificateFamily.of_right_checked check_6496, SourceCertificateFamily.of_right_checked check_6497, SourceCertificateFamily.of_right_checked check_6498, SourceCertificateFamily.of_right_checked check_6499, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0129

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0129
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0129
open AnalyticBounds.ExpressionCertificate

theorem linked_6450 : Linked cell_6450 pieces := by
  refine ⟨piece_548,piece_548_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6450,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1791_mem
    · exact piece_1792_mem

theorem linked_6451 : Linked cell_6451 pieces := by
  refine ⟨piece_548,piece_548_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6451,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1792_mem

theorem linked_6452 : Linked cell_6452 pieces := by
  refine ⟨piece_548,piece_548_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6452,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1792_mem
    · exact piece_1793_mem

theorem linked_6453 : Linked cell_6453 pieces := by
  refine ⟨piece_548,piece_548_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6453,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1793_mem
    · exact piece_1794_mem

theorem linked_6454 : Linked cell_6454 pieces := by
  refine ⟨piece_548,piece_548_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6454,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1794_mem

theorem linked_6455 : Linked cell_6455 pieces := by
  refine ⟨piece_548,piece_548_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6455,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1794_mem
    · exact piece_1795_mem

theorem linked_6456 : Linked cell_6456 pieces := by
  refine ⟨piece_548,piece_548_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6456,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1795_mem
    · exact piece_1796_mem

theorem linked_6457 : Linked cell_6457 pieces := by
  refine ⟨piece_548,piece_548_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6457,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1796_mem
    · exact piece_1797_mem
    · exact piece_1798_mem

theorem linked_6458 : Linked cell_6458 pieces := by
  refine ⟨piece_549,piece_549_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6458,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1796_mem
    · exact piece_1797_mem

theorem linked_6459 : Linked cell_6459 pieces := by
  refine ⟨piece_549,piece_549_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6459,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1797_mem
    · exact piece_1798_mem

theorem linked_6460 : Linked cell_6460 pieces := by
  refine ⟨piece_549,piece_549_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6460,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1798_mem
    · exact piece_1799_mem

theorem linked_6461 : Linked cell_6461 pieces := by
  refine ⟨piece_549,piece_549_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6461,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1799_mem

theorem linked_6462 : Linked cell_6462 pieces := by
  refine ⟨piece_549,piece_549_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6462,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1799_mem
    · exact piece_1800_mem

theorem linked_6463 : Linked cell_6463 pieces := by
  refine ⟨piece_549,piece_549_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6463,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1800_mem
    · exact piece_1801_mem

theorem linked_6464 : Linked cell_6464 pieces := by
  refine ⟨piece_549,piece_549_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6464,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1801_mem

theorem linked_6465 : Linked cell_6465 pieces := by
  refine ⟨piece_549,piece_549_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6465,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1801_mem
    · exact piece_1802_mem

theorem linked_6466 : Linked cell_6466 pieces := by
  refine ⟨piece_550,piece_550_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6466,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1801_mem
    · exact piece_1802_mem

theorem linked_6467 : Linked cell_6467 pieces := by
  refine ⟨piece_550,piece_550_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6467,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1802_mem
    · exact piece_1803_mem

theorem linked_6468 : Linked cell_6468 pieces := by
  refine ⟨piece_550,piece_550_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6468,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1803_mem

theorem linked_6469 : Linked cell_6469 pieces := by
  refine ⟨piece_550,piece_550_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6469,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1803_mem
    · exact piece_1804_mem

theorem linked_6470 : Linked cell_6470 pieces := by
  refine ⟨piece_550,piece_550_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6470,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1804_mem
    · exact piece_1805_mem

theorem linked_6471 : Linked cell_6471 pieces := by
  refine ⟨piece_550,piece_550_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6471,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1805_mem

theorem linked_6472 : Linked cell_6472 pieces := by
  refine ⟨piece_550,piece_550_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6472,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1805_mem
    · exact piece_1806_mem

theorem linked_6473 : Linked cell_6473 pieces := by
  refine ⟨piece_550,piece_550_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6473,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1806_mem
    · exact piece_1807_mem

theorem linked_6474 : Linked cell_6474 pieces := by
  refine ⟨piece_551,piece_551_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6474,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1806_mem

theorem linked_6475 : Linked cell_6475 pieces := by
  refine ⟨piece_551,piece_551_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6475,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1806_mem
    · exact piece_1807_mem

theorem linked_6476 : Linked cell_6476 pieces := by
  refine ⟨piece_551,piece_551_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6476,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1807_mem
    · exact piece_1808_mem

theorem linked_6477 : Linked cell_6477 pieces := by
  refine ⟨piece_551,piece_551_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6477,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1808_mem
    · exact piece_1809_mem
    · exact piece_1810_mem

theorem linked_6478 : Linked cell_6478 pieces := by
  refine ⟨piece_551,piece_551_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6478,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1810_mem

theorem linked_6479 : Linked cell_6479 pieces := by
  refine ⟨piece_551,piece_551_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6479,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1810_mem
    · exact piece_1811_mem

theorem linked_6480 : Linked cell_6480 pieces := by
  refine ⟨piece_551,piece_551_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6480,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1811_mem
    · exact piece_1812_mem

theorem linked_6481 : Linked cell_6481 pieces := by
  refine ⟨piece_551,piece_551_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6481,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1812_mem

theorem linked_6482 : Linked cell_6482 pieces := by
  refine ⟨piece_552,piece_552_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6482,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1811_mem
    · exact piece_1812_mem

theorem linked_6483 : Linked cell_6483 pieces := by
  refine ⟨piece_552,piece_552_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6483,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1812_mem
    · exact piece_1813_mem

theorem linked_6484 : Linked cell_6484 pieces := by
  refine ⟨piece_552,piece_552_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6484,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1813_mem

theorem linked_6485 : Linked cell_6485 pieces := by
  refine ⟨piece_552,piece_552_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6485,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1813_mem
    · exact piece_1814_mem

theorem linked_6486 : Linked cell_6486 pieces := by
  refine ⟨piece_552,piece_552_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6486,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1814_mem
    · exact piece_1815_mem

theorem linked_6487 : Linked cell_6487 pieces := by
  refine ⟨piece_552,piece_552_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6487,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1815_mem
    · exact piece_1816_mem

theorem linked_6488 : Linked cell_6488 pieces := by
  refine ⟨piece_552,piece_552_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6488,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1816_mem

theorem linked_6489 : Linked cell_6489 pieces := by
  refine ⟨piece_552,piece_552_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6489,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1816_mem
    · exact piece_1817_mem

theorem linked_6490 : Linked cell_6490 pieces := by
  refine ⟨piece_553,piece_553_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6490,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1816_mem
    · exact piece_1817_mem

theorem linked_6491 : Linked cell_6491 pieces := by
  refine ⟨piece_553,piece_553_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6491,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1817_mem

theorem linked_6492 : Linked cell_6492 pieces := by
  refine ⟨piece_553,piece_553_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6492,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1817_mem
    · exact piece_1818_mem

theorem linked_6493 : Linked cell_6493 pieces := by
  refine ⟨piece_553,piece_553_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6493,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1818_mem
    · exact piece_1819_mem

theorem linked_6494 : Linked cell_6494 pieces := by
  refine ⟨piece_553,piece_553_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6494,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1819_mem

theorem linked_6495 : Linked cell_6495 pieces := by
  refine ⟨piece_553,piece_553_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6495,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1819_mem
    · exact piece_1820_mem
    · exact piece_1821_mem

theorem linked_6496 : Linked cell_6496 pieces := by
  refine ⟨piece_553,piece_553_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6496,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1821_mem
    · exact piece_1822_mem

theorem linked_6497 : Linked cell_6497 pieces := by
  refine ⟨piece_553,piece_553_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6497,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1822_mem
    · exact piece_1823_mem

theorem linked_6498 : Linked cell_6498 pieces := by
  refine ⟨piece_554,piece_554_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6498,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1822_mem

theorem linked_6499 : Linked cell_6499 pieces := by
  refine ⟨piece_554,piece_554_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6499,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1822_mem
    · exact piece_1823_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0129.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0129.cells,List.forall_mem_cons]
  exact ⟨linked_6450, linked_6451, linked_6452, linked_6453, linked_6454, linked_6455, linked_6456, linked_6457, linked_6458, linked_6459, linked_6460, linked_6461, linked_6462, linked_6463, linked_6464, linked_6465, linked_6466, linked_6467, linked_6468, linked_6469, linked_6470, linked_6471, linked_6472, linked_6473, linked_6474, linked_6475, linked_6476, linked_6477, linked_6478, linked_6479, linked_6480, linked_6481, linked_6482, linked_6483, linked_6484, linked_6485, linked_6486, linked_6487, linked_6488, linked_6489, linked_6490, linked_6491, linked_6492, linked_6493, linked_6494, linked_6495, linked_6496, linked_6497, linked_6498, linked_6499, by simp⟩

theorem covered : covers (20599999999999999 / 100000000000000000 : ℚ) (4182122905027933 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0129.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0129
