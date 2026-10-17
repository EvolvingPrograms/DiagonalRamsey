import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0214
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(204949999999999989 / 400000000000000000 : ℚ), (12812499999999999 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (60965986431421 / 100000000000000 : ℚ)
  w := (14558197430993 / 10000000000000 : ℚ)
  center := (409949999999999973 / 800000000000000000 : ℚ)
  supportValue := (20596075168116007 / 50000000000000000 : ℚ)
  supportSlope := (-9593895079814523 / 5000000000000000 : ℚ)
  oldCenter := (20596075168116007 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1216
  oldLo := (40750000000000003 / 100000000000000000 : ℚ)
  oldHi := (41050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10700 : Cell := { cellDefaults with
  r := (3814596843169 / 6250000000000 : ℚ)
  w := (7283287026757 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1215
  oldLo := (41150000000000003 / 100000000000000000 : ℚ)
  oldHi := (41250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_996, piece_997]
}

noncomputable def cell_10701 : Cell := { cellDefaults with
  domain := ⟨(12812499999999999 / 25000000000000000 : ℚ), (205049999999999989 / 400000000000000000 : ℚ)⟩
  r := (60999747324899 / 100000000000000 : ℚ)
  w := (455074415841 / 312500000000 : ℚ)
  center := (410049999999999973 / 800000000000000000 : ℚ)
  supportValue := (824367218279563 / 2000000000000000 : ℚ)
  supportSlope := (-4797591719447123 / 2500000000000000 : ℚ)
  oldCenter := (824367218279563 / 2000000000000000 : ℚ)
  oldLo := (41200000000000003 / 100000000000000000 : ℚ)
  oldHi := (41250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_997]
}

noncomputable def cell_10702 : Cell := { cellDefaults with
  domain := ⟨(205049999999999989 / 400000000000000000 : ℚ), (102549999999999997 / 200000000000000000 : ℚ)⟩
  r := (60999747324899 / 100000000000000 : ℚ)
  w := (455074415841 / 312500000000 : ℚ)
  center := (410149999999999983 / 800000000000000000 : ℚ)
  supportValue := (2059719132494837 / 5000000000000000 : ℚ)
  supportSlope := (-19177756099731127 / 10000000000000000 : ℚ)
  oldCenter := (2059719132494837 / 5000000000000000 : ℚ)
  oldLo := (41150000000000003 / 100000000000000000 : ℚ)
  oldHi := (41250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_996, piece_997]
}

noncomputable def cell_10703 : Cell := { cellDefaults with
  domain := ⟨(102549999999999997 / 200000000000000000 : ℚ), (205149999999999999 / 400000000000000000 : ℚ)⟩
  r := (60999747324899 / 100000000000000 : ℚ)
  w := (455074415841 / 312500000000 : ℚ)
  center := (410249999999999993 / 800000000000000000 : ℚ)
  supportValue := (4117041978413751 / 10000000000000000 : ℚ)
  supportSlope := (-4789963478272839 / 2500000000000000 : ℚ)
  oldCenter := (4117041978413751 / 10000000000000000 : ℚ)
  oldLo := (41150000000000003 / 100000000000000000 : ℚ)
  oldHi := (41200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_996]
}

noncomputable def cell_10704 : Cell := { cellDefaults with
  domain := ⟨(205149999999999999 / 400000000000000000 : ℚ), (51300000000000001 / 100000000000000000 : ℚ)⟩
  r := (60999747324899 / 100000000000000 : ℚ)
  w := (455074415841 / 312500000000 : ℚ)
  center := (410350000000000003 / 800000000000000000 : ℚ)
  supportValue := (205732404316347 / 500000000000000 : ℚ)
  supportSlope := (-19146314775946611 / 10000000000000000 : ℚ)
  oldCenter := (205732404316347 / 500000000000000 : ℚ)
  oldLo := (41100000000000003 / 100000000000000000 : ℚ)
  oldHi := (41200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_995, piece_996]
}

noncomputable def cell_10705 : Cell := { cellDefaults with
  domain := ⟨(51300000000000001 / 100000000000000000 : ℚ), (205249999999999999 / 400000000000000000 : ℚ)⟩
  center := (410450000000000003 / 800000000000000000 : ℚ)
  supportValue := (257328966669433 / 625000000000000 : ℚ)
  supportSlope := (-9575431087479449 / 5000000000000000 : ℚ)
  oldCenter := (257328966669433 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1217
  oldLo := (41150000000000003 / 100000000000000000 : ℚ)
  oldHi := (41200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_996]
}

noncomputable def cell_10706 : Cell := { cellDefaults with
  domain := ⟨(205249999999999999 / 400000000000000000 : ℚ), (102649999999999997 / 200000000000000000 : ℚ)⟩
  center := (410549999999999993 / 800000000000000000 : ℚ)
  supportValue := (4114870827685587 / 10000000000000000 : ℚ)
  supportSlope := (-19136302568842603 / 10000000000000000 : ℚ)
  oldCenter := (4114870827685587 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1217
  oldLo := (41100000000000003 / 100000000000000000 : ℚ)
  oldHi := (41200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_995, piece_996]
}

noncomputable def cell_10707 : Cell := { cellDefaults with
  domain := ⟨(102649999999999997 / 200000000000000000 : ℚ), (5132960893854749 / 10000000000000000 : ℚ)⟩
  center := (205309217877094977 / 400000000000000000 : ℚ)
  supportValue := (205661514915549 / 500000000000000 : ℚ)
  supportSlope := (-956351627793051 / 500000000000000 : ℚ)
  oldCenter := (205661514915549 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1217
  oldLo := (41100000000000003 / 100000000000000000 : ℚ)
  oldHi := (41150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_995]
}

noncomputable def cell_10708 : Cell := { cellDefaults with
  domain := ⟨(5132960893854749 / 10000000000000000 : ℚ), (51339804469273743 / 100000000000000000 : ℚ)⟩
  center := (102669413407821233 / 200000000000000000 : ℚ)
  supportValue := (513976968584257 / 1250000000000000 : ℚ)
  supportSlope := (-9557359405484369 / 5000000000000000 : ℚ)
  oldCenter := (513976968584257 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1218
  oldLo := (41100000000000003 / 100000000000000000 : ℚ)
  oldHi := (41150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_995]
}

noncomputable def cell_10709 : Cell := { cellDefaults with
  domain := ⟨(51339804469273743 / 100000000000000000 : ℚ), (12837499999999999 / 25000000000000000 : ℚ)⟩
  center := (102689804469273739 / 200000000000000000 : ℚ)
  supportValue := (8219741125309059 / 20000000000000000 : ℚ)
  supportSlope := (-19104178298877577 / 10000000000000000 : ℚ)
  oldCenter := (8219741125309059 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1218
  oldLo := (41050000000000003 / 100000000000000000 : ℚ)
  oldHi := (41150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_994, piece_995]
}

noncomputable def cell_10710 : Cell := { cellDefaults with
  domain := ⟨(12837499999999999 / 25000000000000000 : ℚ), (205449999999999989 / 400000000000000000 : ℚ)⟩
  r := (15233066812413 / 25000000000000 : ℚ)
  w := (7277011263459 / 5000000000000 : ℚ)
  center := (410849999999999973 / 800000000000000000 : ℚ)
  supportValue := (4112700375845691 / 10000000000000000 : ℚ)
  supportSlope := (-4777875739009973 / 2500000000000000 : ℚ)
  oldCenter := (4112700375845691 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1219
  oldLo := (41100000000000003 / 100000000000000000 : ℚ)
  oldHi := (41150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_995]
}

noncomputable def cell_10711 : Cell := { cellDefaults with
  domain := ⟨(205449999999999989 / 400000000000000000 : ℚ), (102749999999999997 / 200000000000000000 : ℚ)⟩
  r := (15233066812413 / 25000000000000 : ℚ)
  w := (7277011263459 / 5000000000000 : ℚ)
  center := (410949999999999983 / 800000000000000000 : ℚ)
  supportValue := (102757818325081 / 250000000000000 : ℚ)
  supportSlope := (-3055187604657 / 1600000000000 : ℚ)
  oldCenter := (102757818325081 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1219
  oldLo := (41050000000000003 / 100000000000000000 : ℚ)
  oldHi := (41150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_994, piece_995]
}

noncomputable def cell_10712 : Cell := { cellDefaults with
  domain := ⟨(102749999999999997 / 200000000000000000 : ℚ), (205549999999999999 / 400000000000000000 : ℚ)⟩
  r := (15233066812413 / 25000000000000 : ℚ)
  w := (7277011263459 / 5000000000000 : ℚ)
  center := (411049999999999993 / 800000000000000000 : ℚ)
  supportValue := (10269816150465219 / 25000000000000000 : ℚ)
  supportSlope := (-9540614166864293 / 5000000000000000 : ℚ)
  oldCenter := (10269816150465219 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1219
  oldLo := (41050000000000003 / 100000000000000000 : ℚ)
  oldHi := (41100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_994]
}

noncomputable def cell_10713 : Cell := { cellDefaults with
  domain := ⟨(205549999999999999 / 400000000000000000 : ℚ), (51400000000000001 / 100000000000000000 : ℚ)⟩
  r := (15233066812413 / 25000000000000 : ℚ)
  w := (7277011263459 / 5000000000000 : ℚ)
  center := (411150000000000003 / 800000000000000000 : ℚ)
  supportValue := (4105542601128621 / 10000000000000000 : ℚ)
  supportSlope := (-9531792487308557 / 5000000000000000 : ℚ)
  oldCenter := (4105542601128621 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1219
  oldLo := (41000000000000003 / 100000000000000000 : ℚ)
  oldHi := (41100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_993, piece_994]
}

noncomputable def cell_10714 : Cell := { cellDefaults with
  domain := ⟨(51400000000000001 / 100000000000000000 : ℚ), (205649999999999999 / 400000000000000000 : ℚ)⟩
  r := (15224647212093 / 25000000000000 : ℚ)
  w := (3637463836353 / 2500000000000 : ℚ)
  center := (411250000000000003 / 800000000000000000 : ℚ)
  supportValue := (8216294456377573 / 20000000000000000 : ℚ)
  supportSlope := (-19072293440986727 / 10000000000000000 : ℚ)
  oldCenter := (8216294456377573 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1220
  oldLo := (41050000000000003 / 100000000000000000 : ℚ)
  oldHi := (41100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_994]
}

noncomputable def cell_10715 : Cell := { cellDefaults with
  domain := ⟨(205649999999999999 / 400000000000000000 : ℚ), (102849999999999997 / 200000000000000000 : ℚ)⟩
  r := (15224647212093 / 25000000000000 : ℚ)
  w := (3637463836353 / 2500000000000 : ℚ)
  center := (411349999999999993 / 800000000000000000 : ℚ)
  supportValue := (4105764484760381 / 10000000000000000 : ℚ)
  supportSlope := (-19053617189419243 / 10000000000000000 : ℚ)
  oldCenter := (4105764484760381 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1220
  oldLo := (41000000000000003 / 100000000000000000 : ℚ)
  oldHi := (41100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_993, piece_994]
}

noncomputable def cell_10716 : Cell := { cellDefaults with
  domain := ⟨(102849999999999997 / 200000000000000000 : ℚ), (205749999999999989 / 400000000000000000 : ℚ)⟩
  r := (15224647212093 / 25000000000000 : ℚ)
  w := (3637463836353 / 2500000000000 : ℚ)
  center := (411449999999999983 / 800000000000000000 : ℚ)
  supportValue := (1025845842356319 / 2500000000000000 : ℚ)
  supportSlope := (-4760534615829069 / 2500000000000000 : ℚ)
  oldCenter := (1025845842356319 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1220
  oldLo := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_993]
}

noncomputable def cell_10717 : Cell := { cellDefaults with
  domain := ⟨(205749999999999989 / 400000000000000000 : ℚ), (12862499999999999 / 25000000000000000 : ℚ)⟩
  r := (15224647212093 / 25000000000000 : ℚ)
  w := (3637463836353 / 2500000000000 : ℚ)
  center := (411549999999999973 / 800000000000000000 : ℚ)
  supportValue := (4101004394798413 / 10000000000000000 : ℚ)
  supportSlope := (-1902233135482069 / 1000000000000000 : ℚ)
  oldCenter := (4101004394798413 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1220
  oldLo := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_992, piece_993]
}

noncomputable def cell_10718 : Cell := { cellDefaults with
  domain := ⟨(12862499999999999 / 25000000000000000 : ℚ), (205849999999999989 / 400000000000000000 : ℚ)⟩
  r := (60864953001701 / 100000000000000 : ℚ)
  w := (7272848443077 / 5000000000000 : ℚ)
  center := (411649999999999973 / 800000000000000000 : ℚ)
  supportValue := (41036035043188973 / 100000000000000000 : ℚ)
  supportSlope := (-9516615053807457 / 5000000000000000 : ℚ)
  oldCenter := (41036035043188973 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1221
  oldLo := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_993]
}

noncomputable def cell_10719 : Cell := { cellDefaults with
  domain := ⟨(205849999999999989 / 400000000000000000 : ℚ), (102949999999999997 / 200000000000000000 : ℚ)⟩
  r := (60864953001701 / 100000000000000 : ℚ)
  w := (7272848443077 / 5000000000000 : ℚ)
  center := (411749999999999983 / 800000000000000000 : ℚ)
  supportValue := (410122564201539 / 1000000000000000 : ℚ)
  supportSlope := (-19012545011827573 / 10000000000000000 : ℚ)
  oldCenter := (410122564201539 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1221
  oldLo := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_993]
}

noncomputable def cell_10720 : Cell := { cellDefaults with
  domain := ⟨(102949999999999997 / 200000000000000000 : ℚ), (205949999999999999 / 400000000000000000 : ℚ)⟩
  r := (60864953001701 / 100000000000000 : ℚ)
  w := (7272848443077 / 5000000000000 : ℚ)
  center := (411849999999999993 / 800000000000000000 : ℚ)
  supportValue := (4098849674933921 / 10000000000000000 : ℚ)
  supportSlope := (-19003036541860627 / 10000000000000000 : ℚ)
  oldCenter := (4098849674933921 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1221
  oldLo := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_992, piece_993]
}

noncomputable def cell_10721 : Cell := { cellDefaults with
  domain := ⟨(205949999999999999 / 400000000000000000 : ℚ), (51500000000000001 / 100000000000000000 : ℚ)⟩
  r := (60864953001701 / 100000000000000 : ℚ)
  w := (7272848443077 / 5000000000000 : ℚ)
  center := (411950000000000003 / 800000000000000000 : ℚ)
  supportValue := (20482377831039983 / 50000000000000000 : ℚ)
  supportSlope := (-9491260619832903 / 5000000000000000 : ℚ)
  oldCenter := (20482377831039983 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1221
  oldLo := (40950000000000003 / 100000000000000000 : ℚ)
  oldHi := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_992]
}

noncomputable def cell_10722 : Cell := { cellDefaults with
  domain := ⟨(51500000000000001 / 100000000000000000 : ℚ), (206049999999999999 / 400000000000000000 : ℚ)⟩
  r := (30415678924777 / 50000000000000 : ℚ)
  w := (7270773227323 / 5000000000000 : ℚ)
  center := (412050000000000003 / 800000000000000000 : ℚ)
  supportValue := (40990695663732957 / 100000000000000000 : ℚ)
  supportSlope := (-18993110827942539 / 10000000000000000 : ℚ)
  oldCenter := (40990695663732957 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1222
  oldLo := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_992, piece_993]
}

noncomputable def cell_10723 : Cell := { cellDefaults with
  domain := ⟨(206049999999999999 / 400000000000000000 : ℚ), (103049999999999997 / 200000000000000000 : ℚ)⟩
  r := (30415678924777 / 50000000000000 : ℚ)
  w := (7270773227323 / 5000000000000 : ℚ)
  center := (412149999999999993 / 800000000000000000 : ℚ)
  supportValue := (4096696566361411 / 10000000000000000 : ℚ)
  supportSlope := (-4743415316348839 / 2500000000000000 : ℚ)
  oldCenter := (4096696566361411 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1222
  oldLo := (40950000000000003 / 100000000000000000 : ℚ)
  oldHi := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_992]
}

noncomputable def cell_10724 : Cell := { cellDefaults with
  domain := ⟨(103049999999999997 / 200000000000000000 : ℚ), (206149999999999989 / 400000000000000000 : ℚ)⟩
  r := (30415678924777 / 50000000000000 : ℚ)
  w := (7270773227323 / 5000000000000 : ℚ)
  center := (412249999999999983 / 800000000000000000 : ℚ)
  supportValue := (2047162869207229 / 5000000000000000 : ℚ)
  supportSlope := (-1896196779400417 / 1000000000000000 : ℚ)
  oldCenter := (2047162869207229 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1222
  oldLo := (40900000000000003 / 100000000000000000 : ℚ)
  oldHi := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_991, piece_992]
}

noncomputable def cell_10725 : Cell := { cellDefaults with
  domain := ⟨(206149999999999989 / 400000000000000000 : ℚ), (12887499999999999 / 25000000000000000 : ℚ)⟩
  r := (30415678924777 / 50000000000000 : ℚ)
  w := (7270773227323 / 5000000000000 : ℚ)
  center := (412349999999999973 / 800000000000000000 : ℚ)
  supportValue := (40919564772566447 / 100000000000000000 : ℚ)
  supportSlope := (-3788751103464373 / 2000000000000000 : ℚ)
  oldCenter := (40919564772566447 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1222
  oldLo := (40900000000000003 / 100000000000000000 : ℚ)
  oldHi := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_991]
}

noncomputable def cell_10726 : Cell := { cellDefaults with
  domain := ⟨(12887499999999999 / 25000000000000000 : ℚ), (206249999999999989 / 400000000000000000 : ℚ)⟩
  r := (7599725411413 / 12500000000000 : ℚ)
  w := (7268702279491 / 5000000000000 : ℚ)
  center := (412449999999999973 / 800000000000000000 : ℚ)
  supportValue := (204727262236281 / 500000000000000 : ℚ)
  supportSlope := (-1895206401534099 / 1000000000000000 : ℚ)
  oldCenter := (204727262236281 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1223
  oldLo := (40900000000000003 / 100000000000000000 : ℚ)
  oldHi := (41000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_991, piece_992]
}

noncomputable def cell_10727 : Cell := { cellDefaults with
  domain := ⟨(206249999999999989 / 400000000000000000 : ℚ), (103149999999999997 / 200000000000000000 : ℚ)⟩
  r := (7599725411413 / 12500000000000 : ℚ)
  w := (7268702279491 / 5000000000000 : ℚ)
  center := (412549999999999983 / 800000000000000000 : ℚ)
  supportValue := (40921770888225967 / 100000000000000000 : ℚ)
  supportSlope := (-18934923189542257 / 10000000000000000 : ℚ)
  oldCenter := (40921770888225967 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1223
  oldLo := (40900000000000003 / 100000000000000000 : ℚ)
  oldHi := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_991]
}

noncomputable def cell_10728 : Cell := { cellDefaults with
  domain := ⟨(103149999999999997 / 200000000000000000 : ℚ), (206349999999999999 / 400000000000000000 : ℚ)⟩
  r := (7599725411413 / 12500000000000 : ℚ)
  w := (7268702279491 / 5000000000000 : ℚ)
  center := (412649999999999993 / 800000000000000000 : ℚ)
  supportValue := (4089811391096761 / 10000000000000000 : ℚ)
  supportSlope := (-9460486008040667 / 5000000000000000 : ℚ)
  oldCenter := (4089811391096761 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1223
  oldLo := (40850000000000003 / 100000000000000000 : ℚ)
  oldHi := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_990, piece_991]
}

noncomputable def cell_10729 : Cell := { cellDefaults with
  domain := ⟨(206349999999999999 / 400000000000000000 : ℚ), (51600000000000001 / 100000000000000000 : ℚ)⟩
  r := (7599725411413 / 12500000000000 : ℚ)
  w := (7268702279491 / 5000000000000 : ℚ)
  center := (412750000000000003 / 800000000000000000 : ℚ)
  supportValue := (4087446958982029 / 10000000000000000 : ℚ)
  supportSlope := (-4726284049560519 / 2500000000000000 : ℚ)
  oldCenter := (4087446958982029 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1223
  oldLo := (40850000000000003 / 100000000000000000 : ℚ)
  oldHi := (40900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_990]
}

noncomputable def cell_10730 : Cell := { cellDefaults with
  domain := ⟨(51600000000000001 / 100000000000000000 : ℚ), (206449999999999999 / 400000000000000000 : ℚ)⟩
  r := (30382145598411 / 50000000000000 : ℚ)
  w := (290665431193 / 200000000000 : ℚ)
  center := (412850000000000003 / 800000000000000000 : ℚ)
  supportValue := (8180060342948633 / 20000000000000000 : ℚ)
  supportSlope := (-9455544641126913 / 5000000000000000 : ℚ)
  oldCenter := (8180060342948633 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1224
  oldLo := (40850000000000003 / 100000000000000000 : ℚ)
  oldHi := (40950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_990, piece_991]
}

noncomputable def cell_10731 : Cell := { cellDefaults with
  domain := ⟨(206449999999999999 / 400000000000000000 : ℚ), (103249999999999997 / 200000000000000000 : ℚ)⟩
  r := (30382145598411 / 50000000000000 : ℚ)
  w := (290665431193 / 200000000000 : ℚ)
  center := (412949999999999993 / 800000000000000000 : ℚ)
  supportValue := (255479178569867 / 625000000000000 : ℚ)
  supportSlope := (-18896329621933219 / 10000000000000000 : ℚ)
  oldCenter := (255479178569867 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1224
  oldLo := (40850000000000003 / 100000000000000000 : ℚ)
  oldHi := (40900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_990]
}

noncomputable def cell_10732 : Cell := { cellDefaults with
  domain := ⟨(103249999999999997 / 200000000000000000 : ℚ), (206549999999999989 / 400000000000000000 : ℚ)⟩
  r := (30382145598411 / 50000000000000 : ℚ)
  w := (290665431193 / 200000000000 : ℚ)
  center := (413049999999999983 / 800000000000000000 : ℚ)
  supportValue := (4085306098030909 / 10000000000000000 : ℚ)
  supportSlope := (-472001102244593 / 250000000000000 : ℚ)
  oldCenter := (4085306098030909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1224
  oldLo := (4082122905027933 / 10000000000000000 : ℚ)
  oldHi := (40900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_989, piece_990]
}

noncomputable def cell_10733 : Cell := { cellDefaults with
  domain := ⟨(206549999999999989 / 400000000000000000 : ℚ), (12912499999999999 / 25000000000000000 : ℚ)⟩
  r := (30382145598411 / 50000000000000 : ℚ)
  w := (290665431193 / 200000000000 : ℚ)
  center := (413149999999999973 / 800000000000000000 : ℚ)
  supportValue := (10207366650063919 / 25000000000000000 : ℚ)
  supportSlope := (-18866660051248483 / 10000000000000000 : ℚ)
  oldCenter := (10207366650063919 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1224
  oldLo := (40800000000000003 / 100000000000000000 : ℚ)
  oldHi := (40850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_988, piece_989]
}

noncomputable def cell_10734 : Cell := { cellDefaults with
  domain := ⟨(12912499999999999 / 25000000000000000 : ℚ), (20664999999999999 / 40000000000000000 : ℚ)⟩
  r := (60730819816697 / 100000000000000 : ℚ)
  w := (1816143327361 / 1250000000000 : ℚ)
  center := (206624999999999987 / 400000000000000000 : ℚ)
  supportValue := (1276726395888147 / 3125000000000000 : ℚ)
  supportSlope := (-4717545680745217 / 2500000000000000 : ℚ)
  oldCenter := (1276726395888147 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1225
  oldLo := (4082122905027933 / 10000000000000000 : ℚ)
  oldHi := (40900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_989, piece_990]
}

noncomputable def cell_10735 : Cell := { cellDefaults with
  domain := ⟨(20664999999999999 / 40000000000000000 : ℚ), (51674999999999999 / 100000000000000000 : ℚ)⟩
  r := (60730819816697 / 100000000000000 : ℚ)
  w := (1816143327361 / 1250000000000 : ℚ)
  center := (206674999999999993 / 400000000000000000 : ℚ)
  supportValue := (8166332519929299 / 20000000000000000 : ℚ)
  supportSlope := (-18857882673086703 / 10000000000000000 : ℚ)
  oldCenter := (8166332519929299 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1225
  oldLo := (40800000000000003 / 100000000000000000 : ℚ)
  oldHi := (40850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_988, piece_989]
}

noncomputable def cell_10736 : Cell := { cellDefaults with
  domain := ⟨(51674999999999999 / 100000000000000000 : ℚ), (103375000000000001 / 200000000000000000 : ℚ)⟩
  r := (60730819816697 / 100000000000000 : ℚ)
  w := (1816143327361 / 1250000000000 : ℚ)
  center := (206724999999999999 / 400000000000000000 : ℚ)
  supportValue := (4080810305678169 / 10000000000000000 : ℚ)
  supportSlope := (-4709793273919839 / 2500000000000000 : ℚ)
  oldCenter := (4080810305678169 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1225
  oldHi := (4082122905027933 / 10000000000000000 : ℚ)
  oldPieces := [piece_987, piece_988]
}

noncomputable def cell_10737 : Cell := { cellDefaults with
  domain := ⟨(103375000000000001 / 200000000000000000 : ℚ), (25850000000000001 / 50000000000000000 : ℚ)⟩
  r := (60730819816697 / 100000000000000 : ℚ)
  w := (1816143327361 / 1250000000000 : ℚ)
  center := (41355000000000001 / 80000000000000000 : ℚ)
  supportValue := (40784559707630313 / 100000000000000000 : ℚ)
  supportSlope := (-18828326549724623 / 10000000000000000 : ℚ)
  oldCenter := (40784559707630313 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1225
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987]
}

noncomputable def cell_10738 : Cell := { cellDefaults with
  domain := ⟨(25850000000000001 / 50000000000000000 : ℚ), (103425000000000001 / 200000000000000000 : ℚ)⟩
  r := (30348694991969 / 50000000000000 : ℚ)
  w := (453907200203 / 312500000000 : ℚ)
  center := (41365000000000001 / 80000000000000000 : ℚ)
  supportValue := (8162056175254293 / 20000000000000000 : ℚ)
  supportSlope := (-1882933301642579 / 1000000000000000 : ℚ)
  oldCenter := (8162056175254293 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1226
  oldHi := (40850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987, piece_988, piece_989]
}

noncomputable def cell_10739 : Cell := { cellDefaults with
  domain := ⟨(103425000000000001 / 200000000000000000 : ℚ), (51724999999999999 / 100000000000000000 : ℚ)⟩
  r := (30348694991969 / 50000000000000 : ℚ)
  w := (453907200203 / 312500000000 : ℚ)
  center := (206874999999999999 / 400000000000000000 : ℚ)
  supportValue := (40786749812639983 / 100000000000000000 : ℚ)
  supportSlope := (-752782976166079 / 400000000000000 : ℚ)
  oldCenter := (40786749812639983 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1226
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987]
}

noncomputable def cell_10740 : Cell := { cellDefaults with
  domain := ⟨(51724999999999999 / 100000000000000000 : ℚ), (20694999999999999 / 40000000000000000 : ℚ)⟩
  r := (30348694991969 / 50000000000000 : ℚ)
  w := (453907200203 / 312500000000 : ℚ)
  center := (206924999999999993 / 400000000000000000 : ℚ)
  supportValue := (40763238132100993 / 100000000000000000 : ℚ)
  supportSlope := (-18799093142949397 / 10000000000000000 : ℚ)
  oldCenter := (40763238132100993 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1226
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987]
}

noncomputable def cell_10741 : Cell := { cellDefaults with
  domain := ⟨(20694999999999999 / 40000000000000000 : ℚ), (12937499999999999 / 25000000000000000 : ℚ)⟩
  r := (30348694991969 / 50000000000000 : ℚ)
  w := (453907200203 / 312500000000 : ℚ)
  center := (206974999999999987 / 400000000000000000 : ℚ)
  supportValue := (407397457147483 / 1000000000000000 : ℚ)
  supportSlope := (-4697358512564817 / 2500000000000000 : ℚ)
  oldCenter := (407397457147483 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1226
  oldLo := (40700000000000003 / 100000000000000000 : ℚ)
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_986, piece_987]
}

noncomputable def cell_10742 : Cell := { cellDefaults with
  domain := ⟨(12937499999999999 / 25000000000000000 : ℚ), (20704999999999999 / 40000000000000000 : ℚ)⟩
  r := (30332000235529 / 50000000000000 : ℚ)
  w := (14520922357901 / 10000000000000 : ℚ)
  center := (207024999999999987 / 400000000000000000 : ℚ)
  supportValue := (5095676611395817 / 12500000000000000 : ℚ)
  supportSlope := (-18790344836074857 / 10000000000000000 : ℚ)
  oldCenter := (5095676611395817 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1227
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987]
}

noncomputable def cell_10743 : Cell := { cellDefaults with
  domain := ⟨(20704999999999999 / 40000000000000000 : ℚ), (51774999999999999 / 100000000000000000 : ℚ)⟩
  r := (30332000235529 / 50000000000000 : ℚ)
  w := (14520922357901 / 10000000000000 : ℚ)
  center := (207074999999999993 / 400000000000000000 : ℚ)
  supportValue := (2037096636639561 / 5000000000000000 : ℚ)
  supportSlope := (-4694909769673009 / 2500000000000000 : ℚ)
  oldCenter := (2037096636639561 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1227
  oldLo := (40700000000000003 / 100000000000000000 : ℚ)
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_986, piece_987]
}

noncomputable def cell_10744 : Cell := { cellDefaults with
  domain := ⟨(51774999999999999 / 100000000000000000 : ℚ), (103575000000000001 / 200000000000000000 : ℚ)⟩
  r := (30332000235529 / 50000000000000 : ℚ)
  w := (14520922357901 / 10000000000000 : ℚ)
  center := (207124999999999999 / 400000000000000000 : ℚ)
  supportValue := (254490429548469 / 625000000000000 : ℚ)
  supportSlope := (-58628013582633 / 31250000000000 : ℚ)
  oldCenter := (254490429548469 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1227
  oldLo := (40700000000000003 / 100000000000000000 : ℚ)
  oldHi := (40750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_986]
}

noncomputable def cell_10745 : Cell := { cellDefaults with
  domain := ⟨(103575000000000001 / 200000000000000000 : ℚ), (25900000000000001 / 50000000000000000 : ℚ)⟩
  r := (30332000235529 / 50000000000000 : ℚ)
  w := (14520922357901 / 10000000000000 : ℚ)
  center := (41435000000000001 / 80000000000000000 : ℚ)
  supportValue := (81390054331543 / 200000000000000 : ℚ)
  supportSlope := (-9374398640552547 / 5000000000000000 : ℚ)
  oldCenter := (81390054331543 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1227
  oldLo := (40650000000000003 / 100000000000000000 : ℚ)
  oldHi := (40750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_985, piece_986]
}

noncomputable def cell_10746 : Cell := { cellDefaults with
  domain := ⟨(25900000000000001 / 50000000000000000 : ℚ), (103625000000000001 / 200000000000000000 : ℚ)⟩
  r := (60630653055421 / 100000000000000 : ℚ)
  w := (907301459703 / 625000000000 : ℚ)
  center := (41445000000000001 / 80000000000000000 : ℚ)
  supportValue := (8144127173646557 / 20000000000000000 : ℚ)
  supportSlope := (-9376120695373539 / 5000000000000000 : ℚ)
  oldCenter := (8144127173646557 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1228
  oldLo := (40700000000000003 / 100000000000000000 : ℚ)
  oldHi := (40750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_986]
}

noncomputable def cell_10747 : Cell := { cellDefaults with
  domain := ⟨(103625000000000001 / 200000000000000000 : ℚ), (51824999999999999 / 100000000000000000 : ℚ)⟩
  r := (60630653055421 / 100000000000000 : ℚ)
  w := (907301459703 / 625000000000 : ℚ)
  center := (207274999999999999 / 400000000000000000 : ℚ)
  supportValue := (4069720654009497 / 10000000000000000 : ℚ)
  supportSlope := (-4684755562390237 / 2500000000000000 : ℚ)
  oldCenter := (4069720654009497 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1228
  oldLo := (40650000000000003 / 100000000000000000 : ℚ)
  oldHi := (40750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_985, piece_986]
}

noncomputable def cell_10748 : Cell := { cellDefaults with
  domain := ⟨(51824999999999999 / 100000000000000000 : ℚ), (20734999999999999 / 40000000000000000 : ℚ)⟩
  r := (60630653055421 / 100000000000000 : ℚ)
  w := (907301459703 / 625000000000 : ℚ)
  center := (207324999999999993 / 400000000000000000 : ℚ)
  supportValue := (8134758006365883 / 20000000000000000 : ℚ)
  supportSlope := (-18722978400209669 / 10000000000000000 : ℚ)
  oldCenter := (8134758006365883 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1228
  oldLo := (40650000000000003 / 100000000000000000 : ℚ)
  oldHi := (40700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_985]
}

noncomputable def cell_10749 : Cell := { cellDefaults with
  domain := ⟨(20734999999999999 / 40000000000000000 : ℚ), (12962499999999999 / 25000000000000000 : ℚ)⟩
  r := (60630653055421 / 100000000000000 : ℚ)
  w := (907301459703 / 625000000000 : ℚ)
  center := (207374999999999987 / 400000000000000000 : ℚ)
  supportValue := (2032519951345079 / 5000000000000000 : ℚ)
  supportSlope := (-4677055248494827 / 2500000000000000 : ℚ)
  oldCenter := (2032519951345079 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1228
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984, piece_985]
}

theorem check_10700 : cell_10700.check = true := by
  decide +kernel

theorem check_10701 : cell_10701.check = true := by
  decide +kernel

theorem check_10702 : cell_10702.check = true := by
  decide +kernel

theorem check_10703 : cell_10703.check = true := by
  decide +kernel

theorem check_10704 : cell_10704.check = true := by
  decide +kernel

theorem check_10705 : cell_10705.check = true := by
  decide +kernel

theorem check_10706 : cell_10706.check = true := by
  decide +kernel

theorem check_10707 : cell_10707.check = true := by
  decide +kernel

theorem check_10708 : cell_10708.check = true := by
  decide +kernel

theorem check_10709 : cell_10709.check = true := by
  decide +kernel

theorem check_10710 : cell_10710.check = true := by
  decide +kernel

theorem check_10711 : cell_10711.check = true := by
  decide +kernel

theorem check_10712 : cell_10712.check = true := by
  decide +kernel

theorem check_10713 : cell_10713.check = true := by
  decide +kernel

theorem check_10714 : cell_10714.check = true := by
  decide +kernel

theorem check_10715 : cell_10715.check = true := by
  decide +kernel

theorem check_10716 : cell_10716.check = true := by
  decide +kernel

theorem check_10717 : cell_10717.check = true := by
  decide +kernel

theorem check_10718 : cell_10718.check = true := by
  decide +kernel

theorem check_10719 : cell_10719.check = true := by
  decide +kernel

theorem check_10720 : cell_10720.check = true := by
  decide +kernel

theorem check_10721 : cell_10721.check = true := by
  decide +kernel

theorem check_10722 : cell_10722.check = true := by
  decide +kernel

theorem check_10723 : cell_10723.check = true := by
  decide +kernel

theorem check_10724 : cell_10724.check = true := by
  decide +kernel

theorem check_10725 : cell_10725.check = true := by
  decide +kernel

theorem check_10726 : cell_10726.check = true := by
  decide +kernel

theorem check_10727 : cell_10727.check = true := by
  decide +kernel

theorem check_10728 : cell_10728.check = true := by
  decide +kernel

theorem check_10729 : cell_10729.check = true := by
  decide +kernel

theorem check_10730 : cell_10730.check = true := by
  decide +kernel

theorem check_10731 : cell_10731.check = true := by
  decide +kernel

theorem check_10732 : cell_10732.check = true := by
  decide +kernel

theorem check_10733 : cell_10733.check = true := by
  decide +kernel

theorem check_10734 : cell_10734.check = true := by
  decide +kernel

theorem check_10735 : cell_10735.check = true := by
  decide +kernel

theorem check_10736 : cell_10736.check = true := by
  decide +kernel

theorem check_10737 : cell_10737.check = true := by
  decide +kernel

theorem check_10738 : cell_10738.check = true := by
  decide +kernel

theorem check_10739 : cell_10739.check = true := by
  decide +kernel

theorem check_10740 : cell_10740.check = true := by
  decide +kernel

theorem check_10741 : cell_10741.check = true := by
  decide +kernel

theorem check_10742 : cell_10742.check = true := by
  decide +kernel

theorem check_10743 : cell_10743.check = true := by
  decide +kernel

theorem check_10744 : cell_10744.check = true := by
  decide +kernel

theorem check_10745 : cell_10745.check = true := by
  decide +kernel

theorem check_10746 : cell_10746.check = true := by
  decide +kernel

theorem check_10747 : cell_10747.check = true := by
  decide +kernel

theorem check_10748 : cell_10748.check = true := by
  decide +kernel

theorem check_10749 : cell_10749.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_10700, cell_10701, cell_10702, cell_10703, cell_10704, cell_10705, cell_10706, cell_10707, cell_10708, cell_10709, cell_10710, cell_10711, cell_10712, cell_10713, cell_10714, cell_10715, cell_10716, cell_10717, cell_10718, cell_10719, cell_10720, cell_10721, cell_10722, cell_10723, cell_10724, cell_10725, cell_10726, cell_10727, cell_10728, cell_10729, cell_10730, cell_10731, cell_10732, cell_10733, cell_10734, cell_10735, cell_10736, cell_10737, cell_10738, cell_10739, cell_10740, cell_10741, cell_10742, cell_10743, cell_10744, cell_10745, cell_10746, cell_10747, cell_10748, cell_10749]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10700, check_10701, check_10702, check_10703, check_10704, check_10705, check_10706, check_10707, check_10708, check_10709, check_10710, check_10711, check_10712, check_10713, check_10714, check_10715, check_10716, check_10717, check_10718, check_10719, check_10720, check_10721, check_10722, check_10723, check_10724, check_10725, check_10726, check_10727, check_10728, check_10729, check_10730, check_10731, check_10732, check_10733, check_10734, check_10735, check_10736, check_10737, check_10738, check_10739, check_10740, check_10741, check_10742, check_10743, check_10744, check_10745, check_10746, check_10747, check_10748, check_10749, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0214

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0214
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0214
open AnalyticBounds.ExpressionCertificate

theorem linked_10700 : Linked cell_10700 pieces := by
  apply Linked.of_piece piece_1215 piece_1215_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10700, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_996_mem, piece_997_mem⟩

theorem linked_10701 : Linked cell_10701 pieces := by
  apply Linked.of_piece piece_1216 piece_1216_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10701, List.cons_subset, List.nil_subset, and_true]
  exact piece_997_mem

theorem linked_10702 : Linked cell_10702 pieces := by
  apply Linked.of_piece piece_1216 piece_1216_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10702, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_996_mem, piece_997_mem⟩

theorem linked_10703 : Linked cell_10703 pieces := by
  apply Linked.of_piece piece_1216 piece_1216_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10703, List.cons_subset, List.nil_subset, and_true]
  exact piece_996_mem

theorem linked_10704 : Linked cell_10704 pieces := by
  apply Linked.of_piece piece_1216 piece_1216_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10704, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_995_mem, piece_996_mem⟩

theorem linked_10705 : Linked cell_10705 pieces := by
  apply Linked.of_piece piece_1217 piece_1217_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10705, List.cons_subset, List.nil_subset, and_true]
  exact piece_996_mem

theorem linked_10706 : Linked cell_10706 pieces := by
  apply Linked.of_piece piece_1217 piece_1217_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10706, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_995_mem, piece_996_mem⟩

theorem linked_10707 : Linked cell_10707 pieces := by
  apply Linked.of_piece piece_1217 piece_1217_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10707, List.cons_subset, List.nil_subset, and_true]
  exact piece_995_mem

theorem linked_10708 : Linked cell_10708 pieces := by
  apply Linked.of_piece piece_1218 piece_1218_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10708, List.cons_subset, List.nil_subset, and_true]
  exact piece_995_mem

theorem linked_10709 : Linked cell_10709 pieces := by
  apply Linked.of_piece piece_1218 piece_1218_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10709, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_994_mem, piece_995_mem⟩

theorem linked_10710 : Linked cell_10710 pieces := by
  apply Linked.of_piece piece_1219 piece_1219_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10710, List.cons_subset, List.nil_subset, and_true]
  exact piece_995_mem

theorem linked_10711 : Linked cell_10711 pieces := by
  apply Linked.of_piece piece_1219 piece_1219_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10711, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_994_mem, piece_995_mem⟩

theorem linked_10712 : Linked cell_10712 pieces := by
  apply Linked.of_piece piece_1219 piece_1219_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10712, List.cons_subset, List.nil_subset, and_true]
  exact piece_994_mem

theorem linked_10713 : Linked cell_10713 pieces := by
  apply Linked.of_piece piece_1219 piece_1219_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10713, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_993_mem, piece_994_mem⟩

theorem linked_10714 : Linked cell_10714 pieces := by
  apply Linked.of_piece piece_1220 piece_1220_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10714, List.cons_subset, List.nil_subset, and_true]
  exact piece_994_mem

theorem linked_10715 : Linked cell_10715 pieces := by
  apply Linked.of_piece piece_1220 piece_1220_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10715, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_993_mem, piece_994_mem⟩

theorem linked_10716 : Linked cell_10716 pieces := by
  apply Linked.of_piece piece_1220 piece_1220_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10716, List.cons_subset, List.nil_subset, and_true]
  exact piece_993_mem

theorem linked_10717 : Linked cell_10717 pieces := by
  apply Linked.of_piece piece_1220 piece_1220_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10717, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_992_mem, piece_993_mem⟩

theorem linked_10718 : Linked cell_10718 pieces := by
  apply Linked.of_piece piece_1221 piece_1221_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10718, List.cons_subset, List.nil_subset, and_true]
  exact piece_993_mem

theorem linked_10719 : Linked cell_10719 pieces := by
  apply Linked.of_piece piece_1221 piece_1221_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10719, List.cons_subset, List.nil_subset, and_true]
  exact piece_993_mem

theorem linked_10720 : Linked cell_10720 pieces := by
  apply Linked.of_piece piece_1221 piece_1221_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10720, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_992_mem, piece_993_mem⟩

theorem linked_10721 : Linked cell_10721 pieces := by
  apply Linked.of_piece piece_1221 piece_1221_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10721, List.cons_subset, List.nil_subset, and_true]
  exact piece_992_mem

theorem linked_10722 : Linked cell_10722 pieces := by
  apply Linked.of_piece piece_1222 piece_1222_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10722, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_992_mem, piece_993_mem⟩

theorem linked_10723 : Linked cell_10723 pieces := by
  apply Linked.of_piece piece_1222 piece_1222_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10723, List.cons_subset, List.nil_subset, and_true]
  exact piece_992_mem

theorem linked_10724 : Linked cell_10724 pieces := by
  apply Linked.of_piece piece_1222 piece_1222_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10724, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_991_mem, piece_992_mem⟩

theorem linked_10725 : Linked cell_10725 pieces := by
  apply Linked.of_piece piece_1222 piece_1222_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10725, List.cons_subset, List.nil_subset, and_true]
  exact piece_991_mem

theorem linked_10726 : Linked cell_10726 pieces := by
  apply Linked.of_piece piece_1223 piece_1223_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10726, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_991_mem, piece_992_mem⟩

theorem linked_10727 : Linked cell_10727 pieces := by
  apply Linked.of_piece piece_1223 piece_1223_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10727, List.cons_subset, List.nil_subset, and_true]
  exact piece_991_mem

theorem linked_10728 : Linked cell_10728 pieces := by
  apply Linked.of_piece piece_1223 piece_1223_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10728, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_990_mem, piece_991_mem⟩

theorem linked_10729 : Linked cell_10729 pieces := by
  apply Linked.of_piece piece_1223 piece_1223_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10729, List.cons_subset, List.nil_subset, and_true]
  exact piece_990_mem

theorem linked_10730 : Linked cell_10730 pieces := by
  apply Linked.of_piece piece_1224 piece_1224_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10730, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_990_mem, piece_991_mem⟩

theorem linked_10731 : Linked cell_10731 pieces := by
  apply Linked.of_piece piece_1224 piece_1224_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10731, List.cons_subset, List.nil_subset, and_true]
  exact piece_990_mem

theorem linked_10732 : Linked cell_10732 pieces := by
  apply Linked.of_piece piece_1224 piece_1224_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10732, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_989_mem, piece_990_mem⟩

theorem linked_10733 : Linked cell_10733 pieces := by
  apply Linked.of_piece piece_1224 piece_1224_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10733, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_988_mem, piece_989_mem⟩

theorem linked_10734 : Linked cell_10734 pieces := by
  apply Linked.of_piece piece_1225 piece_1225_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10734, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_989_mem, piece_990_mem⟩

theorem linked_10735 : Linked cell_10735 pieces := by
  apply Linked.of_piece piece_1225 piece_1225_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10735, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_988_mem, piece_989_mem⟩

theorem linked_10736 : Linked cell_10736 pieces := by
  apply Linked.of_piece piece_1225 piece_1225_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10736, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_987_mem, piece_988_mem⟩

theorem linked_10737 : Linked cell_10737 pieces := by
  apply Linked.of_piece piece_1225 piece_1225_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10737, List.cons_subset, List.nil_subset, and_true]
  exact piece_987_mem

theorem linked_10738 : Linked cell_10738 pieces := by
  apply Linked.of_piece piece_1226 piece_1226_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10738, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_987_mem, ⟨piece_988_mem, piece_989_mem⟩⟩

theorem linked_10739 : Linked cell_10739 pieces := by
  apply Linked.of_piece piece_1226 piece_1226_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10739, List.cons_subset, List.nil_subset, and_true]
  exact piece_987_mem

theorem linked_10740 : Linked cell_10740 pieces := by
  apply Linked.of_piece piece_1226 piece_1226_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10740, List.cons_subset, List.nil_subset, and_true]
  exact piece_987_mem

theorem linked_10741 : Linked cell_10741 pieces := by
  apply Linked.of_piece piece_1226 piece_1226_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10741, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_986_mem, piece_987_mem⟩

theorem linked_10742 : Linked cell_10742 pieces := by
  apply Linked.of_piece piece_1227 piece_1227_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10742, List.cons_subset, List.nil_subset, and_true]
  exact piece_987_mem

theorem linked_10743 : Linked cell_10743 pieces := by
  apply Linked.of_piece piece_1227 piece_1227_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10743, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_986_mem, piece_987_mem⟩

theorem linked_10744 : Linked cell_10744 pieces := by
  apply Linked.of_piece piece_1227 piece_1227_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10744, List.cons_subset, List.nil_subset, and_true]
  exact piece_986_mem

theorem linked_10745 : Linked cell_10745 pieces := by
  apply Linked.of_piece piece_1227 piece_1227_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10745, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_985_mem, piece_986_mem⟩

theorem linked_10746 : Linked cell_10746 pieces := by
  apply Linked.of_piece piece_1228 piece_1228_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10746, List.cons_subset, List.nil_subset, and_true]
  exact piece_986_mem

theorem linked_10747 : Linked cell_10747 pieces := by
  apply Linked.of_piece piece_1228 piece_1228_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10747, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_985_mem, piece_986_mem⟩

theorem linked_10748 : Linked cell_10748 pieces := by
  apply Linked.of_piece piece_1228 piece_1228_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10748, List.cons_subset, List.nil_subset, and_true]
  exact piece_985_mem

theorem linked_10749 : Linked cell_10749 pieces := by
  apply Linked.of_piece piece_1228 piece_1228_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10749, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_984_mem, piece_985_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0214.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0214.cells,List.forall_mem_cons]
  exact ⟨linked_10700, linked_10701, linked_10702, linked_10703, linked_10704, linked_10705, linked_10706, linked_10707, linked_10708, linked_10709, linked_10710, linked_10711, linked_10712, linked_10713, linked_10714, linked_10715, linked_10716, linked_10717, linked_10718, linked_10719, linked_10720, linked_10721, linked_10722, linked_10723, linked_10724, linked_10725, linked_10726, linked_10727, linked_10728, linked_10729, linked_10730, linked_10731, linked_10732, linked_10733, linked_10734, linked_10735, linked_10736, linked_10737, linked_10738, linked_10739, linked_10740, linked_10741, linked_10742, linked_10743, linked_10744, linked_10745, linked_10746, linked_10747, linked_10748, linked_10749, by simp⟩

theorem covered : covers (204949999999999989 / 400000000000000000 : ℚ) (12962499999999999 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0214.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0214
