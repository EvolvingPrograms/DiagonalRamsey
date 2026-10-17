import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0130
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(4182122905027933 / 20000000000000000 : ℚ), (20912499999999999 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (43852405710077 / 50000000000000 : ℚ)
  w := (39894183029 / 39062500000 : ℚ)
  center := (2613944657821229 / 12500000000000000 : ℚ)
  supportValue := (3953473584486387 / 5000000000000000 : ℚ)
  supportSlope := (11233316116564703 / 2000000000000000 : ℚ)
  oldCenter := (3953473584486387 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_556
  oldLo := (19975000000000001 / 25000000000000000 : ℚ)
  oldHi := (19825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1826, piece_1827]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6500 : Cell := { cellDefaults with
  r := (87783916433913 / 100000000000000 : ℚ)
  w := (1021015039739 / 1000000000000 : ℚ)
  newCoefficients := coefficients_555
  oldLo := (39524999999999999 / 50000000000000000 : ℚ)
  oldHi := (19775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1823]
}

def cell_6501 : Cell := { cellDefaults with
  domain := ⟨(20912499999999999 / 100000000000000000 : ℚ), (20918749999999999 / 100000000000000000 : ℚ)⟩
  r := (87783916433913 / 100000000000000 : ℚ)
  w := (1021015039739 / 1000000000000 : ℚ)
  center := (20915624999999999 / 100000000000000000 : ℚ)
  supportValue := (1581846096068573 / 2000000000000000 : ℚ)
  supportSlope := (2808730210744237 / 500000000000000 : ℚ)
  oldCenter := (1581846096068573 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_555
  oldLo := (39524999999999999 / 50000000000000000 : ℚ)
  oldHi := (39574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1823, piece_1824]
}

def cell_6502 : Cell := { cellDefaults with
  domain := ⟨(20918749999999999 / 100000000000000000 : ℚ), (20924999999999999 / 100000000000000000 : ℚ)⟩
  r := (87783916433913 / 100000000000000 : ℚ)
  w := (1021015039739 / 1000000000000 : ℚ)
  center := (20921874999999999 / 100000000000000000 : ℚ)
  supportValue := (395637085564643 / 500000000000000 : ℚ)
  supportSlope := (2809292968398047 / 500000000000000 : ℚ)
  oldCenter := (395637085564643 / 500000000000000 : ℚ)
  newCoefficients := coefficients_555
  oldLo := (19775000000000001 / 25000000000000000 : ℚ)
  oldHi := (39574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1824]
}

def cell_6503 : Cell := { cellDefaults with
  domain := ⟨(20924999999999999 / 100000000000000000 : ℚ), (20931249999999999 / 100000000000000000 : ℚ)⟩
  r := (87783916433913 / 100000000000000 : ℚ)
  w := (1021015039739 / 1000000000000 : ℚ)
  center := (20928124999999999 / 100000000000000000 : ℚ)
  supportValue := (7916253678654763 / 10000000000000000 : ℚ)
  supportSlope := (1404914988271777 / 250000000000000 : ℚ)
  oldCenter := (7916253678654763 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_555
  oldLo := (19775000000000001 / 25000000000000000 : ℚ)
  oldHi := (19800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1824, piece_1825]
}

def cell_6504 : Cell := { cellDefaults with
  domain := ⟨(20931249999999999 / 100000000000000000 : ℚ), (20937499999999999 / 100000000000000000 : ℚ)⟩
  r := (87783916433913 / 100000000000000 : ℚ)
  w := (1021015039739 / 1000000000000 : ℚ)
  center := (20934374999999999 / 100000000000000000 : ℚ)
  supportValue := (3959883183227947 / 5000000000000000 : ℚ)
  supportSlope := (2810418530982517 / 500000000000000 : ℚ)
  oldCenter := (3959883183227947 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_555
  oldLo := (39574999999999999 / 50000000000000000 : ℚ)
  oldHi := (39624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1825, piece_1826]
}

def cell_6505 : Cell := { cellDefaults with
  domain := ⟨(20937499999999999 / 100000000000000000 : ℚ), (20943749999999999 / 100000000000000000 : ℚ)⟩
  r := (87783916433913 / 100000000000000 : ℚ)
  w := (1021015039739 / 1000000000000 : ℚ)
  center := (20940624999999999 / 100000000000000000 : ℚ)
  supportValue := (7923279707434573 / 10000000000000000 : ℚ)
  supportSlope := (2811006389907611 / 500000000000000 : ℚ)
  oldCenter := (7923279707434573 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_555
  oldLo := (19800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1826, piece_1827]
}

def cell_6506 : Cell := { cellDefaults with
  domain := ⟨(20943749999999999 / 100000000000000000 : ℚ), (20949999999999999 / 100000000000000000 : ℚ)⟩
  r := (87783916433913 / 100000000000000 : ℚ)
  w := (1021015039739 / 1000000000000 : ℚ)
  center := (20946874999999999 / 100000000000000000 : ℚ)
  supportValue := (158535875655893 / 200000000000000 : ℚ)
  supportSlope := (28115187418302767 / 5000000000000000 : ℚ)
  oldCenter := (158535875655893 / 200000000000000 : ℚ)
  newCoefficients := coefficients_555
  oldLo := (39624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1827]
}

def cell_6507 : Cell := { cellDefaults with
  domain := ⟨(20949999999999999 / 100000000000000000 : ℚ), (20956249999999999 / 100000000000000000 : ℚ)⟩
  center := (20953124999999999 / 100000000000000000 : ℚ)
  supportValue := (7925324529589609 / 10000000000000000 : ℚ)
  supportSlope := (561972048084769 / 100000000000000 : ℚ)
  oldCenter := (7925324529589609 / 10000000000000000 : ℚ)
  oldLo := (19800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1826, piece_1827]
}

def cell_6508 : Cell := { cellDefaults with
  domain := ⟨(20956249999999999 / 100000000000000000 : ℚ), (20962499999999999 / 100000000000000000 : ℚ)⟩
  center := (20959374999999999 / 100000000000000000 : ℚ)
  supportValue := (7928837194918631 / 10000000000000000 : ℚ)
  supportSlope := (2810446458730631 / 500000000000000 : ℚ)
  oldCenter := (7928837194918631 / 10000000000000000 : ℚ)
  oldLo := (39624999999999999 / 50000000000000000 : ℚ)
  oldHi := (39674999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1827, piece_1828]
}

def cell_6509 : Cell := { cellDefaults with
  domain := ⟨(20962499999999999 / 100000000000000000 : ℚ), (20968749999999999 / 100000000000000000 : ℚ)⟩
  center := (20965624999999999 / 100000000000000000 : ℚ)
  supportValue := (3966175284486189 / 5000000000000000 : ℚ)
  supportSlope := (5622003705759937 / 1000000000000000 : ℚ)
  oldCenter := (3966175284486189 / 5000000000000000 : ℚ)
  oldLo := (19825000000000001 / 25000000000000000 : ℚ)
  oldHi := (39674999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1828]
}

def cell_6510 : Cell := { cellDefaults with
  domain := ⟨(20968749999999999 / 100000000000000000 : ℚ), (20974999999999999 / 100000000000000000 : ℚ)⟩
  center := (20971874999999999 / 100000000000000000 : ℚ)
  supportValue := (7935864728157149 / 10000000000000000 : ℚ)
  supportSlope := (11246332789781377 / 2000000000000000 : ℚ)
  oldCenter := (7935864728157149 / 10000000000000000 : ℚ)
  oldLo := (19825000000000001 / 25000000000000000 : ℚ)
  oldHi := (19850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1828, piece_1829]
}

def cell_6511 : Cell := { cellDefaults with
  domain := ⟨(20974999999999999 / 100000000000000000 : ℚ), (20981249999999999 / 100000000000000000 : ℚ)⟩
  center := (20978124999999999 / 100000000000000000 : ℚ)
  supportValue := (7939379548434993 / 10000000000000000 : ℚ)
  supportSlope := (1124854101611561 / 200000000000000 : ℚ)
  oldCenter := (7939379548434993 / 10000000000000000 : ℚ)
  oldLo := (39674999999999999 / 50000000000000000 : ℚ)
  oldHi := (39724999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1829, piece_1830]
}

def cell_6512 : Cell := { cellDefaults with
  domain := ⟨(20981249999999999 / 100000000000000000 : ℚ), (20987499999999999 / 100000000000000000 : ℚ)⟩
  center := (20984374999999999 / 100000000000000000 : ℚ)
  supportValue := (3971447515551259 / 5000000000000000 : ℚ)
  supportSlope := (2250135295525979 / 400000000000000 : ℚ)
  oldCenter := (3971447515551259 / 5000000000000000 : ℚ)
  oldLo := (19850000000000001 / 25000000000000000 : ℚ)
  oldHi := (39724999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1830]
}

def cell_6513 : Cell := { cellDefaults with
  domain := ⟨(20987499999999999 / 100000000000000000 : ℚ), (20993749999999999 / 100000000000000000 : ℚ)⟩
  center := (20990624999999999 / 100000000000000000 : ℚ)
  supportValue := (7946411191632933 / 10000000000000000 : ℚ)
  supportSlope := (5626365951298951 / 1000000000000000 : ℚ)
  oldCenter := (7946411191632933 / 10000000000000000 : ℚ)
  oldLo := (19850000000000001 / 25000000000000000 : ℚ)
  oldHi := (19875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1830, piece_1831]
}

def cell_6514 : Cell := { cellDefaults with
  domain := ⟨(20993749999999999 / 100000000000000000 : ℚ), (20999999999999999 / 100000000000000000 : ℚ)⟩
  center := (20996874999999999 / 100000000000000000 : ℚ)
  supportValue := (794992804285029 / 1000000000000000 : ℚ)
  supportSlope := (175858427716169 / 31250000000000 : ℚ)
  oldCenter := (794992804285029 / 1000000000000000 : ℚ)
  oldLo := (39724999999999999 / 50000000000000000 : ℚ)
  oldHi := (39768156424581 / 50000000000000 : ℚ)
  oldPieces := [piece_1831, piece_1832]
}

def cell_6515 : Cell := { cellDefaults with
  domain := ⟨(20999999999999999 / 100000000000000000 : ℚ), (21006249999999999 / 100000000000000000 : ℚ)⟩
  r := (43812952479183 / 50000000000000 : ℚ)
  w := (10215688347943 / 10000000000000 : ℚ)
  center := (21003124999999999 / 100000000000000000 : ℚ)
  supportValue := (7948461405298579 / 10000000000000000 : ℚ)
  supportSlope := (703021134643711 / 125000000000000 : ℚ)
  oldCenter := (7948461405298579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_557
  oldLo := (39724999999999999 / 50000000000000000 : ℚ)
  oldHi := (39768156424581 / 50000000000000 : ℚ)
  oldPieces := [piece_1831, piece_1832]
}

def cell_6516 : Cell := { cellDefaults with
  domain := ⟨(21006249999999999 / 100000000000000000 : ℚ), (21012499999999999 / 100000000000000000 : ℚ)⟩
  r := (43812952479183 / 50000000000000 : ℚ)
  w := (10215688347943 / 10000000000000 : ℚ)
  center := (21009374999999999 / 100000000000000000 : ℚ)
  supportValue := (7951976824005151 / 10000000000000000 : ℚ)
  supportSlope := (5625185275912159 / 1000000000000000 : ℚ)
  oldCenter := (7951976824005151 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_557
  oldLo := (19875000000000001 / 25000000000000000 : ℚ)
  oldHi := (39774999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1832, piece_1833]
}

def cell_6517 : Cell := { cellDefaults with
  domain := ⟨(21012499999999999 / 100000000000000000 : ℚ), (21018749999999999 / 100000000000000000 : ℚ)⟩
  r := (43812952479183 / 50000000000000 : ℚ)
  w := (10215688347943 / 10000000000000 : ℚ)
  center := (21015624999999999 / 100000000000000000 : ℚ)
  supportValue := (3977746404881921 / 5000000000000000 : ℚ)
  supportSlope := (5625886760327603 / 1000000000000000 : ℚ)
  oldCenter := (3977746404881921 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_557
  oldLo := (39768156424581 / 50000000000000 : ℚ)
  oldHi := (19900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1833, piece_1834]
}

def cell_6518 : Cell := { cellDefaults with
  domain := ⟨(21018749999999999 / 100000000000000000 : ℚ), (21024999999999999 / 100000000000000000 : ℚ)⟩
  r := (43812952479183 / 50000000000000 : ℚ)
  w := (10215688347943 / 10000000000000 : ℚ)
  center := (21021874999999999 / 100000000000000000 : ℚ)
  supportValue := (397950466231213 / 500000000000000 : ℚ)
  supportSlope := (5626998442616937 / 1000000000000000 : ℚ)
  oldCenter := (397950466231213 / 500000000000000 : ℚ)
  newCoefficients := coefficients_557
  oldLo := (39774999999999999 / 50000000000000000 : ℚ)
  oldHi := (79649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1834, piece_1835]
}

def cell_6519 : Cell := { cellDefaults with
  domain := ⟨(21024999999999999 / 100000000000000000 : ℚ), (21031249999999999 / 100000000000000000 : ℚ)⟩
  r := (43812952479183 / 50000000000000 : ℚ)
  w := (10215688347943 / 10000000000000 : ℚ)
  center := (21028124999999999 / 100000000000000000 : ℚ)
  supportValue := (7962526506655061 / 10000000000000000 : ℚ)
  supportSlope := (5628061068660983 / 1000000000000000 : ℚ)
  oldCenter := (7962526506655061 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_557
  oldLo := (19900000000000001 / 25000000000000000 : ℚ)
  oldHi := (79649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1835]
}

def cell_6520 : Cell := { cellDefaults with
  domain := ⟨(21031249999999999 / 100000000000000000 : ℚ), (21037499999999999 / 100000000000000000 : ℚ)⟩
  r := (43812952479183 / 50000000000000 : ℚ)
  w := (10215688347943 / 10000000000000 : ℚ)
  center := (21034374999999999 / 100000000000000000 : ℚ)
  supportValue := (7966044391665111 / 10000000000000000 : ℚ)
  supportSlope := (562911405748423 / 100000000000000 : ℚ)
  oldCenter := (7966044391665111 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_557
  oldLo := (19900000000000001 / 25000000000000000 : ℚ)
  oldHi := (19925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1835, piece_1836]
}

def cell_6521 : Cell := { cellDefaults with
  domain := ⟨(21037499999999999 / 100000000000000000 : ℚ), (21043749999999999 / 100000000000000000 : ℚ)⟩
  r := (43812952479183 / 50000000000000 : ℚ)
  w := (10215688347943 / 10000000000000 : ℚ)
  center := (21040624999999999 / 100000000000000000 : ℚ)
  supportValue := (7969562963367023 / 10000000000000000 : ℚ)
  supportSlope := (5630251958884003 / 1000000000000000 : ℚ)
  oldCenter := (7969562963367023 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_557
  oldLo := (79649999999999999 / 100000000000000000 : ℚ)
  oldHi := (79749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1836, piece_1837]
}

def cell_6522 : Cell := { cellDefaults with
  domain := ⟨(21043749999999999 / 100000000000000000 : ℚ), (21049999999999999 / 100000000000000000 : ℚ)⟩
  r := (43812952479183 / 50000000000000 : ℚ)
  w := (10215688347943 / 10000000000000 : ℚ)
  center := (21046874999999999 / 100000000000000000 : ℚ)
  supportValue := (7973082181189703 / 10000000000000000 : ℚ)
  supportSlope := (2815695810872043 / 500000000000000 : ℚ)
  oldCenter := (7973082181189703 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_557
  oldLo := (19925000000000001 / 25000000000000000 : ℚ)
  oldHi := (79749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1837]
}

def cell_6523 : Cell := { cellDefaults with
  domain := ⟨(21049999999999999 / 100000000000000000 : ℚ), (21056249999999999 / 100000000000000000 : ℚ)⟩
  r := (17509439459013 / 20000000000000 : ℚ)
  w := (1277310588611 / 1250000000000 : ℚ)
  center := (21053124999999999 / 100000000000000000 : ℚ)
  supportValue := (3985809702813911 / 5000000000000000 : ℚ)
  supportSlope := (5627956045938021 / 1000000000000000 : ℚ)
  oldCenter := (3985809702813911 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_558
  oldLo := (79649999999999999 / 100000000000000000 : ℚ)
  oldHi := (79749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1836, piece_1837]
}

def cell_6524 : Cell := { cellDefaults with
  domain := ⟨(21056249999999999 / 100000000000000000 : ℚ), (21062499999999999 / 100000000000000000 : ℚ)⟩
  r := (17509439459013 / 20000000000000 : ℚ)
  w := (1277310588611 / 1250000000000 : ℚ)
  center := (21059374999999999 / 100000000000000000 : ℚ)
  supportValue := (7975137286951961 / 10000000000000000 : ℚ)
  supportSlope := (2814550573184249 / 500000000000000 : ℚ)
  oldCenter := (7975137286951961 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_558
  oldLo := (19925000000000001 / 25000000000000000 : ℚ)
  oldHi := (19950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1837, piece_1838]
}

def cell_6525 : Cell := { cellDefaults with
  domain := ⟨(21062499999999999 / 100000000000000000 : ℚ), (21068749999999999 / 100000000000000000 : ℚ)⟩
  r := (17509439459013 / 20000000000000 : ℚ)
  w := (1277310588611 / 1250000000000 : ℚ)
  center := (21065624999999999 / 100000000000000000 : ℚ)
  supportValue := (7978655801928677 / 10000000000000000 : ℚ)
  supportSlope := (5630239495701517 / 1000000000000000 : ℚ)
  oldCenter := (7978655801928677 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_558
  oldLo := (79749999999999999 / 100000000000000000 : ℚ)
  oldHi := (79849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1838, piece_1839]
}

def cell_6526 : Cell := { cellDefaults with
  domain := ⟨(21068749999999999 / 100000000000000000 : ℚ), (21074999999999999 / 100000000000000000 : ℚ)⟩
  r := (17509439459013 / 20000000000000 : ℚ)
  w := (1277310588611 / 1250000000000 : ℚ)
  center := (21071874999999999 / 100000000000000000 : ℚ)
  supportValue := (3991087487089679 / 5000000000000000 : ℚ)
  supportSlope := (1407878123661721 / 250000000000000 : ℚ)
  oldCenter := (3991087487089679 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_558
  oldLo := (19950000000000001 / 25000000000000000 : ℚ)
  oldHi := (79849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1839]
}

def cell_6527 : Cell := { cellDefaults with
  domain := ⟨(21074999999999999 / 100000000000000000 : ℚ), (21081249999999999 / 100000000000000000 : ℚ)⟩
  r := (17509439459013 / 20000000000000 : ℚ)
  w := (1277310588611 / 1250000000000 : ℚ)
  center := (21078124999999999 / 100000000000000000 : ℚ)
  supportValue := (199642382030613 / 250000000000000 : ℚ)
  supportSlope := (704127457596071 / 125000000000000 : ℚ)
  oldCenter := (199642382030613 / 250000000000000 : ℚ)
  newCoefficients := coefficients_558
  oldLo := (19950000000000001 / 25000000000000000 : ℚ)
  oldHi := (19975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1839, piece_1840]
}

def cell_6528 : Cell := { cellDefaults with
  domain := ⟨(21081249999999999 / 100000000000000000 : ℚ), (21087499999999999 / 100000000000000000 : ℚ)⟩
  r := (17509439459013 / 20000000000000 : ℚ)
  w := (1277310588611 / 1250000000000 : ℚ)
  center := (21084374999999999 / 100000000000000000 : ℚ)
  supportValue := (7989216473785747 / 10000000000000000 : ℚ)
  supportSlope := (5634847023195277 / 1000000000000000 : ℚ)
  oldCenter := (7989216473785747 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_558
  oldLo := (79849999999999999 / 100000000000000000 : ℚ)
  oldHi := (79949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1840, piece_1841]
}

def cell_6529 : Cell := { cellDefaults with
  domain := ⟨(21087499999999999 / 100000000000000000 : ℚ), (21093749999999999 / 100000000000000000 : ℚ)⟩
  r := (17509439459013 / 20000000000000 : ℚ)
  w := (1277310588611 / 1250000000000 : ℚ)
  center := (21090624999999999 / 100000000000000000 : ℚ)
  supportValue := (799273858177879 / 1000000000000000 : ℚ)
  supportSlope := (5636290997790283 / 1000000000000000 : ℚ)
  oldCenter := (799273858177879 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_558
  oldHi := (79949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1841]
}

def cell_6530 : Cell := { cellDefaults with
  domain := ⟨(21093749999999999 / 100000000000000000 : ℚ), (21099999999999999 / 100000000000000000 : ℚ)⟩
  r := (17509439459013 / 20000000000000 : ℚ)
  w := (1277310588611 / 1250000000000 : ℚ)
  center := (21096874999999999 / 100000000000000000 : ℚ)
  supportValue := (7996261722947119 / 10000000000000000 : ℚ)
  supportSlope := (1409388815752699 / 250000000000000 : ℚ)
  oldCenter := (7996261722947119 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_558
  oldHi := (20000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1841, piece_1842]
}

def cell_6531 : Cell := { cellDefaults with
  domain := ⟨(21099999999999999 / 100000000000000000 : ℚ), (21106249999999999 / 100000000000000000 : ℚ)⟩
  r := (87468665854563 / 100000000000000 : ℚ)
  w := (5110641803101 / 5000000000000 : ℚ)
  center := (21103124999999999 / 100000000000000000 : ℚ)
  supportValue := (3997396226889091 / 5000000000000000 : ℚ)
  supportSlope := (14085588649837 / 2500000000000 : ℚ)
  oldCenter := (3997396226889091 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_559
  oldHi := (20000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1841, piece_1842]
}

def cell_6532 : Cell := { cellDefaults with
  domain := ⟨(21106249999999999 / 100000000000000000 : ℚ), (21112499999999999 / 100000000000000000 : ℚ)⟩
  r := (87468665854563 / 100000000000000 : ℚ)
  w := (5110641803101 / 5000000000000 : ℚ)
  center := (21109374999999999 / 100000000000000000 : ℚ)
  supportValue := (3999157089533549 / 5000000000000000 : ℚ)
  supportSlope := (2817954509177767 / 500000000000000 : ℚ)
  oldCenter := (3999157089533549 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_559
  oldLo := (79949999999999999 / 100000000000000000 : ℚ)
  oldHi := (80049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1842, piece_1843]
}

def cell_6533 : Cell := { cellDefaults with
  domain := ⟨(21112499999999999 / 100000000000000000 : ℚ), (21118749999999999 / 100000000000000000 : ℚ)⟩
  r := (87468665854563 / 100000000000000 : ℚ)
  w := (5110641803101 / 5000000000000 : ℚ)
  center := (21115624999999999 / 100000000000000000 : ℚ)
  supportValue := (2000459256373217 / 2500000000000000 : ℚ)
  supportSlope := (2818616244340433 / 500000000000000 : ℚ)
  oldCenter := (2000459256373217 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_559
  oldLo := (20000000000000001 / 25000000000000000 : ℚ)
  oldHi := (80049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1843]
}

def cell_6534 : Cell := { cellDefaults with
  domain := ⟨(21118749999999999 / 100000000000000000 : ℚ), (21124999999999999 / 100000000000000000 : ℚ)⟩
  r := (87468665854563 / 100000000000000 : ℚ)
  w := (5110641803101 / 5000000000000 : ℚ)
  center := (21121874999999999 / 100000000000000000 : ℚ)
  supportValue := (8005360991681877 / 10000000000000000 : ℚ)
  supportSlope := (5638884339042249 / 1000000000000000 : ℚ)
  oldCenter := (8005360991681877 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_559
  oldLo := (20000000000000001 / 25000000000000000 : ℚ)
  oldHi := (8008938547486033 / 10000000000000000 : ℚ)
  oldPieces := [piece_1843, piece_1844]
}

def cell_6535 : Cell := { cellDefaults with
  domain := ⟨(21124999999999999 / 100000000000000000 : ℚ), (21131249999999999 / 100000000000000000 : ℚ)⟩
  r := (87468665854563 / 100000000000000 : ℚ)
  w := (5110641803101 / 5000000000000 : ℚ)
  center := (21128124999999999 / 100000000000000000 : ℚ)
  supportValue := (50055535759591 / 62500000000000 : ℚ)
  supportSlope := (705069478704301 / 125000000000000 : ℚ)
  oldCenter := (50055535759591 / 62500000000000 : ℚ)
  newCoefficients := coefficients_559
  oldLo := (80049999999999999 / 100000000000000000 : ℚ)
  oldHi := (80149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1844, piece_1845, piece_1846]
}

def cell_6536 : Cell := { cellDefaults with
  domain := ⟨(21131249999999999 / 100000000000000000 : ℚ), (21137499999999999 / 100000000000000000 : ℚ)⟩
  r := (87468665854563 / 100000000000000 : ℚ)
  w := (5110641803101 / 5000000000000 : ℚ)
  center := (21134374999999999 / 100000000000000000 : ℚ)
  supportValue := (2003102849007463 / 2500000000000000 : ℚ)
  supportSlope := (282093879823897 / 50000000000000 : ℚ)
  oldCenter := (2003102849007463 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_559
  oldLo := (16020000000000001 / 20000000000000000 : ℚ)
  oldHi := (80149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1846]
}

def cell_6537 : Cell := { cellDefaults with
  domain := ⟨(21137499999999999 / 100000000000000000 : ℚ), (21143749999999999 / 100000000000000000 : ℚ)⟩
  r := (87468665854563 / 100000000000000 : ℚ)
  w := (5110641803101 / 5000000000000 : ℚ)
  center := (21140624999999999 / 100000000000000000 : ℚ)
  supportValue := (1001992263957653 / 1250000000000000 : ℚ)
  supportSlope := (1410819424998433 / 250000000000000 : ℚ)
  oldCenter := (1001992263957653 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_559
  oldLo := (16020000000000001 / 20000000000000000 : ℚ)
  oldHi := (16040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1846, piece_1847]
}

def cell_6538 : Cell := { cellDefaults with
  domain := ⟨(21143749999999999 / 100000000000000000 : ℚ), (21149999999999999 / 100000000000000000 : ℚ)⟩
  r := (87468665854563 / 100000000000000 : ℚ)
  w := (5110641803101 / 5000000000000 : ℚ)
  center := (21146874999999999 / 100000000000000000 : ℚ)
  supportValue := (8019465730691349 / 10000000000000000 : ℚ)
  supportSlope := (5644941398019299 / 1000000000000000 : ℚ)
  oldCenter := (8019465730691349 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_559
  oldLo := (80149999999999999 / 100000000000000000 : ℚ)
  oldHi := (80249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1847, piece_1848]
}

def cell_6539 : Cell := { cellDefaults with
  domain := ⟨(21149999999999999 / 100000000000000000 : ℚ), (21156249999999999 / 100000000000000000 : ℚ)⟩
  r := (17478061036621 / 20000000000000 : ℚ)
  w := (10224077624377 / 10000000000000 : ℚ)
  center := (21153124999999999 / 100000000000000000 : ℚ)
  supportValue := (320719415318801 / 400000000000000 : ℚ)
  supportSlope := (2820755606632197 / 500000000000000 : ℚ)
  oldCenter := (320719415318801 / 400000000000000 : ℚ)
  newCoefficients := coefficients_560
  oldLo := (80149999999999999 / 100000000000000000 : ℚ)
  oldHi := (16040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1847]
}

def cell_6540 : Cell := { cellDefaults with
  domain := ⟨(21156249999999999 / 100000000000000000 : ℚ), (21162499999999999 / 100000000000000000 : ℚ)⟩
  r := (17478061036621 / 20000000000000 : ℚ)
  w := (10224077624377 / 10000000000000 : ℚ)
  center := (21159374999999999 / 100000000000000000 : ℚ)
  supportValue := (8021511722111707 / 10000000000000000 : ℚ)
  supportSlope := (1410668570762219 / 250000000000000 : ℚ)
  oldCenter := (8021511722111707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_560
  oldLo := (80149999999999999 / 100000000000000000 : ℚ)
  oldHi := (80249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1847, piece_1848]
}

def cell_6541 : Cell := { cellDefaults with
  domain := ⟨(21162499999999999 / 100000000000000000 : ℚ), (21168749999999999 / 100000000000000000 : ℚ)⟩
  r := (17478061036621 / 20000000000000 : ℚ)
  w := (10224077624377 / 10000000000000 : ℚ)
  center := (21165624999999999 / 100000000000000000 : ℚ)
  supportValue := (8025039098114619 / 10000000000000000 : ℚ)
  supportSlope := (2822167507738449 / 500000000000000 : ℚ)
  oldCenter := (8025039098114619 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_560
  oldLo := (16040000000000001 / 20000000000000000 : ℚ)
  oldHi := (16060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1848, piece_1849]
}

def cell_6542 : Cell := { cellDefaults with
  domain := ⟨(21168749999999999 / 100000000000000000 : ℚ), (21174999999999999 / 100000000000000000 : ℚ)⟩
  r := (17478061036621 / 20000000000000 : ℚ)
  w := (10224077624377 / 10000000000000 : ℚ)
  center := (21171874999999999 / 100000000000000000 : ℚ)
  supportValue := (2007141787063833 / 2500000000000000 : ℚ)
  supportSlope := (3528744616349 / 625000000000 : ℚ)
  oldCenter := (2007141787063833 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_560
  oldLo := (80249999999999999 / 100000000000000000 : ℚ)
  oldHi := (80349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1849, piece_1850]
}

def cell_6543 : Cell := { cellDefaults with
  domain := ⟨(21174999999999999 / 100000000000000000 : ℚ), (21181249999999999 / 100000000000000000 : ℚ)⟩
  r := (17478061036621 / 20000000000000 : ℚ)
  w := (10224077624377 / 10000000000000 : ℚ)
  center := (21178124999999999 / 100000000000000000 : ℚ)
  supportValue := (803209622367569 / 1000000000000000 : ℚ)
  supportSlope := (5647190287518811 / 1000000000000000 : ℚ)
  oldCenter := (803209622367569 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_560
  oldLo := (16060000000000001 / 20000000000000000 : ℚ)
  oldHi := (80349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1850]
}

def cell_6544 : Cell := { cellDefaults with
  domain := ⟨(21181249999999999 / 100000000000000000 : ℚ), (21187499999999999 / 100000000000000000 : ℚ)⟩
  r := (17478061036621 / 20000000000000 : ℚ)
  w := (10224077624377 / 10000000000000 : ℚ)
  center := (21184374999999999 / 100000000000000000 : ℚ)
  supportValue := (4017813168762719 / 5000000000000000 : ℚ)
  supportSlope := (1412178991330837 / 250000000000000 : ℚ)
  oldCenter := (4017813168762719 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_560
  oldLo := (16060000000000001 / 20000000000000000 : ℚ)
  oldHi := (16080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1850, piece_1851]
}

def cell_6545 : Cell := { cellDefaults with
  domain := ⟨(21187499999999999 / 100000000000000000 : ℚ), (21193749999999999 / 100000000000000000 : ℚ)⟩
  r := (17478061036621 / 20000000000000 : ℚ)
  w := (10224077624377 / 10000000000000 : ℚ)
  center := (21190624999999999 / 100000000000000000 : ℚ)
  supportValue := (502447329733901 / 625000000000000 : ℚ)
  supportSlope := (2825188285915381 / 500000000000000 : ℚ)
  oldCenter := (502447329733901 / 625000000000000 : ℚ)
  newCoefficients := coefficients_560
  oldLo := (80349999999999999 / 100000000000000000 : ℚ)
  oldHi := (80449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1851, piece_1852]
}

def cell_6546 : Cell := { cellDefaults with
  domain := ⟨(21193749999999999 / 100000000000000000 : ℚ), (21199999999999999 / 100000000000000000 : ℚ)⟩
  r := (17478061036621 / 20000000000000 : ℚ)
  w := (10224077624377 / 10000000000000 : ℚ)
  center := (21196874999999999 / 100000000000000000 : ℚ)
  supportValue := (4021344546399721 / 5000000000000000 : ℚ)
  supportSlope := (1130362994130607 / 200000000000000 : ℚ)
  oldCenter := (4021344546399721 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_560
  oldLo := (16080000000000001 / 20000000000000000 : ℚ)
  oldHi := (80449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1852]
}

def cell_6547 : Cell := { cellDefaults with
  domain := ⟨(21199999999999999 / 100000000000000000 : ℚ), (21206249999999999 / 100000000000000000 : ℚ)⟩
  r := (3492484711007 / 4000000000000 : ℚ)
  w := (10226869885331 / 10000000000000 : ℚ)
  center := (21203124999999999 / 100000000000000000 : ℚ)
  supportValue := (1005149981912673 / 1250000000000000 : ℚ)
  supportSlope := (5648109069706919 / 1000000000000000 : ℚ)
  oldCenter := (1005149981912673 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_561
  oldLo := (80349999999999999 / 100000000000000000 : ℚ)
  oldHi := (80449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1851, piece_1852]
}

def cell_6548 : Cell := { cellDefaults with
  domain := ⟨(21206249999999999 / 100000000000000000 : ℚ), (21212499999999999 / 100000000000000000 : ℚ)⟩
  r := (3492484711007 / 4000000000000 : ℚ)
  w := (10226869885331 / 10000000000000 : ℚ)
  center := (21209374999999999 / 100000000000000000 : ℚ)
  supportValue := (1608946111634841 / 2000000000000000 : ℚ)
  supportSlope := (1129953316338117 / 200000000000000 : ℚ)
  oldCenter := (1608946111634841 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_561
  oldLo := (16080000000000001 / 20000000000000000 : ℚ)
  oldHi := (16100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1852, piece_1853]
}

def cell_6549 : Cell := { cellDefaults with
  domain := ⟨(21212499999999999 / 100000000000000000 : ℚ), (21218749999999999 / 100000000000000000 : ℚ)⟩
  r := (3492484711007 / 4000000000000 : ℚ)
  w := (10226869885331 / 10000000000000 : ℚ)
  center := (21215624999999999 / 100000000000000000 : ℚ)
  supportValue := (8048261993600501 / 10000000000000000 : ℚ)
  supportSlope := (1412855644621569 / 250000000000000 : ℚ)
  oldCenter := (8048261993600501 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_561
  oldLo := (80449999999999999 / 100000000000000000 : ℚ)
  oldHi := (80549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1853, piece_1854]
}

theorem check_6500 : SourceCertificateFamily.RightNormalized.check cell_6500 = true := by
  decide +kernel

theorem check_6501 : SourceCertificateFamily.RightNormalized.check cell_6501 = true := by
  decide +kernel

theorem check_6502 : SourceCertificateFamily.RightNormalized.check cell_6502 = true := by
  decide +kernel

theorem check_6503 : SourceCertificateFamily.RightNormalized.check cell_6503 = true := by
  decide +kernel

theorem check_6504 : SourceCertificateFamily.RightNormalized.check cell_6504 = true := by
  decide +kernel

theorem check_6505 : SourceCertificateFamily.RightNormalized.check cell_6505 = true := by
  decide +kernel

theorem check_6506 : SourceCertificateFamily.RightNormalized.check cell_6506 = true := by
  decide +kernel

theorem check_6507 : SourceCertificateFamily.RightNormalized.check cell_6507 = true := by
  decide +kernel

theorem check_6508 : SourceCertificateFamily.RightNormalized.check cell_6508 = true := by
  decide +kernel

theorem check_6509 : SourceCertificateFamily.RightNormalized.check cell_6509 = true := by
  decide +kernel

theorem check_6510 : SourceCertificateFamily.RightNormalized.check cell_6510 = true := by
  decide +kernel

theorem check_6511 : SourceCertificateFamily.RightNormalized.check cell_6511 = true := by
  decide +kernel

theorem check_6512 : SourceCertificateFamily.RightNormalized.check cell_6512 = true := by
  decide +kernel

theorem check_6513 : SourceCertificateFamily.RightNormalized.check cell_6513 = true := by
  decide +kernel

theorem check_6514 : SourceCertificateFamily.RightNormalized.check cell_6514 = true := by
  decide +kernel

theorem check_6515 : SourceCertificateFamily.RightNormalized.check cell_6515 = true := by
  decide +kernel

theorem check_6516 : SourceCertificateFamily.RightNormalized.check cell_6516 = true := by
  decide +kernel

theorem check_6517 : SourceCertificateFamily.RightNormalized.check cell_6517 = true := by
  decide +kernel

theorem check_6518 : SourceCertificateFamily.RightNormalized.check cell_6518 = true := by
  decide +kernel

theorem check_6519 : SourceCertificateFamily.RightNormalized.check cell_6519 = true := by
  decide +kernel

theorem check_6520 : SourceCertificateFamily.RightNormalized.check cell_6520 = true := by
  decide +kernel

theorem check_6521 : SourceCertificateFamily.RightNormalized.check cell_6521 = true := by
  decide +kernel

theorem check_6522 : SourceCertificateFamily.RightNormalized.check cell_6522 = true := by
  decide +kernel

theorem check_6523 : SourceCertificateFamily.RightNormalized.check cell_6523 = true := by
  decide +kernel

theorem check_6524 : SourceCertificateFamily.RightNormalized.check cell_6524 = true := by
  decide +kernel

theorem check_6525 : SourceCertificateFamily.RightNormalized.check cell_6525 = true := by
  decide +kernel

theorem check_6526 : SourceCertificateFamily.RightNormalized.check cell_6526 = true := by
  decide +kernel

theorem check_6527 : SourceCertificateFamily.RightNormalized.check cell_6527 = true := by
  decide +kernel

theorem check_6528 : SourceCertificateFamily.RightNormalized.check cell_6528 = true := by
  decide +kernel

theorem check_6529 : SourceCertificateFamily.RightNormalized.check cell_6529 = true := by
  decide +kernel

theorem check_6530 : SourceCertificateFamily.RightNormalized.check cell_6530 = true := by
  decide +kernel

theorem check_6531 : SourceCertificateFamily.RightNormalized.check cell_6531 = true := by
  decide +kernel

theorem check_6532 : SourceCertificateFamily.RightNormalized.check cell_6532 = true := by
  decide +kernel

theorem check_6533 : SourceCertificateFamily.RightNormalized.check cell_6533 = true := by
  decide +kernel

theorem check_6534 : SourceCertificateFamily.RightNormalized.check cell_6534 = true := by
  decide +kernel

theorem check_6535 : SourceCertificateFamily.RightNormalized.check cell_6535 = true := by
  decide +kernel

theorem check_6536 : SourceCertificateFamily.RightNormalized.check cell_6536 = true := by
  decide +kernel

theorem check_6537 : SourceCertificateFamily.RightNormalized.check cell_6537 = true := by
  decide +kernel

theorem check_6538 : SourceCertificateFamily.RightNormalized.check cell_6538 = true := by
  decide +kernel

theorem check_6539 : SourceCertificateFamily.RightNormalized.check cell_6539 = true := by
  decide +kernel

theorem check_6540 : SourceCertificateFamily.RightNormalized.check cell_6540 = true := by
  decide +kernel

theorem check_6541 : SourceCertificateFamily.RightNormalized.check cell_6541 = true := by
  decide +kernel

theorem check_6542 : SourceCertificateFamily.RightNormalized.check cell_6542 = true := by
  decide +kernel

theorem check_6543 : SourceCertificateFamily.RightNormalized.check cell_6543 = true := by
  decide +kernel

theorem check_6544 : SourceCertificateFamily.RightNormalized.check cell_6544 = true := by
  decide +kernel

theorem check_6545 : SourceCertificateFamily.RightNormalized.check cell_6545 = true := by
  decide +kernel

theorem check_6546 : SourceCertificateFamily.RightNormalized.check cell_6546 = true := by
  decide +kernel

theorem check_6547 : SourceCertificateFamily.RightNormalized.check cell_6547 = true := by
  decide +kernel

theorem check_6548 : SourceCertificateFamily.RightNormalized.check cell_6548 = true := by
  decide +kernel

theorem check_6549 : SourceCertificateFamily.RightNormalized.check cell_6549 = true := by
  decide +kernel

def cells : List Cell := [cell_6500, cell_6501, cell_6502, cell_6503, cell_6504, cell_6505, cell_6506, cell_6507, cell_6508, cell_6509, cell_6510, cell_6511, cell_6512, cell_6513, cell_6514, cell_6515, cell_6516, cell_6517, cell_6518, cell_6519, cell_6520, cell_6521, cell_6522, cell_6523, cell_6524, cell_6525, cell_6526, cell_6527, cell_6528, cell_6529, cell_6530, cell_6531, cell_6532, cell_6533, cell_6534, cell_6535, cell_6536, cell_6537, cell_6538, cell_6539, cell_6540, cell_6541, cell_6542, cell_6543, cell_6544, cell_6545, cell_6546, cell_6547, cell_6548, cell_6549]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6500, SourceCertificateFamily.of_right_checked check_6501, SourceCertificateFamily.of_right_checked check_6502, SourceCertificateFamily.of_right_checked check_6503, SourceCertificateFamily.of_right_checked check_6504, SourceCertificateFamily.of_right_checked check_6505, SourceCertificateFamily.of_right_checked check_6506, SourceCertificateFamily.of_right_checked check_6507, SourceCertificateFamily.of_right_checked check_6508, SourceCertificateFamily.of_right_checked check_6509, SourceCertificateFamily.of_right_checked check_6510, SourceCertificateFamily.of_right_checked check_6511, SourceCertificateFamily.of_right_checked check_6512, SourceCertificateFamily.of_right_checked check_6513, SourceCertificateFamily.of_right_checked check_6514, SourceCertificateFamily.of_right_checked check_6515, SourceCertificateFamily.of_right_checked check_6516, SourceCertificateFamily.of_right_checked check_6517, SourceCertificateFamily.of_right_checked check_6518, SourceCertificateFamily.of_right_checked check_6519, SourceCertificateFamily.of_right_checked check_6520, SourceCertificateFamily.of_right_checked check_6521, SourceCertificateFamily.of_right_checked check_6522, SourceCertificateFamily.of_right_checked check_6523, SourceCertificateFamily.of_right_checked check_6524, SourceCertificateFamily.of_right_checked check_6525, SourceCertificateFamily.of_right_checked check_6526, SourceCertificateFamily.of_right_checked check_6527, SourceCertificateFamily.of_right_checked check_6528, SourceCertificateFamily.of_right_checked check_6529, SourceCertificateFamily.of_right_checked check_6530, SourceCertificateFamily.of_right_checked check_6531, SourceCertificateFamily.of_right_checked check_6532, SourceCertificateFamily.of_right_checked check_6533, SourceCertificateFamily.of_right_checked check_6534, SourceCertificateFamily.of_right_checked check_6535, SourceCertificateFamily.of_right_checked check_6536, SourceCertificateFamily.of_right_checked check_6537, SourceCertificateFamily.of_right_checked check_6538, SourceCertificateFamily.of_right_checked check_6539, SourceCertificateFamily.of_right_checked check_6540, SourceCertificateFamily.of_right_checked check_6541, SourceCertificateFamily.of_right_checked check_6542, SourceCertificateFamily.of_right_checked check_6543, SourceCertificateFamily.of_right_checked check_6544, SourceCertificateFamily.of_right_checked check_6545, SourceCertificateFamily.of_right_checked check_6546, SourceCertificateFamily.of_right_checked check_6547, SourceCertificateFamily.of_right_checked check_6548, SourceCertificateFamily.of_right_checked check_6549, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0130

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0130
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0130
open AnalyticBounds.ExpressionCertificate

theorem linked_6500 : Linked cell_6500 pieces := by
  refine ⟨piece_555,piece_555_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6500,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1823_mem

theorem linked_6501 : Linked cell_6501 pieces := by
  refine ⟨piece_555,piece_555_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6501,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1823_mem
    · exact piece_1824_mem

theorem linked_6502 : Linked cell_6502 pieces := by
  refine ⟨piece_555,piece_555_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6502,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1824_mem

theorem linked_6503 : Linked cell_6503 pieces := by
  refine ⟨piece_555,piece_555_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6503,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1824_mem
    · exact piece_1825_mem

theorem linked_6504 : Linked cell_6504 pieces := by
  refine ⟨piece_555,piece_555_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6504,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1825_mem
    · exact piece_1826_mem

theorem linked_6505 : Linked cell_6505 pieces := by
  refine ⟨piece_555,piece_555_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6505,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1826_mem
    · exact piece_1827_mem

theorem linked_6506 : Linked cell_6506 pieces := by
  refine ⟨piece_555,piece_555_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6506,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1827_mem

theorem linked_6507 : Linked cell_6507 pieces := by
  refine ⟨piece_556,piece_556_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6507,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1826_mem
    · exact piece_1827_mem

theorem linked_6508 : Linked cell_6508 pieces := by
  refine ⟨piece_556,piece_556_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6508,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1827_mem
    · exact piece_1828_mem

theorem linked_6509 : Linked cell_6509 pieces := by
  refine ⟨piece_556,piece_556_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6509,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1828_mem

theorem linked_6510 : Linked cell_6510 pieces := by
  refine ⟨piece_556,piece_556_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6510,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1828_mem
    · exact piece_1829_mem

theorem linked_6511 : Linked cell_6511 pieces := by
  refine ⟨piece_556,piece_556_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6511,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1829_mem
    · exact piece_1830_mem

theorem linked_6512 : Linked cell_6512 pieces := by
  refine ⟨piece_556,piece_556_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6512,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1830_mem

theorem linked_6513 : Linked cell_6513 pieces := by
  refine ⟨piece_556,piece_556_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6513,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1830_mem
    · exact piece_1831_mem

theorem linked_6514 : Linked cell_6514 pieces := by
  refine ⟨piece_556,piece_556_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6514,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1831_mem
    · exact piece_1832_mem

theorem linked_6515 : Linked cell_6515 pieces := by
  refine ⟨piece_557,piece_557_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6515,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1831_mem
    · exact piece_1832_mem

theorem linked_6516 : Linked cell_6516 pieces := by
  refine ⟨piece_557,piece_557_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6516,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1832_mem
    · exact piece_1833_mem

theorem linked_6517 : Linked cell_6517 pieces := by
  refine ⟨piece_557,piece_557_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6517,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1833_mem
    · exact piece_1834_mem

theorem linked_6518 : Linked cell_6518 pieces := by
  refine ⟨piece_557,piece_557_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6518,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1834_mem
    · exact piece_1835_mem

theorem linked_6519 : Linked cell_6519 pieces := by
  refine ⟨piece_557,piece_557_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6519,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1835_mem

theorem linked_6520 : Linked cell_6520 pieces := by
  refine ⟨piece_557,piece_557_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6520,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1835_mem
    · exact piece_1836_mem

theorem linked_6521 : Linked cell_6521 pieces := by
  refine ⟨piece_557,piece_557_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6521,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1836_mem
    · exact piece_1837_mem

theorem linked_6522 : Linked cell_6522 pieces := by
  refine ⟨piece_557,piece_557_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6522,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1837_mem

theorem linked_6523 : Linked cell_6523 pieces := by
  refine ⟨piece_558,piece_558_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6523,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1836_mem
    · exact piece_1837_mem

theorem linked_6524 : Linked cell_6524 pieces := by
  refine ⟨piece_558,piece_558_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6524,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1837_mem
    · exact piece_1838_mem

theorem linked_6525 : Linked cell_6525 pieces := by
  refine ⟨piece_558,piece_558_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6525,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1838_mem
    · exact piece_1839_mem

theorem linked_6526 : Linked cell_6526 pieces := by
  refine ⟨piece_558,piece_558_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6526,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1839_mem

theorem linked_6527 : Linked cell_6527 pieces := by
  refine ⟨piece_558,piece_558_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6527,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1839_mem
    · exact piece_1840_mem

theorem linked_6528 : Linked cell_6528 pieces := by
  refine ⟨piece_558,piece_558_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6528,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1840_mem
    · exact piece_1841_mem

theorem linked_6529 : Linked cell_6529 pieces := by
  refine ⟨piece_558,piece_558_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6529,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1841_mem

theorem linked_6530 : Linked cell_6530 pieces := by
  refine ⟨piece_558,piece_558_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6530,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1841_mem
    · exact piece_1842_mem

theorem linked_6531 : Linked cell_6531 pieces := by
  refine ⟨piece_559,piece_559_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6531,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1841_mem
    · exact piece_1842_mem

theorem linked_6532 : Linked cell_6532 pieces := by
  refine ⟨piece_559,piece_559_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6532,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1842_mem
    · exact piece_1843_mem

theorem linked_6533 : Linked cell_6533 pieces := by
  refine ⟨piece_559,piece_559_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6533,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1843_mem

theorem linked_6534 : Linked cell_6534 pieces := by
  refine ⟨piece_559,piece_559_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6534,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1843_mem
    · exact piece_1844_mem

theorem linked_6535 : Linked cell_6535 pieces := by
  refine ⟨piece_559,piece_559_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6535,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1844_mem
    · exact piece_1845_mem
    · exact piece_1846_mem

theorem linked_6536 : Linked cell_6536 pieces := by
  refine ⟨piece_559,piece_559_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6536,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1846_mem

theorem linked_6537 : Linked cell_6537 pieces := by
  refine ⟨piece_559,piece_559_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6537,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1846_mem
    · exact piece_1847_mem

theorem linked_6538 : Linked cell_6538 pieces := by
  refine ⟨piece_559,piece_559_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6538,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1847_mem
    · exact piece_1848_mem

theorem linked_6539 : Linked cell_6539 pieces := by
  refine ⟨piece_560,piece_560_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6539,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1847_mem

theorem linked_6540 : Linked cell_6540 pieces := by
  refine ⟨piece_560,piece_560_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6540,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1847_mem
    · exact piece_1848_mem

theorem linked_6541 : Linked cell_6541 pieces := by
  refine ⟨piece_560,piece_560_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6541,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1848_mem
    · exact piece_1849_mem

theorem linked_6542 : Linked cell_6542 pieces := by
  refine ⟨piece_560,piece_560_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6542,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1849_mem
    · exact piece_1850_mem

theorem linked_6543 : Linked cell_6543 pieces := by
  refine ⟨piece_560,piece_560_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6543,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1850_mem

theorem linked_6544 : Linked cell_6544 pieces := by
  refine ⟨piece_560,piece_560_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6544,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1850_mem
    · exact piece_1851_mem

theorem linked_6545 : Linked cell_6545 pieces := by
  refine ⟨piece_560,piece_560_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6545,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1851_mem
    · exact piece_1852_mem

theorem linked_6546 : Linked cell_6546 pieces := by
  refine ⟨piece_560,piece_560_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6546,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1852_mem

theorem linked_6547 : Linked cell_6547 pieces := by
  refine ⟨piece_561,piece_561_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6547,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1851_mem
    · exact piece_1852_mem

theorem linked_6548 : Linked cell_6548 pieces := by
  refine ⟨piece_561,piece_561_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6548,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1852_mem
    · exact piece_1853_mem

theorem linked_6549 : Linked cell_6549 pieces := by
  refine ⟨piece_561,piece_561_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6549,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1853_mem
    · exact piece_1854_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0130.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0130.cells,List.forall_mem_cons]
  exact ⟨linked_6500, linked_6501, linked_6502, linked_6503, linked_6504, linked_6505, linked_6506, linked_6507, linked_6508, linked_6509, linked_6510, linked_6511, linked_6512, linked_6513, linked_6514, linked_6515, linked_6516, linked_6517, linked_6518, linked_6519, linked_6520, linked_6521, linked_6522, linked_6523, linked_6524, linked_6525, linked_6526, linked_6527, linked_6528, linked_6529, linked_6530, linked_6531, linked_6532, linked_6533, linked_6534, linked_6535, linked_6536, linked_6537, linked_6538, linked_6539, linked_6540, linked_6541, linked_6542, linked_6543, linked_6544, linked_6545, linked_6546, linked_6547, linked_6548, linked_6549, by simp⟩

theorem covered : covers (4182122905027933 / 20000000000000000 : ℚ) (21218749999999999 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0130.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0130
