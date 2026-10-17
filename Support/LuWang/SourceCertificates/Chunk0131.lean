import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0131
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(21218749999999999 / 100000000000000000 : ℚ), (21224999999999999 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (43461860529207 / 50000000000000 : ℚ)
  w := (5120392265741 / 5000000000000 : ℚ)
  center := (21221874999999999 / 100000000000000000 : ℚ)
  supportValue := (8051794464686277 / 10000000000000000 : ℚ)
  supportSlope := (5652499898731733 / 1000000000000000 : ℚ)
  oldCenter := (8051794464686277 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_562
  oldLo := (16120000000000001 / 20000000000000000 : ℚ)
  oldHi := (16140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1856, piece_1857, piece_1858]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6550 : Cell := { cellDefaults with
  r := (3492484711007 / 4000000000000 : ℚ)
  w := (10226869885331 / 10000000000000 : ℚ)
  newCoefficients := coefficients_561
  oldLo := (16100000000000001 / 20000000000000000 : ℚ)
  oldHi := (80549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1854]
}

def cell_6551 : Cell := { cellDefaults with
  domain := ⟨(21224999999999999 / 100000000000000000 : ℚ), (21231249999999999 / 100000000000000000 : ℚ)⟩
  r := (3492484711007 / 4000000000000 : ℚ)
  w := (10226869885331 / 10000000000000 : ℚ)
  center := (21228124999999999 / 100000000000000000 : ℚ)
  supportValue := (4027663985185039 / 5000000000000000 : ℚ)
  supportSlope := (5654143957224633 / 1000000000000000 : ℚ)
  oldCenter := (4027663985185039 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_561
  oldLo := (16100000000000001 / 20000000000000000 : ℚ)
  oldHi := (16120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1854, piece_1855]
}

def cell_6552 : Cell := { cellDefaults with
  domain := ⟨(21231249999999999 / 100000000000000000 : ℚ), (21237499999999999 / 100000000000000000 : ℚ)⟩
  r := (3492484711007 / 4000000000000 : ℚ)
  w := (10226869885331 / 10000000000000 : ℚ)
  center := (21234374999999999 / 100000000000000000 : ℚ)
  supportValue := (8058862225095289 / 10000000000000000 : ℚ)
  supportSlope := (5655798678802171 / 1000000000000000 : ℚ)
  oldCenter := (8058862225095289 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_561
  oldLo := (80549999999999999 / 100000000000000000 : ℚ)
  oldHi := (4032122905027933 / 5000000000000000 : ℚ)
  oldPieces := [piece_1855, piece_1856]
}

def cell_6553 : Cell := { cellDefaults with
  domain := ⟨(21237499999999999 / 100000000000000000 : ℚ), (21243749999999999 / 100000000000000000 : ℚ)⟩
  r := (3492484711007 / 4000000000000 : ℚ)
  w := (10226869885331 / 10000000000000 : ℚ)
  center := (21240624999999999 / 100000000000000000 : ℚ)
  supportValue := (2015599357908253 / 2500000000000000 : ℚ)
  supportSlope := (5657118687118157 / 1000000000000000 : ℚ)
  oldCenter := (2015599357908253 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_561
  oldHi := (4032122905027933 / 5000000000000000 : ℚ)
  oldPieces := [piece_1856]
}

def cell_6554 : Cell := { cellDefaults with
  domain := ⟨(21243749999999999 / 100000000000000000 : ℚ), (21249999999999999 / 100000000000000000 : ℚ)⟩
  r := (3492484711007 / 4000000000000 : ℚ)
  w := (10226869885331 / 10000000000000 : ℚ)
  center := (21246874999999999 / 100000000000000000 : ℚ)
  supportValue := (1613186734642369 / 2000000000000000 : ℚ)
  supportSlope := (5658523587396047 / 1000000000000000 : ℚ)
  oldCenter := (1613186734642369 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_561
  oldPieces := [piece_1856, piece_1857, piece_1858]
}

def cell_6555 : Cell := { cellDefaults with
  domain := ⟨(21249999999999999 / 100000000000000000 : ℚ), (21256249999999999 / 100000000000000000 : ℚ)⟩
  r := (43617049042717 / 50000000000000 : ℚ)
  w := (10229658155849 / 10000000000000 : ℚ)
  center := (21253124999999999 / 100000000000000000 : ℚ)
  supportValue := (4032216937512617 / 5000000000000000 : ℚ)
  supportSlope := (2827592438274351 / 500000000000000 : ℚ)
  oldCenter := (4032216937512617 / 5000000000000000 : ℚ)
  oldPieces := [piece_1856, piece_1857, piece_1858]
}

def cell_6556 : Cell := { cellDefaults with
  domain := ⟨(21256249999999999 / 100000000000000000 : ℚ), (21262499999999999 / 100000000000000000 : ℚ)⟩
  r := (43617049042717 / 50000000000000 : ℚ)
  w := (10229658155849 / 10000000000000 : ℚ)
  center := (21259374999999999 / 100000000000000000 : ℚ)
  supportValue := (4033984349171463 / 5000000000000000 : ℚ)
  supportSlope := (5656732489379479 / 1000000000000000 : ℚ)
  oldCenter := (4033984349171463 / 5000000000000000 : ℚ)
  oldLo := (80649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1858]
}

def cell_6557 : Cell := { cellDefaults with
  domain := ⟨(21262499999999999 / 100000000000000000 : ℚ), (21268749999999999 / 100000000000000000 : ℚ)⟩
  r := (43617049042717 / 50000000000000 : ℚ)
  w := (10229658155849 / 10000000000000 : ℚ)
  center := (21265624999999999 / 100000000000000000 : ℚ)
  supportValue := (2017876138328003 / 2500000000000000 : ℚ)
  supportSlope := (11315803578973771 / 2000000000000000 : ℚ)
  oldCenter := (2017876138328003 / 2500000000000000 : ℚ)
  oldLo := (80649999999999999 / 100000000000000000 : ℚ)
  oldHi := (323 / 400 : ℚ)
  oldPieces := [piece_1858, piece_1859]
}

def cell_6558 : Cell := { cellDefaults with
  domain := ⟨(21268749999999999 / 100000000000000000 : ℚ), (21274999999999999 / 100000000000000000 : ℚ)⟩
  r := (43617049042717 / 50000000000000 : ℚ)
  w := (10229658155849 / 10000000000000 : ℚ)
  center := (21271874999999999 / 100000000000000000 : ℚ)
  supportValue := (4037520719429259 / 5000000000000000 : ℚ)
  supportSlope := (5659551761764803 / 1000000000000000 : ℚ)
  oldCenter := (4037520719429259 / 5000000000000000 : ℚ)
  oldLo := (16140000000000001 / 20000000000000000 : ℚ)
  oldHi := (16160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1859, piece_1860]
}

def cell_6559 : Cell := { cellDefaults with
  domain := ⟨(21274999999999999 / 100000000000000000 : ℚ), (21281249999999999 / 100000000000000000 : ℚ)⟩
  r := (43617049042717 / 50000000000000 : ℚ)
  w := (10229658155849 / 10000000000000 : ℚ)
  center := (21278124999999999 / 100000000000000000 : ℚ)
  supportValue := (2019644750341169 / 2500000000000000 : ℚ)
  supportSlope := (5661200020030677 / 1000000000000000 : ℚ)
  oldCenter := (2019644750341169 / 2500000000000000 : ℚ)
  oldLo := (323 / 400 : ℚ)
  oldHi := (1617 / 2000 : ℚ)
  oldPieces := [piece_1860, piece_1861]
}

def cell_6560 : Cell := { cellDefaults with
  domain := ⟨(21281249999999999 / 100000000000000000 : ℚ), (21287499999999999 / 100000000000000000 : ℚ)⟩
  r := (43617049042717 / 50000000000000 : ℚ)
  w := (10229658155849 / 10000000000000 : ℚ)
  center := (21284374999999999 / 100000000000000000 : ℚ)
  supportValue := (8082117583715431 / 10000000000000000 : ℚ)
  supportSlope := (5662406051111901 / 1000000000000000 : ℚ)
  oldCenter := (8082117583715431 / 10000000000000000 : ℚ)
  oldLo := (16160000000000001 / 20000000000000000 : ℚ)
  oldHi := (1617 / 2000 : ℚ)
  oldPieces := [piece_1861]
}

def cell_6561 : Cell := { cellDefaults with
  domain := ⟨(21287499999999999 / 100000000000000000 : ℚ), (21293749999999999 / 100000000000000000 : ℚ)⟩
  r := (43617049042717 / 50000000000000 : ℚ)
  w := (10229658155849 / 10000000000000 : ℚ)
  center := (21290624999999999 / 100000000000000000 : ℚ)
  supportValue := (8085657196204873 / 10000000000000000 : ℚ)
  supportSlope := (2831957760654369 / 500000000000000 : ℚ)
  oldCenter := (8085657196204873 / 10000000000000000 : ℚ)
  oldLo := (16160000000000001 / 20000000000000000 : ℚ)
  oldHi := (16180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1861, piece_1862]
}

def cell_6562 : Cell := { cellDefaults with
  domain := ⟨(21293749999999999 / 100000000000000000 : ℚ), (21299999999999999 / 100000000000000000 : ℚ)⟩
  r := (43617049042717 / 50000000000000 : ℚ)
  w := (10229658155849 / 10000000000000 : ℚ)
  center := (21296874999999999 / 100000000000000000 : ℚ)
  supportValue := (1011149704901317 / 1250000000000000 : ℚ)
  supportSlope := (5665562191570217 / 1000000000000000 : ℚ)
  oldCenter := (1011149704901317 / 1250000000000000 : ℚ)
  oldLo := (1617 / 2000 : ℚ)
  oldHi := (1619 / 2000 : ℚ)
  oldPieces := [piece_1862, piece_1863]
}

def cell_6563 : Cell := { cellDefaults with
  domain := ⟨(21299999999999999 / 100000000000000000 : ℚ), (170449999999999993 / 800000000000000000 : ℚ)⟩
  r := (87156249198469 / 100000000000000 : ℚ)
  w := (10232443457793 / 10000000000000 : ℚ)
  center := (68169999999999997 / 320000000000000000 : ℚ)
  supportValue := (8087687996266157 / 10000000000000000 : ℚ)
  supportSlope := (5662006528632689 / 1000000000000000 : ℚ)
  oldCenter := (8087687996266157 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_563
  oldLo := (1617 / 2000 : ℚ)
  oldHi := (16180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1862]
}

def cell_6564 : Cell := { cellDefaults with
  domain := ⟨(170449999999999993 / 800000000000000000 : ℚ), (85249999999999997 / 400000000000000000 : ℚ)⟩
  r := (87156249198469 / 100000000000000 : ℚ)
  w := (10232443457793 / 10000000000000 : ℚ)
  center := (340949999999999987 / 1600000000000000000 : ℚ)
  supportValue := (809122721670277 / 1000000000000000 : ℚ)
  supportSlope := (176977736051017 / 31250000000000 : ℚ)
  oldCenter := (809122721670277 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_563
  oldLo := (1617 / 2000 : ℚ)
  oldHi := (1619 / 2000 : ℚ)
  oldPieces := [piece_1862, piece_1863]
}

def cell_6565 : Cell := { cellDefaults with
  domain := ⟨(85249999999999997 / 400000000000000000 : ℚ), (34109999999999999 / 160000000000000000 : ℚ)⟩
  r := (87156249198469 / 100000000000000 : ℚ)
  w := (10232443457793 / 10000000000000 : ℚ)
  center := (341049999999999989 / 1600000000000000000 : ℚ)
  supportValue := (101184592598929 / 125000000000000 : ℚ)
  supportSlope := (1132986560278559 / 200000000000000 : ℚ)
  oldCenter := (101184592598929 / 125000000000000 : ℚ)
  newCoefficients := coefficients_563
  oldLo := (16180000000000001 / 20000000000000000 : ℚ)
  oldHi := (16200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1863, piece_1864]
}

def cell_6566 : Cell := { cellDefaults with
  domain := ⟨(34109999999999999 / 160000000000000000 : ℚ), (42649999999999999 / 200000000000000000 : ℚ)⟩
  r := (87156249198469 / 100000000000000 : ℚ)
  w := (10232443457793 / 10000000000000 : ℚ)
  center := (341149999999999991 / 1600000000000000000 : ℚ)
  supportValue := (8098308323288139 / 10000000000000000 : ℚ)
  supportSlope := (5666576748843853 / 1000000000000000 : ℚ)
  oldCenter := (8098308323288139 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_563
  oldLo := (1619 / 2000 : ℚ)
  oldHi := (1621 / 2000 : ℚ)
  oldPieces := [piece_1864, piece_1865]
}

def cell_6567 : Cell := { cellDefaults with
  domain := ⟨(42649999999999999 / 200000000000000000 : ℚ), (170649999999999997 / 800000000000000000 : ℚ)⟩
  r := (87156249198469 / 100000000000000 : ℚ)
  w := (10232443457793 / 10000000000000 : ℚ)
  center := (341249999999999993 / 1600000000000000000 : ℚ)
  supportValue := (8101850268806867 / 10000000000000000 : ℚ)
  supportSlope := (2833841974097361 / 500000000000000 : ℚ)
  oldCenter := (8101850268806867 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_563
  oldLo := (16200000000000001 / 20000000000000000 : ℚ)
  oldHi := (1621 / 2000 : ℚ)
  oldPieces := [piece_1865]
}

def cell_6568 : Cell := { cellDefaults with
  domain := ⟨(170649999999999997 / 800000000000000000 : ℚ), (85349999999999999 / 400000000000000000 : ℚ)⟩
  r := (87156249198469 / 100000000000000 : ℚ)
  w := (10232443457793 / 10000000000000 : ℚ)
  center := (68269999999999999 / 320000000000000000 : ℚ)
  supportValue := (8105393243673403 / 10000000000000000 : ℚ)
  supportSlope := (141732415385129 / 25000000000000 : ℚ)
  oldCenter := (8105393243673403 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_563
  oldLo := (16200000000000001 / 20000000000000000 : ℚ)
  oldHi := (16220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1865, piece_1866]
}

def cell_6569 : Cell := { cellDefaults with
  domain := ⟨(85349999999999999 / 400000000000000000 : ℚ), (170749999999999999 / 800000000000000000 : ℚ)⟩
  r := (87156249198469 / 100000000000000 : ℚ)
  w := (10232443457793 / 10000000000000 : ℚ)
  center := (341449999999999997 / 1600000000000000000 : ℚ)
  supportValue := (1621787396905221 / 2000000000000000 : ℚ)
  supportSlope := (354433754396581 / 62500000000000 : ℚ)
  oldCenter := (1621787396905221 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_563
  oldLo := (1621 / 2000 : ℚ)
  oldHi := (1623 / 2000 : ℚ)
  oldPieces := [piece_1866, piece_1867]
}

def cell_6570 : Cell := { cellDefaults with
  domain := ⟨(170749999999999999 / 800000000000000000 : ℚ), (427 / 2000 : ℚ)⟩
  r := (87156249198469 / 100000000000000 : ℚ)
  w := (10232443457793 / 10000000000000 : ℚ)
  center := (341549999999999999 / 1600000000000000000 : ℚ)
  supportValue := (4056240827829211 / 5000000000000000 : ℚ)
  supportSlope := (5672290400667521 / 1000000000000000 : ℚ)
  oldCenter := (4056240827829211 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_563
  oldLo := (16220000000000001 / 20000000000000000 : ℚ)
  oldHi := (1623 / 2000 : ℚ)
  oldPieces := [piece_1867]
}

def cell_6571 : Cell := { cellDefaults with
  domain := ⟨(427 / 2000 : ℚ), (3417 / 16000 : ℚ)⟩
  r := (43539285221393 / 50000000000000 : ℚ)
  w := (10235226292461 / 10000000000000 : ℚ)
  center := (6833 / 32000 : ℚ)
  supportValue := (8110962637269683 / 10000000000000000 : ℚ)
  supportSlope := (5668664638324827 / 1000000000000000 : ℚ)
  oldCenter := (8110962637269683 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_564
  oldLo := (1621 / 2000 : ℚ)
  oldHi := (1623 / 2000 : ℚ)
  oldPieces := [piece_1866, piece_1867]
}

def cell_6572 : Cell := { cellDefaults with
  domain := ⟨(3417 / 16000 : ℚ), (1709 / 8000 : ℚ)⟩
  r := (43539285221393 / 50000000000000 : ℚ)
  w := (10235226292461 / 10000000000000 : ℚ)
  center := (1367 / 6400 : ℚ)
  supportValue := (16229012245447 / 20000000000000 : ℚ)
  supportSlope := (708788357291823 / 125000000000000 : ℚ)
  oldCenter := (16229012245447 / 20000000000000 : ℚ)
  newCoefficients := coefficients_564
  oldLo := (16220000000000001 / 20000000000000000 : ℚ)
  oldHi := (4059776536312849 / 5000000000000000 : ℚ)
  oldPieces := [piece_1867, piece_1868]
}

def cell_6573 : Cell := { cellDefaults with
  domain := ⟨(1709 / 8000 : ℚ), (3419 / 16000 : ℚ)⟩
  r := (43539285221393 / 50000000000000 : ℚ)
  w := (10235226292461 / 10000000000000 : ℚ)
  center := (6837 / 32000 : ℚ)
  supportValue := (2029512599435909 / 2500000000000000 : ℚ)
  supportSlope := (5671878128012509 / 1000000000000000 : ℚ)
  oldCenter := (2029512599435909 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_564
  oldLo := (1623 / 2000 : ℚ)
  oldHi := (40600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1868, piece_1869]
}

def cell_6574 : Cell := { cellDefaults with
  domain := ⟨(3419 / 16000 : ℚ), (171 / 800 : ℚ)⟩
  r := (43539285221393 / 50000000000000 : ℚ)
  w := (10235226292461 / 10000000000000 : ℚ)
  center := (6839 / 32000 : ℚ)
  supportValue := (2030398923493191 / 2500000000000000 : ℚ)
  supportSlope := (2836502860766643 / 500000000000000 : ℚ)
  oldCenter := (2030398923493191 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_564
  oldLo := (4059776536312849 / 5000000000000000 : ℚ)
  oldHi := (13 / 16 : ℚ)
  oldPieces := [piece_1869, piece_1870]
}

def cell_6575 : Cell := { cellDefaults with
  domain := ⟨(171 / 800 : ℚ), (3421 / 16000 : ℚ)⟩
  r := (43539285221393 / 50000000000000 : ℚ)
  w := (10235226292461 / 10000000000000 : ℚ)
  center := (6841 / 32000 : ℚ)
  supportValue := (8125142012742019 / 10000000000000000 : ℚ)
  supportSlope := (5674648894698819 / 1000000000000000 : ℚ)
  oldCenter := (8125142012742019 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_564
  oldLo := (40600000000000003 / 50000000000000000 : ℚ)
  oldHi := (40650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1870, piece_1871]
}

def cell_6576 : Cell := { cellDefaults with
  domain := ⟨(3421 / 16000 : ℚ), (1711 / 8000 : ℚ)⟩
  r := (43539285221393 / 50000000000000 : ℚ)
  w := (10235226292461 / 10000000000000 : ℚ)
  center := (6843 / 32000 : ℚ)
  supportValue := (812868903785491 / 1000000000000000 : ℚ)
  supportSlope := (2838145318832197 / 500000000000000 : ℚ)
  oldCenter := (812868903785491 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_564
  oldLo := (13 / 16 : ℚ)
  oldHi := (1627 / 2000 : ℚ)
  oldPieces := [piece_1871, piece_1872]
}

def cell_6577 : Cell := { cellDefaults with
  domain := ⟨(1711 / 8000 : ℚ), (3423 / 16000 : ℚ)⟩
  r := (43539285221393 / 50000000000000 : ℚ)
  w := (10235226292461 / 10000000000000 : ℚ)
  center := (1369 / 6400 : ℚ)
  supportValue := (1626447410884341 / 2000000000000000 : ℚ)
  supportSlope := (709693270091627 / 125000000000000 : ℚ)
  oldCenter := (1626447410884341 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_564
  oldLo := (40650000000000003 / 50000000000000000 : ℚ)
  oldHi := (1627 / 2000 : ℚ)
  oldPieces := [piece_1872]
}

def cell_6578 : Cell := { cellDefaults with
  domain := ⟨(3423 / 16000 : ℚ), (107 / 500 : ℚ)⟩
  r := (43539285221393 / 50000000000000 : ℚ)
  w := (10235226292461 / 10000000000000 : ℚ)
  center := (6847 / 32000 : ℚ)
  supportValue := (4067893047897521 / 5000000000000000 : ℚ)
  supportSlope := (1135801118189761 / 200000000000000 : ℚ)
  oldCenter := (4067893047897521 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_564
  oldLo := (40650000000000003 / 50000000000000000 : ℚ)
  oldHi := (40700000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1872, piece_1873]
}

def cell_6579 : Cell := { cellDefaults with
  domain := ⟨(107 / 500 : ℚ), (137 / 640 : ℚ)⟩
  r := (87001060788441 / 100000000000000 : ℚ)
  w := (2559501718793 / 2500000000000 : ℚ)
  center := (6849 / 32000 : ℚ)
  supportValue := (8134257588797411 / 10000000000000000 : ℚ)
  supportSlope := (5675654224406301 / 1000000000000000 : ℚ)
  oldCenter := (8134257588797411 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_565
  oldLo := (40650000000000003 / 50000000000000000 : ℚ)
  oldHi := (40700000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1872, piece_1873]
}

def cell_6580 : Cell := { cellDefaults with
  domain := ⟨(137 / 640 : ℚ), (1713 / 8000 : ℚ)⟩
  r := (87001060788441 / 100000000000000 : ℚ)
  w := (2559501718793 / 2500000000000 : ℚ)
  center := (6851 / 32000 : ℚ)
  supportValue := (325512208285487 / 400000000000000 : ℚ)
  supportSlope := (5677129759895649 / 1000000000000000 : ℚ)
  oldCenter := (325512208285487 / 400000000000000 : ℚ)
  newCoefficients := coefficients_565
  oldLo := (1627 / 2000 : ℚ)
  oldHi := (40700000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1873]
}

def cell_6581 : Cell := { cellDefaults with
  domain := ⟨(1713 / 8000 : ℚ), (3427 / 16000 : ℚ)⟩
  r := (87001060788441 / 100000000000000 : ℚ)
  w := (2559501718793 / 2500000000000 : ℚ)
  center := (6853 / 32000 : ℚ)
  supportValue := (8141353849706953 / 10000000000000000 : ℚ)
  supportSlope := (2839183493544617 / 500000000000000 : ℚ)
  oldCenter := (8141353849706953 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_565
  oldLo := (1627 / 2000 : ℚ)
  oldHi := (1629 / 2000 : ℚ)
  oldPieces := [piece_1873, piece_1874]
}

def cell_6582 : Cell := { cellDefaults with
  domain := ⟨(3427 / 16000 : ℚ), (857 / 4000 : ℚ)⟩
  r := (87001060788441 / 100000000000000 : ℚ)
  w := (2559501718793 / 2500000000000 : ℚ)
  center := (1371 / 6400 : ℚ)
  supportValue := (1628980698598169 / 2000000000000000 : ℚ)
  supportSlope := (2840002785272411 / 500000000000000 : ℚ)
  oldCenter := (1628980698598169 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_565
  oldLo := (40700000000000003 / 50000000000000000 : ℚ)
  oldHi := (40750000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1874, piece_1875]
}

def cell_6583 : Cell := { cellDefaults with
  domain := ⟨(857 / 4000 : ℚ), (3429 / 16000 : ℚ)⟩
  r := (87001060788441 / 100000000000000 : ℚ)
  w := (2559501718793 / 2500000000000 : ℚ)
  center := (6857 / 32000 : ℚ)
  supportValue := (8148453831298919 / 10000000000000000 : ℚ)
  supportSlope := (2840821260885029 / 500000000000000 : ℚ)
  oldCenter := (8148453831298919 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_565
  oldLo := (1629 / 2000 : ℚ)
  oldHi := (1631 / 2000 : ℚ)
  oldPieces := [piece_1875, piece_1876]
}

def cell_6584 : Cell := { cellDefaults with
  domain := ⟨(3429 / 16000 : ℚ), (343 / 1600 : ℚ)⟩
  r := (87001060788441 / 100000000000000 : ℚ)
  w := (2559501718793 / 2500000000000 : ℚ)
  center := (6859 / 32000 : ℚ)
  supportValue := (509500324583057 / 625000000000000 : ℚ)
  supportSlope := (1136561692859317 / 200000000000000 : ℚ)
  oldCenter := (509500324583057 / 625000000000000 : ℚ)
  newCoefficients := coefficients_565
  oldLo := (40750000000000003 / 50000000000000000 : ℚ)
  oldHi := (1631 / 2000 : ℚ)
  oldPieces := [piece_1876]
}

def cell_6585 : Cell := { cellDefaults with
  domain := ⟨(343 / 1600 : ℚ), (3431 / 16000 : ℚ)⟩
  r := (87001060788441 / 100000000000000 : ℚ)
  w := (2559501718793 / 2500000000000 : ℚ)
  center := (6861 / 32000 : ℚ)
  supportValue := (25486117431501 / 31250000000000 : ℚ)
  supportSlope := (5684356025293269 / 1000000000000000 : ℚ)
  oldCenter := (25486117431501 / 31250000000000 : ℚ)
  newCoefficients := coefficients_565
  oldLo := (40750000000000003 / 50000000000000000 : ℚ)
  oldHi := (40800000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1876, piece_1877]
}

def cell_6586 : Cell := { cellDefaults with
  domain := ⟨(3431 / 16000 : ℚ), (429 / 2000 : ℚ)⟩
  r := (87001060788441 / 100000000000000 : ℚ)
  w := (2559501718793 / 2500000000000 : ℚ)
  center := (6863 / 32000 : ℚ)
  supportValue := (4079555385519523 / 5000000000000000 : ℚ)
  supportSlope := (2842995889820621 / 500000000000000 : ℚ)
  oldCenter := (4079555385519523 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_565
  oldLo := (1631 / 2000 : ℚ)
  oldHi := (1633 / 2000 : ℚ)
  oldPieces := [piece_1877, piece_1878]
}

def cell_6587 : Cell := { cellDefaults with
  domain := ⟨(429 / 2000 : ℚ), (3433 / 16000 : ℚ)⟩
  center := (1373 / 6400 : ℚ)
  supportValue := (7966379425077 / 9765625000000 : ℚ)
  supportSlope := (177574537210623 / 31250000000000 : ℚ)
  oldCenter := (7966379425077 / 9765625000000 : ℚ)
  newCoefficients := coefficients_566
  oldLo := (1631 / 2000 : ℚ)
  oldHi := (40800000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1877]
}

def cell_6588 : Cell := { cellDefaults with
  domain := ⟨(3433 / 16000 : ℚ), (1717 / 8000 : ℚ)⟩
  center := (6867 / 32000 : ℚ)
  supportValue := (2040281128510129 / 2500000000000000 : ℚ)
  supportSlope := (1136742450249173 / 200000000000000 : ℚ)
  oldCenter := (2040281128510129 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_566
  oldLo := (1631 / 2000 : ℚ)
  oldHi := (1633 / 2000 : ℚ)
  oldPieces := [piece_1877, piece_1878]
}

def cell_6589 : Cell := { cellDefaults with
  domain := ⟨(1717 / 8000 : ℚ), (2146368715083799 / 10000000000000000 : ℚ)⟩
  center := (4292618715083799 / 20000000000000000 : ℚ)
  supportValue := (8163239854669831 / 10000000000000000 : ℚ)
  supportSlope := (5684916553367603 / 1000000000000000 : ℚ)
  oldCenter := (8163239854669831 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_566
  oldLo := (40800000000000003 / 50000000000000000 : ℚ)
  oldHi := (1633 / 2000 : ℚ)
  oldPieces := [piece_1878]
}

def cell_6590 : Cell := { cellDefaults with
  domain := ⟨(2146368715083799 / 10000000000000000 : ℚ), (4293868715083799 / 20000000000000000 : ℚ)⟩
  center := (8586606145251397 / 40000000000000000 : ℚ)
  supportValue := (1633036732736657 / 2000000000000000 : ℚ)
  supportSlope := (1137098603607257 / 200000000000000 : ℚ)
  oldCenter := (1633036732736657 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_567
  oldLo := (40800000000000003 / 50000000000000000 : ℚ)
  oldHi := (40850000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1878, piece_1879]
}

def cell_6591 : Cell := { cellDefaults with
  domain := ⟨(4293868715083799 / 20000000000000000 : ℚ), (859 / 4000 : ℚ)⟩
  center := (8588868715083799 / 40000000000000000 : ℚ)
  supportValue := (2042099975623367 / 2500000000000000 : ℚ)
  supportSlope := (5687095426595181 / 1000000000000000 : ℚ)
  oldCenter := (2042099975623367 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_567
  oldLo := (1633 / 2000 : ℚ)
  oldHi := (8174860335195531 / 10000000000000000 : ℚ)
  oldPieces := [piece_1879, piece_1880]
}

def cell_6592 : Cell := { cellDefaults with
  domain := ⟨(859 / 4000 : ℚ), (3437 / 16000 : ℚ)⟩
  center := (6873 / 32000 : ℚ)
  supportValue := (2042946454145809 / 2500000000000000 : ℚ)
  supportSlope := (5688062119077131 / 1000000000000000 : ℚ)
  oldCenter := (2042946454145809 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_567
  oldLo := (40850000000000003 / 50000000000000000 : ℚ)
  oldHi := (8174860335195531 / 10000000000000000 : ℚ)
  oldPieces := [piece_1880]
}

def cell_6593 : Cell := { cellDefaults with
  domain := ⟨(3437 / 16000 : ℚ), (1719 / 8000 : ℚ)⟩
  center := (55 / 256 : ℚ)
  supportValue := (8175341533490741 / 10000000000000000 : ℚ)
  supportSlope := (2844839298865587 / 500000000000000 : ℚ)
  oldCenter := (8175341533490741 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_567
  oldLo := (40850000000000003 / 50000000000000000 : ℚ)
  oldHi := (40900000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1880, piece_1881, piece_1882]
}

def cell_6594 : Cell := { cellDefaults with
  domain := ⟨(1719 / 8000 : ℚ), (3439 / 16000 : ℚ)⟩
  center := (6877 / 32000 : ℚ)
  supportValue := (4089448998139107 / 5000000000000000 : ℚ)
  supportSlope := (11382605660404721 / 2000000000000000 : ℚ)
  oldCenter := (4089448998139107 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_567
  oldLo := (327 / 400 : ℚ)
  oldHi := (81850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1882, piece_1883]
}

def cell_6595 : Cell := { cellDefaults with
  domain := ⟨(3439 / 16000 : ℚ), (43 / 200 : ℚ)⟩
  center := (6879 / 32000 : ℚ)
  supportValue := (8182455396887769 / 10000000000000000 : ℚ)
  supportSlope := (1138528334718103 / 200000000000000 : ℚ)
  oldCenter := (8182455396887769 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_567
  oldLo := (40900000000000003 / 50000000000000000 : ℚ)
  oldHi := (81850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1883]
}

def cell_6596 : Cell := { cellDefaults with
  domain := ⟨(43 / 200 : ℚ), (3441 / 16000 : ℚ)⟩
  r := (21711636856037 / 25000000000000 : ℚ)
  w := (5121780382437 / 5000000000000 : ℚ)
  center := (6881 / 32000 : ℚ)
  supportValue := (8180908103466553 / 10000000000000000 : ℚ)
  supportSlope := (5689022052676407 / 1000000000000000 : ℚ)
  oldCenter := (8180908103466553 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_568
  oldLo := (327 / 400 : ℚ)
  oldHi := (81850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1882, piece_1883]
}

def cell_6597 : Cell := { cellDefaults with
  domain := ⟨(3441 / 16000 : ℚ), (1721 / 8000 : ℚ)⟩
  r := (21711636856037 / 25000000000000 : ℚ)
  w := (5121780382437 / 5000000000000 : ℚ)
  center := (6883 / 32000 : ℚ)
  supportValue := (511529018462107 / 625000000000000 : ℚ)
  supportSlope := (11381304437755091 / 2000000000000000 : ℚ)
  oldCenter := (511529018462107 / 625000000000000 : ℚ)
  newCoefficients := coefficients_568
  oldLo := (40900000000000003 / 50000000000000000 : ℚ)
  oldHi := (40950000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1883, piece_1884]
}

def cell_6598 : Cell := { cellDefaults with
  domain := ⟨(1721 / 8000 : ℚ), (3443 / 16000 : ℚ)⟩
  r := (21711636856037 / 25000000000000 : ℚ)
  w := (5121780382437 / 5000000000000 : ℚ)
  center := (1377 / 6400 : ℚ)
  supportValue := (8188021289003917 / 10000000000000000 : ℚ)
  supportSlope := (1138441114339983 / 200000000000000 : ℚ)
  oldCenter := (8188021289003917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_568
  oldLo := (81850000000000001 / 100000000000000000 : ℚ)
  oldHi := (40950000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1884]
}

def cell_6599 : Cell := { cellDefaults with
  domain := ⟨(3443 / 16000 : ℚ), (861 / 4000 : ℚ)⟩
  r := (21711636856037 / 25000000000000 : ℚ)
  w := (5121780382437 / 5000000000000 : ℚ)
  center := (6887 / 32000 : ℚ)
  supportValue := (1638315860204109 / 2000000000000000 : ℚ)
  supportSlope := (5693360478598919 / 1000000000000000 : ℚ)
  oldCenter := (1638315860204109 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_568
  oldLo := (81850000000000001 / 100000000000000000 : ℚ)
  oldHi := (81950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1884, piece_1885]
}

theorem check_6550 : SourceCertificateFamily.RightNormalized.check cell_6550 = true := by
  decide +kernel

theorem check_6551 : SourceCertificateFamily.RightNormalized.check cell_6551 = true := by
  decide +kernel

theorem check_6552 : SourceCertificateFamily.RightNormalized.check cell_6552 = true := by
  decide +kernel

theorem check_6553 : SourceCertificateFamily.RightNormalized.check cell_6553 = true := by
  decide +kernel

theorem check_6554 : SourceCertificateFamily.RightNormalized.check cell_6554 = true := by
  decide +kernel

theorem check_6555 : SourceCertificateFamily.RightNormalized.check cell_6555 = true := by
  decide +kernel

theorem check_6556 : SourceCertificateFamily.RightNormalized.check cell_6556 = true := by
  decide +kernel

theorem check_6557 : SourceCertificateFamily.RightNormalized.check cell_6557 = true := by
  decide +kernel

theorem check_6558 : SourceCertificateFamily.RightNormalized.check cell_6558 = true := by
  decide +kernel

theorem check_6559 : SourceCertificateFamily.RightNormalized.check cell_6559 = true := by
  decide +kernel

theorem check_6560 : SourceCertificateFamily.RightNormalized.check cell_6560 = true := by
  decide +kernel

theorem check_6561 : SourceCertificateFamily.RightNormalized.check cell_6561 = true := by
  decide +kernel

theorem check_6562 : SourceCertificateFamily.RightNormalized.check cell_6562 = true := by
  decide +kernel

theorem check_6563 : SourceCertificateFamily.RightNormalized.check cell_6563 = true := by
  decide +kernel

theorem check_6564 : SourceCertificateFamily.RightNormalized.check cell_6564 = true := by
  decide +kernel

theorem check_6565 : SourceCertificateFamily.RightNormalized.check cell_6565 = true := by
  decide +kernel

theorem check_6566 : SourceCertificateFamily.RightNormalized.check cell_6566 = true := by
  decide +kernel

theorem check_6567 : SourceCertificateFamily.RightNormalized.check cell_6567 = true := by
  decide +kernel

theorem check_6568 : SourceCertificateFamily.RightNormalized.check cell_6568 = true := by
  decide +kernel

theorem check_6569 : SourceCertificateFamily.RightNormalized.check cell_6569 = true := by
  decide +kernel

theorem check_6570 : SourceCertificateFamily.RightNormalized.check cell_6570 = true := by
  decide +kernel

theorem check_6571 : SourceCertificateFamily.RightNormalized.check cell_6571 = true := by
  decide +kernel

theorem check_6572 : SourceCertificateFamily.RightNormalized.check cell_6572 = true := by
  decide +kernel

theorem check_6573 : SourceCertificateFamily.RightNormalized.check cell_6573 = true := by
  decide +kernel

theorem check_6574 : SourceCertificateFamily.RightNormalized.check cell_6574 = true := by
  decide +kernel

theorem check_6575 : SourceCertificateFamily.RightNormalized.check cell_6575 = true := by
  decide +kernel

theorem check_6576 : SourceCertificateFamily.RightNormalized.check cell_6576 = true := by
  decide +kernel

theorem check_6577 : SourceCertificateFamily.RightNormalized.check cell_6577 = true := by
  decide +kernel

theorem check_6578 : SourceCertificateFamily.RightNormalized.check cell_6578 = true := by
  decide +kernel

theorem check_6579 : SourceCertificateFamily.RightNormalized.check cell_6579 = true := by
  decide +kernel

theorem check_6580 : SourceCertificateFamily.RightNormalized.check cell_6580 = true := by
  decide +kernel

theorem check_6581 : SourceCertificateFamily.RightNormalized.check cell_6581 = true := by
  decide +kernel

theorem check_6582 : SourceCertificateFamily.RightNormalized.check cell_6582 = true := by
  decide +kernel

theorem check_6583 : SourceCertificateFamily.RightNormalized.check cell_6583 = true := by
  decide +kernel

theorem check_6584 : SourceCertificateFamily.RightNormalized.check cell_6584 = true := by
  decide +kernel

theorem check_6585 : SourceCertificateFamily.RightNormalized.check cell_6585 = true := by
  decide +kernel

theorem check_6586 : SourceCertificateFamily.RightNormalized.check cell_6586 = true := by
  decide +kernel

theorem check_6587 : SourceCertificateFamily.RightNormalized.check cell_6587 = true := by
  decide +kernel

theorem check_6588 : SourceCertificateFamily.RightNormalized.check cell_6588 = true := by
  decide +kernel

theorem check_6589 : SourceCertificateFamily.RightNormalized.check cell_6589 = true := by
  decide +kernel

theorem check_6590 : SourceCertificateFamily.RightNormalized.check cell_6590 = true := by
  decide +kernel

theorem check_6591 : SourceCertificateFamily.RightNormalized.check cell_6591 = true := by
  decide +kernel

theorem check_6592 : SourceCertificateFamily.RightNormalized.check cell_6592 = true := by
  decide +kernel

theorem check_6593 : SourceCertificateFamily.RightNormalized.check cell_6593 = true := by
  decide +kernel

theorem check_6594 : SourceCertificateFamily.RightNormalized.check cell_6594 = true := by
  decide +kernel

theorem check_6595 : SourceCertificateFamily.RightNormalized.check cell_6595 = true := by
  decide +kernel

theorem check_6596 : SourceCertificateFamily.RightNormalized.check cell_6596 = true := by
  decide +kernel

theorem check_6597 : SourceCertificateFamily.RightNormalized.check cell_6597 = true := by
  decide +kernel

theorem check_6598 : SourceCertificateFamily.RightNormalized.check cell_6598 = true := by
  decide +kernel

theorem check_6599 : SourceCertificateFamily.RightNormalized.check cell_6599 = true := by
  decide +kernel

def cells : List Cell := [cell_6550, cell_6551, cell_6552, cell_6553, cell_6554, cell_6555, cell_6556, cell_6557, cell_6558, cell_6559, cell_6560, cell_6561, cell_6562, cell_6563, cell_6564, cell_6565, cell_6566, cell_6567, cell_6568, cell_6569, cell_6570, cell_6571, cell_6572, cell_6573, cell_6574, cell_6575, cell_6576, cell_6577, cell_6578, cell_6579, cell_6580, cell_6581, cell_6582, cell_6583, cell_6584, cell_6585, cell_6586, cell_6587, cell_6588, cell_6589, cell_6590, cell_6591, cell_6592, cell_6593, cell_6594, cell_6595, cell_6596, cell_6597, cell_6598, cell_6599]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6550, SourceCertificateFamily.of_right_checked check_6551, SourceCertificateFamily.of_right_checked check_6552, SourceCertificateFamily.of_right_checked check_6553, SourceCertificateFamily.of_right_checked check_6554, SourceCertificateFamily.of_right_checked check_6555, SourceCertificateFamily.of_right_checked check_6556, SourceCertificateFamily.of_right_checked check_6557, SourceCertificateFamily.of_right_checked check_6558, SourceCertificateFamily.of_right_checked check_6559, SourceCertificateFamily.of_right_checked check_6560, SourceCertificateFamily.of_right_checked check_6561, SourceCertificateFamily.of_right_checked check_6562, SourceCertificateFamily.of_right_checked check_6563, SourceCertificateFamily.of_right_checked check_6564, SourceCertificateFamily.of_right_checked check_6565, SourceCertificateFamily.of_right_checked check_6566, SourceCertificateFamily.of_right_checked check_6567, SourceCertificateFamily.of_right_checked check_6568, SourceCertificateFamily.of_right_checked check_6569, SourceCertificateFamily.of_right_checked check_6570, SourceCertificateFamily.of_right_checked check_6571, SourceCertificateFamily.of_right_checked check_6572, SourceCertificateFamily.of_right_checked check_6573, SourceCertificateFamily.of_right_checked check_6574, SourceCertificateFamily.of_right_checked check_6575, SourceCertificateFamily.of_right_checked check_6576, SourceCertificateFamily.of_right_checked check_6577, SourceCertificateFamily.of_right_checked check_6578, SourceCertificateFamily.of_right_checked check_6579, SourceCertificateFamily.of_right_checked check_6580, SourceCertificateFamily.of_right_checked check_6581, SourceCertificateFamily.of_right_checked check_6582, SourceCertificateFamily.of_right_checked check_6583, SourceCertificateFamily.of_right_checked check_6584, SourceCertificateFamily.of_right_checked check_6585, SourceCertificateFamily.of_right_checked check_6586, SourceCertificateFamily.of_right_checked check_6587, SourceCertificateFamily.of_right_checked check_6588, SourceCertificateFamily.of_right_checked check_6589, SourceCertificateFamily.of_right_checked check_6590, SourceCertificateFamily.of_right_checked check_6591, SourceCertificateFamily.of_right_checked check_6592, SourceCertificateFamily.of_right_checked check_6593, SourceCertificateFamily.of_right_checked check_6594, SourceCertificateFamily.of_right_checked check_6595, SourceCertificateFamily.of_right_checked check_6596, SourceCertificateFamily.of_right_checked check_6597, SourceCertificateFamily.of_right_checked check_6598, SourceCertificateFamily.of_right_checked check_6599, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0131

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0131
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0131
open AnalyticBounds.ExpressionCertificate

theorem linked_6550 : Linked cell_6550 pieces := by
  refine ⟨piece_561,piece_561_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6550,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1854_mem

theorem linked_6551 : Linked cell_6551 pieces := by
  refine ⟨piece_561,piece_561_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6551,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1854_mem
    · exact piece_1855_mem

theorem linked_6552 : Linked cell_6552 pieces := by
  refine ⟨piece_561,piece_561_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6552,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1855_mem
    · exact piece_1856_mem

theorem linked_6553 : Linked cell_6553 pieces := by
  refine ⟨piece_561,piece_561_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6553,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1856_mem

theorem linked_6554 : Linked cell_6554 pieces := by
  refine ⟨piece_561,piece_561_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6554,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1856_mem
    · exact piece_1857_mem
    · exact piece_1858_mem

theorem linked_6555 : Linked cell_6555 pieces := by
  refine ⟨piece_562,piece_562_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6555,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1856_mem
    · exact piece_1857_mem
    · exact piece_1858_mem

theorem linked_6556 : Linked cell_6556 pieces := by
  refine ⟨piece_562,piece_562_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6556,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1858_mem

theorem linked_6557 : Linked cell_6557 pieces := by
  refine ⟨piece_562,piece_562_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6557,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1858_mem
    · exact piece_1859_mem

theorem linked_6558 : Linked cell_6558 pieces := by
  refine ⟨piece_562,piece_562_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6558,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1859_mem
    · exact piece_1860_mem

theorem linked_6559 : Linked cell_6559 pieces := by
  refine ⟨piece_562,piece_562_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6559,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1860_mem
    · exact piece_1861_mem

theorem linked_6560 : Linked cell_6560 pieces := by
  refine ⟨piece_562,piece_562_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6560,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1861_mem

theorem linked_6561 : Linked cell_6561 pieces := by
  refine ⟨piece_562,piece_562_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6561,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1861_mem
    · exact piece_1862_mem

theorem linked_6562 : Linked cell_6562 pieces := by
  refine ⟨piece_562,piece_562_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6562,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1862_mem
    · exact piece_1863_mem

theorem linked_6563 : Linked cell_6563 pieces := by
  refine ⟨piece_563,piece_563_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6563,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1862_mem

theorem linked_6564 : Linked cell_6564 pieces := by
  refine ⟨piece_563,piece_563_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6564,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1862_mem
    · exact piece_1863_mem

theorem linked_6565 : Linked cell_6565 pieces := by
  refine ⟨piece_563,piece_563_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6565,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1863_mem
    · exact piece_1864_mem

theorem linked_6566 : Linked cell_6566 pieces := by
  refine ⟨piece_563,piece_563_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6566,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1864_mem
    · exact piece_1865_mem

theorem linked_6567 : Linked cell_6567 pieces := by
  refine ⟨piece_563,piece_563_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6567,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1865_mem

theorem linked_6568 : Linked cell_6568 pieces := by
  refine ⟨piece_563,piece_563_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6568,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1865_mem
    · exact piece_1866_mem

theorem linked_6569 : Linked cell_6569 pieces := by
  refine ⟨piece_563,piece_563_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6569,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1866_mem
    · exact piece_1867_mem

theorem linked_6570 : Linked cell_6570 pieces := by
  refine ⟨piece_563,piece_563_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6570,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1867_mem

theorem linked_6571 : Linked cell_6571 pieces := by
  refine ⟨piece_564,piece_564_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6571,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1866_mem
    · exact piece_1867_mem

theorem linked_6572 : Linked cell_6572 pieces := by
  refine ⟨piece_564,piece_564_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6572,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1867_mem
    · exact piece_1868_mem

theorem linked_6573 : Linked cell_6573 pieces := by
  refine ⟨piece_564,piece_564_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6573,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1868_mem
    · exact piece_1869_mem

theorem linked_6574 : Linked cell_6574 pieces := by
  refine ⟨piece_564,piece_564_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6574,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1869_mem
    · exact piece_1870_mem

theorem linked_6575 : Linked cell_6575 pieces := by
  refine ⟨piece_564,piece_564_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6575,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1870_mem
    · exact piece_1871_mem

theorem linked_6576 : Linked cell_6576 pieces := by
  refine ⟨piece_564,piece_564_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6576,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1871_mem
    · exact piece_1872_mem

theorem linked_6577 : Linked cell_6577 pieces := by
  refine ⟨piece_564,piece_564_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6577,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1872_mem

theorem linked_6578 : Linked cell_6578 pieces := by
  refine ⟨piece_564,piece_564_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6578,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1872_mem
    · exact piece_1873_mem

theorem linked_6579 : Linked cell_6579 pieces := by
  refine ⟨piece_565,piece_565_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6579,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1872_mem
    · exact piece_1873_mem

theorem linked_6580 : Linked cell_6580 pieces := by
  refine ⟨piece_565,piece_565_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6580,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1873_mem

theorem linked_6581 : Linked cell_6581 pieces := by
  refine ⟨piece_565,piece_565_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6581,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1873_mem
    · exact piece_1874_mem

theorem linked_6582 : Linked cell_6582 pieces := by
  refine ⟨piece_565,piece_565_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6582,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1874_mem
    · exact piece_1875_mem

theorem linked_6583 : Linked cell_6583 pieces := by
  refine ⟨piece_565,piece_565_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6583,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1875_mem
    · exact piece_1876_mem

theorem linked_6584 : Linked cell_6584 pieces := by
  refine ⟨piece_565,piece_565_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6584,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1876_mem

theorem linked_6585 : Linked cell_6585 pieces := by
  refine ⟨piece_565,piece_565_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6585,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1876_mem
    · exact piece_1877_mem

theorem linked_6586 : Linked cell_6586 pieces := by
  refine ⟨piece_565,piece_565_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6586,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1877_mem
    · exact piece_1878_mem

theorem linked_6587 : Linked cell_6587 pieces := by
  refine ⟨piece_566,piece_566_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6587,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1877_mem

theorem linked_6588 : Linked cell_6588 pieces := by
  refine ⟨piece_566,piece_566_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6588,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1877_mem
    · exact piece_1878_mem

theorem linked_6589 : Linked cell_6589 pieces := by
  refine ⟨piece_566,piece_566_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6589,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1878_mem

theorem linked_6590 : Linked cell_6590 pieces := by
  refine ⟨piece_567,piece_567_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6590,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1878_mem
    · exact piece_1879_mem

theorem linked_6591 : Linked cell_6591 pieces := by
  refine ⟨piece_567,piece_567_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6591,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1879_mem
    · exact piece_1880_mem

theorem linked_6592 : Linked cell_6592 pieces := by
  refine ⟨piece_567,piece_567_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6592,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1880_mem

theorem linked_6593 : Linked cell_6593 pieces := by
  refine ⟨piece_567,piece_567_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6593,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1880_mem
    · exact piece_1881_mem
    · exact piece_1882_mem

theorem linked_6594 : Linked cell_6594 pieces := by
  refine ⟨piece_567,piece_567_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6594,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1882_mem
    · exact piece_1883_mem

theorem linked_6595 : Linked cell_6595 pieces := by
  refine ⟨piece_567,piece_567_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6595,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1883_mem

theorem linked_6596 : Linked cell_6596 pieces := by
  refine ⟨piece_568,piece_568_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6596,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1882_mem
    · exact piece_1883_mem

theorem linked_6597 : Linked cell_6597 pieces := by
  refine ⟨piece_568,piece_568_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6597,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1883_mem
    · exact piece_1884_mem

theorem linked_6598 : Linked cell_6598 pieces := by
  refine ⟨piece_568,piece_568_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6598,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1884_mem

theorem linked_6599 : Linked cell_6599 pieces := by
  refine ⟨piece_568,piece_568_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6599,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1884_mem
    · exact piece_1885_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0131.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0131.cells,List.forall_mem_cons]
  exact ⟨linked_6550, linked_6551, linked_6552, linked_6553, linked_6554, linked_6555, linked_6556, linked_6557, linked_6558, linked_6559, linked_6560, linked_6561, linked_6562, linked_6563, linked_6564, linked_6565, linked_6566, linked_6567, linked_6568, linked_6569, linked_6570, linked_6571, linked_6572, linked_6573, linked_6574, linked_6575, linked_6576, linked_6577, linked_6578, linked_6579, linked_6580, linked_6581, linked_6582, linked_6583, linked_6584, linked_6585, linked_6586, linked_6587, linked_6588, linked_6589, linked_6590, linked_6591, linked_6592, linked_6593, linked_6594, linked_6595, linked_6596, linked_6597, linked_6598, linked_6599, by simp⟩

theorem covered : covers (21218749999999999 / 100000000000000000 : ℚ) (861 / 4000 : ℚ)
    (SourceCertificates.Chunk0131.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0131
