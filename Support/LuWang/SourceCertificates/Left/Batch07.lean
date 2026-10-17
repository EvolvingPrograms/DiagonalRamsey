import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData
import Support.LuWang.SourceCertificateAssembly

/-! Independent left-certificate batch: original chunks 0228–0239. -/

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0228
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(59850000000000003 / 100000000000000000 : ℚ), (239450000000000007 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (5575032674151 / 10000000000000 : ℚ)
  w := (6979429172819 / 5000000000000 : ℚ)
  center := (478850000000000019 / 800000000000000000 : ℚ)
  supportValue := (6910229665446549 / 20000000000000000 : ℚ)
  supportSlope := (-6815496677266679 / 5000000000000000 : ℚ)
  oldCenter := (6910229665446549 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1404
  oldLo := (34200000000000003 / 100000000000000000 : ℚ)
  oldHi := (34250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_845]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11400 : Cell := { cellDefaults with
  oldLo := (34500000000000003 / 100000000000000000 : ℚ)
  oldHi := (34600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_851, piece_852]
}

noncomputable def cell_11401 : Cell := { cellDefaults with
  domain := ⟨(239450000000000007 / 400000000000000000 : ℚ), (119750000000000001 / 200000000000000000 : ℚ)⟩
  center := (478950000000000009 / 800000000000000000 : ℚ)
  supportValue := (3453408469740261 / 10000000000000000 : ℚ)
  supportSlope := (-3406216791040147 / 2500000000000000 : ℚ)
  oldCenter := (3453408469740261 / 10000000000000000 : ℚ)
  oldLo := (34500000000000003 / 100000000000000000 : ℚ)
  oldHi := (34550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_851]
}

noncomputable def cell_11402 : Cell := { cellDefaults with
  domain := ⟨(119750000000000001 / 200000000000000000 : ℚ), (239549999999999997 / 400000000000000000 : ℚ)⟩
  center := (479049999999999999 / 800000000000000000 : ℚ)
  supportValue := (17258531652474657 / 50000000000000000 : ℚ)
  supportSlope := (-13609367941268797 / 10000000000000000 : ℚ)
  oldCenter := (17258531652474657 / 50000000000000000 : ℚ)
  oldLo := (34500000000000003 / 100000000000000000 : ℚ)
  oldHi := (34550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_851]
}

noncomputable def cell_11403 : Cell := { cellDefaults with
  domain := ⟨(239549999999999997 / 400000000000000000 : ℚ), (29949999999999999 / 50000000000000000 : ℚ)⟩
  center := (479149999999999989 / 800000000000000000 : ℚ)
  supportValue := (6900017079650319 / 20000000000000000 : ℚ)
  supportSlope := (-850137640625111 / 625000000000000 : ℚ)
  oldCenter := (6900017079650319 / 20000000000000000 : ℚ)
  oldLo := (34450000000000003 / 100000000000000000 : ℚ)
  oldHi := (34550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_850, piece_851]
}

noncomputable def cell_11404 : Cell := { cellDefaults with
  domain := ⟨(29949999999999999 / 50000000000000000 : ℚ), (239649999999999997 / 400000000000000000 : ℚ)⟩
  r := (6965349589957 / 12500000000000 : ℚ)
  w := (13955993819969 / 10000000000000 : ℚ)
  center := (479249999999999989 / 800000000000000000 : ℚ)
  supportValue := (69036544578703 / 200000000000000 : ℚ)
  supportSlope := (-1360369139504633 / 1000000000000000 : ℚ)
  oldCenter := (69036544578703 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1405
  oldLo := (34500000000000003 / 100000000000000000 : ℚ)
  oldHi := (34550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_851]
}

noncomputable def cell_11405 : Cell := { cellDefaults with
  domain := ⟨(239649999999999997 / 400000000000000000 : ℚ), (119850000000000001 / 200000000000000000 : ℚ)⟩
  r := (6965349589957 / 12500000000000 : ℚ)
  w := (13955993819969 / 10000000000000 : ℚ)
  center := (479349999999999999 / 800000000000000000 : ℚ)
  supportValue := (1725065073595419 / 5000000000000000 : ℚ)
  supportSlope := (-13595344548197081 / 10000000000000000 : ℚ)
  oldCenter := (1725065073595419 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1405
  oldLo := (34450000000000003 / 100000000000000000 : ℚ)
  oldHi := (34550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_850, piece_851]
}

noncomputable def cell_11406 : Cell := { cellDefaults with
  domain := ⟨(119850000000000001 / 200000000000000000 : ℚ), (239750000000000007 / 400000000000000000 : ℚ)⟩
  r := (6965349589957 / 12500000000000 : ℚ)
  w := (13955993819969 / 10000000000000 : ℚ)
  center := (479450000000000009 / 800000000000000000 : ℚ)
  supportValue := (344842823937151 / 1000000000000000 : ℚ)
  supportSlope := (-1698678297759989 / 1250000000000000 : ℚ)
  oldCenter := (344842823937151 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1405
  oldLo := (34450000000000003 / 100000000000000000 : ℚ)
  oldHi := (34500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_850]
}

noncomputable def cell_11407 : Cell := { cellDefaults with
  domain := ⟨(239750000000000007 / 400000000000000000 : ℚ), (59950000000000003 / 100000000000000000 : ℚ)⟩
  r := (6965349589957 / 12500000000000 : ℚ)
  w := (13955993819969 / 10000000000000 : ℚ)
  center := (479550000000000019 / 800000000000000000 : ℚ)
  supportValue := (34467305281165517 / 100000000000000000 : ℚ)
  supportSlope := (-13573960888136647 / 10000000000000000 : ℚ)
  oldCenter := (34467305281165517 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1405
  oldLo := (34450000000000003 / 100000000000000000 : ℚ)
  oldHi := (34500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_850]
}

noncomputable def cell_11408 : Cell := { cellDefaults with
  domain := ⟨(59950000000000003 / 100000000000000000 : ℚ), (239850000000000007 / 400000000000000000 : ℚ)⟩
  r := (6961912048137 / 12500000000000 : ℚ)
  w := (1395313278867 / 1000000000000 : ℚ)
  center := (479650000000000019 / 800000000000000000 : ℚ)
  supportValue := (17242747482255977 / 50000000000000000 : ℚ)
  supportSlope := (-3395942694919613 / 2500000000000000 : ℚ)
  oldCenter := (17242747482255977 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1406
  oldLo := (34450000000000003 / 100000000000000000 : ℚ)
  oldHi := (34500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_850]
}

noncomputable def cell_11409 : Cell := { cellDefaults with
  domain := ⟨(239850000000000007 / 400000000000000000 : ℚ), (119950000000000001 / 200000000000000000 : ℚ)⟩
  r := (6961912048137 / 12500000000000 : ℚ)
  w := (1395313278867 / 1000000000000 : ℚ)
  center := (479750000000000009 / 800000000000000000 : ℚ)
  supportValue := (215428280714331 / 625000000000000 : ℚ)
  supportSlope := (-6784158374442807 / 5000000000000000 : ℚ)
  oldCenter := (215428280714331 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1406
  oldLo := (34450000000000003 / 100000000000000000 : ℚ)
  oldHi := (34500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_850]
}

noncomputable def cell_11410 : Cell := { cellDefaults with
  domain := ⟨(119950000000000001 / 200000000000000000 : ℚ), (239949999999999997 / 400000000000000000 : ℚ)⟩
  r := (6961912048137 / 12500000000000 : ℚ)
  w := (1395313278867 / 1000000000000 : ℚ)
  center := (479849999999999999 / 800000000000000000 : ℚ)
  supportValue := (17225799129732447 / 50000000000000000 : ℚ)
  supportSlope := (-13559722585255973 / 10000000000000000 : ℚ)
  oldCenter := (17225799129732447 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1406
  oldLo := (34400000000000003 / 100000000000000000 : ℚ)
  oldHi := (34500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_849, piece_850]
}

noncomputable def cell_11411 : Cell := { cellDefaults with
  domain := ⟨(239949999999999997 / 400000000000000000 : ℚ), (29999999999999999 / 50000000000000000 : ℚ)⟩
  r := (6961912048137 / 12500000000000 : ℚ)
  w := (1395313278867 / 1000000000000 : ℚ)
  center := (479949999999999989 / 800000000000000000 : ℚ)
  supportValue := (6886924739963013 / 20000000000000000 : ℚ)
  supportSlope := (-847134713352711 / 625000000000000 : ℚ)
  oldCenter := (6886924739963013 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1406
  oldLo := (34400000000000003 / 100000000000000000 : ℚ)
  oldHi := (34450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_849]
}

noncomputable def cell_11412 : Cell := { cellDefaults with
  domain := ⟨(29999999999999999 / 50000000000000000 : ℚ), (240049999999999997 / 400000000000000000 : ℚ)⟩
  r := (13916956883843 / 25000000000000 : ℚ)
  w := (871892432931 / 625000000000 : ℚ)
  center := (480049999999999989 / 800000000000000000 : ℚ)
  supportValue := (3445280273122013 / 10000000000000000 : ℚ)
  supportSlope := (-847055547014057 / 625000000000000 : ℚ)
  oldCenter := (3445280273122013 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1407
  oldLo := (34400000000000003 / 100000000000000000 : ℚ)
  oldHi := (34500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_849, piece_850]
}

noncomputable def cell_11413 : Cell := { cellDefaults with
  domain := ⟨(240049999999999997 / 400000000000000000 : ℚ), (120050000000000001 / 200000000000000000 : ℚ)⟩
  r := (13916956883843 / 25000000000000 : ℚ)
  w := (871892432931 / 625000000000 : ℚ)
  center := (480149999999999999 / 800000000000000000 : ℚ)
  supportValue := (430447958798791 / 1250000000000000 : ℚ)
  supportSlope := (-6774261997434683 / 5000000000000000 : ℚ)
  oldCenter := (430447958798791 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1407
  oldLo := (34400000000000003 / 100000000000000000 : ℚ)
  oldHi := (34450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_849]
}

noncomputable def cell_11414 : Cell := { cellDefaults with
  domain := ⟨(120050000000000001 / 200000000000000000 : ℚ), (240150000000000007 / 400000000000000000 : ℚ)⟩
  r := (13916956883843 / 25000000000000 : ℚ)
  w := (871892432931 / 625000000000 : ℚ)
  center := (480250000000000009 / 800000000000000000 : ℚ)
  supportValue := (430236383632801 / 1250000000000000 : ℚ)
  supportSlope := (-1353310443841991 / 1000000000000000 : ℚ)
  oldCenter := (430236383632801 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1407
  oldLo := (34400000000000003 / 100000000000000000 : ℚ)
  oldHi := (34450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_849]
}

noncomputable def cell_11415 : Cell := { cellDefaults with
  domain := ⟨(240150000000000007 / 400000000000000000 : ℚ), (60050000000000003 / 100000000000000000 : ℚ)⟩
  r := (13916956883843 / 25000000000000 : ℚ)
  w := (871892432931 / 625000000000 : ℚ)
  center := (480350000000000019 / 800000000000000000 : ℚ)
  supportValue := (17201013997487727 / 50000000000000000 : ℚ)
  supportSlope := (-13524130952225801 / 10000000000000000 : ℚ)
  oldCenter := (17201013997487727 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1407
  oldLo := (34350000000000003 / 100000000000000000 : ℚ)
  oldHi := (34450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_848, piece_849]
}

noncomputable def cell_11416 : Cell := { cellDefaults with
  domain := ⟨(60050000000000003 / 100000000000000000 : ℚ), (240250000000000007 / 400000000000000000 : ℚ)⟩
  r := (556403912829 / 1000000000000 : ℚ)
  w := (13947435009933 / 10000000000000 : ℚ)
  center := (480450000000000019 / 800000000000000000 : ℚ)
  supportValue := (215125631868419 / 625000000000000 : ℚ)
  supportSlope := (-3381866412837447 / 2500000000000000 : ℚ)
  oldCenter := (215125631868419 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1408
  oldLo := (34400000000000003 / 100000000000000000 : ℚ)
  oldHi := (34450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_849]
}

noncomputable def cell_11417 : Cell := { cellDefaults with
  domain := ⟨(240250000000000007 / 400000000000000000 : ℚ), (120150000000000001 / 200000000000000000 : ℚ)⟩
  r := (556403912829 / 1000000000000 : ℚ)
  w := (13947435009933 / 10000000000000 : ℚ)
  center := (480550000000000009 / 800000000000000000 : ℚ)
  supportValue := (21502015903419 / 62500000000000 : ℚ)
  supportSlope := (-1689664604731691 / 1250000000000000 : ℚ)
  oldCenter := (21502015903419 / 62500000000000 : ℚ)
  newCoefficients := coefficients_1408
  oldLo := (34350000000000003 / 100000000000000000 : ℚ)
  oldHi := (34450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_848, piece_849]
}

noncomputable def cell_11418 : Cell := { cellDefaults with
  domain := ⟨(120150000000000001 / 200000000000000000 : ℚ), (240349999999999997 / 400000000000000000 : ℚ)⟩
  r := (556403912829 / 1000000000000 : ℚ)
  w := (13947435009933 / 10000000000000 : ℚ)
  center := (480649999999999999 / 800000000000000000 : ℚ)
  supportValue := (68772607745507 / 200000000000000 : ℚ)
  supportSlope := (-108107481940973 / 80000000000000 : ℚ)
  oldCenter := (68772607745507 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1408
  oldLo := (34350000000000003 / 100000000000000000 : ℚ)
  oldHi := (34400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_848]
}

noncomputable def cell_11419 : Cell := { cellDefaults with
  domain := ⟨(240349999999999997 / 400000000000000000 : ℚ), (30049999999999999 / 50000000000000000 : ℚ)⟩
  r := (556403912829 / 1000000000000 : ℚ)
  w := (13947435009933 / 10000000000000 : ℚ)
  center := (480749999999999989 / 800000000000000000 : ℚ)
  supportValue := (1718471085139049 / 5000000000000000 : ℚ)
  supportSlope := (-674902196061101 / 500000000000000 : ℚ)
  oldCenter := (1718471085139049 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1408
  oldLo := (34350000000000003 / 100000000000000000 : ℚ)
  oldHi := (34400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_848]
}

noncomputable def cell_11420 : Cell := { cellDefaults with
  domain := ⟨(30049999999999999 / 50000000000000000 : ℚ), (240449999999999997 / 400000000000000000 : ℚ)⟩
  r := (27806492783213 / 50000000000000 : ℚ)
  w := (54471075003 / 39062500000 : ℚ)
  center := (480849999999999989 / 800000000000000000 : ℚ)
  supportValue := (34387495377054883 / 100000000000000000 : ℚ)
  supportSlope := (-168847695200963 / 125000000000000 : ℚ)
  oldCenter := (34387495377054883 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1409
  oldLo := (34350000000000003 / 100000000000000000 : ℚ)
  oldHi := (34400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_848]
}

noncomputable def cell_11421 : Cell := { cellDefaults with
  domain := ⟨(240449999999999997 / 400000000000000000 : ℚ), (120250000000000001 / 200000000000000000 : ℚ)⟩
  r := (27806492783213 / 50000000000000 : ℚ)
  w := (54471075003 / 39062500000 : ℚ)
  center := (480949999999999999 / 800000000000000000 : ℚ)
  supportValue := (34370620224474313 / 100000000000000000 : ℚ)
  supportSlope := (-3373108926978059 / 2500000000000000 : ℚ)
  oldCenter := (34370620224474313 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1409
  oldLo := (34350000000000003 / 100000000000000000 : ℚ)
  oldHi := (34400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_848]
}

noncomputable def cell_11422 : Cell := { cellDefaults with
  domain := ⟨(120250000000000001 / 200000000000000000 : ℚ), (240550000000000007 / 400000000000000000 : ℚ)⟩
  r := (27806492783213 / 50000000000000 : ℚ)
  w := (54471075003 / 39062500000 : ℚ)
  center := (481050000000000009 / 800000000000000000 : ℚ)
  supportValue := (8588447076559011 / 25000000000000000 : ℚ)
  supportSlope := (-3370440626346501 / 2500000000000000 : ℚ)
  oldCenter := (8588447076559011 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1409
  oldLo := (34300000000000003 / 100000000000000000 : ℚ)
  oldHi := (34400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_847, piece_848]
}

noncomputable def cell_11423 : Cell := { cellDefaults with
  domain := ⟨(240550000000000007 / 400000000000000000 : ℚ), (60150000000000003 / 100000000000000000 : ℚ)⟩
  r := (27806492783213 / 50000000000000 : ℚ)
  w := (54471075003 / 39062500000 : ℚ)
  center := (481150000000000019 / 800000000000000000 : ℚ)
  supportValue := (17168455580735867 / 50000000000000000 : ℚ)
  supportSlope := (-539140436997289 / 400000000000000 : ℚ)
  oldCenter := (17168455580735867 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1409
  oldLo := (34300000000000003 / 100000000000000000 : ℚ)
  oldHi := (34350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_847]
}

noncomputable def cell_11424 : Cell := { cellDefaults with
  domain := ⟨(60150000000000003 / 100000000000000000 : ℚ), (120328770949720673 / 200000000000000000 : ℚ)⟩
  r := (27792805256499 / 50000000000000 : ℚ)
  w := (13941762453491 / 10000000000000 : ℚ)
  center := (240628770949720679 / 400000000000000000 : ℚ)
  supportValue := (17176851332119303 / 50000000000000000 : ℚ)
  supportSlope := (-13475559354168423 / 10000000000000000 : ℚ)
  oldCenter := (17176851332119303 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1410
  oldLo := (34300000000000003 / 100000000000000000 : ℚ)
  oldHi := (34400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_847, piece_848]
}

noncomputable def cell_11425 : Cell := { cellDefaults with
  domain := ⟨(120328770949720673 / 200000000000000000 : ℚ), (6017877094972067 / 10000000000000000 : ℚ)⟩
  r := (27792805256499 / 50000000000000 : ℚ)
  w := (13941762453491 / 10000000000000 : ℚ)
  center := (240686312849162013 / 400000000000000000 : ℚ)
  supportValue := (686686361048721 / 2000000000000000 : ℚ)
  supportSlope := (-2693887452028719 / 2000000000000000 : ℚ)
  oldCenter := (686686361048721 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1410
  oldLo := (34300000000000003 / 100000000000000000 : ℚ)
  oldHi := (34350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_847]
}

noncomputable def cell_11426 : Cell := { cellDefaults with
  domain := ⟨(6017877094972067 / 10000000000000000 : ℚ), (30094692737430167 / 50000000000000000 : ℚ)⟩
  r := (27792805256499 / 50000000000000 : ℚ)
  w := (13941762453491 / 10000000000000 : ℚ)
  center := (30092039106145251 / 50000000000000000 : ℚ)
  supportValue := (34317466819117187 / 100000000000000000 : ℚ)
  supportSlope := (-3363522185020259 / 2500000000000000 : ℚ)
  oldCenter := (34317466819117187 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1411
  oldLo := (34300000000000003 / 100000000000000000 : ℚ)
  oldHi := (34350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_847]
}

noncomputable def cell_11427 : Cell := { cellDefaults with
  domain := ⟨(30094692737430167 / 50000000000000000 : ℚ), (30099999999999999 / 50000000000000000 : ℚ)⟩
  r := (27792805256499 / 50000000000000 : ℚ)
  w := (13941762453491 / 10000000000000 : ℚ)
  center := (30097346368715083 / 50000000000000000 : ℚ)
  supportValue := (1715160842345029 / 5000000000000000 : ℚ)
  supportSlope := (-3361439836898517 / 2500000000000000 : ℚ)
  oldCenter := (1715160842345029 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1411
  oldLo := (34250000000000003 / 100000000000000000 : ℚ)
  oldHi := (34350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_846, piece_847]
}

noncomputable def cell_11428 : Cell := { cellDefaults with
  domain := ⟨(30099999999999999 / 50000000000000000 : ℚ), (120424999999999999 / 200000000000000000 : ℚ)⟩
  r := (6944783631283 / 12500000000000 : ℚ)
  w := (13938940976123 / 10000000000000 : ℚ)
  center := (48164999999999999 / 80000000000000000 : ℚ)
  supportValue := (34322438498563057 / 100000000000000000 : ℚ)
  supportSlope := (-672597564158747 / 500000000000000 : ℚ)
  oldCenter := (34322438498563057 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1412
  oldLo := (34300000000000003 / 100000000000000000 : ℚ)
  oldHi := (34350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_847]
}

noncomputable def cell_11429 : Cell := { cellDefaults with
  domain := ⟨(120424999999999999 / 200000000000000000 : ℚ), (60225000000000001 / 100000000000000000 : ℚ)⟩
  r := (6944783631283 / 12500000000000 : ℚ)
  w := (13938940976123 / 10000000000000 : ℚ)
  center := (240875000000000001 / 400000000000000000 : ℚ)
  supportValue := (34305657132100537 / 100000000000000000 : ℚ)
  supportSlope := (-3359859887574631 / 2500000000000000 : ℚ)
  oldCenter := (34305657132100537 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1412
  oldLo := (34250000000000003 / 100000000000000000 : ℚ)
  oldHi := (34350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_846, piece_847]
}

noncomputable def cell_11430 : Cell := { cellDefaults with
  domain := ⟨(60225000000000001 / 100000000000000000 : ℚ), (24095000000000001 / 40000000000000000 : ℚ)⟩
  r := (6944783631283 / 12500000000000 : ℚ)
  w := (13938940976123 / 10000000000000 : ℚ)
  center := (240925000000000007 / 400000000000000000 : ℚ)
  supportValue := (8572208217516271 / 25000000000000000 : ℚ)
  supportSlope := (-3359537775055751 / 2500000000000000 : ℚ)
  oldCenter := (8572208217516271 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1412
  oldLo := (34250000000000003 / 100000000000000000 : ℚ)
  oldHi := (34300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_846]
}

noncomputable def cell_11431 : Cell := { cellDefaults with
  domain := ⟨(24095000000000001 / 40000000000000000 : ℚ), (15062500000000001 / 25000000000000000 : ℚ)⟩
  r := (6944783631283 / 12500000000000 : ℚ)
  w := (13938940976123 / 10000000000000 : ℚ)
  center := (240975000000000013 / 400000000000000000 : ℚ)
  supportValue := (6854408951960127 / 20000000000000000 : ℚ)
  supportSlope := (-2684566509703179 / 2000000000000000 : ℚ)
  oldCenter := (6854408951960127 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1412
  oldLo := (34250000000000003 / 100000000000000000 : ℚ)
  oldHi := (34300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_846]
}

noncomputable def cell_11432 : Cell := { cellDefaults with
  domain := ⟨(15062500000000001 / 25000000000000000 : ℚ), (24105000000000001 / 40000000000000000 : ℚ)⟩
  r := (13882738957717 / 25000000000000 : ℚ)
  w := (13936121113527 / 10000000000000 : ℚ)
  center := (241025000000000013 / 400000000000000000 : ℚ)
  supportValue := (1714500389068813 / 5000000000000000 : ℚ)
  supportSlope := (-1343257023934169 / 1000000000000000 : ℚ)
  oldCenter := (1714500389068813 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1413
  oldLo := (34250000000000003 / 100000000000000000 : ℚ)
  oldHi := (34300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_846]
}

noncomputable def cell_11433 : Cell := { cellDefaults with
  domain := ⟨(24105000000000001 / 40000000000000000 : ℚ), (60275000000000001 / 100000000000000000 : ℚ)⟩
  r := (13882738957717 / 25000000000000 : ℚ)
  w := (13936121113527 / 10000000000000 : ℚ)
  center := (241075000000000007 / 400000000000000000 : ℚ)
  supportValue := (6854645328020793 / 20000000000000000 : ℚ)
  supportSlope := (-6708631504604683 / 5000000000000000 : ℚ)
  oldCenter := (6854645328020793 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1413
  oldLo := (34250000000000003 / 100000000000000000 : ℚ)
  oldHi := (34300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_846]
}

noncomputable def cell_11434 : Cell := { cellDefaults with
  domain := ⟨(60275000000000001 / 100000000000000000 : ℚ), (120574999999999999 / 200000000000000000 : ℚ)⟩
  r := (13882738957717 / 25000000000000 : ℚ)
  w := (13936121113527 / 10000000000000 : ℚ)
  center := (241125000000000001 / 400000000000000000 : ℚ)
  supportValue := (6851297714856981 / 20000000000000000 : ℚ)
  supportSlope := (-2680789363111879 / 2000000000000000 : ℚ)
  oldCenter := (6851297714856981 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1413
  oldHi := (34300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_845, piece_846]
}

noncomputable def cell_11435 : Cell := { cellDefaults with
  domain := ⟨(120574999999999999 / 200000000000000000 : ℚ), (30149999999999999 / 50000000000000000 : ℚ)⟩
  r := (13882738957717 / 25000000000000 : ℚ)
  w := (13936121113527 / 10000000000000 : ℚ)
  center := (48234999999999999 / 80000000000000000 : ℚ)
  supportValue := (1711985433327939 / 5000000000000000 : ℚ)
  supportSlope := (-13403572893617097 / 10000000000000000 : ℚ)
  oldCenter := (1711985433327939 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1413
  oldPieces := [piece_845]
}

noncomputable def cell_11436 : Cell := { cellDefaults with
  domain := ⟨(30149999999999999 / 50000000000000000 : ℚ), (120624999999999999 / 200000000000000000 : ℚ)⟩
  r := (1734489855541 / 3125000000000 : ℚ)
  w := (870831916113 / 625000000000 : ℚ)
  center := (48244999999999999 / 80000000000000000 : ℚ)
  supportValue := (3425764869265767 / 10000000000000000 : ℚ)
  supportSlope := (-669860053614721 / 500000000000000 : ℚ)
  oldCenter := (3425764869265767 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1414
  oldHi := (34300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_845, piece_846]
}

noncomputable def cell_11437 : Cell := { cellDefaults with
  domain := ⟨(120624999999999999 / 200000000000000000 : ℚ), (60325000000000001 / 100000000000000000 : ℚ)⟩
  r := (1734489855541 / 3125000000000 : ℚ)
  w := (870831916113 / 625000000000 : ℚ)
  center := (241275000000000001 / 400000000000000000 : ℚ)
  supportValue := (856021930185563 / 2500000000000000 : ℚ)
  supportSlope := (-669900557376399 / 500000000000000 : ℚ)
  oldCenter := (856021930185563 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1414
  oldPieces := [piece_845]
}

noncomputable def cell_11438 : Cell := { cellDefaults with
  domain := ⟨(60325000000000001 / 100000000000000000 : ℚ), (24135000000000001 / 40000000000000000 : ℚ)⟩
  r := (1734489855541 / 3125000000000 : ℚ)
  w := (870831916113 / 625000000000 : ℚ)
  center := (241325000000000007 / 400000000000000000 : ℚ)
  supportValue := (4278017406282833 / 12500000000000000 : ℚ)
  supportSlope := (-13382727549709543 / 10000000000000000 : ℚ)
  oldCenter := (4278017406282833 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1414
  oldPieces := [piece_845]
}

noncomputable def cell_11439 : Cell := { cellDefaults with
  domain := ⟨(24135000000000001 / 40000000000000000 : ℚ), (15087500000000001 / 25000000000000000 : ℚ)⟩
  r := (1734489855541 / 3125000000000 : ℚ)
  w := (870831916113 / 625000000000 : ℚ)
  center := (241375000000000013 / 400000000000000000 : ℚ)
  supportValue := (6841488860933037 / 20000000000000000 : ℚ)
  supportSlope := (-13368457634779847 / 10000000000000000 : ℚ)
  oldCenter := (6841488860933037 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1414
  oldLo := (427304469273743 / 1250000000000000 : ℚ)
  oldPieces := [piece_844, piece_845]
}

noncomputable def cell_11440 : Cell := { cellDefaults with
  domain := ⟨(15087500000000001 / 25000000000000000 : ℚ), (24145000000000001 / 40000000000000000 : ℚ)⟩
  r := (55476427664789 / 100000000000000 : ℚ)
  w := (13930510226339 / 10000000000000 : ℚ)
  center := (241425000000000013 / 400000000000000000 : ℚ)
  supportValue := (3422528463645283 / 10000000000000000 : ℚ)
  supportSlope := (-6688579039831579 / 5000000000000000 : ℚ)
  oldCenter := (3422528463645283 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1415
  oldPieces := [piece_845]
}

noncomputable def cell_11441 : Cell := { cellDefaults with
  domain := ⟨(24145000000000001 / 40000000000000000 : ℚ), (60375000000000001 / 100000000000000000 : ℚ)⟩
  r := (55476427664789 / 100000000000000 : ℚ)
  w := (13930510226339 / 10000000000000 : ℚ)
  center := (241475000000000007 / 400000000000000000 : ℚ)
  supportValue := (1710428635016503 / 5000000000000000 : ℚ)
  supportSlope := (-2672389371240023 / 2000000000000000 : ℚ)
  oldCenter := (1710428635016503 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1415
  oldPieces := [piece_845]
}

noncomputable def cell_11442 : Cell := { cellDefaults with
  domain := ⟨(60375000000000001 / 100000000000000000 : ℚ), (120774999999999999 / 200000000000000000 : ℚ)⟩
  r := (55476427664789 / 100000000000000 : ℚ)
  w := (13930510226339 / 10000000000000 : ℚ)
  center := (241525000000000001 / 400000000000000000 : ℚ)
  supportValue := (34191893417354363 / 100000000000000000 : ℚ)
  supportSlope := (-668169129387133 / 500000000000000 : ℚ)
  oldCenter := (34191893417354363 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1415
  oldLo := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_843, piece_844, piece_845]
}

noncomputable def cell_11443 : Cell := { cellDefaults with
  domain := ⟨(120774999999999999 / 200000000000000000 : ℚ), (30199999999999999 / 50000000000000000 : ℚ)⟩
  r := (55476427664789 / 100000000000000 : ℚ)
  w := (13930510226339 / 10000000000000 : ℚ)
  center := (48314999999999999 / 80000000000000000 : ℚ)
  supportValue := (683503490301099 / 2000000000000000 : ℚ)
  supportSlope := (-208568070846929 / 156250000000000 : ℚ)
  oldCenter := (683503490301099 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1415
  oldLo := (34150000000000003 / 100000000000000000 : ℚ)
  oldHi := (427304469273743 / 1250000000000000 : ℚ)
  oldPieces := [piece_843]
}

noncomputable def cell_11444 : Cell := { cellDefaults with
  domain := ⟨(30199999999999999 / 50000000000000000 : ℚ), (120824999999999999 / 200000000000000000 : ℚ)⟩
  r := (13862301936289 / 25000000000000 : ℚ)
  w := (13927710686669 / 10000000000000 : ℚ)
  center := (48324999999999999 / 80000000000000000 : ℚ)
  supportValue := (3419304946396729 / 10000000000000000 : ℚ)
  supportSlope := (-13356673568443787 / 10000000000000000 : ℚ)
  oldCenter := (3419304946396729 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1416
  oldLo := (427304469273743 / 1250000000000000 : ℚ)
  oldPieces := [piece_844, piece_845]
}

noncomputable def cell_11445 : Cell := { cellDefaults with
  domain := ⟨(120824999999999999 / 200000000000000000 : ℚ), (60425000000000001 / 100000000000000000 : ℚ)⟩
  r := (13862301936289 / 25000000000000 : ℚ)
  w := (13927710686669 / 10000000000000 : ℚ)
  center := (241675000000000001 / 400000000000000000 : ℚ)
  supportValue := (2136021092775579 / 6250000000000000 : ℚ)
  supportSlope := (-1334282428113571 / 1000000000000000 : ℚ)
  oldCenter := (2136021092775579 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1416
  oldLo := (34150000000000003 / 100000000000000000 : ℚ)
  oldHi := (34200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_843, piece_844]
}

noncomputable def cell_11446 : Cell := { cellDefaults with
  domain := ⟨(60425000000000001 / 100000000000000000 : ℚ), (24175000000000001 / 40000000000000000 : ℚ)⟩
  r := (13862301936289 / 25000000000000 : ℚ)
  w := (13927710686669 / 10000000000000 : ℚ)
  center := (241725000000000007 / 400000000000000000 : ℚ)
  supportValue := (34159668449729147 / 100000000000000000 : ℚ)
  supportSlope := (-6663819022162709 / 5000000000000000 : ℚ)
  oldCenter := (34159668449729147 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1416
  oldLo := (34150000000000003 / 100000000000000000 : ℚ)
  oldHi := (427304469273743 / 1250000000000000 : ℚ)
  oldPieces := [piece_843]
}

noncomputable def cell_11447 : Cell := { cellDefaults with
  domain := ⟨(24175000000000001 / 40000000000000000 : ℚ), (15112500000000001 / 25000000000000000 : ℚ)⟩
  r := (13862301936289 / 25000000000000 : ℚ)
  w := (13927710686669 / 10000000000000 : ℚ)
  center := (241775000000000013 / 400000000000000000 : ℚ)
  supportValue := (341430333906397 / 1000000000000000 : ℚ)
  supportSlope := (-2665603078646619 / 2000000000000000 : ℚ)
  oldCenter := (341430333906397 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1416
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (427304469273743 / 1250000000000000 : ℚ)
  oldPieces := [piece_842, piece_843]
}

noncomputable def cell_11448 : Cell := { cellDefaults with
  domain := ⟨(15112500000000001 / 25000000000000000 : ℚ), (24185000000000001 / 40000000000000000 : ℚ)⟩
  r := (6927752586673 / 12500000000000 : ℚ)
  w := (13924922892949 / 10000000000000 : ℚ)
  center := (241825000000000013 / 400000000000000000 : ℚ)
  supportValue := (3416080424214171 / 10000000000000000 : ℚ)
  supportSlope := (-13322094783136327 / 10000000000000000 : ℚ)
  oldCenter := (3416080424214171 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1417
  oldLo := (34150000000000003 / 100000000000000000 : ℚ)
  oldHi := (427304469273743 / 1250000000000000 : ℚ)
  oldPieces := [piece_843]
}

noncomputable def cell_11449 : Cell := { cellDefaults with
  domain := ⟨(24185000000000001 / 40000000000000000 : ℚ), (60475000000000001 / 100000000000000000 : ℚ)⟩
  r := (6927752586673 / 12500000000000 : ℚ)
  w := (13924922892949 / 10000000000000 : ℚ)
  center := (241875000000000007 / 400000000000000000 : ℚ)
  supportValue := (17072088776667707 / 50000000000000000 : ℚ)
  supportSlope := (-66606634974117 / 50000000000000 : ℚ)
  oldCenter := (17072088776667707 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1417
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (427304469273743 / 1250000000000000 : ℚ)
  oldPieces := [piece_842, piece_843]
}

theorem check_11400 : cell_11400.check = true := by
  decide +kernel

theorem check_11401 : cell_11401.check = true := by
  decide +kernel

theorem check_11402 : cell_11402.check = true := by
  decide +kernel

theorem check_11403 : cell_11403.check = true := by
  decide +kernel

theorem check_11404 : cell_11404.check = true := by
  decide +kernel

theorem check_11405 : cell_11405.check = true := by
  decide +kernel

theorem check_11406 : cell_11406.check = true := by
  decide +kernel

theorem check_11407 : cell_11407.check = true := by
  decide +kernel

theorem check_11408 : cell_11408.check = true := by
  decide +kernel

theorem check_11409 : cell_11409.check = true := by
  decide +kernel

theorem check_11410 : cell_11410.check = true := by
  decide +kernel

theorem check_11411 : cell_11411.check = true := by
  decide +kernel

theorem check_11412 : cell_11412.check = true := by
  decide +kernel

theorem check_11413 : cell_11413.check = true := by
  decide +kernel

theorem check_11414 : cell_11414.check = true := by
  decide +kernel

theorem check_11415 : cell_11415.check = true := by
  decide +kernel

theorem check_11416 : cell_11416.check = true := by
  decide +kernel

theorem check_11417 : cell_11417.check = true := by
  decide +kernel

theorem check_11418 : cell_11418.check = true := by
  decide +kernel

theorem check_11419 : cell_11419.check = true := by
  decide +kernel

theorem check_11420 : cell_11420.check = true := by
  decide +kernel

theorem check_11421 : cell_11421.check = true := by
  decide +kernel

theorem check_11422 : cell_11422.check = true := by
  decide +kernel

theorem check_11423 : cell_11423.check = true := by
  decide +kernel

theorem check_11424 : cell_11424.check = true := by
  decide +kernel

theorem check_11425 : cell_11425.check = true := by
  decide +kernel

theorem check_11426 : cell_11426.check = true := by
  decide +kernel

theorem check_11427 : cell_11427.check = true := by
  decide +kernel

theorem check_11428 : cell_11428.check = true := by
  decide +kernel

theorem check_11429 : cell_11429.check = true := by
  decide +kernel

theorem check_11430 : cell_11430.check = true := by
  decide +kernel

theorem check_11431 : cell_11431.check = true := by
  decide +kernel

theorem check_11432 : cell_11432.check = true := by
  decide +kernel

theorem check_11433 : cell_11433.check = true := by
  decide +kernel

theorem check_11434 : cell_11434.check = true := by
  decide +kernel

theorem check_11435 : cell_11435.check = true := by
  decide +kernel

theorem check_11436 : cell_11436.check = true := by
  decide +kernel

theorem check_11437 : cell_11437.check = true := by
  decide +kernel

theorem check_11438 : cell_11438.check = true := by
  decide +kernel

theorem check_11439 : cell_11439.check = true := by
  decide +kernel

theorem check_11440 : cell_11440.check = true := by
  decide +kernel

theorem check_11441 : cell_11441.check = true := by
  decide +kernel

theorem check_11442 : cell_11442.check = true := by
  decide +kernel

theorem check_11443 : cell_11443.check = true := by
  decide +kernel

theorem check_11444 : cell_11444.check = true := by
  decide +kernel

theorem check_11445 : cell_11445.check = true := by
  decide +kernel

theorem check_11446 : cell_11446.check = true := by
  decide +kernel

theorem check_11447 : cell_11447.check = true := by
  decide +kernel

theorem check_11448 : cell_11448.check = true := by
  decide +kernel

theorem check_11449 : cell_11449.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11400, cell_11401, cell_11402, cell_11403, cell_11404, cell_11405, cell_11406, cell_11407, cell_11408, cell_11409, cell_11410, cell_11411, cell_11412, cell_11413, cell_11414, cell_11415, cell_11416, cell_11417, cell_11418, cell_11419, cell_11420, cell_11421, cell_11422, cell_11423, cell_11424, cell_11425, cell_11426, cell_11427, cell_11428, cell_11429, cell_11430, cell_11431, cell_11432, cell_11433, cell_11434, cell_11435, cell_11436, cell_11437, cell_11438, cell_11439, cell_11440, cell_11441, cell_11442, cell_11443, cell_11444, cell_11445, cell_11446, cell_11447, cell_11448, cell_11449]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11400, check_11401, check_11402, check_11403, check_11404, check_11405, check_11406, check_11407, check_11408, check_11409, check_11410, check_11411, check_11412, check_11413, check_11414, check_11415, check_11416, check_11417, check_11418, check_11419, check_11420, check_11421, check_11422, check_11423, check_11424, check_11425, check_11426, check_11427, check_11428, check_11429, check_11430, check_11431, check_11432, check_11433, check_11434, check_11435, check_11436, check_11437, check_11438, check_11439, check_11440, check_11441, check_11442, check_11443, check_11444, check_11445, check_11446, check_11447, check_11448, check_11449, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0228

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0228
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0228
open AnalyticBounds.ExpressionCertificate

theorem linked_11400 : Linked cell_11400 pieces := by
  link_source cell_11400 with piece_1404 using piece_1404_mem, ⟨piece_851_mem, piece_852_mem⟩

theorem linked_11401 : Linked cell_11401 pieces := by
  link_source cell_11401 with piece_1404 using piece_1404_mem, piece_851_mem

theorem linked_11402 : Linked cell_11402 pieces := by
  link_source cell_11402 with piece_1404 using piece_1404_mem, piece_851_mem

theorem linked_11403 : Linked cell_11403 pieces := by
  link_source cell_11403 with piece_1404 using piece_1404_mem, ⟨piece_850_mem, piece_851_mem⟩

theorem linked_11404 : Linked cell_11404 pieces := by
  link_source cell_11404 with piece_1405 using piece_1405_mem, piece_851_mem

theorem linked_11405 : Linked cell_11405 pieces := by
  link_source cell_11405 with piece_1405 using piece_1405_mem, ⟨piece_850_mem, piece_851_mem⟩

theorem linked_11406 : Linked cell_11406 pieces := by
  link_source cell_11406 with piece_1405 using piece_1405_mem, piece_850_mem

theorem linked_11407 : Linked cell_11407 pieces := by
  link_source cell_11407 with piece_1405 using piece_1405_mem, piece_850_mem

theorem linked_11408 : Linked cell_11408 pieces := by
  link_source cell_11408 with piece_1406 using piece_1406_mem, piece_850_mem

theorem linked_11409 : Linked cell_11409 pieces := by
  link_source cell_11409 with piece_1406 using piece_1406_mem, piece_850_mem

theorem linked_11410 : Linked cell_11410 pieces := by
  link_source cell_11410 with piece_1406 using piece_1406_mem, ⟨piece_849_mem, piece_850_mem⟩

theorem linked_11411 : Linked cell_11411 pieces := by
  link_source cell_11411 with piece_1406 using piece_1406_mem, piece_849_mem

theorem linked_11412 : Linked cell_11412 pieces := by
  link_source cell_11412 with piece_1407 using piece_1407_mem, ⟨piece_849_mem, piece_850_mem⟩

theorem linked_11413 : Linked cell_11413 pieces := by
  link_source cell_11413 with piece_1407 using piece_1407_mem, piece_849_mem

theorem linked_11414 : Linked cell_11414 pieces := by
  link_source cell_11414 with piece_1407 using piece_1407_mem, piece_849_mem

theorem linked_11415 : Linked cell_11415 pieces := by
  link_source cell_11415 with piece_1407 using piece_1407_mem, ⟨piece_848_mem, piece_849_mem⟩

theorem linked_11416 : Linked cell_11416 pieces := by
  link_source cell_11416 with piece_1408 using piece_1408_mem, piece_849_mem

theorem linked_11417 : Linked cell_11417 pieces := by
  link_source cell_11417 with piece_1408 using piece_1408_mem, ⟨piece_848_mem, piece_849_mem⟩

theorem linked_11418 : Linked cell_11418 pieces := by
  link_source cell_11418 with piece_1408 using piece_1408_mem, piece_848_mem

theorem linked_11419 : Linked cell_11419 pieces := by
  link_source cell_11419 with piece_1408 using piece_1408_mem, piece_848_mem

theorem linked_11420 : Linked cell_11420 pieces := by
  link_source cell_11420 with piece_1409 using piece_1409_mem, piece_848_mem

theorem linked_11421 : Linked cell_11421 pieces := by
  link_source cell_11421 with piece_1409 using piece_1409_mem, piece_848_mem

theorem linked_11422 : Linked cell_11422 pieces := by
  link_source cell_11422 with piece_1409 using piece_1409_mem, ⟨piece_847_mem, piece_848_mem⟩

theorem linked_11423 : Linked cell_11423 pieces := by
  link_source cell_11423 with piece_1409 using piece_1409_mem, piece_847_mem

theorem linked_11424 : Linked cell_11424 pieces := by
  link_source cell_11424 with piece_1410 using piece_1410_mem, ⟨piece_847_mem, piece_848_mem⟩

theorem linked_11425 : Linked cell_11425 pieces := by
  link_source cell_11425 with piece_1410 using piece_1410_mem, piece_847_mem

theorem linked_11426 : Linked cell_11426 pieces := by
  link_source cell_11426 with piece_1411 using piece_1411_mem, piece_847_mem

theorem linked_11427 : Linked cell_11427 pieces := by
  link_source cell_11427 with piece_1411 using piece_1411_mem, ⟨piece_846_mem, piece_847_mem⟩

theorem linked_11428 : Linked cell_11428 pieces := by
  link_source cell_11428 with piece_1412 using piece_1412_mem, piece_847_mem

theorem linked_11429 : Linked cell_11429 pieces := by
  link_source cell_11429 with piece_1412 using piece_1412_mem, ⟨piece_846_mem, piece_847_mem⟩

theorem linked_11430 : Linked cell_11430 pieces := by
  link_source cell_11430 with piece_1412 using piece_1412_mem, piece_846_mem

theorem linked_11431 : Linked cell_11431 pieces := by
  link_source cell_11431 with piece_1412 using piece_1412_mem, piece_846_mem

theorem linked_11432 : Linked cell_11432 pieces := by
  link_source cell_11432 with piece_1413 using piece_1413_mem, piece_846_mem

theorem linked_11433 : Linked cell_11433 pieces := by
  link_source cell_11433 with piece_1413 using piece_1413_mem, piece_846_mem

theorem linked_11434 : Linked cell_11434 pieces := by
  link_source cell_11434 with piece_1413 using piece_1413_mem, ⟨piece_845_mem, piece_846_mem⟩

theorem linked_11435 : Linked cell_11435 pieces := by
  link_source cell_11435 with piece_1413 using piece_1413_mem, piece_845_mem

theorem linked_11436 : Linked cell_11436 pieces := by
  link_source cell_11436 with piece_1414 using piece_1414_mem, ⟨piece_845_mem, piece_846_mem⟩

theorem linked_11437 : Linked cell_11437 pieces := by
  link_source cell_11437 with piece_1414 using piece_1414_mem, piece_845_mem

theorem linked_11438 : Linked cell_11438 pieces := by
  link_source cell_11438 with piece_1414 using piece_1414_mem, piece_845_mem

theorem linked_11439 : Linked cell_11439 pieces := by
  link_source cell_11439 with piece_1414 using piece_1414_mem, ⟨piece_844_mem, piece_845_mem⟩

theorem linked_11440 : Linked cell_11440 pieces := by
  link_source cell_11440 with piece_1415 using piece_1415_mem, piece_845_mem

theorem linked_11441 : Linked cell_11441 pieces := by
  link_source cell_11441 with piece_1415 using piece_1415_mem, piece_845_mem

theorem linked_11442 : Linked cell_11442 pieces := by
  link_source cell_11442 with piece_1415 using piece_1415_mem, ⟨piece_843_mem, ⟨piece_844_mem, piece_845_mem⟩⟩

theorem linked_11443 : Linked cell_11443 pieces := by
  link_source cell_11443 with piece_1415 using piece_1415_mem, piece_843_mem

theorem linked_11444 : Linked cell_11444 pieces := by
  link_source cell_11444 with piece_1416 using piece_1416_mem, ⟨piece_844_mem, piece_845_mem⟩

theorem linked_11445 : Linked cell_11445 pieces := by
  link_source cell_11445 with piece_1416 using piece_1416_mem, ⟨piece_843_mem, piece_844_mem⟩

theorem linked_11446 : Linked cell_11446 pieces := by
  link_source cell_11446 with piece_1416 using piece_1416_mem, piece_843_mem

theorem linked_11447 : Linked cell_11447 pieces := by
  link_source cell_11447 with piece_1416 using piece_1416_mem, ⟨piece_842_mem, piece_843_mem⟩

theorem linked_11448 : Linked cell_11448 pieces := by
  link_source cell_11448 with piece_1417 using piece_1417_mem, piece_843_mem

theorem linked_11449 : Linked cell_11449 pieces := by
  link_source cell_11449 with piece_1417 using piece_1417_mem, ⟨piece_842_mem, piece_843_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0228.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0228.cells,List.forall_mem_cons]
  exact ⟨linked_11400, linked_11401, linked_11402, linked_11403, linked_11404, linked_11405, linked_11406, linked_11407, linked_11408, linked_11409, linked_11410, linked_11411, linked_11412, linked_11413, linked_11414, linked_11415, linked_11416, linked_11417, linked_11418, linked_11419, linked_11420, linked_11421, linked_11422, linked_11423, linked_11424, linked_11425, linked_11426, linked_11427, linked_11428, linked_11429, linked_11430, linked_11431, linked_11432, linked_11433, linked_11434, linked_11435, linked_11436, linked_11437, linked_11438, linked_11439, linked_11440, linked_11441, linked_11442, linked_11443, linked_11444, linked_11445, linked_11446, linked_11447, linked_11448, linked_11449, by simp⟩

theorem covered : covers (59850000000000003 / 100000000000000000 : ℚ) (60475000000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0228.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0228
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0229
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(60475000000000001 / 100000000000000000 : ℚ), (120974999999999999 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (55394865959897 / 100000000000000 : ℚ)
  w := (6961071333769 / 5000000000000 : ℚ)
  center := (241925000000000001 / 400000000000000000 : ℚ)
  supportValue := (213296927315827 / 625000000000000 : ℚ)
  supportSlope := (-13308618258928637 / 10000000000000000 : ℚ)
  oldCenter := (213296927315827 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1418
  oldLo := (16900000000000001 / 50000000000000000 : ℚ)
  oldHi := (16925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_836]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11450 : Cell := { cellDefaults with
  r := (6927752586673 / 12500000000000 : ℚ)
  w := (13924922892949 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1417
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

noncomputable def cell_11451 : Cell := { cellDefaults with
  domain := ⟨(120974999999999999 / 200000000000000000 : ℚ), (30249999999999999 / 50000000000000000 : ℚ)⟩
  r := (6927752586673 / 12500000000000 : ℚ)
  w := (13924922892949 / 10000000000000 : ℚ)
  center := (48394999999999999 / 80000000000000000 : ℚ)
  supportValue := (34110882077781307 / 100000000000000000 : ℚ)
  supportSlope := (-1329345733284963 / 1000000000000000 : ℚ)
  oldCenter := (34110882077781307 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1417
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

noncomputable def cell_11452 : Cell := { cellDefaults with
  domain := ⟨(30249999999999999 / 50000000000000000 : ℚ), (121024999999999999 / 200000000000000000 : ℚ)⟩
  center := (48404999999999999 / 80000000000000000 : ℚ)
  supportValue := (3412863514567441 / 10000000000000000 : ℚ)
  supportSlope := (-53212343448579 / 40000000000000 : ℚ)
  oldCenter := (3412863514567441 / 10000000000000000 : ℚ)
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

noncomputable def cell_11453 : Cell := { cellDefaults with
  domain := ⟨(121024999999999999 / 200000000000000000 : ℚ), (60525000000000001 / 100000000000000000 : ℚ)⟩
  center := (242075000000000001 / 400000000000000000 : ℚ)
  supportValue := (34112015761412423 / 100000000000000000 : ℚ)
  supportSlope := (-13287936134467953 / 10000000000000000 : ℚ)
  oldCenter := (34112015761412423 / 100000000000000000 : ℚ)
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

noncomputable def cell_11454 : Cell := { cellDefaults with
  domain := ⟨(60525000000000001 / 100000000000000000 : ℚ), (24215000000000001 / 40000000000000000 : ℚ)⟩
  center := (242125000000000007 / 400000000000000000 : ℚ)
  supportValue := (852385832026477 / 2500000000000000 : ℚ)
  supportSlope := (-13285972332644573 / 10000000000000000 : ℚ)
  oldCenter := (852385832026477 / 2500000000000000 : ℚ)
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841, piece_842]
}

noncomputable def cell_11455 : Cell := { cellDefaults with
  domain := ⟨(24215000000000001 / 40000000000000000 : ℚ), (15137500000000001 / 25000000000000000 : ℚ)⟩
  center := (242175000000000013 / 400000000000000000 : ℚ)
  supportValue := (3407880671586473 / 10000000000000000 : ℚ)
  supportSlope := (-6637282434595363 / 5000000000000000 : ℚ)
  oldCenter := (3407880671586473 / 10000000000000000 : ℚ)
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

noncomputable def cell_11456 : Cell := { cellDefaults with
  domain := ⟨(15137500000000001 / 25000000000000000 : ℚ), (24225000000000001 / 40000000000000000 : ℚ)⟩
  r := (5536773912631 / 10000000000000 : ℚ)
  w := (13919365339163 / 10000000000000 : ℚ)
  center := (242225000000000013 / 400000000000000000 : ℚ)
  supportValue := (426207073981629 / 1250000000000000 : ℚ)
  supportSlope := (-531172281091649 / 400000000000000 : ℚ)
  oldCenter := (426207073981629 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1419
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841, piece_842]
}

noncomputable def cell_11457 : Cell := { cellDefaults with
  domain := ⟨(24225000000000001 / 40000000000000000 : ℚ), (60575000000000001 / 100000000000000000 : ℚ)⟩
  r := (5536773912631 / 10000000000000 : ℚ)
  w := (13919365339163 / 10000000000000 : ℚ)
  center := (242275000000000007 / 400000000000000000 : ℚ)
  supportValue := (6815989246691817 / 20000000000000000 : ℚ)
  supportSlope := (-26538131429049 / 20000000000000 : ℚ)
  oldCenter := (6815989246691817 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1419
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

noncomputable def cell_11458 : Cell := { cellDefaults with
  domain := ⟨(60575000000000001 / 100000000000000000 : ℚ), (121174999999999999 / 200000000000000000 : ℚ)⟩
  r := (5536773912631 / 10000000000000 : ℚ)
  w := (13919365339163 / 10000000000000 : ℚ)
  center := (242325000000000001 / 400000000000000000 : ℚ)
  supportValue := (6812673871542787 / 20000000000000000 : ℚ)
  supportSlope := (-6626971338220229 / 5000000000000000 : ℚ)
  oldCenter := (6812673871542787 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1419
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

noncomputable def cell_11459 : Cell := { cellDefaults with
  domain := ⟨(121174999999999999 / 200000000000000000 : ℚ), (30299999999999999 / 50000000000000000 : ℚ)⟩
  r := (5536773912631 / 10000000000000 : ℚ)
  w := (13919365339163 / 10000000000000 : ℚ)
  center := (48474999999999999 / 80000000000000000 : ℚ)
  supportValue := (3404683107838709 / 10000000000000000 : ℚ)
  supportSlope := (-6625311592670341 / 5000000000000000 : ℚ)
  oldCenter := (3404683107838709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1419
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_840, piece_841]
}

noncomputable def cell_11460 : Cell := { cellDefaults with
  domain := ⟨(30299999999999999 / 50000000000000000 : ℚ), (121224999999999999 / 200000000000000000 : ℚ)⟩
  r := (27670322909563 / 50000000000000 : ℚ)
  w := (869787485383 / 625000000000 : ℚ)
  center := (48484999999999999 / 80000000000000000 : ℚ)
  supportValue := (1703224044825963 / 5000000000000000 : ℚ)
  supportSlope := (-1324843169915387 / 1000000000000000 : ℚ)
  oldCenter := (1703224044825963 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1420
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

noncomputable def cell_11461 : Cell := { cellDefaults with
  domain := ⟨(121224999999999999 / 200000000000000000 : ℚ), (60625000000000001 / 100000000000000000 : ℚ)⟩
  r := (27670322909563 / 50000000000000 : ℚ)
  w := (869787485383 / 625000000000 : ℚ)
  center := (242475000000000001 / 400000000000000000 : ℚ)
  supportValue := (8511987733310411 / 25000000000000000 : ℚ)
  supportSlope := (-264879559143129 / 200000000000000 : ℚ)
  oldCenter := (8511987733310411 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1420
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_840, piece_841]
}

noncomputable def cell_11462 : Cell := { cellDefaults with
  domain := ⟨(60625000000000001 / 100000000000000000 : ℚ), (24255000000000001 / 40000000000000000 : ℚ)⟩
  r := (27670322909563 / 50000000000000 : ℚ)
  w := (869787485383 / 625000000000 : ℚ)
  center := (242525000000000007 / 400000000000000000 : ℚ)
  supportValue := (1701568682158009 / 5000000000000000 : ℚ)
  supportSlope := (-1654398860099017 / 1250000000000000 : ℚ)
  oldCenter := (1701568682158009 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1420
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_840]
}

noncomputable def cell_11463 : Cell := { cellDefaults with
  domain := ⟨(24255000000000001 / 40000000000000000 : ℚ), (15162500000000001 / 25000000000000000 : ℚ)⟩
  r := (27670322909563 / 50000000000000 : ℚ)
  w := (869787485383 / 625000000000 : ℚ)
  center := (242575000000000013 / 400000000000000000 : ℚ)
  supportValue := (850370977339193 / 2500000000000000 : ℚ)
  supportSlope := (-6610047842156337 / 5000000000000000 : ℚ)
  oldCenter := (850370977339193 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1420
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_840]
}

noncomputable def cell_11464 : Cell := { cellDefaults with
  domain := ⟨(15162500000000001 / 25000000000000000 : ℚ), (24265000000000001 / 40000000000000000 : ℚ)⟩
  r := (55313582899057 / 100000000000000 : ℚ)
  w := (13913839087829 / 10000000000000 : ℚ)
  center := (242625000000000013 / 400000000000000000 : ℚ)
  supportValue := (212703024313393 / 625000000000000 : ℚ)
  supportSlope := (-330742407276969 / 250000000000000 : ℚ)
  oldCenter := (212703024313393 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1421
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_840]
}

noncomputable def cell_11465 : Cell := { cellDefaults with
  domain := ⟨(24265000000000001 / 40000000000000000 : ℚ), (60675000000000001 / 100000000000000000 : ℚ)⟩
  r := (55313582899057 / 100000000000000 : ℚ)
  w := (13913839087829 / 10000000000000 : ℚ)
  center := (242675000000000007 / 400000000000000000 : ℚ)
  supportValue := (34015956201816583 / 100000000000000000 : ℚ)
  supportSlope := (-13214612235429777 / 10000000000000000 : ℚ)
  oldCenter := (34015956201816583 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1421
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_840]
}

noncomputable def cell_11466 : Cell := { cellDefaults with
  domain := ⟨(60675000000000001 / 100000000000000000 : ℚ), (121374999999999999 / 200000000000000000 : ℚ)⟩
  r := (55313582899057 / 100000000000000 : ℚ)
  w := (13913839087829 / 10000000000000 : ℚ)
  center := (242725000000000001 / 400000000000000000 : ℚ)
  supportValue := (424993380058921 / 1250000000000000 : ℚ)
  supportSlope := (-6604328049083189 / 5000000000000000 : ℚ)
  oldCenter := (424993380058921 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1421
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839, piece_840]
}

noncomputable def cell_11467 : Cell := { cellDefaults with
  domain := ⟨(121374999999999999 / 200000000000000000 : ℚ), (30349999999999999 / 50000000000000000 : ℚ)⟩
  r := (55313582899057 / 100000000000000 : ℚ)
  w := (13913839087829 / 10000000000000 : ℚ)
  center := (48554999999999999 / 80000000000000000 : ℚ)
  supportValue := (3398293530964069 / 10000000000000000 : ℚ)
  supportSlope := (-6600738250993291 / 5000000000000000 : ℚ)
  oldCenter := (3398293530964069 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1421
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839]
}

noncomputable def cell_11468 : Cell := { cellDefaults with
  domain := ⟨(30349999999999999 / 50000000000000000 : ℚ), (30357960893854747 / 50000000000000000 : ℚ)⟩
  r := (55286549928943 / 100000000000000 : ℚ)
  w := (13911084247891 / 10000000000000 : ℚ)
  center := (30353980446927373 / 50000000000000000 : ℚ)
  supportValue := (3399831755859249 / 10000000000000000 : ℚ)
  supportSlope := (-330047920227653 / 250000000000000 : ℚ)
  oldCenter := (3399831755859249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1422
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839, piece_840]
}

noncomputable def cell_11469 : Cell := { cellDefaults with
  domain := ⟨(30357960893854747 / 50000000000000000 : ℚ), (6073184357541899 / 10000000000000000 : ℚ)⟩
  r := (55286549928943 / 100000000000000 : ℚ)
  w := (13911084247891 / 10000000000000 : ℚ)
  center := (30361941340782121 / 50000000000000000 : ℚ)
  supportValue := (4247162711819543 / 12500000000000000 : ℚ)
  supportSlope := (-1318982024506371 / 1000000000000000 : ℚ)
  oldCenter := (4247162711819543 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1422
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839]
}

noncomputable def cell_11470 : Cell := { cellDefaults with
  domain := ⟨(6073184357541899 / 10000000000000000 : ℚ), (60740921787709497 / 100000000000000000 : ℚ)⟩
  r := (55286549928943 / 100000000000000 : ℚ)
  w := (13911084247891 / 10000000000000 : ℚ)
  center := (121472765363128487 / 200000000000000000 : ℚ)
  supportValue := (2122550002231071 / 6250000000000000 : ℚ)
  supportSlope := (-6587393448673613 / 5000000000000000 : ℚ)
  oldCenter := (2122550002231071 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1423
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839]
}

noncomputable def cell_11471 : Cell := { cellDefaults with
  domain := ⟨(60740921787709497 / 100000000000000000 : ℚ), (15187500000000001 / 25000000000000000 : ℚ)⟩
  r := (55286549928943 / 100000000000000 : ℚ)
  w := (13911084247891 / 10000000000000 : ℚ)
  center := (121490921787709501 / 200000000000000000 : ℚ)
  supportValue := (33948866877249523 / 100000000000000000 : ℚ)
  supportSlope := (-6587037913677707 / 5000000000000000 : ℚ)
  oldCenter := (33948866877249523 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1423
  oldLo := (16950000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838, piece_839]
}

noncomputable def cell_11472 : Cell := { cellDefaults with
  domain := ⟨(15187500000000001 / 25000000000000000 : ℚ), (24305000000000001 / 40000000000000000 : ℚ)⟩
  r := (27629774766371 / 50000000000000 : ℚ)
  w := (13908340638673 / 10000000000000 : ℚ)
  center := (243025000000000013 / 400000000000000000 : ℚ)
  supportValue := (33968651991777193 / 100000000000000000 : ℚ)
  supportSlope := (-13175473464228007 / 10000000000000000 : ℚ)
  oldCenter := (33968651991777193 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1424
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839]
}

noncomputable def cell_11473 : Cell := { cellDefaults with
  domain := ⟨(24305000000000001 / 40000000000000000 : ℚ), (60775000000000001 / 100000000000000000 : ℚ)⟩
  r := (27629774766371 / 50000000000000 : ℚ)
  w := (13908340638673 / 10000000000000 : ℚ)
  center := (243075000000000007 / 400000000000000000 : ℚ)
  supportValue := (33952215785779083 / 100000000000000000 : ℚ)
  supportSlope := (-822921209422499 / 625000000000000 : ℚ)
  oldCenter := (33952215785779083 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1424
  oldLo := (16950000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838, piece_839]
}

noncomputable def cell_11474 : Cell := { cellDefaults with
  domain := ⟨(60775000000000001 / 100000000000000000 : ℚ), (121574999999999999 / 200000000000000000 : ℚ)⟩
  r := (27629774766371 / 50000000000000 : ℚ)
  w := (13908340638673 / 10000000000000 : ℚ)
  center := (243125000000000001 / 400000000000000000 : ℚ)
  supportValue := (1696786616905377 / 5000000000000000 : ℚ)
  supportSlope := (-13162467470328367 / 10000000000000000 : ℚ)
  oldCenter := (1696786616905377 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1424
  oldLo := (16950000000000001 / 50000000000000000 : ℚ)
  oldHi := (16975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838]
}

noncomputable def cell_11475 : Cell := { cellDefaults with
  domain := ⟨(121574999999999999 / 200000000000000000 : ℚ), (30399999999999999 / 50000000000000000 : ℚ)⟩
  r := (27629774766371 / 50000000000000 : ℚ)
  w := (13908340638673 / 10000000000000 : ℚ)
  center := (48634999999999999 / 80000000000000000 : ℚ)
  supportValue := (3391928864909743 / 10000000000000000 : ℚ)
  supportSlope := (-6573721089569673 / 5000000000000000 : ℚ)
  oldCenter := (3391928864909743 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1424
  oldLo := (16950000000000001 / 50000000000000000 : ℚ)
  oldHi := (16975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838]
}

noncomputable def cell_11476 : Cell := { cellDefaults with
  domain := ⟨(30399999999999999 / 50000000000000000 : ℚ), (121624999999999999 / 200000000000000000 : ℚ)⟩
  r := (55232577632677 / 100000000000000 : ℚ)
  w := (1738199855029 / 1250000000000 : ℚ)
  center := (48644999999999999 / 80000000000000000 : ℚ)
  supportValue := (16968413881768757 / 50000000000000000 : ℚ)
  supportSlope := (-13157011218448231 / 10000000000000000 : ℚ)
  oldCenter := (16968413881768757 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1425
  oldLo := (16950000000000001 / 50000000000000000 : ℚ)
  oldHi := (16975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838]
}

noncomputable def cell_11477 : Cell := { cellDefaults with
  domain := ⟨(121624999999999999 / 200000000000000000 : ℚ), (60825000000000001 / 100000000000000000 : ℚ)⟩
  r := (55232577632677 / 100000000000000 : ℚ)
  w := (1738199855029 / 1250000000000 : ℚ)
  center := (243275000000000001 / 400000000000000000 : ℚ)
  supportValue := (16960195444012763 / 50000000000000000 : ℚ)
  supportSlope := (-164274960268809 / 125000000000000 : ℚ)
  oldCenter := (16960195444012763 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1425
  oldLo := (16950000000000001 / 50000000000000000 : ℚ)
  oldHi := (16975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838]
}

noncomputable def cell_11478 : Cell := { cellDefaults with
  domain := ⟨(60825000000000001 / 100000000000000000 : ℚ), (24335000000000001 / 40000000000000000 : ℚ)⟩
  r := (55232577632677 / 100000000000000 : ℚ)
  w := (1738199855029 / 1250000000000 : ℚ)
  center := (243325000000000007 / 400000000000000000 : ℚ)
  supportValue := (33903996475574183 / 100000000000000000 : ℚ)
  supportSlope := (-52525803444781 / 40000000000000 : ℚ)
  oldCenter := (33903996475574183 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1425
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837, piece_838]
}

noncomputable def cell_11479 : Cell := { cellDefaults with
  domain := ⟨(24335000000000001 / 40000000000000000 : ℚ), (15212500000000001 / 25000000000000000 : ℚ)⟩
  r := (55232577632677 / 100000000000000 : ℚ)
  w := (1738199855029 / 1250000000000 : ℚ)
  center := (243375000000000013 / 400000000000000000 : ℚ)
  supportValue := (338875571233753 / 1000000000000000 : ℚ)
  supportSlope := (-1312909711084507 / 1000000000000000 : ℚ)
  oldCenter := (338875571233753 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1425
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

noncomputable def cell_11480 : Cell := { cellDefaults with
  domain := ⟨(15212500000000001 / 25000000000000000 : ℚ), (243450000000000011 / 400000000000000000 : ℚ)⟩
  r := (27602818281001 / 50000000000000 : ℚ)
  w := (13902866229443 / 10000000000000 : ℚ)
  center := (486850000000000027 / 800000000000000000 : ℚ)
  supportValue := (339050790260963 / 1000000000000000 : ℚ)
  supportSlope := (-6562435844271287 / 5000000000000000 : ℚ)
  oldCenter := (339050790260963 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1426
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837, piece_838]
}

noncomputable def cell_11481 : Cell := { cellDefaults with
  domain := ⟨(243450000000000011 / 400000000000000000 : ℚ), (121750000000000003 / 200000000000000000 : ℚ)⟩
  r := (27602818281001 / 50000000000000 : ℚ)
  w := (13902866229443 / 10000000000000 : ℚ)
  center := (486950000000000017 / 800000000000000000 : ℚ)
  supportValue := (6777729577665511 / 20000000000000000 : ℚ)
  supportSlope := (-131236602067921 / 100000000000000 : ℚ)
  oldCenter := (6777729577665511 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1426
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

noncomputable def cell_11482 : Cell := { cellDefaults with
  domain := ⟨(121750000000000003 / 200000000000000000 : ℚ), (243550000000000001 / 400000000000000000 : ℚ)⟩
  r := (27602818281001 / 50000000000000 : ℚ)
  w := (13902866229443 / 10000000000000 : ℚ)
  center := (487050000000000007 / 800000000000000000 : ℚ)
  supportValue := (423403158585479 / 1250000000000000 : ℚ)
  supportSlope := (-6554334711466703 / 5000000000000000 : ℚ)
  oldCenter := (423403158585479 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1426
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

noncomputable def cell_11483 : Cell := { cellDefaults with
  domain := ⟨(243550000000000001 / 400000000000000000 : ℚ), (60899999999999999 / 100000000000000000 : ℚ)⟩
  r := (27602818281001 / 50000000000000 : ℚ)
  w := (13902866229443 / 10000000000000 : ℚ)
  center := (487149999999999997 / 800000000000000000 : ℚ)
  supportValue := (33855899885210533 / 100000000000000000 : ℚ)
  supportSlope := (-13096160552496159 / 10000000000000000 : ℚ)
  oldCenter := (33855899885210533 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1426
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_836, piece_837]
}

noncomputable def cell_11484 : Cell := { cellDefaults with
  domain := ⟨(60899999999999999 / 100000000000000000 : ℚ), (243650000000000001 / 400000000000000000 : ℚ)⟩
  r := (55178729928359 / 100000000000000 : ℚ)
  w := (1737518050377 / 1250000000000 : ℚ)
  center := (487249999999999997 / 800000000000000000 : ℚ)
  supportValue := (3387331647477463 / 10000000000000000 : ℚ)
  supportSlope := (-2620644246652497 / 2000000000000000 : ℚ)
  oldCenter := (3387331647477463 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1427
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

noncomputable def cell_11485 : Cell := { cellDefaults with
  domain := ⟨(243650000000000001 / 400000000000000000 : ℚ), (121850000000000003 / 200000000000000000 : ℚ)⟩
  r := (55178729928359 / 100000000000000 : ℚ)
  w := (1737518050377 / 1250000000000 : ℚ)
  center := (487350000000000007 / 800000000000000000 : ℚ)
  supportValue := (33856970477160087 / 100000000000000000 : ℚ)
  supportSlope := (-523584021892579 / 400000000000000 : ℚ)
  oldCenter := (33856970477160087 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1427
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_836, piece_837]
}

noncomputable def cell_11486 : Cell := { cellDefaults with
  domain := ⟨(121850000000000003 / 200000000000000000 : ℚ), (243750000000000011 / 400000000000000000 : ℚ)⟩
  r := (55178729928359 / 100000000000000 : ℚ)
  w := (1737518050377 / 1250000000000 : ℚ)
  center := (487450000000000017 / 800000000000000000 : ℚ)
  supportValue := (105751823147147 / 312500000000000 : ℚ)
  supportSlope := (-13090456323155777 / 10000000000000000 : ℚ)
  oldCenter := (105751823147147 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1427
  oldPieces := [piece_836]
}

noncomputable def cell_11487 : Cell := { cellDefaults with
  domain := ⟨(243750000000000011 / 400000000000000000 : ℚ), (15237500000000001 / 25000000000000000 : ℚ)⟩
  r := (55178729928359 / 100000000000000 : ℚ)
  w := (1737518050377 / 1250000000000 : ℚ)
  center := (487550000000000027 / 800000000000000000 : ℚ)
  supportValue := (211401435628233 / 625000000000000 : ℚ)
  supportSlope := (-13075481477268027 / 10000000000000000 : ℚ)
  oldCenter := (211401435628233 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1427
  oldPieces := [piece_836]
}

noncomputable def cell_11488 : Cell := { cellDefaults with
  domain := ⟨(15237500000000001 / 25000000000000000 : ℚ), (243850000000000011 / 400000000000000000 : ℚ)⟩
  r := (55151848711459 / 100000000000000 : ℚ)
  w := (3474355729757 / 2500000000000 : ℚ)
  center := (487650000000000027 / 800000000000000000 : ℚ)
  supportValue := (33841660625893333 / 100000000000000000 : ℚ)
  supportSlope := (-2617007213841211 / 2000000000000000 : ℚ)
  oldCenter := (33841660625893333 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1428
  oldPieces := [piece_836]
}

noncomputable def cell_11489 : Cell := { cellDefaults with
  domain := ⟨(243850000000000011 / 400000000000000000 : ℚ), (121950000000000003 / 200000000000000000 : ℚ)⟩
  r := (55151848711459 / 100000000000000 : ℚ)
  w := (3474355729757 / 2500000000000 : ℚ)
  center := (487750000000000017 / 800000000000000000 : ℚ)
  supportValue := (3382531368775931 / 10000000000000000 : ℚ)
  supportSlope := (-653503611067817 / 500000000000000 : ℚ)
  oldCenter := (3382531368775931 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1428
  oldPieces := [piece_836]
}

noncomputable def cell_11490 : Cell := { cellDefaults with
  domain := ⟨(121950000000000003 / 200000000000000000 : ℚ), (243950000000000001 / 400000000000000000 : ℚ)⟩
  r := (55151848711459 / 100000000000000 : ℚ)
  w := (3474355729757 / 2500000000000 : ℚ)
  center := (487850000000000007 / 800000000000000000 : ℚ)
  supportValue := (211306158854347 / 625000000000000 : ℚ)
  supportSlope := (-815948041731433 / 625000000000000 : ℚ)
  oldCenter := (211306158854347 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1428
  oldPieces := [piece_836]
}

noncomputable def cell_11491 : Cell := { cellDefaults with
  domain := ⟨(243950000000000001 / 400000000000000000 : ℚ), (60999999999999999 / 100000000000000000 : ℚ)⟩
  r := (55151848711459 / 100000000000000 : ℚ)
  w := (3474355729757 / 2500000000000 : ℚ)
  center := (487949999999999997 / 800000000000000000 : ℚ)
  supportValue := (264005388827133 / 781250000000000 : ℚ)
  supportSlope := (-13056542757860141 / 10000000000000000 : ℚ)
  oldCenter := (264005388827133 / 781250000000000 : ℚ)
  newCoefficients := coefficients_1428
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835, piece_836]
}

noncomputable def cell_11492 : Cell := { cellDefaults with
  domain := ⟨(60999999999999999 / 100000000000000000 : ℚ), (244050000000000001 / 400000000000000000 : ℚ)⟩
  r := (2205000029889 / 4000000000000 : ℚ)
  w := (3473678176777 / 2500000000000 : ℚ)
  center := (488049999999999997 / 800000000000000000 : ℚ)
  supportValue := (676200850512677 / 2000000000000000 : ℚ)
  supportSlope := (-1304974816539553 / 1000000000000000 : ℚ)
  oldCenter := (676200850512677 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1429
  oldPieces := [piece_836]
}

noncomputable def cell_11493 : Cell := { cellDefaults with
  domain := ⟨(244050000000000001 / 400000000000000000 : ℚ), (122050000000000003 / 200000000000000000 : ℚ)⟩
  r := (2205000029889 / 4000000000000 : ℚ)
  w := (3473678176777 / 2500000000000 : ℚ)
  center := (488150000000000007 / 800000000000000000 : ℚ)
  supportValue := (3379375504197433 / 10000000000000000 : ℚ)
  supportSlope := (-3262504798417727 / 2500000000000000 : ℚ)
  oldCenter := (3379375504197433 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1429
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835, piece_836]
}

noncomputable def cell_11494 : Cell := { cellDefaults with
  domain := ⟨(122050000000000003 / 200000000000000000 : ℚ), (244150000000000011 / 400000000000000000 : ℚ)⟩
  r := (2205000029889 / 4000000000000 : ℚ)
  w := (3473678176777 / 2500000000000 : ℚ)
  center := (488250000000000017 / 800000000000000000 : ℚ)
  supportValue := (844435643160543 / 2500000000000000 : ℚ)
  supportSlope := (-13037067818169963 / 10000000000000000 : ℚ)
  oldCenter := (844435643160543 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1429
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldHi := (16900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835]
}

noncomputable def cell_11495 : Cell := { cellDefaults with
  domain := ⟨(244150000000000011 / 400000000000000000 : ℚ), (15262500000000001 / 25000000000000000 : ℚ)⟩
  r := (2205000029889 / 4000000000000 : ℚ)
  w := (3473678176777 / 2500000000000 : ℚ)
  center := (488350000000000027 / 800000000000000000 : ℚ)
  supportValue := (1688056934411573 / 5000000000000000 : ℚ)
  supportSlope := (-13022200471358523 / 10000000000000000 : ℚ)
  oldCenter := (1688056934411573 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1429
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldHi := (16900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835]
}

noncomputable def cell_11496 : Cell := { cellDefaults with
  domain := ⟨(15262500000000001 / 25000000000000000 : ℚ), (244250000000000011 / 400000000000000000 : ℚ)⟩
  r := (55098184245043 / 100000000000000 : ℚ)
  w := (27132833863 / 19531250000 : ℚ)
  center := (488450000000000027 / 800000000000000000 : ℚ)
  supportValue := (168892360611257 / 500000000000000 : ℚ)
  supportSlope := (-1303165524879321 / 1000000000000000 : ℚ)
  oldCenter := (168892360611257 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1430
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldHi := (16900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835]
}

noncomputable def cell_11497 : Cell := { cellDefaults with
  domain := ⟨(244250000000000011 / 400000000000000000 : ℚ), (122150000000000003 / 200000000000000000 : ℚ)⟩
  r := (55098184245043 / 100000000000000 : ℚ)
  w := (27132833863 / 19531250000 : ℚ)
  center := (488550000000000017 / 800000000000000000 : ℚ)
  supportValue := (422027398036149 / 1250000000000000 : ℚ)
  supportSlope := (-13016798898874051 / 10000000000000000 : ℚ)
  oldCenter := (422027398036149 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1430
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldHi := (16900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835]
}

noncomputable def cell_11498 : Cell := { cellDefaults with
  domain := ⟨(122150000000000003 / 200000000000000000 : ℚ), (244350000000000001 / 400000000000000000 : ℚ)⟩
  r := (55098184245043 / 100000000000000 : ℚ)
  w := (27132833863 / 19531250000 : ℚ)
  center := (488650000000000007 / 800000000000000000 : ℚ)
  supportValue := (3374594833901679 / 10000000000000000 : ℚ)
  supportSlope := (-3253711728468437 / 2500000000000000 : ℚ)
  oldCenter := (3374594833901679 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1430
  oldLo := (16850000000000001 / 50000000000000000 : ℚ)
  oldHi := (16900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_834, piece_835]
}

noncomputable def cell_11499 : Cell := { cellDefaults with
  domain := ⟨(244350000000000001 / 400000000000000000 : ℚ), (61099999999999999 / 100000000000000000 : ℚ)⟩
  r := (55098184245043 / 100000000000000 : ℚ)
  w := (27132833863 / 19531250000 : ℚ)
  center := (488749999999999997 / 800000000000000000 : ℚ)
  supportValue := (843241503260747 / 2500000000000000 : ℚ)
  supportSlope := (-13004218686304603 / 10000000000000000 : ℚ)
  oldCenter := (843241503260747 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1430
  oldLo := (16850000000000001 / 50000000000000000 : ℚ)
  oldHi := (16875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_834]
}

theorem check_11450 : cell_11450.check = true := by
  decide +kernel

theorem check_11451 : cell_11451.check = true := by
  decide +kernel

theorem check_11452 : cell_11452.check = true := by
  decide +kernel

theorem check_11453 : cell_11453.check = true := by
  decide +kernel

theorem check_11454 : cell_11454.check = true := by
  decide +kernel

theorem check_11455 : cell_11455.check = true := by
  decide +kernel

theorem check_11456 : cell_11456.check = true := by
  decide +kernel

theorem check_11457 : cell_11457.check = true := by
  decide +kernel

theorem check_11458 : cell_11458.check = true := by
  decide +kernel

theorem check_11459 : cell_11459.check = true := by
  decide +kernel

theorem check_11460 : cell_11460.check = true := by
  decide +kernel

theorem check_11461 : cell_11461.check = true := by
  decide +kernel

theorem check_11462 : cell_11462.check = true := by
  decide +kernel

theorem check_11463 : cell_11463.check = true := by
  decide +kernel

theorem check_11464 : cell_11464.check = true := by
  decide +kernel

theorem check_11465 : cell_11465.check = true := by
  decide +kernel

theorem check_11466 : cell_11466.check = true := by
  decide +kernel

theorem check_11467 : cell_11467.check = true := by
  decide +kernel

theorem check_11468 : cell_11468.check = true := by
  decide +kernel

theorem check_11469 : cell_11469.check = true := by
  decide +kernel

theorem check_11470 : cell_11470.check = true := by
  decide +kernel

theorem check_11471 : cell_11471.check = true := by
  decide +kernel

theorem check_11472 : cell_11472.check = true := by
  decide +kernel

theorem check_11473 : cell_11473.check = true := by
  decide +kernel

theorem check_11474 : cell_11474.check = true := by
  decide +kernel

theorem check_11475 : cell_11475.check = true := by
  decide +kernel

theorem check_11476 : cell_11476.check = true := by
  decide +kernel

theorem check_11477 : cell_11477.check = true := by
  decide +kernel

theorem check_11478 : cell_11478.check = true := by
  decide +kernel

theorem check_11479 : cell_11479.check = true := by
  decide +kernel

theorem check_11480 : cell_11480.check = true := by
  decide +kernel

theorem check_11481 : cell_11481.check = true := by
  decide +kernel

theorem check_11482 : cell_11482.check = true := by
  decide +kernel

theorem check_11483 : cell_11483.check = true := by
  decide +kernel

theorem check_11484 : cell_11484.check = true := by
  decide +kernel

theorem check_11485 : cell_11485.check = true := by
  decide +kernel

theorem check_11486 : cell_11486.check = true := by
  decide +kernel

theorem check_11487 : cell_11487.check = true := by
  decide +kernel

theorem check_11488 : cell_11488.check = true := by
  decide +kernel

theorem check_11489 : cell_11489.check = true := by
  decide +kernel

theorem check_11490 : cell_11490.check = true := by
  decide +kernel

theorem check_11491 : cell_11491.check = true := by
  decide +kernel

theorem check_11492 : cell_11492.check = true := by
  decide +kernel

theorem check_11493 : cell_11493.check = true := by
  decide +kernel

theorem check_11494 : cell_11494.check = true := by
  decide +kernel

theorem check_11495 : cell_11495.check = true := by
  decide +kernel

theorem check_11496 : cell_11496.check = true := by
  decide +kernel

theorem check_11497 : cell_11497.check = true := by
  decide +kernel

theorem check_11498 : cell_11498.check = true := by
  decide +kernel

theorem check_11499 : cell_11499.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11450, cell_11451, cell_11452, cell_11453, cell_11454, cell_11455, cell_11456, cell_11457, cell_11458, cell_11459, cell_11460, cell_11461, cell_11462, cell_11463, cell_11464, cell_11465, cell_11466, cell_11467, cell_11468, cell_11469, cell_11470, cell_11471, cell_11472, cell_11473, cell_11474, cell_11475, cell_11476, cell_11477, cell_11478, cell_11479, cell_11480, cell_11481, cell_11482, cell_11483, cell_11484, cell_11485, cell_11486, cell_11487, cell_11488, cell_11489, cell_11490, cell_11491, cell_11492, cell_11493, cell_11494, cell_11495, cell_11496, cell_11497, cell_11498, cell_11499]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11450, check_11451, check_11452, check_11453, check_11454, check_11455, check_11456, check_11457, check_11458, check_11459, check_11460, check_11461, check_11462, check_11463, check_11464, check_11465, check_11466, check_11467, check_11468, check_11469, check_11470, check_11471, check_11472, check_11473, check_11474, check_11475, check_11476, check_11477, check_11478, check_11479, check_11480, check_11481, check_11482, check_11483, check_11484, check_11485, check_11486, check_11487, check_11488, check_11489, check_11490, check_11491, check_11492, check_11493, check_11494, check_11495, check_11496, check_11497, check_11498, check_11499, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0229

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0229
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0229
open AnalyticBounds.ExpressionCertificate

theorem linked_11450 : Linked cell_11450 pieces := by
  link_source cell_11450 with piece_1417 using piece_1417_mem, piece_842_mem

theorem linked_11451 : Linked cell_11451 pieces := by
  link_source cell_11451 with piece_1417 using piece_1417_mem, piece_842_mem

theorem linked_11452 : Linked cell_11452 pieces := by
  link_source cell_11452 with piece_1418 using piece_1418_mem, piece_842_mem

theorem linked_11453 : Linked cell_11453 pieces := by
  link_source cell_11453 with piece_1418 using piece_1418_mem, piece_842_mem

theorem linked_11454 : Linked cell_11454 pieces := by
  link_source cell_11454 with piece_1418 using piece_1418_mem, ⟨piece_841_mem, piece_842_mem⟩

theorem linked_11455 : Linked cell_11455 pieces := by
  link_source cell_11455 with piece_1418 using piece_1418_mem, piece_841_mem

theorem linked_11456 : Linked cell_11456 pieces := by
  link_source cell_11456 with piece_1419 using piece_1419_mem, ⟨piece_841_mem, piece_842_mem⟩

theorem linked_11457 : Linked cell_11457 pieces := by
  link_source cell_11457 with piece_1419 using piece_1419_mem, piece_841_mem

theorem linked_11458 : Linked cell_11458 pieces := by
  link_source cell_11458 with piece_1419 using piece_1419_mem, piece_841_mem

theorem linked_11459 : Linked cell_11459 pieces := by
  link_source cell_11459 with piece_1419 using piece_1419_mem, ⟨piece_840_mem, piece_841_mem⟩

theorem linked_11460 : Linked cell_11460 pieces := by
  link_source cell_11460 with piece_1420 using piece_1420_mem, piece_841_mem

theorem linked_11461 : Linked cell_11461 pieces := by
  link_source cell_11461 with piece_1420 using piece_1420_mem, ⟨piece_840_mem, piece_841_mem⟩

theorem linked_11462 : Linked cell_11462 pieces := by
  link_source cell_11462 with piece_1420 using piece_1420_mem, piece_840_mem

theorem linked_11463 : Linked cell_11463 pieces := by
  link_source cell_11463 with piece_1420 using piece_1420_mem, piece_840_mem

theorem linked_11464 : Linked cell_11464 pieces := by
  link_source cell_11464 with piece_1421 using piece_1421_mem, piece_840_mem

theorem linked_11465 : Linked cell_11465 pieces := by
  link_source cell_11465 with piece_1421 using piece_1421_mem, piece_840_mem

theorem linked_11466 : Linked cell_11466 pieces := by
  link_source cell_11466 with piece_1421 using piece_1421_mem, ⟨piece_839_mem, piece_840_mem⟩

theorem linked_11467 : Linked cell_11467 pieces := by
  link_source cell_11467 with piece_1421 using piece_1421_mem, piece_839_mem

theorem linked_11468 : Linked cell_11468 pieces := by
  link_source cell_11468 with piece_1422 using piece_1422_mem, ⟨piece_839_mem, piece_840_mem⟩

theorem linked_11469 : Linked cell_11469 pieces := by
  link_source cell_11469 with piece_1422 using piece_1422_mem, piece_839_mem

theorem linked_11470 : Linked cell_11470 pieces := by
  link_source cell_11470 with piece_1423 using piece_1423_mem, piece_839_mem

theorem linked_11471 : Linked cell_11471 pieces := by
  link_source cell_11471 with piece_1423 using piece_1423_mem, ⟨piece_838_mem, piece_839_mem⟩

theorem linked_11472 : Linked cell_11472 pieces := by
  link_source cell_11472 with piece_1424 using piece_1424_mem, piece_839_mem

theorem linked_11473 : Linked cell_11473 pieces := by
  link_source cell_11473 with piece_1424 using piece_1424_mem, ⟨piece_838_mem, piece_839_mem⟩

theorem linked_11474 : Linked cell_11474 pieces := by
  link_source cell_11474 with piece_1424 using piece_1424_mem, piece_838_mem

theorem linked_11475 : Linked cell_11475 pieces := by
  link_source cell_11475 with piece_1424 using piece_1424_mem, piece_838_mem

theorem linked_11476 : Linked cell_11476 pieces := by
  link_source cell_11476 with piece_1425 using piece_1425_mem, piece_838_mem

theorem linked_11477 : Linked cell_11477 pieces := by
  link_source cell_11477 with piece_1425 using piece_1425_mem, piece_838_mem

theorem linked_11478 : Linked cell_11478 pieces := by
  link_source cell_11478 with piece_1425 using piece_1425_mem, ⟨piece_837_mem, piece_838_mem⟩

theorem linked_11479 : Linked cell_11479 pieces := by
  link_source cell_11479 with piece_1425 using piece_1425_mem, piece_837_mem

theorem linked_11480 : Linked cell_11480 pieces := by
  link_source cell_11480 with piece_1426 using piece_1426_mem, ⟨piece_837_mem, piece_838_mem⟩

theorem linked_11481 : Linked cell_11481 pieces := by
  link_source cell_11481 with piece_1426 using piece_1426_mem, piece_837_mem

theorem linked_11482 : Linked cell_11482 pieces := by
  link_source cell_11482 with piece_1426 using piece_1426_mem, piece_837_mem

theorem linked_11483 : Linked cell_11483 pieces := by
  link_source cell_11483 with piece_1426 using piece_1426_mem, ⟨piece_836_mem, piece_837_mem⟩

theorem linked_11484 : Linked cell_11484 pieces := by
  link_source cell_11484 with piece_1427 using piece_1427_mem, piece_837_mem

theorem linked_11485 : Linked cell_11485 pieces := by
  link_source cell_11485 with piece_1427 using piece_1427_mem, ⟨piece_836_mem, piece_837_mem⟩

theorem linked_11486 : Linked cell_11486 pieces := by
  link_source cell_11486 with piece_1427 using piece_1427_mem, piece_836_mem

theorem linked_11487 : Linked cell_11487 pieces := by
  link_source cell_11487 with piece_1427 using piece_1427_mem, piece_836_mem

theorem linked_11488 : Linked cell_11488 pieces := by
  link_source cell_11488 with piece_1428 using piece_1428_mem, piece_836_mem

theorem linked_11489 : Linked cell_11489 pieces := by
  link_source cell_11489 with piece_1428 using piece_1428_mem, piece_836_mem

theorem linked_11490 : Linked cell_11490 pieces := by
  link_source cell_11490 with piece_1428 using piece_1428_mem, piece_836_mem

theorem linked_11491 : Linked cell_11491 pieces := by
  link_source cell_11491 with piece_1428 using piece_1428_mem, ⟨piece_835_mem, piece_836_mem⟩

theorem linked_11492 : Linked cell_11492 pieces := by
  link_source cell_11492 with piece_1429 using piece_1429_mem, piece_836_mem

theorem linked_11493 : Linked cell_11493 pieces := by
  link_source cell_11493 with piece_1429 using piece_1429_mem, ⟨piece_835_mem, piece_836_mem⟩

theorem linked_11494 : Linked cell_11494 pieces := by
  link_source cell_11494 with piece_1429 using piece_1429_mem, piece_835_mem

theorem linked_11495 : Linked cell_11495 pieces := by
  link_source cell_11495 with piece_1429 using piece_1429_mem, piece_835_mem

theorem linked_11496 : Linked cell_11496 pieces := by
  link_source cell_11496 with piece_1430 using piece_1430_mem, piece_835_mem

theorem linked_11497 : Linked cell_11497 pieces := by
  link_source cell_11497 with piece_1430 using piece_1430_mem, piece_835_mem

theorem linked_11498 : Linked cell_11498 pieces := by
  link_source cell_11498 with piece_1430 using piece_1430_mem, ⟨piece_834_mem, piece_835_mem⟩

theorem linked_11499 : Linked cell_11499 pieces := by
  link_source cell_11499 with piece_1430 using piece_1430_mem, piece_834_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0229.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0229.cells,List.forall_mem_cons]
  exact ⟨linked_11450, linked_11451, linked_11452, linked_11453, linked_11454, linked_11455, linked_11456, linked_11457, linked_11458, linked_11459, linked_11460, linked_11461, linked_11462, linked_11463, linked_11464, linked_11465, linked_11466, linked_11467, linked_11468, linked_11469, linked_11470, linked_11471, linked_11472, linked_11473, linked_11474, linked_11475, linked_11476, linked_11477, linked_11478, linked_11479, linked_11480, linked_11481, linked_11482, linked_11483, linked_11484, linked_11485, linked_11486, linked_11487, linked_11488, linked_11489, linked_11490, linked_11491, linked_11492, linked_11493, linked_11494, linked_11495, linked_11496, linked_11497, linked_11498, linked_11499, by simp⟩

theorem covered : covers (60475000000000001 / 100000000000000000 : ℚ) (61099999999999999 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0229.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0229
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0230
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(61099999999999999 / 100000000000000000 : ℚ), (244450000000000001 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (55071395781789 / 100000000000000 : ℚ)
  w := (3472327868683 / 2500000000000 : ℚ)
  center := (488849999999999997 / 800000000000000000 : ℚ)
  supportValue := (3374700092051869 / 10000000000000000 : ℚ)
  supportSlope := (-130083469977991 / 100000000000000 : ℚ)
  oldCenter := (3374700092051869 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1431
  oldLo := (16775000000000001 / 50000000000000000 : ℚ)
  oldHi := (16800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_830]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11500 : Cell := { cellDefaults with
  oldLo := (16850000000000001 / 50000000000000000 : ℚ)
  oldHi := (16900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_834, piece_835]
}

noncomputable def cell_11501 : Cell := { cellDefaults with
  domain := ⟨(244450000000000001 / 400000000000000000 : ℚ), (122250000000000003 / 200000000000000000 : ℚ)⟩
  center := (488950000000000007 / 800000000000000000 : ℚ)
  supportValue := (6746143888525341 / 20000000000000000 : ℚ)
  supportSlope := (-12998839020735653 / 10000000000000000 : ℚ)
  oldCenter := (6746143888525341 / 20000000000000000 : ℚ)
  oldLo := (16850000000000001 / 50000000000000000 : ℚ)
  oldHi := (16875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_834]
}

noncomputable def cell_11502 : Cell := { cellDefaults with
  domain := ⟨(122250000000000003 / 200000000000000000 : ℚ), (244550000000000011 / 400000000000000000 : ℚ)⟩
  center := (489050000000000017 / 800000000000000000 : ℚ)
  supportValue := (84286200428821 / 250000000000000 : ℚ)
  supportSlope := (-12984001942494083 / 10000000000000000 : ℚ)
  oldCenter := (84286200428821 / 250000000000000 : ℚ)
  oldLo := (16850000000000001 / 50000000000000000 : ℚ)
  oldHi := (16875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_834]
}

noncomputable def cell_11503 : Cell := { cellDefaults with
  domain := ⟨(244550000000000011 / 400000000000000000 : ℚ), (15287500000000001 / 25000000000000000 : ℚ)⟩
  center := (489150000000000027 / 800000000000000000 : ℚ)
  supportValue := (33698280676149167 / 100000000000000000 : ℚ)
  supportSlope := (-3244914332995683 / 2500000000000000 : ℚ)
  oldCenter := (33698280676149167 / 100000000000000000 : ℚ)
  oldLo := (16825000000000001 / 50000000000000000 : ℚ)
  oldHi := (16875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_833, piece_834]
}

noncomputable def cell_11504 : Cell := { cellDefaults with
  domain := ⟨(15287500000000001 / 25000000000000000 : ℚ), (244650000000000011 / 400000000000000000 : ℚ)⟩
  r := (5504464078703 / 10000000000000 : ℚ)
  w := (3471656119897 / 2500000000000 : ℚ)
  center := (489250000000000027 / 800000000000000000 : ℚ)
  supportValue := (16857754840140207 / 50000000000000000 : ℚ)
  supportSlope := (-12978608799542233 / 10000000000000000 : ℚ)
  oldCenter := (16857754840140207 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1432
  oldLo := (16850000000000001 / 50000000000000000 : ℚ)
  oldHi := (16875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_834]
}

noncomputable def cell_11505 : Cell := { cellDefaults with
  domain := ⟨(244650000000000011 / 400000000000000000 : ℚ), (122350000000000003 / 200000000000000000 : ℚ)⟩
  r := (5504464078703 / 10000000000000 : ℚ)
  w := (3471656119897 / 2500000000000 : ℚ)
  center := (489350000000000017 / 800000000000000000 : ℚ)
  supportValue := (33699318294309333 / 100000000000000000 : ℚ)
  supportSlope := (-6486588576791279 / 5000000000000000 : ℚ)
  oldCenter := (33699318294309333 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1432
  oldLo := (16825000000000001 / 50000000000000000 : ℚ)
  oldHi := (16875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_833, piece_834]
}

noncomputable def cell_11506 : Cell := { cellDefaults with
  domain := ⟨(122350000000000003 / 200000000000000000 : ℚ), (244750000000000001 / 400000000000000000 : ℚ)⟩
  r := (5504464078703 / 10000000000000 : ℚ)
  w := (3471656119897 / 2500000000000 : ℚ)
  center := (489450000000000007 / 800000000000000000 : ℚ)
  supportValue := (1347323108412233 / 4000000000000000 : ℚ)
  supportSlope := (-12966160459023843 / 10000000000000000 : ℚ)
  oldCenter := (1347323108412233 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1432
  oldLo := (16825000000000001 / 50000000000000000 : ℚ)
  oldHi := (16850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_833]
}

noncomputable def cell_11507 : Cell := { cellDefaults with
  domain := ⟨(244750000000000001 / 400000000000000000 : ℚ), (61199999999999999 / 100000000000000000 : ℚ)⟩
  r := (5504464078703 / 10000000000000 : ℚ)
  w := (3471656119897 / 2500000000000 : ℚ)
  center := (489549999999999997 / 800000000000000000 : ℚ)
  supportValue := (1683343963755487 / 5000000000000000 : ℚ)
  supportSlope := (-12951343092880891 / 10000000000000000 : ℚ)
  oldCenter := (1683343963755487 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1432
  oldLo := (16825000000000001 / 50000000000000000 : ℚ)
  oldHi := (16850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_833]
}

noncomputable def cell_11508 : Cell := { cellDefaults with
  domain := ⟨(61199999999999999 / 100000000000000000 : ℚ), (244850000000000001 / 400000000000000000 : ℚ)⟩
  r := (11003582761831 / 20000000000000 : ℚ)
  w := (6941970182889 / 5000000000000 : ℚ)
  center := (489649999999999997 / 800000000000000000 : ℚ)
  supportValue := (6736822403347389 / 20000000000000000 : ℚ)
  supportSlope := (-6480393965117477 / 5000000000000000 : ℚ)
  oldCenter := (6736822403347389 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1433
  oldLo := (16825000000000001 / 50000000000000000 : ℚ)
  oldHi := (16850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_833]
}

noncomputable def cell_11509 : Cell := { cellDefaults with
  domain := ⟨(244850000000000001 / 400000000000000000 : ℚ), (122450000000000003 / 200000000000000000 : ℚ)⟩
  r := (11003582761831 / 20000000000000 : ℚ)
  w := (6941970182889 / 5000000000000 : ℚ)
  center := (489750000000000007 / 800000000000000000 : ℚ)
  supportValue := (3366792029035803 / 10000000000000000 : ℚ)
  supportSlope := (-6472990750787019 / 5000000000000000 : ℚ)
  oldCenter := (3366792029035803 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1433
  oldLo := (16825000000000001 / 50000000000000000 : ℚ)
  oldHi := (16850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_833]
}

noncomputable def cell_11510 : Cell := { cellDefaults with
  domain := ⟨(122450000000000003 / 200000000000000000 : ℚ), (244950000000000011 / 400000000000000000 : ℚ)⟩
  r := (11003582761831 / 20000000000000 : ℚ)
  w := (6941970182889 / 5000000000000 : ℚ)
  center := (489850000000000017 / 800000000000000000 : ℚ)
  supportValue := (3365177059080353 / 10000000000000000 : ℚ)
  supportSlope := (-12937990674214233 / 10000000000000000 : ℚ)
  oldCenter := (3365177059080353 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1433
  oldLo := (6726256983240223 / 20000000000000000 : ℚ)
  oldHi := (16850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_832, piece_833]
}

noncomputable def cell_11511 : Cell := { cellDefaults with
  domain := ⟨(244950000000000011 / 400000000000000000 : ℚ), (15312500000000001 / 25000000000000000 : ℚ)⟩
  r := (11003582761831 / 20000000000000 : ℚ)
  w := (6941970182889 / 5000000000000 : ℚ)
  center := (489950000000000027 / 800000000000000000 : ℚ)
  supportValue := (3363557302077309 / 10000000000000000 : ℚ)
  supportSlope := (-6466821541172749 / 5000000000000000 : ℚ)
  oldCenter := (3363557302077309 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1433
  oldLo := (16800000000000001 / 50000000000000000 : ℚ)
  oldHi := (16825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_831, piece_832]
}

noncomputable def cell_11512 : Cell := { cellDefaults with
  domain := ⟨(15312500000000001 / 25000000000000000 : ℚ), (122517458100558661 / 200000000000000000 : ℚ)⟩
  r := (54991217308159 / 100000000000000 : ℚ)
  w := (3470316123669 / 2500000000000 : ℚ)
  center := (245017458100558669 / 400000000000000000 : ℚ)
  supportValue := (33655231393367213 / 100000000000000000 : ℚ)
  supportSlope := (-12928764599695897 / 10000000000000000 : ℚ)
  oldCenter := (33655231393367213 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1434
  oldLo := (6726256983240223 / 20000000000000000 : ℚ)
  oldHi := (16850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_832, piece_833]
}

noncomputable def cell_11513 : Cell := { cellDefaults with
  domain := ⟨(122517458100558661 / 200000000000000000 : ℚ), (61267458100558657 / 100000000000000000 : ℚ)⟩
  r := (54991217308159 / 100000000000000 : ℚ)
  w := (3470316123669 / 2500000000000 : ℚ)
  center := (9802094972067039 / 16000000000000000 : ℚ)
  supportValue := (3364391922189451 / 10000000000000000 : ℚ)
  supportSlope := (-6467498645463111 / 5000000000000000 : ℚ)
  oldCenter := (3364391922189451 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1434
  oldLo := (6726256983240223 / 20000000000000000 : ℚ)
  oldHi := (16825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_832]
}

noncomputable def cell_11514 : Cell := { cellDefaults with
  domain := ⟨(61267458100558657 / 100000000000000000 : ℚ), (6128491620111731 / 10000000000000000 : ℚ)⟩
  r := (54991217308159 / 100000000000000 : ℚ)
  w := (3470316123669 / 2500000000000 : ℚ)
  center := (122552374301675967 / 200000000000000000 : ℚ)
  supportValue := (6725403276327091 / 20000000000000000 : ℚ)
  supportSlope := (-6459747012794379 / 5000000000000000 : ℚ)
  oldCenter := (6725403276327091 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1434
  oldLo := (16800000000000001 / 50000000000000000 : ℚ)
  oldHi := (16825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_831, piece_832]
}

noncomputable def cell_11515 : Cell := { cellDefaults with
  domain := ⟨(6128491620111731 / 10000000000000000 : ℚ), (61299999999999999 / 100000000000000000 : ℚ)⟩
  r := (54991217308159 / 100000000000000 : ℚ)
  w := (3470316123669 / 2500000000000 : ℚ)
  center := (122584916201117309 / 200000000000000000 : ℚ)
  supportValue := (1050187835735507 / 3125000000000000 : ℚ)
  supportSlope := (-6451817594051 / 5000000000000 : ℚ)
  oldCenter := (1050187835735507 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1435
  oldHi := (6726256983240223 / 20000000000000000 : ℚ)
  oldPieces := [piece_830, piece_831]
}

noncomputable def cell_11516 : Cell := { cellDefaults with
  domain := ⟨(61299999999999999 / 100000000000000000 : ℚ), (122625000000000001 / 200000000000000000 : ℚ)⟩
  r := (54964553636297 / 100000000000000 : ℚ)
  w := (13878599706889 / 10000000000000 : ℚ)
  center := (245224999999999999 / 400000000000000000 : ℚ)
  supportValue := (4202682339121673 / 12500000000000000 : ℚ)
  supportSlope := (-6454075127221629 / 5000000000000000 : ℚ)
  oldCenter := (4202682339121673 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1436
  oldLo := (16800000000000001 / 50000000000000000 : ℚ)
  oldHi := (6726256983240223 / 20000000000000000 : ℚ)
  oldPieces := [piece_831]
}

noncomputable def cell_11517 : Cell := { cellDefaults with
  domain := ⟨(122625000000000001 / 200000000000000000 : ℚ), (30662500000000001 / 50000000000000000 : ℚ)⟩
  r := (54964553636297 / 100000000000000 : ℚ)
  w := (13878599706889 / 10000000000000 : ℚ)
  center := (49055000000000001 / 80000000000000000 : ℚ)
  supportValue := (420066953126719 / 1250000000000000 : ℚ)
  supportSlope := (-6448181935762357 / 5000000000000000 : ℚ)
  oldCenter := (420066953126719 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1436
  oldHi := (6726256983240223 / 20000000000000000 : ℚ)
  oldPieces := [piece_830, piece_831]
}

noncomputable def cell_11518 : Cell := { cellDefaults with
  domain := ⟨(30662500000000001 / 50000000000000000 : ℚ), (122675000000000007 / 200000000000000000 : ℚ)⟩
  r := (54964553636297 / 100000000000000 : ℚ)
  w := (13878599706889 / 10000000000000 : ℚ)
  center := (245325000000000011 / 400000000000000000 : ℚ)
  supportValue := (16794605342147867 / 50000000000000000 : ℚ)
  supportSlope := (-6447970094857539 / 5000000000000000 : ℚ)
  oldCenter := (16794605342147867 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1436
  oldPieces := [piece_830]
}

noncomputable def cell_11519 : Cell := { cellDefaults with
  domain := ⟨(122675000000000007 / 200000000000000000 : ℚ), (12270000000000001 / 20000000000000000 : ℚ)⟩
  r := (54964553636297 / 100000000000000 : ℚ)
  w := (13878599706889 / 10000000000000 : ℚ)
  center := (245375000000000017 / 400000000000000000 : ℚ)
  supportValue := (1049159374712153 / 3125000000000000 : ℚ)
  supportSlope := (-3220294175573959 / 2500000000000000 : ℚ)
  oldCenter := (1049159374712153 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1436
  oldPieces := [piece_830]
}

noncomputable def cell_11520 : Cell := { cellDefaults with
  domain := ⟨(12270000000000001 / 20000000000000000 : ℚ), (122725000000000007 / 200000000000000000 : ℚ)⟩
  r := (54937917007411 / 100000000000000 : ℚ)
  w := (1734491856277 / 1250000000000 : ℚ)
  center := (245425000000000017 / 400000000000000000 : ℚ)
  supportValue := (3359022798430651 / 10000000000000000 : ℚ)
  supportSlope := (-402831344946723 / 312500000000000 : ℚ)
  oldCenter := (3359022798430651 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1437
  oldPieces := [piece_830]
}

noncomputable def cell_11521 : Cell := { cellDefaults with
  domain := ⟨(122725000000000007 / 200000000000000000 : ℚ), (30687500000000001 / 50000000000000000 : ℚ)⟩
  r := (54937917007411 / 100000000000000 : ℚ)
  w := (1734491856277 / 1250000000000 : ℚ)
  center := (245475000000000011 / 400000000000000000 : ℚ)
  supportValue := (3357412395539893 / 10000000000000000 : ℚ)
  supportSlope := (-3218962620550711 / 2500000000000000 : ℚ)
  oldCenter := (3357412395539893 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1437
  oldPieces := [piece_830]
}

noncomputable def cell_11522 : Cell := { cellDefaults with
  domain := ⟨(30687500000000001 / 50000000000000000 : ℚ), (122775000000000001 / 200000000000000000 : ℚ)⟩
  r := (54937917007411 / 100000000000000 : ℚ)
  w := (1734491856277 / 1250000000000 : ℚ)
  center := (49105000000000001 / 80000000000000000 : ℚ)
  supportValue := (16779019164878753 / 50000000000000000 : ℚ)
  supportSlope := (-12861165985082343 / 10000000000000000 : ℚ)
  oldCenter := (16779019164878753 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1437
  oldPieces := [piece_830]
}

noncomputable def cell_11523 : Cell := { cellDefaults with
  domain := ⟨(122775000000000001 / 200000000000000000 : ℚ), (61399999999999999 / 100000000000000000 : ℚ)⟩
  r := (54937917007411 / 100000000000000 : ℚ)
  w := (1734491856277 / 1250000000000 : ℚ)
  center := (245574999999999999 / 400000000000000000 : ℚ)
  supportValue := (3354198371166837 / 10000000000000000 : ℚ)
  supportSlope := (-2572749429372887 / 2000000000000000 : ℚ)
  oldCenter := (3354198371166837 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1437
  oldLo := (16750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_829, piece_830]
}

noncomputable def cell_11524 : Cell := { cellDefaults with
  domain := ⟨(61399999999999999 / 100000000000000000 : ℚ), (122825000000000001 / 200000000000000000 : ℚ)⟩
  r := (10982262422437 / 20000000000000 : ℚ)
  w := (3468320222493 / 2500000000000 : ℚ)
  center := (245624999999999999 / 400000000000000000 : ℚ)
  supportValue := (6711807511567467 / 20000000000000000 : ℚ)
  supportSlope := (-3213955439553443 / 2500000000000000 : ℚ)
  oldCenter := (6711807511567467 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1438
  oldPieces := [piece_830]
}

noncomputable def cell_11525 : Cell := { cellDefaults with
  domain := ⟨(122825000000000001 / 200000000000000000 : ℚ), (30712500000000001 / 50000000000000000 : ℚ)⟩
  r := (10982262422437 / 20000000000000 : ℚ)
  w := (3468320222493 / 2500000000000 : ℚ)
  center := (49135000000000001 / 80000000000000000 : ℚ)
  supportValue := (335429909525253 / 1000000000000000 : ℚ)
  supportSlope := (-6428676107782867 / 5000000000000000 : ℚ)
  oldCenter := (335429909525253 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1438
  oldLo := (16750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_829, piece_830]
}

noncomputable def cell_11526 : Cell := { cellDefaults with
  domain := ⟨(30712500000000001 / 50000000000000000 : ℚ), (122875000000000007 / 200000000000000000 : ℚ)⟩
  r := (10982262422437 / 20000000000000 : ℚ)
  w := (3468320222493 / 2500000000000 : ℚ)
  center := (245725000000000011 / 400000000000000000 : ℚ)
  supportValue := (33526903652699347 / 100000000000000000 : ℚ)
  supportSlope := (-321092369973203 / 250000000000000 : ℚ)
  oldCenter := (33526903652699347 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1438
  oldLo := (16750000000000001 / 50000000000000000 : ℚ)
  oldHi := (16775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_829]
}

noncomputable def cell_11527 : Cell := { cellDefaults with
  domain := ⟨(122875000000000007 / 200000000000000000 : ℚ), (12290000000000001 / 20000000000000000 : ℚ)⟩
  r := (10982262422437 / 20000000000000 : ℚ)
  w := (3468320222493 / 2500000000000 : ℚ)
  center := (245775000000000017 / 400000000000000000 : ℚ)
  supportValue := (1675542910356669 / 5000000000000000 : ℚ)
  supportSlope := (-2565805061845031 / 2000000000000000 : ℚ)
  oldCenter := (1675542910356669 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1438
  oldLo := (16750000000000001 / 50000000000000000 : ℚ)
  oldHi := (16775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_829]
}

noncomputable def cell_11528 : Cell := { cellDefaults with
  domain := ⟨(12290000000000001 / 20000000000000000 : ℚ), (122925000000000007 / 200000000000000000 : ℚ)⟩
  r := (857574033963 / 1562500000000 : ℚ)
  w := (13870636056769 / 10000000000000 : ℚ)
  center := (245825000000000017 / 400000000000000000 : ℚ)
  supportValue := (335278907515997 / 1000000000000000 : ℚ)
  supportSlope := (-320959139944937 / 250000000000000 : ℚ)
  oldCenter := (335278907515997 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1439
  oldLo := (16750000000000001 / 50000000000000000 : ℚ)
  oldHi := (16775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_829]
}

noncomputable def cell_11529 : Cell := { cellDefaults with
  domain := ⟨(122925000000000007 / 200000000000000000 : ℚ), (30737500000000001 / 50000000000000000 : ℚ)⟩
  r := (857574033963 / 1562500000000 : ℚ)
  w := (13870636056769 / 10000000000000 : ℚ)
  center := (245875000000000011 / 400000000000000000 : ℚ)
  supportValue := (33511851960730993 / 100000000000000000 : ℚ)
  supportSlope := (-12823706982062903 / 10000000000000000 : ℚ)
  oldCenter := (33511851960730993 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1439
  oldLo := (16750000000000001 / 50000000000000000 : ℚ)
  oldHi := (16775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_829]
}

noncomputable def cell_11530 : Cell := { cellDefaults with
  domain := ⟨(30737500000000001 / 50000000000000000 : ℚ), (122975000000000001 / 200000000000000000 : ℚ)⟩
  r := (857574033963 / 1562500000000 : ℚ)
  w := (13870636056769 / 10000000000000 : ℚ)
  center := (49185000000000001 / 80000000000000000 : ℚ)
  supportValue := (334958492583237 / 1000000000000000 : ℚ)
  supportSlope := (-6411122536543403 / 5000000000000000 : ℚ)
  oldCenter := (334958492583237 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1439
  oldLo := (16725000000000001 / 50000000000000000 : ℚ)
  oldHi := (16775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_828, piece_829]
}

noncomputable def cell_11531 : Cell := { cellDefaults with
  domain := ⟨(122975000000000001 / 200000000000000000 : ℚ), (61499999999999999 / 100000000000000000 : ℚ)⟩
  r := (857574033963 / 1562500000000 : ℚ)
  w := (13870636056769 / 10000000000000 : ℚ)
  center := (245974999999999999 / 400000000000000000 : ℚ)
  supportValue := (1673990100808373 / 5000000000000000 : ℚ)
  supportSlope := (-640584363871787 / 500000000000000 : ℚ)
  oldCenter := (1673990100808373 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1439
  oldLo := (16725000000000001 / 50000000000000000 : ℚ)
  oldHi := (16750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_828]
}

noncomputable def cell_11532 : Cell := { cellDefaults with
  domain := ⟨(61499999999999999 / 100000000000000000 : ℚ), (123025000000000001 / 200000000000000000 : ℚ)⟩
  r := (3428637033983 / 6250000000000 : ℚ)
  w := (216687397887 / 156250000000 : ℚ)
  center := (246024999999999999 / 400000000000000000 : ℚ)
  supportValue := (1674842090701189 / 5000000000000000 : ℚ)
  supportSlope := (-25030986463209 / 19531250000000 : ℚ)
  oldCenter := (1674842090701189 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1440
  oldLo := (16725000000000001 / 50000000000000000 : ℚ)
  oldHi := (16775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_828, piece_829]
}

noncomputable def cell_11533 : Cell := { cellDefaults with
  domain := ⟨(123025000000000001 / 200000000000000000 : ℚ), (30762500000000001 / 50000000000000000 : ℚ)⟩
  r := (3428637033983 / 6250000000000 : ℚ)
  w := (216687397887 / 156250000000 : ℚ)
  center := (49215000000000001 / 80000000000000000 : ℚ)
  supportValue := (3348080120036923 / 10000000000000000 : ℚ)
  supportSlope := (-640319466954343 / 500000000000000 : ℚ)
  oldCenter := (3348080120036923 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1440
  oldLo := (16725000000000001 / 50000000000000000 : ℚ)
  oldHi := (16750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_828]
}

noncomputable def cell_11534 : Cell := { cellDefaults with
  domain := ⟨(30762500000000001 / 50000000000000000 : ℚ), (123075000000000007 / 200000000000000000 : ℚ)⟩
  r := (3428637033983 / 6250000000000 : ℚ)
  w := (216687397887 / 156250000000 : ℚ)
  center := (246125000000000011 / 400000000000000000 : ℚ)
  supportValue := (418310029557901 / 1250000000000000 : ℚ)
  supportSlope := (-12791755050656903 / 10000000000000000 : ℚ)
  oldCenter := (418310029557901 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1440
  oldLo := (16725000000000001 / 50000000000000000 : ℚ)
  oldHi := (16750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_828]
}

noncomputable def cell_11535 : Cell := { cellDefaults with
  domain := ⟨(123075000000000007 / 200000000000000000 : ℚ), (12310000000000001 / 20000000000000000 : ℚ)⟩
  r := (3428637033983 / 6250000000000 : ℚ)
  w := (216687397887 / 156250000000 : ℚ)
  center := (246175000000000017 / 400000000000000000 : ℚ)
  supportValue := (4181105448193257 / 12500000000000000 : ℚ)
  supportSlope := (-79919505933103 / 62500000000000 : ℚ)
  oldCenter := (4181105448193257 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1440
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827, piece_828]
}

noncomputable def cell_11536 : Cell := { cellDefaults with
  domain := ⟨(12310000000000001 / 20000000000000000 : ℚ), (123125000000000007 / 200000000000000000 : ℚ)⟩
  r := (342697997169 / 625000000000 : ℚ)
  w := (13865363289591 / 10000000000000 : ℚ)
  center := (246225000000000017 / 400000000000000000 : ℚ)
  supportValue := (1673288625413393 / 5000000000000000 : ℚ)
  supportSlope := (-1278644402181659 / 1000000000000000 : ℚ)
  oldCenter := (1673288625413393 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1441
  oldLo := (16725000000000001 / 50000000000000000 : ℚ)
  oldHi := (16750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_828]
}

noncomputable def cell_11537 : Cell := { cellDefaults with
  domain := ⟨(123125000000000007 / 200000000000000000 : ℚ), (30787500000000001 / 50000000000000000 : ℚ)⟩
  r := (342697997169 / 625000000000 : ℚ)
  w := (13865363289591 / 10000000000000 : ℚ)
  center := (246275000000000011 / 400000000000000000 : ℚ)
  supportValue := (4181227710988987 / 12500000000000000 : ℚ)
  supportSlope := (-12780760749599307 / 10000000000000000 : ℚ)
  oldCenter := (4181227710988987 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1441
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827, piece_828]
}

noncomputable def cell_11538 : Cell := { cellDefaults with
  domain := ⟨(30787500000000001 / 50000000000000000 : ℚ), (123175000000000001 / 200000000000000000 : ℚ)⟩
  r := (342697997169 / 625000000000 : ℚ)
  w := (13865363289591 / 10000000000000 : ℚ)
  center := (49265000000000001 / 80000000000000000 : ℚ)
  supportValue := (208961380728933 / 625000000000000 : ℚ)
  supportSlope := (-12774554532556803 / 10000000000000000 : ℚ)
  oldCenter := (208961380728933 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1441
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827]
}

noncomputable def cell_11539 : Cell := { cellDefaults with
  domain := ⟨(123175000000000001 / 200000000000000000 : ℚ), (61599999999999999 / 100000000000000000 : ℚ)⟩
  r := (342697997169 / 625000000000 : ℚ)
  w := (13865363289591 / 10000000000000 : ℚ)
  center := (246374999999999999 / 400000000000000000 : ℚ)
  supportValue := (334178618584763 / 1000000000000000 : ℚ)
  supportSlope := (-12759945740105503 / 10000000000000000 : ℚ)
  oldCenter := (334178618584763 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1441
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827]
}

noncomputable def cell_11540 : Cell := { cellDefaults with
  domain := ⟨(61599999999999999 / 100000000000000000 : ℚ), (123225000000000001 / 200000000000000000 : ℚ)⟩
  r := (5480519372259 / 10000000000000 : ℚ)
  w := (1732842056663 / 1250000000000 : ℚ)
  center := (246424999999999999 / 400000000000000000 : ℚ)
  supportValue := (33434795163611 / 100000000000000 : ℚ)
  supportSlope := (-638463123146783 / 500000000000000 : ℚ)
  oldCenter := (33434795163611 / 100000000000000 : ℚ)
  newCoefficients := coefficients_1442
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827]
}

noncomputable def cell_11541 : Cell := { cellDefaults with
  domain := ⟨(123225000000000001 / 200000000000000000 : ℚ), (30812500000000001 / 50000000000000000 : ℚ)⟩
  r := (5480519372259 / 10000000000000 : ℚ)
  w := (1732842056663 / 1250000000000 : ℚ)
  center := (49295000000000001 / 80000000000000000 : ℚ)
  supportValue := (8354710678444409 / 25000000000000000 : ℚ)
  supportSlope := (-6377332242849877 / 5000000000000000 : ℚ)
  oldCenter := (8354710678444409 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1442
  oldLo := (16700000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_827]
}

noncomputable def cell_11542 : Cell := { cellDefaults with
  domain := ⟨(30812500000000001 / 50000000000000000 : ℚ), (123275000000000007 / 200000000000000000 : ℚ)⟩
  r := (5480519372259 / 10000000000000 : ℚ)
  w := (1732842056663 / 1250000000000 : ℚ)
  center := (246525000000000011 / 400000000000000000 : ℚ)
  supportValue := (668058637126599 / 2000000000000000 : ℚ)
  supportSlope := (-6372821172470413 / 5000000000000000 : ℚ)
  oldCenter := (668058637126599 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1442
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826, piece_827]
}

noncomputable def cell_11543 : Cell := { cellDefaults with
  domain := ⟨(123275000000000007 / 200000000000000000 : ℚ), (12330000000000001 / 20000000000000000 : ℚ)⟩
  r := (5480519372259 / 10000000000000 : ℚ)
  w := (1732842056663 / 1250000000000 : ℚ)
  center := (246575000000000017 / 400000000000000000 : ℚ)
  supportValue := (33386974676010567 / 100000000000000000 : ℚ)
  supportSlope := (-12742883053283443 / 10000000000000000 : ℚ)
  oldCenter := (33386974676010567 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1442
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826]
}

noncomputable def cell_11544 : Cell := { cellDefaults with
  domain := ⟨(12330000000000001 / 20000000000000000 : ℚ), (123325000000000007 / 200000000000000000 : ℚ)⟩
  r := (54778739366793 / 100000000000000 : ℚ)
  w := (13860116825027 / 10000000000000 : ℚ)
  center := (246625000000000017 / 400000000000000000 : ℚ)
  supportValue := (3340389605763139 / 10000000000000000 : ℚ)
  supportSlope := (-127393045629913 / 100000000000000 : ℚ)
  oldCenter := (3340389605763139 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1443
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826, piece_827]
}

noncomputable def cell_11545 : Cell := { cellDefaults with
  domain := ⟨(123325000000000007 / 200000000000000000 : ℚ), (30837500000000001 / 50000000000000000 : ℚ)⟩
  r := (54778739366793 / 100000000000000 : ℚ)
  w := (13860116825027 / 10000000000000 : ℚ)
  center := (246675000000000011 / 400000000000000000 : ℚ)
  supportValue := (333879467908983 / 1000000000000000 : ℚ)
  supportSlope := (-3184402814587033 / 2500000000000000 : ℚ)
  oldCenter := (333879467908983 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1443
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826]
}

noncomputable def cell_11546 : Cell := { cellDefaults with
  domain := ⟨(30837500000000001 / 50000000000000000 : ℚ), (123375000000000001 / 200000000000000000 : ℚ)⟩
  r := (54778739366793 / 100000000000000 : ℚ)
  w := (13860116825027 / 10000000000000 : ℚ)
  center := (49345000000000001 / 80000000000000000 : ℚ)
  supportValue := (52143802958423 / 156250000000000 : ℚ)
  supportSlope := (-6361516000238029 / 5000000000000000 : ℚ)
  oldCenter := (52143802958423 / 156250000000000 : ℚ)
  newCoefficients := coefficients_1443
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826]
}

noncomputable def cell_11547 : Cell := { cellDefaults with
  domain := ⟨(123375000000000001 / 200000000000000000 : ℚ), (61699999999999999 / 100000000000000000 : ℚ)⟩
  r := (54778739366793 / 100000000000000 : ℚ)
  w := (13860116825027 / 10000000000000 : ℚ)
  center := (246774999999999999 / 400000000000000000 : ℚ)
  supportValue := (3335616253210017 / 10000000000000000 : ℚ)
  supportSlope := (-3177624588488851 / 2500000000000000 : ℚ)
  oldCenter := (3335616253210017 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1443
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825, piece_826]
}

noncomputable def cell_11548 : Cell := { cellDefaults with
  domain := ⟨(61699999999999999 / 100000000000000000 : ℚ), (123425000000000001 / 200000000000000000 : ℚ)⟩
  r := (54752317092649 / 100000000000000 : ℚ)
  w := (173218857187 / 125000000000 : ℚ)
  center := (246824999999999999 / 400000000000000000 : ℚ)
  supportValue := (16686489846168917 / 50000000000000000 : ℚ)
  supportSlope := (-12717749165352539 / 10000000000000000 : ℚ)
  oldCenter := (16686489846168917 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1444
  oldLo := (16675000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_826]
}

noncomputable def cell_11549 : Cell := { cellDefaults with
  domain := ⟨(123425000000000001 / 200000000000000000 : ℚ), (30862500000000001 / 50000000000000000 : ℚ)⟩
  r := (54752317092649 / 100000000000000 : ℚ)
  w := (173218857187 / 125000000000 : ℚ)
  center := (49375000000000001 / 80000000000000000 : ℚ)
  supportValue := (3335711492848881 / 10000000000000000 : ℚ)
  supportSlope := (-3176044658514573 / 2500000000000000 : ℚ)
  oldCenter := (3335711492848881 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1444
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825, piece_826]
}

theorem check_11500 : cell_11500.check = true := by
  decide +kernel

theorem check_11501 : cell_11501.check = true := by
  decide +kernel

theorem check_11502 : cell_11502.check = true := by
  decide +kernel

theorem check_11503 : cell_11503.check = true := by
  decide +kernel

theorem check_11504 : cell_11504.check = true := by
  decide +kernel

theorem check_11505 : cell_11505.check = true := by
  decide +kernel

theorem check_11506 : cell_11506.check = true := by
  decide +kernel

theorem check_11507 : cell_11507.check = true := by
  decide +kernel

theorem check_11508 : cell_11508.check = true := by
  decide +kernel

theorem check_11509 : cell_11509.check = true := by
  decide +kernel

theorem check_11510 : cell_11510.check = true := by
  decide +kernel

theorem check_11511 : cell_11511.check = true := by
  decide +kernel

theorem check_11512 : cell_11512.check = true := by
  decide +kernel

theorem check_11513 : cell_11513.check = true := by
  decide +kernel

theorem check_11514 : cell_11514.check = true := by
  decide +kernel

theorem check_11515 : cell_11515.check = true := by
  decide +kernel

theorem check_11516 : cell_11516.check = true := by
  decide +kernel

theorem check_11517 : cell_11517.check = true := by
  decide +kernel

theorem check_11518 : cell_11518.check = true := by
  decide +kernel

theorem check_11519 : cell_11519.check = true := by
  decide +kernel

theorem check_11520 : cell_11520.check = true := by
  decide +kernel

theorem check_11521 : cell_11521.check = true := by
  decide +kernel

theorem check_11522 : cell_11522.check = true := by
  decide +kernel

theorem check_11523 : cell_11523.check = true := by
  decide +kernel

theorem check_11524 : cell_11524.check = true := by
  decide +kernel

theorem check_11525 : cell_11525.check = true := by
  decide +kernel

theorem check_11526 : cell_11526.check = true := by
  decide +kernel

theorem check_11527 : cell_11527.check = true := by
  decide +kernel

theorem check_11528 : cell_11528.check = true := by
  decide +kernel

theorem check_11529 : cell_11529.check = true := by
  decide +kernel

theorem check_11530 : cell_11530.check = true := by
  decide +kernel

theorem check_11531 : cell_11531.check = true := by
  decide +kernel

theorem check_11532 : cell_11532.check = true := by
  decide +kernel

theorem check_11533 : cell_11533.check = true := by
  decide +kernel

theorem check_11534 : cell_11534.check = true := by
  decide +kernel

theorem check_11535 : cell_11535.check = true := by
  decide +kernel

theorem check_11536 : cell_11536.check = true := by
  decide +kernel

theorem check_11537 : cell_11537.check = true := by
  decide +kernel

theorem check_11538 : cell_11538.check = true := by
  decide +kernel

theorem check_11539 : cell_11539.check = true := by
  decide +kernel

theorem check_11540 : cell_11540.check = true := by
  decide +kernel

theorem check_11541 : cell_11541.check = true := by
  decide +kernel

theorem check_11542 : cell_11542.check = true := by
  decide +kernel

theorem check_11543 : cell_11543.check = true := by
  decide +kernel

theorem check_11544 : cell_11544.check = true := by
  decide +kernel

theorem check_11545 : cell_11545.check = true := by
  decide +kernel

theorem check_11546 : cell_11546.check = true := by
  decide +kernel

theorem check_11547 : cell_11547.check = true := by
  decide +kernel

theorem check_11548 : cell_11548.check = true := by
  decide +kernel

theorem check_11549 : cell_11549.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11500, cell_11501, cell_11502, cell_11503, cell_11504, cell_11505, cell_11506, cell_11507, cell_11508, cell_11509, cell_11510, cell_11511, cell_11512, cell_11513, cell_11514, cell_11515, cell_11516, cell_11517, cell_11518, cell_11519, cell_11520, cell_11521, cell_11522, cell_11523, cell_11524, cell_11525, cell_11526, cell_11527, cell_11528, cell_11529, cell_11530, cell_11531, cell_11532, cell_11533, cell_11534, cell_11535, cell_11536, cell_11537, cell_11538, cell_11539, cell_11540, cell_11541, cell_11542, cell_11543, cell_11544, cell_11545, cell_11546, cell_11547, cell_11548, cell_11549]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11500, check_11501, check_11502, check_11503, check_11504, check_11505, check_11506, check_11507, check_11508, check_11509, check_11510, check_11511, check_11512, check_11513, check_11514, check_11515, check_11516, check_11517, check_11518, check_11519, check_11520, check_11521, check_11522, check_11523, check_11524, check_11525, check_11526, check_11527, check_11528, check_11529, check_11530, check_11531, check_11532, check_11533, check_11534, check_11535, check_11536, check_11537, check_11538, check_11539, check_11540, check_11541, check_11542, check_11543, check_11544, check_11545, check_11546, check_11547, check_11548, check_11549, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0230

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0230
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0230
open AnalyticBounds.ExpressionCertificate

theorem linked_11500 : Linked cell_11500 pieces := by
  link_source cell_11500 with piece_1431 using piece_1431_mem, ⟨piece_834_mem, piece_835_mem⟩

theorem linked_11501 : Linked cell_11501 pieces := by
  link_source cell_11501 with piece_1431 using piece_1431_mem, piece_834_mem

theorem linked_11502 : Linked cell_11502 pieces := by
  link_source cell_11502 with piece_1431 using piece_1431_mem, piece_834_mem

theorem linked_11503 : Linked cell_11503 pieces := by
  link_source cell_11503 with piece_1431 using piece_1431_mem, ⟨piece_833_mem, piece_834_mem⟩

theorem linked_11504 : Linked cell_11504 pieces := by
  link_source cell_11504 with piece_1432 using piece_1432_mem, piece_834_mem

theorem linked_11505 : Linked cell_11505 pieces := by
  link_source cell_11505 with piece_1432 using piece_1432_mem, ⟨piece_833_mem, piece_834_mem⟩

theorem linked_11506 : Linked cell_11506 pieces := by
  link_source cell_11506 with piece_1432 using piece_1432_mem, piece_833_mem

theorem linked_11507 : Linked cell_11507 pieces := by
  link_source cell_11507 with piece_1432 using piece_1432_mem, piece_833_mem

theorem linked_11508 : Linked cell_11508 pieces := by
  link_source cell_11508 with piece_1433 using piece_1433_mem, piece_833_mem

theorem linked_11509 : Linked cell_11509 pieces := by
  link_source cell_11509 with piece_1433 using piece_1433_mem, piece_833_mem

theorem linked_11510 : Linked cell_11510 pieces := by
  link_source cell_11510 with piece_1433 using piece_1433_mem, ⟨piece_832_mem, piece_833_mem⟩

theorem linked_11511 : Linked cell_11511 pieces := by
  link_source cell_11511 with piece_1433 using piece_1433_mem, ⟨piece_831_mem, piece_832_mem⟩

theorem linked_11512 : Linked cell_11512 pieces := by
  link_source cell_11512 with piece_1434 using piece_1434_mem, ⟨piece_832_mem, piece_833_mem⟩

theorem linked_11513 : Linked cell_11513 pieces := by
  link_source cell_11513 with piece_1434 using piece_1434_mem, piece_832_mem

theorem linked_11514 : Linked cell_11514 pieces := by
  link_source cell_11514 with piece_1434 using piece_1434_mem, ⟨piece_831_mem, piece_832_mem⟩

theorem linked_11515 : Linked cell_11515 pieces := by
  link_source cell_11515 with piece_1435 using piece_1435_mem, ⟨piece_830_mem, piece_831_mem⟩

theorem linked_11516 : Linked cell_11516 pieces := by
  link_source cell_11516 with piece_1436 using piece_1436_mem, piece_831_mem

theorem linked_11517 : Linked cell_11517 pieces := by
  link_source cell_11517 with piece_1436 using piece_1436_mem, ⟨piece_830_mem, piece_831_mem⟩

theorem linked_11518 : Linked cell_11518 pieces := by
  link_source cell_11518 with piece_1436 using piece_1436_mem, piece_830_mem

theorem linked_11519 : Linked cell_11519 pieces := by
  link_source cell_11519 with piece_1436 using piece_1436_mem, piece_830_mem

theorem linked_11520 : Linked cell_11520 pieces := by
  link_source cell_11520 with piece_1437 using piece_1437_mem, piece_830_mem

theorem linked_11521 : Linked cell_11521 pieces := by
  link_source cell_11521 with piece_1437 using piece_1437_mem, piece_830_mem

theorem linked_11522 : Linked cell_11522 pieces := by
  link_source cell_11522 with piece_1437 using piece_1437_mem, piece_830_mem

theorem linked_11523 : Linked cell_11523 pieces := by
  link_source cell_11523 with piece_1437 using piece_1437_mem, ⟨piece_829_mem, piece_830_mem⟩

theorem linked_11524 : Linked cell_11524 pieces := by
  link_source cell_11524 with piece_1438 using piece_1438_mem, piece_830_mem

theorem linked_11525 : Linked cell_11525 pieces := by
  link_source cell_11525 with piece_1438 using piece_1438_mem, ⟨piece_829_mem, piece_830_mem⟩

theorem linked_11526 : Linked cell_11526 pieces := by
  link_source cell_11526 with piece_1438 using piece_1438_mem, piece_829_mem

theorem linked_11527 : Linked cell_11527 pieces := by
  link_source cell_11527 with piece_1438 using piece_1438_mem, piece_829_mem

theorem linked_11528 : Linked cell_11528 pieces := by
  link_source cell_11528 with piece_1439 using piece_1439_mem, piece_829_mem

theorem linked_11529 : Linked cell_11529 pieces := by
  link_source cell_11529 with piece_1439 using piece_1439_mem, piece_829_mem

theorem linked_11530 : Linked cell_11530 pieces := by
  link_source cell_11530 with piece_1439 using piece_1439_mem, ⟨piece_828_mem, piece_829_mem⟩

theorem linked_11531 : Linked cell_11531 pieces := by
  link_source cell_11531 with piece_1439 using piece_1439_mem, piece_828_mem

theorem linked_11532 : Linked cell_11532 pieces := by
  link_source cell_11532 with piece_1440 using piece_1440_mem, ⟨piece_828_mem, piece_829_mem⟩

theorem linked_11533 : Linked cell_11533 pieces := by
  link_source cell_11533 with piece_1440 using piece_1440_mem, piece_828_mem

theorem linked_11534 : Linked cell_11534 pieces := by
  link_source cell_11534 with piece_1440 using piece_1440_mem, piece_828_mem

theorem linked_11535 : Linked cell_11535 pieces := by
  link_source cell_11535 with piece_1440 using piece_1440_mem, ⟨piece_827_mem, piece_828_mem⟩

theorem linked_11536 : Linked cell_11536 pieces := by
  link_source cell_11536 with piece_1441 using piece_1441_mem, piece_828_mem

theorem linked_11537 : Linked cell_11537 pieces := by
  link_source cell_11537 with piece_1441 using piece_1441_mem, ⟨piece_827_mem, piece_828_mem⟩

theorem linked_11538 : Linked cell_11538 pieces := by
  link_source cell_11538 with piece_1441 using piece_1441_mem, piece_827_mem

theorem linked_11539 : Linked cell_11539 pieces := by
  link_source cell_11539 with piece_1441 using piece_1441_mem, piece_827_mem

theorem linked_11540 : Linked cell_11540 pieces := by
  link_source cell_11540 with piece_1442 using piece_1442_mem, piece_827_mem

theorem linked_11541 : Linked cell_11541 pieces := by
  link_source cell_11541 with piece_1442 using piece_1442_mem, piece_827_mem

theorem linked_11542 : Linked cell_11542 pieces := by
  link_source cell_11542 with piece_1442 using piece_1442_mem, ⟨piece_826_mem, piece_827_mem⟩

theorem linked_11543 : Linked cell_11543 pieces := by
  link_source cell_11543 with piece_1442 using piece_1442_mem, piece_826_mem

theorem linked_11544 : Linked cell_11544 pieces := by
  link_source cell_11544 with piece_1443 using piece_1443_mem, ⟨piece_826_mem, piece_827_mem⟩

theorem linked_11545 : Linked cell_11545 pieces := by
  link_source cell_11545 with piece_1443 using piece_1443_mem, piece_826_mem

theorem linked_11546 : Linked cell_11546 pieces := by
  link_source cell_11546 with piece_1443 using piece_1443_mem, piece_826_mem

theorem linked_11547 : Linked cell_11547 pieces := by
  link_source cell_11547 with piece_1443 using piece_1443_mem, ⟨piece_825_mem, piece_826_mem⟩

theorem linked_11548 : Linked cell_11548 pieces := by
  link_source cell_11548 with piece_1444 using piece_1444_mem, piece_826_mem

theorem linked_11549 : Linked cell_11549 pieces := by
  link_source cell_11549 with piece_1444 using piece_1444_mem, ⟨piece_825_mem, piece_826_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0230.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0230.cells,List.forall_mem_cons]
  exact ⟨linked_11500, linked_11501, linked_11502, linked_11503, linked_11504, linked_11505, linked_11506, linked_11507, linked_11508, linked_11509, linked_11510, linked_11511, linked_11512, linked_11513, linked_11514, linked_11515, linked_11516, linked_11517, linked_11518, linked_11519, linked_11520, linked_11521, linked_11522, linked_11523, linked_11524, linked_11525, linked_11526, linked_11527, linked_11528, linked_11529, linked_11530, linked_11531, linked_11532, linked_11533, linked_11534, linked_11535, linked_11536, linked_11537, linked_11538, linked_11539, linked_11540, linked_11541, linked_11542, linked_11543, linked_11544, linked_11545, linked_11546, linked_11547, linked_11548, linked_11549, by simp⟩

theorem covered : covers (61099999999999999 / 100000000000000000 : ℚ) (30862500000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0230.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0230
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0231
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(30862500000000001 / 50000000000000000 : ℚ), (123475000000000007 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (27349778542781 / 50000000000000 : ℚ)
  w := (6926152408427 / 5000000000000 : ℚ)
  center := (246925000000000011 / 400000000000000000 : ℚ)
  supportValue := (333412095421037 / 1000000000000000 : ℚ)
  supportSlope := (-2541220756769797 / 2000000000000000 : ℚ)
  oldCenter := (333412095421037 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1445
  oldLo := (16625000000000001 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11550 : Cell := { cellDefaults with
  r := (54752317092649 / 100000000000000 : ℚ)
  w := (173218857187 / 125000000000 : ℚ)
  newCoefficients := coefficients_1444
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

noncomputable def cell_11551 : Cell := { cellDefaults with
  domain := ⟨(123475000000000007 / 200000000000000000 : ℚ), (12350000000000001 / 20000000000000000 : ℚ)⟩
  r := (54752317092649 / 100000000000000 : ℚ)
  w := (173218857187 / 125000000000 : ℚ)
  center := (246975000000000017 / 400000000000000000 : ℚ)
  supportValue := (33325336022208907 / 100000000000000000 : ℚ)
  supportSlope := (-1269153534232029 / 1000000000000000 : ℚ)
  oldCenter := (33325336022208907 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1444
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

noncomputable def cell_11552 : Cell := { cellDefaults with
  domain := ⟨(12350000000000001 / 20000000000000000 : ℚ), (123525000000000007 / 200000000000000000 : ℚ)⟩
  r := (3420370021697 / 6250000000000 : ℚ)
  w := (6927450553103 / 5000000000000 : ℚ)
  center := (247025000000000017 / 400000000000000000 : ℚ)
  supportValue := (208388686070627 / 625000000000000 : ℚ)
  supportSlope := (-6350370003463597 / 5000000000000000 : ℚ)
  oldCenter := (208388686070627 / 625000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825, piece_826]
}

noncomputable def cell_11553 : Cell := { cellDefaults with
  domain := ⟨(123525000000000007 / 200000000000000000 : ℚ), (30887500000000001 / 50000000000000000 : ℚ)⟩
  r := (3420370021697 / 6250000000000 : ℚ)
  w := (6927450553103 / 5000000000000 : ℚ)
  center := (247075000000000011 / 400000000000000000 : ℚ)
  supportValue := (33326299477384863 / 100000000000000000 : ℚ)
  supportSlope := (-12686288334757123 / 10000000000000000 : ℚ)
  oldCenter := (33326299477384863 / 100000000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

noncomputable def cell_11554 : Cell := { cellDefaults with
  domain := ⟨(30887500000000001 / 50000000000000000 : ℚ), (123575000000000001 / 200000000000000000 : ℚ)⟩
  r := (3420370021697 / 6250000000000 : ℚ)
  w := (6927450553103 / 5000000000000 : ℚ)
  center := (49425000000000001 / 80000000000000000 : ℚ)
  supportValue := (3331045068287793 / 10000000000000000 : ℚ)
  supportSlope := (-791986879325563 / 625000000000000 : ℚ)
  oldCenter := (3331045068287793 / 10000000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

noncomputable def cell_11555 : Cell := { cellDefaults with
  domain := ⟨(123575000000000001 / 200000000000000000 : ℚ), (61799999999999999 / 100000000000000000 : ℚ)⟩
  r := (3420370021697 / 6250000000000 : ℚ)
  w := (6927450553103 / 5000000000000 : ℚ)
  center := (247174999999999999 / 400000000000000000 : ℚ)
  supportValue := (3329463586601053 / 10000000000000000 : ℚ)
  supportSlope := (-12671956991800313 / 10000000000000000 : ℚ)
  oldCenter := (3329463586601053 / 10000000000000000 : ℚ)
  oldPieces := [piece_824, piece_825]
}

noncomputable def cell_11556 : Cell := { cellDefaults with
  domain := ⟨(61799999999999999 / 100000000000000000 : ℚ), (247237988826815637 / 400000000000000000 : ℚ)⟩
  center := (494437988826815633 / 800000000000000000 : ℚ)
  supportValue := (16656644320350683 / 50000000000000000 : ℚ)
  supportSlope := (-791766706199991 / 625000000000000 : ℚ)
  oldCenter := (16656644320350683 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1446
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

noncomputable def cell_11557 : Cell := { cellDefaults with
  domain := ⟨(247237988826815637 / 400000000000000000 : ℚ), (123637988826815639 / 200000000000000000 : ℚ)⟩
  center := (98902793296089383 / 160000000000000000 : ℚ)
  supportValue := (6660257169484729 / 20000000000000000 : ℚ)
  supportSlope := (-316604618674901 / 250000000000000 : ℚ)
  oldCenter := (6660257169484729 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1446
  oldPieces := [piece_824, piece_825]
}

noncomputable def cell_11558 : Cell := { cellDefaults with
  domain := ⟨(123637988826815639 / 200000000000000000 : ℚ), (247313966480446919 / 400000000000000000 : ℚ)⟩
  center := (494589944134078197 / 800000000000000000 : ℚ)
  supportValue := (133156928206747 / 400000000000000 : ℚ)
  supportSlope := (-6331840844590253 / 5000000000000000 : ℚ)
  oldCenter := (133156928206747 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1446
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_824]
}

noncomputable def cell_11559 : Cell := { cellDefaults with
  domain := ⟨(247313966480446919 / 400000000000000000 : ℚ), (1545949720670391 / 2500000000000000 : ℚ)⟩
  center := (494665921787709479 / 800000000000000000 : ℚ)
  supportValue := (8319302581617731 / 25000000000000000 : ℚ)
  supportSlope := (-6326329137127693 / 5000000000000000 : ℚ)
  oldCenter := (8319302581617731 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1446
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_824]
}

noncomputable def cell_11560 : Cell := { cellDefaults with
  domain := ⟨(1545949720670391 / 2500000000000000 : ℚ), (12370000000000001 / 20000000000000000 : ℚ)⟩
  center := (24737597765363129 / 40000000000000000 : ℚ)
  supportValue := (6652722021822799 / 20000000000000000 : ℚ)
  supportSlope := (-158002712516877 / 125000000000000 : ℚ)
  oldCenter := (6652722021822799 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1447
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_824]
}

noncomputable def cell_11561 : Cell := { cellDefaults with
  domain := ⟨(12370000000000001 / 20000000000000000 : ℚ), (123725000000000007 / 200000000000000000 : ℚ)⟩
  r := (54673222486841 / 100000000000000 : ℚ)
  w := (1731214402999 / 1250000000000 : ℚ)
  center := (247425000000000017 / 400000000000000000 : ℚ)
  supportValue := (16640329907626983 / 50000000000000000 : ℚ)
  supportSlope := (-31624294471037 / 25000000000000 : ℚ)
  oldCenter := (16640329907626983 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1448
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_824]
}

noncomputable def cell_11562 : Cell := { cellDefaults with
  domain := ⟨(123725000000000007 / 200000000000000000 : ℚ), (30937500000000001 / 50000000000000000 : ℚ)⟩
  r := (54673222486841 / 100000000000000 : ℚ)
  w := (1731214402999 / 1250000000000 : ℚ)
  center := (247475000000000011 / 400000000000000000 : ℚ)
  supportValue := (831621417676181 / 2500000000000000 : ℚ)
  supportSlope := (-1579407815550849 / 1250000000000000 : ℚ)
  oldCenter := (831621417676181 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1448
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_824]
}

noncomputable def cell_11563 : Cell := { cellDefaults with
  domain := ⟨(30937500000000001 / 50000000000000000 : ℚ), (123775000000000001 / 200000000000000000 : ℚ)⟩
  r := (54673222486841 / 100000000000000 : ℚ)
  w := (1731214402999 / 1250000000000 : ℚ)
  center := (49505000000000001 / 80000000000000000 : ℚ)
  supportValue := (3324909360792787 / 10000000000000000 : ℚ)
  supportSlope := (-789412863740441 / 625000000000000 : ℚ)
  oldCenter := (3324909360792787 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1448
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823, piece_824]
}

noncomputable def cell_11564 : Cell := { cellDefaults with
  domain := ⟨(123775000000000001 / 200000000000000000 : ℚ), (61899999999999999 / 100000000000000000 : ℚ)⟩
  r := (54673222486841 / 100000000000000 : ℚ)
  w := (1731214402999 / 1250000000000 : ℚ)
  center := (247574999999999999 / 400000000000000000 : ℚ)
  supportValue := (1661664075814231 / 5000000000000000 : ℚ)
  supportSlope := (-315595051588773 / 250000000000000 : ℚ)
  oldCenter := (1661664075814231 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1448
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823]
}

noncomputable def cell_11565 : Cell := { cellDefaults with
  domain := ⟨(61899999999999999 / 100000000000000000 : ℚ), (123825000000000001 / 200000000000000000 : ℚ)⟩
  r := (27323458357017 / 50000000000000 : ℚ)
  w := (1730891210567 / 1250000000000 : ℚ)
  center := (247624999999999999 / 400000000000000000 : ℚ)
  supportValue := (1662501258499697 / 5000000000000000 : ℚ)
  supportSlope := (-1262434452780807 / 1000000000000000 : ℚ)
  oldCenter := (1662501258499697 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1449
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823, piece_824]
}

noncomputable def cell_11566 : Cell := { cellDefaults with
  domain := ⟨(123825000000000001 / 200000000000000000 : ℚ), (30962500000000001 / 50000000000000000 : ℚ)⟩
  r := (27323458357017 / 50000000000000 : ℚ)
  w := (1730891210567 / 1250000000000 : ℚ)
  center := (49535000000000001 / 80000000000000000 : ℚ)
  supportValue := (3323421961012841 / 10000000000000000 : ℚ)
  supportSlope := (-6309290746834637 / 5000000000000000 : ℚ)
  oldCenter := (3323421961012841 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1449
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823]
}

noncomputable def cell_11567 : Cell := { cellDefaults with
  domain := ⟨(30962500000000001 / 50000000000000000 : ℚ), (123875000000000007 / 200000000000000000 : ℚ)⟩
  r := (27323458357017 / 50000000000000 : ℚ)
  w := (1730891210567 / 1250000000000 : ℚ)
  center := (247725000000000011 / 400000000000000000 : ℚ)
  supportValue := (3321845541325573 / 10000000000000000 : ℚ)
  supportSlope := (-6302070361775901 / 5000000000000000 : ℚ)
  oldCenter := (3321845541325573 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1449
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823]
}

noncomputable def cell_11568 : Cell := { cellDefaults with
  domain := ⟨(123875000000000007 / 200000000000000000 : ℚ), (12390000000000001 / 20000000000000000 : ℚ)⟩
  r := (27323458357017 / 50000000000000 : ℚ)
  w := (1730891210567 / 1250000000000 : ℚ)
  center := (247775000000000017 / 400000000000000000 : ℚ)
  supportValue := (103758538976037 / 312500000000000 : ℚ)
  supportSlope := (-12595496991430633 / 10000000000000000 : ℚ)
  oldCenter := (103758538976037 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1449
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822, piece_823]
}

noncomputable def cell_11569 : Cell := { cellDefaults with
  domain := ⟨(12390000000000001 / 20000000000000000 : ℚ), (49570000000000003 / 80000000000000000 : ℚ)⟩
  r := (13655161047487 / 25000000000000 : ℚ)
  w := (2768911524377 / 2000000000000 : ℚ)
  center := (99130000000000007 / 160000000000000000 : ℚ)
  supportValue := (3321936136804991 / 10000000000000000 : ℚ)
  supportSlope := (-2519780902560139 / 2000000000000000 : ℚ)
  oldCenter := (3321936136804991 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1450
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823]
}

noncomputable def cell_11570 : Cell := { cellDefaults with
  domain := ⟨(49570000000000003 / 80000000000000000 : ℚ), (24790000000000001 / 40000000000000000 : ℚ)⟩
  r := (13655161047487 / 25000000000000 : ℚ)
  w := (2768911524377 / 2000000000000 : ℚ)
  center := (19830000000000001 / 32000000000000000 : ℚ)
  supportValue := (8300911241577999 / 25000000000000000 : ℚ)
  supportSlope := (-6294627881927103 / 5000000000000000 : ℚ)
  oldCenter := (8300911241577999 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1450
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822, piece_823]
}

noncomputable def cell_11571 : Cell := { cellDefaults with
  domain := ⟨(24790000000000001 / 40000000000000000 : ℚ), (49590000000000001 / 80000000000000000 : ℚ)⟩
  r := (13655161047487 / 25000000000000 : ℚ)
  w := (2768911524377 / 2000000000000 : ℚ)
  center := (99170000000000003 / 160000000000000000 : ℚ)
  supportValue := (33187883229000237 / 100000000000000000 : ℚ)
  supportSlope := (-12587577580572977 / 10000000000000000 : ℚ)
  oldCenter := (33187883229000237 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1450
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822]
}

noncomputable def cell_11572 : Cell := { cellDefaults with
  domain := ⟨(49590000000000001 / 80000000000000000 : ℚ), (31 / 50 : ℚ)⟩
  r := (13655161047487 / 25000000000000 : ℚ)
  w := (2768911524377 / 2000000000000 : ℚ)
  center := (99190000000000001 / 160000000000000000 : ℚ)
  supportValue := (1658607888884673 / 5000000000000000 : ℚ)
  supportSlope := (-12573151768774529 / 10000000000000000 : ℚ)
  oldCenter := (1658607888884673 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1450
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822]
}

noncomputable def cell_11573 : Cell := { cellDefaults with
  domain := ⟨(31 / 50 : ℚ), (49610000000000001 / 80000000000000000 : ℚ)⟩
  r := (54594397567621 / 100000000000000 : ℚ)
  w := (13841986383013 / 10000000000000 : ℚ)
  center := (99210000000000001 / 160000000000000000 : ℚ)
  supportValue := (6637759883797163 / 20000000000000000 : ℚ)
  supportSlope := (-12582365148973003 / 10000000000000000 : ℚ)
  oldCenter := (6637759883797163 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1451
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822]
}

noncomputable def cell_11574 : Cell := { cellDefaults with
  domain := ⟨(49610000000000001 / 80000000000000000 : ℚ), (24810000000000001 / 40000000000000000 : ℚ)⟩
  r := (54594397567621 / 100000000000000 : ℚ)
  w := (13841986383013 / 10000000000000 : ℚ)
  center := (99230000000000003 / 160000000000000000 : ℚ)
  supportValue := (3317308047652289 / 10000000000000000 : ℚ)
  supportSlope := (-6283975018783121 / 5000000000000000 : ℚ)
  oldCenter := (3317308047652289 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1451
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822]
}

noncomputable def cell_11575 : Cell := { cellDefaults with
  domain := ⟨(24810000000000001 / 40000000000000000 : ℚ), (49630000000000003 / 80000000000000000 : ℚ)⟩
  r := (54594397567621 / 100000000000000 : ℚ)
  w := (13841986383013 / 10000000000000 : ℚ)
  center := (19850000000000001 / 32000000000000000 : ℚ)
  supportValue := (33157402726196733 / 100000000000000000 : ℚ)
  supportSlope := (-313853093991647 / 250000000000000 : ℚ)
  oldCenter := (33157402726196733 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1451
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821, piece_822]
}

noncomputable def cell_11576 : Cell := { cellDefaults with
  domain := ⟨(49630000000000003 / 80000000000000000 : ℚ), (12410000000000001 / 20000000000000000 : ℚ)⟩
  r := (54594397567621 / 100000000000000 : ℚ)
  w := (13841986383013 / 10000000000000 : ℚ)
  center := (99270000000000007 / 160000000000000000 : ℚ)
  supportValue := (1657084243858261 / 5000000000000000 : ℚ)
  supportSlope := (-6278366460076773 / 5000000000000000 : ℚ)
  oldCenter := (1657084243858261 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1451
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821]
}

noncomputable def cell_11577 : Cell := { cellDefaults with
  domain := ⟨(12410000000000001 / 20000000000000000 : ℚ), (49650000000000003 / 80000000000000000 : ℚ)⟩
  r := (545681823253 / 1000000000000 : ℚ)
  w := (13839424820239 / 10000000000000 : ℚ)
  center := (99290000000000007 / 160000000000000000 : ℚ)
  supportValue := (33158280072602553 / 100000000000000000 : ℚ)
  supportSlope := (-6274192166078679 / 5000000000000000 : ℚ)
  oldCenter := (33158280072602553 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1452
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822]
}

noncomputable def cell_11578 : Cell := { cellDefaults with
  domain := ⟨(49650000000000003 / 80000000000000000 : ℚ), (24830000000000001 / 40000000000000000 : ℚ)⟩
  r := (545681823253 / 1000000000000 : ℚ)
  w := (13839424820239 / 10000000000000 : ℚ)
  center := (19862000000000001 / 32000000000000000 : ℚ)
  supportValue := (33142616400453473 / 100000000000000000 : ℚ)
  supportSlope := (-12551055341562123 / 10000000000000000 : ℚ)
  oldCenter := (33142616400453473 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1452
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821, piece_822]
}

noncomputable def cell_11579 : Cell := { cellDefaults with
  domain := ⟨(24830000000000001 / 40000000000000000 : ℚ), (49670000000000001 / 80000000000000000 : ℚ)⟩
  r := (545681823253 / 1000000000000 : ℚ)
  w := (13839424820239 / 10000000000000 : ℚ)
  center := (99330000000000003 / 160000000000000000 : ℚ)
  supportValue := (1656345639254963 / 5000000000000000 : ℚ)
  supportSlope := (-12537136628260201 / 10000000000000000 : ℚ)
  oldCenter := (1656345639254963 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1452
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821]
}

noncomputable def cell_11580 : Cell := { cellDefaults with
  domain := ⟨(49670000000000001 / 80000000000000000 : ℚ), (621 / 1000 : ℚ)⟩
  r := (545681823253 / 1000000000000 : ℚ)
  w := (13839424820239 / 10000000000000 : ℚ)
  center := (99350000000000001 / 160000000000000000 : ℚ)
  supportValue := (6622250066244807 / 20000000000000000 : ℚ)
  supportSlope := (-6261398381859977 / 5000000000000000 : ℚ)
  oldCenter := (6622250066244807 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1452
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821]
}

noncomputable def cell_11581 : Cell := { cellDefaults with
  domain := ⟨(621 / 1000 : ℚ), (49690000000000001 / 80000000000000000 : ℚ)⟩
  r := (54541997275967 / 100000000000000 : ℚ)
  w := (13836872087513 / 10000000000000 : ℚ)
  center := (99370000000000001 / 160000000000000000 : ℚ)
  supportValue := (6625560388946593 / 20000000000000000 : ℚ)
  supportSlope := (-12531933640421569 / 10000000000000000 : ℚ)
  oldCenter := (6625560388946593 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1453
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821]
}

noncomputable def cell_11582 : Cell := { cellDefaults with
  domain := ⟨(49690000000000001 / 80000000000000000 : ℚ), (24850000000000001 / 40000000000000000 : ℚ)⟩
  r := (54541997275967 / 100000000000000 : ℚ)
  w := (13836872087513 / 10000000000000 : ℚ)
  center := (99390000000000003 / 160000000000000000 : ℚ)
  supportValue := (662242919757921 / 2000000000000000 : ℚ)
  supportSlope := (-12517604477534219 / 10000000000000000 : ℚ)
  oldCenter := (662242919757921 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1453
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821]
}

noncomputable def cell_11583 : Cell := { cellDefaults with
  domain := ⟨(24850000000000001 / 40000000000000000 : ℚ), (49710000000000003 / 80000000000000000 : ℚ)⟩
  r := (54541997275967 / 100000000000000 : ℚ)
  w := (13836872087513 / 10000000000000 : ℚ)
  center := (19882000000000001 / 32000000000000000 : ℚ)
  supportValue := (1654826308154957 / 5000000000000000 : ℚ)
  supportSlope := (-12515998207190817 / 10000000000000000 : ℚ)
  oldCenter := (1654826308154957 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1453
  oldLo := (6615642458100559 / 20000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_820, piece_821]
}

noncomputable def cell_11584 : Cell := { cellDefaults with
  domain := ⟨(49710000000000003 / 80000000000000000 : ℚ), (12430000000000001 / 20000000000000000 : ℚ)⟩
  r := (54541997275967 / 100000000000000 : ℚ)
  w := (13836872087513 / 10000000000000 : ℚ)
  center := (99430000000000007 / 160000000000000000 : ℚ)
  supportValue := (16540430463950803 / 50000000000000000 : ℚ)
  supportSlope := (-500258823971883 / 400000000000000 : ℚ)
  oldCenter := (16540430463950803 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1453
  oldLo := (16525000000000001 / 50000000000000000 : ℚ)
  oldHi := (16550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_819, piece_820]
}

noncomputable def cell_11585 : Cell := { cellDefaults with
  domain := ⟨(12430000000000001 / 20000000000000000 : ℚ), (49730000000000003 / 80000000000000000 : ℚ)⟩
  r := (27257919890893 / 50000000000000 : ℚ)
  w := (13834321682133 / 10000000000000 : ℚ)
  center := (99450000000000007 / 160000000000000000 : ℚ)
  supportValue := (1654871022032377 / 5000000000000000 : ℚ)
  supportSlope := (-12509813017650557 / 10000000000000000 : ℚ)
  oldCenter := (1654871022032377 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1454
  oldLo := (6615642458100559 / 20000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_820, piece_821]
}

noncomputable def cell_11586 : Cell := { cellDefaults with
  domain := ⟨(49730000000000003 / 80000000000000000 : ℚ), (24870000000000001 / 40000000000000000 : ℚ)⟩
  r := (27257919890893 / 50000000000000 : ℚ)
  w := (13834321682133 / 10000000000000 : ℚ)
  center := (19894000000000001 / 32000000000000000 : ℚ)
  supportValue := (1654088083879523 / 5000000000000000 : ℚ)
  supportSlope := (-625064855446729 / 500000000000000 : ℚ)
  oldCenter := (1654088083879523 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1454
  oldLo := (16525000000000001 / 50000000000000000 : ℚ)
  oldHi := (16550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_819, piece_820]
}

noncomputable def cell_11587 : Cell := { cellDefaults with
  domain := ⟨(24870000000000001 / 40000000000000000 : ℚ), (49750000000000001 / 80000000000000000 : ℚ)⟩
  r := (27257919890893 / 50000000000000 : ℚ)
  w := (13834321682133 / 10000000000000 : ℚ)
  center := (99490000000000003 / 160000000000000000 : ℚ)
  supportValue := (3306614399885847 / 10000000000000000 : ℚ)
  supportSlope := (-6243496606611123 / 5000000000000000 : ℚ)
  oldCenter := (3306614399885847 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1454
  oldLo := (16525000000000001 / 50000000000000000 : ℚ)
  oldHi := (6615642458100559 / 20000000000000000 : ℚ)
  oldPieces := [piece_819]
}

noncomputable def cell_11588 : Cell := { cellDefaults with
  domain := ⟨(49750000000000001 / 80000000000000000 : ℚ), (311 / 500 : ℚ)⟩
  r := (27257919890893 / 50000000000000 : ℚ)
  w := (13834321682133 / 10000000000000 : ℚ)
  center := (99510000000000001 / 160000000000000000 : ℚ)
  supportValue := (1652528365261437 / 5000000000000000 : ℚ)
  supportSlope := (-3120227665250087 / 2500000000000000 : ℚ)
  oldCenter := (1652528365261437 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1454
  oldLo := (16500000000000001 / 50000000000000000 : ℚ)
  oldHi := (6615642458100559 / 20000000000000000 : ℚ)
  oldPieces := [piece_818, piece_819]
}

noncomputable def cell_11589 : Cell := { cellDefaults with
  domain := ⟨(311 / 500 : ℚ), (49770000000000001 / 80000000000000000 : ℚ)⟩
  r := (13622428725517 / 25000000000000 : ℚ)
  w := (2766356833809 / 2000000000000 : ℚ)
  center := (99530000000000001 / 160000000000000000 : ℚ)
  supportValue := (661340288064023 / 2000000000000000 : ℚ)
  supportSlope := (-12481805982290513 / 10000000000000000 : ℚ)
  oldCenter := (661340288064023 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1455
  oldLo := (16525000000000001 / 50000000000000000 : ℚ)
  oldHi := (6615642458100559 / 20000000000000000 : ℚ)
  oldPieces := [piece_819]
}

noncomputable def cell_11590 : Cell := { cellDefaults with
  domain := ⟨(49770000000000001 / 80000000000000000 : ℚ), (24890000000000001 / 40000000000000000 : ℚ)⟩
  r := (13622428725517 / 25000000000000 : ℚ)
  w := (2766356833809 / 2000000000000 : ℚ)
  center := (99550000000000003 / 160000000000000000 : ℚ)
  supportValue := (661028883750897 / 2000000000000000 : ℚ)
  supportSlope := (-6237372601013911 / 5000000000000000 : ℚ)
  oldCenter := (661028883750897 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1455
  oldLo := (16500000000000001 / 50000000000000000 : ℚ)
  oldHi := (6615642458100559 / 20000000000000000 : ℚ)
  oldPieces := [piece_818, piece_819]
}

noncomputable def cell_11591 : Cell := { cellDefaults with
  domain := ⟨(24890000000000001 / 40000000000000000 : ℚ), (49790000000000003 / 80000000000000000 : ℚ)⟩
  r := (13622428725517 / 25000000000000 : ℚ)
  w := (2766356833809 / 2000000000000 : ℚ)
  center := (19914000000000001 / 32000000000000000 : ℚ)
  supportValue := (4129478196878867 / 12500000000000000 : ℚ)
  supportSlope := (-3117700257513033 / 2500000000000000 : ℚ)
  oldCenter := (4129478196878867 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1455
  oldLo := (16500000000000001 / 50000000000000000 : ℚ)
  oldHi := (16525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_818]
}

noncomputable def cell_11592 : Cell := { cellDefaults with
  domain := ⟨(49790000000000003 / 80000000000000000 : ℚ), (12450000000000001 / 20000000000000000 : ℚ)⟩
  r := (13622428725517 / 25000000000000 : ℚ)
  w := (2766356833809 / 2000000000000 : ℚ)
  center := (99590000000000007 / 160000000000000000 : ℚ)
  supportValue := (6604049202243587 / 20000000000000000 : ℚ)
  supportSlope := (-622825415425181 / 500000000000000 : ℚ)
  oldCenter := (6604049202243587 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1455
  oldLo := (16500000000000001 / 50000000000000000 : ℚ)
  oldHi := (16525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_818]
}

noncomputable def cell_11593 : Cell := { cellDefaults with
  domain := ⟨(12450000000000001 / 20000000000000000 : ℚ), (49810000000000003 / 80000000000000000 : ℚ)⟩
  r := (54463616813391 / 100000000000000 : ℚ)
  w := (13829248579587 / 10000000000000 : ℚ)
  center := (99610000000000007 / 160000000000000000 : ℚ)
  supportValue := (3303670259201883 / 10000000000000000 : ℚ)
  supportSlope := (-6232817051601903 / 5000000000000000 : ℚ)
  oldCenter := (3303670259201883 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1456
  oldLo := (16500000000000001 / 50000000000000000 : ℚ)
  oldHi := (16525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_818]
}

noncomputable def cell_11594 : Cell := { cellDefaults with
  domain := ⟨(49810000000000003 / 80000000000000000 : ℚ), (24910000000000001 / 40000000000000000 : ℚ)⟩
  r := (54463616813391 / 100000000000000 : ℚ)
  w := (13829248579587 / 10000000000000 : ℚ)
  center := (19926000000000001 / 32000000000000000 : ℚ)
  supportValue := (825528237004989 / 2500000000000000 : ℚ)
  supportSlope := (-12451352032610963 / 10000000000000000 : ℚ)
  oldCenter := (825528237004989 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1456
  oldLo := (16500000000000001 / 50000000000000000 : ℚ)
  oldHi := (16525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_818]
}

noncomputable def cell_11595 : Cell := { cellDefaults with
  domain := ⟨(24910000000000001 / 40000000000000000 : ℚ), (49830000000000001 / 80000000000000000 : ℚ)⟩
  r := (54463616813391 / 100000000000000 : ℚ)
  w := (13829248579587 / 10000000000000 : ℚ)
  center := (99650000000000003 / 160000000000000000 : ℚ)
  supportValue := (4125699661022407 / 12500000000000000 : ℚ)
  supportSlope := (-1243962602219053 / 1000000000000000 : ℚ)
  oldCenter := (4125699661022407 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1456
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817, piece_818]
}

noncomputable def cell_11596 : Cell := { cellDefaults with
  domain := ⟨(49830000000000001 / 80000000000000000 : ℚ), (623 / 1000 : ℚ)⟩
  r := (54463616813391 / 100000000000000 : ℚ)
  w := (13829248579587 / 10000000000000 : ℚ)
  center := (99670000000000001 / 160000000000000000 : ℚ)
  supportValue := (412375281893521 / 1250000000000000 : ℚ)
  supportSlope := (-1555056820618117 / 1250000000000000 : ℚ)
  oldCenter := (412375281893521 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1456
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817]
}

noncomputable def cell_11597 : Cell := { cellDefaults with
  domain := ⟨(623 / 1000 : ℚ), (49850000000000001 / 80000000000000000 : ℚ)⟩
  r := (27218774767471 / 50000000000000 : ℚ)
  w := (13826721872869 / 10000000000000 : ℚ)
  center := (99690000000000001 / 160000000000000000 : ℚ)
  supportValue := (33006460731437093 / 100000000000000000 : ℚ)
  supportSlope := (-310837075824657 / 250000000000000 : ℚ)
  oldCenter := (33006460731437093 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1457
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817, piece_818]
}

noncomputable def cell_11598 : Cell := { cellDefaults with
  domain := ⟨(49850000000000001 / 80000000000000000 : ℚ), (24930000000000001 / 40000000000000000 : ℚ)⟩
  r := (27218774767471 / 50000000000000 : ℚ)
  w := (13826721872869 / 10000000000000 : ℚ)
  center := (99710000000000003 / 160000000000000000 : ℚ)
  supportValue := (1649544683284237 / 5000000000000000 : ℚ)
  supportSlope := (-6217651794563839 / 5000000000000000 : ℚ)
  oldCenter := (1649544683284237 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1457
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817]
}

noncomputable def cell_11599 : Cell := { cellDefaults with
  domain := ⟨(24930000000000001 / 40000000000000000 : ℚ), (49870000000000003 / 80000000000000000 : ℚ)⟩
  r := (27218774767471 / 50000000000000 : ℚ)
  w := (13826721872869 / 10000000000000 : ℚ)
  center := (19946000000000001 / 32000000000000000 : ℚ)
  supportValue := (3297535845455173 / 10000000000000000 : ℚ)
  supportSlope := (-6210520736899473 / 5000000000000000 : ℚ)
  oldCenter := (3297535845455173 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1457
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817]
}

theorem check_11550 : cell_11550.check = true := by
  decide +kernel

theorem check_11551 : cell_11551.check = true := by
  decide +kernel

theorem check_11552 : cell_11552.check = true := by
  decide +kernel

theorem check_11553 : cell_11553.check = true := by
  decide +kernel

theorem check_11554 : cell_11554.check = true := by
  decide +kernel

theorem check_11555 : cell_11555.check = true := by
  decide +kernel

theorem check_11556 : cell_11556.check = true := by
  decide +kernel

theorem check_11557 : cell_11557.check = true := by
  decide +kernel

theorem check_11558 : cell_11558.check = true := by
  decide +kernel

theorem check_11559 : cell_11559.check = true := by
  decide +kernel

theorem check_11560 : cell_11560.check = true := by
  decide +kernel

theorem check_11561 : cell_11561.check = true := by
  decide +kernel

theorem check_11562 : cell_11562.check = true := by
  decide +kernel

theorem check_11563 : cell_11563.check = true := by
  decide +kernel

theorem check_11564 : cell_11564.check = true := by
  decide +kernel

theorem check_11565 : cell_11565.check = true := by
  decide +kernel

theorem check_11566 : cell_11566.check = true := by
  decide +kernel

theorem check_11567 : cell_11567.check = true := by
  decide +kernel

theorem check_11568 : cell_11568.check = true := by
  decide +kernel

theorem check_11569 : cell_11569.check = true := by
  decide +kernel

theorem check_11570 : cell_11570.check = true := by
  decide +kernel

theorem check_11571 : cell_11571.check = true := by
  decide +kernel

theorem check_11572 : cell_11572.check = true := by
  decide +kernel

theorem check_11573 : cell_11573.check = true := by
  decide +kernel

theorem check_11574 : cell_11574.check = true := by
  decide +kernel

theorem check_11575 : cell_11575.check = true := by
  decide +kernel

theorem check_11576 : cell_11576.check = true := by
  decide +kernel

theorem check_11577 : cell_11577.check = true := by
  decide +kernel

theorem check_11578 : cell_11578.check = true := by
  decide +kernel

theorem check_11579 : cell_11579.check = true := by
  decide +kernel

theorem check_11580 : cell_11580.check = true := by
  decide +kernel

theorem check_11581 : cell_11581.check = true := by
  decide +kernel

theorem check_11582 : cell_11582.check = true := by
  decide +kernel

theorem check_11583 : cell_11583.check = true := by
  decide +kernel

theorem check_11584 : cell_11584.check = true := by
  decide +kernel

theorem check_11585 : cell_11585.check = true := by
  decide +kernel

theorem check_11586 : cell_11586.check = true := by
  decide +kernel

theorem check_11587 : cell_11587.check = true := by
  decide +kernel

theorem check_11588 : cell_11588.check = true := by
  decide +kernel

theorem check_11589 : cell_11589.check = true := by
  decide +kernel

theorem check_11590 : cell_11590.check = true := by
  decide +kernel

theorem check_11591 : cell_11591.check = true := by
  decide +kernel

theorem check_11592 : cell_11592.check = true := by
  decide +kernel

theorem check_11593 : cell_11593.check = true := by
  decide +kernel

theorem check_11594 : cell_11594.check = true := by
  decide +kernel

theorem check_11595 : cell_11595.check = true := by
  decide +kernel

theorem check_11596 : cell_11596.check = true := by
  decide +kernel

theorem check_11597 : cell_11597.check = true := by
  decide +kernel

theorem check_11598 : cell_11598.check = true := by
  decide +kernel

theorem check_11599 : cell_11599.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11550, cell_11551, cell_11552, cell_11553, cell_11554, cell_11555, cell_11556, cell_11557, cell_11558, cell_11559, cell_11560, cell_11561, cell_11562, cell_11563, cell_11564, cell_11565, cell_11566, cell_11567, cell_11568, cell_11569, cell_11570, cell_11571, cell_11572, cell_11573, cell_11574, cell_11575, cell_11576, cell_11577, cell_11578, cell_11579, cell_11580, cell_11581, cell_11582, cell_11583, cell_11584, cell_11585, cell_11586, cell_11587, cell_11588, cell_11589, cell_11590, cell_11591, cell_11592, cell_11593, cell_11594, cell_11595, cell_11596, cell_11597, cell_11598, cell_11599]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11550, check_11551, check_11552, check_11553, check_11554, check_11555, check_11556, check_11557, check_11558, check_11559, check_11560, check_11561, check_11562, check_11563, check_11564, check_11565, check_11566, check_11567, check_11568, check_11569, check_11570, check_11571, check_11572, check_11573, check_11574, check_11575, check_11576, check_11577, check_11578, check_11579, check_11580, check_11581, check_11582, check_11583, check_11584, check_11585, check_11586, check_11587, check_11588, check_11589, check_11590, check_11591, check_11592, check_11593, check_11594, check_11595, check_11596, check_11597, check_11598, check_11599, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0231

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0231
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0231
open AnalyticBounds.ExpressionCertificate

theorem linked_11550 : Linked cell_11550 pieces := by
  link_source cell_11550 with piece_1444 using piece_1444_mem, piece_825_mem

theorem linked_11551 : Linked cell_11551 pieces := by
  link_source cell_11551 with piece_1444 using piece_1444_mem, piece_825_mem

theorem linked_11552 : Linked cell_11552 pieces := by
  link_source cell_11552 with piece_1445 using piece_1445_mem, ⟨piece_825_mem, piece_826_mem⟩

theorem linked_11553 : Linked cell_11553 pieces := by
  link_source cell_11553 with piece_1445 using piece_1445_mem, piece_825_mem

theorem linked_11554 : Linked cell_11554 pieces := by
  link_source cell_11554 with piece_1445 using piece_1445_mem, piece_825_mem

theorem linked_11555 : Linked cell_11555 pieces := by
  link_source cell_11555 with piece_1445 using piece_1445_mem, ⟨piece_824_mem, piece_825_mem⟩

theorem linked_11556 : Linked cell_11556 pieces := by
  link_source cell_11556 with piece_1446 using piece_1446_mem, piece_825_mem

theorem linked_11557 : Linked cell_11557 pieces := by
  link_source cell_11557 with piece_1446 using piece_1446_mem, ⟨piece_824_mem, piece_825_mem⟩

theorem linked_11558 : Linked cell_11558 pieces := by
  link_source cell_11558 with piece_1446 using piece_1446_mem, piece_824_mem

theorem linked_11559 : Linked cell_11559 pieces := by
  link_source cell_11559 with piece_1446 using piece_1446_mem, piece_824_mem

theorem linked_11560 : Linked cell_11560 pieces := by
  link_source cell_11560 with piece_1447 using piece_1447_mem, piece_824_mem

theorem linked_11561 : Linked cell_11561 pieces := by
  link_source cell_11561 with piece_1448 using piece_1448_mem, piece_824_mem

theorem linked_11562 : Linked cell_11562 pieces := by
  link_source cell_11562 with piece_1448 using piece_1448_mem, piece_824_mem

theorem linked_11563 : Linked cell_11563 pieces := by
  link_source cell_11563 with piece_1448 using piece_1448_mem, ⟨piece_823_mem, piece_824_mem⟩

theorem linked_11564 : Linked cell_11564 pieces := by
  link_source cell_11564 with piece_1448 using piece_1448_mem, piece_823_mem

theorem linked_11565 : Linked cell_11565 pieces := by
  link_source cell_11565 with piece_1449 using piece_1449_mem, ⟨piece_823_mem, piece_824_mem⟩

theorem linked_11566 : Linked cell_11566 pieces := by
  link_source cell_11566 with piece_1449 using piece_1449_mem, piece_823_mem

theorem linked_11567 : Linked cell_11567 pieces := by
  link_source cell_11567 with piece_1449 using piece_1449_mem, piece_823_mem

theorem linked_11568 : Linked cell_11568 pieces := by
  link_source cell_11568 with piece_1449 using piece_1449_mem, ⟨piece_822_mem, piece_823_mem⟩

theorem linked_11569 : Linked cell_11569 pieces := by
  link_source cell_11569 with piece_1450 using piece_1450_mem, piece_823_mem

theorem linked_11570 : Linked cell_11570 pieces := by
  link_source cell_11570 with piece_1450 using piece_1450_mem, ⟨piece_822_mem, piece_823_mem⟩

theorem linked_11571 : Linked cell_11571 pieces := by
  link_source cell_11571 with piece_1450 using piece_1450_mem, piece_822_mem

theorem linked_11572 : Linked cell_11572 pieces := by
  link_source cell_11572 with piece_1450 using piece_1450_mem, piece_822_mem

theorem linked_11573 : Linked cell_11573 pieces := by
  link_source cell_11573 with piece_1451 using piece_1451_mem, piece_822_mem

theorem linked_11574 : Linked cell_11574 pieces := by
  link_source cell_11574 with piece_1451 using piece_1451_mem, piece_822_mem

theorem linked_11575 : Linked cell_11575 pieces := by
  link_source cell_11575 with piece_1451 using piece_1451_mem, ⟨piece_821_mem, piece_822_mem⟩

theorem linked_11576 : Linked cell_11576 pieces := by
  link_source cell_11576 with piece_1451 using piece_1451_mem, piece_821_mem

theorem linked_11577 : Linked cell_11577 pieces := by
  link_source cell_11577 with piece_1452 using piece_1452_mem, piece_822_mem

theorem linked_11578 : Linked cell_11578 pieces := by
  link_source cell_11578 with piece_1452 using piece_1452_mem, ⟨piece_821_mem, piece_822_mem⟩

theorem linked_11579 : Linked cell_11579 pieces := by
  link_source cell_11579 with piece_1452 using piece_1452_mem, piece_821_mem

theorem linked_11580 : Linked cell_11580 pieces := by
  link_source cell_11580 with piece_1452 using piece_1452_mem, piece_821_mem

theorem linked_11581 : Linked cell_11581 pieces := by
  link_source cell_11581 with piece_1453 using piece_1453_mem, piece_821_mem

theorem linked_11582 : Linked cell_11582 pieces := by
  link_source cell_11582 with piece_1453 using piece_1453_mem, piece_821_mem

theorem linked_11583 : Linked cell_11583 pieces := by
  link_source cell_11583 with piece_1453 using piece_1453_mem, ⟨piece_820_mem, piece_821_mem⟩

theorem linked_11584 : Linked cell_11584 pieces := by
  link_source cell_11584 with piece_1453 using piece_1453_mem, ⟨piece_819_mem, piece_820_mem⟩

theorem linked_11585 : Linked cell_11585 pieces := by
  link_source cell_11585 with piece_1454 using piece_1454_mem, ⟨piece_820_mem, piece_821_mem⟩

theorem linked_11586 : Linked cell_11586 pieces := by
  link_source cell_11586 with piece_1454 using piece_1454_mem, ⟨piece_819_mem, piece_820_mem⟩

theorem linked_11587 : Linked cell_11587 pieces := by
  link_source cell_11587 with piece_1454 using piece_1454_mem, piece_819_mem

theorem linked_11588 : Linked cell_11588 pieces := by
  link_source cell_11588 with piece_1454 using piece_1454_mem, ⟨piece_818_mem, piece_819_mem⟩

theorem linked_11589 : Linked cell_11589 pieces := by
  link_source cell_11589 with piece_1455 using piece_1455_mem, piece_819_mem

theorem linked_11590 : Linked cell_11590 pieces := by
  link_source cell_11590 with piece_1455 using piece_1455_mem, ⟨piece_818_mem, piece_819_mem⟩

theorem linked_11591 : Linked cell_11591 pieces := by
  link_source cell_11591 with piece_1455 using piece_1455_mem, piece_818_mem

theorem linked_11592 : Linked cell_11592 pieces := by
  link_source cell_11592 with piece_1455 using piece_1455_mem, piece_818_mem

theorem linked_11593 : Linked cell_11593 pieces := by
  link_source cell_11593 with piece_1456 using piece_1456_mem, piece_818_mem

theorem linked_11594 : Linked cell_11594 pieces := by
  link_source cell_11594 with piece_1456 using piece_1456_mem, piece_818_mem

theorem linked_11595 : Linked cell_11595 pieces := by
  link_source cell_11595 with piece_1456 using piece_1456_mem, ⟨piece_817_mem, piece_818_mem⟩

theorem linked_11596 : Linked cell_11596 pieces := by
  link_source cell_11596 with piece_1456 using piece_1456_mem, piece_817_mem

theorem linked_11597 : Linked cell_11597 pieces := by
  link_source cell_11597 with piece_1457 using piece_1457_mem, ⟨piece_817_mem, piece_818_mem⟩

theorem linked_11598 : Linked cell_11598 pieces := by
  link_source cell_11598 with piece_1457 using piece_1457_mem, piece_817_mem

theorem linked_11599 : Linked cell_11599 pieces := by
  link_source cell_11599 with piece_1457 using piece_1457_mem, piece_817_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0231.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0231.cells,List.forall_mem_cons]
  exact ⟨linked_11550, linked_11551, linked_11552, linked_11553, linked_11554, linked_11555, linked_11556, linked_11557, linked_11558, linked_11559, linked_11560, linked_11561, linked_11562, linked_11563, linked_11564, linked_11565, linked_11566, linked_11567, linked_11568, linked_11569, linked_11570, linked_11571, linked_11572, linked_11573, linked_11574, linked_11575, linked_11576, linked_11577, linked_11578, linked_11579, linked_11580, linked_11581, linked_11582, linked_11583, linked_11584, linked_11585, linked_11586, linked_11587, linked_11588, linked_11589, linked_11590, linked_11591, linked_11592, linked_11593, linked_11594, linked_11595, linked_11596, linked_11597, linked_11598, linked_11599, by simp⟩

theorem covered : covers (30862500000000001 / 50000000000000000 : ℚ) (49870000000000003 / 80000000000000000 : ℚ)
    (SourceCertificates.Chunk0231.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0231
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0232
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(49870000000000003 / 80000000000000000 : ℚ), (12470000000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (27205756270571 / 50000000000000 : ℚ)
  w := (1728025748159 / 1250000000000 : ℚ)
  center := (99750000000000007 / 160000000000000000 : ℚ)
  supportValue := (32959841034361387 / 100000000000000000 : ℚ)
  supportSlope := (-1240683799257223 / 1000000000000000 : ℚ)
  oldCenter := (32959841034361387 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1458
  oldLo := (32800000000000001 / 100000000000000000 : ℚ)
  oldHi := (32850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_814]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11600 : Cell := { cellDefaults with
  r := (27218774767471 / 50000000000000 : ℚ)
  w := (13826721872869 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1457
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817]
}

noncomputable def cell_11601 : Cell := { cellDefaults with
  domain := ⟨(12470000000000001 / 20000000000000000 : ℚ), (9977642458100559 / 16000000000000000 : ℚ)⟩
  center := (99768212290502799 / 160000000000000000 : ℚ)
  supportValue := (659551865000951 / 2000000000000000 : ℚ)
  supportSlope := (-776071995629887 / 625000000000000 : ℚ)
  oldCenter := (659551865000951 / 2000000000000000 : ℚ)
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817]
}

noncomputable def cell_11602 : Cell := { cellDefaults with
  domain := ⟨(9977642458100559 / 16000000000000000 : ℚ), (24948212290502793 / 40000000000000000 : ℚ)⟩
  center := (99784636871508381 / 160000000000000000 : ℚ)
  supportValue := (3296485258074073 / 10000000000000000 : ℚ)
  supportSlope := (-6202743910384043 / 5000000000000000 : ℚ)
  oldCenter := (3296485258074073 / 10000000000000000 : ℚ)
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817]
}

noncomputable def cell_11603 : Cell := { cellDefaults with
  domain := ⟨(24948212290502793 / 40000000000000000 : ℚ), (49904636871508377 / 80000000000000000 : ℚ)⟩
  center := (99801061452513963 / 160000000000000000 : ℚ)
  supportValue := (32952146931344883 / 100000000000000000 : ℚ)
  supportSlope := (-12399735069772153 / 10000000000000000 : ℚ)
  oldCenter := (32952146931344883 / 100000000000000000 : ℚ)
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816, piece_817]
}

noncomputable def cell_11604 : Cell := { cellDefaults with
  domain := ⟨(49904636871508377 / 80000000000000000 : ℚ), (1559776536312849 / 2500000000000000 : ℚ)⟩
  center := (19963497206703909 / 32000000000000000 : ℚ)
  supportValue := (16469696017439217 / 50000000000000000 : ℚ)
  supportSlope := (-2479955434678177 / 2000000000000000 : ℚ)
  oldCenter := (16469696017439217 / 50000000000000000 : ℚ)
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816]
}

noncomputable def cell_11605 : Cell := { cellDefaults with
  domain := ⟨(1559776536312849 / 2500000000000000 : ℚ), (78 / 125 : ℚ)⟩
  center := (3119776536312849 / 5000000000000000 : ℚ)
  supportValue := (1646374553572369 / 5000000000000000 : ℚ)
  supportSlope := (-12388848970242807 / 10000000000000000 : ℚ)
  oldCenter := (1646374553572369 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1459
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816]
}

noncomputable def cell_11606 : Cell := { cellDefaults with
  domain := ⟨(78 / 125 : ℚ), (124825000000000003 / 200000000000000000 : ℚ)⟩
  r := (10877100351159 / 20000000000000 : ℚ)
  w := (13821690290127 / 10000000000000 : ℚ)
  center := (249625000000000003 / 400000000000000000 : ℚ)
  supportValue := (4118259508006307 / 12500000000000000 : ℚ)
  supportSlope := (-12395664292011621 / 10000000000000000 : ℚ)
  oldCenter := (4118259508006307 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1460
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816, piece_817]
}

noncomputable def cell_11607 : Cell := { cellDefaults with
  domain := ⟨(124825000000000003 / 200000000000000000 : ℚ), (62425000000000003 / 100000000000000000 : ℚ)⟩
  r := (10877100351159 / 20000000000000 : ℚ)
  w := (13821690290127 / 10000000000000 : ℚ)
  center := (249675000000000009 / 400000000000000000 : ℚ)
  supportValue := (32930561927890617 / 100000000000000000 : ℚ)
  supportSlope := (-774109226338489 / 625000000000000 : ℚ)
  oldCenter := (32930561927890617 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1460
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816]
}

noncomputable def cell_11608 : Cell := { cellDefaults with
  domain := ⟨(62425000000000003 / 100000000000000000 : ℚ), (124875000000000009 / 200000000000000000 : ℚ)⟩
  r := (10877100351159 / 20000000000000 : ℚ)
  w := (13821690290127 / 10000000000000 : ℚ)
  center := (49945000000000003 / 80000000000000000 : ℚ)
  supportValue := (4114386075646137 / 12500000000000000 : ℚ)
  supportSlope := (-193305873501919 / 156250000000000 : ℚ)
  oldCenter := (4114386075646137 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1460
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816]
}

noncomputable def cell_11609 : Cell := { cellDefaults with
  domain := ⟨(124875000000000009 / 200000000000000000 : ℚ), (31225000000000003 / 50000000000000000 : ℚ)⟩
  r := (10877100351159 / 20000000000000 : ℚ)
  w := (13821690290127 / 10000000000000 : ℚ)
  center := (249775000000000021 / 400000000000000000 : ℚ)
  supportValue := (32899655452467497 / 100000000000000000 : ℚ)
  supportSlope := (-6183344380480773 / 5000000000000000 : ℚ)
  oldCenter := (32899655452467497 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1460
  oldLo := (32850000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_815, piece_816]
}

noncomputable def cell_11610 : Cell := { cellDefaults with
  domain := ⟨(31225000000000003 / 50000000000000000 : ℚ), (124925000000000009 / 200000000000000000 : ℚ)⟩
  r := (13589881324651 / 25000000000000 : ℚ)
  w := (13819188853799 / 10000000000000 : ℚ)
  center := (249825000000000021 / 400000000000000000 : ℚ)
  supportValue := (3291591807994933 / 10000000000000000 : ℚ)
  supportSlope := (-3019148294237 / 2441406250000 : ℚ)
  oldCenter := (3291591807994933 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1461
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816]
}

noncomputable def cell_11611 : Cell := { cellDefaults with
  domain := ⟨(124925000000000009 / 200000000000000000 : ℚ), (62475000000000003 / 100000000000000000 : ℚ)⟩
  r := (13589881324651 / 25000000000000 : ℚ)
  w := (13819188853799 / 10000000000000 : ℚ)
  center := (49975000000000003 / 80000000000000000 : ℚ)
  supportValue := (6580098377948913 / 20000000000000000 : ℚ)
  supportSlope := (-12360600794140513 / 10000000000000000 : ℚ)
  oldCenter := (6580098377948913 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1461
  oldLo := (32850000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_815, piece_816]
}

noncomputable def cell_11612 : Cell := { cellDefaults with
  domain := ⟨(62475000000000003 / 100000000000000000 : ℚ), (124975000000000003 / 200000000000000000 : ℚ)⟩
  r := (13589881324651 / 25000000000000 : ℚ)
  w := (13819188853799 / 10000000000000 : ℚ)
  center := (249925000000000009 / 400000000000000000 : ℚ)
  supportValue := (3288501594886837 / 10000000000000000 : ℚ)
  supportSlope := (-6177874085238807 / 5000000000000000 : ℚ)
  oldCenter := (3288501594886837 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1461
  oldLo := (32850000000000001 / 100000000000000000 : ℚ)
  oldHi := (32900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_815]
}

noncomputable def cell_11613 : Cell := { cellDefaults with
  domain := ⟨(124975000000000003 / 200000000000000000 : ℚ), (5 / 8 : ℚ)⟩
  r := (13589881324651 / 25000000000000 : ℚ)
  w := (13819188853799 / 10000000000000 : ℚ)
  center := (249975000000000003 / 400000000000000000 : ℚ)
  supportValue := (32869580116629593 / 100000000000000000 : ℚ)
  supportSlope := (-6170795309562067 / 5000000000000000 : ℚ)
  oldCenter := (32869580116629593 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1461
  oldLo := (32850000000000001 / 100000000000000000 : ℚ)
  oldHi := (32900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_815]
}

noncomputable def cell_11614 : Cell := { cellDefaults with
  domain := ⟨(5 / 8 : ℚ), (125025000000000003 / 200000000000000000 : ℚ)⟩
  r := (5433357333859 / 10000000000000 : ℚ)
  w := (13816688515747 / 10000000000000 : ℚ)
  center := (250025000000000003 / 400000000000000000 : ℚ)
  supportValue := (3288585576744649 / 10000000000000000 : ℚ)
  supportSlope := (-3087656651447797 / 2500000000000000 : ℚ)
  oldCenter := (3288585576744649 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1462
  oldLo := (32850000000000001 / 100000000000000000 : ℚ)
  oldHi := (32900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_815]
}

noncomputable def cell_11615 : Cell := { cellDefaults with
  domain := ⟨(125025000000000003 / 200000000000000000 : ℚ), (62525000000000003 / 100000000000000000 : ℚ)⟩
  r := (5433357333859 / 10000000000000 : ℚ)
  w := (13816688515747 / 10000000000000 : ℚ)
  center := (250075000000000009 / 400000000000000000 : ℚ)
  supportValue := (821760658263731 / 2500000000000000 : ℚ)
  supportSlope := (-12336479624613559 / 10000000000000000 : ℚ)
  oldCenter := (821760658263731 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1462
  oldLo := (32850000000000001 / 100000000000000000 : ℚ)
  oldHi := (32900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_815]
}

noncomputable def cell_11616 : Cell := { cellDefaults with
  domain := ⟨(62525000000000003 / 100000000000000000 : ℚ), (125075000000000009 / 200000000000000000 : ℚ)⟩
  r := (5433357333859 / 10000000000000 : ℚ)
  w := (13816688515747 / 10000000000000 : ℚ)
  center := (50025000000000003 / 80000000000000000 : ℚ)
  supportValue := (6571007507888993 / 20000000000000000 : ℚ)
  supportSlope := (-154068514841547 / 125000000000000 : ℚ)
  oldCenter := (6571007507888993 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1462
  oldHi := (32900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_814, piece_815]
}

noncomputable def cell_11617 : Cell := { cellDefaults with
  domain := ⟨(125075000000000009 / 200000000000000000 : ℚ), (31275000000000003 / 50000000000000000 : ℚ)⟩
  r := (5433357333859 / 10000000000000 : ℚ)
  w := (13816688515747 / 10000000000000 : ℚ)
  center := (250175000000000021 / 400000000000000000 : ℚ)
  supportValue := (3283960546559707 / 10000000000000000 : ℚ)
  supportSlope := (-3081477828871989 / 2500000000000000 : ℚ)
  oldCenter := (3283960546559707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1462
  oldPieces := [piece_814]
}

noncomputable def cell_11618 : Cell := { cellDefaults with
  domain := ⟨(31275000000000003 / 50000000000000000 : ℚ), (125125000000000009 / 200000000000000000 : ℚ)⟩
  r := (27153826375151 / 50000000000000 : ℚ)
  w := (13814198232813 / 10000000000000 : ℚ)
  center := (250225000000000021 / 400000000000000000 : ℚ)
  supportValue := (410698256586917 / 1250000000000000 : ℚ)
  supportSlope := (-3079853611951769 / 2500000000000000 : ℚ)
  oldCenter := (410698256586917 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1463
  oldHi := (32900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_814, piece_815]
}

noncomputable def cell_11619 : Cell := { cellDefaults with
  domain := ⟨(125125000000000009 / 200000000000000000 : ℚ), (62575000000000003 / 100000000000000000 : ℚ)⟩
  r := (27153826375151 / 50000000000000 : ℚ)
  w := (13814198232813 / 10000000000000 : ℚ)
  center := (50055000000000003 / 80000000000000000 : ℚ)
  supportValue := (821010900714413 / 2500000000000000 : ℚ)
  supportSlope := (-1232080338733047 / 1000000000000000 : ℚ)
  oldCenter := (821010900714413 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1463
  oldPieces := [piece_814]
}

noncomputable def cell_11620 : Cell := { cellDefaults with
  domain := ⟨(62575000000000003 / 100000000000000000 : ℚ), (125175000000000003 / 200000000000000000 : ℚ)⟩
  r := (27153826375151 / 50000000000000 : ℚ)
  w := (13814198232813 / 10000000000000 : ℚ)
  center := (250325000000000009 / 400000000000000000 : ℚ)
  supportValue := (8206260966774781 / 25000000000000000 : ℚ)
  supportSlope := (-2461332444992987 / 2000000000000000 : ℚ)
  oldCenter := (8206260966774781 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1463
  oldPieces := [piece_814]
}

noncomputable def cell_11621 : Cell := { cellDefaults with
  domain := ⟨(125175000000000003 / 200000000000000000 : ℚ), (313 / 500 : ℚ)⟩
  r := (27153826375151 / 50000000000000 : ℚ)
  w := (13814198232813 / 10000000000000 : ℚ)
  center := (250375000000000003 / 400000000000000000 : ℚ)
  supportValue := (1640483467277437 / 5000000000000000 : ℚ)
  supportSlope := (-2458515883193197 / 2000000000000000 : ℚ)
  oldCenter := (1640483467277437 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1463
  oldPieces := [piece_814]
}

noncomputable def cell_11622 : Cell := { cellDefaults with
  domain := ⟨(313 / 500 : ℚ), (125225000000000003 / 200000000000000000 : ℚ)⟩
  r := (6785220391277 / 12500000000000 : ℚ)
  w := (1726464636747 / 1250000000000 : ℚ)
  center := (250425000000000003 / 400000000000000000 : ℚ)
  supportValue := (32825853496087737 / 100000000000000000 : ℚ)
  supportSlope := (-6150773638874769 / 5000000000000000 : ℚ)
  oldCenter := (32825853496087737 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1464
  oldPieces := [piece_814]
}

noncomputable def cell_11623 : Cell := { cellDefaults with
  domain := ⟨(125225000000000003 / 200000000000000000 : ℚ), (62625000000000003 / 100000000000000000 : ℚ)⟩
  r := (6785220391277 / 12500000000000 : ℚ)
  w := (1726464636747 / 1250000000000 : ℚ)
  center := (250475000000000009 / 400000000000000000 : ℚ)
  supportValue := (328104853615947 / 1000000000000000 : ℚ)
  supportSlope := (-1535934382328279 / 1250000000000000 : ℚ)
  oldCenter := (328104853615947 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1464
  oldPieces := [piece_814]
}

noncomputable def cell_11624 : Cell := { cellDefaults with
  domain := ⟨(62625000000000003 / 100000000000000000 : ℚ), (125275000000000009 / 200000000000000000 : ℚ)⟩
  r := (6785220391277 / 12500000000000 : ℚ)
  w := (1726464636747 / 1250000000000 : ℚ)
  center := (50105000000000003 / 80000000000000000 : ℚ)
  supportValue := (32795150722889127 / 100000000000000000 : ℚ)
  supportSlope := (-12287872494275067 / 10000000000000000 : ℚ)
  oldCenter := (32795150722889127 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1464
  oldLo := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_813, piece_814]
}

noncomputable def cell_11625 : Cell := { cellDefaults with
  domain := ⟨(125275000000000009 / 200000000000000000 : ℚ), (31325000000000003 / 50000000000000000 : ℚ)⟩
  r := (6785220391277 / 12500000000000 : ℚ)
  w := (1726464636747 / 1250000000000 : ℚ)
  center := (250575000000000021 / 400000000000000000 : ℚ)
  supportValue := (3277977271670853 / 10000000000000000 : ℚ)
  supportSlope := (-613849348070887 / 500000000000000 : ℚ)
  oldCenter := (3277977271670853 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1464
  oldLo := (32750000000000001 / 100000000000000000 : ℚ)
  oldHi := (32800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_813]
}

noncomputable def cell_11626 : Cell := { cellDefaults with
  domain := ⟨(31325000000000003 / 50000000000000000 : ℚ), (125325000000000009 / 200000000000000000 : ℚ)⟩
  r := (27127949691509 / 50000000000000 : ℚ)
  w := (13809237662897 / 10000000000000 : ℚ)
  center := (250625000000000021 / 400000000000000000 : ℚ)
  supportValue := (32795967800021303 / 100000000000000000 : ℚ)
  supportSlope := (-1535229886762319 / 1250000000000000 : ℚ)
  oldCenter := (32795967800021303 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1465
  oldLo := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_813, piece_814]
}

noncomputable def cell_11627 : Cell := { cellDefaults with
  domain := ⟨(125325000000000009 / 200000000000000000 : ℚ), (62675000000000003 / 100000000000000000 : ℚ)⟩
  r := (27127949691509 / 50000000000000 : ℚ)
  w := (13809237662897 / 10000000000000 : ℚ)
  center := (50135000000000003 / 80000000000000000 : ℚ)
  supportValue := (32780596155647157 / 100000000000000000 : ℚ)
  supportSlope := (-6135951166848689 / 5000000000000000 : ℚ)
  oldCenter := (32780596155647157 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1465
  oldLo := (32750000000000001 / 100000000000000000 : ℚ)
  oldHi := (32800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_813]
}

noncomputable def cell_11628 : Cell := { cellDefaults with
  domain := ⟨(62675000000000003 / 100000000000000000 : ℚ), (125375000000000003 / 200000000000000000 : ℚ)⟩
  r := (27127949691509 / 50000000000000 : ℚ)
  w := (13809237662897 / 10000000000000 : ℚ)
  center := (250725000000000009 / 400000000000000000 : ℚ)
  supportValue := (655305301192571 / 2000000000000000 : ℚ)
  supportSlope := (-1532232306131937 / 1250000000000000 : ℚ)
  oldCenter := (655305301192571 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1465
  oldLo := (32750000000000001 / 100000000000000000 : ℚ)
  oldHi := (32800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_813]
}

noncomputable def cell_11629 : Cell := { cellDefaults with
  domain := ⟨(125375000000000003 / 200000000000000000 : ℚ), (627 / 1000 : ℚ)⟩
  r := (27127949691509 / 50000000000000 : ℚ)
  w := (13809237662897 / 10000000000000 : ℚ)
  center := (250775000000000003 / 400000000000000000 : ℚ)
  supportValue := (3274997432283287 / 10000000000000000 : ℚ)
  supportSlope := (-12252771682216639 / 10000000000000000 : ℚ)
  oldCenter := (3274997432283287 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1465
  oldLo := (32700000000000001 / 100000000000000000 : ℚ)
  oldHi := (32800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_812, piece_813]
}

noncomputable def cell_11630 : Cell := { cellDefaults with
  domain := ⟨(627 / 1000 : ℚ), (125425000000000003 / 200000000000000000 : ℚ)⟩
  r := (1355751720087 / 2500000000000 : ℚ)
  w := (431461634971 / 312500000000 : ℚ)
  center := (250825000000000003 / 400000000000000000 : ℚ)
  supportValue := (3276605487763197 / 10000000000000000 : ℚ)
  supportSlope := (-98022054581423 / 80000000000000 : ℚ)
  oldCenter := (3276605487763197 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1466
  oldLo := (32750000000000001 / 100000000000000000 : ℚ)
  oldHi := (32800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_813]
}

noncomputable def cell_11631 : Cell := { cellDefaults with
  domain := ⟨(125425000000000003 / 200000000000000000 : ℚ), (62725000000000003 / 100000000000000000 : ℚ)⟩
  r := (1355751720087 / 2500000000000 : ℚ)
  w := (431461634971 / 312500000000 : ℚ)
  center := (250875000000000009 / 400000000000000000 : ℚ)
  supportValue := (32750770596194323 / 100000000000000000 : ℚ)
  supportSlope := (-1224675960199337 / 1000000000000000 : ℚ)
  oldCenter := (32750770596194323 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1466
  oldLo := (32700000000000001 / 100000000000000000 : ℚ)
  oldHi := (32800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_812, piece_813]
}

noncomputable def cell_11632 : Cell := { cellDefaults with
  domain := ⟨(62725000000000003 / 100000000000000000 : ℚ), (125475000000000009 / 200000000000000000 : ℚ)⟩
  r := (1355751720087 / 2500000000000 : ℚ)
  w := (431461634971 / 312500000000 : ℚ)
  center := (50185000000000003 / 80000000000000000 : ℚ)
  supportValue := (3273543693863409 / 10000000000000000 : ℚ)
  supportSlope := (-1224239696351179 / 1000000000000000 : ℚ)
  oldCenter := (3273543693863409 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1466
  oldLo := (32700000000000001 / 100000000000000000 : ℚ)
  oldHi := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_812]
}

noncomputable def cell_11633 : Cell := { cellDefaults with
  domain := ⟨(125475000000000009 / 200000000000000000 : ℚ), (31375000000000003 / 50000000000000000 : ℚ)⟩
  r := (1355751720087 / 2500000000000 : ℚ)
  w := (431461634971 / 312500000000 : ℚ)
  center := (250975000000000021 / 400000000000000000 : ℚ)
  supportValue := (1636007135909791 / 5000000000000000 : ℚ)
  supportSlope := (-3057090733715373 / 2500000000000000 : ℚ)
  oldCenter := (1636007135909791 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1466
  oldLo := (32700000000000001 / 100000000000000000 : ℚ)
  oldHi := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_812]
}

noncomputable def cell_11634 : Cell := { cellDefaults with
  domain := ⟨(31375000000000003 / 50000000000000000 : ℚ), (125525000000000009 / 200000000000000000 : ℚ)⟩
  r := (3387766461173 / 6250000000000 : ℚ)
  w := (862769189547 / 625000000000 : ℚ)
  center := (251025000000000021 / 400000000000000000 : ℚ)
  supportValue := (3273623825924611 / 10000000000000000 : ℚ)
  supportSlope := (-3059329772057507 / 2500000000000000 : ℚ)
  oldCenter := (3273623825924611 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1467
  oldLo := (32700000000000001 / 100000000000000000 : ℚ)
  oldHi := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_812]
}

noncomputable def cell_11635 : Cell := { cellDefaults with
  domain := ⟨(125525000000000009 / 200000000000000000 : ℚ), (62775000000000003 / 100000000000000000 : ℚ)⟩
  r := (3387766461173 / 6250000000000 : ℚ)
  w := (862769189547 / 625000000000 : ℚ)
  center := (50215000000000003 / 80000000000000000 : ℚ)
  supportValue := (654419007591207 / 2000000000000000 : ℚ)
  supportSlope := (-6111647796696773 / 5000000000000000 : ℚ)
  oldCenter := (654419007591207 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1467
  oldLo := (32700000000000001 / 100000000000000000 : ℚ)
  oldHi := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_812]
}

noncomputable def cell_11636 : Cell := { cellDefaults with
  domain := ⟨(62775000000000003 / 100000000000000000 : ℚ), (125575000000000003 / 200000000000000000 : ℚ)⟩
  r := (3387766461173 / 6250000000000 : ℚ)
  w := (862769189547 / 625000000000 : ℚ)
  center := (251125000000000009 / 400000000000000000 : ℚ)
  supportValue := (3270570288697111 / 10000000000000000 : ℚ)
  supportSlope := (-6105802901013767 / 5000000000000000 : ℚ)
  oldCenter := (3270570288697111 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1467
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811, piece_812]
}

noncomputable def cell_11637 : Cell := { cellDefaults with
  domain := ⟨(125575000000000003 / 200000000000000000 : ℚ), (157 / 250 : ℚ)⟩
  r := (3387766461173 / 6250000000000 : ℚ)
  w := (862769189547 / 625000000000 : ℚ)
  center := (251175000000000003 / 400000000000000000 : ℚ)
  supportValue := (3269041313827569 / 10000000000000000 : ℚ)
  supportSlope := (-6106524794083533 / 5000000000000000 : ℚ)
  oldCenter := (3269041313827569 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1467
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811]
}

noncomputable def cell_11638 : Cell := { cellDefaults with
  domain := ⟨(157 / 250 : ℚ), (125625000000000003 / 200000000000000000 : ℚ)⟩
  r := (2708924456541 / 5000000000000 : ℚ)
  w := (690092617821 / 500000000000 : ℚ)
  center := (251225000000000003 / 400000000000000000 : ℚ)
  supportValue := (408831077747831 / 1250000000000000 : ℚ)
  supportSlope := (-6102807527525279 / 5000000000000000 : ℚ)
  oldCenter := (408831077747831 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1468
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811, piece_812]
}

noncomputable def cell_11639 : Cell := { cellDefaults with
  domain := ⟨(125625000000000003 / 200000000000000000 : ℚ), (62825000000000003 / 100000000000000000 : ℚ)⟩
  r := (2708924456541 / 5000000000000 : ℚ)
  w := (690092617821 / 500000000000 : ℚ)
  center := (251275000000000009 / 400000000000000000 : ℚ)
  supportValue := (32691203952041553 / 100000000000000000 : ℚ)
  supportSlope := (-12207983649553313 / 10000000000000000 : ℚ)
  oldCenter := (32691203952041553 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1468
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811]
}

noncomputable def cell_11640 : Cell := { cellDefaults with
  domain := ⟨(62825000000000003 / 100000000000000000 : ℚ), (125675000000000009 / 200000000000000000 : ℚ)⟩
  r := (2708924456541 / 5000000000000 : ℚ)
  w := (690092617821 / 500000000000 : ℚ)
  center := (50265000000000003 / 80000000000000000 : ℚ)
  supportValue := (408449409190469 / 1250000000000000 : ℚ)
  supportSlope := (-2438794092833581 / 2000000000000000 : ℚ)
  oldCenter := (408449409190469 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1468
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811]
}

noncomputable def cell_11641 : Cell := { cellDefaults with
  domain := ⟨(125675000000000009 / 200000000000000000 : ℚ), (31425000000000003 / 50000000000000000 : ℚ)⟩
  r := (2708924456541 / 5000000000000 : ℚ)
  w := (690092617821 / 500000000000 : ℚ)
  center := (251375000000000021 / 400000000000000000 : ℚ)
  supportValue := (3266071899861113 / 10000000000000000 : ℚ)
  supportSlope := (-3045003819381521 / 2500000000000000 : ℚ)
  oldCenter := (3266071899861113 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1468
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811]
}

noncomputable def cell_11642 : Cell := { cellDefaults with
  domain := ⟨(31425000000000003 / 50000000000000000 : ℚ), (125725000000000009 / 200000000000000000 : ℚ)⟩
  r := (13538186281219 / 25000000000000 : ℚ)
  w := (13799406831609 / 10000000000000 : ℚ)
  center := (251425000000000021 / 400000000000000000 : ℚ)
  supportValue := (3267672318981259 / 10000000000000000 : ℚ)
  supportSlope := (-1523612230862797 / 1250000000000000 : ℚ)
  oldCenter := (3267672318981259 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1469
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811]
}

noncomputable def cell_11643 : Cell := { cellDefaults with
  domain := ⟨(125725000000000009 / 200000000000000000 : ℚ), (62875000000000003 / 100000000000000000 : ℚ)⟩
  r := (13538186281219 / 25000000000000 : ℚ)
  w := (13799406831609 / 10000000000000 : ℚ)
  center := (50295000000000003 / 80000000000000000 : ℚ)
  supportValue := (16330747893695813 / 50000000000000000 : ℚ)
  supportSlope := (-2434990630654291 / 2000000000000000 : ℚ)
  oldCenter := (16330747893695813 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1469
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811]
}

noncomputable def cell_11644 : Cell := { cellDefaults with
  domain := ⟨(62875000000000003 / 100000000000000000 : ℚ), (125775000000000003 / 200000000000000000 : ℚ)⟩
  r := (13538186281219 / 25000000000000 : ℚ)
  w := (13799406831609 / 10000000000000 : ℚ)
  center := (251525000000000009 / 400000000000000000 : ℚ)
  supportValue := (32646303200140503 / 100000000000000000 : ℚ)
  supportSlope := (-12174250254092593 / 10000000000000000 : ℚ)
  oldCenter := (32646303200140503 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1469
  oldLo := (32600000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_810, piece_811]
}

noncomputable def cell_11645 : Cell := { cellDefaults with
  domain := ⟨(125775000000000003 / 200000000000000000 : ℚ), (629 / 1000 : ℚ)⟩
  r := (13538186281219 / 25000000000000 : ℚ)
  w := (13799406831609 / 10000000000000 : ℚ)
  center := (251575000000000003 / 400000000000000000 : ℚ)
  supportValue := (1631553281022163 / 5000000000000000 : ℚ)
  supportSlope := (-6082392349991591 / 5000000000000000 : ℚ)
  oldCenter := (1631553281022163 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1469
  oldLo := (32600000000000001 / 100000000000000000 : ℚ)
  oldHi := (32650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_810]
}

noncomputable def cell_11646 : Cell := { cellDefaults with
  domain := ⟨(629 / 1000 : ℚ), (25164413407821229 / 40000000000000000 : ℚ)⟩
  r := (54127026764491 / 100000000000000 : ℚ)
  w := (3449240859187 / 2500000000000 : ℚ)
  center := (50324413407821229 / 80000000000000000 : ℚ)
  supportValue := (3264797276217097 / 10000000000000000 : ℚ)
  supportSlope := (-3042097800530289 / 2500000000000000 : ℚ)
  oldCenter := (3264797276217097 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1470
  oldLo := (32600000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_810, piece_811]
}

noncomputable def cell_11647 : Cell := { cellDefaults with
  domain := ⟨(25164413407821229 / 40000000000000000 : ℚ), (12584413407821229 / 20000000000000000 : ℚ)⟩
  r := (54127026764491 / 100000000000000 : ℚ)
  w := (3449240859187 / 2500000000000 : ℚ)
  center := (50333240223463687 / 80000000000000000 : ℚ)
  supportValue := (1631726195403337 / 5000000000000000 : ℚ)
  supportSlope := (-1520274920509837 / 1250000000000000 : ℚ)
  oldCenter := (1631726195403337 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1470
  oldLo := (32600000000000001 / 100000000000000000 : ℚ)
  oldHi := (32650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_810]
}

noncomputable def cell_11648 : Cell := { cellDefaults with
  domain := ⟨(12584413407821229 / 20000000000000000 : ℚ), (25173240223463687 / 40000000000000000 : ℚ)⟩
  r := (54127026764491 / 100000000000000 : ℚ)
  w := (3449240859187 / 2500000000000 : ℚ)
  center := (10068413407821229 / 16000000000000000 : ℚ)
  supportValue := (3262111151517851 / 10000000000000000 : ℚ)
  supportSlope := (-12149888948244807 / 10000000000000000 : ℚ)
  oldCenter := (3262111151517851 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1470
  oldLo := (32600000000000001 / 100000000000000000 : ℚ)
  oldHi := (32650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_810]
}

noncomputable def cell_11649 : Cell := { cellDefaults with
  domain := ⟨(25173240223463687 / 40000000000000000 : ℚ), (6294413407821229 / 10000000000000000 : ℚ)⟩
  r := (54127026764491 / 100000000000000 : ℚ)
  w := (3449240859187 / 2500000000000 : ℚ)
  center := (50350893854748603 / 80000000000000000 : ℚ)
  supportValue := (208689361153 / 640000000000 : ℚ)
  supportSlope := (-242752470563311 / 200000000000000 : ℚ)
  oldCenter := (208689361153 / 640000000000 : ℚ)
  newCoefficients := coefficients_1470
  oldLo := (32600000000000001 / 100000000000000000 : ℚ)
  oldHi := (32650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_810]
}

theorem check_11600 : cell_11600.check = true := by
  decide +kernel

theorem check_11601 : cell_11601.check = true := by
  decide +kernel

theorem check_11602 : cell_11602.check = true := by
  decide +kernel

theorem check_11603 : cell_11603.check = true := by
  decide +kernel

theorem check_11604 : cell_11604.check = true := by
  decide +kernel

theorem check_11605 : cell_11605.check = true := by
  decide +kernel

theorem check_11606 : cell_11606.check = true := by
  decide +kernel

theorem check_11607 : cell_11607.check = true := by
  decide +kernel

theorem check_11608 : cell_11608.check = true := by
  decide +kernel

theorem check_11609 : cell_11609.check = true := by
  decide +kernel

theorem check_11610 : cell_11610.check = true := by
  decide +kernel

theorem check_11611 : cell_11611.check = true := by
  decide +kernel

theorem check_11612 : cell_11612.check = true := by
  decide +kernel

theorem check_11613 : cell_11613.check = true := by
  decide +kernel

theorem check_11614 : cell_11614.check = true := by
  decide +kernel

theorem check_11615 : cell_11615.check = true := by
  decide +kernel

theorem check_11616 : cell_11616.check = true := by
  decide +kernel

theorem check_11617 : cell_11617.check = true := by
  decide +kernel

theorem check_11618 : cell_11618.check = true := by
  decide +kernel

theorem check_11619 : cell_11619.check = true := by
  decide +kernel

theorem check_11620 : cell_11620.check = true := by
  decide +kernel

theorem check_11621 : cell_11621.check = true := by
  decide +kernel

theorem check_11622 : cell_11622.check = true := by
  decide +kernel

theorem check_11623 : cell_11623.check = true := by
  decide +kernel

theorem check_11624 : cell_11624.check = true := by
  decide +kernel

theorem check_11625 : cell_11625.check = true := by
  decide +kernel

theorem check_11626 : cell_11626.check = true := by
  decide +kernel

theorem check_11627 : cell_11627.check = true := by
  decide +kernel

theorem check_11628 : cell_11628.check = true := by
  decide +kernel

theorem check_11629 : cell_11629.check = true := by
  decide +kernel

theorem check_11630 : cell_11630.check = true := by
  decide +kernel

theorem check_11631 : cell_11631.check = true := by
  decide +kernel

theorem check_11632 : cell_11632.check = true := by
  decide +kernel

theorem check_11633 : cell_11633.check = true := by
  decide +kernel

theorem check_11634 : cell_11634.check = true := by
  decide +kernel

theorem check_11635 : cell_11635.check = true := by
  decide +kernel

theorem check_11636 : cell_11636.check = true := by
  decide +kernel

theorem check_11637 : cell_11637.check = true := by
  decide +kernel

theorem check_11638 : cell_11638.check = true := by
  decide +kernel

theorem check_11639 : cell_11639.check = true := by
  decide +kernel

theorem check_11640 : cell_11640.check = true := by
  decide +kernel

theorem check_11641 : cell_11641.check = true := by
  decide +kernel

theorem check_11642 : cell_11642.check = true := by
  decide +kernel

theorem check_11643 : cell_11643.check = true := by
  decide +kernel

theorem check_11644 : cell_11644.check = true := by
  decide +kernel

theorem check_11645 : cell_11645.check = true := by
  decide +kernel

theorem check_11646 : cell_11646.check = true := by
  decide +kernel

theorem check_11647 : cell_11647.check = true := by
  decide +kernel

theorem check_11648 : cell_11648.check = true := by
  decide +kernel

theorem check_11649 : cell_11649.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11600, cell_11601, cell_11602, cell_11603, cell_11604, cell_11605, cell_11606, cell_11607, cell_11608, cell_11609, cell_11610, cell_11611, cell_11612, cell_11613, cell_11614, cell_11615, cell_11616, cell_11617, cell_11618, cell_11619, cell_11620, cell_11621, cell_11622, cell_11623, cell_11624, cell_11625, cell_11626, cell_11627, cell_11628, cell_11629, cell_11630, cell_11631, cell_11632, cell_11633, cell_11634, cell_11635, cell_11636, cell_11637, cell_11638, cell_11639, cell_11640, cell_11641, cell_11642, cell_11643, cell_11644, cell_11645, cell_11646, cell_11647, cell_11648, cell_11649]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11600, check_11601, check_11602, check_11603, check_11604, check_11605, check_11606, check_11607, check_11608, check_11609, check_11610, check_11611, check_11612, check_11613, check_11614, check_11615, check_11616, check_11617, check_11618, check_11619, check_11620, check_11621, check_11622, check_11623, check_11624, check_11625, check_11626, check_11627, check_11628, check_11629, check_11630, check_11631, check_11632, check_11633, check_11634, check_11635, check_11636, check_11637, check_11638, check_11639, check_11640, check_11641, check_11642, check_11643, check_11644, check_11645, check_11646, check_11647, check_11648, check_11649, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0232

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0232
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0232
open AnalyticBounds.ExpressionCertificate

theorem linked_11600 : Linked cell_11600 pieces := by
  link_source cell_11600 with piece_1457 using piece_1457_mem, piece_817_mem

theorem linked_11601 : Linked cell_11601 pieces := by
  link_source cell_11601 with piece_1458 using piece_1458_mem, piece_817_mem

theorem linked_11602 : Linked cell_11602 pieces := by
  link_source cell_11602 with piece_1458 using piece_1458_mem, piece_817_mem

theorem linked_11603 : Linked cell_11603 pieces := by
  link_source cell_11603 with piece_1458 using piece_1458_mem, ⟨piece_816_mem, piece_817_mem⟩

theorem linked_11604 : Linked cell_11604 pieces := by
  link_source cell_11604 with piece_1458 using piece_1458_mem, piece_816_mem

theorem linked_11605 : Linked cell_11605 pieces := by
  link_source cell_11605 with piece_1459 using piece_1459_mem, piece_816_mem

theorem linked_11606 : Linked cell_11606 pieces := by
  link_source cell_11606 with piece_1460 using piece_1460_mem, ⟨piece_816_mem, piece_817_mem⟩

theorem linked_11607 : Linked cell_11607 pieces := by
  link_source cell_11607 with piece_1460 using piece_1460_mem, piece_816_mem

theorem linked_11608 : Linked cell_11608 pieces := by
  link_source cell_11608 with piece_1460 using piece_1460_mem, piece_816_mem

theorem linked_11609 : Linked cell_11609 pieces := by
  link_source cell_11609 with piece_1460 using piece_1460_mem, ⟨piece_815_mem, piece_816_mem⟩

theorem linked_11610 : Linked cell_11610 pieces := by
  link_source cell_11610 with piece_1461 using piece_1461_mem, piece_816_mem

theorem linked_11611 : Linked cell_11611 pieces := by
  link_source cell_11611 with piece_1461 using piece_1461_mem, ⟨piece_815_mem, piece_816_mem⟩

theorem linked_11612 : Linked cell_11612 pieces := by
  link_source cell_11612 with piece_1461 using piece_1461_mem, piece_815_mem

theorem linked_11613 : Linked cell_11613 pieces := by
  link_source cell_11613 with piece_1461 using piece_1461_mem, piece_815_mem

theorem linked_11614 : Linked cell_11614 pieces := by
  link_source cell_11614 with piece_1462 using piece_1462_mem, piece_815_mem

theorem linked_11615 : Linked cell_11615 pieces := by
  link_source cell_11615 with piece_1462 using piece_1462_mem, piece_815_mem

theorem linked_11616 : Linked cell_11616 pieces := by
  link_source cell_11616 with piece_1462 using piece_1462_mem, ⟨piece_814_mem, piece_815_mem⟩

theorem linked_11617 : Linked cell_11617 pieces := by
  link_source cell_11617 with piece_1462 using piece_1462_mem, piece_814_mem

theorem linked_11618 : Linked cell_11618 pieces := by
  link_source cell_11618 with piece_1463 using piece_1463_mem, ⟨piece_814_mem, piece_815_mem⟩

theorem linked_11619 : Linked cell_11619 pieces := by
  link_source cell_11619 with piece_1463 using piece_1463_mem, piece_814_mem

theorem linked_11620 : Linked cell_11620 pieces := by
  link_source cell_11620 with piece_1463 using piece_1463_mem, piece_814_mem

theorem linked_11621 : Linked cell_11621 pieces := by
  link_source cell_11621 with piece_1463 using piece_1463_mem, piece_814_mem

theorem linked_11622 : Linked cell_11622 pieces := by
  link_source cell_11622 with piece_1464 using piece_1464_mem, piece_814_mem

theorem linked_11623 : Linked cell_11623 pieces := by
  link_source cell_11623 with piece_1464 using piece_1464_mem, piece_814_mem

theorem linked_11624 : Linked cell_11624 pieces := by
  link_source cell_11624 with piece_1464 using piece_1464_mem, ⟨piece_813_mem, piece_814_mem⟩

theorem linked_11625 : Linked cell_11625 pieces := by
  link_source cell_11625 with piece_1464 using piece_1464_mem, piece_813_mem

theorem linked_11626 : Linked cell_11626 pieces := by
  link_source cell_11626 with piece_1465 using piece_1465_mem, ⟨piece_813_mem, piece_814_mem⟩

theorem linked_11627 : Linked cell_11627 pieces := by
  link_source cell_11627 with piece_1465 using piece_1465_mem, piece_813_mem

theorem linked_11628 : Linked cell_11628 pieces := by
  link_source cell_11628 with piece_1465 using piece_1465_mem, piece_813_mem

theorem linked_11629 : Linked cell_11629 pieces := by
  link_source cell_11629 with piece_1465 using piece_1465_mem, ⟨piece_812_mem, piece_813_mem⟩

theorem linked_11630 : Linked cell_11630 pieces := by
  link_source cell_11630 with piece_1466 using piece_1466_mem, piece_813_mem

theorem linked_11631 : Linked cell_11631 pieces := by
  link_source cell_11631 with piece_1466 using piece_1466_mem, ⟨piece_812_mem, piece_813_mem⟩

theorem linked_11632 : Linked cell_11632 pieces := by
  link_source cell_11632 with piece_1466 using piece_1466_mem, piece_812_mem

theorem linked_11633 : Linked cell_11633 pieces := by
  link_source cell_11633 with piece_1466 using piece_1466_mem, piece_812_mem

theorem linked_11634 : Linked cell_11634 pieces := by
  link_source cell_11634 with piece_1467 using piece_1467_mem, piece_812_mem

theorem linked_11635 : Linked cell_11635 pieces := by
  link_source cell_11635 with piece_1467 using piece_1467_mem, piece_812_mem

theorem linked_11636 : Linked cell_11636 pieces := by
  link_source cell_11636 with piece_1467 using piece_1467_mem, ⟨piece_811_mem, piece_812_mem⟩

theorem linked_11637 : Linked cell_11637 pieces := by
  link_source cell_11637 with piece_1467 using piece_1467_mem, piece_811_mem

theorem linked_11638 : Linked cell_11638 pieces := by
  link_source cell_11638 with piece_1468 using piece_1468_mem, ⟨piece_811_mem, piece_812_mem⟩

theorem linked_11639 : Linked cell_11639 pieces := by
  link_source cell_11639 with piece_1468 using piece_1468_mem, piece_811_mem

theorem linked_11640 : Linked cell_11640 pieces := by
  link_source cell_11640 with piece_1468 using piece_1468_mem, piece_811_mem

theorem linked_11641 : Linked cell_11641 pieces := by
  link_source cell_11641 with piece_1468 using piece_1468_mem, piece_811_mem

theorem linked_11642 : Linked cell_11642 pieces := by
  link_source cell_11642 with piece_1469 using piece_1469_mem, piece_811_mem

theorem linked_11643 : Linked cell_11643 pieces := by
  link_source cell_11643 with piece_1469 using piece_1469_mem, piece_811_mem

theorem linked_11644 : Linked cell_11644 pieces := by
  link_source cell_11644 with piece_1469 using piece_1469_mem, ⟨piece_810_mem, piece_811_mem⟩

theorem linked_11645 : Linked cell_11645 pieces := by
  link_source cell_11645 with piece_1469 using piece_1469_mem, piece_810_mem

theorem linked_11646 : Linked cell_11646 pieces := by
  link_source cell_11646 with piece_1470 using piece_1470_mem, ⟨piece_810_mem, piece_811_mem⟩

theorem linked_11647 : Linked cell_11647 pieces := by
  link_source cell_11647 with piece_1470 using piece_1470_mem, piece_810_mem

theorem linked_11648 : Linked cell_11648 pieces := by
  link_source cell_11648 with piece_1470 using piece_1470_mem, piece_810_mem

theorem linked_11649 : Linked cell_11649 pieces := by
  link_source cell_11649 with piece_1470 using piece_1470_mem, piece_810_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0232.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0232.cells,List.forall_mem_cons]
  exact ⟨linked_11600, linked_11601, linked_11602, linked_11603, linked_11604, linked_11605, linked_11606, linked_11607, linked_11608, linked_11609, linked_11610, linked_11611, linked_11612, linked_11613, linked_11614, linked_11615, linked_11616, linked_11617, linked_11618, linked_11619, linked_11620, linked_11621, linked_11622, linked_11623, linked_11624, linked_11625, linked_11626, linked_11627, linked_11628, linked_11629, linked_11630, linked_11631, linked_11632, linked_11633, linked_11634, linked_11635, linked_11636, linked_11637, linked_11638, linked_11639, linked_11640, linked_11641, linked_11642, linked_11643, linked_11644, linked_11645, linked_11646, linked_11647, linked_11648, linked_11649, by simp⟩

theorem covered : covers (49870000000000003 / 80000000000000000 : ℚ) (6294413407821229 / 10000000000000000 : ℚ)
    (SourceCertificates.Chunk0232.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0232
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0233
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(6294413407821229 / 10000000000000000 : ℚ), (31475000000000003 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (53846056223039 / 100000000000000 : ℚ)
  w := (1721324268121 / 1250000000000 : ℚ)
  center := (15736766759776537 / 25000000000000000 : ℚ)
  supportValue := (1629873988270241 / 5000000000000000 : ℚ)
  supportSlope := (-3035875057347251 / 2500000000000000 : ℚ)
  oldCenter := (1629873988270241 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1472
  oldLo := (32550000000000001 / 100000000000000000 : ℚ)
  oldHi := (32450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_809]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11650 : Cell := { cellDefaults with
  r := (54127026764491 / 100000000000000 : ℚ)
  w := (3449240859187 / 2500000000000 : ℚ)
  newCoefficients := coefficients_1471
  oldHi := (32650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_809, piece_810]
}

noncomputable def cell_11651 : Cell := { cellDefaults with
  domain := ⟨(31475000000000003 / 50000000000000000 : ℚ), (125925000000000009 / 200000000000000000 : ℚ)⟩
  r := (3381333892361 / 6250000000000 : ℚ)
  w := (13794533521323 / 10000000000000 : ℚ)
  center := (251825000000000021 / 400000000000000000 : ℚ)
  supportValue := (6523481587724993 / 20000000000000000 : ℚ)
  supportSlope := (-607037492910651 / 500000000000000 : ℚ)
  oldCenter := (6523481587724993 / 20000000000000000 : ℚ)
  oldLo := (32600000000000001 / 100000000000000000 : ℚ)
  oldHi := (32650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_810]
}

noncomputable def cell_11652 : Cell := { cellDefaults with
  domain := ⟨(125925000000000009 / 200000000000000000 : ℚ), (62975000000000003 / 100000000000000000 : ℚ)⟩
  r := (3381333892361 / 6250000000000 : ℚ)
  w := (13794533521323 / 10000000000000 : ℚ)
  center := (50375000000000003 / 80000000000000000 : ℚ)
  supportValue := (3260226349282589 / 10000000000000000 : ℚ)
  supportSlope := (-485325947763529 / 400000000000000 : ℚ)
  oldCenter := (3260226349282589 / 10000000000000000 : ℚ)
  oldHi := (32650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_809, piece_810]
}

noncomputable def cell_11653 : Cell := { cellDefaults with
  domain := ⟨(62975000000000003 / 100000000000000000 : ℚ), (125975000000000003 / 200000000000000000 : ℚ)⟩
  r := (3381333892361 / 6250000000000 : ℚ)
  w := (13794533521323 / 10000000000000 : ℚ)
  center := (251925000000000009 / 400000000000000000 : ℚ)
  supportValue := (3258707181906467 / 10000000000000000 : ℚ)
  supportSlope := (-1213071566228553 / 1000000000000000 : ℚ)
  oldCenter := (3258707181906467 / 10000000000000000 : ℚ)
  oldHi := (32600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_809]
}

noncomputable def cell_11654 : Cell := { cellDefaults with
  domain := ⟨(125975000000000003 / 200000000000000000 : ℚ), (63 / 100 : ℚ)⟩
  r := (3381333892361 / 6250000000000 : ℚ)
  w := (13794533521323 / 10000000000000 : ℚ)
  center := (251975000000000003 / 400000000000000000 : ℚ)
  supportValue := (325719171289373 / 1000000000000000 : ℚ)
  supportSlope := (-1514599467937931 / 1250000000000000 : ℚ)
  oldCenter := (325719171289373 / 1000000000000000 : ℚ)
  oldHi := (32600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_809]
}

noncomputable def cell_11655 : Cell := { cellDefaults with
  domain := ⟨(63 / 100 : ℚ), (126025000000000003 / 200000000000000000 : ℚ)⟩
  r := (13518920555341 / 25000000000000 : ℚ)
  w := (13792104132369 / 10000000000000 : ℚ)
  center := (252025000000000003 / 400000000000000000 : ℚ)
  supportValue := (1303513311194771 / 4000000000000000 : ℚ)
  supportSlope := (-6062839543465143 / 5000000000000000 : ℚ)
  oldCenter := (1303513311194771 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1473
  oldHi := (32600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_809]
}

noncomputable def cell_11656 : Cell := { cellDefaults with
  domain := ⟨(126025000000000003 / 200000000000000000 : ℚ), (63025000000000003 / 100000000000000000 : ℚ)⟩
  r := (13518920555341 / 25000000000000 : ℚ)
  w := (13792104132369 / 10000000000000 : ℚ)
  center := (252075000000000009 / 400000000000000000 : ℚ)
  supportValue := (16286342189447847 / 50000000000000000 : ℚ)
  supportSlope := (-1211176965995119 / 1000000000000000 : ℚ)
  oldCenter := (16286342189447847 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1473
  oldHi := (32600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_809]
}

noncomputable def cell_11657 : Cell := { cellDefaults with
  domain := ⟨(63025000000000003 / 100000000000000000 : ℚ), (126075000000000009 / 200000000000000000 : ℚ)⟩
  r := (13518920555341 / 25000000000000 : ℚ)
  w := (13792104132369 / 10000000000000 : ℚ)
  center := (50425000000000003 / 80000000000000000 : ℚ)
  supportValue := (32557576118900433 / 100000000000000000 : ℚ)
  supportSlope := (-12097936119993207 / 10000000000000000 : ℚ)
  oldCenter := (32557576118900433 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1473
  oldHi := (32600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_809]
}

noncomputable def cell_11658 : Cell := { cellDefaults with
  domain := ⟨(126075000000000009 / 200000000000000000 : ℚ), (31525000000000003 / 50000000000000000 : ℚ)⟩
  r := (13518920555341 / 25000000000000 : ℚ)
  w := (13792104132369 / 10000000000000 : ℚ)
  center := (252175000000000021 / 400000000000000000 : ℚ)
  supportValue := (3254242843058321 / 10000000000000000 : ℚ)
  supportSlope := (-3025461844059133 / 2500000000000000 : ℚ)
  oldCenter := (3254242843058321 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1473
  oldLo := (3252513966480447 / 10000000000000000 : ℚ)
  oldHi := (32550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_808]
}

noncomputable def cell_11659 : Cell := { cellDefaults with
  domain := ⟨(31525000000000003 / 50000000000000000 : ℚ), (252250000000000019 / 400000000000000000 : ℚ)⟩
  r := (2162002112259 / 4000000000000 : ℚ)
  w := (6894843090121 / 5000000000000 : ℚ)
  center := (504450000000000043 / 800000000000000000 : ℚ)
  supportValue := (1627914747176093 / 5000000000000000 : ℚ)
  supportSlope := (-75580505269631 / 62500000000000 : ℚ)
  oldCenter := (1627914747176093 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1474
  oldHi := (32600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_809]
}

noncomputable def cell_11660 : Cell := { cellDefaults with
  domain := ⟨(252250000000000019 / 400000000000000000 : ℚ), (126150000000000007 / 200000000000000000 : ℚ)⟩
  r := (2162002112259 / 4000000000000 : ℚ)
  w := (6894843090121 / 5000000000000 : ℚ)
  center := (504550000000000033 / 800000000000000000 : ℚ)
  supportValue := (32543200212642853 / 100000000000000000 : ℚ)
  supportSlope := (-3023990321245087 / 2500000000000000 : ℚ)
  oldCenter := (32543200212642853 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1474
  oldLo := (3252513966480447 / 10000000000000000 : ℚ)
  oldHi := (32600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_808, piece_809]
}

noncomputable def cell_11661 : Cell := { cellDefaults with
  domain := ⟨(126150000000000007 / 200000000000000000 : ℚ), (252350000000000009 / 400000000000000000 : ℚ)⟩
  r := (2162002112259 / 4000000000000 : ℚ)
  w := (6894843090121 / 5000000000000 : ℚ)
  center := (504650000000000023 / 800000000000000000 : ℚ)
  supportValue := (2033004068460351 / 6250000000000000 : ℚ)
  supportSlope := (-12082927543472053 / 10000000000000000 : ℚ)
  oldCenter := (2033004068460351 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1474
  oldLo := (32500000000000001 / 100000000000000000 : ℚ)
  oldHi := (32550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_807, piece_808]
}

noncomputable def cell_11662 : Cell := { cellDefaults with
  domain := ⟨(252350000000000009 / 400000000000000000 : ℚ), (63100000000000001 / 100000000000000000 : ℚ)⟩
  r := (2162002112259 / 4000000000000 : ℚ)
  w := (6894843090121 / 5000000000000 : ℚ)
  center := (504750000000000013 / 800000000000000000 : ℚ)
  supportValue := (406412126063949 / 1250000000000000 : ℚ)
  supportSlope := (-6034547066554089 / 5000000000000000 : ℚ)
  oldCenter := (406412126063949 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1474
  oldLo := (32500000000000001 / 100000000000000000 : ℚ)
  oldHi := (3252513966480447 / 10000000000000000 : ℚ)
  oldPieces := [piece_807]
}

noncomputable def cell_11663 : Cell := { cellDefaults with
  domain := ⟨(63100000000000001 / 100000000000000000 : ℚ), (252450000000000009 / 400000000000000000 : ℚ)⟩
  r := (10804890503481 / 20000000000000 : ℚ)
  w := (3446818880383 / 2500000000000 : ℚ)
  center := (504850000000000013 / 800000000000000000 : ℚ)
  supportValue := (6505759719643811 / 20000000000000000 : ℚ)
  supportSlope := (-6038948878516699 / 5000000000000000 : ℚ)
  oldCenter := (6505759719643811 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1475
  oldLo := (32500000000000001 / 100000000000000000 : ℚ)
  oldHi := (32550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_807, piece_808]
}

noncomputable def cell_11664 : Cell := { cellDefaults with
  domain := ⟨(252450000000000009 / 400000000000000000 : ℚ), (126250000000000007 / 200000000000000000 : ℚ)⟩
  r := (10804890503481 / 20000000000000 : ℚ)
  w := (3446818880383 / 2500000000000 : ℚ)
  center := (504950000000000023 / 800000000000000000 : ℚ)
  supportValue := (8128427467156539 / 25000000000000000 : ℚ)
  supportSlope := (-1508009392538883 / 1250000000000000 : ℚ)
  oldCenter := (8128427467156539 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1475
  oldLo := (32500000000000001 / 100000000000000000 : ℚ)
  oldHi := (3252513966480447 / 10000000000000000 : ℚ)
  oldPieces := [piece_807]
}

noncomputable def cell_11665 : Cell := { cellDefaults with
  domain := ⟨(126250000000000007 / 200000000000000000 : ℚ), (252550000000000019 / 400000000000000000 : ℚ)⟩
  r := (10804890503481 / 20000000000000 : ℚ)
  w := (3446818880383 / 2500000000000 : ℚ)
  center := (505050000000000033 / 800000000000000000 : ℚ)
  supportValue := (324986591071517 / 1000000000000000 : ℚ)
  supportSlope := (-6030404479799253 / 5000000000000000 : ℚ)
  oldCenter := (324986591071517 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1475
  oldLo := (32450000000000001 / 100000000000000000 : ℚ)
  oldHi := (3252513966480447 / 10000000000000000 : ℚ)
  oldPieces := [piece_806, piece_807]
}

noncomputable def cell_11666 : Cell := { cellDefaults with
  domain := ⟨(252550000000000019 / 400000000000000000 : ℚ), (31575000000000003 / 50000000000000000 : ℚ)⟩
  r := (10804890503481 / 20000000000000 : ℚ)
  w := (3446818880383 / 2500000000000 : ℚ)
  center := (505150000000000043 / 800000000000000000 : ℚ)
  supportValue := (8120889974645229 / 25000000000000000 : ℚ)
  supportSlope := (-12054231480370563 / 10000000000000000 : ℚ)
  oldCenter := (8120889974645229 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1475
  oldLo := (32450000000000001 / 100000000000000000 : ℚ)
  oldHi := (32500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_806]
}

noncomputable def cell_11667 : Cell := { cellDefaults with
  domain := ⟨(31575000000000003 / 50000000000000000 : ℚ), (252650000000000019 / 400000000000000000 : ℚ)⟩
  r := (210933122371 / 390625000000 : ℚ)
  w := (6892433981093 / 5000000000000 : ℚ)
  center := (505250000000000043 / 800000000000000000 : ℚ)
  supportValue := (4062424404279183 / 12500000000000000 : ℚ)
  supportSlope := (-12054926399250971 / 10000000000000000 : ℚ)
  oldCenter := (4062424404279183 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1476
  oldLo := (32450000000000001 / 100000000000000000 : ℚ)
  oldHi := (3252513966480447 / 10000000000000000 : ℚ)
  oldPieces := [piece_806, piece_807]
}

noncomputable def cell_11668 : Cell := { cellDefaults with
  domain := ⟨(252650000000000019 / 400000000000000000 : ℚ), (126350000000000007 / 200000000000000000 : ℚ)⟩
  r := (210933122371 / 390625000000 : ℚ)
  w := (6892433981093 / 5000000000000 : ℚ)
  center := (505350000000000033 / 800000000000000000 : ℚ)
  supportValue := (649686045712461 / 2000000000000000 : ℚ)
  supportSlope := (-6024614171243383 / 5000000000000000 : ℚ)
  oldCenter := (649686045712461 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1476
  oldLo := (32450000000000001 / 100000000000000000 : ℚ)
  oldHi := (32500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_806]
}

noncomputable def cell_11669 : Cell := { cellDefaults with
  domain := ⟨(126350000000000007 / 200000000000000000 : ℚ), (252750000000000009 / 400000000000000000 : ℚ)⟩
  r := (210933122371 / 390625000000 : ℚ)
  w := (6892433981093 / 5000000000000 : ℚ)
  center := (505450000000000023 / 800000000000000000 : ℚ)
  supportValue := (2029328086672209 / 6250000000000000 : ℚ)
  supportSlope := (-120354169973703 / 100000000000000 : ℚ)
  oldCenter := (2029328086672209 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1476
  oldLo := (32450000000000001 / 100000000000000000 : ℚ)
  oldHi := (32500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_806]
}

noncomputable def cell_11670 : Cell := { cellDefaults with
  domain := ⟨(252750000000000009 / 400000000000000000 : ℚ), (63200000000000001 / 100000000000000000 : ℚ)⟩
  r := (210933122371 / 390625000000 : ℚ)
  w := (6892433981093 / 5000000000000 : ℚ)
  center := (505550000000000013 / 800000000000000000 : ℚ)
  supportValue := (1622711821706721 / 5000000000000000 : ℚ)
  supportSlope := (-6012793308927723 / 5000000000000000 : ℚ)
  oldCenter := (1622711821706721 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1476
  oldLo := (32400000000000001 / 100000000000000000 : ℚ)
  oldHi := (32500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_805, piece_806]
}

noncomputable def cell_11671 : Cell := { cellDefaults with
  domain := ⟨(63200000000000001 / 100000000000000000 : ℚ), (252850000000000009 / 400000000000000000 : ℚ)⟩
  r := (53973339389633 / 100000000000000 : ℚ)
  w := (13782474872837 / 10000000000000 : ℚ)
  center := (505650000000000013 / 800000000000000000 : ℚ)
  supportValue := (3246995712001743 / 10000000000000000 : ℚ)
  supportSlope := (-12030395898648867 / 10000000000000000 : ℚ)
  oldCenter := (3246995712001743 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1477
  oldLo := (32450000000000001 / 100000000000000000 : ℚ)
  oldHi := (32500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_806]
}

noncomputable def cell_11672 : Cell := { cellDefaults with
  domain := ⟨(252850000000000009 / 400000000000000000 : ℚ), (126450000000000007 / 200000000000000000 : ℚ)⟩
  r := (53973339389633 / 100000000000000 : ℚ)
  w := (13782474872837 / 10000000000000 : ℚ)
  center := (505750000000000023 / 800000000000000000 : ℚ)
  supportValue := (32454950437697533 / 100000000000000000 : ℚ)
  supportSlope := (-12019725871600293 / 10000000000000000 : ℚ)
  oldCenter := (32454950437697533 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1477
  oldLo := (32400000000000001 / 100000000000000000 : ℚ)
  oldHi := (32500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_805, piece_806]
}

noncomputable def cell_11673 : Cell := { cellDefaults with
  domain := ⟨(126450000000000007 / 200000000000000000 : ℚ), (252950000000000019 / 400000000000000000 : ℚ)⟩
  r := (53973339389633 / 100000000000000 : ℚ)
  w := (13782474872837 / 10000000000000 : ℚ)
  center := (505850000000000033 / 800000000000000000 : ℚ)
  supportValue := (32439900521066173 / 100000000000000000 : ℚ)
  supportSlope := (-240413670019433 / 200000000000000 : ℚ)
  oldCenter := (32439900521066173 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1477
  oldLo := (32400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_805]
}

noncomputable def cell_11674 : Cell := { cellDefaults with
  domain := ⟨(252950000000000019 / 400000000000000000 : ℚ), (31625000000000003 / 50000000000000000 : ℚ)⟩
  r := (53973339389633 / 100000000000000 : ℚ)
  w := (13782474872837 / 10000000000000 : ℚ)
  center := (505950000000000043 / 800000000000000000 : ℚ)
  supportValue := (405311041157613 / 1250000000000000 : ℚ)
  supportSlope := (-6003444604151763 / 5000000000000000 : ℚ)
  oldCenter := (405311041157613 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1477
  oldLo := (32400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_805]
}

noncomputable def cell_11675 : Cell := { cellDefaults with
  domain := ⟨(31625000000000003 / 50000000000000000 : ℚ), (253050000000000019 / 400000000000000000 : ℚ)⟩
  r := (53947823095299 / 100000000000000 : ℚ)
  w := (861254988603 / 625000000000 : ℚ)
  center := (506050000000000043 / 800000000000000000 : ℚ)
  supportValue := (32440624763909603 / 100000000000000000 : ℚ)
  supportSlope := (-3003922228524159 / 2500000000000000 : ℚ)
  oldCenter := (32440624763909603 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1478
  oldLo := (32400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_805]
}

noncomputable def cell_11676 : Cell := { cellDefaults with
  domain := ⟨(253050000000000019 / 400000000000000000 : ℚ), (126550000000000007 / 200000000000000000 : ℚ)⟩
  r := (53947823095299 / 100000000000000 : ℚ)
  w := (861254988603 / 625000000000 : ℚ)
  center := (506150000000000033 / 800000000000000000 : ℚ)
  supportValue := (32425613772146633 / 100000000000000000 : ℚ)
  supportSlope := (-1500238133959203 / 1250000000000000 : ℚ)
  oldCenter := (32425613772146633 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1478
  oldLo := (32400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_805]
}

noncomputable def cell_11677 : Cell := { cellDefaults with
  domain := ⟨(126550000000000007 / 200000000000000000 : ℚ), (253150000000000009 / 400000000000000000 : ℚ)⟩
  r := (53947823095299 / 100000000000000 : ℚ)
  w := (861254988603 / 625000000000 : ℚ)
  center := (506250000000000023 / 800000000000000000 : ℚ)
  supportValue := (32410619974325877 / 100000000000000000 : ℚ)
  supportSlope := (-11988178519485393 / 10000000000000000 : ℚ)
  oldCenter := (32410619974325877 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1478
  oldLo := (32400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_805]
}

noncomputable def cell_11678 : Cell := { cellDefaults with
  domain := ⟨(253150000000000009 / 400000000000000000 : ℚ), (63300000000000001 / 100000000000000000 : ℚ)⟩
  r := (53947823095299 / 100000000000000 : ℚ)
  w := (861254988603 / 625000000000 : ℚ)
  center := (506350000000000013 / 800000000000000000 : ℚ)
  supportValue := (16197829738606323 / 50000000000000000 : ℚ)
  supportSlope := (-1198858650876331 / 1000000000000000 : ℚ)
  oldCenter := (16197829738606323 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1478
  oldLo := (32350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_804, piece_805]
}

noncomputable def cell_11679 : Cell := { cellDefaults with
  domain := ⟨(63300000000000001 / 100000000000000000 : ℚ), (253250000000000009 / 400000000000000000 : ℚ)⟩
  r := (10784467717717 / 20000000000000 : ℚ)
  w := (13777698488073 / 10000000000000 : ℚ)
  center := (506450000000000013 / 800000000000000000 : ℚ)
  supportValue := (32411318803935407 / 100000000000000000 : ℚ)
  supportSlope := (-11983178756044177 / 10000000000000000 : ℚ)
  oldCenter := (32411318803935407 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1479
  oldLo := (32400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_805]
}

noncomputable def cell_11680 : Cell := { cellDefaults with
  domain := ⟨(253250000000000009 / 400000000000000000 : ℚ), (126650000000000007 / 200000000000000000 : ℚ)⟩
  r := (10784467717717 / 20000000000000 : ℚ)
  w := (13777698488073 / 10000000000000 : ℚ)
  center := (506550000000000023 / 800000000000000000 : ℚ)
  supportValue := (3239636559881943 / 10000000000000000 : ℚ)
  supportSlope := (-5991379190750057 / 5000000000000000 : ℚ)
  oldCenter := (3239636559881943 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1479
  oldLo := (32350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_804, piece_805]
}

noncomputable def cell_11681 : Cell := { cellDefaults with
  domain := ⟨(126650000000000007 / 200000000000000000 : ℚ), (253350000000000019 / 400000000000000000 : ℚ)⟩
  r := (10784467717717 / 20000000000000 : ℚ)
  w := (13777698488073 / 10000000000000 : ℚ)
  center := (506650000000000033 / 800000000000000000 : ℚ)
  supportValue := (4047670923177607 / 12500000000000000 : ℚ)
  supportSlope := (-11973545259963327 / 10000000000000000 : ℚ)
  oldCenter := (4047670923177607 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1479
  oldLo := (32350000000000001 / 100000000000000000 : ℚ)
  oldHi := (32400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_804]
}

noncomputable def cell_11682 : Cell := { cellDefaults with
  domain := ⟨(253350000000000019 / 400000000000000000 : ℚ), (31675000000000003 / 50000000000000000 : ℚ)⟩
  r := (10784467717717 / 20000000000000 : ℚ)
  w := (13777698488073 / 10000000000000 : ℚ)
  center := (506750000000000043 / 800000000000000000 : ℚ)
  supportValue := (4045801128915303 / 12500000000000000 : ℚ)
  supportSlope := (-1195982841669321 / 1000000000000000 : ℚ)
  oldCenter := (4045801128915303 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1479
  oldLo := (32350000000000001 / 100000000000000000 : ℚ)
  oldHi := (32400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_804]
}

noncomputable def cell_11683 : Cell := { cellDefaults with
  domain := ⟨(31675000000000003 / 50000000000000000 : ℚ), (253450000000000019 / 400000000000000000 : ℚ)⟩
  r := (168427756069 / 312500000000 : ℚ)
  w := (6887661410411 / 5000000000000 : ℚ)
  center := (506850000000000043 / 800000000000000000 : ℚ)
  supportValue := (16191031250972393 / 50000000000000000 : ℚ)
  supportSlope := (-5984278138209719 / 5000000000000000 : ℚ)
  oldCenter := (16191031250972393 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1480
  oldLo := (32350000000000001 / 100000000000000000 : ℚ)
  oldHi := (32400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_804]
}

noncomputable def cell_11684 : Cell := { cellDefaults with
  domain := ⟨(253450000000000019 / 400000000000000000 : ℚ), (126750000000000007 / 200000000000000000 : ℚ)⟩
  r := (168427756069 / 312500000000 : ℚ)
  w := (6887661410411 / 5000000000000 : ℚ)
  center := (506950000000000033 / 800000000000000000 : ℚ)
  supportValue := (647342207550873 / 2000000000000000 : ℚ)
  supportSlope := (-11954849871750413 / 10000000000000000 : ℚ)
  oldCenter := (647342207550873 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1480
  oldLo := (32350000000000001 / 100000000000000000 : ℚ)
  oldHi := (32400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_804]
}

noncomputable def cell_11685 : Cell := { cellDefaults with
  domain := ⟨(126750000000000007 / 200000000000000000 : ℚ), (253550000000000009 / 400000000000000000 : ℚ)⟩
  r := (168427756069 / 312500000000 : ℚ)
  w := (6887661410411 / 5000000000000 : ℚ)
  center := (507050000000000023 / 800000000000000000 : ℚ)
  supportValue := (1617609899851019 / 5000000000000000 : ℚ)
  supportSlope := (-11947534654553977 / 10000000000000000 : ℚ)
  oldCenter := (1617609899851019 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1480
  oldLo := (32300000000000001 / 100000000000000000 : ℚ)
  oldHi := (32400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_803, piece_804]
}

noncomputable def cell_11686 : Cell := { cellDefaults with
  domain := ⟨(253550000000000009 / 400000000000000000 : ℚ), (63400000000000001 / 100000000000000000 : ℚ)⟩
  r := (168427756069 / 312500000000 : ℚ)
  w := (6887661410411 / 5000000000000 : ℚ)
  center := (507150000000000013 / 800000000000000000 : ℚ)
  supportValue := (16168619162652517 / 50000000000000000 : ℚ)
  supportSlope := (-5972666703014149 / 5000000000000000 : ℚ)
  oldCenter := (16168619162652517 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1480
  oldLo := (32300000000000001 / 100000000000000000 : ℚ)
  oldHi := (32350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_803]
}

noncomputable def cell_11687 : Cell := { cellDefaults with
  domain := ⟨(63400000000000001 / 100000000000000000 : ℚ), (253650000000000009 / 400000000000000000 : ℚ)⟩
  r := (26935726482363 / 50000000000000 : ℚ)
  w := (6886476072249 / 5000000000000 : ℚ)
  center := (507250000000000013 / 800000000000000000 : ℚ)
  supportValue := (8088222473542149 / 25000000000000000 : ℚ)
  supportSlope := (-2388345558482757 / 2000000000000000 : ℚ)
  oldCenter := (8088222473542149 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1481
  oldLo := (32300000000000001 / 100000000000000000 : ℚ)
  oldHi := (32400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_803, piece_804]
}

noncomputable def cell_11688 : Cell := { cellDefaults with
  domain := ⟨(253650000000000009 / 400000000000000000 : ℚ), (126850000000000007 / 200000000000000000 : ℚ)⟩
  r := (26935726482363 / 50000000000000 : ℚ)
  w := (6886476072249 / 5000000000000 : ℚ)
  center := (507350000000000023 / 800000000000000000 : ℚ)
  supportValue := (1616896873700831 / 5000000000000000 : ℚ)
  supportSlope := (-11940367193047279 / 10000000000000000 : ℚ)
  oldCenter := (1616896873700831 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1481
  oldLo := (32300000000000001 / 100000000000000000 : ℚ)
  oldHi := (32350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_803]
}

noncomputable def cell_11689 : Cell := { cellDefaults with
  domain := ⟨(126850000000000007 / 200000000000000000 : ℚ), (253750000000000019 / 400000000000000000 : ℚ)⟩
  r := (26935726482363 / 50000000000000 : ℚ)
  w := (6886476072249 / 5000000000000 : ℚ)
  center := (507450000000000033 / 800000000000000000 : ℚ)
  supportValue := (3232302058535743 / 10000000000000000 : ℚ)
  supportSlope := (-2385332365445453 / 2000000000000000 : ℚ)
  oldCenter := (3232302058535743 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1481
  oldLo := (32300000000000001 / 100000000000000000 : ℚ)
  oldHi := (32350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_803]
}

noncomputable def cell_11690 : Cell := { cellDefaults with
  domain := ⟨(253750000000000019 / 400000000000000000 : ℚ), (31725000000000003 / 50000000000000000 : ℚ)⟩
  r := (26935726482363 / 50000000000000 : ℚ)
  w := (6886476072249 / 5000000000000 : ℚ)
  center := (507550000000000043 / 800000000000000000 : ℚ)
  supportValue := (504814387385251 / 1562500000000000 : ℚ)
  supportSlope := (-1191301357352673 / 1000000000000000 : ℚ)
  oldCenter := (504814387385251 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1481
  oldLo := (32300000000000001 / 100000000000000000 : ℚ)
  oldHi := (32350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_803]
}

noncomputable def cell_11691 : Cell := { cellDefaults with
  domain := ⟨(31725000000000003 / 50000000000000000 : ℚ), (63461801675977657 / 100000000000000000 : ℚ)⟩
  center := (126911801675977663 / 200000000000000000 : ℚ)
  supportValue := (32324106014300147 / 100000000000000000 : ℚ)
  supportSlope := (-11922062777652287 / 10000000000000000 : ℚ)
  oldCenter := (32324106014300147 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1482
  oldLo := (32300000000000001 / 100000000000000000 : ℚ)
  oldHi := (32350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_803]
}

noncomputable def cell_11692 : Cell := { cellDefaults with
  domain := ⟨(63461801675977657 / 100000000000000000 : ℚ), (15868400837988827 / 25000000000000000 : ℚ)⟩
  center := (25387081005586593 / 40000000000000000 : ℚ)
  supportValue := (16155021792502197 / 50000000000000000 : ℚ)
  supportSlope := (-2977295968630423 / 2500000000000000 : ℚ)
  oldCenter := (16155021792502197 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1482
  oldLo := (32300000000000001 / 100000000000000000 : ℚ)
  oldHi := (32350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_803]
}

noncomputable def cell_11693 : Cell := { cellDefaults with
  domain := ⟨(15868400837988827 / 25000000000000000 : ℚ), (63485405027932959 / 100000000000000000 : ℚ)⟩
  center := (126959008379888267 / 200000000000000000 : ℚ)
  supportValue := (32296012904587507 / 100000000000000000 : ℚ)
  supportSlope := (-11910368971494567 / 10000000000000000 : ℚ)
  oldCenter := (32296012904587507 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1482
  oldLo := (32250000000000001 / 100000000000000000 : ℚ)
  oldHi := (32350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_802, piece_803]
}

noncomputable def cell_11694 : Cell := { cellDefaults with
  domain := ⟨(63485405027932959 / 100000000000000000 : ℚ), (6349720670391061 / 10000000000000000 : ℚ)⟩
  center := (126982611731843569 / 200000000000000000 : ℚ)
  supportValue := (1291277486793869 / 4000000000000000 : ℚ)
  supportSlope := (-11901278940298643 / 10000000000000000 : ℚ)
  oldCenter := (1291277486793869 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1482
  oldLo := (32250000000000001 / 100000000000000000 : ℚ)
  oldHi := (32300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_802]
}

noncomputable def cell_11695 : Cell := { cellDefaults with
  domain := ⟨(6349720670391061 / 10000000000000000 : ℚ), (63500000000000001 / 100000000000000000 : ℚ)⟩
  center := (126997206703910611 / 200000000000000000 : ℚ)
  supportValue := (3227324868059657 / 10000000000000000 : ℚ)
  supportSlope := (-2378661933067463 / 2000000000000000 : ℚ)
  oldCenter := (3227324868059657 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1483
  oldLo := (32250000000000001 / 100000000000000000 : ℚ)
  oldHi := (32300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_802]
}

noncomputable def cell_11696 : Cell := { cellDefaults with
  domain := ⟨(63500000000000001 / 100000000000000000 : ℚ), (254050000000000009 / 400000000000000000 : ℚ)⟩
  r := (26910341197723 / 50000000000000 : ℚ)
  w := (13768235138863 / 10000000000000 : ℚ)
  center := (508050000000000013 / 800000000000000000 : ℚ)
  supportValue := (403682714022959 / 1250000000000000 : ℚ)
  supportSlope := (-1488111845615443 / 1250000000000000 : ℚ)
  oldCenter := (403682714022959 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1484
  oldLo := (32250000000000001 / 100000000000000000 : ℚ)
  oldHi := (32350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_802, piece_803]
}

noncomputable def cell_11697 : Cell := { cellDefaults with
  domain := ⟨(254050000000000009 / 400000000000000000 : ℚ), (127050000000000007 / 200000000000000000 : ℚ)⟩
  r := (26910341197723 / 50000000000000 : ℚ)
  w := (13768235138863 / 10000000000000 : ℚ)
  center := (508150000000000023 / 800000000000000000 : ℚ)
  supportValue := (322797188979607 / 1000000000000000 : ℚ)
  supportSlope := (-2378732518760291 / 2000000000000000 : ℚ)
  oldCenter := (322797188979607 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1484
  oldLo := (32250000000000001 / 100000000000000000 : ℚ)
  oldHi := (32300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_802]
}

noncomputable def cell_11698 : Cell := { cellDefaults with
  domain := ⟨(127050000000000007 / 200000000000000000 : ℚ), (254150000000000019 / 400000000000000000 : ℚ)⟩
  r := (26910341197723 / 50000000000000 : ℚ)
  w := (13768235138863 / 10000000000000 : ℚ)
  center := (508250000000000033 / 800000000000000000 : ℚ)
  supportValue := (129059441329619 / 400000000000000 : ℚ)
  supportSlope := (-11880049370328527 / 10000000000000000 : ℚ)
  oldCenter := (129059441329619 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1484
  oldLo := (32250000000000001 / 100000000000000000 : ℚ)
  oldHi := (32300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_802]
}

noncomputable def cell_11699 : Cell := { cellDefaults with
  domain := ⟨(254150000000000019 / 400000000000000000 : ℚ), (31775000000000003 / 50000000000000000 : ℚ)⟩
  r := (26910341197723 / 50000000000000 : ℚ)
  w := (13768235138863 / 10000000000000 : ℚ)
  center := (508350000000000043 / 800000000000000000 : ℚ)
  supportValue := (161250206614659 / 500000000000000 : ℚ)
  supportSlope := (-5937706182139141 / 5000000000000000 : ℚ)
  oldCenter := (161250206614659 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1484
  oldLo := (32200000000000001 / 100000000000000000 : ℚ)
  oldHi := (32300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_801, piece_802]
}

theorem check_11650 : cell_11650.check = true := by
  decide +kernel

theorem check_11651 : cell_11651.check = true := by
  decide +kernel

theorem check_11652 : cell_11652.check = true := by
  decide +kernel

theorem check_11653 : cell_11653.check = true := by
  decide +kernel

theorem check_11654 : cell_11654.check = true := by
  decide +kernel

theorem check_11655 : cell_11655.check = true := by
  decide +kernel

theorem check_11656 : cell_11656.check = true := by
  decide +kernel

theorem check_11657 : cell_11657.check = true := by
  decide +kernel

theorem check_11658 : cell_11658.check = true := by
  decide +kernel

theorem check_11659 : cell_11659.check = true := by
  decide +kernel

theorem check_11660 : cell_11660.check = true := by
  decide +kernel

theorem check_11661 : cell_11661.check = true := by
  decide +kernel

theorem check_11662 : cell_11662.check = true := by
  decide +kernel

theorem check_11663 : cell_11663.check = true := by
  decide +kernel

theorem check_11664 : cell_11664.check = true := by
  decide +kernel

theorem check_11665 : cell_11665.check = true := by
  decide +kernel

theorem check_11666 : cell_11666.check = true := by
  decide +kernel

theorem check_11667 : cell_11667.check = true := by
  decide +kernel

theorem check_11668 : cell_11668.check = true := by
  decide +kernel

theorem check_11669 : cell_11669.check = true := by
  decide +kernel

theorem check_11670 : cell_11670.check = true := by
  decide +kernel

theorem check_11671 : cell_11671.check = true := by
  decide +kernel

theorem check_11672 : cell_11672.check = true := by
  decide +kernel

theorem check_11673 : cell_11673.check = true := by
  decide +kernel

theorem check_11674 : cell_11674.check = true := by
  decide +kernel

theorem check_11675 : cell_11675.check = true := by
  decide +kernel

theorem check_11676 : cell_11676.check = true := by
  decide +kernel

theorem check_11677 : cell_11677.check = true := by
  decide +kernel

theorem check_11678 : cell_11678.check = true := by
  decide +kernel

theorem check_11679 : cell_11679.check = true := by
  decide +kernel

theorem check_11680 : cell_11680.check = true := by
  decide +kernel

theorem check_11681 : cell_11681.check = true := by
  decide +kernel

theorem check_11682 : cell_11682.check = true := by
  decide +kernel

theorem check_11683 : cell_11683.check = true := by
  decide +kernel

theorem check_11684 : cell_11684.check = true := by
  decide +kernel

theorem check_11685 : cell_11685.check = true := by
  decide +kernel

theorem check_11686 : cell_11686.check = true := by
  decide +kernel

theorem check_11687 : cell_11687.check = true := by
  decide +kernel

theorem check_11688 : cell_11688.check = true := by
  decide +kernel

theorem check_11689 : cell_11689.check = true := by
  decide +kernel

theorem check_11690 : cell_11690.check = true := by
  decide +kernel

theorem check_11691 : cell_11691.check = true := by
  decide +kernel

theorem check_11692 : cell_11692.check = true := by
  decide +kernel

theorem check_11693 : cell_11693.check = true := by
  decide +kernel

theorem check_11694 : cell_11694.check = true := by
  decide +kernel

theorem check_11695 : cell_11695.check = true := by
  decide +kernel

theorem check_11696 : cell_11696.check = true := by
  decide +kernel

theorem check_11697 : cell_11697.check = true := by
  decide +kernel

theorem check_11698 : cell_11698.check = true := by
  decide +kernel

theorem check_11699 : cell_11699.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11650, cell_11651, cell_11652, cell_11653, cell_11654, cell_11655, cell_11656, cell_11657, cell_11658, cell_11659, cell_11660, cell_11661, cell_11662, cell_11663, cell_11664, cell_11665, cell_11666, cell_11667, cell_11668, cell_11669, cell_11670, cell_11671, cell_11672, cell_11673, cell_11674, cell_11675, cell_11676, cell_11677, cell_11678, cell_11679, cell_11680, cell_11681, cell_11682, cell_11683, cell_11684, cell_11685, cell_11686, cell_11687, cell_11688, cell_11689, cell_11690, cell_11691, cell_11692, cell_11693, cell_11694, cell_11695, cell_11696, cell_11697, cell_11698, cell_11699]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11650, check_11651, check_11652, check_11653, check_11654, check_11655, check_11656, check_11657, check_11658, check_11659, check_11660, check_11661, check_11662, check_11663, check_11664, check_11665, check_11666, check_11667, check_11668, check_11669, check_11670, check_11671, check_11672, check_11673, check_11674, check_11675, check_11676, check_11677, check_11678, check_11679, check_11680, check_11681, check_11682, check_11683, check_11684, check_11685, check_11686, check_11687, check_11688, check_11689, check_11690, check_11691, check_11692, check_11693, check_11694, check_11695, check_11696, check_11697, check_11698, check_11699, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0233

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0233
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0233
open AnalyticBounds.ExpressionCertificate

theorem linked_11650 : Linked cell_11650 pieces := by
  link_source cell_11650 with piece_1471 using piece_1471_mem, ⟨piece_809_mem, piece_810_mem⟩

theorem linked_11651 : Linked cell_11651 pieces := by
  link_source cell_11651 with piece_1472 using piece_1472_mem, piece_810_mem

theorem linked_11652 : Linked cell_11652 pieces := by
  link_source cell_11652 with piece_1472 using piece_1472_mem, ⟨piece_809_mem, piece_810_mem⟩

theorem linked_11653 : Linked cell_11653 pieces := by
  link_source cell_11653 with piece_1472 using piece_1472_mem, piece_809_mem

theorem linked_11654 : Linked cell_11654 pieces := by
  link_source cell_11654 with piece_1472 using piece_1472_mem, piece_809_mem

theorem linked_11655 : Linked cell_11655 pieces := by
  link_source cell_11655 with piece_1473 using piece_1473_mem, piece_809_mem

theorem linked_11656 : Linked cell_11656 pieces := by
  link_source cell_11656 with piece_1473 using piece_1473_mem, piece_809_mem

theorem linked_11657 : Linked cell_11657 pieces := by
  link_source cell_11657 with piece_1473 using piece_1473_mem, piece_809_mem

theorem linked_11658 : Linked cell_11658 pieces := by
  link_source cell_11658 with piece_1473 using piece_1473_mem, piece_808_mem

theorem linked_11659 : Linked cell_11659 pieces := by
  link_source cell_11659 with piece_1474 using piece_1474_mem, piece_809_mem

theorem linked_11660 : Linked cell_11660 pieces := by
  link_source cell_11660 with piece_1474 using piece_1474_mem, ⟨piece_808_mem, piece_809_mem⟩

theorem linked_11661 : Linked cell_11661 pieces := by
  link_source cell_11661 with piece_1474 using piece_1474_mem, ⟨piece_807_mem, piece_808_mem⟩

theorem linked_11662 : Linked cell_11662 pieces := by
  link_source cell_11662 with piece_1474 using piece_1474_mem, piece_807_mem

theorem linked_11663 : Linked cell_11663 pieces := by
  link_source cell_11663 with piece_1475 using piece_1475_mem, ⟨piece_807_mem, piece_808_mem⟩

theorem linked_11664 : Linked cell_11664 pieces := by
  link_source cell_11664 with piece_1475 using piece_1475_mem, piece_807_mem

theorem linked_11665 : Linked cell_11665 pieces := by
  link_source cell_11665 with piece_1475 using piece_1475_mem, ⟨piece_806_mem, piece_807_mem⟩

theorem linked_11666 : Linked cell_11666 pieces := by
  link_source cell_11666 with piece_1475 using piece_1475_mem, piece_806_mem

theorem linked_11667 : Linked cell_11667 pieces := by
  link_source cell_11667 with piece_1476 using piece_1476_mem, ⟨piece_806_mem, piece_807_mem⟩

theorem linked_11668 : Linked cell_11668 pieces := by
  link_source cell_11668 with piece_1476 using piece_1476_mem, piece_806_mem

theorem linked_11669 : Linked cell_11669 pieces := by
  link_source cell_11669 with piece_1476 using piece_1476_mem, piece_806_mem

theorem linked_11670 : Linked cell_11670 pieces := by
  link_source cell_11670 with piece_1476 using piece_1476_mem, ⟨piece_805_mem, piece_806_mem⟩

theorem linked_11671 : Linked cell_11671 pieces := by
  link_source cell_11671 with piece_1477 using piece_1477_mem, piece_806_mem

theorem linked_11672 : Linked cell_11672 pieces := by
  link_source cell_11672 with piece_1477 using piece_1477_mem, ⟨piece_805_mem, piece_806_mem⟩

theorem linked_11673 : Linked cell_11673 pieces := by
  link_source cell_11673 with piece_1477 using piece_1477_mem, piece_805_mem

theorem linked_11674 : Linked cell_11674 pieces := by
  link_source cell_11674 with piece_1477 using piece_1477_mem, piece_805_mem

theorem linked_11675 : Linked cell_11675 pieces := by
  link_source cell_11675 with piece_1478 using piece_1478_mem, piece_805_mem

theorem linked_11676 : Linked cell_11676 pieces := by
  link_source cell_11676 with piece_1478 using piece_1478_mem, piece_805_mem

theorem linked_11677 : Linked cell_11677 pieces := by
  link_source cell_11677 with piece_1478 using piece_1478_mem, piece_805_mem

theorem linked_11678 : Linked cell_11678 pieces := by
  link_source cell_11678 with piece_1478 using piece_1478_mem, ⟨piece_804_mem, piece_805_mem⟩

theorem linked_11679 : Linked cell_11679 pieces := by
  link_source cell_11679 with piece_1479 using piece_1479_mem, piece_805_mem

theorem linked_11680 : Linked cell_11680 pieces := by
  link_source cell_11680 with piece_1479 using piece_1479_mem, ⟨piece_804_mem, piece_805_mem⟩

theorem linked_11681 : Linked cell_11681 pieces := by
  link_source cell_11681 with piece_1479 using piece_1479_mem, piece_804_mem

theorem linked_11682 : Linked cell_11682 pieces := by
  link_source cell_11682 with piece_1479 using piece_1479_mem, piece_804_mem

theorem linked_11683 : Linked cell_11683 pieces := by
  link_source cell_11683 with piece_1480 using piece_1480_mem, piece_804_mem

theorem linked_11684 : Linked cell_11684 pieces := by
  link_source cell_11684 with piece_1480 using piece_1480_mem, piece_804_mem

theorem linked_11685 : Linked cell_11685 pieces := by
  link_source cell_11685 with piece_1480 using piece_1480_mem, ⟨piece_803_mem, piece_804_mem⟩

theorem linked_11686 : Linked cell_11686 pieces := by
  link_source cell_11686 with piece_1480 using piece_1480_mem, piece_803_mem

theorem linked_11687 : Linked cell_11687 pieces := by
  link_source cell_11687 with piece_1481 using piece_1481_mem, ⟨piece_803_mem, piece_804_mem⟩

theorem linked_11688 : Linked cell_11688 pieces := by
  link_source cell_11688 with piece_1481 using piece_1481_mem, piece_803_mem

theorem linked_11689 : Linked cell_11689 pieces := by
  link_source cell_11689 with piece_1481 using piece_1481_mem, piece_803_mem

theorem linked_11690 : Linked cell_11690 pieces := by
  link_source cell_11690 with piece_1481 using piece_1481_mem, piece_803_mem

theorem linked_11691 : Linked cell_11691 pieces := by
  link_source cell_11691 with piece_1482 using piece_1482_mem, piece_803_mem

theorem linked_11692 : Linked cell_11692 pieces := by
  link_source cell_11692 with piece_1482 using piece_1482_mem, piece_803_mem

theorem linked_11693 : Linked cell_11693 pieces := by
  link_source cell_11693 with piece_1482 using piece_1482_mem, ⟨piece_802_mem, piece_803_mem⟩

theorem linked_11694 : Linked cell_11694 pieces := by
  link_source cell_11694 with piece_1482 using piece_1482_mem, piece_802_mem

theorem linked_11695 : Linked cell_11695 pieces := by
  link_source cell_11695 with piece_1483 using piece_1483_mem, piece_802_mem

theorem linked_11696 : Linked cell_11696 pieces := by
  link_source cell_11696 with piece_1484 using piece_1484_mem, ⟨piece_802_mem, piece_803_mem⟩

theorem linked_11697 : Linked cell_11697 pieces := by
  link_source cell_11697 with piece_1484 using piece_1484_mem, piece_802_mem

theorem linked_11698 : Linked cell_11698 pieces := by
  link_source cell_11698 with piece_1484 using piece_1484_mem, piece_802_mem

theorem linked_11699 : Linked cell_11699 pieces := by
  link_source cell_11699 with piece_1484 using piece_1484_mem, ⟨piece_801_mem, piece_802_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0233.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0233.cells,List.forall_mem_cons]
  exact ⟨linked_11650, linked_11651, linked_11652, linked_11653, linked_11654, linked_11655, linked_11656, linked_11657, linked_11658, linked_11659, linked_11660, linked_11661, linked_11662, linked_11663, linked_11664, linked_11665, linked_11666, linked_11667, linked_11668, linked_11669, linked_11670, linked_11671, linked_11672, linked_11673, linked_11674, linked_11675, linked_11676, linked_11677, linked_11678, linked_11679, linked_11680, linked_11681, linked_11682, linked_11683, linked_11684, linked_11685, linked_11686, linked_11687, linked_11688, linked_11689, linked_11690, linked_11691, linked_11692, linked_11693, linked_11694, linked_11695, linked_11696, linked_11697, linked_11698, linked_11699, by simp⟩

theorem covered : covers (6294413407821229 / 10000000000000000 : ℚ) (31775000000000003 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0233.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0233
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0234
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(31775000000000003 / 50000000000000000 : ℚ), (254250000000000019 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (26771741331339 / 50000000000000 : ℚ)
  w := (6871407214907 / 5000000000000 : ℚ)
  center := (508450000000000043 / 800000000000000000 : ℚ)
  supportValue := (32265513550563457 / 100000000000000000 : ℚ)
  supportSlope := (-1187508387209609 / 1000000000000000 : ℚ)
  oldCenter := (32265513550563457 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1485
  oldLo := (32050000000000001 / 100000000000000000 : ℚ)
  oldHi := (32100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_798]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11700 : Cell := { cellDefaults with
  r := (53795342390849 / 100000000000000 : ℚ)
  w := (550635657237 / 400000000000 : ℚ)
  oldLo := (32250000000000001 / 100000000000000000 : ℚ)
  oldHi := (32300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_802]
}

noncomputable def cell_11701 : Cell := { cellDefaults with
  domain := ⟨(254250000000000019 / 400000000000000000 : ℚ), (127150000000000007 / 200000000000000000 : ℚ)⟩
  r := (53795342390849 / 100000000000000 : ℚ)
  w := (550635657237 / 400000000000 : ℚ)
  center := (508550000000000033 / 800000000000000000 : ℚ)
  supportValue := (806267518547561 / 2500000000000000 : ℚ)
  supportSlope := (-2967415221095967 / 2500000000000000 : ℚ)
  oldCenter := (806267518547561 / 2500000000000000 : ℚ)
  oldLo := (32200000000000001 / 100000000000000000 : ℚ)
  oldHi := (32300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_801, piece_802]
}

noncomputable def cell_11702 : Cell := { cellDefaults with
  domain := ⟨(127150000000000007 / 200000000000000000 : ℚ), (254350000000000009 / 400000000000000000 : ℚ)⟩
  r := (53795342390849 / 100000000000000 : ℚ)
  w := (550635657237 / 400000000000 : ℚ)
  center := (508650000000000023 / 800000000000000000 : ℚ)
  supportValue := (3223583841775053 / 10000000000000000 : ℚ)
  supportSlope := (-2373155420997601 / 2000000000000000 : ℚ)
  oldCenter := (3223583841775053 / 10000000000000000 : ℚ)
  oldLo := (32200000000000001 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_801]
}

noncomputable def cell_11703 : Cell := { cellDefaults with
  domain := ⟨(254350000000000009 / 400000000000000000 : ℚ), (63600000000000001 / 100000000000000000 : ℚ)⟩
  r := (53795342390849 / 100000000000000 : ℚ)
  w := (550635657237 / 400000000000 : ℚ)
  center := (508750000000000013 / 800000000000000000 : ℚ)
  supportValue := (32221014705771617 / 100000000000000000 : ℚ)
  supportSlope := (-11852169185183687 / 10000000000000000 : ℚ)
  oldCenter := (32221014705771617 / 100000000000000000 : ℚ)
  oldLo := (32200000000000001 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_801]
}

noncomputable def cell_11704 : Cell := { cellDefaults with
  domain := ⟨(63600000000000001 / 100000000000000000 : ℚ), (25445000000000001 / 40000000000000000 : ℚ)⟩
  r := (6721253374991 / 12500000000000 : ℚ)
  w := (13763548424893 / 10000000000000 : ℚ)
  center := (254425000000000007 / 400000000000000000 : ℚ)
  supportValue := (16118250566896683 / 50000000000000000 : ℚ)
  supportSlope := (-11860832524862273 / 10000000000000000 : ℚ)
  oldCenter := (16118250566896683 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1486
  oldLo := (32200000000000001 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_801]
}

noncomputable def cell_11705 : Cell := { cellDefaults with
  domain := ⟨(25445000000000001 / 40000000000000000 : ℚ), (15906250000000001 / 25000000000000000 : ℚ)⟩
  r := (6721253374991 / 12500000000000 : ℚ)
  w := (13763548424893 / 10000000000000 : ℚ)
  center := (254475000000000013 / 400000000000000000 : ℚ)
  supportValue := (3222168359602857 / 10000000000000000 : ℚ)
  supportSlope := (-1184723500989051 / 1000000000000000 : ℚ)
  oldCenter := (3222168359602857 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1486
  oldLo := (32200000000000001 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_801]
}

noncomputable def cell_11706 : Cell := { cellDefaults with
  domain := ⟨(15906250000000001 / 25000000000000000 : ℚ), (127275000000000011 / 200000000000000000 : ℚ)⟩
  r := (6721253374991 / 12500000000000 : ℚ)
  w := (13763548424893 / 10000000000000 : ℚ)
  center := (254525000000000019 / 400000000000000000 : ℚ)
  supportValue := (16103452782237193 / 50000000000000000 : ℚ)
  supportSlope := (-5917162725700821 / 5000000000000000 : ℚ)
  oldCenter := (16103452782237193 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1486
  oldLo := (32150000000000001 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_800, piece_801]
}

noncomputable def cell_11707 : Cell := { cellDefaults with
  domain := ⟨(127275000000000011 / 200000000000000000 : ℚ), (63650000000000007 / 100000000000000000 : ℚ)⟩
  r := (6721253374991 / 12500000000000 : ℚ)
  w := (13763548424893 / 10000000000000 : ℚ)
  center := (10183000000000001 / 16000000000000000 : ℚ)
  supportValue := (3219208737008499 / 10000000000000000 : ℚ)
  supportSlope := (-2959511494486567 / 2500000000000000 : ℚ)
  oldCenter := (3219208737008499 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1486
  oldLo := (32150000000000001 / 100000000000000000 : ℚ)
  oldHi := (32200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_800]
}

noncomputable def cell_11708 : Cell := { cellDefaults with
  domain := ⟨(63650000000000007 / 100000000000000000 : ℚ), (127325000000000011 / 200000000000000000 : ℚ)⟩
  r := (13436185516781 / 25000000000000 : ℚ)
  w := (1376121631467 / 1000000000000 : ℚ)
  center := (10185000000000001 / 16000000000000000 : ℚ)
  supportValue := (3220752732205241 / 10000000000000000 : ℚ)
  supportSlope := (-2957187478978351 / 2500000000000000 : ℚ)
  oldCenter := (3220752732205241 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1487
  oldLo := (32200000000000001 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_801]
}

noncomputable def cell_11709 : Cell := { cellDefaults with
  domain := ⟨(127325000000000011 / 200000000000000000 : ℚ), (15918750000000001 / 25000000000000000 : ℚ)⟩
  r := (13436185516781 / 25000000000000 : ℚ)
  w := (1376121631467 / 1000000000000 : ℚ)
  center := (254675000000000019 / 400000000000000000 : ℚ)
  supportValue := (32192761362976063 / 100000000000000000 : ℚ)
  supportSlope := (-11832957617114201 / 10000000000000000 : ℚ)
  oldCenter := (32192761362976063 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1487
  oldLo := (32150000000000001 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_800, piece_801]
}

noncomputable def cell_11710 : Cell := { cellDefaults with
  domain := ⟨(15918750000000001 / 25000000000000000 : ℚ), (25475000000000001 / 40000000000000000 : ℚ)⟩
  r := (13436185516781 / 25000000000000 : ℚ)
  w := (1376121631467 / 1000000000000 : ℚ)
  center := (254725000000000013 / 400000000000000000 : ℚ)
  supportValue := (643559118762793 / 2000000000000000 : ℚ)
  supportSlope := (-590975981986279 / 500000000000000 : ℚ)
  oldCenter := (643559118762793 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1487
  oldLo := (32150000000000001 / 100000000000000000 : ℚ)
  oldHi := (32200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_800]
}

noncomputable def cell_11711 : Cell := { cellDefaults with
  domain := ⟨(25475000000000001 / 40000000000000000 : ℚ), (63700000000000001 / 100000000000000000 : ℚ)⟩
  r := (13436185516781 / 25000000000000 : ℚ)
  w := (1376121631467 / 1000000000000 : ℚ)
  center := (254775000000000007 / 400000000000000000 : ℚ)
  supportValue := (6432638000468519 / 20000000000000000 : ℚ)
  supportSlope := (-2361196941578497 / 2000000000000000 : ℚ)
  oldCenter := (6432638000468519 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1487
  oldLo := (32150000000000001 / 100000000000000000 : ℚ)
  oldHi := (32200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_800]
}

noncomputable def cell_11712 : Cell := { cellDefaults with
  domain := ⟨(63700000000000001 / 100000000000000000 : ℚ), (25485000000000001 / 40000000000000000 : ℚ)⟩
  r := (419683486159 / 781250000000 : ℚ)
  w := (6879445883297 / 5000000000000 : ℚ)
  center := (254825000000000007 / 400000000000000000 : ℚ)
  supportValue := (6435718199234387 / 20000000000000000 : ℚ)
  supportSlope := (-36920566826133 / 31250000000000 : ℚ)
  oldCenter := (6435718199234387 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1488
  oldLo := (32150000000000001 / 100000000000000000 : ℚ)
  oldHi := (32200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_800]
}

noncomputable def cell_11713 : Cell := { cellDefaults with
  domain := ⟨(25485000000000001 / 40000000000000000 : ℚ), (15931250000000001 / 25000000000000000 : ℚ)⟩
  r := (419683486159 / 781250000000 : ℚ)
  w := (6879445883297 / 5000000000000 : ℚ)
  center := (254875000000000013 / 400000000000000000 : ℚ)
  supportValue := (3216383122667271 / 10000000000000000 : ℚ)
  supportSlope := (-737566054609307 / 625000000000000 : ℚ)
  oldCenter := (3216383122667271 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1488
  oldLo := (32150000000000001 / 100000000000000000 : ℚ)
  oldHi := (32200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_800]
}

noncomputable def cell_11714 : Cell := { cellDefaults with
  domain := ⟨(15931250000000001 / 25000000000000000 : ℚ), (127475000000000011 / 200000000000000000 : ℚ)⟩
  r := (419683486159 / 781250000000 : ℚ)
  w := (6879445883297 / 5000000000000 : ℚ)
  center := (254925000000000019 / 400000000000000000 : ℚ)
  supportValue := (6429821885862983 / 20000000000000000 : ℚ)
  supportSlope := (-1179765913825151 / 1000000000000000 : ℚ)
  oldCenter := (6429821885862983 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1488
  oldLo := (32100000000000001 / 100000000000000000 : ℚ)
  oldHi := (32200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_799, piece_800]
}

noncomputable def cell_11715 : Cell := { cellDefaults with
  domain := ⟨(127475000000000011 / 200000000000000000 : ℚ), (63750000000000007 / 100000000000000000 : ℚ)⟩
  r := (419683486159 / 781250000000 : ℚ)
  w := (6879445883297 / 5000000000000 : ℚ)
  center := (10199000000000001 / 16000000000000000 : ℚ)
  supportValue := (32134338508902927 / 100000000000000000 : ℚ)
  supportSlope := (-2947986048884223 / 2500000000000000 : ℚ)
  oldCenter := (32134338508902927 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1488
  oldLo := (32100000000000001 / 100000000000000000 : ℚ)
  oldHi := (32150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_799]
}

noncomputable def cell_11716 : Cell := { cellDefaults with
  domain := ⟨(63750000000000007 / 100000000000000000 : ℚ), (127525000000000011 / 200000000000000000 : ℚ)⟩
  r := (6711782089437 / 12500000000000 : ℚ)
  w := (6878285233229 / 5000000000000 : ℚ)
  center := (10201000000000001 / 16000000000000000 : ℚ)
  supportValue := (1607487341841269 / 5000000000000000 : ℚ)
  supportSlope := (-5895980645985329 / 5000000000000000 : ℚ)
  oldCenter := (1607487341841269 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1489
  oldLo := (32100000000000001 / 100000000000000000 : ℚ)
  oldHi := (32200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_799, piece_800]
}

noncomputable def cell_11717 : Cell := { cellDefaults with
  domain := ⟨(127525000000000011 / 200000000000000000 : ℚ), (15943750000000001 / 25000000000000000 : ℚ)⟩
  r := (6711782089437 / 12500000000000 : ℚ)
  w := (6878285233229 / 5000000000000 : ℚ)
  center := (255075000000000019 / 400000000000000000 : ℚ)
  supportValue := (32134982063540407 / 100000000000000000 : ℚ)
  supportSlope := (-5893515670899059 / 5000000000000000 : ℚ)
  oldCenter := (32134982063540407 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1489
  oldLo := (32100000000000001 / 100000000000000000 : ℚ)
  oldHi := (32150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_799]
}

noncomputable def cell_11718 : Cell := { cellDefaults with
  domain := ⟨(15943750000000001 / 25000000000000000 : ℚ), (25515000000000001 / 40000000000000000 : ℚ)⟩
  r := (6711782089437 / 12500000000000 : ℚ)
  w := (6878285233229 / 5000000000000 : ℚ)
  center := (255125000000000013 / 400000000000000000 : ℚ)
  supportValue := (1606012836352811 / 5000000000000000 : ℚ)
  supportSlope := (-11773514136487497 / 10000000000000000 : ℚ)
  oldCenter := (1606012836352811 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1489
  oldLo := (32100000000000001 / 100000000000000000 : ℚ)
  oldHi := (32150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_799]
}

noncomputable def cell_11719 : Cell := { cellDefaults with
  domain := ⟨(25515000000000001 / 40000000000000000 : ℚ), (63800000000000001 / 100000000000000000 : ℚ)⟩
  r := (6711782089437 / 12500000000000 : ℚ)
  w := (6878285233229 / 5000000000000 : ℚ)
  center := (255175000000000007 / 400000000000000000 : ℚ)
  supportValue := (3210557072559053 / 10000000000000000 : ℚ)
  supportSlope := (-36757080218307 / 31250000000000 : ℚ)
  oldCenter := (3210557072559053 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1489
  oldHi := (32150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_798, piece_799]
}

noncomputable def cell_11720 : Cell := { cellDefaults with
  domain := ⟨(63800000000000001 / 100000000000000000 : ℚ), (25525000000000001 / 40000000000000000 : ℚ)⟩
  r := (53669058730913 / 100000000000000 : ℚ)
  w := (3438565845171 / 2500000000000 : ℚ)
  center := (255225000000000007 / 400000000000000000 : ℚ)
  supportValue := (642417354917291 / 2000000000000000 : ℚ)
  supportSlope := (-470743393965677 / 400000000000000 : ℚ)
  oldCenter := (642417354917291 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1490
  oldLo := (32100000000000001 / 100000000000000000 : ℚ)
  oldHi := (32150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_799]
}

noncomputable def cell_11721 : Cell := { cellDefaults with
  domain := ⟨(25525000000000001 / 40000000000000000 : ℚ), (15956250000000001 / 25000000000000000 : ℚ)⟩
  r := (53669058730913 / 100000000000000 : ℚ)
  w := (3438565845171 / 2500000000000 : ℚ)
  center := (255275000000000013 / 400000000000000000 : ℚ)
  supportValue := (25684950319981 / 80000000000000 : ℚ)
  supportSlope := (-2939147149192059 / 2500000000000000 : ℚ)
  oldCenter := (25684950319981 / 80000000000000 : ℚ)
  newCoefficients := coefficients_1490
  oldHi := (32150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_798, piece_799]
}

noncomputable def cell_11722 : Cell := { cellDefaults with
  domain := ⟨(15956250000000001 / 25000000000000000 : ℚ), (127675000000000011 / 200000000000000000 : ℚ)⟩
  r := (53669058730913 / 100000000000000 : ℚ)
  w := (3438565845171 / 2500000000000 : ℚ)
  center := (255325000000000019 / 400000000000000000 : ℚ)
  supportValue := (8022866717940079 / 25000000000000000 : ℚ)
  supportSlope := (-11759607819258033 / 10000000000000000 : ℚ)
  oldCenter := (8022866717940079 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1490
  oldPieces := [piece_798]
}

noncomputable def cell_11723 : Cell := { cellDefaults with
  domain := ⟨(127675000000000011 / 200000000000000000 : ℚ), (63850000000000007 / 100000000000000000 : ℚ)⟩
  r := (53669058730913 / 100000000000000 : ℚ)
  w := (3438565845171 / 2500000000000 : ℚ)
  center := (10215000000000001 / 16000000000000000 : ℚ)
  supportValue := (501199622019539 / 1562500000000000 : ℚ)
  supportSlope := (-587304967042553 / 500000000000000 : ℚ)
  oldCenter := (501199622019539 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1490
  oldPieces := [piece_798]
}

noncomputable def cell_11724 : Cell := { cellDefaults with
  domain := ⟨(63850000000000007 / 100000000000000000 : ℚ), (127725000000000011 / 200000000000000000 : ℚ)⟩
  r := (53643884876679 / 100000000000000 : ℚ)
  w := (1718994396227 / 1250000000000 : ℚ)
  center := (10217000000000001 / 16000000000000000 : ℚ)
  supportValue := (802302281960871 / 2500000000000000 : ℚ)
  supportSlope := (-367334437399491 / 312500000000000 : ℚ)
  oldCenter := (802302281960871 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1491
  oldPieces := [piece_798]
}

noncomputable def cell_11725 : Cell := { cellDefaults with
  domain := ⟨(127725000000000011 / 200000000000000000 : ℚ), (15968750000000001 / 25000000000000000 : ℚ)⟩
  r := (53643884876679 / 100000000000000 : ℚ)
  w := (1718994396227 / 1250000000000 : ℚ)
  center := (255475000000000019 / 400000000000000000 : ℚ)
  supportValue := (1603870317084883 / 5000000000000000 : ℚ)
  supportSlope := (-11741203914132101 / 10000000000000000 : ℚ)
  oldCenter := (1603870317084883 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1491
  oldPieces := [piece_798]
}

noncomputable def cell_11726 : Cell := { cellDefaults with
  domain := ⟨(15968750000000001 / 25000000000000000 : ℚ), (25555000000000001 / 40000000000000000 : ℚ)⟩
  r := (53643884876679 / 100000000000000 : ℚ)
  w := (1718994396227 / 1250000000000 : ℚ)
  center := (255525000000000013 / 400000000000000000 : ℚ)
  supportValue := (6412547648435527 / 20000000000000000 : ℚ)
  supportSlope := (-366492573837573 / 312500000000000 : ℚ)
  oldCenter := (6412547648435527 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1491
  oldPieces := [piece_798]
}

noncomputable def cell_11727 : Cell := { cellDefaults with
  domain := ⟨(25555000000000001 / 40000000000000000 : ℚ), (63900000000000001 / 100000000000000000 : ℚ)⟩
  r := (53643884876679 / 100000000000000 : ℚ)
  w := (1718994396227 / 1250000000000 : ℚ)
  center := (255575000000000007 / 400000000000000000 : ℚ)
  supportValue := (400601329912069 / 1250000000000000 : ℚ)
  supportSlope := (-5862849056460099 / 5000000000000000 : ℚ)
  oldCenter := (400601329912069 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1491
  oldLo := (32000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_797, piece_798]
}

noncomputable def cell_11728 : Cell := { cellDefaults with
  domain := ⟨(63900000000000001 / 100000000000000000 : ℚ), (25565000000000001 / 40000000000000000 : ℚ)⟩
  r := (53618743408719 / 100000000000000 : ℚ)
  w := (13749661022473 / 10000000000000 : ℚ)
  center := (255625000000000007 / 400000000000000000 : ℚ)
  supportValue := (6412667133749953 / 20000000000000000 : ℚ)
  supportSlope := (-2930712514199389 / 2500000000000000 : ℚ)
  oldCenter := (6412667133749953 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1492
  oldPieces := [piece_798]
}

noncomputable def cell_11729 : Cell := { cellDefaults with
  domain := ⟨(25565000000000001 / 40000000000000000 : ℚ), (15981250000000001 / 25000000000000000 : ℚ)⟩
  r := (53618743408719 / 100000000000000 : ℚ)
  w := (13749661022473 / 10000000000000 : ℚ)
  center := (255675000000000013 / 400000000000000000 : ℚ)
  supportValue := (6409742175914963 / 20000000000000000 : ℚ)
  supportSlope := (-183125858345379 / 156250000000000 : ℚ)
  oldCenter := (6409742175914963 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1492
  oldLo := (32000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_797, piece_798]
}

noncomputable def cell_11730 : Cell := { cellDefaults with
  domain := ⟨(15981250000000001 / 25000000000000000 : ℚ), (127875000000000011 / 200000000000000000 : ℚ)⟩
  r := (53618743408719 / 100000000000000 : ℚ)
  w := (13749661022473 / 10000000000000 : ℚ)
  center := (255725000000000019 / 400000000000000000 : ℚ)
  supportValue := (4004254697786127 / 12500000000000000 : ℚ)
  supportSlope := (-2928487555688623 / 2500000000000000 : ℚ)
  oldCenter := (4004254697786127 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1492
  oldLo := (32000000000000001 / 100000000000000000 : ℚ)
  oldHi := (32050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_797]
}

noncomputable def cell_11731 : Cell := { cellDefaults with
  domain := ⟨(127875000000000011 / 200000000000000000 : ℚ), (63950000000000007 / 100000000000000000 : ℚ)⟩
  r := (53618743408719 / 100000000000000 : ℚ)
  w := (13749661022473 / 10000000000000 : ℚ)
  center := (10231000000000001 / 16000000000000000 : ℚ)
  supportValue := (1600970177173259 / 5000000000000000 : ℚ)
  supportSlope := (-11700518977394143 / 10000000000000000 : ℚ)
  oldCenter := (1600970177173259 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1492
  oldLo := (32000000000000001 / 100000000000000000 : ℚ)
  oldHi := (32050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_797]
}

noncomputable def cell_11732 : Cell := { cellDefaults with
  domain := ⟨(63950000000000007 / 100000000000000000 : ℚ), (127925000000000011 / 200000000000000000 : ℚ)⟩
  r := (5359362686299 / 10000000000000 : ℚ)
  w := (13747370048029 / 10000000000000 : ℚ)
  center := (10233000000000001 / 16000000000000000 : ℚ)
  supportValue := (1281385546932873 / 4000000000000000 : ℚ)
  supportSlope := (-5854526690308317 / 5000000000000000 : ℚ)
  oldCenter := (1281385546932873 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1493
  oldLo := (32000000000000001 / 100000000000000000 : ℚ)
  oldHi := (32050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_797]
}

noncomputable def cell_11733 : Cell := { cellDefaults with
  domain := ⟨(127925000000000011 / 200000000000000000 : ℚ), (15993750000000001 / 25000000000000000 : ℚ)⟩
  r := (5359362686299 / 10000000000000 : ℚ)
  w := (13747370048029 / 10000000000000 : ℚ)
  center := (255875000000000019 / 400000000000000000 : ℚ)
  supportValue := (16010005374531497 / 50000000000000000 : ℚ)
  supportSlope := (-73097703140521 / 62500000000000 : ℚ)
  oldCenter := (16010005374531497 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1493
  oldLo := (32000000000000001 / 100000000000000000 : ℚ)
  oldHi := (32050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_797]
}

noncomputable def cell_11734 : Cell := { cellDefaults with
  domain := ⟨(15993750000000001 / 25000000000000000 : ℚ), (25595000000000001 / 40000000000000000 : ℚ)⟩
  r := (5359362686299 / 10000000000000 : ℚ)
  w := (13747370048029 / 10000000000000 : ℚ)
  center := (255925000000000013 / 400000000000000000 : ℚ)
  supportValue := (1600271098475631 / 5000000000000000 : ℚ)
  supportSlope := (-584230992521987 / 500000000000000 : ℚ)
  oldCenter := (1600271098475631 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1493
  oldLo := (6394413407821229 / 20000000000000000 : ℚ)
  oldHi := (32050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_796, piece_797]
}

noncomputable def cell_11735 : Cell := { cellDefaults with
  domain := ⟨(25595000000000001 / 40000000000000000 : ℚ), (64000000000000001 / 100000000000000000 : ℚ)⟩
  r := (5359362686299 / 10000000000000 : ℚ)
  w := (13747370048029 / 10000000000000 : ℚ)
  center := (255975000000000007 / 400000000000000000 : ℚ)
  supportValue := (31990790909051103 / 100000000000000000 : ℚ)
  supportSlope := (-5843421998151389 / 5000000000000000 : ℚ)
  oldCenter := (31990790909051103 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1493
  oldLo := (6394413407821229 / 20000000000000000 : ℚ)
  oldHi := (32000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_796]
}

noncomputable def cell_11736 : Cell := { cellDefaults with
  domain := ⟨(64000000000000001 / 100000000000000000 : ℚ), (25605000000000001 / 40000000000000000 : ℚ)⟩
  r := (2678427000941 / 5000000000000 : ℚ)
  w := (13745087216957 / 10000000000000 : ℚ)
  center := (256025000000000007 / 400000000000000000 : ℚ)
  supportValue := (6401202163549271 / 20000000000000000 : ℚ)
  supportSlope := (-1459874906053307 / 1250000000000000 : ℚ)
  oldCenter := (6401202163549271 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1494
  oldLo := (6394413407821229 / 20000000000000000 : ℚ)
  oldHi := (32050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_796, piece_797]
}

noncomputable def cell_11737 : Cell := { cellDefaults with
  domain := ⟨(25605000000000001 / 40000000000000000 : ℚ), (16006250000000001 / 25000000000000000 : ℚ)⟩
  r := (2678427000941 / 5000000000000 : ℚ)
  w := (13745087216957 / 10000000000000 : ℚ)
  center := (256075000000000013 / 400000000000000000 : ℚ)
  supportValue := (639827735542581 / 2000000000000000 : ℚ)
  supportSlope := (-11681961067492017 / 10000000000000000 : ℚ)
  oldCenter := (639827735542581 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1494
  oldLo := (6394413407821229 / 20000000000000000 : ℚ)
  oldHi := (32000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_796]
}

noncomputable def cell_11738 : Cell := { cellDefaults with
  domain := ⟨(16006250000000001 / 25000000000000000 : ℚ), (128075000000000011 / 200000000000000000 : ℚ)⟩
  r := (2678427000941 / 5000000000000 : ℚ)
  w := (13745087216957 / 10000000000000 : ℚ)
  center := (256125000000000019 / 400000000000000000 : ℚ)
  supportValue := (7994198177756151 / 25000000000000000 : ℚ)
  supportSlope := (-11668553405391457 / 10000000000000000 : ℚ)
  oldCenter := (7994198177756151 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1494
  oldLo := (31950000000000001 / 100000000000000000 : ℚ)
  oldHi := (32000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_795, piece_796]
}

noncomputable def cell_11739 : Cell := { cellDefaults with
  domain := ⟨(128075000000000011 / 200000000000000000 : ℚ), (64050000000000007 / 100000000000000000 : ℚ)⟩
  r := (2678427000941 / 5000000000000 : ℚ)
  w := (13745087216957 / 10000000000000 : ℚ)
  center := (10247000000000001 / 16000000000000000 : ℚ)
  supportValue := (399527692044363 / 1250000000000000 : ℚ)
  supportSlope := (-11655208051973553 / 10000000000000000 : ℚ)
  oldCenter := (399527692044363 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1494
  oldLo := (31950000000000001 / 100000000000000000 : ℚ)
  oldHi := (6394413407821229 / 20000000000000000 : ℚ)
  oldPieces := [piece_795]
}

noncomputable def cell_11740 : Cell := { cellDefaults with
  domain := ⟨(64050000000000007 / 100000000000000000 : ℚ), (3202513966480447 / 5000000000000000 : ℚ)⟩
  center := (128100279329608947 / 200000000000000000 : ℚ)
  supportValue := (15992244507316483 / 50000000000000000 : ℚ)
  supportSlope := (-1167020108013479 / 1000000000000000 : ℚ)
  oldCenter := (15992244507316483 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1495
  oldLo := (6394413407821229 / 20000000000000000 : ℚ)
  oldHi := (32000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_796]
}

noncomputable def cell_11741 : Cell := { cellDefaults with
  domain := ⟨(3202513966480447 / 5000000000000000 : ℚ), (256250837988826821 / 400000000000000000 : ℚ)⟩
  center := (512451955307262581 / 800000000000000000 : ℚ)
  supportValue := (1598854072661883 / 5000000000000000 : ℚ)
  supportSlope := (-72896247938653 / 62500000000000 : ℚ)
  oldCenter := (1598854072661883 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1496
  oldLo := (31950000000000001 / 100000000000000000 : ℚ)
  oldHi := (32000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_795, piece_796]
}

noncomputable def cell_11742 : Cell := { cellDefaults with
  domain := ⟨(256250837988826821 / 400000000000000000 : ℚ), (128150279329608941 / 200000000000000000 : ℚ)⟩
  center := (512551396648044703 / 800000000000000000 : ℚ)
  supportValue := (31962591896175513 / 100000000000000000 : ℚ)
  supportSlope := (-5825070182075761 / 5000000000000000 : ℚ)
  oldCenter := (31962591896175513 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1496
  oldLo := (31950000000000001 / 100000000000000000 : ℚ)
  oldHi := (6394413407821229 / 20000000000000000 : ℚ)
  oldPieces := [piece_795]
}

noncomputable def cell_11743 : Cell := { cellDefaults with
  domain := ⟨(128150279329608941 / 200000000000000000 : ℚ), (256350279329608943 / 400000000000000000 : ℚ)⟩
  center := (20506033519553073 / 32000000000000000 : ℚ)
  supportValue := (15974069116781753 / 50000000000000000 : ℚ)
  supportSlope := (-11648245619776543 / 10000000000000000 : ℚ)
  oldCenter := (15974069116781753 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1496
  oldLo := (31900000000000001 / 100000000000000000 : ℚ)
  oldHi := (6394413407821229 / 20000000000000000 : ℚ)
  oldPieces := [piece_794, piece_795]
}

noncomputable def cell_11744 : Cell := { cellDefaults with
  domain := ⟨(256350279329608943 / 400000000000000000 : ℚ), (64100000000000001 / 100000000000000000 : ℚ)⟩
  center := (512750279329608947 / 800000000000000000 : ℚ)
  supportValue := (3193363691426049 / 10000000000000000 : ℚ)
  supportSlope := (-11641581559894043 / 10000000000000000 : ℚ)
  oldCenter := (3193363691426049 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1496
  oldLo := (31900000000000001 / 100000000000000000 : ℚ)
  oldHi := (31950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_794]
}

noncomputable def cell_11745 : Cell := { cellDefaults with
  domain := ⟨(64100000000000001 / 100000000000000000 : ℚ), (25645000000000001 / 40000000000000000 : ℚ)⟩
  r := (3344903139489 / 6250000000000 : ℚ)
  w := (3435135802887 / 2500000000000 : ℚ)
  center := (256425000000000007 / 400000000000000000 : ℚ)
  supportValue := (6389768176969951 / 20000000000000000 : ℚ)
  supportSlope := (-5821302311099087 / 5000000000000000 : ℚ)
  oldCenter := (6389768176969951 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1497
  oldLo := (31900000000000001 / 100000000000000000 : ℚ)
  oldHi := (6394413407821229 / 20000000000000000 : ℚ)
  oldPieces := [piece_794, piece_795]
}

noncomputable def cell_11746 : Cell := { cellDefaults with
  domain := ⟨(25645000000000001 / 40000000000000000 : ℚ), (16031250000000001 / 25000000000000000 : ℚ)⟩
  r := (3344903139489 / 6250000000000 : ℚ)
  w := (3435135802887 / 2500000000000 : ℚ)
  center := (256475000000000013 / 400000000000000000 : ℚ)
  supportValue := (1596713210715691 / 5000000000000000 : ℚ)
  supportSlope := (-727297242231663 / 625000000000000 : ℚ)
  oldCenter := (1596713210715691 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1497
  oldLo := (31900000000000001 / 100000000000000000 : ℚ)
  oldHi := (31950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_794]
}

noncomputable def cell_11747 : Cell := { cellDefaults with
  domain := ⟨(16031250000000001 / 25000000000000000 : ℚ), (128275000000000011 / 200000000000000000 : ℚ)⟩
  r := (3344903139489 / 6250000000000 : ℚ)
  w := (3435135802887 / 2500000000000 : ℚ)
  center := (256525000000000019 / 400000000000000000 : ℚ)
  supportValue := (6383945320938681 / 20000000000000000 : ℚ)
  supportSlope := (-2905856637609101 / 2500000000000000 : ℚ)
  oldCenter := (6383945320938681 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1497
  oldLo := (31900000000000001 / 100000000000000000 : ℚ)
  oldHi := (31950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_794]
}

noncomputable def cell_11748 : Cell := { cellDefaults with
  domain := ⟨(128275000000000011 / 200000000000000000 : ℚ), (64150000000000007 / 100000000000000000 : ℚ)⟩
  r := (3344903139489 / 6250000000000 : ℚ)
  w := (3435135802887 / 2500000000000 : ℚ)
  center := (10263000000000001 / 16000000000000000 : ℚ)
  supportValue := (3190522795540147 / 10000000000000000 : ℚ)
  supportSlope := (-11612706967996929 / 10000000000000000 : ℚ)
  oldCenter := (3190522795540147 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1497
  oldLo := (31850000000000001 / 100000000000000000 : ℚ)
  oldHi := (31950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_793, piece_794]
}

noncomputable def cell_11749 : Cell := { cellDefaults with
  domain := ⟨(64150000000000007 / 100000000000000000 : ℚ), (256650000000000023 / 400000000000000000 : ℚ)⟩
  r := (1337336271457 / 2500000000000 : ℚ)
  w := (1717285880351 / 1250000000000 : ℚ)
  center := (513250000000000051 / 800000000000000000 : ℚ)
  supportValue := (15960138708245897 / 50000000000000000 : ℚ)
  supportSlope := (-2323708896400111 / 2000000000000000 : ℚ)
  oldCenter := (15960138708245897 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1498
  oldLo := (31900000000000001 / 100000000000000000 : ℚ)
  oldHi := (31950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_794]
}

theorem check_11700 : cell_11700.check = true := by
  decide +kernel

theorem check_11701 : cell_11701.check = true := by
  decide +kernel

theorem check_11702 : cell_11702.check = true := by
  decide +kernel

theorem check_11703 : cell_11703.check = true := by
  decide +kernel

theorem check_11704 : cell_11704.check = true := by
  decide +kernel

theorem check_11705 : cell_11705.check = true := by
  decide +kernel

theorem check_11706 : cell_11706.check = true := by
  decide +kernel

theorem check_11707 : cell_11707.check = true := by
  decide +kernel

theorem check_11708 : cell_11708.check = true := by
  decide +kernel

theorem check_11709 : cell_11709.check = true := by
  decide +kernel

theorem check_11710 : cell_11710.check = true := by
  decide +kernel

theorem check_11711 : cell_11711.check = true := by
  decide +kernel

theorem check_11712 : cell_11712.check = true := by
  decide +kernel

theorem check_11713 : cell_11713.check = true := by
  decide +kernel

theorem check_11714 : cell_11714.check = true := by
  decide +kernel

theorem check_11715 : cell_11715.check = true := by
  decide +kernel

theorem check_11716 : cell_11716.check = true := by
  decide +kernel

theorem check_11717 : cell_11717.check = true := by
  decide +kernel

theorem check_11718 : cell_11718.check = true := by
  decide +kernel

theorem check_11719 : cell_11719.check = true := by
  decide +kernel

theorem check_11720 : cell_11720.check = true := by
  decide +kernel

theorem check_11721 : cell_11721.check = true := by
  decide +kernel

theorem check_11722 : cell_11722.check = true := by
  decide +kernel

theorem check_11723 : cell_11723.check = true := by
  decide +kernel

theorem check_11724 : cell_11724.check = true := by
  decide +kernel

theorem check_11725 : cell_11725.check = true := by
  decide +kernel

theorem check_11726 : cell_11726.check = true := by
  decide +kernel

theorem check_11727 : cell_11727.check = true := by
  decide +kernel

theorem check_11728 : cell_11728.check = true := by
  decide +kernel

theorem check_11729 : cell_11729.check = true := by
  decide +kernel

theorem check_11730 : cell_11730.check = true := by
  decide +kernel

theorem check_11731 : cell_11731.check = true := by
  decide +kernel

theorem check_11732 : cell_11732.check = true := by
  decide +kernel

theorem check_11733 : cell_11733.check = true := by
  decide +kernel

theorem check_11734 : cell_11734.check = true := by
  decide +kernel

theorem check_11735 : cell_11735.check = true := by
  decide +kernel

theorem check_11736 : cell_11736.check = true := by
  decide +kernel

theorem check_11737 : cell_11737.check = true := by
  decide +kernel

theorem check_11738 : cell_11738.check = true := by
  decide +kernel

theorem check_11739 : cell_11739.check = true := by
  decide +kernel

theorem check_11740 : cell_11740.check = true := by
  decide +kernel

theorem check_11741 : cell_11741.check = true := by
  decide +kernel

theorem check_11742 : cell_11742.check = true := by
  decide +kernel

theorem check_11743 : cell_11743.check = true := by
  decide +kernel

theorem check_11744 : cell_11744.check = true := by
  decide +kernel

theorem check_11745 : cell_11745.check = true := by
  decide +kernel

theorem check_11746 : cell_11746.check = true := by
  decide +kernel

theorem check_11747 : cell_11747.check = true := by
  decide +kernel

theorem check_11748 : cell_11748.check = true := by
  decide +kernel

theorem check_11749 : cell_11749.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11700, cell_11701, cell_11702, cell_11703, cell_11704, cell_11705, cell_11706, cell_11707, cell_11708, cell_11709, cell_11710, cell_11711, cell_11712, cell_11713, cell_11714, cell_11715, cell_11716, cell_11717, cell_11718, cell_11719, cell_11720, cell_11721, cell_11722, cell_11723, cell_11724, cell_11725, cell_11726, cell_11727, cell_11728, cell_11729, cell_11730, cell_11731, cell_11732, cell_11733, cell_11734, cell_11735, cell_11736, cell_11737, cell_11738, cell_11739, cell_11740, cell_11741, cell_11742, cell_11743, cell_11744, cell_11745, cell_11746, cell_11747, cell_11748, cell_11749]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11700, check_11701, check_11702, check_11703, check_11704, check_11705, check_11706, check_11707, check_11708, check_11709, check_11710, check_11711, check_11712, check_11713, check_11714, check_11715, check_11716, check_11717, check_11718, check_11719, check_11720, check_11721, check_11722, check_11723, check_11724, check_11725, check_11726, check_11727, check_11728, check_11729, check_11730, check_11731, check_11732, check_11733, check_11734, check_11735, check_11736, check_11737, check_11738, check_11739, check_11740, check_11741, check_11742, check_11743, check_11744, check_11745, check_11746, check_11747, check_11748, check_11749, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0234

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0234
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0234
open AnalyticBounds.ExpressionCertificate

theorem linked_11700 : Linked cell_11700 pieces := by
  link_source cell_11700 with piece_1485 using piece_1485_mem, piece_802_mem

theorem linked_11701 : Linked cell_11701 pieces := by
  link_source cell_11701 with piece_1485 using piece_1485_mem, ⟨piece_801_mem, piece_802_mem⟩

theorem linked_11702 : Linked cell_11702 pieces := by
  link_source cell_11702 with piece_1485 using piece_1485_mem, piece_801_mem

theorem linked_11703 : Linked cell_11703 pieces := by
  link_source cell_11703 with piece_1485 using piece_1485_mem, piece_801_mem

theorem linked_11704 : Linked cell_11704 pieces := by
  link_source cell_11704 with piece_1486 using piece_1486_mem, piece_801_mem

theorem linked_11705 : Linked cell_11705 pieces := by
  link_source cell_11705 with piece_1486 using piece_1486_mem, piece_801_mem

theorem linked_11706 : Linked cell_11706 pieces := by
  link_source cell_11706 with piece_1486 using piece_1486_mem, ⟨piece_800_mem, piece_801_mem⟩

theorem linked_11707 : Linked cell_11707 pieces := by
  link_source cell_11707 with piece_1486 using piece_1486_mem, piece_800_mem

theorem linked_11708 : Linked cell_11708 pieces := by
  link_source cell_11708 with piece_1487 using piece_1487_mem, piece_801_mem

theorem linked_11709 : Linked cell_11709 pieces := by
  link_source cell_11709 with piece_1487 using piece_1487_mem, ⟨piece_800_mem, piece_801_mem⟩

theorem linked_11710 : Linked cell_11710 pieces := by
  link_source cell_11710 with piece_1487 using piece_1487_mem, piece_800_mem

theorem linked_11711 : Linked cell_11711 pieces := by
  link_source cell_11711 with piece_1487 using piece_1487_mem, piece_800_mem

theorem linked_11712 : Linked cell_11712 pieces := by
  link_source cell_11712 with piece_1488 using piece_1488_mem, piece_800_mem

theorem linked_11713 : Linked cell_11713 pieces := by
  link_source cell_11713 with piece_1488 using piece_1488_mem, piece_800_mem

theorem linked_11714 : Linked cell_11714 pieces := by
  link_source cell_11714 with piece_1488 using piece_1488_mem, ⟨piece_799_mem, piece_800_mem⟩

theorem linked_11715 : Linked cell_11715 pieces := by
  link_source cell_11715 with piece_1488 using piece_1488_mem, piece_799_mem

theorem linked_11716 : Linked cell_11716 pieces := by
  link_source cell_11716 with piece_1489 using piece_1489_mem, ⟨piece_799_mem, piece_800_mem⟩

theorem linked_11717 : Linked cell_11717 pieces := by
  link_source cell_11717 with piece_1489 using piece_1489_mem, piece_799_mem

theorem linked_11718 : Linked cell_11718 pieces := by
  link_source cell_11718 with piece_1489 using piece_1489_mem, piece_799_mem

theorem linked_11719 : Linked cell_11719 pieces := by
  link_source cell_11719 with piece_1489 using piece_1489_mem, ⟨piece_798_mem, piece_799_mem⟩

theorem linked_11720 : Linked cell_11720 pieces := by
  link_source cell_11720 with piece_1490 using piece_1490_mem, piece_799_mem

theorem linked_11721 : Linked cell_11721 pieces := by
  link_source cell_11721 with piece_1490 using piece_1490_mem, ⟨piece_798_mem, piece_799_mem⟩

theorem linked_11722 : Linked cell_11722 pieces := by
  link_source cell_11722 with piece_1490 using piece_1490_mem, piece_798_mem

theorem linked_11723 : Linked cell_11723 pieces := by
  link_source cell_11723 with piece_1490 using piece_1490_mem, piece_798_mem

theorem linked_11724 : Linked cell_11724 pieces := by
  link_source cell_11724 with piece_1491 using piece_1491_mem, piece_798_mem

theorem linked_11725 : Linked cell_11725 pieces := by
  link_source cell_11725 with piece_1491 using piece_1491_mem, piece_798_mem

theorem linked_11726 : Linked cell_11726 pieces := by
  link_source cell_11726 with piece_1491 using piece_1491_mem, piece_798_mem

theorem linked_11727 : Linked cell_11727 pieces := by
  link_source cell_11727 with piece_1491 using piece_1491_mem, ⟨piece_797_mem, piece_798_mem⟩

theorem linked_11728 : Linked cell_11728 pieces := by
  link_source cell_11728 with piece_1492 using piece_1492_mem, piece_798_mem

theorem linked_11729 : Linked cell_11729 pieces := by
  link_source cell_11729 with piece_1492 using piece_1492_mem, ⟨piece_797_mem, piece_798_mem⟩

theorem linked_11730 : Linked cell_11730 pieces := by
  link_source cell_11730 with piece_1492 using piece_1492_mem, piece_797_mem

theorem linked_11731 : Linked cell_11731 pieces := by
  link_source cell_11731 with piece_1492 using piece_1492_mem, piece_797_mem

theorem linked_11732 : Linked cell_11732 pieces := by
  link_source cell_11732 with piece_1493 using piece_1493_mem, piece_797_mem

theorem linked_11733 : Linked cell_11733 pieces := by
  link_source cell_11733 with piece_1493 using piece_1493_mem, piece_797_mem

theorem linked_11734 : Linked cell_11734 pieces := by
  link_source cell_11734 with piece_1493 using piece_1493_mem, ⟨piece_796_mem, piece_797_mem⟩

theorem linked_11735 : Linked cell_11735 pieces := by
  link_source cell_11735 with piece_1493 using piece_1493_mem, piece_796_mem

theorem linked_11736 : Linked cell_11736 pieces := by
  link_source cell_11736 with piece_1494 using piece_1494_mem, ⟨piece_796_mem, piece_797_mem⟩

theorem linked_11737 : Linked cell_11737 pieces := by
  link_source cell_11737 with piece_1494 using piece_1494_mem, piece_796_mem

theorem linked_11738 : Linked cell_11738 pieces := by
  link_source cell_11738 with piece_1494 using piece_1494_mem, ⟨piece_795_mem, piece_796_mem⟩

theorem linked_11739 : Linked cell_11739 pieces := by
  link_source cell_11739 with piece_1494 using piece_1494_mem, piece_795_mem

theorem linked_11740 : Linked cell_11740 pieces := by
  link_source cell_11740 with piece_1495 using piece_1495_mem, piece_796_mem

theorem linked_11741 : Linked cell_11741 pieces := by
  link_source cell_11741 with piece_1496 using piece_1496_mem, ⟨piece_795_mem, piece_796_mem⟩

theorem linked_11742 : Linked cell_11742 pieces := by
  link_source cell_11742 with piece_1496 using piece_1496_mem, piece_795_mem

theorem linked_11743 : Linked cell_11743 pieces := by
  link_source cell_11743 with piece_1496 using piece_1496_mem, ⟨piece_794_mem, piece_795_mem⟩

theorem linked_11744 : Linked cell_11744 pieces := by
  link_source cell_11744 with piece_1496 using piece_1496_mem, piece_794_mem

theorem linked_11745 : Linked cell_11745 pieces := by
  link_source cell_11745 with piece_1497 using piece_1497_mem, ⟨piece_794_mem, piece_795_mem⟩

theorem linked_11746 : Linked cell_11746 pieces := by
  link_source cell_11746 with piece_1497 using piece_1497_mem, piece_794_mem

theorem linked_11747 : Linked cell_11747 pieces := by
  link_source cell_11747 with piece_1497 using piece_1497_mem, piece_794_mem

theorem linked_11748 : Linked cell_11748 pieces := by
  link_source cell_11748 with piece_1497 using piece_1497_mem, ⟨piece_793_mem, piece_794_mem⟩

theorem linked_11749 : Linked cell_11749 pieces := by
  link_source cell_11749 with piece_1498 using piece_1498_mem, piece_794_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0234.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0234.cells,List.forall_mem_cons]
  exact ⟨linked_11700, linked_11701, linked_11702, linked_11703, linked_11704, linked_11705, linked_11706, linked_11707, linked_11708, linked_11709, linked_11710, linked_11711, linked_11712, linked_11713, linked_11714, linked_11715, linked_11716, linked_11717, linked_11718, linked_11719, linked_11720, linked_11721, linked_11722, linked_11723, linked_11724, linked_11725, linked_11726, linked_11727, linked_11728, linked_11729, linked_11730, linked_11731, linked_11732, linked_11733, linked_11734, linked_11735, linked_11736, linked_11737, linked_11738, linked_11739, linked_11740, linked_11741, linked_11742, linked_11743, linked_11744, linked_11745, linked_11746, linked_11747, linked_11748, linked_11749, by simp⟩

theorem covered : covers (31775000000000003 / 50000000000000000 : ℚ) (256650000000000023 / 400000000000000000 : ℚ)
    (SourceCertificates.Chunk0234.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0234
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0235
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(256650000000000023 / 400000000000000000 : ℚ), (128350000000000009 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (26634844259757 / 50000000000000 : ℚ)
  w := (6859134096089 / 5000000000000 : ℚ)
  center := (513350000000000041 / 800000000000000000 : ℚ)
  supportValue := (797644621592019 / 2500000000000000 : ℚ)
  supportSlope := (-11607140784245567 / 10000000000000000 : ℚ)
  oldCenter := (797644621592019 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1499
  oldLo := (127 / 400 : ℚ)
  oldHi := (31900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_793]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11750 : Cell := { cellDefaults with
  r := (1337336271457 / 2500000000000 : ℚ)
  w := (1717285880351 / 1250000000000 : ℚ)
  newCoefficients := coefficients_1498
  oldLo := (31850000000000001 / 100000000000000000 : ℚ)
  oldHi := (31950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_793, piece_794]
}

noncomputable def cell_11751 : Cell := { cellDefaults with
  domain := ⟨(128350000000000009 / 200000000000000000 : ℚ), (256750000000000013 / 400000000000000000 : ℚ)⟩
  r := (1337336271457 / 2500000000000 : ℚ)
  w := (1717285880351 / 1250000000000 : ℚ)
  center := (513450000000000031 / 800000000000000000 : ℚ)
  supportValue := (3189125064913671 / 10000000000000000 : ℚ)
  supportSlope := (-2902493125265539 / 2500000000000000 : ℚ)
  oldCenter := (3189125064913671 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1498
  oldLo := (31850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_793]
}

noncomputable def cell_11752 : Cell := { cellDefaults with
  domain := ⟨(256750000000000013 / 400000000000000000 : ℚ), (32100000000000001 / 50000000000000000 : ℚ)⟩
  r := (1337336271457 / 2500000000000 : ℚ)
  w := (1717285880351 / 1250000000000 : ℚ)
  center := (513550000000000021 / 800000000000000000 : ℚ)
  supportValue := (31876746515399923 / 100000000000000000 : ℚ)
  supportSlope := (-11596648557566973 / 10000000000000000 : ℚ)
  oldCenter := (31876746515399923 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1498
  oldLo := (31850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_793]
}

noncomputable def cell_11753 : Cell := { cellDefaults with
  domain := ⟨(32100000000000001 / 50000000000000000 : ℚ), (256850000000000013 / 400000000000000000 : ℚ)⟩
  r := (26734236831859 / 50000000000000 : ℚ)
  w := (13736028703809 / 10000000000000 : ℚ)
  center := (513650000000000021 / 800000000000000000 : ℚ)
  supportValue := (3189181842225107 / 10000000000000000 : ℚ)
  supportSlope := (-5666560643751 / 4882812500000 : ℚ)
  oldCenter := (3189181842225107 / 10000000000000000 : ℚ)
  oldLo := (31850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_793]
}

noncomputable def cell_11754 : Cell := { cellDefaults with
  domain := ⟨(256850000000000013 / 400000000000000000 : ℚ), (128450000000000009 / 200000000000000000 : ℚ)⟩
  r := (26734236831859 / 50000000000000 : ℚ)
  w := (13736028703809 / 10000000000000 : ℚ)
  center := (513750000000000031 / 800000000000000000 : ℚ)
  supportValue := (15938660176212527 / 50000000000000000 : ℚ)
  supportSlope := (-11591802589928597 / 10000000000000000 : ℚ)
  oldCenter := (15938660176212527 / 50000000000000000 : ℚ)
  oldLo := (31850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_793]
}

noncomputable def cell_11755 : Cell := { cellDefaults with
  domain := ⟨(128450000000000009 / 200000000000000000 : ℚ), (256950000000000023 / 400000000000000000 : ℚ)⟩
  r := (26734236831859 / 50000000000000 : ℚ)
  w := (13736028703809 / 10000000000000 : ℚ)
  center := (513850000000000041 / 800000000000000000 : ℚ)
  supportValue := (39828548612011 / 125000000000000 : ℚ)
  supportSlope := (-1447318112132023 / 1250000000000000 : ℚ)
  oldCenter := (39828548612011 / 125000000000000 : ℚ)
  oldLo := (31850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_793]
}

noncomputable def cell_11756 : Cell := { cellDefaults with
  domain := ⟨(256950000000000023 / 400000000000000000 : ℚ), (64250000000000007 / 100000000000000000 : ℚ)⟩
  r := (26734236831859 / 50000000000000 : ℚ)
  w := (13736028703809 / 10000000000000 : ℚ)
  center := (513950000000000051 / 800000000000000000 : ℚ)
  supportValue := (199052460680531 / 625000000000000 : ℚ)
  supportSlope := (-5788183629804021 / 5000000000000000 : ℚ)
  oldCenter := (199052460680531 / 625000000000000 : ℚ)
  oldLo := (159 / 500 : ℚ)
  oldPieces := [piece_792, piece_793]
}

noncomputable def cell_11757 : Cell := { cellDefaults with
  domain := ⟨(64250000000000007 / 100000000000000000 : ℚ), (257050000000000023 / 400000000000000000 : ℚ)⟩
  r := (53443529085837 / 100000000000000 : ℚ)
  w := (6866892922429 / 5000000000000 : ℚ)
  center := (514050000000000051 / 800000000000000000 : ℚ)
  supportValue := (3982922055580463 / 12500000000000000 : ℚ)
  supportSlope := (-5786839762747543 / 5000000000000000 : ℚ)
  oldCenter := (3982922055580463 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1500
  oldLo := (31850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_793]
}

noncomputable def cell_11758 : Cell := { cellDefaults with
  domain := ⟨(257050000000000023 / 400000000000000000 : ℚ), (128550000000000009 / 200000000000000000 : ℚ)⟩
  r := (53443529085837 / 100000000000000 : ℚ)
  w := (6866892922429 / 5000000000000 : ℚ)
  center := (514150000000000041 / 800000000000000000 : ℚ)
  supportValue := (6369787637303509 / 20000000000000000 : ℚ)
  supportSlope := (-289270847783103 / 250000000000000 : ℚ)
  oldCenter := (6369787637303509 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1500
  oldLo := (159 / 500 : ℚ)
  oldPieces := [piece_792, piece_793]
}

noncomputable def cell_11759 : Cell := { cellDefaults with
  domain := ⟨(128550000000000009 / 200000000000000000 : ℚ), (257150000000000013 / 400000000000000000 : ℚ)⟩
  r := (53443529085837 / 100000000000000 : ℚ)
  w := (6866892922429 / 5000000000000 : ℚ)
  center := (514250000000000031 / 800000000000000000 : ℚ)
  supportValue := (3183445109256727 / 10000000000000000 : ℚ)
  supportSlope := (-11294125627227 / 9765625000000 : ℚ)
  oldCenter := (3183445109256727 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1500
  oldLo := (159 / 500 : ℚ)
  oldHi := (31850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_792]
}

noncomputable def cell_11760 : Cell := { cellDefaults with
  domain := ⟨(257150000000000013 / 400000000000000000 : ℚ), (32150000000000001 / 50000000000000000 : ℚ)⟩
  r := (53443529085837 / 100000000000000 : ℚ)
  w := (6866892922429 / 5000000000000 : ℚ)
  center := (514350000000000021 / 800000000000000000 : ℚ)
  supportValue := (3182000290446871 / 10000000000000000 : ℚ)
  supportSlope := (-144399042013591 / 125000000000000 : ℚ)
  oldCenter := (3182000290446871 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1500
  oldLo := (159 / 500 : ℚ)
  oldHi := (31850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_792]
}

noncomputable def cell_11761 : Cell := { cellDefaults with
  domain := ⟨(32150000000000001 / 50000000000000000 : ℚ), (257250000000000013 / 400000000000000000 : ℚ)⟩
  r := (26709304886253 / 50000000000000 : ℚ)
  w := (13731545370513 / 10000000000000 : ℚ)
  center := (514450000000000021 / 800000000000000000 : ℚ)
  supportValue := (3183499314465617 / 10000000000000000 : ℚ)
  supportSlope := (-1445041929185453 / 1250000000000000 : ℚ)
  oldCenter := (3183499314465617 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1501
  oldLo := (159 / 500 : ℚ)
  oldHi := (31850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_792]
}

noncomputable def cell_11762 : Cell := { cellDefaults with
  domain := ⟨(257250000000000013 / 400000000000000000 : ℚ), (128650000000000009 / 200000000000000000 : ℚ)⟩
  r := (26709304886253 / 50000000000000 : ℚ)
  w := (13731545370513 / 10000000000000 : ℚ)
  center := (514550000000000031 / 800000000000000000 : ℚ)
  supportValue := (31820551011615283 / 100000000000000000 : ℚ)
  supportSlope := (-5773542232282969 / 5000000000000000 : ℚ)
  oldCenter := (31820551011615283 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1501
  oldLo := (159 / 500 : ℚ)
  oldHi := (31850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_792]
}

noncomputable def cell_11763 : Cell := { cellDefaults with
  domain := ⟨(128650000000000009 / 200000000000000000 : ℚ), (257350000000000023 / 400000000000000000 : ℚ)⟩
  r := (26709304886253 / 50000000000000 : ℚ)
  w := (13731545370513 / 10000000000000 : ℚ)
  center := (514650000000000041 / 800000000000000000 : ℚ)
  supportValue := (3180614767171791 / 10000000000000000 : ℚ)
  supportSlope := (-72095339934401 / 62500000000000 : ℚ)
  oldCenter := (3180614767171791 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1501
  oldHi := (31850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_791, piece_792]
}

noncomputable def cell_11764 : Cell := { cellDefaults with
  domain := ⟨(257350000000000023 / 400000000000000000 : ℚ), (64350000000000007 / 100000000000000000 : ℚ)⟩
  r := (26709304886253 / 50000000000000 : ℚ)
  w := (13731545370513 / 10000000000000 : ℚ)
  center := (514750000000000051 / 800000000000000000 : ℚ)
  supportValue := (15895851656022533 / 50000000000000000 : ℚ)
  supportSlope := (-2884675237215517 / 2500000000000000 : ℚ)
  oldCenter := (15895851656022533 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1501
  oldHi := (159 / 500 : ℚ)
  oldPieces := [piece_791]
}

noncomputable def cell_11765 : Cell := { cellDefaults with
  domain := ⟨(64350000000000007 / 100000000000000000 : ℚ), (257450000000000023 / 400000000000000000 : ℚ)⟩
  r := (53393719331801 / 100000000000000 : ℚ)
  w := (13729313750219 / 10000000000000 : ℚ)
  center := (514850000000000051 / 800000000000000000 : ℚ)
  supportValue := (1590333831511551 / 5000000000000000 : ℚ)
  supportSlope := (-115297438690221 / 100000000000000 : ℚ)
  oldCenter := (1590333831511551 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1502
  oldHi := (31850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_791, piece_792]
}

noncomputable def cell_11766 : Cell := { cellDefaults with
  domain := ⟨(257450000000000023 / 400000000000000000 : ℚ), (128750000000000009 / 200000000000000000 : ℚ)⟩
  r := (53393719331801 / 100000000000000 : ℚ)
  w := (13729313750219 / 10000000000000 : ℚ)
  center := (514950000000000041 / 800000000000000000 : ℚ)
  supportValue := (31792239153471763 / 100000000000000000 : ℚ)
  supportSlope := (-1441732997047451 / 1250000000000000 : ℚ)
  oldCenter := (31792239153471763 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1502
  oldHi := (159 / 500 : ℚ)
  oldPieces := [piece_791]
}

noncomputable def cell_11767 : Cell := { cellDefaults with
  domain := ⟨(128750000000000009 / 200000000000000000 : ℚ), (257550000000000013 / 400000000000000000 : ℚ)⟩
  r := (53393719331801 / 100000000000000 : ℚ)
  w := (13729313750219 / 10000000000000 : ℚ)
  center := (515050000000000031 / 800000000000000000 : ℚ)
  supportValue := (31777830096548443 / 100000000000000000 : ℚ)
  supportSlope := (-2880158536427157 / 2500000000000000 : ℚ)
  oldCenter := (31777830096548443 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1502
  oldHi := (159 / 500 : ℚ)
  oldPieces := [piece_791]
}

noncomputable def cell_11768 : Cell := { cellDefaults with
  domain := ⟨(257550000000000013 / 400000000000000000 : ℚ), (32200000000000001 / 50000000000000000 : ℚ)⟩
  r := (53393719331801 / 100000000000000 : ℚ)
  w := (13729313750219 / 10000000000000 : ℚ)
  center := (515150000000000021 / 800000000000000000 : ℚ)
  supportValue := (31763437542074163 / 100000000000000000 : ℚ)
  supportSlope := (-2876864993104643 / 2500000000000000 : ℚ)
  oldCenter := (31763437542074163 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1502
  oldHi := (159 / 500 : ℚ)
  oldPieces := [piece_791]
}

noncomputable def cell_11769 : Cell := { cellDefaults with
  domain := ⟨(32200000000000001 / 50000000000000000 : ℚ), (257650000000000013 / 400000000000000000 : ℚ)⟩
  r := (26684428939249 / 50000000000000 : ℚ)
  w := (1372709080779 / 1000000000000 : ℚ)
  center := (515250000000000021 / 800000000000000000 : ℚ)
  supportValue := (1271133879792121 / 4000000000000000 : ℚ)
  supportSlope := (-5757895705422157 / 5000000000000000 : ℚ)
  oldCenter := (1271133879792121 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1503
  oldHi := (159 / 500 : ℚ)
  oldPieces := [piece_791]
}

noncomputable def cell_11770 : Cell := { cellDefaults with
  domain := ⟨(257650000000000013 / 400000000000000000 : ℚ), (128850000000000009 / 200000000000000000 : ℚ)⟩
  r := (26684428939249 / 50000000000000 : ℚ)
  w := (1372709080779 / 1000000000000 : ℚ)
  center := (515350000000000031 / 800000000000000000 : ℚ)
  supportValue := (317639604872721 / 1000000000000000 : ℚ)
  supportSlope := (-718914224055939 / 625000000000000 : ℚ)
  oldCenter := (317639604872721 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1503
  oldHi := (159 / 500 : ℚ)
  oldPieces := [piece_791]
}

noncomputable def cell_11771 : Cell := { cellDefaults with
  domain := ⟨(128850000000000009 / 200000000000000000 : ℚ), (257750000000000023 / 400000000000000000 : ℚ)⟩
  r := (26684428939249 / 50000000000000 : ℚ)
  w := (1372709080779 / 1000000000000 : ℚ)
  center := (515450000000000041 / 800000000000000000 : ℚ)
  supportValue := (634992239333401 / 2000000000000000 : ℚ)
  supportSlope := (-11499041081596233 / 10000000000000000 : ℚ)
  oldCenter := (634992239333401 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1503
  oldLo := (317 / 1000 : ℚ)
  oldHi := (159 / 500 : ℚ)
  oldPieces := [piece_790, piece_791]
}

noncomputable def cell_11772 : Cell := { cellDefaults with
  domain := ⟨(257750000000000023 / 400000000000000000 : ℚ), (64450000000000007 / 100000000000000000 : ℚ)⟩
  r := (26684428939249 / 50000000000000 : ℚ)
  w := (1372709080779 / 1000000000000 : ℚ)
  center := (515550000000000051 / 800000000000000000 : ℚ)
  supportValue := (25388170857273 / 80000000000000 : ℚ)
  supportSlope := (-5747162649333817 / 5000000000000000 : ℚ)
  oldCenter := (25388170857273 / 80000000000000 : ℚ)
  newCoefficients := coefficients_1503
  oldLo := (317 / 1000 : ℚ)
  oldHi := (127 / 400 : ℚ)
  oldPieces := [piece_790]
}

noncomputable def cell_11773 : Cell := { cellDefaults with
  domain := ⟨(64450000000000007 / 100000000000000000 : ℚ), (257850000000000023 / 400000000000000000 : ℚ)⟩
  r := (13336005468277 / 25000000000000 : ℚ)
  w := (686243564569 / 500000000000 : ℚ)
  center := (515650000000000051 / 800000000000000000 : ℚ)
  supportValue := (127000522970561 / 400000000000000 : ℚ)
  supportSlope := (-2298712469960281 / 2000000000000000 : ℚ)
  oldCenter := (127000522970561 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1504
  oldLo := (317 / 1000 : ℚ)
  oldHi := (159 / 500 : ℚ)
  oldPieces := [piece_790, piece_791]
}

noncomputable def cell_11774 : Cell := { cellDefaults with
  domain := ⟨(257850000000000023 / 400000000000000000 : ℚ), (128950000000000009 / 200000000000000000 : ℚ)⟩
  r := (13336005468277 / 25000000000000 : ℚ)
  w := (686243564569 / 500000000000 : ℚ)
  center := (515750000000000041 / 800000000000000000 : ℚ)
  supportValue := (31735738532395197 / 100000000000000000 : ℚ)
  supportSlope := (-71809416594189 / 62500000000000 : ℚ)
  oldCenter := (31735738532395197 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1504
  oldLo := (317 / 1000 : ℚ)
  oldHi := (127 / 400 : ℚ)
  oldPieces := [piece_790]
}

noncomputable def cell_11775 : Cell := { cellDefaults with
  domain := ⟨(128950000000000009 / 200000000000000000 : ℚ), (257950000000000013 / 400000000000000000 : ℚ)⟩
  r := (13336005468277 / 25000000000000 : ℚ)
  w := (686243564569 / 500000000000 : ℚ)
  center := (515850000000000031 / 800000000000000000 : ℚ)
  supportValue := (7930346220082339 / 25000000000000000 : ℚ)
  supportSlope := (-5738171825489543 / 5000000000000000 : ℚ)
  oldCenter := (7930346220082339 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1504
  oldLo := (317 / 1000 : ℚ)
  oldHi := (127 / 400 : ℚ)
  oldPieces := [piece_790]
}

noncomputable def cell_11776 : Cell := { cellDefaults with
  domain := ⟨(257950000000000013 / 400000000000000000 : ℚ), (32250000000000001 / 50000000000000000 : ℚ)⟩
  r := (13336005468277 / 25000000000000 : ℚ)
  w := (686243564569 / 500000000000 : ℚ)
  center := (515950000000000021 / 800000000000000000 : ℚ)
  supportValue := (3170706984228239 / 10000000000000000 : ℚ)
  supportSlope := (-573169645036899 / 500000000000000 : ℚ)
  oldCenter := (3170706984228239 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1504
  oldLo := (633 / 2000 : ℚ)
  oldHi := (127 / 400 : ℚ)
  oldPieces := [piece_789, piece_790]
}

noncomputable def cell_11777 : Cell := { cellDefaults with
  domain := ⟨(32250000000000001 / 50000000000000000 : ℚ), (258050000000000013 / 400000000000000000 : ℚ)⟩
  r := (6664902278227 / 12500000000000 : ℚ)
  w := (1715333214731 / 1250000000000 : ℚ)
  center := (516050000000000021 / 800000000000000000 : ℚ)
  supportValue := (63443753759779 / 200000000000000 : ℚ)
  supportSlope := (-11471508248960223 / 10000000000000000 : ℚ)
  oldCenter := (63443753759779 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1505
  oldLo := (317 / 1000 : ℚ)
  oldHi := (127 / 400 : ℚ)
  oldPieces := [piece_790]
}

noncomputable def cell_11778 : Cell := { cellDefaults with
  domain := ⟨(258050000000000013 / 400000000000000000 : ℚ), (129050000000000009 / 200000000000000000 : ℚ)⟩
  r := (6664902278227 / 12500000000000 : ℚ)
  w := (1715333214731 / 1250000000000 : ℚ)
  center := (516150000000000031 / 800000000000000000 : ℚ)
  supportValue := (3170754568469451 / 10000000000000000 : ℚ)
  supportSlope := (-5729205482811177 / 5000000000000000 : ℚ)
  oldCenter := (3170754568469451 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1505
  oldLo := (317 / 1000 : ℚ)
  oldHi := (127 / 400 : ℚ)
  oldPieces := [piece_790]
}

noncomputable def cell_11779 : Cell := { cellDefaults with
  domain := ⟨(129050000000000009 / 200000000000000000 : ℚ), (258150000000000023 / 400000000000000000 : ℚ)⟩
  r := (6664902278227 / 12500000000000 : ℚ)
  w := (1715333214731 / 1250000000000 : ℚ)
  center := (516250000000000041 / 800000000000000000 : ℚ)
  supportValue := (1584662117139227 / 5000000000000000 : ℚ)
  supportSlope := (-2292574205243751 / 2000000000000000 : ℚ)
  oldCenter := (1584662117139227 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1505
  oldLo := (633 / 2000 : ℚ)
  oldHi := (127 / 400 : ℚ)
  oldPieces := [piece_789, piece_790]
}

noncomputable def cell_11780 : Cell := { cellDefaults with
  domain := ⟨(258150000000000023 / 400000000000000000 : ℚ), (64550000000000007 / 100000000000000000 : ℚ)⟩
  r := (6664902278227 / 12500000000000 : ℚ)
  w := (1715333214731 / 1250000000000 : ℚ)
  center := (516350000000000051 / 800000000000000000 : ℚ)
  supportValue := (31678899204969013 / 100000000000000000 : ℚ)
  supportSlope := (-2290036958225043 / 2000000000000000 : ℚ)
  oldCenter := (31678899204969013 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1505
  oldLo := (633 / 2000 : ℚ)
  oldHi := (317 / 1000 : ℚ)
  oldPieces := [piece_789]
}

noncomputable def cell_11781 : Cell := { cellDefaults with
  domain := ⟨(64550000000000007 / 100000000000000000 : ℚ), (258250000000000023 / 400000000000000000 : ℚ)⟩
  r := (53294436913897 / 100000000000000 : ℚ)
  w := (13720458383663 / 10000000000000 : ℚ)
  center := (516450000000000051 / 800000000000000000 : ℚ)
  supportValue := (24760742037861 / 78125000000000 : ℚ)
  supportSlope := (-11457424082080871 / 10000000000000000 : ℚ)
  oldCenter := (24760742037861 / 78125000000000 : ℚ)
  newCoefficients := coefficients_1506
  oldLo := (633 / 2000 : ℚ)
  oldHi := (127 / 400 : ℚ)
  oldPieces := [piece_789, piece_790]
}

noncomputable def cell_11782 : Cell := { cellDefaults with
  domain := ⟨(258250000000000023 / 400000000000000000 : ℚ), (129150000000000009 / 200000000000000000 : ℚ)⟩
  r := (53294436913897 / 100000000000000 : ℚ)
  w := (13720458383663 / 10000000000000 : ℚ)
  center := (516550000000000041 / 800000000000000000 : ℚ)
  supportValue := (6335882535576729 / 20000000000000000 : ℚ)
  supportSlope := (-5722691933072749 / 5000000000000000 : ℚ)
  oldCenter := (6335882535576729 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1506
  oldLo := (633 / 2000 : ℚ)
  oldHi := (317 / 1000 : ℚ)
  oldPieces := [piece_789]
}

noncomputable def cell_11783 : Cell := { cellDefaults with
  domain := ⟨(129150000000000009 / 200000000000000000 : ℚ), (258350000000000013 / 400000000000000000 : ℚ)⟩
  r := (53294436913897 / 100000000000000 : ℚ)
  w := (13720458383663 / 10000000000000 : ℚ)
  center := (516650000000000031 / 800000000000000000 : ℚ)
  supportValue := (3166511413727881 / 10000000000000000 : ℚ)
  supportSlope := (-11432288056730833 / 10000000000000000 : ℚ)
  oldCenter := (3166511413727881 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1506
  oldLo := (633 / 2000 : ℚ)
  oldHi := (317 / 1000 : ℚ)
  oldPieces := [piece_789]
}

noncomputable def cell_11784 : Cell := { cellDefaults with
  domain := ⟨(258350000000000013 / 400000000000000000 : ℚ), (32300000000000001 / 50000000000000000 : ℚ)⟩
  r := (53294436913897 / 100000000000000 : ℚ)
  w := (13720458383663 / 10000000000000 : ℚ)
  center := (516750000000000021 / 800000000000000000 : ℚ)
  supportValue := (989089190235253 / 3125000000000000 : ℚ)
  supportSlope := (-1142723069748833 / 1000000000000000 : ℚ)
  oldCenter := (989089190235253 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1506
  oldLo := (79 / 250 : ℚ)
  oldHi := (317 / 1000 : ℚ)
  oldPieces := [piece_788, piece_789]
}

noncomputable def cell_11785 : Cell := { cellDefaults with
  domain := ⟨(32300000000000001 / 50000000000000000 : ℚ), (3230167597765363 / 5000000000000000 : ℚ)⟩
  center := (64601675977653631 / 100000000000000000 : ℚ)
  supportValue := (395885116912683 / 1250000000000000 : ℚ)
  supportSlope := (-1143224446048201 / 1000000000000000 : ℚ)
  oldCenter := (395885116912683 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1507
  oldLo := (633 / 2000 : ℚ)
  oldHi := (317 / 1000 : ℚ)
  oldPieces := [piece_789]
}

noncomputable def cell_11786 : Cell := { cellDefaults with
  domain := ⟨(3230167597765363 / 5000000000000000 : ℚ), (258460055865921787 / 400000000000000000 : ℚ)⟩
  center := (516873463687150827 / 800000000000000000 : ℚ)
  supportValue := (791555911607117 / 2500000000000000 : ℚ)
  supportSlope := (-11424400802080157 / 10000000000000000 : ℚ)
  oldCenter := (791555911607117 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1508
  oldLo := (633 / 2000 : ℚ)
  oldHi := (317 / 1000 : ℚ)
  oldPieces := [piece_789]
}

noncomputable def cell_11787 : Cell := { cellDefaults with
  domain := ⟨(258460055865921787 / 400000000000000000 : ℚ), (129253351955307267 / 200000000000000000 : ℚ)⟩
  center := (516966759776536321 / 800000000000000000 : ℚ)
  supportValue := (1582447041539919 / 5000000000000000 : ℚ)
  supportSlope := (-5711372136663233 / 5000000000000000 : ℚ)
  oldCenter := (1582447041539919 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1508
  oldLo := (79 / 250 : ℚ)
  oldHi := (317 / 1000 : ℚ)
  oldPieces := [piece_788, piece_789]
}

noncomputable def cell_11788 : Cell := { cellDefaults with
  domain := ⟨(129253351955307267 / 200000000000000000 : ℚ), (258553351955307281 / 400000000000000000 : ℚ)⟩
  center := (103412011173184363 / 160000000000000000 : ℚ)
  supportValue := (632711915588179 / 2000000000000000 : ℚ)
  supportSlope := (-2854514395011561 / 2500000000000000 : ℚ)
  oldCenter := (632711915588179 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1508
  oldLo := (79 / 250 : ℚ)
  oldHi := (633 / 2000 : ℚ)
  oldPieces := [piece_788]
}

noncomputable def cell_11789 : Cell := { cellDefaults with
  domain := ⟨(258553351955307281 / 400000000000000000 : ℚ), (64650000000000007 / 100000000000000000 : ℚ)⟩
  center := (517153351955307309 / 800000000000000000 : ℚ)
  supportValue := (31622287151459133 / 100000000000000000 : ℚ)
  supportSlope := (-1425730762006783 / 1250000000000000 : ℚ)
  oldCenter := (31622287151459133 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1508
  oldLo := (79 / 250 : ℚ)
  oldHi := (633 / 2000 : ℚ)
  oldPieces := [piece_788]
}

noncomputable def cell_11790 : Cell := { cellDefaults with
  domain := ⟨(64650000000000007 / 100000000000000000 : ℚ), (258650000000000023 / 400000000000000000 : ℚ)⟩
  r := (53244962592883 / 100000000000000 : ℚ)
  w := (1371607560977 / 1000000000000 : ℚ)
  center := (517250000000000051 / 800000000000000000 : ℚ)
  supportValue := (1265500842293807 / 4000000000000000 : ℚ)
  supportSlope := (-5707289217911653 / 5000000000000000 : ℚ)
  oldCenter := (1265500842293807 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1509
  oldLo := (79 / 250 : ℚ)
  oldHi := (633 / 2000 : ℚ)
  oldPieces := [piece_788]
}

noncomputable def cell_11791 : Cell := { cellDefaults with
  domain := ⟨(258650000000000023 / 400000000000000000 : ℚ), (129350000000000009 / 200000000000000000 : ℚ)⟩
  r := (53244962592883 / 100000000000000 : ℚ)
  w := (1371607560977 / 1000000000000 : ℚ)
  center := (517350000000000041 / 800000000000000000 : ℚ)
  supportValue := (31623261015154447 / 100000000000000000 : ℚ)
  supportSlope := (-2280299212039211 / 2000000000000000 : ℚ)
  oldCenter := (31623261015154447 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1509
  oldLo := (79 / 250 : ℚ)
  oldHi := (633 / 2000 : ℚ)
  oldPieces := [piece_788]
}

noncomputable def cell_11792 : Cell := { cellDefaults with
  domain := ⟨(129350000000000009 / 200000000000000000 : ℚ), (258750000000000013 / 400000000000000000 : ℚ)⟩
  r := (53244962592883 / 100000000000000 : ℚ)
  w := (1371607560977 / 1000000000000 : ℚ)
  center := (517450000000000031 / 800000000000000000 : ℚ)
  supportValue := (1580450864570351 / 5000000000000000 : ℚ)
  supportSlope := (-11388468841763173 / 10000000000000000 : ℚ)
  oldCenter := (1580450864570351 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1509
  oldLo := (79 / 250 : ℚ)
  oldHi := (633 / 2000 : ℚ)
  oldPieces := [piece_788]
}

noncomputable def cell_11793 : Cell := { cellDefaults with
  domain := ⟨(258750000000000013 / 400000000000000000 : ℚ), (32350000000000001 / 50000000000000000 : ℚ)⟩
  r := (53244962592883 / 100000000000000 : ℚ)
  w := (1371607560977 / 1000000000000 : ℚ)
  center := (517550000000000021 / 800000000000000000 : ℚ)
  supportValue := (1579740182343331 / 5000000000000000 : ℚ)
  supportSlope := (-1139112079523777 / 1000000000000000 : ℚ)
  oldCenter := (1579740182343331 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1509
  oldLo := (631 / 2000 : ℚ)
  oldHi := (633 / 2000 : ℚ)
  oldPieces := [piece_787, piece_788]
}

noncomputable def cell_11794 : Cell := { cellDefaults with
  domain := ⟨(32350000000000001 / 50000000000000000 : ℚ), (129425000000000007 / 200000000000000000 : ℚ)⟩
  r := (26610134100797 / 50000000000000 : ℚ)
  w := (1371389680583 / 1000000000000 : ℚ)
  center := (258825000000000011 / 400000000000000000 : ℚ)
  supportValue := (3160948140788711 / 10000000000000000 : ℚ)
  supportSlope := (-1138366470111093 / 1000000000000000 : ℚ)
  oldCenter := (3160948140788711 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1510
  oldLo := (79 / 250 : ℚ)
  oldHi := (633 / 2000 : ℚ)
  oldPieces := [piece_788]
}

noncomputable def cell_11795 : Cell := { cellDefaults with
  domain := ⟨(129425000000000007 / 200000000000000000 : ℚ), (12945000000000001 / 20000000000000000 : ℚ)⟩
  r := (26610134100797 / 50000000000000 : ℚ)
  w := (1371389680583 / 1000000000000 : ℚ)
  center := (258875000000000017 / 400000000000000000 : ℚ)
  supportValue := (3159527450773947 / 10000000000000000 : ℚ)
  supportSlope := (-2846432345482089 / 2500000000000000 : ℚ)
  oldCenter := (3159527450773947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1510
  oldLo := (631 / 2000 : ℚ)
  oldHi := (633 / 2000 : ℚ)
  oldPieces := [piece_787, piece_788]
}

noncomputable def cell_11796 : Cell := { cellDefaults with
  domain := ⟨(12945000000000001 / 20000000000000000 : ℚ), (129475000000000013 / 200000000000000000 : ℚ)⟩
  r := (26610134100797 / 50000000000000 : ℚ)
  w := (1371389680583 / 1000000000000 : ℚ)
  center := (258925000000000023 / 400000000000000000 : ℚ)
  supportValue := (31581024653554157 / 100000000000000000 : ℚ)
  supportSlope := (-5687827327815349 / 5000000000000000 : ℚ)
  oldCenter := (31581024653554157 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1510
  oldLo := (631 / 2000 : ℚ)
  oldHi := (79 / 250 : ℚ)
  oldPieces := [piece_787]
}

noncomputable def cell_11797 : Cell := { cellDefaults with
  domain := ⟨(129475000000000013 / 200000000000000000 : ℚ), (8093750000000001 / 12500000000000000 : ℚ)⟩
  r := (26610134100797 / 50000000000000 : ℚ)
  w := (1371389680583 / 1000000000000 : ℚ)
  center := (258975000000000029 / 400000000000000000 : ℚ)
  supportValue := (15783406614312473 / 50000000000000000 : ℚ)
  supportSlope := (-5681316091052253 / 5000000000000000 : ℚ)
  oldCenter := (15783406614312473 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1510
  oldLo := (631 / 2000 : ℚ)
  oldHi := (79 / 250 : ℚ)
  oldPieces := [piece_787]
}

noncomputable def cell_11798 : Cell := { cellDefaults with
  domain := ⟨(8093750000000001 / 12500000000000000 : ℚ), (129525000000000013 / 200000000000000000 : ℚ)⟩
  r := (53195600286199 / 100000000000000 : ℚ)
  w := (1371172319427 / 1000000000000 : ℚ)
  center := (259025000000000029 / 400000000000000000 : ℚ)
  supportValue := (394768573628951 / 1250000000000000 : ℚ)
  supportSlope := (-5685429877343011 / 5000000000000000 : ℚ)
  oldCenter := (394768573628951 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1511
  oldLo := (631 / 2000 : ℚ)
  oldHi := (79 / 250 : ℚ)
  oldPieces := [piece_787]
}

noncomputable def cell_11799 : Cell := { cellDefaults with
  domain := ⟨(129525000000000013 / 200000000000000000 : ℚ), (12955000000000001 / 20000000000000000 : ℚ)⟩
  r := (53195600286199 / 100000000000000 : ℚ)
  w := (1371172319427 / 1000000000000 : ℚ)
  center := (259075000000000023 / 400000000000000000 : ℚ)
  supportValue := (31567280452550983 / 100000000000000000 : ℚ)
  supportSlope := (-141973095090581 / 125000000000000 : ℚ)
  oldCenter := (31567280452550983 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1511
  oldLo := (631 / 2000 : ℚ)
  oldHi := (79 / 250 : ℚ)
  oldPieces := [piece_787]
}

theorem check_11750 : cell_11750.check = true := by
  decide +kernel

theorem check_11751 : cell_11751.check = true := by
  decide +kernel

theorem check_11752 : cell_11752.check = true := by
  decide +kernel

theorem check_11753 : cell_11753.check = true := by
  decide +kernel

theorem check_11754 : cell_11754.check = true := by
  decide +kernel

theorem check_11755 : cell_11755.check = true := by
  decide +kernel

theorem check_11756 : cell_11756.check = true := by
  decide +kernel

theorem check_11757 : cell_11757.check = true := by
  decide +kernel

theorem check_11758 : cell_11758.check = true := by
  decide +kernel

theorem check_11759 : cell_11759.check = true := by
  decide +kernel

theorem check_11760 : cell_11760.check = true := by
  decide +kernel

theorem check_11761 : cell_11761.check = true := by
  decide +kernel

theorem check_11762 : cell_11762.check = true := by
  decide +kernel

theorem check_11763 : cell_11763.check = true := by
  decide +kernel

theorem check_11764 : cell_11764.check = true := by
  decide +kernel

theorem check_11765 : cell_11765.check = true := by
  decide +kernel

theorem check_11766 : cell_11766.check = true := by
  decide +kernel

theorem check_11767 : cell_11767.check = true := by
  decide +kernel

theorem check_11768 : cell_11768.check = true := by
  decide +kernel

theorem check_11769 : cell_11769.check = true := by
  decide +kernel

theorem check_11770 : cell_11770.check = true := by
  decide +kernel

theorem check_11771 : cell_11771.check = true := by
  decide +kernel

theorem check_11772 : cell_11772.check = true := by
  decide +kernel

theorem check_11773 : cell_11773.check = true := by
  decide +kernel

theorem check_11774 : cell_11774.check = true := by
  decide +kernel

theorem check_11775 : cell_11775.check = true := by
  decide +kernel

theorem check_11776 : cell_11776.check = true := by
  decide +kernel

theorem check_11777 : cell_11777.check = true := by
  decide +kernel

theorem check_11778 : cell_11778.check = true := by
  decide +kernel

theorem check_11779 : cell_11779.check = true := by
  decide +kernel

theorem check_11780 : cell_11780.check = true := by
  decide +kernel

theorem check_11781 : cell_11781.check = true := by
  decide +kernel

theorem check_11782 : cell_11782.check = true := by
  decide +kernel

theorem check_11783 : cell_11783.check = true := by
  decide +kernel

theorem check_11784 : cell_11784.check = true := by
  decide +kernel

theorem check_11785 : cell_11785.check = true := by
  decide +kernel

theorem check_11786 : cell_11786.check = true := by
  decide +kernel

theorem check_11787 : cell_11787.check = true := by
  decide +kernel

theorem check_11788 : cell_11788.check = true := by
  decide +kernel

theorem check_11789 : cell_11789.check = true := by
  decide +kernel

theorem check_11790 : cell_11790.check = true := by
  decide +kernel

theorem check_11791 : cell_11791.check = true := by
  decide +kernel

theorem check_11792 : cell_11792.check = true := by
  decide +kernel

theorem check_11793 : cell_11793.check = true := by
  decide +kernel

theorem check_11794 : cell_11794.check = true := by
  decide +kernel

theorem check_11795 : cell_11795.check = true := by
  decide +kernel

theorem check_11796 : cell_11796.check = true := by
  decide +kernel

theorem check_11797 : cell_11797.check = true := by
  decide +kernel

theorem check_11798 : cell_11798.check = true := by
  decide +kernel

theorem check_11799 : cell_11799.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11750, cell_11751, cell_11752, cell_11753, cell_11754, cell_11755, cell_11756, cell_11757, cell_11758, cell_11759, cell_11760, cell_11761, cell_11762, cell_11763, cell_11764, cell_11765, cell_11766, cell_11767, cell_11768, cell_11769, cell_11770, cell_11771, cell_11772, cell_11773, cell_11774, cell_11775, cell_11776, cell_11777, cell_11778, cell_11779, cell_11780, cell_11781, cell_11782, cell_11783, cell_11784, cell_11785, cell_11786, cell_11787, cell_11788, cell_11789, cell_11790, cell_11791, cell_11792, cell_11793, cell_11794, cell_11795, cell_11796, cell_11797, cell_11798, cell_11799]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11750, check_11751, check_11752, check_11753, check_11754, check_11755, check_11756, check_11757, check_11758, check_11759, check_11760, check_11761, check_11762, check_11763, check_11764, check_11765, check_11766, check_11767, check_11768, check_11769, check_11770, check_11771, check_11772, check_11773, check_11774, check_11775, check_11776, check_11777, check_11778, check_11779, check_11780, check_11781, check_11782, check_11783, check_11784, check_11785, check_11786, check_11787, check_11788, check_11789, check_11790, check_11791, check_11792, check_11793, check_11794, check_11795, check_11796, check_11797, check_11798, check_11799, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0235

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0235
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0235
open AnalyticBounds.ExpressionCertificate

theorem linked_11750 : Linked cell_11750 pieces := by
  link_source cell_11750 with piece_1498 using piece_1498_mem, ⟨piece_793_mem, piece_794_mem⟩

theorem linked_11751 : Linked cell_11751 pieces := by
  link_source cell_11751 with piece_1498 using piece_1498_mem, piece_793_mem

theorem linked_11752 : Linked cell_11752 pieces := by
  link_source cell_11752 with piece_1498 using piece_1498_mem, piece_793_mem

theorem linked_11753 : Linked cell_11753 pieces := by
  link_source cell_11753 with piece_1499 using piece_1499_mem, piece_793_mem

theorem linked_11754 : Linked cell_11754 pieces := by
  link_source cell_11754 with piece_1499 using piece_1499_mem, piece_793_mem

theorem linked_11755 : Linked cell_11755 pieces := by
  link_source cell_11755 with piece_1499 using piece_1499_mem, piece_793_mem

theorem linked_11756 : Linked cell_11756 pieces := by
  link_source cell_11756 with piece_1499 using piece_1499_mem, ⟨piece_792_mem, piece_793_mem⟩

theorem linked_11757 : Linked cell_11757 pieces := by
  link_source cell_11757 with piece_1500 using piece_1500_mem, piece_793_mem

theorem linked_11758 : Linked cell_11758 pieces := by
  link_source cell_11758 with piece_1500 using piece_1500_mem, ⟨piece_792_mem, piece_793_mem⟩

theorem linked_11759 : Linked cell_11759 pieces := by
  link_source cell_11759 with piece_1500 using piece_1500_mem, piece_792_mem

theorem linked_11760 : Linked cell_11760 pieces := by
  link_source cell_11760 with piece_1500 using piece_1500_mem, piece_792_mem

theorem linked_11761 : Linked cell_11761 pieces := by
  link_source cell_11761 with piece_1501 using piece_1501_mem, piece_792_mem

theorem linked_11762 : Linked cell_11762 pieces := by
  link_source cell_11762 with piece_1501 using piece_1501_mem, piece_792_mem

theorem linked_11763 : Linked cell_11763 pieces := by
  link_source cell_11763 with piece_1501 using piece_1501_mem, ⟨piece_791_mem, piece_792_mem⟩

theorem linked_11764 : Linked cell_11764 pieces := by
  link_source cell_11764 with piece_1501 using piece_1501_mem, piece_791_mem

theorem linked_11765 : Linked cell_11765 pieces := by
  link_source cell_11765 with piece_1502 using piece_1502_mem, ⟨piece_791_mem, piece_792_mem⟩

theorem linked_11766 : Linked cell_11766 pieces := by
  link_source cell_11766 with piece_1502 using piece_1502_mem, piece_791_mem

theorem linked_11767 : Linked cell_11767 pieces := by
  link_source cell_11767 with piece_1502 using piece_1502_mem, piece_791_mem

theorem linked_11768 : Linked cell_11768 pieces := by
  link_source cell_11768 with piece_1502 using piece_1502_mem, piece_791_mem

theorem linked_11769 : Linked cell_11769 pieces := by
  link_source cell_11769 with piece_1503 using piece_1503_mem, piece_791_mem

theorem linked_11770 : Linked cell_11770 pieces := by
  link_source cell_11770 with piece_1503 using piece_1503_mem, piece_791_mem

theorem linked_11771 : Linked cell_11771 pieces := by
  link_source cell_11771 with piece_1503 using piece_1503_mem, ⟨piece_790_mem, piece_791_mem⟩

theorem linked_11772 : Linked cell_11772 pieces := by
  link_source cell_11772 with piece_1503 using piece_1503_mem, piece_790_mem

theorem linked_11773 : Linked cell_11773 pieces := by
  link_source cell_11773 with piece_1504 using piece_1504_mem, ⟨piece_790_mem, piece_791_mem⟩

theorem linked_11774 : Linked cell_11774 pieces := by
  link_source cell_11774 with piece_1504 using piece_1504_mem, piece_790_mem

theorem linked_11775 : Linked cell_11775 pieces := by
  link_source cell_11775 with piece_1504 using piece_1504_mem, piece_790_mem

theorem linked_11776 : Linked cell_11776 pieces := by
  link_source cell_11776 with piece_1504 using piece_1504_mem, ⟨piece_789_mem, piece_790_mem⟩

theorem linked_11777 : Linked cell_11777 pieces := by
  link_source cell_11777 with piece_1505 using piece_1505_mem, piece_790_mem

theorem linked_11778 : Linked cell_11778 pieces := by
  link_source cell_11778 with piece_1505 using piece_1505_mem, piece_790_mem

theorem linked_11779 : Linked cell_11779 pieces := by
  link_source cell_11779 with piece_1505 using piece_1505_mem, ⟨piece_789_mem, piece_790_mem⟩

theorem linked_11780 : Linked cell_11780 pieces := by
  link_source cell_11780 with piece_1505 using piece_1505_mem, piece_789_mem

theorem linked_11781 : Linked cell_11781 pieces := by
  link_source cell_11781 with piece_1506 using piece_1506_mem, ⟨piece_789_mem, piece_790_mem⟩

theorem linked_11782 : Linked cell_11782 pieces := by
  link_source cell_11782 with piece_1506 using piece_1506_mem, piece_789_mem

theorem linked_11783 : Linked cell_11783 pieces := by
  link_source cell_11783 with piece_1506 using piece_1506_mem, piece_789_mem

theorem linked_11784 : Linked cell_11784 pieces := by
  link_source cell_11784 with piece_1506 using piece_1506_mem, ⟨piece_788_mem, piece_789_mem⟩

theorem linked_11785 : Linked cell_11785 pieces := by
  link_source cell_11785 with piece_1507 using piece_1507_mem, piece_789_mem

theorem linked_11786 : Linked cell_11786 pieces := by
  link_source cell_11786 with piece_1508 using piece_1508_mem, piece_789_mem

theorem linked_11787 : Linked cell_11787 pieces := by
  link_source cell_11787 with piece_1508 using piece_1508_mem, ⟨piece_788_mem, piece_789_mem⟩

theorem linked_11788 : Linked cell_11788 pieces := by
  link_source cell_11788 with piece_1508 using piece_1508_mem, piece_788_mem

theorem linked_11789 : Linked cell_11789 pieces := by
  link_source cell_11789 with piece_1508 using piece_1508_mem, piece_788_mem

theorem linked_11790 : Linked cell_11790 pieces := by
  link_source cell_11790 with piece_1509 using piece_1509_mem, piece_788_mem

theorem linked_11791 : Linked cell_11791 pieces := by
  link_source cell_11791 with piece_1509 using piece_1509_mem, piece_788_mem

theorem linked_11792 : Linked cell_11792 pieces := by
  link_source cell_11792 with piece_1509 using piece_1509_mem, piece_788_mem

theorem linked_11793 : Linked cell_11793 pieces := by
  link_source cell_11793 with piece_1509 using piece_1509_mem, ⟨piece_787_mem, piece_788_mem⟩

theorem linked_11794 : Linked cell_11794 pieces := by
  link_source cell_11794 with piece_1510 using piece_1510_mem, piece_788_mem

theorem linked_11795 : Linked cell_11795 pieces := by
  link_source cell_11795 with piece_1510 using piece_1510_mem, ⟨piece_787_mem, piece_788_mem⟩

theorem linked_11796 : Linked cell_11796 pieces := by
  link_source cell_11796 with piece_1510 using piece_1510_mem, piece_787_mem

theorem linked_11797 : Linked cell_11797 pieces := by
  link_source cell_11797 with piece_1510 using piece_1510_mem, piece_787_mem

theorem linked_11798 : Linked cell_11798 pieces := by
  link_source cell_11798 with piece_1511 using piece_1511_mem, piece_787_mem

theorem linked_11799 : Linked cell_11799 pieces := by
  link_source cell_11799 with piece_1511 using piece_1511_mem, piece_787_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0235.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0235.cells,List.forall_mem_cons]
  exact ⟨linked_11750, linked_11751, linked_11752, linked_11753, linked_11754, linked_11755, linked_11756, linked_11757, linked_11758, linked_11759, linked_11760, linked_11761, linked_11762, linked_11763, linked_11764, linked_11765, linked_11766, linked_11767, linked_11768, linked_11769, linked_11770, linked_11771, linked_11772, linked_11773, linked_11774, linked_11775, linked_11776, linked_11777, linked_11778, linked_11779, linked_11780, linked_11781, linked_11782, linked_11783, linked_11784, linked_11785, linked_11786, linked_11787, linked_11788, linked_11789, linked_11790, linked_11791, linked_11792, linked_11793, linked_11794, linked_11795, linked_11796, linked_11797, linked_11798, linked_11799, by simp⟩

theorem covered : covers (256650000000000023 / 400000000000000000 : ℚ) (12955000000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0235.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0235
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0236
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(12955000000000001 / 20000000000000000 : ℚ), (129575000000000007 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (52999252103813 / 100000000000000 : ℚ)
  w := (13694602084817 / 10000000000000 : ℚ)
  center := (259125000000000017 / 400000000000000000 : ℚ)
  supportValue := (31553113332798877 / 100000000000000000 : ℚ)
  supportSlope := (-5674999886161173 / 5000000000000000 : ℚ)
  oldCenter := (31553113332798877 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1512
  oldLo := (63 / 200 : ℚ)
  oldHi := (631 / 2000 : ℚ)
  oldPieces := [piece_786]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11800 : Cell := { cellDefaults with
  r := (53195600286199 / 100000000000000 : ℚ)
  w := (1371172319427 / 1000000000000 : ℚ)
  newCoefficients := coefficients_1511
  oldHi := (79 / 250 : ℚ)
  oldPieces := [piece_786, piece_787]
}

noncomputable def cell_11801 : Cell := { cellDefaults with
  domain := ⟨(129575000000000007 / 200000000000000000 : ℚ), (32400000000000001 / 50000000000000000 : ℚ)⟩
  r := (53195600286199 / 100000000000000 : ℚ)
  w := (1371172319427 / 1000000000000 : ℚ)
  center := (259175000000000011 / 400000000000000000 : ℚ)
  supportValue := (630778011156647 / 2000000000000000 : ℚ)
  supportSlope := (-90799647790629 / 80000000000000 : ℚ)
  oldCenter := (630778011156647 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1511
  oldPieces := [piece_786]
}

noncomputable def cell_11802 : Cell := { cellDefaults with
  domain := ⟨(32400000000000001 / 50000000000000000 : ℚ), (129625000000000007 / 200000000000000000 : ℚ)⟩
  r := (10634191860283 / 20000000000000 : ℚ)
  w := (2741911280657 / 2000000000000 : ℚ)
  center := (259225000000000011 / 400000000000000000 : ℚ)
  supportValue := (1972097950075009 / 6250000000000000 : ℚ)
  supportSlope := (-2268926359624229 / 2000000000000000 : ℚ)
  oldCenter := (1972097950075009 / 6250000000000000 : ℚ)
  oldHi := (79 / 250 : ℚ)
  oldPieces := [piece_786, piece_787]
}

noncomputable def cell_11803 : Cell := { cellDefaults with
  domain := ⟨(129625000000000007 / 200000000000000000 : ℚ), (12965000000000001 / 20000000000000000 : ℚ)⟩
  r := (10634191860283 / 20000000000000 : ℚ)
  w := (2741911280657 / 2000000000000 : ℚ)
  center := (259275000000000017 / 400000000000000000 : ℚ)
  supportValue := (31539361131199223 / 100000000000000000 : ℚ)
  supportSlope := (-5539637452549 / 4882812500000 : ℚ)
  oldCenter := (31539361131199223 / 100000000000000000 : ℚ)
  oldPieces := [piece_786]
}

noncomputable def cell_11804 : Cell := { cellDefaults with
  domain := ⟨(12965000000000001 / 20000000000000000 : ℚ), (129675000000000013 / 200000000000000000 : ℚ)⟩
  r := (10634191860283 / 20000000000000 : ℚ)
  w := (2741911280657 / 2000000000000 : ℚ)
  center := (259325000000000023 / 400000000000000000 : ℚ)
  supportValue := (1970324237023369 / 6250000000000000 : ℚ)
  supportSlope := (-2833042899234799 / 2500000000000000 : ℚ)
  oldCenter := (1970324237023369 / 6250000000000000 : ℚ)
  oldPieces := [piece_786]
}

noncomputable def cell_11805 : Cell := { cellDefaults with
  domain := ⟨(129675000000000013 / 200000000000000000 : ℚ), (8106250000000001 / 12500000000000000 : ℚ)⟩
  r := (10634191860283 / 20000000000000 : ℚ)
  w := (2741911280657 / 2000000000000 : ℚ)
  center := (259375000000000029 / 400000000000000000 : ℚ)
  supportValue := (3938878834567177 / 12500000000000000 : ℚ)
  supportSlope := (-2829805159023307 / 2500000000000000 : ℚ)
  oldCenter := (3938878834567177 / 12500000000000000 : ℚ)
  oldPieces := [piece_786]
}

noncomputable def cell_11806 : Cell := { cellDefaults with
  domain := ⟨(8106250000000001 / 12500000000000000 : ℚ), (129725000000000013 / 200000000000000000 : ℚ)⟩
  r := (26573174497249 / 50000000000000 : ℚ)
  w := (13707400232639 / 10000000000000 : ℚ)
  center := (259425000000000029 / 400000000000000000 : ℚ)
  supportValue := (788140591313089 / 2500000000000000 : ℚ)
  supportSlope := (-5663691431992537 / 5000000000000000 : ℚ)
  oldCenter := (788140591313089 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1513
  oldPieces := [piece_786]
}

noncomputable def cell_11807 : Cell := { cellDefaults with
  domain := ⟨(129725000000000013 / 200000000000000000 : ℚ), (12975000000000001 / 20000000000000000 : ℚ)⟩
  r := (26573174497249 / 50000000000000 : ℚ)
  w := (13707400232639 / 10000000000000 : ℚ)
  center := (259475000000000023 / 400000000000000000 : ℚ)
  supportValue := (315114725161571 / 1000000000000000 : ℚ)
  supportSlope := (-5657221101929689 / 5000000000000000 : ℚ)
  oldCenter := (315114725161571 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1513
  oldPieces := [piece_786]
}

noncomputable def cell_11808 : Cell := { cellDefaults with
  domain := ⟨(12975000000000001 / 20000000000000000 : ℚ), (129775000000000007 / 200000000000000000 : ℚ)⟩
  r := (26573174497249 / 50000000000000 : ℚ)
  w := (13707400232639 / 10000000000000 : ℚ)
  center := (259525000000000017 / 400000000000000000 : ℚ)
  supportValue := (787433882361397 / 2500000000000000 : ℚ)
  supportSlope := (-1414248730633619 / 1250000000000000 : ℚ)
  oldCenter := (787433882361397 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1513
  oldLo := (629 / 2000 : ℚ)
  oldPieces := [piece_785, piece_786]
}

noncomputable def cell_11809 : Cell := { cellDefaults with
  domain := ⟨(129775000000000007 / 200000000000000000 : ℚ), (32450000000000001 / 50000000000000000 : ℚ)⟩
  r := (26573174497249 / 50000000000000 : ℚ)
  w := (13707400232639 / 10000000000000 : ℚ)
  center := (259575000000000011 / 400000000000000000 : ℚ)
  supportValue := (31483191843245917 / 100000000000000000 : ℚ)
  supportSlope := (-1413328358018831 / 1250000000000000 : ℚ)
  oldCenter := (31483191843245917 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1513
  oldLo := (629 / 2000 : ℚ)
  oldHi := (63 / 200 : ℚ)
  oldPieces := [piece_785]
}

noncomputable def cell_11810 : Cell := { cellDefaults with
  domain := ⟨(32450000000000001 / 50000000000000000 : ℚ), (129825000000000007 / 200000000000000000 : ℚ)⟩
  r := (53121761922561 / 100000000000000 : ℚ)
  w := (2741049301729 / 2000000000000 : ℚ)
  center := (259625000000000011 / 400000000000000000 : ℚ)
  supportValue := (3149779682638727 / 10000000000000000 : ℚ)
  supportSlope := (-2261730855501027 / 2000000000000000 : ℚ)
  oldCenter := (3149779682638727 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1514
  oldLo := (629 / 2000 : ℚ)
  oldPieces := [piece_785, piece_786]
}

noncomputable def cell_11811 : Cell := { cellDefaults with
  domain := ⟨(129825000000000007 / 200000000000000000 : ℚ), (12985000000000001 / 20000000000000000 : ℚ)⟩
  r := (53121761922561 / 100000000000000 : ℚ)
  w := (2741049301729 / 2000000000000 : ℚ)
  center := (259675000000000017 / 400000000000000000 : ℚ)
  supportValue := (314836393349213 / 1000000000000000 : ℚ)
  supportSlope := (-2825465992905779 / 2500000000000000 : ℚ)
  oldCenter := (314836393349213 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1514
  oldLo := (629 / 2000 : ℚ)
  oldHi := (63 / 200 : ℚ)
  oldPieces := [piece_785]
}

noncomputable def cell_11812 : Cell := { cellDefaults with
  domain := ⟨(12985000000000001 / 20000000000000000 : ℚ), (129875000000000013 / 200000000000000000 : ℚ)⟩
  r := (53121761922561 / 100000000000000 : ℚ)
  w := (2741049301729 / 2000000000000 : ℚ)
  center := (259725000000000023 / 400000000000000000 : ℚ)
  supportValue := (31469520092367703 / 100000000000000000 : ℚ)
  supportSlope := (-176389547397161 / 156250000000000 : ℚ)
  oldCenter := (31469520092367703 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1514
  oldLo := (629 / 2000 : ℚ)
  oldHi := (63 / 200 : ℚ)
  oldPieces := [piece_785]
}

noncomputable def cell_11813 : Cell := { cellDefaults with
  domain := ⟨(129875000000000013 / 200000000000000000 : ℚ), (8118750000000001 / 12500000000000000 : ℚ)⟩
  r := (53121761922561 / 100000000000000 : ℚ)
  w := (2741049301729 / 2000000000000 : ℚ)
  center := (259775000000000029 / 400000000000000000 : ℚ)
  supportValue := (31455439000593133 / 100000000000000000 : ℚ)
  supportSlope := (-2255631295220169 / 2000000000000000 : ℚ)
  oldCenter := (31455439000593133 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1514
  oldLo := (1570949720670391 / 5000000000000000 : ℚ)
  oldHi := (63 / 200 : ℚ)
  oldPieces := [piece_784, piece_785]
}

noncomputable def cell_11814 : Cell := { cellDefaults with
  domain := ⟨(8118750000000001 / 12500000000000000 : ℚ), (129925000000000013 / 200000000000000000 : ℚ)⟩
  r := (53097208169137 / 100000000000000 : ℚ)
  w := (6851554038953 / 5000000000000 : ℚ)
  center := (259825000000000029 / 400000000000000000 : ℚ)
  supportValue := (3146993090585443 / 10000000000000000 : ℚ)
  supportSlope := (-22039352500349 / 19531250000000 : ℚ)
  oldCenter := (3146993090585443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1515
  oldLo := (629 / 2000 : ℚ)
  oldHi := (63 / 200 : ℚ)
  oldPieces := [piece_785]
}

noncomputable def cell_11815 : Cell := { cellDefaults with
  domain := ⟨(129925000000000013 / 200000000000000000 : ℚ), (12995000000000001 / 20000000000000000 : ℚ)⟩
  r := (53097208169137 / 100000000000000 : ℚ)
  w := (6851554038953 / 5000000000000 : ℚ)
  center := (259875000000000023 / 400000000000000000 : ℚ)
  supportValue := (3931981973261333 / 12500000000000000 : ℚ)
  supportSlope := (-450913812606811 / 400000000000000 : ℚ)
  oldCenter := (3931981973261333 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1515
  oldLo := (1570949720670391 / 5000000000000000 : ℚ)
  oldHi := (63 / 200 : ℚ)
  oldPieces := [piece_784, piece_785]
}

noncomputable def cell_11816 : Cell := { cellDefaults with
  domain := ⟨(12995000000000001 / 20000000000000000 : ℚ), (129975000000000007 / 200000000000000000 : ℚ)⟩
  r := (53097208169137 / 100000000000000 : ℚ)
  w := (6851554038953 / 5000000000000 : ℚ)
  center := (259925000000000017 / 400000000000000000 : ℚ)
  supportValue := (786043486203749 / 2500000000000000 : ℚ)
  supportSlope := (-563823284935051 / 500000000000000 : ℚ)
  oldCenter := (786043486203749 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1515
  oldLo := (1570949720670391 / 5000000000000000 : ℚ)
  oldHi := (629 / 2000 : ℚ)
  oldPieces := [piece_784]
}

noncomputable def cell_11817 : Cell := { cellDefaults with
  domain := ⟨(129975000000000007 / 200000000000000000 : ℚ), (32500000000000001 / 50000000000000000 : ℚ)⟩
  r := (53097208169137 / 100000000000000 : ℚ)
  w := (6851554038953 / 5000000000000 : ℚ)
  center := (259975000000000011 / 400000000000000000 : ℚ)
  supportValue := (1964228246729649 / 6250000000000000 : ℚ)
  supportSlope := (-14079427519777 / 12500000000000 : ℚ)
  oldCenter := (1964228246729649 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1515
  oldLo := (1570949720670391 / 5000000000000000 : ℚ)
  oldHi := (629 / 2000 : ℚ)
  oldPieces := [piece_784]
}

noncomputable def cell_11818 : Cell := { cellDefaults with
  domain := ⟨(32500000000000001 / 50000000000000000 : ℚ), (130025000000000007 / 200000000000000000 : ℚ)⟩
  r := (53072675819041 / 100000000000000 : ℚ)
  w := (13700965986481 / 10000000000000 : ℚ)
  center := (260025000000000011 / 400000000000000000 : ℚ)
  supportValue := (15721084898972637 / 50000000000000000 : ℚ)
  supportSlope := (-176120456708263 / 156250000000000 : ℚ)
  oldCenter := (15721084898972637 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1516
  oldLo := (1570949720670391 / 5000000000000000 : ℚ)
  oldHi := (629 / 2000 : ℚ)
  oldPieces := [piece_784]
}

noncomputable def cell_11819 : Cell := { cellDefaults with
  domain := ⟨(130025000000000007 / 200000000000000000 : ℚ), (13005000000000001 / 20000000000000000 : ℚ)⟩
  r := (53072675819041 / 100000000000000 : ℚ)
  w := (13700965986481 / 10000000000000 : ℚ)
  center := (260075000000000017 / 400000000000000000 : ℚ)
  supportValue := (785702205915351 / 2500000000000000 : ℚ)
  supportSlope := (-11258795841014617 / 10000000000000000 : ℚ)
  oldCenter := (785702205915351 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1516
  oldLo := (1570949720670391 / 5000000000000000 : ℚ)
  oldHi := (629 / 2000 : ℚ)
  oldPieces := [piece_784]
}

noncomputable def cell_11820 : Cell := { cellDefaults with
  domain := ⟨(13005000000000001 / 20000000000000000 : ℚ), (130075000000000013 / 200000000000000000 : ℚ)⟩
  r := (53072675819041 / 100000000000000 : ℚ)
  w := (13700965986481 / 10000000000000 : ℚ)
  center := (260125000000000023 / 400000000000000000 : ℚ)
  supportValue := (1570701139410081 / 5000000000000000 : ℚ)
  supportSlope := (-449837071497629 / 400000000000000 : ℚ)
  oldCenter := (1570701139410081 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1516
  oldLo := (157 / 500 : ℚ)
  oldHi := (629 / 2000 : ℚ)
  oldPieces := [piece_783, piece_784]
}

noncomputable def cell_11821 : Cell := { cellDefaults with
  domain := ⟨(130075000000000013 / 200000000000000000 : ℚ), (8131250000000001 / 12500000000000000 : ℚ)⟩
  r := (53072675819041 / 100000000000000 : ℚ)
  w := (13700965986481 / 10000000000000 : ℚ)
  center := (260175000000000029 / 400000000000000000 : ℚ)
  supportValue := (31399995310674983 / 100000000000000000 : ℚ)
  supportSlope := (-5621099008904943 / 5000000000000000 : ℚ)
  oldCenter := (31399995310674983 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1516
  oldLo := (627 / 2000 : ℚ)
  oldHi := (1570949720670391 / 5000000000000000 : ℚ)
  oldPieces := [piece_782, piece_783]
}

noncomputable def cell_11822 : Cell := { cellDefaults with
  domain := ⟨(8131250000000001 / 12500000000000000 : ℚ), (130125000000000013 / 200000000000000000 : ℚ)⟩
  r := (53048175375223 / 100000000000000 : ℚ)
  w := (428088753943 / 312500000000 : ℚ)
  center := (260225000000000029 / 400000000000000000 : ℚ)
  supportValue := (31414421927518527 / 100000000000000000 : ℚ)
  supportSlope := (-11241161101126733 / 10000000000000000 : ℚ)
  oldCenter := (31414421927518527 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1517
  oldLo := (157 / 500 : ℚ)
  oldHi := (629 / 2000 : ℚ)
  oldPieces := [piece_783, piece_784]
}

noncomputable def cell_11823 : Cell := { cellDefaults with
  domain := ⟨(130125000000000013 / 200000000000000000 : ℚ), (13015000000000001 / 20000000000000000 : ℚ)⟩
  r := (53048175375223 / 100000000000000 : ℚ)
  w := (428088753943 / 312500000000 : ℚ)
  center := (260275000000000023 / 400000000000000000 : ℚ)
  supportValue := (785010011485939 / 2500000000000000 : ℚ)
  supportSlope := (-11236918293981117 / 10000000000000000 : ℚ)
  oldCenter := (785010011485939 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1517
  oldLo := (627 / 2000 : ℚ)
  oldHi := (1570949720670391 / 5000000000000000 : ℚ)
  oldPieces := [piece_782, piece_783]
}

noncomputable def cell_11824 : Cell := { cellDefaults with
  domain := ⟨(13015000000000001 / 20000000000000000 : ℚ), (130175000000000007 / 200000000000000000 : ℚ)⟩
  r := (53048175375223 / 100000000000000 : ℚ)
  w := (428088753943 / 312500000000 : ℚ)
  center := (260325000000000017 / 400000000000000000 : ℚ)
  supportValue := (1569316453267079 / 5000000000000000 : ℚ)
  supportSlope := (-5616777274198411 / 5000000000000000 : ℚ)
  oldCenter := (1569316453267079 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1517
  oldLo := (627 / 2000 : ℚ)
  oldHi := (157 / 500 : ℚ)
  oldPieces := [piece_782]
}

noncomputable def cell_11825 : Cell := { cellDefaults with
  domain := ⟨(130175000000000007 / 200000000000000000 : ℚ), (32550000000000001 / 50000000000000000 : ℚ)⟩
  r := (53048175375223 / 100000000000000 : ℚ)
  w := (428088753943 / 312500000000 : ℚ)
  center := (260375000000000011 / 400000000000000000 : ℚ)
  supportValue := (78430737905417 / 250000000000000 : ℚ)
  supportSlope := (-280517435931971 / 250000000000000 : ℚ)
  oldCenter := (78430737905417 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1517
  oldLo := (627 / 2000 : ℚ)
  oldHi := (157 / 500 : ℚ)
  oldPieces := [piece_782]
}

noncomputable def cell_11826 : Cell := { cellDefaults with
  domain := ⟨(32550000000000001 / 50000000000000000 : ℚ), (130225000000000007 / 200000000000000000 : ℚ)⟩
  r := (6627962315213 / 12500000000000 : ℚ)
  w := (13696714515343 / 10000000000000 : ℚ)
  center := (260425000000000011 / 400000000000000000 : ℚ)
  supportValue := (3138673764760293 / 10000000000000000 : ℚ)
  supportSlope := (-5614403505006963 / 5000000000000000 : ℚ)
  oldCenter := (3138673764760293 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1518
  oldLo := (627 / 2000 : ℚ)
  oldHi := (157 / 500 : ℚ)
  oldPieces := [piece_782]
}

noncomputable def cell_11827 : Cell := { cellDefaults with
  domain := ⟨(130225000000000007 / 200000000000000000 : ℚ), (13025000000000001 / 20000000000000000 : ℚ)⟩
  r := (6627962315213 / 12500000000000 : ℚ)
  w := (13696714515343 / 10000000000000 : ℚ)
  center := (260475000000000017 / 400000000000000000 : ℚ)
  supportValue := (31372709672407983 / 100000000000000000 : ℚ)
  supportSlope := (-175249378041843 / 156250000000000 : ℚ)
  oldCenter := (31372709672407983 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1518
  oldLo := (627 / 2000 : ℚ)
  oldHi := (157 / 500 : ℚ)
  oldPieces := [piece_782]
}

noncomputable def cell_11828 : Cell := { cellDefaults with
  domain := ⟨(13025000000000001 / 20000000000000000 : ℚ), (130275000000000013 / 200000000000000000 : ℚ)⟩
  r := (6627962315213 / 12500000000000 : ℚ)
  w := (13696714515343 / 10000000000000 : ℚ)
  center := (260525000000000023 / 400000000000000000 : ℚ)
  supportValue := (156793488608643 / 500000000000000 : ℚ)
  supportSlope := (-11203167701479877 / 10000000000000000 : ℚ)
  oldCenter := (156793488608643 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1518
  oldLo := (627 / 2000 : ℚ)
  oldHi := (157 / 500 : ℚ)
  oldPieces := [piece_782]
}

noncomputable def cell_11829 : Cell := { cellDefaults with
  domain := ⟨(130275000000000013 / 200000000000000000 : ℚ), (8143750000000001 / 12500000000000000 : ℚ)⟩
  r := (6627962315213 / 12500000000000 : ℚ)
  w := (13696714515343 / 10000000000000 : ℚ)
  center := (260575000000000029 / 400000000000000000 : ℚ)
  supportValue := (3918089386309273 / 12500000000000000 : ℚ)
  supportSlope := (-224125953677907 / 200000000000000 : ℚ)
  oldCenter := (3918089386309273 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1518
  oldLo := (313 / 1000 : ℚ)
  oldHi := (157 / 500 : ℚ)
  oldPieces := [piece_781, piece_782]
}

noncomputable def cell_11830 : Cell := { cellDefaults with
  domain := ⟨(8143750000000001 / 12500000000000000 : ℚ), (6515642458100559 / 10000000000000000 : ℚ)⟩
  center := (65153212290502799 / 100000000000000000 : ℚ)
  supportValue := (3136247854742773 / 10000000000000000 : ℚ)
  supportSlope := (-2800378976514517 / 2500000000000000 : ℚ)
  oldCenter := (3136247854742773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1519
  oldLo := (627 / 2000 : ℚ)
  oldHi := (157 / 500 : ℚ)
  oldPieces := [piece_782]
}

noncomputable def cell_11831 : Cell := { cellDefaults with
  domain := ⟨(6515642458100559 / 10000000000000000 : ℚ), (65167318435754193 / 100000000000000000 : ℚ)⟩
  center := (130323743016759783 / 200000000000000000 : ℚ)
  supportValue := (3135281095394917 / 10000000000000000 : ℚ)
  supportSlope := (-1119760643398527 / 1000000000000000 : ℚ)
  oldCenter := (3135281095394917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1520
  oldLo := (313 / 1000 : ℚ)
  oldHi := (157 / 500 : ℚ)
  oldPieces := [piece_781, piece_782]
}

noncomputable def cell_11832 : Cell := { cellDefaults with
  domain := ⟨(65167318435754193 / 100000000000000000 : ℚ), (16294553072625699 / 25000000000000000 : ℚ)⟩
  center := (130345530726256989 / 200000000000000000 : ℚ)
  supportValue := (3134058670816327 / 10000000000000000 : ℚ)
  supportSlope := (-5599802339040807 / 5000000000000000 : ℚ)
  oldCenter := (3134058670816327 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1520
  oldLo := (313 / 1000 : ℚ)
  oldHi := (627 / 2000 : ℚ)
  oldPieces := [piece_781]
}

noncomputable def cell_11833 : Cell := { cellDefaults with
  domain := ⟨(16294553072625699 / 25000000000000000 : ℚ), (65189106145251399 / 100000000000000000 : ℚ)⟩
  center := (26073463687150839 / 40000000000000000 : ℚ)
  supportValue := (783209802979959 / 2500000000000000 : ℚ)
  supportSlope := (-11188413591599373 / 10000000000000000 : ℚ)
  oldCenter := (783209802979959 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1520
  oldLo := (313 / 1000 : ℚ)
  oldHi := (627 / 2000 : ℚ)
  oldPieces := [piece_781]
}

noncomputable def cell_11834 : Cell := { cellDefaults with
  domain := ⟨(65189106145251399 / 100000000000000000 : ℚ), (32600000000000001 / 50000000000000000 : ℚ)⟩
  center := (130389106145251401 / 200000000000000000 : ℚ)
  supportValue := (195726310619223 / 625000000000000 : ℚ)
  supportSlope := (-1117726387772111 / 1000000000000000 : ℚ)
  oldCenter := (195726310619223 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1520
  oldLo := (313 / 1000 : ℚ)
  oldHi := (627 / 2000 : ℚ)
  oldPieces := [piece_781]
}

noncomputable def cell_11835 : Cell := { cellDefaults with
  domain := ⟨(32600000000000001 / 50000000000000000 : ℚ), (130425000000000007 / 200000000000000000 : ℚ)⟩
  r := (2118993313501 / 4000000000000 : ℚ)
  w := (3423123792717 / 2500000000000 : ℚ)
  center := (260825000000000011 / 400000000000000000 : ℚ)
  supportValue := (3133146817136519 / 10000000000000000 : ℚ)
  supportSlope := (-2796535379596341 / 2500000000000000 : ℚ)
  oldCenter := (3133146817136519 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1521
  oldLo := (313 / 1000 : ℚ)
  oldHi := (627 / 2000 : ℚ)
  oldPieces := [piece_781]
}

noncomputable def cell_11836 : Cell := { cellDefaults with
  domain := ⟨(130425000000000007 / 200000000000000000 : ℚ), (13045000000000001 / 20000000000000000 : ℚ)⟩
  r := (2118993313501 / 4000000000000 : ℚ)
  w := (3423123792717 / 2500000000000 : ℚ)
  center := (260875000000000017 / 400000000000000000 : ℚ)
  supportValue := (6263498698531601 / 20000000000000000 : ℚ)
  supportSlope := (-11173351278762391 / 10000000000000000 : ℚ)
  oldCenter := (6263498698531601 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1521
  oldLo := (313 / 1000 : ℚ)
  oldHi := (627 / 2000 : ℚ)
  oldPieces := [piece_781]
}

noncomputable def cell_11837 : Cell := { cellDefaults with
  domain := ⟨(13045000000000001 / 20000000000000000 : ℚ), (130475000000000013 / 200000000000000000 : ℚ)⟩
  r := (2118993313501 / 4000000000000 : ℚ)
  w := (3423123792717 / 2500000000000 : ℚ)
  center := (260925000000000023 / 400000000000000000 : ℚ)
  supportValue := (782588917008653 / 2500000000000000 : ℚ)
  supportSlope := (-174454558215499 / 156250000000000 : ℚ)
  oldCenter := (782588917008653 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1521
  oldLo := (5 / 16 : ℚ)
  oldHi := (627 / 2000 : ℚ)
  oldPieces := [piece_780, piece_781]
}

noncomputable def cell_11838 : Cell := { cellDefaults with
  domain := ⟨(130475000000000013 / 200000000000000000 : ℚ), (8156250000000001 / 12500000000000000 : ℚ)⟩
  r := (2118993313501 / 4000000000000 : ℚ)
  w := (3423123792717 / 2500000000000 : ℚ)
  center := (260975000000000029 / 400000000000000000 : ℚ)
  supportValue := (1564478752734089 / 5000000000000000 : ℚ)
  supportSlope := (-446637637425997 / 400000000000000 : ℚ)
  oldCenter := (1564478752734089 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1521
  oldLo := (5 / 16 : ℚ)
  oldHi := (313 / 1000 : ℚ)
  oldPieces := [piece_780]
}

noncomputable def cell_11839 : Cell := { cellDefaults with
  domain := ⟨(8156250000000001 / 12500000000000000 : ℚ), (130525000000000013 / 200000000000000000 : ℚ)⟩
  r := (52950438837863 / 100000000000000 : ℚ)
  w := (1369039385437 / 1000000000000 : ℚ)
  center := (261025000000000029 / 400000000000000000 : ℚ)
  supportValue := (31303933291947533 / 100000000000000000 : ℚ)
  supportSlope := (-2231973447440351 / 2000000000000000 : ℚ)
  oldCenter := (31303933291947533 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1522
  oldLo := (5 / 16 : ℚ)
  oldHi := (627 / 2000 : ℚ)
  oldPieces := [piece_780, piece_781]
}

noncomputable def cell_11840 : Cell := { cellDefaults with
  domain := ⟨(130525000000000013 / 200000000000000000 : ℚ), (13055000000000001 / 20000000000000000 : ℚ)⟩
  r := (52950438837863 / 100000000000000 : ℚ)
  w := (1369039385437 / 1000000000000 : ℚ)
  center := (261075000000000023 / 400000000000000000 : ℚ)
  supportValue := (1564497909635487 / 5000000000000000 : ℚ)
  supportSlope := (-2232243024977533 / 2000000000000000 : ℚ)
  oldCenter := (1564497909635487 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1522
  oldLo := (5 / 16 : ℚ)
  oldHi := (313 / 1000 : ℚ)
  oldPieces := [piece_780]
}

noncomputable def cell_11841 : Cell := { cellDefaults with
  domain := ⟨(13055000000000001 / 20000000000000000 : ℚ), (130575000000000007 / 200000000000000000 : ℚ)⟩
  r := (52950438837863 / 100000000000000 : ℚ)
  w := (1369039385437 / 1000000000000 : ℚ)
  center := (261125000000000017 / 400000000000000000 : ℚ)
  supportValue := (3127601466085799 / 10000000000000000 : ℚ)
  supportSlope := (-11148442718572853 / 10000000000000000 : ℚ)
  oldCenter := (3127601466085799 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1522
  oldLo := (5 / 16 : ℚ)
  oldHi := (313 / 1000 : ℚ)
  oldPieces := [piece_780]
}

noncomputable def cell_11842 : Cell := { cellDefaults with
  domain := ⟨(130575000000000007 / 200000000000000000 : ℚ), (32650000000000001 / 50000000000000000 : ℚ)⟩
  r := (52950438837863 / 100000000000000 : ℚ)
  w := (1369039385437 / 1000000000000 : ℚ)
  center := (261175000000000011 / 400000000000000000 : ℚ)
  supportValue := (15631043530321073 / 50000000000000000 : ℚ)
  supportSlope := (-2227144884779531 / 2000000000000000 : ℚ)
  oldCenter := (15631043530321073 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1522
  oldLo := (5 / 16 : ℚ)
  oldHi := (313 / 1000 : ℚ)
  oldPieces := [piece_780]
}

noncomputable def cell_11843 : Cell := { cellDefaults with
  domain := ⟨(32650000000000001 / 50000000000000000 : ℚ), (130625000000000007 / 200000000000000000 : ℚ)⟩
  r := (3307879717069 / 6250000000000 : ℚ)
  w := (3422076055279 / 2500000000000 : ℚ)
  center := (261225000000000011 / 400000000000000000 : ℚ)
  supportValue := (3909546360417207 / 12500000000000000 : ℚ)
  supportSlope := (-5571852480498627 / 5000000000000000 : ℚ)
  oldCenter := (3909546360417207 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1523
  oldLo := (5 / 16 : ℚ)
  oldHi := (313 / 1000 : ℚ)
  oldPieces := [piece_780]
}

noncomputable def cell_11844 : Cell := { cellDefaults with
  domain := ⟨(130625000000000007 / 200000000000000000 : ℚ), (13065000000000001 / 20000000000000000 : ℚ)⟩
  r := (3307879717069 / 6250000000000 : ℚ)
  w := (3422076055279 / 2500000000000 : ℚ)
  center := (261275000000000017 / 400000000000000000 : ℚ)
  supportValue := (1563122459945701 / 5000000000000000 : ℚ)
  supportSlope := (-111309969007487 / 100000000000000 : ℚ)
  oldCenter := (1563122459945701 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1523
  oldLo := (5 / 16 : ℚ)
  oldHi := (313 / 1000 : ℚ)
  oldPieces := [piece_780]
}

noncomputable def cell_11845 : Cell := { cellDefaults with
  domain := ⟨(13065000000000001 / 20000000000000000 : ℚ), (130675000000000013 / 200000000000000000 : ℚ)⟩
  r := (3307879717069 / 6250000000000 : ℚ)
  w := (3422076055279 / 2500000000000 : ℚ)
  center := (261325000000000023 / 400000000000000000 : ℚ)
  supportValue := (3124856285268861 / 10000000000000000 : ℚ)
  supportSlope := (-11129278845148691 / 10000000000000000 : ℚ)
  oldCenter := (3124856285268861 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1523
  oldLo := (39 / 125 : ℚ)
  oldHi := (313 / 1000 : ℚ)
  oldPieces := [piece_779, piece_780]
}

noncomputable def cell_11846 : Cell := { cellDefaults with
  domain := ⟨(130675000000000013 / 200000000000000000 : ℚ), (8168750000000001 / 12500000000000000 : ℚ)⟩
  r := (3307879717069 / 6250000000000 : ℚ)
  w := (3422076055279 / 2500000000000 : ℚ)
  center := (261375000000000029 / 400000000000000000 : ℚ)
  supportValue := (31234628418699917 / 100000000000000000 : ℚ)
  supportSlope := (-347614484173489 / 312500000000000 : ℚ)
  oldCenter := (31234628418699917 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1523
  oldLo := (39 / 125 : ℚ)
  oldHi := (5 / 16 : ℚ)
  oldPieces := [piece_779]
}

noncomputable def cell_11847 : Cell := { cellDefaults with
  domain := ⟨(8168750000000001 / 12500000000000000 : ℚ), (261450000000000027 / 400000000000000000 : ℚ)⟩
  r := (52901735668403 / 100000000000000 : ℚ)
  w := (6843107954839 / 5000000000000 : ℚ)
  center := (522850000000000059 / 800000000000000000 : ℚ)
  supportValue := (1562446305829797 / 5000000000000000 : ℚ)
  supportSlope := (-444963473003357 / 400000000000000 : ℚ)
  oldCenter := (1562446305829797 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1524
  oldLo := (39 / 125 : ℚ)
  oldHi := (313 / 1000 : ℚ)
  oldPieces := [piece_779, piece_780]
}

noncomputable def cell_11848 : Cell := { cellDefaults with
  domain := ⟨(261450000000000027 / 400000000000000000 : ℚ), (130750000000000011 / 200000000000000000 : ℚ)⟩
  r := (52901735668403 / 100000000000000 : ℚ)
  w := (6843107954839 / 5000000000000 : ℚ)
  center := (522950000000000049 / 800000000000000000 : ℚ)
  supportValue := (3123499757780623 / 10000000000000000 : ℚ)
  supportSlope := (-5559476153998433 / 5000000000000000 : ℚ)
  oldCenter := (3123499757780623 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1524
  oldLo := (39 / 125 : ℚ)
  oldHi := (5 / 16 : ℚ)
  oldPieces := [piece_779]
}

noncomputable def cell_11849 : Cell := { cellDefaults with
  domain := ⟨(130750000000000011 / 200000000000000000 : ℚ), (261550000000000017 / 400000000000000000 : ℚ)⟩
  r := (52901735668403 / 100000000000000 : ℚ)
  w := (6843107954839 / 5000000000000 : ℚ)
  center := (523050000000000039 / 800000000000000000 : ℚ)
  supportValue := (31221106836315077 / 100000000000000000 : ℚ)
  supportSlope := (-5553120460409233 / 5000000000000000 : ℚ)
  oldCenter := (31221106836315077 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1524
  oldLo := (39 / 125 : ℚ)
  oldHi := (5 / 16 : ℚ)
  oldPieces := [piece_779]
}

theorem check_11800 : cell_11800.check = true := by
  decide +kernel

theorem check_11801 : cell_11801.check = true := by
  decide +kernel

theorem check_11802 : cell_11802.check = true := by
  decide +kernel

theorem check_11803 : cell_11803.check = true := by
  decide +kernel

theorem check_11804 : cell_11804.check = true := by
  decide +kernel

theorem check_11805 : cell_11805.check = true := by
  decide +kernel

theorem check_11806 : cell_11806.check = true := by
  decide +kernel

theorem check_11807 : cell_11807.check = true := by
  decide +kernel

theorem check_11808 : cell_11808.check = true := by
  decide +kernel

theorem check_11809 : cell_11809.check = true := by
  decide +kernel

theorem check_11810 : cell_11810.check = true := by
  decide +kernel

theorem check_11811 : cell_11811.check = true := by
  decide +kernel

theorem check_11812 : cell_11812.check = true := by
  decide +kernel

theorem check_11813 : cell_11813.check = true := by
  decide +kernel

theorem check_11814 : cell_11814.check = true := by
  decide +kernel

theorem check_11815 : cell_11815.check = true := by
  decide +kernel

theorem check_11816 : cell_11816.check = true := by
  decide +kernel

theorem check_11817 : cell_11817.check = true := by
  decide +kernel

theorem check_11818 : cell_11818.check = true := by
  decide +kernel

theorem check_11819 : cell_11819.check = true := by
  decide +kernel

theorem check_11820 : cell_11820.check = true := by
  decide +kernel

theorem check_11821 : cell_11821.check = true := by
  decide +kernel

theorem check_11822 : cell_11822.check = true := by
  decide +kernel

theorem check_11823 : cell_11823.check = true := by
  decide +kernel

theorem check_11824 : cell_11824.check = true := by
  decide +kernel

theorem check_11825 : cell_11825.check = true := by
  decide +kernel

theorem check_11826 : cell_11826.check = true := by
  decide +kernel

theorem check_11827 : cell_11827.check = true := by
  decide +kernel

theorem check_11828 : cell_11828.check = true := by
  decide +kernel

theorem check_11829 : cell_11829.check = true := by
  decide +kernel

theorem check_11830 : cell_11830.check = true := by
  decide +kernel

theorem check_11831 : cell_11831.check = true := by
  decide +kernel

theorem check_11832 : cell_11832.check = true := by
  decide +kernel

theorem check_11833 : cell_11833.check = true := by
  decide +kernel

theorem check_11834 : cell_11834.check = true := by
  decide +kernel

theorem check_11835 : cell_11835.check = true := by
  decide +kernel

theorem check_11836 : cell_11836.check = true := by
  decide +kernel

theorem check_11837 : cell_11837.check = true := by
  decide +kernel

theorem check_11838 : cell_11838.check = true := by
  decide +kernel

theorem check_11839 : cell_11839.check = true := by
  decide +kernel

theorem check_11840 : cell_11840.check = true := by
  decide +kernel

theorem check_11841 : cell_11841.check = true := by
  decide +kernel

theorem check_11842 : cell_11842.check = true := by
  decide +kernel

theorem check_11843 : cell_11843.check = true := by
  decide +kernel

theorem check_11844 : cell_11844.check = true := by
  decide +kernel

theorem check_11845 : cell_11845.check = true := by
  decide +kernel

theorem check_11846 : cell_11846.check = true := by
  decide +kernel

theorem check_11847 : cell_11847.check = true := by
  decide +kernel

theorem check_11848 : cell_11848.check = true := by
  decide +kernel

theorem check_11849 : cell_11849.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11800, cell_11801, cell_11802, cell_11803, cell_11804, cell_11805, cell_11806, cell_11807, cell_11808, cell_11809, cell_11810, cell_11811, cell_11812, cell_11813, cell_11814, cell_11815, cell_11816, cell_11817, cell_11818, cell_11819, cell_11820, cell_11821, cell_11822, cell_11823, cell_11824, cell_11825, cell_11826, cell_11827, cell_11828, cell_11829, cell_11830, cell_11831, cell_11832, cell_11833, cell_11834, cell_11835, cell_11836, cell_11837, cell_11838, cell_11839, cell_11840, cell_11841, cell_11842, cell_11843, cell_11844, cell_11845, cell_11846, cell_11847, cell_11848, cell_11849]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11800, check_11801, check_11802, check_11803, check_11804, check_11805, check_11806, check_11807, check_11808, check_11809, check_11810, check_11811, check_11812, check_11813, check_11814, check_11815, check_11816, check_11817, check_11818, check_11819, check_11820, check_11821, check_11822, check_11823, check_11824, check_11825, check_11826, check_11827, check_11828, check_11829, check_11830, check_11831, check_11832, check_11833, check_11834, check_11835, check_11836, check_11837, check_11838, check_11839, check_11840, check_11841, check_11842, check_11843, check_11844, check_11845, check_11846, check_11847, check_11848, check_11849, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0236

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0236
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0236
open AnalyticBounds.ExpressionCertificate

theorem linked_11800 : Linked cell_11800 pieces := by
  link_source cell_11800 with piece_1511 using piece_1511_mem, ⟨piece_786_mem, piece_787_mem⟩

theorem linked_11801 : Linked cell_11801 pieces := by
  link_source cell_11801 with piece_1511 using piece_1511_mem, piece_786_mem

theorem linked_11802 : Linked cell_11802 pieces := by
  link_source cell_11802 with piece_1512 using piece_1512_mem, ⟨piece_786_mem, piece_787_mem⟩

theorem linked_11803 : Linked cell_11803 pieces := by
  link_source cell_11803 with piece_1512 using piece_1512_mem, piece_786_mem

theorem linked_11804 : Linked cell_11804 pieces := by
  link_source cell_11804 with piece_1512 using piece_1512_mem, piece_786_mem

theorem linked_11805 : Linked cell_11805 pieces := by
  link_source cell_11805 with piece_1512 using piece_1512_mem, piece_786_mem

theorem linked_11806 : Linked cell_11806 pieces := by
  link_source cell_11806 with piece_1513 using piece_1513_mem, piece_786_mem

theorem linked_11807 : Linked cell_11807 pieces := by
  link_source cell_11807 with piece_1513 using piece_1513_mem, piece_786_mem

theorem linked_11808 : Linked cell_11808 pieces := by
  link_source cell_11808 with piece_1513 using piece_1513_mem, ⟨piece_785_mem, piece_786_mem⟩

theorem linked_11809 : Linked cell_11809 pieces := by
  link_source cell_11809 with piece_1513 using piece_1513_mem, piece_785_mem

theorem linked_11810 : Linked cell_11810 pieces := by
  link_source cell_11810 with piece_1514 using piece_1514_mem, ⟨piece_785_mem, piece_786_mem⟩

theorem linked_11811 : Linked cell_11811 pieces := by
  link_source cell_11811 with piece_1514 using piece_1514_mem, piece_785_mem

theorem linked_11812 : Linked cell_11812 pieces := by
  link_source cell_11812 with piece_1514 using piece_1514_mem, piece_785_mem

theorem linked_11813 : Linked cell_11813 pieces := by
  link_source cell_11813 with piece_1514 using piece_1514_mem, ⟨piece_784_mem, piece_785_mem⟩

theorem linked_11814 : Linked cell_11814 pieces := by
  link_source cell_11814 with piece_1515 using piece_1515_mem, piece_785_mem

theorem linked_11815 : Linked cell_11815 pieces := by
  link_source cell_11815 with piece_1515 using piece_1515_mem, ⟨piece_784_mem, piece_785_mem⟩

theorem linked_11816 : Linked cell_11816 pieces := by
  link_source cell_11816 with piece_1515 using piece_1515_mem, piece_784_mem

theorem linked_11817 : Linked cell_11817 pieces := by
  link_source cell_11817 with piece_1515 using piece_1515_mem, piece_784_mem

theorem linked_11818 : Linked cell_11818 pieces := by
  link_source cell_11818 with piece_1516 using piece_1516_mem, piece_784_mem

theorem linked_11819 : Linked cell_11819 pieces := by
  link_source cell_11819 with piece_1516 using piece_1516_mem, piece_784_mem

theorem linked_11820 : Linked cell_11820 pieces := by
  link_source cell_11820 with piece_1516 using piece_1516_mem, ⟨piece_783_mem, piece_784_mem⟩

theorem linked_11821 : Linked cell_11821 pieces := by
  link_source cell_11821 with piece_1516 using piece_1516_mem, ⟨piece_782_mem, piece_783_mem⟩

theorem linked_11822 : Linked cell_11822 pieces := by
  link_source cell_11822 with piece_1517 using piece_1517_mem, ⟨piece_783_mem, piece_784_mem⟩

theorem linked_11823 : Linked cell_11823 pieces := by
  link_source cell_11823 with piece_1517 using piece_1517_mem, ⟨piece_782_mem, piece_783_mem⟩

theorem linked_11824 : Linked cell_11824 pieces := by
  link_source cell_11824 with piece_1517 using piece_1517_mem, piece_782_mem

theorem linked_11825 : Linked cell_11825 pieces := by
  link_source cell_11825 with piece_1517 using piece_1517_mem, piece_782_mem

theorem linked_11826 : Linked cell_11826 pieces := by
  link_source cell_11826 with piece_1518 using piece_1518_mem, piece_782_mem

theorem linked_11827 : Linked cell_11827 pieces := by
  link_source cell_11827 with piece_1518 using piece_1518_mem, piece_782_mem

theorem linked_11828 : Linked cell_11828 pieces := by
  link_source cell_11828 with piece_1518 using piece_1518_mem, piece_782_mem

theorem linked_11829 : Linked cell_11829 pieces := by
  link_source cell_11829 with piece_1518 using piece_1518_mem, ⟨piece_781_mem, piece_782_mem⟩

theorem linked_11830 : Linked cell_11830 pieces := by
  link_source cell_11830 with piece_1519 using piece_1519_mem, piece_782_mem

theorem linked_11831 : Linked cell_11831 pieces := by
  link_source cell_11831 with piece_1520 using piece_1520_mem, ⟨piece_781_mem, piece_782_mem⟩

theorem linked_11832 : Linked cell_11832 pieces := by
  link_source cell_11832 with piece_1520 using piece_1520_mem, piece_781_mem

theorem linked_11833 : Linked cell_11833 pieces := by
  link_source cell_11833 with piece_1520 using piece_1520_mem, piece_781_mem

theorem linked_11834 : Linked cell_11834 pieces := by
  link_source cell_11834 with piece_1520 using piece_1520_mem, piece_781_mem

theorem linked_11835 : Linked cell_11835 pieces := by
  link_source cell_11835 with piece_1521 using piece_1521_mem, piece_781_mem

theorem linked_11836 : Linked cell_11836 pieces := by
  link_source cell_11836 with piece_1521 using piece_1521_mem, piece_781_mem

theorem linked_11837 : Linked cell_11837 pieces := by
  link_source cell_11837 with piece_1521 using piece_1521_mem, ⟨piece_780_mem, piece_781_mem⟩

theorem linked_11838 : Linked cell_11838 pieces := by
  link_source cell_11838 with piece_1521 using piece_1521_mem, piece_780_mem

theorem linked_11839 : Linked cell_11839 pieces := by
  link_source cell_11839 with piece_1522 using piece_1522_mem, ⟨piece_780_mem, piece_781_mem⟩

theorem linked_11840 : Linked cell_11840 pieces := by
  link_source cell_11840 with piece_1522 using piece_1522_mem, piece_780_mem

theorem linked_11841 : Linked cell_11841 pieces := by
  link_source cell_11841 with piece_1522 using piece_1522_mem, piece_780_mem

theorem linked_11842 : Linked cell_11842 pieces := by
  link_source cell_11842 with piece_1522 using piece_1522_mem, piece_780_mem

theorem linked_11843 : Linked cell_11843 pieces := by
  link_source cell_11843 with piece_1523 using piece_1523_mem, piece_780_mem

theorem linked_11844 : Linked cell_11844 pieces := by
  link_source cell_11844 with piece_1523 using piece_1523_mem, piece_780_mem

theorem linked_11845 : Linked cell_11845 pieces := by
  link_source cell_11845 with piece_1523 using piece_1523_mem, ⟨piece_779_mem, piece_780_mem⟩

theorem linked_11846 : Linked cell_11846 pieces := by
  link_source cell_11846 with piece_1523 using piece_1523_mem, piece_779_mem

theorem linked_11847 : Linked cell_11847 pieces := by
  link_source cell_11847 with piece_1524 using piece_1524_mem, ⟨piece_779_mem, piece_780_mem⟩

theorem linked_11848 : Linked cell_11848 pieces := by
  link_source cell_11848 with piece_1524 using piece_1524_mem, piece_779_mem

theorem linked_11849 : Linked cell_11849 pieces := by
  link_source cell_11849 with piece_1524 using piece_1524_mem, piece_779_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0236.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0236.cells,List.forall_mem_cons]
  exact ⟨linked_11800, linked_11801, linked_11802, linked_11803, linked_11804, linked_11805, linked_11806, linked_11807, linked_11808, linked_11809, linked_11810, linked_11811, linked_11812, linked_11813, linked_11814, linked_11815, linked_11816, linked_11817, linked_11818, linked_11819, linked_11820, linked_11821, linked_11822, linked_11823, linked_11824, linked_11825, linked_11826, linked_11827, linked_11828, linked_11829, linked_11830, linked_11831, linked_11832, linked_11833, linked_11834, linked_11835, linked_11836, linked_11837, linked_11838, linked_11839, linked_11840, linked_11841, linked_11842, linked_11843, linked_11844, linked_11845, linked_11846, linked_11847, linked_11848, linked_11849, by simp⟩

theorem covered : covers (12955000000000001 / 20000000000000000 : ℚ) (261550000000000017 / 400000000000000000 : ℚ)
    (SourceCertificates.Chunk0236.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0236
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0237
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(261550000000000017 / 400000000000000000 : ℚ), (65400000000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (10546426606707 / 20000000000000 : ℚ)
  w := (3417957867761 / 2500000000000 : ℚ)
  center := (523150000000000029 / 800000000000000000 : ℚ)
  supportValue := (390090399379289 / 1250000000000000 : ℚ)
  supportSlope := (-5546791697091379 / 5000000000000000 : ℚ)
  oldCenter := (390090399379289 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1525
  oldLo := (311 / 1000 : ℚ)
  oldHi := (623 / 2000 : ℚ)
  oldPieces := [piece_777]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11850 : Cell := { cellDefaults with
  r := (52901735668403 / 100000000000000 : ℚ)
  w := (6843107954839 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1524
  oldLo := (39 / 125 : ℚ)
  oldHi := (5 / 16 : ℚ)
  oldPieces := [piece_779]
}

noncomputable def cell_11851 : Cell := { cellDefaults with
  domain := ⟨(65400000000000003 / 100000000000000000 : ℚ), (261650000000000017 / 400000000000000000 : ℚ)⟩
  r := (52877427751263 / 100000000000000 : ℚ)
  w := (1368414410353 / 1000000000000 : ℚ)
  center := (523250000000000029 / 800000000000000000 : ℚ)
  supportValue := (3122143831156127 / 10000000000000000 : ℚ)
  supportSlope := (-5550754531346569 / 5000000000000000 : ℚ)
  oldCenter := (3122143831156127 / 10000000000000000 : ℚ)
  oldLo := (39 / 125 : ℚ)
  oldHi := (5 / 16 : ℚ)
  oldPieces := [piece_779]
}

noncomputable def cell_11852 : Cell := { cellDefaults with
  domain := ⟨(261650000000000017 / 400000000000000000 : ℚ), (130850000000000011 / 200000000000000000 : ℚ)⟩
  r := (52877427751263 / 100000000000000 : ℚ)
  w := (1368414410353 / 1000000000000 : ℚ)
  center := (523350000000000039 / 800000000000000000 : ℚ)
  supportValue := (156037846669641 / 500000000000000 : ℚ)
  supportSlope := (-1386107737100101 / 1250000000000000 : ℚ)
  oldCenter := (156037846669641 / 500000000000000 : ℚ)
  oldLo := (39 / 125 : ℚ)
  oldHi := (5 / 16 : ℚ)
  oldPieces := [piece_779]
}

noncomputable def cell_11853 : Cell := { cellDefaults with
  domain := ⟨(130850000000000011 / 200000000000000000 : ℚ), (261750000000000027 / 400000000000000000 : ℚ)⟩
  r := (52877427751263 / 100000000000000 : ℚ)
  w := (1368414410353 / 1000000000000 : ℚ)
  center := (523450000000000049 / 800000000000000000 : ℚ)
  supportValue := (3119372769167377 / 10000000000000000 : ℚ)
  supportSlope := (-11093492319992349 / 10000000000000000 : ℚ)
  oldCenter := (3119372769167377 / 10000000000000000 : ℚ)
  oldLo := (623 / 2000 : ℚ)
  oldHi := (5 / 16 : ℚ)
  oldPieces := [piece_778, piece_779]
}

noncomputable def cell_11854 : Cell := { cellDefaults with
  domain := ⟨(261750000000000027 / 400000000000000000 : ℚ), (8181250000000001 / 12500000000000000 : ℚ)⟩
  r := (52877427751263 / 100000000000000 : ℚ)
  w := (1368414410353 / 1000000000000 : ℚ)
  center := (523550000000000059 / 800000000000000000 : ℚ)
  supportValue := (3117984590813539 / 10000000000000000 : ℚ)
  supportSlope := (-173150074536093 / 156250000000000 : ℚ)
  oldCenter := (3117984590813539 / 10000000000000000 : ℚ)
  oldLo := (623 / 2000 : ℚ)
  oldHi := (39 / 125 : ℚ)
  oldPieces := [piece_778]
}

noncomputable def cell_11855 : Cell := { cellDefaults with
  domain := ⟨(8181250000000001 / 12500000000000000 : ℚ), (261850000000000027 / 400000000000000000 : ℚ)⟩
  r := (26426570506637 / 50000000000000 : ℚ)
  w := (13682068686703 / 10000000000000 : ℚ)
  center := (523650000000000059 / 800000000000000000 : ℚ)
  supportValue := (31194078160008043 / 100000000000000000 : ℚ)
  supportSlope := (-11088331724496967 / 10000000000000000 : ℚ)
  oldCenter := (31194078160008043 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1526
  oldLo := (623 / 2000 : ℚ)
  oldHi := (5 / 16 : ℚ)
  oldPieces := [piece_778, piece_779]
}

noncomputable def cell_11856 : Cell := { cellDefaults with
  domain := ⟨(261850000000000027 / 400000000000000000 : ℚ), (130950000000000011 / 200000000000000000 : ℚ)⟩
  r := (26426570506637 / 50000000000000 : ℚ)
  w := (13682068686703 / 10000000000000 : ℚ)
  center := (523750000000000049 / 800000000000000000 : ℚ)
  supportValue := (779505056315969 / 2500000000000000 : ℚ)
  supportSlope := (-5538454386960211 / 5000000000000000 : ℚ)
  oldCenter := (779505056315969 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1526
  oldLo := (623 / 2000 : ℚ)
  oldHi := (39 / 125 : ℚ)
  oldPieces := [piece_778]
}

noncomputable def cell_11857 : Cell := { cellDefaults with
  domain := ⟨(130950000000000011 / 200000000000000000 : ℚ), (261950000000000017 / 400000000000000000 : ℚ)⟩
  r := (26426570506637 / 50000000000000 : ℚ)
  w := (13682068686703 / 10000000000000 : ℚ)
  center := (523850000000000039 / 800000000000000000 : ℚ)
  supportValue := (3804487796273 / 12207031250000 : ℚ)
  supportSlope := (-2766064735573447 / 2500000000000000 : ℚ)
  oldCenter := (3804487796273 / 12207031250000 : ℚ)
  newCoefficients := coefficients_1526
  oldLo := (623 / 2000 : ℚ)
  oldHi := (39 / 125 : ℚ)
  oldPieces := [piece_778]
}

noncomputable def cell_11858 : Cell := { cellDefaults with
  domain := ⟨(261950000000000017 / 400000000000000000 : ℚ), (65500000000000003 / 100000000000000000 : ℚ)⟩
  r := (26426570506637 / 50000000000000 : ℚ)
  w := (13682068686703 / 10000000000000 : ℚ)
  center := (523950000000000029 / 800000000000000000 : ℚ)
  supportValue := (3115256338700639 / 10000000000000000 : ℚ)
  supportSlope := (-11057401160378117 / 10000000000000000 : ℚ)
  oldCenter := (3115256338700639 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1526
  oldHi := (39 / 125 : ℚ)
  oldPieces := [piece_777, piece_778]
}

noncomputable def cell_11859 : Cell := { cellDefaults with
  domain := ⟨(65500000000000003 / 100000000000000000 : ℚ), (262050000000000017 / 400000000000000000 : ℚ)⟩
  r := (52828887785237 / 100000000000000 : ℚ)
  w := (3420002704479 / 2500000000000 : ℚ)
  center := (524050000000000029 / 800000000000000000 : ℚ)
  supportValue := (15583339519281847 / 50000000000000000 : ℚ)
  supportSlope := (-276488489282939 / 250000000000000 : ℚ)
  oldCenter := (15583339519281847 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1527
  oldLo := (623 / 2000 : ℚ)
  oldHi := (39 / 125 : ℚ)
  oldPieces := [piece_778]
}

noncomputable def cell_11860 : Cell := { cellDefaults with
  domain := ⟨(262050000000000017 / 400000000000000000 : ℚ), (131050000000000011 / 200000000000000000 : ℚ)⟩
  r := (52828887785237 / 100000000000000 : ℚ)
  w := (3420002704479 / 2500000000000 : ℚ)
  center := (524150000000000039 / 800000000000000000 : ℚ)
  supportValue := (311528842914863 / 1000000000000000 : ℚ)
  supportSlope := (-1105226766807799 / 1000000000000000 : ℚ)
  oldCenter := (311528842914863 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1527
  oldHi := (39 / 125 : ℚ)
  oldPieces := [piece_777, piece_778]
}

noncomputable def cell_11861 : Cell := { cellDefaults with
  domain := ⟨(131050000000000011 / 200000000000000000 : ℚ), (262150000000000027 / 400000000000000000 : ℚ)⟩
  r := (52828887785237 / 100000000000000 : ℚ)
  w := (3420002704479 / 2500000000000 : ℚ)
  center := (524250000000000049 / 800000000000000000 : ℚ)
  supportValue := (1556952185404191 / 5000000000000000 : ℚ)
  supportSlope := (-552621215732463 / 500000000000000 : ℚ)
  oldCenter := (1556952185404191 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1527
  oldPieces := [piece_777]
}

noncomputable def cell_11862 : Cell := { cellDefaults with
  domain := ⟨(262150000000000027 / 400000000000000000 : ℚ), (8193750000000001 / 12500000000000000 : ℚ)⟩
  r := (52828887785237 / 100000000000000 : ℚ)
  w := (3420002704479 / 2500000000000 : ℚ)
  center := (524350000000000059 / 800000000000000000 : ℚ)
  supportValue := (3112523608869357 / 10000000000000000 : ℚ)
  supportSlope := (-2207954713337791 / 2000000000000000 : ℚ)
  oldCenter := (3112523608869357 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1527
  oldPieces := [piece_777]
}

noncomputable def cell_11863 : Cell := { cellDefaults with
  domain := ⟨(8193750000000001 / 12500000000000000 : ℚ), (262250000000000027 / 400000000000000000 : ℚ)⟩
  r := (10560931311959 / 20000000000000 : ℚ)
  w := (13677950284459 / 10000000000000 : ℚ)
  center := (524450000000000059 / 800000000000000000 : ℚ)
  supportValue := (3113937488914403 / 10000000000000000 : ℚ)
  supportSlope := (-1104772808910081 / 1000000000000000 : ℚ)
  oldCenter := (3113937488914403 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1528
  oldPieces := [piece_777]
}

noncomputable def cell_11864 : Cell := { cellDefaults with
  domain := ⟨(262250000000000027 / 400000000000000000 : ℚ), (131150000000000011 / 200000000000000000 : ℚ)⟩
  r := (10560931311959 / 20000000000000 : ℚ)
  w := (13677950284459 / 10000000000000 : ℚ)
  center := (524550000000000049 / 800000000000000000 : ℚ)
  supportValue := (3112557313360057 / 10000000000000000 : ℚ)
  supportSlope := (-5517543811986433 / 5000000000000000 : ℚ)
  oldCenter := (3112557313360057 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1528
  oldPieces := [piece_777]
}

noncomputable def cell_11865 : Cell := { cellDefaults with
  domain := ⟨(131150000000000011 / 200000000000000000 : ℚ), (262350000000000017 / 400000000000000000 : ℚ)⟩
  r := (10560931311959 / 20000000000000 : ℚ)
  w := (13677950284459 / 10000000000000 : ℚ)
  center := (524650000000000039 / 800000000000000000 : ℚ)
  supportValue := (3111178714502907 / 10000000000000000 : ℚ)
  supportSlope := (-275562521276723 / 250000000000000 : ℚ)
  oldCenter := (3111178714502907 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1528
  oldPieces := [piece_777]
}

noncomputable def cell_11866 : Cell := { cellDefaults with
  domain := ⟨(262350000000000017 / 400000000000000000 : ℚ), (65600000000000003 / 100000000000000000 : ℚ)⟩
  r := (10560931311959 / 20000000000000 : ℚ)
  w := (13677950284459 / 10000000000000 : ℚ)
  center := (524750000000000029 / 800000000000000000 : ℚ)
  supportValue := (3109803534265421 / 10000000000000000 : ℚ)
  supportSlope := (-1102163587121229 / 1000000000000000 : ℚ)
  oldCenter := (3109803534265421 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1528
  oldLo := (621 / 2000 : ℚ)
  oldPieces := [piece_776, piece_777]
}

noncomputable def cell_11867 : Cell := { cellDefaults with
  domain := ⟨(65600000000000003 / 100000000000000000 : ℚ), (262450000000000017 / 400000000000000000 : ℚ)⟩
  r := (52780456471537 / 100000000000000 : ℚ)
  w := (13675906569523 / 10000000000000 : ℚ)
  center := (524850000000000029 / 800000000000000000 : ℚ)
  supportValue := (1555604332038049 / 5000000000000000 : ℚ)
  supportSlope := (-2203558879321001 / 2000000000000000 : ℚ)
  oldCenter := (1555604332038049 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1529
  oldPieces := [piece_777]
}

noncomputable def cell_11868 : Cell := { cellDefaults with
  domain := ⟨(262450000000000017 / 400000000000000000 : ℚ), (131250000000000011 / 200000000000000000 : ℚ)⟩
  r := (52780456471537 / 100000000000000 : ℚ)
  w := (13675906569523 / 10000000000000 : ℚ)
  center := (524950000000000039 / 800000000000000000 : ℚ)
  supportValue := (3109834121805333 / 10000000000000000 : ℚ)
  supportSlope := (-1377066907620601 / 1250000000000000 : ℚ)
  oldCenter := (3109834121805333 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1529
  oldLo := (621 / 2000 : ℚ)
  oldPieces := [piece_776, piece_777]
}

noncomputable def cell_11869 : Cell := { cellDefaults with
  domain := ⟨(131250000000000011 / 200000000000000000 : ℚ), (262550000000000027 / 400000000000000000 : ℚ)⟩
  r := (52780456471537 / 100000000000000 : ℚ)
  w := (13675906569523 / 10000000000000 : ℚ)
  center := (525050000000000049 / 800000000000000000 : ℚ)
  supportValue := (3108454811044999 / 10000000000000000 : ℚ)
  supportSlope := (-440430183696661 / 400000000000000 : ℚ)
  oldCenter := (3108454811044999 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1529
  oldLo := (621 / 2000 : ℚ)
  oldHi := (311 / 1000 : ℚ)
  oldPieces := [piece_776]
}

noncomputable def cell_11870 : Cell := { cellDefaults with
  domain := ⟨(262550000000000027 / 400000000000000000 : ℚ), (8206250000000001 / 12500000000000000 : ℚ)⟩
  r := (52780456471537 / 100000000000000 : ℚ)
  w := (13675906569523 / 10000000000000 : ℚ)
  center := (525150000000000059 / 800000000000000000 : ℚ)
  supportValue := (31070792537674913 / 100000000000000000 : ℚ)
  supportSlope := (-2199633731464481 / 2000000000000000 : ℚ)
  oldCenter := (31070792537674913 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1529
  oldLo := (621 / 2000 : ℚ)
  oldHi := (311 / 1000 : ℚ)
  oldPieces := [piece_776]
}

noncomputable def cell_11871 : Cell := { cellDefaults with
  domain := ⟨(8206250000000001 / 12500000000000000 : ℚ), (262650000000000027 / 400000000000000000 : ℚ)⟩
  r := (52756279918003 / 100000000000000 : ℚ)
  w := (854616506103 / 625000000000 : ℚ)
  center := (525250000000000059 / 800000000000000000 : ℚ)
  supportValue := (388560680756217 / 1250000000000000 : ℚ)
  supportSlope := (-5503031825196397 / 5000000000000000 : ℚ)
  oldCenter := (388560680756217 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1530
  oldLo := (621 / 2000 : ℚ)
  oldHi := (311 / 1000 : ℚ)
  oldPieces := [piece_776]
}

noncomputable def cell_11872 : Cell := { cellDefaults with
  domain := ⟨(262650000000000027 / 400000000000000000 : ℚ), (131350000000000011 / 200000000000000000 : ℚ)⟩
  r := (52756279918003 / 100000000000000 : ℚ)
  w := (854616506103 / 625000000000 : ℚ)
  center := (525350000000000049 / 800000000000000000 : ℚ)
  supportValue := (6214220948990633 / 20000000000000000 : ℚ)
  supportSlope := (-1099348801652521 / 1000000000000000 : ℚ)
  oldCenter := (6214220948990633 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1530
  oldLo := (621 / 2000 : ℚ)
  oldHi := (311 / 1000 : ℚ)
  oldPieces := [piece_776]
}

noncomputable def cell_11873 : Cell := { cellDefaults with
  domain := ⟨(131350000000000011 / 200000000000000000 : ℚ), (262750000000000017 / 400000000000000000 : ℚ)⟩
  r := (52756279918003 / 100000000000000 : ℚ)
  w := (854616506103 / 625000000000 : ℚ)
  center := (525450000000000039 / 800000000000000000 : ℚ)
  supportValue := (31057370715522153 / 100000000000000000 : ℚ)
  supportSlope := (-1098096578688089 / 1000000000000000 : ℚ)
  oldCenter := (31057370715522153 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1530
  oldLo := (621 / 2000 : ℚ)
  oldHi := (311 / 1000 : ℚ)
  oldPieces := [piece_776]
}

noncomputable def cell_11874 : Cell := { cellDefaults with
  domain := ⟨(262750000000000017 / 400000000000000000 : ℚ), (65700000000000003 / 100000000000000000 : ℚ)⟩
  r := (52756279918003 / 100000000000000 : ℚ)
  w := (854616506103 / 625000000000 : ℚ)
  center := (525550000000000029 / 800000000000000000 : ℚ)
  supportValue := (1552183177102457 / 5000000000000000 : ℚ)
  supportSlope := (-5492953666919591 / 5000000000000000 : ℚ)
  oldCenter := (1552183177102457 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1530
  oldLo := (31 / 100 : ℚ)
  oldHi := (311 / 1000 : ℚ)
  oldPieces := [piece_775, piece_776]
}

noncomputable def cell_11875 : Cell := { cellDefaults with
  domain := ⟨(65700000000000003 / 100000000000000000 : ℚ), (657094972067039 / 1000000000000000 : ℚ)⟩
  center := (131409497206703903 / 200000000000000000 : ℚ)
  supportValue := (3105930856509431 / 10000000000000000 : ℚ)
  supportSlope := (-10977775852604827 / 10000000000000000 : ℚ)
  oldCenter := (3105930856509431 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1531
  oldLo := (621 / 2000 : ℚ)
  oldHi := (311 / 1000 : ℚ)
  oldPieces := [piece_776]
}

noncomputable def cell_11876 : Cell := { cellDefaults with
  domain := ⟨(657094972067039 / 1000000000000000 : ℚ), (65719622905027927 / 100000000000000000 : ℚ)⟩
  center := (131429120111731827 / 200000000000000000 : ℚ)
  supportValue := (3104856188458799 / 10000000000000000 : ℚ)
  supportSlope := (-10979426774982721 / 10000000000000000 : ℚ)
  oldCenter := (3104856188458799 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1532
  oldLo := (31 / 100 : ℚ)
  oldHi := (311 / 1000 : ℚ)
  oldPieces := [piece_775, piece_776]
}

noncomputable def cell_11877 : Cell := { cellDefaults with
  domain := ⟨(65719622905027927 / 100000000000000000 : ℚ), (32864874301675977 / 50000000000000000 : ℚ)⟩
  center := (131449371508379881 / 200000000000000000 : ℚ)
  supportValue := (775935527822527 / 2500000000000000 : ℚ)
  supportSlope := (-2743976882912007 / 2500000000000000 : ℚ)
  oldCenter := (775935527822527 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1532
  oldLo := (31 / 100 : ℚ)
  oldHi := (621 / 2000 : ℚ)
  oldPieces := [piece_775]
}

noncomputable def cell_11878 : Cell := { cellDefaults with
  domain := ⟨(32864874301675977 / 50000000000000000 : ℚ), (65739874301675981 / 100000000000000000 : ℚ)⟩
  center := (26293924581005587 / 40000000000000000 : ℚ)
  supportValue := (15513156194662747 / 50000000000000000 : ℚ)
  supportSlope := (-2741434758226447 / 2500000000000000 : ℚ)
  oldCenter := (15513156194662747 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1532
  oldLo := (31 / 100 : ℚ)
  oldHi := (621 / 2000 : ℚ)
  oldPieces := [piece_775]
}

noncomputable def cell_11879 : Cell := { cellDefaults with
  domain := ⟨(65739874301675981 / 100000000000000000 : ℚ), (8218750000000001 / 12500000000000000 : ℚ)⟩
  center := (131489874301675989 / 200000000000000000 : ℚ)
  supportValue := (6203042788859049 / 20000000000000000 : ℚ)
  supportSlope := (-2191121118123017 / 2000000000000000 : ℚ)
  oldCenter := (6203042788859049 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1532
  oldLo := (31 / 100 : ℚ)
  oldHi := (621 / 2000 : ℚ)
  oldPieces := [piece_775]
}

noncomputable def cell_11880 : Cell := { cellDefaults with
  domain := ⟨(8218750000000001 / 12500000000000000 : ℚ), (263050000000000027 / 400000000000000000 : ℚ)⟩
  r := (10541602462031 / 20000000000000 : ℚ)
  w := (2733961282607 / 2000000000000 : ℚ)
  center := (526050000000000059 / 800000000000000000 : ℚ)
  supportValue := (3103049995945989 / 10000000000000000 : ℚ)
  supportSlope := (-8771701321991 / 8000000000000 : ℚ)
  oldCenter := (3103049995945989 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1533
  oldLo := (31 / 100 : ℚ)
  oldHi := (621 / 2000 : ℚ)
  oldPieces := [piece_775]
}

noncomputable def cell_11881 : Cell := { cellDefaults with
  domain := ⟨(263050000000000027 / 400000000000000000 : ℚ), (131550000000000011 / 200000000000000000 : ℚ)⟩
  r := (10541602462031 / 20000000000000 : ℚ)
  w := (2733961282607 / 2000000000000 : ℚ)
  center := (526150000000000049 / 800000000000000000 : ℚ)
  supportValue := (7754200499680139 / 25000000000000000 : ℚ)
  supportSlope := (-547605863793487 / 500000000000000 : ℚ)
  oldCenter := (7754200499680139 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1533
  oldLo := (31 / 100 : ℚ)
  oldHi := (621 / 2000 : ℚ)
  oldPieces := [piece_775]
}

noncomputable def cell_11882 : Cell := { cellDefaults with
  domain := ⟨(131550000000000011 / 200000000000000000 : ℚ), (263150000000000017 / 400000000000000000 : ℚ)⟩
  r := (10541602462031 / 20000000000000 : ℚ)
  w := (2733961282607 / 2000000000000 : ℚ)
  center := (526250000000000039 / 800000000000000000 : ℚ)
  supportValue := (3100314134363891 / 10000000000000000 : ℚ)
  supportSlope := (-10944598879741847 / 10000000000000000 : ℚ)
  oldCenter := (3100314134363891 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1533
  oldLo := (619 / 2000 : ℚ)
  oldHi := (621 / 2000 : ℚ)
  oldPieces := [piece_774, piece_775]
}

noncomputable def cell_11883 : Cell := { cellDefaults with
  domain := ⟨(263150000000000017 / 400000000000000000 : ℚ), (65800000000000003 / 100000000000000000 : ℚ)⟩
  r := (10541602462031 / 20000000000000 : ℚ)
  w := (2733961282607 / 2000000000000 : ℚ)
  center := (526350000000000029 / 800000000000000000 : ℚ)
  supportValue := (619788707288843 / 2000000000000000 : ℚ)
  supportSlope := (-5472635879791291 / 5000000000000000 : ℚ)
  oldCenter := (619788707288843 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1533
  oldLo := (619 / 2000 : ℚ)
  oldHi := (31 / 100 : ℚ)
  oldPieces := [piece_774]
}

noncomputable def cell_11884 : Cell := { cellDefaults with
  domain := ⟨(65800000000000003 / 100000000000000000 : ℚ), (131625000000000009 / 200000000000000000 : ℚ)⟩
  r := (6585489775687 / 12500000000000 : ℚ)
  w := (683389366859 / 500000000000 : ℚ)
  center := (52645000000000003 / 80000000000000000 : ℚ)
  supportValue := (155017084013961 / 500000000000000 : ℚ)
  supportSlope := (-10939554719805253 / 10000000000000000 : ℚ)
  oldCenter := (155017084013961 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1534
  oldLo := (619 / 2000 : ℚ)
  oldHi := (621 / 2000 : ℚ)
  oldPieces := [piece_774, piece_775]
}

noncomputable def cell_11885 : Cell := { cellDefaults with
  domain := ⟨(131625000000000009 / 200000000000000000 : ℚ), (32912500000000003 / 50000000000000000 : ℚ)⟩
  r := (6585489775687 / 12500000000000 : ℚ)
  w := (683389366859 / 500000000000 : ℚ)
  center := (263275000000000021 / 400000000000000000 : ℚ)
  supportValue := (30989717125127747 / 100000000000000000 : ℚ)
  supportSlope := (-2188120364898531 / 2000000000000000 : ℚ)
  oldCenter := (30989717125127747 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1534
  oldLo := (619 / 2000 : ℚ)
  oldHi := (31 / 100 : ℚ)
  oldPieces := [piece_774]
}

noncomputable def cell_11886 : Cell := { cellDefaults with
  domain := ⟨(32912500000000003 / 50000000000000000 : ℚ), (26335000000000003 / 40000000000000000 : ℚ)⟩
  r := (6585489775687 / 12500000000000 : ℚ)
  w := (683389366859 / 500000000000 : ℚ)
  center := (263325000000000027 / 400000000000000000 : ℚ)
  supportValue := (30976049192913163 / 100000000000000000 : ℚ)
  supportSlope := (-218561930117263 / 200000000000000 : ℚ)
  oldCenter := (30976049192913163 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1534
  oldLo := (619 / 2000 : ℚ)
  oldHi := (31 / 100 : ℚ)
  oldPieces := [piece_774]
}

noncomputable def cell_11887 : Cell := { cellDefaults with
  domain := ⟨(26335000000000003 / 40000000000000000 : ℚ), (65850000000000009 / 100000000000000000 : ℚ)⟩
  r := (6585489775687 / 12500000000000 : ℚ)
  w := (683389366859 / 500000000000 : ℚ)
  center := (263375000000000033 / 400000000000000000 : ℚ)
  supportValue := (1548119842951939 / 5000000000000000 : ℚ)
  supportSlope := (-2728911099458503 / 2500000000000000 : ℚ)
  oldCenter := (1548119842951939 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1534
  oldLo := (619 / 2000 : ℚ)
  oldHi := (31 / 100 : ℚ)
  oldPieces := [piece_774]
}

noncomputable def cell_11888 : Cell := { cellDefaults with
  domain := ⟨(65850000000000009 / 100000000000000000 : ℚ), (26345000000000003 / 40000000000000000 : ℚ)⟩
  r := (26329926222631 / 50000000000000 : ℚ)
  w := (6832890012731 / 5000000000000 : ℚ)
  center := (263425000000000033 / 400000000000000000 : ℚ)
  supportValue := (15488153004335087 / 50000000000000000 : ℚ)
  supportSlope := (-2730853990831389 / 2500000000000000 : ℚ)
  oldCenter := (15488153004335087 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1535
  oldLo := (619 / 2000 : ℚ)
  oldHi := (31 / 100 : ℚ)
  oldPieces := [piece_774]
}

noncomputable def cell_11889 : Cell := { cellDefaults with
  domain := ⟨(26345000000000003 / 40000000000000000 : ℚ), (32937500000000003 / 50000000000000000 : ℚ)⟩
  r := (26329926222631 / 50000000000000 : ℚ)
  w := (6832890012731 / 5000000000000 : ℚ)
  center := (263475000000000027 / 400000000000000000 : ℚ)
  supportValue := (30962659519017477 / 100000000000000000 : ℚ)
  supportSlope := (-1091097417223483 / 1000000000000000 : ℚ)
  oldCenter := (30962659519017477 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1535
  oldLo := (619 / 2000 : ℚ)
  oldHi := (31 / 100 : ℚ)
  oldPieces := [piece_774]
}

noncomputable def cell_11890 : Cell := { cellDefaults with
  domain := ⟨(32937500000000003 / 50000000000000000 : ℚ), (131775000000000009 / 200000000000000000 : ℚ)⟩
  r := (26329926222631 / 50000000000000 : ℚ)
  w := (6832890012731 / 5000000000000 : ℚ)
  center := (263525000000000021 / 400000000000000000 : ℚ)
  supportValue := (3094904858194853 / 10000000000000000 : ℚ)
  supportSlope := (-10908928831840001 / 10000000000000000 : ℚ)
  oldCenter := (3094904858194853 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1535
  oldLo := (309 / 1000 : ℚ)
  oldHi := (31 / 100 : ℚ)
  oldPieces := [piece_773, piece_774]
}

noncomputable def cell_11891 : Cell := { cellDefaults with
  domain := ⟨(131775000000000009 / 200000000000000000 : ℚ), (65900000000000003 / 100000000000000000 : ℚ)⟩
  r := (26329926222631 / 50000000000000 : ℚ)
  w := (6832890012731 / 5000000000000 : ℚ)
  center := (52715000000000003 / 80000000000000000 : ℚ)
  supportValue := (24168272542403 / 78125000000000 : ℚ)
  supportSlope := (-2180840849176397 / 2000000000000000 : ℚ)
  oldCenter := (24168272542403 / 78125000000000 : ℚ)
  newCoefficients := coefficients_1535
  oldLo := (309 / 1000 : ℚ)
  oldHi := (619 / 2000 : ℚ)
  oldPieces := [piece_773]
}

noncomputable def cell_11892 : Cell := { cellDefaults with
  domain := ⟨(65900000000000003 / 100000000000000000 : ℚ), (131825000000000009 / 200000000000000000 : ℚ)⟩
  r := (52635811297529 / 100000000000000 : ℚ)
  w := (13663773296733 / 10000000000000 : ℚ)
  center := (52725000000000003 / 80000000000000000 : ℚ)
  supportValue := (6189862437325453 / 20000000000000000 : ℚ)
  supportSlope := (-10903915848742087 / 10000000000000000 : ℚ)
  oldCenter := (6189862437325453 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1536
  oldLo := (309 / 1000 : ℚ)
  oldHi := (31 / 100 : ℚ)
  oldPieces := [piece_773, piece_774]
}

noncomputable def cell_11893 : Cell := { cellDefaults with
  domain := ⟨(131825000000000009 / 200000000000000000 : ℚ), (32962500000000003 / 50000000000000000 : ℚ)⟩
  r := (52635811297529 / 100000000000000 : ℚ)
  w := (13663773296733 / 10000000000000 : ℚ)
  center := (263675000000000021 / 400000000000000000 : ℚ)
  supportValue := (386695728551643 / 1250000000000000 : ℚ)
  supportSlope := (-10899549108439401 / 10000000000000000 : ℚ)
  oldCenter := (386695728551643 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1536
  oldLo := (309 / 1000 : ℚ)
  oldHi := (619 / 2000 : ℚ)
  oldPieces := [piece_773]
}

noncomputable def cell_11894 : Cell := { cellDefaults with
  domain := ⟨(32962500000000003 / 50000000000000000 : ℚ), (26375000000000003 / 40000000000000000 : ℚ)⟩
  r := (52635811297529 / 100000000000000 : ℚ)
  w := (13663773296733 / 10000000000000 : ℚ)
  center := (263725000000000027 / 400000000000000000 : ℚ)
  supportValue := (1546102081227363 / 5000000000000000 : ℚ)
  supportSlope := (-10887112955203309 / 10000000000000000 : ℚ)
  oldCenter := (1546102081227363 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1536
  oldLo := (309 / 1000 : ℚ)
  oldHi := (619 / 2000 : ℚ)
  oldPieces := [piece_773]
}

noncomputable def cell_11895 : Cell := { cellDefaults with
  domain := ⟨(26375000000000003 / 40000000000000000 : ℚ), (65950000000000009 / 100000000000000000 : ℚ)⟩
  r := (52635811297529 / 100000000000000 : ℚ)
  w := (13663773296733 / 10000000000000 : ℚ)
  center := (263775000000000033 / 400000000000000000 : ℚ)
  supportValue := (6181688095410559 / 20000000000000000 : ℚ)
  supportSlope := (-10874729683177737 / 10000000000000000 : ℚ)
  oldCenter := (6181688095410559 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1536
  oldLo := (309 / 1000 : ℚ)
  oldHi := (619 / 2000 : ℚ)
  oldPieces := [piece_773]
}

noncomputable def cell_11896 : Cell := { cellDefaults with
  domain := ⟨(65950000000000009 / 100000000000000000 : ℚ), (26385000000000003 / 40000000000000000 : ℚ)⟩
  r := (52611800805897 / 100000000000000 : ℚ)
  w := (13661782473549 / 10000000000000 : ℚ)
  center := (263825000000000033 / 400000000000000000 : ℚ)
  supportValue := (6184455151428141 / 20000000000000000 : ℚ)
  supportSlope := (-5441219551887797 / 5000000000000000 : ℚ)
  oldCenter := (6184455151428141 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1537
  oldLo := (309 / 1000 : ℚ)
  oldHi := (619 / 2000 : ℚ)
  oldPieces := [piece_773]
}

noncomputable def cell_11897 : Cell := { cellDefaults with
  domain := ⟨(26385000000000003 / 40000000000000000 : ℚ), (32987500000000003 / 50000000000000000 : ℚ)⟩
  r := (52611800805897 / 100000000000000 : ℚ)
  w := (13661782473549 / 10000000000000 : ℚ)
  center := (263875000000000027 / 400000000000000000 : ℚ)
  supportValue := (7727170111372611 / 25000000000000000 : ℚ)
  supportSlope := (-2174013234070221 / 2000000000000000 : ℚ)
  oldCenter := (7727170111372611 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1537
  oldLo := (309 / 1000 : ℚ)
  oldHi := (619 / 2000 : ℚ)
  oldPieces := [piece_773]
}

noncomputable def cell_11898 : Cell := { cellDefaults with
  domain := ⟨(32987500000000003 / 50000000000000000 : ℚ), (131975000000000009 / 200000000000000000 : ℚ)⟩
  r := (52611800805897 / 100000000000000 : ℚ)
  w := (13661782473549 / 10000000000000 : ℚ)
  center := (263925000000000021 / 400000000000000000 : ℚ)
  supportValue := (1544755700774829 / 5000000000000000 : ℚ)
  supportSlope := (-10873298152455273 / 10000000000000000 : ℚ)
  oldCenter := (1544755700774829 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1537
  oldLo := (15432960893854747 / 50000000000000000 : ℚ)
  oldHi := (619 / 2000 : ℚ)
  oldPieces := [piece_772, piece_773]
}

noncomputable def cell_11899 : Cell := { cellDefaults with
  domain := ⟨(131975000000000009 / 200000000000000000 : ℚ), (66000000000000003 / 100000000000000000 : ℚ)⟩
  r := (52611800805897 / 100000000000000 : ℚ)
  w := (13661782473549 / 10000000000000 : ℚ)
  center := (52795000000000003 / 80000000000000000 : ℚ)
  supportValue := (1544075270358669 / 5000000000000000 : ℚ)
  supportSlope := (-10863369384851633 / 10000000000000000 : ℚ)
  oldCenter := (1544075270358669 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1537
  oldLo := (15432960893854747 / 50000000000000000 : ℚ)
  oldHi := (309 / 1000 : ℚ)
  oldPieces := [piece_772]
}

theorem check_11850 : cell_11850.check = true := by
  decide +kernel

theorem check_11851 : cell_11851.check = true := by
  decide +kernel

theorem check_11852 : cell_11852.check = true := by
  decide +kernel

theorem check_11853 : cell_11853.check = true := by
  decide +kernel

theorem check_11854 : cell_11854.check = true := by
  decide +kernel

theorem check_11855 : cell_11855.check = true := by
  decide +kernel

theorem check_11856 : cell_11856.check = true := by
  decide +kernel

theorem check_11857 : cell_11857.check = true := by
  decide +kernel

theorem check_11858 : cell_11858.check = true := by
  decide +kernel

theorem check_11859 : cell_11859.check = true := by
  decide +kernel

theorem check_11860 : cell_11860.check = true := by
  decide +kernel

theorem check_11861 : cell_11861.check = true := by
  decide +kernel

theorem check_11862 : cell_11862.check = true := by
  decide +kernel

theorem check_11863 : cell_11863.check = true := by
  decide +kernel

theorem check_11864 : cell_11864.check = true := by
  decide +kernel

theorem check_11865 : cell_11865.check = true := by
  decide +kernel

theorem check_11866 : cell_11866.check = true := by
  decide +kernel

theorem check_11867 : cell_11867.check = true := by
  decide +kernel

theorem check_11868 : cell_11868.check = true := by
  decide +kernel

theorem check_11869 : cell_11869.check = true := by
  decide +kernel

theorem check_11870 : cell_11870.check = true := by
  decide +kernel

theorem check_11871 : cell_11871.check = true := by
  decide +kernel

theorem check_11872 : cell_11872.check = true := by
  decide +kernel

theorem check_11873 : cell_11873.check = true := by
  decide +kernel

theorem check_11874 : cell_11874.check = true := by
  decide +kernel

theorem check_11875 : cell_11875.check = true := by
  decide +kernel

theorem check_11876 : cell_11876.check = true := by
  decide +kernel

theorem check_11877 : cell_11877.check = true := by
  decide +kernel

theorem check_11878 : cell_11878.check = true := by
  decide +kernel

theorem check_11879 : cell_11879.check = true := by
  decide +kernel

theorem check_11880 : cell_11880.check = true := by
  decide +kernel

theorem check_11881 : cell_11881.check = true := by
  decide +kernel

theorem check_11882 : cell_11882.check = true := by
  decide +kernel

theorem check_11883 : cell_11883.check = true := by
  decide +kernel

theorem check_11884 : cell_11884.check = true := by
  decide +kernel

theorem check_11885 : cell_11885.check = true := by
  decide +kernel

theorem check_11886 : cell_11886.check = true := by
  decide +kernel

theorem check_11887 : cell_11887.check = true := by
  decide +kernel

theorem check_11888 : cell_11888.check = true := by
  decide +kernel

theorem check_11889 : cell_11889.check = true := by
  decide +kernel

theorem check_11890 : cell_11890.check = true := by
  decide +kernel

theorem check_11891 : cell_11891.check = true := by
  decide +kernel

theorem check_11892 : cell_11892.check = true := by
  decide +kernel

theorem check_11893 : cell_11893.check = true := by
  decide +kernel

theorem check_11894 : cell_11894.check = true := by
  decide +kernel

theorem check_11895 : cell_11895.check = true := by
  decide +kernel

theorem check_11896 : cell_11896.check = true := by
  decide +kernel

theorem check_11897 : cell_11897.check = true := by
  decide +kernel

theorem check_11898 : cell_11898.check = true := by
  decide +kernel

theorem check_11899 : cell_11899.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11850, cell_11851, cell_11852, cell_11853, cell_11854, cell_11855, cell_11856, cell_11857, cell_11858, cell_11859, cell_11860, cell_11861, cell_11862, cell_11863, cell_11864, cell_11865, cell_11866, cell_11867, cell_11868, cell_11869, cell_11870, cell_11871, cell_11872, cell_11873, cell_11874, cell_11875, cell_11876, cell_11877, cell_11878, cell_11879, cell_11880, cell_11881, cell_11882, cell_11883, cell_11884, cell_11885, cell_11886, cell_11887, cell_11888, cell_11889, cell_11890, cell_11891, cell_11892, cell_11893, cell_11894, cell_11895, cell_11896, cell_11897, cell_11898, cell_11899]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11850, check_11851, check_11852, check_11853, check_11854, check_11855, check_11856, check_11857, check_11858, check_11859, check_11860, check_11861, check_11862, check_11863, check_11864, check_11865, check_11866, check_11867, check_11868, check_11869, check_11870, check_11871, check_11872, check_11873, check_11874, check_11875, check_11876, check_11877, check_11878, check_11879, check_11880, check_11881, check_11882, check_11883, check_11884, check_11885, check_11886, check_11887, check_11888, check_11889, check_11890, check_11891, check_11892, check_11893, check_11894, check_11895, check_11896, check_11897, check_11898, check_11899, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0237

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0237
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0237
open AnalyticBounds.ExpressionCertificate

theorem linked_11850 : Linked cell_11850 pieces := by
  link_source cell_11850 with piece_1524 using piece_1524_mem, piece_779_mem

theorem linked_11851 : Linked cell_11851 pieces := by
  link_source cell_11851 with piece_1525 using piece_1525_mem, piece_779_mem

theorem linked_11852 : Linked cell_11852 pieces := by
  link_source cell_11852 with piece_1525 using piece_1525_mem, piece_779_mem

theorem linked_11853 : Linked cell_11853 pieces := by
  link_source cell_11853 with piece_1525 using piece_1525_mem, ⟨piece_778_mem, piece_779_mem⟩

theorem linked_11854 : Linked cell_11854 pieces := by
  link_source cell_11854 with piece_1525 using piece_1525_mem, piece_778_mem

theorem linked_11855 : Linked cell_11855 pieces := by
  link_source cell_11855 with piece_1526 using piece_1526_mem, ⟨piece_778_mem, piece_779_mem⟩

theorem linked_11856 : Linked cell_11856 pieces := by
  link_source cell_11856 with piece_1526 using piece_1526_mem, piece_778_mem

theorem linked_11857 : Linked cell_11857 pieces := by
  link_source cell_11857 with piece_1526 using piece_1526_mem, piece_778_mem

theorem linked_11858 : Linked cell_11858 pieces := by
  link_source cell_11858 with piece_1526 using piece_1526_mem, ⟨piece_777_mem, piece_778_mem⟩

theorem linked_11859 : Linked cell_11859 pieces := by
  link_source cell_11859 with piece_1527 using piece_1527_mem, piece_778_mem

theorem linked_11860 : Linked cell_11860 pieces := by
  link_source cell_11860 with piece_1527 using piece_1527_mem, ⟨piece_777_mem, piece_778_mem⟩

theorem linked_11861 : Linked cell_11861 pieces := by
  link_source cell_11861 with piece_1527 using piece_1527_mem, piece_777_mem

theorem linked_11862 : Linked cell_11862 pieces := by
  link_source cell_11862 with piece_1527 using piece_1527_mem, piece_777_mem

theorem linked_11863 : Linked cell_11863 pieces := by
  link_source cell_11863 with piece_1528 using piece_1528_mem, piece_777_mem

theorem linked_11864 : Linked cell_11864 pieces := by
  link_source cell_11864 with piece_1528 using piece_1528_mem, piece_777_mem

theorem linked_11865 : Linked cell_11865 pieces := by
  link_source cell_11865 with piece_1528 using piece_1528_mem, piece_777_mem

theorem linked_11866 : Linked cell_11866 pieces := by
  link_source cell_11866 with piece_1528 using piece_1528_mem, ⟨piece_776_mem, piece_777_mem⟩

theorem linked_11867 : Linked cell_11867 pieces := by
  link_source cell_11867 with piece_1529 using piece_1529_mem, piece_777_mem

theorem linked_11868 : Linked cell_11868 pieces := by
  link_source cell_11868 with piece_1529 using piece_1529_mem, ⟨piece_776_mem, piece_777_mem⟩

theorem linked_11869 : Linked cell_11869 pieces := by
  link_source cell_11869 with piece_1529 using piece_1529_mem, piece_776_mem

theorem linked_11870 : Linked cell_11870 pieces := by
  link_source cell_11870 with piece_1529 using piece_1529_mem, piece_776_mem

theorem linked_11871 : Linked cell_11871 pieces := by
  link_source cell_11871 with piece_1530 using piece_1530_mem, piece_776_mem

theorem linked_11872 : Linked cell_11872 pieces := by
  link_source cell_11872 with piece_1530 using piece_1530_mem, piece_776_mem

theorem linked_11873 : Linked cell_11873 pieces := by
  link_source cell_11873 with piece_1530 using piece_1530_mem, piece_776_mem

theorem linked_11874 : Linked cell_11874 pieces := by
  link_source cell_11874 with piece_1530 using piece_1530_mem, ⟨piece_775_mem, piece_776_mem⟩

theorem linked_11875 : Linked cell_11875 pieces := by
  link_source cell_11875 with piece_1531 using piece_1531_mem, piece_776_mem

theorem linked_11876 : Linked cell_11876 pieces := by
  link_source cell_11876 with piece_1532 using piece_1532_mem, ⟨piece_775_mem, piece_776_mem⟩

theorem linked_11877 : Linked cell_11877 pieces := by
  link_source cell_11877 with piece_1532 using piece_1532_mem, piece_775_mem

theorem linked_11878 : Linked cell_11878 pieces := by
  link_source cell_11878 with piece_1532 using piece_1532_mem, piece_775_mem

theorem linked_11879 : Linked cell_11879 pieces := by
  link_source cell_11879 with piece_1532 using piece_1532_mem, piece_775_mem

theorem linked_11880 : Linked cell_11880 pieces := by
  link_source cell_11880 with piece_1533 using piece_1533_mem, piece_775_mem

theorem linked_11881 : Linked cell_11881 pieces := by
  link_source cell_11881 with piece_1533 using piece_1533_mem, piece_775_mem

theorem linked_11882 : Linked cell_11882 pieces := by
  link_source cell_11882 with piece_1533 using piece_1533_mem, ⟨piece_774_mem, piece_775_mem⟩

theorem linked_11883 : Linked cell_11883 pieces := by
  link_source cell_11883 with piece_1533 using piece_1533_mem, piece_774_mem

theorem linked_11884 : Linked cell_11884 pieces := by
  link_source cell_11884 with piece_1534 using piece_1534_mem, ⟨piece_774_mem, piece_775_mem⟩

theorem linked_11885 : Linked cell_11885 pieces := by
  link_source cell_11885 with piece_1534 using piece_1534_mem, piece_774_mem

theorem linked_11886 : Linked cell_11886 pieces := by
  link_source cell_11886 with piece_1534 using piece_1534_mem, piece_774_mem

theorem linked_11887 : Linked cell_11887 pieces := by
  link_source cell_11887 with piece_1534 using piece_1534_mem, piece_774_mem

theorem linked_11888 : Linked cell_11888 pieces := by
  link_source cell_11888 with piece_1535 using piece_1535_mem, piece_774_mem

theorem linked_11889 : Linked cell_11889 pieces := by
  link_source cell_11889 with piece_1535 using piece_1535_mem, piece_774_mem

theorem linked_11890 : Linked cell_11890 pieces := by
  link_source cell_11890 with piece_1535 using piece_1535_mem, ⟨piece_773_mem, piece_774_mem⟩

theorem linked_11891 : Linked cell_11891 pieces := by
  link_source cell_11891 with piece_1535 using piece_1535_mem, piece_773_mem

theorem linked_11892 : Linked cell_11892 pieces := by
  link_source cell_11892 with piece_1536 using piece_1536_mem, ⟨piece_773_mem, piece_774_mem⟩

theorem linked_11893 : Linked cell_11893 pieces := by
  link_source cell_11893 with piece_1536 using piece_1536_mem, piece_773_mem

theorem linked_11894 : Linked cell_11894 pieces := by
  link_source cell_11894 with piece_1536 using piece_1536_mem, piece_773_mem

theorem linked_11895 : Linked cell_11895 pieces := by
  link_source cell_11895 with piece_1536 using piece_1536_mem, piece_773_mem

theorem linked_11896 : Linked cell_11896 pieces := by
  link_source cell_11896 with piece_1537 using piece_1537_mem, piece_773_mem

theorem linked_11897 : Linked cell_11897 pieces := by
  link_source cell_11897 with piece_1537 using piece_1537_mem, piece_773_mem

theorem linked_11898 : Linked cell_11898 pieces := by
  link_source cell_11898 with piece_1537 using piece_1537_mem, ⟨piece_772_mem, piece_773_mem⟩

theorem linked_11899 : Linked cell_11899 pieces := by
  link_source cell_11899 with piece_1537 using piece_1537_mem, piece_772_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0237.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0237.cells,List.forall_mem_cons]
  exact ⟨linked_11850, linked_11851, linked_11852, linked_11853, linked_11854, linked_11855, linked_11856, linked_11857, linked_11858, linked_11859, linked_11860, linked_11861, linked_11862, linked_11863, linked_11864, linked_11865, linked_11866, linked_11867, linked_11868, linked_11869, linked_11870, linked_11871, linked_11872, linked_11873, linked_11874, linked_11875, linked_11876, linked_11877, linked_11878, linked_11879, linked_11880, linked_11881, linked_11882, linked_11883, linked_11884, linked_11885, linked_11886, linked_11887, linked_11888, linked_11889, linked_11890, linked_11891, linked_11892, linked_11893, linked_11894, linked_11895, linked_11896, linked_11897, linked_11898, linked_11899, by simp⟩

theorem covered : covers (261550000000000017 / 400000000000000000 : ℚ) (66000000000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0237.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0237
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0238
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(66000000000000003 / 100000000000000000 : ℚ), (264050000000000007 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (26234143397849 / 50000000000000 : ℚ)
  w := (13649966527063 / 10000000000000 : ℚ)
  center := (528050000000000019 / 800000000000000000 : ℚ)
  supportValue := (1544768074300887 / 5000000000000000 : ℚ)
  supportSlope := (-10868317794693303 / 10000000000000000 : ℚ)
  oldCenter := (1544768074300887 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1538
  oldLo := (6140000000000001 / 20000000000000000 : ℚ)
  oldHi := (6150000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_768]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11900 : Cell := { cellDefaults with
  r := (3286738269369 / 6250000000000 : ℚ)
  w := (3414947531441 / 2500000000000 : ℚ)
  oldLo := (15432960893854747 / 50000000000000000 : ℚ)
  oldHi := (619 / 2000 : ℚ)
  oldPieces := [piece_772, piece_773]
}

noncomputable def cell_11901 : Cell := { cellDefaults with
  domain := ⟨(264050000000000007 / 400000000000000000 : ℚ), (132050000000000001 / 200000000000000000 : ℚ)⟩
  r := (3286738269369 / 6250000000000 : ℚ)
  w := (3414947531441 / 2500000000000 : ℚ)
  center := (528150000000000009 / 800000000000000000 : ℚ)
  supportValue := (1544087934431117 / 5000000000000000 : ℚ)
  supportSlope := (-5429362828653349 / 5000000000000000 : ℚ)
  oldCenter := (1544087934431117 / 5000000000000000 : ℚ)
  oldLo := (15432960893854747 / 50000000000000000 : ℚ)
  oldHi := (309 / 1000 : ℚ)
  oldPieces := [piece_772]
}

noncomputable def cell_11902 : Cell := { cellDefaults with
  domain := ⟨(132050000000000001 / 200000000000000000 : ℚ), (264149999999999997 / 400000000000000000 : ℚ)⟩
  r := (3286738269369 / 6250000000000 : ℚ)
  w := (3414947531441 / 2500000000000 : ℚ)
  center := (528249999999999999 / 800000000000000000 : ℚ)
  supportValue := (1543409651022167 / 5000000000000000 : ℚ)
  supportSlope := (-10846345071070491 / 10000000000000000 : ℚ)
  oldCenter := (1543409651022167 / 5000000000000000 : ℚ)
  oldLo := (617 / 2000 : ℚ)
  oldHi := (309 / 1000 : ℚ)
  oldPieces := [piece_771, piece_772]
}

noncomputable def cell_11903 : Cell := { cellDefaults with
  domain := ⟨(264149999999999997 / 400000000000000000 : ℚ), (33024999999999999 / 50000000000000000 : ℚ)⟩
  r := (3286738269369 / 6250000000000 : ℚ)
  w := (3414947531441 / 2500000000000 : ℚ)
  center := (528349999999999989 / 800000000000000000 : ℚ)
  supportValue := (771366610068577 / 2500000000000000 : ℚ)
  supportSlope := (-541843659797757 / 500000000000000 : ℚ)
  oldCenter := (771366610068577 / 2500000000000000 : ℚ)
  oldLo := (6160000000000001 / 20000000000000000 : ℚ)
  oldHi := (15432960893854747 / 50000000000000000 : ℚ)
  oldPieces := [piece_770, piece_771]
}

noncomputable def cell_11904 : Cell := { cellDefaults with
  domain := ⟨(33024999999999999 / 50000000000000000 : ℚ), (264249999999999997 / 400000000000000000 : ℚ)⟩
  r := (52563856856441 / 100000000000000 : ℚ)
  w := (13657814804633 / 10000000000000 : ℚ)
  center := (528449999999999989 / 800000000000000000 : ℚ)
  supportValue := (30868406492094297 / 100000000000000000 : ℚ)
  supportSlope := (-5420839894218501 / 5000000000000000 : ℚ)
  oldCenter := (30868406492094297 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1539
  oldLo := (617 / 2000 : ℚ)
  oldHi := (309 / 1000 : ℚ)
  oldPieces := [piece_771, piece_772]
}

noncomputable def cell_11905 : Cell := { cellDefaults with
  domain := ⟨(264249999999999997 / 400000000000000000 : ℚ), (132150000000000001 / 200000000000000000 : ℚ)⟩
  r := (52563856856441 / 100000000000000 : ℚ)
  w := (13657814804633 / 10000000000000 : ℚ)
  center := (528549999999999999 / 800000000000000000 : ℚ)
  supportValue := (1542744184983659 / 5000000000000000 : ℚ)
  supportSlope := (-10831920545760791 / 10000000000000000 : ℚ)
  oldCenter := (1542744184983659 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1539
  oldLo := (6160000000000001 / 20000000000000000 : ℚ)
  oldHi := (15432960893854747 / 50000000000000000 : ℚ)
  oldPieces := [piece_770, piece_771]
}

noncomputable def cell_11906 : Cell := { cellDefaults with
  domain := ⟨(132150000000000001 / 200000000000000000 : ℚ), (264350000000000007 / 400000000000000000 : ℚ)⟩
  r := (52563856856441 / 100000000000000 : ℚ)
  w := (13657814804633 / 10000000000000 : ℚ)
  center := (528650000000000009 / 800000000000000000 : ℚ)
  supportValue := (30841318574735943 / 100000000000000000 : ℚ)
  supportSlope := (-43340479105889 / 40000000000000 : ℚ)
  oldCenter := (30841318574735943 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1539
  oldLo := (6160000000000001 / 20000000000000000 : ℚ)
  oldHi := (617 / 2000 : ℚ)
  oldPieces := [piece_770]
}

noncomputable def cell_11907 : Cell := { cellDefaults with
  domain := ⟨(264350000000000007 / 400000000000000000 : ℚ), (66100000000000003 / 100000000000000000 : ℚ)⟩
  r := (52563856856441 / 100000000000000 : ℚ)
  w := (13657814804633 / 10000000000000 : ℚ)
  center := (528750000000000019 / 800000000000000000 : ℚ)
  supportValue := (15413891210845723 / 50000000000000000 : ℚ)
  supportSlope := (-2164546371606019 / 2000000000000000 : ℚ)
  oldCenter := (15413891210845723 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1539
  oldLo := (6160000000000001 / 20000000000000000 : ℚ)
  oldHi := (617 / 2000 : ℚ)
  oldPieces := [piece_770]
}

noncomputable def cell_11908 : Cell := { cellDefaults with
  domain := ⟨(66100000000000003 / 100000000000000000 : ℚ), (264450000000000007 / 400000000000000000 : ℚ)⟩
  r := (10507984185883 / 20000000000000 : ℚ)
  w := (13655836043331 / 10000000000000 : ℚ)
  center := (528850000000000019 / 800000000000000000 : ℚ)
  supportValue := (30841551387896193 / 100000000000000000 : ℚ)
  supportSlope := (-1083047902495801 / 1000000000000000 : ℚ)
  oldCenter := (30841551387896193 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1540
  oldLo := (6160000000000001 / 20000000000000000 : ℚ)
  oldHi := (617 / 2000 : ℚ)
  oldPieces := [piece_770]
}

noncomputable def cell_11909 : Cell := { cellDefaults with
  domain := ⟨(264450000000000007 / 400000000000000000 : ℚ), (132250000000000001 / 200000000000000000 : ℚ)⟩
  r := (10507984185883 / 20000000000000 : ℚ)
  w := (13655836043331 / 10000000000000 : ℚ)
  center := (528950000000000009 / 800000000000000000 : ℚ)
  supportValue := (15414010514667803 / 50000000000000000 : ℚ)
  supportSlope := (-3380656694291 / 3125000000000 : ℚ)
  oldCenter := (15414010514667803 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1540
  oldLo := (6160000000000001 / 20000000000000000 : ℚ)
  oldHi := (617 / 2000 : ℚ)
  oldPieces := [piece_770]
}

noncomputable def cell_11910 : Cell := { cellDefaults with
  domain := ⟨(132250000000000001 / 200000000000000000 : ℚ), (264549999999999997 / 400000000000000000 : ℚ)⟩
  r := (10507984185883 / 20000000000000 : ℚ)
  w := (13655836043331 / 10000000000000 : ℚ)
  center := (529049999999999999 / 800000000000000000 : ℚ)
  supportValue := (1925906631858049 / 6250000000000000 : ℚ)
  supportSlope := (-10805776617132081 / 10000000000000000 : ℚ)
  oldCenter := (1925906631858049 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1540
  oldLo := (6160000000000001 / 20000000000000000 : ℚ)
  oldHi := (617 / 2000 : ℚ)
  oldPieces := [piece_770]
}

noncomputable def cell_11911 : Cell := { cellDefaults with
  domain := ⟨(264549999999999997 / 400000000000000000 : ℚ), (33074999999999999 / 50000000000000000 : ℚ)⟩
  r := (10507984185883 / 20000000000000 : ℚ)
  w := (13655836043331 / 10000000000000 : ℚ)
  center := (529149999999999989 / 800000000000000000 : ℚ)
  supportValue := (385012851549977 / 1250000000000000 : ℚ)
  supportSlope := (-5400609262916063 / 5000000000000000 : ℚ)
  oldCenter := (385012851549977 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1540
  oldLo := (6150000000000001 / 20000000000000000 : ℚ)
  oldHi := (617 / 2000 : ℚ)
  oldPieces := [piece_769, piece_770]
}

noncomputable def cell_11912 : Cell := { cellDefaults with
  domain := ⟨(33074999999999999 / 50000000000000000 : ℚ), (264649999999999997 / 400000000000000000 : ℚ)⟩
  r := (2625800954911 / 5000000000000 : ℚ)
  w := (13653876428371 / 10000000000000 : ℚ)
  center := (529249999999999989 / 800000000000000000 : ℚ)
  supportValue := (30814699782597343 / 100000000000000000 : ℚ)
  supportSlope := (-10801120013023167 / 10000000000000000 : ℚ)
  oldCenter := (30814699782597343 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1541
  oldLo := (6160000000000001 / 20000000000000000 : ℚ)
  oldHi := (617 / 2000 : ℚ)
  oldPieces := [piece_770]
}

noncomputable def cell_11913 : Cell := { cellDefaults with
  domain := ⟨(264649999999999997 / 400000000000000000 : ℚ), (132350000000000001 / 200000000000000000 : ℚ)⟩
  r := (2625800954911 / 5000000000000 : ℚ)
  w := (13653876428371 / 10000000000000 : ℚ)
  center := (529349999999999999 / 800000000000000000 : ℚ)
  supportValue := (3080122761128063 / 10000000000000000 : ℚ)
  supportSlope := (-21086525395593 / 19531250000000 : ℚ)
  oldCenter := (3080122761128063 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1541
  oldLo := (6150000000000001 / 20000000000000000 : ℚ)
  oldHi := (617 / 2000 : ℚ)
  oldPieces := [piece_769, piece_770]
}

noncomputable def cell_11914 : Cell := { cellDefaults with
  domain := ⟨(132350000000000001 / 200000000000000000 : ℚ), (264750000000000007 / 400000000000000000 : ℚ)⟩
  r := (2625800954911 / 5000000000000 : ℚ)
  w := (13653876428371 / 10000000000000 : ℚ)
  center := (529450000000000009 / 800000000000000000 : ℚ)
  supportValue := (3078770704146019 / 10000000000000000 : ℚ)
  supportSlope := (-10794638814174449 / 10000000000000000 : ℚ)
  oldCenter := (3078770704146019 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1541
  oldLo := (6150000000000001 / 20000000000000000 : ℚ)
  oldHi := (6160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_769]
}

noncomputable def cell_11915 : Cell := { cellDefaults with
  domain := ⟨(264750000000000007 / 400000000000000000 : ℚ), (66200000000000003 / 100000000000000000 : ℚ)⟩
  r := (2625800954911 / 5000000000000 : ℚ)
  w := (13653876428371 / 10000000000000 : ℚ)
  center := (529550000000000019 / 800000000000000000 : ℚ)
  supportValue := (30774221440815563 / 100000000000000000 : ℚ)
  supportSlope := (-2156465780492451 / 2000000000000000 : ℚ)
  oldCenter := (30774221440815563 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1541
  oldLo := (6150000000000001 / 20000000000000000 : ℚ)
  oldHi := (6160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_769]
}

noncomputable def cell_11916 : Cell := { cellDefaults with
  domain := ⟨(66200000000000003 / 100000000000000000 : ℚ), (264850000000000007 / 400000000000000000 : ℚ)⟩
  r := (13123034201169 / 25000000000000 : ℚ)
  w := (3412978535401 / 2500000000000 : ℚ)
  center := (529650000000000019 / 800000000000000000 : ℚ)
  supportValue := (6157583682692347 / 20000000000000000 : ℚ)
  supportSlope := (-1079000503453217 / 1000000000000000 : ℚ)
  oldCenter := (6157583682692347 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1542
  oldLo := (6150000000000001 / 20000000000000000 : ℚ)
  oldHi := (6160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_769]
}

noncomputable def cell_11917 : Cell := { cellDefaults with
  domain := ⟨(264850000000000007 / 400000000000000000 : ℚ), (132450000000000001 / 200000000000000000 : ℚ)⟩
  r := (13123034201169 / 25000000000000 : ℚ)
  w := (3412978535401 / 2500000000000 : ℚ)
  center := (529750000000000009 / 800000000000000000 : ℚ)
  supportValue := (7693609649646871 / 25000000000000000 : ℚ)
  supportSlope := (-1347213179493513 / 1250000000000000 : ℚ)
  oldCenter := (7693609649646871 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1542
  oldLo := (6150000000000001 / 20000000000000000 : ℚ)
  oldHi := (6160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_769]
}

noncomputable def cell_11918 : Cell := { cellDefaults with
  domain := ⟨(132450000000000001 / 200000000000000000 : ℚ), (264949999999999997 / 400000000000000000 : ℚ)⟩
  r := (13123034201169 / 25000000000000 : ℚ)
  w := (3412978535401 / 2500000000000 : ℚ)
  center := (529849999999999999 / 800000000000000000 : ℚ)
  supportValue := (30760974125416557 / 100000000000000000 : ℚ)
  supportSlope := (-5382729114061219 / 5000000000000000 : ℚ)
  oldCenter := (30760974125416557 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1542
  oldLo := (6150000000000001 / 20000000000000000 : ℚ)
  oldHi := (6160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_769]
}

noncomputable def cell_11919 : Cell := { cellDefaults with
  domain := ⟨(264949999999999997 / 400000000000000000 : ℚ), (33124999999999999 / 50000000000000000 : ℚ)⟩
  r := (13123034201169 / 25000000000000 : ℚ)
  w := (3412978535401 / 2500000000000 : ℚ)
  center := (529949999999999989 / 800000000000000000 : ℚ)
  supportValue := (192172139184579 / 625000000000000 : ℚ)
  supportSlope := (-5382815908943611 / 5000000000000000 : ℚ)
  oldCenter := (192172139184579 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1542
  oldHi := (6160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_768, piece_769]
}

noncomputable def cell_11920 : Cell := { cellDefaults with
  domain := ⟨(33124999999999999 / 50000000000000000 : ℚ), (6626256983240223 / 10000000000000000 : ℚ)⟩
  center := (33128142458100557 / 50000000000000000 : ℚ)
  supportValue := (30761119216717303 / 100000000000000000 : ℚ)
  supportSlope := (-10760782870684393 / 10000000000000000 : ℚ)
  oldCenter := (30761119216717303 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1543
  oldLo := (6150000000000001 / 20000000000000000 : ℚ)
  oldHi := (6160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_769]
}

noncomputable def cell_11921 : Cell := { cellDefaults with
  domain := ⟨(6626256983240223 / 10000000000000000 : ℚ), (265087709497206693 / 400000000000000000 : ℚ)⟩
  center := (530137988826815613 / 800000000000000000 : ℚ)
  supportValue := (3074934766952619 / 10000000000000000 : ℚ)
  supportSlope := (-10760355228558607 / 10000000000000000 : ℚ)
  oldCenter := (3074934766952619 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1544
  oldHi := (6160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_768, piece_769]
}

noncomputable def cell_11922 : Cell := { cellDefaults with
  domain := ⟨(265087709497206693 / 400000000000000000 : ℚ), (132562569832402233 / 200000000000000000 : ℚ)⟩
  center := (530212849162011159 / 800000000000000000 : ℚ)
  supportValue := (7684813518945019 / 25000000000000000 : ℚ)
  supportSlope := (-10758973485635543 / 10000000000000000 : ℚ)
  oldCenter := (7684813518945019 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1544
  oldPieces := [piece_768]
}

noncomputable def cell_11923 : Cell := { cellDefaults with
  domain := ⟨(132562569832402233 / 200000000000000000 : ℚ), (265162569832402239 / 400000000000000000 : ℚ)⟩
  center := (106057541899441341 / 160000000000000000 : ℚ)
  supportValue := (1536459531150727 / 5000000000000000 : ℚ)
  supportSlope := (-10749780205894757 / 10000000000000000 : ℚ)
  oldCenter := (1536459531150727 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1544
  oldPieces := [piece_768]
}

noncomputable def cell_11924 : Cell := { cellDefaults with
  domain := ⟨(265162569832402239 / 400000000000000000 : ℚ), (66300000000000003 / 100000000000000000 : ℚ)⟩
  center := (530362569832402251 / 800000000000000000 : ℚ)
  supportValue := (3071913575913039 / 10000000000000000 : ℚ)
  supportSlope := (-5370308161165701 / 5000000000000000 : ℚ)
  oldCenter := (3071913575913039 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1544
  oldPieces := [piece_768]
}

noncomputable def cell_11925 : Cell := { cellDefaults with
  domain := ⟨(66300000000000003 / 100000000000000000 : ℚ), (265250000000000007 / 400000000000000000 : ℚ)⟩
  r := (52444460232323 / 100000000000000 : ℚ)
  w := (10662517093 / 7812500000 : ℚ)
  center := (530450000000000019 / 800000000000000000 : ℚ)
  supportValue := (3841805542319033 / 12500000000000000 : ℚ)
  supportSlope := (-10749778458364299 / 10000000000000000 : ℚ)
  oldCenter := (3841805542319033 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1545
  oldPieces := [piece_768]
}

noncomputable def cell_11926 : Cell := { cellDefaults with
  domain := ⟨(265250000000000007 / 400000000000000000 : ℚ), (132650000000000001 / 200000000000000000 : ℚ)⟩
  r := (52444460232323 / 100000000000000 : ℚ)
  w := (10662517093 / 7812500000 : ℚ)
  center := (530550000000000009 / 800000000000000000 : ℚ)
  supportValue := (3072101477223089 / 10000000000000000 : ℚ)
  supportSlope := (-10737534296111313 / 10000000000000000 : ℚ)
  oldCenter := (3072101477223089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1545
  oldPieces := [piece_768]
}

noncomputable def cell_11927 : Cell := { cellDefaults with
  domain := ⟨(132650000000000001 / 200000000000000000 : ℚ), (265349999999999997 / 400000000000000000 : ℚ)⟩
  r := (52444460232323 / 100000000000000 : ℚ)
  w := (10662517093 / 7812500000 : ℚ)
  center := (530649999999999999 / 800000000000000000 : ℚ)
  supportValue := (959612514951747 / 3125000000000000 : ℚ)
  supportSlope := (-2681335575853973 / 2500000000000000 : ℚ)
  oldCenter := (959612514951747 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1545
  oldPieces := [piece_768]
}

noncomputable def cell_11928 : Cell := { cellDefaults with
  domain := ⟨(265349999999999997 / 400000000000000000 : ℚ), (33174999999999999 / 50000000000000000 : ℚ)⟩
  r := (52444460232323 / 100000000000000 : ℚ)
  w := (10662517093 / 7812500000 : ℚ)
  center := (530749999999999989 / 800000000000000000 : ℚ)
  supportValue := (6138842614500929 / 20000000000000000 : ℚ)
  supportSlope := (-2146010461931739 / 2000000000000000 : ℚ)
  oldCenter := (6138842614500929 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1545
  oldLo := (6130000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_767, piece_768]
}

noncomputable def cell_11929 : Cell := { cellDefaults with
  domain := ⟨(33174999999999999 / 50000000000000000 : ℚ), (265449999999999997 / 400000000000000000 : ℚ)⟩
  r := (26210331049727 / 50000000000000 : ℚ)
  w := (1364608828141 / 1000000000000 : ℚ)
  center := (530849999999999989 / 800000000000000000 : ℚ)
  supportValue := (30707768030572413 / 100000000000000000 : ℚ)
  supportSlope := (-53603566272681 / 50000000000000 : ℚ)
  oldCenter := (30707768030572413 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1546
  oldPieces := [piece_768]
}

noncomputable def cell_11930 : Cell := { cellDefaults with
  domain := ⟨(265449999999999997 / 400000000000000000 : ℚ), (132750000000000001 / 200000000000000000 : ℚ)⟩
  r := (26210331049727 / 50000000000000 : ℚ)
  w := (1364608828141 / 1000000000000 : ℚ)
  center := (530949999999999999 / 800000000000000000 : ℚ)
  supportValue := (3069438669676249 / 10000000000000000 : ℚ)
  supportSlope := (-2681299231832311 / 2500000000000000 : ℚ)
  oldCenter := (3069438669676249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1546
  oldLo := (6130000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_767, piece_768]
}

noncomputable def cell_11931 : Cell := { cellDefaults with
  domain := ⟨(132750000000000001 / 200000000000000000 : ℚ), (265550000000000007 / 400000000000000000 : ℚ)⟩
  r := (26210331049727 / 50000000000000 : ℚ)
  w := (1364608828141 / 1000000000000 : ℚ)
  center := (531050000000000009 / 800000000000000000 : ℚ)
  supportValue := (1534048229076927 / 5000000000000000 : ℚ)
  supportSlope := (-1339297657103477 / 1250000000000000 : ℚ)
  oldCenter := (1534048229076927 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1546
  oldLo := (6130000000000001 / 20000000000000000 : ℚ)
  oldHi := (6140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_767]
}

noncomputable def cell_11932 : Cell := { cellDefaults with
  domain := ⟨(265550000000000007 / 400000000000000000 : ℚ), (66400000000000003 / 100000000000000000 : ℚ)⟩
  r := (26210331049727 / 50000000000000 : ℚ)
  w := (1364608828141 / 1000000000000 : ℚ)
  center := (531150000000000019 / 800000000000000000 : ℚ)
  supportValue := (30667579233173003 / 100000000000000000 : ℚ)
  supportSlope := (-535109137440539 / 500000000000000 : ℚ)
  oldCenter := (30667579233173003 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1546
  oldLo := (6130000000000001 / 20000000000000000 : ℚ)
  oldHi := (6140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_767]
}

noncomputable def cell_11933 : Cell := { cellDefaults with
  domain := ⟨(66400000000000003 / 100000000000000000 : ℚ), (265650000000000007 / 400000000000000000 : ℚ)⟩
  r := (52396890473801 / 100000000000000 : ℚ)
  w := (6822079724459 / 5000000000000 : ℚ)
  center := (531250000000000019 / 800000000000000000 : ℚ)
  supportValue := (3068112842062977 / 10000000000000000 : ℚ)
  supportSlope := (-535487917454667 / 500000000000000 : ℚ)
  oldCenter := (3068112842062977 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1547
  oldLo := (6130000000000001 / 20000000000000000 : ℚ)
  oldHi := (6140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_767]
}

noncomputable def cell_11934 : Cell := { cellDefaults with
  domain := ⟨(265650000000000007 / 400000000000000000 : ℚ), (132850000000000001 / 200000000000000000 : ℚ)⟩
  r := (52396890473801 / 100000000000000 : ℚ)
  w := (6822079724459 / 5000000000000 : ℚ)
  center := (531350000000000009 / 800000000000000000 : ℚ)
  supportValue := (3066774884442699 / 10000000000000000 : ℚ)
  supportSlope := (-10697570182492913 / 10000000000000000 : ℚ)
  oldCenter := (3066774884442699 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1547
  oldLo := (6130000000000001 / 20000000000000000 : ℚ)
  oldHi := (6140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_767]
}

noncomputable def cell_11935 : Cell := { cellDefaults with
  domain := ⟨(132850000000000001 / 200000000000000000 : ℚ), (265749999999999997 / 400000000000000000 : ℚ)⟩
  r := (52396890473801 / 100000000000000 : ℚ)
  w := (6822079724459 / 5000000000000 : ℚ)
  center := (531449999999999999 / 800000000000000000 : ℚ)
  supportValue := (3065440592898127 / 10000000000000000 : ℚ)
  supportSlope := (-5344278494759359 / 5000000000000000 : ℚ)
  oldCenter := (3065440592898127 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1547
  oldLo := (6120000000000001 / 20000000000000000 : ℚ)
  oldHi := (6140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_766, piece_767]
}

noncomputable def cell_11936 : Cell := { cellDefaults with
  domain := ⟨(265749999999999997 / 400000000000000000 : ℚ), (33224999999999999 / 50000000000000000 : ℚ)⟩
  r := (52396890473801 / 100000000000000 : ℚ)
  w := (6822079724459 / 5000000000000 : ℚ)
  center := (531549999999999989 / 800000000000000000 : ℚ)
  supportValue := (3830127505457593 / 12500000000000000 : ℚ)
  supportSlope := (-1069136740248773 / 1000000000000000 : ℚ)
  oldCenter := (3830127505457593 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1547
  oldLo := (6120000000000001 / 20000000000000000 : ℚ)
  oldHi := (6130000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_766]
}

noncomputable def cell_11937 : Cell := { cellDefaults with
  domain := ⟨(33224999999999999 / 50000000000000000 : ℚ), (132924999999999999 / 200000000000000000 : ℚ)⟩
  r := (10474628842969 / 20000000000000 : ℚ)
  w := (6821119694823 / 5000000000000 : ℚ)
  center := (53164999999999999 / 80000000000000000 : ℚ)
  supportValue := (766363978631909 / 2500000000000000 : ℚ)
  supportSlope := (-5341864467029359 / 5000000000000000 : ℚ)
  oldCenter := (766363978631909 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1548
  oldLo := (6120000000000001 / 20000000000000000 : ℚ)
  oldHi := (6140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_766, piece_767]
}

noncomputable def cell_11938 : Cell := { cellDefaults with
  domain := ⟨(132924999999999999 / 200000000000000000 : ℚ), (66475000000000001 / 100000000000000000 : ℚ)⟩
  r := (10474628842969 / 20000000000000 : ℚ)
  w := (6821119694823 / 5000000000000 : ℚ)
  center := (265875000000000001 / 400000000000000000 : ℚ)
  supportValue := (1225647171689763 / 4000000000000000 : ℚ)
  supportSlope := (-534337767476181 / 500000000000000 : ℚ)
  oldCenter := (1225647171689763 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1548
  oldLo := (6120000000000001 / 20000000000000000 : ℚ)
  oldHi := (6130000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_766]
}

noncomputable def cell_11939 : Cell := { cellDefaults with
  domain := ⟨(66475000000000001 / 100000000000000000 : ℚ), (26595000000000001 / 40000000000000000 : ℚ)⟩
  r := (10474628842969 / 20000000000000 : ℚ)
  w := (6821119694823 / 5000000000000 : ℚ)
  center := (265925000000000007 / 400000000000000000 : ℚ)
  supportValue := (15313914236392673 / 50000000000000000 : ℚ)
  supportSlope := (-2134912489782891 / 2000000000000000 : ℚ)
  oldCenter := (15313914236392673 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1548
  oldLo := (6120000000000001 / 20000000000000000 : ℚ)
  oldHi := (6130000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_766]
}

noncomputable def cell_11940 : Cell := { cellDefaults with
  domain := ⟨(26595000000000001 / 40000000000000000 : ℚ), (16625000000000001 / 25000000000000000 : ℚ)⟩
  r := (10474628842969 / 20000000000000 : ℚ)
  w := (6821119694823 / 5000000000000 : ℚ)
  center := (265975000000000013 / 400000000000000000 : ℚ)
  supportValue := (6122898572366019 / 20000000000000000 : ℚ)
  supportSlope := (-10662421663044483 / 10000000000000000 : ℚ)
  oldCenter := (6122898572366019 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1548
  oldLo := (6120000000000001 / 20000000000000000 : ℚ)
  oldHi := (6130000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_766]
}

noncomputable def cell_11941 : Cell := { cellDefaults with
  domain := ⟨(16625000000000001 / 25000000000000000 : ℚ), (26605000000000001 / 40000000000000000 : ℚ)⟩
  r := (26174713192263 / 50000000000000 : ℚ)
  w := (13640328658383 / 10000000000000 : ℚ)
  center := (266025000000000013 / 400000000000000000 : ℚ)
  supportValue := (76569918106421 / 250000000000000 : ℚ)
  supportSlope := (-10669943550977337 / 10000000000000000 : ℚ)
  oldCenter := (76569918106421 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1549
  oldLo := (6120000000000001 / 20000000000000000 : ℚ)
  oldHi := (6130000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_766]
}

noncomputable def cell_11942 : Cell := { cellDefaults with
  domain := ⟨(26605000000000001 / 40000000000000000 : ℚ), (66525000000000001 / 100000000000000000 : ℚ)⟩
  r := (26174713192263 / 50000000000000 : ℚ)
  w := (13640328658383 / 10000000000000 : ℚ)
  center := (266075000000000007 / 400000000000000000 : ℚ)
  supportValue := (7653659349685761 / 25000000000000000 : ℚ)
  supportSlope := (-2664453284864407 / 2500000000000000 : ℚ)
  oldCenter := (7653659349685761 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1549
  oldLo := (6120000000000001 / 20000000000000000 : ℚ)
  oldHi := (6130000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_766]
}

noncomputable def cell_11943 : Cell := { cellDefaults with
  domain := ⟨(66525000000000001 / 100000000000000000 : ℚ), (133074999999999999 / 200000000000000000 : ℚ)⟩
  r := (26174713192263 / 50000000000000 : ℚ)
  w := (13640328658383 / 10000000000000 : ℚ)
  center := (266125000000000001 / 400000000000000000 : ℚ)
  supportValue := (15300672053245107 / 50000000000000000 : ℚ)
  supportSlope := (-1331624516185563 / 1250000000000000 : ℚ)
  oldCenter := (15300672053245107 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1549
  oldLo := (6110000000000001 / 20000000000000000 : ℚ)
  oldHi := (6130000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_765, piece_766]
}

noncomputable def cell_11944 : Cell := { cellDefaults with
  domain := ⟨(133074999999999999 / 200000000000000000 : ℚ), (33274999999999999 / 50000000000000000 : ℚ)⟩
  r := (26174713192263 / 50000000000000 : ℚ)
  w := (13640328658383 / 10000000000000 : ℚ)
  center := (53234999999999999 / 80000000000000000 : ℚ)
  supportValue := (3058800269896857 / 10000000000000000 : ℚ)
  supportSlope := (-5325842579178647 / 5000000000000000 : ℚ)
  oldCenter := (3058800269896857 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1549
  oldLo := (6110000000000001 / 20000000000000000 : ℚ)
  oldHi := (6120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_765]
}

noncomputable def cell_11945 : Cell := { cellDefaults with
  domain := ⟨(33274999999999999 / 50000000000000000 : ℚ), (133124999999999999 / 200000000000000000 : ℚ)⟩
  r := (26162866628477 / 50000000000000 : ℚ)
  w := (13638421791583 / 10000000000000 : ℚ)
  center := (53244999999999999 / 80000000000000000 : ℚ)
  supportValue := (3060148227602639 / 10000000000000000 : ℚ)
  supportSlope := (-10648200319341827 / 10000000000000000 : ℚ)
  oldCenter := (3060148227602639 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1550
  oldLo := (6110000000000001 / 20000000000000000 : ℚ)
  oldHi := (6130000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_765, piece_766]
}

noncomputable def cell_11946 : Cell := { cellDefaults with
  domain := ⟨(133124999999999999 / 200000000000000000 : ℚ), (66575000000000001 / 100000000000000000 : ℚ)⟩
  r := (26162866628477 / 50000000000000 : ℚ)
  w := (13638421791583 / 10000000000000 : ℚ)
  center := (266275000000000001 / 400000000000000000 : ℚ)
  supportValue := (7647036715154451 / 25000000000000000 : ℚ)
  supportSlope := (-1064708501458661 / 1000000000000000 : ℚ)
  oldCenter := (7647036715154451 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1550
  oldLo := (6110000000000001 / 20000000000000000 : ℚ)
  oldHi := (6120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_765]
}

noncomputable def cell_11947 : Cell := { cellDefaults with
  domain := ⟨(66575000000000001 / 100000000000000000 : ℚ), (26635000000000001 / 40000000000000000 : ℚ)⟩
  r := (26162866628477 / 50000000000000 : ℚ)
  w := (13638421791583 / 10000000000000 : ℚ)
  center := (266325000000000007 / 400000000000000000 : ℚ)
  supportValue := (955463924743267 / 3125000000000000 : ℚ)
  supportSlope := (-10634951741471501 / 10000000000000000 : ℚ)
  oldCenter := (955463924743267 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1550
  oldLo := (6110000000000001 / 20000000000000000 : ℚ)
  oldHi := (6120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_765]
}

noncomputable def cell_11948 : Cell := { cellDefaults with
  domain := ⟨(26635000000000001 / 40000000000000000 : ℚ), (16650000000000001 / 25000000000000000 : ℚ)⟩
  r := (26162866628477 / 50000000000000 : ℚ)
  w := (13638421791583 / 10000000000000 : ℚ)
  center := (266375000000000013 / 400000000000000000 : ℚ)
  supportValue := (6112311891416713 / 20000000000000000 : ℚ)
  supportSlope := (-10622870322406333 / 10000000000000000 : ℚ)
  oldCenter := (6112311891416713 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1550
  oldLo := (6110000000000001 / 20000000000000000 : ℚ)
  oldHi := (6120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_765]
}

noncomputable def cell_11949 : Cell := { cellDefaults with
  domain := ⟨(16650000000000001 / 25000000000000000 : ℚ), (26645000000000001 / 40000000000000000 : ℚ)⟩
  r := (6537758625849 / 12500000000000 : ℚ)
  w := (6818263843899 / 5000000000000 : ℚ)
  center := (266425000000000013 / 400000000000000000 : ℚ)
  supportValue := (3057496222615429 / 10000000000000000 : ℚ)
  supportSlope := (-2126067817707777 / 2000000000000000 : ℚ)
  oldCenter := (3057496222615429 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1551
  oldLo := (6110000000000001 / 20000000000000000 : ℚ)
  oldHi := (6120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_765]
}

theorem check_11900 : cell_11900.check = true := by
  decide +kernel

theorem check_11901 : cell_11901.check = true := by
  decide +kernel

theorem check_11902 : cell_11902.check = true := by
  decide +kernel

theorem check_11903 : cell_11903.check = true := by
  decide +kernel

theorem check_11904 : cell_11904.check = true := by
  decide +kernel

theorem check_11905 : cell_11905.check = true := by
  decide +kernel

theorem check_11906 : cell_11906.check = true := by
  decide +kernel

theorem check_11907 : cell_11907.check = true := by
  decide +kernel

theorem check_11908 : cell_11908.check = true := by
  decide +kernel

theorem check_11909 : cell_11909.check = true := by
  decide +kernel

theorem check_11910 : cell_11910.check = true := by
  decide +kernel

theorem check_11911 : cell_11911.check = true := by
  decide +kernel

theorem check_11912 : cell_11912.check = true := by
  decide +kernel

theorem check_11913 : cell_11913.check = true := by
  decide +kernel

theorem check_11914 : cell_11914.check = true := by
  decide +kernel

theorem check_11915 : cell_11915.check = true := by
  decide +kernel

theorem check_11916 : cell_11916.check = true := by
  decide +kernel

theorem check_11917 : cell_11917.check = true := by
  decide +kernel

theorem check_11918 : cell_11918.check = true := by
  decide +kernel

theorem check_11919 : cell_11919.check = true := by
  decide +kernel

theorem check_11920 : cell_11920.check = true := by
  decide +kernel

theorem check_11921 : cell_11921.check = true := by
  decide +kernel

theorem check_11922 : cell_11922.check = true := by
  decide +kernel

theorem check_11923 : cell_11923.check = true := by
  decide +kernel

theorem check_11924 : cell_11924.check = true := by
  decide +kernel

theorem check_11925 : cell_11925.check = true := by
  decide +kernel

theorem check_11926 : cell_11926.check = true := by
  decide +kernel

theorem check_11927 : cell_11927.check = true := by
  decide +kernel

theorem check_11928 : cell_11928.check = true := by
  decide +kernel

theorem check_11929 : cell_11929.check = true := by
  decide +kernel

theorem check_11930 : cell_11930.check = true := by
  decide +kernel

theorem check_11931 : cell_11931.check = true := by
  decide +kernel

theorem check_11932 : cell_11932.check = true := by
  decide +kernel

theorem check_11933 : cell_11933.check = true := by
  decide +kernel

theorem check_11934 : cell_11934.check = true := by
  decide +kernel

theorem check_11935 : cell_11935.check = true := by
  decide +kernel

theorem check_11936 : cell_11936.check = true := by
  decide +kernel

theorem check_11937 : cell_11937.check = true := by
  decide +kernel

theorem check_11938 : cell_11938.check = true := by
  decide +kernel

theorem check_11939 : cell_11939.check = true := by
  decide +kernel

theorem check_11940 : cell_11940.check = true := by
  decide +kernel

theorem check_11941 : cell_11941.check = true := by
  decide +kernel

theorem check_11942 : cell_11942.check = true := by
  decide +kernel

theorem check_11943 : cell_11943.check = true := by
  decide +kernel

theorem check_11944 : cell_11944.check = true := by
  decide +kernel

theorem check_11945 : cell_11945.check = true := by
  decide +kernel

theorem check_11946 : cell_11946.check = true := by
  decide +kernel

theorem check_11947 : cell_11947.check = true := by
  decide +kernel

theorem check_11948 : cell_11948.check = true := by
  decide +kernel

theorem check_11949 : cell_11949.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11900, cell_11901, cell_11902, cell_11903, cell_11904, cell_11905, cell_11906, cell_11907, cell_11908, cell_11909, cell_11910, cell_11911, cell_11912, cell_11913, cell_11914, cell_11915, cell_11916, cell_11917, cell_11918, cell_11919, cell_11920, cell_11921, cell_11922, cell_11923, cell_11924, cell_11925, cell_11926, cell_11927, cell_11928, cell_11929, cell_11930, cell_11931, cell_11932, cell_11933, cell_11934, cell_11935, cell_11936, cell_11937, cell_11938, cell_11939, cell_11940, cell_11941, cell_11942, cell_11943, cell_11944, cell_11945, cell_11946, cell_11947, cell_11948, cell_11949]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11900, check_11901, check_11902, check_11903, check_11904, check_11905, check_11906, check_11907, check_11908, check_11909, check_11910, check_11911, check_11912, check_11913, check_11914, check_11915, check_11916, check_11917, check_11918, check_11919, check_11920, check_11921, check_11922, check_11923, check_11924, check_11925, check_11926, check_11927, check_11928, check_11929, check_11930, check_11931, check_11932, check_11933, check_11934, check_11935, check_11936, check_11937, check_11938, check_11939, check_11940, check_11941, check_11942, check_11943, check_11944, check_11945, check_11946, check_11947, check_11948, check_11949, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0238

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0238
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0238
open AnalyticBounds.ExpressionCertificate

theorem linked_11900 : Linked cell_11900 pieces := by
  link_source cell_11900 with piece_1538 using piece_1538_mem, ⟨piece_772_mem, piece_773_mem⟩

theorem linked_11901 : Linked cell_11901 pieces := by
  link_source cell_11901 with piece_1538 using piece_1538_mem, piece_772_mem

theorem linked_11902 : Linked cell_11902 pieces := by
  link_source cell_11902 with piece_1538 using piece_1538_mem, ⟨piece_771_mem, piece_772_mem⟩

theorem linked_11903 : Linked cell_11903 pieces := by
  link_source cell_11903 with piece_1538 using piece_1538_mem, ⟨piece_770_mem, piece_771_mem⟩

theorem linked_11904 : Linked cell_11904 pieces := by
  link_source cell_11904 with piece_1539 using piece_1539_mem, ⟨piece_771_mem, piece_772_mem⟩

theorem linked_11905 : Linked cell_11905 pieces := by
  link_source cell_11905 with piece_1539 using piece_1539_mem, ⟨piece_770_mem, piece_771_mem⟩

theorem linked_11906 : Linked cell_11906 pieces := by
  link_source cell_11906 with piece_1539 using piece_1539_mem, piece_770_mem

theorem linked_11907 : Linked cell_11907 pieces := by
  link_source cell_11907 with piece_1539 using piece_1539_mem, piece_770_mem

theorem linked_11908 : Linked cell_11908 pieces := by
  link_source cell_11908 with piece_1540 using piece_1540_mem, piece_770_mem

theorem linked_11909 : Linked cell_11909 pieces := by
  link_source cell_11909 with piece_1540 using piece_1540_mem, piece_770_mem

theorem linked_11910 : Linked cell_11910 pieces := by
  link_source cell_11910 with piece_1540 using piece_1540_mem, piece_770_mem

theorem linked_11911 : Linked cell_11911 pieces := by
  link_source cell_11911 with piece_1540 using piece_1540_mem, ⟨piece_769_mem, piece_770_mem⟩

theorem linked_11912 : Linked cell_11912 pieces := by
  link_source cell_11912 with piece_1541 using piece_1541_mem, piece_770_mem

theorem linked_11913 : Linked cell_11913 pieces := by
  link_source cell_11913 with piece_1541 using piece_1541_mem, ⟨piece_769_mem, piece_770_mem⟩

theorem linked_11914 : Linked cell_11914 pieces := by
  link_source cell_11914 with piece_1541 using piece_1541_mem, piece_769_mem

theorem linked_11915 : Linked cell_11915 pieces := by
  link_source cell_11915 with piece_1541 using piece_1541_mem, piece_769_mem

theorem linked_11916 : Linked cell_11916 pieces := by
  link_source cell_11916 with piece_1542 using piece_1542_mem, piece_769_mem

theorem linked_11917 : Linked cell_11917 pieces := by
  link_source cell_11917 with piece_1542 using piece_1542_mem, piece_769_mem

theorem linked_11918 : Linked cell_11918 pieces := by
  link_source cell_11918 with piece_1542 using piece_1542_mem, piece_769_mem

theorem linked_11919 : Linked cell_11919 pieces := by
  link_source cell_11919 with piece_1542 using piece_1542_mem, ⟨piece_768_mem, piece_769_mem⟩

theorem linked_11920 : Linked cell_11920 pieces := by
  link_source cell_11920 with piece_1543 using piece_1543_mem, piece_769_mem

theorem linked_11921 : Linked cell_11921 pieces := by
  link_source cell_11921 with piece_1544 using piece_1544_mem, ⟨piece_768_mem, piece_769_mem⟩

theorem linked_11922 : Linked cell_11922 pieces := by
  link_source cell_11922 with piece_1544 using piece_1544_mem, piece_768_mem

theorem linked_11923 : Linked cell_11923 pieces := by
  link_source cell_11923 with piece_1544 using piece_1544_mem, piece_768_mem

theorem linked_11924 : Linked cell_11924 pieces := by
  link_source cell_11924 with piece_1544 using piece_1544_mem, piece_768_mem

theorem linked_11925 : Linked cell_11925 pieces := by
  link_source cell_11925 with piece_1545 using piece_1545_mem, piece_768_mem

theorem linked_11926 : Linked cell_11926 pieces := by
  link_source cell_11926 with piece_1545 using piece_1545_mem, piece_768_mem

theorem linked_11927 : Linked cell_11927 pieces := by
  link_source cell_11927 with piece_1545 using piece_1545_mem, piece_768_mem

theorem linked_11928 : Linked cell_11928 pieces := by
  link_source cell_11928 with piece_1545 using piece_1545_mem, ⟨piece_767_mem, piece_768_mem⟩

theorem linked_11929 : Linked cell_11929 pieces := by
  link_source cell_11929 with piece_1546 using piece_1546_mem, piece_768_mem

theorem linked_11930 : Linked cell_11930 pieces := by
  link_source cell_11930 with piece_1546 using piece_1546_mem, ⟨piece_767_mem, piece_768_mem⟩

theorem linked_11931 : Linked cell_11931 pieces := by
  link_source cell_11931 with piece_1546 using piece_1546_mem, piece_767_mem

theorem linked_11932 : Linked cell_11932 pieces := by
  link_source cell_11932 with piece_1546 using piece_1546_mem, piece_767_mem

theorem linked_11933 : Linked cell_11933 pieces := by
  link_source cell_11933 with piece_1547 using piece_1547_mem, piece_767_mem

theorem linked_11934 : Linked cell_11934 pieces := by
  link_source cell_11934 with piece_1547 using piece_1547_mem, piece_767_mem

theorem linked_11935 : Linked cell_11935 pieces := by
  link_source cell_11935 with piece_1547 using piece_1547_mem, ⟨piece_766_mem, piece_767_mem⟩

theorem linked_11936 : Linked cell_11936 pieces := by
  link_source cell_11936 with piece_1547 using piece_1547_mem, piece_766_mem

theorem linked_11937 : Linked cell_11937 pieces := by
  link_source cell_11937 with piece_1548 using piece_1548_mem, ⟨piece_766_mem, piece_767_mem⟩

theorem linked_11938 : Linked cell_11938 pieces := by
  link_source cell_11938 with piece_1548 using piece_1548_mem, piece_766_mem

theorem linked_11939 : Linked cell_11939 pieces := by
  link_source cell_11939 with piece_1548 using piece_1548_mem, piece_766_mem

theorem linked_11940 : Linked cell_11940 pieces := by
  link_source cell_11940 with piece_1548 using piece_1548_mem, piece_766_mem

theorem linked_11941 : Linked cell_11941 pieces := by
  link_source cell_11941 with piece_1549 using piece_1549_mem, piece_766_mem

theorem linked_11942 : Linked cell_11942 pieces := by
  link_source cell_11942 with piece_1549 using piece_1549_mem, piece_766_mem

theorem linked_11943 : Linked cell_11943 pieces := by
  link_source cell_11943 with piece_1549 using piece_1549_mem, ⟨piece_765_mem, piece_766_mem⟩

theorem linked_11944 : Linked cell_11944 pieces := by
  link_source cell_11944 with piece_1549 using piece_1549_mem, piece_765_mem

theorem linked_11945 : Linked cell_11945 pieces := by
  link_source cell_11945 with piece_1550 using piece_1550_mem, ⟨piece_765_mem, piece_766_mem⟩

theorem linked_11946 : Linked cell_11946 pieces := by
  link_source cell_11946 with piece_1550 using piece_1550_mem, piece_765_mem

theorem linked_11947 : Linked cell_11947 pieces := by
  link_source cell_11947 with piece_1550 using piece_1550_mem, piece_765_mem

theorem linked_11948 : Linked cell_11948 pieces := by
  link_source cell_11948 with piece_1550 using piece_1550_mem, piece_765_mem

theorem linked_11949 : Linked cell_11949 pieces := by
  link_source cell_11949 with piece_1551 using piece_1551_mem, piece_765_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0238.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0238.cells,List.forall_mem_cons]
  exact ⟨linked_11900, linked_11901, linked_11902, linked_11903, linked_11904, linked_11905, linked_11906, linked_11907, linked_11908, linked_11909, linked_11910, linked_11911, linked_11912, linked_11913, linked_11914, linked_11915, linked_11916, linked_11917, linked_11918, linked_11919, linked_11920, linked_11921, linked_11922, linked_11923, linked_11924, linked_11925, linked_11926, linked_11927, linked_11928, linked_11929, linked_11930, linked_11931, linked_11932, linked_11933, linked_11934, linked_11935, linked_11936, linked_11937, linked_11938, linked_11939, linked_11940, linked_11941, linked_11942, linked_11943, linked_11944, linked_11945, linked_11946, linked_11947, linked_11948, linked_11949, by simp⟩

theorem covered : covers (66000000000000003 / 100000000000000000 : ℚ) (26645000000000001 / 40000000000000000 : ℚ)
    (SourceCertificates.Chunk0238.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0238
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0239
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(26645000000000001 / 40000000000000000 : ℚ), (66625000000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (26139213829891 / 50000000000000 : ℚ)
  w := (6817317569599 / 5000000000000 : ℚ)
  center := (266475000000000007 / 400000000000000000 : ℚ)
  supportValue := (1528084092538431 / 5000000000000000 : ℚ)
  supportSlope := (-2123653611425779 / 2000000000000000 : ℚ)
  oldCenter := (1528084092538431 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1552
  oldLo := (6100000000000001 / 20000000000000000 : ℚ)
  oldHi := (6110000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_764]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11950 : Cell := { cellDefaults with
  r := (6537758625849 / 12500000000000 : ℚ)
  w := (6818263843899 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1551
  oldLo := (6110000000000001 / 20000000000000000 : ℚ)
  oldHi := (6120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_765]
}

noncomputable def cell_11951 : Cell := { cellDefaults with
  domain := ⟨(66625000000000001 / 100000000000000000 : ℚ), (133274999999999999 / 200000000000000000 : ℚ)⟩
  r := (6537758625849 / 12500000000000 : ℚ)
  w := (6818263843899 / 5000000000000 : ℚ)
  center := (266525000000000001 / 400000000000000000 : ℚ)
  supportValue := (3818554399570033 / 12500000000000000 : ℚ)
  supportSlope := (-5308726695526037 / 5000000000000000 : ℚ)
  oldCenter := (3818554399570033 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1551
  oldHi := (6120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_764, piece_765]
}

noncomputable def cell_11952 : Cell := { cellDefaults with
  domain := ⟨(133274999999999999 / 200000000000000000 : ℚ), (33324999999999999 / 50000000000000000 : ℚ)⟩
  r := (6537758625849 / 12500000000000 : ℚ)
  w := (6818263843899 / 5000000000000 : ℚ)
  center := (53314999999999999 / 80000000000000000 : ℚ)
  supportValue := (6107028192900329 / 20000000000000000 : ℚ)
  supportSlope := (-10612214675590643 / 10000000000000000 : ℚ)
  oldCenter := (6107028192900329 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1551
  oldPieces := [piece_764]
}

noncomputable def cell_11953 : Cell := { cellDefaults with
  domain := ⟨(33324999999999999 / 50000000000000000 : ℚ), (133324999999999999 / 200000000000000000 : ℚ)⟩
  center := (53324999999999999 / 80000000000000000 : ℚ)
  supportValue := (3054855754386807 / 10000000000000000 : ℚ)
  supportSlope := (-2653172545960773 / 2500000000000000 : ℚ)
  oldCenter := (3054855754386807 / 10000000000000000 : ℚ)
  oldHi := (6120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_764, piece_765]
}

noncomputable def cell_11954 : Cell := { cellDefaults with
  domain := ⟨(133324999999999999 / 200000000000000000 : ℚ), (66675000000000001 / 100000000000000000 : ℚ)⟩
  center := (266675000000000001 / 400000000000000000 : ℚ)
  supportValue := (3816908631856717 / 12500000000000000 : ℚ)
  supportSlope := (-10607625365802569 / 10000000000000000 : ℚ)
  oldCenter := (3816908631856717 / 12500000000000000 : ℚ)
  oldPieces := [piece_764]
}

noncomputable def cell_11955 : Cell := { cellDefaults with
  domain := ⟨(66675000000000001 / 100000000000000000 : ℚ), (26675000000000001 / 40000000000000000 : ℚ)⟩
  center := (266725000000000007 / 400000000000000000 : ℚ)
  supportValue := (76305042680753 / 250000000000000 : ℚ)
  supportSlope := (-529777664778067 / 500000000000000 : ℚ)
  oldCenter := (76305042680753 / 250000000000000 : ℚ)
  oldPieces := [piece_764]
}

noncomputable def cell_11956 : Cell := { cellDefaults with
  domain := ⟨(26675000000000001 / 40000000000000000 : ℚ), (16675000000000001 / 25000000000000000 : ℚ)⟩
  center := (266775000000000013 / 400000000000000000 : ℚ)
  supportValue := (381359751844373 / 1250000000000000 : ℚ)
  supportSlope := (-10583532803963687 / 10000000000000000 : ℚ)
  oldCenter := (381359751844373 / 1250000000000000 : ℚ)
  oldPieces := [piece_764]
}

noncomputable def cell_11957 : Cell := { cellDefaults with
  domain := ⟨(16675000000000001 / 25000000000000000 : ℚ), (26685000000000001 / 40000000000000000 : ℚ)⟩
  r := (52254818638753 / 100000000000000 : ℚ)
  w := (6816379274683 / 5000000000000 : ℚ)
  center := (266825000000000013 / 400000000000000000 : ℚ)
  supportValue := (3052210815967421 / 10000000000000000 : ℚ)
  supportSlope := (-10590944164327203 / 10000000000000000 : ℚ)
  oldCenter := (3052210815967421 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1553
  oldPieces := [piece_764]
}

noncomputable def cell_11958 : Cell := { cellDefaults with
  domain := ⟨(26685000000000001 / 40000000000000000 : ℚ), (66725000000000001 / 100000000000000000 : ℚ)⟩
  r := (52254818638753 / 100000000000000 : ℚ)
  w := (6816379274683 / 5000000000000 : ℚ)
  center := (266875000000000007 / 400000000000000000 : ℚ)
  supportValue := (6101775397964233 / 20000000000000000 : ℚ)
  supportSlope := (-10578934084125737 / 10000000000000000 : ℚ)
  oldCenter := (6101775397964233 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1553
  oldPieces := [piece_764]
}

noncomputable def cell_11959 : Cell := { cellDefaults with
  domain := ⟨(66725000000000001 / 100000000000000000 : ℚ), (133474999999999999 / 200000000000000000 : ℚ)⟩
  r := (52254818638753 / 100000000000000 : ℚ)
  w := (6816379274683 / 5000000000000 : ℚ)
  center := (266925000000000001 / 400000000000000000 : ℚ)
  supportValue := (7623918677414769 / 25000000000000000 : ℚ)
  supportSlope := (-10581930534742259 / 10000000000000000 : ℚ)
  oldCenter := (7623918677414769 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1553
  oldLo := (6090000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_763, piece_764]
}

noncomputable def cell_11960 : Cell := { cellDefaults with
  domain := ⟨(133474999999999999 / 200000000000000000 : ℚ), (33374999999999999 / 50000000000000000 : ℚ)⟩
  r := (52254818638753 / 100000000000000 : ℚ)
  w := (6816379274683 / 5000000000000 : ℚ)
  center := (53394999999999999 / 80000000000000000 : ℚ)
  supportValue := (3048242962852473 / 10000000000000000 : ℚ)
  supportSlope := (-10572954969056017 / 10000000000000000 : ℚ)
  oldCenter := (3048242962852473 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1553
  oldLo := (6090000000000001 / 20000000000000000 : ℚ)
  oldHi := (6100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_763]
}

noncomputable def cell_11961 : Cell := { cellDefaults with
  domain := ⟨(33374999999999999 / 50000000000000000 : ℚ), (133524999999999999 / 200000000000000000 : ℚ)⟩
  r := (10446245783581 / 20000000000000 : ℚ)
  w := (13630879230429 / 10000000000000 : ℚ)
  center := (53404999999999999 / 80000000000000000 : ℚ)
  supportValue := (3049578309051029 / 10000000000000000 : ℚ)
  supportSlope := (-5288599354704081 / 5000000000000000 : ℚ)
  oldCenter := (3049578309051029 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1554
  oldLo := (6090000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_763, piece_764]
}

noncomputable def cell_11962 : Cell := { cellDefaults with
  domain := ⟨(133524999999999999 / 200000000000000000 : ℚ), (66775000000000001 / 100000000000000000 : ℚ)⟩
  r := (10446245783581 / 20000000000000 : ℚ)
  w := (13630879230429 / 10000000000000 : ℚ)
  center := (267075000000000001 / 400000000000000000 : ℚ)
  supportValue := (3810317967116323 / 12500000000000000 : ℚ)
  supportSlope := (-2113675609501899 / 2000000000000000 : ℚ)
  oldCenter := (3810317967116323 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1554
  oldLo := (6090000000000001 / 20000000000000000 : ℚ)
  oldHi := (6100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_763]
}

noncomputable def cell_11963 : Cell := { cellDefaults with
  domain := ⟨(66775000000000001 / 100000000000000000 : ℚ), (26715000000000001 / 40000000000000000 : ℚ)⟩
  r := (10446245783581 / 20000000000000 : ℚ)
  w := (13630879230429 / 10000000000000 : ℚ)
  center := (267125000000000007 / 400000000000000000 : ℚ)
  supportValue := (30469340774301873 / 100000000000000000 : ℚ)
  supportSlope := (-1055636868661709 / 1000000000000000 : ℚ)
  oldCenter := (30469340774301873 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1554
  oldLo := (6090000000000001 / 20000000000000000 : ℚ)
  oldHi := (6100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_763]
}

noncomputable def cell_11964 : Cell := { cellDefaults with
  domain := ⟨(26715000000000001 / 40000000000000000 : ℚ), (16700000000000001 / 25000000000000000 : ℚ)⟩
  r := (10446245783581 / 20000000000000 : ℚ)
  w := (13630879230429 / 10000000000000 : ℚ)
  center := (267175000000000013 / 400000000000000000 : ℚ)
  supportValue := (15228087055284803 / 50000000000000000 : ℚ)
  supportSlope := (-10545021306159597 / 10000000000000000 : ℚ)
  oldCenter := (15228087055284803 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1554
  oldLo := (6080000000000001 / 20000000000000000 : ℚ)
  oldHi := (6100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_762, piece_763]
}

noncomputable def cell_11965 : Cell := { cellDefaults with
  domain := ⟨(16700000000000001 / 25000000000000000 : ℚ), (1336312849162011 / 2000000000000000 : ℚ)⟩
  r := (52207672355643 / 100000000000000 : ℚ)
  w := (3407254660197 / 2500000000000 : ℚ)
  center := (66807821229050277 / 100000000000000000 : ℚ)
  supportValue := (1523388765843941 / 5000000000000000 : ℚ)
  supportSlope := (-1055026380220581 / 1000000000000000 : ℚ)
  oldCenter := (1523388765843941 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1555
  oldLo := (6090000000000001 / 20000000000000000 : ℚ)
  oldHi := (6100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_763]
}

noncomputable def cell_11966 : Cell := { cellDefaults with
  domain := ⟨(1336312849162011 / 2000000000000000 : ℚ), (33416410614525137 / 50000000000000000 : ℚ)⟩
  r := (52207672355643 / 100000000000000 : ℚ)
  w := (3407254660197 / 2500000000000 : ℚ)
  center := (16706057960893853 / 25000000000000000 : ℚ)
  supportValue := (30450474540794337 / 100000000000000000 : ℚ)
  supportSlope := (-5271585379545809 / 5000000000000000 : ℚ)
  oldCenter := (30450474540794337 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1556
  oldLo := (6080000000000001 / 20000000000000000 : ℚ)
  oldHi := (6100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_762, piece_763]
}

noncomputable def cell_11967 : Cell := { cellDefaults with
  domain := ⟨(33416410614525137 / 50000000000000000 : ℚ), (33424999999999999 / 50000000000000000 : ℚ)⟩
  r := (52207672355643 / 100000000000000 : ℚ)
  w := (3407254660197 / 2500000000000 : ℚ)
  center := (4177588163407821 / 6250000000000000 : ℚ)
  supportValue := (608647225663597 / 2000000000000000 : ℚ)
  supportSlope := (-5268079586191401 / 5000000000000000 : ℚ)
  oldCenter := (608647225663597 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1556
  oldLo := (6080000000000001 / 20000000000000000 : ℚ)
  oldHi := (6090000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_762]
}

noncomputable def cell_11968 : Cell := { cellDefaults with
  domain := ⟨(33424999999999999 / 50000000000000000 : ℚ), (133724999999999999 / 200000000000000000 : ℚ)⟩
  r := (10436827079633 / 20000000000000 : ℚ)
  w := (1362715358227 / 1000000000000 : ℚ)
  center := (53484999999999999 / 80000000000000000 : ℚ)
  supportValue := (15221570759850467 / 50000000000000000 : ℚ)
  supportSlope := (-5270671792567051 / 5000000000000000 : ℚ)
  oldCenter := (15221570759850467 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1557
  oldLo := (6080000000000001 / 20000000000000000 : ℚ)
  oldHi := (6090000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_762]
}

noncomputable def cell_11969 : Cell := { cellDefaults with
  domain := ⟨(133724999999999999 / 200000000000000000 : ℚ), (66875000000000001 / 100000000000000000 : ℚ)⟩
  r := (10436827079633 / 20000000000000 : ℚ)
  w := (1362715358227 / 1000000000000 : ℚ)
  center := (267475000000000001 / 400000000000000000 : ℚ)
  supportValue := (3042997234219321 / 10000000000000000 : ℚ)
  supportSlope := (-5264673491222539 / 5000000000000000 : ℚ)
  oldCenter := (3042997234219321 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1557
  oldLo := (6080000000000001 / 20000000000000000 : ℚ)
  oldHi := (6090000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_762]
}

noncomputable def cell_11970 : Cell := { cellDefaults with
  domain := ⟨(66875000000000001 / 100000000000000000 : ℚ), (26755000000000001 / 40000000000000000 : ℚ)⟩
  r := (10436827079633 / 20000000000000 : ℚ)
  w := (1362715358227 / 1000000000000 : ℚ)
  center := (267525000000000007 / 400000000000000000 : ℚ)
  supportValue := (760420453207667 / 2500000000000000 : ℚ)
  supportSlope := (-2103480342318523 / 2000000000000000 : ℚ)
  oldCenter := (760420453207667 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1557
  oldLo := (6080000000000001 / 20000000000000000 : ℚ)
  oldHi := (6090000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_762]
}

noncomputable def cell_11971 : Cell := { cellDefaults with
  domain := ⟨(26755000000000001 / 40000000000000000 : ℚ), (16725000000000001 / 25000000000000000 : ℚ)⟩
  r := (10436827079633 / 20000000000000 : ℚ)
  w := (1362715358227 / 1000000000000 : ℚ)
  center := (267575000000000013 / 400000000000000000 : ℚ)
  supportValue := (3040370009666187 / 10000000000000000 : ℚ)
  supportSlope := (-10509489491282569 / 10000000000000000 : ℚ)
  oldCenter := (3040370009666187 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1557
  oldLo := (6070000000000001 / 20000000000000000 : ℚ)
  oldHi := (6090000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_761, piece_762]
}

noncomputable def cell_11972 : Cell := { cellDefaults with
  domain := ⟨(16725000000000001 / 25000000000000000 : ℚ), (26765000000000001 / 40000000000000000 : ℚ)⟩
  r := (52160631558569 / 100000000000000 : ℚ)
  w := (54501234797 / 40000000000 : ℚ)
  center := (267625000000000013 / 400000000000000000 : ℚ)
  supportValue := (3041686926804149 / 10000000000000000 : ℚ)
  supportSlope := (-10512807837203137 / 10000000000000000 : ℚ)
  oldCenter := (3041686926804149 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1558
  oldLo := (6080000000000001 / 20000000000000000 : ℚ)
  oldHi := (6090000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_762]
}

noncomputable def cell_11973 : Cell := { cellDefaults with
  domain := ⟨(26765000000000001 / 40000000000000000 : ℚ), (66925000000000001 / 100000000000000000 : ℚ)⟩
  r := (52160631558569 / 100000000000000 : ℚ)
  w := (54501234797 / 40000000000 : ℚ)
  center := (267675000000000007 / 400000000000000000 : ℚ)
  supportValue := (608075139445067 / 2000000000000000 : ℚ)
  supportSlope := (-2626205982756739 / 2500000000000000 : ℚ)
  oldCenter := (608075139445067 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1558
  oldLo := (6070000000000001 / 20000000000000000 : ℚ)
  oldHi := (6090000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_761, piece_762]
}

noncomputable def cell_11974 : Cell := { cellDefaults with
  domain := ⟨(66925000000000001 / 100000000000000000 : ℚ), (133874999999999999 / 200000000000000000 : ℚ)⟩
  r := (52160631558569 / 100000000000000 : ℚ)
  w := (54501234797 / 40000000000 : ℚ)
  center := (267725000000000001 / 400000000000000000 : ℚ)
  supportValue := (6078120163094417 / 20000000000000000 : ℚ)
  supportSlope := (-2101407763669879 / 2000000000000000 : ℚ)
  oldCenter := (6078120163094417 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1558
  oldLo := (6070000000000001 / 20000000000000000 : ℚ)
  oldHi := (6080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_761]
}

noncomputable def cell_11975 : Cell := { cellDefaults with
  domain := ⟨(133874999999999999 / 200000000000000000 : ℚ), (33474999999999999 / 50000000000000000 : ℚ)⟩
  r := (52160631558569 / 100000000000000 : ℚ)
  w := (54501234797 / 40000000000 : ℚ)
  center := (53554999999999999 / 80000000000000000 : ℚ)
  supportValue := (30377474490719997 / 100000000000000000 : ℚ)
  supportSlope := (-5247543659532913 / 5000000000000000 : ℚ)
  oldCenter := (30377474490719997 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1558
  oldLo := (6070000000000001 / 20000000000000000 : ℚ)
  oldHi := (6080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_761]
}

noncomputable def cell_11976 : Cell := { cellDefaults with
  domain := ⟨(33474999999999999 / 50000000000000000 : ℚ), (133924999999999999 / 200000000000000000 : ℚ)⟩
  r := (26068573833031 / 50000000000000 : ℚ)
  w := (13623460026961 / 10000000000000 : ℚ)
  center := (53564999999999999 / 80000000000000000 : ℚ)
  supportValue := (6078134072690189 / 20000000000000000 : ℚ)
  supportSlope := (-10502467456098137 / 10000000000000000 : ℚ)
  oldCenter := (6078134072690189 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1559
  oldLo := (6070000000000001 / 20000000000000000 : ℚ)
  oldHi := (6080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_761]
}

noncomputable def cell_11977 : Cell := { cellDefaults with
  domain := ⟨(133924999999999999 / 200000000000000000 : ℚ), (66975000000000001 / 100000000000000000 : ℚ)⟩
  r := (26068573833031 / 50000000000000 : ℚ)
  w := (13623460026961 / 10000000000000 : ℚ)
  center := (267875000000000001 / 400000000000000000 : ℚ)
  supportValue := (3037754974641451 / 10000000000000000 : ℚ)
  supportSlope := (-10490526322442923 / 10000000000000000 : ℚ)
  oldCenter := (3037754974641451 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1559
  oldLo := (6070000000000001 / 20000000000000000 : ℚ)
  oldHi := (6080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_761]
}

noncomputable def cell_11978 : Cell := { cellDefaults with
  domain := ⟨(66975000000000001 / 100000000000000000 : ℚ), (26795000000000001 / 40000000000000000 : ℚ)⟩
  r := (26068573833031 / 50000000000000 : ℚ)
  w := (13623460026961 / 10000000000000 : ℚ)
  center := (267925000000000007 / 400000000000000000 : ℚ)
  supportValue := (1518222201190417 / 5000000000000000 : ℚ)
  supportSlope := (-10478636288374497 / 10000000000000000 : ℚ)
  oldCenter := (1518222201190417 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1559
  oldLo := (6070000000000001 / 20000000000000000 : ℚ)
  oldHi := (6080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_761]
}

noncomputable def cell_11979 : Cell := { cellDefaults with
  domain := ⟨(26795000000000001 / 40000000000000000 : ℚ), (16750000000000001 / 25000000000000000 : ℚ)⟩
  r := (26068573833031 / 50000000000000 : ℚ)
  w := (13623460026961 / 10000000000000 : ℚ)
  center := (267975000000000013 / 400000000000000000 : ℚ)
  supportValue := (1517568718895721 / 5000000000000000 : ℚ)
  supportSlope := (-2094793527701559 / 2000000000000000 : ℚ)
  oldCenter := (1517568718895721 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1559
  oldLo := (15156424581005587 / 50000000000000000 : ℚ)
  oldHi := (6080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_760, piece_761]
}

noncomputable def cell_11980 : Cell := { cellDefaults with
  domain := ⟨(16750000000000001 / 25000000000000000 : ℚ), (26805000000000001 / 40000000000000000 : ℚ)⟩
  r := (52113695340873 / 100000000000000 : ℚ)
  w := (13621627999323 / 10000000000000 : ℚ)
  center := (268025000000000013 / 400000000000000000 : ℚ)
  supportValue := (1518224087115963 / 5000000000000000 : ℚ)
  supportSlope := (-2618513777182011 / 2500000000000000 : ℚ)
  oldCenter := (1518224087115963 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1560
  oldLo := (6070000000000001 / 20000000000000000 : ℚ)
  oldHi := (6080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_761]
}

noncomputable def cell_11981 : Cell := { cellDefaults with
  domain := ⟨(26805000000000001 / 40000000000000000 : ℚ), (67025000000000001 / 100000000000000000 : ℚ)⟩
  r := (52113695340873 / 100000000000000 : ℚ)
  w := (13621627999323 / 10000000000000 : ℚ)
  center := (268075000000000007 / 400000000000000000 : ℚ)
  supportValue := (1517570890821879 / 5000000000000000 : ℚ)
  supportSlope := (-10469333056423313 / 10000000000000000 : ℚ)
  oldCenter := (1517570890821879 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1560
  oldLo := (15156424581005587 / 50000000000000000 : ℚ)
  oldHi := (6080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_760, piece_761]
}

noncomputable def cell_11982 : Cell := { cellDefaults with
  domain := ⟨(67025000000000001 / 100000000000000000 : ℚ), (134074999999999999 / 200000000000000000 : ℚ)⟩
  r := (52113695340873 / 100000000000000 : ℚ)
  w := (13621627999323 / 10000000000000 : ℚ)
  center := (268125000000000001 / 400000000000000000 : ℚ)
  supportValue := (606766120866721 / 2000000000000000 : ℚ)
  supportSlope := (-5234182544900451 / 5000000000000000 : ℚ)
  oldCenter := (606766120866721 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1560
  oldLo := (15156424581005587 / 50000000000000000 : ℚ)
  oldHi := (6070000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_760]
}

noncomputable def cell_11983 : Cell := { cellDefaults with
  domain := ⟨(134074999999999999 / 200000000000000000 : ℚ), (33524999999999999 / 50000000000000000 : ℚ)⟩
  r := (52113695340873 / 100000000000000 : ℚ)
  w := (13621627999323 / 10000000000000 : ℚ)
  center := (53634999999999999 / 80000000000000000 : ℚ)
  supportValue := (3032522803264701 / 10000000000000000 : ℚ)
  supportSlope := (-10456458533180257 / 10000000000000000 : ℚ)
  oldCenter := (3032522803264701 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1560
  oldLo := (15156424581005587 / 50000000000000000 : ℚ)
  oldHi := (6070000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_760]
}

noncomputable def cell_11984 : Cell := { cellDefaults with
  domain := ⟨(33524999999999999 / 50000000000000000 : ℚ), (134124999999999999 / 200000000000000000 : ℚ)⟩
  r := (26045132404443 / 50000000000000 : ℚ)
  w := (13619796224767 / 10000000000000 : ℚ)
  center := (53644999999999999 / 80000000000000000 : ℚ)
  supportValue := (6067670514971173 / 20000000000000000 : ℚ)
  supportSlope := (-20437106849119 / 19531250000000 : ℚ)
  oldCenter := (6067670514971173 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1561
  oldLo := (15156424581005587 / 50000000000000000 : ℚ)
  oldHi := (6070000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_760]
}

noncomputable def cell_11985 : Cell := { cellDefaults with
  domain := ⟨(134124999999999999 / 200000000000000000 : ℚ), (67075000000000001 / 100000000000000000 : ℚ)⟩
  r := (26045132404443 / 50000000000000 : ℚ)
  w := (13619796224767 / 10000000000000 : ℚ)
  center := (268275000000000001 / 400000000000000000 : ℚ)
  supportValue := (15162640132820007 / 50000000000000000 : ℚ)
  supportSlope := (-10451902545217517 / 10000000000000000 : ℚ)
  oldCenter := (15162640132820007 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1561
  oldLo := (15156424581005587 / 50000000000000000 : ℚ)
  oldHi := (6070000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_760]
}

noncomputable def cell_11986 : Cell := { cellDefaults with
  domain := ⟨(67075000000000001 / 100000000000000000 : ℚ), (26835000000000001 / 40000000000000000 : ℚ)⟩
  r := (26045132404443 / 50000000000000 : ℚ)
  w := (13619796224767 / 10000000000000 : ℚ)
  center := (268325000000000007 / 400000000000000000 : ℚ)
  supportValue := (606244455914851 / 2000000000000000 : ℚ)
  supportSlope := (-10440048237202317 / 10000000000000000 : ℚ)
  oldCenter := (606244455914851 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1561
  oldLo := (6060000000000001 / 20000000000000000 : ℚ)
  oldHi := (6070000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_759, piece_760]
}

noncomputable def cell_11987 : Cell := { cellDefaults with
  domain := ⟨(26835000000000001 / 40000000000000000 : ℚ), (16775000000000001 / 25000000000000000 : ℚ)⟩
  r := (26045132404443 / 50000000000000 : ℚ)
  w := (13619796224767 / 10000000000000 : ℚ)
  center := (268375000000000013 / 400000000000000000 : ℚ)
  supportValue := (3029919989391927 / 10000000000000000 : ℚ)
  supportSlope := (-10438405373694861 / 10000000000000000 : ℚ)
  oldCenter := (3029919989391927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1561
  oldLo := (6050000000000001 / 20000000000000000 : ℚ)
  oldHi := (15156424581005587 / 50000000000000000 : ℚ)
  oldPieces := [piece_758, piece_759]
}

noncomputable def cell_11988 : Cell := { cellDefaults with
  domain := ⟨(16775000000000001 / 25000000000000000 : ℚ), (268450000000000011 / 400000000000000000 : ℚ)⟩
  r := (52066865060023 / 100000000000000 : ℚ)
  w := (851123729587 / 625000000000 : ℚ)
  center := (536850000000000027 / 800000000000000000 : ℚ)
  supportValue := (6062448191822023 / 20000000000000000 : ℚ)
  supportSlope := (-10435474862903127 / 10000000000000000 : ℚ)
  oldCenter := (6062448191822023 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1562
  oldLo := (6060000000000001 / 20000000000000000 : ℚ)
  oldHi := (6070000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_759, piece_760]
}

noncomputable def cell_11989 : Cell := { cellDefaults with
  domain := ⟨(268450000000000011 / 400000000000000000 : ℚ), (134250000000000003 / 200000000000000000 : ℚ)⟩
  r := (52066865060023 / 100000000000000 : ℚ)
  w := (851123729587 / 625000000000 : ℚ)
  center := (536950000000000017 / 800000000000000000 : ℚ)
  supportValue := (7574805952220931 / 25000000000000000 : ℚ)
  supportSlope := (-5216902741920737 / 5000000000000000 : ℚ)
  oldCenter := (7574805952220931 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1562
  oldLo := (6050000000000001 / 20000000000000000 : ℚ)
  oldHi := (15156424581005587 / 50000000000000000 : ℚ)
  oldPieces := [piece_758, piece_759]
}

noncomputable def cell_11990 : Cell := { cellDefaults with
  domain := ⟨(134250000000000003 / 200000000000000000 : ℚ), (268550000000000001 / 400000000000000000 : ℚ)⟩
  r := (52066865060023 / 100000000000000 : ℚ)
  w := (851123729587 / 625000000000 : ℚ)
  center := (537050000000000007 / 800000000000000000 : ℚ)
  supportValue := (7571539465814331 / 25000000000000000 : ℚ)
  supportSlope := (-10429850296952357 / 10000000000000000 : ℚ)
  oldCenter := (7571539465814331 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1562
  oldLo := (6050000000000001 / 20000000000000000 : ℚ)
  oldHi := (6060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_758]
}

noncomputable def cell_11991 : Cell := { cellDefaults with
  domain := ⟨(268550000000000001 / 400000000000000000 : ℚ), (67149999999999999 / 100000000000000000 : ℚ)⟩
  r := (52066865060023 / 100000000000000 : ℚ)
  w := (851123729587 / 625000000000 : ℚ)
  center := (537149999999999997 / 800000000000000000 : ℚ)
  supportValue := (605462558999071 / 2000000000000000 : ℚ)
  supportSlope := (-5209008717788587 / 5000000000000000 : ℚ)
  oldCenter := (605462558999071 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1562
  oldLo := (6050000000000001 / 20000000000000000 : ℚ)
  oldHi := (6060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_758]
}

noncomputable def cell_11992 : Cell := { cellDefaults with
  domain := ⟨(67149999999999999 / 100000000000000000 : ℚ), (268650000000000001 / 400000000000000000 : ℚ)⟩
  r := (52043486467543 / 100000000000000 : ℚ)
  w := (3404040729373 / 2500000000000 : ℚ)
  center := (537249999999999997 / 800000000000000000 : ℚ)
  supportValue := (3028618620525989 / 10000000000000000 : ℚ)
  supportSlope := (-10425292495294183 / 10000000000000000 : ℚ)
  oldCenter := (3028618620525989 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1563
  oldLo := (6050000000000001 / 20000000000000000 : ℚ)
  oldHi := (6060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_758]
}

noncomputable def cell_11993 : Cell := { cellDefaults with
  domain := ⟨(268650000000000001 / 400000000000000000 : ℚ), (134350000000000003 / 200000000000000000 : ℚ)⟩
  r := (52043486467543 / 100000000000000 : ℚ)
  w := (3404040729373 / 2500000000000 : ℚ)
  center := (537350000000000007 / 800000000000000000 : ℚ)
  supportValue := (7568290495677439 / 25000000000000000 : ℚ)
  supportSlope := (-5206735008779807 / 5000000000000000 : ℚ)
  oldCenter := (7568290495677439 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1563
  oldLo := (6050000000000001 / 20000000000000000 : ℚ)
  oldHi := (6060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_758]
}

noncomputable def cell_11994 : Cell := { cellDefaults with
  domain := ⟨(134350000000000003 / 200000000000000000 : ℚ), (268750000000000011 / 400000000000000000 : ℚ)⟩
  r := (52043486467543 / 100000000000000 : ℚ)
  w := (3404040729373 / 2500000000000 : ℚ)
  center := (537450000000000017 / 800000000000000000 : ℚ)
  supportValue := (3026015250660413 / 10000000000000000 : ℚ)
  supportSlope := (-2080339621146413 / 2000000000000000 : ℚ)
  oldCenter := (3026015250660413 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1563
  oldLo := (6050000000000001 / 20000000000000000 : ℚ)
  oldHi := (6060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_758]
}

noncomputable def cell_11995 : Cell := { cellDefaults with
  domain := ⟨(268750000000000011 / 400000000000000000 : ℚ), (16800000000000001 / 25000000000000000 : ℚ)⟩
  r := (52043486467543 / 100000000000000 : ℚ)
  w := (3404040729373 / 2500000000000 : ℚ)
  center := (537550000000000027 / 800000000000000000 : ℚ)
  supportValue := (3024717394128779 / 10000000000000000 : ℚ)
  supportSlope := (-1300364203753327 / 1250000000000000 : ℚ)
  oldCenter := (3024717394128779 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1563
  oldLo := (6040000000000001 / 20000000000000000 : ℚ)
  oldHi := (6060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_757, piece_758]
}

noncomputable def cell_11996 : Cell := { cellDefaults with
  domain := ⟨(16800000000000001 / 25000000000000000 : ℚ), (268850000000000011 / 400000000000000000 : ℚ)⟩
  r := (10404027782789 / 20000000000000 : ℚ)
  w := (13614362179047 / 10000000000000 : ℚ)
  center := (537650000000000027 / 800000000000000000 : ℚ)
  supportValue := (7565037682612491 / 25000000000000000 : ℚ)
  supportSlope := (-2079426393786429 / 2000000000000000 : ℚ)
  oldCenter := (7565037682612491 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1564
  oldLo := (6050000000000001 / 20000000000000000 : ℚ)
  oldHi := (6060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_758]
}

noncomputable def cell_11997 : Cell := { cellDefaults with
  domain := ⟨(268850000000000011 / 400000000000000000 : ℚ), (134450000000000003 / 200000000000000000 : ℚ)⟩
  r := (10404027782789 / 20000000000000 : ℚ)
  w := (13614362179047 / 10000000000000 : ℚ)
  center := (537750000000000017 / 800000000000000000 : ℚ)
  supportValue := (1512358893655427 / 5000000000000000 : ℚ)
  supportSlope := (-10398348533487907 / 10000000000000000 : ℚ)
  oldCenter := (1512358893655427 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1564
  oldLo := (6040000000000001 / 20000000000000000 : ℚ)
  oldHi := (6060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_757, piece_758]
}

noncomputable def cell_11998 : Cell := { cellDefaults with
  domain := ⟨(134450000000000003 / 200000000000000000 : ℚ), (268950000000000001 / 400000000000000000 : ℚ)⟩
  r := (10404027782789 / 20000000000000 : ℚ)
  w := (13614362179047 / 10000000000000 : ℚ)
  center := (537850000000000007 / 800000000000000000 : ℚ)
  supportValue := (3023415982841083 / 10000000000000000 : ℚ)
  supportSlope := (-5195791891097721 / 5000000000000000 : ℚ)
  oldCenter := (3023415982841083 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1564
  oldLo := (6040000000000001 / 20000000000000000 : ℚ)
  oldHi := (6050000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_757]
}

noncomputable def cell_11999 : Cell := { cellDefaults with
  domain := ⟨(268950000000000001 / 400000000000000000 : ℚ), (67249999999999999 / 100000000000000000 : ℚ)⟩
  r := (10404027782789 / 20000000000000 : ℚ)
  w := (13614362179047 / 10000000000000 : ℚ)
  center := (537949999999999997 / 800000000000000000 : ℚ)
  supportValue := (30221177716986447 / 100000000000000000 : ℚ)
  supportSlope := (-5189900459079929 / 5000000000000000 : ℚ)
  oldCenter := (30221177716986447 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1564
  oldLo := (6040000000000001 / 20000000000000000 : ℚ)
  oldHi := (6050000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_757]
}

theorem check_11950 : cell_11950.check = true := by
  decide +kernel

theorem check_11951 : cell_11951.check = true := by
  decide +kernel

theorem check_11952 : cell_11952.check = true := by
  decide +kernel

theorem check_11953 : cell_11953.check = true := by
  decide +kernel

theorem check_11954 : cell_11954.check = true := by
  decide +kernel

theorem check_11955 : cell_11955.check = true := by
  decide +kernel

theorem check_11956 : cell_11956.check = true := by
  decide +kernel

theorem check_11957 : cell_11957.check = true := by
  decide +kernel

theorem check_11958 : cell_11958.check = true := by
  decide +kernel

theorem check_11959 : cell_11959.check = true := by
  decide +kernel

theorem check_11960 : cell_11960.check = true := by
  decide +kernel

theorem check_11961 : cell_11961.check = true := by
  decide +kernel

theorem check_11962 : cell_11962.check = true := by
  decide +kernel

theorem check_11963 : cell_11963.check = true := by
  decide +kernel

theorem check_11964 : cell_11964.check = true := by
  decide +kernel

theorem check_11965 : cell_11965.check = true := by
  decide +kernel

theorem check_11966 : cell_11966.check = true := by
  decide +kernel

theorem check_11967 : cell_11967.check = true := by
  decide +kernel

theorem check_11968 : cell_11968.check = true := by
  decide +kernel

theorem check_11969 : cell_11969.check = true := by
  decide +kernel

theorem check_11970 : cell_11970.check = true := by
  decide +kernel

theorem check_11971 : cell_11971.check = true := by
  decide +kernel

theorem check_11972 : cell_11972.check = true := by
  decide +kernel

theorem check_11973 : cell_11973.check = true := by
  decide +kernel

theorem check_11974 : cell_11974.check = true := by
  decide +kernel

theorem check_11975 : cell_11975.check = true := by
  decide +kernel

theorem check_11976 : cell_11976.check = true := by
  decide +kernel

theorem check_11977 : cell_11977.check = true := by
  decide +kernel

theorem check_11978 : cell_11978.check = true := by
  decide +kernel

theorem check_11979 : cell_11979.check = true := by
  decide +kernel

theorem check_11980 : cell_11980.check = true := by
  decide +kernel

theorem check_11981 : cell_11981.check = true := by
  decide +kernel

theorem check_11982 : cell_11982.check = true := by
  decide +kernel

theorem check_11983 : cell_11983.check = true := by
  decide +kernel

theorem check_11984 : cell_11984.check = true := by
  decide +kernel

theorem check_11985 : cell_11985.check = true := by
  decide +kernel

theorem check_11986 : cell_11986.check = true := by
  decide +kernel

theorem check_11987 : cell_11987.check = true := by
  decide +kernel

theorem check_11988 : cell_11988.check = true := by
  decide +kernel

theorem check_11989 : cell_11989.check = true := by
  decide +kernel

theorem check_11990 : cell_11990.check = true := by
  decide +kernel

theorem check_11991 : cell_11991.check = true := by
  decide +kernel

theorem check_11992 : cell_11992.check = true := by
  decide +kernel

theorem check_11993 : cell_11993.check = true := by
  decide +kernel

theorem check_11994 : cell_11994.check = true := by
  decide +kernel

theorem check_11995 : cell_11995.check = true := by
  decide +kernel

theorem check_11996 : cell_11996.check = true := by
  decide +kernel

theorem check_11997 : cell_11997.check = true := by
  decide +kernel

theorem check_11998 : cell_11998.check = true := by
  decide +kernel

theorem check_11999 : cell_11999.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11950, cell_11951, cell_11952, cell_11953, cell_11954, cell_11955, cell_11956, cell_11957, cell_11958, cell_11959, cell_11960, cell_11961, cell_11962, cell_11963, cell_11964, cell_11965, cell_11966, cell_11967, cell_11968, cell_11969, cell_11970, cell_11971, cell_11972, cell_11973, cell_11974, cell_11975, cell_11976, cell_11977, cell_11978, cell_11979, cell_11980, cell_11981, cell_11982, cell_11983, cell_11984, cell_11985, cell_11986, cell_11987, cell_11988, cell_11989, cell_11990, cell_11991, cell_11992, cell_11993, cell_11994, cell_11995, cell_11996, cell_11997, cell_11998, cell_11999]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11950, check_11951, check_11952, check_11953, check_11954, check_11955, check_11956, check_11957, check_11958, check_11959, check_11960, check_11961, check_11962, check_11963, check_11964, check_11965, check_11966, check_11967, check_11968, check_11969, check_11970, check_11971, check_11972, check_11973, check_11974, check_11975, check_11976, check_11977, check_11978, check_11979, check_11980, check_11981, check_11982, check_11983, check_11984, check_11985, check_11986, check_11987, check_11988, check_11989, check_11990, check_11991, check_11992, check_11993, check_11994, check_11995, check_11996, check_11997, check_11998, check_11999, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0239

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0239
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0239
open AnalyticBounds.ExpressionCertificate

theorem linked_11950 : Linked cell_11950 pieces := by
  link_source cell_11950 with piece_1551 using piece_1551_mem, piece_765_mem

theorem linked_11951 : Linked cell_11951 pieces := by
  link_source cell_11951 with piece_1551 using piece_1551_mem, ⟨piece_764_mem, piece_765_mem⟩

theorem linked_11952 : Linked cell_11952 pieces := by
  link_source cell_11952 with piece_1551 using piece_1551_mem, piece_764_mem

theorem linked_11953 : Linked cell_11953 pieces := by
  link_source cell_11953 with piece_1552 using piece_1552_mem, ⟨piece_764_mem, piece_765_mem⟩

theorem linked_11954 : Linked cell_11954 pieces := by
  link_source cell_11954 with piece_1552 using piece_1552_mem, piece_764_mem

theorem linked_11955 : Linked cell_11955 pieces := by
  link_source cell_11955 with piece_1552 using piece_1552_mem, piece_764_mem

theorem linked_11956 : Linked cell_11956 pieces := by
  link_source cell_11956 with piece_1552 using piece_1552_mem, piece_764_mem

theorem linked_11957 : Linked cell_11957 pieces := by
  link_source cell_11957 with piece_1553 using piece_1553_mem, piece_764_mem

theorem linked_11958 : Linked cell_11958 pieces := by
  link_source cell_11958 with piece_1553 using piece_1553_mem, piece_764_mem

theorem linked_11959 : Linked cell_11959 pieces := by
  link_source cell_11959 with piece_1553 using piece_1553_mem, ⟨piece_763_mem, piece_764_mem⟩

theorem linked_11960 : Linked cell_11960 pieces := by
  link_source cell_11960 with piece_1553 using piece_1553_mem, piece_763_mem

theorem linked_11961 : Linked cell_11961 pieces := by
  link_source cell_11961 with piece_1554 using piece_1554_mem, ⟨piece_763_mem, piece_764_mem⟩

theorem linked_11962 : Linked cell_11962 pieces := by
  link_source cell_11962 with piece_1554 using piece_1554_mem, piece_763_mem

theorem linked_11963 : Linked cell_11963 pieces := by
  link_source cell_11963 with piece_1554 using piece_1554_mem, piece_763_mem

theorem linked_11964 : Linked cell_11964 pieces := by
  link_source cell_11964 with piece_1554 using piece_1554_mem, ⟨piece_762_mem, piece_763_mem⟩

theorem linked_11965 : Linked cell_11965 pieces := by
  link_source cell_11965 with piece_1555 using piece_1555_mem, piece_763_mem

theorem linked_11966 : Linked cell_11966 pieces := by
  link_source cell_11966 with piece_1556 using piece_1556_mem, ⟨piece_762_mem, piece_763_mem⟩

theorem linked_11967 : Linked cell_11967 pieces := by
  link_source cell_11967 with piece_1556 using piece_1556_mem, piece_762_mem

theorem linked_11968 : Linked cell_11968 pieces := by
  link_source cell_11968 with piece_1557 using piece_1557_mem, piece_762_mem

theorem linked_11969 : Linked cell_11969 pieces := by
  link_source cell_11969 with piece_1557 using piece_1557_mem, piece_762_mem

theorem linked_11970 : Linked cell_11970 pieces := by
  link_source cell_11970 with piece_1557 using piece_1557_mem, piece_762_mem

theorem linked_11971 : Linked cell_11971 pieces := by
  link_source cell_11971 with piece_1557 using piece_1557_mem, ⟨piece_761_mem, piece_762_mem⟩

theorem linked_11972 : Linked cell_11972 pieces := by
  link_source cell_11972 with piece_1558 using piece_1558_mem, piece_762_mem

theorem linked_11973 : Linked cell_11973 pieces := by
  link_source cell_11973 with piece_1558 using piece_1558_mem, ⟨piece_761_mem, piece_762_mem⟩

theorem linked_11974 : Linked cell_11974 pieces := by
  link_source cell_11974 with piece_1558 using piece_1558_mem, piece_761_mem

theorem linked_11975 : Linked cell_11975 pieces := by
  link_source cell_11975 with piece_1558 using piece_1558_mem, piece_761_mem

theorem linked_11976 : Linked cell_11976 pieces := by
  link_source cell_11976 with piece_1559 using piece_1559_mem, piece_761_mem

theorem linked_11977 : Linked cell_11977 pieces := by
  link_source cell_11977 with piece_1559 using piece_1559_mem, piece_761_mem

theorem linked_11978 : Linked cell_11978 pieces := by
  link_source cell_11978 with piece_1559 using piece_1559_mem, piece_761_mem

theorem linked_11979 : Linked cell_11979 pieces := by
  link_source cell_11979 with piece_1559 using piece_1559_mem, ⟨piece_760_mem, piece_761_mem⟩

theorem linked_11980 : Linked cell_11980 pieces := by
  link_source cell_11980 with piece_1560 using piece_1560_mem, piece_761_mem

theorem linked_11981 : Linked cell_11981 pieces := by
  link_source cell_11981 with piece_1560 using piece_1560_mem, ⟨piece_760_mem, piece_761_mem⟩

theorem linked_11982 : Linked cell_11982 pieces := by
  link_source cell_11982 with piece_1560 using piece_1560_mem, piece_760_mem

theorem linked_11983 : Linked cell_11983 pieces := by
  link_source cell_11983 with piece_1560 using piece_1560_mem, piece_760_mem

theorem linked_11984 : Linked cell_11984 pieces := by
  link_source cell_11984 with piece_1561 using piece_1561_mem, piece_760_mem

theorem linked_11985 : Linked cell_11985 pieces := by
  link_source cell_11985 with piece_1561 using piece_1561_mem, piece_760_mem

theorem linked_11986 : Linked cell_11986 pieces := by
  link_source cell_11986 with piece_1561 using piece_1561_mem, ⟨piece_759_mem, piece_760_mem⟩

theorem linked_11987 : Linked cell_11987 pieces := by
  link_source cell_11987 with piece_1561 using piece_1561_mem, ⟨piece_758_mem, piece_759_mem⟩

theorem linked_11988 : Linked cell_11988 pieces := by
  link_source cell_11988 with piece_1562 using piece_1562_mem, ⟨piece_759_mem, piece_760_mem⟩

theorem linked_11989 : Linked cell_11989 pieces := by
  link_source cell_11989 with piece_1562 using piece_1562_mem, ⟨piece_758_mem, piece_759_mem⟩

theorem linked_11990 : Linked cell_11990 pieces := by
  link_source cell_11990 with piece_1562 using piece_1562_mem, piece_758_mem

theorem linked_11991 : Linked cell_11991 pieces := by
  link_source cell_11991 with piece_1562 using piece_1562_mem, piece_758_mem

theorem linked_11992 : Linked cell_11992 pieces := by
  link_source cell_11992 with piece_1563 using piece_1563_mem, piece_758_mem

theorem linked_11993 : Linked cell_11993 pieces := by
  link_source cell_11993 with piece_1563 using piece_1563_mem, piece_758_mem

theorem linked_11994 : Linked cell_11994 pieces := by
  link_source cell_11994 with piece_1563 using piece_1563_mem, piece_758_mem

theorem linked_11995 : Linked cell_11995 pieces := by
  link_source cell_11995 with piece_1563 using piece_1563_mem, ⟨piece_757_mem, piece_758_mem⟩

theorem linked_11996 : Linked cell_11996 pieces := by
  link_source cell_11996 with piece_1564 using piece_1564_mem, piece_758_mem

theorem linked_11997 : Linked cell_11997 pieces := by
  link_source cell_11997 with piece_1564 using piece_1564_mem, ⟨piece_757_mem, piece_758_mem⟩

theorem linked_11998 : Linked cell_11998 pieces := by
  link_source cell_11998 with piece_1564 using piece_1564_mem, piece_757_mem

theorem linked_11999 : Linked cell_11999 pieces := by
  link_source cell_11999 with piece_1564 using piece_1564_mem, piece_757_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0239.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0239.cells,List.forall_mem_cons]
  exact ⟨linked_11950, linked_11951, linked_11952, linked_11953, linked_11954, linked_11955, linked_11956, linked_11957, linked_11958, linked_11959, linked_11960, linked_11961, linked_11962, linked_11963, linked_11964, linked_11965, linked_11966, linked_11967, linked_11968, linked_11969, linked_11970, linked_11971, linked_11972, linked_11973, linked_11974, linked_11975, linked_11976, linked_11977, linked_11978, linked_11979, linked_11980, linked_11981, linked_11982, linked_11983, linked_11984, linked_11985, linked_11986, linked_11987, linked_11988, linked_11989, linked_11990, linked_11991, linked_11992, linked_11993, linked_11994, linked_11995, linked_11996, linked_11997, linked_11998, linked_11999, by simp⟩

theorem covered : covers (26645000000000001 / 40000000000000000 : ℚ) (67249999999999999 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0239.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0239
end
