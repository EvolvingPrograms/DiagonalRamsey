import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0164
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(2543 / 8000 : ℚ), (5087 / 16000 : ℚ)⟩
  branch := .left
  r := (9766908889901 / 12500000000000 : ℚ)
  w := (17049022830599 / 10000000000000 : ℚ)
  center := (10173 / 32000 : ℚ)
  supportValue := (714591929894967 / 1000000000000000 : ℚ)
  supportSlope := (-5332204471923063 / 1000000000000000 : ℚ)
  oldCenter := (714591929894967 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_792
  oldLo := (8925000000000001 / 12500000000000000 : ℚ)
  oldHi := (35725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1656, piece_1657]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8200 : Cell := { cellDefaults with
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldHi := (8937500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1656, piece_1657]
}

def cell_8201 : Cell := { cellDefaults with
  domain := ⟨(5087 / 16000 : ℚ), (159 / 500 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (407 / 1280 : ℚ)
  supportValue := (178564693749963 / 250000000000000 : ℚ)
  supportSlope := (-2664321584067153 / 500000000000000 : ℚ)
  oldCenter := (178564693749963 / 250000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldPieces := [piece_1656]
}

def cell_8202 : Cell := { cellDefaults with
  domain := ⟨(159 / 500 : ℚ), (254450000000000001 / 800000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (508850000000000001 / 1600000000000000000 : ℚ)
  supportValue := (1788151843548459 / 2500000000000000 : ℚ)
  supportSlope := (-1333932244722087 / 250000000000000 : ℚ)
  oldCenter := (1788151843548459 / 2500000000000000 : ℚ)
  oldLo := (8937500000000001 / 12500000000000000 : ℚ)
  oldHi := (35775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1658]
}

def cell_8203 : Cell := { cellDefaults with
  domain := ⟨(254450000000000001 / 800000000000000000 : ℚ), (127250000000000001 / 400000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (508950000000000003 / 1600000000000000000 : ℚ)
  supportValue := (3574636852199873 / 5000000000000000 : ℚ)
  supportSlope := (-5332144842586821 / 1000000000000000 : ℚ)
  oldCenter := (3574636852199873 / 5000000000000000 : ℚ)
  oldLo := (35725000000000001 / 50000000000000000 : ℚ)
  oldHi := (35775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1657, piece_1658]
}

def cell_8204 : Cell := { cellDefaults with
  domain := ⟨(127250000000000001 / 400000000000000000 : ℚ), (254550000000000003 / 800000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (101810000000000001 / 320000000000000000 : ℚ)
  supportValue := (7145942255417247 / 10000000000000000 : ℚ)
  supportSlope := (-5328459343573293 / 1000000000000000 : ℚ)
  oldCenter := (7145942255417247 / 10000000000000000 : ℚ)
  oldHi := (8937500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1656, piece_1657]
}

def cell_8205 : Cell := { cellDefaults with
  domain := ⟨(254550000000000003 / 800000000000000000 : ℚ), (63650000000000001 / 200000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (509150000000000007 / 1600000000000000000 : ℚ)
  supportValue := (714261304444231 / 1000000000000000 : ℚ)
  supportSlope := (-5324910196048087 / 1000000000000000 : ℚ)
  oldCenter := (714261304444231 / 1000000000000000 : ℚ)
  oldPieces := [piece_1656]
}

def cell_8206 : Cell := { cellDefaults with
  domain := ⟨(63650000000000001 / 200000000000000000 : ℚ), (50930000000000001 / 160000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (509250000000000009 / 1600000000000000000 : ℚ)
  supportValue := (446205383434819 / 625000000000000 : ℚ)
  supportSlope := (-2660666027306693 / 500000000000000 : ℚ)
  oldCenter := (446205383434819 / 625000000000000 : ℚ)
  oldLo := (35675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1655, piece_1656]
}

def cell_8207 : Cell := { cellDefaults with
  domain := ⟨(50930000000000001 / 160000000000000000 : ℚ), (127350000000000003 / 400000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (509350000000000011 / 1600000000000000000 : ℚ)
  supportValue := (7135961440767199 / 10000000000000000 : ℚ)
  supportSlope := (-10635304787385067 / 2000000000000000 : ℚ)
  oldCenter := (7135961440767199 / 10000000000000000 : ℚ)
  oldLo := (8912500000000001 / 12500000000000000 : ℚ)
  oldHi := (8925000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1654, piece_1655]
}

def cell_8208 : Cell := { cellDefaults with
  domain := ⟨(127350000000000003 / 400000000000000000 : ℚ), (254750000000000007 / 800000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (509450000000000013 / 1600000000000000000 : ℚ)
  supportValue := (7132638981814837 / 10000000000000000 : ℚ)
  supportSlope := (-1328528298968097 / 250000000000000 : ℚ)
  oldCenter := (7132638981814837 / 10000000000000000 : ℚ)
  oldLo := (8912500000000001 / 12500000000000000 : ℚ)
  oldHi := (35675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1654]
}

def cell_8209 : Cell := { cellDefaults with
  domain := ⟨(254750000000000007 / 800000000000000000 : ℚ), (31850000000000001 / 100000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (101910000000000003 / 320000000000000000 : ℚ)
  supportValue := (7129318821305207 / 10000000000000000 : ℚ)
  supportSlope := (-5310537354475181 / 1000000000000000 : ℚ)
  oldCenter := (7129318821305207 / 10000000000000000 : ℚ)
  oldLo := (35625000000000001 / 50000000000000000 : ℚ)
  oldHi := (35675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1653, piece_1654]
}

def cell_8210 : Cell := { cellDefaults with
  domain := ⟨(31850000000000001 / 100000000000000000 : ℚ), (31856250000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31853125000000001 / 100000000000000000 : ℚ)
  supportValue := (55775848664641 / 78125000000000 : ℚ)
  supportSlope := (-2658793786029179 / 500000000000000 : ℚ)
  oldCenter := (55775848664641 / 78125000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (35675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1655, piece_1656]
}

def cell_8211 : Cell := { cellDefaults with
  domain := ⟨(31856250000000001 / 100000000000000000 : ℚ), (31862500000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31859375000000001 / 100000000000000000 : ℚ)
  supportValue := (445999141874141 / 625000000000000 : ℚ)
  supportSlope := (-5313917811339053 / 1000000000000000 : ℚ)
  oldCenter := (445999141874141 / 625000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (8912500000000001 / 12500000000000000 : ℚ)
  oldHi := (8925000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1654, piece_1655]
}

def cell_8212 : Cell := { cellDefaults with
  domain := ⟨(31862500000000001 / 100000000000000000 : ℚ), (31868750000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31865625000000001 / 100000000000000000 : ℚ)
  supportValue := (1426533228389227 / 2000000000000000 : ℚ)
  supportSlope := (-5310392560581079 / 1000000000000000 : ℚ)
  oldCenter := (1426533228389227 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (8912500000000001 / 12500000000000000 : ℚ)
  oldHi := (35675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1654]
}

def cell_8213 : Cell := { cellDefaults with
  domain := ⟨(31868750000000001 / 100000000000000000 : ℚ), (31875000000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31871875000000001 / 100000000000000000 : ℚ)
  supportValue := (3564674153083323 / 5000000000000000 : ℚ)
  supportSlope := (-1326705723728061 / 250000000000000 : ℚ)
  oldCenter := (3564674153083323 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (35625000000000001 / 50000000000000000 : ℚ)
  oldHi := (35675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1653, piece_1654]
}

def cell_8214 : Cell := { cellDefaults with
  domain := ⟨(31875000000000001 / 100000000000000000 : ℚ), (31881250000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31878125000000001 / 100000000000000000 : ℚ)
  supportValue := (1425206533832027 / 2000000000000000 : ℚ)
  supportSlope := (-1325789805322941 / 250000000000000 : ℚ)
  oldCenter := (1425206533832027 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (1424804469273743 / 2000000000000000 : ℚ)
  oldHi := (8912500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1652, piece_1653]
}

def cell_8215 : Cell := { cellDefaults with
  domain := ⟨(31881250000000001 / 100000000000000000 : ℚ), (31887500000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31884375000000001 / 100000000000000000 : ℚ)
  supportValue := (3561359631514449 / 5000000000000000 : ℚ)
  supportSlope := (-2649824152781477 / 500000000000000 : ℚ)
  oldCenter := (3561359631514449 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (8900000000000001 / 12500000000000000 : ℚ)
  oldHi := (35625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1651, piece_1652]
}

def cell_8216 : Cell := { cellDefaults with
  domain := ⟨(31887500000000001 / 100000000000000000 : ℚ), (31893750000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31890625000000001 / 100000000000000000 : ℚ)
  supportValue := (889926018132771 / 1250000000000000 : ℚ)
  supportSlope := (-529607808919863 / 100000000000000 : ℚ)
  oldCenter := (889926018132771 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (35575000000000001 / 50000000000000000 : ℚ)
  oldHi := (1424804469273743 / 2000000000000000 : ℚ)
  oldPieces := [piece_1650, piece_1651]
}

def cell_8217 : Cell := { cellDefaults with
  domain := ⟨(31893750000000001 / 100000000000000000 : ℚ), (31900000000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31896875000000001 / 100000000000000000 : ℚ)
  supportValue := (355804960807777 / 500000000000000 : ℚ)
  supportSlope := (-5292420083453209 / 1000000000000000 : ℚ)
  oldCenter := (355804960807777 / 500000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (8887500000000001 / 12500000000000000 : ℚ)
  oldHi := (8900000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1649, piece_1650]
}

def cell_8218 : Cell := { cellDefaults with
  domain := ⟨(31900000000000001 / 100000000000000000 : ℚ), (31906250000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31903125000000001 / 100000000000000000 : ℚ)
  supportValue := (28504236370881 / 40000000000000 : ℚ)
  supportSlope := (-1324858571692289 / 250000000000000 : ℚ)
  oldCenter := (28504236370881 / 40000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (1424804469273743 / 2000000000000000 : ℚ)
  oldHi := (8912500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1652, piece_1653]
}

def cell_8219 : Cell := { cellDefaults with
  domain := ⟨(31906250000000001 / 100000000000000000 : ℚ), (31912500000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31909375000000001 / 100000000000000000 : ℚ)
  supportValue := (7122748011660363 / 10000000000000000 : ℚ)
  supportSlope := (-211837477655763 / 40000000000000 : ℚ)
  oldCenter := (7122748011660363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (8900000000000001 / 12500000000000000 : ℚ)
  oldHi := (35625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1651, piece_1652]
}

def cell_8220 : Cell := { cellDefaults with
  domain := ⟨(31912500000000001 / 100000000000000000 : ℚ), (31918750000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31915625000000001 / 100000000000000000 : ℚ)
  supportValue := (444964950810071 / 625000000000000 : ℚ)
  supportSlope := (-2646186037663867 / 500000000000000 : ℚ)
  oldCenter := (444964950810071 / 625000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (35575000000000001 / 50000000000000000 : ℚ)
  oldHi := (1424804469273743 / 2000000000000000 : ℚ)
  oldPieces := [piece_1650, piece_1651]
}

def cell_8221 : Cell := { cellDefaults with
  domain := ⟨(31918750000000001 / 100000000000000000 : ℚ), (31925000000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31921875000000001 / 100000000000000000 : ℚ)
  supportValue := (222379143579271 / 312500000000000 : ℚ)
  supportSlope := (-1322180836136333 / 250000000000000 : ℚ)
  oldCenter := (222379143579271 / 312500000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (8887500000000001 / 12500000000000000 : ℚ)
  oldHi := (8900000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1649, piece_1650]
}

def cell_8222 : Cell := { cellDefaults with
  domain := ⟨(31925000000000001 / 100000000000000000 : ℚ), (31931250000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31928125000000001 / 100000000000000000 : ℚ)
  supportValue := (3556414102734649 / 5000000000000000 : ℚ)
  supportSlope := (-2642622163108399 / 500000000000000 : ℚ)
  oldCenter := (3556414102734649 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (8887500000000001 / 12500000000000000 : ℚ)
  oldHi := (35575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1649]
}

def cell_8223 : Cell := { cellDefaults with
  domain := ⟨(31931250000000001 / 100000000000000000 : ℚ), (31937500000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31934375000000001 / 100000000000000000 : ℚ)
  supportValue := (1421905219010661 / 2000000000000000 : ℚ)
  supportSlope := (-5281674490216659 / 1000000000000000 : ℚ)
  oldCenter := (1421905219010661 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (35525000000000001 / 50000000000000000 : ℚ)
  oldHi := (35575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1648, piece_1649]
}

def cell_8224 : Cell := { cellDefaults with
  domain := ⟨(31937500000000001 / 100000000000000000 : ℚ), (31943750000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31940625000000001 / 100000000000000000 : ℚ)
  supportValue := (7106226152680469 / 10000000000000000 : ℚ)
  supportSlope := (-2639015767234909 / 500000000000000 : ℚ)
  oldCenter := (7106226152680469 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (8875000000000001 / 12500000000000000 : ℚ)
  oldHi := (8887500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1647, piece_1648]
}

def cell_8225 : Cell := { cellDefaults with
  domain := ⟨(31943750000000001 / 100000000000000000 : ℚ), (31950000000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31946875000000001 / 100000000000000000 : ℚ)
  supportValue := (7102928443705947 / 10000000000000000 : ℚ)
  supportSlope := (-2637286774977099 / 500000000000000 : ℚ)
  oldCenter := (7102928443705947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (8875000000000001 / 12500000000000000 : ℚ)
  oldHi := (35525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1647]
}

def cell_8226 : Cell := { cellDefaults with
  domain := ⟨(31950000000000001 / 100000000000000000 : ℚ), (31955516759776537 / 100000000000000000 : ℚ)⟩
  center := (31952758379888269 / 100000000000000000 : ℚ)
  supportValue := (7113052525815329 / 10000000000000000 : ℚ)
  supportSlope := (-5281770790948421 / 1000000000000000 : ℚ)
  oldCenter := (7113052525815329 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_795
  oldLo := (8887500000000001 / 12500000000000000 : ℚ)
  oldHi := (35575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1649]
}

def cell_8227 : Cell := { cellDefaults with
  domain := ⟨(31955516759776537 / 100000000000000000 : ℚ), (31961033519553073 / 100000000000000000 : ℚ)⟩
  center := (6391655027932961 / 20000000000000000 : ℚ)
  supportValue := (1777534910014979 / 2500000000000000 : ℚ)
  supportSlope := (-1319643254368813 / 250000000000000 : ℚ)
  oldCenter := (1777534910014979 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_795
  oldLo := (35525000000000001 / 50000000000000000 : ℚ)
  oldHi := (35575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1648, piece_1649]
}

def cell_8228 : Cell := { cellDefaults with
  domain := ⟨(31961033519553073 / 100000000000000000 : ℚ), (31966550279329609 / 100000000000000000 : ℚ)⟩
  center := (31963791899441341 / 100000000000000000 : ℚ)
  supportValue := (7107228387759467 / 10000000000000000 : ℚ)
  supportSlope := (-10550842762909161 / 2000000000000000 : ℚ)
  oldCenter := (7107228387759467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_795
  oldLo := (35525000000000001 / 50000000000000000 : ℚ)
  oldHi := (8887500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1648]
}

def cell_8229 : Cell := { cellDefaults with
  domain := ⟨(31966550279329609 / 100000000000000000 : ℚ), (6394413407821229 / 20000000000000000 : ℚ)⟩
  center := (31969308659217877 / 100000000000000000 : ℚ)
  supportValue := (1776079735639929 / 2500000000000000 : ℚ)
  supportSlope := (-2636180271785661 / 500000000000000 : ℚ)
  oldCenter := (1776079735639929 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_795
  oldLo := (8875000000000001 / 12500000000000000 : ℚ)
  oldHi := (8887500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1647, piece_1648]
}

def cell_8230 : Cell := { cellDefaults with
  domain := ⟨(6394413407821229 / 20000000000000000 : ℚ), (31975000000000001 / 100000000000000000 : ℚ)⟩
  center := (31973533519553073 / 100000000000000000 : ℚ)
  supportValue := (3551045260443091 / 5000000000000000 : ℚ)
  supportSlope := (-5269878139641229 / 1000000000000000 : ℚ)
  oldCenter := (3551045260443091 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_796
  oldLo := (8875000000000001 / 12500000000000000 : ℚ)
  oldHi := (35525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1647]
}

def cell_8231 : Cell := { cellDefaults with
  domain := ⟨(31975000000000001 / 100000000000000000 : ℚ), (31981250000000001 / 100000000000000000 : ℚ)⟩
  center := (31978125000000001 / 100000000000000000 : ℚ)
  supportValue := (3549836453702877 / 5000000000000000 : ℚ)
  supportSlope := (-1053465518944563 / 200000000000000 : ℚ)
  oldCenter := (3549836453702877 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_796
  oldLo := (35475000000000001 / 50000000000000000 : ℚ)
  oldHi := (35525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1646, piece_1647]
}

def cell_8232 : Cell := { cellDefaults with
  domain := ⟨(31981250000000001 / 100000000000000000 : ℚ), (31987500000000001 / 100000000000000000 : ℚ)⟩
  center := (31984375000000001 / 100000000000000000 : ℚ)
  supportValue := (443523869612829 / 625000000000000 : ℚ)
  supportSlope := (-5263698898197333 / 1000000000000000 : ℚ)
  oldCenter := (443523869612829 / 625000000000000 : ℚ)
  newCoefficients := coefficients_796
  oldLo := (70900000000000007 / 100000000000000000 : ℚ)
  oldHi := (8875000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1645, piece_1646]
}

def cell_8233 : Cell := { cellDefaults with
  domain := ⟨(31987500000000001 / 100000000000000000 : ℚ), (31993750000000001 / 100000000000000000 : ℚ)⟩
  center := (31990625000000001 / 100000000000000000 : ℚ)
  supportValue := (7093093157610083 / 10000000000000000 : ℚ)
  supportSlope := (-5260280162104891 / 1000000000000000 : ℚ)
  oldCenter := (7093093157610083 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_796
  oldLo := (70900000000000007 / 100000000000000000 : ℚ)
  oldHi := (35475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1645]
}

def cell_8234 : Cell := { cellDefaults with
  domain := ⟨(31993750000000001 / 100000000000000000 : ℚ), (32000000000000001 / 100000000000000000 : ℚ)⟩
  center := (31996875000000001 / 100000000000000000 : ℚ)
  supportValue := (7089806667421977 / 10000000000000000 : ℚ)
  supportSlope := (-657086745036839 / 125000000000000 : ℚ)
  oldCenter := (7089806667421977 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_796
  oldLo := (35425000000000001 / 50000000000000000 : ℚ)
  oldHi := (35475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1644, piece_1645]
}

def cell_8235 : Cell := { cellDefaults with
  domain := ⟨(32000000000000001 / 100000000000000000 : ℚ), (32006250000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32003125000000001 / 100000000000000000 : ℚ)
  supportValue := (3549853658481873 / 5000000000000000 : ℚ)
  supportSlope := (-2631820826648479 / 500000000000000 : ℚ)
  oldCenter := (3549853658481873 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (35475000000000001 / 50000000000000000 : ℚ)
  oldHi := (35525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1646, piece_1647]
}

def cell_8236 : Cell := { cellDefaults with
  domain := ⟨(32006250000000001 / 100000000000000000 : ℚ), (32012500000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32009375000000001 / 100000000000000000 : ℚ)
  supportValue := (7096418621131537 / 10000000000000000 : ℚ)
  supportSlope := (-82187840217407 / 15625000000000 : ℚ)
  oldCenter := (7096418621131537 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (70900000000000007 / 100000000000000000 : ℚ)
  oldHi := (8875000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1645, piece_1646]
}

def cell_8237 : Cell := { cellDefaults with
  domain := ⟨(32012500000000001 / 100000000000000000 : ℚ), (32018750000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32015625000000001 / 100000000000000000 : ℚ)
  supportValue := (1773283040069053 / 2500000000000000 : ℚ)
  supportSlope := (-2628308816712277 / 500000000000000 : ℚ)
  oldCenter := (1773283040069053 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (70900000000000007 / 100000000000000000 : ℚ)
  oldHi := (35475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1645]
}

def cell_8238 : Cell := { cellDefaults with
  domain := ⟨(32018750000000001 / 100000000000000000 : ℚ), (32025000000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32021875000000001 / 100000000000000000 : ℚ)
  supportValue := (7089847959920671 / 10000000000000000 : ℚ)
  supportSlope := (-1313258700849751 / 250000000000000 : ℚ)
  oldCenter := (7089847959920671 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (35425000000000001 / 50000000000000000 : ℚ)
  oldHi := (35475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1644, piece_1645]
}

def cell_8239 : Cell := { cellDefaults with
  domain := ⟨(32025000000000001 / 100000000000000000 : ℚ), (32031250000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32028125000000001 / 100000000000000000 : ℚ)
  supportValue := (7086565878352229 / 10000000000000000 : ℚ)
  supportSlope := (-10498842026279931 / 2000000000000000 : ℚ)
  oldCenter := (7086565878352229 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (70800000000000007 / 100000000000000000 : ℚ)
  oldHi := (70900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1643, piece_1644]
}

def cell_8240 : Cell := { cellDefaults with
  domain := ⟨(32031250000000001 / 100000000000000000 : ℚ), (32037500000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32034375000000001 / 100000000000000000 : ℚ)
  supportValue := (7083286040745231 / 10000000000000000 : ℚ)
  supportSlope := (-655755720273099 / 125000000000000 : ℚ)
  oldCenter := (7083286040745231 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (70800000000000007 / 100000000000000000 : ℚ)
  oldHi := (35425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1643]
}

def cell_8241 : Cell := { cellDefaults with
  domain := ⟨(32037500000000001 / 100000000000000000 : ℚ), (32043750000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32040625000000001 / 100000000000000000 : ℚ)
  supportValue := (3540004229590663 / 5000000000000000 : ℚ)
  supportSlope := (-2621223761794411 / 500000000000000 : ℚ)
  oldCenter := (3540004229590663 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (35375000000000001 / 50000000000000000 : ℚ)
  oldHi := (35425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1642, piece_1643]
}

def cell_8242 : Cell := { cellDefaults with
  domain := ⟨(32043750000000001 / 100000000000000000 : ℚ), (32050000000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32046875000000001 / 100000000000000000 : ℚ)
  supportValue := (353836648929651 / 500000000000000 : ℚ)
  supportSlope := (-130971326719731 / 25000000000000 : ℚ)
  oldCenter := (353836648929651 / 500000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (35375000000000001 / 50000000000000000 : ℚ)
  oldHi := (70800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1642]
}

def cell_8243 : Cell := { cellDefaults with
  domain := ⟨(32050000000000001 / 100000000000000000 : ℚ), (32056250000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32053125000000001 / 100000000000000000 : ℚ)
  supportValue := (3543302190838001 / 5000000000000000 : ℚ)
  supportSlope := (-5245754338172759 / 1000000000000000 : ℚ)
  oldCenter := (3543302190838001 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (70800000000000007 / 100000000000000000 : ℚ)
  oldHi := (70900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1643, piece_1644]
}

def cell_8244 : Cell := { cellDefaults with
  domain := ⟨(32056250000000001 / 100000000000000000 : ℚ), (32062500000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32059375000000001 / 100000000000000000 : ℚ)
  supportValue := (3541663416432677 / 5000000000000000 : ℚ)
  supportSlope := (-10484787976139387 / 2000000000000000 : ℚ)
  oldCenter := (3541663416432677 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (70800000000000007 / 100000000000000000 : ℚ)
  oldHi := (35425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1643]
}

def cell_8245 : Cell := { cellDefaults with
  domain := ⟨(32062500000000001 / 100000000000000000 : ℚ), (32068750000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32065625000000001 / 100000000000000000 : ℚ)
  supportValue := (885006441336213 / 1250000000000000 : ℚ)
  supportSlope := (-5238798907583941 / 1000000000000000 : ℚ)
  oldCenter := (885006441336213 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (35375000000000001 / 50000000000000000 : ℚ)
  oldHi := (35425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1642, piece_1643]
}

def cell_8246 : Cell := { cellDefaults with
  domain := ⟨(32068750000000001 / 100000000000000000 : ℚ), (32075000000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32071875000000001 / 100000000000000000 : ℚ)
  supportValue := (3538389163806283 / 5000000000000000 : ℚ)
  supportSlope := (-1308804999021973 / 250000000000000 : ℚ)
  oldCenter := (3538389163806283 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (35375000000000001 / 50000000000000000 : ℚ)
  oldHi := (70800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1642]
}

def cell_8247 : Cell := { cellDefaults with
  domain := ⟨(32075000000000001 / 100000000000000000 : ℚ), (32081250000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32078125000000001 / 100000000000000000 : ℚ)
  supportValue := (1768376843278531 / 2500000000000000 : ℚ)
  supportSlope := (-10463703850263073 / 2000000000000000 : ℚ)
  oldCenter := (1768376843278531 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (70700000000000007 / 100000000000000000 : ℚ)
  oldHi := (70800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1641, piece_1642]
}

def cell_8248 : Cell := { cellDefaults with
  domain := ⟨(32081250000000001 / 100000000000000000 : ℚ), (32087500000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32084375000000001 / 100000000000000000 : ℚ)
  supportValue := (1767559661238287 / 2500000000000000 : ℚ)
  supportSlope := (-40845758396163 / 7812500000000 : ℚ)
  oldCenter := (1767559661238287 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (35325000000000001 / 50000000000000000 : ℚ)
  oldHi := (35375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1639, piece_1640, piece_1641]
}

def cell_8249 : Cell := { cellDefaults with
  domain := ⟨(32087500000000001 / 100000000000000000 : ℚ), (32093750000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32090625000000001 / 100000000000000000 : ℚ)
  supportValue := (1413394405611047 / 2000000000000000 : ℚ)
  supportSlope := (-2612356473941091 / 500000000000000 : ℚ)
  oldCenter := (1413394405611047 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (35325000000000001 / 50000000000000000 : ℚ)
  oldHi := (3534357541899441 / 5000000000000000 : ℚ)
  oldPieces := [piece_1639]
}

theorem check_8200 : cell_8200.check = true := by
  decide +kernel

theorem check_8201 : cell_8201.check = true := by
  decide +kernel

theorem check_8202 : cell_8202.check = true := by
  decide +kernel

theorem check_8203 : cell_8203.check = true := by
  decide +kernel

theorem check_8204 : cell_8204.check = true := by
  decide +kernel

theorem check_8205 : cell_8205.check = true := by
  decide +kernel

theorem check_8206 : cell_8206.check = true := by
  decide +kernel

theorem check_8207 : cell_8207.check = true := by
  decide +kernel

theorem check_8208 : cell_8208.check = true := by
  decide +kernel

theorem check_8209 : cell_8209.check = true := by
  decide +kernel

theorem check_8210 : cell_8210.check = true := by
  decide +kernel

theorem check_8211 : cell_8211.check = true := by
  decide +kernel

theorem check_8212 : cell_8212.check = true := by
  decide +kernel

theorem check_8213 : cell_8213.check = true := by
  decide +kernel

theorem check_8214 : cell_8214.check = true := by
  decide +kernel

theorem check_8215 : cell_8215.check = true := by
  decide +kernel

theorem check_8216 : cell_8216.check = true := by
  decide +kernel

theorem check_8217 : cell_8217.check = true := by
  decide +kernel

theorem check_8218 : cell_8218.check = true := by
  decide +kernel

theorem check_8219 : cell_8219.check = true := by
  decide +kernel

theorem check_8220 : cell_8220.check = true := by
  decide +kernel

theorem check_8221 : cell_8221.check = true := by
  decide +kernel

theorem check_8222 : cell_8222.check = true := by
  decide +kernel

theorem check_8223 : cell_8223.check = true := by
  decide +kernel

theorem check_8224 : cell_8224.check = true := by
  decide +kernel

theorem check_8225 : cell_8225.check = true := by
  decide +kernel

theorem check_8226 : cell_8226.check = true := by
  decide +kernel

theorem check_8227 : cell_8227.check = true := by
  decide +kernel

theorem check_8228 : cell_8228.check = true := by
  decide +kernel

theorem check_8229 : cell_8229.check = true := by
  decide +kernel

theorem check_8230 : cell_8230.check = true := by
  decide +kernel

theorem check_8231 : cell_8231.check = true := by
  decide +kernel

theorem check_8232 : cell_8232.check = true := by
  decide +kernel

theorem check_8233 : cell_8233.check = true := by
  decide +kernel

theorem check_8234 : cell_8234.check = true := by
  decide +kernel

theorem check_8235 : cell_8235.check = true := by
  decide +kernel

theorem check_8236 : cell_8236.check = true := by
  decide +kernel

theorem check_8237 : cell_8237.check = true := by
  decide +kernel

theorem check_8238 : cell_8238.check = true := by
  decide +kernel

theorem check_8239 : cell_8239.check = true := by
  decide +kernel

theorem check_8240 : cell_8240.check = true := by
  decide +kernel

theorem check_8241 : cell_8241.check = true := by
  decide +kernel

theorem check_8242 : cell_8242.check = true := by
  decide +kernel

theorem check_8243 : cell_8243.check = true := by
  decide +kernel

theorem check_8244 : cell_8244.check = true := by
  decide +kernel

theorem check_8245 : cell_8245.check = true := by
  decide +kernel

theorem check_8246 : cell_8246.check = true := by
  decide +kernel

theorem check_8247 : cell_8247.check = true := by
  decide +kernel

theorem check_8248 : cell_8248.check = true := by
  decide +kernel

theorem check_8249 : cell_8249.check = true := by
  decide +kernel

def cells : List Cell := [cell_8200, cell_8201, cell_8202, cell_8203, cell_8204, cell_8205, cell_8206, cell_8207, cell_8208, cell_8209, cell_8210, cell_8211, cell_8212, cell_8213, cell_8214, cell_8215, cell_8216, cell_8217, cell_8218, cell_8219, cell_8220, cell_8221, cell_8222, cell_8223, cell_8224, cell_8225, cell_8226, cell_8227, cell_8228, cell_8229, cell_8230, cell_8231, cell_8232, cell_8233, cell_8234, cell_8235, cell_8236, cell_8237, cell_8238, cell_8239, cell_8240, cell_8241, cell_8242, cell_8243, cell_8244, cell_8245, cell_8246, cell_8247, cell_8248, cell_8249]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8200, check_8201, check_8202, check_8203, check_8204, check_8205, check_8206, check_8207, check_8208, check_8209, check_8210, check_8211, check_8212, check_8213, check_8214, check_8215, check_8216, check_8217, check_8218, check_8219, check_8220, check_8221, check_8222, check_8223, check_8224, check_8225, check_8226, check_8227, check_8228, check_8229, check_8230, check_8231, check_8232, check_8233, check_8234, check_8235, check_8236, check_8237, check_8238, check_8239, check_8240, check_8241, check_8242, check_8243, check_8244, check_8245, check_8246, check_8247, check_8248, check_8249, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0164

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0164
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0164
open AnalyticBounds.ExpressionCertificate

theorem linked_8200 : Linked cell_8200 pieces := by
  refine ⟨piece_791,piece_791_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8200,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1656_mem
    · exact piece_1657_mem

theorem linked_8201 : Linked cell_8201 pieces := by
  refine ⟨piece_791,piece_791_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8201,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1656_mem

theorem linked_8202 : Linked cell_8202 pieces := by
  refine ⟨piece_792,piece_792_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8202,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1658_mem

theorem linked_8203 : Linked cell_8203 pieces := by
  refine ⟨piece_792,piece_792_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8203,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1657_mem
    · exact piece_1658_mem

theorem linked_8204 : Linked cell_8204 pieces := by
  refine ⟨piece_792,piece_792_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8204,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1656_mem
    · exact piece_1657_mem

theorem linked_8205 : Linked cell_8205 pieces := by
  refine ⟨piece_792,piece_792_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8205,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1656_mem

theorem linked_8206 : Linked cell_8206 pieces := by
  refine ⟨piece_792,piece_792_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8206,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1655_mem
    · exact piece_1656_mem

theorem linked_8207 : Linked cell_8207 pieces := by
  refine ⟨piece_792,piece_792_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8207,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1654_mem
    · exact piece_1655_mem

theorem linked_8208 : Linked cell_8208 pieces := by
  refine ⟨piece_792,piece_792_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8208,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1654_mem

theorem linked_8209 : Linked cell_8209 pieces := by
  refine ⟨piece_792,piece_792_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8209,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1653_mem
    · exact piece_1654_mem

theorem linked_8210 : Linked cell_8210 pieces := by
  refine ⟨piece_793,piece_793_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8210,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1655_mem
    · exact piece_1656_mem

theorem linked_8211 : Linked cell_8211 pieces := by
  refine ⟨piece_793,piece_793_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8211,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1654_mem
    · exact piece_1655_mem

theorem linked_8212 : Linked cell_8212 pieces := by
  refine ⟨piece_793,piece_793_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8212,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1654_mem

theorem linked_8213 : Linked cell_8213 pieces := by
  refine ⟨piece_793,piece_793_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8213,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1653_mem
    · exact piece_1654_mem

theorem linked_8214 : Linked cell_8214 pieces := by
  refine ⟨piece_793,piece_793_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8214,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1652_mem
    · exact piece_1653_mem

theorem linked_8215 : Linked cell_8215 pieces := by
  refine ⟨piece_793,piece_793_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8215,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1651_mem
    · exact piece_1652_mem

theorem linked_8216 : Linked cell_8216 pieces := by
  refine ⟨piece_793,piece_793_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8216,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1650_mem
    · exact piece_1651_mem

theorem linked_8217 : Linked cell_8217 pieces := by
  refine ⟨piece_793,piece_793_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8217,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1649_mem
    · exact piece_1650_mem

theorem linked_8218 : Linked cell_8218 pieces := by
  refine ⟨piece_794,piece_794_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8218,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1652_mem
    · exact piece_1653_mem

theorem linked_8219 : Linked cell_8219 pieces := by
  refine ⟨piece_794,piece_794_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8219,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1651_mem
    · exact piece_1652_mem

theorem linked_8220 : Linked cell_8220 pieces := by
  refine ⟨piece_794,piece_794_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8220,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1650_mem
    · exact piece_1651_mem

theorem linked_8221 : Linked cell_8221 pieces := by
  refine ⟨piece_794,piece_794_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8221,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1649_mem
    · exact piece_1650_mem

theorem linked_8222 : Linked cell_8222 pieces := by
  refine ⟨piece_794,piece_794_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8222,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1649_mem

theorem linked_8223 : Linked cell_8223 pieces := by
  refine ⟨piece_794,piece_794_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8223,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1648_mem
    · exact piece_1649_mem

theorem linked_8224 : Linked cell_8224 pieces := by
  refine ⟨piece_794,piece_794_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8224,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1647_mem
    · exact piece_1648_mem

theorem linked_8225 : Linked cell_8225 pieces := by
  refine ⟨piece_794,piece_794_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8225,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1647_mem

theorem linked_8226 : Linked cell_8226 pieces := by
  refine ⟨piece_795,piece_795_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8226,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1649_mem

theorem linked_8227 : Linked cell_8227 pieces := by
  refine ⟨piece_795,piece_795_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8227,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1648_mem
    · exact piece_1649_mem

theorem linked_8228 : Linked cell_8228 pieces := by
  refine ⟨piece_795,piece_795_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8228,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1648_mem

theorem linked_8229 : Linked cell_8229 pieces := by
  refine ⟨piece_795,piece_795_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8229,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1647_mem
    · exact piece_1648_mem

theorem linked_8230 : Linked cell_8230 pieces := by
  refine ⟨piece_796,piece_796_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8230,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1647_mem

theorem linked_8231 : Linked cell_8231 pieces := by
  refine ⟨piece_796,piece_796_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8231,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1646_mem
    · exact piece_1647_mem

theorem linked_8232 : Linked cell_8232 pieces := by
  refine ⟨piece_796,piece_796_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8232,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1645_mem
    · exact piece_1646_mem

theorem linked_8233 : Linked cell_8233 pieces := by
  refine ⟨piece_796,piece_796_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8233,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1645_mem

theorem linked_8234 : Linked cell_8234 pieces := by
  refine ⟨piece_796,piece_796_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8234,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1644_mem
    · exact piece_1645_mem

theorem linked_8235 : Linked cell_8235 pieces := by
  refine ⟨piece_797,piece_797_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8235,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1646_mem
    · exact piece_1647_mem

theorem linked_8236 : Linked cell_8236 pieces := by
  refine ⟨piece_797,piece_797_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8236,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1645_mem
    · exact piece_1646_mem

theorem linked_8237 : Linked cell_8237 pieces := by
  refine ⟨piece_797,piece_797_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8237,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1645_mem

theorem linked_8238 : Linked cell_8238 pieces := by
  refine ⟨piece_797,piece_797_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8238,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1644_mem
    · exact piece_1645_mem

theorem linked_8239 : Linked cell_8239 pieces := by
  refine ⟨piece_797,piece_797_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8239,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1643_mem
    · exact piece_1644_mem

theorem linked_8240 : Linked cell_8240 pieces := by
  refine ⟨piece_797,piece_797_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8240,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1643_mem

theorem linked_8241 : Linked cell_8241 pieces := by
  refine ⟨piece_797,piece_797_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8241,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1642_mem
    · exact piece_1643_mem

theorem linked_8242 : Linked cell_8242 pieces := by
  refine ⟨piece_797,piece_797_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8242,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1642_mem

theorem linked_8243 : Linked cell_8243 pieces := by
  refine ⟨piece_798,piece_798_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8243,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1643_mem
    · exact piece_1644_mem

theorem linked_8244 : Linked cell_8244 pieces := by
  refine ⟨piece_798,piece_798_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8244,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1643_mem

theorem linked_8245 : Linked cell_8245 pieces := by
  refine ⟨piece_798,piece_798_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8245,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1642_mem
    · exact piece_1643_mem

theorem linked_8246 : Linked cell_8246 pieces := by
  refine ⟨piece_798,piece_798_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8246,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1642_mem

theorem linked_8247 : Linked cell_8247 pieces := by
  refine ⟨piece_798,piece_798_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8247,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1641_mem
    · exact piece_1642_mem

theorem linked_8248 : Linked cell_8248 pieces := by
  refine ⟨piece_798,piece_798_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8248,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1639_mem
    · exact piece_1640_mem
    · exact piece_1641_mem

theorem linked_8249 : Linked cell_8249 pieces := by
  refine ⟨piece_798,piece_798_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8249,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1639_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0164.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0164.cells,List.forall_mem_cons]
  exact ⟨linked_8200, linked_8201, linked_8202, linked_8203, linked_8204, linked_8205, linked_8206, linked_8207, linked_8208, linked_8209, linked_8210, linked_8211, linked_8212, linked_8213, linked_8214, linked_8215, linked_8216, linked_8217, linked_8218, linked_8219, linked_8220, linked_8221, linked_8222, linked_8223, linked_8224, linked_8225, linked_8226, linked_8227, linked_8228, linked_8229, linked_8230, linked_8231, linked_8232, linked_8233, linked_8234, linked_8235, linked_8236, linked_8237, linked_8238, linked_8239, linked_8240, linked_8241, linked_8242, linked_8243, linked_8244, linked_8245, linked_8246, linked_8247, linked_8248, linked_8249, by simp⟩

theorem covered : covers (2543 / 8000 : ℚ) (32093750000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0164.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0164
