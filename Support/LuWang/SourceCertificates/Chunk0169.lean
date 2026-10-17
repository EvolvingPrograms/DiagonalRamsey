import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0169
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(16665625000000001 / 50000000000000000 : ℚ), (16668750000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (19132614916643 / 25000000000000 : ℚ)
  w := (2098861705569 / 1250000000000 : ℚ)
  center := (16667187500000001 / 50000000000000000 : ℚ)
  supportValue := (1689739101175751 / 2500000000000000 : ℚ)
  supportSlope := (-9627321247300813 / 2000000000000000 : ℚ)
  oldCenter := (1689739101175751 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_826
  oldLo := (16875000000000001 / 25000000000000000 : ℚ)
  oldHi := (67549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1572, piece_1573]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8450 : Cell := { cellDefaults with
  r := (76586457257793 / 100000000000000 : ℚ)
  w := (8399921975091 / 5000000000000 : ℚ)
  newCoefficients := coefficients_825
  oldLo := (67549999999999999 / 100000000000000000 : ℚ)
  oldHi := (67649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1572, piece_1573]
}

def cell_8451 : Cell := { cellDefaults with
  domain := ⟨(16668750000000001 / 50000000000000000 : ℚ), (16671875000000001 / 50000000000000000 : ℚ)⟩
  r := (76586457257793 / 100000000000000 : ℚ)
  w := (8399921975091 / 5000000000000 : ℚ)
  center := (16670312500000001 / 50000000000000000 : ℚ)
  supportValue := (6755948874381963 / 10000000000000000 : ℚ)
  supportSlope := (-4810449196995137 / 1000000000000000 : ℚ)
  oldCenter := (6755948874381963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_825
  oldHi := (13520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1571, piece_1572]
}

def cell_8452 : Cell := { cellDefaults with
  domain := ⟨(16671875000000001 / 50000000000000000 : ℚ), (16675000000000001 / 50000000000000000 : ℚ)⟩
  r := (76586457257793 / 100000000000000 : ℚ)
  w := (8399921975091 / 5000000000000 : ℚ)
  center := (16673437500000001 / 50000000000000000 : ℚ)
  supportValue := (6752943250817539 / 10000000000000000 : ℚ)
  supportSlope := (-961491768096323 / 200000000000000 : ℚ)
  oldCenter := (6752943250817539 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_825
  oldPieces := [piece_1571]
}

def cell_8453 : Cell := { cellDefaults with
  domain := ⟨(16675000000000001 / 50000000000000000 : ℚ), (16678125000000001 / 50000000000000000 : ℚ)⟩
  center := (16676562500000001 / 50000000000000000 : ℚ)
  supportValue := (3381044467685833 / 5000000000000000 : ℚ)
  supportSlope := (-4813424177534387 / 1000000000000000 : ℚ)
  oldCenter := (3381044467685833 / 5000000000000000 : ℚ)
  oldLo := (13520000000000001 / 20000000000000000 : ℚ)
  oldHi := (67649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1573]
}

def cell_8454 : Cell := { cellDefaults with
  domain := ⟨(16678125000000001 / 50000000000000000 : ℚ), (16681250000000001 / 50000000000000000 : ℚ)⟩
  center := (16679687500000001 / 50000000000000000 : ℚ)
  supportValue := (844885188343341 / 1250000000000000 : ℚ)
  supportSlope := (-120260845526321 / 25000000000000 : ℚ)
  oldCenter := (844885188343341 / 1250000000000000 : ℚ)
  oldLo := (67549999999999999 / 100000000000000000 : ℚ)
  oldHi := (67649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1572, piece_1573]
}

def cell_8455 : Cell := { cellDefaults with
  domain := ⟨(16681250000000001 / 50000000000000000 : ℚ), (16684375000000001 / 50000000000000000 : ℚ)⟩
  center := (16682812500000001 / 50000000000000000 : ℚ)
  supportValue := (6756075978745597 / 10000000000000000 : ℚ)
  supportSlope := (-4807230102880311 / 1000000000000000 : ℚ)
  oldCenter := (6756075978745597 / 10000000000000000 : ℚ)
  oldHi := (13520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1571, piece_1572]
}

def cell_8456 : Cell := { cellDefaults with
  domain := ⟨(16684375000000001 / 50000000000000000 : ℚ), (16687500000000001 / 50000000000000000 : ℚ)⟩
  center := (16685937500000001 / 50000000000000000 : ℚ)
  supportValue := (3376536182297053 / 5000000000000000 : ℚ)
  supportSlope := (-4804267352270131 / 1000000000000000 : ℚ)
  oldCenter := (3376536182297053 / 5000000000000000 : ℚ)
  oldPieces := [piece_1571]
}

def cell_8457 : Cell := { cellDefaults with
  domain := ⟨(16687500000000001 / 50000000000000000 : ℚ), (16690625000000001 / 50000000000000000 : ℚ)⟩
  center := (16689062500000001 / 50000000000000000 : ℚ)
  supportValue := (1687517686183323 / 2500000000000000 : ℚ)
  supportSlope := (-4801132570921851 / 1000000000000000 : ℚ)
  oldCenter := (1687517686183323 / 2500000000000000 : ℚ)
  oldLo := (67449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1570, piece_1571]
}

def cell_8458 : Cell := { cellDefaults with
  domain := ⟨(16690625000000001 / 50000000000000000 : ℚ), (16693750000000001 / 50000000000000000 : ℚ)⟩
  center := (16692187500000001 / 50000000000000000 : ℚ)
  supportValue := (6747070940296277 / 10000000000000000 : ℚ)
  supportSlope := (-239901034152723 / 50000000000000 : ℚ)
  oldCenter := (6747070940296277 / 10000000000000000 : ℚ)
  oldLo := (67449999999999999 / 100000000000000000 : ℚ)
  oldHi := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1570]
}

def cell_8459 : Cell := { cellDefaults with
  domain := ⟨(16693750000000001 / 50000000000000000 : ℚ), (16696875000000001 / 50000000000000000 : ℚ)⟩
  center := (16695312500000001 / 50000000000000000 : ℚ)
  supportValue := (1686018283610817 / 2500000000000000 : ℚ)
  supportSlope := (-1198760661453413 / 250000000000000 : ℚ)
  oldCenter := (1686018283610817 / 2500000000000000 : ℚ)
  oldLo := (16850000000000001 / 25000000000000000 : ℚ)
  oldHi := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1569, piece_1570]
}

def cell_8460 : Cell := { cellDefaults with
  domain := ⟨(16696875000000001 / 50000000000000000 : ℚ), (16700000000000001 / 50000000000000000 : ℚ)⟩
  center := (16698437500000001 / 50000000000000000 : ℚ)
  supportValue := (6741077223646943 / 10000000000000000 : ℚ)
  supportSlope := (-4791847270865901 / 1000000000000000 : ℚ)
  oldCenter := (6741077223646943 / 10000000000000000 : ℚ)
  oldLo := (421054469273743 / 625000000000000 : ℚ)
  oldHi := (67449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1568, piece_1569]
}

def cell_8461 : Cell := { cellDefaults with
  domain := ⟨(16700000000000001 / 50000000000000000 : ℚ), (16703125000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16701562500000001 / 50000000000000000 : ℚ)
  supportValue := (3375098430548919 / 5000000000000000 : ℚ)
  supportSlope := (-2398956447837719 / 500000000000000 : ℚ)
  oldCenter := (3375098430548919 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (67449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1570, piece_1571]
}

def cell_8462 : Cell := { cellDefaults with
  domain := ⟨(16703125000000001 / 50000000000000000 : ℚ), (16706250000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16704687500000001 / 50000000000000000 : ℚ)
  supportValue := (6747199066559003 / 10000000000000000 : ℚ)
  supportSlope := (-4794828068291679 / 1000000000000000 : ℚ)
  oldCenter := (6747199066559003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (67449999999999999 / 100000000000000000 : ℚ)
  oldHi := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1570]
}

def cell_8463 : Cell := { cellDefaults with
  domain := ⟨(16706250000000001 / 50000000000000000 : ℚ), (16709375000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16707812500000001 / 50000000000000000 : ℚ)
  supportValue := (210756352063661 / 312500000000000 : ℚ)
  supportSlope := (-958367590205711 / 200000000000000 : ℚ)
  oldCenter := (210756352063661 / 312500000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (16850000000000001 / 25000000000000000 : ℚ)
  oldHi := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1569, piece_1570]
}

def cell_8464 : Cell := { cellDefaults with
  domain := ⟨(16709375000000001 / 50000000000000000 : ℚ), (16712500000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16710937500000001 / 50000000000000000 : ℚ)
  supportValue := (6741209343362579 / 10000000000000000 : ℚ)
  supportSlope := (-9577299741089007 / 2000000000000000 : ℚ)
  oldCenter := (6741209343362579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (421054469273743 / 625000000000000 : ℚ)
  oldHi := (67449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1568, piece_1569]
}

def cell_8465 : Cell := { cellDefaults with
  domain := ⟨(16712500000000001 / 50000000000000000 : ℚ), (16715625000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16714062500000001 / 50000000000000000 : ℚ)
  supportValue := (6738217336176747 / 10000000000000000 : ℚ)
  supportSlope := (-1196431597085379 / 250000000000000 : ℚ)
  oldCenter := (6738217336176747 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (67349999999999999 / 100000000000000000 : ℚ)
  oldHi := (16850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1567, piece_1568]
}

def cell_8466 : Cell := { cellDefaults with
  domain := ⟨(16715625000000001 / 50000000000000000 : ℚ), (16718750000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16717187500000001 / 50000000000000000 : ℚ)
  supportValue := (6735227298653231 / 10000000000000000 : ℚ)
  supportSlope := (-95651717291787 / 20000000000000 : ℚ)
  oldCenter := (6735227298653231 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (16825000000000001 / 25000000000000000 : ℚ)
  oldHi := (421054469273743 / 625000000000000 : ℚ)
  oldPieces := [piece_1566, piece_1567]
}

def cell_8467 : Cell := { cellDefaults with
  domain := ⟨(16718750000000001 / 50000000000000000 : ℚ), (16721875000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16720312500000001 / 50000000000000000 : ℚ)
  supportValue := (269289563210279 / 400000000000000 : ℚ)
  supportSlope := (-9559032347439711 / 2000000000000000 : ℚ)
  oldCenter := (269289563210279 / 400000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (16825000000000001 / 25000000000000000 : ℚ)
  oldHi := (67349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1566]
}

def cell_8468 : Cell := { cellDefaults with
  domain := ⟨(16721875000000001 / 50000000000000000 : ℚ), (16725000000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16723437500000001 / 50000000000000000 : ℚ)
  supportValue := (3364626425460723 / 5000000000000000 : ℚ)
  supportSlope := (-4776529309548749 / 1000000000000000 : ℚ)
  oldCenter := (3364626425460723 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (67249999999999999 / 100000000000000000 : ℚ)
  oldHi := (67349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1565, piece_1566]
}

def cell_8469 : Cell := { cellDefaults with
  domain := ⟨(16725000000000001 / 50000000000000000 : ℚ), (16728125000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16726562500000001 / 50000000000000000 : ℚ)
  supportValue := (6738345796675823 / 10000000000000000 : ℚ)
  supportSlope := (-956508250614263 / 200000000000000 : ℚ)
  oldCenter := (6738345796675823 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (67349999999999999 / 100000000000000000 : ℚ)
  oldHi := (16850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1567, piece_1568]
}

def cell_8470 : Cell := { cellDefaults with
  domain := ⟨(16728125000000001 / 50000000000000000 : ℚ), (16731250000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16729687500000001 / 50000000000000000 : ℚ)
  supportValue := (6735357747494523 / 10000000000000000 : ℚ)
  supportSlope := (-955877638651259 / 200000000000000 : ℚ)
  oldCenter := (6735357747494523 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (16825000000000001 / 25000000000000000 : ℚ)
  oldHi := (421054469273743 / 625000000000000 : ℚ)
  oldPieces := [piece_1566, piece_1567]
}

def cell_8471 : Cell := { cellDefaults with
  domain := ⟨(16731250000000001 / 50000000000000000 : ℚ), (16734375000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16732812500000001 / 50000000000000000 : ℚ)
  supportValue := (1346474305069329 / 2000000000000000 : ℚ)
  supportSlope := (-9552691903472521 / 2000000000000000 : ℚ)
  oldCenter := (1346474305069329 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (16825000000000001 / 25000000000000000 : ℚ)
  oldHi := (67349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1566]
}

def cell_8472 : Cell := { cellDefaults with
  domain := ⟨(16734375000000001 / 50000000000000000 : ℚ), (16737500000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16735937500000001 / 50000000000000000 : ℚ)
  supportValue := (6729387287914271 / 10000000000000000 : ℚ)
  supportSlope := (-954669185402679 / 200000000000000 : ℚ)
  oldCenter := (6729387287914271 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (67249999999999999 / 100000000000000000 : ℚ)
  oldHi := (67349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1565, piece_1566]
}

def cell_8473 : Cell := { cellDefaults with
  domain := ⟨(16737500000000001 / 50000000000000000 : ℚ), (16740625000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16739062500000001 / 50000000000000000 : ℚ)
  supportValue := (672640489983161 / 1000000000000000 : ℚ)
  supportSlope := (-74533948803579 / 15625000000000 : ℚ)
  oldCenter := (672640489983161 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (16800000000000001 / 25000000000000000 : ℚ)
  oldHi := (16825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1564, piece_1565]
}

def cell_8474 : Cell := { cellDefaults with
  domain := ⟨(16740625000000001 / 50000000000000000 : ℚ), (16743750000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16742187500000001 / 50000000000000000 : ℚ)
  supportValue := (1344684887060311 / 2000000000000000 : ℚ)
  supportSlope := (-1191824454098267 / 250000000000000 : ℚ)
  oldCenter := (1344684887060311 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (16800000000000001 / 25000000000000000 : ℚ)
  oldHi := (67249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1564]
}

def cell_8475 : Cell := { cellDefaults with
  domain := ⟨(16743750000000001 / 50000000000000000 : ℚ), (16746875000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16745312500000001 / 50000000000000000 : ℚ)
  supportValue := (6720445909967617 / 10000000000000000 : ℚ)
  supportSlope := (-4764141607143557 / 1000000000000000 : ℚ)
  oldCenter := (6720445909967617 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (67149999999999999 / 100000000000000000 : ℚ)
  oldHi := (67249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1563, piece_1564]
}

def cell_8476 : Cell := { cellDefaults with
  domain := ⟨(16746875000000001 / 50000000000000000 : ℚ), (16750000000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16748437500000001 / 50000000000000000 : ℚ)
  supportValue := (1679367303414261 / 2500000000000000 : ℚ)
  supportSlope := (-4761123673212353 / 1000000000000000 : ℚ)
  oldCenter := (1679367303414261 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (67149999999999999 / 100000000000000000 : ℚ)
  oldHi := (16800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1563]
}

def cell_8477 : Cell := { cellDefaults with
  domain := ⟨(16750000000000001 / 50000000000000000 : ℚ), (16753125000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16751562500000001 / 50000000000000000 : ℚ)
  supportValue := (3363268188638513 / 5000000000000000 : ℚ)
  supportSlope := (-4766989534914501 / 1000000000000000 : ℚ)
  oldCenter := (3363268188638513 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (67249999999999999 / 100000000000000000 : ℚ)
  oldHi := (16825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1565]
}

def cell_8478 : Cell := { cellDefaults with
  domain := ⟨(16753125000000001 / 50000000000000000 : ℚ), (16756250000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16754687500000001 / 50000000000000000 : ℚ)
  supportValue := (1680889476063003 / 2500000000000000 : ℚ)
  supportSlope := (-2382064261608363 / 500000000000000 : ℚ)
  oldCenter := (1680889476063003 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (16800000000000001 / 25000000000000000 : ℚ)
  oldHi := (16825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1564, piece_1565]
}

def cell_8479 : Cell := { cellDefaults with
  domain := ⟨(16756250000000001 / 50000000000000000 : ℚ), (16759375000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16757812500000001 / 50000000000000000 : ℚ)
  supportValue := (1680145338261439 / 2500000000000000 : ℚ)
  supportSlope := (-4760965856128507 / 1000000000000000 : ℚ)
  oldCenter := (1680145338261439 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (67149999999999999 / 100000000000000000 : ℚ)
  oldHi := (67249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1563, piece_1564]
}

def cell_8480 : Cell := { cellDefaults with
  domain := ⟨(16759375000000001 / 50000000000000000 : ℚ), (16762500000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16760937500000001 / 50000000000000000 : ℚ)
  supportValue := (6717606639284591 / 10000000000000000 : ℚ)
  supportSlope := (-1903190481408501 / 400000000000000 : ℚ)
  oldCenter := (6717606639284591 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (67149999999999999 / 100000000000000000 : ℚ)
  oldHi := (16800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1563]
}

def cell_8481 : Cell := { cellDefaults with
  domain := ⟨(16762500000000001 / 50000000000000000 : ℚ), (16765625000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16764062500000001 / 50000000000000000 : ℚ)
  supportValue := (6714633900778917 / 10000000000000000 : ℚ)
  supportSlope := (-594369567199049 / 125000000000000 : ℚ)
  oldCenter := (6714633900778917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (16775000000000001 / 25000000000000000 : ℚ)
  oldHi := (16800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1562, piece_1563]
}

def cell_8482 : Cell := { cellDefaults with
  domain := ⟨(16765625000000001 / 50000000000000000 : ℚ), (16768750000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16767187500000001 / 50000000000000000 : ℚ)
  supportValue := (6711662976987757 / 10000000000000000 : ℚ)
  supportSlope := (-4751825517807617 / 1000000000000000 : ℚ)
  oldCenter := (6711662976987757 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (16775000000000001 / 25000000000000000 : ℚ)
  oldHi := (67149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1562]
}

def cell_8483 : Cell := { cellDefaults with
  domain := ⟨(16768750000000001 / 50000000000000000 : ℚ), (16771875000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16770312500000001 / 50000000000000000 : ℚ)
  supportValue := (3354346995436167 / 5000000000000000 : ℚ)
  supportSlope := (-2374477336671177 / 500000000000000 : ℚ)
  oldCenter := (3354346995436167 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (33524999999999999 / 50000000000000000 : ℚ)
  oldHi := (67149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1561, piece_1562]
}

def cell_8484 : Cell := { cellDefaults with
  domain := ⟨(16771875000000001 / 50000000000000000 : ℚ), (16775000000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16773437500000001 / 50000000000000000 : ℚ)
  supportValue := (3352863453686019 / 5000000000000000 : ℚ)
  supportSlope := (-4745800056124239 / 1000000000000000 : ℚ)
  oldCenter := (3352863453686019 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (16750000000000001 / 25000000000000000 : ℚ)
  oldHi := (16775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1560, piece_1561]
}

def cell_8485 : Cell := { cellDefaults with
  domain := ⟨(16775000000000001 / 50000000000000000 : ℚ), (16778125000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16776562500000001 / 50000000000000000 : ℚ)
  supportValue := (6714767626938917 / 10000000000000000 : ℚ)
  supportSlope := (-237589036648167 / 50000000000000 : ℚ)
  oldCenter := (6714767626938917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (16775000000000001 / 25000000000000000 : ℚ)
  oldHi := (16800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1562, piece_1563]
}

def cell_8486 : Cell := { cellDefaults with
  domain := ⟨(16778125000000001 / 50000000000000000 : ℚ), (16781250000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16779687500000001 / 50000000000000000 : ℚ)
  supportValue := (3355899336437189 / 5000000000000000 : ℚ)
  supportSlope := (-4748677757756781 / 1000000000000000 : ℚ)
  oldCenter := (3355899336437189 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (16775000000000001 / 25000000000000000 : ℚ)
  oldHi := (67149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1562]
}

def cell_8487 : Cell := { cellDefaults with
  domain := ⟨(16781250000000001 / 50000000000000000 : ℚ), (16784375000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16782812500000001 / 50000000000000000 : ℚ)
  supportValue := (335441583247913 / 500000000000000 : ℚ)
  supportSlope := (-2372896619284859 / 500000000000000 : ℚ)
  oldCenter := (335441583247913 / 500000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (33524999999999999 / 50000000000000000 : ℚ)
  oldHi := (67149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1561, piece_1562]
}

def cell_8488 : Cell := { cellDefaults with
  domain := ⟨(16784375000000001 / 50000000000000000 : ℚ), (16787500000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16785937500000001 / 50000000000000000 : ℚ)
  supportValue := (8382333177289 / 12500000000000 : ℚ)
  supportSlope := (-474264560964599 / 100000000000000 : ℚ)
  oldCenter := (8382333177289 / 12500000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (16750000000000001 / 25000000000000000 : ℚ)
  oldHi := (16775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1560, piece_1561]
}

def cell_8489 : Cell := { cellDefaults with
  domain := ⟨(16787500000000001 / 50000000000000000 : ℚ), (16790625000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16789062500000001 / 50000000000000000 : ℚ)
  supportValue := (1340580654535761 / 2000000000000000 : ℚ)
  supportSlope := (-2369859058171997 / 500000000000000 : ℚ)
  oldCenter := (1340580654535761 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (16750000000000001 / 25000000000000000 : ℚ)
  oldHi := (33524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1560]
}

def cell_8490 : Cell := { cellDefaults with
  domain := ⟨(16790625000000001 / 50000000000000000 : ℚ), (16793750000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16792187500000001 / 50000000000000000 : ℚ)
  supportValue := (1674985492348881 / 2500000000000000 : ℚ)
  supportSlope := (-4736669042937791 / 1000000000000000 : ℚ)
  oldCenter := (1674985492348881 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (33474999999999999 / 50000000000000000 : ℚ)
  oldHi := (33524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1559, piece_1560]
}

def cell_8491 : Cell := { cellDefaults with
  domain := ⟨(16793750000000001 / 50000000000000000 : ℚ), (16796875000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16795312500000001 / 50000000000000000 : ℚ)
  supportValue := (1674245610043053 / 2500000000000000 : ℚ)
  supportSlope := (-4733603283899157 / 1000000000000000 : ℚ)
  oldCenter := (1674245610043053 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (33474999999999999 / 50000000000000000 : ℚ)
  oldHi := (16750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1559]
}

def cell_8492 : Cell := { cellDefaults with
  domain := ⟨(16796875000000001 / 50000000000000000 : ℚ), (16800000000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16798437500000001 / 50000000000000000 : ℚ)
  supportValue := (418376554301933 / 625000000000000 : ℚ)
  supportSlope := (-295668744112243 / 62500000000000 : ℚ)
  oldCenter := (418376554301933 / 625000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (16725000000000001 / 25000000000000000 : ℚ)
  oldHi := (16750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1558, piece_1559]
}

def cell_8493 : Cell := { cellDefaults with
  domain := ⟨(16800000000000001 / 50000000000000000 : ℚ), (16803125000000001 / 50000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (16801562500000001 / 50000000000000000 : ℚ)
  supportValue := (1340607940530153 / 2000000000000000 : ℚ)
  supportSlope := (-2368288744927227 / 500000000000000 : ℚ)
  oldCenter := (1340607940530153 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_831
  oldLo := (16750000000000001 / 25000000000000000 : ℚ)
  oldHi := (33524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1560]
}

def cell_8494 : Cell := { cellDefaults with
  domain := ⟨(16803125000000001 / 50000000000000000 : ℚ), (16806250000000001 / 50000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (16804687500000001 / 50000000000000000 : ℚ)
  supportValue := (26800321462649 / 40000000000000 : ℚ)
  supportSlope := (-4733514586465759 / 1000000000000000 : ℚ)
  oldCenter := (26800321462649 / 40000000000000 : ℚ)
  newCoefficients := coefficients_831
  oldLo := (33474999999999999 / 50000000000000000 : ℚ)
  oldHi := (33524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1559, piece_1560]
}

def cell_8495 : Cell := { cellDefaults with
  domain := ⟨(16806250000000001 / 50000000000000000 : ℚ), (16809375000000001 / 50000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (16807812500000001 / 50000000000000000 : ℚ)
  supportValue := (3348561399941049 / 5000000000000000 : ℚ)
  supportSlope := (-946095532319191 / 200000000000000 : ℚ)
  oldCenter := (3348561399941049 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_831
  oldLo := (33474999999999999 / 50000000000000000 : ℚ)
  oldHi := (16750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1559]
}

def cell_8496 : Cell := { cellDefaults with
  domain := ⟨(16809375000000001 / 50000000000000000 : ℚ), (16812500000000001 / 50000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (16810937500000001 / 50000000000000000 : ℚ)
  supportValue := (6694167193389331 / 10000000000000000 : ℚ)
  supportSlope := (-4727559837636619 / 1000000000000000 : ℚ)
  oldCenter := (6694167193389331 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_831
  oldLo := (16725000000000001 / 25000000000000000 : ℚ)
  oldHi := (16750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1558, piece_1559]
}

def cell_8497 : Cell := { cellDefaults with
  domain := ⟨(16812500000000001 / 50000000000000000 : ℚ), (6726256983240223 / 20000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (67256284916201117 / 200000000000000000 : ℚ)
  supportValue := (6691205180695269 / 10000000000000000 : ℚ)
  supportSlope := (-9448840757539143 / 2000000000000000 : ℚ)
  oldCenter := (6691205180695269 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_831
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (33474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1557, piece_1558]
}

def cell_8498 : Cell := { cellDefaults with
  domain := ⟨(6726256983240223 / 20000000000000000 : ℚ), (134543854748603347 / 400000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (269068994413407807 / 800000000000000000 : ℚ)
  supportValue := (3344308001252303 / 5000000000000000 : ℚ)
  supportSlope := (-2360982797529769 / 500000000000000 : ℚ)
  oldCenter := (3344308001252303 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_832
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1557]
}

def cell_8499 : Cell := { cellDefaults with
  domain := ⟨(134543854748603347 / 400000000000000000 : ℚ), (67281284916201117 / 200000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (269106424581005581 / 800000000000000000 : ℚ)
  supportValue := (167160181872793 / 250000000000000 : ℚ)
  supportSlope := (-4719518332307767 / 1000000000000000 : ℚ)
  oldCenter := (167160181872793 / 250000000000000 : ℚ)
  newCoefficients := coefficients_832
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1557]
}

theorem check_8450 : cell_8450.check = true := by
  decide +kernel

theorem check_8451 : cell_8451.check = true := by
  decide +kernel

theorem check_8452 : cell_8452.check = true := by
  decide +kernel

theorem check_8453 : cell_8453.check = true := by
  decide +kernel

theorem check_8454 : cell_8454.check = true := by
  decide +kernel

theorem check_8455 : cell_8455.check = true := by
  decide +kernel

theorem check_8456 : cell_8456.check = true := by
  decide +kernel

theorem check_8457 : cell_8457.check = true := by
  decide +kernel

theorem check_8458 : cell_8458.check = true := by
  decide +kernel

theorem check_8459 : cell_8459.check = true := by
  decide +kernel

theorem check_8460 : cell_8460.check = true := by
  decide +kernel

theorem check_8461 : cell_8461.check = true := by
  decide +kernel

theorem check_8462 : cell_8462.check = true := by
  decide +kernel

theorem check_8463 : cell_8463.check = true := by
  decide +kernel

theorem check_8464 : cell_8464.check = true := by
  decide +kernel

theorem check_8465 : cell_8465.check = true := by
  decide +kernel

theorem check_8466 : cell_8466.check = true := by
  decide +kernel

theorem check_8467 : cell_8467.check = true := by
  decide +kernel

theorem check_8468 : cell_8468.check = true := by
  decide +kernel

theorem check_8469 : cell_8469.check = true := by
  decide +kernel

theorem check_8470 : cell_8470.check = true := by
  decide +kernel

theorem check_8471 : cell_8471.check = true := by
  decide +kernel

theorem check_8472 : cell_8472.check = true := by
  decide +kernel

theorem check_8473 : cell_8473.check = true := by
  decide +kernel

theorem check_8474 : cell_8474.check = true := by
  decide +kernel

theorem check_8475 : cell_8475.check = true := by
  decide +kernel

theorem check_8476 : cell_8476.check = true := by
  decide +kernel

theorem check_8477 : cell_8477.check = true := by
  decide +kernel

theorem check_8478 : cell_8478.check = true := by
  decide +kernel

theorem check_8479 : cell_8479.check = true := by
  decide +kernel

theorem check_8480 : cell_8480.check = true := by
  decide +kernel

theorem check_8481 : cell_8481.check = true := by
  decide +kernel

theorem check_8482 : cell_8482.check = true := by
  decide +kernel

theorem check_8483 : cell_8483.check = true := by
  decide +kernel

theorem check_8484 : cell_8484.check = true := by
  decide +kernel

theorem check_8485 : cell_8485.check = true := by
  decide +kernel

theorem check_8486 : cell_8486.check = true := by
  decide +kernel

theorem check_8487 : cell_8487.check = true := by
  decide +kernel

theorem check_8488 : cell_8488.check = true := by
  decide +kernel

theorem check_8489 : cell_8489.check = true := by
  decide +kernel

theorem check_8490 : cell_8490.check = true := by
  decide +kernel

theorem check_8491 : cell_8491.check = true := by
  decide +kernel

theorem check_8492 : cell_8492.check = true := by
  decide +kernel

theorem check_8493 : cell_8493.check = true := by
  decide +kernel

theorem check_8494 : cell_8494.check = true := by
  decide +kernel

theorem check_8495 : cell_8495.check = true := by
  decide +kernel

theorem check_8496 : cell_8496.check = true := by
  decide +kernel

theorem check_8497 : cell_8497.check = true := by
  decide +kernel

theorem check_8498 : cell_8498.check = true := by
  decide +kernel

theorem check_8499 : cell_8499.check = true := by
  decide +kernel

def cells : List Cell := [cell_8450, cell_8451, cell_8452, cell_8453, cell_8454, cell_8455, cell_8456, cell_8457, cell_8458, cell_8459, cell_8460, cell_8461, cell_8462, cell_8463, cell_8464, cell_8465, cell_8466, cell_8467, cell_8468, cell_8469, cell_8470, cell_8471, cell_8472, cell_8473, cell_8474, cell_8475, cell_8476, cell_8477, cell_8478, cell_8479, cell_8480, cell_8481, cell_8482, cell_8483, cell_8484, cell_8485, cell_8486, cell_8487, cell_8488, cell_8489, cell_8490, cell_8491, cell_8492, cell_8493, cell_8494, cell_8495, cell_8496, cell_8497, cell_8498, cell_8499]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8450, check_8451, check_8452, check_8453, check_8454, check_8455, check_8456, check_8457, check_8458, check_8459, check_8460, check_8461, check_8462, check_8463, check_8464, check_8465, check_8466, check_8467, check_8468, check_8469, check_8470, check_8471, check_8472, check_8473, check_8474, check_8475, check_8476, check_8477, check_8478, check_8479, check_8480, check_8481, check_8482, check_8483, check_8484, check_8485, check_8486, check_8487, check_8488, check_8489, check_8490, check_8491, check_8492, check_8493, check_8494, check_8495, check_8496, check_8497, check_8498, check_8499, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0169

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0169
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0169
open AnalyticBounds.ExpressionCertificate

theorem linked_8450 : Linked cell_8450 pieces := by
  apply Linked.of_piece piece_825 piece_825_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8450, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1572_mem, piece_1573_mem⟩

theorem linked_8451 : Linked cell_8451 pieces := by
  apply Linked.of_piece piece_825 piece_825_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8451, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1571_mem, piece_1572_mem⟩

theorem linked_8452 : Linked cell_8452 pieces := by
  apply Linked.of_piece piece_825 piece_825_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8452, List.cons_subset, List.nil_subset, and_true]
  exact piece_1571_mem

theorem linked_8453 : Linked cell_8453 pieces := by
  apply Linked.of_piece piece_826 piece_826_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8453, List.cons_subset, List.nil_subset, and_true]
  exact piece_1573_mem

theorem linked_8454 : Linked cell_8454 pieces := by
  apply Linked.of_piece piece_826 piece_826_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8454, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1572_mem, piece_1573_mem⟩

theorem linked_8455 : Linked cell_8455 pieces := by
  apply Linked.of_piece piece_826 piece_826_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8455, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1571_mem, piece_1572_mem⟩

theorem linked_8456 : Linked cell_8456 pieces := by
  apply Linked.of_piece piece_826 piece_826_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8456, List.cons_subset, List.nil_subset, and_true]
  exact piece_1571_mem

theorem linked_8457 : Linked cell_8457 pieces := by
  apply Linked.of_piece piece_826 piece_826_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8457, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1570_mem, piece_1571_mem⟩

theorem linked_8458 : Linked cell_8458 pieces := by
  apply Linked.of_piece piece_826 piece_826_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8458, List.cons_subset, List.nil_subset, and_true]
  exact piece_1570_mem

theorem linked_8459 : Linked cell_8459 pieces := by
  apply Linked.of_piece piece_826 piece_826_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8459, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1569_mem, piece_1570_mem⟩

theorem linked_8460 : Linked cell_8460 pieces := by
  apply Linked.of_piece piece_826 piece_826_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8460, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1568_mem, piece_1569_mem⟩

theorem linked_8461 : Linked cell_8461 pieces := by
  apply Linked.of_piece piece_827 piece_827_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8461, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1570_mem, piece_1571_mem⟩

theorem linked_8462 : Linked cell_8462 pieces := by
  apply Linked.of_piece piece_827 piece_827_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8462, List.cons_subset, List.nil_subset, and_true]
  exact piece_1570_mem

theorem linked_8463 : Linked cell_8463 pieces := by
  apply Linked.of_piece piece_827 piece_827_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8463, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1569_mem, piece_1570_mem⟩

theorem linked_8464 : Linked cell_8464 pieces := by
  apply Linked.of_piece piece_827 piece_827_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8464, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1568_mem, piece_1569_mem⟩

theorem linked_8465 : Linked cell_8465 pieces := by
  apply Linked.of_piece piece_827 piece_827_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8465, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1567_mem, piece_1568_mem⟩

theorem linked_8466 : Linked cell_8466 pieces := by
  apply Linked.of_piece piece_827 piece_827_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8466, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1566_mem, piece_1567_mem⟩

theorem linked_8467 : Linked cell_8467 pieces := by
  apply Linked.of_piece piece_827 piece_827_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8467, List.cons_subset, List.nil_subset, and_true]
  exact piece_1566_mem

theorem linked_8468 : Linked cell_8468 pieces := by
  apply Linked.of_piece piece_827 piece_827_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8468, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1565_mem, piece_1566_mem⟩

theorem linked_8469 : Linked cell_8469 pieces := by
  apply Linked.of_piece piece_828 piece_828_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8469, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1567_mem, piece_1568_mem⟩

theorem linked_8470 : Linked cell_8470 pieces := by
  apply Linked.of_piece piece_828 piece_828_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8470, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1566_mem, piece_1567_mem⟩

theorem linked_8471 : Linked cell_8471 pieces := by
  apply Linked.of_piece piece_828 piece_828_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8471, List.cons_subset, List.nil_subset, and_true]
  exact piece_1566_mem

theorem linked_8472 : Linked cell_8472 pieces := by
  apply Linked.of_piece piece_828 piece_828_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8472, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1565_mem, piece_1566_mem⟩

theorem linked_8473 : Linked cell_8473 pieces := by
  apply Linked.of_piece piece_828 piece_828_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8473, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1564_mem, piece_1565_mem⟩

theorem linked_8474 : Linked cell_8474 pieces := by
  apply Linked.of_piece piece_828 piece_828_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8474, List.cons_subset, List.nil_subset, and_true]
  exact piece_1564_mem

theorem linked_8475 : Linked cell_8475 pieces := by
  apply Linked.of_piece piece_828 piece_828_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8475, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1563_mem, piece_1564_mem⟩

theorem linked_8476 : Linked cell_8476 pieces := by
  apply Linked.of_piece piece_828 piece_828_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8476, List.cons_subset, List.nil_subset, and_true]
  exact piece_1563_mem

theorem linked_8477 : Linked cell_8477 pieces := by
  apply Linked.of_piece piece_829 piece_829_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8477, List.cons_subset, List.nil_subset, and_true]
  exact piece_1565_mem

theorem linked_8478 : Linked cell_8478 pieces := by
  apply Linked.of_piece piece_829 piece_829_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8478, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1564_mem, piece_1565_mem⟩

theorem linked_8479 : Linked cell_8479 pieces := by
  apply Linked.of_piece piece_829 piece_829_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8479, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1563_mem, piece_1564_mem⟩

theorem linked_8480 : Linked cell_8480 pieces := by
  apply Linked.of_piece piece_829 piece_829_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8480, List.cons_subset, List.nil_subset, and_true]
  exact piece_1563_mem

theorem linked_8481 : Linked cell_8481 pieces := by
  apply Linked.of_piece piece_829 piece_829_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8481, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1562_mem, piece_1563_mem⟩

theorem linked_8482 : Linked cell_8482 pieces := by
  apply Linked.of_piece piece_829 piece_829_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8482, List.cons_subset, List.nil_subset, and_true]
  exact piece_1562_mem

theorem linked_8483 : Linked cell_8483 pieces := by
  apply Linked.of_piece piece_829 piece_829_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8483, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1561_mem, piece_1562_mem⟩

theorem linked_8484 : Linked cell_8484 pieces := by
  apply Linked.of_piece piece_829 piece_829_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8484, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1560_mem, piece_1561_mem⟩

theorem linked_8485 : Linked cell_8485 pieces := by
  apply Linked.of_piece piece_830 piece_830_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8485, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1562_mem, piece_1563_mem⟩

theorem linked_8486 : Linked cell_8486 pieces := by
  apply Linked.of_piece piece_830 piece_830_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8486, List.cons_subset, List.nil_subset, and_true]
  exact piece_1562_mem

theorem linked_8487 : Linked cell_8487 pieces := by
  apply Linked.of_piece piece_830 piece_830_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8487, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1561_mem, piece_1562_mem⟩

theorem linked_8488 : Linked cell_8488 pieces := by
  apply Linked.of_piece piece_830 piece_830_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8488, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1560_mem, piece_1561_mem⟩

theorem linked_8489 : Linked cell_8489 pieces := by
  apply Linked.of_piece piece_830 piece_830_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8489, List.cons_subset, List.nil_subset, and_true]
  exact piece_1560_mem

theorem linked_8490 : Linked cell_8490 pieces := by
  apply Linked.of_piece piece_830 piece_830_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8490, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1559_mem, piece_1560_mem⟩

theorem linked_8491 : Linked cell_8491 pieces := by
  apply Linked.of_piece piece_830 piece_830_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8491, List.cons_subset, List.nil_subset, and_true]
  exact piece_1559_mem

theorem linked_8492 : Linked cell_8492 pieces := by
  apply Linked.of_piece piece_830 piece_830_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8492, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1558_mem, piece_1559_mem⟩

theorem linked_8493 : Linked cell_8493 pieces := by
  apply Linked.of_piece piece_831 piece_831_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8493, List.cons_subset, List.nil_subset, and_true]
  exact piece_1560_mem

theorem linked_8494 : Linked cell_8494 pieces := by
  apply Linked.of_piece piece_831 piece_831_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8494, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1559_mem, piece_1560_mem⟩

theorem linked_8495 : Linked cell_8495 pieces := by
  apply Linked.of_piece piece_831 piece_831_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8495, List.cons_subset, List.nil_subset, and_true]
  exact piece_1559_mem

theorem linked_8496 : Linked cell_8496 pieces := by
  apply Linked.of_piece piece_831 piece_831_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8496, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1558_mem, piece_1559_mem⟩

theorem linked_8497 : Linked cell_8497 pieces := by
  apply Linked.of_piece piece_831 piece_831_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8497, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1557_mem, piece_1558_mem⟩

theorem linked_8498 : Linked cell_8498 pieces := by
  apply Linked.of_piece piece_832 piece_832_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8498, List.cons_subset, List.nil_subset, and_true]
  exact piece_1557_mem

theorem linked_8499 : Linked cell_8499 pieces := by
  apply Linked.of_piece piece_832 piece_832_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8499, List.cons_subset, List.nil_subset, and_true]
  exact piece_1557_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0169.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0169.cells,List.forall_mem_cons]
  exact ⟨linked_8450, linked_8451, linked_8452, linked_8453, linked_8454, linked_8455, linked_8456, linked_8457, linked_8458, linked_8459, linked_8460, linked_8461, linked_8462, linked_8463, linked_8464, linked_8465, linked_8466, linked_8467, linked_8468, linked_8469, linked_8470, linked_8471, linked_8472, linked_8473, linked_8474, linked_8475, linked_8476, linked_8477, linked_8478, linked_8479, linked_8480, linked_8481, linked_8482, linked_8483, linked_8484, linked_8485, linked_8486, linked_8487, linked_8488, linked_8489, linked_8490, linked_8491, linked_8492, linked_8493, linked_8494, linked_8495, linked_8496, linked_8497, linked_8498, linked_8499, by simp⟩

theorem covered : covers (16665625000000001 / 50000000000000000 : ℚ) (67281284916201117 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0169.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0169
