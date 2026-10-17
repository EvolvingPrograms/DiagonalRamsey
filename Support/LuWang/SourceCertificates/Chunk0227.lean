import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0227
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(118450000000000011 / 200000000000000000 : ℚ), (236950000000000017 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (14020795371059 / 25000000000000 : ℚ)
  w := (699691094777 / 500000000000 : ℚ)
  center := (473850000000000039 / 800000000000000000 : ℚ)
  supportValue := (34948418967042927 / 100000000000000000 : ℚ)
  supportSlope := (-13952524900961167 / 10000000000000000 : ℚ)
  oldCenter := (34948418967042927 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1391
  oldLo := (34900000000000003 / 100000000000000000 : ℚ)
  oldHi := (34950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_860]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_11350 : Cell := { cellDefaults with
  r := (56111127835293 / 100000000000000 : ℚ)
  w := (13996782891361 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1390
  oldHi := (35000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_860, piece_861]
}

noncomputable def cell_11351 : Cell := { cellDefaults with
  domain := ⟨(236950000000000017 / 400000000000000000 : ℚ), (59250000000000003 / 100000000000000000 : ℚ)⟩
  r := (56111127835293 / 100000000000000 : ℚ)
  w := (13996782891361 / 10000000000000 : ℚ)
  center := (473950000000000029 / 800000000000000000 : ℚ)
  supportValue := (3493095543352911 / 10000000000000000 : ℚ)
  supportSlope := (-13943321850692643 / 10000000000000000 : ℚ)
  oldCenter := (3493095543352911 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1390
  oldPieces := [piece_860]
}

noncomputable def cell_11352 : Cell := { cellDefaults with
  domain := ⟨(59250000000000003 / 100000000000000000 : ℚ), (237050000000000017 / 400000000000000000 : ℚ)⟩
  center := (474050000000000029 / 800000000000000000 : ℚ)
  supportValue := (4368716149628353 / 12500000000000000 : ℚ)
  supportSlope := (-13945464970042947 / 10000000000000000 : ℚ)
  oldCenter := (4368716149628353 / 12500000000000000 : ℚ)
  oldHi := (35000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_860, piece_861]
}

noncomputable def cell_11353 : Cell := { cellDefaults with
  domain := ⟨(237050000000000017 / 400000000000000000 : ℚ), (118550000000000011 / 200000000000000000 : ℚ)⟩
  center := (474150000000000039 / 800000000000000000 : ℚ)
  supportValue := (3493227294459729 / 10000000000000000 : ℚ)
  supportSlope := (-6968751068762571 / 5000000000000000 : ℚ)
  oldCenter := (3493227294459729 / 10000000000000000 : ℚ)
  oldPieces := [piece_860]
}

noncomputable def cell_11354 : Cell := { cellDefaults with
  domain := ⟨(118550000000000011 / 200000000000000000 : ℚ), (237150000000000027 / 400000000000000000 : ℚ)⟩
  center := (474250000000000049 / 800000000000000000 : ℚ)
  supportValue := (3491486094706147 / 10000000000000000 : ℚ)
  supportSlope := (-278434020375301 / 200000000000000 : ℚ)
  oldCenter := (3491486094706147 / 10000000000000000 : ℚ)
  oldPieces := [piece_860]
}

noncomputable def cell_11355 : Cell := { cellDefaults with
  domain := ⟨(237150000000000027 / 400000000000000000 : ℚ), (7412500000000001 / 12500000000000000 : ℚ)⟩
  center := (474350000000000059 / 800000000000000000 : ℚ)
  supportValue := (1744874504914673 / 5000000000000000 : ℚ)
  supportSlope := (-55666059055669 / 40000000000000 : ℚ)
  oldCenter := (1744874504914673 / 5000000000000000 : ℚ)
  oldLo := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_859, piece_860]
}

noncomputable def cell_11356 : Cell := { cellDefaults with
  domain := ⟨(7412500000000001 / 12500000000000000 : ℚ), (237250000000000027 / 400000000000000000 : ℚ)⟩
  r := (14013817115313 / 25000000000000 : ℚ)
  w := (13990870344863 / 10000000000000 : ℚ)
  center := (474450000000000059 / 800000000000000000 : ℚ)
  supportValue := (872903921407403 / 2500000000000000 : ℚ)
  supportSlope := (-13915874989020307 / 10000000000000000 : ℚ)
  oldCenter := (872903921407403 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1392
  oldPieces := [piece_860]
}

noncomputable def cell_11357 : Cell := { cellDefaults with
  domain := ⟨(237250000000000027 / 400000000000000000 : ℚ), (118650000000000011 / 200000000000000000 : ℚ)⟩
  r := (14013817115313 / 25000000000000 : ℚ)
  w := (13990870344863 / 10000000000000 : ℚ)
  center := (474550000000000049 / 800000000000000000 : ℚ)
  supportValue := (17449397408633757 / 50000000000000000 : ℚ)
  supportSlope := (-13909475624035719 / 10000000000000000 : ℚ)
  oldCenter := (17449397408633757 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1392
  oldLo := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_859, piece_860]
}

noncomputable def cell_11358 : Cell := { cellDefaults with
  domain := ⟨(118650000000000011 / 200000000000000000 : ℚ), (237350000000000017 / 400000000000000000 : ℚ)⟩
  r := (14013817115313 / 25000000000000 : ℚ)
  w := (13990870344863 / 10000000000000 : ℚ)
  center := (474650000000000039 / 800000000000000000 : ℚ)
  supportValue := (3488138464734211 / 10000000000000000 : ℚ)
  supportSlope := (-13900681311273257 / 10000000000000000 : ℚ)
  oldCenter := (3488138464734211 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1392
  oldLo := (34850000000000003 / 100000000000000000 : ℚ)
  oldHi := (34900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_859]
}

noncomputable def cell_11359 : Cell := { cellDefaults with
  domain := ⟨(237350000000000017 / 400000000000000000 : ℚ), (59350000000000003 / 100000000000000000 : ℚ)⟩
  r := (14013817115313 / 25000000000000 : ℚ)
  w := (13990870344863 / 10000000000000 : ℚ)
  center := (474750000000000029 / 800000000000000000 : ℚ)
  supportValue := (6972803731011481 / 20000000000000000 : ℚ)
  supportSlope := (-3471228364706827 / 2500000000000000 : ℚ)
  oldCenter := (6972803731011481 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1392
  oldLo := (34850000000000003 / 100000000000000000 : ℚ)
  oldHi := (34900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_859]
}

noncomputable def cell_11360 : Cell := { cellDefaults with
  domain := ⟨(59350000000000003 / 100000000000000000 : ℚ), (237450000000000017 / 400000000000000000 : ℚ)⟩
  r := (5602738706743 / 10000000000000 : ℚ)
  w := (2797584940123 / 2000000000000 : ℚ)
  center := (474850000000000029 / 800000000000000000 : ℚ)
  supportValue := (34882677556817343 / 100000000000000000 : ℚ)
  supportSlope := (-3473718094390773 / 2500000000000000 : ℚ)
  oldCenter := (34882677556817343 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1393
  oldLo := (34850000000000003 / 100000000000000000 : ℚ)
  oldHi := (34900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_859]
}

noncomputable def cell_11361 : Cell := { cellDefaults with
  domain := ⟨(237450000000000017 / 400000000000000000 : ℚ), (118750000000000011 / 200000000000000000 : ℚ)⟩
  r := (5602738706743 / 10000000000000 : ℚ)
  w := (2797584940123 / 2000000000000 : ℚ)
  center := (474950000000000039 / 800000000000000000 : ℚ)
  supportValue := (1743265940922097 / 5000000000000000 : ℚ)
  supportSlope := (-1387911612493159 / 1000000000000000 : ℚ)
  oldCenter := (1743265940922097 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1393
  oldLo := (34850000000000003 / 100000000000000000 : ℚ)
  oldHi := (34900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_859]
}

noncomputable def cell_11362 : Cell := { cellDefaults with
  domain := ⟨(118750000000000011 / 200000000000000000 : ℚ), (237550000000000027 / 400000000000000000 : ℚ)⟩
  r := (5602738706743 / 10000000000000 : ℚ)
  w := (2797584940123 / 2000000000000 : ℚ)
  center := (475050000000000049 / 800000000000000000 : ℚ)
  supportValue := (17424000863004657 / 50000000000000000 : ℚ)
  supportSlope := (-13873526514210643 / 10000000000000000 : ℚ)
  oldCenter := (17424000863004657 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1393
  oldLo := (34800000000000003 / 100000000000000000 : ℚ)
  oldHi := (34900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_858, piece_859]
}

noncomputable def cell_11363 : Cell := { cellDefaults with
  domain := ⟨(237550000000000027 / 400000000000000000 : ℚ), (7425000000000001 / 12500000000000000 : ℚ)⟩
  r := (5602738706743 / 10000000000000 : ℚ)
  w := (2797584940123 / 2000000000000 : ℚ)
  center := (475150000000000059 / 800000000000000000 : ℚ)
  supportValue := (17415318715137307 / 50000000000000000 : ℚ)
  supportSlope := (-6932011720319071 / 5000000000000000 : ℚ)
  oldCenter := (17415318715137307 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1393
  oldLo := (34800000000000003 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_858]
}

noncomputable def cell_11364 : Cell := { cellDefaults with
  domain := ⟨(7425000000000001 / 12500000000000000 : ℚ), (237650000000000027 / 400000000000000000 : ℚ)⟩
  r := (27999768398917 / 50000000000000 : ℚ)
  w := (13984985022949 / 10000000000000 : ℚ)
  center := (475250000000000059 / 800000000000000000 : ℚ)
  supportValue := (348492919622021 / 1000000000000000 : ℚ)
  supportSlope := (-6933256264827907 / 5000000000000000 : ℚ)
  oldCenter := (348492919622021 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1394
  oldLo := (34800000000000003 / 100000000000000000 : ℚ)
  oldHi := (34900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_858, piece_859]
}

noncomputable def cell_11365 : Cell := { cellDefaults with
  domain := ⟨(237650000000000027 / 400000000000000000 : ℚ), (118850000000000011 / 200000000000000000 : ℚ)⟩
  r := (27999768398917 / 50000000000000 : ℚ)
  w := (13984985022949 / 10000000000000 : ℚ)
  center := (475350000000000049 / 800000000000000000 : ℚ)
  supportValue := (348319348973841 / 1000000000000000 : ℚ)
  supportSlope := (-1732280477783239 / 1250000000000000 : ℚ)
  oldCenter := (348319348973841 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1394
  oldLo := (34800000000000003 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_858]
}

noncomputable def cell_11366 : Cell := { cellDefaults with
  domain := ⟨(118850000000000011 / 200000000000000000 : ℚ), (237750000000000017 / 400000000000000000 : ℚ)⟩
  r := (27999768398917 / 50000000000000 : ℚ)
  w := (13984985022949 / 10000000000000 : ℚ)
  center := (475450000000000039 / 800000000000000000 : ℚ)
  supportValue := (6962924385681657 / 20000000000000000 : ℚ)
  supportSlope := (-13842513671013241 / 10000000000000000 : ℚ)
  oldCenter := (6962924385681657 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1394
  oldLo := (34800000000000003 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_858]
}

noncomputable def cell_11367 : Cell := { cellDefaults with
  domain := ⟨(237750000000000017 / 400000000000000000 : ℚ), (59450000000000003 / 100000000000000000 : ℚ)⟩
  r := (27999768398917 / 50000000000000 : ℚ)
  w := (13984985022949 / 10000000000000 : ℚ)
  center := (475550000000000029 / 800000000000000000 : ℚ)
  supportValue := (17398674875420467 / 50000000000000000 : ℚ)
  supportSlope := (-3459399766703521 / 2500000000000000 : ℚ)
  oldCenter := (17398674875420467 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1394
  oldLo := (34750000000000003 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_857, piece_858]
}

noncomputable def cell_11368 : Cell := { cellDefaults with
  domain := ⟨(59450000000000003 / 100000000000000000 : ℚ), (237850000000000017 / 400000000000000000 : ℚ)⟩
  r := (6996465071071 / 12500000000000 : ℚ)
  w := (2796410982891 / 2000000000000 : ℚ)
  center := (475650000000000029 / 800000000000000000 : ℚ)
  supportValue := (3481589663109523 / 10000000000000000 : ℚ)
  supportSlope := (-2767345371500419 / 2000000000000000 : ℚ)
  oldCenter := (3481589663109523 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1395
  oldLo := (34800000000000003 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_858]
}

noncomputable def cell_11369 : Cell := { cellDefaults with
  domain := ⟨(237850000000000017 / 400000000000000000 : ℚ), (118950000000000011 / 200000000000000000 : ℚ)⟩
  r := (6996465071071 / 12500000000000 : ℚ)
  w := (2796410982891 / 2000000000000 : ℚ)
  center := (475750000000000039 / 800000000000000000 : ℚ)
  supportValue := (3479863320536251 / 10000000000000000 : ℚ)
  supportSlope := (-6915302852047863 / 5000000000000000 : ℚ)
  oldCenter := (3479863320536251 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1395
  oldLo := (34750000000000003 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_857, piece_858]
}

noncomputable def cell_11370 : Cell := { cellDefaults with
  domain := ⟨(118950000000000011 / 200000000000000000 : ℚ), (237950000000000027 / 400000000000000000 : ℚ)⟩
  r := (6996465071071 / 12500000000000 : ℚ)
  w := (2796410982891 / 2000000000000 : ℚ)
  center := (475850000000000049 / 800000000000000000 : ℚ)
  supportValue := (6956264360207457 / 20000000000000000 : ℚ)
  supportSlope := (-13821765896107903 / 10000000000000000 : ℚ)
  oldCenter := (6956264360207457 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1395
  oldLo := (34750000000000003 / 100000000000000000 : ℚ)
  oldHi := (34800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_857]
}

noncomputable def cell_11371 : Cell := { cellDefaults with
  domain := ⟨(237950000000000027 / 400000000000000000 : ℚ), (7437500000000001 / 12500000000000000 : ℚ)⟩
  r := (6996465071071 / 12500000000000 : ℚ)
  w := (2796410982891 / 2000000000000 : ℚ)
  center := (475950000000000059 / 800000000000000000 : ℚ)
  supportValue := (869101360047757 / 2500000000000000 : ℚ)
  supportSlope := (-6903039915408391 / 5000000000000000 : ℚ)
  oldCenter := (869101360047757 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1395
  oldLo := (34750000000000003 / 100000000000000000 : ℚ)
  oldHi := (34800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_857]
}

noncomputable def cell_11372 : Cell := { cellDefaults with
  domain := ⟨(7437500000000001 / 12500000000000000 : ℚ), (238050000000000027 / 400000000000000000 : ℚ)⟩
  r := (27971967666407 / 50000000000000 : ℚ)
  w := (13979130748863 / 10000000000000 : ℚ)
  center := (476050000000000059 / 800000000000000000 : ℚ)
  supportValue := (17391296934698147 / 50000000000000000 : ℚ)
  supportSlope := (-863499700744039 / 625000000000000 : ℚ)
  oldCenter := (17391296934698147 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1396
  oldLo := (34750000000000003 / 100000000000000000 : ℚ)
  oldHi := (34800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_857]
}

noncomputable def cell_11373 : Cell := { cellDefaults with
  domain := ⟨(238050000000000027 / 400000000000000000 : ℚ), (119050000000000011 / 200000000000000000 : ℚ)⟩
  r := (27971967666407 / 50000000000000 : ℚ)
  w := (13979130748863 / 10000000000000 : ℚ)
  center := (476150000000000049 / 800000000000000000 : ℚ)
  supportValue := (3476533367632043 / 10000000000000000 : ℚ)
  supportSlope := (-13800320820448733 / 10000000000000000 : ℚ)
  oldCenter := (3476533367632043 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1396
  oldLo := (34750000000000003 / 100000000000000000 : ℚ)
  oldHi := (34800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_857]
}

noncomputable def cell_11374 : Cell := { cellDefaults with
  domain := ⟨(119050000000000011 / 200000000000000000 : ℚ), (238150000000000017 / 400000000000000000 : ℚ)⟩
  r := (27971967666407 / 50000000000000 : ℚ)
  w := (13979130748863 / 10000000000000 : ℚ)
  center := (476250000000000039 / 800000000000000000 : ℚ)
  supportValue := (3474811506908921 / 10000000000000000 : ℚ)
  supportSlope := (-6897378505055919 / 5000000000000000 : ℚ)
  oldCenter := (3474811506908921 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1396
  oldLo := (17368715083798883 / 50000000000000000 : ℚ)
  oldHi := (34800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_856, piece_857]
}

noncomputable def cell_11375 : Cell := { cellDefaults with
  domain := ⟨(238150000000000017 / 400000000000000000 : ℚ), (59550000000000003 / 100000000000000000 : ℚ)⟩
  r := (27971967666407 / 50000000000000 : ℚ)
  w := (13979130748863 / 10000000000000 : ℚ)
  center := (476350000000000029 / 800000000000000000 : ℚ)
  supportValue := (17365424547103167 / 50000000000000000 : ℚ)
  supportSlope := (-137854699278797 / 100000000000000 : ℚ)
  oldCenter := (17365424547103167 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1396
  oldLo := (34700000000000003 / 100000000000000000 : ℚ)
  oldHi := (34750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_855, piece_856]
}

noncomputable def cell_11376 : Cell := { cellDefaults with
  domain := ⟨(59550000000000003 / 100000000000000000 : ℚ), (119125000000000009 / 200000000000000000 : ℚ)⟩
  r := (55916180630281 / 100000000000000 : ℚ)
  w := (13976211903203 / 10000000000000 : ℚ)
  center := (47645000000000003 / 80000000000000000 : ℚ)
  supportValue := (868734658279197 / 2500000000000000 : ℚ)
  supportSlope := (-1378778857824171 / 1000000000000000 : ℚ)
  oldCenter := (868734658279197 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1397
  oldLo := (17368715083798883 / 50000000000000000 : ℚ)
  oldHi := (34800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_856, piece_857]
}

noncomputable def cell_11377 : Cell := { cellDefaults with
  domain := ⟨(119125000000000009 / 200000000000000000 : ℚ), (29787500000000003 / 50000000000000000 : ℚ)⟩
  r := (55916180630281 / 100000000000000 : ℚ)
  w := (13976211903203 / 10000000000000 : ℚ)
  center := (238275000000000021 / 400000000000000000 : ℚ)
  supportValue := (17366063769589 / 50000000000000 : ℚ)
  supportSlope := (-6889864377716277 / 5000000000000000 : ℚ)
  oldCenter := (17366063769589 / 50000000000000 : ℚ)
  newCoefficients := coefficients_1397
  oldLo := (34700000000000003 / 100000000000000000 : ℚ)
  oldHi := (34750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_855, piece_856]
}

noncomputable def cell_11378 : Cell := { cellDefaults with
  domain := ⟨(29787500000000003 / 50000000000000000 : ℚ), (23835000000000003 / 40000000000000000 : ℚ)⟩
  r := (55916180630281 / 100000000000000 : ℚ)
  w := (13976211903203 / 10000000000000 : ℚ)
  center := (238325000000000027 / 400000000000000000 : ℚ)
  supportValue := (34714912659113917 / 100000000000000000 : ℚ)
  supportSlope := (-172051057156321 / 125000000000000 : ℚ)
  oldCenter := (34714912659113917 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1397
  oldLo := (34700000000000003 / 100000000000000000 : ℚ)
  oldHi := (17368715083798883 / 50000000000000000 : ℚ)
  oldPieces := [piece_855]
}

noncomputable def cell_11379 : Cell := { cellDefaults with
  domain := ⟨(23835000000000003 / 40000000000000000 : ℚ), (59600000000000009 / 100000000000000000 : ℚ)⟩
  r := (55916180630281 / 100000000000000 : ℚ)
  w := (13976211903203 / 10000000000000 : ℚ)
  center := (238375000000000033 / 400000000000000000 : ℚ)
  supportValue := (34697738830202773 / 100000000000000000 : ℚ)
  supportSlope := (-429966949958231 / 312500000000000 : ℚ)
  oldCenter := (34697738830202773 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1397
  oldLo := (34650000000000003 / 100000000000000000 : ℚ)
  oldHi := (17368715083798883 / 50000000000000000 : ℚ)
  oldPieces := [piece_854, piece_855]
}

noncomputable def cell_11380 : Cell := { cellDefaults with
  domain := ⟨(59600000000000009 / 100000000000000000 : ℚ), (119225698324022359 / 200000000000000000 : ℚ)⟩
  r := (27944229989691 / 50000000000000 : ℚ)
  w := (13973303585003 / 10000000000000 : ℚ)
  center := (238425698324022377 / 400000000000000000 : ℚ)
  supportValue := (17357962918972483 / 50000000000000000 : ℚ)
  supportSlope := (-6879058614923651 / 5000000000000000 : ℚ)
  oldCenter := (17357962918972483 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1398
  oldLo := (34700000000000003 / 100000000000000000 : ℚ)
  oldHi := (17368715083798883 / 50000000000000000 : ℚ)
  oldPieces := [piece_855]
}

noncomputable def cell_11381 : Cell := { cellDefaults with
  domain := ⟨(119225698324022359 / 200000000000000000 : ℚ), (1192513966480447 / 2000000000000000 : ℚ)⟩
  r := (27944229989691 / 50000000000000 : ℚ)
  w := (13973303585003 / 10000000000000 : ℚ)
  center := (238477094972067059 / 400000000000000000 : ℚ)
  supportValue := (4337285035099523 / 12500000000000000 : ℚ)
  supportSlope := (-6875992874940131 / 5000000000000000 : ℚ)
  oldCenter := (4337285035099523 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1398
  oldLo := (34650000000000003 / 100000000000000000 : ℚ)
  oldHi := (17368715083798883 / 50000000000000000 : ℚ)
  oldPieces := [piece_854, piece_855]
}

noncomputable def cell_11382 : Cell := { cellDefaults with
  domain := ⟨(1192513966480447 / 2000000000000000 : ℚ), (119275698324022353 / 200000000000000000 : ℚ)⟩
  r := (27944229989691 / 50000000000000 : ℚ)
  w := (13973303585003 / 10000000000000 : ℚ)
  center := (238527094972067053 / 400000000000000000 : ℚ)
  supportValue := (3468106751422723 / 10000000000000000 : ℚ)
  supportSlope := (-13742947302794863 / 10000000000000000 : ℚ)
  oldCenter := (3468106751422723 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1399
  oldLo := (34650000000000003 / 100000000000000000 : ℚ)
  oldHi := (34700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_854]
}

noncomputable def cell_11383 : Cell := { cellDefaults with
  domain := ⟨(119275698324022353 / 200000000000000000 : ℚ), (59650000000000003 / 100000000000000000 : ℚ)⟩
  r := (27944229989691 / 50000000000000 : ℚ)
  w := (13973303585003 / 10000000000000 : ℚ)
  center := (238575698324022359 / 400000000000000000 : ℚ)
  supportValue := (34664377907111793 / 100000000000000000 : ℚ)
  supportSlope := (-6863884323171081 / 5000000000000000 : ℚ)
  oldCenter := (34664377907111793 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1399
  oldLo := (34650000000000003 / 100000000000000000 : ℚ)
  oldHi := (34700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_854]
}

noncomputable def cell_11384 : Cell := { cellDefaults with
  domain := ⟨(59650000000000003 / 100000000000000000 : ℚ), (238650000000000007 / 400000000000000000 : ℚ)⟩
  r := (2234430820743 / 4000000000000 : ℚ)
  w := (6985200308943 / 5000000000000 : ℚ)
  center := (477250000000000019 / 800000000000000000 : ℚ)
  supportValue := (2167689935161609 / 6250000000000000 : ℚ)
  supportSlope := (-2747574231598823 / 2000000000000000 : ℚ)
  oldCenter := (2167689935161609 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1400
  oldLo := (34650000000000003 / 100000000000000000 : ℚ)
  oldHi := (34700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_854]
}

noncomputable def cell_11385 : Cell := { cellDefaults with
  domain := ⟨(238650000000000007 / 400000000000000000 : ℚ), (119350000000000001 / 200000000000000000 : ℚ)⟩
  r := (2234430820743 / 4000000000000 : ℚ)
  w := (6985200308943 / 5000000000000 : ℚ)
  center := (477350000000000009 / 800000000000000000 : ℚ)
  supportValue := (34665876381183297 / 100000000000000000 : ℚ)
  supportSlope := (-3430566557501079 / 2500000000000000 : ℚ)
  oldCenter := (34665876381183297 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1400
  oldLo := (34650000000000003 / 100000000000000000 : ℚ)
  oldHi := (34700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_854]
}

noncomputable def cell_11386 : Cell := { cellDefaults with
  domain := ⟨(119350000000000001 / 200000000000000000 : ℚ), (238749999999999997 / 400000000000000000 : ℚ)⟩
  r := (2234430820743 / 4000000000000 : ℚ)
  w := (6985200308943 / 5000000000000 : ℚ)
  center := (477449999999999999 / 800000000000000000 : ℚ)
  supportValue := (3464875597784907 / 10000000000000000 : ℚ)
  supportSlope := (-13716218690006647 / 10000000000000000 : ℚ)
  oldCenter := (3464875597784907 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1400
  oldLo := (34600000000000003 / 100000000000000000 : ℚ)
  oldHi := (34700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_853, piece_854]
}

noncomputable def cell_11387 : Cell := { cellDefaults with
  domain := ⟨(238749999999999997 / 400000000000000000 : ℚ), (29849999999999999 / 50000000000000000 : ℚ)⟩
  r := (2234430820743 / 4000000000000 : ℚ)
  w := (6985200308943 / 5000000000000 : ℚ)
  center := (477549999999999989 / 800000000000000000 : ℚ)
  supportValue := (692631748010371 / 2000000000000000 : ℚ)
  supportSlope := (-2741527670606477 / 2000000000000000 : ℚ)
  oldCenter := (692631748010371 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1400
  oldLo := (34600000000000003 / 100000000000000000 : ℚ)
  oldHi := (34650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_853]
}

noncomputable def cell_11388 : Cell := { cellDefaults with
  domain := ⟨(29849999999999999 / 50000000000000000 : ℚ), (238849999999999997 / 400000000000000000 : ℚ)⟩
  r := (27916555550433 / 50000000000000 : ℚ)
  w := (872968953517 / 625000000000 : ℚ)
  center := (477649999999999989 / 800000000000000000 : ℚ)
  supportValue := (3465000647041417 / 10000000000000000 : ℚ)
  supportSlope := (-137092949658499 / 100000000000000 : ℚ)
  oldCenter := (3465000647041417 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1401
  oldLo := (34600000000000003 / 100000000000000000 : ℚ)
  oldHi := (34700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_853, piece_854]
}

noncomputable def cell_11389 : Cell := { cellDefaults with
  domain := ⟨(238849999999999997 / 400000000000000000 : ℚ), (119450000000000001 / 200000000000000000 : ℚ)⟩
  r := (27916555550433 / 50000000000000 : ℚ)
  w := (872968953517 / 625000000000 : ℚ)
  center := (477749999999999999 / 800000000000000000 : ℚ)
  supportValue := (3463284502746309 / 10000000000000000 : ℚ)
  supportSlope := (-685096797357441 / 500000000000000 : ℚ)
  oldCenter := (3463284502746309 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1401
  oldLo := (34600000000000003 / 100000000000000000 : ℚ)
  oldHi := (34650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_853]
}

noncomputable def cell_11390 : Cell := { cellDefaults with
  domain := ⟨(119450000000000001 / 200000000000000000 : ℚ), (238950000000000007 / 400000000000000000 : ℚ)⟩
  r := (27916555550433 / 50000000000000 : ℚ)
  w := (872968953517 / 625000000000 : ℚ)
  center := (477850000000000009 / 800000000000000000 : ℚ)
  supportValue := (1730786367300181 / 5000000000000000 : ℚ)
  supportSlope := (-13686361550967217 / 10000000000000000 : ℚ)
  oldCenter := (1730786367300181 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1401
  oldLo := (34600000000000003 / 100000000000000000 : ℚ)
  oldHi := (34650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_853]
}

noncomputable def cell_11391 : Cell := { cellDefaults with
  domain := ⟨(238950000000000007 / 400000000000000000 : ℚ), (59750000000000003 / 100000000000000000 : ℚ)⟩
  r := (27916555550433 / 50000000000000 : ℚ)
  w := (872968953517 / 625000000000 : ℚ)
  center := (477950000000000019 / 800000000000000000 : ℚ)
  supportValue := (8649662908721581 / 25000000000000000 : ℚ)
  supportSlope := (-684023643937091 / 500000000000000 : ℚ)
  oldCenter := (8649662908721581 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1401
  oldLo := (34550000000000003 / 100000000000000000 : ℚ)
  oldHi := (34650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_852, piece_853]
}

noncomputable def cell_11392 : Cell := { cellDefaults with
  domain := ⟨(59750000000000003 / 100000000000000000 : ℚ), (239050000000000007 / 400000000000000000 : ℚ)⟩
  r := (55805486041023 / 100000000000000 : ℚ)
  w := (13964616924579 / 10000000000000 : ℚ)
  center := (478050000000000019 / 800000000000000000 : ℚ)
  supportValue := (2163559895420189 / 6250000000000000 : ℚ)
  supportSlope := (-13680648725157543 / 10000000000000000 : ℚ)
  oldCenter := (2163559895420189 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1402
  oldLo := (34600000000000003 / 100000000000000000 : ℚ)
  oldHi := (34650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_853]
}

noncomputable def cell_11393 : Cell := { cellDefaults with
  domain := ⟨(239050000000000007 / 400000000000000000 : ℚ), (119550000000000001 / 200000000000000000 : ℚ)⟩
  r := (55805486041023 / 100000000000000 : ℚ)
  w := (13964616924579 / 10000000000000 : ℚ)
  center := (478150000000000009 / 800000000000000000 : ℚ)
  supportValue := (3459989125456681 / 10000000000000000 : ℚ)
  supportSlope := (-13673569999916013 / 10000000000000000 : ℚ)
  oldCenter := (3459989125456681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1402
  oldLo := (34550000000000003 / 100000000000000000 : ℚ)
  oldHi := (34650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_852, piece_853]
}

noncomputable def cell_11394 : Cell := { cellDefaults with
  domain := ⟨(119550000000000001 / 200000000000000000 : ℚ), (239149999999999997 / 400000000000000000 : ℚ)⟩
  r := (55805486041023 / 100000000000000 : ℚ)
  w := (13964616924579 / 10000000000000 : ℚ)
  center := (478249999999999999 / 800000000000000000 : ℚ)
  supportValue := (1729138729882803 / 5000000000000000 : ℚ)
  supportSlope := (-13666151002632831 / 10000000000000000 : ℚ)
  oldCenter := (1729138729882803 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1402
  oldLo := (34550000000000003 / 100000000000000000 : ℚ)
  oldHi := (34600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_852]
}

noncomputable def cell_11395 : Cell := { cellDefaults with
  domain := ⟨(239149999999999997 / 400000000000000000 : ℚ), (29899999999999999 / 50000000000000000 : ℚ)⟩
  r := (55805486041023 / 100000000000000 : ℚ)
  w := (13964616924579 / 10000000000000 : ℚ)
  center := (478349999999999989 / 800000000000000000 : ℚ)
  supportValue := (3456570162763167 / 10000000000000000 : ℚ)
  supportSlope := (-273012164307423 / 200000000000000 : ℚ)
  oldCenter := (3456570162763167 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1402
  oldLo := (34550000000000003 / 100000000000000000 : ℚ)
  oldHi := (34600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_852]
}

noncomputable def cell_11396 : Cell := { cellDefaults with
  domain := ⟨(29899999999999999 / 50000000000000000 : ℚ), (239249999999999997 / 400000000000000000 : ℚ)⟩
  r := (55777891075909 / 100000000000000 : ℚ)
  w := (6980867020169 / 5000000000000 : ℚ)
  center := (478449999999999989 / 800000000000000000 : ℚ)
  supportValue := (540375141801901 / 1562500000000000 : ℚ)
  supportSlope := (-13660459907346179 / 10000000000000000 : ℚ)
  oldCenter := (540375141801901 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1403
  oldLo := (34550000000000003 / 100000000000000000 : ℚ)
  oldHi := (34600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_852]
}

noncomputable def cell_11397 : Cell := { cellDefaults with
  domain := ⟨(239249999999999997 / 400000000000000000 : ℚ), (119650000000000001 / 200000000000000000 : ℚ)⟩
  r := (55777891075909 / 100000000000000 : ℚ)
  w := (6980867020169 / 5000000000000 : ℚ)
  center := (478549999999999999 / 800000000000000000 : ℚ)
  supportValue := (4320867901535673 / 12500000000000000 : ℚ)
  supportSlope := (-13644928117278767 / 10000000000000000 : ℚ)
  oldCenter := (4320867901535673 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1403
  oldLo := (34550000000000003 / 100000000000000000 : ℚ)
  oldHi := (34600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_852]
}

noncomputable def cell_11398 : Cell := { cellDefaults with
  domain := ⟨(119650000000000001 / 200000000000000000 : ℚ), (239350000000000007 / 400000000000000000 : ℚ)⟩
  r := (55777891075909 / 100000000000000 : ℚ)
  w := (6980867020169 / 5000000000000 : ℚ)
  center := (478650000000000009 / 800000000000000000 : ℚ)
  supportValue := (863748019294281 / 2500000000000000 : ℚ)
  supportSlope := (-1363787200378971 / 1000000000000000 : ℚ)
  oldCenter := (863748019294281 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1403
  oldLo := (34500000000000003 / 100000000000000000 : ℚ)
  oldHi := (34600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_851, piece_852]
}

noncomputable def cell_11399 : Cell := { cellDefaults with
  domain := ⟨(239350000000000007 / 400000000000000000 : ℚ), (59850000000000003 / 100000000000000000 : ℚ)⟩
  r := (55777891075909 / 100000000000000 : ℚ)
  w := (6980867020169 / 5000000000000 : ℚ)
  center := (478750000000000019 / 800000000000000000 : ℚ)
  supportValue := (863321217316789 / 2500000000000000 : ℚ)
  supportSlope := (-13630532801361697 / 10000000000000000 : ℚ)
  oldCenter := (863321217316789 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1403
  oldLo := (34500000000000003 / 100000000000000000 : ℚ)
  oldHi := (34550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_851]
}

theorem check_11350 : cell_11350.check = true := by
  decide +kernel

theorem check_11351 : cell_11351.check = true := by
  decide +kernel

theorem check_11352 : cell_11352.check = true := by
  decide +kernel

theorem check_11353 : cell_11353.check = true := by
  decide +kernel

theorem check_11354 : cell_11354.check = true := by
  decide +kernel

theorem check_11355 : cell_11355.check = true := by
  decide +kernel

theorem check_11356 : cell_11356.check = true := by
  decide +kernel

theorem check_11357 : cell_11357.check = true := by
  decide +kernel

theorem check_11358 : cell_11358.check = true := by
  decide +kernel

theorem check_11359 : cell_11359.check = true := by
  decide +kernel

theorem check_11360 : cell_11360.check = true := by
  decide +kernel

theorem check_11361 : cell_11361.check = true := by
  decide +kernel

theorem check_11362 : cell_11362.check = true := by
  decide +kernel

theorem check_11363 : cell_11363.check = true := by
  decide +kernel

theorem check_11364 : cell_11364.check = true := by
  decide +kernel

theorem check_11365 : cell_11365.check = true := by
  decide +kernel

theorem check_11366 : cell_11366.check = true := by
  decide +kernel

theorem check_11367 : cell_11367.check = true := by
  decide +kernel

theorem check_11368 : cell_11368.check = true := by
  decide +kernel

theorem check_11369 : cell_11369.check = true := by
  decide +kernel

theorem check_11370 : cell_11370.check = true := by
  decide +kernel

theorem check_11371 : cell_11371.check = true := by
  decide +kernel

theorem check_11372 : cell_11372.check = true := by
  decide +kernel

theorem check_11373 : cell_11373.check = true := by
  decide +kernel

theorem check_11374 : cell_11374.check = true := by
  decide +kernel

theorem check_11375 : cell_11375.check = true := by
  decide +kernel

theorem check_11376 : cell_11376.check = true := by
  decide +kernel

theorem check_11377 : cell_11377.check = true := by
  decide +kernel

theorem check_11378 : cell_11378.check = true := by
  decide +kernel

theorem check_11379 : cell_11379.check = true := by
  decide +kernel

theorem check_11380 : cell_11380.check = true := by
  decide +kernel

theorem check_11381 : cell_11381.check = true := by
  decide +kernel

theorem check_11382 : cell_11382.check = true := by
  decide +kernel

theorem check_11383 : cell_11383.check = true := by
  decide +kernel

theorem check_11384 : cell_11384.check = true := by
  decide +kernel

theorem check_11385 : cell_11385.check = true := by
  decide +kernel

theorem check_11386 : cell_11386.check = true := by
  decide +kernel

theorem check_11387 : cell_11387.check = true := by
  decide +kernel

theorem check_11388 : cell_11388.check = true := by
  decide +kernel

theorem check_11389 : cell_11389.check = true := by
  decide +kernel

theorem check_11390 : cell_11390.check = true := by
  decide +kernel

theorem check_11391 : cell_11391.check = true := by
  decide +kernel

theorem check_11392 : cell_11392.check = true := by
  decide +kernel

theorem check_11393 : cell_11393.check = true := by
  decide +kernel

theorem check_11394 : cell_11394.check = true := by
  decide +kernel

theorem check_11395 : cell_11395.check = true := by
  decide +kernel

theorem check_11396 : cell_11396.check = true := by
  decide +kernel

theorem check_11397 : cell_11397.check = true := by
  decide +kernel

theorem check_11398 : cell_11398.check = true := by
  decide +kernel

theorem check_11399 : cell_11399.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11350, cell_11351, cell_11352, cell_11353, cell_11354, cell_11355, cell_11356, cell_11357, cell_11358, cell_11359, cell_11360, cell_11361, cell_11362, cell_11363, cell_11364, cell_11365, cell_11366, cell_11367, cell_11368, cell_11369, cell_11370, cell_11371, cell_11372, cell_11373, cell_11374, cell_11375, cell_11376, cell_11377, cell_11378, cell_11379, cell_11380, cell_11381, cell_11382, cell_11383, cell_11384, cell_11385, cell_11386, cell_11387, cell_11388, cell_11389, cell_11390, cell_11391, cell_11392, cell_11393, cell_11394, cell_11395, cell_11396, cell_11397, cell_11398, cell_11399]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11350, check_11351, check_11352, check_11353, check_11354, check_11355, check_11356, check_11357, check_11358, check_11359, check_11360, check_11361, check_11362, check_11363, check_11364, check_11365, check_11366, check_11367, check_11368, check_11369, check_11370, check_11371, check_11372, check_11373, check_11374, check_11375, check_11376, check_11377, check_11378, check_11379, check_11380, check_11381, check_11382, check_11383, check_11384, check_11385, check_11386, check_11387, check_11388, check_11389, check_11390, check_11391, check_11392, check_11393, check_11394, check_11395, check_11396, check_11397, check_11398, check_11399, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0227

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0227
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0227
open AnalyticBounds.ExpressionCertificate

theorem linked_11350 : Linked cell_11350 pieces := by
  apply Linked.of_piece piece_1390 piece_1390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11350, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_860_mem, piece_861_mem⟩

theorem linked_11351 : Linked cell_11351 pieces := by
  apply Linked.of_piece piece_1390 piece_1390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11351, List.cons_subset, List.nil_subset, and_true]
  exact piece_860_mem

theorem linked_11352 : Linked cell_11352 pieces := by
  apply Linked.of_piece piece_1391 piece_1391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11352, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_860_mem, piece_861_mem⟩

theorem linked_11353 : Linked cell_11353 pieces := by
  apply Linked.of_piece piece_1391 piece_1391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11353, List.cons_subset, List.nil_subset, and_true]
  exact piece_860_mem

theorem linked_11354 : Linked cell_11354 pieces := by
  apply Linked.of_piece piece_1391 piece_1391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11354, List.cons_subset, List.nil_subset, and_true]
  exact piece_860_mem

theorem linked_11355 : Linked cell_11355 pieces := by
  apply Linked.of_piece piece_1391 piece_1391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11355, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_859_mem, piece_860_mem⟩

theorem linked_11356 : Linked cell_11356 pieces := by
  apply Linked.of_piece piece_1392 piece_1392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11356, List.cons_subset, List.nil_subset, and_true]
  exact piece_860_mem

theorem linked_11357 : Linked cell_11357 pieces := by
  apply Linked.of_piece piece_1392 piece_1392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11357, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_859_mem, piece_860_mem⟩

theorem linked_11358 : Linked cell_11358 pieces := by
  apply Linked.of_piece piece_1392 piece_1392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11358, List.cons_subset, List.nil_subset, and_true]
  exact piece_859_mem

theorem linked_11359 : Linked cell_11359 pieces := by
  apply Linked.of_piece piece_1392 piece_1392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11359, List.cons_subset, List.nil_subset, and_true]
  exact piece_859_mem

theorem linked_11360 : Linked cell_11360 pieces := by
  apply Linked.of_piece piece_1393 piece_1393_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11360, List.cons_subset, List.nil_subset, and_true]
  exact piece_859_mem

theorem linked_11361 : Linked cell_11361 pieces := by
  apply Linked.of_piece piece_1393 piece_1393_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11361, List.cons_subset, List.nil_subset, and_true]
  exact piece_859_mem

theorem linked_11362 : Linked cell_11362 pieces := by
  apply Linked.of_piece piece_1393 piece_1393_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11362, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_858_mem, piece_859_mem⟩

theorem linked_11363 : Linked cell_11363 pieces := by
  apply Linked.of_piece piece_1393 piece_1393_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11363, List.cons_subset, List.nil_subset, and_true]
  exact piece_858_mem

theorem linked_11364 : Linked cell_11364 pieces := by
  apply Linked.of_piece piece_1394 piece_1394_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11364, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_858_mem, piece_859_mem⟩

theorem linked_11365 : Linked cell_11365 pieces := by
  apply Linked.of_piece piece_1394 piece_1394_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11365, List.cons_subset, List.nil_subset, and_true]
  exact piece_858_mem

theorem linked_11366 : Linked cell_11366 pieces := by
  apply Linked.of_piece piece_1394 piece_1394_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11366, List.cons_subset, List.nil_subset, and_true]
  exact piece_858_mem

theorem linked_11367 : Linked cell_11367 pieces := by
  apply Linked.of_piece piece_1394 piece_1394_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11367, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_857_mem, piece_858_mem⟩

theorem linked_11368 : Linked cell_11368 pieces := by
  apply Linked.of_piece piece_1395 piece_1395_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11368, List.cons_subset, List.nil_subset, and_true]
  exact piece_858_mem

theorem linked_11369 : Linked cell_11369 pieces := by
  apply Linked.of_piece piece_1395 piece_1395_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11369, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_857_mem, piece_858_mem⟩

theorem linked_11370 : Linked cell_11370 pieces := by
  apply Linked.of_piece piece_1395 piece_1395_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11370, List.cons_subset, List.nil_subset, and_true]
  exact piece_857_mem

theorem linked_11371 : Linked cell_11371 pieces := by
  apply Linked.of_piece piece_1395 piece_1395_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11371, List.cons_subset, List.nil_subset, and_true]
  exact piece_857_mem

theorem linked_11372 : Linked cell_11372 pieces := by
  apply Linked.of_piece piece_1396 piece_1396_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11372, List.cons_subset, List.nil_subset, and_true]
  exact piece_857_mem

theorem linked_11373 : Linked cell_11373 pieces := by
  apply Linked.of_piece piece_1396 piece_1396_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11373, List.cons_subset, List.nil_subset, and_true]
  exact piece_857_mem

theorem linked_11374 : Linked cell_11374 pieces := by
  apply Linked.of_piece piece_1396 piece_1396_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11374, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_856_mem, piece_857_mem⟩

theorem linked_11375 : Linked cell_11375 pieces := by
  apply Linked.of_piece piece_1396 piece_1396_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11375, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_855_mem, piece_856_mem⟩

theorem linked_11376 : Linked cell_11376 pieces := by
  apply Linked.of_piece piece_1397 piece_1397_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11376, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_856_mem, piece_857_mem⟩

theorem linked_11377 : Linked cell_11377 pieces := by
  apply Linked.of_piece piece_1397 piece_1397_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11377, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_855_mem, piece_856_mem⟩

theorem linked_11378 : Linked cell_11378 pieces := by
  apply Linked.of_piece piece_1397 piece_1397_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11378, List.cons_subset, List.nil_subset, and_true]
  exact piece_855_mem

theorem linked_11379 : Linked cell_11379 pieces := by
  apply Linked.of_piece piece_1397 piece_1397_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11379, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_854_mem, piece_855_mem⟩

theorem linked_11380 : Linked cell_11380 pieces := by
  apply Linked.of_piece piece_1398 piece_1398_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11380, List.cons_subset, List.nil_subset, and_true]
  exact piece_855_mem

theorem linked_11381 : Linked cell_11381 pieces := by
  apply Linked.of_piece piece_1398 piece_1398_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11381, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_854_mem, piece_855_mem⟩

theorem linked_11382 : Linked cell_11382 pieces := by
  apply Linked.of_piece piece_1399 piece_1399_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11382, List.cons_subset, List.nil_subset, and_true]
  exact piece_854_mem

theorem linked_11383 : Linked cell_11383 pieces := by
  apply Linked.of_piece piece_1399 piece_1399_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11383, List.cons_subset, List.nil_subset, and_true]
  exact piece_854_mem

theorem linked_11384 : Linked cell_11384 pieces := by
  apply Linked.of_piece piece_1400 piece_1400_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11384, List.cons_subset, List.nil_subset, and_true]
  exact piece_854_mem

theorem linked_11385 : Linked cell_11385 pieces := by
  apply Linked.of_piece piece_1400 piece_1400_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11385, List.cons_subset, List.nil_subset, and_true]
  exact piece_854_mem

theorem linked_11386 : Linked cell_11386 pieces := by
  apply Linked.of_piece piece_1400 piece_1400_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11386, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_853_mem, piece_854_mem⟩

theorem linked_11387 : Linked cell_11387 pieces := by
  apply Linked.of_piece piece_1400 piece_1400_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11387, List.cons_subset, List.nil_subset, and_true]
  exact piece_853_mem

theorem linked_11388 : Linked cell_11388 pieces := by
  apply Linked.of_piece piece_1401 piece_1401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11388, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_853_mem, piece_854_mem⟩

theorem linked_11389 : Linked cell_11389 pieces := by
  apply Linked.of_piece piece_1401 piece_1401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11389, List.cons_subset, List.nil_subset, and_true]
  exact piece_853_mem

theorem linked_11390 : Linked cell_11390 pieces := by
  apply Linked.of_piece piece_1401 piece_1401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11390, List.cons_subset, List.nil_subset, and_true]
  exact piece_853_mem

theorem linked_11391 : Linked cell_11391 pieces := by
  apply Linked.of_piece piece_1401 piece_1401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11391, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_852_mem, piece_853_mem⟩

theorem linked_11392 : Linked cell_11392 pieces := by
  apply Linked.of_piece piece_1402 piece_1402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11392, List.cons_subset, List.nil_subset, and_true]
  exact piece_853_mem

theorem linked_11393 : Linked cell_11393 pieces := by
  apply Linked.of_piece piece_1402 piece_1402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11393, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_852_mem, piece_853_mem⟩

theorem linked_11394 : Linked cell_11394 pieces := by
  apply Linked.of_piece piece_1402 piece_1402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11394, List.cons_subset, List.nil_subset, and_true]
  exact piece_852_mem

theorem linked_11395 : Linked cell_11395 pieces := by
  apply Linked.of_piece piece_1402 piece_1402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11395, List.cons_subset, List.nil_subset, and_true]
  exact piece_852_mem

theorem linked_11396 : Linked cell_11396 pieces := by
  apply Linked.of_piece piece_1403 piece_1403_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11396, List.cons_subset, List.nil_subset, and_true]
  exact piece_852_mem

theorem linked_11397 : Linked cell_11397 pieces := by
  apply Linked.of_piece piece_1403 piece_1403_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11397, List.cons_subset, List.nil_subset, and_true]
  exact piece_852_mem

theorem linked_11398 : Linked cell_11398 pieces := by
  apply Linked.of_piece piece_1403 piece_1403_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11398, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_851_mem, piece_852_mem⟩

theorem linked_11399 : Linked cell_11399 pieces := by
  apply Linked.of_piece piece_1403 piece_1403_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11399, List.cons_subset, List.nil_subset, and_true]
  exact piece_851_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0227.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0227.cells,List.forall_mem_cons]
  exact ⟨linked_11350, linked_11351, linked_11352, linked_11353, linked_11354, linked_11355, linked_11356, linked_11357, linked_11358, linked_11359, linked_11360, linked_11361, linked_11362, linked_11363, linked_11364, linked_11365, linked_11366, linked_11367, linked_11368, linked_11369, linked_11370, linked_11371, linked_11372, linked_11373, linked_11374, linked_11375, linked_11376, linked_11377, linked_11378, linked_11379, linked_11380, linked_11381, linked_11382, linked_11383, linked_11384, linked_11385, linked_11386, linked_11387, linked_11388, linked_11389, linked_11390, linked_11391, linked_11392, linked_11393, linked_11394, linked_11395, linked_11396, linked_11397, linked_11398, linked_11399, by simp⟩

theorem covered : covers (118450000000000011 / 200000000000000000 : ℚ) (59850000000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0227.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0227
