import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0137
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(11540624999999999 / 50000000000000000 : ℚ), (11543749999999999 / 50000000000000000 : ℚ)⟩
  branch := .right
  r := (16892705994171 / 20000000000000 : ℚ)
  w := (10332244061459 / 10000000000000 : ℚ)
  center := (11542187499999999 / 50000000000000000 : ℚ)
  supportValue := (357317727560073 / 400000000000000 : ℚ)
  supportSlope := (5897790770420741 / 1000000000000000 : ℚ)
  oldCenter := (357317727560073 / 400000000000000 : ℚ)
  newCoefficients := coefficients_604
  oldLo := (44800000000000001 / 50000000000000000 : ℚ)
  oldHi := (89450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2047, piece_2048]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6850 : Cell := { cellDefaults with
  r := (84535526878711 / 100000000000000 : ℚ)
  w := (1291181622093 / 1250000000000 : ℚ)
  newCoefficients := coefficients_601
  oldLo := (44650000000000001 / 50000000000000000 : ℚ)
  oldHi := (89350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2046]
}

def cell_6851 : Cell := { cellDefaults with
  domain := ⟨(11543749999999999 / 50000000000000000 : ℚ), (11546874999999999 / 50000000000000000 : ℚ)⟩
  r := (84535526878711 / 100000000000000 : ℚ)
  w := (1291181622093 / 1250000000000 : ℚ)
  center := (11545312499999999 / 50000000000000000 : ℚ)
  supportValue := (4468314849757639 / 5000000000000000 : ℚ)
  supportSlope := (11797975063917221 / 2000000000000000 : ℚ)
  oldCenter := (4468314849757639 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_601
  oldLo := (44650000000000001 / 50000000000000000 : ℚ)
  oldHi := (44700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2046, piece_2047]
}

def cell_6852 : Cell := { cellDefaults with
  domain := ⟨(11546874999999999 / 50000000000000000 : ℚ), (11549999999999999 / 50000000000000000 : ℚ)⟩
  r := (84535526878711 / 100000000000000 : ℚ)
  w := (1291181622093 / 1250000000000 : ℚ)
  center := (11548437499999999 / 50000000000000000 : ℚ)
  supportValue := (4470158574025997 / 5000000000000000 : ℚ)
  supportSlope := (368780567049809 / 62500000000000 : ℚ)
  oldCenter := (4470158574025997 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_601
  oldLo := (89350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2047, piece_2048]
}

def cell_6853 : Cell := { cellDefaults with
  domain := ⟨(11549999999999999 / 50000000000000000 : ℚ), (46211452513966477 / 200000000000000000 : ℚ)⟩
  center := (92411452513966473 / 400000000000000000 : ℚ)
  supportValue := (4469184342913291 / 5000000000000000 : ℚ)
  supportSlope := (2948509914379759 / 500000000000000 : ℚ)
  oldCenter := (4469184342913291 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_602
  oldLo := (89350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2047, piece_2048]
}

def cell_6854 : Cell := { cellDefaults with
  domain := ⟨(46211452513966477 / 200000000000000000 : ℚ), (23111452513966479 / 100000000000000000 : ℚ)⟩
  center := (18486871508379887 / 80000000000000000 : ℚ)
  supportValue := (8941745744111249 / 10000000000000000 : ℚ)
  supportSlope := (5897994980277199 / 1000000000000000 : ℚ)
  oldCenter := (8941745744111249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_602
  oldLo := (44700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2048]
}

def cell_6855 : Cell := { cellDefaults with
  domain := ⟨(23111452513966479 / 100000000000000000 : ℚ), (46234357541899439 / 200000000000000000 : ℚ)⟩
  center := (92457262569832397 / 400000000000000000 : ℚ)
  supportValue := (4472561814904641 / 5000000000000000 : ℚ)
  supportSlope := (11798845594920877 / 2000000000000000 : ℚ)
  oldCenter := (4472561814904641 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_602
  oldLo := (44700000000000001 / 50000000000000000 : ℚ)
  oldHi := (139830656424581 / 156250000000000 : ℚ)
  oldPieces := [piece_2048, piece_2049]
}

def cell_6856 : Cell := { cellDefaults with
  domain := ⟨(46234357541899439 / 200000000000000000 : ℚ), (144518156424581 / 625000000000000 : ℚ)⟩
  center := (92480167597765359 / 400000000000000000 : ℚ)
  supportValue := (8948502085682533 / 10000000000000000 : ℚ)
  supportSlope := (5900867003237217 / 1000000000000000 : ℚ)
  oldCenter := (8948502085682533 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_602
  oldLo := (89450000000000007 / 100000000000000000 : ℚ)
  oldHi := (89550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2049, piece_2050, piece_2051]
}

def cell_6857 : Cell := { cellDefaults with
  domain := ⟨(144518156424581 / 625000000000000 : ℚ), (11562499999999999 / 50000000000000000 : ℚ)⟩
  center := (23123952513966479 / 100000000000000000 : ℚ)
  supportValue := (1118851452942637 / 1250000000000000 : ℚ)
  supportSlope := (1475314939988413 / 250000000000000 : ℚ)
  oldCenter := (1118851452942637 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_603
  oldLo := (44750000000000001 / 50000000000000000 : ℚ)
  oldHi := (89550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2051]
}

def cell_6858 : Cell := { cellDefaults with
  domain := ⟨(11562499999999999 / 50000000000000000 : ℚ), (11565624999999999 / 50000000000000000 : ℚ)⟩
  center := (11564062499999999 / 50000000000000000 : ℚ)
  supportValue := (8953272424480163 / 10000000000000000 : ℚ)
  supportSlope := (2951331272216251 / 500000000000000 : ℚ)
  oldCenter := (8953272424480163 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_603
  oldLo := (44750000000000001 / 50000000000000000 : ℚ)
  oldHi := (44800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2051, piece_2052]
}

def cell_6859 : Cell := { cellDefaults with
  domain := ⟨(11565624999999999 / 50000000000000000 : ℚ), (11568749999999999 / 50000000000000000 : ℚ)⟩
  center := (11567187499999999 / 50000000000000000 : ℚ)
  supportValue := (358278477747593 / 400000000000000 : ℚ)
  supportSlope := (295191735819067 / 50000000000000 : ℚ)
  oldCenter := (358278477747593 / 400000000000000 : ℚ)
  newCoefficients := coefficients_603
  oldLo := (89550000000000007 / 100000000000000000 : ℚ)
  oldHi := (44800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2052]
}

def cell_6860 : Cell := { cellDefaults with
  domain := ⟨(11568749999999999 / 50000000000000000 : ℚ), (11571874999999999 / 50000000000000000 : ℚ)⟩
  center := (11570312499999999 / 50000000000000000 : ℚ)
  supportValue := (35842609596089 / 40000000000000 : ℚ)
  supportSlope := (2952650192125539 / 500000000000000 : ℚ)
  oldCenter := (35842609596089 / 40000000000000 : ℚ)
  newCoefficients := coefficients_603
  oldLo := (89550000000000007 / 100000000000000000 : ℚ)
  oldHi := (89650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2052, piece_2053]
}

def cell_6861 : Cell := { cellDefaults with
  domain := ⟨(11571874999999999 / 50000000000000000 : ℚ), (11574999999999999 / 50000000000000000 : ℚ)⟩
  center := (11573437499999999 / 50000000000000000 : ℚ)
  supportValue := (8964343678499237 / 10000000000000000 : ℚ)
  supportSlope := (5906797772558647 / 1000000000000000 : ℚ)
  oldCenter := (8964343678499237 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_603
  oldHi := (44850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2053, piece_2054]
}

def cell_6862 : Cell := { cellDefaults with
  domain := ⟨(11574999999999999 / 50000000000000000 : ℚ), (11578124999999999 / 50000000000000000 : ℚ)⟩
  r := (42195844213111 / 50000000000000 : ℚ)
  w := (10335038783471 / 10000000000000 : ℚ)
  center := (11576562499999999 / 50000000000000000 : ℚ)
  supportValue := (8962544054618963 / 10000000000000000 : ℚ)
  supportSlope := (5903167525993069 / 1000000000000000 : ℚ)
  oldCenter := (8962544054618963 / 10000000000000000 : ℚ)
  oldHi := (89650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2053]
}

def cell_6863 : Cell := { cellDefaults with
  domain := ⟨(11578124999999999 / 50000000000000000 : ℚ), (11581249999999999 / 50000000000000000 : ℚ)⟩
  r := (42195844213111 / 50000000000000 : ℚ)
  w := (10335038783471 / 10000000000000 : ℚ)
  center := (11579687499999999 / 50000000000000000 : ℚ)
  supportValue := (4483116996562811 / 5000000000000000 : ℚ)
  supportSlope := (5904472929985971 / 1000000000000000 : ℚ)
  oldCenter := (4483116996562811 / 5000000000000000 : ℚ)
  oldHi := (44850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2053, piece_2054]
}

def cell_6864 : Cell := { cellDefaults with
  domain := ⟨(11581249999999999 / 50000000000000000 : ℚ), (11584374999999999 / 50000000000000000 : ℚ)⟩
  r := (42195844213111 / 50000000000000 : ℚ)
  w := (10335038783471 / 10000000000000 : ℚ)
  center := (11582812499999999 / 50000000000000000 : ℚ)
  supportValue := (8969924854018999 / 10000000000000000 : ℚ)
  supportSlope := (5905969142565581 / 1000000000000000 : ℚ)
  oldCenter := (8969924854018999 / 10000000000000000 : ℚ)
  oldLo := (89650000000000007 / 100000000000000000 : ℚ)
  oldHi := (11218750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2054, piece_2055]
}

def cell_6865 : Cell := { cellDefaults with
  domain := ⟨(11584374999999999 / 50000000000000000 : ℚ), (11587499999999999 / 50000000000000000 : ℚ)⟩
  r := (42195844213111 / 50000000000000 : ℚ)
  w := (10335038783471 / 10000000000000 : ℚ)
  center := (11585937499999999 / 50000000000000000 : ℚ)
  supportValue := (4486808219832853 / 5000000000000000 : ℚ)
  supportSlope := (2953732120954733 / 500000000000000 : ℚ)
  oldCenter := (4486808219832853 / 5000000000000000 : ℚ)
  oldLo := (44850000000000001 / 50000000000000000 : ℚ)
  oldHi := (44900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2055, piece_2056]
}

def cell_6866 : Cell := { cellDefaults with
  domain := ⟨(11587499999999999 / 50000000000000000 : ℚ), (11590624999999999 / 50000000000000000 : ℚ)⟩
  r := (42195844213111 / 50000000000000 : ℚ)
  w := (10335038783471 / 10000000000000 : ℚ)
  center := (11589062499999999 / 50000000000000000 : ℚ)
  supportValue := (8977308960183857 / 10000000000000000 : ℚ)
  supportSlope := (2954365317546781 / 500000000000000 : ℚ)
  oldCenter := (8977308960183857 / 10000000000000000 : ℚ)
  oldLo := (11218750000000001 / 12500000000000000 : ℚ)
  oldHi := (44900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2056]
}

def cell_6867 : Cell := { cellDefaults with
  domain := ⟨(11590624999999999 / 50000000000000000 : ℚ), (11593749999999999 / 50000000000000000 : ℚ)⟩
  r := (42195844213111 / 50000000000000 : ℚ)
  w := (10335038783471 / 10000000000000 : ℚ)
  center := (11592187499999999 / 50000000000000000 : ℚ)
  supportValue := (4490501207432387 / 5000000000000000 : ℚ)
  supportSlope := (5910099748552611 / 1000000000000000 : ℚ)
  oldCenter := (4490501207432387 / 5000000000000000 : ℚ)
  oldLo := (11218750000000001 / 12500000000000000 : ℚ)
  oldHi := (11231250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2056, piece_2057]
}

def cell_6868 : Cell := { cellDefaults with
  domain := ⟨(11593749999999999 / 50000000000000000 : ℚ), (11596874999999999 / 50000000000000000 : ℚ)⟩
  r := (42195844213111 / 50000000000000 : ℚ)
  w := (10335038783471 / 10000000000000 : ℚ)
  center := (11595312499999999 / 50000000000000000 : ℚ)
  supportValue := (8984696752435241 / 10000000000000000 : ℚ)
  supportSlope := (5911594230219919 / 1000000000000000 : ℚ)
  oldCenter := (8984696752435241 / 10000000000000000 : ℚ)
  oldLo := (44900000000000001 / 50000000000000000 : ℚ)
  oldHi := (44950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2057, piece_2058]
}

def cell_6869 : Cell := { cellDefaults with
  domain := ⟨(11596874999999999 / 50000000000000000 : ℚ), (11599999999999999 / 50000000000000000 : ℚ)⟩
  r := (42195844213111 / 50000000000000 : ℚ)
  w := (10335038783471 / 10000000000000 : ℚ)
  center := (11598437499999999 / 50000000000000000 : ℚ)
  supportValue := (8988391854322173 / 10000000000000000 : ℚ)
  supportSlope := (5913087353455637 / 1000000000000000 : ℚ)
  oldCenter := (8988391854322173 / 10000000000000000 : ℚ)
  oldLo := (11231250000000001 / 12500000000000000 : ℚ)
  oldHi := (11243750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2058, piece_2059]
}

def cell_6870 : Cell := { cellDefaults with
  domain := ⟨(11599999999999999 / 50000000000000000 : ℚ), (11603124999999999 / 50000000000000000 : ℚ)⟩
  r := (84320002108191 / 100000000000000 : ℚ)
  w := (10337836264709 / 10000000000000 : ℚ)
  center := (11601562499999999 / 50000000000000000 : ℚ)
  supportValue := (4493293127918243 / 5000000000000000 : ℚ)
  supportSlope := (5909269525592009 / 1000000000000000 : ℚ)
  oldCenter := (4493293127918243 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_605
  oldLo := (44900000000000001 / 50000000000000000 : ℚ)
  oldHi := (44950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2057, piece_2058]
}

def cell_6871 : Cell := { cellDefaults with
  domain := ⟨(11603124999999999 / 50000000000000000 : ℚ), (11606249999999999 / 50000000000000000 : ℚ)⟩
  r := (84320002108191 / 100000000000000 : ℚ)
  w := (10337836264709 / 10000000000000 : ℚ)
  center := (11604687499999999 / 50000000000000000 : ℚ)
  supportValue := (8990280124711799 / 10000000000000000 : ℚ)
  supportSlope := (1182152521573343 / 200000000000000 : ℚ)
  oldCenter := (8990280124711799 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_605
  oldLo := (11231250000000001 / 12500000000000000 : ℚ)
  oldHi := (11243750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2058, piece_2059]
}

def cell_6872 : Cell := { cellDefaults with
  domain := ⟨(11606249999999999 / 50000000000000000 : ℚ), (11609374999999999 / 50000000000000000 : ℚ)⟩
  r := (84320002108191 / 100000000000000 : ℚ)
  w := (10337836264709 / 10000000000000 : ℚ)
  center := (11607812499999999 / 50000000000000000 : ℚ)
  supportValue := (2248493688526891 / 2500000000000000 : ℚ)
  supportSlope := (5912254544119477 / 1000000000000000 : ℚ)
  oldCenter := (2248493688526891 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_605
  oldLo := (44950000000000001 / 50000000000000000 : ℚ)
  oldHi := (45000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2059, piece_2060]
}

def cell_6873 : Cell := { cellDefaults with
  domain := ⟨(11609374999999999 / 50000000000000000 : ℚ), (11612499999999999 / 50000000000000000 : ℚ)⟩
  r := (84320002108191 / 100000000000000 : ℚ)
  w := (10337836264709 / 10000000000000 : ℚ)
  center := (11610937499999999 / 50000000000000000 : ℚ)
  supportValue := (8997670268801249 / 10000000000000000 : ℚ)
  supportSlope := (591361720045569 / 100000000000000 : ℚ)
  oldCenter := (8997670268801249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_605
  oldLo := (11243750000000001 / 12500000000000000 : ℚ)
  oldHi := (45000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2060]
}

def cell_6874 : Cell := { cellDefaults with
  domain := ⟨(11612499999999999 / 50000000000000000 : ℚ), (11615624999999999 / 50000000000000000 : ℚ)⟩
  r := (84320002108191 / 100000000000000 : ℚ)
  w := (10337836264709 / 10000000000000 : ℚ)
  center := (11614062499999999 / 50000000000000000 : ℚ)
  supportValue := (4500683357892501 / 5000000000000000 : ℚ)
  supportSlope := (11829775813055221 / 2000000000000000 : ℚ)
  oldCenter := (4500683357892501 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_605
  oldLo := (11243750000000001 / 12500000000000000 : ℚ)
  oldHi := (9004469273743017 / 10000000000000000 : ℚ)
  oldPieces := [piece_2060, piece_2061]
}

def cell_6875 : Cell := { cellDefaults with
  domain := ⟨(11615624999999999 / 50000000000000000 : ℚ), (11618749999999999 / 50000000000000000 : ℚ)⟩
  r := (84320002108191 / 100000000000000 : ℚ)
  w := (10337836264709 / 10000000000000 : ℚ)
  center := (11617187499999999 / 50000000000000000 : ℚ)
  supportValue := (1125633011804711 / 1250000000000000 : ℚ)
  supportSlope := (739547395882667 / 125000000000000 : ℚ)
  oldCenter := (1125633011804711 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_605
  oldLo := (45000000000000001 / 50000000000000000 : ℚ)
  oldHi := (45050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2061, piece_2062, piece_2063]
}

def cell_6876 : Cell := { cellDefaults with
  domain := ⟨(11618749999999999 / 50000000000000000 : ℚ), (11621874999999999 / 50000000000000000 : ℚ)⟩
  r := (84320002108191 / 100000000000000 : ℚ)
  w := (10337836264709 / 10000000000000 : ℚ)
  center := (11620312499999999 / 50000000000000000 : ℚ)
  supportValue := (9008762198334607 / 10000000000000000 : ℚ)
  supportSlope := (1479467332587081 / 250000000000000 : ℚ)
  oldCenter := (9008762198334607 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_605
  oldLo := (11256250000000001 / 12500000000000000 : ℚ)
  oldHi := (11268750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2063, piece_2064]
}

def cell_6877 : Cell := { cellDefaults with
  domain := ⟨(11621874999999999 / 50000000000000000 : ℚ), (11624999999999999 / 50000000000000000 : ℚ)⟩
  r := (84320002108191 / 100000000000000 : ℚ)
  w := (10337836264709 / 10000000000000 : ℚ)
  center := (11623437499999999 / 50000000000000000 : ℚ)
  supportValue := (281639413213517 / 312500000000000 : ℚ)
  supportSlope := (11838351934255087 / 2000000000000000 : ℚ)
  oldCenter := (281639413213517 / 312500000000000 : ℚ)
  newCoefficients := coefficients_605
  oldLo := (45050000000000001 / 50000000000000000 : ℚ)
  oldHi := (11268750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2064]
}

def cell_6878 : Cell := { cellDefaults with
  domain := ⟨(11624999999999999 / 50000000000000000 : ℚ), (11628124999999999 / 50000000000000000 : ℚ)⟩
  r := (2632764698127 / 3125000000000 : ℚ)
  w := (10340636706039 / 10000000000000 : ℚ)
  center := (11626562499999999 / 50000000000000000 : ℚ)
  supportValue := (9010649759086489 / 10000000000000000 : ℚ)
  supportSlope := (29577723940859 / 5000000000000 : ℚ)
  oldCenter := (9010649759086489 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_606
  oldLo := (11256250000000001 / 12500000000000000 : ℚ)
  oldHi := (11268750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2063, piece_2064]
}

def cell_6879 : Cell := { cellDefaults with
  domain := ⟨(11628124999999999 / 50000000000000000 : ℚ), (11631249999999999 / 50000000000000000 : ℚ)⟩
  r := (2632764698127 / 3125000000000 : ℚ)
  w := (10340636706039 / 10000000000000 : ℚ)
  center := (11629687499999999 / 50000000000000000 : ℚ)
  supportValue := (1802869487759763 / 2000000000000000 : ℚ)
  supportSlope := (5917033806746019 / 1000000000000000 : ℚ)
  oldCenter := (1802869487759763 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_606
  oldLo := (45050000000000001 / 50000000000000000 : ℚ)
  oldHi := (45100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2064, piece_2065]
}

def cell_6880 : Cell := { cellDefaults with
  domain := ⟨(11631249999999999 / 50000000000000000 : ℚ), (11634374999999999 / 50000000000000000 : ℚ)⟩
  r := (2632764698127 / 3125000000000 : ℚ)
  w := (10340636706039 / 10000000000000 : ℚ)
  center := (11632812499999999 / 50000000000000000 : ℚ)
  supportValue := (9018045940769897 / 10000000000000000 : ℚ)
  supportSlope := (1183698960212709 / 200000000000000 : ℚ)
  oldCenter := (9018045940769897 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_606
  oldLo := (11268750000000001 / 12500000000000000 : ℚ)
  oldHi := (45100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2065]
}

def cell_6881 : Cell := { cellDefaults with
  domain := ⟨(11634374999999999 / 50000000000000000 : ℚ), (11637499999999999 / 50000000000000000 : ℚ)⟩
  r := (2632764698127 / 3125000000000 : ℚ)
  w := (10340636706039 / 10000000000000 : ℚ)
  center := (11635937499999999 / 50000000000000000 : ℚ)
  supportValue := (9021745373143463 / 10000000000000000 : ℚ)
  supportSlope := (73995810176819 / 12500000000000 : ℚ)
  oldCenter := (9021745373143463 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_606
  oldLo := (11268750000000001 / 12500000000000000 : ℚ)
  oldHi := (11281250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2065, piece_2066]
}

def cell_6882 : Cell := { cellDefaults with
  domain := ⟨(11637499999999999 / 50000000000000000 : ℚ), (11640624999999999 / 50000000000000000 : ℚ)⟩
  r := (2632764698127 / 3125000000000 : ℚ)
  w := (10340636706039 / 10000000000000 : ℚ)
  center := (11639062499999999 / 50000000000000000 : ℚ)
  supportValue := (9025445735266011 / 10000000000000000 : ℚ)
  supportSlope := (1184230617159443 / 200000000000000 : ℚ)
  oldCenter := (9025445735266011 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_606
  oldLo := (45100000000000001 / 50000000000000000 : ℚ)
  oldHi := (45150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2066, piece_2067]
}

def cell_6883 : Cell := { cellDefaults with
  domain := ⟨(11640624999999999 / 50000000000000000 : ℚ), (11643749999999999 / 50000000000000000 : ℚ)⟩
  r := (2632764698127 / 3125000000000 : ℚ)
  w := (10340636706039 / 10000000000000 : ℚ)
  center := (11642187499999999 / 50000000000000000 : ℚ)
  supportValue := (1805829377232487 / 2000000000000000 : ℚ)
  supportSlope := (2961320178651583 / 500000000000000 : ℚ)
  oldCenter := (1805829377232487 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_606
  oldLo := (11281250000000001 / 12500000000000000 : ℚ)
  oldHi := (11293750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2067, piece_2068]
}

def cell_6884 : Cell := { cellDefaults with
  domain := ⟨(11643749999999999 / 50000000000000000 : ℚ), (11646874999999999 / 50000000000000000 : ℚ)⟩
  r := (2632764698127 / 3125000000000 : ℚ)
  w := (10340636706039 / 10000000000000 : ℚ)
  center := (11645312499999999 / 50000000000000000 : ℚ)
  supportValue := (9032848892773773 / 10000000000000000 : ℚ)
  supportSlope := (148101199010231 / 25000000000000 : ℚ)
  oldCenter := (9032848892773773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_606
  oldLo := (45150000000000001 / 50000000000000000 : ℚ)
  oldHi := (11293750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2068]
}

def cell_6885 : Cell := { cellDefaults with
  domain := ⟨(11646874999999999 / 50000000000000000 : ℚ), (11649999999999999 / 50000000000000000 : ℚ)⟩
  r := (2632764698127 / 3125000000000 : ℚ)
  w := (10340636706039 / 10000000000000 : ℚ)
  center := (11648437499999999 / 50000000000000000 : ℚ)
  supportValue := (225913795709893 / 250000000000000 : ℚ)
  supportSlope := (11850541775423551 / 2000000000000000 : ℚ)
  oldCenter := (225913795709893 / 250000000000000 : ℚ)
  newCoefficients := coefficients_606
  oldLo := (45150000000000001 / 50000000000000000 : ℚ)
  oldHi := (90400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2068, piece_2069]
}

def cell_6886 : Cell := { cellDefaults with
  domain := ⟨(11649999999999999 / 50000000000000000 : ℚ), (37289999999999997 / 160000000000000000 : ℚ)⟩
  r := (16835418599787 / 20000000000000 : ℚ)
  w := (10343440351617 / 10000000000000 : ℚ)
  center := (372849999999999969 / 1600000000000000000 : ℚ)
  supportValue := (4517367322707101 / 5000000000000000 : ℚ)
  supportSlope := (5921801792064467 / 1000000000000000 : ℚ)
  oldCenter := (4517367322707101 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_607
  oldLo := (45150000000000001 / 50000000000000000 : ℚ)
  oldHi := (90400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2068, piece_2069]
}

def cell_6887 : Cell := { cellDefaults with
  domain := ⟨(37289999999999997 / 160000000000000000 : ℚ), (93249999999999993 / 400000000000000000 : ℚ)⟩
  r := (16835418599787 / 20000000000000 : ℚ)
  w := (10343440351617 / 10000000000000 : ℚ)
  center := (372949999999999971 / 1600000000000000000 : ℚ)
  supportValue := (9038436127599797 / 10000000000000000 : ℚ)
  supportSlope := (592328655058149 / 100000000000000 : ℚ)
  oldCenter := (9038436127599797 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_607
  oldLo := (11293750000000001 / 12500000000000000 : ℚ)
  oldHi := (11306250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2069, piece_2070]
}

def cell_6888 : Cell := { cellDefaults with
  domain := ⟨(93249999999999993 / 400000000000000000 : ℚ), (186549999999999987 / 800000000000000000 : ℚ)⟩
  r := (16835418599787 / 20000000000000 : ℚ)
  w := (10343440351617 / 10000000000000 : ℚ)
  center := (373049999999999973 / 1600000000000000000 : ℚ)
  supportValue := (4521069269081791 / 5000000000000000 : ℚ)
  supportSlope := (5924506512481879 / 1000000000000000 : ℚ)
  oldCenter := (4521069269081791 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_607
  oldLo := (90400000000000003 / 100000000000000000 : ℚ)
  oldHi := (11306250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2070]
}

def cell_6889 : Cell := { cellDefaults with
  domain := ⟨(186549999999999987 / 800000000000000000 : ℚ), (46649999999999997 / 200000000000000000 : ℚ)⟩
  r := (16835418599787 / 20000000000000 : ℚ)
  w := (10343440351617 / 10000000000000 : ℚ)
  center := (14925999999999999 / 64000000000000000 : ℚ)
  supportValue := (4522920938263863 / 5000000000000000 : ℚ)
  supportSlope := (5925915422618881 / 1000000000000000 : ℚ)
  oldCenter := (4522920938263863 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_607
  oldLo := (90400000000000003 / 100000000000000000 : ℚ)
  oldHi := (90500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2070, piece_2071]
}

def cell_6890 : Cell := { cellDefaults with
  domain := ⟨(46649999999999997 / 200000000000000000 : ℚ), (186649999999999989 / 800000000000000000 : ℚ)⟩
  r := (16835418599787 / 20000000000000 : ℚ)
  w := (10343440351617 / 10000000000000 : ℚ)
  center := (373249999999999977 / 1600000000000000000 : ℚ)
  supportValue := (1809909213659397 / 2000000000000000 : ℚ)
  supportSlope := (1481849869454847 / 250000000000000 : ℚ)
  oldCenter := (1809909213659397 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_607
  oldLo := (11306250000000001 / 12500000000000000 : ℚ)
  oldHi := (11318750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2071, piece_2072]
}

def cell_6891 : Cell := { cellDefaults with
  domain := ⟨(186649999999999989 / 800000000000000000 : ℚ), (18669999999999999 / 80000000000000000 : ℚ)⟩
  r := (16835418599787 / 20000000000000 : ℚ)
  w := (10343440351617 / 10000000000000 : ℚ)
  center := (373349999999999979 / 1600000000000000000 : ℚ)
  supportValue := (9053251049588151 / 10000000000000000 : ℚ)
  supportSlope := (5928882462036593 / 1000000000000000 : ℚ)
  oldCenter := (9053251049588151 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_607
  oldLo := (90500000000000003 / 100000000000000000 : ℚ)
  oldHi := (9059776536312849 / 10000000000000000 : ℚ)
  oldPieces := [piece_2072, piece_2073]
}

def cell_6892 : Cell := { cellDefaults with
  domain := ⟨(18669999999999999 / 80000000000000000 : ℚ), (186749999999999991 / 800000000000000000 : ℚ)⟩
  r := (16835418599787 / 20000000000000 : ℚ)
  w := (10343440351617 / 10000000000000 : ℚ)
  center := (373449999999999981 / 1600000000000000000 : ℚ)
  supportValue := (9056956958164777 / 10000000000000000 : ℚ)
  supportSlope := (148251394985263 / 25000000000000 : ℚ)
  oldCenter := (9056956958164777 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_607
  oldLo := (11318750000000001 / 12500000000000000 : ℚ)
  oldHi := (9059776536312849 / 10000000000000000 : ℚ)
  oldPieces := [piece_2073]
}

def cell_6893 : Cell := { cellDefaults with
  domain := ⟨(186749999999999991 / 800000000000000000 : ℚ), (23349999999999999 / 100000000000000000 : ℚ)⟩
  r := (16835418599787 / 20000000000000 : ℚ)
  w := (10343440351617 / 10000000000000 : ℚ)
  center := (373549999999999983 / 1600000000000000000 : ℚ)
  supportValue := (9060663793478961 / 10000000000000000 : ℚ)
  supportSlope := (11863023664744551 / 2000000000000000 : ℚ)
  oldCenter := (9060663793478961 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_607
  oldLo := (11318750000000001 / 12500000000000000 : ℚ)
  oldHi := (11331250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2073, piece_2074, piece_2075]
}

def cell_6894 : Cell := { cellDefaults with
  domain := ⟨(23349999999999999 / 100000000000000000 : ℚ), (23356249999999999 / 100000000000000000 : ℚ)⟩
  r := (5256616754949 / 6250000000000 : ℚ)
  w := (2586561714727 / 2500000000000 : ℚ)
  center := (23353124999999999 / 100000000000000000 : ℚ)
  supportValue := (4529420230515707 / 5000000000000000 : ℚ)
  supportSlope := (5928040231204079 / 1000000000000000 : ℚ)
  oldCenter := (4529420230515707 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_608
  oldLo := (11318750000000001 / 12500000000000000 : ℚ)
  oldHi := (11331250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2073, piece_2074, piece_2075]
}

def cell_6895 : Cell := { cellDefaults with
  domain := ⟨(23356249999999999 / 100000000000000000 : ℚ), (23362499999999999 / 100000000000000000 : ℚ)⟩
  r := (5256616754949 / 6250000000000 : ℚ)
  w := (2586561714727 / 2500000000000 : ℚ)
  center := (23359374999999999 / 100000000000000000 : ℚ)
  supportValue := (2265636460785031 / 2500000000000000 : ℚ)
  supportSlope := (1482341596023673 / 250000000000000 : ℚ)
  oldCenter := (2265636460785031 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_608
  oldLo := (90600000000000003 / 100000000000000000 : ℚ)
  oldHi := (11331250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2075]
}

def cell_6896 : Cell := { cellDefaults with
  domain := ⟨(23362499999999999 / 100000000000000000 : ℚ), (23368749999999999 / 100000000000000000 : ℚ)⟩
  r := (5256616754949 / 6250000000000 : ℚ)
  w := (2586561714727 / 2500000000000 : ℚ)
  center := (23365624999999999 / 100000000000000000 : ℚ)
  supportValue := (9066252151250863 / 10000000000000000 : ℚ)
  supportSlope := (5930667352311403 / 1000000000000000 : ℚ)
  oldCenter := (9066252151250863 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_608
  oldLo := (90600000000000003 / 100000000000000000 : ℚ)
  oldHi := (90700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2075, piece_2076]
}

def cell_6897 : Cell := { cellDefaults with
  domain := ⟨(23368749999999999 / 100000000000000000 : ℚ), (23374999999999999 / 100000000000000000 : ℚ)⟩
  r := (5256616754949 / 6250000000000 : ℚ)
  w := (2586561714727 / 2500000000000 : ℚ)
  center := (23371874999999999 / 100000000000000000 : ℚ)
  supportValue := (9069959378427329 / 10000000000000000 : ℚ)
  supportSlope := (741518542443087 / 125000000000000 : ℚ)
  oldCenter := (9069959378427329 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_608
  oldLo := (11331250000000001 / 12500000000000000 : ℚ)
  oldHi := (11343750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2076, piece_2077]
}

def cell_6898 : Cell := { cellDefaults with
  domain := ⟨(23374999999999999 / 100000000000000000 : ℚ), (23381249999999999 / 100000000000000000 : ℚ)⟩
  r := (5256616754949 / 6250000000000 : ℚ)
  w := (2586561714727 / 2500000000000 : ℚ)
  center := (23378124999999999 / 100000000000000000 : ℚ)
  supportValue := (9073667327959863 / 10000000000000000 : ℚ)
  supportSlope := (5933628244214617 / 1000000000000000 : ℚ)
  oldCenter := (9073667327959863 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_608
  oldLo := (90700000000000003 / 100000000000000000 : ℚ)
  oldHi := (90800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2077, piece_2078]
}

def cell_6899 : Cell := { cellDefaults with
  domain := ⟨(23381249999999999 / 100000000000000000 : ℚ), (23387499999999999 / 100000000000000000 : ℚ)⟩
  r := (5256616754949 / 6250000000000 : ℚ)
  w := (2586561714727 / 2500000000000 : ℚ)
  center := (23384374999999999 / 100000000000000000 : ℚ)
  supportValue := (1815475240570419 / 2000000000000000 : ℚ)
  supportSlope := (5934909844338421 / 1000000000000000 : ℚ)
  oldCenter := (1815475240570419 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_608
  oldLo := (11343750000000001 / 12500000000000000 : ℚ)
  oldHi := (90800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2078]
}

theorem check_6850 : SourceCertificateFamily.RightNormalized.check cell_6850 = true := by
  decide +kernel

theorem check_6851 : SourceCertificateFamily.RightNormalized.check cell_6851 = true := by
  decide +kernel

theorem check_6852 : SourceCertificateFamily.RightNormalized.check cell_6852 = true := by
  decide +kernel

theorem check_6853 : SourceCertificateFamily.RightNormalized.check cell_6853 = true := by
  decide +kernel

theorem check_6854 : SourceCertificateFamily.RightNormalized.check cell_6854 = true := by
  decide +kernel

theorem check_6855 : SourceCertificateFamily.RightNormalized.check cell_6855 = true := by
  decide +kernel

theorem check_6856 : SourceCertificateFamily.RightNormalized.check cell_6856 = true := by
  decide +kernel

theorem check_6857 : SourceCertificateFamily.RightNormalized.check cell_6857 = true := by
  decide +kernel

theorem check_6858 : SourceCertificateFamily.RightNormalized.check cell_6858 = true := by
  decide +kernel

theorem check_6859 : SourceCertificateFamily.RightNormalized.check cell_6859 = true := by
  decide +kernel

theorem check_6860 : SourceCertificateFamily.RightNormalized.check cell_6860 = true := by
  decide +kernel

theorem check_6861 : SourceCertificateFamily.RightNormalized.check cell_6861 = true := by
  decide +kernel

theorem check_6862 : SourceCertificateFamily.RightNormalized.check cell_6862 = true := by
  decide +kernel

theorem check_6863 : SourceCertificateFamily.RightNormalized.check cell_6863 = true := by
  decide +kernel

theorem check_6864 : SourceCertificateFamily.RightNormalized.check cell_6864 = true := by
  decide +kernel

theorem check_6865 : SourceCertificateFamily.RightNormalized.check cell_6865 = true := by
  decide +kernel

theorem check_6866 : SourceCertificateFamily.RightNormalized.check cell_6866 = true := by
  decide +kernel

theorem check_6867 : SourceCertificateFamily.RightNormalized.check cell_6867 = true := by
  decide +kernel

theorem check_6868 : SourceCertificateFamily.RightNormalized.check cell_6868 = true := by
  decide +kernel

theorem check_6869 : SourceCertificateFamily.RightNormalized.check cell_6869 = true := by
  decide +kernel

theorem check_6870 : SourceCertificateFamily.RightNormalized.check cell_6870 = true := by
  decide +kernel

theorem check_6871 : SourceCertificateFamily.RightNormalized.check cell_6871 = true := by
  decide +kernel

theorem check_6872 : SourceCertificateFamily.RightNormalized.check cell_6872 = true := by
  decide +kernel

theorem check_6873 : SourceCertificateFamily.RightNormalized.check cell_6873 = true := by
  decide +kernel

theorem check_6874 : SourceCertificateFamily.RightNormalized.check cell_6874 = true := by
  decide +kernel

theorem check_6875 : SourceCertificateFamily.RightNormalized.check cell_6875 = true := by
  decide +kernel

theorem check_6876 : SourceCertificateFamily.RightNormalized.check cell_6876 = true := by
  decide +kernel

theorem check_6877 : SourceCertificateFamily.RightNormalized.check cell_6877 = true := by
  decide +kernel

theorem check_6878 : SourceCertificateFamily.RightNormalized.check cell_6878 = true := by
  decide +kernel

theorem check_6879 : SourceCertificateFamily.RightNormalized.check cell_6879 = true := by
  decide +kernel

theorem check_6880 : SourceCertificateFamily.RightNormalized.check cell_6880 = true := by
  decide +kernel

theorem check_6881 : SourceCertificateFamily.RightNormalized.check cell_6881 = true := by
  decide +kernel

theorem check_6882 : SourceCertificateFamily.RightNormalized.check cell_6882 = true := by
  decide +kernel

theorem check_6883 : SourceCertificateFamily.RightNormalized.check cell_6883 = true := by
  decide +kernel

theorem check_6884 : SourceCertificateFamily.RightNormalized.check cell_6884 = true := by
  decide +kernel

theorem check_6885 : SourceCertificateFamily.RightNormalized.check cell_6885 = true := by
  decide +kernel

theorem check_6886 : SourceCertificateFamily.RightNormalized.check cell_6886 = true := by
  decide +kernel

theorem check_6887 : SourceCertificateFamily.RightNormalized.check cell_6887 = true := by
  decide +kernel

theorem check_6888 : SourceCertificateFamily.RightNormalized.check cell_6888 = true := by
  decide +kernel

theorem check_6889 : SourceCertificateFamily.RightNormalized.check cell_6889 = true := by
  decide +kernel

theorem check_6890 : SourceCertificateFamily.RightNormalized.check cell_6890 = true := by
  decide +kernel

theorem check_6891 : SourceCertificateFamily.RightNormalized.check cell_6891 = true := by
  decide +kernel

theorem check_6892 : SourceCertificateFamily.RightNormalized.check cell_6892 = true := by
  decide +kernel

theorem check_6893 : SourceCertificateFamily.RightNormalized.check cell_6893 = true := by
  decide +kernel

theorem check_6894 : SourceCertificateFamily.RightNormalized.check cell_6894 = true := by
  decide +kernel

theorem check_6895 : SourceCertificateFamily.RightNormalized.check cell_6895 = true := by
  decide +kernel

theorem check_6896 : SourceCertificateFamily.RightNormalized.check cell_6896 = true := by
  decide +kernel

theorem check_6897 : SourceCertificateFamily.RightNormalized.check cell_6897 = true := by
  decide +kernel

theorem check_6898 : SourceCertificateFamily.RightNormalized.check cell_6898 = true := by
  decide +kernel

theorem check_6899 : SourceCertificateFamily.RightNormalized.check cell_6899 = true := by
  decide +kernel

def cells : List Cell := [cell_6850, cell_6851, cell_6852, cell_6853, cell_6854, cell_6855, cell_6856, cell_6857, cell_6858, cell_6859, cell_6860, cell_6861, cell_6862, cell_6863, cell_6864, cell_6865, cell_6866, cell_6867, cell_6868, cell_6869, cell_6870, cell_6871, cell_6872, cell_6873, cell_6874, cell_6875, cell_6876, cell_6877, cell_6878, cell_6879, cell_6880, cell_6881, cell_6882, cell_6883, cell_6884, cell_6885, cell_6886, cell_6887, cell_6888, cell_6889, cell_6890, cell_6891, cell_6892, cell_6893, cell_6894, cell_6895, cell_6896, cell_6897, cell_6898, cell_6899]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6850, SourceCertificateFamily.of_right_checked check_6851, SourceCertificateFamily.of_right_checked check_6852, SourceCertificateFamily.of_right_checked check_6853, SourceCertificateFamily.of_right_checked check_6854, SourceCertificateFamily.of_right_checked check_6855, SourceCertificateFamily.of_right_checked check_6856, SourceCertificateFamily.of_right_checked check_6857, SourceCertificateFamily.of_right_checked check_6858, SourceCertificateFamily.of_right_checked check_6859, SourceCertificateFamily.of_right_checked check_6860, SourceCertificateFamily.of_right_checked check_6861, SourceCertificateFamily.of_right_checked check_6862, SourceCertificateFamily.of_right_checked check_6863, SourceCertificateFamily.of_right_checked check_6864, SourceCertificateFamily.of_right_checked check_6865, SourceCertificateFamily.of_right_checked check_6866, SourceCertificateFamily.of_right_checked check_6867, SourceCertificateFamily.of_right_checked check_6868, SourceCertificateFamily.of_right_checked check_6869, SourceCertificateFamily.of_right_checked check_6870, SourceCertificateFamily.of_right_checked check_6871, SourceCertificateFamily.of_right_checked check_6872, SourceCertificateFamily.of_right_checked check_6873, SourceCertificateFamily.of_right_checked check_6874, SourceCertificateFamily.of_right_checked check_6875, SourceCertificateFamily.of_right_checked check_6876, SourceCertificateFamily.of_right_checked check_6877, SourceCertificateFamily.of_right_checked check_6878, SourceCertificateFamily.of_right_checked check_6879, SourceCertificateFamily.of_right_checked check_6880, SourceCertificateFamily.of_right_checked check_6881, SourceCertificateFamily.of_right_checked check_6882, SourceCertificateFamily.of_right_checked check_6883, SourceCertificateFamily.of_right_checked check_6884, SourceCertificateFamily.of_right_checked check_6885, SourceCertificateFamily.of_right_checked check_6886, SourceCertificateFamily.of_right_checked check_6887, SourceCertificateFamily.of_right_checked check_6888, SourceCertificateFamily.of_right_checked check_6889, SourceCertificateFamily.of_right_checked check_6890, SourceCertificateFamily.of_right_checked check_6891, SourceCertificateFamily.of_right_checked check_6892, SourceCertificateFamily.of_right_checked check_6893, SourceCertificateFamily.of_right_checked check_6894, SourceCertificateFamily.of_right_checked check_6895, SourceCertificateFamily.of_right_checked check_6896, SourceCertificateFamily.of_right_checked check_6897, SourceCertificateFamily.of_right_checked check_6898, SourceCertificateFamily.of_right_checked check_6899, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0137

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0137
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0137
open AnalyticBounds.ExpressionCertificate

theorem linked_6850 : Linked cell_6850 pieces := by
  apply Linked.of_piece piece_601 piece_601_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6850, List.cons_subset, List.nil_subset, and_true]
  exact piece_2046_mem

theorem linked_6851 : Linked cell_6851 pieces := by
  apply Linked.of_piece piece_601 piece_601_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6851, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2046_mem, piece_2047_mem⟩

theorem linked_6852 : Linked cell_6852 pieces := by
  apply Linked.of_piece piece_601 piece_601_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6852, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2047_mem, piece_2048_mem⟩

theorem linked_6853 : Linked cell_6853 pieces := by
  apply Linked.of_piece piece_602 piece_602_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6853, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2047_mem, piece_2048_mem⟩

theorem linked_6854 : Linked cell_6854 pieces := by
  apply Linked.of_piece piece_602 piece_602_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6854, List.cons_subset, List.nil_subset, and_true]
  exact piece_2048_mem

theorem linked_6855 : Linked cell_6855 pieces := by
  apply Linked.of_piece piece_602 piece_602_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6855, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2048_mem, piece_2049_mem⟩

theorem linked_6856 : Linked cell_6856 pieces := by
  apply Linked.of_piece piece_602 piece_602_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6856, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2049_mem, ⟨piece_2050_mem, piece_2051_mem⟩⟩

theorem linked_6857 : Linked cell_6857 pieces := by
  apply Linked.of_piece piece_603 piece_603_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6857, List.cons_subset, List.nil_subset, and_true]
  exact piece_2051_mem

theorem linked_6858 : Linked cell_6858 pieces := by
  apply Linked.of_piece piece_603 piece_603_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6858, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2051_mem, piece_2052_mem⟩

theorem linked_6859 : Linked cell_6859 pieces := by
  apply Linked.of_piece piece_603 piece_603_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6859, List.cons_subset, List.nil_subset, and_true]
  exact piece_2052_mem

theorem linked_6860 : Linked cell_6860 pieces := by
  apply Linked.of_piece piece_603 piece_603_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6860, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2052_mem, piece_2053_mem⟩

theorem linked_6861 : Linked cell_6861 pieces := by
  apply Linked.of_piece piece_603 piece_603_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6861, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2053_mem, piece_2054_mem⟩

theorem linked_6862 : Linked cell_6862 pieces := by
  apply Linked.of_piece piece_604 piece_604_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6862, List.cons_subset, List.nil_subset, and_true]
  exact piece_2053_mem

theorem linked_6863 : Linked cell_6863 pieces := by
  apply Linked.of_piece piece_604 piece_604_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6863, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2053_mem, piece_2054_mem⟩

theorem linked_6864 : Linked cell_6864 pieces := by
  apply Linked.of_piece piece_604 piece_604_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6864, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2054_mem, piece_2055_mem⟩

theorem linked_6865 : Linked cell_6865 pieces := by
  apply Linked.of_piece piece_604 piece_604_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6865, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2055_mem, piece_2056_mem⟩

theorem linked_6866 : Linked cell_6866 pieces := by
  apply Linked.of_piece piece_604 piece_604_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6866, List.cons_subset, List.nil_subset, and_true]
  exact piece_2056_mem

theorem linked_6867 : Linked cell_6867 pieces := by
  apply Linked.of_piece piece_604 piece_604_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6867, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2056_mem, piece_2057_mem⟩

theorem linked_6868 : Linked cell_6868 pieces := by
  apply Linked.of_piece piece_604 piece_604_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6868, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2057_mem, piece_2058_mem⟩

theorem linked_6869 : Linked cell_6869 pieces := by
  apply Linked.of_piece piece_604 piece_604_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6869, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2058_mem, piece_2059_mem⟩

theorem linked_6870 : Linked cell_6870 pieces := by
  apply Linked.of_piece piece_605 piece_605_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6870, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2057_mem, piece_2058_mem⟩

theorem linked_6871 : Linked cell_6871 pieces := by
  apply Linked.of_piece piece_605 piece_605_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6871, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2058_mem, piece_2059_mem⟩

theorem linked_6872 : Linked cell_6872 pieces := by
  apply Linked.of_piece piece_605 piece_605_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6872, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2059_mem, piece_2060_mem⟩

theorem linked_6873 : Linked cell_6873 pieces := by
  apply Linked.of_piece piece_605 piece_605_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6873, List.cons_subset, List.nil_subset, and_true]
  exact piece_2060_mem

theorem linked_6874 : Linked cell_6874 pieces := by
  apply Linked.of_piece piece_605 piece_605_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6874, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2060_mem, piece_2061_mem⟩

theorem linked_6875 : Linked cell_6875 pieces := by
  apply Linked.of_piece piece_605 piece_605_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6875, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2061_mem, ⟨piece_2062_mem, piece_2063_mem⟩⟩

theorem linked_6876 : Linked cell_6876 pieces := by
  apply Linked.of_piece piece_605 piece_605_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6876, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2063_mem, piece_2064_mem⟩

theorem linked_6877 : Linked cell_6877 pieces := by
  apply Linked.of_piece piece_605 piece_605_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6877, List.cons_subset, List.nil_subset, and_true]
  exact piece_2064_mem

theorem linked_6878 : Linked cell_6878 pieces := by
  apply Linked.of_piece piece_606 piece_606_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6878, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2063_mem, piece_2064_mem⟩

theorem linked_6879 : Linked cell_6879 pieces := by
  apply Linked.of_piece piece_606 piece_606_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6879, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2064_mem, piece_2065_mem⟩

theorem linked_6880 : Linked cell_6880 pieces := by
  apply Linked.of_piece piece_606 piece_606_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6880, List.cons_subset, List.nil_subset, and_true]
  exact piece_2065_mem

theorem linked_6881 : Linked cell_6881 pieces := by
  apply Linked.of_piece piece_606 piece_606_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6881, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2065_mem, piece_2066_mem⟩

theorem linked_6882 : Linked cell_6882 pieces := by
  apply Linked.of_piece piece_606 piece_606_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6882, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2066_mem, piece_2067_mem⟩

theorem linked_6883 : Linked cell_6883 pieces := by
  apply Linked.of_piece piece_606 piece_606_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6883, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2067_mem, piece_2068_mem⟩

theorem linked_6884 : Linked cell_6884 pieces := by
  apply Linked.of_piece piece_606 piece_606_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6884, List.cons_subset, List.nil_subset, and_true]
  exact piece_2068_mem

theorem linked_6885 : Linked cell_6885 pieces := by
  apply Linked.of_piece piece_606 piece_606_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6885, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2068_mem, piece_2069_mem⟩

theorem linked_6886 : Linked cell_6886 pieces := by
  apply Linked.of_piece piece_607 piece_607_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6886, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2068_mem, piece_2069_mem⟩

theorem linked_6887 : Linked cell_6887 pieces := by
  apply Linked.of_piece piece_607 piece_607_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6887, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2069_mem, piece_2070_mem⟩

theorem linked_6888 : Linked cell_6888 pieces := by
  apply Linked.of_piece piece_607 piece_607_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6888, List.cons_subset, List.nil_subset, and_true]
  exact piece_2070_mem

theorem linked_6889 : Linked cell_6889 pieces := by
  apply Linked.of_piece piece_607 piece_607_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6889, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2070_mem, piece_2071_mem⟩

theorem linked_6890 : Linked cell_6890 pieces := by
  apply Linked.of_piece piece_607 piece_607_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6890, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2071_mem, piece_2072_mem⟩

theorem linked_6891 : Linked cell_6891 pieces := by
  apply Linked.of_piece piece_607 piece_607_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6891, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2072_mem, piece_2073_mem⟩

theorem linked_6892 : Linked cell_6892 pieces := by
  apply Linked.of_piece piece_607 piece_607_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6892, List.cons_subset, List.nil_subset, and_true]
  exact piece_2073_mem

theorem linked_6893 : Linked cell_6893 pieces := by
  apply Linked.of_piece piece_607 piece_607_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6893, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2073_mem, ⟨piece_2074_mem, piece_2075_mem⟩⟩

theorem linked_6894 : Linked cell_6894 pieces := by
  apply Linked.of_piece piece_608 piece_608_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6894, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2073_mem, ⟨piece_2074_mem, piece_2075_mem⟩⟩

theorem linked_6895 : Linked cell_6895 pieces := by
  apply Linked.of_piece piece_608 piece_608_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6895, List.cons_subset, List.nil_subset, and_true]
  exact piece_2075_mem

theorem linked_6896 : Linked cell_6896 pieces := by
  apply Linked.of_piece piece_608 piece_608_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6896, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2075_mem, piece_2076_mem⟩

theorem linked_6897 : Linked cell_6897 pieces := by
  apply Linked.of_piece piece_608 piece_608_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6897, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2076_mem, piece_2077_mem⟩

theorem linked_6898 : Linked cell_6898 pieces := by
  apply Linked.of_piece piece_608 piece_608_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6898, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2077_mem, piece_2078_mem⟩

theorem linked_6899 : Linked cell_6899 pieces := by
  apply Linked.of_piece piece_608 piece_608_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6899, List.cons_subset, List.nil_subset, and_true]
  exact piece_2078_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0137.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0137.cells,List.forall_mem_cons]
  exact ⟨linked_6850, linked_6851, linked_6852, linked_6853, linked_6854, linked_6855, linked_6856, linked_6857, linked_6858, linked_6859, linked_6860, linked_6861, linked_6862, linked_6863, linked_6864, linked_6865, linked_6866, linked_6867, linked_6868, linked_6869, linked_6870, linked_6871, linked_6872, linked_6873, linked_6874, linked_6875, linked_6876, linked_6877, linked_6878, linked_6879, linked_6880, linked_6881, linked_6882, linked_6883, linked_6884, linked_6885, linked_6886, linked_6887, linked_6888, linked_6889, linked_6890, linked_6891, linked_6892, linked_6893, linked_6894, linked_6895, linked_6896, linked_6897, linked_6898, linked_6899, by simp⟩

theorem covered : covers (11540624999999999 / 50000000000000000 : ℚ) (23387499999999999 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0137.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0137
