import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0226
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(7325000000000001 / 12500000000000000 : ℚ), (117225000000000013 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (14112249725343 / 25000000000000 : ℚ)
  w := (3508215003907 / 2500000000000 : ℚ)
  center := (234425000000000029 / 400000000000000000 : ℚ)
  supportValue := (221195006266759 / 625000000000000 : ℚ)
  supportSlope := (-7150207845799419 / 5000000000000000 : ℚ)
  oldCenter := (221195006266759 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1377
  oldLo := (8825000000000001 / 25000000000000000 : ℚ)
  oldHi := (8837500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_869]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_11300 : Cell := { cellDefaults with
  oldLo := (8837500000000001 / 25000000000000000 : ℚ)
  oldHi := (8862500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_870, piece_871]
}

noncomputable def cell_11301 : Cell := { cellDefaults with
  domain := ⟨(117225000000000013 / 200000000000000000 : ℚ), (11725000000000001 / 20000000000000000 : ℚ)⟩
  center := (234475000000000023 / 400000000000000000 : ℚ)
  supportValue := (3537331070957447 / 10000000000000000 : ℚ)
  supportSlope := (-14284327520856557 / 10000000000000000 : ℚ)
  oldCenter := (3537331070957447 / 10000000000000000 : ℚ)
  oldLo := (8837500000000001 / 25000000000000000 : ℚ)
  oldHi := (8850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_870]
}

noncomputable def cell_11302 : Cell := { cellDefaults with
  domain := ⟨(11725000000000001 / 20000000000000000 : ℚ), (117275000000000007 / 200000000000000000 : ℚ)⟩
  center := (234525000000000017 / 400000000000000000 : ℚ)
  supportValue := (2209718133042881 / 6250000000000000 : ℚ)
  supportSlope := (-14271318388010037 / 10000000000000000 : ℚ)
  oldCenter := (2209718133042881 / 6250000000000000 : ℚ)
  oldHi := (8850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_869, piece_870]
}

noncomputable def cell_11303 : Cell := { cellDefaults with
  domain := ⟨(117275000000000007 / 200000000000000000 : ℚ), (29325000000000001 / 50000000000000000 : ℚ)⟩
  center := (234575000000000011 / 400000000000000000 : ℚ)
  supportValue := (8834406572693279 / 25000000000000000 : ℚ)
  supportSlope := (-7134038895860473 / 5000000000000000 : ℚ)
  oldCenter := (8834406572693279 / 25000000000000000 : ℚ)
  oldPieces := [piece_869]
}

noncomputable def cell_11304 : Cell := { cellDefaults with
  domain := ⟨(29325000000000001 / 50000000000000000 : ℚ), (117325000000000007 / 200000000000000000 : ℚ)⟩
  r := (7052583060669 / 12500000000000 : ℚ)
  w := (876863421799 / 625000000000 : ℚ)
  center := (234625000000000011 / 400000000000000000 : ℚ)
  supportValue := (353568740110071 / 1000000000000000 : ℚ)
  supportSlope := (-14264068878169733 / 10000000000000000 : ℚ)
  oldCenter := (353568740110071 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1378
  oldHi := (8850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_869, piece_870]
}

noncomputable def cell_11305 : Cell := { cellDefaults with
  domain := ⟨(117325000000000007 / 200000000000000000 : ℚ), (11735000000000001 / 20000000000000000 : ℚ)⟩
  r := (7052583060669 / 12500000000000 : ℚ)
  w := (876863421799 / 625000000000 : ℚ)
  center := (234675000000000017 / 400000000000000000 : ℚ)
  supportValue := (17669509611676007 / 50000000000000000 : ℚ)
  supportSlope := (-3565523092658579 / 2500000000000000 : ℚ)
  oldCenter := (17669509611676007 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1378
  oldPieces := [piece_869]
}

noncomputable def cell_11306 : Cell := { cellDefaults with
  domain := ⟨(11735000000000001 / 20000000000000000 : ℚ), (117375000000000013 / 200000000000000000 : ℚ)⟩
  r := (7052583060669 / 12500000000000 : ℚ)
  w := (876863421799 / 625000000000 : ℚ)
  center := (234725000000000023 / 400000000000000000 : ℚ)
  supportValue := (110378755334719 / 312500000000000 : ℚ)
  supportSlope := (-7122970350383041 / 5000000000000000 : ℚ)
  oldCenter := (110378755334719 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1378
  oldPieces := [piece_869]
}

noncomputable def cell_11307 : Cell := { cellDefaults with
  domain := ⟨(117375000000000013 / 200000000000000000 : ℚ), (7337500000000001 / 12500000000000000 : ℚ)⟩
  r := (7052583060669 / 12500000000000 : ℚ)
  w := (876863421799 / 625000000000 : ℚ)
  center := (234775000000000029 / 400000000000000000 : ℚ)
  supportValue := (7060685810761369 / 20000000000000000 : ℚ)
  supportSlope := (-1423481768575037 / 1000000000000000 : ℚ)
  oldCenter := (7060685810761369 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1378
  oldLo := (17645251396648043 / 50000000000000000 : ℚ)
  oldPieces := [piece_868, piece_869]
}

noncomputable def cell_11308 : Cell := { cellDefaults with
  domain := ⟨(7337500000000001 / 12500000000000000 : ℚ), (117425000000000013 / 200000000000000000 : ℚ)⟩
  r := (11278472543619 / 20000000000000 : ℚ)
  w := (7013388745833 / 5000000000000 : ℚ)
  center := (234825000000000029 / 400000000000000000 : ℚ)
  supportValue := (35322577627856583 / 100000000000000000 : ℚ)
  supportSlope := (-142399527341847 / 100000000000000 : ℚ)
  oldCenter := (35322577627856583 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1379
  oldPieces := [piece_869]
}

noncomputable def cell_11309 : Cell := { cellDefaults with
  domain := ⟨(117425000000000013 / 200000000000000000 : ℚ), (11745000000000001 / 20000000000000000 : ℚ)⟩
  r := (11278472543619 / 20000000000000 : ℚ)
  w := (7013388745833 / 5000000000000 : ℚ)
  center := (234875000000000023 / 400000000000000000 : ℚ)
  supportValue := (35304812452911893 / 100000000000000000 : ℚ)
  supportSlope := (-14227589883263931 / 10000000000000000 : ℚ)
  oldCenter := (35304812452911893 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1379
  oldLo := (17645251396648043 / 50000000000000000 : ℚ)
  oldPieces := [piece_868, piece_869]
}

noncomputable def cell_11310 : Cell := { cellDefaults with
  domain := ⟨(11745000000000001 / 20000000000000000 : ℚ), (117475000000000007 / 200000000000000000 : ℚ)⟩
  r := (11278472543619 / 20000000000000 : ℚ)
  w := (7013388745833 / 5000000000000 : ℚ)
  center := (234925000000000017 / 400000000000000000 : ℚ)
  supportValue := (7057400653020559 / 20000000000000000 : ℚ)
  supportSlope := (-71119106946513 / 50000000000000 : ℚ)
  oldCenter := (7057400653020559 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1379
  oldLo := (8812500000000001 / 25000000000000000 : ℚ)
  oldHi := (8825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_867, piece_868]
}

noncomputable def cell_11311 : Cell := { cellDefaults with
  domain := ⟨(117475000000000007 / 200000000000000000 : ℚ), (29375000000000001 / 50000000000000000 : ℚ)⟩
  r := (11278472543619 / 20000000000000 : ℚ)
  w := (7013388745833 / 5000000000000 : ℚ)
  center := (234975000000000011 / 400000000000000000 : ℚ)
  supportValue := (1763461678037287 / 5000000000000000 : ℚ)
  supportSlope := (-7103857849429537 / 5000000000000000 : ℚ)
  oldCenter := (1763461678037287 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1379
  oldLo := (8812500000000001 / 25000000000000000 : ℚ)
  oldHi := (17645251396648043 / 50000000000000000 : ℚ)
  oldPieces := [piece_867]
}

noncomputable def cell_11312 : Cell := { cellDefaults with
  domain := ⟨(29375000000000001 / 50000000000000000 : ℚ), (117525000000000007 / 200000000000000000 : ℚ)⟩
  r := (14091023001719 / 25000000000000 : ℚ)
  w := (14023744542091 / 10000000000000 : ℚ)
  center := (235025000000000011 / 400000000000000000 : ℚ)
  supportValue := (882209534892277 / 2500000000000000 : ℚ)
  supportSlope := (-1421785505771929 / 1000000000000000 : ℚ)
  oldCenter := (882209534892277 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1380
  oldLo := (8812500000000001 / 25000000000000000 : ℚ)
  oldHi := (8825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_867, piece_868]
}

noncomputable def cell_11313 : Cell := { cellDefaults with
  domain := ⟨(117525000000000007 / 200000000000000000 : ℚ), (11755000000000001 / 20000000000000000 : ℚ)⟩
  r := (14091023001719 / 25000000000000 : ℚ)
  w := (14023744542091 / 10000000000000 : ℚ)
  center := (235075000000000017 / 400000000000000000 : ℚ)
  supportValue := (3527061914269097 / 10000000000000000 : ℚ)
  supportSlope := (-177522007804277 / 125000000000000 : ℚ)
  oldCenter := (3527061914269097 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1380
  oldLo := (8812500000000001 / 25000000000000000 : ℚ)
  oldHi := (17645251396648043 / 50000000000000000 : ℚ)
  oldPieces := [piece_867]
}

noncomputable def cell_11314 : Cell := { cellDefaults with
  domain := ⟨(11755000000000001 / 20000000000000000 : ℚ), (117575000000000013 / 200000000000000000 : ℚ)⟩
  r := (14091023001719 / 25000000000000 : ℚ)
  w := (14023744542091 / 10000000000000 : ℚ)
  center := (235125000000000023 / 400000000000000000 : ℚ)
  supportValue := (8813225410266641 / 25000000000000000 : ℚ)
  supportSlope := (-1419117474552863 / 1000000000000000 : ℚ)
  oldCenter := (8813225410266641 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1380
  oldLo := (8800000000000001 / 25000000000000000 : ℚ)
  oldHi := (17645251396648043 / 50000000000000000 : ℚ)
  oldPieces := [piece_866, piece_867]
}

noncomputable def cell_11315 : Cell := { cellDefaults with
  domain := ⟨(117575000000000013 / 200000000000000000 : ℚ), (7350000000000001 / 12500000000000000 : ℚ)⟩
  r := (14091023001719 / 25000000000000 : ℚ)
  w := (14023744542091 / 10000000000000 : ℚ)
  center := (235175000000000029 / 400000000000000000 : ℚ)
  supportValue := (35235137968215907 / 100000000000000000 : ℚ)
  supportSlope := (-1418574193915497 / 1000000000000000 : ℚ)
  oldCenter := (35235137968215907 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1380
  oldLo := (8800000000000001 / 25000000000000000 : ℚ)
  oldHi := (8812500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_866]
}

noncomputable def cell_11316 : Cell := { cellDefaults with
  domain := ⟨(7350000000000001 / 12500000000000000 : ℚ), (117625000000000013 / 200000000000000000 : ℚ)⟩
  r := (28167926966757 / 50000000000000 : ℚ)
  w := (14020718851833 / 10000000000000 : ℚ)
  center := (235225000000000029 / 400000000000000000 : ℚ)
  supportValue := (440678398215961 / 1250000000000000 : ℚ)
  supportSlope := (-7091986770860499 / 5000000000000000 : ℚ)
  oldCenter := (440678398215961 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1381
  oldLo := (8800000000000001 / 25000000000000000 : ℚ)
  oldHi := (17645251396648043 / 50000000000000000 : ℚ)
  oldPieces := [piece_866, piece_867]
}

noncomputable def cell_11317 : Cell := { cellDefaults with
  domain := ⟨(117625000000000013 / 200000000000000000 : ℚ), (11765000000000001 / 20000000000000000 : ℚ)⟩
  r := (28167926966757 / 50000000000000 : ℚ)
  w := (14020718851833 / 10000000000000 : ℚ)
  center := (235275000000000023 / 400000000000000000 : ℚ)
  supportValue := (3523651717497921 / 10000000000000000 : ℚ)
  supportSlope := (-14179802126951837 / 10000000000000000 : ℚ)
  oldCenter := (3523651717497921 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1381
  oldLo := (8800000000000001 / 25000000000000000 : ℚ)
  oldHi := (8812500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_866]
}

noncomputable def cell_11318 : Cell := { cellDefaults with
  domain := ⟨(11765000000000001 / 20000000000000000 : ℚ), (117675000000000007 / 200000000000000000 : ℚ)⟩
  r := (28167926966757 / 50000000000000 : ℚ)
  w := (14020718851833 / 10000000000000 : ℚ)
  center := (235325000000000017 / 400000000000000000 : ℚ)
  supportValue := (17609401231241703 / 50000000000000000 : ℚ)
  supportSlope := (-2832748988508611 / 2000000000000000 : ℚ)
  oldCenter := (17609401231241703 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1381
  oldLo := (8800000000000001 / 25000000000000000 : ℚ)
  oldHi := (8812500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_866]
}

noncomputable def cell_11319 : Cell := { cellDefaults with
  domain := ⟨(117675000000000007 / 200000000000000000 : ℚ), (29425000000000001 / 50000000000000000 : ℚ)⟩
  r := (28167926966757 / 50000000000000 : ℚ)
  w := (14020718851833 / 10000000000000 : ℚ)
  center := (235375000000000011 / 400000000000000000 : ℚ)
  supportValue := (3520113242335539 / 10000000000000000 : ℚ)
  supportSlope := (-7077406450198569 / 5000000000000000 : ℚ)
  oldCenter := (3520113242335539 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1381
  oldLo := (35150000000000003 / 100000000000000000 : ℚ)
  oldHi := (8812500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_865, piece_866]
}

noncomputable def cell_11320 : Cell := { cellDefaults with
  domain := ⟨(29425000000000001 / 50000000000000000 : ℚ), (117725000000000007 / 200000000000000000 : ℚ)⟩
  r := (56307651119799 / 100000000000000 : ℚ)
  w := (3504425979647 / 2500000000000 : ℚ)
  center := (235425000000000011 / 400000000000000000 : ℚ)
  supportValue := (7044031082858787 / 20000000000000000 : ℚ)
  supportSlope := (-2831559164604529 / 2000000000000000 : ℚ)
  oldCenter := (7044031082858787 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1382
  oldLo := (8800000000000001 / 25000000000000000 : ℚ)
  oldHi := (8812500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_866]
}

noncomputable def cell_11321 : Cell := { cellDefaults with
  domain := ⟨(117725000000000007 / 200000000000000000 : ℚ), (11775000000000001 / 20000000000000000 : ℚ)⟩
  r := (56307651119799 / 100000000000000 : ℚ)
  w := (3504425979647 / 2500000000000 : ℚ)
  center := (235475000000000017 / 400000000000000000 : ℚ)
  supportValue := (3520249280480021 / 10000000000000000 : ℚ)
  supportSlope := (-1414763379216141 / 1000000000000000 : ℚ)
  oldCenter := (3520249280480021 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1382
  oldLo := (35150000000000003 / 100000000000000000 : ℚ)
  oldHi := (8812500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_865, piece_866]
}

noncomputable def cell_11322 : Cell := { cellDefaults with
  domain := ⟨(11775000000000001 / 20000000000000000 : ℚ), (117775000000000013 / 200000000000000000 : ℚ)⟩
  r := (56307651119799 / 100000000000000 : ℚ)
  w := (3504425979647 / 2500000000000 : ℚ)
  center := (235525000000000023 / 400000000000000000 : ℚ)
  supportValue := (8796195885367969 / 25000000000000000 : ℚ)
  supportSlope := (-2828381226569137 / 2000000000000000 : ℚ)
  oldCenter := (8796195885367969 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1382
  oldLo := (35150000000000003 / 100000000000000000 : ℚ)
  oldHi := (8800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_865]
}

noncomputable def cell_11323 : Cell := { cellDefaults with
  domain := ⟨(117775000000000013 / 200000000000000000 : ℚ), (7362500000000001 / 12500000000000000 : ℚ)⟩
  r := (56307651119799 / 100000000000000 : ℚ)
  w := (3504425979647 / 2500000000000 : ℚ)
  center := (235575000000000029 / 400000000000000000 : ℚ)
  supportValue := (140668464709201 / 400000000000000 : ℚ)
  supportSlope := (-14125883634273333 / 10000000000000000 : ℚ)
  oldCenter := (140668464709201 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1382
  oldLo := (35150000000000003 / 100000000000000000 : ℚ)
  oldHi := (8800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_865]
}

noncomputable def cell_11324 : Cell := { cellDefaults with
  domain := ⟨(7362500000000001 / 12500000000000000 : ℚ), (117825000000000013 / 200000000000000000 : ℚ)⟩
  r := (56279478570691 / 100000000000000 : ℚ)
  w := (1751836546363 / 1250000000000 : ℚ)
  center := (235625000000000029 / 400000000000000000 : ℚ)
  supportValue := (703722828365293 / 2000000000000000 : ℚ)
  supportSlope := (-1413598064646307 / 1000000000000000 : ℚ)
  oldCenter := (703722828365293 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1383
  oldLo := (35150000000000003 / 100000000000000000 : ℚ)
  oldHi := (8800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_865]
}

noncomputable def cell_11325 : Cell := { cellDefaults with
  domain := ⟨(117825000000000013 / 200000000000000000 : ℚ), (11785000000000001 / 20000000000000000 : ℚ)⟩
  r := (56279478570691 / 100000000000000 : ℚ)
  w := (1751836546363 / 1250000000000 : ℚ)
  center := (235675000000000023 / 400000000000000000 : ℚ)
  supportValue := (3516848145333819 / 10000000000000000 : ℚ)
  supportSlope := (-14119970315428803 / 10000000000000000 : ℚ)
  oldCenter := (3516848145333819 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1383
  oldLo := (35150000000000003 / 100000000000000000 : ℚ)
  oldHi := (8800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_865]
}

noncomputable def cell_11326 : Cell := { cellDefaults with
  domain := ⟨(11785000000000001 / 20000000000000000 : ℚ), (117875000000000007 / 200000000000000000 : ℚ)⟩
  r := (56279478570691 / 100000000000000 : ℚ)
  w := (1751836546363 / 1250000000000 : ℚ)
  center := (235725000000000017 / 400000000000000000 : ℚ)
  supportValue := (4393858258510467 / 12500000000000000 : ℚ)
  supportSlope := (-7055671330929727 / 5000000000000000 : ℚ)
  oldCenter := (4393858258510467 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1383
  oldLo := (35100000000000003 / 100000000000000000 : ℚ)
  oldHi := (8800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_864, piece_865]
}

noncomputable def cell_11327 : Cell := { cellDefaults with
  domain := ⟨(117875000000000007 / 200000000000000000 : ℚ), (29475000000000001 / 50000000000000000 : ℚ)⟩
  r := (56279478570691 / 100000000000000 : ℚ)
  w := (1751836546363 / 1250000000000 : ℚ)
  center := (235775000000000011 / 400000000000000000 : ℚ)
  supportValue := (2195825135182939 / 6250000000000000 : ℚ)
  supportSlope := (-3526045591835537 / 2500000000000000 : ℚ)
  oldCenter := (2195825135182939 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1383
  oldLo := (35100000000000003 / 100000000000000000 : ℚ)
  oldHi := (35150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_864]
}

noncomputable def cell_11328 : Cell := { cellDefaults with
  domain := ⟨(29475000000000001 / 50000000000000000 : ℚ), (117925000000000007 / 200000000000000000 : ℚ)⟩
  r := (2812566913723 / 5000000000000 : ℚ)
  w := (350292211081 / 250000000000 : ℚ)
  center := (235825000000000011 / 400000000000000000 : ℚ)
  supportValue := (35152215397340647 / 100000000000000000 : ℚ)
  supportSlope := (-17630235630537 / 12500000000000 : ℚ)
  oldCenter := (35152215397340647 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1384
  oldLo := (35100000000000003 / 100000000000000000 : ℚ)
  oldHi := (8800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_864, piece_865]
}

noncomputable def cell_11329 : Cell := { cellDefaults with
  domain := ⟨(117925000000000007 / 200000000000000000 : ℚ), (11795000000000001 / 20000000000000000 : ℚ)⟩
  r := (2812566913723 / 5000000000000 : ℚ)
  w := (350292211081 / 250000000000 : ℚ)
  center := (235875000000000017 / 400000000000000000 : ℚ)
  supportValue := (878364010595057 / 2500000000000000 : ℚ)
  supportSlope := (-881142707443333 / 625000000000000 : ℚ)
  oldCenter := (878364010595057 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1384
  oldLo := (35100000000000003 / 100000000000000000 : ℚ)
  oldHi := (35150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_864]
}

noncomputable def cell_11330 : Cell := { cellDefaults with
  domain := ⟨(11795000000000001 / 20000000000000000 : ℚ), (117975000000000013 / 200000000000000000 : ℚ)⟩
  r := (2812566913723 / 5000000000000 : ℚ)
  w := (350292211081 / 250000000000 : ℚ)
  center := (235925000000000023 / 400000000000000000 : ℚ)
  supportValue := (35116947558527867 / 100000000000000000 : ℚ)
  supportSlope := (-14082308213463877 / 10000000000000000 : ℚ)
  oldCenter := (35116947558527867 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1384
  oldLo := (35100000000000003 / 100000000000000000 : ℚ)
  oldHi := (35150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_864]
}

noncomputable def cell_11331 : Cell := { cellDefaults with
  domain := ⟨(117975000000000013 / 200000000000000000 : ℚ), (7375000000000001 / 12500000000000000 : ℚ)⟩
  r := (2812566913723 / 5000000000000 : ℚ)
  w := (350292211081 / 250000000000 : ℚ)
  center := (235975000000000029 / 400000000000000000 : ℚ)
  supportValue := (3509937843548801 / 10000000000000000 : ℚ)
  supportSlope := (-7037550383301161 / 5000000000000000 : ℚ)
  oldCenter := (3509937843548801 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1384
  oldLo := (35050000000000003 / 100000000000000000 : ℚ)
  oldHi := (35150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_863, piece_864]
}

noncomputable def cell_11332 : Cell := { cellDefaults with
  domain := ⟨(7375000000000001 / 12500000000000000 : ℚ), (118025000000000013 / 200000000000000000 : ℚ)⟩
  r := (14055808177789 / 25000000000000 : ℚ)
  w := (14008694930857 / 10000000000000 : ℚ)
  center := (236025000000000029 / 400000000000000000 : ℚ)
  supportValue := (1755914038882279 / 5000000000000000 : ℚ)
  supportSlope := (-3519100086851057 / 2500000000000000 : ℚ)
  oldCenter := (1755914038882279 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1385
  oldLo := (35100000000000003 / 100000000000000000 : ℚ)
  oldHi := (35150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_864]
}

noncomputable def cell_11333 : Cell := { cellDefaults with
  domain := ⟨(118025000000000013 / 200000000000000000 : ℚ), (11805000000000001 / 20000000000000000 : ℚ)⟩
  r := (14055808177789 / 25000000000000 : ℚ)
  w := (14008694930857 / 10000000000000 : ℚ)
  center := (236075000000000023 / 400000000000000000 : ℚ)
  supportValue := (3510071979033087 / 10000000000000000 : ℚ)
  supportSlope := (-14067968247354923 / 10000000000000000 : ℚ)
  oldCenter := (3510071979033087 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1385
  oldLo := (35050000000000003 / 100000000000000000 : ℚ)
  oldHi := (35150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_863, piece_864]
}

noncomputable def cell_11334 : Cell := { cellDefaults with
  domain := ⟨(11805000000000001 / 20000000000000000 : ℚ), (118075000000000007 / 200000000000000000 : ℚ)⟩
  r := (14055808177789 / 25000000000000 : ℚ)
  w := (14008694930857 / 10000000000000 : ℚ)
  center := (236125000000000017 / 400000000000000000 : ℚ)
  supportValue := (3508311008682647 / 10000000000000000 : ℚ)
  supportSlope := (-562429685164357 / 400000000000000 : ℚ)
  oldCenter := (3508311008682647 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1385
  oldLo := (35050000000000003 / 100000000000000000 : ℚ)
  oldHi := (35100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_863]
}

noncomputable def cell_11335 : Cell := { cellDefaults with
  domain := ⟨(118075000000000007 / 200000000000000000 : ℚ), (29525000000000001 / 50000000000000000 : ℚ)⟩
  r := (14055808177789 / 25000000000000 : ℚ)
  w := (14008694930857 / 10000000000000 : ℚ)
  center := (236175000000000011 / 400000000000000000 : ℚ)
  supportValue := (876638603134751 / 2500000000000000 : ℚ)
  supportSlope := (-14044803274108637 / 10000000000000000 : ℚ)
  oldCenter := (876638603134751 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1385
  oldLo := (35050000000000003 / 100000000000000000 : ℚ)
  oldHi := (35100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_863]
}

noncomputable def cell_11336 : Cell := { cellDefaults with
  domain := ⟨(29525000000000001 / 50000000000000000 : ℚ), (59061312849162011 / 100000000000000000 : ℚ)⟩
  r := (56195157173671 / 100000000000000 : ℚ)
  w := (14005705253261 / 10000000000000 : ℚ)
  center := (118111312849162013 / 200000000000000000 : ℚ)
  supportValue := (8771320371183959 / 25000000000000000 : ℚ)
  supportSlope := (-7027807171513639 / 5000000000000000 : ℚ)
  oldCenter := (8771320371183959 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1386
  oldLo := (35050000000000003 / 100000000000000000 : ℚ)
  oldHi := (35100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_863]
}

noncomputable def cell_11337 : Cell := { cellDefaults with
  domain := ⟨(59061312849162011 / 100000000000000000 : ℚ), (2953631284916201 / 5000000000000000 : ℚ)⟩
  r := (56195157173671 / 100000000000000 : ℚ)
  w := (14005705253261 / 10000000000000 : ℚ)
  center := (118133938547486031 / 200000000000000000 : ℚ)
  supportValue := (2191836796192069 / 6250000000000000 : ℚ)
  supportSlope := (-3510298656418609 / 2500000000000000 : ℚ)
  oldCenter := (2191836796192069 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1386
  oldLo := (35050000000000003 / 100000000000000000 : ℚ)
  oldHi := (35100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_863]
}

noncomputable def cell_11338 : Cell := { cellDefaults with
  domain := ⟨(2953631284916201 / 5000000000000000 : ℚ), (29543156424581007 / 50000000000000000 : ℚ)⟩
  r := (56195157173671 / 100000000000000 : ℚ)
  w := (14005705253261 / 10000000000000 : ℚ)
  center := (59079469273743017 / 100000000000000000 : ℚ)
  supportValue := (3505187170752959 / 10000000000000000 : ℚ)
  supportSlope := (-1753986068022049 / 1250000000000000 : ℚ)
  oldCenter := (3505187170752959 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1387
  oldLo := (35000000000000003 / 100000000000000000 : ℚ)
  oldHi := (35100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_862, piece_863]
}

noncomputable def cell_11339 : Cell := { cellDefaults with
  domain := ⟨(29543156424581007 / 50000000000000000 : ℚ), (7387500000000001 / 12500000000000000 : ℚ)⟩
  r := (56195157173671 / 100000000000000 : ℚ)
  w := (14005705253261 / 10000000000000 : ℚ)
  center := (59093156424581011 / 100000000000000000 : ℚ)
  supportValue := (140130667313159 / 400000000000000 : ℚ)
  supportSlope := (-14024130385566163 / 10000000000000000 : ℚ)
  oldCenter := (140130667313159 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1387
  oldLo := (35000000000000003 / 100000000000000000 : ℚ)
  oldHi := (35050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_862]
}

noncomputable def cell_11340 : Cell := { cellDefaults with
  domain := ⟨(7387500000000001 / 12500000000000000 : ℚ), (236450000000000027 / 400000000000000000 : ℚ)⟩
  r := (56167114509687 / 100000000000000 : ℚ)
  w := (280054456637 / 200000000000 : ℚ)
  center := (472850000000000059 / 800000000000000000 : ℚ)
  supportValue := (17525351462138247 / 50000000000000000 : ℚ)
  supportSlope := (-438271474220197 / 312500000000000 : ℚ)
  oldCenter := (17525351462138247 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1388
  oldLo := (35000000000000003 / 100000000000000000 : ℚ)
  oldHi := (35100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_862, piece_863]
}

noncomputable def cell_11341 : Cell := { cellDefaults with
  domain := ⟨(236450000000000027 / 400000000000000000 : ℚ), (118250000000000011 / 200000000000000000 : ℚ)⟩
  r := (56167114509687 / 100000000000000 : ℚ)
  w := (280054456637 / 200000000000 : ℚ)
  center := (472950000000000049 / 800000000000000000 : ℚ)
  supportValue := (437914341326827 / 1250000000000000 : ℚ)
  supportSlope := (-14017514006986767 / 10000000000000000 : ℚ)
  oldCenter := (437914341326827 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1388
  oldLo := (35000000000000003 / 100000000000000000 : ℚ)
  oldHi := (35050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_862]
}

noncomputable def cell_11342 : Cell := { cellDefaults with
  domain := ⟨(118250000000000011 / 200000000000000000 : ℚ), (236550000000000017 / 400000000000000000 : ℚ)⟩
  r := (56167114509687 / 100000000000000 : ℚ)
  w := (280054456637 / 200000000000 : ℚ)
  center := (473050000000000039 / 800000000000000000 : ℚ)
  supportValue := (3501563534924753 / 10000000000000000 : ℚ)
  supportSlope := (-1400162413196211 / 1000000000000000 : ℚ)
  oldCenter := (3501563534924753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1388
  oldLo := (35000000000000003 / 100000000000000000 : ℚ)
  oldHi := (35050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_862]
}

noncomputable def cell_11343 : Cell := { cellDefaults with
  domain := ⟨(236550000000000017 / 400000000000000000 : ℚ), (59150000000000003 / 100000000000000000 : ℚ)⟩
  r := (56167114509687 / 100000000000000 : ℚ)
  w := (280054456637 / 200000000000 : ℚ)
  center := (473150000000000029 / 800000000000000000 : ℚ)
  supportValue := (17499082768623253 / 50000000000000000 : ℚ)
  supportSlope := (-1399566872356457 / 1000000000000000 : ℚ)
  oldCenter := (17499082768623253 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1388
  oldLo := (34950000000000003 / 100000000000000000 : ℚ)
  oldHi := (35050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_861, piece_862]
}

noncomputable def cell_11344 : Cell := { cellDefaults with
  domain := ⟨(59150000000000003 / 100000000000000000 : ℚ), (236650000000000017 / 400000000000000000 : ℚ)⟩
  r := (7017388168369 / 12500000000000 : ℚ)
  w := (6999874951371 / 5000000000000 : ℚ)
  center := (473250000000000029 / 800000000000000000 : ℚ)
  supportValue := (140067804027407 / 400000000000000 : ℚ)
  supportSlope := (-699787930762793 / 500000000000000 : ℚ)
  oldCenter := (140067804027407 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1389
  oldLo := (35000000000000003 / 100000000000000000 : ℚ)
  oldHi := (35050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_862]
}

noncomputable def cell_11345 : Cell := { cellDefaults with
  domain := ⟨(236650000000000017 / 400000000000000000 : ℚ), (118350000000000011 / 200000000000000000 : ℚ)⟩
  r := (7017388168369 / 12500000000000 : ℚ)
  w := (6999874951371 / 5000000000000 : ℚ)
  center := (473350000000000039 / 800000000000000000 : ℚ)
  supportValue := (437493625785093 / 1250000000000000 : ℚ)
  supportSlope := (-3497145735415691 / 2500000000000000 : ℚ)
  oldCenter := (437493625785093 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1389
  oldLo := (34950000000000003 / 100000000000000000 : ℚ)
  oldHi := (35050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_861, piece_862]
}

noncomputable def cell_11346 : Cell := { cellDefaults with
  domain := ⟨(118350000000000011 / 200000000000000000 : ℚ), (236750000000000027 / 400000000000000000 : ℚ)⟩
  r := (7017388168369 / 12500000000000 : ℚ)
  w := (6999874951371 / 5000000000000 : ℚ)
  center := (473450000000000049 / 800000000000000000 : ℚ)
  supportValue := (699639604089371 / 2000000000000000 : ℚ)
  supportSlope := (-6990166792037311 / 5000000000000000 : ℚ)
  oldCenter := (699639604089371 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1389
  oldLo := (34950000000000003 / 100000000000000000 : ℚ)
  oldHi := (35000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_861]
}

noncomputable def cell_11347 : Cell := { cellDefaults with
  domain := ⟨(236750000000000027 / 400000000000000000 : ℚ), (7400000000000001 / 12500000000000000 : ℚ)⟩
  r := (7017388168369 / 12500000000000 : ℚ)
  w := (6999874951371 / 5000000000000 : ℚ)
  center := (473550000000000059 / 800000000000000000 : ℚ)
  supportValue := (699290293986359 / 2000000000000000 : ℚ)
  supportSlope := (-13964481764475447 / 10000000000000000 : ℚ)
  oldCenter := (699290293986359 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1389
  oldLo := (34950000000000003 / 100000000000000000 : ℚ)
  oldHi := (35000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_861]
}

noncomputable def cell_11348 : Cell := { cellDefaults with
  domain := ⟨(7400000000000001 / 12500000000000000 : ℚ), (236850000000000027 / 400000000000000000 : ℚ)⟩
  r := (56111127835293 / 100000000000000 : ℚ)
  w := (13996782891361 / 10000000000000 : ℚ)
  center := (473650000000000059 / 800000000000000000 : ℚ)
  supportValue := (3498329303679137 / 10000000000000000 : ℚ)
  supportSlope := (-3493621274240149 / 2500000000000000 : ℚ)
  oldCenter := (3498329303679137 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1390
  oldLo := (34950000000000003 / 100000000000000000 : ℚ)
  oldHi := (35000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_861]
}

noncomputable def cell_11349 : Cell := { cellDefaults with
  domain := ⟨(236850000000000027 / 400000000000000000 : ℚ), (118450000000000011 / 200000000000000000 : ℚ)⟩
  r := (56111127835293 / 100000000000000 : ℚ)
  w := (13996782891361 / 10000000000000 : ℚ)
  center := (473750000000000049 / 800000000000000000 : ℚ)
  supportValue := (874145870871747 / 2500000000000000 : ℚ)
  supportSlope := (-13958645072255367 / 10000000000000000 : ℚ)
  oldCenter := (874145870871747 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1390
  oldLo := (34950000000000003 / 100000000000000000 : ℚ)
  oldHi := (35000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_861]
}

theorem check_11300 : cell_11300.check = true := by
  decide +kernel

theorem check_11301 : cell_11301.check = true := by
  decide +kernel

theorem check_11302 : cell_11302.check = true := by
  decide +kernel

theorem check_11303 : cell_11303.check = true := by
  decide +kernel

theorem check_11304 : cell_11304.check = true := by
  decide +kernel

theorem check_11305 : cell_11305.check = true := by
  decide +kernel

theorem check_11306 : cell_11306.check = true := by
  decide +kernel

theorem check_11307 : cell_11307.check = true := by
  decide +kernel

theorem check_11308 : cell_11308.check = true := by
  decide +kernel

theorem check_11309 : cell_11309.check = true := by
  decide +kernel

theorem check_11310 : cell_11310.check = true := by
  decide +kernel

theorem check_11311 : cell_11311.check = true := by
  decide +kernel

theorem check_11312 : cell_11312.check = true := by
  decide +kernel

theorem check_11313 : cell_11313.check = true := by
  decide +kernel

theorem check_11314 : cell_11314.check = true := by
  decide +kernel

theorem check_11315 : cell_11315.check = true := by
  decide +kernel

theorem check_11316 : cell_11316.check = true := by
  decide +kernel

theorem check_11317 : cell_11317.check = true := by
  decide +kernel

theorem check_11318 : cell_11318.check = true := by
  decide +kernel

theorem check_11319 : cell_11319.check = true := by
  decide +kernel

theorem check_11320 : cell_11320.check = true := by
  decide +kernel

theorem check_11321 : cell_11321.check = true := by
  decide +kernel

theorem check_11322 : cell_11322.check = true := by
  decide +kernel

theorem check_11323 : cell_11323.check = true := by
  decide +kernel

theorem check_11324 : cell_11324.check = true := by
  decide +kernel

theorem check_11325 : cell_11325.check = true := by
  decide +kernel

theorem check_11326 : cell_11326.check = true := by
  decide +kernel

theorem check_11327 : cell_11327.check = true := by
  decide +kernel

theorem check_11328 : cell_11328.check = true := by
  decide +kernel

theorem check_11329 : cell_11329.check = true := by
  decide +kernel

theorem check_11330 : cell_11330.check = true := by
  decide +kernel

theorem check_11331 : cell_11331.check = true := by
  decide +kernel

theorem check_11332 : cell_11332.check = true := by
  decide +kernel

theorem check_11333 : cell_11333.check = true := by
  decide +kernel

theorem check_11334 : cell_11334.check = true := by
  decide +kernel

theorem check_11335 : cell_11335.check = true := by
  decide +kernel

theorem check_11336 : cell_11336.check = true := by
  decide +kernel

theorem check_11337 : cell_11337.check = true := by
  decide +kernel

theorem check_11338 : cell_11338.check = true := by
  decide +kernel

theorem check_11339 : cell_11339.check = true := by
  decide +kernel

theorem check_11340 : cell_11340.check = true := by
  decide +kernel

theorem check_11341 : cell_11341.check = true := by
  decide +kernel

theorem check_11342 : cell_11342.check = true := by
  decide +kernel

theorem check_11343 : cell_11343.check = true := by
  decide +kernel

theorem check_11344 : cell_11344.check = true := by
  decide +kernel

theorem check_11345 : cell_11345.check = true := by
  decide +kernel

theorem check_11346 : cell_11346.check = true := by
  decide +kernel

theorem check_11347 : cell_11347.check = true := by
  decide +kernel

theorem check_11348 : cell_11348.check = true := by
  decide +kernel

theorem check_11349 : cell_11349.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11300, cell_11301, cell_11302, cell_11303, cell_11304, cell_11305, cell_11306, cell_11307, cell_11308, cell_11309, cell_11310, cell_11311, cell_11312, cell_11313, cell_11314, cell_11315, cell_11316, cell_11317, cell_11318, cell_11319, cell_11320, cell_11321, cell_11322, cell_11323, cell_11324, cell_11325, cell_11326, cell_11327, cell_11328, cell_11329, cell_11330, cell_11331, cell_11332, cell_11333, cell_11334, cell_11335, cell_11336, cell_11337, cell_11338, cell_11339, cell_11340, cell_11341, cell_11342, cell_11343, cell_11344, cell_11345, cell_11346, cell_11347, cell_11348, cell_11349]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11300, check_11301, check_11302, check_11303, check_11304, check_11305, check_11306, check_11307, check_11308, check_11309, check_11310, check_11311, check_11312, check_11313, check_11314, check_11315, check_11316, check_11317, check_11318, check_11319, check_11320, check_11321, check_11322, check_11323, check_11324, check_11325, check_11326, check_11327, check_11328, check_11329, check_11330, check_11331, check_11332, check_11333, check_11334, check_11335, check_11336, check_11337, check_11338, check_11339, check_11340, check_11341, check_11342, check_11343, check_11344, check_11345, check_11346, check_11347, check_11348, check_11349, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0226

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0226
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0226
open AnalyticBounds.ExpressionCertificate

theorem linked_11300 : Linked cell_11300 pieces := by
  apply Linked.of_piece piece_1377 piece_1377_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11300, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_870_mem, piece_871_mem⟩

theorem linked_11301 : Linked cell_11301 pieces := by
  apply Linked.of_piece piece_1377 piece_1377_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11301, List.cons_subset, List.nil_subset, and_true]
  exact piece_870_mem

theorem linked_11302 : Linked cell_11302 pieces := by
  apply Linked.of_piece piece_1377 piece_1377_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11302, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_869_mem, piece_870_mem⟩

theorem linked_11303 : Linked cell_11303 pieces := by
  apply Linked.of_piece piece_1377 piece_1377_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11303, List.cons_subset, List.nil_subset, and_true]
  exact piece_869_mem

theorem linked_11304 : Linked cell_11304 pieces := by
  apply Linked.of_piece piece_1378 piece_1378_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11304, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_869_mem, piece_870_mem⟩

theorem linked_11305 : Linked cell_11305 pieces := by
  apply Linked.of_piece piece_1378 piece_1378_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11305, List.cons_subset, List.nil_subset, and_true]
  exact piece_869_mem

theorem linked_11306 : Linked cell_11306 pieces := by
  apply Linked.of_piece piece_1378 piece_1378_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11306, List.cons_subset, List.nil_subset, and_true]
  exact piece_869_mem

theorem linked_11307 : Linked cell_11307 pieces := by
  apply Linked.of_piece piece_1378 piece_1378_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11307, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_868_mem, piece_869_mem⟩

theorem linked_11308 : Linked cell_11308 pieces := by
  apply Linked.of_piece piece_1379 piece_1379_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11308, List.cons_subset, List.nil_subset, and_true]
  exact piece_869_mem

theorem linked_11309 : Linked cell_11309 pieces := by
  apply Linked.of_piece piece_1379 piece_1379_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11309, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_868_mem, piece_869_mem⟩

theorem linked_11310 : Linked cell_11310 pieces := by
  apply Linked.of_piece piece_1379 piece_1379_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11310, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_867_mem, piece_868_mem⟩

theorem linked_11311 : Linked cell_11311 pieces := by
  apply Linked.of_piece piece_1379 piece_1379_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11311, List.cons_subset, List.nil_subset, and_true]
  exact piece_867_mem

theorem linked_11312 : Linked cell_11312 pieces := by
  apply Linked.of_piece piece_1380 piece_1380_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11312, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_867_mem, piece_868_mem⟩

theorem linked_11313 : Linked cell_11313 pieces := by
  apply Linked.of_piece piece_1380 piece_1380_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11313, List.cons_subset, List.nil_subset, and_true]
  exact piece_867_mem

theorem linked_11314 : Linked cell_11314 pieces := by
  apply Linked.of_piece piece_1380 piece_1380_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11314, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_866_mem, piece_867_mem⟩

theorem linked_11315 : Linked cell_11315 pieces := by
  apply Linked.of_piece piece_1380 piece_1380_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11315, List.cons_subset, List.nil_subset, and_true]
  exact piece_866_mem

theorem linked_11316 : Linked cell_11316 pieces := by
  apply Linked.of_piece piece_1381 piece_1381_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11316, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_866_mem, piece_867_mem⟩

theorem linked_11317 : Linked cell_11317 pieces := by
  apply Linked.of_piece piece_1381 piece_1381_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11317, List.cons_subset, List.nil_subset, and_true]
  exact piece_866_mem

theorem linked_11318 : Linked cell_11318 pieces := by
  apply Linked.of_piece piece_1381 piece_1381_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11318, List.cons_subset, List.nil_subset, and_true]
  exact piece_866_mem

theorem linked_11319 : Linked cell_11319 pieces := by
  apply Linked.of_piece piece_1381 piece_1381_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11319, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_865_mem, piece_866_mem⟩

theorem linked_11320 : Linked cell_11320 pieces := by
  apply Linked.of_piece piece_1382 piece_1382_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11320, List.cons_subset, List.nil_subset, and_true]
  exact piece_866_mem

theorem linked_11321 : Linked cell_11321 pieces := by
  apply Linked.of_piece piece_1382 piece_1382_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11321, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_865_mem, piece_866_mem⟩

theorem linked_11322 : Linked cell_11322 pieces := by
  apply Linked.of_piece piece_1382 piece_1382_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11322, List.cons_subset, List.nil_subset, and_true]
  exact piece_865_mem

theorem linked_11323 : Linked cell_11323 pieces := by
  apply Linked.of_piece piece_1382 piece_1382_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11323, List.cons_subset, List.nil_subset, and_true]
  exact piece_865_mem

theorem linked_11324 : Linked cell_11324 pieces := by
  apply Linked.of_piece piece_1383 piece_1383_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11324, List.cons_subset, List.nil_subset, and_true]
  exact piece_865_mem

theorem linked_11325 : Linked cell_11325 pieces := by
  apply Linked.of_piece piece_1383 piece_1383_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11325, List.cons_subset, List.nil_subset, and_true]
  exact piece_865_mem

theorem linked_11326 : Linked cell_11326 pieces := by
  apply Linked.of_piece piece_1383 piece_1383_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11326, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_864_mem, piece_865_mem⟩

theorem linked_11327 : Linked cell_11327 pieces := by
  apply Linked.of_piece piece_1383 piece_1383_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11327, List.cons_subset, List.nil_subset, and_true]
  exact piece_864_mem

theorem linked_11328 : Linked cell_11328 pieces := by
  apply Linked.of_piece piece_1384 piece_1384_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11328, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_864_mem, piece_865_mem⟩

theorem linked_11329 : Linked cell_11329 pieces := by
  apply Linked.of_piece piece_1384 piece_1384_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11329, List.cons_subset, List.nil_subset, and_true]
  exact piece_864_mem

theorem linked_11330 : Linked cell_11330 pieces := by
  apply Linked.of_piece piece_1384 piece_1384_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11330, List.cons_subset, List.nil_subset, and_true]
  exact piece_864_mem

theorem linked_11331 : Linked cell_11331 pieces := by
  apply Linked.of_piece piece_1384 piece_1384_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11331, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_863_mem, piece_864_mem⟩

theorem linked_11332 : Linked cell_11332 pieces := by
  apply Linked.of_piece piece_1385 piece_1385_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11332, List.cons_subset, List.nil_subset, and_true]
  exact piece_864_mem

theorem linked_11333 : Linked cell_11333 pieces := by
  apply Linked.of_piece piece_1385 piece_1385_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11333, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_863_mem, piece_864_mem⟩

theorem linked_11334 : Linked cell_11334 pieces := by
  apply Linked.of_piece piece_1385 piece_1385_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11334, List.cons_subset, List.nil_subset, and_true]
  exact piece_863_mem

theorem linked_11335 : Linked cell_11335 pieces := by
  apply Linked.of_piece piece_1385 piece_1385_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11335, List.cons_subset, List.nil_subset, and_true]
  exact piece_863_mem

theorem linked_11336 : Linked cell_11336 pieces := by
  apply Linked.of_piece piece_1386 piece_1386_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11336, List.cons_subset, List.nil_subset, and_true]
  exact piece_863_mem

theorem linked_11337 : Linked cell_11337 pieces := by
  apply Linked.of_piece piece_1386 piece_1386_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11337, List.cons_subset, List.nil_subset, and_true]
  exact piece_863_mem

theorem linked_11338 : Linked cell_11338 pieces := by
  apply Linked.of_piece piece_1387 piece_1387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11338, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_862_mem, piece_863_mem⟩

theorem linked_11339 : Linked cell_11339 pieces := by
  apply Linked.of_piece piece_1387 piece_1387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11339, List.cons_subset, List.nil_subset, and_true]
  exact piece_862_mem

theorem linked_11340 : Linked cell_11340 pieces := by
  apply Linked.of_piece piece_1388 piece_1388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11340, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_862_mem, piece_863_mem⟩

theorem linked_11341 : Linked cell_11341 pieces := by
  apply Linked.of_piece piece_1388 piece_1388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11341, List.cons_subset, List.nil_subset, and_true]
  exact piece_862_mem

theorem linked_11342 : Linked cell_11342 pieces := by
  apply Linked.of_piece piece_1388 piece_1388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11342, List.cons_subset, List.nil_subset, and_true]
  exact piece_862_mem

theorem linked_11343 : Linked cell_11343 pieces := by
  apply Linked.of_piece piece_1388 piece_1388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11343, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_861_mem, piece_862_mem⟩

theorem linked_11344 : Linked cell_11344 pieces := by
  apply Linked.of_piece piece_1389 piece_1389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11344, List.cons_subset, List.nil_subset, and_true]
  exact piece_862_mem

theorem linked_11345 : Linked cell_11345 pieces := by
  apply Linked.of_piece piece_1389 piece_1389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11345, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_861_mem, piece_862_mem⟩

theorem linked_11346 : Linked cell_11346 pieces := by
  apply Linked.of_piece piece_1389 piece_1389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11346, List.cons_subset, List.nil_subset, and_true]
  exact piece_861_mem

theorem linked_11347 : Linked cell_11347 pieces := by
  apply Linked.of_piece piece_1389 piece_1389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11347, List.cons_subset, List.nil_subset, and_true]
  exact piece_861_mem

theorem linked_11348 : Linked cell_11348 pieces := by
  apply Linked.of_piece piece_1390 piece_1390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11348, List.cons_subset, List.nil_subset, and_true]
  exact piece_861_mem

theorem linked_11349 : Linked cell_11349 pieces := by
  apply Linked.of_piece piece_1390 piece_1390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11349, List.cons_subset, List.nil_subset, and_true]
  exact piece_861_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0226.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0226.cells,List.forall_mem_cons]
  exact ⟨linked_11300, linked_11301, linked_11302, linked_11303, linked_11304, linked_11305, linked_11306, linked_11307, linked_11308, linked_11309, linked_11310, linked_11311, linked_11312, linked_11313, linked_11314, linked_11315, linked_11316, linked_11317, linked_11318, linked_11319, linked_11320, linked_11321, linked_11322, linked_11323, linked_11324, linked_11325, linked_11326, linked_11327, linked_11328, linked_11329, linked_11330, linked_11331, linked_11332, linked_11333, linked_11334, linked_11335, linked_11336, linked_11337, linked_11338, linked_11339, linked_11340, linked_11341, linked_11342, linked_11343, linked_11344, linked_11345, linked_11346, linked_11347, linked_11348, linked_11349, by simp⟩

theorem covered : covers (7325000000000001 / 12500000000000000 : ℚ) (118450000000000011 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0226.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0226
