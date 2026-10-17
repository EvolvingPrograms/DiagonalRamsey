import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData
import Support.LuWang.SourceCertificateAssembly

/-! Independent left-certificate batch: original chunks 0240–0251. -/

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0240
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(67249999999999999 / 100000000000000000 : ℚ), (269050000000000001 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (51950245447251 / 100000000000000 : ℚ)
  w := (6804496268843 / 5000000000000 : ℚ)
  center := (538049999999999997 / 800000000000000000 : ℚ)
  supportValue := (30234165260480433 / 100000000000000000 : ℚ)
  supportSlope := (-2596757695600711 / 2500000000000000 : ℚ)
  oldCenter := (30234165260480433 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1565
  oldLo := (6020000000000001 / 20000000000000000 : ℚ)
  oldHi := (6030000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_755]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12000 : Cell := { cellDefaults with
  r := (25998406712267 / 50000000000000 : ℚ)
  w := (13612562281987 / 10000000000000 : ℚ)
  oldLo := (6040000000000001 / 20000000000000000 : ℚ)
  oldHi := (6050000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_757]
}

noncomputable def cell_12001 : Cell := { cellDefaults with
  domain := ⟨(269050000000000001 / 400000000000000000 : ℚ), (134550000000000003 / 200000000000000000 : ℚ)⟩
  r := (25998406712267 / 50000000000000 : ℚ)
  w := (13612562281987 / 10000000000000 : ℚ)
  center := (538150000000000007 / 800000000000000000 : ℚ)
  supportValue := (30221188833793217 / 100000000000000000 : ℚ)
  supportSlope := (-1037525832456761 / 1000000000000000 : ℚ)
  oldCenter := (30221188833793217 / 100000000000000000 : ℚ)
  oldLo := (6040000000000001 / 20000000000000000 : ℚ)
  oldHi := (6050000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_757]
}

noncomputable def cell_12002 : Cell := { cellDefaults with
  domain := ⟨(134550000000000003 / 200000000000000000 : ℚ), (269150000000000011 / 400000000000000000 : ℚ)⟩
  r := (25998406712267 / 50000000000000 : ℚ)
  w := (13612562281987 / 10000000000000 : ℚ)
  center := (538250000000000017 / 800000000000000000 : ℚ)
  supportValue := (30208227091145773 / 100000000000000000 : ℚ)
  supportSlope := (-10363536240704037 / 10000000000000000 : ℚ)
  oldCenter := (30208227091145773 / 100000000000000000 : ℚ)
  oldLo := (6040000000000001 / 20000000000000000 : ℚ)
  oldHi := (6050000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_757]
}

noncomputable def cell_12003 : Cell := { cellDefaults with
  domain := ⟨(269150000000000011 / 400000000000000000 : ℚ), (16825000000000001 / 25000000000000000 : ℚ)⟩
  r := (25998406712267 / 50000000000000 : ℚ)
  w := (13612562281987 / 10000000000000 : ℚ)
  center := (538350000000000027 / 800000000000000000 : ℚ)
  supportValue := (150976464397471 / 500000000000000 : ℚ)
  supportSlope := (-2073482968784083 / 2000000000000000 : ℚ)
  oldCenter := (150976464397471 / 500000000000000 : ℚ)
  oldLo := (6030000000000001 / 20000000000000000 : ℚ)
  oldHi := (6050000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_756, piece_757]
}

noncomputable def cell_12004 : Cell := { cellDefaults with
  domain := ⟨(16825000000000001 / 25000000000000000 : ℚ), (269250000000000011 / 400000000000000000 : ℚ)⟩
  r := (12993379348687 / 25000000000000 : ℚ)
  w := (1701346919171 / 1250000000000 : ℚ)
  center := (538450000000000027 / 800000000000000000 : ℚ)
  supportValue := (30208209680397063 / 100000000000000000 : ℚ)
  supportSlope := (-2071796138219491 / 2000000000000000 : ℚ)
  oldCenter := (30208209680397063 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1566
  oldLo := (6040000000000001 / 20000000000000000 : ℚ)
  oldHi := (6050000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_757]
}

noncomputable def cell_12005 : Cell := { cellDefaults with
  domain := ⟨(269250000000000011 / 400000000000000000 : ℚ), (134650000000000003 / 200000000000000000 : ℚ)⟩
  r := (12993379348687 / 25000000000000 : ℚ)
  w := (1701346919171 / 1250000000000 : ℚ)
  center := (538550000000000017 / 800000000000000000 : ℚ)
  supportValue := (301952811363209 / 1000000000000000 : ℚ)
  supportSlope := (-2590720489783741 / 2500000000000000 : ℚ)
  oldCenter := (301952811363209 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1566
  oldLo := (6030000000000001 / 20000000000000000 : ℚ)
  oldHi := (6050000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_756, piece_757]
}

noncomputable def cell_12006 : Cell := { cellDefaults with
  domain := ⟨(134650000000000003 / 200000000000000000 : ℚ), (269350000000000001 / 400000000000000000 : ℚ)⟩
  r := (12993379348687 / 25000000000000 : ℚ)
  w := (1701346919171 / 1250000000000 : ℚ)
  center := (538650000000000007 / 800000000000000000 : ℚ)
  supportValue := (3772788844112937 / 12500000000000000 : ℚ)
  supportSlope := (-10353509244619343 / 10000000000000000 : ℚ)
  oldCenter := (3772788844112937 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1566
  oldLo := (6030000000000001 / 20000000000000000 : ℚ)
  oldHi := (6040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_756]
}

noncomputable def cell_12007 : Cell := { cellDefaults with
  domain := ⟨(269350000000000001 / 400000000000000000 : ℚ), (67349999999999999 / 100000000000000000 : ℚ)⟩
  r := (12993379348687 / 25000000000000 : ℚ)
  w := (1701346919171 / 1250000000000 : ℚ)
  center := (538749999999999997 / 800000000000000000 : ℚ)
  supportValue := (3016937620296163 / 10000000000000000 : ℚ)
  supportSlope := (-517088852830801 / 500000000000000 : ℚ)
  oldCenter := (3016937620296163 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1566
  oldLo := (6030000000000001 / 20000000000000000 : ℚ)
  oldHi := (6040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_756]
}

noncomputable def cell_12008 : Cell := { cellDefaults with
  domain := ⟨(67349999999999999 / 100000000000000000 : ℚ), (134718715083798879 / 200000000000000000 : ℚ)⟩
  center := (269418715083798877 / 400000000000000000 : ℚ)
  supportValue := (30183918504965357 / 100000000000000000 : ℚ)
  supportSlope := (-5175218086895127 / 5000000000000000 : ℚ)
  oldCenter := (30183918504965357 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1567
  oldLo := (6030000000000001 / 20000000000000000 : ℚ)
  oldHi := (6040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_756]
}

noncomputable def cell_12009 : Cell := { cellDefaults with
  domain := ⟨(134718715083798879 / 200000000000000000 : ℚ), (421054469273743 / 625000000000000 : ℚ)⟩
  center := (269456145251396639 / 400000000000000000 : ℚ)
  supportValue := (3017423715134651 / 10000000000000000 : ℚ)
  supportSlope := (-10341651821474853 / 10000000000000000 : ℚ)
  oldCenter := (3017423715134651 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1567
  oldLo := (6030000000000001 / 20000000000000000 : ℚ)
  oldHi := (6040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_756]
}

noncomputable def cell_12010 : Cell := { cellDefaults with
  domain := ⟨(421054469273743 / 625000000000000 : ℚ), (33692178770949721 / 50000000000000000 : ℚ)⟩
  center := (67376536312849161 / 100000000000000000 : ℚ)
  supportValue := (15080669254439913 / 50000000000000000 : ℚ)
  supportSlope := (-2582490853653967 / 2500000000000000 : ℚ)
  oldCenter := (15080669254439913 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1568
  oldLo := (6030000000000001 / 20000000000000000 : ℚ)
  oldHi := (6040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_756]
}

noncomputable def cell_12011 : Cell := { cellDefaults with
  domain := ⟨(33692178770949721 / 50000000000000000 : ℚ), (67392178770949723 / 100000000000000000 : ℚ)⟩
  center := (26955307262569833 / 40000000000000000 : ℚ)
  supportValue := (1507460172647349 / 5000000000000000 : ℚ)
  supportSlope := (-206596652202973 / 200000000000000 : ℚ)
  oldCenter := (1507460172647349 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1568
  oldHi := (6040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_755, piece_756]
}

noncomputable def cell_12012 : Cell := { cellDefaults with
  domain := ⟨(67392178770949723 / 100000000000000000 : ℚ), (16850000000000001 / 25000000000000000 : ℚ)⟩
  center := (134792178770949727 / 200000000000000000 : ℚ)
  supportValue := (3014111545062727 / 10000000000000000 : ℚ)
  supportSlope := (-5164848833568959 / 5000000000000000 : ℚ)
  oldCenter := (3014111545062727 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1568
  oldPieces := [piece_755]
}

noncomputable def cell_12013 : Cell := { cellDefaults with
  domain := ⟨(16850000000000001 / 25000000000000000 : ℚ), (269650000000000011 / 400000000000000000 : ℚ)⟩
  r := (12981749987381 / 25000000000000 : ℚ)
  w := (13607219003447 / 10000000000000 : ℚ)
  center := (539250000000000027 / 800000000000000000 : ℚ)
  supportValue := (3015643887906691 / 10000000000000000 : ℚ)
  supportSlope := (-5160539480564791 / 5000000000000000 : ℚ)
  oldCenter := (3015643887906691 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1569
  oldHi := (6040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_755, piece_756]
}

noncomputable def cell_12014 : Cell := { cellDefaults with
  domain := ⟨(269650000000000011 / 400000000000000000 : ℚ), (134850000000000003 / 200000000000000000 : ℚ)⟩
  r := (12981749987381 / 25000000000000 : ℚ)
  w := (13607219003447 / 10000000000000 : ℚ)
  center := (539350000000000017 / 800000000000000000 : ℚ)
  supportValue := (3014351243878697 / 10000000000000000 : ℚ)
  supportSlope := (-10327358263212327 / 10000000000000000 : ℚ)
  oldCenter := (3014351243878697 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1569
  oldPieces := [piece_755]
}

noncomputable def cell_12015 : Cell := { cellDefaults with
  domain := ⟨(134850000000000003 / 200000000000000000 : ℚ), (269750000000000001 / 400000000000000000 : ℚ)⟩
  r := (12981749987381 / 25000000000000 : ℚ)
  w := (13607219003447 / 10000000000000 : ℚ)
  center := (539450000000000007 / 800000000000000000 : ℚ)
  supportValue := (1506530528808553 / 5000000000000000 : ℚ)
  supportSlope := (-5157814181640479 / 5000000000000000 : ℚ)
  oldCenter := (1506530528808553 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1569
  oldPieces := [piece_755]
}

noncomputable def cell_12016 : Cell := { cellDefaults with
  domain := ⟨(269750000000000001 / 400000000000000000 : ℚ), (67449999999999999 / 100000000000000000 : ℚ)⟩
  r := (12981749987381 / 25000000000000 : ℚ)
  w := (13607219003447 / 10000000000000 : ℚ)
  center := (539549999999999997 / 800000000000000000 : ℚ)
  supportValue := (15058861672201543 / 50000000000000000 : ℚ)
  supportSlope := (-10303948828164131 / 10000000000000000 : ℚ)
  oldCenter := (15058861672201543 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1569
  oldPieces := [piece_755]
}

noncomputable def cell_12017 : Cell := { cellDefaults with
  domain := ⟨(67449999999999999 / 100000000000000000 : ℚ), (269850000000000001 / 400000000000000000 : ℚ)⟩
  r := (10380756280373 / 20000000000000 : ℚ)
  w := (425170424581 / 312500000000 : ℚ)
  center := (539649999999999997 / 800000000000000000 : ℚ)
  supportValue := (1506528387106109 / 5000000000000000 : ℚ)
  supportSlope := (-1031108266781441 / 1000000000000000 : ℚ)
  oldCenter := (1506528387106109 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1570
  oldPieces := [piece_755]
}

noncomputable def cell_12018 : Cell := { cellDefaults with
  domain := ⟨(269850000000000001 / 400000000000000000 : ℚ), (134950000000000003 / 200000000000000000 : ℚ)⟩
  r := (10380756280373 / 20000000000000 : ℚ)
  w := (425170424581 / 312500000000 : ℚ)
  center := (539750000000000007 / 800000000000000000 : ℚ)
  supportValue := (30117686185934217 / 100000000000000000 : ℚ)
  supportSlope := (-5149706790814097 / 5000000000000000 : ℚ)
  oldCenter := (30117686185934217 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1570
  oldPieces := [piece_755]
}

noncomputable def cell_12019 : Cell := { cellDefaults with
  domain := ⟨(134950000000000003 / 200000000000000000 : ℚ), (269950000000000011 / 400000000000000000 : ℚ)⟩
  r := (10380756280373 / 20000000000000 : ℚ)
  w := (425170424581 / 312500000000 : ℚ)
  center := (539850000000000017 / 800000000000000000 : ℚ)
  supportValue := (3010484025819873 / 10000000000000000 : ℚ)
  supportSlope := (-2572515608676183 / 2500000000000000 : ℚ)
  oldCenter := (3010484025819873 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1570
  oldLo := (7512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_754, piece_755]
}

noncomputable def cell_12020 : Cell := { cellDefaults with
  domain := ⟨(269950000000000011 / 400000000000000000 : ℚ), (16875000000000001 / 25000000000000000 : ℚ)⟩
  r := (10380756280373 / 20000000000000 : ℚ)
  w := (425170424581 / 312500000000 : ℚ)
  center := (539950000000000027 / 800000000000000000 : ℚ)
  supportValue := (15045976306500783 / 50000000000000000 : ℚ)
  supportSlope := (-10294149150088607 / 10000000000000000 : ℚ)
  oldCenter := (15045976306500783 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1570
  oldLo := (7512500000000001 / 25000000000000000 : ℚ)
  oldHi := (6020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_754]
}

noncomputable def cell_12021 : Cell := { cellDefaults with
  domain := ⟨(16875000000000001 / 25000000000000000 : ℚ), (270050000000000011 / 400000000000000000 : ℚ)⟩
  r := (2594029366343 / 5000000000000 : ℚ)
  w := (6801847606259 / 5000000000000 : ℚ)
  center := (540050000000000027 / 800000000000000000 : ℚ)
  supportValue := (6020958096401009 / 20000000000000000 : ℚ)
  supportSlope := (-2057118484165549 / 2000000000000000 : ℚ)
  oldCenter := (6020958096401009 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1571
  oldLo := (7512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_754, piece_755]
}

noncomputable def cell_12022 : Cell := { cellDefaults with
  domain := ⟨(270050000000000011 / 400000000000000000 : ℚ), (135050000000000003 / 200000000000000000 : ℚ)⟩
  r := (2594029366343 / 5000000000000 : ℚ)
  w := (6801847606259 / 5000000000000 : ℚ)
  center := (540150000000000017 / 800000000000000000 : ℚ)
  supportValue := (1504595421157033 / 5000000000000000 : ℚ)
  supportSlope := (-5144807670447963 / 5000000000000000 : ℚ)
  oldCenter := (1504595421157033 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1571
  oldLo := (7512500000000001 / 25000000000000000 : ℚ)
  oldHi := (6020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_754]
}

noncomputable def cell_12023 : Cell := { cellDefaults with
  domain := ⟨(135050000000000003 / 200000000000000000 : ℚ), (270150000000000001 / 400000000000000000 : ℚ)⟩
  r := (2594029366343 / 5000000000000 : ℚ)
  w := (6801847606259 / 5000000000000 : ℚ)
  center := (540250000000000007 / 800000000000000000 : ℚ)
  supportValue := (1503952685252817 / 5000000000000000 : ℚ)
  supportSlope := (-2569484999748441 / 2500000000000000 : ℚ)
  oldCenter := (1503952685252817 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1571
  oldLo := (7512500000000001 / 25000000000000000 : ℚ)
  oldHi := (6020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_754]
}

noncomputable def cell_12024 : Cell := { cellDefaults with
  domain := ⟨(270150000000000001 / 400000000000000000 : ℚ), (67549999999999999 / 100000000000000000 : ℚ)⟩
  r := (2594029366343 / 5000000000000 : ℚ)
  w := (6801847606259 / 5000000000000 : ℚ)
  center := (540349999999999997 / 800000000000000000 : ℚ)
  supportValue := (6013242709953781 / 20000000000000000 : ℚ)
  supportSlope := (-102663147879333 / 100000000000000 : ℚ)
  oldCenter := (6013242709953781 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1571
  oldLo := (7512500000000001 / 25000000000000000 : ℚ)
  oldHi := (6020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_754]
}

noncomputable def cell_12025 : Cell := { cellDefaults with
  domain := ⟨(67549999999999999 / 100000000000000000 : ℚ), (135125000000000001 / 200000000000000000 : ℚ)⟩
  r := (1296435511921 / 2500000000000 : ℚ)
  w := (13601946143757 / 10000000000000 : ℚ)
  center := (270224999999999999 / 400000000000000000 : ℚ)
  supportValue := (6015797995139397 / 20000000000000000 : ℚ)
  supportSlope := (-10273400289538703 / 10000000000000000 : ℚ)
  oldCenter := (6015797995139397 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1572
  oldLo := (7512500000000001 / 25000000000000000 : ℚ)
  oldHi := (6020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_754]
}

noncomputable def cell_12026 : Cell := { cellDefaults with
  domain := ⟨(135125000000000001 / 200000000000000000 : ℚ), (33787500000000001 / 50000000000000000 : ℚ)⟩
  r := (1296435511921 / 2500000000000 : ℚ)
  w := (13601946143757 / 10000000000000 : ℚ)
  center := (54055000000000001 / 80000000000000000 : ℚ)
  supportValue := (3006615548849819 / 10000000000000000 : ℚ)
  supportSlope := (-1282723192680259 / 1250000000000000 : ℚ)
  oldCenter := (3006615548849819 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1572
  oldLo := (7512500000000001 / 25000000000000000 : ℚ)
  oldHi := (6020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_754]
}

noncomputable def cell_12027 : Cell := { cellDefaults with
  domain := ⟨(33787500000000001 / 50000000000000000 : ℚ), (135175000000000007 / 200000000000000000 : ℚ)⟩
  r := (1296435511921 / 2500000000000 : ℚ)
  w := (13601946143757 / 10000000000000 : ℚ)
  center := (270325000000000011 / 400000000000000000 : ℚ)
  supportValue := (751333913148407 / 2500000000000000 : ℚ)
  supportSlope := (-512727221783243 / 500000000000000 : ℚ)
  oldCenter := (751333913148407 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1572
  oldLo := (7500000000000001 / 25000000000000000 : ℚ)
  oldHi := (6020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_753, piece_754]
}

noncomputable def cell_12028 : Cell := { cellDefaults with
  domain := ⟨(135175000000000007 / 200000000000000000 : ℚ), (13520000000000001 / 20000000000000000 : ℚ)⟩
  r := (1296435511921 / 2500000000000 : ℚ)
  w := (13601946143757 / 10000000000000 : ℚ)
  center := (270375000000000017 / 400000000000000000 : ℚ)
  supportValue := (1502025665144189 / 5000000000000000 : ℚ)
  supportSlope := (-2051318814364687 / 2000000000000000 : ℚ)
  oldCenter := (1502025665144189 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1572
  oldLo := (7500000000000001 / 25000000000000000 : ℚ)
  oldHi := (7512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_753]
}

noncomputable def cell_12029 : Cell := { cellDefaults with
  domain := ⟨(13520000000000001 / 20000000000000000 : ℚ), (135225000000000007 / 200000000000000000 : ℚ)⟩
  r := (25917139373251 / 50000000000000 : ℚ)
  w := (13600203293153 / 10000000000000 : ℚ)
  center := (270425000000000017 / 400000000000000000 : ℚ)
  supportValue := (1502664336507191 / 5000000000000000 : ℚ)
  supportSlope := (-512505471749031 / 500000000000000 : ℚ)
  oldCenter := (1502664336507191 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1573
  oldLo := (7500000000000001 / 25000000000000000 : ℚ)
  oldHi := (6020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_753, piece_754]
}

noncomputable def cell_12030 : Cell := { cellDefaults with
  domain := ⟨(135225000000000007 / 200000000000000000 : ℚ), (33812500000000001 / 50000000000000000 : ℚ)⟩
  r := (25917139373251 / 50000000000000 : ℚ)
  w := (13600203293153 / 10000000000000 : ℚ)
  center := (270475000000000011 / 400000000000000000 : ℚ)
  supportValue := (1502022452490077 / 5000000000000000 : ℚ)
  supportSlope := (-5126033429983583 / 5000000000000000 : ℚ)
  oldCenter := (1502022452490077 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1573
  oldLo := (7500000000000001 / 25000000000000000 : ℚ)
  oldHi := (7512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_753]
}

noncomputable def cell_12031 : Cell := { cellDefaults with
  domain := ⟨(33812500000000001 / 50000000000000000 : ℚ), (135275000000000001 / 200000000000000000 : ℚ)⟩
  r := (25917139373251 / 50000000000000 : ℚ)
  w := (13600203293153 / 10000000000000 : ℚ)
  center := (54105000000000001 / 80000000000000000 : ℚ)
  supportValue := (187672757700657 / 625000000000000 : ℚ)
  supportSlope := (-512022390953221 / 500000000000000 : ℚ)
  oldCenter := (187672757700657 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1573
  oldLo := (7500000000000001 / 25000000000000000 : ℚ)
  oldHi := (7512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_753]
}

noncomputable def cell_12032 : Cell := { cellDefaults with
  domain := ⟨(135275000000000001 / 200000000000000000 : ℚ), (67649999999999999 / 100000000000000000 : ℚ)⟩
  r := (25917139373251 / 50000000000000 : ℚ)
  w := (13600203293153 / 10000000000000 : ℚ)
  center := (270574999999999999 / 400000000000000000 : ℚ)
  supportValue := (3001484790698583 / 10000000000000000 : ℚ)
  supportSlope := (-2045775731812217 / 2000000000000000 : ℚ)
  oldCenter := (3001484790698583 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1573
  oldLo := (7500000000000001 / 25000000000000000 : ℚ)
  oldHi := (7512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_753]
}

noncomputable def cell_12033 : Cell := { cellDefaults with
  domain := ⟨(67649999999999999 / 100000000000000000 : ℚ), (135325000000000001 / 200000000000000000 : ℚ)⟩
  r := (51811163911813 / 100000000000000 : ℚ)
  w := (6799235146197 / 5000000000000 : ℚ)
  center := (270624999999999999 / 400000000000000000 : ℚ)
  supportValue := (15013778359347407 / 50000000000000000 : ℚ)
  supportSlope := (-255897853125933 / 250000000000000 : ℚ)
  oldCenter := (15013778359347407 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1574
  oldLo := (7500000000000001 / 25000000000000000 : ℚ)
  oldHi := (7512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_753]
}

noncomputable def cell_12034 : Cell := { cellDefaults with
  domain := ⟨(135325000000000001 / 200000000000000000 : ℚ), (33837500000000001 / 50000000000000000 : ℚ)⟩
  r := (51811163911813 / 100000000000000 : ℚ)
  w := (6799235146197 / 5000000000000 : ℚ)
  center := (54135000000000001 / 80000000000000000 : ℚ)
  supportValue := (3001476905413707 / 10000000000000000 : ℚ)
  supportSlope := (-10224355440467843 / 10000000000000000 : ℚ)
  oldCenter := (3001476905413707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1574
  oldLo := (7500000000000001 / 25000000000000000 : ℚ)
  oldHi := (7512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_753]
}

noncomputable def cell_12035 : Cell := { cellDefaults with
  domain := ⟨(33837500000000001 / 50000000000000000 : ℚ), (135375000000000007 / 200000000000000000 : ℚ)⟩
  r := (51811163911813 / 100000000000000 : ℚ)
  w := (6799235146197 / 5000000000000 : ℚ)
  center := (270725000000000011 / 400000000000000000 : ℚ)
  supportValue := (15001008404177213 / 50000000000000000 : ℚ)
  supportSlope := (-10219030059362861 / 10000000000000000 : ℚ)
  oldCenter := (15001008404177213 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1574
  oldLo := (7487500000000001 / 25000000000000000 : ℚ)
  oldHi := (7512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_752, piece_753]
}

noncomputable def cell_12036 : Cell := { cellDefaults with
  domain := ⟨(135375000000000007 / 200000000000000000 : ℚ), (13540000000000001 / 20000000000000000 : ℚ)⟩
  r := (51811163911813 / 100000000000000 : ℚ)
  w := (6799235146197 / 5000000000000 : ℚ)
  center := (270775000000000017 / 400000000000000000 : ℚ)
  supportValue := (1199568720190737 / 4000000000000000 : ℚ)
  supportSlope := (-10219235506249031 / 10000000000000000 : ℚ)
  oldCenter := (1199568720190737 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1574
  oldLo := (7487500000000001 / 25000000000000000 : ℚ)
  oldHi := (7500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_752]
}

noncomputable def cell_12037 : Cell := { cellDefaults with
  domain := ⟨(13540000000000001 / 20000000000000000 : ℚ), (135425000000000007 / 200000000000000000 : ℚ)⟩
  r := (51788073590499 / 100000000000000 : ℚ)
  w := (13596742535597 / 10000000000000 : ℚ)
  center := (270825000000000017 / 400000000000000000 : ℚ)
  supportValue := (600038571657103 / 2000000000000000 : ℚ)
  supportSlope := (-5107314494022299 / 5000000000000000 : ℚ)
  oldCenter := (600038571657103 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1575
  oldLo := (7487500000000001 / 25000000000000000 : ℚ)
  oldHi := (7512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_752, piece_753]
}

noncomputable def cell_12038 : Cell := { cellDefaults with
  domain := ⟨(135425000000000007 / 200000000000000000 : ℚ), (33862500000000001 / 50000000000000000 : ℚ)⟩
  r := (51788073590499 / 100000000000000 : ℚ)
  w := (13596742535597 / 10000000000000 : ℚ)
  center := (270875000000000011 / 400000000000000000 : ℚ)
  supportValue := (1499456763984877 / 5000000000000000 : ℚ)
  supportSlope := (-10214716003754791 / 10000000000000000 : ℚ)
  oldCenter := (1499456763984877 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1575
  oldLo := (7487500000000001 / 25000000000000000 : ℚ)
  oldHi := (7500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_752]
}

noncomputable def cell_12039 : Cell := { cellDefaults with
  domain := ⟨(33862500000000001 / 50000000000000000 : ℚ), (135475000000000001 / 200000000000000000 : ℚ)⟩
  r := (51788073590499 / 100000000000000 : ℚ)
  w := (13596742535597 / 10000000000000 : ℚ)
  center := (54185000000000001 / 80000000000000000 : ℚ)
  supportValue := (29976374114337717 / 100000000000000000 : ℚ)
  supportSlope := (-2040630978523939 / 2000000000000000 : ℚ)
  oldCenter := (29976374114337717 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1575
  oldLo := (7487500000000001 / 25000000000000000 : ℚ)
  oldHi := (7500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_752]
}

noncomputable def cell_12040 : Cell := { cellDefaults with
  domain := ⟨(135475000000000001 / 200000000000000000 : ℚ), (67749999999999999 / 100000000000000000 : ℚ)⟩
  r := (51788073590499 / 100000000000000 : ℚ)
  w := (13596742535597 / 10000000000000 : ℚ)
  center := (270974999999999999 / 400000000000000000 : ℚ)
  supportValue := (14981813684654313 / 50000000000000000 : ℚ)
  supportSlope := (-10191643397564731 / 10000000000000000 : ℚ)
  oldCenter := (14981813684654313 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1575
  oldLo := (7487500000000001 / 25000000000000000 : ℚ)
  oldHi := (7500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_752]
}

noncomputable def cell_12041 : Cell := { cellDefaults with
  domain := ⟨(67749999999999999 / 100000000000000000 : ℚ), (135525000000000001 / 200000000000000000 : ℚ)⟩
  r := (6470626425551 / 12500000000000 : ℚ)
  w := (6797513154983 / 5000000000000 : ℚ)
  center := (271024999999999999 / 400000000000000000 : ℚ)
  supportValue := (23981013427119 / 80000000000000 : ℚ)
  supportSlope := (-10198625547318427 / 10000000000000000 : ℚ)
  oldCenter := (23981013427119 / 80000000000000 : ℚ)
  newCoefficients := coefficients_1576
  oldLo := (7487500000000001 / 25000000000000000 : ℚ)
  oldHi := (7500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_752]
}

noncomputable def cell_12042 : Cell := { cellDefaults with
  domain := ⟨(135525000000000001 / 200000000000000000 : ℚ), (33887500000000001 / 50000000000000000 : ℚ)⟩
  r := (6470626425551 / 12500000000000 : ℚ)
  w := (6797513154983 / 5000000000000 : ℚ)
  center := (54215000000000001 / 80000000000000000 : ℚ)
  supportValue := (14981762846991453 / 50000000000000000 : ℚ)
  supportSlope := (-2546781136884807 / 2500000000000000 : ℚ)
  oldCenter := (14981762846991453 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1576
  oldLo := (7487500000000001 / 25000000000000000 : ℚ)
  oldHi := (7500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_752]
}

noncomputable def cell_12043 : Cell := { cellDefaults with
  domain := ⟨(33887500000000001 / 50000000000000000 : ℚ), (135575000000000007 / 200000000000000000 : ℚ)⟩
  r := (6470626425551 / 12500000000000 : ℚ)
  w := (6797513154983 / 5000000000000 : ℚ)
  center := (271125000000000011 / 400000000000000000 : ℚ)
  supportValue := (2995081991506297 / 10000000000000000 : ℚ)
  supportSlope := (-2545879953763347 / 2500000000000000 : ℚ)
  oldCenter := (2995081991506297 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1576
  oldLo := (7475000000000001 / 25000000000000000 : ℚ)
  oldHi := (7500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_751, piece_752]
}

noncomputable def cell_12044 : Cell := { cellDefaults with
  domain := ⟨(135575000000000007 / 200000000000000000 : ℚ), (13560000000000001 / 20000000000000000 : ℚ)⟩
  r := (6470626425551 / 12500000000000 : ℚ)
  w := (6797513154983 / 5000000000000 : ℚ)
  center := (271175000000000017 / 400000000000000000 : ℚ)
  supportValue := (37422581908559 / 125000000000000 : ℚ)
  supportSlope := (-101820758987069 / 100000000000000 : ℚ)
  oldCenter := (37422581908559 / 125000000000000 : ℚ)
  newCoefficients := coefficients_1576
  oldLo := (7475000000000001 / 25000000000000000 : ℚ)
  oldHi := (7487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_751]
}

noncomputable def cell_12045 : Cell := { cellDefaults with
  domain := ⟨(13560000000000001 / 20000000000000000 : ℚ), (135625000000000007 / 200000000000000000 : ℚ)⟩
  r := (51741971951999 / 100000000000000 : ℚ)
  w := (13593312375671 / 10000000000000 : ℚ)
  center := (271225000000000017 / 400000000000000000 : ℚ)
  supportValue := (1198028641046347 / 4000000000000000 : ℚ)
  supportSlope := (-1017915085477783 / 1000000000000000 : ℚ)
  oldCenter := (1198028641046347 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1577
  oldLo := (7475000000000001 / 25000000000000000 : ℚ)
  oldHi := (7500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_751, piece_752]
}

noncomputable def cell_12046 : Cell := { cellDefaults with
  domain := ⟨(135625000000000007 / 200000000000000000 : ℚ), (33912500000000001 / 50000000000000000 : ℚ)⟩
  r := (51741971951999 / 100000000000000 : ℚ)
  w := (13593312375671 / 10000000000000 : ℚ)
  center := (271275000000000011 / 400000000000000000 : ℚ)
  supportValue := (93556147182207 / 312500000000000 : ℚ)
  supportSlope := (-10177566223471657 / 10000000000000000 : ℚ)
  oldCenter := (93556147182207 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1577
  oldLo := (7475000000000001 / 25000000000000000 : ℚ)
  oldHi := (7487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_751]
}

noncomputable def cell_12047 : Cell := { cellDefaults with
  domain := ⟨(33912500000000001 / 50000000000000000 : ℚ), (135675000000000001 / 200000000000000000 : ℚ)⟩
  r := (51741971951999 / 100000000000000 : ℚ)
  w := (13593312375671 / 10000000000000 : ℚ)
  center := (54265000000000001 / 80000000000000000 : ℚ)
  supportValue := (14962626166439813 / 50000000000000000 : ℚ)
  supportSlope := (-2541516182954811 / 2500000000000000 : ℚ)
  oldCenter := (14962626166439813 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1577
  oldLo := (7475000000000001 / 25000000000000000 : ℚ)
  oldHi := (7487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_751]
}

noncomputable def cell_12048 : Cell := { cellDefaults with
  domain := ⟨(135675000000000001 / 200000000000000000 : ℚ), (67849999999999999 / 100000000000000000 : ℚ)⟩
  r := (51741971951999 / 100000000000000 : ℚ)
  w := (13593312375671 / 10000000000000 : ℚ)
  center := (271374999999999999 / 400000000000000000 : ℚ)
  supportValue := (14956275956717327 / 50000000000000000 : ℚ)
  supportSlope := (-10154612576293127 / 10000000000000000 : ℚ)
  oldCenter := (14956275956717327 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1577
  oldLo := (7475000000000001 / 25000000000000000 : ℚ)
  oldHi := (7487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_751]
}

noncomputable def cell_12049 : Cell := { cellDefaults with
  domain := ⟨(67849999999999999 / 100000000000000000 : ℚ), (135725000000000001 / 200000000000000000 : ℚ)⟩
  r := (5171896223203 / 10000000000000 : ℚ)
  w := (13591613818651 / 10000000000000 : ℚ)
  center := (271424999999999999 / 400000000000000000 : ℚ)
  supportValue := (59850241206679 / 200000000000000 : ℚ)
  supportSlope := (-2032307657889843 / 2000000000000000 : ℚ)
  oldCenter := (59850241206679 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1578
  oldLo := (7475000000000001 / 25000000000000000 : ℚ)
  oldHi := (7487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_751]
}

theorem check_12000 : cell_12000.check = true := by
  decide +kernel

theorem check_12001 : cell_12001.check = true := by
  decide +kernel

theorem check_12002 : cell_12002.check = true := by
  decide +kernel

theorem check_12003 : cell_12003.check = true := by
  decide +kernel

theorem check_12004 : cell_12004.check = true := by
  decide +kernel

theorem check_12005 : cell_12005.check = true := by
  decide +kernel

theorem check_12006 : cell_12006.check = true := by
  decide +kernel

theorem check_12007 : cell_12007.check = true := by
  decide +kernel

theorem check_12008 : cell_12008.check = true := by
  decide +kernel

theorem check_12009 : cell_12009.check = true := by
  decide +kernel

theorem check_12010 : cell_12010.check = true := by
  decide +kernel

theorem check_12011 : cell_12011.check = true := by
  decide +kernel

theorem check_12012 : cell_12012.check = true := by
  decide +kernel

theorem check_12013 : cell_12013.check = true := by
  decide +kernel

theorem check_12014 : cell_12014.check = true := by
  decide +kernel

theorem check_12015 : cell_12015.check = true := by
  decide +kernel

theorem check_12016 : cell_12016.check = true := by
  decide +kernel

theorem check_12017 : cell_12017.check = true := by
  decide +kernel

theorem check_12018 : cell_12018.check = true := by
  decide +kernel

theorem check_12019 : cell_12019.check = true := by
  decide +kernel

theorem check_12020 : cell_12020.check = true := by
  decide +kernel

theorem check_12021 : cell_12021.check = true := by
  decide +kernel

theorem check_12022 : cell_12022.check = true := by
  decide +kernel

theorem check_12023 : cell_12023.check = true := by
  decide +kernel

theorem check_12024 : cell_12024.check = true := by
  decide +kernel

theorem check_12025 : cell_12025.check = true := by
  decide +kernel

theorem check_12026 : cell_12026.check = true := by
  decide +kernel

theorem check_12027 : cell_12027.check = true := by
  decide +kernel

theorem check_12028 : cell_12028.check = true := by
  decide +kernel

theorem check_12029 : cell_12029.check = true := by
  decide +kernel

theorem check_12030 : cell_12030.check = true := by
  decide +kernel

theorem check_12031 : cell_12031.check = true := by
  decide +kernel

theorem check_12032 : cell_12032.check = true := by
  decide +kernel

theorem check_12033 : cell_12033.check = true := by
  decide +kernel

theorem check_12034 : cell_12034.check = true := by
  decide +kernel

theorem check_12035 : cell_12035.check = true := by
  decide +kernel

theorem check_12036 : cell_12036.check = true := by
  decide +kernel

theorem check_12037 : cell_12037.check = true := by
  decide +kernel

theorem check_12038 : cell_12038.check = true := by
  decide +kernel

theorem check_12039 : cell_12039.check = true := by
  decide +kernel

theorem check_12040 : cell_12040.check = true := by
  decide +kernel

theorem check_12041 : cell_12041.check = true := by
  decide +kernel

theorem check_12042 : cell_12042.check = true := by
  decide +kernel

theorem check_12043 : cell_12043.check = true := by
  decide +kernel

theorem check_12044 : cell_12044.check = true := by
  decide +kernel

theorem check_12045 : cell_12045.check = true := by
  decide +kernel

theorem check_12046 : cell_12046.check = true := by
  decide +kernel

theorem check_12047 : cell_12047.check = true := by
  decide +kernel

theorem check_12048 : cell_12048.check = true := by
  decide +kernel

theorem check_12049 : cell_12049.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12000, cell_12001, cell_12002, cell_12003, cell_12004, cell_12005, cell_12006, cell_12007, cell_12008, cell_12009, cell_12010, cell_12011, cell_12012, cell_12013, cell_12014, cell_12015, cell_12016, cell_12017, cell_12018, cell_12019, cell_12020, cell_12021, cell_12022, cell_12023, cell_12024, cell_12025, cell_12026, cell_12027, cell_12028, cell_12029, cell_12030, cell_12031, cell_12032, cell_12033, cell_12034, cell_12035, cell_12036, cell_12037, cell_12038, cell_12039, cell_12040, cell_12041, cell_12042, cell_12043, cell_12044, cell_12045, cell_12046, cell_12047, cell_12048, cell_12049]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12000, check_12001, check_12002, check_12003, check_12004, check_12005, check_12006, check_12007, check_12008, check_12009, check_12010, check_12011, check_12012, check_12013, check_12014, check_12015, check_12016, check_12017, check_12018, check_12019, check_12020, check_12021, check_12022, check_12023, check_12024, check_12025, check_12026, check_12027, check_12028, check_12029, check_12030, check_12031, check_12032, check_12033, check_12034, check_12035, check_12036, check_12037, check_12038, check_12039, check_12040, check_12041, check_12042, check_12043, check_12044, check_12045, check_12046, check_12047, check_12048, check_12049, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0240

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0240
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0240
open AnalyticBounds.ExpressionCertificate

theorem linked_12000 : Linked cell_12000 pieces := by
  link_source cell_12000 with piece_1565 using piece_1565_mem, piece_757_mem

theorem linked_12001 : Linked cell_12001 pieces := by
  link_source cell_12001 with piece_1565 using piece_1565_mem, piece_757_mem

theorem linked_12002 : Linked cell_12002 pieces := by
  link_source cell_12002 with piece_1565 using piece_1565_mem, piece_757_mem

theorem linked_12003 : Linked cell_12003 pieces := by
  link_source cell_12003 with piece_1565 using piece_1565_mem, ⟨piece_756_mem, piece_757_mem⟩

theorem linked_12004 : Linked cell_12004 pieces := by
  link_source cell_12004 with piece_1566 using piece_1566_mem, piece_757_mem

theorem linked_12005 : Linked cell_12005 pieces := by
  link_source cell_12005 with piece_1566 using piece_1566_mem, ⟨piece_756_mem, piece_757_mem⟩

theorem linked_12006 : Linked cell_12006 pieces := by
  link_source cell_12006 with piece_1566 using piece_1566_mem, piece_756_mem

theorem linked_12007 : Linked cell_12007 pieces := by
  link_source cell_12007 with piece_1566 using piece_1566_mem, piece_756_mem

theorem linked_12008 : Linked cell_12008 pieces := by
  link_source cell_12008 with piece_1567 using piece_1567_mem, piece_756_mem

theorem linked_12009 : Linked cell_12009 pieces := by
  link_source cell_12009 with piece_1567 using piece_1567_mem, piece_756_mem

theorem linked_12010 : Linked cell_12010 pieces := by
  link_source cell_12010 with piece_1568 using piece_1568_mem, piece_756_mem

theorem linked_12011 : Linked cell_12011 pieces := by
  link_source cell_12011 with piece_1568 using piece_1568_mem, ⟨piece_755_mem, piece_756_mem⟩

theorem linked_12012 : Linked cell_12012 pieces := by
  link_source cell_12012 with piece_1568 using piece_1568_mem, piece_755_mem

theorem linked_12013 : Linked cell_12013 pieces := by
  link_source cell_12013 with piece_1569 using piece_1569_mem, ⟨piece_755_mem, piece_756_mem⟩

theorem linked_12014 : Linked cell_12014 pieces := by
  link_source cell_12014 with piece_1569 using piece_1569_mem, piece_755_mem

theorem linked_12015 : Linked cell_12015 pieces := by
  link_source cell_12015 with piece_1569 using piece_1569_mem, piece_755_mem

theorem linked_12016 : Linked cell_12016 pieces := by
  link_source cell_12016 with piece_1569 using piece_1569_mem, piece_755_mem

theorem linked_12017 : Linked cell_12017 pieces := by
  link_source cell_12017 with piece_1570 using piece_1570_mem, piece_755_mem

theorem linked_12018 : Linked cell_12018 pieces := by
  link_source cell_12018 with piece_1570 using piece_1570_mem, piece_755_mem

theorem linked_12019 : Linked cell_12019 pieces := by
  link_source cell_12019 with piece_1570 using piece_1570_mem, ⟨piece_754_mem, piece_755_mem⟩

theorem linked_12020 : Linked cell_12020 pieces := by
  link_source cell_12020 with piece_1570 using piece_1570_mem, piece_754_mem

theorem linked_12021 : Linked cell_12021 pieces := by
  link_source cell_12021 with piece_1571 using piece_1571_mem, ⟨piece_754_mem, piece_755_mem⟩

theorem linked_12022 : Linked cell_12022 pieces := by
  link_source cell_12022 with piece_1571 using piece_1571_mem, piece_754_mem

theorem linked_12023 : Linked cell_12023 pieces := by
  link_source cell_12023 with piece_1571 using piece_1571_mem, piece_754_mem

theorem linked_12024 : Linked cell_12024 pieces := by
  link_source cell_12024 with piece_1571 using piece_1571_mem, piece_754_mem

theorem linked_12025 : Linked cell_12025 pieces := by
  link_source cell_12025 with piece_1572 using piece_1572_mem, piece_754_mem

theorem linked_12026 : Linked cell_12026 pieces := by
  link_source cell_12026 with piece_1572 using piece_1572_mem, piece_754_mem

theorem linked_12027 : Linked cell_12027 pieces := by
  link_source cell_12027 with piece_1572 using piece_1572_mem, ⟨piece_753_mem, piece_754_mem⟩

theorem linked_12028 : Linked cell_12028 pieces := by
  link_source cell_12028 with piece_1572 using piece_1572_mem, piece_753_mem

theorem linked_12029 : Linked cell_12029 pieces := by
  link_source cell_12029 with piece_1573 using piece_1573_mem, ⟨piece_753_mem, piece_754_mem⟩

theorem linked_12030 : Linked cell_12030 pieces := by
  link_source cell_12030 with piece_1573 using piece_1573_mem, piece_753_mem

theorem linked_12031 : Linked cell_12031 pieces := by
  link_source cell_12031 with piece_1573 using piece_1573_mem, piece_753_mem

theorem linked_12032 : Linked cell_12032 pieces := by
  link_source cell_12032 with piece_1573 using piece_1573_mem, piece_753_mem

theorem linked_12033 : Linked cell_12033 pieces := by
  link_source cell_12033 with piece_1574 using piece_1574_mem, piece_753_mem

theorem linked_12034 : Linked cell_12034 pieces := by
  link_source cell_12034 with piece_1574 using piece_1574_mem, piece_753_mem

theorem linked_12035 : Linked cell_12035 pieces := by
  link_source cell_12035 with piece_1574 using piece_1574_mem, ⟨piece_752_mem, piece_753_mem⟩

theorem linked_12036 : Linked cell_12036 pieces := by
  link_source cell_12036 with piece_1574 using piece_1574_mem, piece_752_mem

theorem linked_12037 : Linked cell_12037 pieces := by
  link_source cell_12037 with piece_1575 using piece_1575_mem, ⟨piece_752_mem, piece_753_mem⟩

theorem linked_12038 : Linked cell_12038 pieces := by
  link_source cell_12038 with piece_1575 using piece_1575_mem, piece_752_mem

theorem linked_12039 : Linked cell_12039 pieces := by
  link_source cell_12039 with piece_1575 using piece_1575_mem, piece_752_mem

theorem linked_12040 : Linked cell_12040 pieces := by
  link_source cell_12040 with piece_1575 using piece_1575_mem, piece_752_mem

theorem linked_12041 : Linked cell_12041 pieces := by
  link_source cell_12041 with piece_1576 using piece_1576_mem, piece_752_mem

theorem linked_12042 : Linked cell_12042 pieces := by
  link_source cell_12042 with piece_1576 using piece_1576_mem, piece_752_mem

theorem linked_12043 : Linked cell_12043 pieces := by
  link_source cell_12043 with piece_1576 using piece_1576_mem, ⟨piece_751_mem, piece_752_mem⟩

theorem linked_12044 : Linked cell_12044 pieces := by
  link_source cell_12044 with piece_1576 using piece_1576_mem, piece_751_mem

theorem linked_12045 : Linked cell_12045 pieces := by
  link_source cell_12045 with piece_1577 using piece_1577_mem, ⟨piece_751_mem, piece_752_mem⟩

theorem linked_12046 : Linked cell_12046 pieces := by
  link_source cell_12046 with piece_1577 using piece_1577_mem, piece_751_mem

theorem linked_12047 : Linked cell_12047 pieces := by
  link_source cell_12047 with piece_1577 using piece_1577_mem, piece_751_mem

theorem linked_12048 : Linked cell_12048 pieces := by
  link_source cell_12048 with piece_1577 using piece_1577_mem, piece_751_mem

theorem linked_12049 : Linked cell_12049 pieces := by
  link_source cell_12049 with piece_1578 using piece_1578_mem, piece_751_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0240.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0240.cells,List.forall_mem_cons]
  exact ⟨linked_12000, linked_12001, linked_12002, linked_12003, linked_12004, linked_12005, linked_12006, linked_12007, linked_12008, linked_12009, linked_12010, linked_12011, linked_12012, linked_12013, linked_12014, linked_12015, linked_12016, linked_12017, linked_12018, linked_12019, linked_12020, linked_12021, linked_12022, linked_12023, linked_12024, linked_12025, linked_12026, linked_12027, linked_12028, linked_12029, linked_12030, linked_12031, linked_12032, linked_12033, linked_12034, linked_12035, linked_12036, linked_12037, linked_12038, linked_12039, linked_12040, linked_12041, linked_12042, linked_12043, linked_12044, linked_12045, linked_12046, linked_12047, linked_12048, linked_12049, by simp⟩

theorem covered : covers (67249999999999999 / 100000000000000000 : ℚ) (135725000000000001 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0240.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0240
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0241
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(135725000000000001 / 200000000000000000 : ℚ), (33937500000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (516959731707 / 1000000000000 : ℚ)
  w := (84936967773 / 62500000000 : ℚ)
  center := (54295000000000001 / 80000000000000000 : ℚ)
  supportValue := (2991242583533313 / 10000000000000000 : ℚ)
  supportSlope := (-5075048351347813 / 5000000000000000 : ℚ)
  oldCenter := (2991242583533313 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1581
  oldLo := (7462500000000001 / 25000000000000000 : ℚ)
  oldHi := (7475000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_750]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12050 : Cell := { cellDefaults with
  r := (5171896223203 / 10000000000000 : ℚ)
  w := (13591613818651 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1578
  oldLo := (7475000000000001 / 25000000000000000 : ℚ)
  oldHi := (7487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_751]
}

noncomputable def cell_12051 : Cell := { cellDefaults with
  domain := ⟨(33937500000000001 / 50000000000000000 : ℚ), (135775000000000007 / 200000000000000000 : ℚ)⟩
  r := (5171896223203 / 10000000000000 : ℚ)
  w := (13591613818651 / 10000000000000 : ℚ)
  center := (271525000000000011 / 400000000000000000 : ℚ)
  supportValue := (29899765802274253 / 100000000000000000 : ℚ)
  supportSlope := (-10148020202461643 / 10000000000000000 : ℚ)
  oldCenter := (29899765802274253 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1578
  oldHi := (7487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_750, piece_751]
}

noncomputable def cell_12052 : Cell := { cellDefaults with
  domain := ⟨(135775000000000007 / 200000000000000000 : ℚ), (13580000000000001 / 20000000000000000 : ℚ)⟩
  r := (5171896223203 / 10000000000000 : ℚ)
  w := (13591613818651 / 10000000000000 : ℚ)
  center := (271575000000000017 / 400000000000000000 : ℚ)
  supportValue := (29887056280470503 / 100000000000000000 : ℚ)
  supportSlope := (-5072560587570609 / 5000000000000000 : ℚ)
  oldCenter := (29887056280470503 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1578
  oldPieces := [piece_750]
}

noncomputable def cell_12053 : Cell := { cellDefaults with
  domain := ⟨(13580000000000001 / 20000000000000000 : ℚ), (27164357541899443 / 40000000000000000 : ℚ)⟩
  center := (10864871508379889 / 16000000000000000 : ℚ)
  supportValue := (2990045881886109 / 10000000000000000 : ℚ)
  supportSlope := (-2535795183721537 / 2500000000000000 : ℚ)
  oldCenter := (2990045881886109 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1579
  oldHi := (7487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_750, piece_751]
}

noncomputable def cell_12054 : Cell := { cellDefaults with
  domain := ⟨(27164357541899443 / 40000000000000000 : ℚ), (6792178770949721 / 10000000000000000 : ℚ)⟩
  center := (54333072625698327 / 80000000000000000 : ℚ)
  supportValue := (29889383732989 / 100000000000000 : ℚ)
  supportSlope := (-10142831817221587 / 10000000000000000 : ℚ)
  oldCenter := (29889383732989 / 100000000000000 : ℚ)
  newCoefficients := coefficients_1579
  oldPieces := [piece_750]
}

noncomputable def cell_12055 : Cell := { cellDefaults with
  domain := ⟨(6792178770949721 / 10000000000000000 : ℚ), (135871787709497209 / 200000000000000000 : ℚ)⟩
  center := (271715363128491629 / 400000000000000000 : ℚ)
  supportValue := (1493836663659249 / 5000000000000000 : ℚ)
  supportSlope := (-5065686054105677 / 5000000000000000 : ℚ)
  oldCenter := (1493836663659249 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1580
  oldPieces := [piece_750]
}

noncomputable def cell_12056 : Cell := { cellDefaults with
  domain := ⟨(135871787709497209 / 200000000000000000 : ℚ), (67949999999999999 / 100000000000000000 : ℚ)⟩
  center := (271771787709497207 / 400000000000000000 : ℚ)
  supportValue := (5972490177907921 / 20000000000000000 : ℚ)
  supportSlope := (-10118497878727153 / 10000000000000000 : ℚ)
  oldCenter := (5972490177907921 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1580
  oldPieces := [piece_750]
}

noncomputable def cell_12057 : Cell := { cellDefaults with
  domain := ⟨(67949999999999999 / 100000000000000000 : ℚ), (135925000000000001 / 200000000000000000 : ℚ)⟩
  r := (10334603181181 / 20000000000000 : ℚ)
  w := (13588232692549 / 10000000000000 : ℚ)
  center := (271824999999999999 / 400000000000000000 : ℚ)
  supportValue := (597482357816187 / 2000000000000000 : ℚ)
  supportSlope := (-10124646490224827 / 10000000000000000 : ℚ)
  oldCenter := (597482357816187 / 2000000000000000 : ℚ)
  oldPieces := [piece_750]
}

noncomputable def cell_12058 : Cell := { cellDefaults with
  domain := ⟨(135925000000000001 / 200000000000000000 : ℚ), (33987500000000001 / 50000000000000000 : ℚ)⟩
  r := (10334603181181 / 20000000000000 : ℚ)
  w := (13588232692549 / 10000000000000 : ℚ)
  center := (54375000000000001 / 80000000000000000 : ℚ)
  supportValue := (2986146920623823 / 10000000000000000 : ℚ)
  supportSlope := (-2528313744174201 / 2500000000000000 : ℚ)
  oldCenter := (2986146920623823 / 10000000000000000 : ℚ)
  oldPieces := [piece_750]
}

noncomputable def cell_12059 : Cell := { cellDefaults with
  domain := ⟨(33987500000000001 / 50000000000000000 : ℚ), (135975000000000007 / 200000000000000000 : ℚ)⟩
  r := (10334603181181 / 20000000000000 : ℚ)
  w := (13588232692549 / 10000000000000 : ℚ)
  center := (271925000000000011 / 400000000000000000 : ℚ)
  supportValue := (29848853541331977 / 100000000000000000 : ℚ)
  supportSlope := (-5056257406094671 / 5000000000000000 : ℚ)
  oldCenter := (29848853541331977 / 100000000000000000 : ℚ)
  oldLo := (7450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_749, piece_750]
}

noncomputable def cell_12060 : Cell := { cellDefaults with
  domain := ⟨(135975000000000007 / 200000000000000000 : ℚ), (13600000000000001 / 20000000000000000 : ℚ)⟩
  r := (10334603181181 / 20000000000000 : ℚ)
  w := (13588232692549 / 10000000000000 : ℚ)
  center := (271975000000000017 / 400000000000000000 : ℚ)
  supportValue := (14918095017650873 / 50000000000000000 : ℚ)
  supportSlope := (-10108356807990613 / 10000000000000000 : ℚ)
  oldCenter := (14918095017650873 / 50000000000000000 : ℚ)
  oldLo := (7450000000000001 / 25000000000000000 : ℚ)
  oldHi := (7462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_749]
}

noncomputable def cell_12061 : Cell := { cellDefaults with
  domain := ⟨(13600000000000001 / 20000000000000000 : ℚ), (136025000000000007 / 200000000000000000 : ℚ)⟩
  r := (2582503924179 / 5000000000000 : ℚ)
  w := (2717309945281 / 2000000000000 : ℚ)
  center := (272025000000000017 / 400000000000000000 : ℚ)
  supportValue := (298487112652269 / 1000000000000000 : ℚ)
  supportSlope := (-631763407381101 / 625000000000000 : ℚ)
  oldCenter := (298487112652269 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1582
  oldLo := (7450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_749, piece_750]
}

noncomputable def cell_12062 : Cell := { cellDefaults with
  domain := ⟨(136025000000000007 / 200000000000000000 : ℚ), (34012500000000001 / 50000000000000000 : ℚ)⟩
  r := (2582503924179 / 5000000000000 : ℚ)
  w := (2717309945281 / 2000000000000 : ℚ)
  center := (272075000000000011 / 400000000000000000 : ℚ)
  supportValue := (29836053386053013 / 100000000000000000 : ℚ)
  supportSlope := (-2525965168223313 / 2500000000000000 : ℚ)
  oldCenter := (29836053386053013 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1582
  oldLo := (7450000000000001 / 25000000000000000 : ℚ)
  oldHi := (7462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_749]
}

noncomputable def cell_12063 : Cell := { cellDefaults with
  domain := ⟨(34012500000000001 / 50000000000000000 : ℚ), (136075000000000001 / 200000000000000000 : ℚ)⟩
  r := (2582503924179 / 5000000000000 : ℚ)
  w := (2717309945281 / 2000000000000 : ℚ)
  center := (54425000000000001 / 80000000000000000 : ℚ)
  supportValue := (596468613929367 / 2000000000000000 : ℚ)
  supportSlope := (-63077805619157 / 62500000000000 : ℚ)
  oldCenter := (596468613929367 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1582
  oldLo := (7450000000000001 / 25000000000000000 : ℚ)
  oldHi := (7462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_749]
}

noncomputable def cell_12064 : Cell := { cellDefaults with
  domain := ⟨(136075000000000001 / 200000000000000000 : ℚ), (68049999999999999 / 100000000000000000 : ℚ)⟩
  r := (2582503924179 / 5000000000000 : ℚ)
  w := (2717309945281 / 2000000000000 : ℚ)
  center := (272174999999999999 / 400000000000000000 : ℚ)
  supportValue := (14905411120459333 / 50000000000000000 : ℚ)
  supportSlope := (-10081086140793047 / 10000000000000000 : ℚ)
  oldCenter := (14905411120459333 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1582
  oldLo := (7450000000000001 / 25000000000000000 : ℚ)
  oldHi := (7462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_749]
}

noncomputable def cell_12065 : Cell := { cellDefaults with
  domain := ⟨(68049999999999999 / 100000000000000000 : ℚ), (136125000000000001 / 200000000000000000 : ℚ)⟩
  r := (51627171795159 / 100000000000000 : ℚ)
  w := (13584883416553 / 10000000000000 : ℚ)
  center := (272224999999999999 / 400000000000000000 : ℚ)
  supportValue := (7455814360572191 / 25000000000000000 : ℚ)
  supportSlope := (-2017586697787379 / 2000000000000000 : ℚ)
  oldCenter := (7455814360572191 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1583
  oldLo := (7450000000000001 / 25000000000000000 : ℚ)
  oldHi := (7462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_749]
}

noncomputable def cell_12066 : Cell := { cellDefaults with
  domain := ⟨(136125000000000001 / 200000000000000000 : ℚ), (34037500000000001 / 50000000000000000 : ℚ)⟩
  r := (51627171795159 / 100000000000000 : ℚ)
  w := (13584883416553 / 10000000000000 : ℚ)
  center := (54455000000000001 / 80000000000000000 : ℚ)
  supportValue := (29810654624393057 / 100000000000000000 : ℚ)
  supportSlope := (-5038290645166761 / 5000000000000000 : ℚ)
  oldCenter := (29810654624393057 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1583
  oldLo := (7450000000000001 / 25000000000000000 : ℚ)
  oldHi := (7462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_749]
}

noncomputable def cell_12067 : Cell := { cellDefaults with
  domain := ⟨(34037500000000001 / 50000000000000000 : ℚ), (136175000000000007 / 200000000000000000 : ℚ)⟩
  r := (51627171795159 / 100000000000000 : ℚ)
  w := (13584883416553 / 10000000000000 : ℚ)
  center := (272325000000000011 / 400000000000000000 : ℚ)
  supportValue := (2979808337091007 / 10000000000000000 : ℚ)
  supportSlope := (-2015392842645383 / 2000000000000000 : ℚ)
  oldCenter := (2979808337091007 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1583
  oldLo := (595195530726257 / 2000000000000000 : ℚ)
  oldHi := (7462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_748, piece_749]
}

noncomputable def cell_12068 : Cell := { cellDefaults with
  domain := ⟨(136175000000000007 / 200000000000000000 : ℚ), (13620000000000001 / 20000000000000000 : ℚ)⟩
  r := (51627171795159 / 100000000000000 : ℚ)
  w := (13584883416553 / 10000000000000 : ℚ)
  center := (272375000000000017 / 400000000000000000 : ℚ)
  supportValue := (29785465691081797 / 100000000000000000 : ℚ)
  supportSlope := (-1007175910725401 / 1000000000000000 : ℚ)
  oldCenter := (29785465691081797 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1583
  oldLo := (595195530726257 / 2000000000000000 : ℚ)
  oldHi := (7450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_748]
}

noncomputable def cell_12069 : Cell := { cellDefaults with
  domain := ⟨(13620000000000001 / 20000000000000000 : ℚ), (136225000000000007 / 200000000000000000 : ℚ)⟩
  r := (10320857199273 / 20000000000000 : ℚ)
  w := (6791608249127 / 5000000000000 : ℚ)
  center := (272425000000000017 / 400000000000000000 : ℚ)
  supportValue := (2979792020320599 / 10000000000000000 : ℚ)
  supportSlope := (-10072699301232433 / 10000000000000000 : ℚ)
  oldCenter := (2979792020320599 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1584
  oldLo := (595195530726257 / 2000000000000000 : ℚ)
  oldHi := (7462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_748, piece_749]
}

noncomputable def cell_12070 : Cell := { cellDefaults with
  domain := ⟨(136225000000000007 / 200000000000000000 : ℚ), (34062500000000001 / 50000000000000000 : ℚ)⟩
  r := (10320857199273 / 20000000000000 : ℚ)
  w := (6791608249127 / 5000000000000 : ℚ)
  center := (272475000000000011 / 400000000000000000 : ℚ)
  supportValue := (29785308143441097 / 100000000000000000 : ℚ)
  supportSlope := (-10067268418928563 / 10000000000000000 : ℚ)
  oldCenter := (29785308143441097 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1584
  oldLo := (595195530726257 / 2000000000000000 : ℚ)
  oldHi := (7450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_748]
}

noncomputable def cell_12071 : Cell := { cellDefaults with
  domain := ⟨(34062500000000001 / 50000000000000000 : ℚ), (136275000000000001 / 200000000000000000 : ℚ)⟩
  r := (10320857199273 / 20000000000000 : ℚ)
  w := (6791608249127 / 5000000000000 : ℚ)
  center := (54505000000000001 / 80000000000000000 : ℚ)
  supportValue := (1488636557538921 / 5000000000000000 : ℚ)
  supportSlope := (-5027963004114503 / 5000000000000000 : ℚ)
  oldCenter := (1488636557538921 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1584
  oldLo := (595195530726257 / 2000000000000000 : ℚ)
  oldHi := (7450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_748]
}

noncomputable def cell_12072 : Cell := { cellDefaults with
  domain := ⟨(136275000000000001 / 200000000000000000 : ℚ), (68149999999999999 / 100000000000000000 : ℚ)⟩
  r := (10320857199273 / 20000000000000 : ℚ)
  w := (6791608249127 / 5000000000000 : ℚ)
  center := (272574999999999999 / 400000000000000000 : ℚ)
  supportValue := (2976016830567523 / 10000000000000000 : ℚ)
  supportSlope := (-5022312076251081 / 5000000000000000 : ℚ)
  oldCenter := (2976016830567523 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1584
  oldLo := (7437500000000001 / 25000000000000000 : ℚ)
  oldHi := (7450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_747, piece_748]
}

noncomputable def cell_12073 : Cell := { cellDefaults with
  domain := ⟨(68149999999999999 / 100000000000000000 : ℚ), (136325000000000001 / 200000000000000000 : ℚ)⟩
  r := (12895357800811 / 25000000000000 : ℚ)
  w := (13581566102721 / 10000000000000 : ℚ)
  center := (272624999999999999 / 400000000000000000 : ℚ)
  supportValue := (1190901480144261 / 4000000000000000 : ℚ)
  supportSlope := (-2010283247896297 / 2000000000000000 : ℚ)
  oldCenter := (1190901480144261 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1585
  oldLo := (595195530726257 / 2000000000000000 : ℚ)
  oldHi := (7450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_748]
}

noncomputable def cell_12074 : Cell := { cellDefaults with
  domain := ⟨(136325000000000001 / 200000000000000000 : ℚ), (34087500000000001 / 50000000000000000 : ℚ)⟩
  r := (12895357800811 / 25000000000000 : ℚ)
  w := (13581566102721 / 10000000000000 : ℚ)
  center := (54535000000000001 / 80000000000000000 : ℚ)
  supportValue := (2975997978910543 / 10000000000000000 : ℚ)
  supportSlope := (-10040124688560543 / 10000000000000000 : ℚ)
  oldCenter := (2975997978910543 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1585
  oldLo := (7437500000000001 / 25000000000000000 : ℚ)
  oldHi := (7450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_747, piece_748]
}

noncomputable def cell_12075 : Cell := { cellDefaults with
  domain := ⟨(34087500000000001 / 50000000000000000 : ℚ), (136375000000000007 / 200000000000000000 : ℚ)⟩
  r := (12895357800811 / 25000000000000 : ℚ)
  w := (13581566102721 / 10000000000000 : ℚ)
  center := (272725000000000011 / 400000000000000000 : ℚ)
  supportValue := (371843161428609 / 1250000000000000 : ℚ)
  supportSlope := (-251036003652919 / 250000000000000 : ℚ)
  oldCenter := (371843161428609 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1585
  oldLo := (7425000000000001 / 25000000000000000 : ℚ)
  oldHi := (595195530726257 / 2000000000000000 : ℚ)
  oldPieces := [piece_746, piece_747]
}

noncomputable def cell_12076 : Cell := { cellDefaults with
  domain := ⟨(136375000000000007 / 200000000000000000 : ℚ), (13640000000000001 / 20000000000000000 : ℚ)⟩
  r := (12895357800811 / 25000000000000 : ℚ)
  w := (13581566102721 / 10000000000000 : ℚ)
  center := (272775000000000017 / 400000000000000000 : ℚ)
  supportValue := (1486744039876113 / 5000000000000000 : ℚ)
  supportSlope := (-5017679746903101 / 5000000000000000 : ℚ)
  oldCenter := (1486744039876113 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1585
  oldLo := (7425000000000001 / 25000000000000000 : ℚ)
  oldHi := (7437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_746]
}

noncomputable def cell_12077 : Cell := { cellDefaults with
  domain := ⟨(13640000000000001 / 20000000000000000 : ℚ), (54570000000000003 / 80000000000000000 : ℚ)⟩
  r := (1288964901817 / 2500000000000 : ℚ)
  w := (13579914342271 / 10000000000000 : ℚ)
  center := (109130000000000007 / 160000000000000000 : ℚ)
  supportValue := (2974727130936951 / 10000000000000000 : ℚ)
  supportSlope := (-156831389123301 / 156250000000000 : ℚ)
  oldCenter := (2974727130936951 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1586
  oldLo := (7425000000000001 / 25000000000000000 : ℚ)
  oldHi := (595195530726257 / 2000000000000000 : ℚ)
  oldPieces := [piece_746, piece_747]
}

noncomputable def cell_12078 : Cell := { cellDefaults with
  domain := ⟨(54570000000000003 / 80000000000000000 : ℚ), (27290000000000001 / 40000000000000000 : ℚ)⟩
  r := (1288964901817 / 2500000000000 : ℚ)
  w := (13579914342271 / 10000000000000 : ℚ)
  center := (21830000000000001 / 32000000000000000 : ℚ)
  supportValue := (1189388192156561 / 4000000000000000 : ℚ)
  supportSlope := (-10030875825092103 / 10000000000000000 : ℚ)
  oldCenter := (1189388192156561 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1586
  oldLo := (7425000000000001 / 25000000000000000 : ℚ)
  oldHi := (7437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_746]
}

noncomputable def cell_12079 : Cell := { cellDefaults with
  domain := ⟨(27290000000000001 / 40000000000000000 : ℚ), (54590000000000001 / 80000000000000000 : ℚ)⟩
  r := (1288964901817 / 2500000000000 : ℚ)
  w := (13579914342271 / 10000000000000 : ℚ)
  center := (109170000000000003 / 160000000000000000 : ℚ)
  supportValue := (3715271659244937 / 12500000000000000 : ℚ)
  supportSlope := (-1001957824981681 / 1000000000000000 : ℚ)
  oldCenter := (3715271659244937 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1586
  oldLo := (7425000000000001 / 25000000000000000 : ℚ)
  oldHi := (7437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_746]
}

noncomputable def cell_12080 : Cell := { cellDefaults with
  domain := ⟨(54590000000000001 / 80000000000000000 : ℚ), (273 / 400 : ℚ)⟩
  r := (1288964901817 / 2500000000000 : ℚ)
  w := (13579914342271 / 10000000000000 : ℚ)
  center := (109190000000000001 / 160000000000000000 : ℚ)
  supportValue := (2970965583562267 / 10000000000000000 : ℚ)
  supportSlope := (-5004164580789061 / 5000000000000000 : ℚ)
  oldCenter := (2970965583562267 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1586
  oldLo := (7425000000000001 / 25000000000000000 : ℚ)
  oldHi := (7437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_746]
}

noncomputable def cell_12081 : Cell := { cellDefaults with
  domain := ⟨(273 / 400 : ℚ), (54610000000000001 / 80000000000000000 : ℚ)⟩
  r := (25767896105407 / 50000000000000 : ℚ)
  w := (13578280274561 / 10000000000000 : ℚ)
  center := (109210000000000001 / 160000000000000000 : ℚ)
  supportValue := (2972195829442923 / 10000000000000000 : ℚ)
  supportSlope := (-5007536813241341 / 5000000000000000 : ℚ)
  oldCenter := (2972195829442923 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1587
  oldLo := (7425000000000001 / 25000000000000000 : ℚ)
  oldHi := (7437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_746]
}

noncomputable def cell_12082 : Cell := { cellDefaults with
  domain := ⟨(54610000000000001 / 80000000000000000 : ℚ), (27310000000000001 / 40000000000000000 : ℚ)⟩
  r := (25767896105407 / 50000000000000 : ℚ)
  w := (13578280274561 / 10000000000000 : ℚ)
  center := (109230000000000003 / 160000000000000000 : ℚ)
  supportValue := (3713680810031 / 12500000000000 : ℚ)
  supportSlope := (-5001917560822411 / 5000000000000000 : ℚ)
  oldCenter := (3713680810031 / 12500000000000 : ℚ)
  newCoefficients := coefficients_1587
  oldLo := (7425000000000001 / 25000000000000000 : ℚ)
  oldHi := (7437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_746]
}

noncomputable def cell_12083 : Cell := { cellDefaults with
  domain := ⟨(27310000000000001 / 40000000000000000 : ℚ), (54630000000000003 / 80000000000000000 : ℚ)⟩
  r := (25767896105407 / 50000000000000 : ℚ)
  w := (13578280274561 / 10000000000000 : ℚ)
  center := (21850000000000001 / 32000000000000000 : ℚ)
  supportValue := (29696964008230553 / 100000000000000000 : ℚ)
  supportSlope := (-2501476457123813 / 2500000000000000 : ℚ)
  oldCenter := (29696964008230553 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1587
  oldLo := (7412500000000001 / 25000000000000000 : ℚ)
  oldHi := (7437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_745, piece_746]
}

noncomputable def cell_12084 : Cell := { cellDefaults with
  domain := ⟨(54630000000000003 / 80000000000000000 : ℚ), (13660000000000001 / 20000000000000000 : ℚ)⟩
  r := (25767896105407 / 50000000000000 : ℚ)
  w := (13578280274561 / 10000000000000 : ℚ)
  center := (109270000000000007 / 160000000000000000 : ℚ)
  supportValue := (7421109302408331 / 25000000000000000 : ℚ)
  supportSlope := (-312473628299139 / 312500000000000 : ℚ)
  oldCenter := (7421109302408331 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1587
  oldLo := (7412500000000001 / 25000000000000000 : ℚ)
  oldHi := (7425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_745]
}

noncomputable def cell_12085 : Cell := { cellDefaults with
  domain := ⟨(13660000000000001 / 20000000000000000 : ℚ), (54650000000000003 / 80000000000000000 : ℚ)⟩
  r := (51513009188509 / 100000000000000 : ℚ)
  w := (3394161161323 / 2500000000000 : ℚ)
  center := (109290000000000007 / 160000000000000000 : ℚ)
  supportValue := (2969676068701979 / 10000000000000000 : ℚ)
  supportSlope := (-5000855374155899 / 5000000000000000 : ℚ)
  oldCenter := (2969676068701979 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1588
  oldLo := (7412500000000001 / 25000000000000000 : ℚ)
  oldHi := (7437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_745, piece_746]
}

noncomputable def cell_12086 : Cell := { cellDefaults with
  domain := ⟨(54650000000000003 / 80000000000000000 : ℚ), (27330000000000001 / 40000000000000000 : ℚ)⟩
  r := (51513009188509 / 100000000000000 : ℚ)
  w := (3394161161323 / 2500000000000 : ℚ)
  center := (21862000000000001 / 32000000000000000 : ℚ)
  supportValue := (1484211974713589 / 5000000000000000 : ℚ)
  supportSlope := (-4997338420458741 / 5000000000000000 : ℚ)
  oldCenter := (1484211974713589 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1588
  oldLo := (7412500000000001 / 25000000000000000 : ℚ)
  oldHi := (7425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_745]
}

noncomputable def cell_12087 : Cell := { cellDefaults with
  domain := ⟨(27330000000000001 / 40000000000000000 : ℚ), (54670000000000001 / 80000000000000000 : ℚ)⟩
  r := (51513009188509 / 100000000000000 : ℚ)
  w := (3394161161323 / 2500000000000 : ℚ)
  center := (109330000000000003 / 160000000000000000 : ℚ)
  supportValue := (2967175318450873 / 10000000000000000 : ℚ)
  supportSlope := (-2495856226550047 / 2500000000000000 : ℚ)
  oldCenter := (2967175318450873 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1588
  oldLo := (7412500000000001 / 25000000000000000 : ℚ)
  oldHi := (7425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_745]
}

noncomputable def cell_12088 : Cell := { cellDefaults with
  domain := ⟨(54670000000000001 / 80000000000000000 : ℚ), (1367 / 2000 : ℚ)⟩
  r := (51513009188509 / 100000000000000 : ℚ)
  w := (3394161161323 / 2500000000000 : ℚ)
  center := (109350000000000001 / 160000000000000000 : ℚ)
  supportValue := (296592809094203 / 1000000000000000 : ℚ)
  supportSlope := (-2493055321677567 / 2500000000000000 : ℚ)
  oldCenter := (296592809094203 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1588
  oldLo := (7412500000000001 / 25000000000000000 : ℚ)
  oldHi := (7425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_745]
}

noncomputable def cell_12089 : Cell := { cellDefaults with
  domain := ⟨(1367 / 2000 : ℚ), (54690000000000001 / 80000000000000000 : ℚ)⟩
  r := (51490256255347 / 100000000000000 : ℚ)
  w := (13575027111479 / 10000000000000 : ℚ)
  center := (109370000000000001 / 160000000000000000 : ℚ)
  supportValue := (3708939612256533 / 12500000000000000 : ℚ)
  supportSlope := (-498946244385351 / 500000000000000 : ℚ)
  oldCenter := (3708939612256533 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1589
  oldLo := (7412500000000001 / 25000000000000000 : ℚ)
  oldHi := (7425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_745]
}

noncomputable def cell_12090 : Cell := { cellDefaults with
  domain := ⟨(54690000000000001 / 80000000000000000 : ℚ), (27350000000000001 / 40000000000000000 : ℚ)⟩
  r := (51490256255347 / 100000000000000 : ℚ)
  w := (13575027111479 / 10000000000000 : ℚ)
  center := (109390000000000003 / 160000000000000000 : ℚ)
  supportValue := (5931810048263727 / 20000000000000000 : ℚ)
  supportSlope := (-249193298077019 / 250000000000000 : ℚ)
  oldCenter := (5931810048263727 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1589
  oldLo := (7412500000000001 / 25000000000000000 : ℚ)
  oldHi := (7425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_745]
}

noncomputable def cell_12091 : Cell := { cellDefaults with
  domain := ⟨(27350000000000001 / 40000000000000000 : ℚ), (54710000000000003 / 80000000000000000 : ℚ)⟩
  r := (51490256255347 / 100000000000000 : ℚ)
  w := (13575027111479 / 10000000000000 : ℚ)
  center := (21882000000000001 / 32000000000000000 : ℚ)
  supportValue := (741165304770253 / 2500000000000000 : ℚ)
  supportSlope := (-9970355123031351 / 10000000000000000 : ℚ)
  oldCenter := (741165304770253 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1589
  oldLo := (7400000000000001 / 25000000000000000 : ℚ)
  oldHi := (7425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_744, piece_745]
}

noncomputable def cell_12092 : Cell := { cellDefaults with
  domain := ⟨(54710000000000003 / 80000000000000000 : ℚ), (13680000000000001 / 20000000000000000 : ℚ)⟩
  r := (51490256255347 / 100000000000000 : ℚ)
  w := (13575027111479 / 10000000000000 : ℚ)
  center := (109430000000000007 / 160000000000000000 : ℚ)
  supportValue := (2963413049058037 / 10000000000000000 : ℚ)
  supportSlope := (-1245391192638987 / 1250000000000000 : ℚ)
  oldCenter := (2963413049058037 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1589
  oldLo := (7400000000000001 / 25000000000000000 : ℚ)
  oldHi := (7412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_744]
}

noncomputable def cell_12093 : Cell := { cellDefaults with
  domain := ⟨(13680000000000001 / 20000000000000000 : ℚ), (54730000000000003 / 80000000000000000 : ℚ)⟩
  r := (12866880887641 / 25000000000000 : ℚ)
  w := (13573408400457 / 10000000000000 : ℚ)
  center := (109450000000000007 / 160000000000000000 : ℚ)
  supportValue := (1482319366228117 / 5000000000000000 : ℚ)
  supportSlope := (-9966195935692143 / 10000000000000000 : ℚ)
  oldCenter := (1482319366228117 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1590
  oldLo := (7400000000000001 / 25000000000000000 : ℚ)
  oldHi := (7425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_744, piece_745]
}

noncomputable def cell_12094 : Cell := { cellDefaults with
  domain := ⟨(54730000000000003 / 80000000000000000 : ℚ), (27370000000000001 / 40000000000000000 : ℚ)⟩
  r := (12866880887641 / 25000000000000 : ℚ)
  w := (13573408400457 / 10000000000000 : ℚ)
  center := (21894000000000001 / 32000000000000000 : ℚ)
  supportValue := (14816955612448657 / 50000000000000000 : ℚ)
  supportSlope := (-9958654519951367 / 10000000000000000 : ℚ)
  oldCenter := (14816955612448657 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1590
  oldLo := (7400000000000001 / 25000000000000000 : ℚ)
  oldHi := (7412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_744]
}

noncomputable def cell_12095 : Cell := { cellDefaults with
  domain := ⟨(27370000000000001 / 40000000000000000 : ℚ), (54750000000000001 / 80000000000000000 : ℚ)⟩
  r := (12866880887641 / 25000000000000 : ℚ)
  w := (13573408400457 / 10000000000000 : ℚ)
  center := (109490000000000003 / 160000000000000000 : ℚ)
  supportValue := (29621469913201903 / 100000000000000000 : ℚ)
  supportSlope := (-9947450292894117 / 10000000000000000 : ℚ)
  oldCenter := (29621469913201903 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1590
  oldLo := (7400000000000001 / 25000000000000000 : ℚ)
  oldHi := (7412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_744]
}

noncomputable def cell_12096 : Cell := { cellDefaults with
  domain := ⟨(54750000000000001 / 80000000000000000 : ℚ), (1369 / 2000 : ℚ)⟩
  r := (12866880887641 / 25000000000000 : ℚ)
  w := (13573408400457 / 10000000000000 : ℚ)
  center := (109510000000000001 / 160000000000000000 : ℚ)
  supportValue := (370113032208317 / 1250000000000000 : ℚ)
  supportSlope := (-9936294191180577 / 10000000000000000 : ℚ)
  oldCenter := (370113032208317 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1590
  oldLo := (7400000000000001 / 25000000000000000 : ℚ)
  oldHi := (7412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_744]
}

noncomputable def cell_12097 : Cell := { cellDefaults with
  domain := ⟨(1369 / 2000 : ℚ), (13692486033519553 / 20000000000000000 : ℚ)⟩
  r := (3215301437531 / 6250000000000 : ℚ)
  w := (13571806293029 / 10000000000000 : ℚ)
  center := (27382486033519553 / 40000000000000000 : ℚ)
  supportValue := (14810623790144997 / 50000000000000000 : ℚ)
  supportSlope := (-99429866314021 / 100000000000000 : ℚ)
  oldCenter := (14810623790144997 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1591
  oldLo := (7400000000000001 / 25000000000000000 : ℚ)
  oldHi := (7412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_744]
}

noncomputable def cell_12098 : Cell := { cellDefaults with
  domain := ⟨(13692486033519553 / 20000000000000000 : ℚ), (6847486033519553 / 10000000000000000 : ℚ)⟩
  r := (3215301437531 / 6250000000000 : ℚ)
  w := (13571806293029 / 10000000000000 : ℚ)
  center := (27387458100558659 / 40000000000000000 : ℚ)
  supportValue := (2960889517339413 / 10000000000000000 : ℚ)
  supportSlope := (-4965951575569419 / 5000000000000000 : ℚ)
  oldCenter := (2960889517339413 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1591
  oldLo := (7400000000000001 / 25000000000000000 : ℚ)
  oldHi := (7412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_744]
}

noncomputable def cell_12099 : Cell := { cellDefaults with
  domain := ⟨(6847486033519553 / 10000000000000000 : ℚ), (27394972067039107 / 40000000000000000 : ℚ)⟩
  r := (3215301437531 / 6250000000000 : ℚ)
  w := (13571806293029 / 10000000000000 : ℚ)
  center := (54784916201117319 / 80000000000000000 : ℚ)
  supportValue := (5919300326267981 / 20000000000000000 : ℚ)
  supportSlope := (-9934705587763863 / 10000000000000000 : ℚ)
  oldCenter := (5919300326267981 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1592
  oldLo := (7387500000000001 / 25000000000000000 : ℚ)
  oldHi := (7412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_743, piece_744]
}

theorem check_12050 : cell_12050.check = true := by
  decide +kernel

theorem check_12051 : cell_12051.check = true := by
  decide +kernel

theorem check_12052 : cell_12052.check = true := by
  decide +kernel

theorem check_12053 : cell_12053.check = true := by
  decide +kernel

theorem check_12054 : cell_12054.check = true := by
  decide +kernel

theorem check_12055 : cell_12055.check = true := by
  decide +kernel

theorem check_12056 : cell_12056.check = true := by
  decide +kernel

theorem check_12057 : cell_12057.check = true := by
  decide +kernel

theorem check_12058 : cell_12058.check = true := by
  decide +kernel

theorem check_12059 : cell_12059.check = true := by
  decide +kernel

theorem check_12060 : cell_12060.check = true := by
  decide +kernel

theorem check_12061 : cell_12061.check = true := by
  decide +kernel

theorem check_12062 : cell_12062.check = true := by
  decide +kernel

theorem check_12063 : cell_12063.check = true := by
  decide +kernel

theorem check_12064 : cell_12064.check = true := by
  decide +kernel

theorem check_12065 : cell_12065.check = true := by
  decide +kernel

theorem check_12066 : cell_12066.check = true := by
  decide +kernel

theorem check_12067 : cell_12067.check = true := by
  decide +kernel

theorem check_12068 : cell_12068.check = true := by
  decide +kernel

theorem check_12069 : cell_12069.check = true := by
  decide +kernel

theorem check_12070 : cell_12070.check = true := by
  decide +kernel

theorem check_12071 : cell_12071.check = true := by
  decide +kernel

theorem check_12072 : cell_12072.check = true := by
  decide +kernel

theorem check_12073 : cell_12073.check = true := by
  decide +kernel

theorem check_12074 : cell_12074.check = true := by
  decide +kernel

theorem check_12075 : cell_12075.check = true := by
  decide +kernel

theorem check_12076 : cell_12076.check = true := by
  decide +kernel

theorem check_12077 : cell_12077.check = true := by
  decide +kernel

theorem check_12078 : cell_12078.check = true := by
  decide +kernel

theorem check_12079 : cell_12079.check = true := by
  decide +kernel

theorem check_12080 : cell_12080.check = true := by
  decide +kernel

theorem check_12081 : cell_12081.check = true := by
  decide +kernel

theorem check_12082 : cell_12082.check = true := by
  decide +kernel

theorem check_12083 : cell_12083.check = true := by
  decide +kernel

theorem check_12084 : cell_12084.check = true := by
  decide +kernel

theorem check_12085 : cell_12085.check = true := by
  decide +kernel

theorem check_12086 : cell_12086.check = true := by
  decide +kernel

theorem check_12087 : cell_12087.check = true := by
  decide +kernel

theorem check_12088 : cell_12088.check = true := by
  decide +kernel

theorem check_12089 : cell_12089.check = true := by
  decide +kernel

theorem check_12090 : cell_12090.check = true := by
  decide +kernel

theorem check_12091 : cell_12091.check = true := by
  decide +kernel

theorem check_12092 : cell_12092.check = true := by
  decide +kernel

theorem check_12093 : cell_12093.check = true := by
  decide +kernel

theorem check_12094 : cell_12094.check = true := by
  decide +kernel

theorem check_12095 : cell_12095.check = true := by
  decide +kernel

theorem check_12096 : cell_12096.check = true := by
  decide +kernel

theorem check_12097 : cell_12097.check = true := by
  decide +kernel

theorem check_12098 : cell_12098.check = true := by
  decide +kernel

theorem check_12099 : cell_12099.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12050, cell_12051, cell_12052, cell_12053, cell_12054, cell_12055, cell_12056, cell_12057, cell_12058, cell_12059, cell_12060, cell_12061, cell_12062, cell_12063, cell_12064, cell_12065, cell_12066, cell_12067, cell_12068, cell_12069, cell_12070, cell_12071, cell_12072, cell_12073, cell_12074, cell_12075, cell_12076, cell_12077, cell_12078, cell_12079, cell_12080, cell_12081, cell_12082, cell_12083, cell_12084, cell_12085, cell_12086, cell_12087, cell_12088, cell_12089, cell_12090, cell_12091, cell_12092, cell_12093, cell_12094, cell_12095, cell_12096, cell_12097, cell_12098, cell_12099]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12050, check_12051, check_12052, check_12053, check_12054, check_12055, check_12056, check_12057, check_12058, check_12059, check_12060, check_12061, check_12062, check_12063, check_12064, check_12065, check_12066, check_12067, check_12068, check_12069, check_12070, check_12071, check_12072, check_12073, check_12074, check_12075, check_12076, check_12077, check_12078, check_12079, check_12080, check_12081, check_12082, check_12083, check_12084, check_12085, check_12086, check_12087, check_12088, check_12089, check_12090, check_12091, check_12092, check_12093, check_12094, check_12095, check_12096, check_12097, check_12098, check_12099, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0241

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0241
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0241
open AnalyticBounds.ExpressionCertificate

theorem linked_12050 : Linked cell_12050 pieces := by
  link_source cell_12050 with piece_1578 using piece_1578_mem, piece_751_mem

theorem linked_12051 : Linked cell_12051 pieces := by
  link_source cell_12051 with piece_1578 using piece_1578_mem, ⟨piece_750_mem, piece_751_mem⟩

theorem linked_12052 : Linked cell_12052 pieces := by
  link_source cell_12052 with piece_1578 using piece_1578_mem, piece_750_mem

theorem linked_12053 : Linked cell_12053 pieces := by
  link_source cell_12053 with piece_1579 using piece_1579_mem, ⟨piece_750_mem, piece_751_mem⟩

theorem linked_12054 : Linked cell_12054 pieces := by
  link_source cell_12054 with piece_1579 using piece_1579_mem, piece_750_mem

theorem linked_12055 : Linked cell_12055 pieces := by
  link_source cell_12055 with piece_1580 using piece_1580_mem, piece_750_mem

theorem linked_12056 : Linked cell_12056 pieces := by
  link_source cell_12056 with piece_1580 using piece_1580_mem, piece_750_mem

theorem linked_12057 : Linked cell_12057 pieces := by
  link_source cell_12057 with piece_1581 using piece_1581_mem, piece_750_mem

theorem linked_12058 : Linked cell_12058 pieces := by
  link_source cell_12058 with piece_1581 using piece_1581_mem, piece_750_mem

theorem linked_12059 : Linked cell_12059 pieces := by
  link_source cell_12059 with piece_1581 using piece_1581_mem, ⟨piece_749_mem, piece_750_mem⟩

theorem linked_12060 : Linked cell_12060 pieces := by
  link_source cell_12060 with piece_1581 using piece_1581_mem, piece_749_mem

theorem linked_12061 : Linked cell_12061 pieces := by
  link_source cell_12061 with piece_1582 using piece_1582_mem, ⟨piece_749_mem, piece_750_mem⟩

theorem linked_12062 : Linked cell_12062 pieces := by
  link_source cell_12062 with piece_1582 using piece_1582_mem, piece_749_mem

theorem linked_12063 : Linked cell_12063 pieces := by
  link_source cell_12063 with piece_1582 using piece_1582_mem, piece_749_mem

theorem linked_12064 : Linked cell_12064 pieces := by
  link_source cell_12064 with piece_1582 using piece_1582_mem, piece_749_mem

theorem linked_12065 : Linked cell_12065 pieces := by
  link_source cell_12065 with piece_1583 using piece_1583_mem, piece_749_mem

theorem linked_12066 : Linked cell_12066 pieces := by
  link_source cell_12066 with piece_1583 using piece_1583_mem, piece_749_mem

theorem linked_12067 : Linked cell_12067 pieces := by
  link_source cell_12067 with piece_1583 using piece_1583_mem, ⟨piece_748_mem, piece_749_mem⟩

theorem linked_12068 : Linked cell_12068 pieces := by
  link_source cell_12068 with piece_1583 using piece_1583_mem, piece_748_mem

theorem linked_12069 : Linked cell_12069 pieces := by
  link_source cell_12069 with piece_1584 using piece_1584_mem, ⟨piece_748_mem, piece_749_mem⟩

theorem linked_12070 : Linked cell_12070 pieces := by
  link_source cell_12070 with piece_1584 using piece_1584_mem, piece_748_mem

theorem linked_12071 : Linked cell_12071 pieces := by
  link_source cell_12071 with piece_1584 using piece_1584_mem, piece_748_mem

theorem linked_12072 : Linked cell_12072 pieces := by
  link_source cell_12072 with piece_1584 using piece_1584_mem, ⟨piece_747_mem, piece_748_mem⟩

theorem linked_12073 : Linked cell_12073 pieces := by
  link_source cell_12073 with piece_1585 using piece_1585_mem, piece_748_mem

theorem linked_12074 : Linked cell_12074 pieces := by
  link_source cell_12074 with piece_1585 using piece_1585_mem, ⟨piece_747_mem, piece_748_mem⟩

theorem linked_12075 : Linked cell_12075 pieces := by
  link_source cell_12075 with piece_1585 using piece_1585_mem, ⟨piece_746_mem, piece_747_mem⟩

theorem linked_12076 : Linked cell_12076 pieces := by
  link_source cell_12076 with piece_1585 using piece_1585_mem, piece_746_mem

theorem linked_12077 : Linked cell_12077 pieces := by
  link_source cell_12077 with piece_1586 using piece_1586_mem, ⟨piece_746_mem, piece_747_mem⟩

theorem linked_12078 : Linked cell_12078 pieces := by
  link_source cell_12078 with piece_1586 using piece_1586_mem, piece_746_mem

theorem linked_12079 : Linked cell_12079 pieces := by
  link_source cell_12079 with piece_1586 using piece_1586_mem, piece_746_mem

theorem linked_12080 : Linked cell_12080 pieces := by
  link_source cell_12080 with piece_1586 using piece_1586_mem, piece_746_mem

theorem linked_12081 : Linked cell_12081 pieces := by
  link_source cell_12081 with piece_1587 using piece_1587_mem, piece_746_mem

theorem linked_12082 : Linked cell_12082 pieces := by
  link_source cell_12082 with piece_1587 using piece_1587_mem, piece_746_mem

theorem linked_12083 : Linked cell_12083 pieces := by
  link_source cell_12083 with piece_1587 using piece_1587_mem, ⟨piece_745_mem, piece_746_mem⟩

theorem linked_12084 : Linked cell_12084 pieces := by
  link_source cell_12084 with piece_1587 using piece_1587_mem, piece_745_mem

theorem linked_12085 : Linked cell_12085 pieces := by
  link_source cell_12085 with piece_1588 using piece_1588_mem, ⟨piece_745_mem, piece_746_mem⟩

theorem linked_12086 : Linked cell_12086 pieces := by
  link_source cell_12086 with piece_1588 using piece_1588_mem, piece_745_mem

theorem linked_12087 : Linked cell_12087 pieces := by
  link_source cell_12087 with piece_1588 using piece_1588_mem, piece_745_mem

theorem linked_12088 : Linked cell_12088 pieces := by
  link_source cell_12088 with piece_1588 using piece_1588_mem, piece_745_mem

theorem linked_12089 : Linked cell_12089 pieces := by
  link_source cell_12089 with piece_1589 using piece_1589_mem, piece_745_mem

theorem linked_12090 : Linked cell_12090 pieces := by
  link_source cell_12090 with piece_1589 using piece_1589_mem, piece_745_mem

theorem linked_12091 : Linked cell_12091 pieces := by
  link_source cell_12091 with piece_1589 using piece_1589_mem, ⟨piece_744_mem, piece_745_mem⟩

theorem linked_12092 : Linked cell_12092 pieces := by
  link_source cell_12092 with piece_1589 using piece_1589_mem, piece_744_mem

theorem linked_12093 : Linked cell_12093 pieces := by
  link_source cell_12093 with piece_1590 using piece_1590_mem, ⟨piece_744_mem, piece_745_mem⟩

theorem linked_12094 : Linked cell_12094 pieces := by
  link_source cell_12094 with piece_1590 using piece_1590_mem, piece_744_mem

theorem linked_12095 : Linked cell_12095 pieces := by
  link_source cell_12095 with piece_1590 using piece_1590_mem, piece_744_mem

theorem linked_12096 : Linked cell_12096 pieces := by
  link_source cell_12096 with piece_1590 using piece_1590_mem, piece_744_mem

theorem linked_12097 : Linked cell_12097 pieces := by
  link_source cell_12097 with piece_1591 using piece_1591_mem, piece_744_mem

theorem linked_12098 : Linked cell_12098 pieces := by
  link_source cell_12098 with piece_1591 using piece_1591_mem, piece_744_mem

theorem linked_12099 : Linked cell_12099 pieces := by
  link_source cell_12099 with piece_1592 using piece_1592_mem, ⟨piece_743_mem, piece_744_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0241.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0241.cells,List.forall_mem_cons]
  exact ⟨linked_12050, linked_12051, linked_12052, linked_12053, linked_12054, linked_12055, linked_12056, linked_12057, linked_12058, linked_12059, linked_12060, linked_12061, linked_12062, linked_12063, linked_12064, linked_12065, linked_12066, linked_12067, linked_12068, linked_12069, linked_12070, linked_12071, linked_12072, linked_12073, linked_12074, linked_12075, linked_12076, linked_12077, linked_12078, linked_12079, linked_12080, linked_12081, linked_12082, linked_12083, linked_12084, linked_12085, linked_12086, linked_12087, linked_12088, linked_12089, linked_12090, linked_12091, linked_12092, linked_12093, linked_12094, linked_12095, linked_12096, linked_12097, linked_12098, linked_12099, by simp⟩

theorem covered : covers (135725000000000001 / 200000000000000000 : ℚ) (27394972067039107 / 40000000000000000 : ℚ)
    (SourceCertificates.Chunk0241.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0241
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0242
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(27394972067039107 / 40000000000000000 : ℚ), (13700000000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (6427767606177 / 12500000000000 : ℚ)
  w := (13570202929871 / 10000000000000 : ℚ)
  center := (54794972067039109 / 80000000000000000 : ℚ)
  supportValue := (5916799072663097 / 20000000000000000 : ℚ)
  supportSlope := (-310228562476953 / 312500000000000 : ℚ)
  oldCenter := (5916799072663097 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1593
  oldLo := (7375000000000001 / 25000000000000000 : ℚ)
  oldHi := (7400000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_743]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12100 : Cell := { cellDefaults with
  r := (3215301437531 / 6250000000000 : ℚ)
  w := (13571806293029 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1592
  oldLo := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_743]
}

noncomputable def cell_12101 : Cell := { cellDefaults with
  domain := ⟨(13700000000000001 / 20000000000000000 : ℚ), (54810000000000003 / 80000000000000000 : ℚ)⟩
  center := (109610000000000007 / 160000000000000000 : ℚ)
  supportValue := (115609975273211 / 390625000000000 : ℚ)
  supportSlope := (-9930664472365007 / 10000000000000000 : ℚ)
  oldCenter := (115609975273211 / 390625000000000 : ℚ)
  oldLo := (7387500000000001 / 25000000000000000 : ℚ)
  oldHi := (7412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_743, piece_744]
}

noncomputable def cell_12102 : Cell := { cellDefaults with
  domain := ⟨(54810000000000003 / 80000000000000000 : ℚ), (27410000000000001 / 40000000000000000 : ℚ)⟩
  center := (21926000000000001 / 32000000000000000 : ℚ)
  supportValue := (2958372243718339 / 10000000000000000 : ℚ)
  supportSlope := (-77521984495143 / 78125000000000 : ℚ)
  oldCenter := (2958372243718339 / 10000000000000000 : ℚ)
  oldLo := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_743]
}

noncomputable def cell_12103 : Cell := { cellDefaults with
  domain := ⟨(27410000000000001 / 40000000000000000 : ℚ), (54830000000000001 / 80000000000000000 : ℚ)⟩
  center := (109650000000000003 / 160000000000000000 : ℚ)
  supportValue := (2957132589509863 / 10000000000000000 : ℚ)
  supportSlope := (-9911659389941643 / 10000000000000000 : ℚ)
  oldCenter := (2957132589509863 / 10000000000000000 : ℚ)
  oldLo := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_743]
}

noncomputable def cell_12104 : Cell := { cellDefaults with
  domain := ⟨(54830000000000001 / 80000000000000000 : ℚ), (1371 / 2000 : ℚ)⟩
  center := (109670000000000001 / 160000000000000000 : ℚ)
  supportValue := (2955894326630047 / 10000000000000000 : ℚ)
  supportSlope := (-2475138170641403 / 2500000000000000 : ℚ)
  oldCenter := (2955894326630047 / 10000000000000000 : ℚ)
  oldLo := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_743]
}

noncomputable def cell_12105 : Cell := { cellDefaults with
  domain := ⟨(1371 / 2000 : ℚ), (54850000000000001 / 80000000000000000 : ℚ)⟩
  r := (25699745258213 / 50000000000000 : ℚ)
  w := (13568618507943 / 10000000000000 : ℚ)
  center := (109690000000000001 / 160000000000000000 : ℚ)
  supportValue := (14785522960153427 / 50000000000000000 : ℚ)
  supportSlope := (-1981433543805779 / 2000000000000000 : ℚ)
  oldCenter := (14785522960153427 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1594
  oldLo := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_743]
}

noncomputable def cell_12106 : Cell := { cellDefaults with
  domain := ⟨(54850000000000001 / 80000000000000000 : ℚ), (27430000000000001 / 40000000000000000 : ℚ)⟩
  r := (25699745258213 / 50000000000000 : ℚ)
  w := (13568618507943 / 10000000000000 : ℚ)
  center := (109710000000000003 / 160000000000000000 : ℚ)
  supportValue := (1477933444971653 / 5000000000000000 : ℚ)
  supportSlope := (-4948035829994207 / 5000000000000000 : ℚ)
  oldCenter := (1477933444971653 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1594
  oldLo := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_743]
}

noncomputable def cell_12107 : Cell := { cellDefaults with
  domain := ⟨(27430000000000001 / 40000000000000000 : ℚ), (54870000000000003 / 80000000000000000 : ℚ)⟩
  r := (25699745258213 / 50000000000000 : ℚ)
  w := (13568618507943 / 10000000000000 : ℚ)
  center := (21946000000000001 / 32000000000000000 : ℚ)
  supportValue := (147731598707693 / 500000000000000 : ℚ)
  supportSlope := (-9899208849056937 / 10000000000000000 : ℚ)
  oldCenter := (147731598707693 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1594
  oldPieces := [piece_742, piece_743]
}

noncomputable def cell_12108 : Cell := { cellDefaults with
  domain := ⟨(54870000000000003 / 80000000000000000 : ℚ), (13720000000000001 / 20000000000000000 : ℚ)⟩
  r := (25699745258213 / 50000000000000 : ℚ)
  w := (13568618507943 / 10000000000000 : ℚ)
  center := (109750000000000007 / 160000000000000000 : ℚ)
  supportValue := (14766963782514117 / 50000000000000000 : ℚ)
  supportSlope := (-9891617449503519 / 10000000000000000 : ℚ)
  oldCenter := (14766963782514117 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1594
  oldHi := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_742]
}

noncomputable def cell_12109 : Cell := { cellDefaults with
  domain := ⟨(13720000000000001 / 20000000000000000 : ℚ), (54890000000000003 / 80000000000000000 : ℚ)⟩
  r := (51376859735659 / 100000000000000 : ℚ)
  w := (13567030450121 / 10000000000000 : ℚ)
  center := (109770000000000007 / 160000000000000000 : ℚ)
  supportValue := (147730280446871 / 500000000000000 : ℚ)
  supportSlope := (-9895118880819277 / 10000000000000000 : ℚ)
  oldCenter := (147730280446871 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1595
  oldPieces := [piece_742, piece_743]
}

noncomputable def cell_12110 : Cell := { cellDefaults with
  domain := ⟨(54890000000000003 / 80000000000000000 : ℚ), (27450000000000001 / 40000000000000000 : ℚ)⟩
  r := (51376859735659 / 100000000000000 : ℚ)
  w := (13567030450121 / 10000000000000 : ℚ)
  center := (21958000000000001 / 32000000000000000 : ℚ)
  supportValue := (590673389969221 / 2000000000000000 : ℚ)
  supportSlope := (-494357721688537 / 500000000000000 : ℚ)
  oldCenter := (590673389969221 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1595
  oldHi := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_742]
}

noncomputable def cell_12111 : Cell := { cellDefaults with
  domain := ⟨(27450000000000001 / 40000000000000000 : ℚ), (54910000000000001 / 80000000000000000 : ℚ)⟩
  r := (51376859735659 / 100000000000000 : ℚ)
  w := (13567030450121 / 10000000000000 : ℚ)
  center := (109810000000000003 / 160000000000000000 : ℚ)
  supportValue := (2952131749865043 / 10000000000000000 : ℚ)
  supportSlope := (-9876051298070997 / 10000000000000000 : ℚ)
  oldCenter := (2952131749865043 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1595
  oldHi := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_742]
}

noncomputable def cell_12112 : Cell := { cellDefaults with
  domain := ⟨(54910000000000001 / 80000000000000000 : ℚ), (1373 / 2000 : ℚ)⟩
  r := (51376859735659 / 100000000000000 : ℚ)
  w := (13567030450121 / 10000000000000 : ℚ)
  center := (109830000000000001 / 160000000000000000 : ℚ)
  supportValue := (29508979347904507 / 100000000000000000 : ℚ)
  supportSlope := (-77070280127483 / 78125000000000 : ℚ)
  oldCenter := (29508979347904507 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1595
  oldHi := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_742]
}

noncomputable def cell_12113 : Cell := { cellDefaults with
  domain := ⟨(1373 / 2000 : ℚ), (137325000000000003 / 200000000000000000 : ℚ)⟩
  r := (25677130199729 / 50000000000000 : ℚ)
  w := (3391365604463 / 2500000000000 : ℚ)
  center := (274625000000000003 / 400000000000000000 : ℚ)
  supportValue := (1476050806661801 / 5000000000000000 : ℚ)
  supportSlope := (-4935782027314891 / 5000000000000000 : ℚ)
  oldCenter := (1476050806661801 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1596
  oldHi := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_742]
}

noncomputable def cell_12114 : Cell := { cellDefaults with
  domain := ⟨(137325000000000003 / 200000000000000000 : ℚ), (68675000000000003 / 100000000000000000 : ℚ)⟩
  r := (25677130199729 / 50000000000000 : ℚ)
  w := (3391365604463 / 2500000000000 : ℚ)
  center := (274675000000000009 / 400000000000000000 : ℚ)
  supportValue := (1475434179243409 / 5000000000000000 : ℚ)
  supportSlope := (-9860519280352403 / 10000000000000000 : ℚ)
  oldCenter := (1475434179243409 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1596
  oldHi := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_742]
}

noncomputable def cell_12115 : Cell := { cellDefaults with
  domain := ⟨(68675000000000003 / 100000000000000000 : ℚ), (137375000000000009 / 200000000000000000 : ℚ)⟩
  r := (25677130199729 / 50000000000000 : ℚ)
  w := (3391365604463 / 2500000000000 : ℚ)
  center := (54945000000000003 / 80000000000000000 : ℚ)
  supportValue := (3687047361966083 / 12500000000000000 : ℚ)
  supportSlope := (-4931807586689393 / 5000000000000000 : ℚ)
  oldCenter := (3687047361966083 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1596
  oldLo := (7362500000000001 / 25000000000000000 : ℚ)
  oldHi := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_741, piece_742]
}

noncomputable def cell_12116 : Cell := { cellDefaults with
  domain := ⟨(137375000000000009 / 200000000000000000 : ℚ), (34350000000000003 / 50000000000000000 : ℚ)⟩
  r := (25677130199729 / 50000000000000 : ℚ)
  w := (3391365604463 / 2500000000000 : ℚ)
  center := (274775000000000021 / 400000000000000000 : ℚ)
  supportValue := (589680622774641 / 2000000000000000 : ℚ)
  supportSlope := (-1971227310729281 / 2000000000000000 : ℚ)
  oldCenter := (589680622774641 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1596
  oldLo := (7362500000000001 / 25000000000000000 : ℚ)
  oldHi := (7375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_741]
}

noncomputable def cell_12117 : Cell := { cellDefaults with
  domain := ⟨(34350000000000003 / 50000000000000000 : ℚ), (137425000000000009 / 200000000000000000 : ℚ)⟩
  r := (51331679603023 / 100000000000000 : ℚ)
  w := (2712778297391 / 2000000000000 : ℚ)
  center := (274825000000000021 / 400000000000000000 : ℚ)
  supportValue := (3687011668628707 / 12500000000000000 : ℚ)
  supportSlope := (-77027821993809 / 78125000000000 : ℚ)
  oldCenter := (3687011668628707 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1597
  oldLo := (7362500000000001 / 25000000000000000 : ℚ)
  oldHi := (7387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_741, piece_742]
}

noncomputable def cell_12118 : Cell := { cellDefaults with
  domain := ⟨(137425000000000009 / 200000000000000000 : ℚ), (68725000000000003 / 100000000000000000 : ℚ)⟩
  r := (51331679603023 / 100000000000000 : ℚ)
  w := (2712778297391 / 2000000000000 : ℚ)
  center := (54975000000000003 / 80000000000000000 : ℚ)
  supportValue := (737093779322171 / 2500000000000000 : ℚ)
  supportSlope := (-9851677354576553 / 10000000000000000 : ℚ)
  oldCenter := (737093779322171 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1597
  oldLo := (7362500000000001 / 25000000000000000 : ℚ)
  oldHi := (7375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_741]
}

noncomputable def cell_12119 : Cell := { cellDefaults with
  domain := ⟨(68725000000000003 / 100000000000000000 : ℚ), (137475000000000003 / 200000000000000000 : ℚ)⟩
  r := (51331679603023 / 100000000000000 : ℚ)
  w := (2712778297391 / 2000000000000 : ℚ)
  center := (274925000000000009 / 400000000000000000 : ℚ)
  supportValue := (5894288697216007 / 20000000000000000 : ℚ)
  supportSlope := (-9840627532115079 / 10000000000000000 : ℚ)
  oldCenter := (5894288697216007 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1597
  oldLo := (7362500000000001 / 25000000000000000 : ℚ)
  oldHi := (7375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_741]
}

noncomputable def cell_12120 : Cell := { cellDefaults with
  domain := ⟨(137475000000000003 / 200000000000000000 : ℚ), (11 / 16 : ℚ)⟩
  r := (51331679603023 / 100000000000000 : ℚ)
  w := (2712778297391 / 2000000000000 : ℚ)
  center := (274975000000000003 / 400000000000000000 : ℚ)
  supportValue := (2945914958184687 / 10000000000000000 : ℚ)
  supportSlope := (-2457406290812553 / 2500000000000000 : ℚ)
  oldCenter := (2945914958184687 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1597
  oldLo := (7362500000000001 / 25000000000000000 : ℚ)
  oldHi := (7375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_741]
}

noncomputable def cell_12121 : Cell := { cellDefaults with
  domain := ⟨(11 / 16 : ℚ), (137525000000000003 / 200000000000000000 : ℚ)⟩
  r := (25654565724721 / 50000000000000 : ℚ)
  w := (13562338844327 / 10000000000000 : ℚ)
  center := (275025000000000003 / 400000000000000000 : ℚ)
  supportValue := (2947112227766633 / 10000000000000000 : ℚ)
  supportSlope := (-9836145939096027 / 10000000000000000 : ℚ)
  oldCenter := (2947112227766633 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1598
  oldLo := (7362500000000001 / 25000000000000000 : ℚ)
  oldHi := (7375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_741]
}

noncomputable def cell_12122 : Cell := { cellDefaults with
  domain := ⟨(137525000000000003 / 200000000000000000 : ℚ), (68775000000000003 / 100000000000000000 : ℚ)⟩
  r := (25654565724721 / 50000000000000 : ℚ)
  w := (13562338844327 / 10000000000000 : ℚ)
  center := (275075000000000009 / 400000000000000000 : ℚ)
  supportValue := (5891766793748311 / 20000000000000000 : ℚ)
  supportSlope := (-1965030849671243 / 2000000000000000 : ℚ)
  oldCenter := (5891766793748311 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1598
  oldLo := (7362500000000001 / 25000000000000000 : ℚ)
  oldHi := (7375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_741]
}

noncomputable def cell_12123 : Cell := { cellDefaults with
  domain := ⟨(68775000000000003 / 100000000000000000 : ℚ), (137575000000000009 / 200000000000000000 : ℚ)⟩
  r := (25654565724721 / 50000000000000 : ℚ)
  w := (13562338844327 / 10000000000000 : ℚ)
  center := (55025000000000003 / 80000000000000000 : ℚ)
  supportValue := (14723286880080627 / 50000000000000000 : ℚ)
  supportSlope := (-4914005157851641 / 5000000000000000 : ℚ)
  oldCenter := (14723286880080627 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1598
  oldLo := (7350000000000001 / 25000000000000000 : ℚ)
  oldHi := (7375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_740, piece_741]
}

noncomputable def cell_12124 : Cell := { cellDefaults with
  domain := ⟨(137575000000000009 / 200000000000000000 : ℚ), (34400000000000003 / 50000000000000000 : ℚ)⟩
  r := (25654565724721 / 50000000000000 : ℚ)
  w := (13562338844327 / 10000000000000 : ℚ)
  center := (275175000000000021 / 400000000000000000 : ℚ)
  supportValue := (5886854038364877 / 20000000000000000 : ℚ)
  supportSlope := (-1227605143104679 / 1250000000000000 : ℚ)
  oldCenter := (5886854038364877 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1598
  oldLo := (7350000000000001 / 25000000000000000 : ℚ)
  oldHi := (7362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_740]
}

noncomputable def cell_12125 : Cell := { cellDefaults with
  domain := ⟨(34400000000000003 / 50000000000000000 : ℚ), (137625000000000009 / 200000000000000000 : ℚ)⟩
  r := (51286602014811 / 100000000000000 : ℚ)
  w := (847549041599 / 625000000000 : ℚ)
  center := (275225000000000021 / 400000000000000000 : ℚ)
  supportValue := (368078320008409 / 1250000000000000 : ℚ)
  supportSlope := (-2455998222042083 / 2500000000000000 : ℚ)
  oldCenter := (368078320008409 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1599
  oldLo := (7350000000000001 / 25000000000000000 : ℚ)
  oldHi := (7375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_740, piece_741]
}

noncomputable def cell_12126 : Cell := { cellDefaults with
  domain := ⟨(137625000000000009 / 200000000000000000 : ℚ), (68825000000000003 / 100000000000000000 : ℚ)⟩
  r := (51286602014811 / 100000000000000 : ℚ)
  w := (847549041599 / 625000000000 : ℚ)
  center := (55055000000000003 / 80000000000000000 : ℚ)
  supportValue := (919811487782707 / 3125000000000000 : ℚ)
  supportSlope := (-981638528512303 / 1000000000000000 : ℚ)
  oldCenter := (919811487782707 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1599
  oldLo := (7350000000000001 / 25000000000000000 : ℚ)
  oldHi := (7362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_740]
}

noncomputable def cell_12127 : Cell := { cellDefaults with
  domain := ⟨(68825000000000003 / 100000000000000000 : ℚ), (137675000000000003 / 200000000000000000 : ℚ)⟩
  r := (51286602014811 / 100000000000000 : ℚ)
  w := (847549041599 / 625000000000 : ℚ)
  center := (275325000000000009 / 400000000000000000 : ℚ)
  supportValue := (735542600072079 / 2500000000000000 : ℚ)
  supportSlope := (-1961078105822147 / 2000000000000000 : ℚ)
  oldCenter := (735542600072079 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1599
  oldLo := (7350000000000001 / 25000000000000000 : ℚ)
  oldHi := (7362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_740]
}

noncomputable def cell_12128 : Cell := { cellDefaults with
  domain := ⟨(137675000000000003 / 200000000000000000 : ℚ), (1377 / 2000 : ℚ)⟩
  r := (51286602014811 / 100000000000000 : ℚ)
  w := (847549041599 / 625000000000 : ℚ)
  center := (275375000000000003 / 400000000000000000 : ℚ)
  supportValue := (7352363527655159 / 25000000000000000 : ℚ)
  supportSlope := (-9794442970659853 / 10000000000000000 : ℚ)
  oldCenter := (7352363527655159 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1599
  oldLo := (7350000000000001 / 25000000000000000 : ℚ)
  oldHi := (7362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_740]
}

noncomputable def cell_12129 : Cell := { cellDefaults with
  domain := ⟨(1377 / 2000 : ℚ), (137725000000000003 / 200000000000000000 : ℚ)⟩
  r := (51264103794051 / 100000000000000 : ℚ)
  w := (13559249154527 / 10000000000000 : ℚ)
  center := (275425000000000003 / 400000000000000000 : ℚ)
  supportValue := (5884272176248151 / 20000000000000000 : ℚ)
  supportSlope := (-9800912720575529 / 10000000000000000 : ℚ)
  oldCenter := (5884272176248151 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1600
  oldLo := (7350000000000001 / 25000000000000000 : ℚ)
  oldHi := (7362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_740]
}

noncomputable def cell_12130 : Cell := { cellDefaults with
  domain := ⟨(137725000000000003 / 200000000000000000 : ℚ), (68875000000000003 / 100000000000000000 : ℚ)⟩
  r := (51264103794051 / 100000000000000 : ℚ)
  w := (13559249154527 / 10000000000000 : ℚ)
  center := (275475000000000009 / 400000000000000000 : ℚ)
  supportValue := (1470455828975433 / 5000000000000000 : ℚ)
  supportSlope := (-9789975915869211 / 10000000000000000 : ℚ)
  oldCenter := (1470455828975433 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1600
  oldLo := (7350000000000001 / 25000000000000000 : ℚ)
  oldHi := (7362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_740]
}

noncomputable def cell_12131 : Cell := { cellDefaults with
  domain := ⟨(68875000000000003 / 100000000000000000 : ℚ), (137775000000000009 / 200000000000000000 : ℚ)⟩
  r := (51264103794051 / 100000000000000 : ℚ)
  w := (13559249154527 / 10000000000000 : ℚ)
  center := (55105000000000003 / 80000000000000000 : ℚ)
  supportValue := (2939690085382801 / 10000000000000000 : ℚ)
  supportSlope := (-4896203426535929 / 5000000000000000 : ℚ)
  oldCenter := (2939690085382801 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1600
  oldLo := (7337500000000001 / 25000000000000000 : ℚ)
  oldHi := (7362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_739, piece_740]
}

noncomputable def cell_12132 : Cell := { cellDefaults with
  domain := ⟨(137775000000000009 / 200000000000000000 : ℚ), (34450000000000003 / 50000000000000000 : ℚ)⟩
  r := (51264103794051 / 100000000000000 : ℚ)
  w := (13559249154527 / 10000000000000 : ℚ)
  center := (275575000000000021 / 400000000000000000 : ℚ)
  supportValue := (29384641235247483 / 100000000000000000 : ℚ)
  supportSlope := (-978573182236591 / 1000000000000000 : ℚ)
  oldCenter := (29384641235247483 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1600
  oldLo := (7337500000000001 / 25000000000000000 : ℚ)
  oldHi := (7350000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_739]
}

noncomputable def cell_12133 : Cell := { cellDefaults with
  domain := ⟨(34450000000000003 / 50000000000000000 : ℚ), (137825000000000009 / 200000000000000000 : ℚ)⟩
  r := (51241624512593 / 100000000000000 : ℚ)
  w := (3389427567129 / 2500000000000 : ℚ)
  center := (275625000000000021 / 400000000000000000 : ℚ)
  supportValue := (29396573787545527 / 100000000000000000 : ℚ)
  supportSlope := (-9788423528612819 / 10000000000000000 : ℚ)
  oldCenter := (29396573787545527 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1601
  oldLo := (7337500000000001 / 25000000000000000 : ℚ)
  oldHi := (7362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_739, piece_740]
}

noncomputable def cell_12134 : Cell := { cellDefaults with
  domain := ⟨(137825000000000009 / 200000000000000000 : ℚ), (68925000000000003 / 100000000000000000 : ℚ)⟩
  r := (51241624512593 / 100000000000000 : ℚ)
  w := (3389427567129 / 2500000000000 : ℚ)
  center := (55135000000000003 / 80000000000000000 : ℚ)
  supportValue := (5876863947683283 / 20000000000000000 : ℚ)
  supportSlope := (-9781281789741421 / 10000000000000000 : ℚ)
  oldCenter := (5876863947683283 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1601
  oldLo := (7337500000000001 / 25000000000000000 : ℚ)
  oldHi := (7350000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_739]
}

noncomputable def cell_12135 : Cell := { cellDefaults with
  domain := ⟨(68925000000000003 / 100000000000000000 : ℚ), (137875000000000003 / 200000000000000000 : ℚ)⟩
  r := (51241624512593 / 100000000000000 : ℚ)
  w := (3389427567129 / 2500000000000 : ℚ)
  center := (275725000000000009 / 400000000000000000 : ℚ)
  supportValue := (1468604999168021 / 5000000000000000 : ℚ)
  supportSlope := (-1954066445890369 / 2000000000000000 : ℚ)
  oldCenter := (1468604999168021 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1601
  oldLo := (7337500000000001 / 25000000000000000 : ℚ)
  oldHi := (7350000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_739]
}

noncomputable def cell_12136 : Cell := { cellDefaults with
  domain := ⟨(137875000000000003 / 200000000000000000 : ℚ), (1379 / 2000 : ℚ)⟩
  r := (51241624512593 / 100000000000000 : ℚ)
  w := (3389427567129 / 2500000000000 : ℚ)
  center := (275775000000000003 / 400000000000000000 : ℚ)
  supportValue := (5871978777164173 / 20000000000000000 : ℚ)
  supportSlope := (-9759429690668957 / 10000000000000000 : ℚ)
  oldCenter := (5871978777164173 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1601
  oldLo := (7337500000000001 / 25000000000000000 : ℚ)
  oldHi := (7350000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_739]
}

noncomputable def cell_12137 : Cell := { cellDefaults with
  domain := ⟨(1379 / 2000 : ℚ), (137925000000000003 / 200000000000000000 : ℚ)⟩
  r := (25609588720003 / 50000000000000 : ℚ)
  w := (1355619138929 / 1000000000000 : ℚ)
  center := (275825000000000003 / 400000000000000000 : ℚ)
  supportValue := (7342933652938971 / 25000000000000000 : ℚ)
  supportSlope := (-9765857757785207 / 10000000000000000 : ℚ)
  oldCenter := (7342933652938971 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1602
  oldLo := (7337500000000001 / 25000000000000000 : ℚ)
  oldHi := (7350000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_739]
}

noncomputable def cell_12138 : Cell := { cellDefaults with
  domain := ⟨(137925000000000003 / 200000000000000000 : ℚ), (68975000000000003 / 100000000000000000 : ℚ)⟩
  r := (25609588720003 / 50000000000000 : ℚ)
  w := (1355619138929 / 1000000000000 : ℚ)
  center := (275875000000000009 / 400000000000000000 : ℚ)
  supportValue := (14679767050299797 / 50000000000000000 : ℚ)
  supportSlope := (-60968537090637 / 62500000000000 : ℚ)
  oldCenter := (14679767050299797 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1602
  oldLo := (7337500000000001 / 25000000000000000 : ℚ)
  oldHi := (7350000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_739]
}

noncomputable def cell_12139 : Cell := { cellDefaults with
  domain := ⟨(68975000000000003 / 100000000000000000 : ℚ), (137975000000000009 / 200000000000000000 : ℚ)⟩
  r := (25609588720003 / 50000000000000 : ℚ)
  w := (1355619138929 / 1000000000000 : ℚ)
  center := (55185000000000003 / 80000000000000000 : ℚ)
  supportValue := (29347362892174883 / 100000000000000000 : ℚ)
  supportSlope := (-975678505345517 / 1000000000000000 : ℚ)
  oldCenter := (29347362892174883 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1602
  oldLo := (7325000000000001 / 25000000000000000 : ℚ)
  oldHi := (7350000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_738, piece_739]
}

noncomputable def cell_12140 : Cell := { cellDefaults with
  domain := ⟨(137975000000000009 / 200000000000000000 : ℚ), (34500000000000003 / 50000000000000000 : ℚ)⟩
  r := (25609588720003 / 50000000000000 : ℚ)
  w := (1355619138929 / 1000000000000 : ℚ)
  center := (275975000000000021 / 400000000000000000 : ℚ)
  supportValue := (1466757349833561 / 5000000000000000 : ℚ)
  supportSlope := (-2437699563806169 / 2500000000000000 : ℚ)
  oldCenter := (1466757349833561 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1602
  oldLo := (7325000000000001 / 25000000000000000 : ℚ)
  oldHi := (7337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_738]
}

noncomputable def cell_12141 : Cell := { cellDefaults with
  domain := ⟨(34500000000000003 / 50000000000000000 : ℚ), (69013966480446933 / 100000000000000000 : ℚ)⟩
  r := (51196748800617 / 100000000000000 : ℚ)
  w := (13554669517099 / 10000000000000 : ℚ)
  center := (138013966480446939 / 200000000000000000 : ℚ)
  supportValue := (14673148909619793 / 50000000000000000 : ℚ)
  supportSlope := (-9752664845081811 / 10000000000000000 : ℚ)
  oldCenter := (14673148909619793 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1603
  oldLo := (7325000000000001 / 25000000000000000 : ℚ)
  oldHi := (7350000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_738, piece_739]
}

noncomputable def cell_12142 : Cell := { cellDefaults with
  domain := ⟨(69013966480446933 / 100000000000000000 : ℚ), (3451396648044693 / 5000000000000000 : ℚ)⟩
  r := (51196748800617 / 100000000000000 : ℚ)
  w := (13554669517099 / 10000000000000 : ℚ)
  center := (138041899441340793 / 200000000000000000 : ℚ)
  supportValue := (1466632959943819 / 5000000000000000 : ℚ)
  supportSlope := (-4872213531523537 / 5000000000000000 : ℚ)
  oldCenter := (1466632959943819 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1603
  oldLo := (7325000000000001 / 25000000000000000 : ℚ)
  oldHi := (7337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_738]
}

noncomputable def cell_12143 : Cell := { cellDefaults with
  domain := ⟨(3451396648044693 / 5000000000000000 : ℚ), (6903896648044693 / 10000000000000000 : ℚ)⟩
  r := (51196748800617 / 100000000000000 : ℚ)
  w := (13554669517099 / 10000000000000 : ℚ)
  center := (13806689944134079 / 20000000000000000 : ℚ)
  supportValue := (733012137157961 / 2500000000000000 : ℚ)
  supportSlope := (-4866759494259861 / 5000000000000000 : ℚ)
  oldCenter := (733012137157961 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1604
  oldLo := (7325000000000001 / 25000000000000000 : ℚ)
  oldHi := (7337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_738]
}

noncomputable def cell_12144 : Cell := { cellDefaults with
  domain := ⟨(6903896648044693 / 10000000000000000 : ℚ), (1381 / 2000 : ℚ)⟩
  r := (51196748800617 / 100000000000000 : ℚ)
  w := (13554669517099 / 10000000000000 : ℚ)
  center := (13808896648044693 / 20000000000000000 : ℚ)
  supportValue := (14654875640319587 / 50000000000000000 : ℚ)
  supportSlope := (-48619652609711 / 50000000000000 : ℚ)
  oldCenter := (14654875640319587 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1604
  oldLo := (7325000000000001 / 25000000000000000 : ℚ)
  oldHi := (7337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_738]
}

noncomputable def cell_12145 : Cell := { cellDefaults with
  domain := ⟨(1381 / 2000 : ℚ), (138125000000000003 / 200000000000000000 : ℚ)⟩
  r := (51174351697507 / 100000000000000 : ℚ)
  w := (13553166901793 / 10000000000000 : ℚ)
  center := (276225000000000003 / 400000000000000000 : ℚ)
  supportValue := (733056021834531 / 2500000000000000 : ℚ)
  supportSlope := (-1946193017150699 / 2000000000000000 : ℚ)
  oldCenter := (733056021834531 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1605
  oldLo := (7325000000000001 / 25000000000000000 : ℚ)
  oldHi := (7337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_738]
}

noncomputable def cell_12146 : Cell := { cellDefaults with
  domain := ⟨(138125000000000003 / 200000000000000000 : ℚ), (69075000000000003 / 100000000000000000 : ℚ)⟩
  r := (51174351697507 / 100000000000000 : ℚ)
  w := (13553166901793 / 10000000000000 : ℚ)
  center := (276275000000000009 / 400000000000000000 : ℚ)
  supportValue := (1465504197834481 / 5000000000000000 : ℚ)
  supportSlope := (-4860053730978947 / 5000000000000000 : ℚ)
  oldCenter := (1465504197834481 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1605
  oldLo := (7325000000000001 / 25000000000000000 : ℚ)
  oldHi := (7337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_738]
}

noncomputable def cell_12147 : Cell := { cellDefaults with
  domain := ⟨(69075000000000003 / 100000000000000000 : ℚ), (138175000000000009 / 200000000000000000 : ℚ)⟩
  r := (51174351697507 / 100000000000000 : ℚ)
  w := (13553166901793 / 10000000000000 : ℚ)
  center := (55265000000000003 / 80000000000000000 : ℚ)
  supportValue := (1464897866727693 / 5000000000000000 : ℚ)
  supportSlope := (-9721097355858077 / 10000000000000000 : ℚ)
  oldCenter := (1464897866727693 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1605
  oldLo := (7312500000000001 / 25000000000000000 : ℚ)
  oldHi := (7337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_737, piece_738]
}

noncomputable def cell_12148 : Cell := { cellDefaults with
  domain := ⟨(138175000000000009 / 200000000000000000 : ℚ), (34550000000000003 / 50000000000000000 : ℚ)⟩
  r := (51174351697507 / 100000000000000 : ℚ)
  w := (13553166901793 / 10000000000000 : ℚ)
  center := (276375000000000021 / 400000000000000000 : ℚ)
  supportValue := (1171431399708601 / 4000000000000000 : ℚ)
  supportSlope := (-4858008177590051 / 5000000000000000 : ℚ)
  oldCenter := (1171431399708601 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1605
  oldLo := (7312500000000001 / 25000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_737]
}

noncomputable def cell_12149 : Cell := { cellDefaults with
  domain := ⟨(34550000000000003 / 50000000000000000 : ℚ), (138225000000000009 / 200000000000000000 : ℚ)⟩
  r := (25575986778079 / 50000000000000 : ℚ)
  w := (677583081549 / 500000000000 : ℚ)
  center := (276425000000000021 / 400000000000000000 : ℚ)
  supportValue := (36621982373353 / 125000000000000 : ℚ)
  supportSlope := (-9717187514387603 / 10000000000000000 : ℚ)
  oldCenter := (36621982373353 / 125000000000000 : ℚ)
  newCoefficients := coefficients_1606
  oldLo := (7312500000000001 / 25000000000000000 : ℚ)
  oldHi := (7337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_737, piece_738]
}

theorem check_12100 : cell_12100.check = true := by
  decide +kernel

theorem check_12101 : cell_12101.check = true := by
  decide +kernel

theorem check_12102 : cell_12102.check = true := by
  decide +kernel

theorem check_12103 : cell_12103.check = true := by
  decide +kernel

theorem check_12104 : cell_12104.check = true := by
  decide +kernel

theorem check_12105 : cell_12105.check = true := by
  decide +kernel

theorem check_12106 : cell_12106.check = true := by
  decide +kernel

theorem check_12107 : cell_12107.check = true := by
  decide +kernel

theorem check_12108 : cell_12108.check = true := by
  decide +kernel

theorem check_12109 : cell_12109.check = true := by
  decide +kernel

theorem check_12110 : cell_12110.check = true := by
  decide +kernel

theorem check_12111 : cell_12111.check = true := by
  decide +kernel

theorem check_12112 : cell_12112.check = true := by
  decide +kernel

theorem check_12113 : cell_12113.check = true := by
  decide +kernel

theorem check_12114 : cell_12114.check = true := by
  decide +kernel

theorem check_12115 : cell_12115.check = true := by
  decide +kernel

theorem check_12116 : cell_12116.check = true := by
  decide +kernel

theorem check_12117 : cell_12117.check = true := by
  decide +kernel

theorem check_12118 : cell_12118.check = true := by
  decide +kernel

theorem check_12119 : cell_12119.check = true := by
  decide +kernel

theorem check_12120 : cell_12120.check = true := by
  decide +kernel

theorem check_12121 : cell_12121.check = true := by
  decide +kernel

theorem check_12122 : cell_12122.check = true := by
  decide +kernel

theorem check_12123 : cell_12123.check = true := by
  decide +kernel

theorem check_12124 : cell_12124.check = true := by
  decide +kernel

theorem check_12125 : cell_12125.check = true := by
  decide +kernel

theorem check_12126 : cell_12126.check = true := by
  decide +kernel

theorem check_12127 : cell_12127.check = true := by
  decide +kernel

theorem check_12128 : cell_12128.check = true := by
  decide +kernel

theorem check_12129 : cell_12129.check = true := by
  decide +kernel

theorem check_12130 : cell_12130.check = true := by
  decide +kernel

theorem check_12131 : cell_12131.check = true := by
  decide +kernel

theorem check_12132 : cell_12132.check = true := by
  decide +kernel

theorem check_12133 : cell_12133.check = true := by
  decide +kernel

theorem check_12134 : cell_12134.check = true := by
  decide +kernel

theorem check_12135 : cell_12135.check = true := by
  decide +kernel

theorem check_12136 : cell_12136.check = true := by
  decide +kernel

theorem check_12137 : cell_12137.check = true := by
  decide +kernel

theorem check_12138 : cell_12138.check = true := by
  decide +kernel

theorem check_12139 : cell_12139.check = true := by
  decide +kernel

theorem check_12140 : cell_12140.check = true := by
  decide +kernel

theorem check_12141 : cell_12141.check = true := by
  decide +kernel

theorem check_12142 : cell_12142.check = true := by
  decide +kernel

theorem check_12143 : cell_12143.check = true := by
  decide +kernel

theorem check_12144 : cell_12144.check = true := by
  decide +kernel

theorem check_12145 : cell_12145.check = true := by
  decide +kernel

theorem check_12146 : cell_12146.check = true := by
  decide +kernel

theorem check_12147 : cell_12147.check = true := by
  decide +kernel

theorem check_12148 : cell_12148.check = true := by
  decide +kernel

theorem check_12149 : cell_12149.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12100, cell_12101, cell_12102, cell_12103, cell_12104, cell_12105, cell_12106, cell_12107, cell_12108, cell_12109, cell_12110, cell_12111, cell_12112, cell_12113, cell_12114, cell_12115, cell_12116, cell_12117, cell_12118, cell_12119, cell_12120, cell_12121, cell_12122, cell_12123, cell_12124, cell_12125, cell_12126, cell_12127, cell_12128, cell_12129, cell_12130, cell_12131, cell_12132, cell_12133, cell_12134, cell_12135, cell_12136, cell_12137, cell_12138, cell_12139, cell_12140, cell_12141, cell_12142, cell_12143, cell_12144, cell_12145, cell_12146, cell_12147, cell_12148, cell_12149]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12100, check_12101, check_12102, check_12103, check_12104, check_12105, check_12106, check_12107, check_12108, check_12109, check_12110, check_12111, check_12112, check_12113, check_12114, check_12115, check_12116, check_12117, check_12118, check_12119, check_12120, check_12121, check_12122, check_12123, check_12124, check_12125, check_12126, check_12127, check_12128, check_12129, check_12130, check_12131, check_12132, check_12133, check_12134, check_12135, check_12136, check_12137, check_12138, check_12139, check_12140, check_12141, check_12142, check_12143, check_12144, check_12145, check_12146, check_12147, check_12148, check_12149, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0242

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0242
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0242
open AnalyticBounds.ExpressionCertificate

theorem linked_12100 : Linked cell_12100 pieces := by
  link_source cell_12100 with piece_1592 using piece_1592_mem, piece_743_mem

theorem linked_12101 : Linked cell_12101 pieces := by
  link_source cell_12101 with piece_1593 using piece_1593_mem, ⟨piece_743_mem, piece_744_mem⟩

theorem linked_12102 : Linked cell_12102 pieces := by
  link_source cell_12102 with piece_1593 using piece_1593_mem, piece_743_mem

theorem linked_12103 : Linked cell_12103 pieces := by
  link_source cell_12103 with piece_1593 using piece_1593_mem, piece_743_mem

theorem linked_12104 : Linked cell_12104 pieces := by
  link_source cell_12104 with piece_1593 using piece_1593_mem, piece_743_mem

theorem linked_12105 : Linked cell_12105 pieces := by
  link_source cell_12105 with piece_1594 using piece_1594_mem, piece_743_mem

theorem linked_12106 : Linked cell_12106 pieces := by
  link_source cell_12106 with piece_1594 using piece_1594_mem, piece_743_mem

theorem linked_12107 : Linked cell_12107 pieces := by
  link_source cell_12107 with piece_1594 using piece_1594_mem, ⟨piece_742_mem, piece_743_mem⟩

theorem linked_12108 : Linked cell_12108 pieces := by
  link_source cell_12108 with piece_1594 using piece_1594_mem, piece_742_mem

theorem linked_12109 : Linked cell_12109 pieces := by
  link_source cell_12109 with piece_1595 using piece_1595_mem, ⟨piece_742_mem, piece_743_mem⟩

theorem linked_12110 : Linked cell_12110 pieces := by
  link_source cell_12110 with piece_1595 using piece_1595_mem, piece_742_mem

theorem linked_12111 : Linked cell_12111 pieces := by
  link_source cell_12111 with piece_1595 using piece_1595_mem, piece_742_mem

theorem linked_12112 : Linked cell_12112 pieces := by
  link_source cell_12112 with piece_1595 using piece_1595_mem, piece_742_mem

theorem linked_12113 : Linked cell_12113 pieces := by
  link_source cell_12113 with piece_1596 using piece_1596_mem, piece_742_mem

theorem linked_12114 : Linked cell_12114 pieces := by
  link_source cell_12114 with piece_1596 using piece_1596_mem, piece_742_mem

theorem linked_12115 : Linked cell_12115 pieces := by
  link_source cell_12115 with piece_1596 using piece_1596_mem, ⟨piece_741_mem, piece_742_mem⟩

theorem linked_12116 : Linked cell_12116 pieces := by
  link_source cell_12116 with piece_1596 using piece_1596_mem, piece_741_mem

theorem linked_12117 : Linked cell_12117 pieces := by
  link_source cell_12117 with piece_1597 using piece_1597_mem, ⟨piece_741_mem, piece_742_mem⟩

theorem linked_12118 : Linked cell_12118 pieces := by
  link_source cell_12118 with piece_1597 using piece_1597_mem, piece_741_mem

theorem linked_12119 : Linked cell_12119 pieces := by
  link_source cell_12119 with piece_1597 using piece_1597_mem, piece_741_mem

theorem linked_12120 : Linked cell_12120 pieces := by
  link_source cell_12120 with piece_1597 using piece_1597_mem, piece_741_mem

theorem linked_12121 : Linked cell_12121 pieces := by
  link_source cell_12121 with piece_1598 using piece_1598_mem, piece_741_mem

theorem linked_12122 : Linked cell_12122 pieces := by
  link_source cell_12122 with piece_1598 using piece_1598_mem, piece_741_mem

theorem linked_12123 : Linked cell_12123 pieces := by
  link_source cell_12123 with piece_1598 using piece_1598_mem, ⟨piece_740_mem, piece_741_mem⟩

theorem linked_12124 : Linked cell_12124 pieces := by
  link_source cell_12124 with piece_1598 using piece_1598_mem, piece_740_mem

theorem linked_12125 : Linked cell_12125 pieces := by
  link_source cell_12125 with piece_1599 using piece_1599_mem, ⟨piece_740_mem, piece_741_mem⟩

theorem linked_12126 : Linked cell_12126 pieces := by
  link_source cell_12126 with piece_1599 using piece_1599_mem, piece_740_mem

theorem linked_12127 : Linked cell_12127 pieces := by
  link_source cell_12127 with piece_1599 using piece_1599_mem, piece_740_mem

theorem linked_12128 : Linked cell_12128 pieces := by
  link_source cell_12128 with piece_1599 using piece_1599_mem, piece_740_mem

theorem linked_12129 : Linked cell_12129 pieces := by
  link_source cell_12129 with piece_1600 using piece_1600_mem, piece_740_mem

theorem linked_12130 : Linked cell_12130 pieces := by
  link_source cell_12130 with piece_1600 using piece_1600_mem, piece_740_mem

theorem linked_12131 : Linked cell_12131 pieces := by
  link_source cell_12131 with piece_1600 using piece_1600_mem, ⟨piece_739_mem, piece_740_mem⟩

theorem linked_12132 : Linked cell_12132 pieces := by
  link_source cell_12132 with piece_1600 using piece_1600_mem, piece_739_mem

theorem linked_12133 : Linked cell_12133 pieces := by
  link_source cell_12133 with piece_1601 using piece_1601_mem, ⟨piece_739_mem, piece_740_mem⟩

theorem linked_12134 : Linked cell_12134 pieces := by
  link_source cell_12134 with piece_1601 using piece_1601_mem, piece_739_mem

theorem linked_12135 : Linked cell_12135 pieces := by
  link_source cell_12135 with piece_1601 using piece_1601_mem, piece_739_mem

theorem linked_12136 : Linked cell_12136 pieces := by
  link_source cell_12136 with piece_1601 using piece_1601_mem, piece_739_mem

theorem linked_12137 : Linked cell_12137 pieces := by
  link_source cell_12137 with piece_1602 using piece_1602_mem, piece_739_mem

theorem linked_12138 : Linked cell_12138 pieces := by
  link_source cell_12138 with piece_1602 using piece_1602_mem, piece_739_mem

theorem linked_12139 : Linked cell_12139 pieces := by
  link_source cell_12139 with piece_1602 using piece_1602_mem, ⟨piece_738_mem, piece_739_mem⟩

theorem linked_12140 : Linked cell_12140 pieces := by
  link_source cell_12140 with piece_1602 using piece_1602_mem, piece_738_mem

theorem linked_12141 : Linked cell_12141 pieces := by
  link_source cell_12141 with piece_1603 using piece_1603_mem, ⟨piece_738_mem, piece_739_mem⟩

theorem linked_12142 : Linked cell_12142 pieces := by
  link_source cell_12142 with piece_1603 using piece_1603_mem, piece_738_mem

theorem linked_12143 : Linked cell_12143 pieces := by
  link_source cell_12143 with piece_1604 using piece_1604_mem, piece_738_mem

theorem linked_12144 : Linked cell_12144 pieces := by
  link_source cell_12144 with piece_1604 using piece_1604_mem, piece_738_mem

theorem linked_12145 : Linked cell_12145 pieces := by
  link_source cell_12145 with piece_1605 using piece_1605_mem, piece_738_mem

theorem linked_12146 : Linked cell_12146 pieces := by
  link_source cell_12146 with piece_1605 using piece_1605_mem, piece_738_mem

theorem linked_12147 : Linked cell_12147 pieces := by
  link_source cell_12147 with piece_1605 using piece_1605_mem, ⟨piece_737_mem, piece_738_mem⟩

theorem linked_12148 : Linked cell_12148 pieces := by
  link_source cell_12148 with piece_1605 using piece_1605_mem, piece_737_mem

theorem linked_12149 : Linked cell_12149 pieces := by
  link_source cell_12149 with piece_1606 using piece_1606_mem, ⟨piece_737_mem, piece_738_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0242.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0242.cells,List.forall_mem_cons]
  exact ⟨linked_12100, linked_12101, linked_12102, linked_12103, linked_12104, linked_12105, linked_12106, linked_12107, linked_12108, linked_12109, linked_12110, linked_12111, linked_12112, linked_12113, linked_12114, linked_12115, linked_12116, linked_12117, linked_12118, linked_12119, linked_12120, linked_12121, linked_12122, linked_12123, linked_12124, linked_12125, linked_12126, linked_12127, linked_12128, linked_12129, linked_12130, linked_12131, linked_12132, linked_12133, linked_12134, linked_12135, linked_12136, linked_12137, linked_12138, linked_12139, linked_12140, linked_12141, linked_12142, linked_12143, linked_12144, linked_12145, linked_12146, linked_12147, linked_12148, linked_12149, by simp⟩

theorem covered : covers (27394972067039107 / 40000000000000000 : ℚ) (138225000000000009 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0242.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0242
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0243
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(138225000000000009 / 200000000000000000 : ℚ), (69125000000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (10225925370237 / 20000000000000 : ℚ)
  w := (13550175754727 / 10000000000000 : ℚ)
  center := (55295000000000003 / 80000000000000000 : ℚ)
  supportValue := (1464270955905327 / 5000000000000000 : ℚ)
  supportSlope := (-9711572914091803 / 10000000000000000 : ℚ)
  oldCenter := (1464270955905327 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1607
  oldLo := (7287500000000001 / 25000000000000000 : ℚ)
  oldHi := (7300000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_734]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12150 : Cell := { cellDefaults with
  r := (25575986778079 / 50000000000000 : ℚ)
  w := (677583081549 / 500000000000 : ℚ)
  newCoefficients := coefficients_1606
  oldLo := (7312500000000001 / 25000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_737]
}

noncomputable def cell_12151 : Cell := { cellDefaults with
  domain := ⟨(69125000000000003 / 100000000000000000 : ℚ), (138275000000000003 / 200000000000000000 : ℚ)⟩
  r := (25575986778079 / 50000000000000 : ℚ)
  w := (677583081549 / 500000000000 : ℚ)
  center := (276525000000000009 / 400000000000000000 : ℚ)
  supportValue := (731832160904223 / 2500000000000000 : ℚ)
  supportSlope := (-9700724046793949 / 10000000000000000 : ℚ)
  oldCenter := (731832160904223 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1606
  oldLo := (7312500000000001 / 25000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_737]
}

noncomputable def cell_12152 : Cell := { cellDefaults with
  domain := ⟨(138275000000000003 / 200000000000000000 : ℚ), (1383 / 2000 : ℚ)⟩
  r := (25575986778079 / 50000000000000 : ℚ)
  w := (677583081549 / 500000000000 : ℚ)
  center := (276575000000000003 / 400000000000000000 : ℚ)
  supportValue := (365764591076971 / 1250000000000000 : ℚ)
  supportSlope := (-387596870398401 / 400000000000000 : ℚ)
  oldCenter := (365764591076971 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1606
  oldLo := (7312500000000001 / 25000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_737]
}

noncomputable def cell_12153 : Cell := { cellDefaults with
  domain := ⟨(1383 / 2000 : ℚ), (138325000000000003 / 200000000000000000 : ℚ)⟩
  center := (276625000000000003 / 400000000000000000 : ℚ)
  supportValue := (7318219650631451 / 25000000000000000 : ℚ)
  supportSlope := (-303008055041151 / 312500000000000 : ℚ)
  oldCenter := (7318219650631451 / 25000000000000000 : ℚ)
  oldLo := (7312500000000001 / 25000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_737]
}

noncomputable def cell_12154 : Cell := { cellDefaults with
  domain := ⟨(138325000000000003 / 200000000000000000 : ℚ), (69175000000000003 / 100000000000000000 : ℚ)⟩
  center := (276675000000000009 / 400000000000000000 : ℚ)
  supportValue := (1463038251432013 / 5000000000000000 : ℚ)
  supportSlope := (-9685466229613031 / 10000000000000000 : ℚ)
  oldCenter := (1463038251432013 / 5000000000000000 : ℚ)
  oldLo := (7312500000000001 / 25000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_737]
}

noncomputable def cell_12155 : Cell := { cellDefaults with
  domain := ⟨(69175000000000003 / 100000000000000000 : ℚ), (138375000000000009 / 200000000000000000 : ℚ)⟩
  center := (55345000000000003 / 80000000000000000 : ℚ)
  supportValue := (2924868294553231 / 10000000000000000 : ℚ)
  supportSlope := (-2421361855422231 / 2500000000000000 : ℚ)
  oldCenter := (2924868294553231 / 10000000000000000 : ℚ)
  oldLo := (29206703910614523 / 100000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_736, piece_737]
}

noncomputable def cell_12156 : Cell := { cellDefaults with
  domain := ⟨(138375000000000009 / 200000000000000000 : ℚ), (34600000000000003 / 50000000000000000 : ℚ)⟩
  center := (276775000000000021 / 400000000000000000 : ℚ)
  supportValue := (5847310776917909 / 20000000000000000 : ℚ)
  supportSlope := (-9681439022201037 / 10000000000000000 : ℚ)
  oldCenter := (5847310776917909 / 20000000000000000 : ℚ)
  oldLo := (29206703910614523 / 100000000000000000 : ℚ)
  oldHi := (7312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_736]
}

noncomputable def cell_12157 : Cell := { cellDefaults with
  domain := ⟨(34600000000000003 / 50000000000000000 : ℚ), (138425000000000009 / 200000000000000000 : ℚ)⟩
  r := (6388412467803 / 12500000000000 : ℚ)
  w := (2709737453283 / 2000000000000 : ℚ)
  center := (276825000000000021 / 400000000000000000 : ℚ)
  supportValue := (7312072200774171 / 25000000000000000 : ℚ)
  supportSlope := (-9681574131966737 / 10000000000000000 : ℚ)
  oldCenter := (7312072200774171 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1608
  oldLo := (29206703910614523 / 100000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_736, piece_737]
}

noncomputable def cell_12158 : Cell := { cellDefaults with
  domain := ⟨(138425000000000009 / 200000000000000000 : ℚ), (69225000000000003 / 100000000000000000 : ℚ)⟩
  r := (6388412467803 / 12500000000000 : ℚ)
  w := (2709737453283 / 2000000000000 : ℚ)
  center := (55375000000000003 / 80000000000000000 : ℚ)
  supportValue := (91363016563729 / 312500000000000 : ℚ)
  supportSlope := (-4838499015532041 / 5000000000000000 : ℚ)
  oldCenter := (91363016563729 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1608
  oldLo := (29206703910614523 / 100000000000000000 : ℚ)
  oldHi := (7312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_736]
}

noncomputable def cell_12159 : Cell := { cellDefaults with
  domain := ⟨(69225000000000003 / 100000000000000000 : ℚ), (138475000000000003 / 200000000000000000 : ℚ)⟩
  r := (6388412467803 / 12500000000000 : ℚ)
  w := (2709737453283 / 2000000000000 : ℚ)
  center := (276925000000000009 / 400000000000000000 : ℚ)
  supportValue := (1461203790618333 / 5000000000000000 : ℚ)
  supportSlope := (-9666188659408541 / 10000000000000000 : ℚ)
  oldCenter := (1461203790618333 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1608
  oldLo := (29206703910614523 / 100000000000000000 : ℚ)
  oldHi := (7312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_736]
}

noncomputable def cell_12160 : Cell := { cellDefaults with
  domain := ⟨(138475000000000003 / 200000000000000000 : ℚ), (277 / 400 : ℚ)⟩
  r := (6388412467803 / 12500000000000 : ℚ)
  w := (2709737453283 / 2000000000000 : ℚ)
  center := (276975000000000003 / 400000000000000000 : ℚ)
  supportValue := (2921199980698057 / 10000000000000000 : ℚ)
  supportSlope := (-4827712713222933 / 5000000000000000 : ℚ)
  oldCenter := (2921199980698057 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1608
  oldLo := (7300000000000001 / 25000000000000000 : ℚ)
  oldHi := (7312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_735, piece_736]
}

noncomputable def cell_12161 : Cell := { cellDefaults with
  domain := ⟨(277 / 400 : ℚ), (138525000000000003 / 200000000000000000 : ℚ)⟩
  r := (12771250548993 / 25000000000000 : ℚ)
  w := (13547217105223 / 10000000000000 : ℚ)
  center := (277025000000000003 / 400000000000000000 : ℚ)
  supportValue := (584472979935141 / 2000000000000000 : ℚ)
  supportSlope := (-193234553253573 / 200000000000000 : ℚ)
  oldCenter := (584472979935141 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1609
  oldLo := (29206703910614523 / 100000000000000000 : ℚ)
  oldHi := (7312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_736]
}

noncomputable def cell_12162 : Cell := { cellDefaults with
  domain := ⟨(138525000000000003 / 200000000000000000 : ℚ), (69275000000000003 / 100000000000000000 : ℚ)⟩
  r := (12771250548993 / 25000000000000 : ℚ)
  w := (13547217105223 / 10000000000000 : ℚ)
  center := (277075000000000009 / 400000000000000000 : ℚ)
  supportValue := (730289464021791 / 2500000000000000 : ℚ)
  supportSlope := (-4825487516919001 / 5000000000000000 : ℚ)
  oldCenter := (730289464021791 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1609
  oldLo := (7300000000000001 / 25000000000000000 : ℚ)
  oldHi := (7312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_735, piece_736]
}

noncomputable def cell_12163 : Cell := { cellDefaults with
  domain := ⟨(69275000000000003 / 100000000000000000 : ℚ), (138575000000000009 / 200000000000000000 : ℚ)⟩
  r := (12771250548993 / 25000000000000 : ℚ)
  w := (13547217105223 / 10000000000000 : ℚ)
  center := (55425000000000003 / 80000000000000000 : ℚ)
  supportValue := (5839908218195039 / 20000000000000000 : ℚ)
  supportSlope := (-9649746023264691 / 10000000000000000 : ℚ)
  oldCenter := (5839908218195039 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1609
  oldHi := (29206703910614523 / 100000000000000000 : ℚ)
  oldPieces := [piece_734, piece_735]
}

noncomputable def cell_12164 : Cell := { cellDefaults with
  domain := ⟨(138575000000000009 / 200000000000000000 : ℚ), (34650000000000003 / 50000000000000000 : ℚ)⟩
  r := (12771250548993 / 25000000000000 : ℚ)
  w := (13547217105223 / 10000000000000 : ℚ)
  center := (277175000000000021 / 400000000000000000 : ℚ)
  supportValue := (2918745511251307 / 10000000000000000 : ℚ)
  supportSlope := (-2411755154571859 / 2500000000000000 : ℚ)
  oldCenter := (2918745511251307 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1609
  oldPieces := [piece_734]
}

noncomputable def cell_12165 : Cell := { cellDefaults with
  domain := ⟨(34650000000000003 / 50000000000000000 : ℚ), (277250000000000019 / 400000000000000000 : ℚ)⟩
  r := (5106272502291 / 10000000000000 : ℚ)
  w := (13545746564083 / 10000000000000 : ℚ)
  center := (554450000000000043 / 800000000000000000 : ℚ)
  supportValue := (2919912310835847 / 10000000000000000 : ℚ)
  supportSlope := (-2411477714954443 / 2500000000000000 : ℚ)
  oldCenter := (2919912310835847 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1610
  oldHi := (29206703910614523 / 100000000000000000 : ℚ)
  oldPieces := [piece_734, piece_735]
}

noncomputable def cell_12166 : Cell := { cellDefaults with
  domain := ⟨(277250000000000019 / 400000000000000000 : ℚ), (138650000000000007 / 200000000000000000 : ℚ)⟩
  r := (5106272502291 / 10000000000000 : ℚ)
  w := (13545746564083 / 10000000000000 : ℚ)
  center := (554550000000000033 / 800000000000000000 : ℚ)
  supportValue := (1824190167906619 / 6250000000000000 : ℚ)
  supportSlope := (-96425809717103 / 100000000000000 : ℚ)
  oldCenter := (1824190167906619 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1610
  oldPieces := [piece_734]
}

noncomputable def cell_12167 : Cell := { cellDefaults with
  domain := ⟨(138650000000000007 / 200000000000000000 : ℚ), (277350000000000009 / 400000000000000000 : ℚ)⟩
  r := (5106272502291 / 10000000000000 : ℚ)
  w := (13545746564083 / 10000000000000 : ℚ)
  center := (554650000000000023 / 800000000000000000 : ℚ)
  supportValue := (5834999238952493 / 20000000000000000 : ℚ)
  supportSlope := (-9631811651385899 / 10000000000000000 : ℚ)
  oldCenter := (5834999238952493 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1610
  oldPieces := [piece_734]
}

noncomputable def cell_12168 : Cell := { cellDefaults with
  domain := ⟨(277350000000000009 / 400000000000000000 : ℚ), (69350000000000001 / 100000000000000000 : ℚ)⟩
  r := (5106272502291 / 10000000000000 : ℚ)
  w := (13545746564083 / 10000000000000 : ℚ)
  center := (554750000000000013 / 800000000000000000 : ℚ)
  supportValue := (583259262713653 / 2000000000000000 : ℚ)
  supportSlope := (-962108863824181 / 1000000000000000 : ℚ)
  oldCenter := (583259262713653 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1610
  oldPieces := [piece_734]
}

noncomputable def cell_12169 : Cell := { cellDefaults with
  domain := ⟨(69350000000000001 / 100000000000000000 : ℚ), (277450000000000009 / 400000000000000000 : ℚ)⟩
  r := (255202387273 / 500000000000 : ℚ)
  w := (13544291868681 / 10000000000000 : ℚ)
  center := (554850000000000013 / 800000000000000000 : ℚ)
  supportValue := (2917454997440527 / 10000000000000000 : ℚ)
  supportSlope := (-9627355526288387 / 10000000000000000 : ℚ)
  oldCenter := (2917454997440527 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1611
  oldPieces := [piece_734]
}

noncomputable def cell_12170 : Cell := { cellDefaults with
  domain := ⟨(277450000000000009 / 400000000000000000 : ℚ), (138750000000000007 / 200000000000000000 : ℚ)⟩
  r := (255202387273 / 500000000000 : ℚ)
  w := (13544291868681 / 10000000000000 : ℚ)
  center := (554950000000000023 / 800000000000000000 : ℚ)
  supportValue := (2916252247867629 / 10000000000000000 : ℚ)
  supportSlope := (-300520105848937 / 312500000000000 : ℚ)
  oldCenter := (2916252247867629 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1611
  oldPieces := [piece_734]
}

noncomputable def cell_12171 : Cell := { cellDefaults with
  domain := ⟨(138750000000000007 / 200000000000000000 : ℚ), (277550000000000019 / 400000000000000000 : ℚ)⟩
  r := (255202387273 / 500000000000 : ℚ)
  w := (13544291868681 / 10000000000000 : ℚ)
  center := (555050000000000033 / 800000000000000000 : ℚ)
  supportValue := (2915052874972253 / 10000000000000000 : ℚ)
  supportSlope := (-9614013724420649 / 10000000000000000 : ℚ)
  oldCenter := (2915052874972253 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1611
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733, piece_734]
}

noncomputable def cell_12172 : Cell := { cellDefaults with
  domain := ⟨(277550000000000019 / 400000000000000000 : ℚ), (34700000000000003 / 50000000000000000 : ℚ)⟩
  r := (255202387273 / 500000000000 : ℚ)
  w := (13544291868681 / 10000000000000 : ℚ)
  center := (555150000000000043 / 800000000000000000 : ℚ)
  supportValue := (1165539462398709 / 4000000000000000 : ℚ)
  supportSlope := (-9612769683932247 / 10000000000000000 : ℚ)
  oldCenter := (1165539462398709 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1611
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733]
}

noncomputable def cell_12173 : Cell := { cellDefaults with
  domain := ⟨(34700000000000003 / 50000000000000000 : ℚ), (277650000000000019 / 400000000000000000 : ℚ)⟩
  r := (25509125737799 / 50000000000000 : ℚ)
  w := (6771419778081 / 5000000000000 : ℚ)
  center := (555250000000000043 / 800000000000000000 : ℚ)
  supportValue := (29150085969974143 / 100000000000000000 : ℚ)
  supportSlope := (-4805108980257469 / 5000000000000000 : ℚ)
  oldCenter := (29150085969974143 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1612
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733, piece_734]
}

noncomputable def cell_12174 : Cell := { cellDefaults with
  domain := ⟨(277650000000000019 / 400000000000000000 : ℚ), (138850000000000007 / 200000000000000000 : ℚ)⟩
  r := (25509125737799 / 50000000000000 : ℚ)
  w := (6771419778081 / 5000000000000 : ℚ)
  center := (555350000000000033 / 800000000000000000 : ℚ)
  supportValue := (1821128032928861 / 6250000000000000 : ℚ)
  supportSlope := (-960833000797397 / 1000000000000000 : ℚ)
  oldCenter := (1821128032928861 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1612
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733]
}

noncomputable def cell_12175 : Cell := { cellDefaults with
  domain := ⟨(138850000000000007 / 200000000000000000 : ℚ), (277750000000000009 / 400000000000000000 : ℚ)⟩
  r := (25509125737799 / 50000000000000 : ℚ)
  w := (6771419778081 / 5000000000000 : ℚ)
  center := (555450000000000023 / 800000000000000000 : ℚ)
  supportValue := (29126044822122127 / 100000000000000000 : ℚ)
  supportSlope := (-959760338898537 / 1000000000000000 : ℚ)
  oldCenter := (29126044822122127 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1612
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733]
}

noncomputable def cell_12176 : Cell := { cellDefaults with
  domain := ⟨(277750000000000009 / 400000000000000000 : ℚ), (69450000000000001 / 100000000000000000 : ℚ)⟩
  r := (25509125737799 / 50000000000000 : ℚ)
  w := (6771419778081 / 5000000000000 : ℚ)
  center := (555550000000000013 / 800000000000000000 : ℚ)
  supportValue := (727851362419269 / 2500000000000000 : ℚ)
  supportSlope := (-119836536440999 / 125000000000000 : ℚ)
  oldCenter := (727851362419269 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1612
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733]
}

noncomputable def cell_12177 : Cell := { cellDefaults with
  domain := ⟨(69450000000000001 / 100000000000000000 : ℚ), (277850000000000009 / 400000000000000000 : ℚ)⟩
  r := (12749013321537 / 25000000000000 : ℚ)
  w := (3385350150989 / 2500000000000 : ℚ)
  center := (555650000000000013 / 800000000000000000 : ℚ)
  supportValue := (29125579171802063 / 100000000000000000 : ℚ)
  supportSlope := (-9593152127313083 / 10000000000000000 : ℚ)
  oldCenter := (29125579171802063 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1613
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733]
}

noncomputable def cell_12178 : Cell := { cellDefaults with
  domain := ⟨(277850000000000009 / 400000000000000000 : ℚ), (138950000000000007 / 200000000000000000 : ℚ)⟩
  r := (12749013321537 / 25000000000000 : ℚ)
  w := (3385350150989 / 2500000000000 : ℚ)
  center := (555750000000000023 / 800000000000000000 : ℚ)
  supportValue := (1455679720187847 / 5000000000000000 : ℚ)
  supportSlope := (-958248247213593 / 1000000000000000 : ℚ)
  oldCenter := (1455679720187847 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1613
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733]
}

noncomputable def cell_12179 : Cell := { cellDefaults with
  domain := ⟨(138950000000000007 / 200000000000000000 : ℚ), (277950000000000019 / 400000000000000000 : ℚ)⟩
  r := (12749013321537 / 25000000000000 : ℚ)
  w := (3385350150989 / 2500000000000 : ℚ)
  center := (555850000000000033 / 800000000000000000 : ℚ)
  supportValue := (2910164331526303 / 10000000000000000 : ℚ)
  supportSlope := (-383130069263477 / 400000000000000 : ℚ)
  oldCenter := (2910164331526303 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1613
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732, piece_733]
}

noncomputable def cell_12180 : Cell := { cellDefaults with
  domain := ⟨(277950000000000019 / 400000000000000000 : ℚ), (34750000000000003 / 50000000000000000 : ℚ)⟩
  r := (12749013321537 / 25000000000000 : ℚ)
  w := (3385350150989 / 2500000000000 : ℚ)
  center := (555950000000000043 / 800000000000000000 : ℚ)
  supportValue := (2908964584300017 / 10000000000000000 : ℚ)
  supportSlope := (-1915736501689999 / 2000000000000000 : ℚ)
  oldCenter := (2908964584300017 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1613
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732]
}

noncomputable def cell_12181 : Cell := { cellDefaults with
  domain := ⟨(34750000000000003 / 50000000000000000 : ℚ), (278050000000000019 / 400000000000000000 : ℚ)⟩
  r := (50973878196577 / 100000000000000 : ℚ)
  w := (270799316473 / 200000000000 : ℚ)
  center := (556050000000000043 / 800000000000000000 : ℚ)
  supportValue := (14550588219305677 / 50000000000000000 : ℚ)
  supportSlope := (-4787247192883849 / 5000000000000000 : ℚ)
  oldCenter := (14550588219305677 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1614
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732, piece_733]
}

noncomputable def cell_12182 : Cell := { cellDefaults with
  domain := ⟨(278050000000000019 / 400000000000000000 : ℚ), (139050000000000007 / 200000000000000000 : ℚ)⟩
  r := (50973878196577 / 100000000000000 : ℚ)
  w := (270799316473 / 200000000000 : ℚ)
  center := (556150000000000033 / 800000000000000000 : ℚ)
  supportValue := (29089183665111357 / 100000000000000000 : ℚ)
  supportSlope := (-1914848797533089 / 2000000000000000 : ℚ)
  oldCenter := (29089183665111357 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1614
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732]
}

noncomputable def cell_12183 : Cell := { cellDefaults with
  domain := ⟨(139050000000000007 / 200000000000000000 : ℚ), (278150000000000009 / 400000000000000000 : ℚ)⟩
  r := (50973878196577 / 100000000000000 : ℚ)
  w := (270799316473 / 200000000000 : ℚ)
  center := (556250000000000023 / 800000000000000000 : ℚ)
  supportValue := (363465281748889 / 1250000000000000 : ℚ)
  supportSlope := (-9563562121385051 / 10000000000000000 : ℚ)
  oldCenter := (363465281748889 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1614
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732]
}

noncomputable def cell_12184 : Cell := { cellDefaults with
  domain := ⟨(278150000000000009 / 400000000000000000 : ℚ), (69550000000000001 / 100000000000000000 : ℚ)⟩
  r := (50973878196577 / 100000000000000 : ℚ)
  w := (270799316473 / 200000000000 : ℚ)
  center := (556350000000000013 / 800000000000000000 : ℚ)
  supportValue := (2906527473827127 / 10000000000000000 : ℚ)
  supportSlope := (-2388231554993031 / 2500000000000000 : ℚ)
  oldCenter := (2906527473827127 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1614
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732]
}

noncomputable def cell_12185 : Cell := { cellDefaults with
  domain := ⟨(69550000000000001 / 100000000000000000 : ℚ), (139131005586592171 / 200000000000000000 : ℚ)⟩
  r := (50951729089303 / 100000000000000 : ℚ)
  w := (13538542578837 / 10000000000000 : ℚ)
  center := (278231005586592173 / 400000000000000000 : ℚ)
  supportValue := (581506459140553 / 2000000000000000 : ℚ)
  supportSlope := (-9557838296016437 / 10000000000000000 : ℚ)
  oldCenter := (581506459140553 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1615
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732]
}

noncomputable def cell_12186 : Cell := { cellDefaults with
  domain := ⟨(139131005586592171 / 200000000000000000 : ℚ), (6958100558659217 / 10000000000000000 : ℚ)⟩
  r := (50951729089303 / 100000000000000 : ℚ)
  w := (13538542578837 / 10000000000000 : ℚ)
  center := (278293016759776511 / 400000000000000000 : ℚ)
  supportValue := (726512896012801 / 2500000000000000 : ℚ)
  supportSlope := (-9544674441433789 / 10000000000000000 : ℚ)
  oldCenter := (726512896012801 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1615
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732]
}

noncomputable def cell_12187 : Cell := { cellDefaults with
  domain := ⟨(6958100558659217 / 10000000000000000 : ℚ), (8698812849162011 / 12500000000000000 : ℚ)⟩
  r := (50951729089303 / 100000000000000 : ℚ)
  w := (13538542578837 / 10000000000000 : ℚ)
  center := (69585754189944129 / 100000000000000000 : ℚ)
  supportValue := (2904858895823527 / 10000000000000000 : ℚ)
  supportSlope := (-190912292519893 / 200000000000000 : ℚ)
  oldCenter := (2904858895823527 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1616
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731, piece_732]
}

noncomputable def cell_12188 : Cell := { cellDefaults with
  domain := ⟨(8698812849162011 / 12500000000000000 : ℚ), (34800000000000003 / 50000000000000000 : ℚ)⟩
  r := (50951729089303 / 100000000000000 : ℚ)
  w := (13538542578837 / 10000000000000 : ℚ)
  center := (69595251396648047 / 100000000000000000 : ℚ)
  supportValue := (2903950113077269 / 10000000000000000 : ℚ)
  supportSlope := (-1908696030665521 / 2000000000000000 : ℚ)
  oldCenter := (2903950113077269 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1616
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731]
}

noncomputable def cell_12189 : Cell := { cellDefaults with
  domain := ⟨(34800000000000003 / 50000000000000000 : ℚ), (278450000000000019 / 400000000000000000 : ℚ)⟩
  r := (12732401061537 / 25000000000000 : ℚ)
  w := (676856324681 / 500000000000 : ℚ)
  center := (556850000000000043 / 800000000000000000 : ℚ)
  supportValue := (29052394291087497 / 100000000000000000 : ℚ)
  supportSlope := (-2384686000320951 / 2500000000000000 : ℚ)
  oldCenter := (29052394291087497 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1617
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731, piece_732]
}

noncomputable def cell_12190 : Cell := { cellDefaults with
  domain := ⟨(278450000000000019 / 400000000000000000 : ℚ), (139250000000000007 / 200000000000000000 : ℚ)⟩
  r := (12732401061537 / 25000000000000 : ℚ)
  w := (676856324681 / 500000000000 : ℚ)
  center := (556950000000000033 / 800000000000000000 : ℚ)
  supportValue := (2904044622353847 / 10000000000000000 : ℚ)
  supportSlope := (-4770161710437237 / 5000000000000000 : ℚ)
  oldCenter := (2904044622353847 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1617
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731]
}

noncomputable def cell_12191 : Cell := { cellDefaults with
  domain := ⟨(139250000000000007 / 200000000000000000 : ℚ), (278550000000000009 / 400000000000000000 : ℚ)⟩
  r := (12732401061537 / 25000000000000 : ℚ)
  w := (676856324681 / 500000000000 : ℚ)
  center := (557050000000000023 / 800000000000000000 : ℚ)
  supportValue := (29028527469767923 / 100000000000000000 : ℚ)
  supportSlope := (-1191211046400861 / 1250000000000000 : ℚ)
  oldCenter := (29028527469767923 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1617
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731]
}

noncomputable def cell_12192 : Cell := { cellDefaults with
  domain := ⟨(278550000000000009 / 400000000000000000 : ℚ), (69650000000000001 / 100000000000000000 : ℚ)⟩
  r := (12732401061537 / 25000000000000 : ℚ)
  w := (676856324681 / 500000000000 : ℚ)
  center := (557150000000000013 / 800000000000000000 : ℚ)
  supportValue := (3627077747645157 / 12500000000000000 : ℚ)
  supportSlope := (-4759549543931683 / 5000000000000000 : ℚ)
  oldCenter := (3627077747645157 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1617
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731]
}

noncomputable def cell_12193 : Cell := { cellDefaults with
  domain := ⟨(69650000000000001 / 100000000000000000 : ℚ), (278650000000000009 / 400000000000000000 : ℚ)⟩
  r := (50907504932161 / 100000000000000 : ℚ)
  w := (6767859873653 / 5000000000000 : ℚ)
  center := (557250000000000013 / 800000000000000000 : ℚ)
  supportValue := (2902802129457043 / 10000000000000000 : ℚ)
  supportSlope := (-4762622730764633 / 5000000000000000 : ℚ)
  oldCenter := (2902802129457043 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1618
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731]
}

noncomputable def cell_12194 : Cell := { cellDefaults with
  domain := ⟨(278650000000000009 / 400000000000000000 : ℚ), (139350000000000007 / 200000000000000000 : ℚ)⟩
  r := (50907504932161 / 100000000000000 : ℚ)
  w := (6767859873653 / 5000000000000 : ℚ)
  center := (557350000000000023 / 800000000000000000 : ℚ)
  supportValue := (29016121352803653 / 100000000000000000 : ℚ)
  supportSlope := (-4757333519375763 / 5000000000000000 : ℚ)
  oldCenter := (29016121352803653 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1618
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731]
}

noncomputable def cell_12195 : Cell := { cellDefaults with
  domain := ⟨(139350000000000007 / 200000000000000000 : ℚ), (278750000000000019 / 400000000000000000 : ℚ)⟩
  r := (50907504932161 / 100000000000000 : ℚ)
  w := (6767859873653 / 5000000000000 : ℚ)
  center := (557450000000000033 / 800000000000000000 : ℚ)
  supportValue := (2900425490861163 / 10000000000000000 : ℚ)
  supportSlope := (-9506650605945071 / 10000000000000000 : ℚ)
  oldCenter := (2900425490861163 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1618
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730, piece_731]
}

noncomputable def cell_12196 : Cell := { cellDefaults with
  domain := ⟨(278750000000000019 / 400000000000000000 : ℚ), (34850000000000003 / 50000000000000000 : ℚ)⟩
  r := (50907504932161 / 100000000000000 : ℚ)
  w := (6767859873653 / 5000000000000 : ℚ)
  center := (557550000000000043 / 800000000000000000 : ℚ)
  supportValue := (724808674396559 / 2500000000000000 : ℚ)
  supportSlope := (-9511007358237337 / 10000000000000000 : ℚ)
  oldCenter := (724808674396559 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1618
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730]
}

noncomputable def cell_12197 : Cell := { cellDefaults with
  domain := ⟨(34850000000000003 / 50000000000000000 : ℚ), (278850000000000019 / 400000000000000000 : ℚ)⟩
  r := (12721357641411 / 25000000000000 : ℚ)
  w := (13534320858509 / 10000000000000 : ℚ)
  center := (557650000000000043 / 800000000000000000 : ℚ)
  supportValue := (45318342418019 / 156250000000000 : ℚ)
  supportSlope := (-9502970171039021 / 10000000000000000 : ℚ)
  oldCenter := (45318342418019 / 156250000000000 : ℚ)
  newCoefficients := coefficients_1619
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730, piece_731]
}

noncomputable def cell_12198 : Cell := { cellDefaults with
  domain := ⟨(278850000000000019 / 400000000000000000 : ℚ), (139450000000000007 / 200000000000000000 : ℚ)⟩
  r := (12721357641411 / 25000000000000 : ℚ)
  w := (13534320858509 / 10000000000000 : ℚ)
  center := (557750000000000033 / 800000000000000000 : ℚ)
  supportValue := (579836716353177 / 2000000000000000 : ℚ)
  supportSlope := (-9506570500033957 / 10000000000000000 : ℚ)
  oldCenter := (579836716353177 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1619
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730]
}

noncomputable def cell_12199 : Cell := { cellDefaults with
  domain := ⟨(139450000000000007 / 200000000000000000 : ℚ), (278950000000000009 / 400000000000000000 : ℚ)⟩
  r := (12721357641411 / 25000000000000 : ℚ)
  w := (13534320858509 / 10000000000000 : ℚ)
  center := (557850000000000023 / 800000000000000000 : ℚ)
  supportValue := (14489979612248813 / 50000000000000000 : ℚ)
  supportSlope := (-2373996070799371 / 2500000000000000 : ℚ)
  oldCenter := (14489979612248813 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1619
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730]
}

theorem check_12150 : cell_12150.check = true := by
  decide +kernel

theorem check_12151 : cell_12151.check = true := by
  decide +kernel

theorem check_12152 : cell_12152.check = true := by
  decide +kernel

theorem check_12153 : cell_12153.check = true := by
  decide +kernel

theorem check_12154 : cell_12154.check = true := by
  decide +kernel

theorem check_12155 : cell_12155.check = true := by
  decide +kernel

theorem check_12156 : cell_12156.check = true := by
  decide +kernel

theorem check_12157 : cell_12157.check = true := by
  decide +kernel

theorem check_12158 : cell_12158.check = true := by
  decide +kernel

theorem check_12159 : cell_12159.check = true := by
  decide +kernel

theorem check_12160 : cell_12160.check = true := by
  decide +kernel

theorem check_12161 : cell_12161.check = true := by
  decide +kernel

theorem check_12162 : cell_12162.check = true := by
  decide +kernel

theorem check_12163 : cell_12163.check = true := by
  decide +kernel

theorem check_12164 : cell_12164.check = true := by
  decide +kernel

theorem check_12165 : cell_12165.check = true := by
  decide +kernel

theorem check_12166 : cell_12166.check = true := by
  decide +kernel

theorem check_12167 : cell_12167.check = true := by
  decide +kernel

theorem check_12168 : cell_12168.check = true := by
  decide +kernel

theorem check_12169 : cell_12169.check = true := by
  decide +kernel

theorem check_12170 : cell_12170.check = true := by
  decide +kernel

theorem check_12171 : cell_12171.check = true := by
  decide +kernel

theorem check_12172 : cell_12172.check = true := by
  decide +kernel

theorem check_12173 : cell_12173.check = true := by
  decide +kernel

theorem check_12174 : cell_12174.check = true := by
  decide +kernel

theorem check_12175 : cell_12175.check = true := by
  decide +kernel

theorem check_12176 : cell_12176.check = true := by
  decide +kernel

theorem check_12177 : cell_12177.check = true := by
  decide +kernel

theorem check_12178 : cell_12178.check = true := by
  decide +kernel

theorem check_12179 : cell_12179.check = true := by
  decide +kernel

theorem check_12180 : cell_12180.check = true := by
  decide +kernel

theorem check_12181 : cell_12181.check = true := by
  decide +kernel

theorem check_12182 : cell_12182.check = true := by
  decide +kernel

theorem check_12183 : cell_12183.check = true := by
  decide +kernel

theorem check_12184 : cell_12184.check = true := by
  decide +kernel

theorem check_12185 : cell_12185.check = true := by
  decide +kernel

theorem check_12186 : cell_12186.check = true := by
  decide +kernel

theorem check_12187 : cell_12187.check = true := by
  decide +kernel

theorem check_12188 : cell_12188.check = true := by
  decide +kernel

theorem check_12189 : cell_12189.check = true := by
  decide +kernel

theorem check_12190 : cell_12190.check = true := by
  decide +kernel

theorem check_12191 : cell_12191.check = true := by
  decide +kernel

theorem check_12192 : cell_12192.check = true := by
  decide +kernel

theorem check_12193 : cell_12193.check = true := by
  decide +kernel

theorem check_12194 : cell_12194.check = true := by
  decide +kernel

theorem check_12195 : cell_12195.check = true := by
  decide +kernel

theorem check_12196 : cell_12196.check = true := by
  decide +kernel

theorem check_12197 : cell_12197.check = true := by
  decide +kernel

theorem check_12198 : cell_12198.check = true := by
  decide +kernel

theorem check_12199 : cell_12199.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12150, cell_12151, cell_12152, cell_12153, cell_12154, cell_12155, cell_12156, cell_12157, cell_12158, cell_12159, cell_12160, cell_12161, cell_12162, cell_12163, cell_12164, cell_12165, cell_12166, cell_12167, cell_12168, cell_12169, cell_12170, cell_12171, cell_12172, cell_12173, cell_12174, cell_12175, cell_12176, cell_12177, cell_12178, cell_12179, cell_12180, cell_12181, cell_12182, cell_12183, cell_12184, cell_12185, cell_12186, cell_12187, cell_12188, cell_12189, cell_12190, cell_12191, cell_12192, cell_12193, cell_12194, cell_12195, cell_12196, cell_12197, cell_12198, cell_12199]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12150, check_12151, check_12152, check_12153, check_12154, check_12155, check_12156, check_12157, check_12158, check_12159, check_12160, check_12161, check_12162, check_12163, check_12164, check_12165, check_12166, check_12167, check_12168, check_12169, check_12170, check_12171, check_12172, check_12173, check_12174, check_12175, check_12176, check_12177, check_12178, check_12179, check_12180, check_12181, check_12182, check_12183, check_12184, check_12185, check_12186, check_12187, check_12188, check_12189, check_12190, check_12191, check_12192, check_12193, check_12194, check_12195, check_12196, check_12197, check_12198, check_12199, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0243

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0243
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0243
open AnalyticBounds.ExpressionCertificate

theorem linked_12150 : Linked cell_12150 pieces := by
  link_source cell_12150 with piece_1606 using piece_1606_mem, piece_737_mem

theorem linked_12151 : Linked cell_12151 pieces := by
  link_source cell_12151 with piece_1606 using piece_1606_mem, piece_737_mem

theorem linked_12152 : Linked cell_12152 pieces := by
  link_source cell_12152 with piece_1606 using piece_1606_mem, piece_737_mem

theorem linked_12153 : Linked cell_12153 pieces := by
  link_source cell_12153 with piece_1607 using piece_1607_mem, piece_737_mem

theorem linked_12154 : Linked cell_12154 pieces := by
  link_source cell_12154 with piece_1607 using piece_1607_mem, piece_737_mem

theorem linked_12155 : Linked cell_12155 pieces := by
  link_source cell_12155 with piece_1607 using piece_1607_mem, ⟨piece_736_mem, piece_737_mem⟩

theorem linked_12156 : Linked cell_12156 pieces := by
  link_source cell_12156 with piece_1607 using piece_1607_mem, piece_736_mem

theorem linked_12157 : Linked cell_12157 pieces := by
  link_source cell_12157 with piece_1608 using piece_1608_mem, ⟨piece_736_mem, piece_737_mem⟩

theorem linked_12158 : Linked cell_12158 pieces := by
  link_source cell_12158 with piece_1608 using piece_1608_mem, piece_736_mem

theorem linked_12159 : Linked cell_12159 pieces := by
  link_source cell_12159 with piece_1608 using piece_1608_mem, piece_736_mem

theorem linked_12160 : Linked cell_12160 pieces := by
  link_source cell_12160 with piece_1608 using piece_1608_mem, ⟨piece_735_mem, piece_736_mem⟩

theorem linked_12161 : Linked cell_12161 pieces := by
  link_source cell_12161 with piece_1609 using piece_1609_mem, piece_736_mem

theorem linked_12162 : Linked cell_12162 pieces := by
  link_source cell_12162 with piece_1609 using piece_1609_mem, ⟨piece_735_mem, piece_736_mem⟩

theorem linked_12163 : Linked cell_12163 pieces := by
  link_source cell_12163 with piece_1609 using piece_1609_mem, ⟨piece_734_mem, piece_735_mem⟩

theorem linked_12164 : Linked cell_12164 pieces := by
  link_source cell_12164 with piece_1609 using piece_1609_mem, piece_734_mem

theorem linked_12165 : Linked cell_12165 pieces := by
  link_source cell_12165 with piece_1610 using piece_1610_mem, ⟨piece_734_mem, piece_735_mem⟩

theorem linked_12166 : Linked cell_12166 pieces := by
  link_source cell_12166 with piece_1610 using piece_1610_mem, piece_734_mem

theorem linked_12167 : Linked cell_12167 pieces := by
  link_source cell_12167 with piece_1610 using piece_1610_mem, piece_734_mem

theorem linked_12168 : Linked cell_12168 pieces := by
  link_source cell_12168 with piece_1610 using piece_1610_mem, piece_734_mem

theorem linked_12169 : Linked cell_12169 pieces := by
  link_source cell_12169 with piece_1611 using piece_1611_mem, piece_734_mem

theorem linked_12170 : Linked cell_12170 pieces := by
  link_source cell_12170 with piece_1611 using piece_1611_mem, piece_734_mem

theorem linked_12171 : Linked cell_12171 pieces := by
  link_source cell_12171 with piece_1611 using piece_1611_mem, ⟨piece_733_mem, piece_734_mem⟩

theorem linked_12172 : Linked cell_12172 pieces := by
  link_source cell_12172 with piece_1611 using piece_1611_mem, piece_733_mem

theorem linked_12173 : Linked cell_12173 pieces := by
  link_source cell_12173 with piece_1612 using piece_1612_mem, ⟨piece_733_mem, piece_734_mem⟩

theorem linked_12174 : Linked cell_12174 pieces := by
  link_source cell_12174 with piece_1612 using piece_1612_mem, piece_733_mem

theorem linked_12175 : Linked cell_12175 pieces := by
  link_source cell_12175 with piece_1612 using piece_1612_mem, piece_733_mem

theorem linked_12176 : Linked cell_12176 pieces := by
  link_source cell_12176 with piece_1612 using piece_1612_mem, piece_733_mem

theorem linked_12177 : Linked cell_12177 pieces := by
  link_source cell_12177 with piece_1613 using piece_1613_mem, piece_733_mem

theorem linked_12178 : Linked cell_12178 pieces := by
  link_source cell_12178 with piece_1613 using piece_1613_mem, piece_733_mem

theorem linked_12179 : Linked cell_12179 pieces := by
  link_source cell_12179 with piece_1613 using piece_1613_mem, ⟨piece_732_mem, piece_733_mem⟩

theorem linked_12180 : Linked cell_12180 pieces := by
  link_source cell_12180 with piece_1613 using piece_1613_mem, piece_732_mem

theorem linked_12181 : Linked cell_12181 pieces := by
  link_source cell_12181 with piece_1614 using piece_1614_mem, ⟨piece_732_mem, piece_733_mem⟩

theorem linked_12182 : Linked cell_12182 pieces := by
  link_source cell_12182 with piece_1614 using piece_1614_mem, piece_732_mem

theorem linked_12183 : Linked cell_12183 pieces := by
  link_source cell_12183 with piece_1614 using piece_1614_mem, piece_732_mem

theorem linked_12184 : Linked cell_12184 pieces := by
  link_source cell_12184 with piece_1614 using piece_1614_mem, piece_732_mem

theorem linked_12185 : Linked cell_12185 pieces := by
  link_source cell_12185 with piece_1615 using piece_1615_mem, piece_732_mem

theorem linked_12186 : Linked cell_12186 pieces := by
  link_source cell_12186 with piece_1615 using piece_1615_mem, piece_732_mem

theorem linked_12187 : Linked cell_12187 pieces := by
  link_source cell_12187 with piece_1616 using piece_1616_mem, ⟨piece_731_mem, piece_732_mem⟩

theorem linked_12188 : Linked cell_12188 pieces := by
  link_source cell_12188 with piece_1616 using piece_1616_mem, piece_731_mem

theorem linked_12189 : Linked cell_12189 pieces := by
  link_source cell_12189 with piece_1617 using piece_1617_mem, ⟨piece_731_mem, piece_732_mem⟩

theorem linked_12190 : Linked cell_12190 pieces := by
  link_source cell_12190 with piece_1617 using piece_1617_mem, piece_731_mem

theorem linked_12191 : Linked cell_12191 pieces := by
  link_source cell_12191 with piece_1617 using piece_1617_mem, piece_731_mem

theorem linked_12192 : Linked cell_12192 pieces := by
  link_source cell_12192 with piece_1617 using piece_1617_mem, piece_731_mem

theorem linked_12193 : Linked cell_12193 pieces := by
  link_source cell_12193 with piece_1618 using piece_1618_mem, piece_731_mem

theorem linked_12194 : Linked cell_12194 pieces := by
  link_source cell_12194 with piece_1618 using piece_1618_mem, piece_731_mem

theorem linked_12195 : Linked cell_12195 pieces := by
  link_source cell_12195 with piece_1618 using piece_1618_mem, ⟨piece_730_mem, piece_731_mem⟩

theorem linked_12196 : Linked cell_12196 pieces := by
  link_source cell_12196 with piece_1618 using piece_1618_mem, piece_730_mem

theorem linked_12197 : Linked cell_12197 pieces := by
  link_source cell_12197 with piece_1619 using piece_1619_mem, ⟨piece_730_mem, piece_731_mem⟩

theorem linked_12198 : Linked cell_12198 pieces := by
  link_source cell_12198 with piece_1619 using piece_1619_mem, piece_730_mem

theorem linked_12199 : Linked cell_12199 pieces := by
  link_source cell_12199 with piece_1619 using piece_1619_mem, piece_730_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0243.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0243.cells,List.forall_mem_cons]
  exact ⟨linked_12150, linked_12151, linked_12152, linked_12153, linked_12154, linked_12155, linked_12156, linked_12157, linked_12158, linked_12159, linked_12160, linked_12161, linked_12162, linked_12163, linked_12164, linked_12165, linked_12166, linked_12167, linked_12168, linked_12169, linked_12170, linked_12171, linked_12172, linked_12173, linked_12174, linked_12175, linked_12176, linked_12177, linked_12178, linked_12179, linked_12180, linked_12181, linked_12182, linked_12183, linked_12184, linked_12185, linked_12186, linked_12187, linked_12188, linked_12189, linked_12190, linked_12191, linked_12192, linked_12193, linked_12194, linked_12195, linked_12196, linked_12197, linked_12198, linked_12199, by simp⟩

theorem covered : covers (138225000000000009 / 200000000000000000 : ℚ) (278950000000000009 / 400000000000000000 : ℚ)
    (SourceCertificates.Chunk0243.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0243
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0244
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(278950000000000009 / 400000000000000000 : ℚ), (69750000000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (50863380845057 / 100000000000000 : ℚ)
  w := (52863011093 / 39062500000 : ℚ)
  center := (557950000000000013 / 800000000000000000 : ℚ)
  supportValue := (2896809583559449 / 10000000000000000 : ℚ)
  supportSlope := (-9485443616600147 / 10000000000000000 : ℚ)
  oldCenter := (2896809583559449 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1620
  oldLo := (28900000000000003 / 100000000000000000 : ℚ)
  oldHi := (7237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_729]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12200 : Cell := { cellDefaults with
  r := (12721357641411 / 25000000000000 : ℚ)
  w := (13534320858509 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1619
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730]
}

noncomputable def cell_12201 : Cell := { cellDefaults with
  domain := ⟨(69750000000000001 / 100000000000000000 : ℚ), (279050000000000009 / 400000000000000000 : ℚ)⟩
  center := (558050000000000013 / 800000000000000000 : ℚ)
  supportValue := (14489715701225653 / 50000000000000000 : ℚ)
  supportSlope := (-9491544481655839 / 10000000000000000 : ℚ)
  oldCenter := (14489715701225653 / 50000000000000000 : ℚ)
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730]
}

noncomputable def cell_12202 : Cell := { cellDefaults with
  domain := ⟨(279050000000000009 / 400000000000000000 : ℚ), (139550000000000007 / 200000000000000000 : ℚ)⟩
  center := (558150000000000023 / 800000000000000000 : ℚ)
  supportValue := (1448378677824539 / 5000000000000000 : ℚ)
  supportSlope := (-9481014695013219 / 10000000000000000 : ℚ)
  oldCenter := (1448378677824539 / 5000000000000000 : ℚ)
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730]
}

noncomputable def cell_12203 : Cell := { cellDefaults with
  domain := ⟨(139550000000000007 / 200000000000000000 : ℚ), (279150000000000019 / 400000000000000000 : ℚ)⟩
  center := (558250000000000033 / 800000000000000000 : ℚ)
  supportValue := (723893727837253 / 2500000000000000 : ℚ)
  supportSlope := (-9470820337237503 / 10000000000000000 : ℚ)
  oldCenter := (723893727837253 / 2500000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_729, piece_730]
}

noncomputable def cell_12204 : Cell := { cellDefaults with
  domain := ⟨(279150000000000019 / 400000000000000000 : ℚ), (34900000000000003 / 50000000000000000 : ℚ)⟩
  center := (558350000000000043 / 800000000000000000 : ℚ)
  supportValue := (1447194299625141 / 5000000000000000 : ℚ)
  supportSlope := (-9477420137668109 / 10000000000000000 : ℚ)
  oldCenter := (1447194299625141 / 5000000000000000 : ℚ)
  oldPieces := [piece_729]
}

noncomputable def cell_12205 : Cell := { cellDefaults with
  domain := ⟨(34900000000000003 / 50000000000000000 : ℚ), (279250000000000019 / 400000000000000000 : ℚ)⟩
  r := (25420677976099 / 50000000000000 : ℚ)
  w := (2706310082987 / 2000000000000 : ℚ)
  center := (558450000000000043 / 800000000000000000 : ℚ)
  supportValue := (5791041744971931 / 20000000000000000 : ℚ)
  supportSlope := (-9467178193426187 / 10000000000000000 : ℚ)
  oldCenter := (5791041744971931 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1621
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_729, piece_730]
}

noncomputable def cell_12206 : Cell := { cellDefaults with
  domain := ⟨(279250000000000019 / 400000000000000000 : ℚ), (139650000000000007 / 200000000000000000 : ℚ)⟩
  r := (25420677976099 / 50000000000000 : ℚ)
  w := (2706310082987 / 2000000000000 : ℚ)
  center := (558550000000000033 / 800000000000000000 : ℚ)
  supportValue := (5788670031803499 / 20000000000000000 : ℚ)
  supportSlope := (-9472983917647563 / 10000000000000000 : ℚ)
  oldCenter := (5788670031803499 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1621
  oldPieces := [piece_729]
}

noncomputable def cell_12207 : Cell := { cellDefaults with
  domain := ⟨(139650000000000007 / 200000000000000000 : ℚ), (279350000000000009 / 400000000000000000 : ℚ)⟩
  r := (25420677976099 / 50000000000000 : ℚ)
  w := (2706310082987 / 2000000000000 : ℚ)
  center := (558650000000000023 / 800000000000000000 : ℚ)
  supportValue := (1157260620693777 / 4000000000000000 : ℚ)
  supportSlope := (-4731224223082837 / 5000000000000000 : ℚ)
  oldCenter := (1157260620693777 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1621
  oldPieces := [piece_729]
}

noncomputable def cell_12208 : Cell := { cellDefaults with
  domain := ⟨(279350000000000009 / 400000000000000000 : ℚ), (69850000000000001 / 100000000000000000 : ℚ)⟩
  r := (25420677976099 / 50000000000000 : ℚ)
  w := (2706310082987 / 2000000000000 : ℚ)
  center := (558750000000000013 / 800000000000000000 : ℚ)
  supportValue := (2891969401664361 / 10000000000000000 : ℚ)
  supportSlope := (-9451958292007013 / 10000000000000000 : ℚ)
  oldCenter := (2891969401664361 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1621
  oldPieces := [piece_729]
}

noncomputable def cell_12209 : Cell := { cellDefaults with
  domain := ⟨(69850000000000001 / 100000000000000000 : ℚ), (27945000000000001 / 40000000000000000 : ℚ)⟩
  r := (25409677904353 / 50000000000000 : ℚ)
  w := (2706035342191 / 2000000000000 : ℚ)
  center := (279425000000000007 / 400000000000000000 : ℚ)
  supportValue := (1446548335726689 / 5000000000000000 : ℚ)
  supportSlope := (-4729006120322553 / 5000000000000000 : ℚ)
  oldCenter := (1446548335726689 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1622
  oldPieces := [piece_729]
}

noncomputable def cell_12210 : Cell := { cellDefaults with
  domain := ⟨(27945000000000001 / 40000000000000000 : ℚ), (17468750000000001 / 25000000000000000 : ℚ)⟩
  r := (25409677904353 / 50000000000000 : ℚ)
  w := (2706035342191 / 2000000000000 : ℚ)
  center := (279475000000000013 / 400000000000000000 : ℚ)
  supportValue := (451861730503271 / 1562500000000000 : ℚ)
  supportSlope := (-2361883270076409 / 2500000000000000 : ℚ)
  oldCenter := (451861730503271 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1622
  oldPieces := [piece_729]
}

noncomputable def cell_12211 : Cell := { cellDefaults with
  domain := ⟨(17468750000000001 / 25000000000000000 : ℚ), (139775000000000011 / 200000000000000000 : ℚ)⟩
  r := (25409677904353 / 50000000000000 : ℚ)
  w := (2706035342191 / 2000000000000 : ℚ)
  center := (279525000000000019 / 400000000000000000 : ℚ)
  supportValue := (1445367393035139 / 5000000000000000 : ℚ)
  supportSlope := (-2359274715708343 / 2500000000000000 : ℚ)
  oldCenter := (1445367393035139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1622
  oldPieces := [piece_729]
}

noncomputable def cell_12212 : Cell := { cellDefaults with
  domain := ⟨(139775000000000011 / 200000000000000000 : ℚ), (69900000000000007 / 100000000000000000 : ℚ)⟩
  r := (25409677904353 / 50000000000000 : ℚ)
  w := (2706035342191 / 2000000000000 : ℚ)
  center := (11183000000000001 / 16000000000000000 : ℚ)
  supportValue := (2889557002704009 / 10000000000000000 : ℚ)
  supportSlope := (-377675572346047 / 400000000000000 : ℚ)
  oldCenter := (2889557002704009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1622
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728, piece_729]
}

noncomputable def cell_12213 : Cell := { cellDefaults with
  domain := ⟨(69900000000000007 / 100000000000000000 : ℚ), (139825000000000011 / 200000000000000000 : ℚ)⟩
  r := (12699345398553 / 25000000000000 : ℚ)
  w := (845550860919 / 625000000000 : ℚ)
  center := (11185000000000001 / 16000000000000000 : ℚ)
  supportValue := (28906783370935357 / 100000000000000000 : ℚ)
  supportSlope := (-1886533444601439 / 2000000000000000 : ℚ)
  oldCenter := (28906783370935357 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1623
  oldPieces := [piece_729]
}

noncomputable def cell_12214 : Cell := { cellDefaults with
  domain := ⟨(139825000000000011 / 200000000000000000 : ℚ), (17481250000000001 / 25000000000000000 : ℚ)⟩
  r := (12699345398553 / 25000000000000 : ℚ)
  w := (845550860919 / 625000000000 : ℚ)
  center := (279675000000000019 / 400000000000000000 : ℚ)
  supportValue := (28895010043640107 / 100000000000000000 : ℚ)
  supportSlope := (-9438281883965581 / 10000000000000000 : ℚ)
  oldCenter := (28895010043640107 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1623
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728, piece_729]
}

noncomputable def cell_12215 : Cell := { cellDefaults with
  domain := ⟨(17481250000000001 / 25000000000000000 : ℚ), (27975000000000001 / 40000000000000000 : ℚ)⟩
  r := (12699345398553 / 25000000000000 : ℚ)
  w := (845550860919 / 625000000000 : ℚ)
  center := (279725000000000013 / 400000000000000000 : ℚ)
  supportValue := (57766393811609 / 200000000000000 : ℚ)
  supportSlope := (-9429083670956537 / 10000000000000000 : ℚ)
  oldCenter := (57766393811609 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1623
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728]
}

noncomputable def cell_12216 : Cell := { cellDefaults with
  domain := ⟨(27975000000000001 / 40000000000000000 : ℚ), (69950000000000001 / 100000000000000000 : ℚ)⟩
  r := (12699345398553 / 25000000000000 : ℚ)
  w := (845550860919 / 625000000000 : ℚ)
  center := (279775000000000007 / 400000000000000000 : ℚ)
  supportValue := (14435708543392753 / 50000000000000000 : ℚ)
  supportSlope := (-37674529448073 / 40000000000000 : ℚ)
  oldCenter := (14435708543392753 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1623
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728]
}

noncomputable def cell_12217 : Cell := { cellDefaults with
  domain := ⟨(69950000000000001 / 100000000000000000 : ℚ), (27985000000000001 / 40000000000000000 : ℚ)⟩
  r := (12693857461817 / 25000000000000 : ℚ)
  w := (6763727988667 / 5000000000000 : ℚ)
  center := (279825000000000007 / 400000000000000000 : ℚ)
  supportValue := (2888262886655187 / 10000000000000000 : ℚ)
  supportSlope := (-376986070778739 / 400000000000000 : ℚ)
  oldCenter := (2888262886655187 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1624
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728]
}

noncomputable def cell_12218 : Cell := { cellDefaults with
  domain := ⟨(27985000000000001 / 40000000000000000 : ℚ), (17493750000000001 / 25000000000000000 : ℚ)⟩
  r := (12693857461817 / 25000000000000 : ℚ)
  w := (6763727988667 / 5000000000000 : ℚ)
  center := (279875000000000013 / 400000000000000000 : ℚ)
  supportValue := (1443542729028647 / 5000000000000000 : ℚ)
  supportSlope := (-9414211384334273 / 10000000000000000 : ℚ)
  oldCenter := (1443542729028647 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1624
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728]
}

noncomputable def cell_12219 : Cell := { cellDefaults with
  domain := ⟨(17493750000000001 / 25000000000000000 : ℚ), (139975000000000011 / 200000000000000000 : ℚ)⟩
  r := (12693857461817 / 25000000000000 : ℚ)
  w := (6763727988667 / 5000000000000 : ℚ)
  center := (279925000000000019 / 400000000000000000 : ℚ)
  supportValue := (57718186634057 / 200000000000000 : ℚ)
  supportSlope := (-4701907902648341 / 5000000000000000 : ℚ)
  oldCenter := (57718186634057 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1624
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728]
}

noncomputable def cell_12220 : Cell := { cellDefaults with
  domain := ⟨(139975000000000011 / 200000000000000000 : ℚ), (70000000000000007 / 100000000000000000 : ℚ)⟩
  r := (12693857461817 / 25000000000000 : ℚ)
  w := (6763727988667 / 5000000000000 : ℚ)
  center := (11199000000000001 / 16000000000000000 : ℚ)
  supportValue := (28847360295683333 / 100000000000000000 : ℚ)
  supportSlope := (-9406038522444797 / 10000000000000000 : ℚ)
  oldCenter := (28847360295683333 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1624
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727, piece_728]
}

noncomputable def cell_12221 : Cell := { cellDefaults with
  domain := ⟨(70000000000000007 / 100000000000000000 : ℚ), (140025000000000011 / 200000000000000000 : ℚ)⟩
  r := (3172094081077 / 6250000000000 : ℚ)
  w := (13526110934163 / 10000000000000 : ℚ)
  center := (11201000000000001 / 16000000000000000 : ℚ)
  supportValue := (721462622381547 / 2500000000000000 : ℚ)
  supportSlope := (-9399384904505997 / 10000000000000000 : ℚ)
  oldCenter := (721462622381547 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1625
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728]
}

noncomputable def cell_12222 : Cell := { cellDefaults with
  domain := ⟨(140025000000000011 / 200000000000000000 : ℚ), (17506250000000001 / 25000000000000000 : ℚ)⟩
  r := (3172094081077 / 6250000000000 : ℚ)
  w := (13526110934163 / 10000000000000 : ℚ)
  center := (280075000000000019 / 400000000000000000 : ℚ)
  supportValue := (5769355266113837 / 20000000000000000 : ℚ)
  supportSlope := (-9402470312213101 / 10000000000000000 : ℚ)
  oldCenter := (5769355266113837 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1625
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727, piece_728]
}

noncomputable def cell_12223 : Cell := { cellDefaults with
  domain := ⟨(17506250000000001 / 25000000000000000 : ℚ), (28015000000000001 / 40000000000000000 : ℚ)⟩
  r := (3172094081077 / 6250000000000 : ℚ)
  w := (13526110934163 / 10000000000000 : ℚ)
  center := (280125000000000013 / 400000000000000000 : ℚ)
  supportValue := (2883500474631343 / 10000000000000000 : ℚ)
  supportSlope := (-9395879443553373 / 10000000000000000 : ℚ)
  oldCenter := (2883500474631343 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1625
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727]
}

noncomputable def cell_12224 : Cell := { cellDefaults with
  domain := ⟨(28015000000000001 / 40000000000000000 : ℚ), (70050000000000001 / 100000000000000000 : ℚ)⟩
  r := (3172094081077 / 6250000000000 : ℚ)
  w := (13526110934163 / 10000000000000 : ℚ)
  center := (280175000000000007 / 400000000000000000 : ℚ)
  supportValue := (2882326641807513 / 10000000000000000 : ℚ)
  supportSlope := (-9385451357345491 / 10000000000000000 : ℚ)
  oldCenter := (2882326641807513 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1625
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727]
}

noncomputable def cell_12225 : Cell := { cellDefaults with
  domain := ⟨(70050000000000001 / 100000000000000000 : ℚ), (28025000000000001 / 40000000000000000 : ℚ)⟩
  r := (12682900884423 / 25000000000000 : ℚ)
  w := (13524770216271 / 10000000000000 : ℚ)
  center := (280225000000000007 / 400000000000000000 : ℚ)
  supportValue := (2883441382814739 / 10000000000000000 : ℚ)
  supportSlope := (-2347862053881651 / 2500000000000000 : ℚ)
  oldCenter := (2883441382814739 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1626
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727]
}

noncomputable def cell_12226 : Cell := { cellDefaults with
  domain := ⟨(28025000000000001 / 40000000000000000 : ℚ), (17518750000000001 / 25000000000000000 : ℚ)⟩
  r := (12682900884423 / 25000000000000 : ℚ)
  w := (13524770216271 / 10000000000000 : ℚ)
  center := (280275000000000013 / 400000000000000000 : ℚ)
  supportValue := (14411340516035717 / 50000000000000000 : ℚ)
  supportSlope := (-938103111037479 / 1000000000000000 : ℚ)
  oldCenter := (14411340516035717 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1626
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727]
}

noncomputable def cell_12227 : Cell := { cellDefaults with
  domain := ⟨(17518750000000001 / 25000000000000000 : ℚ), (140175000000000011 / 200000000000000000 : ℚ)⟩
  r := (12682900884423 / 25000000000000 : ℚ)
  w := (13524770216271 / 10000000000000 : ℚ)
  center := (280325000000000019 / 400000000000000000 : ℚ)
  supportValue := (5762192245867539 / 20000000000000000 : ℚ)
  supportSlope := (-2342664699716831 / 2500000000000000 : ℚ)
  oldCenter := (5762192245867539 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1626
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727]
}

noncomputable def cell_12228 : Cell := { cellDefaults with
  domain := ⟨(140175000000000011 / 200000000000000000 : ℚ), (70100000000000007 / 100000000000000000 : ℚ)⟩
  r := (12682900884423 / 25000000000000 : ℚ)
  w := (13524770216271 / 10000000000000 : ℚ)
  center := (11215000000000001 / 16000000000000000 : ℚ)
  supportValue := (2879927312794443 / 10000000000000000 : ℚ)
  supportSlope := (-9370088152679243 / 10000000000000000 : ℚ)
  oldCenter := (2879927312794443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1626
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726, piece_727]
}

noncomputable def cell_12229 : Cell := { cellDefaults with
  domain := ⟨(70100000000000007 / 100000000000000000 : ℚ), (140234078212290507 / 200000000000000000 : ℚ)⟩
  r := (2535486483349 / 5000000000000 : ℚ)
  w := (2704688846301 / 2000000000000 : ℚ)
  center := (280434078212290521 / 400000000000000000 : ℚ)
  supportValue := (14404120239297147 / 50000000000000000 : ℚ)
  supportSlope := (-468217530505807 / 500000000000000 : ℚ)
  oldCenter := (14404120239297147 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1627
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727]
}

noncomputable def cell_12230 : Cell := { cellDefaults with
  domain := ⟨(140234078212290507 / 200000000000000000 : ℚ), (280502234636871507 / 400000000000000000 : ℚ)⟩
  r := (2535486483349 / 5000000000000 : ℚ)
  w := (2704688846301 / 2000000000000 : ℚ)
  center := (560970391061452521 / 800000000000000000 : ℚ)
  supportValue := (143981366337237 / 500000000000000 : ℚ)
  supportSlope := (-4685284240493301 / 5000000000000000 : ℚ)
  oldCenter := (143981366337237 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1627
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726, piece_727]
}

noncomputable def cell_12231 : Cell := { cellDefaults with
  domain := ⟨(280502234636871507 / 400000000000000000 : ℚ), (140268156424581 / 200000000000000 : ℚ)⟩
  r := (2535486483349 / 5000000000000 : ℚ)
  w := (2704688846301 / 2000000000000 : ℚ)
  center := (561038547486033507 / 800000000000000000 : ℚ)
  supportValue := (719706809708973 / 2500000000000000 : ℚ)
  supportSlope := (-9363988281377433 / 10000000000000000 : ℚ)
  oldCenter := (719706809708973 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1627
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726]
}

noncomputable def cell_12232 : Cell := { cellDefaults with
  domain := ⟨(140268156424581 / 200000000000000 : ℚ), (70150000000000001 / 100000000000000000 : ℚ)⟩
  r := (2535486483349 / 5000000000000 : ℚ)
  w := (2704688846301 / 2000000000000 : ℚ)
  center := (140284078212290501 / 200000000000000000 : ℚ)
  supportValue := (2877685530802029 / 10000000000000000 : ℚ)
  supportSlope := (-1870770225051849 / 2000000000000000 : ℚ)
  oldCenter := (2877685530802029 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1628
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726]
}

noncomputable def cell_12233 : Cell := { cellDefaults with
  domain := ⟨(70150000000000001 / 100000000000000000 : ℚ), (28065000000000001 / 40000000000000000 : ℚ)⟩
  r := (50687875850569 / 100000000000000 : ℚ)
  w := (3380529701 / 2500000000 : ℚ)
  center := (280625000000000007 / 400000000000000000 : ℚ)
  supportValue := (575726462894339 / 2000000000000000 : ℚ)
  supportSlope := (-1169796874518207 / 1250000000000000 : ℚ)
  oldCenter := (575726462894339 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1629
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726]
}

noncomputable def cell_12234 : Cell := { cellDefaults with
  domain := ⟨(28065000000000001 / 40000000000000000 : ℚ), (17543750000000001 / 25000000000000000 : ℚ)⟩
  r := (50687875850569 / 100000000000000 : ℚ)
  w := (3380529701 / 2500000000 : ℚ)
  center := (280675000000000013 / 400000000000000000 : ℚ)
  supportValue := (575492633027969 / 2000000000000000 : ℚ)
  supportSlope := (-9348019855516243 / 10000000000000000 : ℚ)
  oldCenter := (575492633027969 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1629
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726]
}

noncomputable def cell_12235 : Cell := { cellDefaults with
  domain := ⟨(17543750000000001 / 25000000000000000 : ℚ), (140375000000000011 / 200000000000000000 : ℚ)⟩
  r := (50687875850569 / 100000000000000 : ℚ)
  w := (3380529701 / 2500000000 : ℚ)
  center := (280725000000000019 / 400000000000000000 : ℚ)
  supportValue := (28762953074171377 / 100000000000000000 : ℚ)
  supportSlope := (-4668854590725297 / 5000000000000000 : ℚ)
  oldCenter := (28762953074171377 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1629
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726]
}

noncomputable def cell_12236 : Cell := { cellDefaults with
  domain := ⟨(140375000000000011 / 200000000000000000 : ℚ), (70200000000000007 / 100000000000000000 : ℚ)⟩
  r := (50687875850569 / 100000000000000 : ℚ)
  w := (3380529701 / 2500000000 : ℚ)
  center := (11231000000000001 / 16000000000000000 : ℚ)
  supportValue := (2875130748353379 / 10000000000000000 : ℚ)
  supportSlope := (-4667085473241679 / 5000000000000000 : ℚ)
  oldCenter := (2875130748353379 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1629
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725, piece_726]
}

noncomputable def cell_12237 : Cell := { cellDefaults with
  domain := ⟨(70200000000000007 / 100000000000000000 : ℚ), (140425000000000011 / 200000000000000000 : ℚ)⟩
  r := (50666052854499 / 100000000000000 : ℚ)
  w := (13520813344171 / 10000000000000 : ℚ)
  center := (11233000000000001 / 16000000000000000 : ℚ)
  supportValue := (2876230785680037 / 10000000000000000 : ℚ)
  supportSlope := (-933327312081401 / 1000000000000000 : ℚ)
  oldCenter := (2876230785680037 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1630
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726]
}

noncomputable def cell_12238 : Cell := { cellDefaults with
  domain := ⟨(140425000000000011 / 200000000000000000 : ℚ), (17556250000000001 / 25000000000000000 : ℚ)⟩
  r := (50666052854499 / 100000000000000 : ℚ)
  w := (13520813344171 / 10000000000000 : ℚ)
  center := (280875000000000019 / 400000000000000000 : ℚ)
  supportValue := (1437533390195813 / 5000000000000000 : ℚ)
  supportSlope := (-466534302380917 / 500000000000000 : ℚ)
  oldCenter := (1437533390195813 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1630
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725, piece_726]
}

noncomputable def cell_12239 : Cell := { cellDefaults with
  domain := ⟨(17556250000000001 / 25000000000000000 : ℚ), (28095000000000001 / 40000000000000000 : ℚ)⟩
  r := (50666052854499 / 100000000000000 : ℚ)
  w := (13520813344171 / 10000000000000 : ℚ)
  center := (280925000000000013 / 400000000000000000 : ℚ)
  supportValue := (359237249865769 / 1250000000000000 : ℚ)
  supportSlope := (-9329912152155071 / 10000000000000000 : ℚ)
  oldCenter := (359237249865769 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1630
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725]
}

noncomputable def cell_12240 : Cell := { cellDefaults with
  domain := ⟨(28095000000000001 / 40000000000000000 : ℚ), (70250000000000001 / 100000000000000000 : ℚ)⟩
  r := (50666052854499 / 100000000000000 : ℚ)
  w := (13520813344171 / 10000000000000 : ℚ)
  center := (280975000000000007 / 400000000000000000 : ℚ)
  supportValue := (5745464812156561 / 20000000000000000 : ℚ)
  supportSlope := (-4659789483719149 / 5000000000000000 : ℚ)
  oldCenter := (5745464812156561 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1630
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725]
}

noncomputable def cell_12241 : Cell := { cellDefaults with
  domain := ⟨(70250000000000001 / 100000000000000000 : ℚ), (28105000000000001 / 40000000000000000 : ℚ)⟩
  r := (50644246672439 / 100000000000000 : ℚ)
  w := (13519502460831 / 10000000000000 : ℚ)
  center := (281025000000000007 / 400000000000000000 : ℚ)
  supportValue := (7184588696160539 / 25000000000000000 : ℚ)
  supportSlope := (-9325493165172053 / 10000000000000000 : ℚ)
  oldCenter := (7184588696160539 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1631
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725]
}

noncomputable def cell_12242 : Cell := { cellDefaults with
  domain := ⟨(28105000000000001 / 40000000000000000 : ℚ), (17568750000000001 / 25000000000000000 : ℚ)⟩
  r := (50644246672439 / 100000000000000 : ℚ)
  w := (13519502460831 / 10000000000000 : ℚ)
  center := (281075000000000013 / 400000000000000000 : ℚ)
  supportValue := (2872670437301459 / 10000000000000000 : ℚ)
  supportSlope := (-4657585488695989 / 5000000000000000 : ℚ)
  oldCenter := (2872670437301459 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1631
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725]
}

noncomputable def cell_12243 : Cell := { cellDefaults with
  domain := ⟨(17568750000000001 / 25000000000000000 : ℚ), (140575000000000011 / 200000000000000000 : ℚ)⟩
  r := (50644246672439 / 100000000000000 : ℚ)
  w := (13519502460831 / 10000000000000 : ℚ)
  center := (281125000000000019 / 400000000000000000 : ℚ)
  supportValue := (574301336726913 / 2000000000000000 : ℚ)
  supportSlope := (-1860978632585163 / 2000000000000000 : ℚ)
  oldCenter := (574301336726913 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1631
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725]
}

noncomputable def cell_12244 : Cell := { cellDefaults with
  domain := ⟨(140575000000000011 / 200000000000000000 : ℚ), (70300000000000007 / 100000000000000000 : ℚ)⟩
  r := (50644246672439 / 100000000000000 : ℚ)
  w := (13519502460831 / 10000000000000 : ℚ)
  center := (11247000000000001 / 16000000000000000 : ℚ)
  supportValue := (5740692442351647 / 20000000000000000 : ℚ)
  supportSlope := (-2324545751117567 / 2500000000000000 : ℚ)
  oldCenter := (5740692442351647 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1631
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724, piece_725]
}

noncomputable def cell_12245 : Cell := { cellDefaults with
  domain := ⟨(70300000000000007 / 100000000000000000 : ℚ), (140625000000000011 / 200000000000000000 : ℚ)⟩
  r := (10124494678621 / 20000000000000 : ℚ)
  w := (13518215865321 / 10000000000000 : ℚ)
  center := (11249000000000001 / 16000000000000000 : ℚ)
  supportValue := (358929947049469 / 1250000000000000 : ℚ)
  supportSlope := (-2325113932813151 / 2500000000000000 : ℚ)
  oldCenter := (358929947049469 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1632
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725]
}

noncomputable def cell_12246 : Cell := { cellDefaults with
  domain := ⟨(140625000000000011 / 200000000000000000 : ℚ), (17581250000000001 / 25000000000000000 : ℚ)⟩
  r := (10124494678621 / 20000000000000 : ℚ)
  w := (13518215865321 / 10000000000000 : ℚ)
  center := (281275000000000019 / 400000000000000000 : ℚ)
  supportValue := (358784958484631 / 1250000000000000 : ℚ)
  supportSlope := (-4647369611606169 / 5000000000000000 : ℚ)
  oldCenter := (358784958484631 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1632
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724, piece_725]
}

noncomputable def cell_12247 : Cell := { cellDefaults with
  domain := ⟨(17581250000000001 / 25000000000000000 : ℚ), (28135000000000001 / 40000000000000000 : ℚ)⟩
  r := (10124494678621 / 20000000000000 : ℚ)
  w := (13518215865321 / 10000000000000 : ℚ)
  center := (281325000000000013 / 400000000000000000 : ℚ)
  supportValue := (1434557690093327 / 5000000000000000 : ℚ)
  supportSlope := (-4648587390146399 / 5000000000000000 : ℚ)
  oldCenter := (1434557690093327 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1632
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724]
}

noncomputable def cell_12248 : Cell := { cellDefaults with
  domain := ⟨(28135000000000001 / 40000000000000000 : ℚ), (70350000000000001 / 100000000000000000 : ℚ)⟩
  r := (10124494678621 / 20000000000000 : ℚ)
  w := (13518215865321 / 10000000000000 : ℚ)
  center := (281375000000000007 / 400000000000000000 : ℚ)
  supportValue := (286795387739111 / 1000000000000000 : ℚ)
  supportSlope := (-4643437748095837 / 5000000000000000 : ℚ)
  oldCenter := (286795387739111 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1632
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724]
}

noncomputable def cell_12249 : Cell := { cellDefaults with
  domain := ⟨(70350000000000001 / 100000000000000000 : ℚ), (28145000000000001 / 40000000000000000 : ℚ)⟩
  r := (6325089510471 / 12500000000000 : ℚ)
  w := (84480760141 / 62500000000 : ℚ)
  center := (281425000000000007 / 400000000000000000 : ℚ)
  supportValue := (28690507290190037 / 100000000000000000 : ℚ)
  supportSlope := (-9292757807263237 / 10000000000000000 : ℚ)
  oldCenter := (28690507290190037 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1633
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724]
}

theorem check_12200 : cell_12200.check = true := by
  decide +kernel

theorem check_12201 : cell_12201.check = true := by
  decide +kernel

theorem check_12202 : cell_12202.check = true := by
  decide +kernel

theorem check_12203 : cell_12203.check = true := by
  decide +kernel

theorem check_12204 : cell_12204.check = true := by
  decide +kernel

theorem check_12205 : cell_12205.check = true := by
  decide +kernel

theorem check_12206 : cell_12206.check = true := by
  decide +kernel

theorem check_12207 : cell_12207.check = true := by
  decide +kernel

theorem check_12208 : cell_12208.check = true := by
  decide +kernel

theorem check_12209 : cell_12209.check = true := by
  decide +kernel

theorem check_12210 : cell_12210.check = true := by
  decide +kernel

theorem check_12211 : cell_12211.check = true := by
  decide +kernel

theorem check_12212 : cell_12212.check = true := by
  decide +kernel

theorem check_12213 : cell_12213.check = true := by
  decide +kernel

theorem check_12214 : cell_12214.check = true := by
  decide +kernel

theorem check_12215 : cell_12215.check = true := by
  decide +kernel

theorem check_12216 : cell_12216.check = true := by
  decide +kernel

theorem check_12217 : cell_12217.check = true := by
  decide +kernel

theorem check_12218 : cell_12218.check = true := by
  decide +kernel

theorem check_12219 : cell_12219.check = true := by
  decide +kernel

theorem check_12220 : cell_12220.check = true := by
  decide +kernel

theorem check_12221 : cell_12221.check = true := by
  decide +kernel

theorem check_12222 : cell_12222.check = true := by
  decide +kernel

theorem check_12223 : cell_12223.check = true := by
  decide +kernel

theorem check_12224 : cell_12224.check = true := by
  decide +kernel

theorem check_12225 : cell_12225.check = true := by
  decide +kernel

theorem check_12226 : cell_12226.check = true := by
  decide +kernel

theorem check_12227 : cell_12227.check = true := by
  decide +kernel

theorem check_12228 : cell_12228.check = true := by
  decide +kernel

theorem check_12229 : cell_12229.check = true := by
  decide +kernel

theorem check_12230 : cell_12230.check = true := by
  decide +kernel

theorem check_12231 : cell_12231.check = true := by
  decide +kernel

theorem check_12232 : cell_12232.check = true := by
  decide +kernel

theorem check_12233 : cell_12233.check = true := by
  decide +kernel

theorem check_12234 : cell_12234.check = true := by
  decide +kernel

theorem check_12235 : cell_12235.check = true := by
  decide +kernel

theorem check_12236 : cell_12236.check = true := by
  decide +kernel

theorem check_12237 : cell_12237.check = true := by
  decide +kernel

theorem check_12238 : cell_12238.check = true := by
  decide +kernel

theorem check_12239 : cell_12239.check = true := by
  decide +kernel

theorem check_12240 : cell_12240.check = true := by
  decide +kernel

theorem check_12241 : cell_12241.check = true := by
  decide +kernel

theorem check_12242 : cell_12242.check = true := by
  decide +kernel

theorem check_12243 : cell_12243.check = true := by
  decide +kernel

theorem check_12244 : cell_12244.check = true := by
  decide +kernel

theorem check_12245 : cell_12245.check = true := by
  decide +kernel

theorem check_12246 : cell_12246.check = true := by
  decide +kernel

theorem check_12247 : cell_12247.check = true := by
  decide +kernel

theorem check_12248 : cell_12248.check = true := by
  decide +kernel

theorem check_12249 : cell_12249.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12200, cell_12201, cell_12202, cell_12203, cell_12204, cell_12205, cell_12206, cell_12207, cell_12208, cell_12209, cell_12210, cell_12211, cell_12212, cell_12213, cell_12214, cell_12215, cell_12216, cell_12217, cell_12218, cell_12219, cell_12220, cell_12221, cell_12222, cell_12223, cell_12224, cell_12225, cell_12226, cell_12227, cell_12228, cell_12229, cell_12230, cell_12231, cell_12232, cell_12233, cell_12234, cell_12235, cell_12236, cell_12237, cell_12238, cell_12239, cell_12240, cell_12241, cell_12242, cell_12243, cell_12244, cell_12245, cell_12246, cell_12247, cell_12248, cell_12249]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12200, check_12201, check_12202, check_12203, check_12204, check_12205, check_12206, check_12207, check_12208, check_12209, check_12210, check_12211, check_12212, check_12213, check_12214, check_12215, check_12216, check_12217, check_12218, check_12219, check_12220, check_12221, check_12222, check_12223, check_12224, check_12225, check_12226, check_12227, check_12228, check_12229, check_12230, check_12231, check_12232, check_12233, check_12234, check_12235, check_12236, check_12237, check_12238, check_12239, check_12240, check_12241, check_12242, check_12243, check_12244, check_12245, check_12246, check_12247, check_12248, check_12249, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0244

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0244
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0244
open AnalyticBounds.ExpressionCertificate

theorem linked_12200 : Linked cell_12200 pieces := by
  link_source cell_12200 with piece_1619 using piece_1619_mem, piece_730_mem

theorem linked_12201 : Linked cell_12201 pieces := by
  link_source cell_12201 with piece_1620 using piece_1620_mem, piece_730_mem

theorem linked_12202 : Linked cell_12202 pieces := by
  link_source cell_12202 with piece_1620 using piece_1620_mem, piece_730_mem

theorem linked_12203 : Linked cell_12203 pieces := by
  link_source cell_12203 with piece_1620 using piece_1620_mem, ⟨piece_729_mem, piece_730_mem⟩

theorem linked_12204 : Linked cell_12204 pieces := by
  link_source cell_12204 with piece_1620 using piece_1620_mem, piece_729_mem

theorem linked_12205 : Linked cell_12205 pieces := by
  link_source cell_12205 with piece_1621 using piece_1621_mem, ⟨piece_729_mem, piece_730_mem⟩

theorem linked_12206 : Linked cell_12206 pieces := by
  link_source cell_12206 with piece_1621 using piece_1621_mem, piece_729_mem

theorem linked_12207 : Linked cell_12207 pieces := by
  link_source cell_12207 with piece_1621 using piece_1621_mem, piece_729_mem

theorem linked_12208 : Linked cell_12208 pieces := by
  link_source cell_12208 with piece_1621 using piece_1621_mem, piece_729_mem

theorem linked_12209 : Linked cell_12209 pieces := by
  link_source cell_12209 with piece_1622 using piece_1622_mem, piece_729_mem

theorem linked_12210 : Linked cell_12210 pieces := by
  link_source cell_12210 with piece_1622 using piece_1622_mem, piece_729_mem

theorem linked_12211 : Linked cell_12211 pieces := by
  link_source cell_12211 with piece_1622 using piece_1622_mem, piece_729_mem

theorem linked_12212 : Linked cell_12212 pieces := by
  link_source cell_12212 with piece_1622 using piece_1622_mem, ⟨piece_728_mem, piece_729_mem⟩

theorem linked_12213 : Linked cell_12213 pieces := by
  link_source cell_12213 with piece_1623 using piece_1623_mem, piece_729_mem

theorem linked_12214 : Linked cell_12214 pieces := by
  link_source cell_12214 with piece_1623 using piece_1623_mem, ⟨piece_728_mem, piece_729_mem⟩

theorem linked_12215 : Linked cell_12215 pieces := by
  link_source cell_12215 with piece_1623 using piece_1623_mem, piece_728_mem

theorem linked_12216 : Linked cell_12216 pieces := by
  link_source cell_12216 with piece_1623 using piece_1623_mem, piece_728_mem

theorem linked_12217 : Linked cell_12217 pieces := by
  link_source cell_12217 with piece_1624 using piece_1624_mem, piece_728_mem

theorem linked_12218 : Linked cell_12218 pieces := by
  link_source cell_12218 with piece_1624 using piece_1624_mem, piece_728_mem

theorem linked_12219 : Linked cell_12219 pieces := by
  link_source cell_12219 with piece_1624 using piece_1624_mem, piece_728_mem

theorem linked_12220 : Linked cell_12220 pieces := by
  link_source cell_12220 with piece_1624 using piece_1624_mem, ⟨piece_727_mem, piece_728_mem⟩

theorem linked_12221 : Linked cell_12221 pieces := by
  link_source cell_12221 with piece_1625 using piece_1625_mem, piece_728_mem

theorem linked_12222 : Linked cell_12222 pieces := by
  link_source cell_12222 with piece_1625 using piece_1625_mem, ⟨piece_727_mem, piece_728_mem⟩

theorem linked_12223 : Linked cell_12223 pieces := by
  link_source cell_12223 with piece_1625 using piece_1625_mem, piece_727_mem

theorem linked_12224 : Linked cell_12224 pieces := by
  link_source cell_12224 with piece_1625 using piece_1625_mem, piece_727_mem

theorem linked_12225 : Linked cell_12225 pieces := by
  link_source cell_12225 with piece_1626 using piece_1626_mem, piece_727_mem

theorem linked_12226 : Linked cell_12226 pieces := by
  link_source cell_12226 with piece_1626 using piece_1626_mem, piece_727_mem

theorem linked_12227 : Linked cell_12227 pieces := by
  link_source cell_12227 with piece_1626 using piece_1626_mem, piece_727_mem

theorem linked_12228 : Linked cell_12228 pieces := by
  link_source cell_12228 with piece_1626 using piece_1626_mem, ⟨piece_726_mem, piece_727_mem⟩

theorem linked_12229 : Linked cell_12229 pieces := by
  link_source cell_12229 with piece_1627 using piece_1627_mem, piece_727_mem

theorem linked_12230 : Linked cell_12230 pieces := by
  link_source cell_12230 with piece_1627 using piece_1627_mem, ⟨piece_726_mem, piece_727_mem⟩

theorem linked_12231 : Linked cell_12231 pieces := by
  link_source cell_12231 with piece_1627 using piece_1627_mem, piece_726_mem

theorem linked_12232 : Linked cell_12232 pieces := by
  link_source cell_12232 with piece_1628 using piece_1628_mem, piece_726_mem

theorem linked_12233 : Linked cell_12233 pieces := by
  link_source cell_12233 with piece_1629 using piece_1629_mem, piece_726_mem

theorem linked_12234 : Linked cell_12234 pieces := by
  link_source cell_12234 with piece_1629 using piece_1629_mem, piece_726_mem

theorem linked_12235 : Linked cell_12235 pieces := by
  link_source cell_12235 with piece_1629 using piece_1629_mem, piece_726_mem

theorem linked_12236 : Linked cell_12236 pieces := by
  link_source cell_12236 with piece_1629 using piece_1629_mem, ⟨piece_725_mem, piece_726_mem⟩

theorem linked_12237 : Linked cell_12237 pieces := by
  link_source cell_12237 with piece_1630 using piece_1630_mem, piece_726_mem

theorem linked_12238 : Linked cell_12238 pieces := by
  link_source cell_12238 with piece_1630 using piece_1630_mem, ⟨piece_725_mem, piece_726_mem⟩

theorem linked_12239 : Linked cell_12239 pieces := by
  link_source cell_12239 with piece_1630 using piece_1630_mem, piece_725_mem

theorem linked_12240 : Linked cell_12240 pieces := by
  link_source cell_12240 with piece_1630 using piece_1630_mem, piece_725_mem

theorem linked_12241 : Linked cell_12241 pieces := by
  link_source cell_12241 with piece_1631 using piece_1631_mem, piece_725_mem

theorem linked_12242 : Linked cell_12242 pieces := by
  link_source cell_12242 with piece_1631 using piece_1631_mem, piece_725_mem

theorem linked_12243 : Linked cell_12243 pieces := by
  link_source cell_12243 with piece_1631 using piece_1631_mem, piece_725_mem

theorem linked_12244 : Linked cell_12244 pieces := by
  link_source cell_12244 with piece_1631 using piece_1631_mem, ⟨piece_724_mem, piece_725_mem⟩

theorem linked_12245 : Linked cell_12245 pieces := by
  link_source cell_12245 with piece_1632 using piece_1632_mem, piece_725_mem

theorem linked_12246 : Linked cell_12246 pieces := by
  link_source cell_12246 with piece_1632 using piece_1632_mem, ⟨piece_724_mem, piece_725_mem⟩

theorem linked_12247 : Linked cell_12247 pieces := by
  link_source cell_12247 with piece_1632 using piece_1632_mem, piece_724_mem

theorem linked_12248 : Linked cell_12248 pieces := by
  link_source cell_12248 with piece_1632 using piece_1632_mem, piece_724_mem

theorem linked_12249 : Linked cell_12249 pieces := by
  link_source cell_12249 with piece_1633 using piece_1633_mem, piece_724_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0244.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0244.cells,List.forall_mem_cons]
  exact ⟨linked_12200, linked_12201, linked_12202, linked_12203, linked_12204, linked_12205, linked_12206, linked_12207, linked_12208, linked_12209, linked_12210, linked_12211, linked_12212, linked_12213, linked_12214, linked_12215, linked_12216, linked_12217, linked_12218, linked_12219, linked_12220, linked_12221, linked_12222, linked_12223, linked_12224, linked_12225, linked_12226, linked_12227, linked_12228, linked_12229, linked_12230, linked_12231, linked_12232, linked_12233, linked_12234, linked_12235, linked_12236, linked_12237, linked_12238, linked_12239, linked_12240, linked_12241, linked_12242, linked_12243, linked_12244, linked_12245, linked_12246, linked_12247, linked_12248, linked_12249, by simp⟩

theorem covered : covers (278950000000000009 / 400000000000000000 : ℚ) (28145000000000001 / 40000000000000000 : ℚ)
    (SourceCertificates.Chunk0244.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0244
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0245
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(28145000000000001 / 40000000000000000 : ℚ), (17593750000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (50578993045931 / 100000000000000 : ℚ)
  w := (2703130584333 / 2000000000000 : ℚ)
  center := (281475000000000013 / 400000000000000000 : ℚ)
  supportValue := (1433944888826539 / 5000000000000000 : ℚ)
  supportSlope := (-4641234790007663 / 5000000000000000 : ℚ)
  oldCenter := (1433944888826539 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1634
  oldLo := (28600000000000003 / 100000000000000000 : ℚ)
  oldHi := (28650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_722]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12250 : Cell := { cellDefaults with
  r := (6325089510471 / 12500000000000 : ℚ)
  w := (84480760141 / 62500000000 : ℚ)
  newCoefficients := coefficients_1633
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724]
}

noncomputable def cell_12251 : Cell := { cellDefaults with
  domain := ⟨(17593750000000001 / 25000000000000000 : ℚ), (140775000000000011 / 200000000000000000 : ℚ)⟩
  r := (6325089510471 / 12500000000000 : ℚ)
  w := (84480760141 / 62500000000 : ℚ)
  center := (281525000000000019 / 400000000000000000 : ℚ)
  supportValue := (28667301095443487 / 100000000000000000 : ℚ)
  supportSlope := (-4636112811903791 / 5000000000000000 : ℚ)
  oldCenter := (28667301095443487 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1633
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724]
}

noncomputable def cell_12252 : Cell := { cellDefaults with
  domain := ⟨(140775000000000011 / 200000000000000000 : ℚ), (70400000000000007 / 100000000000000000 : ℚ)⟩
  r := (6325089510471 / 12500000000000 : ℚ)
  w := (84480760141 / 62500000000 : ℚ)
  center := (11263000000000001 / 16000000000000000 : ℚ)
  supportValue := (2865573725077111 / 10000000000000000 : ℚ)
  supportSlope := (-9262147176761769 / 10000000000000000 : ℚ)
  oldCenter := (2865573725077111 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1633
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_722, piece_723, piece_724]
}

noncomputable def cell_12253 : Cell := { cellDefaults with
  domain := ⟨(70400000000000007 / 100000000000000000 : ℚ), (281650000000000023 / 400000000000000000 : ℚ)⟩
  center := (563250000000000051 / 800000000000000000 : ℚ)
  supportValue := (2866660531430381 / 10000000000000000 : ℚ)
  supportSlope := (-1853557544438019 / 2000000000000000 : ℚ)
  oldCenter := (2866660531430381 / 10000000000000000 : ℚ)
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724]
}

noncomputable def cell_12254 : Cell := { cellDefaults with
  domain := ⟨(281650000000000023 / 400000000000000000 : ℚ), (140850000000000009 / 200000000000000000 : ℚ)⟩
  center := (563350000000000041 / 800000000000000000 : ℚ)
  supportValue := (2865504700958113 / 10000000000000000 : ℚ)
  supportSlope := (-925874451872403 / 1000000000000000 : ℚ)
  oldCenter := (2865504700958113 / 10000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_722, piece_723, piece_724]
}

noncomputable def cell_12255 : Cell := { cellDefaults with
  domain := ⟨(140850000000000009 / 200000000000000000 : ℚ), (281750000000000013 / 400000000000000000 : ℚ)⟩
  center := (563450000000000031 / 800000000000000000 : ℚ)
  supportValue := (5728689824815677 / 20000000000000000 : ℚ)
  supportSlope := (-9264597779400179 / 10000000000000000 : ℚ)
  oldCenter := (5728689824815677 / 20000000000000000 : ℚ)
  oldPieces := [piece_722]
}

noncomputable def cell_12256 : Cell := { cellDefaults with
  domain := ⟨(281750000000000013 / 400000000000000000 : ℚ), (35225000000000001 / 50000000000000000 : ℚ)⟩
  center := (563550000000000021 / 800000000000000000 : ℚ)
  supportValue := (11452749917977 / 40000000000000 : ℚ)
  supportSlope := (-925433437551341 / 1000000000000000 : ℚ)
  oldCenter := (11452749917977 / 40000000000000 : ℚ)
  oldPieces := [piece_722]
}

noncomputable def cell_12257 : Cell := { cellDefaults with
  domain := ⟨(35225000000000001 / 50000000000000000 : ℚ), (281850000000000013 / 400000000000000000 : ℚ)⟩
  r := (10111457048239 / 20000000000000 : ℚ)
  w := (2702875343507 / 2000000000000 : ℚ)
  center := (563650000000000021 / 800000000000000000 : ℚ)
  supportValue := (2864277820302687 / 10000000000000000 : ℚ)
  supportSlope := (-578761276826487 / 625000000000000 : ℚ)
  oldCenter := (2864277820302687 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1635
  oldPieces := [piece_722]
}

noncomputable def cell_12258 : Cell := { cellDefaults with
  domain := ⟨(281850000000000013 / 400000000000000000 : ℚ), (140950000000000009 / 200000000000000000 : ℚ)⟩
  r := (10111457048239 / 20000000000000 : ℚ)
  w := (2702875343507 / 2000000000000 : ℚ)
  center := (563750000000000031 / 800000000000000000 : ℚ)
  supportValue := (1789450586789831 / 6250000000000000 : ℚ)
  supportSlope := (-289060253629263 / 312500000000000 : ℚ)
  oldCenter := (1789450586789831 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1635
  oldPieces := [piece_722]
}

noncomputable def cell_12259 : Cell := { cellDefaults with
  domain := ⟨(140950000000000009 / 200000000000000000 : ℚ), (281950000000000023 / 400000000000000000 : ℚ)⟩
  r := (10111457048239 / 20000000000000 : ℚ)
  w := (2702875343507 / 2000000000000 : ℚ)
  center := (563850000000000041 / 800000000000000000 : ℚ)
  supportValue := (28619653362001757 / 100000000000000000 : ℚ)
  supportSlope := (-9239719954629209 / 10000000000000000 : ℚ)
  oldCenter := (28619653362001757 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1635
  oldPieces := [piece_722]
}

noncomputable def cell_12260 : Cell := { cellDefaults with
  domain := ⟨(281950000000000023 / 400000000000000000 : ℚ), (70500000000000007 / 100000000000000000 : ℚ)⟩
  r := (10111457048239 / 20000000000000 : ℚ)
  w := (2702875343507 / 2000000000000 : ℚ)
  center := (563950000000000051 / 800000000000000000 : ℚ)
  supportValue := (1430405503405801 / 5000000000000000 : ℚ)
  supportSlope := (-4614777824469379 / 5000000000000000 : ℚ)
  oldCenter := (1430405503405801 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1635
  oldPieces := [piece_722]
}

noncomputable def cell_12261 : Cell := { cellDefaults with
  domain := ⟨(70500000000000007 / 100000000000000000 : ℚ), (282050000000000023 / 400000000000000000 : ℚ)⟩
  r := (50535610231377 / 100000000000000 : ℚ)
  w := (675656227467 / 500000000000 : ℚ)
  center := (564050000000000051 / 800000000000000000 : ℚ)
  supportValue := (14309468620827523 / 50000000000000000 : ℚ)
  supportSlope := (-369411393933953 / 400000000000000 : ℚ)
  oldCenter := (14309468620827523 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1636
  oldPieces := [piece_722]
}

noncomputable def cell_12262 : Cell := { cellDefaults with
  domain := ⟨(282050000000000023 / 400000000000000000 : ℚ), (141050000000000009 / 200000000000000000 : ℚ)⟩
  r := (50535610231377 / 100000000000000 : ℚ)
  w := (675656227467 / 500000000000 : ℚ)
  center := (564150000000000041 / 800000000000000000 : ℚ)
  supportValue := (2860739948468609 / 10000000000000000 : ℚ)
  supportSlope := (-9225131672990583 / 10000000000000000 : ℚ)
  oldCenter := (2860739948468609 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1636
  oldPieces := [piece_722]
}

noncomputable def cell_12263 : Cell := { cellDefaults with
  domain := ⟨(141050000000000009 / 200000000000000000 : ℚ), (282150000000000013 / 400000000000000000 : ℚ)⟩
  r := (50535610231377 / 100000000000000 : ℚ)
  w := (675656227467 / 500000000000 : ℚ)
  center := (564250000000000031 / 800000000000000000 : ℚ)
  supportValue := (7148971677960561 / 25000000000000000 : ℚ)
  supportSlope := (-4614862927843539 / 5000000000000000 : ℚ)
  oldCenter := (7148971677960561 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1636
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721, piece_722]
}

noncomputable def cell_12264 : Cell := { cellDefaults with
  domain := ⟨(282150000000000013 / 400000000000000000 : ℚ), (35275000000000001 / 50000000000000000 : ℚ)⟩
  r := (50535610231377 / 100000000000000 : ℚ)
  w := (675656227467 / 500000000000 : ℚ)
  center := (564350000000000021 / 800000000000000000 : ℚ)
  supportValue := (1429216644813191 / 5000000000000000 : ℚ)
  supportSlope := (-92219292315319 / 100000000000000 : ℚ)
  oldCenter := (1429216644813191 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1636
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721]
}

noncomputable def cell_12265 : Cell := { cellDefaults with
  domain := ⟨(35275000000000001 / 50000000000000000 : ℚ), (282250000000000013 / 400000000000000000 : ℚ)⟩
  r := (50513952327989 / 100000000000000 : ℚ)
  w := (6755933829993 / 5000000000000 : ℚ)
  center := (564450000000000021 / 800000000000000000 : ℚ)
  supportValue := (1429759436657127 / 5000000000000000 : ℚ)
  supportSlope := (-1153293798976547 / 1250000000000000 : ℚ)
  oldCenter := (1429759436657127 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1637
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721, piece_722]
}

noncomputable def cell_12266 : Cell := { cellDefaults with
  domain := ⟨(282250000000000013 / 400000000000000000 : ℚ), (141150000000000009 / 200000000000000000 : ℚ)⟩
  r := (50513952327989 / 100000000000000 : ℚ)
  w := (6755933829993 / 5000000000000 : ℚ)
  center := (564550000000000031 / 800000000000000000 : ℚ)
  supportValue := (2858364043573931 / 10000000000000000 : ℚ)
  supportSlope := (-4608760323531841 / 5000000000000000 : ℚ)
  oldCenter := (2858364043573931 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1637
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721]
}

noncomputable def cell_12267 : Cell := { cellDefaults with
  domain := ⟨(141150000000000009 / 200000000000000000 : ℚ), (282350000000000023 / 400000000000000000 : ℚ)⟩
  r := (50513952327989 / 100000000000000 : ℚ)
  w := (6755933829993 / 5000000000000 : ℚ)
  center := (564650000000000041 / 800000000000000000 : ℚ)
  supportValue := (1142884995769893 / 4000000000000000 : ℚ)
  supportSlope := (-575459448595659 / 625000000000000 : ℚ)
  oldCenter := (1142884995769893 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1637
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721]
}

noncomputable def cell_12268 : Cell := { cellDefaults with
  domain := ⟨(282350000000000023 / 400000000000000000 : ℚ), (70600000000000007 / 100000000000000000 : ℚ)⟩
  r := (50513952327989 / 100000000000000 : ℚ)
  w := (6755933829993 / 5000000000000 : ℚ)
  center := (564750000000000051 / 800000000000000000 : ℚ)
  supportValue := (142803110186149 / 500000000000000 : ℚ)
  supportSlope := (-2299306355164391 / 2500000000000000 : ℚ)
  oldCenter := (142803110186149 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1637
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721]
}

noncomputable def cell_12269 : Cell := { cellDefaults with
  domain := ⟨(70600000000000007 / 100000000000000000 : ℚ), (282450000000000023 / 400000000000000000 : ℚ)⟩
  r := (25246162659917 / 50000000000000 : ℚ)
  w := (3377657669697 / 2500000000000 : ℚ)
  center := (564850000000000051 / 800000000000000000 : ℚ)
  supportValue := (7142847679725839 / 25000000000000000 : ℚ)
  supportSlope := (-184058415288409 / 200000000000000 : ℚ)
  oldCenter := (7142847679725839 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1638
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721]
}

noncomputable def cell_12270 : Cell := { cellDefaults with
  domain := ⟨(282450000000000023 / 400000000000000000 : ℚ), (141250000000000009 / 200000000000000000 : ℚ)⟩
  r := (25246162659917 / 50000000000000 : ℚ)
  w := (3377657669697 / 2500000000000 : ℚ)
  center := (564950000000000041 / 800000000000000000 : ℚ)
  supportValue := (2855989339292271 / 10000000000000000 : ℚ)
  supportSlope := (-9192806159293663 / 10000000000000000 : ℚ)
  oldCenter := (2855989339292271 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1638
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721]
}

noncomputable def cell_12271 : Cell := { cellDefaults with
  domain := ⟨(141250000000000009 / 200000000000000000 : ℚ), (282550000000000013 / 400000000000000000 : ℚ)⟩
  r := (25246162659917 / 50000000000000 : ℚ)
  w := (3377657669697 / 2500000000000 : ℚ)
  center := (565050000000000031 / 800000000000000000 : ℚ)
  supportValue := (28548425681644307 / 100000000000000000 : ℚ)
  supportSlope := (-9193666152214983 / 10000000000000000 : ℚ)
  oldCenter := (28548425681644307 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1638
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720, piece_721]
}

noncomputable def cell_12272 : Cell := { cellDefaults with
  domain := ⟨(282550000000000013 / 400000000000000000 : ℚ), (35325000000000001 / 50000000000000000 : ℚ)⟩
  r := (25246162659917 / 50000000000000 : ℚ)
  w := (3377657669697 / 2500000000000 : ℚ)
  center := (565150000000000021 / 800000000000000000 : ℚ)
  supportValue := (5707382448205297 / 20000000000000000 : ℚ)
  supportSlope := (-1837935276450337 / 2000000000000000 : ℚ)
  oldCenter := (5707382448205297 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1638
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720]
}

noncomputable def cell_12273 : Cell := { cellDefaults with
  domain := ⟨(35325000000000001 / 50000000000000000 : ℚ), (141318575418994413 / 200000000000000000 : ℚ)⟩
  r := (50470717314693 / 100000000000000 : ℚ)
  w := (13509393691141 / 10000000000000 : ℚ)
  center := (282618575418994417 / 400000000000000000 : ℚ)
  supportValue := (285491766098621 / 1000000000000000 : ℚ)
  supportSlope := (-367595069710673 / 400000000000000 : ℚ)
  oldCenter := (285491766098621 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1639
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720, piece_721]
}

noncomputable def cell_12274 : Cell := { cellDefaults with
  domain := ⟨(141318575418994413 / 200000000000000000 : ℚ), (70668575418994411 / 100000000000000000 : ℚ)⟩
  r := (50470717314693 / 100000000000000 : ℚ)
  w := (13509393691141 / 10000000000000 : ℚ)
  center := (56531145251396647 / 80000000000000000 : ℚ)
  supportValue := (5708123693725271 / 20000000000000000 : ℚ)
  supportSlope := (-574323739180523 / 625000000000000 : ℚ)
  oldCenter := (5708123693725271 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1639
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720]
}

noncomputable def cell_12275 : Cell := { cellDefaults with
  domain := ⟨(70668575418994411 / 100000000000000000 : ℚ), (3534357541899441 / 5000000000000000 : ℚ)⟩
  r := (50470717314693 / 100000000000000 : ℚ)
  w := (13509393691141 / 10000000000000 : ℚ)
  center := (141355726256983231 / 200000000000000000 : ℚ)
  supportValue := (7131961087872861 / 25000000000000000 : ℚ)
  supportSlope := (-1835575679746163 / 2000000000000000 : ℚ)
  oldCenter := (7131961087872861 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1639
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720]
}

noncomputable def cell_12276 : Cell := { cellDefaults with
  domain := ⟨(3534357541899441 / 5000000000000000 : ℚ), (70700000000000007 / 100000000000000000 : ℚ)⟩
  r := (50470717314693 / 100000000000000 : ℚ)
  w := (13509393691141 / 10000000000000 : ℚ)
  center := (141387150837988827 / 200000000000000000 : ℚ)
  supportValue := (55690261345037 / 195312500000000 : ℚ)
  supportSlope := (-9165192227798611 / 10000000000000000 : ℚ)
  oldCenter := (55690261345037 / 195312500000000 : ℚ)
  newCoefficients := coefficients_1640
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720]
}

noncomputable def cell_12277 : Cell := { cellDefaults with
  domain := ⟨(70700000000000007 / 100000000000000000 : ℚ), (282850000000000023 / 400000000000000000 : ℚ)⟩
  r := (50449138895377 / 100000000000000 : ℚ)
  w := (3377043362691 / 2500000000000 : ℚ)
  center := (565650000000000051 / 800000000000000000 : ℚ)
  supportValue := (2852396086446267 / 10000000000000000 : ℚ)
  supportSlope := (-4585354138644707 / 5000000000000000 : ℚ)
  oldCenter := (2852396086446267 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1641
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720]
}

noncomputable def cell_12278 : Cell := { cellDefaults with
  domain := ⟨(282850000000000023 / 400000000000000000 : ℚ), (141450000000000009 / 200000000000000000 : ℚ)⟩
  r := (50449138895377 / 100000000000000 : ℚ)
  w := (3377043362691 / 2500000000000 : ℚ)
  center := (565750000000000041 / 800000000000000000 : ℚ)
  supportValue := (2851250377853133 / 10000000000000000 : ℚ)
  supportSlope := (-11450793182789 / 12500000000000 : ℚ)
  oldCenter := (2851250377853133 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1641
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720]
}

noncomputable def cell_12279 : Cell := { cellDefaults with
  domain := ⟨(141450000000000009 / 200000000000000000 : ℚ), (282950000000000013 / 400000000000000000 : ℚ)⟩
  r := (50449138895377 / 100000000000000 : ℚ)
  w := (3377043362691 / 2500000000000 : ℚ)
  center := (565850000000000031 / 800000000000000000 : ℚ)
  supportValue := (570021584169327 / 2000000000000000 : ℚ)
  supportSlope := (-9157568681797761 / 10000000000000000 : ℚ)
  oldCenter := (570021584169327 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1641
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719, piece_720]
}

noncomputable def cell_12280 : Cell := { cellDefaults with
  domain := ⟨(282950000000000013 / 400000000000000000 : ℚ), (35375000000000001 / 50000000000000000 : ℚ)⟩
  r := (50449138895377 / 100000000000000 : ℚ)
  w := (3377043362691 / 2500000000000 : ℚ)
  center := (565950000000000021 / 800000000000000000 : ℚ)
  supportValue := (1424480396014907 / 5000000000000000 : ℚ)
  supportSlope := (-9157573739805107 / 10000000000000000 : ℚ)
  oldCenter := (1424480396014907 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1641
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719]
}

noncomputable def cell_12281 : Cell := { cellDefaults with
  domain := ⟨(35375000000000001 / 50000000000000000 : ℚ), (283050000000000013 / 400000000000000000 : ℚ)⟩
  r := (25213790417683 / 50000000000000 : ℚ)
  w := (6753478084189 / 5000000000000 : ℚ)
  center := (566050000000000021 / 800000000000000000 : ℚ)
  supportValue := (2850032664966203 / 10000000000000000 : ℚ)
  supportSlope := (-9154276900122023 / 10000000000000000 : ℚ)
  oldCenter := (2850032664966203 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1642
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719, piece_720]
}

noncomputable def cell_12282 : Cell := { cellDefaults with
  domain := ⟨(283050000000000013 / 400000000000000000 : ℚ), (141550000000000009 / 200000000000000000 : ℚ)⟩
  r := (25213790417683 / 50000000000000 : ℚ)
  w := (6753478084189 / 5000000000000 : ℚ)
  center := (566150000000000031 / 800000000000000000 : ℚ)
  supportValue := (1424442974020341 / 5000000000000000 : ℚ)
  supportSlope := (-9153159232474701 / 10000000000000000 : ℚ)
  oldCenter := (1424442974020341 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1642
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719]
}

noncomputable def cell_12283 : Cell := { cellDefaults with
  domain := ⟨(141550000000000009 / 200000000000000000 : ℚ), (283150000000000023 / 400000000000000000 : ℚ)⟩
  r := (25213790417683 / 50000000000000 : ℚ)
  w := (6753478084189 / 5000000000000 : ℚ)
  center := (566250000000000041 / 800000000000000000 : ℚ)
  supportValue := (2847742433799947 / 10000000000000000 : ℚ)
  supportSlope := (-4571537004411473 / 5000000000000000 : ℚ)
  oldCenter := (2847742433799947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1642
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719]
}

noncomputable def cell_12284 : Cell := { cellDefaults with
  domain := ⟨(283150000000000023 / 400000000000000000 : ℚ), (70800000000000007 / 100000000000000000 : ℚ)⟩
  r := (25213790417683 / 50000000000000 : ℚ)
  w := (6753478084189 / 5000000000000 : ℚ)
  center := (566350000000000051 / 800000000000000000 : ℚ)
  supportValue := (1423300088748749 / 5000000000000000 : ℚ)
  supportSlope := (-2283258038288987 / 2500000000000000 : ℚ)
  oldCenter := (1423300088748749 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1642
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719]
}

noncomputable def cell_12285 : Cell := { cellDefaults with
  domain := ⟨(70800000000000007 / 100000000000000000 : ℚ), (283250000000000023 / 400000000000000000 : ℚ)⟩
  r := (1260151253949 / 2500000000000 : ℚ)
  w := (6752876577681 / 5000000000000 : ℚ)
  center := (566450000000000051 / 800000000000000000 : ℚ)
  supportValue := (2847664728393197 / 10000000000000000 : ℚ)
  supportSlope := (-9138647815404103 / 10000000000000000 : ℚ)
  oldCenter := (2847664728393197 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1643
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719]
}

noncomputable def cell_12286 : Cell := { cellDefaults with
  domain := ⟨(283250000000000023 / 400000000000000000 : ℚ), (141650000000000009 / 200000000000000000 : ℚ)⟩
  r := (1260151253949 / 2500000000000 : ℚ)
  w := (6752876577681 / 5000000000000 : ℚ)
  center := (566550000000000041 / 800000000000000000 : ℚ)
  supportValue := (1423261512329549 / 5000000000000000 : ℚ)
  supportSlope := (-912861723739147 / 1000000000000000 : ℚ)
  oldCenter := (1423261512329549 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1643
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719]
}

noncomputable def cell_12287 : Cell := { cellDefaults with
  domain := ⟨(141650000000000009 / 200000000000000000 : ℚ), (283350000000000013 / 400000000000000000 : ℚ)⟩
  r := (1260151253949 / 2500000000000 : ℚ)
  w := (6752876577681 / 5000000000000 : ℚ)
  center := (566650000000000031 / 800000000000000000 : ℚ)
  supportValue := (2845384563822489 / 10000000000000000 : ℚ)
  supportSlope := (-1824287884343261 / 2000000000000000 : ℚ)
  oldCenter := (2845384563822489 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1643
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718, piece_719]
}

noncomputable def cell_12288 : Cell := { cellDefaults with
  domain := ⟨(283350000000000013 / 400000000000000000 : ℚ), (35425000000000001 / 50000000000000000 : ℚ)⟩
  r := (1260151253949 / 2500000000000 : ℚ)
  w := (6752876577681 / 5000000000000 : ℚ)
  center := (566750000000000021 / 800000000000000000 : ℚ)
  supportValue := (14221209765584017 / 50000000000000000 : ℚ)
  supportSlope := (-4562810864823697 / 5000000000000000 : ℚ)
  oldCenter := (14221209765584017 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1643
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12289 : Cell := { cellDefaults with
  domain := ⟨(35425000000000001 / 50000000000000000 : ℚ), (283450000000000013 / 400000000000000000 : ℚ)⟩
  r := (25192271196217 / 50000000000000 : ℚ)
  w := (6752277275677 / 5000000000000 : ℚ)
  center := (566850000000000021 / 800000000000000000 : ℚ)
  supportValue := (1138122666826751 / 4000000000000000 : ℚ)
  supportSlope := (-4559094050393219 / 5000000000000000 : ℚ)
  oldCenter := (1138122666826751 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1644
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718, piece_719]
}

noncomputable def cell_12290 : Cell := { cellDefaults with
  domain := ⟨(283450000000000013 / 400000000000000000 : ℚ), (141750000000000009 / 200000000000000000 : ℚ)⟩
  r := (25192271196217 / 50000000000000 : ℚ)
  w := (6752277275677 / 5000000000000 : ℚ)
  center := (566950000000000031 / 800000000000000000 : ℚ)
  supportValue := (5688328926422127 / 20000000000000000 : ℚ)
  supportSlope := (-4560602779397171 / 5000000000000000 : ℚ)
  oldCenter := (5688328926422127 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1644
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12291 : Cell := { cellDefaults with
  domain := ⟨(141750000000000009 / 200000000000000000 : ℚ), (283550000000000023 / 400000000000000000 : ℚ)⟩
  r := (25192271196217 / 50000000000000 : ℚ)
  w := (6752277275677 / 5000000000000 : ℚ)
  center := (567050000000000041 / 800000000000000000 : ℚ)
  supportValue := (28430249403420693 / 100000000000000000 : ℚ)
  supportSlope := (-4555582851794681 / 5000000000000000 : ℚ)
  oldCenter := (28430249403420693 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1644
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12292 : Cell := { cellDefaults with
  domain := ⟨(283550000000000023 / 400000000000000000 : ℚ), (70900000000000007 / 100000000000000000 : ℚ)⟩
  r := (25192271196217 / 50000000000000 : ℚ)
  w := (6752277275677 / 5000000000000 : ℚ)
  center := (567150000000000051 / 800000000000000000 : ℚ)
  supportValue := (568377333950569 / 2000000000000000 : ℚ)
  supportSlope := (-18202338032081 / 20000000000000 : ℚ)
  oldCenter := (568377333950569 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1644
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12293 : Cell := { cellDefaults with
  domain := ⟨(70900000000000007 / 100000000000000000 : ℚ), (283650000000000023 / 400000000000000000 : ℚ)⟩
  r := (50363059474349 / 100000000000000 : ℚ)
  w := (13503367925569 / 10000000000000 : ℚ)
  center := (567250000000000051 / 800000000000000000 : ℚ)
  supportValue := (1421472610514643 / 5000000000000000 : ℚ)
  supportSlope := (-113834285660597 / 125000000000000 : ℚ)
  oldCenter := (1421472610514643 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1645
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12294 : Cell := { cellDefaults with
  domain := ⟨(283650000000000023 / 400000000000000000 : ℚ), (141850000000000009 / 200000000000000000 : ℚ)⟩
  r := (50363059474349 / 100000000000000 : ℚ)
  w := (13503367925569 / 10000000000000 : ℚ)
  center := (567350000000000041 / 800000000000000000 : ℚ)
  supportValue := (710451875648887 / 2500000000000000 : ℚ)
  supportSlope := (-9096757363461293 / 10000000000000000 : ℚ)
  oldCenter := (710451875648887 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1645
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12295 : Cell := { cellDefaults with
  domain := ⟨(141850000000000009 / 200000000000000000 : ℚ), (283750000000000013 / 400000000000000000 : ℚ)⟩
  r := (50363059474349 / 100000000000000 : ℚ)
  w := (13503367925569 / 10000000000000 : ℚ)
  center := (567450000000000031 / 800000000000000000 : ℚ)
  supportValue := (28406710296684523 / 100000000000000000 : ℚ)
  supportSlope := (-36347258723847 / 40000000000000 : ℚ)
  oldCenter := (28406710296684523 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1645
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12296 : Cell := { cellDefaults with
  domain := ⟨(283750000000000013 / 400000000000000000 : ℚ), (35475000000000001 / 50000000000000000 : ℚ)⟩
  r := (50363059474349 / 100000000000000 : ℚ)
  w := (13503367925569 / 10000000000000 : ℚ)
  center := (567550000000000021 / 800000000000000000 : ℚ)
  supportValue := (141976845805321 / 500000000000000 : ℚ)
  supportSlope := (-284134485077387 / 312500000000000 : ℚ)
  oldCenter := (141976845805321 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1645
  oldLo := (28350000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_717, piece_718]
}

noncomputable def cell_12297 : Cell := { cellDefaults with
  domain := ⟨(35475000000000001 / 50000000000000000 : ℚ), (141925000000000007 / 200000000000000000 : ℚ)⟩
  r := (50341601997193 / 100000000000000 : ℚ)
  w := (13502190530537 / 10000000000000 : ℚ)
  center := (283825000000000011 / 400000000000000000 : ℚ)
  supportValue := (7101475132048929 / 25000000000000000 : ℚ)
  supportSlope := (-9082399720544719 / 10000000000000000 : ℚ)
  oldCenter := (7101475132048929 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1646
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12298 : Cell := { cellDefaults with
  domain := ⟨(141925000000000007 / 200000000000000000 : ℚ), (14195000000000001 / 20000000000000000 : ℚ)⟩
  r := (50341601997193 / 100000000000000 : ℚ)
  w := (13502190530537 / 10000000000000 : ℚ)
  center := (283875000000000017 / 400000000000000000 : ℚ)
  supportValue := (2839456340479163 / 10000000000000000 : ℚ)
  supportSlope := (-908908980263303 / 1000000000000000 : ℚ)
  oldCenter := (2839456340479163 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1646
  oldLo := (28350000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_717, piece_718]
}

noncomputable def cell_12299 : Cell := { cellDefaults with
  domain := ⟨(14195000000000001 / 20000000000000000 : ℚ), (141975000000000013 / 200000000000000000 : ℚ)⟩
  r := (50341601997193 / 100000000000000 : ℚ)
  w := (13502190530537 / 10000000000000 : ℚ)
  center := (283925000000000023 / 400000000000000000 : ℚ)
  supportValue := (14191594008499503 / 50000000000000000 : ℚ)
  supportSlope := (-9079409279032523 / 10000000000000000 : ℚ)
  oldCenter := (14191594008499503 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1646
  oldLo := (28350000000000003 / 100000000000000000 : ℚ)
  oldHi := (28400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_717]
}

theorem check_12250 : cell_12250.check = true := by
  decide +kernel

theorem check_12251 : cell_12251.check = true := by
  decide +kernel

theorem check_12252 : cell_12252.check = true := by
  decide +kernel

theorem check_12253 : cell_12253.check = true := by
  decide +kernel

theorem check_12254 : cell_12254.check = true := by
  decide +kernel

theorem check_12255 : cell_12255.check = true := by
  decide +kernel

theorem check_12256 : cell_12256.check = true := by
  decide +kernel

theorem check_12257 : cell_12257.check = true := by
  decide +kernel

theorem check_12258 : cell_12258.check = true := by
  decide +kernel

theorem check_12259 : cell_12259.check = true := by
  decide +kernel

theorem check_12260 : cell_12260.check = true := by
  decide +kernel

theorem check_12261 : cell_12261.check = true := by
  decide +kernel

theorem check_12262 : cell_12262.check = true := by
  decide +kernel

theorem check_12263 : cell_12263.check = true := by
  decide +kernel

theorem check_12264 : cell_12264.check = true := by
  decide +kernel

theorem check_12265 : cell_12265.check = true := by
  decide +kernel

theorem check_12266 : cell_12266.check = true := by
  decide +kernel

theorem check_12267 : cell_12267.check = true := by
  decide +kernel

theorem check_12268 : cell_12268.check = true := by
  decide +kernel

theorem check_12269 : cell_12269.check = true := by
  decide +kernel

theorem check_12270 : cell_12270.check = true := by
  decide +kernel

theorem check_12271 : cell_12271.check = true := by
  decide +kernel

theorem check_12272 : cell_12272.check = true := by
  decide +kernel

theorem check_12273 : cell_12273.check = true := by
  decide +kernel

theorem check_12274 : cell_12274.check = true := by
  decide +kernel

theorem check_12275 : cell_12275.check = true := by
  decide +kernel

theorem check_12276 : cell_12276.check = true := by
  decide +kernel

theorem check_12277 : cell_12277.check = true := by
  decide +kernel

theorem check_12278 : cell_12278.check = true := by
  decide +kernel

theorem check_12279 : cell_12279.check = true := by
  decide +kernel

theorem check_12280 : cell_12280.check = true := by
  decide +kernel

theorem check_12281 : cell_12281.check = true := by
  decide +kernel

theorem check_12282 : cell_12282.check = true := by
  decide +kernel

theorem check_12283 : cell_12283.check = true := by
  decide +kernel

theorem check_12284 : cell_12284.check = true := by
  decide +kernel

theorem check_12285 : cell_12285.check = true := by
  decide +kernel

theorem check_12286 : cell_12286.check = true := by
  decide +kernel

theorem check_12287 : cell_12287.check = true := by
  decide +kernel

theorem check_12288 : cell_12288.check = true := by
  decide +kernel

theorem check_12289 : cell_12289.check = true := by
  decide +kernel

theorem check_12290 : cell_12290.check = true := by
  decide +kernel

theorem check_12291 : cell_12291.check = true := by
  decide +kernel

theorem check_12292 : cell_12292.check = true := by
  decide +kernel

theorem check_12293 : cell_12293.check = true := by
  decide +kernel

theorem check_12294 : cell_12294.check = true := by
  decide +kernel

theorem check_12295 : cell_12295.check = true := by
  decide +kernel

theorem check_12296 : cell_12296.check = true := by
  decide +kernel

theorem check_12297 : cell_12297.check = true := by
  decide +kernel

theorem check_12298 : cell_12298.check = true := by
  decide +kernel

theorem check_12299 : cell_12299.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12250, cell_12251, cell_12252, cell_12253, cell_12254, cell_12255, cell_12256, cell_12257, cell_12258, cell_12259, cell_12260, cell_12261, cell_12262, cell_12263, cell_12264, cell_12265, cell_12266, cell_12267, cell_12268, cell_12269, cell_12270, cell_12271, cell_12272, cell_12273, cell_12274, cell_12275, cell_12276, cell_12277, cell_12278, cell_12279, cell_12280, cell_12281, cell_12282, cell_12283, cell_12284, cell_12285, cell_12286, cell_12287, cell_12288, cell_12289, cell_12290, cell_12291, cell_12292, cell_12293, cell_12294, cell_12295, cell_12296, cell_12297, cell_12298, cell_12299]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12250, check_12251, check_12252, check_12253, check_12254, check_12255, check_12256, check_12257, check_12258, check_12259, check_12260, check_12261, check_12262, check_12263, check_12264, check_12265, check_12266, check_12267, check_12268, check_12269, check_12270, check_12271, check_12272, check_12273, check_12274, check_12275, check_12276, check_12277, check_12278, check_12279, check_12280, check_12281, check_12282, check_12283, check_12284, check_12285, check_12286, check_12287, check_12288, check_12289, check_12290, check_12291, check_12292, check_12293, check_12294, check_12295, check_12296, check_12297, check_12298, check_12299, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0245

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0245
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0245
open AnalyticBounds.ExpressionCertificate

theorem linked_12250 : Linked cell_12250 pieces := by
  link_source cell_12250 with piece_1633 using piece_1633_mem, piece_724_mem

theorem linked_12251 : Linked cell_12251 pieces := by
  link_source cell_12251 with piece_1633 using piece_1633_mem, piece_724_mem

theorem linked_12252 : Linked cell_12252 pieces := by
  link_source cell_12252 with piece_1633 using piece_1633_mem, ⟨piece_722_mem, ⟨piece_723_mem, piece_724_mem⟩⟩

theorem linked_12253 : Linked cell_12253 pieces := by
  link_source cell_12253 with piece_1634 using piece_1634_mem, piece_724_mem

theorem linked_12254 : Linked cell_12254 pieces := by
  link_source cell_12254 with piece_1634 using piece_1634_mem, ⟨piece_722_mem, ⟨piece_723_mem, piece_724_mem⟩⟩

theorem linked_12255 : Linked cell_12255 pieces := by
  link_source cell_12255 with piece_1634 using piece_1634_mem, piece_722_mem

theorem linked_12256 : Linked cell_12256 pieces := by
  link_source cell_12256 with piece_1634 using piece_1634_mem, piece_722_mem

theorem linked_12257 : Linked cell_12257 pieces := by
  link_source cell_12257 with piece_1635 using piece_1635_mem, piece_722_mem

theorem linked_12258 : Linked cell_12258 pieces := by
  link_source cell_12258 with piece_1635 using piece_1635_mem, piece_722_mem

theorem linked_12259 : Linked cell_12259 pieces := by
  link_source cell_12259 with piece_1635 using piece_1635_mem, piece_722_mem

theorem linked_12260 : Linked cell_12260 pieces := by
  link_source cell_12260 with piece_1635 using piece_1635_mem, piece_722_mem

theorem linked_12261 : Linked cell_12261 pieces := by
  link_source cell_12261 with piece_1636 using piece_1636_mem, piece_722_mem

theorem linked_12262 : Linked cell_12262 pieces := by
  link_source cell_12262 with piece_1636 using piece_1636_mem, piece_722_mem

theorem linked_12263 : Linked cell_12263 pieces := by
  link_source cell_12263 with piece_1636 using piece_1636_mem, ⟨piece_721_mem, piece_722_mem⟩

theorem linked_12264 : Linked cell_12264 pieces := by
  link_source cell_12264 with piece_1636 using piece_1636_mem, piece_721_mem

theorem linked_12265 : Linked cell_12265 pieces := by
  link_source cell_12265 with piece_1637 using piece_1637_mem, ⟨piece_721_mem, piece_722_mem⟩

theorem linked_12266 : Linked cell_12266 pieces := by
  link_source cell_12266 with piece_1637 using piece_1637_mem, piece_721_mem

theorem linked_12267 : Linked cell_12267 pieces := by
  link_source cell_12267 with piece_1637 using piece_1637_mem, piece_721_mem

theorem linked_12268 : Linked cell_12268 pieces := by
  link_source cell_12268 with piece_1637 using piece_1637_mem, piece_721_mem

theorem linked_12269 : Linked cell_12269 pieces := by
  link_source cell_12269 with piece_1638 using piece_1638_mem, piece_721_mem

theorem linked_12270 : Linked cell_12270 pieces := by
  link_source cell_12270 with piece_1638 using piece_1638_mem, piece_721_mem

theorem linked_12271 : Linked cell_12271 pieces := by
  link_source cell_12271 with piece_1638 using piece_1638_mem, ⟨piece_720_mem, piece_721_mem⟩

theorem linked_12272 : Linked cell_12272 pieces := by
  link_source cell_12272 with piece_1638 using piece_1638_mem, piece_720_mem

theorem linked_12273 : Linked cell_12273 pieces := by
  link_source cell_12273 with piece_1639 using piece_1639_mem, ⟨piece_720_mem, piece_721_mem⟩

theorem linked_12274 : Linked cell_12274 pieces := by
  link_source cell_12274 with piece_1639 using piece_1639_mem, piece_720_mem

theorem linked_12275 : Linked cell_12275 pieces := by
  link_source cell_12275 with piece_1639 using piece_1639_mem, piece_720_mem

theorem linked_12276 : Linked cell_12276 pieces := by
  link_source cell_12276 with piece_1640 using piece_1640_mem, piece_720_mem

theorem linked_12277 : Linked cell_12277 pieces := by
  link_source cell_12277 with piece_1641 using piece_1641_mem, piece_720_mem

theorem linked_12278 : Linked cell_12278 pieces := by
  link_source cell_12278 with piece_1641 using piece_1641_mem, piece_720_mem

theorem linked_12279 : Linked cell_12279 pieces := by
  link_source cell_12279 with piece_1641 using piece_1641_mem, ⟨piece_719_mem, piece_720_mem⟩

theorem linked_12280 : Linked cell_12280 pieces := by
  link_source cell_12280 with piece_1641 using piece_1641_mem, piece_719_mem

theorem linked_12281 : Linked cell_12281 pieces := by
  link_source cell_12281 with piece_1642 using piece_1642_mem, ⟨piece_719_mem, piece_720_mem⟩

theorem linked_12282 : Linked cell_12282 pieces := by
  link_source cell_12282 with piece_1642 using piece_1642_mem, piece_719_mem

theorem linked_12283 : Linked cell_12283 pieces := by
  link_source cell_12283 with piece_1642 using piece_1642_mem, piece_719_mem

theorem linked_12284 : Linked cell_12284 pieces := by
  link_source cell_12284 with piece_1642 using piece_1642_mem, piece_719_mem

theorem linked_12285 : Linked cell_12285 pieces := by
  link_source cell_12285 with piece_1643 using piece_1643_mem, piece_719_mem

theorem linked_12286 : Linked cell_12286 pieces := by
  link_source cell_12286 with piece_1643 using piece_1643_mem, piece_719_mem

theorem linked_12287 : Linked cell_12287 pieces := by
  link_source cell_12287 with piece_1643 using piece_1643_mem, ⟨piece_718_mem, piece_719_mem⟩

theorem linked_12288 : Linked cell_12288 pieces := by
  link_source cell_12288 with piece_1643 using piece_1643_mem, piece_718_mem

theorem linked_12289 : Linked cell_12289 pieces := by
  link_source cell_12289 with piece_1644 using piece_1644_mem, ⟨piece_718_mem, piece_719_mem⟩

theorem linked_12290 : Linked cell_12290 pieces := by
  link_source cell_12290 with piece_1644 using piece_1644_mem, piece_718_mem

theorem linked_12291 : Linked cell_12291 pieces := by
  link_source cell_12291 with piece_1644 using piece_1644_mem, piece_718_mem

theorem linked_12292 : Linked cell_12292 pieces := by
  link_source cell_12292 with piece_1644 using piece_1644_mem, piece_718_mem

theorem linked_12293 : Linked cell_12293 pieces := by
  link_source cell_12293 with piece_1645 using piece_1645_mem, piece_718_mem

theorem linked_12294 : Linked cell_12294 pieces := by
  link_source cell_12294 with piece_1645 using piece_1645_mem, piece_718_mem

theorem linked_12295 : Linked cell_12295 pieces := by
  link_source cell_12295 with piece_1645 using piece_1645_mem, piece_718_mem

theorem linked_12296 : Linked cell_12296 pieces := by
  link_source cell_12296 with piece_1645 using piece_1645_mem, ⟨piece_717_mem, piece_718_mem⟩

theorem linked_12297 : Linked cell_12297 pieces := by
  link_source cell_12297 with piece_1646 using piece_1646_mem, piece_718_mem

theorem linked_12298 : Linked cell_12298 pieces := by
  link_source cell_12298 with piece_1646 using piece_1646_mem, ⟨piece_717_mem, piece_718_mem⟩

theorem linked_12299 : Linked cell_12299 pieces := by
  link_source cell_12299 with piece_1646 using piece_1646_mem, piece_717_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0245.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0245.cells,List.forall_mem_cons]
  exact ⟨linked_12250, linked_12251, linked_12252, linked_12253, linked_12254, linked_12255, linked_12256, linked_12257, linked_12258, linked_12259, linked_12260, linked_12261, linked_12262, linked_12263, linked_12264, linked_12265, linked_12266, linked_12267, linked_12268, linked_12269, linked_12270, linked_12271, linked_12272, linked_12273, linked_12274, linked_12275, linked_12276, linked_12277, linked_12278, linked_12279, linked_12280, linked_12281, linked_12282, linked_12283, linked_12284, linked_12285, linked_12286, linked_12287, linked_12288, linked_12289, linked_12290, linked_12291, linked_12292, linked_12293, linked_12294, linked_12295, linked_12296, linked_12297, linked_12298, linked_12299, by simp⟩

theorem covered : covers (28145000000000001 / 40000000000000000 : ℚ) (141975000000000013 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0245.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0245
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0246
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(141975000000000013 / 200000000000000000 : ℚ), (8875000000000001 / 12500000000000000 : ℚ)⟩
  branch := .left
  r := (12558668402073 / 25000000000000 : ℚ)
  w := (13496433471453 / 10000000000000 : ℚ)
  center := (283975000000000029 / 400000000000000000 : ℚ)
  supportValue := (14185922492577807 / 50000000000000000 : ℚ)
  supportSlope := (-1133680869145201 / 1250000000000000 : ℚ)
  oldCenter := (14185922492577807 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1647
  oldLo := (28200000000000003 / 100000000000000000 : ℚ)
  oldHi := (28250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_714]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12300 : Cell := { cellDefaults with
  r := (50341601997193 / 100000000000000 : ℚ)
  w := (13502190530537 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1646
  oldLo := (28350000000000003 / 100000000000000000 : ℚ)
  oldHi := (28400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_717]
}

noncomputable def cell_12301 : Cell := { cellDefaults with
  domain := ⟨(8875000000000001 / 12500000000000000 : ℚ), (142025000000000013 / 200000000000000000 : ℚ)⟩
  r := (10064033156643 / 20000000000000 : ℚ)
  w := (3375254582987 / 2500000000000 : ℚ)
  center := (284025000000000029 / 400000000000000000 : ℚ)
  supportValue := (709559373923581 / 2500000000000000 : ℚ)
  supportSlope := (-9074991819747447 / 10000000000000000 : ℚ)
  oldCenter := (709559373923581 / 2500000000000000 : ℚ)
  oldLo := (28350000000000003 / 100000000000000000 : ℚ)
  oldHi := (28400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_717]
}

noncomputable def cell_12302 : Cell := { cellDefaults with
  domain := ⟨(142025000000000013 / 200000000000000000 : ℚ), (14205000000000001 / 20000000000000000 : ℚ)⟩
  r := (10064033156643 / 20000000000000 : ℚ)
  w := (3375254582987 / 2500000000000 : ℚ)
  center := (284075000000000023 / 400000000000000000 : ℚ)
  supportValue := (7092759359968609 / 25000000000000000 : ℚ)
  supportSlope := (-9065040757479913 / 10000000000000000 : ℚ)
  oldCenter := (7092759359968609 / 25000000000000000 : ℚ)
  oldLo := (28350000000000003 / 100000000000000000 : ℚ)
  oldHi := (28400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_717]
}

noncomputable def cell_12303 : Cell := { cellDefaults with
  domain := ⟨(14205000000000001 / 20000000000000000 : ℚ), (142075000000000007 / 200000000000000000 : ℚ)⟩
  r := (10064033156643 / 20000000000000 : ℚ)
  w := (3375254582987 / 2500000000000 : ℚ)
  center := (284125000000000017 / 400000000000000000 : ℚ)
  supportValue := (2835971233490903 / 10000000000000000 : ℚ)
  supportSlope := (-9055132388865437 / 10000000000000000 : ℚ)
  oldCenter := (2835971233490903 / 10000000000000000 : ℚ)
  oldLo := (28350000000000003 / 100000000000000000 : ℚ)
  oldHi := (28400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_717]
}

noncomputable def cell_12304 : Cell := { cellDefaults with
  domain := ⟨(142075000000000007 / 200000000000000000 : ℚ), (35525000000000001 / 50000000000000000 : ℚ)⟩
  r := (10064033156643 / 20000000000000 : ℚ)
  w := (3375254582987 / 2500000000000 : ℚ)
  center := (284175000000000011 / 400000000000000000 : ℚ)
  supportValue := (2834841641644409 / 10000000000000000 : ℚ)
  supportSlope := (-45280656355967 / 50000000000000 : ℚ)
  oldCenter := (2834841641644409 / 10000000000000000 : ℚ)
  oldLo := (28300000000000003 / 100000000000000000 : ℚ)
  oldHi := (28400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_716, piece_717]
}

noncomputable def cell_12305 : Cell := { cellDefaults with
  domain := ⟨(35525000000000001 / 50000000000000000 : ℚ), (142125000000000007 / 200000000000000000 : ℚ)⟩
  r := (50298759167021 / 100000000000000 : ℚ)
  w := (6749931739551 / 5000000000000 : ℚ)
  center := (284225000000000011 / 400000000000000000 : ℚ)
  supportValue := (2835886892432269 / 10000000000000000 : ℚ)
  supportSlope := (-1810141914805779 / 2000000000000000 : ℚ)
  oldCenter := (2835886892432269 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1648
  oldLo := (28350000000000003 / 100000000000000000 : ℚ)
  oldHi := (28400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_717]
}

noncomputable def cell_12306 : Cell := { cellDefaults with
  domain := ⟨(142125000000000007 / 200000000000000000 : ℚ), (14215000000000001 / 20000000000000000 : ℚ)⟩
  r := (50298759167021 / 100000000000000 : ℚ)
  w := (6749931739551 / 5000000000000 : ℚ)
  center := (284275000000000017 / 400000000000000000 : ℚ)
  supportValue := (14173788478735433 / 50000000000000000 : ℚ)
  supportSlope := (-452648267147583 / 500000000000000 : ℚ)
  oldCenter := (14173788478735433 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1648
  oldLo := (28300000000000003 / 100000000000000000 : ℚ)
  oldHi := (28400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_716, piece_717]
}

noncomputable def cell_12307 : Cell := { cellDefaults with
  domain := ⟨(14215000000000001 / 20000000000000000 : ℚ), (142175000000000013 / 200000000000000000 : ℚ)⟩
  r := (50298759167021 / 100000000000000 : ℚ)
  w := (6749931739551 / 5000000000000 : ℚ)
  center := (284325000000000023 / 400000000000000000 : ℚ)
  supportValue := (1133449645200699 / 4000000000000000 : ℚ)
  supportSlope := (-9047798218232453 / 10000000000000000 : ℚ)
  oldCenter := (1133449645200699 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1648
  oldLo := (28300000000000003 / 100000000000000000 : ℚ)
  oldHi := (28350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_716]
}

noncomputable def cell_12308 : Cell := { cellDefaults with
  domain := ⟨(142175000000000013 / 200000000000000000 : ℚ), (8887500000000001 / 12500000000000000 : ℚ)⟩
  r := (50298759167021 / 100000000000000 : ℚ)
  w := (6749931739551 / 5000000000000 : ℚ)
  center := (284375000000000029 / 400000000000000000 : ℚ)
  supportValue := (708123439960121 / 2500000000000000 : ℚ)
  supportSlope := (-9037857660646491 / 10000000000000000 : ℚ)
  oldCenter := (708123439960121 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1648
  oldLo := (28300000000000003 / 100000000000000000 : ℚ)
  oldHi := (28350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_716]
}

noncomputable def cell_12309 : Cell := { cellDefaults with
  domain := ⟨(8887500000000001 / 12500000000000000 : ℚ), (142225000000000013 / 200000000000000000 : ℚ)⟩
  r := (12569342745283 / 25000000000000 : ℚ)
  w := (210917300401 / 156250000000 : ℚ)
  center := (284425000000000029 / 400000000000000000 : ℚ)
  supportValue := (5667081657038463 / 20000000000000000 : ℚ)
  supportSlope := (-2260845673834049 / 2500000000000000 : ℚ)
  oldCenter := (5667081657038463 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1649
  oldLo := (28300000000000003 / 100000000000000000 : ℚ)
  oldHi := (28350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_716]
}

noncomputable def cell_12310 : Cell := { cellDefaults with
  domain := ⟨(142225000000000013 / 200000000000000000 : ℚ), (14225000000000001 / 20000000000000000 : ℚ)⟩
  r := (12569342745283 / 25000000000000 : ℚ)
  w := (210917300401 / 156250000000 : ℚ)
  center := (284475000000000023 / 400000000000000000 : ℚ)
  supportValue := (2832411026590249 / 10000000000000000 : ℚ)
  supportSlope := (-9033453451242597 / 10000000000000000 : ℚ)
  oldCenter := (2832411026590249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1649
  oldLo := (28300000000000003 / 100000000000000000 : ℚ)
  oldHi := (28350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_716]
}

noncomputable def cell_12311 : Cell := { cellDefaults with
  domain := ⟨(14225000000000001 / 20000000000000000 : ℚ), (142275000000000007 / 200000000000000000 : ℚ)⟩
  r := (12569342745283 / 25000000000000 : ℚ)
  w := (210917300401 / 156250000000 : ℚ)
  center := (284525000000000017 / 400000000000000000 : ℚ)
  supportValue := (2831282463145147 / 10000000000000000 : ℚ)
  supportSlope := (-4511783443850711 / 5000000000000000 : ℚ)
  oldCenter := (2831282463145147 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1649
  oldLo := (28300000000000003 / 100000000000000000 : ℚ)
  oldHi := (28350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_716]
}

noncomputable def cell_12312 : Cell := { cellDefaults with
  domain := ⟨(142275000000000007 / 200000000000000000 : ℚ), (35575000000000001 / 50000000000000000 : ℚ)⟩
  r := (12569342745283 / 25000000000000 : ℚ)
  w := (210917300401 / 156250000000 : ℚ)
  center := (284575000000000011 / 400000000000000000 : ℚ)
  supportValue := (283015711397469 / 1000000000000000 : ℚ)
  supportSlope := (-4509927892227247 / 5000000000000000 : ℚ)
  oldCenter := (283015711397469 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1649
  oldLo := (28250000000000003 / 100000000000000000 : ℚ)
  oldHi := (28350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_715, piece_716]
}

noncomputable def cell_12313 : Cell := { cellDefaults with
  domain := ⟨(35575000000000001 / 50000000000000000 : ℚ), (142325000000000007 / 200000000000000000 : ℚ)⟩
  r := (50256013395751 / 100000000000000 : ℚ)
  w := (13497571262511 / 10000000000000 : ℚ)
  center := (284625000000000011 / 400000000000000000 : ℚ)
  supportValue := (28311955504553843 / 100000000000000000 : ℚ)
  supportSlope := (-901914122055983 / 1000000000000000 : ℚ)
  oldCenter := (28311955504553843 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1650
  oldLo := (28300000000000003 / 100000000000000000 : ℚ)
  oldHi := (28350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_716]
}

noncomputable def cell_12314 : Cell := { cellDefaults with
  domain := ⟨(142325000000000007 / 200000000000000000 : ℚ), (14235000000000001 / 20000000000000000 : ℚ)⟩
  r := (50256013395751 / 100000000000000 : ℚ)
  w := (13497571262511 / 10000000000000 : ℚ)
  center := (284675000000000017 / 400000000000000000 : ℚ)
  supportValue := (44219855526947 / 156250000000000 : ℚ)
  supportSlope := (-4508365292554287 / 5000000000000000 : ℚ)
  oldCenter := (44219855526947 / 156250000000000 : ℚ)
  newCoefficients := coefficients_1650
  oldLo := (28250000000000003 / 100000000000000000 : ℚ)
  oldHi := (28350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_715, piece_716]
}

noncomputable def cell_12315 : Cell := { cellDefaults with
  domain := ⟨(14235000000000001 / 20000000000000000 : ℚ), (142375000000000013 / 200000000000000000 : ℚ)⟩
  r := (50256013395751 / 100000000000000 : ℚ)
  w := (13497571262511 / 10000000000000 : ℚ)
  center := (284725000000000023 / 400000000000000000 : ℚ)
  supportValue := (707235310625427 / 2500000000000000 : ℚ)
  supportSlope := (-4508150753296817 / 5000000000000000 : ℚ)
  oldCenter := (707235310625427 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1650
  oldLo := (28250000000000003 / 100000000000000000 : ℚ)
  oldHi := (28300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_715]
}

noncomputable def cell_12316 : Cell := { cellDefaults with
  domain := ⟨(142375000000000013 / 200000000000000000 : ℚ), (8900000000000001 / 12500000000000000 : ℚ)⟩
  r := (50256013395751 / 100000000000000 : ℚ)
  w := (13497571262511 / 10000000000000 : ℚ)
  center := (284775000000000029 / 400000000000000000 : ℚ)
  supportValue := (28278148228164607 / 100000000000000000 : ℚ)
  supportSlope := (-4503209349477359 / 5000000000000000 : ℚ)
  oldCenter := (28278148228164607 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1650
  oldLo := (28250000000000003 / 100000000000000000 : ℚ)
  oldHi := (28300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_715]
}

noncomputable def cell_12317 : Cell := { cellDefaults with
  domain := ⟨(8900000000000001 / 12500000000000000 : ℚ), (142420111731843587 / 200000000000000000 : ℚ)⟩
  center := (284820111731843603 / 400000000000000000 : ℚ)
  supportValue := (353620705615659 / 1250000000000000 : ℚ)
  supportSlope := (-360514131683037 / 400000000000000 : ℚ)
  oldCenter := (353620705615659 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1651
  oldLo := (28250000000000003 / 100000000000000000 : ℚ)
  oldHi := (28300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_715]
}

noncomputable def cell_12318 : Cell := { cellDefaults with
  domain := ⟨(142420111731843587 / 200000000000000000 : ℚ), (71220111731843579 / 100000000000000000 : ℚ)⟩
  center := (56972067039106149 / 80000000000000000 : ℚ)
  supportValue := (28280597241764693 / 100000000000000000 : ℚ)
  supportSlope := (-4502452653068111 / 5000000000000000 : ℚ)
  oldCenter := (28280597241764693 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1651
  oldLo := (28250000000000003 / 100000000000000000 : ℚ)
  oldHi := (28300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_715]
}

noncomputable def cell_12319 : Cell := { cellDefaults with
  domain := ⟨(71220111731843579 / 100000000000000000 : ℚ), (142460335195530729 / 200000000000000000 : ℚ)⟩
  center := (284900558659217887 / 400000000000000000 : ℚ)
  supportValue := (14135773006415983 / 50000000000000000 : ℚ)
  supportSlope := (-4498492399926207 / 5000000000000000 : ℚ)
  oldCenter := (14135773006415983 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1651
  oldLo := (28250000000000003 / 100000000000000000 : ℚ)
  oldHi := (28300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_715]
}

noncomputable def cell_12320 : Cell := { cellDefaults with
  domain := ⟨(142460335195530729 / 200000000000000000 : ℚ), (1424804469273743 / 2000000000000000 : ℚ)⟩
  center := (284940782122905029 / 400000000000000000 : ℚ)
  supportValue := (2826250273489557 / 10000000000000000 : ℚ)
  supportSlope := (-4494545812922093 / 5000000000000000 : ℚ)
  oldCenter := (2826250273489557 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1651
  oldLo := (28250000000000003 / 100000000000000000 : ℚ)
  oldHi := (28300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_715]
}

noncomputable def cell_12321 : Cell := { cellDefaults with
  domain := ⟨(1424804469273743 / 2000000000000000 : ℚ), (35625000000000001 / 50000000000000000 : ℚ)⟩
  center := (8905638966480447 / 12500000000000000 : ℚ)
  supportValue := (3531701574376507 / 12500000000000000 : ℚ)
  supportSlope := (-4491439839191723 / 5000000000000000 : ℚ)
  oldCenter := (3531701574376507 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1652
  oldHi := (28300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_714, piece_715]
}

noncomputable def cell_12322 : Cell := { cellDefaults with
  domain := ⟨(35625000000000001 / 50000000000000000 : ℚ), (142525000000000007 / 200000000000000000 : ℚ)⟩
  r := (50213365008863 / 100000000000000 : ℚ)
  w := (13495317283753 / 10000000000000 : ℚ)
  center := (285025000000000011 / 400000000000000000 : ℚ)
  supportValue := (565303073112383 / 2000000000000000 : ℚ)
  supportSlope := (-8987758795945299 / 10000000000000000 : ℚ)
  oldCenter := (565303073112383 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1653
  oldLo := (28250000000000003 / 100000000000000000 : ℚ)
  oldHi := (28300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_715]
}

noncomputable def cell_12323 : Cell := { cellDefaults with
  domain := ⟨(142525000000000007 / 200000000000000000 : ℚ), (14255000000000001 / 20000000000000000 : ℚ)⟩
  r := (50213365008863 / 100000000000000 : ℚ)
  w := (13495317283753 / 10000000000000 : ℚ)
  center := (285075000000000017 / 400000000000000000 : ℚ)
  supportValue := (2825394484783261 / 10000000000000000 : ℚ)
  supportSlope := (-8980523934399887 / 10000000000000000 : ℚ)
  oldCenter := (2825394484783261 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1653
  oldHi := (28300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_714, piece_715]
}

noncomputable def cell_12324 : Cell := { cellDefaults with
  domain := ⟨(14255000000000001 / 20000000000000000 : ℚ), (142575000000000013 / 200000000000000000 : ℚ)⟩
  r := (50213365008863 / 100000000000000 : ℚ)
  w := (13495317283753 / 10000000000000 : ℚ)
  center := (285125000000000023 / 400000000000000000 : ℚ)
  supportValue := (28242695014267477 / 100000000000000000 : ℚ)
  supportSlope := (-8984988985741881 / 10000000000000000 : ℚ)
  oldCenter := (28242695014267477 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1653
  oldPieces := [piece_714]
}

noncomputable def cell_12325 : Cell := { cellDefaults with
  domain := ⟨(142575000000000013 / 200000000000000000 : ℚ), (8912500000000001 / 12500000000000000 : ℚ)⟩
  r := (50213365008863 / 100000000000000 : ℚ)
  w := (13495317283753 / 10000000000000 : ℚ)
  center := (285175000000000029 / 400000000000000000 : ℚ)
  supportValue := (14115734970116317 / 50000000000000000 : ℚ)
  supportSlope := (-2243783678268227 / 2500000000000000 : ℚ)
  oldCenter := (14115734970116317 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1653
  oldPieces := [piece_714]
}

noncomputable def cell_12326 : Cell := { cellDefaults with
  domain := ⟨(8912500000000001 / 12500000000000000 : ℚ), (142625000000000013 / 200000000000000000 : ℚ)⟩
  r := (2007682922343 / 4000000000000 : ℚ)
  w := (13494195473947 / 10000000000000 : ℚ)
  center := (285225000000000029 / 400000000000000000 : ℚ)
  supportValue := (14120908928879203 / 50000000000000000 : ℚ)
  supportSlope := (-8980576179694577 / 10000000000000000 : ℚ)
  oldCenter := (14120908928879203 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1654
  oldPieces := [piece_714]
}

noncomputable def cell_12327 : Cell := { cellDefaults with
  domain := ⟨(142625000000000013 / 200000000000000000 : ℚ), (14265000000000001 / 20000000000000000 : ℚ)⟩
  r := (2007682922343 / 4000000000000 : ℚ)
  w := (13494195473947 / 10000000000000 : ℚ)
  center := (285275000000000023 / 400000000000000000 : ℚ)
  supportValue := (5646119658552411 / 20000000000000000 : ℚ)
  supportSlope := (-8970733041887523 / 10000000000000000 : ℚ)
  oldCenter := (5646119658552411 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1654
  oldPieces := [piece_714]
}

noncomputable def cell_12328 : Cell := { cellDefaults with
  domain := ⟨(14265000000000001 / 20000000000000000 : ℚ), (142675000000000007 / 200000000000000000 : ℚ)⟩
  r := (2007682922343 / 4000000000000 : ℚ)
  w := (13494195473947 / 10000000000000 : ℚ)
  center := (285325000000000017 / 400000000000000000 : ℚ)
  supportValue := (1128775640208163 / 4000000000000000 : ℚ)
  supportSlope := (-8960932213303261 / 10000000000000000 : ℚ)
  oldCenter := (1128775640208163 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1654
  oldPieces := [piece_714]
}

noncomputable def cell_12329 : Cell := { cellDefaults with
  domain := ⟨(142675000000000007 / 200000000000000000 : ℚ), (35675000000000001 / 50000000000000000 : ℚ)⟩
  r := (2007682922343 / 4000000000000 : ℚ)
  w := (13494195473947 / 10000000000000 : ℚ)
  center := (285375000000000011 / 400000000000000000 : ℚ)
  supportValue := (141040979711873 / 500000000000000 : ℚ)
  supportSlope := (-4475586705972571 / 5000000000000000 : ℚ)
  oldCenter := (141040979711873 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1654
  oldPieces := [piece_714]
}

noncomputable def cell_12330 : Cell := { cellDefaults with
  domain := ⟨(35675000000000001 / 50000000000000000 : ℚ), (142725000000000007 / 200000000000000000 : ℚ)⟩
  r := (50170813556663 / 100000000000000 : ℚ)
  w := (13493098752917 / 10000000000000 : ℚ)
  center := (285425000000000011 / 400000000000000000 : ℚ)
  supportValue := (28218467790350993 / 100000000000000000 : ℚ)
  supportSlope := (-4478250878787189 / 5000000000000000 : ℚ)
  oldCenter := (28218467790350993 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1655
  oldPieces := [piece_714]
}

noncomputable def cell_12331 : Cell := { cellDefaults with
  domain := ⟨(142725000000000007 / 200000000000000000 : ℚ), (14275000000000001 / 20000000000000000 : ℚ)⟩
  r := (50170813556663 / 100000000000000 : ℚ)
  w := (13493098752917 / 10000000000000 : ℚ)
  center := (285475000000000017 / 400000000000000000 : ℚ)
  supportValue := (14103639129170123 / 50000000000000000 : ℚ)
  supportSlope := (-4473377270878839 / 5000000000000000 : ℚ)
  oldCenter := (14103639129170123 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1655
  oldPieces := [piece_714]
}

noncomputable def cell_12332 : Cell := { cellDefaults with
  domain := ⟨(14275000000000001 / 20000000000000000 : ℚ), (142775000000000013 / 200000000000000000 : ℚ)⟩
  r := (50170813556663 / 100000000000000 : ℚ)
  w := (13493098752917 / 10000000000000 : ℚ)
  center := (285525000000000023 / 400000000000000000 : ℚ)
  supportValue := (2819611328117427 / 10000000000000000 : ℚ)
  supportSlope := (-4475641377598723 / 5000000000000000 : ℚ)
  oldCenter := (2819611328117427 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1655
  oldLo := (28150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_713, piece_714]
}

noncomputable def cell_12333 : Cell := { cellDefaults with
  domain := ⟨(142775000000000013 / 200000000000000000 : ℚ), (8925000000000001 / 12500000000000000 : ℚ)⟩
  r := (50170813556663 / 100000000000000 : ℚ)
  w := (13493098752917 / 10000000000000 : ℚ)
  center := (285575000000000029 / 400000000000000000 : ℚ)
  supportValue := (1409245371114587 / 5000000000000000 : ℚ)
  supportSlope := (-4471993810705751 / 5000000000000000 : ℚ)
  oldCenter := (1409245371114587 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1655
  oldLo := (28150000000000003 / 100000000000000000 : ℚ)
  oldHi := (28200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_713]
}

noncomputable def cell_12334 : Cell := { cellDefaults with
  domain := ⟨(8925000000000001 / 12500000000000000 : ℚ), (142825000000000013 / 200000000000000000 : ℚ)⟩
  r := (50149569871441 / 100000000000000 : ℚ)
  w := (2698399121797 / 2000000000000 : ℚ)
  center := (285625000000000029 / 400000000000000000 : ℚ)
  supportValue := (1409760564117289 / 5000000000000000 : ℚ)
  supportSlope := (-1789645621642181 / 2000000000000000 : ℚ)
  oldCenter := (1409760564117289 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1656
  oldLo := (28150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_713, piece_714]
}

noncomputable def cell_12335 : Cell := { cellDefaults with
  domain := ⟨(142825000000000013 / 200000000000000000 : ℚ), (14285000000000001 / 20000000000000000 : ℚ)⟩
  r := (50149569871441 / 100000000000000 : ℚ)
  w := (2698399121797 / 2000000000000 : ℚ)
  center := (285675000000000023 / 400000000000000000 : ℚ)
  supportValue := (2818401093571357 / 10000000000000000 : ℚ)
  supportSlope := (-8939584066790479 / 10000000000000000 : ℚ)
  oldCenter := (2818401093571357 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1656
  oldLo := (28150000000000003 / 100000000000000000 : ℚ)
  oldHi := (28200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_713]
}

noncomputable def cell_12336 : Cell := { cellDefaults with
  domain := ⟨(14285000000000001 / 20000000000000000 : ℚ), (142875000000000007 / 200000000000000000 : ℚ)⟩
  r := (50149569871441 / 100000000000000 : ℚ)
  w := (2698399121797 / 2000000000000 : ℚ)
  center := (285725000000000017 / 400000000000000000 : ℚ)
  supportValue := (704321064141241 / 2500000000000000 : ℚ)
  supportSlope := (-1116226649556929 / 1250000000000000 : ℚ)
  oldCenter := (704321064141241 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1656
  oldLo := (28150000000000003 / 100000000000000000 : ℚ)
  oldHi := (28200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_713]
}

noncomputable def cell_12337 : Cell := { cellDefaults with
  domain := ⟨(142875000000000007 / 200000000000000000 : ℚ), (35725000000000001 / 50000000000000000 : ℚ)⟩
  r := (50149569871441 / 100000000000000 : ℚ)
  w := (2698399121797 / 2000000000000 : ℚ)
  center := (285775000000000011 / 400000000000000000 : ℚ)
  supportValue := (2816168638291679 / 10000000000000000 : ℚ)
  supportSlope := (-8920084272779863 / 10000000000000000 : ℚ)
  oldCenter := (2816168638291679 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1656
  oldLo := (28150000000000003 / 100000000000000000 : ℚ)
  oldHi := (28200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_713]
}

noncomputable def cell_12338 : Cell := { cellDefaults with
  domain := ⟨(35725000000000001 / 50000000000000000 : ℚ), (142925000000000007 / 200000000000000000 : ℚ)⟩
  r := (25064178962383 / 50000000000000 : ℚ)
  w := (13490915873943 / 10000000000000 : ℚ)
  center := (285825000000000011 / 400000000000000000 : ℚ)
  supportValue := (14085949045471513 / 50000000000000000 : ℚ)
  supportSlope := (-8925383574672803 / 10000000000000000 : ℚ)
  oldCenter := (14085949045471513 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1657
  oldLo := (28150000000000003 / 100000000000000000 : ℚ)
  oldHi := (28200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_713]
}

noncomputable def cell_12339 : Cell := { cellDefaults with
  domain := ⟨(142925000000000007 / 200000000000000000 : ℚ), (14295000000000001 / 20000000000000000 : ℚ)⟩
  r := (25064178962383 / 50000000000000 : ℚ)
  w := (13490915873943 / 10000000000000 : ℚ)
  center := (285875000000000017 / 400000000000000000 : ℚ)
  supportValue := (5632149487619561 / 20000000000000000 : ℚ)
  supportSlope := (-2228916514621381 / 2500000000000000 : ℚ)
  oldCenter := (5632149487619561 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1657
  oldLo := (28150000000000003 / 100000000000000000 : ℚ)
  oldHi := (28200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_713]
}

noncomputable def cell_12340 : Cell := { cellDefaults with
  domain := ⟨(14295000000000001 / 20000000000000000 : ℚ), (142975000000000013 / 200000000000000000 : ℚ)⟩
  r := (25064178962383 / 50000000000000 : ℚ)
  w := (13490915873943 / 10000000000000 : ℚ)
  center := (285925000000000023 / 400000000000000000 : ℚ)
  supportValue := (703740696448581 / 2500000000000000 : ℚ)
  supportSlope := (-4457481321322197 / 5000000000000000 : ℚ)
  oldCenter := (703740696448581 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1657
  oldLo := (702513966480447 / 2500000000000000 : ℚ)
  oldHi := (28200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_712, piece_713]
}

noncomputable def cell_12341 : Cell := { cellDefaults with
  domain := ⟨(142975000000000013 / 200000000000000000 : ℚ), (8937500000000001 / 12500000000000000 : ℚ)⟩
  r := (25064178962383 / 50000000000000 : ℚ)
  w := (13490915873943 / 10000000000000 : ℚ)
  center := (285975000000000029 / 400000000000000000 : ℚ)
  supportValue := (14069230407010233 / 50000000000000000 : ℚ)
  supportSlope := (-178259557906891 / 200000000000000 : ℚ)
  oldCenter := (14069230407010233 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1657
  oldLo := (702513966480447 / 2500000000000000 : ℚ)
  oldHi := (28150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_712]
}

noncomputable def cell_12342 : Cell := { cellDefaults with
  domain := ⟨(8937500000000001 / 12500000000000000 : ℚ), (143025000000000013 / 200000000000000000 : ℚ)⟩
  r := (50107164197427 / 100000000000000 : ℚ)
  w := (1686229279049 / 1250000000000 : ℚ)
  center := (286025000000000029 / 400000000000000000 : ℚ)
  supportValue := (2814869459455203 / 10000000000000000 : ℚ)
  supportSlope := (-8911954403664171 / 10000000000000000 : ℚ)
  oldCenter := (2814869459455203 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1658
  oldLo := (702513966480447 / 2500000000000000 : ℚ)
  oldHi := (28200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_712, piece_713]
}

noncomputable def cell_12343 : Cell := { cellDefaults with
  domain := ⟨(143025000000000013 / 200000000000000000 : ℚ), (14305000000000001 / 20000000000000000 : ℚ)⟩
  r := (50107164197427 / 100000000000000 : ℚ)
  w := (1686229279049 / 1250000000000 : ℚ)
  center := (286075000000000023 / 400000000000000000 : ℚ)
  supportValue := (2813753307139331 / 10000000000000000 : ℚ)
  supportSlope := (-2227141882449591 / 2500000000000000 : ℚ)
  oldCenter := (2813753307139331 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1658
  oldLo := (702513966480447 / 2500000000000000 : ℚ)
  oldHi := (28150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_712]
}

noncomputable def cell_12344 : Cell := { cellDefaults with
  domain := ⟨(14305000000000001 / 20000000000000000 : ℚ), (143075000000000007 / 200000000000000000 : ℚ)⟩
  r := (50107164197427 / 100000000000000 : ℚ)
  w := (1686229279049 / 1250000000000 : ℚ)
  center := (286125000000000017 / 400000000000000000 : ℚ)
  supportValue := (281264034518153 / 1000000000000000 : ℚ)
  supportSlope := (-8898828949012129 / 10000000000000000 : ℚ)
  oldCenter := (281264034518153 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1658
  oldLo := (702513966480447 / 2500000000000000 : ℚ)
  oldHi := (28150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_712]
}

noncomputable def cell_12345 : Cell := { cellDefaults with
  domain := ⟨(143075000000000007 / 200000000000000000 : ℚ), (35775000000000001 / 50000000000000000 : ℚ)⟩
  r := (50107164197427 / 100000000000000 : ℚ)
  w := (1686229279049 / 1250000000000 : ℚ)
  center := (286175000000000011 / 400000000000000000 : ℚ)
  supportValue := (140576429896351 / 500000000000000 : ℚ)
  supportSlope := (-1777826442598709 / 2000000000000000 : ℚ)
  oldCenter := (140576429896351 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1658
  oldLo := (702513966480447 / 2500000000000000 : ℚ)
  oldHi := (28150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_712]
}

noncomputable def cell_12346 : Cell := { cellDefaults with
  domain := ⟨(35775000000000001 / 50000000000000000 : ℚ), (143125000000000007 / 200000000000000000 : ℚ)⟩
  r := (10017199750081 / 20000000000000 : ℚ)
  w := (13488768819909 / 10000000000000 : ℚ)
  center := (286225000000000011 / 400000000000000000 : ℚ)
  supportValue := (43946004901563 / 156250000000000 : ℚ)
  supportSlope := (-444720224440811 / 500000000000000 : ℚ)
  oldCenter := (43946004901563 / 156250000000000 : ℚ)
  newCoefficients := coefficients_1659
  oldLo := (702513966480447 / 2500000000000000 : ℚ)
  oldHi := (28150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_712]
}

noncomputable def cell_12347 : Cell := { cellDefaults with
  domain := ⟨(143125000000000007 / 200000000000000000 : ℚ), (14315000000000001 / 20000000000000000 : ℚ)⟩
  r := (10017199750081 / 20000000000000 : ℚ)
  w := (13488768819909 / 10000000000000 : ℚ)
  center := (286275000000000017 / 400000000000000000 : ℚ)
  supportValue := (2811433118787673 / 10000000000000000 : ℚ)
  supportSlope := (-1110589897854597 / 1250000000000000 : ℚ)
  oldCenter := (2811433118787673 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1659
  oldLo := (702513966480447 / 2500000000000000 : ℚ)
  oldHi := (28150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_712]
}

noncomputable def cell_12348 : Cell := { cellDefaults with
  domain := ⟨(14315000000000001 / 20000000000000000 : ℚ), (143175000000000013 / 200000000000000000 : ℚ)⟩
  r := (10017199750081 / 20000000000000 : ℚ)
  w := (13488768819909 / 10000000000000 : ℚ)
  center := (286325000000000023 / 400000000000000000 : ℚ)
  supportValue := (2810325099166953 / 10000000000000000 : ℚ)
  supportSlope := (-4439291448425387 / 5000000000000000 : ℚ)
  oldCenter := (2810325099166953 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1659
  oldLo := (28050000000000003 / 100000000000000000 : ℚ)
  oldHi := (28150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_710, piece_711, piece_712]
}

noncomputable def cell_12349 : Cell := { cellDefaults with
  domain := ⟨(143175000000000013 / 200000000000000000 : ℚ), (8950000000000001 / 12500000000000000 : ℚ)⟩
  r := (10017199750081 / 20000000000000 : ℚ)
  w := (13488768819909 / 10000000000000 : ℚ)
  center := (286375000000000029 / 400000000000000000 : ℚ)
  supportValue := (112368514662079 / 400000000000000 : ℚ)
  supportSlope := (-8882122233319123 / 10000000000000000 : ℚ)
  oldCenter := (112368514662079 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1659
  oldLo := (28050000000000003 / 100000000000000000 : ℚ)
  oldHi := (28100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_710]
}

theorem check_12300 : cell_12300.check = true := by
  decide +kernel

theorem check_12301 : cell_12301.check = true := by
  decide +kernel

theorem check_12302 : cell_12302.check = true := by
  decide +kernel

theorem check_12303 : cell_12303.check = true := by
  decide +kernel

theorem check_12304 : cell_12304.check = true := by
  decide +kernel

theorem check_12305 : cell_12305.check = true := by
  decide +kernel

theorem check_12306 : cell_12306.check = true := by
  decide +kernel

theorem check_12307 : cell_12307.check = true := by
  decide +kernel

theorem check_12308 : cell_12308.check = true := by
  decide +kernel

theorem check_12309 : cell_12309.check = true := by
  decide +kernel

theorem check_12310 : cell_12310.check = true := by
  decide +kernel

theorem check_12311 : cell_12311.check = true := by
  decide +kernel

theorem check_12312 : cell_12312.check = true := by
  decide +kernel

theorem check_12313 : cell_12313.check = true := by
  decide +kernel

theorem check_12314 : cell_12314.check = true := by
  decide +kernel

theorem check_12315 : cell_12315.check = true := by
  decide +kernel

theorem check_12316 : cell_12316.check = true := by
  decide +kernel

theorem check_12317 : cell_12317.check = true := by
  decide +kernel

theorem check_12318 : cell_12318.check = true := by
  decide +kernel

theorem check_12319 : cell_12319.check = true := by
  decide +kernel

theorem check_12320 : cell_12320.check = true := by
  decide +kernel

theorem check_12321 : cell_12321.check = true := by
  decide +kernel

theorem check_12322 : cell_12322.check = true := by
  decide +kernel

theorem check_12323 : cell_12323.check = true := by
  decide +kernel

theorem check_12324 : cell_12324.check = true := by
  decide +kernel

theorem check_12325 : cell_12325.check = true := by
  decide +kernel

theorem check_12326 : cell_12326.check = true := by
  decide +kernel

theorem check_12327 : cell_12327.check = true := by
  decide +kernel

theorem check_12328 : cell_12328.check = true := by
  decide +kernel

theorem check_12329 : cell_12329.check = true := by
  decide +kernel

theorem check_12330 : cell_12330.check = true := by
  decide +kernel

theorem check_12331 : cell_12331.check = true := by
  decide +kernel

theorem check_12332 : cell_12332.check = true := by
  decide +kernel

theorem check_12333 : cell_12333.check = true := by
  decide +kernel

theorem check_12334 : cell_12334.check = true := by
  decide +kernel

theorem check_12335 : cell_12335.check = true := by
  decide +kernel

theorem check_12336 : cell_12336.check = true := by
  decide +kernel

theorem check_12337 : cell_12337.check = true := by
  decide +kernel

theorem check_12338 : cell_12338.check = true := by
  decide +kernel

theorem check_12339 : cell_12339.check = true := by
  decide +kernel

theorem check_12340 : cell_12340.check = true := by
  decide +kernel

theorem check_12341 : cell_12341.check = true := by
  decide +kernel

theorem check_12342 : cell_12342.check = true := by
  decide +kernel

theorem check_12343 : cell_12343.check = true := by
  decide +kernel

theorem check_12344 : cell_12344.check = true := by
  decide +kernel

theorem check_12345 : cell_12345.check = true := by
  decide +kernel

theorem check_12346 : cell_12346.check = true := by
  decide +kernel

theorem check_12347 : cell_12347.check = true := by
  decide +kernel

theorem check_12348 : cell_12348.check = true := by
  decide +kernel

theorem check_12349 : cell_12349.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12300, cell_12301, cell_12302, cell_12303, cell_12304, cell_12305, cell_12306, cell_12307, cell_12308, cell_12309, cell_12310, cell_12311, cell_12312, cell_12313, cell_12314, cell_12315, cell_12316, cell_12317, cell_12318, cell_12319, cell_12320, cell_12321, cell_12322, cell_12323, cell_12324, cell_12325, cell_12326, cell_12327, cell_12328, cell_12329, cell_12330, cell_12331, cell_12332, cell_12333, cell_12334, cell_12335, cell_12336, cell_12337, cell_12338, cell_12339, cell_12340, cell_12341, cell_12342, cell_12343, cell_12344, cell_12345, cell_12346, cell_12347, cell_12348, cell_12349]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12300, check_12301, check_12302, check_12303, check_12304, check_12305, check_12306, check_12307, check_12308, check_12309, check_12310, check_12311, check_12312, check_12313, check_12314, check_12315, check_12316, check_12317, check_12318, check_12319, check_12320, check_12321, check_12322, check_12323, check_12324, check_12325, check_12326, check_12327, check_12328, check_12329, check_12330, check_12331, check_12332, check_12333, check_12334, check_12335, check_12336, check_12337, check_12338, check_12339, check_12340, check_12341, check_12342, check_12343, check_12344, check_12345, check_12346, check_12347, check_12348, check_12349, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0246

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0246
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0246
open AnalyticBounds.ExpressionCertificate

theorem linked_12300 : Linked cell_12300 pieces := by
  link_source cell_12300 with piece_1646 using piece_1646_mem, piece_717_mem

theorem linked_12301 : Linked cell_12301 pieces := by
  link_source cell_12301 with piece_1647 using piece_1647_mem, piece_717_mem

theorem linked_12302 : Linked cell_12302 pieces := by
  link_source cell_12302 with piece_1647 using piece_1647_mem, piece_717_mem

theorem linked_12303 : Linked cell_12303 pieces := by
  link_source cell_12303 with piece_1647 using piece_1647_mem, piece_717_mem

theorem linked_12304 : Linked cell_12304 pieces := by
  link_source cell_12304 with piece_1647 using piece_1647_mem, ⟨piece_716_mem, piece_717_mem⟩

theorem linked_12305 : Linked cell_12305 pieces := by
  link_source cell_12305 with piece_1648 using piece_1648_mem, piece_717_mem

theorem linked_12306 : Linked cell_12306 pieces := by
  link_source cell_12306 with piece_1648 using piece_1648_mem, ⟨piece_716_mem, piece_717_mem⟩

theorem linked_12307 : Linked cell_12307 pieces := by
  link_source cell_12307 with piece_1648 using piece_1648_mem, piece_716_mem

theorem linked_12308 : Linked cell_12308 pieces := by
  link_source cell_12308 with piece_1648 using piece_1648_mem, piece_716_mem

theorem linked_12309 : Linked cell_12309 pieces := by
  link_source cell_12309 with piece_1649 using piece_1649_mem, piece_716_mem

theorem linked_12310 : Linked cell_12310 pieces := by
  link_source cell_12310 with piece_1649 using piece_1649_mem, piece_716_mem

theorem linked_12311 : Linked cell_12311 pieces := by
  link_source cell_12311 with piece_1649 using piece_1649_mem, piece_716_mem

theorem linked_12312 : Linked cell_12312 pieces := by
  link_source cell_12312 with piece_1649 using piece_1649_mem, ⟨piece_715_mem, piece_716_mem⟩

theorem linked_12313 : Linked cell_12313 pieces := by
  link_source cell_12313 with piece_1650 using piece_1650_mem, piece_716_mem

theorem linked_12314 : Linked cell_12314 pieces := by
  link_source cell_12314 with piece_1650 using piece_1650_mem, ⟨piece_715_mem, piece_716_mem⟩

theorem linked_12315 : Linked cell_12315 pieces := by
  link_source cell_12315 with piece_1650 using piece_1650_mem, piece_715_mem

theorem linked_12316 : Linked cell_12316 pieces := by
  link_source cell_12316 with piece_1650 using piece_1650_mem, piece_715_mem

theorem linked_12317 : Linked cell_12317 pieces := by
  link_source cell_12317 with piece_1651 using piece_1651_mem, piece_715_mem

theorem linked_12318 : Linked cell_12318 pieces := by
  link_source cell_12318 with piece_1651 using piece_1651_mem, piece_715_mem

theorem linked_12319 : Linked cell_12319 pieces := by
  link_source cell_12319 with piece_1651 using piece_1651_mem, piece_715_mem

theorem linked_12320 : Linked cell_12320 pieces := by
  link_source cell_12320 with piece_1651 using piece_1651_mem, piece_715_mem

theorem linked_12321 : Linked cell_12321 pieces := by
  link_source cell_12321 with piece_1652 using piece_1652_mem, ⟨piece_714_mem, piece_715_mem⟩

theorem linked_12322 : Linked cell_12322 pieces := by
  link_source cell_12322 with piece_1653 using piece_1653_mem, piece_715_mem

theorem linked_12323 : Linked cell_12323 pieces := by
  link_source cell_12323 with piece_1653 using piece_1653_mem, ⟨piece_714_mem, piece_715_mem⟩

theorem linked_12324 : Linked cell_12324 pieces := by
  link_source cell_12324 with piece_1653 using piece_1653_mem, piece_714_mem

theorem linked_12325 : Linked cell_12325 pieces := by
  link_source cell_12325 with piece_1653 using piece_1653_mem, piece_714_mem

theorem linked_12326 : Linked cell_12326 pieces := by
  link_source cell_12326 with piece_1654 using piece_1654_mem, piece_714_mem

theorem linked_12327 : Linked cell_12327 pieces := by
  link_source cell_12327 with piece_1654 using piece_1654_mem, piece_714_mem

theorem linked_12328 : Linked cell_12328 pieces := by
  link_source cell_12328 with piece_1654 using piece_1654_mem, piece_714_mem

theorem linked_12329 : Linked cell_12329 pieces := by
  link_source cell_12329 with piece_1654 using piece_1654_mem, piece_714_mem

theorem linked_12330 : Linked cell_12330 pieces := by
  link_source cell_12330 with piece_1655 using piece_1655_mem, piece_714_mem

theorem linked_12331 : Linked cell_12331 pieces := by
  link_source cell_12331 with piece_1655 using piece_1655_mem, piece_714_mem

theorem linked_12332 : Linked cell_12332 pieces := by
  link_source cell_12332 with piece_1655 using piece_1655_mem, ⟨piece_713_mem, piece_714_mem⟩

theorem linked_12333 : Linked cell_12333 pieces := by
  link_source cell_12333 with piece_1655 using piece_1655_mem, piece_713_mem

theorem linked_12334 : Linked cell_12334 pieces := by
  link_source cell_12334 with piece_1656 using piece_1656_mem, ⟨piece_713_mem, piece_714_mem⟩

theorem linked_12335 : Linked cell_12335 pieces := by
  link_source cell_12335 with piece_1656 using piece_1656_mem, piece_713_mem

theorem linked_12336 : Linked cell_12336 pieces := by
  link_source cell_12336 with piece_1656 using piece_1656_mem, piece_713_mem

theorem linked_12337 : Linked cell_12337 pieces := by
  link_source cell_12337 with piece_1656 using piece_1656_mem, piece_713_mem

theorem linked_12338 : Linked cell_12338 pieces := by
  link_source cell_12338 with piece_1657 using piece_1657_mem, piece_713_mem

theorem linked_12339 : Linked cell_12339 pieces := by
  link_source cell_12339 with piece_1657 using piece_1657_mem, piece_713_mem

theorem linked_12340 : Linked cell_12340 pieces := by
  link_source cell_12340 with piece_1657 using piece_1657_mem, ⟨piece_712_mem, piece_713_mem⟩

theorem linked_12341 : Linked cell_12341 pieces := by
  link_source cell_12341 with piece_1657 using piece_1657_mem, piece_712_mem

theorem linked_12342 : Linked cell_12342 pieces := by
  link_source cell_12342 with piece_1658 using piece_1658_mem, ⟨piece_712_mem, piece_713_mem⟩

theorem linked_12343 : Linked cell_12343 pieces := by
  link_source cell_12343 with piece_1658 using piece_1658_mem, piece_712_mem

theorem linked_12344 : Linked cell_12344 pieces := by
  link_source cell_12344 with piece_1658 using piece_1658_mem, piece_712_mem

theorem linked_12345 : Linked cell_12345 pieces := by
  link_source cell_12345 with piece_1658 using piece_1658_mem, piece_712_mem

theorem linked_12346 : Linked cell_12346 pieces := by
  link_source cell_12346 with piece_1659 using piece_1659_mem, piece_712_mem

theorem linked_12347 : Linked cell_12347 pieces := by
  link_source cell_12347 with piece_1659 using piece_1659_mem, piece_712_mem

theorem linked_12348 : Linked cell_12348 pieces := by
  link_source cell_12348 with piece_1659 using piece_1659_mem, ⟨piece_710_mem, ⟨piece_711_mem, piece_712_mem⟩⟩

theorem linked_12349 : Linked cell_12349 pieces := by
  link_source cell_12349 with piece_1659 using piece_1659_mem, piece_710_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0246.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0246.cells,List.forall_mem_cons]
  exact ⟨linked_12300, linked_12301, linked_12302, linked_12303, linked_12304, linked_12305, linked_12306, linked_12307, linked_12308, linked_12309, linked_12310, linked_12311, linked_12312, linked_12313, linked_12314, linked_12315, linked_12316, linked_12317, linked_12318, linked_12319, linked_12320, linked_12321, linked_12322, linked_12323, linked_12324, linked_12325, linked_12326, linked_12327, linked_12328, linked_12329, linked_12330, linked_12331, linked_12332, linked_12333, linked_12334, linked_12335, linked_12336, linked_12337, linked_12338, linked_12339, linked_12340, linked_12341, linked_12342, linked_12343, linked_12344, linked_12345, linked_12346, linked_12347, linked_12348, linked_12349, by simp⟩

theorem covered : covers (141975000000000013 / 200000000000000000 : ℚ) (8950000000000001 / 12500000000000000 : ℚ)
    (SourceCertificates.Chunk0246.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0246
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0247
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(8950000000000001 / 12500000000000000 : ℚ), (286450000000000027 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (12500392990109 / 25000000000000 : ℚ)
  w := (13484593372159 / 10000000000000 : ℚ)
  center := (572850000000000059 / 800000000000000000 : ℚ)
  supportValue := (87819637061991 / 312500000000000 : ℚ)
  supportSlope := (-1775125104892261 / 2000000000000000 : ℚ)
  oldCenter := (87819637061991 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1660
  oldLo := (27900000000000003 / 100000000000000000 : ℚ)
  oldHi := (27950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_707]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12350 : Cell := { cellDefaults with
  r := (50064855685159 / 100000000000000 : ℚ)
  w := (421490965769 / 312500000000 : ℚ)
  oldLo := (28050000000000003 / 100000000000000000 : ℚ)
  oldHi := (28150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_710, piece_711, piece_712]
}

noncomputable def cell_12351 : Cell := { cellDefaults with
  domain := ⟨(286450000000000027 / 400000000000000000 : ℚ), (143250000000000011 / 200000000000000000 : ℚ)⟩
  r := (50064855685159 / 100000000000000 : ℚ)
  w := (421490965769 / 312500000000 : ℚ)
  center := (572950000000000049 / 800000000000000000 : ℚ)
  supportValue := (175569782728517 / 625000000000000 : ℚ)
  supportSlope := (-8877701832600059 / 10000000000000000 : ℚ)
  oldCenter := (175569782728517 / 625000000000000 : ℚ)
  oldLo := (28050000000000003 / 100000000000000000 : ℚ)
  oldHi := (28100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_710]
}

noncomputable def cell_12352 : Cell := { cellDefaults with
  domain := ⟨(143250000000000011 / 200000000000000000 : ℚ), (286550000000000017 / 400000000000000000 : ℚ)⟩
  r := (50064855685159 / 100000000000000 : ℚ)
  w := (421490965769 / 312500000000 : ℚ)
  center := (573050000000000039 / 800000000000000000 : ℚ)
  supportValue := (2808007417727463 / 10000000000000000 : ℚ)
  supportSlope := (-2216999542439479 / 2500000000000000 : ℚ)
  oldCenter := (2808007417727463 / 10000000000000000 : ℚ)
  oldLo := (28050000000000003 / 100000000000000000 : ℚ)
  oldHi := (28100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_710]
}

noncomputable def cell_12353 : Cell := { cellDefaults with
  domain := ⟨(286550000000000017 / 400000000000000000 : ℚ), (71650000000000003 / 100000000000000000 : ℚ)⟩
  r := (50064855685159 / 100000000000000 : ℚ)
  w := (421490965769 / 312500000000 : ℚ)
  center := (573150000000000029 / 800000000000000000 : ℚ)
  supportValue := (5613799044289931 / 20000000000000000 : ℚ)
  supportSlope := (-1107292028453943 / 1250000000000000 : ℚ)
  oldCenter := (5613799044289931 / 20000000000000000 : ℚ)
  oldLo := (28050000000000003 / 100000000000000000 : ℚ)
  oldHi := (28100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_710]
}

noncomputable def cell_12354 : Cell := { cellDefaults with
  domain := ⟨(71650000000000003 / 100000000000000000 : ℚ), (286650000000000017 / 400000000000000000 : ℚ)⟩
  r := (400349893709 / 800000000000 : ℚ)
  w := (3371665587677 / 2500000000000 : ℚ)
  center := (573250000000000029 / 800000000000000000 : ℚ)
  supportValue := (2807909367338639 / 10000000000000000 : ℚ)
  supportSlope := (-8863575581718133 / 10000000000000000 : ℚ)
  oldCenter := (2807909367338639 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1661
  oldLo := (28050000000000003 / 100000000000000000 : ℚ)
  oldHi := (28100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_710]
}

noncomputable def cell_12355 : Cell := { cellDefaults with
  domain := ⟨(286650000000000017 / 400000000000000000 : ℚ), (143350000000000011 / 200000000000000000 : ℚ)⟩
  r := (400349893709 / 800000000000 : ℚ)
  w := (3371665587677 / 2500000000000 : ℚ)
  center := (573350000000000039 / 800000000000000000 : ℚ)
  supportValue := (35085025298277 / 125000000000000 : ℚ)
  supportSlope := (-885392510332839 / 1000000000000000 : ℚ)
  oldCenter := (35085025298277 / 125000000000000 : ℚ)
  newCoefficients := coefficients_1661
  oldLo := (28050000000000003 / 100000000000000000 : ℚ)
  oldHi := (28100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_710]
}

noncomputable def cell_12356 : Cell := { cellDefaults with
  domain := ⟨(143350000000000011 / 200000000000000000 : ℚ), (286750000000000027 / 400000000000000000 : ℚ)⟩
  r := (400349893709 / 800000000000 : ℚ)
  w := (3371665587677 / 2500000000000 : ℚ)
  center := (573450000000000049 / 800000000000000000 : ℚ)
  supportValue := (5611391768211993 / 20000000000000000 : ℚ)
  supportSlope := (-2211078998386241 / 2500000000000000 : ℚ)
  oldCenter := (5611391768211993 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1661
  oldLo := (28050000000000003 / 100000000000000000 : ℚ)
  oldHi := (28100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_710]
}

noncomputable def cell_12357 : Cell := { cellDefaults with
  domain := ⟨(286750000000000027 / 400000000000000000 : ℚ), (8962500000000001 / 12500000000000000 : ℚ)⟩
  r := (400349893709 / 800000000000 : ℚ)
  w := (3371665587677 / 2500000000000 : ℚ)
  center := (573550000000000059 / 800000000000000000 : ℚ)
  supportValue := (28045921333276447 / 100000000000000000 : ℚ)
  supportSlope := (-884922742409611 / 1000000000000000 : ℚ)
  oldCenter := (28045921333276447 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1661
  oldLo := (28000000000000003 / 100000000000000000 : ℚ)
  oldHi := (28100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_709, piece_710]
}

noncomputable def cell_12358 : Cell := { cellDefaults with
  domain := ⟨(8962500000000001 / 12500000000000000 : ℚ), (286850000000000027 / 400000000000000000 : ℚ)⟩
  r := (6252830343217 / 12500000000000 : ℚ)
  w := (674281209567 / 500000000000 : ℚ)
  center := (573650000000000059 / 800000000000000000 : ℚ)
  supportValue := (2805596421569257 / 10000000000000000 : ℚ)
  supportSlope := (-2209975204203961 / 2500000000000000 : ℚ)
  oldCenter := (2805596421569257 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1662
  oldLo := (28050000000000003 / 100000000000000000 : ℚ)
  oldHi := (28100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_710]
}

noncomputable def cell_12359 : Cell := { cellDefaults with
  domain := ⟨(286850000000000027 / 400000000000000000 : ℚ), (143450000000000011 / 200000000000000000 : ℚ)⟩
  r := (6252830343217 / 12500000000000 : ℚ)
  w := (674281209567 / 500000000000 : ℚ)
  center := (573750000000000049 / 800000000000000000 : ℚ)
  supportValue := (14022465178837107 / 50000000000000000 : ℚ)
  supportSlope := (-8846302663140011 / 10000000000000000 : ℚ)
  oldCenter := (14022465178837107 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1662
  oldLo := (28000000000000003 / 100000000000000000 : ℚ)
  oldHi := (28100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_709, piece_710]
}

noncomputable def cell_12360 : Cell := { cellDefaults with
  domain := ⟨(143450000000000011 / 200000000000000000 : ℚ), (286950000000000017 / 400000000000000000 : ℚ)⟩
  r := (6252830343217 / 12500000000000 : ℚ)
  w := (674281209567 / 500000000000 : ℚ)
  center := (573850000000000039 / 800000000000000000 : ℚ)
  supportValue := (7008464519016809 / 25000000000000000 : ℚ)
  supportSlope := (-8837289554924683 / 10000000000000000 : ℚ)
  oldCenter := (7008464519016809 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1662
  oldLo := (28000000000000003 / 100000000000000000 : ℚ)
  oldHi := (28050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_709]
}

noncomputable def cell_12361 : Cell := { cellDefaults with
  domain := ⟨(286950000000000017 / 400000000000000000 : ℚ), (71750000000000003 / 100000000000000000 : ℚ)⟩
  r := (6252830343217 / 12500000000000 : ℚ)
  w := (674281209567 / 500000000000 : ℚ)
  center := (573950000000000029 / 800000000000000000 : ℚ)
  supportValue := (28022817482734763 / 100000000000000000 : ℚ)
  supportSlope := (-2206916209222197 / 2500000000000000 : ℚ)
  oldCenter := (28022817482734763 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1662
  oldLo := (28000000000000003 / 100000000000000000 : ℚ)
  oldHi := (28050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_709]
}

noncomputable def cell_12362 : Cell := { cellDefaults with
  domain := ⟨(71750000000000003 / 100000000000000000 : ℚ), (287043296089385479 / 400000000000000000 : ℚ)⟩
  center := (574043296089385491 / 800000000000000000 : ℚ)
  supportValue := (2803359448544491 / 10000000000000000 : ℚ)
  supportSlope := (-8833512196031829 / 10000000000000000 : ℚ)
  oldCenter := (2803359448544491 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1663
  oldLo := (28000000000000003 / 100000000000000000 : ℚ)
  oldHi := (28050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_709]
}

noncomputable def cell_12363 : Cell := { cellDefaults with
  domain := ⟨(287043296089385479 / 400000000000000000 : ℚ), (143543296089385473 / 200000000000000000 : ℚ)⟩
  center := (22965195530726257 / 32000000000000000 : ℚ)
  supportValue := (280240375811453 / 1000000000000000 : ℚ)
  supportSlope := (-1765036622931641 / 2000000000000000 : ℚ)
  oldCenter := (280240375811453 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1663
  oldLo := (28000000000000003 / 100000000000000000 : ℚ)
  oldHi := (28050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_709]
}

noncomputable def cell_12364 : Cell := { cellDefaults with
  domain := ⟨(143543296089385473 / 200000000000000000 : ℚ), (287129888268156413 / 400000000000000000 : ℚ)⟩
  center := (574216480446927359 / 800000000000000000 : ℚ)
  supportValue := (28014489675488913 / 100000000000000000 : ℚ)
  supportSlope := (-881688498590833 / 1000000000000000 : ℚ)
  oldCenter := (28014489675488913 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1663
  oldLo := (28000000000000003 / 100000000000000000 : ℚ)
  oldHi := (28050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_709]
}

noncomputable def cell_12365 : Cell := { cellDefaults with
  domain := ⟨(287129888268156413 / 400000000000000000 : ℚ), (7179329608938547 / 10000000000000000 : ℚ)⟩
  center := (574303072625698293 / 800000000000000000 : ℚ)
  supportValue := (2800495073506917 / 10000000000000000 : ℚ)
  supportSlope := (-8808617631556079 / 10000000000000000 : ℚ)
  oldCenter := (2800495073506917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1663
  oldLo := (28000000000000003 / 100000000000000000 : ℚ)
  oldHi := (28050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_709]
}

noncomputable def cell_12366 : Cell := { cellDefaults with
  domain := ⟨(7179329608938547 / 10000000000000000 : ℚ), (8975000000000001 / 12500000000000000 : ℚ)⟩
  center := (71796648044692739 / 100000000000000000 : ℚ)
  supportValue := (2799724818071669 / 10000000000000000 : ℚ)
  supportSlope := (-2204508498783341 / 2500000000000000 : ℚ)
  oldCenter := (2799724818071669 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1664
  oldLo := (27950000000000003 / 100000000000000000 : ℚ)
  oldHi := (28050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_708, piece_709]
}

noncomputable def cell_12367 : Cell := { cellDefaults with
  domain := ⟨(8975000000000001 / 12500000000000000 : ℚ), (287250000000000027 / 400000000000000000 : ℚ)⟩
  r := (49980529479417 / 100000000000000 : ℚ)
  w := (6741789248669 / 5000000000000 : ℚ)
  center := (574450000000000059 / 800000000000000000 : ℚ)
  supportValue := (28009765844839773 / 100000000000000000 : ℚ)
  supportSlope := (-8809256302858329 / 10000000000000000 : ℚ)
  oldCenter := (28009765844839773 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1665
  oldLo := (28000000000000003 / 100000000000000000 : ℚ)
  oldHi := (28050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_709]
}

noncomputable def cell_12368 : Cell := { cellDefaults with
  domain := ⟨(287250000000000027 / 400000000000000000 : ℚ), (143650000000000011 / 200000000000000000 : ℚ)⟩
  r := (49980529479417 / 100000000000000 : ℚ)
  w := (6741789248669 / 5000000000000 : ℚ)
  center := (574550000000000049 / 800000000000000000 : ℚ)
  supportValue := (2799877747073083 / 10000000000000000 : ℚ)
  supportSlope := (-8809902442613363 / 10000000000000000 : ℚ)
  oldCenter := (2799877747073083 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1665
  oldLo := (27950000000000003 / 100000000000000000 : ℚ)
  oldHi := (28050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_708, piece_709]
}

noncomputable def cell_12369 : Cell := { cellDefaults with
  domain := ⟨(143650000000000011 / 200000000000000000 : ℚ), (287350000000000017 / 400000000000000000 : ℚ)⟩
  r := (49980529479417 / 100000000000000 : ℚ)
  w := (6741789248669 / 5000000000000 : ℚ)
  center := (574650000000000039 / 800000000000000000 : ℚ)
  supportValue := (1399387173551939 / 5000000000000000 : ℚ)
  supportSlope := (-8806709878764521 / 10000000000000000 : ℚ)
  oldCenter := (1399387173551939 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1665
  oldLo := (27950000000000003 / 100000000000000000 : ℚ)
  oldHi := (28000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_708]
}

noncomputable def cell_12370 : Cell := { cellDefaults with
  domain := ⟨(287350000000000017 / 400000000000000000 : ℚ), (71850000000000003 / 100000000000000000 : ℚ)⟩
  r := (49980529479417 / 100000000000000 : ℚ)
  w := (6741789248669 / 5000000000000 : ℚ)
  center := (574750000000000029 / 800000000000000000 : ℚ)
  supportValue := (1398837053868169 / 5000000000000000 : ℚ)
  supportSlope := (-351885001554599 / 400000000000000 : ℚ)
  oldCenter := (1398837053868169 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1665
  oldLo := (27950000000000003 / 100000000000000000 : ℚ)
  oldHi := (28000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_708]
}

noncomputable def cell_12371 : Cell := { cellDefaults with
  domain := ⟨(71850000000000003 / 100000000000000000 : ℚ), (287450000000000017 / 400000000000000000 : ℚ)⟩
  r := (9991900641533 / 20000000000000 : ℚ)
  w := (1348256203657 / 1000000000000 : ℚ)
  center := (574850000000000029 / 800000000000000000 : ℚ)
  supportValue := (5597345072742469 / 20000000000000000 : ℚ)
  supportSlope := (-4401146751424449 / 5000000000000000 : ℚ)
  oldCenter := (5597345072742469 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1666
  oldLo := (27950000000000003 / 100000000000000000 : ℚ)
  oldHi := (28000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_708]
}

noncomputable def cell_12372 : Cell := { cellDefaults with
  domain := ⟨(287450000000000017 / 400000000000000000 : ℚ), (143750000000000011 / 200000000000000000 : ℚ)⟩
  r := (9991900641533 / 20000000000000 : ℚ)
  w := (1348256203657 / 1000000000000 : ℚ)
  center := (574950000000000039 / 800000000000000000 : ℚ)
  supportValue := (27975728483316137 / 100000000000000000 : ℚ)
  supportSlope := (-1758544030399813 / 2000000000000000 : ℚ)
  oldCenter := (27975728483316137 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1666
  oldLo := (27950000000000003 / 100000000000000000 : ℚ)
  oldHi := (28000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_708]
}

noncomputable def cell_12373 : Cell := { cellDefaults with
  domain := ⟨(143750000000000011 / 200000000000000000 : ℚ), (287550000000000027 / 400000000000000000 : ℚ)⟩
  r := (9991900641533 / 20000000000000 : ℚ)
  w := (1348256203657 / 1000000000000 : ℚ)
  center := (575050000000000049 / 800000000000000000 : ℚ)
  supportValue := (2796474354390639 / 10000000000000000 : ℚ)
  supportSlope := (-2195796965436039 / 2500000000000000 : ℚ)
  oldCenter := (2796474354390639 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1666
  oldLo := (27950000000000003 / 100000000000000000 : ℚ)
  oldHi := (28000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_708]
}

noncomputable def cell_12374 : Cell := { cellDefaults with
  domain := ⟨(287550000000000027 / 400000000000000000 : ℚ), (8987500000000001 / 12500000000000000 : ℚ)⟩
  r := (9991900641533 / 20000000000000 : ℚ)
  w := (1348256203657 / 1000000000000 : ℚ)
  center := (575150000000000059 / 800000000000000000 : ℚ)
  supportValue := (1118151602478467 / 4000000000000000 : ℚ)
  supportSlope := (-8776291644369227 / 10000000000000000 : ℚ)
  oldCenter := (1118151602478467 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1666
  oldHi := (28000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_707, piece_708]
}

noncomputable def cell_12375 : Cell := { cellDefaults with
  domain := ⟨(8987500000000001 / 12500000000000000 : ℚ), (287650000000000027 / 400000000000000000 : ℚ)⟩
  r := (12484627590083 / 25000000000000 : ℚ)
  w := (269631407691 / 200000000000 : ℚ)
  center := (575250000000000059 / 800000000000000000 : ℚ)
  supportValue := (27963679417035087 / 100000000000000000 : ℚ)
  supportSlope := (-2194688735646319 / 2500000000000000 : ℚ)
  oldCenter := (27963679417035087 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1667
  oldLo := (27950000000000003 / 100000000000000000 : ℚ)
  oldHi := (28000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_708]
}

noncomputable def cell_12376 : Cell := { cellDefaults with
  domain := ⟨(287650000000000027 / 400000000000000000 : ℚ), (143850000000000011 / 200000000000000000 : ℚ)⟩
  r := (12484627590083 / 25000000000000 : ℚ)
  w := (269631407691 / 200000000000 : ℚ)
  center := (575350000000000049 / 800000000000000000 : ℚ)
  supportValue := (2795273146829383 / 10000000000000000 : ℚ)
  supportSlope := (-4386730921260179 / 5000000000000000 : ℚ)
  oldCenter := (2795273146829383 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1667
  oldHi := (28000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_707, piece_708]
}

noncomputable def cell_12377 : Cell := { cellDefaults with
  domain := ⟨(143850000000000011 / 200000000000000000 : ℚ), (287750000000000017 / 400000000000000000 : ℚ)⟩
  r := (12484627590083 / 25000000000000 : ℚ)
  w := (269631407691 / 200000000000 : ℚ)
  center := (575450000000000039 / 800000000000000000 : ℚ)
  supportValue := (873179396289947 / 3125000000000000 : ℚ)
  supportSlope := (-8776272260729623 / 10000000000000000 : ℚ)
  oldCenter := (873179396289947 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1667
  oldPieces := [piece_707]
}

noncomputable def cell_12378 : Cell := { cellDefaults with
  domain := ⟨(287750000000000017 / 400000000000000000 : ℚ), (71950000000000003 / 100000000000000000 : ℚ)⟩
  r := (12484627590083 / 25000000000000 : ℚ)
  w := (269631407691 / 200000000000 : ℚ)
  center := (575550000000000029 / 800000000000000000 : ℚ)
  supportValue := (2793077630839753 / 10000000000000000 : ℚ)
  supportSlope := (-8766729357861701 / 10000000000000000 : ℚ)
  oldCenter := (2793077630839753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1667
  oldPieces := [piece_707]
}

noncomputable def cell_12379 : Cell := { cellDefaults with
  domain := ⟨(71950000000000003 / 100000000000000000 : ℚ), (287850000000000017 / 400000000000000000 : ℚ)⟩
  r := (49917532396923 / 100000000000000 : ℚ)
  w := (1685071421227 / 1250000000000 : ℚ)
  center := (575650000000000029 / 800000000000000000 : ℚ)
  supportValue := (2794069952684089 / 10000000000000000 : ℚ)
  supportSlope := (-4385928065961503 / 5000000000000000 : ℚ)
  oldCenter := (2794069952684089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1668
  oldPieces := [piece_707]
}

noncomputable def cell_12380 : Cell := { cellDefaults with
  domain := ⟨(287850000000000017 / 400000000000000000 : ℚ), (143950000000000011 / 200000000000000000 : ℚ)⟩
  r := (49917532396923 / 100000000000000 : ℚ)
  w := (1685071421227 / 1250000000000 : ℚ)
  center := (575750000000000039 / 800000000000000000 : ℚ)
  supportValue := (27929740666871433 / 100000000000000000 : ℚ)
  supportSlope := (-8762324812331647 / 10000000000000000 : ℚ)
  oldCenter := (27929740666871433 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1668
  oldPieces := [piece_707]
}

noncomputable def cell_12381 : Cell := { cellDefaults with
  domain := ⟨(143950000000000011 / 200000000000000000 : ℚ), (287950000000000027 / 400000000000000000 : ℚ)⟩
  r := (49917532396923 / 100000000000000 : ℚ)
  w := (1685071421227 / 1250000000000 : ℚ)
  center := (575850000000000049 / 800000000000000000 : ℚ)
  supportValue := (111675174781857 / 400000000000000 : ℚ)
  supportSlope := (-4376417184909893 / 5000000000000000 : ℚ)
  oldCenter := (111675174781857 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1668
  oldPieces := [piece_707]
}

noncomputable def cell_12382 : Cell := { cellDefaults with
  domain := ⟨(287950000000000027 / 400000000000000000 : ℚ), (9000000000000001 / 12500000000000000 : ℚ)⟩
  r := (49917532396923 / 100000000000000 : ℚ)
  w := (1685071421227 / 1250000000000 : ℚ)
  center := (575950000000000059 / 800000000000000000 : ℚ)
  supportValue := (558157171233859 / 2000000000000000 : ℚ)
  supportSlope := (-4371692266564427 / 5000000000000000 : ℚ)
  oldCenter := (558157171233859 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1668
  oldPieces := [piece_707]
}

noncomputable def cell_12383 : Cell := { cellDefaults with
  domain := ⟨(9000000000000001 / 12500000000000000 : ℚ), (288050000000000027 / 400000000000000000 : ℚ)⟩
  r := (49896586599527 / 100000000000000 : ℚ)
  w := (13479597156641 / 10000000000000 : ℚ)
  center := (576050000000000059 / 800000000000000000 : ℚ)
  supportValue := (697942693920463 / 2500000000000000 : ℚ)
  supportSlope := (-1093550305436673 / 1250000000000000 : ℚ)
  oldCenter := (697942693920463 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1669
  oldPieces := [piece_707]
}

noncomputable def cell_12384 : Cell := { cellDefaults with
  domain := ⟨(288050000000000027 / 400000000000000000 : ℚ), (144050000000000011 / 200000000000000000 : ℚ)⟩
  r := (49896586599527 / 100000000000000 : ℚ)
  w := (13479597156641 / 10000000000000 : ℚ)
  center := (576150000000000049 / 800000000000000000 : ℚ)
  supportValue := (697669453892277 / 2500000000000000 : ℚ)
  supportSlope := (-136546315830807 / 156250000000000 : ℚ)
  oldCenter := (697669453892277 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1669
  oldPieces := [piece_707]
}

noncomputable def cell_12385 : Cell := { cellDefaults with
  domain := ⟨(144050000000000011 / 200000000000000000 : ℚ), (288150000000000017 / 400000000000000000 : ℚ)⟩
  r := (49896586599527 / 100000000000000 : ℚ)
  w := (13479597156641 / 10000000000000 : ℚ)
  center := (576250000000000039 / 800000000000000000 : ℚ)
  supportValue := (2789587203667871 / 10000000000000000 : ℚ)
  supportSlope := (-8744013937268299 / 10000000000000000 : ℚ)
  oldCenter := (2789587203667871 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1669
  oldLo := (27850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_706, piece_707]
}

noncomputable def cell_12386 : Cell := { cellDefaults with
  domain := ⟨(288150000000000017 / 400000000000000000 : ℚ), (72050000000000003 / 100000000000000000 : ℚ)⟩
  r := (49896586599527 / 100000000000000 : ℚ)
  w := (13479597156641 / 10000000000000 : ℚ)
  center := (576350000000000029 / 800000000000000000 : ℚ)
  supportValue := (27884925967585183 / 100000000000000000 : ℚ)
  supportSlope := (-8736479946130677 / 10000000000000000 : ℚ)
  oldCenter := (27884925967585183 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1669
  oldLo := (27850000000000003 / 100000000000000000 : ℚ)
  oldHi := (27900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_706]
}

noncomputable def cell_12387 : Cell := { cellDefaults with
  domain := ⟨(72050000000000003 / 100000000000000000 : ℚ), (144125000000000009 / 200000000000000000 : ℚ)⟩
  r := (49875657804759 / 100000000000000 : ℚ)
  w := (13478618672653 / 10000000000000 : ℚ)
  center := (57645000000000003 / 80000000000000000 : ℚ)
  supportValue := (348685022897231 / 1250000000000000 : ℚ)
  supportSlope := (-8741210402297757 / 10000000000000000 : ℚ)
  oldCenter := (348685022897231 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1670
  oldLo := (27850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_706, piece_707]
}

noncomputable def cell_12388 : Cell := { cellDefaults with
  domain := ⟨(144125000000000009 / 200000000000000000 : ℚ), (36037500000000003 / 50000000000000000 : ℚ)⟩
  r := (49875657804759 / 100000000000000 : ℚ)
  w := (13478618672653 / 10000000000000 : ℚ)
  center := (288275000000000021 / 400000000000000000 : ℚ)
  supportValue := (1394193064165347 / 5000000000000000 : ℚ)
  supportSlope := (-4366034933340233 / 5000000000000000 : ℚ)
  oldCenter := (1394193064165347 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1670
  oldLo := (27850000000000003 / 100000000000000000 : ℚ)
  oldHi := (27900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_706]
}

noncomputable def cell_12389 : Cell := { cellDefaults with
  domain := ⟨(36037500000000003 / 50000000000000000 : ℚ), (28835000000000003 / 40000000000000000 : ℚ)⟩
  r := (49875657804759 / 100000000000000 : ℚ)
  w := (13478618672653 / 10000000000000 : ℚ)
  center := (288325000000000027 / 400000000000000000 : ℚ)
  supportValue := (2787295211147613 / 10000000000000000 : ℚ)
  supportSlope := (-1744521997613337 / 2000000000000000 : ℚ)
  oldCenter := (2787295211147613 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1670
  oldLo := (27850000000000003 / 100000000000000000 : ℚ)
  oldHi := (27900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_706]
}

noncomputable def cell_12390 : Cell := { cellDefaults with
  domain := ⟨(28835000000000003 / 40000000000000000 : ℚ), (72100000000000009 / 100000000000000000 : ℚ)⟩
  r := (49875657804759 / 100000000000000 : ℚ)
  w := (13478618672653 / 10000000000000 : ℚ)
  center := (288375000000000033 / 400000000000000000 : ℚ)
  supportValue := (2786205473913467 / 10000000000000000 : ℚ)
  supportSlope := (-13941104995281 / 16000000000000 : ℚ)
  oldCenter := (2786205473913467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1670
  oldLo := (27850000000000003 / 100000000000000000 : ℚ)
  oldHi := (27900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_706]
}

noncomputable def cell_12391 : Cell := { cellDefaults with
  domain := ⟨(72100000000000009 / 100000000000000000 : ℚ), (28845000000000003 / 40000000000000000 : ℚ)⟩
  r := (49854758969101 / 100000000000000 : ℚ)
  w := (2695532613659 / 2000000000000 : ℚ)
  center := (288425000000000033 / 400000000000000000 : ℚ)
  supportValue := (2787184243488489 / 10000000000000000 : ℚ)
  supportSlope := (-8718176690330971 / 10000000000000000 : ℚ)
  oldCenter := (2787184243488489 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1671
  oldLo := (27850000000000003 / 100000000000000000 : ℚ)
  oldHi := (27900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_706]
}

noncomputable def cell_12392 : Cell := { cellDefaults with
  domain := ⟨(28845000000000003 / 40000000000000000 : ℚ), (36062500000000003 / 50000000000000000 : ℚ)⟩
  r := (49854758969101 / 100000000000000 : ℚ)
  w := (2695532613659 / 2000000000000 : ℚ)
  center := (288475000000000027 / 400000000000000000 : ℚ)
  supportValue := (2786095059686657 / 10000000000000000 : ℚ)
  supportSlope := (-8708768986506121 / 10000000000000000 : ℚ)
  oldCenter := (2786095059686657 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1671
  oldLo := (27850000000000003 / 100000000000000000 : ℚ)
  oldHi := (27900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_706]
}

noncomputable def cell_12393 : Cell := { cellDefaults with
  domain := ⟨(36062500000000003 / 50000000000000000 : ℚ), (144275000000000009 / 200000000000000000 : ℚ)⟩
  r := (49854758969101 / 100000000000000 : ℚ)
  w := (2695532613659 / 2000000000000 : ℚ)
  center := (288525000000000021 / 400000000000000000 : ℚ)
  supportValue := (2785008998837773 / 10000000000000000 : ℚ)
  supportSlope := (-1088439587432341 / 1250000000000000 : ℚ)
  oldCenter := (2785008998837773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1671
  oldLo := (13900000000000001 / 50000000000000000 : ℚ)
  oldHi := (27900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_705, piece_706]
}

noncomputable def cell_12394 : Cell := { cellDefaults with
  domain := ⟨(144275000000000009 / 200000000000000000 : ℚ), (72150000000000003 / 100000000000000000 : ℚ)⟩
  r := (49854758969101 / 100000000000000 : ℚ)
  w := (2695532613659 / 2000000000000 : ℚ)
  center := (57715000000000003 / 80000000000000000 : ℚ)
  supportValue := (34798977151101 / 125000000000000 : ℚ)
  supportSlope := (-8706366980472047 / 10000000000000000 : ℚ)
  oldCenter := (34798977151101 / 125000000000000 : ℚ)
  newCoefficients := coefficients_1671
  oldLo := (13900000000000001 / 50000000000000000 : ℚ)
  oldHi := (27850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_705]
}

noncomputable def cell_12395 : Cell := { cellDefaults with
  domain := ⟨(72150000000000003 / 100000000000000000 : ℚ), (144325000000000009 / 200000000000000000 : ℚ)⟩
  r := (24916939396991 / 50000000000000 : ℚ)
  w := (336917647949 / 250000000000 : ℚ)
  center := (57725000000000003 / 80000000000000000 : ℚ)
  supportValue := (27848989986465433 / 100000000000000000 : ℚ)
  supportSlope := (-1088095040734241 / 1250000000000000 : ℚ)
  oldCenter := (27848989986465433 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1672
  oldLo := (13900000000000001 / 50000000000000000 : ℚ)
  oldHi := (27900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_705, piece_706]
}

noncomputable def cell_12396 : Cell := { cellDefaults with
  domain := ⟨(144325000000000009 / 200000000000000000 : ℚ), (36087500000000003 / 50000000000000000 : ℚ)⟩
  r := (24916939396991 / 50000000000000 : ℚ)
  w := (336917647949 / 250000000000 : ℚ)
  center := (288675000000000021 / 400000000000000000 : ℚ)
  supportValue := (2783808713171831 / 10000000000000000 : ℚ)
  supportSlope := (-8701949205879367 / 10000000000000000 : ℚ)
  oldCenter := (2783808713171831 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1672
  oldLo := (13900000000000001 / 50000000000000000 : ℚ)
  oldHi := (27850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_705]
}

noncomputable def cell_12397 : Cell := { cellDefaults with
  domain := ⟨(36087500000000003 / 50000000000000000 : ℚ), (28875000000000003 / 40000000000000000 : ℚ)⟩
  r := (24916939396991 / 50000000000000 : ℚ)
  w := (336917647949 / 250000000000 : ℚ)
  center := (288725000000000027 / 400000000000000000 : ℚ)
  supportValue := (2782721559990237 / 10000000000000000 : ℚ)
  supportSlope := (-1086563330747617 / 1250000000000000 : ℚ)
  oldCenter := (2782721559990237 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1672
  oldLo := (13900000000000001 / 50000000000000000 : ℚ)
  oldHi := (27850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_705]
}

noncomputable def cell_12398 : Cell := { cellDefaults with
  domain := ⟨(28875000000000003 / 40000000000000000 : ℚ), (72200000000000009 / 100000000000000000 : ℚ)⟩
  r := (24916939396991 / 50000000000000 : ℚ)
  w := (336917647949 / 250000000000 : ℚ)
  center := (288775000000000033 / 400000000000000000 : ℚ)
  supportValue := (86926112018501 / 312500000000000 : ℚ)
  supportSlope := (-8683104609782457 / 10000000000000000 : ℚ)
  oldCenter := (86926112018501 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1672
  oldLo := (13900000000000001 / 50000000000000000 : ℚ)
  oldHi := (27850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_705]
}

noncomputable def cell_12399 : Cell := { cellDefaults with
  domain := ⟨(72200000000000009 / 100000000000000000 : ℚ), (28885000000000003 / 40000000000000000 : ℚ)⟩
  r := (49813026328299 / 100000000000000 : ℚ)
  w := (13475766152763 / 10000000000000 : ℚ)
  center := (288825000000000033 / 400000000000000000 : ℚ)
  supportValue := (27826087294921437 / 100000000000000000 : ℚ)
  supportSlope := (-271502321664873 / 312500000000000 : ℚ)
  oldCenter := (27826087294921437 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1673
  oldLo := (13900000000000001 / 50000000000000000 : ℚ)
  oldHi := (27850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_705]
}

theorem check_12350 : cell_12350.check = true := by
  decide +kernel

theorem check_12351 : cell_12351.check = true := by
  decide +kernel

theorem check_12352 : cell_12352.check = true := by
  decide +kernel

theorem check_12353 : cell_12353.check = true := by
  decide +kernel

theorem check_12354 : cell_12354.check = true := by
  decide +kernel

theorem check_12355 : cell_12355.check = true := by
  decide +kernel

theorem check_12356 : cell_12356.check = true := by
  decide +kernel

theorem check_12357 : cell_12357.check = true := by
  decide +kernel

theorem check_12358 : cell_12358.check = true := by
  decide +kernel

theorem check_12359 : cell_12359.check = true := by
  decide +kernel

theorem check_12360 : cell_12360.check = true := by
  decide +kernel

theorem check_12361 : cell_12361.check = true := by
  decide +kernel

theorem check_12362 : cell_12362.check = true := by
  decide +kernel

theorem check_12363 : cell_12363.check = true := by
  decide +kernel

theorem check_12364 : cell_12364.check = true := by
  decide +kernel

theorem check_12365 : cell_12365.check = true := by
  decide +kernel

theorem check_12366 : cell_12366.check = true := by
  decide +kernel

theorem check_12367 : cell_12367.check = true := by
  decide +kernel

theorem check_12368 : cell_12368.check = true := by
  decide +kernel

theorem check_12369 : cell_12369.check = true := by
  decide +kernel

theorem check_12370 : cell_12370.check = true := by
  decide +kernel

theorem check_12371 : cell_12371.check = true := by
  decide +kernel

theorem check_12372 : cell_12372.check = true := by
  decide +kernel

theorem check_12373 : cell_12373.check = true := by
  decide +kernel

theorem check_12374 : cell_12374.check = true := by
  decide +kernel

theorem check_12375 : cell_12375.check = true := by
  decide +kernel

theorem check_12376 : cell_12376.check = true := by
  decide +kernel

theorem check_12377 : cell_12377.check = true := by
  decide +kernel

theorem check_12378 : cell_12378.check = true := by
  decide +kernel

theorem check_12379 : cell_12379.check = true := by
  decide +kernel

theorem check_12380 : cell_12380.check = true := by
  decide +kernel

theorem check_12381 : cell_12381.check = true := by
  decide +kernel

theorem check_12382 : cell_12382.check = true := by
  decide +kernel

theorem check_12383 : cell_12383.check = true := by
  decide +kernel

theorem check_12384 : cell_12384.check = true := by
  decide +kernel

theorem check_12385 : cell_12385.check = true := by
  decide +kernel

theorem check_12386 : cell_12386.check = true := by
  decide +kernel

theorem check_12387 : cell_12387.check = true := by
  decide +kernel

theorem check_12388 : cell_12388.check = true := by
  decide +kernel

theorem check_12389 : cell_12389.check = true := by
  decide +kernel

theorem check_12390 : cell_12390.check = true := by
  decide +kernel

theorem check_12391 : cell_12391.check = true := by
  decide +kernel

theorem check_12392 : cell_12392.check = true := by
  decide +kernel

theorem check_12393 : cell_12393.check = true := by
  decide +kernel

theorem check_12394 : cell_12394.check = true := by
  decide +kernel

theorem check_12395 : cell_12395.check = true := by
  decide +kernel

theorem check_12396 : cell_12396.check = true := by
  decide +kernel

theorem check_12397 : cell_12397.check = true := by
  decide +kernel

theorem check_12398 : cell_12398.check = true := by
  decide +kernel

theorem check_12399 : cell_12399.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12350, cell_12351, cell_12352, cell_12353, cell_12354, cell_12355, cell_12356, cell_12357, cell_12358, cell_12359, cell_12360, cell_12361, cell_12362, cell_12363, cell_12364, cell_12365, cell_12366, cell_12367, cell_12368, cell_12369, cell_12370, cell_12371, cell_12372, cell_12373, cell_12374, cell_12375, cell_12376, cell_12377, cell_12378, cell_12379, cell_12380, cell_12381, cell_12382, cell_12383, cell_12384, cell_12385, cell_12386, cell_12387, cell_12388, cell_12389, cell_12390, cell_12391, cell_12392, cell_12393, cell_12394, cell_12395, cell_12396, cell_12397, cell_12398, cell_12399]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12350, check_12351, check_12352, check_12353, check_12354, check_12355, check_12356, check_12357, check_12358, check_12359, check_12360, check_12361, check_12362, check_12363, check_12364, check_12365, check_12366, check_12367, check_12368, check_12369, check_12370, check_12371, check_12372, check_12373, check_12374, check_12375, check_12376, check_12377, check_12378, check_12379, check_12380, check_12381, check_12382, check_12383, check_12384, check_12385, check_12386, check_12387, check_12388, check_12389, check_12390, check_12391, check_12392, check_12393, check_12394, check_12395, check_12396, check_12397, check_12398, check_12399, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0247

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0247
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0247
open AnalyticBounds.ExpressionCertificate

theorem linked_12350 : Linked cell_12350 pieces := by
  link_source cell_12350 with piece_1660 using piece_1660_mem, ⟨piece_710_mem, ⟨piece_711_mem, piece_712_mem⟩⟩

theorem linked_12351 : Linked cell_12351 pieces := by
  link_source cell_12351 with piece_1660 using piece_1660_mem, piece_710_mem

theorem linked_12352 : Linked cell_12352 pieces := by
  link_source cell_12352 with piece_1660 using piece_1660_mem, piece_710_mem

theorem linked_12353 : Linked cell_12353 pieces := by
  link_source cell_12353 with piece_1660 using piece_1660_mem, piece_710_mem

theorem linked_12354 : Linked cell_12354 pieces := by
  link_source cell_12354 with piece_1661 using piece_1661_mem, piece_710_mem

theorem linked_12355 : Linked cell_12355 pieces := by
  link_source cell_12355 with piece_1661 using piece_1661_mem, piece_710_mem

theorem linked_12356 : Linked cell_12356 pieces := by
  link_source cell_12356 with piece_1661 using piece_1661_mem, piece_710_mem

theorem linked_12357 : Linked cell_12357 pieces := by
  link_source cell_12357 with piece_1661 using piece_1661_mem, ⟨piece_709_mem, piece_710_mem⟩

theorem linked_12358 : Linked cell_12358 pieces := by
  link_source cell_12358 with piece_1662 using piece_1662_mem, piece_710_mem

theorem linked_12359 : Linked cell_12359 pieces := by
  link_source cell_12359 with piece_1662 using piece_1662_mem, ⟨piece_709_mem, piece_710_mem⟩

theorem linked_12360 : Linked cell_12360 pieces := by
  link_source cell_12360 with piece_1662 using piece_1662_mem, piece_709_mem

theorem linked_12361 : Linked cell_12361 pieces := by
  link_source cell_12361 with piece_1662 using piece_1662_mem, piece_709_mem

theorem linked_12362 : Linked cell_12362 pieces := by
  link_source cell_12362 with piece_1663 using piece_1663_mem, piece_709_mem

theorem linked_12363 : Linked cell_12363 pieces := by
  link_source cell_12363 with piece_1663 using piece_1663_mem, piece_709_mem

theorem linked_12364 : Linked cell_12364 pieces := by
  link_source cell_12364 with piece_1663 using piece_1663_mem, piece_709_mem

theorem linked_12365 : Linked cell_12365 pieces := by
  link_source cell_12365 with piece_1663 using piece_1663_mem, piece_709_mem

theorem linked_12366 : Linked cell_12366 pieces := by
  link_source cell_12366 with piece_1664 using piece_1664_mem, ⟨piece_708_mem, piece_709_mem⟩

theorem linked_12367 : Linked cell_12367 pieces := by
  link_source cell_12367 with piece_1665 using piece_1665_mem, piece_709_mem

theorem linked_12368 : Linked cell_12368 pieces := by
  link_source cell_12368 with piece_1665 using piece_1665_mem, ⟨piece_708_mem, piece_709_mem⟩

theorem linked_12369 : Linked cell_12369 pieces := by
  link_source cell_12369 with piece_1665 using piece_1665_mem, piece_708_mem

theorem linked_12370 : Linked cell_12370 pieces := by
  link_source cell_12370 with piece_1665 using piece_1665_mem, piece_708_mem

theorem linked_12371 : Linked cell_12371 pieces := by
  link_source cell_12371 with piece_1666 using piece_1666_mem, piece_708_mem

theorem linked_12372 : Linked cell_12372 pieces := by
  link_source cell_12372 with piece_1666 using piece_1666_mem, piece_708_mem

theorem linked_12373 : Linked cell_12373 pieces := by
  link_source cell_12373 with piece_1666 using piece_1666_mem, piece_708_mem

theorem linked_12374 : Linked cell_12374 pieces := by
  link_source cell_12374 with piece_1666 using piece_1666_mem, ⟨piece_707_mem, piece_708_mem⟩

theorem linked_12375 : Linked cell_12375 pieces := by
  link_source cell_12375 with piece_1667 using piece_1667_mem, piece_708_mem

theorem linked_12376 : Linked cell_12376 pieces := by
  link_source cell_12376 with piece_1667 using piece_1667_mem, ⟨piece_707_mem, piece_708_mem⟩

theorem linked_12377 : Linked cell_12377 pieces := by
  link_source cell_12377 with piece_1667 using piece_1667_mem, piece_707_mem

theorem linked_12378 : Linked cell_12378 pieces := by
  link_source cell_12378 with piece_1667 using piece_1667_mem, piece_707_mem

theorem linked_12379 : Linked cell_12379 pieces := by
  link_source cell_12379 with piece_1668 using piece_1668_mem, piece_707_mem

theorem linked_12380 : Linked cell_12380 pieces := by
  link_source cell_12380 with piece_1668 using piece_1668_mem, piece_707_mem

theorem linked_12381 : Linked cell_12381 pieces := by
  link_source cell_12381 with piece_1668 using piece_1668_mem, piece_707_mem

theorem linked_12382 : Linked cell_12382 pieces := by
  link_source cell_12382 with piece_1668 using piece_1668_mem, piece_707_mem

theorem linked_12383 : Linked cell_12383 pieces := by
  link_source cell_12383 with piece_1669 using piece_1669_mem, piece_707_mem

theorem linked_12384 : Linked cell_12384 pieces := by
  link_source cell_12384 with piece_1669 using piece_1669_mem, piece_707_mem

theorem linked_12385 : Linked cell_12385 pieces := by
  link_source cell_12385 with piece_1669 using piece_1669_mem, ⟨piece_706_mem, piece_707_mem⟩

theorem linked_12386 : Linked cell_12386 pieces := by
  link_source cell_12386 with piece_1669 using piece_1669_mem, piece_706_mem

theorem linked_12387 : Linked cell_12387 pieces := by
  link_source cell_12387 with piece_1670 using piece_1670_mem, ⟨piece_706_mem, piece_707_mem⟩

theorem linked_12388 : Linked cell_12388 pieces := by
  link_source cell_12388 with piece_1670 using piece_1670_mem, piece_706_mem

theorem linked_12389 : Linked cell_12389 pieces := by
  link_source cell_12389 with piece_1670 using piece_1670_mem, piece_706_mem

theorem linked_12390 : Linked cell_12390 pieces := by
  link_source cell_12390 with piece_1670 using piece_1670_mem, piece_706_mem

theorem linked_12391 : Linked cell_12391 pieces := by
  link_source cell_12391 with piece_1671 using piece_1671_mem, piece_706_mem

theorem linked_12392 : Linked cell_12392 pieces := by
  link_source cell_12392 with piece_1671 using piece_1671_mem, piece_706_mem

theorem linked_12393 : Linked cell_12393 pieces := by
  link_source cell_12393 with piece_1671 using piece_1671_mem, ⟨piece_705_mem, piece_706_mem⟩

theorem linked_12394 : Linked cell_12394 pieces := by
  link_source cell_12394 with piece_1671 using piece_1671_mem, piece_705_mem

theorem linked_12395 : Linked cell_12395 pieces := by
  link_source cell_12395 with piece_1672 using piece_1672_mem, ⟨piece_705_mem, piece_706_mem⟩

theorem linked_12396 : Linked cell_12396 pieces := by
  link_source cell_12396 with piece_1672 using piece_1672_mem, piece_705_mem

theorem linked_12397 : Linked cell_12397 pieces := by
  link_source cell_12397 with piece_1672 using piece_1672_mem, piece_705_mem

theorem linked_12398 : Linked cell_12398 pieces := by
  link_source cell_12398 with piece_1672 using piece_1672_mem, piece_705_mem

theorem linked_12399 : Linked cell_12399 pieces := by
  link_source cell_12399 with piece_1673 using piece_1673_mem, piece_705_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0247.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0247.cells,List.forall_mem_cons]
  exact ⟨linked_12350, linked_12351, linked_12352, linked_12353, linked_12354, linked_12355, linked_12356, linked_12357, linked_12358, linked_12359, linked_12360, linked_12361, linked_12362, linked_12363, linked_12364, linked_12365, linked_12366, linked_12367, linked_12368, linked_12369, linked_12370, linked_12371, linked_12372, linked_12373, linked_12374, linked_12375, linked_12376, linked_12377, linked_12378, linked_12379, linked_12380, linked_12381, linked_12382, linked_12383, linked_12384, linked_12385, linked_12386, linked_12387, linked_12388, linked_12389, linked_12390, linked_12391, linked_12392, linked_12393, linked_12394, linked_12395, linked_12396, linked_12397, linked_12398, linked_12399, by simp⟩

theorem covered : covers (8950000000000001 / 12500000000000000 : ℚ) (28885000000000003 / 40000000000000000 : ℚ)
    (SourceCertificates.Chunk0247.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0247
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0248
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
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

noncomputable def cell_12400 : Cell := { cellDefaults with
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
  link_source cell_12400 with piece_1673 using piece_1673_mem, piece_705_mem

theorem linked_12401 : Linked cell_12401 pieces := by
  link_source cell_12401 with piece_1673 using piece_1673_mem, ⟨piece_704_mem, piece_705_mem⟩

theorem linked_12402 : Linked cell_12402 pieces := by
  link_source cell_12402 with piece_1673 using piece_1673_mem, piece_704_mem

theorem linked_12403 : Linked cell_12403 pieces := by
  link_source cell_12403 with piece_1674 using piece_1674_mem, ⟨piece_704_mem, piece_705_mem⟩

theorem linked_12404 : Linked cell_12404 pieces := by
  link_source cell_12404 with piece_1674 using piece_1674_mem, piece_704_mem

theorem linked_12405 : Linked cell_12405 pieces := by
  link_source cell_12405 with piece_1674 using piece_1674_mem, piece_704_mem

theorem linked_12406 : Linked cell_12406 pieces := by
  link_source cell_12406 with piece_1674 using piece_1674_mem, piece_704_mem

theorem linked_12407 : Linked cell_12407 pieces := by
  link_source cell_12407 with piece_1675 using piece_1675_mem, piece_704_mem

theorem linked_12408 : Linked cell_12408 pieces := by
  link_source cell_12408 with piece_1675 using piece_1675_mem, piece_704_mem

theorem linked_12409 : Linked cell_12409 pieces := by
  link_source cell_12409 with piece_1675 using piece_1675_mem, piece_704_mem

theorem linked_12410 : Linked cell_12410 pieces := by
  link_source cell_12410 with piece_1675 using piece_1675_mem, ⟨piece_703_mem, piece_704_mem⟩

theorem linked_12411 : Linked cell_12411 pieces := by
  link_source cell_12411 with piece_1676 using piece_1676_mem, piece_703_mem

theorem linked_12412 : Linked cell_12412 pieces := by
  link_source cell_12412 with piece_1677 using piece_1677_mem, piece_704_mem

theorem linked_12413 : Linked cell_12413 pieces := by
  link_source cell_12413 with piece_1677 using piece_1677_mem, ⟨piece_703_mem, piece_704_mem⟩

theorem linked_12414 : Linked cell_12414 pieces := by
  link_source cell_12414 with piece_1677 using piece_1677_mem, piece_703_mem

theorem linked_12415 : Linked cell_12415 pieces := by
  link_source cell_12415 with piece_1677 using piece_1677_mem, piece_703_mem

theorem linked_12416 : Linked cell_12416 pieces := by
  link_source cell_12416 with piece_1678 using piece_1678_mem, piece_703_mem

theorem linked_12417 : Linked cell_12417 pieces := by
  link_source cell_12417 with piece_1678 using piece_1678_mem, piece_703_mem

theorem linked_12418 : Linked cell_12418 pieces := by
  link_source cell_12418 with piece_1678 using piece_1678_mem, piece_703_mem

theorem linked_12419 : Linked cell_12419 pieces := by
  link_source cell_12419 with piece_1678 using piece_1678_mem, ⟨piece_702_mem, piece_703_mem⟩

theorem linked_12420 : Linked cell_12420 pieces := by
  link_source cell_12420 with piece_1679 using piece_1679_mem, piece_703_mem

theorem linked_12421 : Linked cell_12421 pieces := by
  link_source cell_12421 with piece_1679 using piece_1679_mem, ⟨piece_702_mem, piece_703_mem⟩

theorem linked_12422 : Linked cell_12422 pieces := by
  link_source cell_12422 with piece_1679 using piece_1679_mem, piece_702_mem

theorem linked_12423 : Linked cell_12423 pieces := by
  link_source cell_12423 with piece_1679 using piece_1679_mem, piece_702_mem

theorem linked_12424 : Linked cell_12424 pieces := by
  link_source cell_12424 with piece_1680 using piece_1680_mem, piece_702_mem

theorem linked_12425 : Linked cell_12425 pieces := by
  link_source cell_12425 with piece_1680 using piece_1680_mem, piece_702_mem

theorem linked_12426 : Linked cell_12426 pieces := by
  link_source cell_12426 with piece_1680 using piece_1680_mem, piece_702_mem

theorem linked_12427 : Linked cell_12427 pieces := by
  link_source cell_12427 with piece_1680 using piece_1680_mem, piece_702_mem

theorem linked_12428 : Linked cell_12428 pieces := by
  link_source cell_12428 with piece_1681 using piece_1681_mem, piece_702_mem

theorem linked_12429 : Linked cell_12429 pieces := by
  link_source cell_12429 with piece_1681 using piece_1681_mem, piece_702_mem

theorem linked_12430 : Linked cell_12430 pieces := by
  link_source cell_12430 with piece_1681 using piece_1681_mem, ⟨piece_701_mem, piece_702_mem⟩

theorem linked_12431 : Linked cell_12431 pieces := by
  link_source cell_12431 with piece_1681 using piece_1681_mem, piece_701_mem

theorem linked_12432 : Linked cell_12432 pieces := by
  link_source cell_12432 with piece_1682 using piece_1682_mem, piece_701_mem

theorem linked_12433 : Linked cell_12433 pieces := by
  link_source cell_12433 with piece_1682 using piece_1682_mem, piece_701_mem

theorem linked_12434 : Linked cell_12434 pieces := by
  link_source cell_12434 with piece_1682 using piece_1682_mem, piece_701_mem

theorem linked_12435 : Linked cell_12435 pieces := by
  link_source cell_12435 with piece_1682 using piece_1682_mem, piece_701_mem

theorem linked_12436 : Linked cell_12436 pieces := by
  link_source cell_12436 with piece_1683 using piece_1683_mem, piece_701_mem

theorem linked_12437 : Linked cell_12437 pieces := by
  link_source cell_12437 with piece_1683 using piece_1683_mem, piece_701_mem

theorem linked_12438 : Linked cell_12438 pieces := by
  link_source cell_12438 with piece_1683 using piece_1683_mem, ⟨piece_700_mem, piece_701_mem⟩

theorem linked_12439 : Linked cell_12439 pieces := by
  link_source cell_12439 with piece_1683 using piece_1683_mem, piece_700_mem

theorem linked_12440 : Linked cell_12440 pieces := by
  link_source cell_12440 with piece_1684 using piece_1684_mem, ⟨piece_700_mem, piece_701_mem⟩

theorem linked_12441 : Linked cell_12441 pieces := by
  link_source cell_12441 with piece_1684 using piece_1684_mem, piece_700_mem

theorem linked_12442 : Linked cell_12442 pieces := by
  link_source cell_12442 with piece_1684 using piece_1684_mem, piece_700_mem

theorem linked_12443 : Linked cell_12443 pieces := by
  link_source cell_12443 with piece_1684 using piece_1684_mem, piece_700_mem

theorem linked_12444 : Linked cell_12444 pieces := by
  link_source cell_12444 with piece_1685 using piece_1685_mem, piece_700_mem

theorem linked_12445 : Linked cell_12445 pieces := by
  link_source cell_12445 with piece_1685 using piece_1685_mem, piece_700_mem

theorem linked_12446 : Linked cell_12446 pieces := by
  link_source cell_12446 with piece_1685 using piece_1685_mem, ⟨piece_699_mem, piece_700_mem⟩

theorem linked_12447 : Linked cell_12447 pieces := by
  link_source cell_12447 with piece_1685 using piece_1685_mem, ⟨piece_698_mem, piece_699_mem⟩

theorem linked_12448 : Linked cell_12448 pieces := by
  link_source cell_12448 with piece_1686 using piece_1686_mem, ⟨piece_699_mem, piece_700_mem⟩

theorem linked_12449 : Linked cell_12449 pieces := by
  link_source cell_12449 with piece_1686 using piece_1686_mem, ⟨piece_698_mem, piece_699_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0248.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0248.cells,List.forall_mem_cons]
  exact ⟨linked_12400, linked_12401, linked_12402, linked_12403, linked_12404, linked_12405, linked_12406, linked_12407, linked_12408, linked_12409, linked_12410, linked_12411, linked_12412, linked_12413, linked_12414, linked_12415, linked_12416, linked_12417, linked_12418, linked_12419, linked_12420, linked_12421, linked_12422, linked_12423, linked_12424, linked_12425, linked_12426, linked_12427, linked_12428, linked_12429, linked_12430, linked_12431, linked_12432, linked_12433, linked_12434, linked_12435, linked_12436, linked_12437, linked_12438, linked_12439, linked_12440, linked_12441, linked_12442, linked_12443, linked_12444, linked_12445, linked_12446, linked_12447, linked_12448, linked_12449, by simp⟩

theorem covered : covers (28885000000000003 / 40000000000000000 : ℚ) (72825000000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0248.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0248
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0249
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(72825000000000001 / 100000000000000000 : ℚ), (29135000000000001 / 40000000000000000 : ℚ)⟩
  branch := .left
  r := (49544109738813 / 100000000000000 : ℚ)
  w := (13464423561957 / 10000000000000 : ℚ)
  center := (291325000000000007 / 400000000000000000 : ℚ)
  supportValue := (27532448038522517 / 100000000000000000 : ℚ)
  supportSlope := (-1698362638497893 / 2000000000000000 : ℚ)
  oldCenter := (27532448038522517 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1687
  oldLo := (13700000000000001 / 50000000000000000 : ℚ)
  oldHi := (13725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_696]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12450 : Cell := { cellDefaults with
  r := (24782326540857 / 50000000000000 : ℚ)
  w := (13465237055383 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1686
  oldLo := (13750000000000001 / 50000000000000000 : ℚ)
  oldHi := (550949720670391 / 2000000000000000 : ℚ)
  oldPieces := [piece_698]
}

noncomputable def cell_12451 : Cell := { cellDefaults with
  domain := ⟨(29135000000000001 / 40000000000000000 : ℚ), (18212500000000001 / 25000000000000000 : ℚ)⟩
  r := (24782326540857 / 50000000000000 : ℚ)
  w := (13465237055383 / 10000000000000 : ℚ)
  center := (291375000000000013 / 400000000000000000 : ℚ)
  supportValue := (27521838969882867 / 100000000000000000 : ℚ)
  supportSlope := (-2120675326721967 / 2500000000000000 : ℚ)
  oldCenter := (27521838969882867 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1686
  oldLo := (13750000000000001 / 50000000000000000 : ℚ)
  oldHi := (550949720670391 / 2000000000000000 : ℚ)
  oldPieces := [piece_698]
}

noncomputable def cell_12452 : Cell := { cellDefaults with
  domain := ⟨(18212500000000001 / 25000000000000000 : ℚ), (72862360335195533 / 100000000000000000 : ℚ)⟩
  center := (145712360335195537 / 200000000000000000 : ℚ)
  supportValue := (5506242475789741 / 20000000000000000 : ℚ)
  supportSlope := (-16576998291687 / 19531250000000 : ℚ)
  oldCenter := (5506242475789741 / 20000000000000000 : ℚ)
  oldLo := (13750000000000001 / 50000000000000000 : ℚ)
  oldHi := (550949720670391 / 2000000000000000 : ℚ)
  oldPieces := [piece_698]
}

noncomputable def cell_12453 : Cell := { cellDefaults with
  domain := ⟨(72862360335195533 / 100000000000000000 : ℚ), (36437360335195531 / 50000000000000000 : ℚ)⟩
  center := (29147416201117319 / 40000000000000000 : ℚ)
  supportValue := (3440090900448297 / 12500000000000000 : ℚ)
  supportSlope := (-8478424390125219 / 10000000000000000 : ℚ)
  oldCenter := (3440090900448297 / 12500000000000000 : ℚ)
  oldLo := (13750000000000001 / 50000000000000000 : ℚ)
  oldHi := (550949720670391 / 2000000000000000 : ℚ)
  oldPieces := [piece_698]
}

noncomputable def cell_12454 : Cell := { cellDefaults with
  domain := ⟨(36437360335195531 / 50000000000000000 : ℚ), (72887081005586591 / 100000000000000000 : ℚ)⟩
  center := (145761801675977653 / 200000000000000000 : ℚ)
  supportValue := (13755126563718953 / 50000000000000000 : ℚ)
  supportSlope := (-4234731831310843 / 5000000000000000 : ℚ)
  oldCenter := (13755126563718953 / 50000000000000000 : ℚ)
  oldLo := (13750000000000001 / 50000000000000000 : ℚ)
  oldHi := (550949720670391 / 2000000000000000 : ℚ)
  oldPieces := [piece_698]
}

noncomputable def cell_12455 : Cell := { cellDefaults with
  domain := ⟨(72887081005586591 / 100000000000000000 : ℚ), (1822486033519553 / 2500000000000000 : ℚ)⟩
  center := (145786522346368711 / 200000000000000000 : ℚ)
  supportValue := (3437476117524603 / 12500000000000000 : ℚ)
  supportSlope := (-1693774404455427 / 2000000000000000 : ℚ)
  oldCenter := (3437476117524603 / 12500000000000000 : ℚ)
  oldLo := (13725000000000001 / 50000000000000000 : ℚ)
  oldHi := (550949720670391 / 2000000000000000 : ℚ)
  oldPieces := [piece_697, piece_698]
}

noncomputable def cell_12456 : Cell := { cellDefaults with
  domain := ⟨(1822486033519553 / 2500000000000000 : ℚ), (36449999999999999 / 50000000000000000 : ℚ)⟩
  center := (72899720670391059 / 100000000000000000 : ℚ)
  supportValue := (1374715513928221 / 5000000000000000 : ℚ)
  supportSlope := (-1694369219480993 / 2000000000000000 : ℚ)
  oldCenter := (1374715513928221 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1688
  oldLo := (13725000000000001 / 50000000000000000 : ℚ)
  oldHi := (13750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_697]
}

noncomputable def cell_12457 : Cell := { cellDefaults with
  domain := ⟨(36449999999999999 / 50000000000000000 : ℚ), (145824999999999999 / 200000000000000000 : ℚ)⟩
  r := (24761797160629 / 50000000000000 : ℚ)
  w := (1346362653549 / 1000000000000 : ℚ)
  center := (58324999999999999 / 80000000000000000 : ℚ)
  supportValue := (2750863598237961 / 10000000000000000 : ℚ)
  supportSlope := (-1692953863057919 / 2000000000000000 : ℚ)
  oldCenter := (2750863598237961 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1689
  oldLo := (13750000000000001 / 50000000000000000 : ℚ)
  oldHi := (550949720670391 / 2000000000000000 : ℚ)
  oldPieces := [piece_698]
}

noncomputable def cell_12458 : Cell := { cellDefaults with
  domain := ⟨(145824999999999999 / 200000000000000000 : ℚ), (72925000000000001 / 100000000000000000 : ℚ)⟩
  r := (24761797160629 / 50000000000000 : ℚ)
  w := (1346362653549 / 1000000000000 : ℚ)
  center := (291675000000000001 / 400000000000000000 : ℚ)
  supportValue := (68745190540107 / 250000000000000 : ℚ)
  supportSlope := (-4233345442736283 / 5000000000000000 : ℚ)
  oldCenter := (68745190540107 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1689
  oldLo := (13725000000000001 / 50000000000000000 : ℚ)
  oldHi := (550949720670391 / 2000000000000000 : ℚ)
  oldPieces := [piece_697, piece_698]
}

noncomputable def cell_12459 : Cell := { cellDefaults with
  domain := ⟨(72925000000000001 / 100000000000000000 : ℚ), (29175000000000001 / 40000000000000000 : ℚ)⟩
  r := (24761797160629 / 50000000000000 : ℚ)
  w := (1346362653549 / 1000000000000 : ℚ)
  center := (291725000000000007 / 400000000000000000 : ℚ)
  supportValue := (27487472969038823 / 100000000000000000 : ℚ)
  supportSlope := (-2115660964532053 / 2500000000000000 : ℚ)
  oldCenter := (27487472969038823 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1689
  oldLo := (13725000000000001 / 50000000000000000 : ℚ)
  oldHi := (13750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_697]
}

noncomputable def cell_12460 : Cell := { cellDefaults with
  domain := ⟨(29175000000000001 / 40000000000000000 : ℚ), (18237500000000001 / 25000000000000000 : ℚ)⟩
  r := (24761797160629 / 50000000000000 : ℚ)
  w := (1346362653549 / 1000000000000 : ℚ)
  center := (291775000000000013 / 400000000000000000 : ℚ)
  supportValue := (2747690033921203 / 10000000000000000 : ℚ)
  supportSlope := (-8453568521006413 / 10000000000000000 : ℚ)
  oldCenter := (2747690033921203 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1689
  oldLo := (13725000000000001 / 50000000000000000 : ℚ)
  oldHi := (13750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_697]
}

noncomputable def cell_12461 : Cell := { cellDefaults with
  domain := ⟨(18237500000000001 / 25000000000000000 : ℚ), (29185000000000001 / 40000000000000000 : ℚ)⟩
  r := (24751548331849 / 50000000000000 : ℚ)
  w := (13462830748111 / 10000000000000 : ℚ)
  center := (291825000000000013 / 400000000000000000 : ℚ)
  supportValue := (2748615663560371 / 10000000000000000 : ℚ)
  supportSlope := (-4229101629138983 / 5000000000000000 : ℚ)
  oldCenter := (2748615663560371 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1690
  oldLo := (13725000000000001 / 50000000000000000 : ℚ)
  oldHi := (13750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_697]
}

noncomputable def cell_12462 : Cell := { cellDefaults with
  domain := ⟨(29185000000000001 / 40000000000000000 : ℚ), (72975000000000001 / 100000000000000000 : ℚ)⟩
  r := (24751548331849 / 50000000000000 : ℚ)
  w := (13462830748111 / 10000000000000 : ℚ)
  center := (291875000000000007 / 400000000000000000 : ℚ)
  supportValue := (27475589549022333 / 100000000000000000 : ℚ)
  supportSlope := (-8449139911396077 / 10000000000000000 : ℚ)
  oldCenter := (27475589549022333 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1690
  oldLo := (13725000000000001 / 50000000000000000 : ℚ)
  oldHi := (13750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_697]
}

noncomputable def cell_12463 : Cell := { cellDefaults with
  domain := ⟨(72975000000000001 / 100000000000000000 : ℚ), (145974999999999999 / 200000000000000000 : ℚ)⟩
  r := (24751548331849 / 50000000000000 : ℚ)
  w := (13462830748111 / 10000000000000 : ℚ)
  center := (291925000000000001 / 400000000000000000 : ℚ)
  supportValue := (27465033767388897 / 100000000000000000 : ℚ)
  supportSlope := (-8440115283027029 / 10000000000000000 : ℚ)
  oldCenter := (27465033767388897 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1690
  oldLo := (13725000000000001 / 50000000000000000 : ℚ)
  oldHi := (13750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_697]
}

noncomputable def cell_12464 : Cell := { cellDefaults with
  domain := ⟨(145974999999999999 / 200000000000000000 : ℚ), (36499999999999999 / 50000000000000000 : ℚ)⟩
  r := (24751548331849 / 50000000000000 : ℚ)
  w := (13462830748111 / 10000000000000 : ℚ)
  center := (58394999999999999 / 80000000000000000 : ℚ)
  supportValue := (2745450846060153 / 10000000000000000 : ℚ)
  supportSlope := (-1686464029930537 / 2000000000000000 : ℚ)
  oldCenter := (2745450846060153 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1690
  oldHi := (13750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_696, piece_697]
}

noncomputable def cell_12465 : Cell := { cellDefaults with
  domain := ⟨(36499999999999999 / 50000000000000000 : ℚ), (146024999999999999 / 200000000000000000 : ℚ)⟩
  r := (24741315151869 / 50000000000000 : ℚ)
  w := (538482346121 / 400000000000 : ℚ)
  center := (58404999999999999 / 80000000000000000 : ℚ)
  supportValue := (686591903749547 / 2500000000000000 : ℚ)
  supportSlope := (-2108915839369199 / 2500000000000000 : ℚ)
  oldCenter := (686591903749547 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1691
  oldLo := (13725000000000001 / 50000000000000000 : ℚ)
  oldHi := (13750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_697]
}

noncomputable def cell_12466 : Cell := { cellDefaults with
  domain := ⟨(146024999999999999 / 200000000000000000 : ℚ), (73025000000000001 / 100000000000000000 : ℚ)⟩
  r := (24741315151869 / 50000000000000 : ℚ)
  w := (538482346121 / 400000000000 : ℚ)
  center := (292075000000000001 / 400000000000000000 : ℚ)
  supportValue := (13726578199826067 / 50000000000000000 : ℚ)
  supportSlope := (-8429920482661101 / 10000000000000000 : ℚ)
  oldCenter := (13726578199826067 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1691
  oldHi := (13750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_696, piece_697]
}

noncomputable def cell_12467 : Cell := { cellDefaults with
  domain := ⟨(73025000000000001 / 100000000000000000 : ℚ), (29215000000000001 / 40000000000000000 : ℚ)⟩
  r := (24741315151869 / 50000000000000 : ℚ)
  w := (538482346121 / 400000000000 : ℚ)
  center := (292125000000000007 / 400000000000000000 : ℚ)
  supportValue := (137212977233901 / 500000000000000 : ℚ)
  supportSlope := (-421679755930831 / 500000000000000 : ℚ)
  oldCenter := (137212977233901 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1691
  oldPieces := [piece_696]
}

noncomputable def cell_12468 : Cell := { cellDefaults with
  domain := ⟨(29215000000000001 / 40000000000000000 : ℚ), (18262500000000001 / 25000000000000000 : ℚ)⟩
  r := (24741315151869 / 50000000000000 : ℚ)
  w := (538482346121 / 400000000000 : ℚ)
  center := (292175000000000013 / 400000000000000000 : ℚ)
  supportValue := (5486411820677669 / 20000000000000000 : ℚ)
  supportSlope := (-4212279469814667 / 5000000000000000 : ℚ)
  oldCenter := (5486411820677669 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1691
  oldPieces := [piece_696]
}

noncomputable def cell_12469 : Cell := { cellDefaults with
  domain := ⟨(18262500000000001 / 25000000000000000 : ℚ), (29225000000000001 / 40000000000000000 : ℚ)⟩
  r := (49462177817119 / 100000000000000 : ℚ)
  w := (6730639213139 / 5000000000000 : ℚ)
  center := (292225000000000013 / 400000000000000000 : ℚ)
  supportValue := (2744126162377681 / 10000000000000000 : ℚ)
  supportSlope := (-8429158145971571 / 10000000000000000 : ℚ)
  oldCenter := (2744126162377681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1692
  oldPieces := [piece_696]
}

noncomputable def cell_12470 : Cell := { cellDefaults with
  domain := ⟨(29225000000000001 / 40000000000000000 : ℚ), (73075000000000001 / 100000000000000000 : ℚ)⟩
  r := (49462177817119 / 100000000000000 : ℚ)
  w := (6730639213139 / 5000000000000 : ℚ)
  center := (292275000000000007 / 400000000000000000 : ℚ)
  supportValue := (2743073081908681 / 10000000000000000 : ℚ)
  supportSlope := (-4210066986254873 / 5000000000000000 : ℚ)
  oldCenter := (2743073081908681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1692
  oldPieces := [piece_696]
}

noncomputable def cell_12471 : Cell := { cellDefaults with
  domain := ⟨(73075000000000001 / 100000000000000000 : ℚ), (146174999999999999 / 200000000000000000 : ℚ)⟩
  r := (49462177817119 / 100000000000000 : ℚ)
  w := (6730639213139 / 5000000000000 : ℚ)
  center := (292325000000000001 / 400000000000000000 : ℚ)
  supportValue := (13710105635241873 / 50000000000000000 : ℚ)
  supportSlope := (-336445933941261 / 400000000000000 : ℚ)
  oldCenter := (13710105635241873 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1692
  oldPieces := [piece_696]
}

noncomputable def cell_12472 : Cell := { cellDefaults with
  domain := ⟨(146174999999999999 / 200000000000000000 : ℚ), (36549999999999999 / 50000000000000000 : ℚ)⟩
  r := (49462177817119 / 100000000000000 : ℚ)
  w := (6730639213139 / 5000000000000 : ℚ)
  center := (58474999999999999 / 80000000000000000 : ℚ)
  supportValue := (13704851464969897 / 50000000000000000 : ℚ)
  supportSlope := (-2100550255046659 / 2500000000000000 : ℚ)
  oldCenter := (13704851464969897 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1692
  oldPieces := [piece_696]
}

noncomputable def cell_12473 : Cell := { cellDefaults with
  domain := ⟨(36549999999999999 / 50000000000000000 : ℚ), (146224999999999999 / 200000000000000000 : ℚ)⟩
  r := (9888351815401 / 20000000000000 : ℚ)
  w := (538421090253 / 400000000000 : ℚ)
  center := (58484999999999999 / 80000000000000000 : ℚ)
  supportValue := (2741882529191557 / 10000000000000000 : ℚ)
  supportSlope := (-840669178281749 / 1000000000000000 : ℚ)
  oldCenter := (2741882529191557 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1693
  oldPieces := [piece_696]
}

noncomputable def cell_12474 : Cell := { cellDefaults with
  domain := ⟨(146224999999999999 / 200000000000000000 : ℚ), (73125000000000001 / 100000000000000000 : ℚ)⟩
  r := (9888351815401 / 20000000000000 : ℚ)
  w := (538421090253 / 400000000000 : ℚ)
  center := (292475000000000001 / 400000000000000000 : ℚ)
  supportValue := (2740832251453881 / 10000000000000000 : ℚ)
  supportSlope := (-4198878250786849 / 5000000000000000 : ℚ)
  oldCenter := (2740832251453881 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1693
  oldPieces := [piece_696]
}

noncomputable def cell_12475 : Cell := { cellDefaults with
  domain := ⟨(73125000000000001 / 100000000000000000 : ℚ), (29255000000000001 / 40000000000000000 : ℚ)⟩
  r := (9888351815401 / 20000000000000 : ℚ)
  w := (538421090253 / 400000000000 : ℚ)
  center := (292525000000000007 / 400000000000000000 : ℚ)
  supportValue := (1369892297367139 / 5000000000000000 : ℚ)
  supportSlope := (-8400048943676511 / 10000000000000000 : ℚ)
  oldCenter := (1369892297367139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1693
  oldLo := (13675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_695, piece_696]
}

noncomputable def cell_12476 : Cell := { cellDefaults with
  domain := ⟨(29255000000000001 / 40000000000000000 : ℚ), (18287500000000001 / 25000000000000000 : ℚ)⟩
  r := (9888351815401 / 20000000000000 : ℚ)
  w := (538421090253 / 400000000000 : ℚ)
  center := (292575000000000013 / 400000000000000000 : ℚ)
  supportValue := (13693663267218073 / 50000000000000000 : ℚ)
  supportSlope := (-8395685320107363 / 10000000000000000 : ℚ)
  oldCenter := (13693663267218073 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1693
  oldLo := (13675000000000001 / 50000000000000000 : ℚ)
  oldHi := (13700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_695]
}

noncomputable def cell_12477 : Cell := { cellDefaults with
  domain := ⟨(18287500000000001 / 25000000000000000 : ℚ), (29265000000000001 / 40000000000000000 : ℚ)⟩
  r := (24710677991577 / 50000000000000 : ℚ)
  w := (841235638239 / 625000000000 : ℚ)
  center := (292625000000000013 / 400000000000000000 : ℚ)
  supportValue := (684911959271319 / 2500000000000000 : ℚ)
  supportSlope := (-4198837410856419 / 5000000000000000 : ℚ)
  oldCenter := (684911959271319 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1694
  oldLo := (13675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_695, piece_696]
}

noncomputable def cell_12478 : Cell := { cellDefaults with
  domain := ⟨(29265000000000001 / 40000000000000000 : ℚ), (73175000000000001 / 100000000000000000 : ℚ)⟩
  r := (24710677991577 / 50000000000000 : ℚ)
  w := (841235638239 / 625000000000 : ℚ)
  center := (292675000000000007 / 400000000000000000 : ℚ)
  supportValue := (2738596451029623 / 10000000000000000 : ℚ)
  supportSlope := (-8391250246538757 / 10000000000000000 : ℚ)
  oldCenter := (2738596451029623 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1694
  oldLo := (13675000000000001 / 50000000000000000 : ℚ)
  oldHi := (13700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_695]
}

noncomputable def cell_12479 : Cell := { cellDefaults with
  domain := ⟨(73175000000000001 / 100000000000000000 : ℚ), (146374999999999999 / 200000000000000000 : ℚ)⟩
  r := (24710677991577 / 50000000000000 : ℚ)
  w := (841235638239 / 625000000000 : ℚ)
  center := (292725000000000001 / 400000000000000000 : ℚ)
  supportValue := (27375481049404443 / 100000000000000000 : ℚ)
  supportSlope := (-167645834697281 / 200000000000000 : ℚ)
  oldCenter := (27375481049404443 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1694
  oldLo := (13675000000000001 / 50000000000000000 : ℚ)
  oldHi := (13700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_695]
}

noncomputable def cell_12480 : Cell := { cellDefaults with
  domain := ⟨(146374999999999999 / 200000000000000000 : ℚ), (36599999999999999 / 50000000000000000 : ℚ)⟩
  r := (24710677991577 / 50000000000000 : ℚ)
  w := (841235638239 / 625000000000 : ℚ)
  center := (58554999999999999 / 80000000000000000 : ℚ)
  supportValue := (5473001752545723 / 20000000000000000 : ℚ)
  supportSlope := (-4186685721628227 / 5000000000000000 : ℚ)
  oldCenter := (5473001752545723 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1694
  oldLo := (13675000000000001 / 50000000000000000 : ℚ)
  oldHi := (13700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_695]
}

noncomputable def cell_12481 : Cell := { cellDefaults with
  domain := ⟨(36599999999999999 / 50000000000000000 : ℚ), (146424999999999999 / 200000000000000000 : ℚ)⟩
  r := (49400981326891 / 100000000000000 : ℚ)
  w := (2691806808879 / 2000000000000 : ℚ)
  center := (58564999999999999 / 80000000000000000 : ℚ)
  supportValue := (2737407948866737 / 10000000000000000 : ℚ)
  supportSlope := (-8377838643073393 / 10000000000000000 : ℚ)
  oldCenter := (2737407948866737 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1695
  oldLo := (13675000000000001 / 50000000000000000 : ℚ)
  oldHi := (13700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_695]
}

noncomputable def cell_12482 : Cell := { cellDefaults with
  domain := ⟨(146424999999999999 / 200000000000000000 : ℚ), (73225000000000001 / 100000000000000000 : ℚ)⟩
  r := (49400981326891 / 100000000000000 : ℚ)
  w := (2691806808879 / 2000000000000 : ℚ)
  center := (292875000000000001 / 400000000000000000 : ℚ)
  supportValue := (1368180638039889 / 5000000000000000 : ℚ)
  supportSlope := (-261529075881419 / 312500000000000 : ℚ)
  oldCenter := (1368180638039889 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1695
  oldLo := (13675000000000001 / 50000000000000000 : ℚ)
  oldHi := (13700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_695]
}

noncomputable def cell_12483 : Cell := { cellDefaults with
  domain := ⟨(73225000000000001 / 100000000000000000 : ℚ), (29295000000000001 / 40000000000000000 : ℚ)⟩
  r := (49400981326891 / 100000000000000 : ℚ)
  w := (2691806808879 / 2000000000000 : ℚ)
  center := (292925000000000007 / 400000000000000000 : ℚ)
  supportValue := (1367658814584171 / 5000000000000000 : ℚ)
  supportSlope := (-8363201433016051 / 10000000000000000 : ℚ)
  oldCenter := (1367658814584171 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1695
  oldLo := (13650000000000001 / 50000000000000000 : ℚ)
  oldHi := (13700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_694, piece_695]
}

noncomputable def cell_12484 : Cell := { cellDefaults with
  domain := ⟨(29295000000000001 / 40000000000000000 : ℚ), (18312500000000001 / 25000000000000000 : ℚ)⟩
  r := (49400981326891 / 100000000000000 : ℚ)
  w := (2691806808879 / 2000000000000 : ℚ)
  center := (292975000000000013 / 400000000000000000 : ℚ)
  supportValue := (6835674704159249 / 25000000000000000 : ℚ)
  supportSlope := (-4183472723661761 / 5000000000000000 : ℚ)
  oldCenter := (6835674704159249 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1695
  oldLo := (13650000000000001 / 50000000000000000 : ℚ)
  oldHi := (13675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_694]
}

noncomputable def cell_12485 : Cell := { cellDefaults with
  domain := ⟨(18312500000000001 / 25000000000000000 : ℚ), (29305000000000001 / 40000000000000000 : ℚ)⟩
  r := (24690313857147 / 50000000000000 : ℚ)
  w := (13458303259319 / 10000000000000 : ℚ)
  center := (293025000000000013 / 400000000000000000 : ℚ)
  supportValue := (2735177256190697 / 10000000000000000 : ℚ)
  supportSlope := (-1672176844778251 / 2000000000000000 : ℚ)
  oldCenter := (2735177256190697 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1696
  oldLo := (13650000000000001 / 50000000000000000 : ℚ)
  oldHi := (13700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_694, piece_695]
}

noncomputable def cell_12486 : Cell := { cellDefaults with
  domain := ⟨(29305000000000001 / 40000000000000000 : ℚ), (73275000000000001 / 100000000000000000 : ℚ)⟩
  r := (24690313857147 / 50000000000000 : ℚ)
  w := (13458303259319 / 10000000000000 : ℚ)
  center := (293075000000000007 / 400000000000000000 : ℚ)
  supportValue := (683532449858889 / 2500000000000000 : ℚ)
  supportSlope := (-8362494372687771 / 10000000000000000 : ℚ)
  oldCenter := (683532449858889 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1696
  oldLo := (13650000000000001 / 50000000000000000 : ℚ)
  oldHi := (13675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_694]
}

noncomputable def cell_12487 : Cell := { cellDefaults with
  domain := ⟨(73275000000000001 / 100000000000000000 : ℚ), (146574999999999999 / 200000000000000000 : ℚ)⟩
  r := (24690313857147 / 50000000000000 : ℚ)
  w := (13458303259319 / 10000000000000 : ℚ)
  center := (293125000000000001 / 400000000000000000 : ℚ)
  supportValue := (13665425235043113 / 50000000000000000 : ℚ)
  supportSlope := (-835354903828567 / 1000000000000000 : ℚ)
  oldCenter := (13665425235043113 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1696
  oldLo := (13650000000000001 / 50000000000000000 : ℚ)
  oldHi := (13675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_694]
}

noncomputable def cell_12488 : Cell := { cellDefaults with
  domain := ⟨(146574999999999999 / 200000000000000000 : ℚ), (36649999999999999 / 50000000000000000 : ℚ)⟩
  r := (24690313857147 / 50000000000000 : ℚ)
  w := (13458303259319 / 10000000000000 : ℚ)
  center := (58634999999999999 / 80000000000000000 : ℚ)
  supportValue := (2732041410354079 / 10000000000000000 : ℚ)
  supportSlope := (-4172320978255651 / 5000000000000000 : ℚ)
  oldCenter := (2732041410354079 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1696
  oldLo := (13650000000000001 / 50000000000000000 : ℚ)
  oldHi := (13675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_694]
}

noncomputable def cell_12489 : Cell := { cellDefaults with
  domain := ⟨(36649999999999999 / 50000000000000000 : ℚ), (146624999999999999 / 200000000000000000 : ℚ)⟩
  r := (2468014987161 / 5000000000000 : ℚ)
  w := (1682198113171 / 1250000000000 : ℚ)
  center := (58644999999999999 / 80000000000000000 : ℚ)
  supportValue := (136647131863667 / 500000000000000 : ℚ)
  supportSlope := (-8349092401677247 / 10000000000000000 : ℚ)
  oldCenter := (136647131863667 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1697
  oldLo := (13650000000000001 / 50000000000000000 : ℚ)
  oldHi := (13675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_694]
}

noncomputable def cell_12490 : Cell := { cellDefaults with
  domain := ⟨(146624999999999999 / 200000000000000000 : ℚ), (73325000000000001 / 100000000000000000 : ℚ)⟩
  r := (2468014987161 / 5000000000000 : ℚ)
  w := (1682198113171 / 1250000000000 : ℚ)
  center := (293275000000000001 / 400000000000000000 : ℚ)
  supportValue := (2731899556943147 / 10000000000000000 : ℚ)
  supportSlope := (-83401973865439 / 100000000000000 : ℚ)
  oldCenter := (2731899556943147 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1697
  oldLo := (13650000000000001 / 50000000000000000 : ℚ)
  oldHi := (13675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_694]
}

noncomputable def cell_12491 : Cell := { cellDefaults with
  domain := ⟨(73325000000000001 / 100000000000000000 : ℚ), (29335000000000001 / 40000000000000000 : ℚ)⟩
  r := (2468014987161 / 5000000000000 : ℚ)
  w := (1682198113171 / 1250000000000 : ℚ)
  center := (293325000000000007 / 400000000000000000 : ℚ)
  supportValue := (2730857586116109 / 10000000000000000 : ℚ)
  supportSlope := (-833134029401783 / 1000000000000000 : ℚ)
  oldCenter := (2730857586116109 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1697
  oldLo := (13650000000000001 / 50000000000000000 : ℚ)
  oldHi := (13675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_694]
}

noncomputable def cell_12492 : Cell := { cellDefaults with
  domain := ⟨(29335000000000001 / 40000000000000000 : ℚ), (18337500000000001 / 25000000000000000 : ℚ)⟩
  r := (2468014987161 / 5000000000000 : ℚ)
  w := (1682198113171 / 1250000000000 : ℚ)
  center := (293375000000000013 / 400000000000000000 : ℚ)
  supportValue := (27298182827444567 / 100000000000000000 : ℚ)
  supportSlope := (-4166578389183717 / 5000000000000000 : ℚ)
  oldCenter := (27298182827444567 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1697
  oldLo := (13625000000000001 / 50000000000000000 : ℚ)
  oldHi := (13675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_693, piece_694]
}

noncomputable def cell_12493 : Cell := { cellDefaults with
  domain := ⟨(18337500000000001 / 25000000000000000 : ℚ), (293450000000000011 / 400000000000000000 : ℚ)⟩
  r := (49339997292721 / 100000000000000 : ℚ)
  w := (6728440757867 / 5000000000000 : ℚ)
  center := (586850000000000027 / 800000000000000000 : ℚ)
  supportValue := (2730713010131977 / 10000000000000000 : ℚ)
  supportSlope := (-4163443601333111 / 5000000000000000 : ℚ)
  oldCenter := (2730713010131977 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1698
  oldLo := (13650000000000001 / 50000000000000000 : ℚ)
  oldHi := (13675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_694]
}

noncomputable def cell_12494 : Cell := { cellDefaults with
  domain := ⟨(293450000000000011 / 400000000000000000 : ℚ), (146750000000000003 / 200000000000000000 : ℚ)⟩
  r := (49339997292721 / 100000000000000 : ℚ)
  w := (6728440757867 / 5000000000000 : ℚ)
  center := (586950000000000017 / 800000000000000000 : ℚ)
  supportValue := (2729673990435411 / 10000000000000000 : ℚ)
  supportSlope := (-520680069756637 / 625000000000000 : ℚ)
  oldCenter := (2729673990435411 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1698
  oldLo := (13625000000000001 / 50000000000000000 : ℚ)
  oldHi := (13675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_693, piece_694]
}

noncomputable def cell_12495 : Cell := { cellDefaults with
  domain := ⟨(146750000000000003 / 200000000000000000 : ℚ), (293550000000000001 / 400000000000000000 : ℚ)⟩
  r := (49339997292721 / 100000000000000 : ℚ)
  w := (6728440757867 / 5000000000000 : ℚ)
  center := (587050000000000007 / 800000000000000000 : ℚ)
  supportValue := (27286309121701063 / 100000000000000000 : ℚ)
  supportSlope := (-8324896236483191 / 10000000000000000 : ℚ)
  oldCenter := (27286309121701063 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1698
  oldLo := (13625000000000001 / 50000000000000000 : ℚ)
  oldHi := (13650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_693]
}

noncomputable def cell_12496 : Cell := { cellDefaults with
  domain := ⟨(293550000000000001 / 400000000000000000 : ℚ), (73399999999999999 / 100000000000000000 : ℚ)⟩
  r := (49339997292721 / 100000000000000 : ℚ)
  w := (6728440757867 / 5000000000000 : ℚ)
  center := (587149999999999997 / 800000000000000000 : ℚ)
  supportValue := (27275908537954807 / 100000000000000000 : ℚ)
  supportSlope := (-415802111322569 / 500000000000000 : ℚ)
  oldCenter := (27275908537954807 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1698
  oldLo := (13625000000000001 / 50000000000000000 : ℚ)
  oldHi := (13650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_693]
}

noncomputable def cell_12497 : Cell := { cellDefaults with
  domain := ⟨(73399999999999999 / 100000000000000000 : ℚ), (293650000000000001 / 400000000000000000 : ℚ)⟩
  r := (2465985682963 / 5000000000000 : ℚ)
  w := (420505609127 / 312500000000 : ℚ)
  center := (587249999999999997 / 800000000000000000 : ℚ)
  supportValue := (109139467831859 / 400000000000000 : ℚ)
  supportSlope := (-4160222284905341 / 5000000000000000 : ℚ)
  oldCenter := (109139467831859 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1699
  oldLo := (13625000000000001 / 50000000000000000 : ℚ)
  oldHi := (13650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_693]
}

noncomputable def cell_12498 : Cell := { cellDefaults with
  domain := ⟨(293650000000000001 / 400000000000000000 : ℚ), (146850000000000003 / 200000000000000000 : ℚ)⟩
  r := (2465985682963 / 5000000000000 : ℚ)
  w := (420505609127 / 312500000000 : ℚ)
  center := (587350000000000007 / 800000000000000000 : ℚ)
  supportValue := (5454894386237733 / 20000000000000000 : ℚ)
  supportSlope := (-4155801361953177 / 5000000000000000 : ℚ)
  oldCenter := (5454894386237733 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1699
  oldLo := (13625000000000001 / 50000000000000000 : ℚ)
  oldHi := (13650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_693]
}

noncomputable def cell_12499 : Cell := { cellDefaults with
  domain := ⟨(146850000000000003 / 200000000000000000 : ℚ), (293750000000000011 / 400000000000000000 : ℚ)⟩
  r := (2465985682963 / 5000000000000 : ℚ)
  w := (420505609127 / 312500000000 : ℚ)
  center := (587450000000000017 / 800000000000000000 : ℚ)
  supportValue := (1363204396657907 / 5000000000000000 : ℚ)
  supportSlope := (-8302798520264667 / 10000000000000000 : ℚ)
  oldCenter := (1363204396657907 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1699
  oldLo := (13625000000000001 / 50000000000000000 : ℚ)
  oldHi := (13650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_693]
}

theorem check_12450 : cell_12450.check = true := by
  decide +kernel

theorem check_12451 : cell_12451.check = true := by
  decide +kernel

theorem check_12452 : cell_12452.check = true := by
  decide +kernel

theorem check_12453 : cell_12453.check = true := by
  decide +kernel

theorem check_12454 : cell_12454.check = true := by
  decide +kernel

theorem check_12455 : cell_12455.check = true := by
  decide +kernel

theorem check_12456 : cell_12456.check = true := by
  decide +kernel

theorem check_12457 : cell_12457.check = true := by
  decide +kernel

theorem check_12458 : cell_12458.check = true := by
  decide +kernel

theorem check_12459 : cell_12459.check = true := by
  decide +kernel

theorem check_12460 : cell_12460.check = true := by
  decide +kernel

theorem check_12461 : cell_12461.check = true := by
  decide +kernel

theorem check_12462 : cell_12462.check = true := by
  decide +kernel

theorem check_12463 : cell_12463.check = true := by
  decide +kernel

theorem check_12464 : cell_12464.check = true := by
  decide +kernel

theorem check_12465 : cell_12465.check = true := by
  decide +kernel

theorem check_12466 : cell_12466.check = true := by
  decide +kernel

theorem check_12467 : cell_12467.check = true := by
  decide +kernel

theorem check_12468 : cell_12468.check = true := by
  decide +kernel

theorem check_12469 : cell_12469.check = true := by
  decide +kernel

theorem check_12470 : cell_12470.check = true := by
  decide +kernel

theorem check_12471 : cell_12471.check = true := by
  decide +kernel

theorem check_12472 : cell_12472.check = true := by
  decide +kernel

theorem check_12473 : cell_12473.check = true := by
  decide +kernel

theorem check_12474 : cell_12474.check = true := by
  decide +kernel

theorem check_12475 : cell_12475.check = true := by
  decide +kernel

theorem check_12476 : cell_12476.check = true := by
  decide +kernel

theorem check_12477 : cell_12477.check = true := by
  decide +kernel

theorem check_12478 : cell_12478.check = true := by
  decide +kernel

theorem check_12479 : cell_12479.check = true := by
  decide +kernel

theorem check_12480 : cell_12480.check = true := by
  decide +kernel

theorem check_12481 : cell_12481.check = true := by
  decide +kernel

theorem check_12482 : cell_12482.check = true := by
  decide +kernel

theorem check_12483 : cell_12483.check = true := by
  decide +kernel

theorem check_12484 : cell_12484.check = true := by
  decide +kernel

theorem check_12485 : cell_12485.check = true := by
  decide +kernel

theorem check_12486 : cell_12486.check = true := by
  decide +kernel

theorem check_12487 : cell_12487.check = true := by
  decide +kernel

theorem check_12488 : cell_12488.check = true := by
  decide +kernel

theorem check_12489 : cell_12489.check = true := by
  decide +kernel

theorem check_12490 : cell_12490.check = true := by
  decide +kernel

theorem check_12491 : cell_12491.check = true := by
  decide +kernel

theorem check_12492 : cell_12492.check = true := by
  decide +kernel

theorem check_12493 : cell_12493.check = true := by
  decide +kernel

theorem check_12494 : cell_12494.check = true := by
  decide +kernel

theorem check_12495 : cell_12495.check = true := by
  decide +kernel

theorem check_12496 : cell_12496.check = true := by
  decide +kernel

theorem check_12497 : cell_12497.check = true := by
  decide +kernel

theorem check_12498 : cell_12498.check = true := by
  decide +kernel

theorem check_12499 : cell_12499.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12450, cell_12451, cell_12452, cell_12453, cell_12454, cell_12455, cell_12456, cell_12457, cell_12458, cell_12459, cell_12460, cell_12461, cell_12462, cell_12463, cell_12464, cell_12465, cell_12466, cell_12467, cell_12468, cell_12469, cell_12470, cell_12471, cell_12472, cell_12473, cell_12474, cell_12475, cell_12476, cell_12477, cell_12478, cell_12479, cell_12480, cell_12481, cell_12482, cell_12483, cell_12484, cell_12485, cell_12486, cell_12487, cell_12488, cell_12489, cell_12490, cell_12491, cell_12492, cell_12493, cell_12494, cell_12495, cell_12496, cell_12497, cell_12498, cell_12499]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12450, check_12451, check_12452, check_12453, check_12454, check_12455, check_12456, check_12457, check_12458, check_12459, check_12460, check_12461, check_12462, check_12463, check_12464, check_12465, check_12466, check_12467, check_12468, check_12469, check_12470, check_12471, check_12472, check_12473, check_12474, check_12475, check_12476, check_12477, check_12478, check_12479, check_12480, check_12481, check_12482, check_12483, check_12484, check_12485, check_12486, check_12487, check_12488, check_12489, check_12490, check_12491, check_12492, check_12493, check_12494, check_12495, check_12496, check_12497, check_12498, check_12499, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0249

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0249
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0249
open AnalyticBounds.ExpressionCertificate

theorem linked_12450 : Linked cell_12450 pieces := by
  link_source cell_12450 with piece_1686 using piece_1686_mem, piece_698_mem

theorem linked_12451 : Linked cell_12451 pieces := by
  link_source cell_12451 with piece_1686 using piece_1686_mem, piece_698_mem

theorem linked_12452 : Linked cell_12452 pieces := by
  link_source cell_12452 with piece_1687 using piece_1687_mem, piece_698_mem

theorem linked_12453 : Linked cell_12453 pieces := by
  link_source cell_12453 with piece_1687 using piece_1687_mem, piece_698_mem

theorem linked_12454 : Linked cell_12454 pieces := by
  link_source cell_12454 with piece_1687 using piece_1687_mem, piece_698_mem

theorem linked_12455 : Linked cell_12455 pieces := by
  link_source cell_12455 with piece_1687 using piece_1687_mem, ⟨piece_697_mem, piece_698_mem⟩

theorem linked_12456 : Linked cell_12456 pieces := by
  link_source cell_12456 with piece_1688 using piece_1688_mem, piece_697_mem

theorem linked_12457 : Linked cell_12457 pieces := by
  link_source cell_12457 with piece_1689 using piece_1689_mem, piece_698_mem

theorem linked_12458 : Linked cell_12458 pieces := by
  link_source cell_12458 with piece_1689 using piece_1689_mem, ⟨piece_697_mem, piece_698_mem⟩

theorem linked_12459 : Linked cell_12459 pieces := by
  link_source cell_12459 with piece_1689 using piece_1689_mem, piece_697_mem

theorem linked_12460 : Linked cell_12460 pieces := by
  link_source cell_12460 with piece_1689 using piece_1689_mem, piece_697_mem

theorem linked_12461 : Linked cell_12461 pieces := by
  link_source cell_12461 with piece_1690 using piece_1690_mem, piece_697_mem

theorem linked_12462 : Linked cell_12462 pieces := by
  link_source cell_12462 with piece_1690 using piece_1690_mem, piece_697_mem

theorem linked_12463 : Linked cell_12463 pieces := by
  link_source cell_12463 with piece_1690 using piece_1690_mem, piece_697_mem

theorem linked_12464 : Linked cell_12464 pieces := by
  link_source cell_12464 with piece_1690 using piece_1690_mem, ⟨piece_696_mem, piece_697_mem⟩

theorem linked_12465 : Linked cell_12465 pieces := by
  link_source cell_12465 with piece_1691 using piece_1691_mem, piece_697_mem

theorem linked_12466 : Linked cell_12466 pieces := by
  link_source cell_12466 with piece_1691 using piece_1691_mem, ⟨piece_696_mem, piece_697_mem⟩

theorem linked_12467 : Linked cell_12467 pieces := by
  link_source cell_12467 with piece_1691 using piece_1691_mem, piece_696_mem

theorem linked_12468 : Linked cell_12468 pieces := by
  link_source cell_12468 with piece_1691 using piece_1691_mem, piece_696_mem

theorem linked_12469 : Linked cell_12469 pieces := by
  link_source cell_12469 with piece_1692 using piece_1692_mem, piece_696_mem

theorem linked_12470 : Linked cell_12470 pieces := by
  link_source cell_12470 with piece_1692 using piece_1692_mem, piece_696_mem

theorem linked_12471 : Linked cell_12471 pieces := by
  link_source cell_12471 with piece_1692 using piece_1692_mem, piece_696_mem

theorem linked_12472 : Linked cell_12472 pieces := by
  link_source cell_12472 with piece_1692 using piece_1692_mem, piece_696_mem

theorem linked_12473 : Linked cell_12473 pieces := by
  link_source cell_12473 with piece_1693 using piece_1693_mem, piece_696_mem

theorem linked_12474 : Linked cell_12474 pieces := by
  link_source cell_12474 with piece_1693 using piece_1693_mem, piece_696_mem

theorem linked_12475 : Linked cell_12475 pieces := by
  link_source cell_12475 with piece_1693 using piece_1693_mem, ⟨piece_695_mem, piece_696_mem⟩

theorem linked_12476 : Linked cell_12476 pieces := by
  link_source cell_12476 with piece_1693 using piece_1693_mem, piece_695_mem

theorem linked_12477 : Linked cell_12477 pieces := by
  link_source cell_12477 with piece_1694 using piece_1694_mem, ⟨piece_695_mem, piece_696_mem⟩

theorem linked_12478 : Linked cell_12478 pieces := by
  link_source cell_12478 with piece_1694 using piece_1694_mem, piece_695_mem

theorem linked_12479 : Linked cell_12479 pieces := by
  link_source cell_12479 with piece_1694 using piece_1694_mem, piece_695_mem

theorem linked_12480 : Linked cell_12480 pieces := by
  link_source cell_12480 with piece_1694 using piece_1694_mem, piece_695_mem

theorem linked_12481 : Linked cell_12481 pieces := by
  link_source cell_12481 with piece_1695 using piece_1695_mem, piece_695_mem

theorem linked_12482 : Linked cell_12482 pieces := by
  link_source cell_12482 with piece_1695 using piece_1695_mem, piece_695_mem

theorem linked_12483 : Linked cell_12483 pieces := by
  link_source cell_12483 with piece_1695 using piece_1695_mem, ⟨piece_694_mem, piece_695_mem⟩

theorem linked_12484 : Linked cell_12484 pieces := by
  link_source cell_12484 with piece_1695 using piece_1695_mem, piece_694_mem

theorem linked_12485 : Linked cell_12485 pieces := by
  link_source cell_12485 with piece_1696 using piece_1696_mem, ⟨piece_694_mem, piece_695_mem⟩

theorem linked_12486 : Linked cell_12486 pieces := by
  link_source cell_12486 with piece_1696 using piece_1696_mem, piece_694_mem

theorem linked_12487 : Linked cell_12487 pieces := by
  link_source cell_12487 with piece_1696 using piece_1696_mem, piece_694_mem

theorem linked_12488 : Linked cell_12488 pieces := by
  link_source cell_12488 with piece_1696 using piece_1696_mem, piece_694_mem

theorem linked_12489 : Linked cell_12489 pieces := by
  link_source cell_12489 with piece_1697 using piece_1697_mem, piece_694_mem

theorem linked_12490 : Linked cell_12490 pieces := by
  link_source cell_12490 with piece_1697 using piece_1697_mem, piece_694_mem

theorem linked_12491 : Linked cell_12491 pieces := by
  link_source cell_12491 with piece_1697 using piece_1697_mem, piece_694_mem

theorem linked_12492 : Linked cell_12492 pieces := by
  link_source cell_12492 with piece_1697 using piece_1697_mem, ⟨piece_693_mem, piece_694_mem⟩

theorem linked_12493 : Linked cell_12493 pieces := by
  link_source cell_12493 with piece_1698 using piece_1698_mem, piece_694_mem

theorem linked_12494 : Linked cell_12494 pieces := by
  link_source cell_12494 with piece_1698 using piece_1698_mem, ⟨piece_693_mem, piece_694_mem⟩

theorem linked_12495 : Linked cell_12495 pieces := by
  link_source cell_12495 with piece_1698 using piece_1698_mem, piece_693_mem

theorem linked_12496 : Linked cell_12496 pieces := by
  link_source cell_12496 with piece_1698 using piece_1698_mem, piece_693_mem

theorem linked_12497 : Linked cell_12497 pieces := by
  link_source cell_12497 with piece_1699 using piece_1699_mem, piece_693_mem

theorem linked_12498 : Linked cell_12498 pieces := by
  link_source cell_12498 with piece_1699 using piece_1699_mem, piece_693_mem

theorem linked_12499 : Linked cell_12499 pieces := by
  link_source cell_12499 with piece_1699 using piece_1699_mem, piece_693_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0249.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0249.cells,List.forall_mem_cons]
  exact ⟨linked_12450, linked_12451, linked_12452, linked_12453, linked_12454, linked_12455, linked_12456, linked_12457, linked_12458, linked_12459, linked_12460, linked_12461, linked_12462, linked_12463, linked_12464, linked_12465, linked_12466, linked_12467, linked_12468, linked_12469, linked_12470, linked_12471, linked_12472, linked_12473, linked_12474, linked_12475, linked_12476, linked_12477, linked_12478, linked_12479, linked_12480, linked_12481, linked_12482, linked_12483, linked_12484, linked_12485, linked_12486, linked_12487, linked_12488, linked_12489, linked_12490, linked_12491, linked_12492, linked_12493, linked_12494, linked_12495, linked_12496, linked_12497, linked_12498, linked_12499, by simp⟩

theorem covered : covers (72825000000000001 / 100000000000000000 : ℚ) (293750000000000011 / 400000000000000000 : ℚ)
    (SourceCertificates.Chunk0249.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0249
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0250
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(293750000000000011 / 400000000000000000 : ℚ), (18362500000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (49299460075911 / 100000000000000 : ℚ)
  w := (6727750167031 / 5000000000000 : ℚ)
  center := (587550000000000027 / 800000000000000000 : ℚ)
  supportValue := (54507467989139 / 200000000000000 : ℚ)
  supportSlope := (-8296260265225067 / 10000000000000000 : ℚ)
  oldCenter := (54507467989139 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1701
  oldLo := (13500000000000001 / 50000000000000000 : ℚ)
  oldHi := (13625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_688]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12500 : Cell := { cellDefaults with
  r := (2465985682963 / 5000000000000 : ℚ)
  w := (420505609127 / 312500000000 : ℚ)
  newCoefficients := coefficients_1699
  oldLo := (13600000000000001 / 50000000000000000 : ℚ)
  oldHi := (13650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_692, piece_693]
}

noncomputable def cell_12501 : Cell := { cellDefaults with
  domain := ⟨(18362500000000001 / 25000000000000000 : ℚ), (1469050279329609 / 2000000000000000 : ℚ)⟩
  center := (73451256983240227 / 100000000000000000 : ℚ)
  supportValue := (2726674612995581 / 10000000000000000 : ℚ)
  supportSlope := (-4150922008294627 / 5000000000000000 : ℚ)
  oldCenter := (2726674612995581 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1700
  oldLo := (13625000000000001 / 50000000000000000 : ℚ)
  oldHi := (13650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_693]
}

noncomputable def cell_12502 : Cell := { cellDefaults with
  domain := ⟨(1469050279329609 / 2000000000000000 : ℚ), (293857541899441349 / 400000000000000000 : ℚ)⟩
  center := (587667597765363149 / 800000000000000000 : ℚ)
  supportValue := (1703798881270999 / 6250000000000000 : ℚ)
  supportSlope := (-1037099322998719 / 1250000000000000 : ℚ)
  oldCenter := (1703798881270999 / 6250000000000000 : ℚ)
  oldLo := (13625000000000001 / 50000000000000000 : ℚ)
  oldHi := (13650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_693]
}

noncomputable def cell_12503 : Cell := { cellDefaults with
  domain := ⟨(293857541899441349 / 400000000000000000 : ℚ), (146952513966480449 / 200000000000000000 : ℚ)⟩
  center := (587762569832402247 / 800000000000000000 : ℚ)
  supportValue := (681273914087101 / 2500000000000000 : ℚ)
  supportSlope := (-64803299026629 / 78125000000000 : ℚ)
  oldCenter := (681273914087101 / 2500000000000000 : ℚ)
  oldLo := (13600000000000001 / 50000000000000000 : ℚ)
  oldHi := (13650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_692, piece_693]
}

noncomputable def cell_12504 : Cell := { cellDefaults with
  domain := ⟨(146952513966480449 / 200000000000000000 : ℚ), (293952513966480447 / 400000000000000000 : ℚ)⟩
  center := (117571508379888269 / 160000000000000000 : ℚ)
  supportValue := (27241085961204153 / 100000000000000000 : ℚ)
  supportSlope := (-259241649517271 / 312500000000000 : ℚ)
  oldCenter := (27241085961204153 / 100000000000000000 : ℚ)
  oldLo := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_692]
}

noncomputable def cell_12505 : Cell := { cellDefaults with
  domain := ⟨(293952513966480447 / 400000000000000000 : ℚ), (73499999999999999 / 100000000000000000 : ℚ)⟩
  center := (587952513966480443 / 800000000000000000 : ℚ)
  supportValue := (27231242655622967 / 100000000000000000 : ℚ)
  supportSlope := (-8287345579196767 / 10000000000000000 : ℚ)
  oldCenter := (27231242655622967 / 100000000000000000 : ℚ)
  oldLo := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_692]
}

noncomputable def cell_12506 : Cell := { cellDefaults with
  domain := ⟨(73499999999999999 / 100000000000000000 : ℚ), (294050000000000001 / 400000000000000000 : ℚ)⟩
  r := (49279222503389 / 100000000000000 : ℚ)
  w := (1345481723697 / 1000000000000 : ℚ)
  center := (588049999999999997 / 800000000000000000 : ℚ)
  supportValue := (2724040204478009 / 10000000000000000 : ℚ)
  supportSlope := (-1036493124784051 / 1250000000000000 : ℚ)
  oldCenter := (2724040204478009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1702
  oldLo := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_692]
}

noncomputable def cell_12507 : Cell := { cellDefaults with
  domain := ⟨(294050000000000001 / 400000000000000000 : ℚ), (147050000000000003 / 200000000000000000 : ℚ)⟩
  r := (49279222503389 / 100000000000000 : ℚ)
  w := (1345481723697 / 1000000000000 : ℚ)
  center := (588150000000000007 / 800000000000000000 : ℚ)
  supportValue := (3403755328675797 / 12500000000000000 : ℚ)
  supportSlope := (-8283124061216067 / 10000000000000000 : ℚ)
  oldCenter := (3403755328675797 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1702
  oldLo := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_692]
}

noncomputable def cell_12508 : Cell := { cellDefaults with
  domain := ⟨(147050000000000003 / 200000000000000000 : ℚ), (294150000000000011 / 400000000000000000 : ℚ)⟩
  r := (49279222503389 / 100000000000000 : ℚ)
  w := (1345481723697 / 1000000000000 : ℚ)
  center := (588250000000000017 / 800000000000000000 : ℚ)
  supportValue := (6804923554165239 / 25000000000000000 : ℚ)
  supportSlope := (-4137170368156559 / 5000000000000000 : ℚ)
  oldCenter := (6804923554165239 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1702
  oldLo := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_692]
}

noncomputable def cell_12509 : Cell := { cellDefaults with
  domain := ⟨(294150000000000011 / 400000000000000000 : ℚ), (18387500000000001 / 25000000000000000 : ℚ)⟩
  r := (49279222503389 / 100000000000000 : ℚ)
  w := (1345481723697 / 1000000000000 : ℚ)
  center := (588350000000000027 / 800000000000000000 : ℚ)
  supportValue := (5441871351936629 / 20000000000000000 : ℚ)
  supportSlope := (-4132797388458207 / 5000000000000000 : ℚ)
  oldCenter := (5441871351936629 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1702
  oldLo := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_692]
}

noncomputable def cell_12510 : Cell := { cellDefaults with
  domain := ⟨(18387500000000001 / 25000000000000000 : ℚ), (294250000000000011 / 400000000000000000 : ℚ)⟩
  r := (6157377151583 / 12500000000000 : ℚ)
  w := (1345416123383 / 1000000000000 : ℚ)
  center := (588450000000000027 / 800000000000000000 : ℚ)
  supportValue := (6804545261597321 / 25000000000000000 : ℚ)
  supportSlope := (-2067467543558561 / 2500000000000000 : ℚ)
  oldCenter := (6804545261597321 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1703
  oldLo := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_692]
}

noncomputable def cell_12511 : Cell := { cellDefaults with
  domain := ⟨(294250000000000011 / 400000000000000000 : ℚ), (147150000000000003 / 200000000000000000 : ℚ)⟩
  r := (6157377151583 / 12500000000000 : ℚ)
  w := (1345416123383 / 1000000000000 : ℚ)
  center := (588550000000000017 / 800000000000000000 : ℚ)
  supportValue := (272078491699659 / 1000000000000000 : ℚ)
  supportSlope := (-826113643485809 / 1000000000000000 : ℚ)
  oldCenter := (272078491699659 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1703
  oldLo := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_692]
}

noncomputable def cell_12512 : Cell := { cellDefaults with
  domain := ⟨(147150000000000003 / 200000000000000000 : ℚ), (294350000000000001 / 400000000000000000 : ℚ)⟩
  r := (6157377151583 / 12500000000000 : ℚ)
  w := (1345416123383 / 1000000000000 : ℚ)
  center := (588650000000000007 / 800000000000000000 : ℚ)
  supportValue := (13598771270505397 / 50000000000000000 : ℚ)
  supportSlope := (-413197756831837 / 500000000000000 : ℚ)
  oldCenter := (13598771270505397 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1703
  oldLo := (13575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_691, piece_692]
}

noncomputable def cell_12513 : Cell := { cellDefaults with
  domain := ⟨(294350000000000001 / 400000000000000000 : ℚ), (73599999999999999 / 100000000000000000 : ℚ)⟩
  r := (6157377151583 / 12500000000000 : ℚ)
  w := (1345416123383 / 1000000000000 : ℚ)
  center := (588749999999999997 / 800000000000000000 : ℚ)
  supportValue := (2718719399638053 / 10000000000000000 : ℚ)
  supportSlope := (-8259201911676443 / 10000000000000000 : ℚ)
  oldCenter := (2718719399638053 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1703
  oldLo := (13575000000000001 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_691]
}

noncomputable def cell_12514 : Cell := { cellDefaults with
  domain := ⟨(73599999999999999 / 100000000000000000 : ℚ), (294450000000000001 / 400000000000000000 : ℚ)⟩
  r := (49238827250251 / 100000000000000 : ℚ)
  w := (6726750229529 / 5000000000000 : ℚ)
  center := (588849999999999997 / 800000000000000000 : ℚ)
  supportValue := (543920915959611 / 2000000000000000 : ℚ)
  supportSlope := (-8261758711841933 / 10000000000000000 : ℚ)
  oldCenter := (543920915959611 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1704
  oldLo := (13575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_691, piece_692]
}

noncomputable def cell_12515 : Cell := { cellDefaults with
  domain := ⟨(294450000000000001 / 400000000000000000 : ℚ), (147250000000000003 / 200000000000000000 : ℚ)⟩
  r := (49238827250251 / 100000000000000 : ℚ)
  w := (6726750229529 / 5000000000000 : ℚ)
  center := (588950000000000007 / 800000000000000000 : ℚ)
  supportValue := (2718570282711061 / 10000000000000000 : ℚ)
  supportSlope := (-8254749878195141 / 10000000000000000 : ℚ)
  oldCenter := (2718570282711061 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1704
  oldLo := (13575000000000001 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_691]
}

noncomputable def cell_12516 : Cell := { cellDefaults with
  domain := ⟨(147250000000000003 / 200000000000000000 : ℚ), (294550000000000011 / 400000000000000000 : ℚ)⟩
  r := (49238827250251 / 100000000000000 : ℚ)
  w := (6726750229529 / 5000000000000 : ℚ)
  center := (589050000000000017 / 800000000000000000 : ℚ)
  supportValue := (1358769493407017 / 5000000000000000 : ℚ)
  supportSlope := (-4122994442780779 / 5000000000000000 : ℚ)
  oldCenter := (1358769493407017 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1704
  oldLo := (13575000000000001 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_691]
}

noncomputable def cell_12517 : Cell := { cellDefaults with
  domain := ⟨(294550000000000011 / 400000000000000000 : ℚ), (18412500000000001 / 25000000000000000 : ℚ)⟩
  r := (49238827250251 / 100000000000000 : ℚ)
  w := (6726750229529 / 5000000000000 : ℚ)
  center := (589150000000000027 / 800000000000000000 : ℚ)
  supportValue := (27165087837048757 / 100000000000000000 : ℚ)
  supportSlope := (-32176817250613 / 39062500000000 : ℚ)
  oldCenter := (27165087837048757 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1704
  oldLo := (13575000000000001 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_691]
}

noncomputable def cell_12518 : Cell := { cellDefaults with
  domain := ⟨(18412500000000001 / 25000000000000000 : ℚ), (294650000000000011 / 400000000000000000 : ℚ)⟩
  r := (12304666549973 / 25000000000000 : ℚ)
  w := (13452859340859 / 10000000000000 : ℚ)
  center := (589250000000000027 / 800000000000000000 : ℚ)
  supportValue := (33967326274459 / 125000000000000 : ℚ)
  supportSlope := (-8241520809875993 / 10000000000000000 : ℚ)
  oldCenter := (33967326274459 / 125000000000000 : ℚ)
  newCoefficients := coefficients_1705
  oldLo := (13575000000000001 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_691]
}

noncomputable def cell_12519 : Cell := { cellDefaults with
  domain := ⟨(294650000000000011 / 400000000000000000 : ℚ), (147350000000000003 / 200000000000000000 : ℚ)⟩
  r := (12304666549973 / 25000000000000 : ℚ)
  w := (13452859340859 / 10000000000000 : ℚ)
  center := (589350000000000017 / 800000000000000000 : ℚ)
  supportValue := (1358178228294887 / 5000000000000000 : ℚ)
  supportSlope := (-823280939931419 / 1000000000000000 : ℚ)
  oldCenter := (1358178228294887 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1705
  oldLo := (13575000000000001 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_691]
}

noncomputable def cell_12520 : Cell := { cellDefaults with
  domain := ⟨(147350000000000003 / 200000000000000000 : ℚ), (294750000000000001 / 400000000000000000 : ℚ)⟩
  r := (12304666549973 / 25000000000000 : ℚ)
  w := (13452859340859 / 10000000000000 : ℚ)
  center := (589450000000000007 / 800000000000000000 : ℚ)
  supportValue := (2715329798562147 / 10000000000000000 : ℚ)
  supportSlope := (-8226960005908991 / 10000000000000000 : ℚ)
  oldCenter := (2715329798562147 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1705
  oldLo := (13550000000000001 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_690, piece_691]
}

noncomputable def cell_12521 : Cell := { cellDefaults with
  domain := ⟨(294750000000000001 / 400000000000000000 : ℚ), (73699999999999999 / 100000000000000000 : ℚ)⟩
  r := (12304666549973 / 25000000000000 : ℚ)
  w := (13452859340859 / 10000000000000 : ℚ)
  center := (589549999999999997 / 800000000000000000 : ℚ)
  supportValue := (5428598199561041 / 20000000000000000 : ℚ)
  supportSlope := (-8230951210147209 / 10000000000000000 : ℚ)
  oldCenter := (5428598199561041 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1705
  oldLo := (13550000000000001 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_690]
}

noncomputable def cell_12522 : Cell := { cellDefaults with
  domain := ⟨(73699999999999999 / 100000000000000000 : ℚ), (294850000000000001 / 400000000000000000 : ℚ)⟩
  r := (49198526632293 / 100000000000000 : ℚ)
  w := (1681528268801 / 1250000000000 : ℚ)
  center := (589649999999999997 / 800000000000000000 : ℚ)
  supportValue := (2715176250763061 / 10000000000000000 : ℚ)
  supportSlope := (-8224821892203481 / 10000000000000000 : ℚ)
  oldCenter := (2715176250763061 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1706
  oldLo := (13550000000000001 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_690, piece_691]
}

noncomputable def cell_12523 : Cell := { cellDefaults with
  domain := ⟨(294850000000000001 / 400000000000000000 : ℚ), (147450000000000003 / 200000000000000000 : ℚ)⟩
  r := (49198526632293 / 100000000000000 : ℚ)
  w := (1681528268801 / 1250000000000 : ℚ)
  center := (589750000000000007 / 800000000000000000 : ℚ)
  supportValue := (542829164067851 / 2000000000000000 : ℚ)
  supportSlope := (-4113241281071411 / 5000000000000000 : ℚ)
  oldCenter := (542829164067851 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1706
  oldLo := (13550000000000001 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_690]
}

noncomputable def cell_12524 : Cell := { cellDefaults with
  domain := ⟨(147450000000000003 / 200000000000000000 : ℚ), (294950000000000011 / 400000000000000000 : ℚ)⟩
  r := (49198526632293 / 100000000000000 : ℚ)
  w := (1681528268801 / 1250000000000 : ℚ)
  center := (589850000000000017 / 800000000000000000 : ℚ)
  supportValue := (6782795140673109 / 25000000000000000 : ℚ)
  supportSlope := (-2054436742395599 / 2500000000000000 : ℚ)
  oldCenter := (6782795140673109 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1706
  oldLo := (13550000000000001 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_690]
}

noncomputable def cell_12525 : Cell := { cellDefaults with
  domain := ⟨(294950000000000011 / 400000000000000000 : ℚ), (18437500000000001 / 25000000000000000 : ℚ)⟩
  r := (49198526632293 / 100000000000000 : ℚ)
  w := (1681528268801 / 1250000000000 : ℚ)
  center := (589950000000000027 / 800000000000000000 : ℚ)
  supportValue := (2712091381816269 / 10000000000000000 : ℚ)
  supportSlope := (-164180972669731 / 200000000000000 : ℚ)
  oldCenter := (2712091381816269 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1706
  oldLo := (13550000000000001 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_690]
}

noncomputable def cell_12526 : Cell := { cellDefaults with
  domain := ⟨(18437500000000001 / 25000000000000000 : ℚ), (295050000000000011 / 400000000000000000 : ℚ)⟩
  r := (9835682251031 / 20000000000000 : ℚ)
  w := (6725802266547 / 5000000000000 : ℚ)
  center := (590050000000000027 / 800000000000000000 : ℚ)
  supportValue := (2712962731383197 / 10000000000000000 : ℚ)
  supportSlope := (-2053318796002773 / 2500000000000000 : ℚ)
  oldCenter := (2712962731383197 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1707
  oldLo := (13550000000000001 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_690]
}

noncomputable def cell_12527 : Cell := { cellDefaults with
  domain := ⟨(295050000000000011 / 400000000000000000 : ℚ), (147550000000000003 / 200000000000000000 : ℚ)⟩
  r := (9835682251031 / 20000000000000 : ℚ)
  w := (6725802266547 / 5000000000000 : ℚ)
  center := (590150000000000017 / 800000000000000000 : ℚ)
  supportValue := (5423873230264027 / 20000000000000000 : ℚ)
  supportSlope := (-8204589173149411 / 10000000000000000 : ℚ)
  oldCenter := (5423873230264027 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1707
  oldLo := (13550000000000001 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_690]
}

noncomputable def cell_12528 : Cell := { cellDefaults with
  domain := ⟨(147550000000000003 / 200000000000000000 : ℚ), (295150000000000001 / 400000000000000000 : ℚ)⟩
  r := (9835682251031 / 20000000000000 : ℚ)
  w := (6725802266547 / 5000000000000 : ℚ)
  center := (590250000000000007 / 800000000000000000 : ℚ)
  supportValue := (2710911582320421 / 10000000000000000 : ℚ)
  supportSlope := (-819594009518003 / 1000000000000000 : ℚ)
  oldCenter := (2710911582320421 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1707
  oldLo := (13550000000000001 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_690]
}

noncomputable def cell_12529 : Cell := { cellDefaults with
  domain := ⟨(295150000000000001 / 400000000000000000 : ℚ), (73799999999999999 / 100000000000000000 : ℚ)⟩
  r := (9835682251031 / 20000000000000 : ℚ)
  w := (6725802266547 / 5000000000000 : ℚ)
  center := (590349999999999997 / 800000000000000000 : ℚ)
  supportValue := (21171010244389 / 78125000000000 : ℚ)
  supportSlope := (-4098378744337571 / 5000000000000000 : ℚ)
  oldCenter := (21171010244389 / 78125000000000 : ℚ)
  newCoefficients := coefficients_1707
  oldLo := (13525000000000001 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_689, piece_690]
}

noncomputable def cell_12530 : Cell := { cellDefaults with
  domain := ⟨(73799999999999999 / 100000000000000000 : ℚ), (147625000000000001 / 200000000000000000 : ℚ)⟩
  r := (12289580712077 / 25000000000000 : ℚ)
  w := (13450998395201 / 10000000000000 : ℚ)
  center := (295224999999999999 / 400000000000000000 : ℚ)
  supportValue := (542150780203841 / 2000000000000000 : ℚ)
  supportSlope := (-819147113865783 / 1000000000000000 : ℚ)
  oldCenter := (542150780203841 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1708
  oldLo := (13550000000000001 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_690]
}

noncomputable def cell_12531 : Cell := { cellDefaults with
  domain := ⟨(147625000000000001 / 200000000000000000 : ℚ), (36912500000000001 / 50000000000000000 : ℚ)⟩
  r := (12289580712077 / 25000000000000 : ℚ)
  w := (13450998395201 / 10000000000000 : ℚ)
  center := (59055000000000001 / 80000000000000000 : ℚ)
  supportValue := (27097318909857837 / 100000000000000000 : ℚ)
  supportSlope := (-4097330367875471 / 5000000000000000 : ℚ)
  oldCenter := (27097318909857837 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1708
  oldLo := (13525000000000001 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_689, piece_690]
}

noncomputable def cell_12532 : Cell := { cellDefaults with
  domain := ⟨(36912500000000001 / 50000000000000000 : ℚ), (147675000000000007 / 200000000000000000 : ℚ)⟩
  r := (12289580712077 / 25000000000000 : ℚ)
  w := (13450998395201 / 10000000000000 : ℚ)
  center := (295325000000000011 / 400000000000000000 : ℚ)
  supportValue := (541741149856659 / 2000000000000000 : ℚ)
  supportSlope := (-409480389705181 / 500000000000000 : ℚ)
  oldCenter := (541741149856659 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1708
  oldLo := (13525000000000001 / 50000000000000000 : ℚ)
  oldHi := (13550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_689]
}

noncomputable def cell_12533 : Cell := { cellDefaults with
  domain := ⟨(147675000000000007 / 200000000000000000 : ℚ), (14770000000000001 / 20000000000000000 : ℚ)⟩
  r := (12289580712077 / 25000000000000 : ℚ)
  w := (13450998395201 / 10000000000000 : ℚ)
  center := (295375000000000017 / 400000000000000000 : ℚ)
  supportValue := (541536518090239 / 2000000000000000 : ℚ)
  supportSlope := (-2045234467269207 / 2500000000000000 : ℚ)
  oldCenter := (541536518090239 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1708
  oldLo := (13525000000000001 / 50000000000000000 : ℚ)
  oldHi := (13550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_689]
}

noncomputable def cell_12534 : Cell := { cellDefaults with
  domain := ⟨(14770000000000001 / 20000000000000000 : ℚ), (147725000000000007 / 200000000000000000 : ℚ)⟩
  r := (49138250992771 / 100000000000000 : ℚ)
  w := (672519639131 / 500000000000 : ℚ)
  center := (295425000000000017 / 400000000000000000 : ℚ)
  supportValue := (13542743660050277 / 50000000000000000 : ℚ)
  supportSlope := (-1023142271419209 / 1250000000000000 : ℚ)
  oldCenter := (13542743660050277 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1709
  oldLo := (13525000000000001 / 50000000000000000 : ℚ)
  oldHi := (13550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_689]
}

noncomputable def cell_12535 : Cell := { cellDefaults with
  domain := ⟨(147725000000000007 / 200000000000000000 : ℚ), (36937500000000001 / 50000000000000000 : ℚ)⟩
  r := (49138250992771 / 100000000000000 : ℚ)
  w := (672519639131 / 500000000000 : ℚ)
  center := (295475000000000011 / 400000000000000000 : ℚ)
  supportValue := (54150522622169 / 200000000000000 : ℚ)
  supportSlope := (-2044120146665019 / 2500000000000000 : ℚ)
  oldCenter := (54150522622169 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1709
  oldLo := (13525000000000001 / 50000000000000000 : ℚ)
  oldHi := (13550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_689]
}

noncomputable def cell_12536 : Cell := { cellDefaults with
  domain := ⟨(36937500000000001 / 50000000000000000 : ℚ), (147775000000000001 / 200000000000000000 : ℚ)⟩
  r := (49138250992771 / 100000000000000 : ℚ)
  w := (672519639131 / 500000000000 : ℚ)
  center := (59105000000000001 / 80000000000000000 : ℚ)
  supportValue := (6766261525247111 / 25000000000000000 : ℚ)
  supportSlope := (-8167859844051419 / 10000000000000000 : ℚ)
  oldCenter := (6766261525247111 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1709
  oldLo := (13525000000000001 / 50000000000000000 : ℚ)
  oldHi := (13550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_689]
}

noncomputable def cell_12537 : Cell := { cellDefaults with
  domain := ⟨(147775000000000001 / 200000000000000000 : ℚ), (73899999999999999 / 100000000000000000 : ℚ)⟩
  r := (49138250992771 / 100000000000000 : ℚ)
  w := (672519639131 / 500000000000 : ℚ)
  center := (295574999999999999 / 400000000000000000 : ℚ)
  supportValue := (1352743029114707 / 5000000000000000 : ℚ)
  supportSlope := (-1631935151245241 / 2000000000000000 : ℚ)
  oldCenter := (1352743029114707 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1709
  oldHi := (13550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_688, piece_689]
}

noncomputable def cell_12538 : Cell := { cellDefaults with
  domain := ⟨(73899999999999999 / 100000000000000000 : ℚ), (147825000000000001 / 200000000000000000 : ℚ)⟩
  r := (49118211645239 / 100000000000000 : ℚ)
  w := (6724906483683 / 5000000000000 : ℚ)
  center := (295624999999999999 / 400000000000000000 : ℚ)
  supportValue := (1082537241438553 / 4000000000000000 : ℚ)
  supportSlope := (-8163377463458319 / 10000000000000000 : ℚ)
  oldCenter := (1082537241438553 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1710
  oldLo := (13525000000000001 / 50000000000000000 : ℚ)
  oldHi := (13550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_689]
}

noncomputable def cell_12539 : Cell := { cellDefaults with
  domain := ⟨(147825000000000001 / 200000000000000000 : ℚ), (36962500000000001 / 50000000000000000 : ℚ)⟩
  r := (49118211645239 / 100000000000000 : ℚ)
  w := (6724906483683 / 5000000000000 : ℚ)
  center := (59135000000000001 / 80000000000000000 : ℚ)
  supportValue := (270532511113899 / 1000000000000000 : ℚ)
  supportSlope := (-4078816171370691 / 5000000000000000 : ℚ)
  oldCenter := (270532511113899 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1710
  oldHi := (13550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_688, piece_689]
}

noncomputable def cell_12540 : Cell := { cellDefaults with
  domain := ⟨(36962500000000001 / 50000000000000000 : ℚ), (147875000000000007 / 200000000000000000 : ℚ)⟩
  r := (49118211645239 / 100000000000000 : ℚ)
  w := (6724906483683 / 5000000000000 : ℚ)
  center := (295725000000000011 / 400000000000000000 : ℚ)
  supportValue := (2704303088180187 / 10000000000000000 : ℚ)
  supportSlope := (-8161577912541149 / 10000000000000000 : ℚ)
  oldCenter := (2704303088180187 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1710
  oldHi := (13525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_688]
}

noncomputable def cell_12541 : Cell := { cellDefaults with
  domain := ⟨(147875000000000007 / 200000000000000000 : ℚ), (14790000000000001 / 20000000000000000 : ℚ)⟩
  r := (49118211645239 / 100000000000000 : ℚ)
  w := (6724906483683 / 5000000000000 : ℚ)
  center := (295775000000000017 / 400000000000000000 : ℚ)
  supportValue := (1081313372453669 / 4000000000000000 : ℚ)
  supportSlope := (-8152939161688709 / 10000000000000000 : ℚ)
  oldCenter := (1081313372453669 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1710
  oldHi := (13525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_688]
}

noncomputable def cell_12542 : Cell := { cellDefaults with
  domain := ⟨(14790000000000001 / 20000000000000000 : ℚ), (147925000000000007 / 200000000000000000 : ℚ)⟩
  r := (49098186679351 / 100000000000000 : ℚ)
  w := (6724613784469 / 5000000000000 : ℚ)
  center := (295825000000000017 / 400000000000000000 : ℚ)
  supportValue := (27041434031598643 / 100000000000000000 : ℚ)
  supportSlope := (-1631420738158891 / 2000000000000000 : ℚ)
  oldCenter := (27041434031598643 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1711
  oldHi := (13525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_688]
}

noncomputable def cell_12543 : Cell := { cellDefaults with
  domain := ⟨(147925000000000007 / 200000000000000000 : ℚ), (36987500000000001 / 50000000000000000 : ℚ)⟩
  r := (49098186679351 / 100000000000000 : ℚ)
  w := (6724613784469 / 5000000000000 : ℚ)
  center := (295875000000000011 / 400000000000000000 : ℚ)
  supportValue := (2703124304613777 / 10000000000000000 : ℚ)
  supportSlope := (-8148477367174589 / 10000000000000000 : ℚ)
  oldCenter := (2703124304613777 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1711
  oldHi := (13525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_688]
}

noncomputable def cell_12544 : Cell := { cellDefaults with
  domain := ⟨(36987500000000001 / 50000000000000000 : ℚ), (147975000000000001 / 200000000000000000 : ℚ)⟩
  r := (49098186679351 / 100000000000000 : ℚ)
  w := (6724613784469 / 5000000000000 : ℚ)
  center := (59185000000000001 / 80000000000000000 : ℚ)
  supportValue := (2702106282059183 / 10000000000000000 : ℚ)
  supportSlope := (-8139887771748543 / 10000000000000000 : ℚ)
  oldCenter := (2702106282059183 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1711
  oldHi := (13525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_688]
}

noncomputable def cell_12545 : Cell := { cellDefaults with
  domain := ⟨(147975000000000001 / 200000000000000000 : ℚ), (73999999999999999 / 100000000000000000 : ℚ)⟩
  r := (49098186679351 / 100000000000000 : ℚ)
  w := (6724613784469 / 5000000000000 : ℚ)
  center := (295974999999999999 / 400000000000000000 : ℚ)
  supportValue := (1350544665460051 / 5000000000000000 : ℚ)
  supportSlope := (-813133466434399 / 1000000000000000 : ℚ)
  oldCenter := (1350544665460051 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1711
  oldHi := (13525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_688]
}

noncomputable def cell_12546 : Cell := { cellDefaults with
  domain := ⟨(73999999999999999 / 100000000000000000 : ℚ), (7400558659217877 / 10000000000000000 : ℚ)⟩
  r := (49078193343279 / 100000000000000 : ℚ)
  w := (1681083483401 / 1250000000000 : ℚ)
  center := (148005586592178769 / 200000000000000000 : ℚ)
  supportValue := (1351111464363789 / 5000000000000000 : ℚ)
  supportSlope := (-4068884536466829 / 5000000000000000 : ℚ)
  oldCenter := (1351111464363789 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1712
  oldHi := (13525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_688]
}

noncomputable def cell_12547 : Cell := { cellDefaults with
  domain := ⟨(7400558659217877 / 10000000000000000 : ℚ), (59213351955307263 / 80000000000000000 : ℚ)⟩
  r := (49078193343279 / 100000000000000 : ℚ)
  w := (1681083483401 / 1250000000000 : ℚ)
  center := (118417821229050279 / 160000000000000000 : ℚ)
  supportValue := (1350772306463667 / 5000000000000000 : ℚ)
  supportSlope := (-4066028523137211 / 5000000000000000 : ℚ)
  oldCenter := (1350772306463667 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1713
  oldHi := (13525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_688]
}

noncomputable def cell_12548 : Cell := { cellDefaults with
  domain := ⟨(59213351955307263 / 80000000000000000 : ℚ), (5922223463687151 / 8000000000000000 : ℚ)⟩
  r := (49078193343279 / 100000000000000 : ℚ)
  w := (1681083483401 / 1250000000000 : ℚ)
  center := (118435586592178773 / 160000000000000000 : ℚ)
  supportValue := (168790131419497 / 625000000000000 : ℚ)
  supportSlope := (-8124481425843973 / 10000000000000000 : ℚ)
  oldCenter := (168790131419497 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1713
  oldHi := (13525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_688]
}

noncomputable def cell_12549 : Cell := { cellDefaults with
  domain := ⟨(5922223463687151 / 8000000000000000 : ℚ), (59231117318435757 / 80000000000000000 : ℚ)⟩
  r := (49078193343279 / 100000000000000 : ℚ)
  w := (1681083483401 / 1250000000000 : ℚ)
  center := (118453351955307267 / 160000000000000000 : ℚ)
  supportValue := (5399483662672907 / 20000000000000000 : ℚ)
  supportSlope := (-1625795883416273 / 2000000000000000 : ℚ)
  oldCenter := (5399483662672907 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1713
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (13525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_686, piece_687, piece_688]
}

theorem check_12500 : cell_12500.check = true := by
  decide +kernel

theorem check_12501 : cell_12501.check = true := by
  decide +kernel

theorem check_12502 : cell_12502.check = true := by
  decide +kernel

theorem check_12503 : cell_12503.check = true := by
  decide +kernel

theorem check_12504 : cell_12504.check = true := by
  decide +kernel

theorem check_12505 : cell_12505.check = true := by
  decide +kernel

theorem check_12506 : cell_12506.check = true := by
  decide +kernel

theorem check_12507 : cell_12507.check = true := by
  decide +kernel

theorem check_12508 : cell_12508.check = true := by
  decide +kernel

theorem check_12509 : cell_12509.check = true := by
  decide +kernel

theorem check_12510 : cell_12510.check = true := by
  decide +kernel

theorem check_12511 : cell_12511.check = true := by
  decide +kernel

theorem check_12512 : cell_12512.check = true := by
  decide +kernel

theorem check_12513 : cell_12513.check = true := by
  decide +kernel

theorem check_12514 : cell_12514.check = true := by
  decide +kernel

theorem check_12515 : cell_12515.check = true := by
  decide +kernel

theorem check_12516 : cell_12516.check = true := by
  decide +kernel

theorem check_12517 : cell_12517.check = true := by
  decide +kernel

theorem check_12518 : cell_12518.check = true := by
  decide +kernel

theorem check_12519 : cell_12519.check = true := by
  decide +kernel

theorem check_12520 : cell_12520.check = true := by
  decide +kernel

theorem check_12521 : cell_12521.check = true := by
  decide +kernel

theorem check_12522 : cell_12522.check = true := by
  decide +kernel

theorem check_12523 : cell_12523.check = true := by
  decide +kernel

theorem check_12524 : cell_12524.check = true := by
  decide +kernel

theorem check_12525 : cell_12525.check = true := by
  decide +kernel

theorem check_12526 : cell_12526.check = true := by
  decide +kernel

theorem check_12527 : cell_12527.check = true := by
  decide +kernel

theorem check_12528 : cell_12528.check = true := by
  decide +kernel

theorem check_12529 : cell_12529.check = true := by
  decide +kernel

theorem check_12530 : cell_12530.check = true := by
  decide +kernel

theorem check_12531 : cell_12531.check = true := by
  decide +kernel

theorem check_12532 : cell_12532.check = true := by
  decide +kernel

theorem check_12533 : cell_12533.check = true := by
  decide +kernel

theorem check_12534 : cell_12534.check = true := by
  decide +kernel

theorem check_12535 : cell_12535.check = true := by
  decide +kernel

theorem check_12536 : cell_12536.check = true := by
  decide +kernel

theorem check_12537 : cell_12537.check = true := by
  decide +kernel

theorem check_12538 : cell_12538.check = true := by
  decide +kernel

theorem check_12539 : cell_12539.check = true := by
  decide +kernel

theorem check_12540 : cell_12540.check = true := by
  decide +kernel

theorem check_12541 : cell_12541.check = true := by
  decide +kernel

theorem check_12542 : cell_12542.check = true := by
  decide +kernel

theorem check_12543 : cell_12543.check = true := by
  decide +kernel

theorem check_12544 : cell_12544.check = true := by
  decide +kernel

theorem check_12545 : cell_12545.check = true := by
  decide +kernel

theorem check_12546 : cell_12546.check = true := by
  decide +kernel

theorem check_12547 : cell_12547.check = true := by
  decide +kernel

theorem check_12548 : cell_12548.check = true := by
  decide +kernel

theorem check_12549 : cell_12549.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12500, cell_12501, cell_12502, cell_12503, cell_12504, cell_12505, cell_12506, cell_12507, cell_12508, cell_12509, cell_12510, cell_12511, cell_12512, cell_12513, cell_12514, cell_12515, cell_12516, cell_12517, cell_12518, cell_12519, cell_12520, cell_12521, cell_12522, cell_12523, cell_12524, cell_12525, cell_12526, cell_12527, cell_12528, cell_12529, cell_12530, cell_12531, cell_12532, cell_12533, cell_12534, cell_12535, cell_12536, cell_12537, cell_12538, cell_12539, cell_12540, cell_12541, cell_12542, cell_12543, cell_12544, cell_12545, cell_12546, cell_12547, cell_12548, cell_12549]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12500, check_12501, check_12502, check_12503, check_12504, check_12505, check_12506, check_12507, check_12508, check_12509, check_12510, check_12511, check_12512, check_12513, check_12514, check_12515, check_12516, check_12517, check_12518, check_12519, check_12520, check_12521, check_12522, check_12523, check_12524, check_12525, check_12526, check_12527, check_12528, check_12529, check_12530, check_12531, check_12532, check_12533, check_12534, check_12535, check_12536, check_12537, check_12538, check_12539, check_12540, check_12541, check_12542, check_12543, check_12544, check_12545, check_12546, check_12547, check_12548, check_12549, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0250

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0250
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0250
open AnalyticBounds.ExpressionCertificate

theorem linked_12500 : Linked cell_12500 pieces := by
  link_source cell_12500 with piece_1699 using piece_1699_mem, ⟨piece_692_mem, piece_693_mem⟩

theorem linked_12501 : Linked cell_12501 pieces := by
  link_source cell_12501 with piece_1700 using piece_1700_mem, piece_693_mem

theorem linked_12502 : Linked cell_12502 pieces := by
  link_source cell_12502 with piece_1701 using piece_1701_mem, piece_693_mem

theorem linked_12503 : Linked cell_12503 pieces := by
  link_source cell_12503 with piece_1701 using piece_1701_mem, ⟨piece_692_mem, piece_693_mem⟩

theorem linked_12504 : Linked cell_12504 pieces := by
  link_source cell_12504 with piece_1701 using piece_1701_mem, piece_692_mem

theorem linked_12505 : Linked cell_12505 pieces := by
  link_source cell_12505 with piece_1701 using piece_1701_mem, piece_692_mem

theorem linked_12506 : Linked cell_12506 pieces := by
  link_source cell_12506 with piece_1702 using piece_1702_mem, piece_692_mem

theorem linked_12507 : Linked cell_12507 pieces := by
  link_source cell_12507 with piece_1702 using piece_1702_mem, piece_692_mem

theorem linked_12508 : Linked cell_12508 pieces := by
  link_source cell_12508 with piece_1702 using piece_1702_mem, piece_692_mem

theorem linked_12509 : Linked cell_12509 pieces := by
  link_source cell_12509 with piece_1702 using piece_1702_mem, piece_692_mem

theorem linked_12510 : Linked cell_12510 pieces := by
  link_source cell_12510 with piece_1703 using piece_1703_mem, piece_692_mem

theorem linked_12511 : Linked cell_12511 pieces := by
  link_source cell_12511 with piece_1703 using piece_1703_mem, piece_692_mem

theorem linked_12512 : Linked cell_12512 pieces := by
  link_source cell_12512 with piece_1703 using piece_1703_mem, ⟨piece_691_mem, piece_692_mem⟩

theorem linked_12513 : Linked cell_12513 pieces := by
  link_source cell_12513 with piece_1703 using piece_1703_mem, piece_691_mem

theorem linked_12514 : Linked cell_12514 pieces := by
  link_source cell_12514 with piece_1704 using piece_1704_mem, ⟨piece_691_mem, piece_692_mem⟩

theorem linked_12515 : Linked cell_12515 pieces := by
  link_source cell_12515 with piece_1704 using piece_1704_mem, piece_691_mem

theorem linked_12516 : Linked cell_12516 pieces := by
  link_source cell_12516 with piece_1704 using piece_1704_mem, piece_691_mem

theorem linked_12517 : Linked cell_12517 pieces := by
  link_source cell_12517 with piece_1704 using piece_1704_mem, piece_691_mem

theorem linked_12518 : Linked cell_12518 pieces := by
  link_source cell_12518 with piece_1705 using piece_1705_mem, piece_691_mem

theorem linked_12519 : Linked cell_12519 pieces := by
  link_source cell_12519 with piece_1705 using piece_1705_mem, piece_691_mem

theorem linked_12520 : Linked cell_12520 pieces := by
  link_source cell_12520 with piece_1705 using piece_1705_mem, ⟨piece_690_mem, piece_691_mem⟩

theorem linked_12521 : Linked cell_12521 pieces := by
  link_source cell_12521 with piece_1705 using piece_1705_mem, piece_690_mem

theorem linked_12522 : Linked cell_12522 pieces := by
  link_source cell_12522 with piece_1706 using piece_1706_mem, ⟨piece_690_mem, piece_691_mem⟩

theorem linked_12523 : Linked cell_12523 pieces := by
  link_source cell_12523 with piece_1706 using piece_1706_mem, piece_690_mem

theorem linked_12524 : Linked cell_12524 pieces := by
  link_source cell_12524 with piece_1706 using piece_1706_mem, piece_690_mem

theorem linked_12525 : Linked cell_12525 pieces := by
  link_source cell_12525 with piece_1706 using piece_1706_mem, piece_690_mem

theorem linked_12526 : Linked cell_12526 pieces := by
  link_source cell_12526 with piece_1707 using piece_1707_mem, piece_690_mem

theorem linked_12527 : Linked cell_12527 pieces := by
  link_source cell_12527 with piece_1707 using piece_1707_mem, piece_690_mem

theorem linked_12528 : Linked cell_12528 pieces := by
  link_source cell_12528 with piece_1707 using piece_1707_mem, piece_690_mem

theorem linked_12529 : Linked cell_12529 pieces := by
  link_source cell_12529 with piece_1707 using piece_1707_mem, ⟨piece_689_mem, piece_690_mem⟩

theorem linked_12530 : Linked cell_12530 pieces := by
  link_source cell_12530 with piece_1708 using piece_1708_mem, piece_690_mem

theorem linked_12531 : Linked cell_12531 pieces := by
  link_source cell_12531 with piece_1708 using piece_1708_mem, ⟨piece_689_mem, piece_690_mem⟩

theorem linked_12532 : Linked cell_12532 pieces := by
  link_source cell_12532 with piece_1708 using piece_1708_mem, piece_689_mem

theorem linked_12533 : Linked cell_12533 pieces := by
  link_source cell_12533 with piece_1708 using piece_1708_mem, piece_689_mem

theorem linked_12534 : Linked cell_12534 pieces := by
  link_source cell_12534 with piece_1709 using piece_1709_mem, piece_689_mem

theorem linked_12535 : Linked cell_12535 pieces := by
  link_source cell_12535 with piece_1709 using piece_1709_mem, piece_689_mem

theorem linked_12536 : Linked cell_12536 pieces := by
  link_source cell_12536 with piece_1709 using piece_1709_mem, piece_689_mem

theorem linked_12537 : Linked cell_12537 pieces := by
  link_source cell_12537 with piece_1709 using piece_1709_mem, ⟨piece_688_mem, piece_689_mem⟩

theorem linked_12538 : Linked cell_12538 pieces := by
  link_source cell_12538 with piece_1710 using piece_1710_mem, piece_689_mem

theorem linked_12539 : Linked cell_12539 pieces := by
  link_source cell_12539 with piece_1710 using piece_1710_mem, ⟨piece_688_mem, piece_689_mem⟩

theorem linked_12540 : Linked cell_12540 pieces := by
  link_source cell_12540 with piece_1710 using piece_1710_mem, piece_688_mem

theorem linked_12541 : Linked cell_12541 pieces := by
  link_source cell_12541 with piece_1710 using piece_1710_mem, piece_688_mem

theorem linked_12542 : Linked cell_12542 pieces := by
  link_source cell_12542 with piece_1711 using piece_1711_mem, piece_688_mem

theorem linked_12543 : Linked cell_12543 pieces := by
  link_source cell_12543 with piece_1711 using piece_1711_mem, piece_688_mem

theorem linked_12544 : Linked cell_12544 pieces := by
  link_source cell_12544 with piece_1711 using piece_1711_mem, piece_688_mem

theorem linked_12545 : Linked cell_12545 pieces := by
  link_source cell_12545 with piece_1711 using piece_1711_mem, piece_688_mem

theorem linked_12546 : Linked cell_12546 pieces := by
  link_source cell_12546 with piece_1712 using piece_1712_mem, piece_688_mem

theorem linked_12547 : Linked cell_12547 pieces := by
  link_source cell_12547 with piece_1713 using piece_1713_mem, piece_688_mem

theorem linked_12548 : Linked cell_12548 pieces := by
  link_source cell_12548 with piece_1713 using piece_1713_mem, piece_688_mem

theorem linked_12549 : Linked cell_12549 pieces := by
  link_source cell_12549 with piece_1713 using piece_1713_mem, ⟨piece_686_mem, ⟨piece_687_mem, piece_688_mem⟩⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0250.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0250.cells,List.forall_mem_cons]
  exact ⟨linked_12500, linked_12501, linked_12502, linked_12503, linked_12504, linked_12505, linked_12506, linked_12507, linked_12508, linked_12509, linked_12510, linked_12511, linked_12512, linked_12513, linked_12514, linked_12515, linked_12516, linked_12517, linked_12518, linked_12519, linked_12520, linked_12521, linked_12522, linked_12523, linked_12524, linked_12525, linked_12526, linked_12527, linked_12528, linked_12529, linked_12530, linked_12531, linked_12532, linked_12533, linked_12534, linked_12535, linked_12536, linked_12537, linked_12538, linked_12539, linked_12540, linked_12541, linked_12542, linked_12543, linked_12544, linked_12545, linked_12546, linked_12547, linked_12548, linked_12549, by simp⟩

theorem covered : covers (293750000000000011 / 400000000000000000 : ℚ) (59231117318435757 / 80000000000000000 : ℚ)
    (SourceCertificates.Chunk0250.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0250
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0251
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(59231117318435757 / 80000000000000000 : ℚ), (14810000000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (24429890815599 / 50000000000000 : ℚ)
  w := (13443181337059 / 10000000000000 : ℚ)
  center := (118471117318435761 / 160000000000000000 : ℚ)
  supportValue := (26988374160235407 / 100000000000000000 : ℚ)
  supportSlope := (-2031148703299483 / 2500000000000000 : ℚ)
  oldCenter := (26988374160235407 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1714
  oldLo := (13375000000000001 / 50000000000000000 : ℚ)
  oldHi := (13400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_682]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12550 : Cell := { cellDefaults with
  r := (49078193343279 / 100000000000000 : ℚ)
  w := (1681083483401 / 1250000000000 : ℚ)
  newCoefficients := coefficients_1713
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12551 : Cell := { cellDefaults with
  domain := ⟨(14810000000000001 / 20000000000000000 : ℚ), (148125000000000007 / 200000000000000000 : ℚ)⟩
  r := (49058216828461 / 100000000000000 : ℚ)
  w := (3362026739009 / 2500000000000 : ℚ)
  center := (296225000000000017 / 400000000000000000 : ℚ)
  supportValue := (674937260728059 / 2500000000000000 : ℚ)
  supportSlope := (-4062669539757689 / 5000000000000000 : ℚ)
  oldCenter := (674937260728059 / 2500000000000000 : ℚ)
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (13525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_686, piece_687, piece_688]
}

noncomputable def cell_12552 : Cell := { cellDefaults with
  domain := ⟨(148125000000000007 / 200000000000000000 : ℚ), (37037500000000001 / 50000000000000000 : ℚ)⟩
  r := (49058216828461 / 100000000000000 : ℚ)
  w := (3362026739009 / 2500000000000 : ℚ)
  center := (296275000000000011 / 400000000000000000 : ℚ)
  supportValue := (26987315418905833 / 100000000000000000 : ℚ)
  supportSlope := (-8120602637023829 / 10000000000000000 : ℚ)
  oldCenter := (26987315418905833 / 100000000000000000 : ℚ)
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12553 : Cell := { cellDefaults with
  domain := ⟨(37037500000000001 / 50000000000000000 : ℚ), (148175000000000001 / 200000000000000000 : ℚ)⟩
  r := (49058216828461 / 100000000000000 : ℚ)
  w := (3362026739009 / 2500000000000 : ℚ)
  center := (59265000000000001 / 80000000000000000 : ℚ)
  supportValue := (67442925039353 / 250000000000000 : ℚ)
  supportSlope := (-4056023337573531 / 5000000000000000 : ℚ)
  oldCenter := (67442925039353 / 250000000000000 : ℚ)
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12554 : Cell := { cellDefaults with
  domain := ⟨(148175000000000001 / 200000000000000000 : ℚ), (74099999999999999 / 100000000000000000 : ℚ)⟩
  r := (49058216828461 / 100000000000000 : ℚ)
  w := (3362026739009 / 2500000000000 : ℚ)
  center := (296374999999999999 / 400000000000000000 : ℚ)
  supportValue := (6741758821193261 / 25000000000000000 : ℚ)
  supportSlope := (-2025881767049563 / 2500000000000000 : ℚ)
  oldCenter := (6741758821193261 / 25000000000000000 : ℚ)
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12555 : Cell := { cellDefaults with
  domain := ⟨(74099999999999999 / 100000000000000000 : ℚ), (148225000000000001 / 200000000000000000 : ℚ)⟩
  r := (1532445883889 / 3125000000000 : ℚ)
  w := (13447565322001 / 10000000000000 : ℚ)
  center := (296424999999999999 / 400000000000000000 : ℚ)
  supportValue := (674387699376947 / 2500000000000000 : ℚ)
  supportSlope := (-4053780126004949 / 5000000000000000 : ℚ)
  oldCenter := (674387699376947 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1715
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12556 : Cell := { cellDefaults with
  domain := ⟨(148225000000000001 / 200000000000000000 : ℚ), (37062500000000001 / 50000000000000000 : ℚ)⟩
  r := (1532445883889 / 3125000000000 : ℚ)
  w := (13447565322001 / 10000000000000 : ℚ)
  center := (59295000000000001 / 80000000000000000 : ℚ)
  supportValue := (2696537884433651 / 10000000000000000 : ℚ)
  supportSlope := (-809905311114259 / 1000000000000000 : ℚ)
  oldCenter := (2696537884433651 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1715
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12557 : Cell := { cellDefaults with
  domain := ⟨(37062500000000001 / 50000000000000000 : ℚ), (148275000000000007 / 200000000000000000 : ℚ)⟩
  r := (1532445883889 / 3125000000000 : ℚ)
  w := (13447565322001 / 10000000000000 : ℚ)
  center := (296525000000000011 / 400000000000000000 : ℚ)
  supportValue := (269552603249639 / 1000000000000000 : ℚ)
  supportSlope := (-8090582008239007 / 10000000000000000 : ℚ)
  oldCenter := (269552603249639 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1715
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12558 : Cell := { cellDefaults with
  domain := ⟨(148275000000000007 / 200000000000000000 : ℚ), (14830000000000001 / 20000000000000000 : ℚ)⟩
  r := (1532445883889 / 3125000000000 : ℚ)
  w := (13447565322001 / 10000000000000 : ℚ)
  center := (296575000000000017 / 400000000000000000 : ℚ)
  supportValue := (107780648460027 / 400000000000000 : ℚ)
  supportSlope := (-809699985383619 / 1000000000000000 : ℚ)
  oldCenter := (107780648460027 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1715
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_685, piece_686]
}

noncomputable def cell_12559 : Cell := { cellDefaults with
  domain := ⟨(14830000000000001 / 20000000000000000 : ℚ), (148325000000000007 / 200000000000000000 : ℚ)⟩
  r := (980366842191 / 2000000000000 : ℚ)
  w := (13447033510227 / 10000000000000 : ℚ)
  center := (296625000000000017 / 400000000000000000 : ℚ)
  supportValue := (26953606816640047 / 100000000000000000 : ℚ)
  supportSlope := (-8088323834335301 / 10000000000000000 : ℚ)
  oldCenter := (26953606816640047 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1716
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_685, piece_686]
}

noncomputable def cell_12560 : Cell := { cellDefaults with
  domain := ⟨(148325000000000007 / 200000000000000000 : ℚ), (37087500000000001 / 50000000000000000 : ℚ)⟩
  r := (980366842191 / 2000000000000 : ℚ)
  w := (13447033510227 / 10000000000000 : ℚ)
  center := (296675000000000011 / 400000000000000000 : ℚ)
  supportValue := (5388694667859929 / 20000000000000000 : ℚ)
  supportSlope := (-8092807628471281 / 10000000000000000 : ℚ)
  oldCenter := (5388694667859929 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1716
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12561 : Cell := { cellDefaults with
  domain := ⟨(37087500000000001 / 50000000000000000 : ℚ), (148375000000000001 / 200000000000000000 : ℚ)⟩
  r := (980366842191 / 2000000000000 : ℚ)
  w := (13447033510227 / 10000000000000 : ℚ)
  center := (59345000000000001 / 80000000000000000 : ℚ)
  supportValue := (26933362656943927 / 100000000000000000 : ℚ)
  supportSlope := (-4042144183316539 / 5000000000000000 : ℚ)
  oldCenter := (26933362656943927 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1716
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12562 : Cell := { cellDefaults with
  domain := ⟨(148375000000000001 / 200000000000000000 : ℚ), (74199999999999999 / 100000000000000000 : ℚ)⟩
  r := (980366842191 / 2000000000000 : ℚ)
  w := (13447033510227 / 10000000000000 : ℚ)
  center := (296774999999999999 / 400000000000000000 : ℚ)
  supportValue := (2692326260100813 / 10000000000000000 : ℚ)
  supportSlope := (-8075805302444197 / 10000000000000000 : ℚ)
  oldCenter := (2692326260100813 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1716
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12563 : Cell := { cellDefaults with
  domain := ⟨(74199999999999999 / 100000000000000000 : ℚ), (148425000000000001 / 200000000000000000 : ℚ)⟩
  r := (9799687774353 / 20000000000000 : ℚ)
  w := (6723255001409 / 5000000000000 : ℚ)
  center := (296824999999999999 / 400000000000000000 : ℚ)
  supportValue := (2693167870501987 / 10000000000000000 : ℚ)
  supportSlope := (-4039900883871587 / 5000000000000000 : ℚ)
  oldCenter := (2693167870501987 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1717
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12564 : Cell := { cellDefaults with
  domain := ⟨(148425000000000001 / 200000000000000000 : ℚ), (37112500000000001 / 50000000000000000 : ℚ)⟩
  r := (9799687774353 / 20000000000000 : ℚ)
  w := (6723255001409 / 5000000000000 : ℚ)
  center := (59375000000000001 / 80000000000000000 : ℚ)
  supportValue := (1346079212475559 / 5000000000000000 : ℚ)
  supportSlope := (-1614266240108881 / 2000000000000000 : ℚ)
  oldCenter := (1346079212475559 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1717
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12565 : Cell := { cellDefaults with
  domain := ⟨(37112500000000001 / 50000000000000000 : ℚ), (148475000000000007 / 200000000000000000 : ℚ)⟩
  r := (9799687774353 / 20000000000000 : ℚ)
  w := (6723255001409 / 5000000000000 : ℚ)
  center := (296925000000000011 / 400000000000000000 : ℚ)
  supportValue := (2691150035975203 / 10000000000000000 : ℚ)
  supportSlope := (-2015724128745269 / 2500000000000000 : ℚ)
  oldCenter := (2691150035975203 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1717
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12566 : Cell := { cellDefaults with
  domain := ⟨(148475000000000007 / 200000000000000000 : ℚ), (14850000000000001 / 20000000000000000 : ℚ)⟩
  r := (9799687774353 / 20000000000000 : ℚ)
  w := (6723255001409 / 5000000000000 : ℚ)
  center := (296975000000000017 / 400000000000000000 : ℚ)
  supportValue := (5380289164405937 / 20000000000000000 : ℚ)
  supportSlope := (-4029959846762537 / 5000000000000000 : ℚ)
  oldCenter := (5380289164405937 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1717
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684, piece_685]
}

noncomputable def cell_12567 : Cell := { cellDefaults with
  domain := ⟨(14850000000000001 / 20000000000000000 : ℚ), (148525000000000007 / 200000000000000000 : ℚ)⟩
  r := (2448928183307 / 5000000000000 : ℚ)
  w := (6723003408957 / 5000000000000 : ℚ)
  center := (297025000000000017 / 400000000000000000 : ℚ)
  supportValue := (2690978450868753 / 10000000000000000 : ℚ)
  supportSlope := (-8058407250653843 / 10000000000000000 : ℚ)
  oldCenter := (2690978450868753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1718
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12568 : Cell := { cellDefaults with
  domain := ⟨(148525000000000007 / 200000000000000000 : ℚ), (37137500000000001 / 50000000000000000 : ℚ)⟩
  r := (2448928183307 / 5000000000000 : ℚ)
  w := (6723003408957 / 5000000000000 : ℚ)
  center := (297075000000000011 / 400000000000000000 : ℚ)
  supportValue := (26899735026398297 / 100000000000000000 : ℚ)
  supportSlope := (-2014499746425777 / 2500000000000000 : ℚ)
  oldCenter := (26899735026398297 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1718
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684, piece_685]
}

noncomputable def cell_12569 : Cell := { cellDefaults with
  domain := ⟨(37137500000000001 / 50000000000000000 : ℚ), (148575000000000001 / 200000000000000000 : ℚ)⟩
  r := (2448928183307 / 5000000000000 : ℚ)
  w := (6723003408957 / 5000000000000 : ℚ)
  center := (59425000000000001 / 80000000000000000 : ℚ)
  supportValue := (13444820043138797 / 50000000000000000 : ℚ)
  supportSlope := (-4028321386320627 / 5000000000000000 : ℚ)
  oldCenter := (13444820043138797 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1718
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12570 : Cell := { cellDefaults with
  domain := ⟨(148575000000000001 / 200000000000000000 : ℚ), (74299999999999999 / 100000000000000000 : ℚ)⟩
  r := (2448928183307 / 5000000000000 : ℚ)
  w := (6723003408957 / 5000000000000 : ℚ)
  center := (297174999999999999 / 400000000000000000 : ℚ)
  supportValue := (13439787286167823 / 50000000000000000 : ℚ)
  supportSlope := (-8048183707770461 / 10000000000000000 : ℚ)
  oldCenter := (13439787286167823 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1718
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12571 : Cell := { cellDefaults with
  domain := ⟨(74299999999999999 / 100000000000000000 : ℚ), (148625000000000001 / 200000000000000000 : ℚ)⟩
  r := (48958703786403 / 100000000000000 : ℚ)
  w := (6722750163279 / 5000000000000 : ℚ)
  center := (297224999999999999 / 400000000000000000 : ℚ)
  supportValue := (26887937672580803 / 100000000000000000 : ℚ)
  supportSlope := (-8052156337629157 / 10000000000000000 : ℚ)
  oldCenter := (26887937672580803 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1719
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12572 : Cell := { cellDefaults with
  domain := ⟨(148625000000000001 / 200000000000000000 : ℚ), (37162500000000001 / 50000000000000000 : ℚ)⟩
  r := (48958703786403 / 100000000000000 : ℚ)
  w := (6722750163279 / 5000000000000 : ℚ)
  center := (59455000000000001 / 80000000000000000 : ℚ)
  supportValue := (5375575551772317 / 20000000000000000 : ℚ)
  supportSlope := (-4021854884470117 / 5000000000000000 : ℚ)
  oldCenter := (5375575551772317 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1719
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12573 : Cell := { cellDefaults with
  domain := ⟨(37162500000000001 / 50000000000000000 : ℚ), (148675000000000007 / 200000000000000000 : ℚ)⟩
  r := (48958703786403 / 100000000000000 : ℚ)
  w := (6722750163279 / 5000000000000 : ℚ)
  center := (297325000000000011 / 400000000000000000 : ℚ)
  supportValue := (2686782838093161 / 10000000000000000 : ℚ)
  supportSlope := (-8035299021392919 / 10000000000000000 : ℚ)
  oldCenter := (2686782838093161 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1719
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12574 : Cell := { cellDefaults with
  domain := ⟨(148675000000000007 / 200000000000000000 : ℚ), (14870000000000001 / 20000000000000000 : ℚ)⟩
  r := (48958703786403 / 100000000000000 : ℚ)
  w := (6722750163279 / 5000000000000 : ℚ)
  center := (297375000000000017 / 400000000000000000 : ℚ)
  supportValue := (26857789494160367 / 100000000000000000 : ℚ)
  supportSlope := (-8026923862018013 / 10000000000000000 : ℚ)
  oldCenter := (26857789494160367 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1719
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12575 : Cell := { cellDefaults with
  domain := ⟨(14870000000000001 / 20000000000000000 : ℚ), (148725000000000007 / 200000000000000000 : ℚ)⟩
  r := (9787775246159 / 20000000000000 : ℚ)
  w := (13445020705193 / 10000000000000 : ℚ)
  center := (297425000000000017 / 400000000000000000 : ℚ)
  supportValue := (268660800266057 / 1000000000000000 : ℚ)
  supportSlope := (-8030799761523507 / 10000000000000000 : ℚ)
  oldCenter := (268660800266057 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1720
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12576 : Cell := { cellDefaults with
  domain := ⟨(148725000000000007 / 200000000000000000 : ℚ), (37187500000000001 / 50000000000000000 : ℚ)⟩
  r := (9787775246159 / 20000000000000 : ℚ)
  w := (13445020705193 / 10000000000000 : ℚ)
  center := (297475000000000011 / 400000000000000000 : ℚ)
  supportValue := (26856046756048063 / 100000000000000000 : ℚ)
  supportSlope := (-200560929067863 / 250000000000000 : ℚ)
  oldCenter := (26856046756048063 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1720
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12577 : Cell := { cellDefaults with
  domain := ⟨(37187500000000001 / 50000000000000000 : ℚ), (148775000000000001 / 200000000000000000 : ℚ)⟩
  r := (9787775246159 / 20000000000000 : ℚ)
  w := (13445020705193 / 10000000000000 : ℚ)
  center := (59505000000000001 / 80000000000000000 : ℚ)
  supportValue := (2684603523014871 / 10000000000000000 : ℚ)
  supportSlope := (-501723789191393 / 625000000000000 : ℚ)
  oldCenter := (2684603523014871 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1720
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683, piece_684]
}

noncomputable def cell_12578 : Cell := { cellDefaults with
  domain := ⟨(148775000000000001 / 200000000000000000 : ℚ), (74399999999999999 / 100000000000000000 : ℚ)⟩
  r := (9787775246159 / 20000000000000 : ℚ)
  w := (13445020705193 / 10000000000000 : ℚ)
  center := (297574999999999999 / 400000000000000000 : ℚ)
  supportValue := (1677249082215369 / 6250000000000000 : ℚ)
  supportSlope := (-2005168801087161 / 2500000000000000 : ℚ)
  oldCenter := (1677249082215369 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1720
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12579 : Cell := { cellDefaults with
  domain := ⟨(74399999999999999 / 100000000000000000 : ℚ), (148825000000000001 / 200000000000000000 : ℚ)⟩
  r := (12229766000043 / 25000000000000 : ℚ)
  w := (13444538423909 / 10000000000000 : ℚ)
  center := (297624999999999999 / 400000000000000000 : ℚ)
  supportValue := (26844280406529897 / 100000000000000000 : ℚ)
  supportSlope := (-8024624854331567 / 10000000000000000 : ℚ)
  oldCenter := (26844280406529897 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1721
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12580 : Cell := { cellDefaults with
  domain := ⟨(148825000000000001 / 200000000000000000 : ℚ), (37212500000000001 / 50000000000000000 : ℚ)⟩
  r := (12229766000043 / 25000000000000 : ℚ)
  w := (13444538423909 / 10000000000000 : ℚ)
  center := (59535000000000001 / 80000000000000000 : ℚ)
  supportValue := (670856372531717 / 2500000000000000 : ℚ)
  supportSlope := (-2004046937209329 / 2500000000000000 : ℚ)
  oldCenter := (670856372531717 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1721
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12581 : Cell := { cellDefaults with
  domain := ⟨(37212500000000001 / 50000000000000000 : ℚ), (148875000000000007 / 200000000000000000 : ℚ)⟩
  r := (12229766000043 / 25000000000000 : ℚ)
  w := (13444538423909 / 10000000000000 : ℚ)
  center := (297725000000000011 / 400000000000000000 : ℚ)
  supportValue := (1341211995996781 / 5000000000000000 : ℚ)
  supportSlope := (-4003893257790789 / 5000000000000000 : ℚ)
  oldCenter := (1341211995996781 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1721
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12582 : Cell := { cellDefaults with
  domain := ⟨(148875000000000007 / 200000000000000000 : ℚ), (14890000000000001 / 20000000000000000 : ℚ)⟩
  r := (12229766000043 / 25000000000000 : ℚ)
  w := (13444538423909 / 10000000000000 : ℚ)
  center := (297775000000000017 / 400000000000000000 : ℚ)
  supportValue := (268142354178369 / 1000000000000000 : ℚ)
  supportSlope := (-7999420920751383 / 10000000000000000 : ℚ)
  oldCenter := (268142354178369 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1721
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12583 : Cell := { cellDefaults with
  domain := ⟨(14890000000000001 / 20000000000000000 : ℚ), (59570000000000003 / 80000000000000000 : ℚ)⟩
  r := (48899281750841 / 100000000000000 : ℚ)
  w := (13444078135261 / 10000000000000 : ℚ)
  center := (119130000000000007 / 160000000000000000 : ℚ)
  supportValue := (26822467796938737 / 100000000000000000 : ℚ)
  supportSlope := (-4001640486257907 / 5000000000000000 : ℚ)
  oldCenter := (26822467796938737 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1722
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12584 : Cell := { cellDefaults with
  domain := ⟨(59570000000000003 / 80000000000000000 : ℚ), (29790000000000001 / 40000000000000000 : ℚ)⟩
  r := (48899281750841 / 100000000000000 : ℚ)
  w := (13444078135261 / 10000000000000 : ℚ)
  center := (23830000000000001 / 32000000000000000 : ℚ)
  supportValue := (670311722971437 / 2500000000000000 : ℚ)
  supportSlope := (-7994928018267533 / 10000000000000000 : ℚ)
  oldCenter := (670311722971437 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1722
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12585 : Cell := { cellDefaults with
  domain := ⟨(29790000000000001 / 40000000000000000 : ℚ), (59590000000000001 / 80000000000000000 : ℚ)⟩
  r := (48899281750841 / 100000000000000 : ℚ)
  w := (13444078135261 / 10000000000000 : ℚ)
  center := (119170000000000003 / 160000000000000000 : ℚ)
  supportValue := (26802499221588283 / 100000000000000000 : ℚ)
  supportSlope := (-249699618313251 / 312500000000000 : ℚ)
  oldCenter := (26802499221588283 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1722
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_682, piece_683]
}

noncomputable def cell_12586 : Cell := { cellDefaults with
  domain := ⟨(59590000000000001 / 80000000000000000 : ℚ), (149 / 200 : ℚ)⟩
  r := (48899281750841 / 100000000000000 : ℚ)
  w := (13444078135261 / 10000000000000 : ℚ)
  center := (119190000000000001 / 160000000000000000 : ℚ)
  supportValue := (2679248832430829 / 10000000000000000 : ℚ)
  supportSlope := (-7993226910648321 / 10000000000000000 : ℚ)
  oldCenter := (2679248832430829 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1722
  oldPieces := [piece_682]
}

noncomputable def cell_12587 : Cell := { cellDefaults with
  domain := ⟨(149 / 200 : ℚ), (59610000000000001 / 80000000000000000 : ℚ)⟩
  r := (12219879877783 / 25000000000000 : ℚ)
  w := (13443623236029 / 10000000000000 : ℚ)
  center := (119210000000000001 / 160000000000000000 : ℚ)
  supportValue := (2680072589934381 / 10000000000000000 : ℚ)
  supportSlope := (-7988554750059419 / 10000000000000000 : ℚ)
  oldCenter := (2680072589934381 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1723
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_682, piece_683]
}

noncomputable def cell_12588 : Cell := { cellDefaults with
  domain := ⟨(59610000000000001 / 80000000000000000 : ℚ), (29810000000000001 / 40000000000000000 : ℚ)⟩
  r := (12219879877783 / 25000000000000 : ℚ)
  w := (13443623236029 / 10000000000000 : ℚ)
  center := (119230000000000003 / 160000000000000000 : ℚ)
  supportValue := (2679071730304597 / 10000000000000000 : ℚ)
  supportSlope := (-7988728060483209 / 10000000000000000 : ℚ)
  oldCenter := (2679071730304597 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1723
  oldPieces := [piece_682]
}

noncomputable def cell_12589 : Cell := { cellDefaults with
  domain := ⟨(29810000000000001 / 40000000000000000 : ℚ), (59630000000000003 / 80000000000000000 : ℚ)⟩
  r := (12219879877783 / 25000000000000 : ℚ)
  w := (13443623236029 / 10000000000000 : ℚ)
  center := (23850000000000001 / 32000000000000000 : ℚ)
  supportValue := (1071229464559617 / 4000000000000000 : ℚ)
  supportSlope := (-159607570150639 / 200000000000000 : ℚ)
  oldCenter := (1071229464559617 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1723
  oldPieces := [piece_682]
}

noncomputable def cell_12590 : Cell := { cellDefaults with
  domain := ⟨(59630000000000003 / 80000000000000000 : ℚ), (14910000000000001 / 20000000000000000 : ℚ)⟩
  r := (12219879877783 / 25000000000000 : ℚ)
  w := (13443623236029 / 10000000000000 : ℚ)
  center := (119270000000000007 / 160000000000000000 : ℚ)
  supportValue := (26770766339740537 / 100000000000000000 : ℚ)
  supportSlope := (-7972064318798913 / 10000000000000000 : ℚ)
  oldCenter := (26770766339740537 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1723
  oldPieces := [piece_682]
}

noncomputable def cell_12591 : Cell := { cellDefaults with
  domain := ⟨(14910000000000001 / 20000000000000000 : ℚ), (7455865921787709 / 10000000000000000 : ℚ)⟩
  center := (29821731843575419 / 40000000000000000 : ℚ)
  supportValue := (2678047481139333 / 10000000000000000 : ℚ)
  supportSlope := (-3988576725479141 / 5000000000000000 : ℚ)
  oldCenter := (2678047481139333 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1724
  oldPieces := [piece_682]
}

noncomputable def cell_12592 : Cell := { cellDefaults with
  domain := ⟨(7455865921787709 / 10000000000000000 : ℚ), (29827597765363127 / 40000000000000000 : ℚ)⟩
  center := (59651061452513963 / 80000000000000000 : ℚ)
  supportValue := (1338645087116423 / 5000000000000000 : ℚ)
  supportSlope := (-7970839341061907 / 10000000000000000 : ℚ)
  oldCenter := (1338645087116423 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1725
  oldPieces := [piece_682]
}

noncomputable def cell_12593 : Cell := { cellDefaults with
  domain := ⟨(29827597765363127 / 40000000000000000 : ℚ), (14915865921787709 / 20000000000000000 : ℚ)⟩
  center := (11931865921787709 / 16000000000000000 : ℚ)
  supportValue := (26764667263809483 / 100000000000000000 : ℚ)
  supportSlope := (-3981995285108883 / 5000000000000000 : ℚ)
  oldCenter := (26764667263809483 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1725
  oldPieces := [piece_682]
}

noncomputable def cell_12594 : Cell := { cellDefaults with
  domain := ⟨(14915865921787709 / 20000000000000000 : ℚ), (29835865921787709 / 40000000000000000 : ℚ)⟩
  center := (59667597765363127 / 80000000000000000 : ℚ)
  supportValue := (41806937267603 / 156250000000000 : ℚ)
  supportSlope := (-1989291423962939 / 2500000000000000 : ℚ)
  oldCenter := (41806937267603 / 156250000000000 : ℚ)
  newCoefficients := coefficients_1725
  oldPieces := [piece_682]
}

noncomputable def cell_12595 : Cell := { cellDefaults with
  domain := ⟨(29835865921787709 / 40000000000000000 : ℚ), (373 / 500 : ℚ)⟩
  center := (59675865921787709 / 80000000000000000 : ℚ)
  supportValue := (26748234859848113 / 100000000000000000 : ℚ)
  supportSlope := (-79610110590089 / 100000000000000 : ℚ)
  oldCenter := (26748234859848113 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1725
  oldLo := (13350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_681, piece_682]
}

noncomputable def cell_12596 : Cell := { cellDefaults with
  domain := ⟨(373 / 500 : ℚ), (59690000000000001 / 80000000000000000 : ℚ)⟩
  r := (9768013888751 / 20000000000000 : ℚ)
  w := (6721377863573 / 5000000000000 : ℚ)
  center := (119370000000000001 / 160000000000000000 : ℚ)
  supportValue := (26757207204644823 / 100000000000000000 : ℚ)
  supportSlope := (-1590961857127323 / 2000000000000000 : ℚ)
  oldCenter := (26757207204644823 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1726
  oldPieces := [piece_682]
}

noncomputable def cell_12597 : Cell := { cellDefaults with
  domain := ⟨(59690000000000001 / 80000000000000000 : ℚ), (29850000000000001 / 40000000000000000 : ℚ)⟩
  r := (9768013888751 / 20000000000000 : ℚ)
  w := (6721377863573 / 5000000000000 : ℚ)
  center := (119390000000000003 / 160000000000000000 : ℚ)
  supportValue := (26747282436329267 / 100000000000000000 : ℚ)
  supportSlope := (-7958083419880339 / 10000000000000000 : ℚ)
  oldCenter := (26747282436329267 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1726
  oldLo := (13350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_681, piece_682]
}

noncomputable def cell_12598 : Cell := { cellDefaults with
  domain := ⟨(29850000000000001 / 40000000000000000 : ℚ), (59710000000000003 / 80000000000000000 : ℚ)⟩
  r := (9768013888751 / 20000000000000 : ℚ)
  w := (6721377863573 / 5000000000000 : ℚ)
  center := (23882000000000001 / 32000000000000000 : ℚ)
  supportValue := (334216464306803 / 1250000000000000 : ℚ)
  supportSlope := (-124267047574693 / 156250000000000 : ℚ)
  oldCenter := (334216464306803 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1726
  oldLo := (13350000000000001 / 50000000000000000 : ℚ)
  oldHi := (13375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_681]
}

noncomputable def cell_12599 : Cell := { cellDefaults with
  domain := ⟨(59710000000000003 / 80000000000000000 : ℚ), (14930000000000001 / 20000000000000000 : ℚ)⟩
  r := (9768013888751 / 20000000000000 : ℚ)
  w := (6721377863573 / 5000000000000 : ℚ)
  center := (119430000000000007 / 160000000000000000 : ℚ)
  supportValue := (1336369048431323 / 5000000000000000 : ℚ)
  supportSlope := (-7944794463109789 / 10000000000000000 : ℚ)
  oldCenter := (1336369048431323 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1726
  oldLo := (13350000000000001 / 50000000000000000 : ℚ)
  oldHi := (13375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_681]
}

theorem check_12550 : cell_12550.check = true := by
  decide +kernel

theorem check_12551 : cell_12551.check = true := by
  decide +kernel

theorem check_12552 : cell_12552.check = true := by
  decide +kernel

theorem check_12553 : cell_12553.check = true := by
  decide +kernel

theorem check_12554 : cell_12554.check = true := by
  decide +kernel

theorem check_12555 : cell_12555.check = true := by
  decide +kernel

theorem check_12556 : cell_12556.check = true := by
  decide +kernel

theorem check_12557 : cell_12557.check = true := by
  decide +kernel

theorem check_12558 : cell_12558.check = true := by
  decide +kernel

theorem check_12559 : cell_12559.check = true := by
  decide +kernel

theorem check_12560 : cell_12560.check = true := by
  decide +kernel

theorem check_12561 : cell_12561.check = true := by
  decide +kernel

theorem check_12562 : cell_12562.check = true := by
  decide +kernel

theorem check_12563 : cell_12563.check = true := by
  decide +kernel

theorem check_12564 : cell_12564.check = true := by
  decide +kernel

theorem check_12565 : cell_12565.check = true := by
  decide +kernel

theorem check_12566 : cell_12566.check = true := by
  decide +kernel

theorem check_12567 : cell_12567.check = true := by
  decide +kernel

theorem check_12568 : cell_12568.check = true := by
  decide +kernel

theorem check_12569 : cell_12569.check = true := by
  decide +kernel

theorem check_12570 : cell_12570.check = true := by
  decide +kernel

theorem check_12571 : cell_12571.check = true := by
  decide +kernel

theorem check_12572 : cell_12572.check = true := by
  decide +kernel

theorem check_12573 : cell_12573.check = true := by
  decide +kernel

theorem check_12574 : cell_12574.check = true := by
  decide +kernel

theorem check_12575 : cell_12575.check = true := by
  decide +kernel

theorem check_12576 : cell_12576.check = true := by
  decide +kernel

theorem check_12577 : cell_12577.check = true := by
  decide +kernel

theorem check_12578 : cell_12578.check = true := by
  decide +kernel

theorem check_12579 : cell_12579.check = true := by
  decide +kernel

theorem check_12580 : cell_12580.check = true := by
  decide +kernel

theorem check_12581 : cell_12581.check = true := by
  decide +kernel

theorem check_12582 : cell_12582.check = true := by
  decide +kernel

theorem check_12583 : cell_12583.check = true := by
  decide +kernel

theorem check_12584 : cell_12584.check = true := by
  decide +kernel

theorem check_12585 : cell_12585.check = true := by
  decide +kernel

theorem check_12586 : cell_12586.check = true := by
  decide +kernel

theorem check_12587 : cell_12587.check = true := by
  decide +kernel

theorem check_12588 : cell_12588.check = true := by
  decide +kernel

theorem check_12589 : cell_12589.check = true := by
  decide +kernel

theorem check_12590 : cell_12590.check = true := by
  decide +kernel

theorem check_12591 : cell_12591.check = true := by
  decide +kernel

theorem check_12592 : cell_12592.check = true := by
  decide +kernel

theorem check_12593 : cell_12593.check = true := by
  decide +kernel

theorem check_12594 : cell_12594.check = true := by
  decide +kernel

theorem check_12595 : cell_12595.check = true := by
  decide +kernel

theorem check_12596 : cell_12596.check = true := by
  decide +kernel

theorem check_12597 : cell_12597.check = true := by
  decide +kernel

theorem check_12598 : cell_12598.check = true := by
  decide +kernel

theorem check_12599 : cell_12599.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12550, cell_12551, cell_12552, cell_12553, cell_12554, cell_12555, cell_12556, cell_12557, cell_12558, cell_12559, cell_12560, cell_12561, cell_12562, cell_12563, cell_12564, cell_12565, cell_12566, cell_12567, cell_12568, cell_12569, cell_12570, cell_12571, cell_12572, cell_12573, cell_12574, cell_12575, cell_12576, cell_12577, cell_12578, cell_12579, cell_12580, cell_12581, cell_12582, cell_12583, cell_12584, cell_12585, cell_12586, cell_12587, cell_12588, cell_12589, cell_12590, cell_12591, cell_12592, cell_12593, cell_12594, cell_12595, cell_12596, cell_12597, cell_12598, cell_12599]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12550, check_12551, check_12552, check_12553, check_12554, check_12555, check_12556, check_12557, check_12558, check_12559, check_12560, check_12561, check_12562, check_12563, check_12564, check_12565, check_12566, check_12567, check_12568, check_12569, check_12570, check_12571, check_12572, check_12573, check_12574, check_12575, check_12576, check_12577, check_12578, check_12579, check_12580, check_12581, check_12582, check_12583, check_12584, check_12585, check_12586, check_12587, check_12588, check_12589, check_12590, check_12591, check_12592, check_12593, check_12594, check_12595, check_12596, check_12597, check_12598, check_12599, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0251

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0251
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0251
open AnalyticBounds.ExpressionCertificate

theorem linked_12550 : Linked cell_12550 pieces := by
  link_source cell_12550 with piece_1713 using piece_1713_mem, piece_686_mem

theorem linked_12551 : Linked cell_12551 pieces := by
  link_source cell_12551 with piece_1714 using piece_1714_mem, ⟨piece_686_mem, ⟨piece_687_mem, piece_688_mem⟩⟩

theorem linked_12552 : Linked cell_12552 pieces := by
  link_source cell_12552 with piece_1714 using piece_1714_mem, piece_686_mem

theorem linked_12553 : Linked cell_12553 pieces := by
  link_source cell_12553 with piece_1714 using piece_1714_mem, piece_686_mem

theorem linked_12554 : Linked cell_12554 pieces := by
  link_source cell_12554 with piece_1714 using piece_1714_mem, piece_686_mem

theorem linked_12555 : Linked cell_12555 pieces := by
  link_source cell_12555 with piece_1715 using piece_1715_mem, piece_686_mem

theorem linked_12556 : Linked cell_12556 pieces := by
  link_source cell_12556 with piece_1715 using piece_1715_mem, piece_686_mem

theorem linked_12557 : Linked cell_12557 pieces := by
  link_source cell_12557 with piece_1715 using piece_1715_mem, piece_686_mem

theorem linked_12558 : Linked cell_12558 pieces := by
  link_source cell_12558 with piece_1715 using piece_1715_mem, ⟨piece_685_mem, piece_686_mem⟩

theorem linked_12559 : Linked cell_12559 pieces := by
  link_source cell_12559 with piece_1716 using piece_1716_mem, ⟨piece_685_mem, piece_686_mem⟩

theorem linked_12560 : Linked cell_12560 pieces := by
  link_source cell_12560 with piece_1716 using piece_1716_mem, piece_685_mem

theorem linked_12561 : Linked cell_12561 pieces := by
  link_source cell_12561 with piece_1716 using piece_1716_mem, piece_685_mem

theorem linked_12562 : Linked cell_12562 pieces := by
  link_source cell_12562 with piece_1716 using piece_1716_mem, piece_685_mem

theorem linked_12563 : Linked cell_12563 pieces := by
  link_source cell_12563 with piece_1717 using piece_1717_mem, piece_685_mem

theorem linked_12564 : Linked cell_12564 pieces := by
  link_source cell_12564 with piece_1717 using piece_1717_mem, piece_685_mem

theorem linked_12565 : Linked cell_12565 pieces := by
  link_source cell_12565 with piece_1717 using piece_1717_mem, piece_685_mem

theorem linked_12566 : Linked cell_12566 pieces := by
  link_source cell_12566 with piece_1717 using piece_1717_mem, ⟨piece_684_mem, piece_685_mem⟩

theorem linked_12567 : Linked cell_12567 pieces := by
  link_source cell_12567 with piece_1718 using piece_1718_mem, piece_685_mem

theorem linked_12568 : Linked cell_12568 pieces := by
  link_source cell_12568 with piece_1718 using piece_1718_mem, ⟨piece_684_mem, piece_685_mem⟩

theorem linked_12569 : Linked cell_12569 pieces := by
  link_source cell_12569 with piece_1718 using piece_1718_mem, piece_684_mem

theorem linked_12570 : Linked cell_12570 pieces := by
  link_source cell_12570 with piece_1718 using piece_1718_mem, piece_684_mem

theorem linked_12571 : Linked cell_12571 pieces := by
  link_source cell_12571 with piece_1719 using piece_1719_mem, piece_684_mem

theorem linked_12572 : Linked cell_12572 pieces := by
  link_source cell_12572 with piece_1719 using piece_1719_mem, piece_684_mem

theorem linked_12573 : Linked cell_12573 pieces := by
  link_source cell_12573 with piece_1719 using piece_1719_mem, piece_684_mem

theorem linked_12574 : Linked cell_12574 pieces := by
  link_source cell_12574 with piece_1719 using piece_1719_mem, piece_684_mem

theorem linked_12575 : Linked cell_12575 pieces := by
  link_source cell_12575 with piece_1720 using piece_1720_mem, piece_684_mem

theorem linked_12576 : Linked cell_12576 pieces := by
  link_source cell_12576 with piece_1720 using piece_1720_mem, piece_684_mem

theorem linked_12577 : Linked cell_12577 pieces := by
  link_source cell_12577 with piece_1720 using piece_1720_mem, ⟨piece_683_mem, piece_684_mem⟩

theorem linked_12578 : Linked cell_12578 pieces := by
  link_source cell_12578 with piece_1720 using piece_1720_mem, piece_683_mem

theorem linked_12579 : Linked cell_12579 pieces := by
  link_source cell_12579 with piece_1721 using piece_1721_mem, piece_683_mem

theorem linked_12580 : Linked cell_12580 pieces := by
  link_source cell_12580 with piece_1721 using piece_1721_mem, piece_683_mem

theorem linked_12581 : Linked cell_12581 pieces := by
  link_source cell_12581 with piece_1721 using piece_1721_mem, piece_683_mem

theorem linked_12582 : Linked cell_12582 pieces := by
  link_source cell_12582 with piece_1721 using piece_1721_mem, piece_683_mem

theorem linked_12583 : Linked cell_12583 pieces := by
  link_source cell_12583 with piece_1722 using piece_1722_mem, piece_683_mem

theorem linked_12584 : Linked cell_12584 pieces := by
  link_source cell_12584 with piece_1722 using piece_1722_mem, piece_683_mem

theorem linked_12585 : Linked cell_12585 pieces := by
  link_source cell_12585 with piece_1722 using piece_1722_mem, ⟨piece_682_mem, piece_683_mem⟩

theorem linked_12586 : Linked cell_12586 pieces := by
  link_source cell_12586 with piece_1722 using piece_1722_mem, piece_682_mem

theorem linked_12587 : Linked cell_12587 pieces := by
  link_source cell_12587 with piece_1723 using piece_1723_mem, ⟨piece_682_mem, piece_683_mem⟩

theorem linked_12588 : Linked cell_12588 pieces := by
  link_source cell_12588 with piece_1723 using piece_1723_mem, piece_682_mem

theorem linked_12589 : Linked cell_12589 pieces := by
  link_source cell_12589 with piece_1723 using piece_1723_mem, piece_682_mem

theorem linked_12590 : Linked cell_12590 pieces := by
  link_source cell_12590 with piece_1723 using piece_1723_mem, piece_682_mem

theorem linked_12591 : Linked cell_12591 pieces := by
  link_source cell_12591 with piece_1724 using piece_1724_mem, piece_682_mem

theorem linked_12592 : Linked cell_12592 pieces := by
  link_source cell_12592 with piece_1725 using piece_1725_mem, piece_682_mem

theorem linked_12593 : Linked cell_12593 pieces := by
  link_source cell_12593 with piece_1725 using piece_1725_mem, piece_682_mem

theorem linked_12594 : Linked cell_12594 pieces := by
  link_source cell_12594 with piece_1725 using piece_1725_mem, piece_682_mem

theorem linked_12595 : Linked cell_12595 pieces := by
  link_source cell_12595 with piece_1725 using piece_1725_mem, ⟨piece_681_mem, piece_682_mem⟩

theorem linked_12596 : Linked cell_12596 pieces := by
  link_source cell_12596 with piece_1726 using piece_1726_mem, piece_682_mem

theorem linked_12597 : Linked cell_12597 pieces := by
  link_source cell_12597 with piece_1726 using piece_1726_mem, ⟨piece_681_mem, piece_682_mem⟩

theorem linked_12598 : Linked cell_12598 pieces := by
  link_source cell_12598 with piece_1726 using piece_1726_mem, piece_681_mem

theorem linked_12599 : Linked cell_12599 pieces := by
  link_source cell_12599 with piece_1726 using piece_1726_mem, piece_681_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0251.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0251.cells,List.forall_mem_cons]
  exact ⟨linked_12550, linked_12551, linked_12552, linked_12553, linked_12554, linked_12555, linked_12556, linked_12557, linked_12558, linked_12559, linked_12560, linked_12561, linked_12562, linked_12563, linked_12564, linked_12565, linked_12566, linked_12567, linked_12568, linked_12569, linked_12570, linked_12571, linked_12572, linked_12573, linked_12574, linked_12575, linked_12576, linked_12577, linked_12578, linked_12579, linked_12580, linked_12581, linked_12582, linked_12583, linked_12584, linked_12585, linked_12586, linked_12587, linked_12588, linked_12589, linked_12590, linked_12591, linked_12592, linked_12593, linked_12594, linked_12595, linked_12596, linked_12597, linked_12598, linked_12599, by simp⟩

theorem covered : covers (59231117318435757 / 80000000000000000 : ℚ) (14930000000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0251.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0251
end
