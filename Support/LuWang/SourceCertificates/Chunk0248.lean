import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0248
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(28885000000000003 / 40000000000000000 : ℚ), (36112500000000003 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (24885695264439 / 50000000000000 : ℚ)
  w := (13473909680287 / 10000000000000 : ℚ)
  center := (288875000000000027 / 400000000000000000 : ℚ)
  supportValue := (1390761653702323 / 5000000000000000 : ℚ)
  supportSlope := (-8678683974833109 / 10000000000000000 : ℚ)
  oldCenter := (1390761653702323 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1674
  oldLo := (13875000000000001 / 50000000000000000 : ℚ)
  oldHi := (13900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_704]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_12400 : Cell := { cellDefaults with
  r := (49813026328299 / 100000000000000 : ℚ)
  w := (13475766152763 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1673
  oldLo := (13900000000000001 / 50000000000000000 : ℚ)
  oldHi := (27850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_705]
}

noncomputable def cell_12401 : Cell := { cellDefaults with
  domain := ⟨(36112500000000003 / 50000000000000000 : ℚ), (144475000000000009 / 200000000000000000 : ℚ)⟩
  r := (49813026328299 / 100000000000000 : ℚ)
  w := (13475766152763 / 10000000000000 : ℚ)
  center := (288925000000000021 / 400000000000000000 : ℚ)
  supportValue := (1390220501449351 / 5000000000000000 : ℚ)
  supportSlope := (-43354496108133 / 50000000000000 : ℚ)
  oldCenter := (1390220501449351 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1673
  oldHi := (27850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_704, piece_705]
}

noncomputable def cell_12402 : Cell := { cellDefaults with
  domain := ⟨(144475000000000009 / 200000000000000000 : ℚ), (72250000000000003 / 100000000000000000 : ℚ)⟩
  r := (49813026328299 / 100000000000000 : ℚ)
  w := (13475766152763 / 10000000000000 : ℚ)
  center := (57795000000000003 / 80000000000000000 : ℚ)
  supportValue := (27793547545617003 / 100000000000000000 : ℚ)
  supportSlope := (-4338170203346779 / 5000000000000000 : ℚ)
  oldCenter := (27793547545617003 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1673
  oldPieces := [piece_704]
}

noncomputable def cell_12403 : Cell := { cellDefaults with
  domain := ⟨(72250000000000003 / 100000000000000000 : ℚ), (144525000000000009 / 200000000000000000 : ℚ)⟩
  r := (24896098679601 / 50000000000000 : ℚ)
  w := (1684354206701 / 1250000000000 : ℚ)
  center := (57805000000000003 / 80000000000000000 : ℚ)
  supportValue := (6950818564136961 / 25000000000000000 : ℚ)
  supportSlope := (-4334096471802531 / 5000000000000000 : ℚ)
  oldCenter := (6950818564136961 / 25000000000000000 : ℚ)
  oldHi := (27850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_704, piece_705]
}

noncomputable def cell_12404 : Cell := { cellDefaults with
  domain := ⟨(144525000000000009 / 200000000000000000 : ℚ), (36137500000000003 / 50000000000000000 : ℚ)⟩
  r := (24896098679601 / 50000000000000 : ℚ)
  w := (1684354206701 / 1250000000000 : ℚ)
  center := (289075000000000021 / 400000000000000000 : ℚ)
  supportValue := (868512973813617 / 3125000000000000 : ℚ)
  supportSlope := (-2167978196329929 / 2500000000000000 : ℚ)
  oldCenter := (868512973813617 / 3125000000000000 : ℚ)
  oldPieces := [piece_704]
}

noncomputable def cell_12405 : Cell := { cellDefaults with
  domain := ⟨(36137500000000003 / 50000000000000000 : ℚ), (28915000000000003 / 40000000000000000 : ℚ)⟩
  r := (24896098679601 / 50000000000000 : ℚ)
  w := (1684354206701 / 1250000000000 : ℚ)
  center := (289125000000000027 / 400000000000000000 : ℚ)
  supportValue := (5556316228224919 / 20000000000000000 : ℚ)
  supportSlope := (-8662525563795169 / 10000000000000000 : ℚ)
  oldCenter := (5556316228224919 / 20000000000000000 : ℚ)
  oldPieces := [piece_704]
}

noncomputable def cell_12406 : Cell := { cellDefaults with
  domain := ⟨(28915000000000003 / 40000000000000000 : ℚ), (72300000000000009 / 100000000000000000 : ℚ)⟩
  r := (24896098679601 / 50000000000000 : ℚ)
  w := (1684354206701 / 1250000000000 : ℚ)
  center := (289175000000000033 / 400000000000000000 : ℚ)
  supportValue := (2777075882905677 / 10000000000000000 : ℚ)
  supportSlope := (-1730635714933163 / 2000000000000000 : ℚ)
  oldCenter := (2777075882905677 / 10000000000000000 : ℚ)
  oldPieces := [piece_704]
}

noncomputable def cell_12407 : Cell := { cellDefaults with
  domain := ⟨(72300000000000009 / 100000000000000000 : ℚ), (289246368715083827 / 400000000000000000 : ℚ)⟩
  center := (578446368715083863 / 800000000000000000 : ℚ)
  supportValue := (2778082789813069 / 10000000000000000 : ℚ)
  supportSlope := (-4329219036144013 / 5000000000000000 : ℚ)
  oldCenter := (2778082789813069 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1675
  oldPieces := [piece_704]
}

noncomputable def cell_12408 : Cell := { cellDefaults with
  domain := ⟨(289246368715083827 / 400000000000000000 : ℚ), (144646368715083809 / 200000000000000000 : ℚ)⟩
  center := (115707821229050289 / 160000000000000000 : ℚ)
  supportValue := (347134948792023 / 1250000000000000 : ℚ)
  supportSlope := (-67576390672059 / 78125000000000 : ℚ)
  oldCenter := (347134948792023 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1675
  oldPieces := [piece_704]
}

noncomputable def cell_12409 : Cell := { cellDefaults with
  domain := ⟨(144646368715083809 / 200000000000000000 : ℚ), (289339106145251409 / 400000000000000000 : ℚ)⟩
  center := (578631843575419027 / 800000000000000000 : ℚ)
  supportValue := (27760773927570187 / 100000000000000000 : ℚ)
  supportSlope := (-1080144033904863 / 1250000000000000 : ℚ)
  oldCenter := (27760773927570187 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1675
  oldPieces := [piece_704]
}

noncomputable def cell_12410 : Cell := { cellDefaults with
  domain := ⟨(289339106145251409 / 400000000000000000 : ℚ), (361731843575419 / 500000000000000 : ℚ)⟩
  center := (578724581005586609 / 800000000000000000 : ℚ)
  supportValue := (86721191739399 / 312500000000000 : ℚ)
  supportSlope := (-8639476424450013 / 10000000000000000 : ℚ)
  oldCenter := (86721191739399 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1675
  oldLo := (13850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_703, piece_704]
}

noncomputable def cell_12411 : Cell := { cellDefaults with
  domain := ⟨(361731843575419 / 500000000000000 : ℚ), (72350000000000003 / 100000000000000000 : ℚ)⟩
  center := (144696368715083803 / 200000000000000000 : ℚ)
  supportValue := (2774417668291917 / 10000000000000000 : ℚ)
  supportSlope := (-8643166136031191 / 10000000000000000 : ℚ)
  oldCenter := (2774417668291917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1676
  oldLo := (13850000000000001 / 50000000000000000 : ℚ)
  oldHi := (13875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_703]
}

noncomputable def cell_12412 : Cell := { cellDefaults with
  domain := ⟨(72350000000000003 / 100000000000000000 : ℚ), (289450000000000007 / 400000000000000000 : ℚ)⟩
  r := (49750610976227 / 100000000000000 : ℚ)
  w := (6736500313701 / 5000000000000 : ℚ)
  center := (578850000000000019 / 800000000000000000 : ℚ)
  supportValue := (27757643094812373 / 100000000000000000 : ℚ)
  supportSlope := (-269845041659971 / 312500000000000 : ℚ)
  oldCenter := (27757643094812373 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1677
  oldPieces := [piece_704]
}

noncomputable def cell_12413 : Cell := { cellDefaults with
  domain := ⟨(289450000000000007 / 400000000000000000 : ℚ), (144750000000000001 / 200000000000000000 : ℚ)⟩
  r := (49750610976227 / 100000000000000 : ℚ)
  w := (6736500313701 / 5000000000000 : ℚ)
  center := (578950000000000009 / 800000000000000000 : ℚ)
  supportValue := (2774686854391139 / 10000000000000000 : ℚ)
  supportSlope := (-4319335390819289 / 5000000000000000 : ℚ)
  oldCenter := (2774686854391139 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1677
  oldLo := (13850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_703, piece_704]
}

noncomputable def cell_12414 : Cell := { cellDefaults with
  domain := ⟨(144750000000000001 / 200000000000000000 : ℚ), (289549999999999997 / 400000000000000000 : ℚ)⟩
  r := (49750610976227 / 100000000000000 : ℚ)
  w := (6736500313701 / 5000000000000 : ℚ)
  center := (579049999999999999 / 800000000000000000 : ℚ)
  supportValue := (1386802620049091 / 5000000000000000 : ℚ)
  supportSlope := (-8632697194635749 / 10000000000000000 : ℚ)
  oldCenter := (1386802620049091 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1677
  oldLo := (13850000000000001 / 50000000000000000 : ℚ)
  oldHi := (13875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_703]
}

noncomputable def cell_12415 : Cell := { cellDefaults with
  domain := ⟨(289549999999999997 / 400000000000000000 : ℚ), (36199999999999999 / 50000000000000000 : ℚ)⟩
  r := (49750610976227 / 100000000000000 : ℚ)
  w := (6736500313701 / 5000000000000 : ℚ)
  center := (579149999999999989 / 800000000000000000 : ℚ)
  supportValue := (2772526735910413 / 10000000000000000 : ℚ)
  supportSlope := (-4311687322751543 / 5000000000000000 : ℚ)
  oldCenter := (2772526735910413 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1677
  oldLo := (13850000000000001 / 50000000000000000 : ℚ)
  oldHi := (13875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_703]
}

noncomputable def cell_12416 : Cell := { cellDefaults with
  domain := ⟨(36199999999999999 / 50000000000000000 : ℚ), (289649999999999997 / 400000000000000000 : ℚ)⟩
  r := (24864925803167 / 50000000000000 : ℚ)
  w := (13472094052513 / 10000000000000 : ℚ)
  center := (579249999999999989 / 800000000000000000 : ℚ)
  supportValue := (346686047634401 / 1250000000000000 : ℚ)
  supportSlope := (-269633402252529 / 312500000000000 : ℚ)
  oldCenter := (346686047634401 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1678
  oldLo := (13850000000000001 / 50000000000000000 : ℚ)
  oldHi := (13875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_703]
}

noncomputable def cell_12417 : Cell := { cellDefaults with
  domain := ⟨(289649999999999997 / 400000000000000000 : ℚ), (144850000000000001 / 200000000000000000 : ℚ)⟩
  r := (24864925803167 / 50000000000000 : ℚ)
  w := (13472094052513 / 10000000000000 : ℚ)
  center := (579349999999999999 / 800000000000000000 : ℚ)
  supportValue := (86637825927827 / 312500000000000 : ℚ)
  supportSlope := (-8618958103178391 / 10000000000000000 : ℚ)
  oldCenter := (86637825927827 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1678
  oldLo := (13850000000000001 / 50000000000000000 : ℚ)
  oldHi := (13875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_703]
}

noncomputable def cell_12418 : Cell := { cellDefaults with
  domain := ⟨(144850000000000001 / 200000000000000000 : ℚ), (289750000000000007 / 400000000000000000 : ℚ)⟩
  r := (24864925803167 / 50000000000000 : ℚ)
  w := (13472094052513 / 10000000000000 : ℚ)
  center := (579450000000000009 / 800000000000000000 : ℚ)
  supportValue := (27713336396579413 / 100000000000000000 : ℚ)
  supportSlope := (-53810544849703 / 62500000000000 : ℚ)
  oldCenter := (27713336396579413 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1678
  oldLo := (13850000000000001 / 50000000000000000 : ℚ)
  oldHi := (13875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_703]
}

noncomputable def cell_12419 : Cell := { cellDefaults with
  domain := ⟨(289750000000000007 / 400000000000000000 : ℚ), (72450000000000003 / 100000000000000000 : ℚ)⟩
  r := (24864925803167 / 50000000000000 : ℚ)
  w := (13472094052513 / 10000000000000 : ℚ)
  center := (579550000000000019 / 800000000000000000 : ℚ)
  supportValue := (55405198903879 / 200000000000000 : ℚ)
  supportSlope := (-860469544709111 / 1000000000000000 : ℚ)
  oldCenter := (55405198903879 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1678
  oldLo := (13825000000000001 / 50000000000000000 : ℚ)
  oldHi := (13875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_702, piece_703]
}

noncomputable def cell_12420 : Cell := { cellDefaults with
  domain := ⟨(72450000000000003 / 100000000000000000 : ℚ), (289850000000000007 / 400000000000000000 : ℚ)⟩
  r := (49709121821359 / 100000000000000 : ℚ)
  w := (336780230223 / 250000000000 : ℚ)
  center := (579650000000000019 / 800000000000000000 : ℚ)
  supportValue := (2771213085961877 / 10000000000000000 : ℚ)
  supportSlope := (-8605249772913631 / 10000000000000000 : ℚ)
  oldCenter := (2771213085961877 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1679
  oldLo := (13850000000000001 / 50000000000000000 : ℚ)
  oldHi := (13875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_703]
}

noncomputable def cell_12421 : Cell := { cellDefaults with
  domain := ⟨(289850000000000007 / 400000000000000000 : ℚ), (144950000000000001 / 200000000000000000 : ℚ)⟩
  r := (49709121821359 / 100000000000000 : ℚ)
  w := (336780230223 / 250000000000 : ℚ)
  center := (579750000000000009 / 800000000000000000 : ℚ)
  supportValue := (5540279890708033 / 20000000000000000 : ℚ)
  supportSlope := (-2150519583854697 / 2500000000000000 : ℚ)
  oldCenter := (5540279890708033 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1679
  oldLo := (13825000000000001 / 50000000000000000 : ℚ)
  oldHi := (13875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_702, piece_703]
}

noncomputable def cell_12422 : Cell := { cellDefaults with
  domain := ⟨(144950000000000001 / 200000000000000000 : ℚ), (289949999999999997 / 400000000000000000 : ℚ)⟩
  r := (49709121821359 / 100000000000000 : ℚ)
  w := (336780230223 / 250000000000 : ℚ)
  center := (579849999999999999 / 800000000000000000 : ℚ)
  supportValue := (2769062309528307 / 10000000000000000 : ℚ)
  supportSlope := (-8602986815358953 / 10000000000000000 : ℚ)
  oldCenter := (2769062309528307 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1679
  oldLo := (13825000000000001 / 50000000000000000 : ℚ)
  oldHi := (13850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_702]
}

noncomputable def cell_12423 : Cell := { cellDefaults with
  domain := ⟨(289949999999999997 / 400000000000000000 : ℚ), (36249999999999999 / 50000000000000000 : ℚ)⟩
  r := (49709121821359 / 100000000000000 : ℚ)
  w := (336780230223 / 250000000000 : ℚ)
  center := (579949999999999989 / 800000000000000000 : ℚ)
  supportValue := (691996879380771 / 2500000000000000 : ℚ)
  supportSlope := (-1718738021379623 / 2000000000000000 : ℚ)
  oldCenter := (691996879380771 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1679
  oldLo := (13825000000000001 / 50000000000000000 : ℚ)
  oldHi := (13850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_702]
}

noncomputable def cell_12424 : Cell := { cellDefaults with
  domain := ⟨(36249999999999999 / 50000000000000000 : ℚ), (290049999999999997 / 400000000000000000 : ℚ)⟩
  r := (12422101929619 / 25000000000000 : ℚ)
  w := (6735158854199 / 5000000000000 : ℚ)
  center := (580049999999999989 / 800000000000000000 : ℚ)
  supportValue := (2768943795372393 / 10000000000000000 : ℚ)
  supportSlope := (-4299280795256447 / 5000000000000000 : ℚ)
  oldCenter := (2768943795372393 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1680
  oldLo := (13825000000000001 / 50000000000000000 : ℚ)
  oldHi := (13850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_702]
}

noncomputable def cell_12425 : Cell := { cellDefaults with
  domain := ⟨(290049999999999997 / 400000000000000000 : ℚ), (145050000000000001 / 200000000000000000 : ℚ)⟩
  r := (12422101929619 / 25000000000000 : ℚ)
  w := (6735158854199 / 5000000000000 : ℚ)
  center := (580149999999999999 / 800000000000000000 : ℚ)
  supportValue := (27678695557824423 / 100000000000000000 : ℚ)
  supportSlope := (-8589276670870867 / 10000000000000000 : ℚ)
  oldCenter := (27678695557824423 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1680
  oldLo := (13825000000000001 / 50000000000000000 : ℚ)
  oldHi := (13850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_702]
}

noncomputable def cell_12426 : Cell := { cellDefaults with
  domain := ⟨(145050000000000001 / 200000000000000000 : ℚ), (290150000000000007 / 400000000000000000 : ℚ)⟩
  r := (12422101929619 / 25000000000000 : ℚ)
  w := (6735158854199 / 5000000000000 : ℚ)
  center := (580250000000000009 / 800000000000000000 : ℚ)
  supportValue := (2766796474317301 / 10000000000000000 : ℚ)
  supportSlope := (-2145007883256119 / 2500000000000000 : ℚ)
  oldCenter := (2766796474317301 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1680
  oldLo := (13825000000000001 / 50000000000000000 : ℚ)
  oldHi := (13850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_702]
}

noncomputable def cell_12427 : Cell := { cellDefaults with
  domain := ⟨(290150000000000007 / 400000000000000000 : ℚ), (72550000000000003 / 100000000000000000 : ℚ)⟩
  r := (12422101929619 / 25000000000000 : ℚ)
  w := (6735158854199 / 5000000000000 : ℚ)
  center := (580350000000000019 / 800000000000000000 : ℚ)
  supportValue := (3457155682525917 / 12500000000000000 : ℚ)
  supportSlope := (-2142706478438291 / 2500000000000000 : ℚ)
  oldCenter := (3457155682525917 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1680
  oldLo := (13825000000000001 / 50000000000000000 : ℚ)
  oldHi := (13850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_702]
}

noncomputable def cell_12428 : Cell := { cellDefaults with
  domain := ⟨(72550000000000003 / 100000000000000000 : ℚ), (290250000000000007 / 400000000000000000 : ℚ)⟩
  r := (6208465827053 / 12500000000000 : ℚ)
  w := (13469453863139 / 10000000000000 : ℚ)
  center := (580450000000000019 / 800000000000000000 : ℚ)
  supportValue := (27666729830073483 / 100000000000000000 : ℚ)
  supportSlope := (-8575587636300033 / 10000000000000000 : ℚ)
  oldCenter := (27666729830073483 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1681
  oldLo := (13825000000000001 / 50000000000000000 : ℚ)
  oldHi := (13850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_702]
}

noncomputable def cell_12429 : Cell := { cellDefaults with
  domain := ⟨(290250000000000007 / 400000000000000000 : ℚ), (145150000000000001 / 200000000000000000 : ℚ)⟩
  r := (6208465827053 / 12500000000000 : ℚ)
  w := (13469453863139 / 10000000000000 : ℚ)
  center := (580550000000000009 / 800000000000000000 : ℚ)
  supportValue := (27656016094576313 / 100000000000000000 : ℚ)
  supportSlope := (-8566393844350063 / 10000000000000000 : ℚ)
  oldCenter := (27656016094576313 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1681
  oldLo := (13825000000000001 / 50000000000000000 : ℚ)
  oldHi := (13850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_702]
}

noncomputable def cell_12430 : Cell := { cellDefaults with
  domain := ⟨(145150000000000001 / 200000000000000000 : ℚ), (290349999999999997 / 400000000000000000 : ℚ)⟩
  r := (6208465827053 / 12500000000000 : ℚ)
  w := (13469453863139 / 10000000000000 : ℚ)
  center := (580649999999999999 / 800000000000000000 : ℚ)
  supportValue := (691133107395269 / 2500000000000000 : ℚ)
  supportSlope := (-857240723476679 / 1000000000000000 : ℚ)
  oldCenter := (691133107395269 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1681
  oldLo := (13800000000000001 / 50000000000000000 : ℚ)
  oldHi := (13850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_701, piece_702]
}

noncomputable def cell_12431 : Cell := { cellDefaults with
  domain := ⟨(290349999999999997 / 400000000000000000 : ℚ), (36299999999999999 / 50000000000000000 : ℚ)⟩
  r := (6208465827053 / 12500000000000 : ℚ)
  w := (13469453863139 / 10000000000000 : ℚ)
  center := (580749999999999989 / 800000000000000000 : ℚ)
  supportValue := (6908648497049799 / 25000000000000000 : ℚ)
  supportSlope := (-8564133117864049 / 10000000000000000 : ℚ)
  oldCenter := (6908648497049799 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1681
  oldLo := (13800000000000001 / 50000000000000000 : ℚ)
  oldHi := (13825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_701]
}

noncomputable def cell_12432 : Cell := { cellDefaults with
  domain := ⟨(36299999999999999 / 50000000000000000 : ℚ), (290449999999999997 / 400000000000000000 : ℚ)⟩
  r := (9929412173917 / 20000000000000 : ℚ)
  w := (210446616611 / 156250000000 : ℚ)
  center := (580849999999999989 / 800000000000000000 : ℚ)
  supportValue := (691102260894279 / 2500000000000000 : ℚ)
  supportSlope := (-4284484755836109 / 5000000000000000 : ℚ)
  oldCenter := (691102260894279 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1682
  oldLo := (13800000000000001 / 50000000000000000 : ℚ)
  oldHi := (13825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_701]
}

noncomputable def cell_12433 : Cell := { cellDefaults with
  domain := ⟨(290449999999999997 / 400000000000000000 : ℚ), (145250000000000001 / 200000000000000000 : ℚ)⟩
  r := (9929412173917 / 20000000000000 : ℚ)
  w := (210446616611 / 156250000000 : ℚ)
  center := (580949999999999999 / 800000000000000000 : ℚ)
  supportValue := (2763338501200741 / 10000000000000000 : ℚ)
  supportSlope := (-8559713329371587 / 10000000000000000 : ℚ)
  oldCenter := (2763338501200741 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1682
  oldLo := (13800000000000001 / 50000000000000000 : ℚ)
  oldHi := (13825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_701]
}

noncomputable def cell_12434 : Cell := { cellDefaults with
  domain := ⟨(145250000000000001 / 200000000000000000 : ℚ), (290550000000000007 / 400000000000000000 : ℚ)⟩
  r := (9929412173917 / 20000000000000 : ℚ)
  w := (210446616611 / 156250000000 : ℚ)
  center := (581050000000000009 / 800000000000000000 : ℚ)
  supportValue := (2762269113362227 / 10000000000000000 : ℚ)
  supportSlope := (-4275248422684469 / 5000000000000000 : ℚ)
  oldCenter := (2762269113362227 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1682
  oldLo := (13800000000000001 / 50000000000000000 : ℚ)
  oldHi := (13825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_701]
}

noncomputable def cell_12435 : Cell := { cellDefaults with
  domain := ⟨(290550000000000007 / 400000000000000000 : ℚ), (72650000000000003 / 100000000000000000 : ℚ)⟩
  r := (9929412173917 / 20000000000000 : ℚ)
  w := (210446616611 / 156250000000 : ℚ)
  center := (581150000000000019 / 800000000000000000 : ℚ)
  supportValue := (690300218778939 / 2500000000000000 : ℚ)
  supportSlope := (-34165279187267 / 40000000000000 : ℚ)
  oldCenter := (690300218778939 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1682
  oldLo := (13800000000000001 / 50000000000000000 : ℚ)
  oldHi := (13825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_701]
}

noncomputable def cell_12436 : Cell := { cellDefaults with
  domain := ⟨(72650000000000003 / 100000000000000000 : ℚ), (290650000000000007 / 400000000000000000 : ℚ)⟩
  r := (24813212661379 / 50000000000000 : ℚ)
  w := (13467735852439 / 10000000000000 : ℚ)
  center := (581250000000000019 / 800000000000000000 : ℚ)
  supportValue := (345267968811073 / 1250000000000000 : ℚ)
  supportSlope := (-1068256832894683 / 1250000000000000 : ℚ)
  oldCenter := (345267968811073 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1683
  oldLo := (13800000000000001 / 50000000000000000 : ℚ)
  oldHi := (13825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_701]
}

noncomputable def cell_12437 : Cell := { cellDefaults with
  domain := ⟨(290650000000000007 / 400000000000000000 : ℚ), (145350000000000001 / 200000000000000000 : ℚ)⟩
  r := (24813212661379 / 50000000000000 : ℚ)
  w := (13467735852439 / 10000000000000 : ℚ)
  center := (581350000000000009 / 800000000000000000 : ℚ)
  supportValue := (690269016693073 / 2500000000000000 : ℚ)
  supportSlope := (-1707377895918853 / 2000000000000000 : ℚ)
  oldCenter := (690269016693073 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1683
  oldLo := (13800000000000001 / 50000000000000000 : ℚ)
  oldHi := (13825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_701]
}

noncomputable def cell_12438 : Cell := { cellDefaults with
  domain := ⟨(145350000000000001 / 200000000000000000 : ℚ), (290749999999999997 / 400000000000000000 : ℚ)⟩
  r := (24813212661379 / 50000000000000 : ℚ)
  w := (13467735852439 / 10000000000000 : ℚ)
  center := (581449999999999999 / 800000000000000000 : ℚ)
  supportValue := (5520022916525369 / 20000000000000000 : ℚ)
  supportSlope := (-8535700273527311 / 10000000000000000 : ℚ)
  oldCenter := (5520022916525369 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1683
  oldLo := (13775000000000001 / 50000000000000000 : ℚ)
  oldHi := (13825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_700, piece_701]
}

noncomputable def cell_12439 : Cell := { cellDefaults with
  domain := ⟨(290749999999999997 / 400000000000000000 : ℚ), (36349999999999999 / 50000000000000000 : ℚ)⟩
  r := (24813212661379 / 50000000000000 : ℚ)
  w := (13467735852439 / 10000000000000 : ℚ)
  center := (581549999999999989 / 800000000000000000 : ℚ)
  supportValue := (13794710640098487 / 50000000000000000 : ℚ)
  supportSlope := (-2133675496611911 / 2500000000000000 : ℚ)
  oldCenter := (13794710640098487 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1683
  oldLo := (13775000000000001 / 50000000000000000 : ℚ)
  oldHi := (13800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_700]
}

noncomputable def cell_12440 : Cell := { cellDefaults with
  domain := ⟨(36349999999999999 / 50000000000000000 : ℚ), (145424999999999999 / 200000000000000000 : ℚ)⟩
  r := (49605808835599 / 100000000000000 : ℚ)
  w := (6733444851299 / 5000000000000 : ℚ)
  center := (58164999999999999 / 80000000000000000 : ℚ)
  supportValue := (1379943242745549 / 5000000000000000 : ℚ)
  supportSlope := (-8533161870846271 / 10000000000000000 : ℚ)
  oldCenter := (1379943242745549 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1684
  oldLo := (13775000000000001 / 50000000000000000 : ℚ)
  oldHi := (13825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_700, piece_701]
}

noncomputable def cell_12441 : Cell := { cellDefaults with
  domain := ⟨(145424999999999999 / 200000000000000000 : ℚ), (72725000000000001 / 100000000000000000 : ℚ)⟩
  r := (49605808835599 / 100000000000000 : ℚ)
  w := (6733444851299 / 5000000000000 : ℚ)
  center := (290875000000000001 / 400000000000000000 : ℚ)
  supportValue := (5517635386799119 / 20000000000000000 : ℚ)
  supportSlope := (-341210858429223 / 400000000000000 : ℚ)
  oldCenter := (5517635386799119 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1684
  oldLo := (13775000000000001 / 50000000000000000 : ℚ)
  oldHi := (13800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_700]
}

noncomputable def cell_12442 : Cell := { cellDefaults with
  domain := ⟨(72725000000000001 / 100000000000000000 : ℚ), (29095000000000001 / 40000000000000000 : ℚ)⟩
  r := (49605808835599 / 100000000000000 : ℚ)
  w := (6733444851299 / 5000000000000 : ℚ)
  center := (290925000000000007 / 400000000000000000 : ℚ)
  supportValue := (275775198383029 / 1000000000000000 : ℚ)
  supportSlope := (-5325678998263 / 6250000000000 : ℚ)
  oldCenter := (275775198383029 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1684
  oldLo := (13775000000000001 / 50000000000000000 : ℚ)
  oldHi := (13800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_700]
}

noncomputable def cell_12443 : Cell := { cellDefaults with
  domain := ⟨(29095000000000001 / 40000000000000000 : ℚ), (18187500000000001 / 25000000000000000 : ℚ)⟩
  r := (49605808835599 / 100000000000000 : ℚ)
  w := (6733444851299 / 5000000000000 : ℚ)
  center := (290975000000000013 / 400000000000000000 : ℚ)
  supportValue := (27566874199321223 / 100000000000000000 : ℚ)
  supportSlope := (-2127985165844859 / 2500000000000000 : ℚ)
  oldCenter := (27566874199321223 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1684
  oldLo := (13775000000000001 / 50000000000000000 : ℚ)
  oldHi := (13800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_700]
}

noncomputable def cell_12444 : Cell := { cellDefaults with
  domain := ⟨(18187500000000001 / 25000000000000000 : ℚ), (29105000000000001 / 40000000000000000 : ℚ)⟩
  r := (4958521987003 / 10000000000000 : ℚ)
  w := (13466058738767 / 10000000000000 : ℚ)
  center := (291025000000000013 / 400000000000000000 : ℚ)
  supportValue := (1378812291384463 / 5000000000000000 : ℚ)
  supportSlope := (-8516644966532949 / 10000000000000000 : ℚ)
  oldCenter := (1378812291384463 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1685
  oldLo := (13775000000000001 / 50000000000000000 : ℚ)
  oldHi := (13800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_700]
}

noncomputable def cell_12445 : Cell := { cellDefaults with
  domain := ⟨(29105000000000001 / 40000000000000000 : ℚ), (72775000000000001 / 100000000000000000 : ℚ)⟩
  r := (4958521987003 / 10000000000000 : ℚ)
  w := (13466058738767 / 10000000000000 : ℚ)
  center := (291075000000000007 / 400000000000000000 : ℚ)
  supportValue := (27565605733043197 / 100000000000000000 : ℚ)
  supportSlope := (-212687778510493 / 250000000000000 : ℚ)
  oldCenter := (27565605733043197 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1685
  oldLo := (13775000000000001 / 50000000000000000 : ℚ)
  oldHi := (13800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_700]
}

noncomputable def cell_12446 : Cell := { cellDefaults with
  domain := ⟨(72775000000000001 / 100000000000000000 : ℚ), (145574999999999999 / 200000000000000000 : ℚ)⟩
  r := (4958521987003 / 10000000000000 : ℚ)
  w := (13466058738767 / 10000000000000 : ℚ)
  center := (291125000000000001 / 400000000000000000 : ℚ)
  supportValue := (1377749815987523 / 5000000000000000 : ℚ)
  supportSlope := (-8498934069241979 / 10000000000000000 : ℚ)
  oldCenter := (1377749815987523 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1685
  oldLo := (550949720670391 / 2000000000000000 : ℚ)
  oldHi := (13800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_699, piece_700]
}

noncomputable def cell_12447 : Cell := { cellDefaults with
  domain := ⟨(145574999999999999 / 200000000000000000 : ℚ), (36399999999999999 / 50000000000000000 : ℚ)⟩
  r := (4958521987003 / 10000000000000 : ℚ)
  w := (13466058738767 / 10000000000000 : ℚ)
  center := (58234999999999999 / 80000000000000000 : ℚ)
  supportValue := (5508869795827619 / 20000000000000000 : ℚ)
  supportSlope := (-1063175342791561 / 1250000000000000 : ℚ)
  oldCenter := (5508869795827619 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1685
  oldLo := (13750000000000001 / 50000000000000000 : ℚ)
  oldHi := (13775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_698, piece_699]
}

noncomputable def cell_12448 : Cell := { cellDefaults with
  domain := ⟨(36399999999999999 / 50000000000000000 : ℚ), (145624999999999999 / 200000000000000000 : ℚ)⟩
  r := (24782326540857 / 50000000000000 : ℚ)
  w := (13465237055383 / 10000000000000 : ℚ)
  center := (58244999999999999 / 80000000000000000 : ℚ)
  supportValue := (2755371274608623 / 10000000000000000 : ℚ)
  supportSlope := (-8496446152656081 / 10000000000000000 : ℚ)
  oldCenter := (2755371274608623 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1686
  oldLo := (550949720670391 / 2000000000000000 : ℚ)
  oldHi := (13800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_699, piece_700]
}

noncomputable def cell_12449 : Cell := { cellDefaults with
  domain := ⟨(145624999999999999 / 200000000000000000 : ℚ), (72825000000000001 / 100000000000000000 : ℚ)⟩
  r := (24782326540857 / 50000000000000 : ℚ)
  w := (13465237055383 / 10000000000000 : ℚ)
  center := (291275000000000001 / 400000000000000000 : ℚ)
  supportValue := (27543068521483943 / 100000000000000000 : ℚ)
  supportSlope := (-4250481502907123 / 5000000000000000 : ℚ)
  oldCenter := (27543068521483943 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1686
  oldLo := (13750000000000001 / 50000000000000000 : ℚ)
  oldHi := (13775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_698, piece_699]
}

theorem check_12400 : cell_12400.check = true := by
  decide +kernel

theorem check_12401 : cell_12401.check = true := by
  decide +kernel

theorem check_12402 : cell_12402.check = true := by
  decide +kernel

theorem check_12403 : cell_12403.check = true := by
  decide +kernel

theorem check_12404 : cell_12404.check = true := by
  decide +kernel

theorem check_12405 : cell_12405.check = true := by
  decide +kernel

theorem check_12406 : cell_12406.check = true := by
  decide +kernel

theorem check_12407 : cell_12407.check = true := by
  decide +kernel

theorem check_12408 : cell_12408.check = true := by
  decide +kernel

theorem check_12409 : cell_12409.check = true := by
  decide +kernel

theorem check_12410 : cell_12410.check = true := by
  decide +kernel

theorem check_12411 : cell_12411.check = true := by
  decide +kernel

theorem check_12412 : cell_12412.check = true := by
  decide +kernel

theorem check_12413 : cell_12413.check = true := by
  decide +kernel

theorem check_12414 : cell_12414.check = true := by
  decide +kernel

theorem check_12415 : cell_12415.check = true := by
  decide +kernel

theorem check_12416 : cell_12416.check = true := by
  decide +kernel

theorem check_12417 : cell_12417.check = true := by
  decide +kernel

theorem check_12418 : cell_12418.check = true := by
  decide +kernel

theorem check_12419 : cell_12419.check = true := by
  decide +kernel

theorem check_12420 : cell_12420.check = true := by
  decide +kernel

theorem check_12421 : cell_12421.check = true := by
  decide +kernel

theorem check_12422 : cell_12422.check = true := by
  decide +kernel

theorem check_12423 : cell_12423.check = true := by
  decide +kernel

theorem check_12424 : cell_12424.check = true := by
  decide +kernel

theorem check_12425 : cell_12425.check = true := by
  decide +kernel

theorem check_12426 : cell_12426.check = true := by
  decide +kernel

theorem check_12427 : cell_12427.check = true := by
  decide +kernel

theorem check_12428 : cell_12428.check = true := by
  decide +kernel

theorem check_12429 : cell_12429.check = true := by
  decide +kernel

theorem check_12430 : cell_12430.check = true := by
  decide +kernel

theorem check_12431 : cell_12431.check = true := by
  decide +kernel

theorem check_12432 : cell_12432.check = true := by
  decide +kernel

theorem check_12433 : cell_12433.check = true := by
  decide +kernel

theorem check_12434 : cell_12434.check = true := by
  decide +kernel

theorem check_12435 : cell_12435.check = true := by
  decide +kernel

theorem check_12436 : cell_12436.check = true := by
  decide +kernel

theorem check_12437 : cell_12437.check = true := by
  decide +kernel

theorem check_12438 : cell_12438.check = true := by
  decide +kernel

theorem check_12439 : cell_12439.check = true := by
  decide +kernel

theorem check_12440 : cell_12440.check = true := by
  decide +kernel

theorem check_12441 : cell_12441.check = true := by
  decide +kernel

theorem check_12442 : cell_12442.check = true := by
  decide +kernel

theorem check_12443 : cell_12443.check = true := by
  decide +kernel

theorem check_12444 : cell_12444.check = true := by
  decide +kernel

theorem check_12445 : cell_12445.check = true := by
  decide +kernel

theorem check_12446 : cell_12446.check = true := by
  decide +kernel

theorem check_12447 : cell_12447.check = true := by
  decide +kernel

theorem check_12448 : cell_12448.check = true := by
  decide +kernel

theorem check_12449 : cell_12449.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12400, cell_12401, cell_12402, cell_12403, cell_12404, cell_12405, cell_12406, cell_12407, cell_12408, cell_12409, cell_12410, cell_12411, cell_12412, cell_12413, cell_12414, cell_12415, cell_12416, cell_12417, cell_12418, cell_12419, cell_12420, cell_12421, cell_12422, cell_12423, cell_12424, cell_12425, cell_12426, cell_12427, cell_12428, cell_12429, cell_12430, cell_12431, cell_12432, cell_12433, cell_12434, cell_12435, cell_12436, cell_12437, cell_12438, cell_12439, cell_12440, cell_12441, cell_12442, cell_12443, cell_12444, cell_12445, cell_12446, cell_12447, cell_12448, cell_12449]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12400, check_12401, check_12402, check_12403, check_12404, check_12405, check_12406, check_12407, check_12408, check_12409, check_12410, check_12411, check_12412, check_12413, check_12414, check_12415, check_12416, check_12417, check_12418, check_12419, check_12420, check_12421, check_12422, check_12423, check_12424, check_12425, check_12426, check_12427, check_12428, check_12429, check_12430, check_12431, check_12432, check_12433, check_12434, check_12435, check_12436, check_12437, check_12438, check_12439, check_12440, check_12441, check_12442, check_12443, check_12444, check_12445, check_12446, check_12447, check_12448, check_12449, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0248

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0248
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0248
open AnalyticBounds.ExpressionCertificate

theorem linked_12400 : Linked cell_12400 pieces := by
  apply Linked.of_piece piece_1673 piece_1673_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12400, List.cons_subset, List.nil_subset, and_true]
  exact piece_705_mem

theorem linked_12401 : Linked cell_12401 pieces := by
  apply Linked.of_piece piece_1673 piece_1673_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12401, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_704_mem, piece_705_mem⟩

theorem linked_12402 : Linked cell_12402 pieces := by
  apply Linked.of_piece piece_1673 piece_1673_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12402, List.cons_subset, List.nil_subset, and_true]
  exact piece_704_mem

theorem linked_12403 : Linked cell_12403 pieces := by
  apply Linked.of_piece piece_1674 piece_1674_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12403, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_704_mem, piece_705_mem⟩

theorem linked_12404 : Linked cell_12404 pieces := by
  apply Linked.of_piece piece_1674 piece_1674_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12404, List.cons_subset, List.nil_subset, and_true]
  exact piece_704_mem

theorem linked_12405 : Linked cell_12405 pieces := by
  apply Linked.of_piece piece_1674 piece_1674_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12405, List.cons_subset, List.nil_subset, and_true]
  exact piece_704_mem

theorem linked_12406 : Linked cell_12406 pieces := by
  apply Linked.of_piece piece_1674 piece_1674_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12406, List.cons_subset, List.nil_subset, and_true]
  exact piece_704_mem

theorem linked_12407 : Linked cell_12407 pieces := by
  apply Linked.of_piece piece_1675 piece_1675_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12407, List.cons_subset, List.nil_subset, and_true]
  exact piece_704_mem

theorem linked_12408 : Linked cell_12408 pieces := by
  apply Linked.of_piece piece_1675 piece_1675_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12408, List.cons_subset, List.nil_subset, and_true]
  exact piece_704_mem

theorem linked_12409 : Linked cell_12409 pieces := by
  apply Linked.of_piece piece_1675 piece_1675_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12409, List.cons_subset, List.nil_subset, and_true]
  exact piece_704_mem

theorem linked_12410 : Linked cell_12410 pieces := by
  apply Linked.of_piece piece_1675 piece_1675_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12410, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_703_mem, piece_704_mem⟩

theorem linked_12411 : Linked cell_12411 pieces := by
  apply Linked.of_piece piece_1676 piece_1676_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12411, List.cons_subset, List.nil_subset, and_true]
  exact piece_703_mem

theorem linked_12412 : Linked cell_12412 pieces := by
  apply Linked.of_piece piece_1677 piece_1677_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12412, List.cons_subset, List.nil_subset, and_true]
  exact piece_704_mem

theorem linked_12413 : Linked cell_12413 pieces := by
  apply Linked.of_piece piece_1677 piece_1677_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12413, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_703_mem, piece_704_mem⟩

theorem linked_12414 : Linked cell_12414 pieces := by
  apply Linked.of_piece piece_1677 piece_1677_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12414, List.cons_subset, List.nil_subset, and_true]
  exact piece_703_mem

theorem linked_12415 : Linked cell_12415 pieces := by
  apply Linked.of_piece piece_1677 piece_1677_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12415, List.cons_subset, List.nil_subset, and_true]
  exact piece_703_mem

theorem linked_12416 : Linked cell_12416 pieces := by
  apply Linked.of_piece piece_1678 piece_1678_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12416, List.cons_subset, List.nil_subset, and_true]
  exact piece_703_mem

theorem linked_12417 : Linked cell_12417 pieces := by
  apply Linked.of_piece piece_1678 piece_1678_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12417, List.cons_subset, List.nil_subset, and_true]
  exact piece_703_mem

theorem linked_12418 : Linked cell_12418 pieces := by
  apply Linked.of_piece piece_1678 piece_1678_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12418, List.cons_subset, List.nil_subset, and_true]
  exact piece_703_mem

theorem linked_12419 : Linked cell_12419 pieces := by
  apply Linked.of_piece piece_1678 piece_1678_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12419, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_702_mem, piece_703_mem⟩

theorem linked_12420 : Linked cell_12420 pieces := by
  apply Linked.of_piece piece_1679 piece_1679_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12420, List.cons_subset, List.nil_subset, and_true]
  exact piece_703_mem

theorem linked_12421 : Linked cell_12421 pieces := by
  apply Linked.of_piece piece_1679 piece_1679_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12421, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_702_mem, piece_703_mem⟩

theorem linked_12422 : Linked cell_12422 pieces := by
  apply Linked.of_piece piece_1679 piece_1679_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12422, List.cons_subset, List.nil_subset, and_true]
  exact piece_702_mem

theorem linked_12423 : Linked cell_12423 pieces := by
  apply Linked.of_piece piece_1679 piece_1679_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12423, List.cons_subset, List.nil_subset, and_true]
  exact piece_702_mem

theorem linked_12424 : Linked cell_12424 pieces := by
  apply Linked.of_piece piece_1680 piece_1680_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12424, List.cons_subset, List.nil_subset, and_true]
  exact piece_702_mem

theorem linked_12425 : Linked cell_12425 pieces := by
  apply Linked.of_piece piece_1680 piece_1680_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12425, List.cons_subset, List.nil_subset, and_true]
  exact piece_702_mem

theorem linked_12426 : Linked cell_12426 pieces := by
  apply Linked.of_piece piece_1680 piece_1680_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12426, List.cons_subset, List.nil_subset, and_true]
  exact piece_702_mem

theorem linked_12427 : Linked cell_12427 pieces := by
  apply Linked.of_piece piece_1680 piece_1680_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12427, List.cons_subset, List.nil_subset, and_true]
  exact piece_702_mem

theorem linked_12428 : Linked cell_12428 pieces := by
  apply Linked.of_piece piece_1681 piece_1681_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12428, List.cons_subset, List.nil_subset, and_true]
  exact piece_702_mem

theorem linked_12429 : Linked cell_12429 pieces := by
  apply Linked.of_piece piece_1681 piece_1681_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12429, List.cons_subset, List.nil_subset, and_true]
  exact piece_702_mem

theorem linked_12430 : Linked cell_12430 pieces := by
  apply Linked.of_piece piece_1681 piece_1681_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12430, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_701_mem, piece_702_mem⟩

theorem linked_12431 : Linked cell_12431 pieces := by
  apply Linked.of_piece piece_1681 piece_1681_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12431, List.cons_subset, List.nil_subset, and_true]
  exact piece_701_mem

theorem linked_12432 : Linked cell_12432 pieces := by
  apply Linked.of_piece piece_1682 piece_1682_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12432, List.cons_subset, List.nil_subset, and_true]
  exact piece_701_mem

theorem linked_12433 : Linked cell_12433 pieces := by
  apply Linked.of_piece piece_1682 piece_1682_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12433, List.cons_subset, List.nil_subset, and_true]
  exact piece_701_mem

theorem linked_12434 : Linked cell_12434 pieces := by
  apply Linked.of_piece piece_1682 piece_1682_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12434, List.cons_subset, List.nil_subset, and_true]
  exact piece_701_mem

theorem linked_12435 : Linked cell_12435 pieces := by
  apply Linked.of_piece piece_1682 piece_1682_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12435, List.cons_subset, List.nil_subset, and_true]
  exact piece_701_mem

theorem linked_12436 : Linked cell_12436 pieces := by
  apply Linked.of_piece piece_1683 piece_1683_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12436, List.cons_subset, List.nil_subset, and_true]
  exact piece_701_mem

theorem linked_12437 : Linked cell_12437 pieces := by
  apply Linked.of_piece piece_1683 piece_1683_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12437, List.cons_subset, List.nil_subset, and_true]
  exact piece_701_mem

theorem linked_12438 : Linked cell_12438 pieces := by
  apply Linked.of_piece piece_1683 piece_1683_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12438, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_700_mem, piece_701_mem⟩

theorem linked_12439 : Linked cell_12439 pieces := by
  apply Linked.of_piece piece_1683 piece_1683_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12439, List.cons_subset, List.nil_subset, and_true]
  exact piece_700_mem

theorem linked_12440 : Linked cell_12440 pieces := by
  apply Linked.of_piece piece_1684 piece_1684_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12440, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_700_mem, piece_701_mem⟩

theorem linked_12441 : Linked cell_12441 pieces := by
  apply Linked.of_piece piece_1684 piece_1684_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12441, List.cons_subset, List.nil_subset, and_true]
  exact piece_700_mem

theorem linked_12442 : Linked cell_12442 pieces := by
  apply Linked.of_piece piece_1684 piece_1684_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12442, List.cons_subset, List.nil_subset, and_true]
  exact piece_700_mem

theorem linked_12443 : Linked cell_12443 pieces := by
  apply Linked.of_piece piece_1684 piece_1684_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12443, List.cons_subset, List.nil_subset, and_true]
  exact piece_700_mem

theorem linked_12444 : Linked cell_12444 pieces := by
  apply Linked.of_piece piece_1685 piece_1685_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12444, List.cons_subset, List.nil_subset, and_true]
  exact piece_700_mem

theorem linked_12445 : Linked cell_12445 pieces := by
  apply Linked.of_piece piece_1685 piece_1685_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12445, List.cons_subset, List.nil_subset, and_true]
  exact piece_700_mem

theorem linked_12446 : Linked cell_12446 pieces := by
  apply Linked.of_piece piece_1685 piece_1685_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12446, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_699_mem, piece_700_mem⟩

theorem linked_12447 : Linked cell_12447 pieces := by
  apply Linked.of_piece piece_1685 piece_1685_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12447, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_698_mem, piece_699_mem⟩

theorem linked_12448 : Linked cell_12448 pieces := by
  apply Linked.of_piece piece_1686 piece_1686_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12448, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_699_mem, piece_700_mem⟩

theorem linked_12449 : Linked cell_12449 pieces := by
  apply Linked.of_piece piece_1686 piece_1686_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12449, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_698_mem, piece_699_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0248.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0248.cells,List.forall_mem_cons]
  exact ⟨linked_12400, linked_12401, linked_12402, linked_12403, linked_12404, linked_12405, linked_12406, linked_12407, linked_12408, linked_12409, linked_12410, linked_12411, linked_12412, linked_12413, linked_12414, linked_12415, linked_12416, linked_12417, linked_12418, linked_12419, linked_12420, linked_12421, linked_12422, linked_12423, linked_12424, linked_12425, linked_12426, linked_12427, linked_12428, linked_12429, linked_12430, linked_12431, linked_12432, linked_12433, linked_12434, linked_12435, linked_12436, linked_12437, linked_12438, linked_12439, linked_12440, linked_12441, linked_12442, linked_12443, linked_12444, linked_12445, linked_12446, linked_12447, linked_12448, linked_12449, by simp⟩

theorem covered : covers (28885000000000003 / 40000000000000000 : ℚ) (72825000000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0248.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0248
