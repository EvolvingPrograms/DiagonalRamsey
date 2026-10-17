import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0138
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(23387499999999999 / 100000000000000000 : ℚ), (23393749999999999 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (84034796370669 / 100000000000000 : ℚ)
  w := (10349056889863 / 10000000000000 : ℚ)
  center := (23390624999999999 / 100000000000000000 : ℚ)
  supportValue := (9081086002423917 / 10000000000000000 : ℚ)
  supportSlope := (1187250911531379 / 200000000000000 : ℚ)
  oldCenter := (9081086002423917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_609
  oldLo := (90800000000000003 / 100000000000000000 : ℚ)
  oldHi := (91350000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2079, piece_2080]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6900 : Cell := { cellDefaults with
  r := (5256616754949 / 6250000000000 : ℚ)
  w := (2586561714727 / 2500000000000 : ℚ)
  newCoefficients := coefficients_608
  oldLo := (11343750000000001 / 12500000000000000 : ℚ)
  oldHi := (90850000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2078, piece_2079]
}

def cell_6901 : Cell := { cellDefaults with
  domain := ⟨(23393749999999999 / 100000000000000000 : ℚ), (23399999999999999 / 100000000000000000 : ℚ)⟩
  r := (5256616754949 / 6250000000000 : ℚ)
  w := (2586561714727 / 2500000000000 : ℚ)
  center := (23396874999999999 / 100000000000000000 : ℚ)
  supportValue := (9084796693837671 / 10000000000000000 : ℚ)
  supportSlope := (2968866841250417 / 500000000000000 : ℚ)
  oldCenter := (9084796693837671 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_608
  oldHi := (90900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2079, piece_2080]
}

def cell_6902 : Cell := { cellDefaults with
  domain := ⟨(23399999999999999 / 100000000000000000 : ℚ), (23406249999999999 / 100000000000000000 : ℚ)⟩
  center := (23403124999999999 / 100000000000000000 : ℚ)
  supportValue := (1816593553676407 / 2000000000000000 : ℚ)
  supportSlope := (2967107938844471 / 500000000000000 : ℚ)
  oldCenter := (1816593553676407 / 2000000000000000 : ℚ)
  oldHi := (90850000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2079]
}

def cell_6903 : Cell := { cellDefaults with
  domain := ⟨(23406249999999999 / 100000000000000000 : ℚ), (23412499999999999 / 100000000000000000 : ℚ)⟩
  center := (23409374999999999 / 100000000000000000 : ℚ)
  supportValue := (9086677038706051 / 10000000000000000 : ℚ)
  supportSlope := (2967703620921469 / 500000000000000 : ℚ)
  oldCenter := (9086677038706051 / 10000000000000000 : ℚ)
  oldHi := (90900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2079, piece_2080]
}

def cell_6904 : Cell := { cellDefaults with
  domain := ⟨(23412499999999999 / 100000000000000000 : ℚ), (23418749999999999 / 100000000000000000 : ℚ)⟩
  center := (23415624999999999 / 100000000000000000 : ℚ)
  supportValue := (4545193616182869 / 5000000000000000 : ℚ)
  supportSlope := (1187377047957483 / 200000000000000 : ℚ)
  oldCenter := (4545193616182869 / 5000000000000000 : ℚ)
  oldLo := (90850000000000009 / 100000000000000000 : ℚ)
  oldHi := (90950000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2080, piece_2081]
}

def cell_6905 : Cell := { cellDefaults with
  domain := ⟨(23418749999999999 / 100000000000000000 : ℚ), (23424999999999999 / 100000000000000000 : ℚ)⟩
  center := (23421874999999999 / 100000000000000000 : ℚ)
  supportValue := (4547049102574411 / 5000000000000000 : ℚ)
  supportSlope := (46393454483179 / 7812500000000 : ℚ)
  oldCenter := (4547049102574411 / 5000000000000000 : ℚ)
  oldLo := (90900000000000003 / 100000000000000000 : ℚ)
  oldHi := (91000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2081, piece_2082]
}

def cell_6906 : Cell := { cellDefaults with
  domain := ⟨(23424999999999999 / 100000000000000000 : ℚ), (23431249999999999 / 100000000000000000 : ℚ)⟩
  center := (23428124999999999 / 100000000000000000 : ℚ)
  supportValue := (4548905019477853 / 5000000000000000 : ℚ)
  supportSlope := (5939753708199547 / 1000000000000000 : ℚ)
  oldCenter := (4548905019477853 / 5000000000000000 : ℚ)
  oldLo := (90950000000000009 / 100000000000000000 : ℚ)
  oldHi := (91000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2082]
}

def cell_6907 : Cell := { cellDefaults with
  domain := ⟨(23431249999999999 / 100000000000000000 : ℚ), (23437499999999999 / 100000000000000000 : ℚ)⟩
  center := (23434374999999999 / 100000000000000000 : ℚ)
  supportValue := (9101522795687977 / 10000000000000000 : ℚ)
  supportSlope := (2970493261372553 / 500000000000000 : ℚ)
  oldCenter := (9101522795687977 / 10000000000000000 : ℚ)
  oldLo := (90950000000000009 / 100000000000000000 : ℚ)
  oldHi := (91050000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2082, piece_2083]
}

def cell_6908 : Cell := { cellDefaults with
  domain := ⟨(23437499999999999 / 100000000000000000 : ℚ), (23443749999999999 / 100000000000000000 : ℚ)⟩
  center := (23440624999999999 / 100000000000000000 : ℚ)
  supportValue := (9105236474726679 / 10000000000000000 : ℚ)
  supportSlope := (5942462701128193 / 1000000000000000 : ℚ)
  oldCenter := (9105236474726679 / 10000000000000000 : ℚ)
  oldLo := (91000000000000003 / 100000000000000000 : ℚ)
  oldHi := (91100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2083, piece_2084]
}

def cell_6909 : Cell := { cellDefaults with
  domain := ⟨(23443749999999999 / 100000000000000000 : ℚ), (23449999999999999 / 100000000000000000 : ℚ)⟩
  center := (23446874999999999 / 100000000000000000 : ℚ)
  supportValue := (2277237727377141 / 2500000000000000 : ℚ)
  supportSlope := (5943937790608089 / 1000000000000000 : ℚ)
  oldCenter := (2277237727377141 / 2500000000000000 : ℚ)
  oldLo := (91050000000000009 / 100000000000000000 : ℚ)
  oldHi := (91150000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2084, piece_2085]
}

def cell_6910 : Cell := { cellDefaults with
  domain := ⟨(23449999999999999 / 100000000000000000 : ℚ), (23456249999999999 / 100000000000000000 : ℚ)⟩
  r := (41981938749437 / 50000000000000 : ℚ)
  w := (2587967756201 / 2500000000000 : ℚ)
  center := (23453124999999999 / 100000000000000000 : ℚ)
  supportValue := (9107116857146029 / 10000000000000000 : ℚ)
  supportSlope := (1485050973026869 / 250000000000000 : ℚ)
  oldCenter := (9107116857146029 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_610
  oldLo := (91050000000000009 / 100000000000000000 : ℚ)
  oldHi := (91100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2084]
}

def cell_6911 : Cell := { cellDefaults with
  domain := ⟨(23456249999999999 / 100000000000000000 : ℚ), (23462499999999999 / 100000000000000000 : ℚ)⟩
  r := (41981938749437 / 50000000000000 : ℚ)
  w := (2587967756201 / 2500000000000 : ℚ)
  center := (23459374999999999 / 100000000000000000 : ℚ)
  supportValue := (4555415002375599 / 5000000000000000 : ℚ)
  supportSlope := (1188322376250639 / 200000000000000 : ℚ)
  oldCenter := (4555415002375599 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_610
  oldLo := (91050000000000009 / 100000000000000000 : ℚ)
  oldHi := (91150000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2084, piece_2085]
}

def cell_6912 : Cell := { cellDefaults with
  domain := ⟨(23462499999999999 / 100000000000000000 : ℚ), (23468749999999999 / 100000000000000000 : ℚ)⟩
  r := (41981938749437 / 50000000000000 : ℚ)
  w := (2587967756201 / 2500000000000 : ℚ)
  center := (23465624999999999 / 100000000000000000 : ℚ)
  supportValue := (4557272000751053 / 5000000000000000 : ℚ)
  supportSlope := (5943085896911171 / 1000000000000000 : ℚ)
  oldCenter := (4557272000751053 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_610
  oldLo := (91100000000000003 / 100000000000000000 : ℚ)
  oldHi := (91200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2085, piece_2086, piece_2087]
}

def cell_6913 : Cell := { cellDefaults with
  domain := ⟨(23468749999999999 / 100000000000000000 : ℚ), (23474999999999999 / 100000000000000000 : ℚ)⟩
  r := (41981938749437 / 50000000000000 : ℚ)
  w := (2587967756201 / 2500000000000 : ℚ)
  center := (23471874999999999 / 100000000000000000 : ℚ)
  supportValue := (9118258787915403 / 10000000000000000 : ℚ)
  supportSlope := (5944558951101797 / 1000000000000000 : ℚ)
  oldCenter := (9118258787915403 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_610
  oldLo := (4557541899441341 / 5000000000000000 : ℚ)
  oldHi := (91250000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2087, piece_2088]
}

def cell_6914 : Cell := { cellDefaults with
  domain := ⟨(23474999999999999 / 100000000000000000 : ℚ), (23481249999999999 / 100000000000000000 : ℚ)⟩
  r := (41981938749437 / 50000000000000 : ℚ)
  w := (2587967756201 / 2500000000000 : ℚ)
  center := (23478124999999999 / 100000000000000000 : ℚ)
  supportValue := (9121974495334927 / 10000000000000000 : ℚ)
  supportSlope := (2972868953601271 / 500000000000000 : ℚ)
  oldCenter := (9121974495334927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_610
  oldLo := (91200000000000003 / 100000000000000000 : ℚ)
  oldHi := (91250000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2088]
}

def cell_6915 : Cell := { cellDefaults with
  domain := ⟨(23481249999999999 / 100000000000000000 : ℚ), (23487499999999999 / 100000000000000000 : ℚ)⟩
  r := (41981938749437 / 50000000000000 : ℚ)
  w := (2587967756201 / 2500000000000 : ℚ)
  center := (23484374999999999 / 100000000000000000 : ℚ)
  supportValue := (912569112307347 / 1000000000000000 : ℚ)
  supportSlope := (1486795238742733 / 250000000000000 : ℚ)
  oldCenter := (912569112307347 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_610
  oldLo := (91200000000000003 / 100000000000000000 : ℚ)
  oldHi := (91300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2088, piece_2089]
}

def cell_6916 : Cell := { cellDefaults with
  domain := ⟨(23487499999999999 / 100000000000000000 : ℚ), (23493749999999999 / 100000000000000000 : ℚ)⟩
  r := (41981938749437 / 50000000000000 : ℚ)
  w := (2587967756201 / 2500000000000 : ℚ)
  center := (23490624999999999 / 100000000000000000 : ℚ)
  supportValue := (912940857814119 / 1000000000000000 : ℚ)
  supportSlope := (2974326525882809 / 500000000000000 : ℚ)
  oldCenter := (912940857814119 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_610
  oldLo := (91250000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2089, piece_2090]
}

def cell_6917 : Cell := { cellDefaults with
  domain := ⟨(23493749999999999 / 100000000000000000 : ℚ), (23499999999999999 / 100000000000000000 : ℚ)⟩
  r := (41981938749437 / 50000000000000 : ℚ)
  w := (2587967756201 / 2500000000000 : ℚ)
  center := (23496874999999999 / 100000000000000000 : ℚ)
  supportValue := (9133126844483453 / 10000000000000000 : ℚ)
  supportSlope := (1487530356901967 / 250000000000000 : ℚ)
  oldCenter := (9133126844483453 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_610
  oldLo := (91300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2090]
}

def cell_6918 : Cell := { cellDefaults with
  domain := ⟨(23499999999999999 / 100000000000000000 : ℚ), (23506249999999999 / 100000000000000000 : ℚ)⟩
  r := (83893112794639 / 100000000000000 : ℚ)
  w := (10354688248251 / 10000000000000 : ℚ)
  center := (23503124999999999 / 100000000000000000 : ℚ)
  supportValue := (9131287289389969 / 10000000000000000 : ℚ)
  supportSlope := (1486581878269 / 250000000000 : ℚ)
  oldCenter := (9131287289389969 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_611
  oldLo := (91250000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2089, piece_2090]
}

def cell_6919 : Cell := { cellDefaults with
  domain := ⟨(23506249999999999 / 100000000000000000 : ℚ), (23512499999999999 / 100000000000000000 : ℚ)⟩
  r := (83893112794639 / 100000000000000 : ℚ)
  w := (10354688248251 / 10000000000000 : ℚ)
  center := (23509374999999999 / 100000000000000000 : ℚ)
  supportValue := (114187553787679 / 125000000000000 : ℚ)
  supportSlope := (14869496248457459 / 2500000000000000 : ℚ)
  oldCenter := (114187553787679 / 125000000000000 : ℚ)
  newCoefficients := coefficients_611
  oldLo := (91300000000000003 / 100000000000000000 : ℚ)
  oldHi := (91400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2090, piece_2091]
}

def cell_6920 : Cell := { cellDefaults with
  domain := ⟨(23512499999999999 / 100000000000000000 : ℚ), (23518749999999999 / 100000000000000000 : ℚ)⟩
  r := (83893112794639 / 100000000000000 : ℚ)
  w := (10354688248251 / 10000000000000 : ℚ)
  center := (23515624999999999 / 100000000000000000 : ℚ)
  supportValue := (9138722036038641 / 10000000000000000 : ℚ)
  supportSlope := (1487317114363229 / 250000000000000 : ℚ)
  oldCenter := (9138722036038641 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_611
  oldLo := (91350000000000009 / 100000000000000000 : ℚ)
  oldHi := (91450000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2091, piece_2092]
}

def cell_6921 : Cell := { cellDefaults with
  domain := ⟨(23518749999999999 / 100000000000000000 : ℚ), (23524999999999999 / 100000000000000000 : ℚ)⟩
  r := (83893112794639 / 100000000000000 : ℚ)
  w := (10354688248251 / 10000000000000 : ℚ)
  center := (23521874999999999 / 100000000000000000 : ℚ)
  supportValue := (9142440687089803 / 10000000000000000 : ℚ)
  supportSlope := (1190112768840379 / 200000000000000 : ℚ)
  oldCenter := (9142440687089803 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_611
  oldLo := (91400000000000003 / 100000000000000000 : ℚ)
  oldHi := (91450000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2092]
}

def cell_6922 : Cell := { cellDefaults with
  domain := ⟨(23524999999999999 / 100000000000000000 : ℚ), (23531249999999999 / 100000000000000000 : ℚ)⟩
  r := (83893112794639 / 100000000000000 : ℚ)
  w := (10354688248251 / 10000000000000 : ℚ)
  center := (23528124999999999 / 100000000000000000 : ℚ)
  supportValue := (2286540064153487 / 2500000000000000 : ℚ)
  supportSlope := (2975944059866009 / 500000000000000 : ℚ)
  oldCenter := (2286540064153487 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_611
  oldLo := (91400000000000003 / 100000000000000000 : ℚ)
  oldHi := (22875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2092, piece_2093]
}

def cell_6923 : Cell := { cellDefaults with
  domain := ⟨(23531249999999999 / 100000000000000000 : ℚ), (23537499999999999 / 100000000000000000 : ℚ)⟩
  r := (83893112794639 / 100000000000000 : ℚ)
  w := (10354688248251 / 10000000000000 : ℚ)
  center := (23534374999999999 / 100000000000000000 : ℚ)
  supportValue := (2287470181466971 / 2500000000000000 : ℚ)
  supportSlope := (1488339322087917 / 250000000000000 : ℚ)
  oldCenter := (2287470181466971 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_611
  oldLo := (91450000000000009 / 100000000000000000 : ℚ)
  oldHi := (91550000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2093, piece_2094]
}

def cell_6924 : Cell := { cellDefaults with
  domain := ⟨(23537499999999999 / 100000000000000000 : ℚ), (23543749999999999 / 100000000000000000 : ℚ)⟩
  r := (83893112794639 / 100000000000000 : ℚ)
  w := (10354688248251 / 10000000000000 : ℚ)
  center := (23540624999999999 / 100000000000000000 : ℚ)
  supportValue := (366144077301779 / 400000000000000 : ℚ)
  supportSlope := (5954825413660103 / 1000000000000000 : ℚ)
  oldCenter := (366144077301779 / 400000000000000 : ℚ)
  newCoefficients := coefficients_611
  oldLo := (22875000000000001 / 25000000000000000 : ℚ)
  oldHi := (22900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2094, piece_2095]
}

def cell_6925 : Cell := { cellDefaults with
  domain := ⟨(23543749999999999 / 100000000000000000 : ℚ), (23549999999999999 / 100000000000000000 : ℚ)⟩
  r := (83893112794639 / 100000000000000 : ℚ)
  w := (10354688248251 / 10000000000000 : ℚ)
  center := (23546874999999999 / 100000000000000000 : ℚ)
  supportValue := (9157324057204859 / 10000000000000000 : ℚ)
  supportSlope := (5956091955217957 / 1000000000000000 : ℚ)
  oldCenter := (9157324057204859 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_611
  oldLo := (91550000000000009 / 100000000000000000 : ℚ)
  oldHi := (22900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2095]
}

def cell_6926 : Cell := { cellDefaults with
  domain := ⟨(23549999999999999 / 100000000000000000 : ℚ), (23556249999999999 / 100000000000000000 : ℚ)⟩
  r := (83822498960827 / 100000000000000 : ℚ)
  w := (258937734397 / 250000000000 : ℚ)
  center := (23553124999999999 / 100000000000000000 : ℚ)
  supportValue := (9155479196596401 / 10000000000000000 : ℚ)
  supportSlope := (1488125033883847 / 250000000000000 : ℚ)
  oldCenter := (9155479196596401 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_612
  oldLo := (22875000000000001 / 25000000000000000 : ℚ)
  oldHi := (22900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2094, piece_2095]
}

def cell_6927 : Cell := { cellDefaults with
  domain := ⟨(23556249999999999 / 100000000000000000 : ℚ), (23562499999999999 / 100000000000000000 : ℚ)⟩
  r := (83822498960827 / 100000000000000 : ℚ)
  w := (258937734397 / 250000000000 : ℚ)
  center := (23559374999999999 / 100000000000000000 : ℚ)
  supportValue := (9159199941908471 / 10000000000000000 : ℚ)
  supportSlope := (11907934288313271 / 2000000000000000 : ℚ)
  oldCenter := (9159199941908471 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_612
  oldLo := (91550000000000009 / 100000000000000000 : ℚ)
  oldHi := (45824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2095, piece_2096]
}

def cell_6928 : Cell := { cellDefaults with
  domain := ⟨(23562499999999999 / 100000000000000000 : ℚ), (23568749999999999 / 100000000000000000 : ℚ)⟩
  r := (83822498960827 / 100000000000000 : ℚ)
  w := (258937734397 / 250000000000 : ℚ)
  center := (23565624999999999 / 100000000000000000 : ℚ)
  supportValue := (9162921529831409 / 10000000000000000 : ℚ)
  supportSlope := (5955380238038543 / 1000000000000000 : ℚ)
  oldCenter := (9162921529831409 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_612
  oldLo := (22900000000000001 / 25000000000000000 : ℚ)
  oldHi := (45824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2096]
}

def cell_6929 : Cell := { cellDefaults with
  domain := ⟨(23568749999999999 / 100000000000000000 : ℚ), (23574999999999999 / 100000000000000000 : ℚ)⟩
  r := (83822498960827 / 100000000000000 : ℚ)
  w := (258937734397 / 250000000000 : ℚ)
  center := (23571874999999999 / 100000000000000000 : ℚ)
  supportValue := (2291661008596953 / 2500000000000000 : ℚ)
  supportSlope := (2978292238001501 / 500000000000000 : ℚ)
  oldCenter := (2291661008596953 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_612
  oldLo := (22900000000000001 / 25000000000000000 : ℚ)
  oldHi := (22925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2096, piece_2097]
}

def cell_6930 : Cell := { cellDefaults with
  domain := ⟨(23574999999999999 / 100000000000000000 : ℚ), (23581249999999999 / 100000000000000000 : ℚ)⟩
  r := (83822498960827 / 100000000000000 : ℚ)
  w := (258937734397 / 250000000000 : ℚ)
  center := (23578124999999999 / 100000000000000000 : ℚ)
  supportValue := (4585183727460647 / 5000000000000000 : ℚ)
  supportSlope := (2979025392377821 / 500000000000000 : ℚ)
  oldCenter := (4585183727460647 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_612
  oldLo := (45824999999999999 / 50000000000000000 : ℚ)
  oldHi := (45874999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2097, piece_2098, piece_2099]
}

def cell_6931 : Cell := { cellDefaults with
  domain := ⟨(23581249999999999 / 100000000000000000 : ℚ), (23587499999999999 / 100000000000000000 : ℚ)⟩
  r := (83822498960827 / 100000000000000 : ℚ)
  w := (258937734397 / 250000000000 : ℚ)
  center := (23584374999999999 / 100000000000000000 : ℚ)
  supportValue := (91740916521853 / 100000000000000 : ℚ)
  supportSlope := (5959516046203817 / 1000000000000000 : ℚ)
  oldCenter := (91740916521853 / 100000000000000 : ℚ)
  newCoefficients := coefficients_612
  oldLo := (4585195530726257 / 5000000000000000 : ℚ)
  oldHi := (22950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2099, piece_2100]
}

def cell_6932 : Cell := { cellDefaults with
  domain := ⟨(23587499999999999 / 100000000000000000 : ℚ), (23593749999999999 / 100000000000000000 : ℚ)⟩
  r := (83822498960827 / 100000000000000 : ℚ)
  w := (258937734397 / 250000000000 : ℚ)
  center := (23590624999999999 / 100000000000000000 : ℚ)
  supportValue := (1835563341734633 / 2000000000000000 : ℚ)
  supportSlope := (11921805006750219 / 2000000000000000 : ℚ)
  oldCenter := (1835563341734633 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_612
  oldLo := (45874999999999999 / 50000000000000000 : ℚ)
  oldHi := (22950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2100]
}

def cell_6933 : Cell := { cellDefaults with
  domain := ⟨(23593749999999999 / 100000000000000000 : ℚ), (23599999999999999 / 100000000000000000 : ℚ)⟩
  r := (83822498960827 / 100000000000000 : ℚ)
  w := (258937734397 / 250000000000 : ℚ)
  center := (23596874999999999 / 100000000000000000 : ℚ)
  supportValue := (9181542680630437 / 10000000000000000 : ℚ)
  supportSlope := (372633320246063 / 62500000000000 : ℚ)
  oldCenter := (9181542680630437 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_612
  oldLo := (45874999999999999 / 50000000000000000 : ℚ)
  oldHi := (45924999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2100, piece_2101]
}

def cell_6934 : Cell := { cellDefaults with
  domain := ⟨(23599999999999999 / 100000000000000000 : ℚ), (23606249999999999 / 100000000000000000 : ℚ)⟩
  r := (41876018401223 / 50000000000000 : ℚ)
  w := (2072066857523 / 2000000000000 : ℚ)
  center := (23603124999999999 / 100000000000000000 : ℚ)
  supportValue := (14687508076563 / 16000000000000 : ℚ)
  supportSlope := (2979327543518373 / 500000000000000 : ℚ)
  oldCenter := (14687508076563 / 16000000000000 : ℚ)
  newCoefficients := coefficients_613
  oldLo := (45874999999999999 / 50000000000000000 : ℚ)
  oldHi := (45924999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2100, piece_2101]
}

def cell_6935 : Cell := { cellDefaults with
  domain := ⟨(23606249999999999 / 100000000000000000 : ℚ), (23612499999999999 / 100000000000000000 : ℚ)⟩
  r := (41876018401223 / 50000000000000 : ℚ)
  w := (2072066857523 / 2000000000000 : ℚ)
  center := (23609374999999999 / 100000000000000000 : ℚ)
  supportValue := (9183417065930599 / 10000000000000000 : ℚ)
  supportSlope := (2980059062642759 / 500000000000000 : ℚ)
  oldCenter := (9183417065930599 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_613
  oldLo := (22950000000000001 / 25000000000000000 : ℚ)
  oldHi := (22975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2101, piece_2102]
}

def cell_6936 : Cell := { cellDefaults with
  domain := ⟨(23612499999999999 / 100000000000000000 : ℚ), (23618749999999999 / 100000000000000000 : ℚ)⟩
  r := (41876018401223 / 50000000000000 : ℚ)
  w := (2072066857523 / 2000000000000 : ℚ)
  center := (23615624999999999 / 100000000000000000 : ℚ)
  supportValue := (2296785624702109 / 2500000000000000 : ℚ)
  supportSlope := (596133902647189 / 100000000000000 : ℚ)
  oldCenter := (2296785624702109 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_613
  oldLo := (45924999999999999 / 50000000000000000 : ℚ)
  oldHi := (22975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2102]
}

def cell_6937 : Cell := { cellDefaults with
  domain := ⟨(23618749999999999 / 100000000000000000 : ℚ), (23624999999999999 / 100000000000000000 : ℚ)⟩
  r := (41876018401223 / 50000000000000 : ℚ)
  w := (2072066857523 / 2000000000000 : ℚ)
  center := (23621874999999999 / 100000000000000000 : ℚ)
  supportValue := (2297717211460831 / 2500000000000000 : ℚ)
  supportSlope := (2981366695678389 / 500000000000000 : ℚ)
  oldCenter := (2297717211460831 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_613
  oldLo := (45924999999999999 / 50000000000000000 : ℚ)
  oldHi := (45974999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2102, piece_2103]
}

def cell_6938 : Cell := { cellDefaults with
  domain := ⟨(23624999999999999 / 100000000000000000 : ℚ), (23631249999999999 / 100000000000000000 : ℚ)⟩
  r := (41876018401223 / 50000000000000 : ℚ)
  w := (2072066857523 / 2000000000000 : ℚ)
  center := (23628124999999999 / 100000000000000000 : ℚ)
  supportValue := (4597298022783053 / 5000000000000000 : ℚ)
  supportSlope := (5964195648436643 / 1000000000000000 : ℚ)
  oldCenter := (4597298022783053 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_613
  oldLo := (22975000000000001 / 25000000000000000 : ℚ)
  oldHi := (23000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2103, piece_2104]
}

def cell_6939 : Cell := { cellDefaults with
  domain := ⟨(23631249999999999 / 100000000000000000 : ℚ), (23637499999999999 / 100000000000000000 : ℚ)⟩
  r := (41876018401223 / 50000000000000 : ℚ)
  w := (2072066857523 / 2000000000000 : ℚ)
  center := (23634374999999999 / 100000000000000000 : ℚ)
  supportValue := (57489525168711 / 62500000000000 : ℚ)
  supportSlope := (2982828443610863 / 500000000000000 : ℚ)
  oldCenter := (57489525168711 / 62500000000000 : ℚ)
  newCoefficients := coefficients_613
  oldLo := (45974999999999999 / 50000000000000000 : ℚ)
  oldHi := (46024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2104, piece_2105]
}

def cell_6940 : Cell := { cellDefaults with
  domain := ⟨(23637499999999999 / 100000000000000000 : ℚ), (23643749999999999 / 100000000000000000 : ℚ)⟩
  r := (41876018401223 / 50000000000000 : ℚ)
  w := (2072066857523 / 2000000000000 : ℚ)
  center := (23640624999999999 / 100000000000000000 : ℚ)
  supportValue := (4601026461053467 / 5000000000000000 : ℚ)
  supportSlope := (5966856769871853 / 1000000000000000 : ℚ)
  oldCenter := (4601026461053467 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_613
  oldLo := (23000000000000001 / 25000000000000000 : ℚ)
  oldHi := (46024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2105]
}

def cell_6941 : Cell := { cellDefaults with
  domain := ⟨(23643749999999999 / 100000000000000000 : ℚ), (23649999999999999 / 100000000000000000 : ℚ)⟩
  r := (41876018401223 / 50000000000000 : ℚ)
  w := (2072066857523 / 2000000000000 : ℚ)
  center := (23646874999999999 / 100000000000000000 : ℚ)
  supportValue := (46028913651313 / 50000000000000 : ℚ)
  supportSlope := (2984135989999359 / 500000000000000 : ℚ)
  oldCenter := (46028913651313 / 50000000000000 : ℚ)
  newCoefficients := coefficients_613
  oldLo := (23000000000000001 / 25000000000000000 : ℚ)
  oldHi := (23025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2105, piece_2106]
}

def cell_6942 : Cell := { cellDefaults with
  domain := ⟨(23649999999999999 / 100000000000000000 : ℚ), (23656249999999999 / 100000000000000000 : ℚ)⟩
  r := (16736345144389 / 20000000000000 : ℚ)
  w := (2072632678563 / 2000000000000 : ℚ)
  center := (23653124999999999 / 100000000000000000 : ℚ)
  supportValue := (9203927498474801 / 10000000000000000 : ℚ)
  supportSlope := (5964792544325803 / 1000000000000000 : ℚ)
  oldCenter := (9203927498474801 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_614
  oldLo := (23000000000000001 / 25000000000000000 : ℚ)
  oldHi := (23025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2105, piece_2106]
}

def cell_6943 : Cell := { cellDefaults with
  domain := ⟨(23656249999999999 / 100000000000000000 : ℚ), (23662499999999999 / 100000000000000000 : ℚ)⟩
  r := (16736345144389 / 20000000000000 : ℚ)
  w := (2072632678563 / 2000000000000 : ℚ)
  center := (23659374999999999 / 100000000000000000 : ℚ)
  supportValue := (2301913963257727 / 2500000000000000 : ℚ)
  supportSlope := (5966136873281513 / 1000000000000000 : ℚ)
  oldCenter := (2301913963257727 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_614
  oldLo := (46024999999999999 / 50000000000000000 : ℚ)
  oldHi := (23025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2106]
}

def cell_6944 : Cell := { cellDefaults with
  domain := ⟨(23662499999999999 / 100000000000000000 : ℚ), (23668749999999999 / 100000000000000000 : ℚ)⟩
  r := (16736345144389 / 20000000000000 : ℚ)
  w := (2072632678563 / 2000000000000 : ℚ)
  center := (23665624999999999 / 100000000000000000 : ℚ)
  supportValue := (9211385119898229 / 10000000000000000 : ℚ)
  supportSlope := (5967405386744673 / 1000000000000000 : ℚ)
  oldCenter := (9211385119898229 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_614
  oldLo := (46024999999999999 / 50000000000000000 : ℚ)
  oldHi := (92149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2106, piece_2107]
}

def cell_6945 : Cell := { cellDefaults with
  domain := ⟨(23668749999999999 / 100000000000000000 : ℚ), (23674999999999999 / 100000000000000000 : ℚ)⟩
  r := (16736345144389 / 20000000000000 : ℚ)
  w := (2072632678563 / 2000000000000 : ℚ)
  center := (23671874999999999 / 100000000000000000 : ℚ)
  supportValue := (9215115298432351 / 10000000000000000 : ℚ)
  supportSlope := (2984432345727761 / 500000000000000 : ℚ)
  oldCenter := (9215115298432351 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_614
  oldLo := (23025000000000001 / 25000000000000000 : ℚ)
  oldHi := (23050000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2107, piece_2108]
}

def cell_6946 : Cell := { cellDefaults with
  domain := ⟨(23674999999999999 / 100000000000000000 : ℚ), (11837988826815643 / 50000000000000000 : ℚ)⟩
  r := (16736345144389 / 20000000000000 : ℚ)
  w := (2072632678563 / 2000000000000 : ℚ)
  center := (9470195530726257 / 40000000000000000 : ℚ)
  supportValue := (9217274248090273 / 10000000000000000 : ℚ)
  supportSlope := (2984814932433361 / 500000000000000 : ℚ)
  oldCenter := (9217274248090273 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_614
  oldLo := (92149999999999999 / 100000000000000000 : ℚ)
  oldHi := (23050000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2108]
}

def cell_6947 : Cell := { cellDefaults with
  domain := ⟨(11837988826815643 / 50000000000000000 : ℚ), (94727932960893857 / 400000000000000000 : ℚ)⟩
  r := (16736345144389 / 20000000000000 : ℚ)
  w := (2072632678563 / 2000000000000 : ℚ)
  center := (189431843575419001 / 800000000000000000 : ℚ)
  supportValue := (460967804658663 / 500000000000000 : ℚ)
  supportSlope := (2983793982185337 / 500000000000000 : ℚ)
  oldCenter := (460967804658663 / 500000000000000 : ℚ)
  newCoefficients := coefficients_615
  oldLo := (92149999999999999 / 100000000000000000 : ℚ)
  oldHi := (92249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2108, piece_2109]
}

def cell_6948 : Cell := { cellDefaults with
  domain := ⟨(94727932960893857 / 400000000000000000 : ℚ), (9475195530726257 / 40000000000000000 : ℚ)⟩
  r := (16736345144389 / 20000000000000 : ℚ)
  w := (2072632678563 / 2000000000000 : ℚ)
  center := (189479888268156427 / 800000000000000000 : ℚ)
  supportValue := (230573508326141 / 250000000000000 : ℚ)
  supportSlope := (373065899207709 / 62500000000000 : ℚ)
  oldCenter := (230573508326141 / 250000000000000 : ℚ)
  newCoefficients := coefficients_615
  oldLo := (23050000000000001 / 25000000000000000 : ℚ)
  oldHi := (92249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2109]
}

def cell_6949 : Cell := { cellDefaults with
  domain := ⟨(9475195530726257 / 40000000000000000 : ℚ), (94775977653631283 / 400000000000000000 : ℚ)⟩
  r := (16736345144389 / 20000000000000 : ℚ)
  w := (2072632678563 / 2000000000000 : ℚ)
  center := (189527932960893853 / 800000000000000000 : ℚ)
  supportValue := (4613262746769887 / 5000000000000000 : ℚ)
  supportSlope := (14925753083077271 / 2500000000000000 : ℚ)
  oldCenter := (4613262746769887 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_615
  oldLo := (23050000000000001 / 25000000000000000 : ℚ)
  oldHi := (23075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2109, piece_2110, piece_2111]
}

theorem check_6900 : SourceCertificateFamily.RightNormalized.check cell_6900 = true := by
  decide +kernel

theorem check_6901 : SourceCertificateFamily.RightNormalized.check cell_6901 = true := by
  decide +kernel

theorem check_6902 : SourceCertificateFamily.RightNormalized.check cell_6902 = true := by
  decide +kernel

theorem check_6903 : SourceCertificateFamily.RightNormalized.check cell_6903 = true := by
  decide +kernel

theorem check_6904 : SourceCertificateFamily.RightNormalized.check cell_6904 = true := by
  decide +kernel

theorem check_6905 : SourceCertificateFamily.RightNormalized.check cell_6905 = true := by
  decide +kernel

theorem check_6906 : SourceCertificateFamily.RightNormalized.check cell_6906 = true := by
  decide +kernel

theorem check_6907 : SourceCertificateFamily.RightNormalized.check cell_6907 = true := by
  decide +kernel

theorem check_6908 : SourceCertificateFamily.RightNormalized.check cell_6908 = true := by
  decide +kernel

theorem check_6909 : SourceCertificateFamily.RightNormalized.check cell_6909 = true := by
  decide +kernel

theorem check_6910 : SourceCertificateFamily.RightNormalized.check cell_6910 = true := by
  decide +kernel

theorem check_6911 : SourceCertificateFamily.RightNormalized.check cell_6911 = true := by
  decide +kernel

theorem check_6912 : SourceCertificateFamily.RightNormalized.check cell_6912 = true := by
  decide +kernel

theorem check_6913 : SourceCertificateFamily.RightNormalized.check cell_6913 = true := by
  decide +kernel

theorem check_6914 : SourceCertificateFamily.RightNormalized.check cell_6914 = true := by
  decide +kernel

theorem check_6915 : SourceCertificateFamily.RightNormalized.check cell_6915 = true := by
  decide +kernel

theorem check_6916 : SourceCertificateFamily.RightNormalized.check cell_6916 = true := by
  decide +kernel

theorem check_6917 : SourceCertificateFamily.RightNormalized.check cell_6917 = true := by
  decide +kernel

theorem check_6918 : SourceCertificateFamily.RightNormalized.check cell_6918 = true := by
  decide +kernel

theorem check_6919 : SourceCertificateFamily.RightNormalized.check cell_6919 = true := by
  decide +kernel

theorem check_6920 : SourceCertificateFamily.RightNormalized.check cell_6920 = true := by
  decide +kernel

theorem check_6921 : SourceCertificateFamily.RightNormalized.check cell_6921 = true := by
  decide +kernel

theorem check_6922 : SourceCertificateFamily.RightNormalized.check cell_6922 = true := by
  decide +kernel

theorem check_6923 : SourceCertificateFamily.RightNormalized.check cell_6923 = true := by
  decide +kernel

theorem check_6924 : SourceCertificateFamily.RightNormalized.check cell_6924 = true := by
  decide +kernel

theorem check_6925 : SourceCertificateFamily.RightNormalized.check cell_6925 = true := by
  decide +kernel

theorem check_6926 : SourceCertificateFamily.RightNormalized.check cell_6926 = true := by
  decide +kernel

theorem check_6927 : SourceCertificateFamily.RightNormalized.check cell_6927 = true := by
  decide +kernel

theorem check_6928 : SourceCertificateFamily.RightNormalized.check cell_6928 = true := by
  decide +kernel

theorem check_6929 : SourceCertificateFamily.RightNormalized.check cell_6929 = true := by
  decide +kernel

theorem check_6930 : SourceCertificateFamily.RightNormalized.check cell_6930 = true := by
  decide +kernel

theorem check_6931 : SourceCertificateFamily.RightNormalized.check cell_6931 = true := by
  decide +kernel

theorem check_6932 : SourceCertificateFamily.RightNormalized.check cell_6932 = true := by
  decide +kernel

theorem check_6933 : SourceCertificateFamily.RightNormalized.check cell_6933 = true := by
  decide +kernel

theorem check_6934 : SourceCertificateFamily.RightNormalized.check cell_6934 = true := by
  decide +kernel

theorem check_6935 : SourceCertificateFamily.RightNormalized.check cell_6935 = true := by
  decide +kernel

theorem check_6936 : SourceCertificateFamily.RightNormalized.check cell_6936 = true := by
  decide +kernel

theorem check_6937 : SourceCertificateFamily.RightNormalized.check cell_6937 = true := by
  decide +kernel

theorem check_6938 : SourceCertificateFamily.RightNormalized.check cell_6938 = true := by
  decide +kernel

theorem check_6939 : SourceCertificateFamily.RightNormalized.check cell_6939 = true := by
  decide +kernel

theorem check_6940 : SourceCertificateFamily.RightNormalized.check cell_6940 = true := by
  decide +kernel

theorem check_6941 : SourceCertificateFamily.RightNormalized.check cell_6941 = true := by
  decide +kernel

theorem check_6942 : SourceCertificateFamily.RightNormalized.check cell_6942 = true := by
  decide +kernel

theorem check_6943 : SourceCertificateFamily.RightNormalized.check cell_6943 = true := by
  decide +kernel

theorem check_6944 : SourceCertificateFamily.RightNormalized.check cell_6944 = true := by
  decide +kernel

theorem check_6945 : SourceCertificateFamily.RightNormalized.check cell_6945 = true := by
  decide +kernel

theorem check_6946 : SourceCertificateFamily.RightNormalized.check cell_6946 = true := by
  decide +kernel

theorem check_6947 : SourceCertificateFamily.RightNormalized.check cell_6947 = true := by
  decide +kernel

theorem check_6948 : SourceCertificateFamily.RightNormalized.check cell_6948 = true := by
  decide +kernel

theorem check_6949 : SourceCertificateFamily.RightNormalized.check cell_6949 = true := by
  decide +kernel

def cells : List Cell := [cell_6900, cell_6901, cell_6902, cell_6903, cell_6904, cell_6905, cell_6906, cell_6907, cell_6908, cell_6909, cell_6910, cell_6911, cell_6912, cell_6913, cell_6914, cell_6915, cell_6916, cell_6917, cell_6918, cell_6919, cell_6920, cell_6921, cell_6922, cell_6923, cell_6924, cell_6925, cell_6926, cell_6927, cell_6928, cell_6929, cell_6930, cell_6931, cell_6932, cell_6933, cell_6934, cell_6935, cell_6936, cell_6937, cell_6938, cell_6939, cell_6940, cell_6941, cell_6942, cell_6943, cell_6944, cell_6945, cell_6946, cell_6947, cell_6948, cell_6949]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6900, SourceCertificateFamily.of_right_checked check_6901, SourceCertificateFamily.of_right_checked check_6902, SourceCertificateFamily.of_right_checked check_6903, SourceCertificateFamily.of_right_checked check_6904, SourceCertificateFamily.of_right_checked check_6905, SourceCertificateFamily.of_right_checked check_6906, SourceCertificateFamily.of_right_checked check_6907, SourceCertificateFamily.of_right_checked check_6908, SourceCertificateFamily.of_right_checked check_6909, SourceCertificateFamily.of_right_checked check_6910, SourceCertificateFamily.of_right_checked check_6911, SourceCertificateFamily.of_right_checked check_6912, SourceCertificateFamily.of_right_checked check_6913, SourceCertificateFamily.of_right_checked check_6914, SourceCertificateFamily.of_right_checked check_6915, SourceCertificateFamily.of_right_checked check_6916, SourceCertificateFamily.of_right_checked check_6917, SourceCertificateFamily.of_right_checked check_6918, SourceCertificateFamily.of_right_checked check_6919, SourceCertificateFamily.of_right_checked check_6920, SourceCertificateFamily.of_right_checked check_6921, SourceCertificateFamily.of_right_checked check_6922, SourceCertificateFamily.of_right_checked check_6923, SourceCertificateFamily.of_right_checked check_6924, SourceCertificateFamily.of_right_checked check_6925, SourceCertificateFamily.of_right_checked check_6926, SourceCertificateFamily.of_right_checked check_6927, SourceCertificateFamily.of_right_checked check_6928, SourceCertificateFamily.of_right_checked check_6929, SourceCertificateFamily.of_right_checked check_6930, SourceCertificateFamily.of_right_checked check_6931, SourceCertificateFamily.of_right_checked check_6932, SourceCertificateFamily.of_right_checked check_6933, SourceCertificateFamily.of_right_checked check_6934, SourceCertificateFamily.of_right_checked check_6935, SourceCertificateFamily.of_right_checked check_6936, SourceCertificateFamily.of_right_checked check_6937, SourceCertificateFamily.of_right_checked check_6938, SourceCertificateFamily.of_right_checked check_6939, SourceCertificateFamily.of_right_checked check_6940, SourceCertificateFamily.of_right_checked check_6941, SourceCertificateFamily.of_right_checked check_6942, SourceCertificateFamily.of_right_checked check_6943, SourceCertificateFamily.of_right_checked check_6944, SourceCertificateFamily.of_right_checked check_6945, SourceCertificateFamily.of_right_checked check_6946, SourceCertificateFamily.of_right_checked check_6947, SourceCertificateFamily.of_right_checked check_6948, SourceCertificateFamily.of_right_checked check_6949, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0138

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0138
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0138
open AnalyticBounds.ExpressionCertificate

theorem linked_6900 : Linked cell_6900 pieces := by
  refine ⟨piece_608,piece_608_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6900,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2078_mem
    · exact piece_2079_mem

theorem linked_6901 : Linked cell_6901 pieces := by
  refine ⟨piece_608,piece_608_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6901,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2079_mem
    · exact piece_2080_mem

theorem linked_6902 : Linked cell_6902 pieces := by
  refine ⟨piece_609,piece_609_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6902,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2079_mem

theorem linked_6903 : Linked cell_6903 pieces := by
  refine ⟨piece_609,piece_609_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6903,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2079_mem
    · exact piece_2080_mem

theorem linked_6904 : Linked cell_6904 pieces := by
  refine ⟨piece_609,piece_609_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6904,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2080_mem
    · exact piece_2081_mem

theorem linked_6905 : Linked cell_6905 pieces := by
  refine ⟨piece_609,piece_609_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6905,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2081_mem
    · exact piece_2082_mem

theorem linked_6906 : Linked cell_6906 pieces := by
  refine ⟨piece_609,piece_609_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6906,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2082_mem

theorem linked_6907 : Linked cell_6907 pieces := by
  refine ⟨piece_609,piece_609_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6907,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2082_mem
    · exact piece_2083_mem

theorem linked_6908 : Linked cell_6908 pieces := by
  refine ⟨piece_609,piece_609_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6908,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2083_mem
    · exact piece_2084_mem

theorem linked_6909 : Linked cell_6909 pieces := by
  refine ⟨piece_609,piece_609_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6909,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2084_mem
    · exact piece_2085_mem

theorem linked_6910 : Linked cell_6910 pieces := by
  refine ⟨piece_610,piece_610_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6910,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2084_mem

theorem linked_6911 : Linked cell_6911 pieces := by
  refine ⟨piece_610,piece_610_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6911,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2084_mem
    · exact piece_2085_mem

theorem linked_6912 : Linked cell_6912 pieces := by
  refine ⟨piece_610,piece_610_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6912,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2085_mem
    · exact piece_2086_mem
    · exact piece_2087_mem

theorem linked_6913 : Linked cell_6913 pieces := by
  refine ⟨piece_610,piece_610_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6913,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2087_mem
    · exact piece_2088_mem

theorem linked_6914 : Linked cell_6914 pieces := by
  refine ⟨piece_610,piece_610_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6914,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2088_mem

theorem linked_6915 : Linked cell_6915 pieces := by
  refine ⟨piece_610,piece_610_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6915,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2088_mem
    · exact piece_2089_mem

theorem linked_6916 : Linked cell_6916 pieces := by
  refine ⟨piece_610,piece_610_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6916,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2089_mem
    · exact piece_2090_mem

theorem linked_6917 : Linked cell_6917 pieces := by
  refine ⟨piece_610,piece_610_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6917,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2090_mem

theorem linked_6918 : Linked cell_6918 pieces := by
  refine ⟨piece_611,piece_611_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6918,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2089_mem
    · exact piece_2090_mem

theorem linked_6919 : Linked cell_6919 pieces := by
  refine ⟨piece_611,piece_611_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6919,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2090_mem
    · exact piece_2091_mem

theorem linked_6920 : Linked cell_6920 pieces := by
  refine ⟨piece_611,piece_611_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6920,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2091_mem
    · exact piece_2092_mem

theorem linked_6921 : Linked cell_6921 pieces := by
  refine ⟨piece_611,piece_611_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6921,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2092_mem

theorem linked_6922 : Linked cell_6922 pieces := by
  refine ⟨piece_611,piece_611_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6922,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2092_mem
    · exact piece_2093_mem

theorem linked_6923 : Linked cell_6923 pieces := by
  refine ⟨piece_611,piece_611_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6923,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2093_mem
    · exact piece_2094_mem

theorem linked_6924 : Linked cell_6924 pieces := by
  refine ⟨piece_611,piece_611_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6924,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2094_mem
    · exact piece_2095_mem

theorem linked_6925 : Linked cell_6925 pieces := by
  refine ⟨piece_611,piece_611_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6925,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2095_mem

theorem linked_6926 : Linked cell_6926 pieces := by
  refine ⟨piece_612,piece_612_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6926,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2094_mem
    · exact piece_2095_mem

theorem linked_6927 : Linked cell_6927 pieces := by
  refine ⟨piece_612,piece_612_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6927,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2095_mem
    · exact piece_2096_mem

theorem linked_6928 : Linked cell_6928 pieces := by
  refine ⟨piece_612,piece_612_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6928,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2096_mem

theorem linked_6929 : Linked cell_6929 pieces := by
  refine ⟨piece_612,piece_612_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6929,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2096_mem
    · exact piece_2097_mem

theorem linked_6930 : Linked cell_6930 pieces := by
  refine ⟨piece_612,piece_612_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6930,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2097_mem
    · exact piece_2098_mem
    · exact piece_2099_mem

theorem linked_6931 : Linked cell_6931 pieces := by
  refine ⟨piece_612,piece_612_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6931,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2099_mem
    · exact piece_2100_mem

theorem linked_6932 : Linked cell_6932 pieces := by
  refine ⟨piece_612,piece_612_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6932,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2100_mem

theorem linked_6933 : Linked cell_6933 pieces := by
  refine ⟨piece_612,piece_612_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6933,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2100_mem
    · exact piece_2101_mem

theorem linked_6934 : Linked cell_6934 pieces := by
  refine ⟨piece_613,piece_613_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6934,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2100_mem
    · exact piece_2101_mem

theorem linked_6935 : Linked cell_6935 pieces := by
  refine ⟨piece_613,piece_613_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6935,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2101_mem
    · exact piece_2102_mem

theorem linked_6936 : Linked cell_6936 pieces := by
  refine ⟨piece_613,piece_613_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6936,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2102_mem

theorem linked_6937 : Linked cell_6937 pieces := by
  refine ⟨piece_613,piece_613_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6937,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2102_mem
    · exact piece_2103_mem

theorem linked_6938 : Linked cell_6938 pieces := by
  refine ⟨piece_613,piece_613_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6938,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2103_mem
    · exact piece_2104_mem

theorem linked_6939 : Linked cell_6939 pieces := by
  refine ⟨piece_613,piece_613_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6939,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2104_mem
    · exact piece_2105_mem

theorem linked_6940 : Linked cell_6940 pieces := by
  refine ⟨piece_613,piece_613_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6940,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2105_mem

theorem linked_6941 : Linked cell_6941 pieces := by
  refine ⟨piece_613,piece_613_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6941,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2105_mem
    · exact piece_2106_mem

theorem linked_6942 : Linked cell_6942 pieces := by
  refine ⟨piece_614,piece_614_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6942,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2105_mem
    · exact piece_2106_mem

theorem linked_6943 : Linked cell_6943 pieces := by
  refine ⟨piece_614,piece_614_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6943,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2106_mem

theorem linked_6944 : Linked cell_6944 pieces := by
  refine ⟨piece_614,piece_614_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6944,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2106_mem
    · exact piece_2107_mem

theorem linked_6945 : Linked cell_6945 pieces := by
  refine ⟨piece_614,piece_614_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6945,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2107_mem
    · exact piece_2108_mem

theorem linked_6946 : Linked cell_6946 pieces := by
  refine ⟨piece_614,piece_614_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6946,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2108_mem

theorem linked_6947 : Linked cell_6947 pieces := by
  refine ⟨piece_615,piece_615_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6947,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2108_mem
    · exact piece_2109_mem

theorem linked_6948 : Linked cell_6948 pieces := by
  refine ⟨piece_615,piece_615_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6948,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2109_mem

theorem linked_6949 : Linked cell_6949 pieces := by
  refine ⟨piece_615,piece_615_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6949,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2109_mem
    · exact piece_2110_mem
    · exact piece_2111_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0138.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0138.cells,List.forall_mem_cons]
  exact ⟨linked_6900, linked_6901, linked_6902, linked_6903, linked_6904, linked_6905, linked_6906, linked_6907, linked_6908, linked_6909, linked_6910, linked_6911, linked_6912, linked_6913, linked_6914, linked_6915, linked_6916, linked_6917, linked_6918, linked_6919, linked_6920, linked_6921, linked_6922, linked_6923, linked_6924, linked_6925, linked_6926, linked_6927, linked_6928, linked_6929, linked_6930, linked_6931, linked_6932, linked_6933, linked_6934, linked_6935, linked_6936, linked_6937, linked_6938, linked_6939, linked_6940, linked_6941, linked_6942, linked_6943, linked_6944, linked_6945, linked_6946, linked_6947, linked_6948, linked_6949, by simp⟩

theorem covered : covers (23387499999999999 / 100000000000000000 : ℚ) (94775977653631283 / 400000000000000000 : ℚ)
    (SourceCertificates.Chunk0138.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0138
