import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0215
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(12962499999999999 / 25000000000000000 : ℚ), (20744999999999999 / 40000000000000000 : ℚ)⟩
  branch := .left
  r := (15149336469421 / 25000000000000 : ℚ)
  w := (14512733132919 / 10000000000000 : ℚ)
  center := (207424999999999987 / 400000000000000000 : ℚ)
  supportValue := (40675952264000753 / 100000000000000000 : ℚ)
  supportSlope := (-4678570535553977 / 2500000000000000 : ℚ)
  oldCenter := (40675952264000753 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1231
  oldLo := (40350000000000003 / 100000000000000000 : ℚ)
  oldHi := (40600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10750 : Cell := { cellDefaults with
  newCoefficients := coefficients_1229
  oldLo := (40650000000000003 / 100000000000000000 : ℚ)
  oldHi := (40700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_985]
}

noncomputable def cell_10751 : Cell := { cellDefaults with
  domain := ⟨(20744999999999999 / 40000000000000000 : ℚ), (51874999999999999 / 100000000000000000 : ℚ)⟩
  center := (207474999999999993 / 400000000000000000 : ℚ)
  supportValue := (203262860587481 / 500000000000000 : ℚ)
  supportSlope := (-2337308301702809 / 1250000000000000 : ℚ)
  oldCenter := (203262860587481 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1229
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984, piece_985]
}

noncomputable def cell_10752 : Cell := { cellDefaults with
  domain := ⟨(51874999999999999 / 100000000000000000 : ℚ), (259413407821229 / 500000000000000 : ℚ)⟩
  center := (103757681564245799 / 200000000000000000 : ℚ)
  supportValue := (1015841954699603 / 2500000000000000 : ℚ)
  supportSlope := (-3737812929480857 / 2000000000000000 : ℚ)
  oldCenter := (1015841954699603 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1229
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984]
}

noncomputable def cell_10753 : Cell := { cellDefaults with
  domain := ⟨(259413407821229 / 500000000000000 : ℚ), (51891340782122901 / 100000000000000000 : ℚ)⟩
  center := (103774022346368701 / 200000000000000000 : ℚ)
  supportValue := (20309206964344237 / 50000000000000000 : ℚ)
  supportSlope := (-9337875221970987 / 5000000000000000 : ℚ)
  oldCenter := (20309206964344237 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1230
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984]
}

noncomputable def cell_10754 : Cell := { cellDefaults with
  domain := ⟨(51891340782122901 / 100000000000000000 : ℚ), (25950000000000001 / 50000000000000000 : ℚ)⟩
  center := (103791340782122903 / 200000000000000000 : ℚ)
  supportValue := (20301124142245383 / 50000000000000000 : ℚ)
  supportSlope := (-18665877542920883 / 10000000000000000 : ℚ)
  oldCenter := (20301124142245383 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1230
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983, piece_984]
}

noncomputable def cell_10755 : Cell := { cellDefaults with
  domain := ⟨(25950000000000001 / 50000000000000000 : ℚ), (103825000000000001 / 200000000000000000 : ℚ)⟩
  r := (60564079613033 / 100000000000000 : ℚ)
  w := (14508651330451 / 10000000000000 : ℚ)
  center := (41525000000000001 / 80000000000000000 : ℚ)
  supportValue := (20315680953448717 / 50000000000000000 : ℚ)
  supportSlope := (-1867646800928437 / 1000000000000000 : ℚ)
  oldCenter := (20315680953448717 / 50000000000000000 : ℚ)
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984]
}

noncomputable def cell_10756 : Cell := { cellDefaults with
  domain := ⟨(103825000000000001 / 200000000000000000 : ℚ), (51924999999999999 / 100000000000000000 : ℚ)⟩
  r := (60564079613033 / 100000000000000 : ℚ)
  w := (14508651330451 / 10000000000000 : ℚ)
  center := (207674999999999999 / 400000000000000000 : ℚ)
  supportValue := (2030401450673141 / 5000000000000000 : ℚ)
  supportSlope := (-1166123232423517 / 625000000000000 : ℚ)
  oldCenter := (2030401450673141 / 5000000000000000 : ℚ)
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983, piece_984]
}

noncomputable def cell_10757 : Cell := { cellDefaults with
  domain := ⟨(51924999999999999 / 100000000000000000 : ℚ), (20774999999999999 / 40000000000000000 : ℚ)⟩
  r := (60564079613033 / 100000000000000 : ℚ)
  w := (14508651330451 / 10000000000000 : ℚ)
  center := (207724999999999993 / 400000000000000000 : ℚ)
  supportValue := (4058471195303769 / 10000000000000000 : ℚ)
  supportSlope := (-9323720662216547 / 5000000000000000 : ℚ)
  oldCenter := (4058471195303769 / 10000000000000000 : ℚ)
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983]
}

noncomputable def cell_10758 : Cell := { cellDefaults with
  domain := ⟨(20774999999999999 / 40000000000000000 : ℚ), (12987499999999999 / 25000000000000000 : ℚ)⟩
  r := (60564079613033 / 100000000000000 : ℚ)
  w := (14508651330451 / 10000000000000 : ℚ)
  center := (207774999999999987 / 400000000000000000 : ℚ)
  supportValue := (2028070766994003 / 5000000000000000 : ℚ)
  supportSlope := (-18627251401952551 / 10000000000000000 : ℚ)
  oldCenter := (2028070766994003 / 5000000000000000 : ℚ)
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982, piece_983]
}

noncomputable def cell_10759 : Cell := { cellDefaults with
  domain := ⟨(12987499999999999 / 25000000000000000 : ℚ), (20784999999999999 / 40000000000000000 : ℚ)⟩
  r := (12106170842031 / 20000000000000 : ℚ)
  w := (226634010173 / 156250000000 : ℚ)
  center := (207824999999999987 / 400000000000000000 : ℚ)
  supportValue := (405868679922263 / 1000000000000000 : ℚ)
  supportSlope := (-1863880095367197 / 1000000000000000 : ℚ)
  oldCenter := (405868679922263 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1232
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983]
}

noncomputable def cell_10760 : Cell := { cellDefaults with
  domain := ⟨(20784999999999999 / 40000000000000000 : ℚ), (51974999999999999 / 100000000000000000 : ℚ)⟩
  r := (12106170842031 / 20000000000000 : ℚ)
  w := (226634010173 / 156250000000 : ℚ)
  center := (207874999999999993 / 400000000000000000 : ℚ)
  supportValue := (40563582167804757 / 100000000000000000 : ℚ)
  supportSlope := (-18618497151983147 / 10000000000000000 : ℚ)
  oldCenter := (40563582167804757 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1232
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983]
}

noncomputable def cell_10761 : Cell := { cellDefaults with
  domain := ⟨(51974999999999999 / 100000000000000000 : ℚ), (103975000000000001 / 200000000000000000 : ℚ)⟩
  r := (12106170842031 / 20000000000000 : ℚ)
  w := (226634010173 / 156250000000 : ℚ)
  center := (207924999999999999 / 400000000000000000 : ℚ)
  supportValue := (40540315590673903 / 100000000000000000 : ℚ)
  supportSlope := (-18608933252550741 / 10000000000000000 : ℚ)
  oldCenter := (40540315590673903 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1232
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982, piece_983]
}

noncomputable def cell_10762 : Cell := { cellDefaults with
  domain := ⟨(103975000000000001 / 200000000000000000 : ℚ), (26000000000000001 / 50000000000000000 : ℚ)⟩
  r := (12106170842031 / 20000000000000 : ℚ)
  w := (226634010173 / 156250000000 : ℚ)
  center := (41595000000000001 / 80000000000000000 : ℚ)
  supportValue := (8103413179712431 / 20000000000000000 : ℚ)
  supportSlope := (-18589594097606623 / 10000000000000000 : ℚ)
  oldCenter := (8103413179712431 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1232
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldHi := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982]
}

noncomputable def cell_10763 : Cell := { cellDefaults with
  domain := ⟨(26000000000000001 / 50000000000000000 : ℚ), (208050000000000013 / 400000000000000000 : ℚ)⟩
  r := (3781104330923 / 6250000000000 : ℚ)
  w := (14500510999561 / 10000000000000 : ℚ)
  center := (416050000000000021 / 800000000000000000 : ℚ)
  supportValue := (8108493075882437 / 20000000000000000 : ℚ)
  supportSlope := (-4649810055796323 / 2500000000000000 : ℚ)
  oldCenter := (8108493075882437 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1233
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982, piece_983]
}

noncomputable def cell_10764 : Cell := { cellDefaults with
  domain := ⟨(208050000000000013 / 400000000000000000 : ℚ), (104050000000000009 / 200000000000000000 : ℚ)⟩
  r := (3781104330923 / 6250000000000 : ℚ)
  w := (14500510999561 / 10000000000000 : ℚ)
  center := (416150000000000031 / 800000000000000000 : ℚ)
  supportValue := (10129806611064611 / 25000000000000000 : ℚ)
  supportSlope := (-4645249472321013 / 2500000000000000 : ℚ)
  oldCenter := (10129806611064611 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1233
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldHi := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982]
}

noncomputable def cell_10765 : Cell := { cellDefaults with
  domain := ⟨(104050000000000009 / 200000000000000000 : ℚ), (208150000000000023 / 400000000000000000 : ℚ)⟩
  r := (3781104330923 / 6250000000000 : ℚ)
  w := (14500510999561 / 10000000000000 : ℚ)
  center := (416250000000000041 / 800000000000000000 : ℚ)
  supportValue := (202480051380383 / 500000000000000 : ℚ)
  supportSlope := (-4642163304466409 / 2500000000000000 : ℚ)
  oldCenter := (202480051380383 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1233
  oldLo := (40450000000000003 / 100000000000000000 : ℚ)
  oldHi := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_981, piece_982]
}

noncomputable def cell_10766 : Cell := { cellDefaults with
  domain := ⟨(208150000000000023 / 400000000000000000 : ℚ), (52050000000000007 / 100000000000000000 : ℚ)⟩
  r := (3781104330923 / 6250000000000 : ℚ)
  w := (14500510999561 / 10000000000000 : ℚ)
  center := (416350000000000051 / 800000000000000000 : ℚ)
  supportValue := (101182018312743 / 250000000000000 : ℚ)
  supportSlope := (-579756673940943 / 312500000000000 : ℚ)
  oldCenter := (101182018312743 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1233
  oldLo := (40450000000000003 / 100000000000000000 : ℚ)
  oldHi := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_981]
}

noncomputable def cell_10767 : Cell := { cellDefaults with
  domain := ⟨(52050000000000007 / 100000000000000000 : ℚ), (208250000000000023 / 400000000000000000 : ℚ)⟩
  r := (60464524559123 / 100000000000000 : ℚ)
  w := (7248226491553 / 5000000000000 : ℚ)
  center := (416450000000000051 / 800000000000000000 : ℚ)
  supportValue := (809963156296537 / 2000000000000000 : ℚ)
  supportSlope := (-9279490375116811 / 5000000000000000 : ℚ)
  oldCenter := (809963156296537 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1234
  oldLo := (40450000000000003 / 100000000000000000 : ℚ)
  oldHi := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_981, piece_982]
}

noncomputable def cell_10768 : Cell := { cellDefaults with
  domain := ⟨(208250000000000023 / 400000000000000000 : ℚ), (104150000000000009 / 200000000000000000 : ℚ)⟩
  r := (60464524559123 / 100000000000000 : ℚ)
  w := (7248226491553 / 5000000000000 : ℚ)
  center := (416550000000000041 / 800000000000000000 : ℚ)
  supportValue := (404749655858041 / 1000000000000000 : ℚ)
  supportSlope := (-185436453303219 / 100000000000000 : ℚ)
  oldCenter := (404749655858041 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1234
  oldLo := (40450000000000003 / 100000000000000000 : ℚ)
  oldHi := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_981]
}

noncomputable def cell_10769 : Cell := { cellDefaults with
  domain := ⟨(104150000000000009 / 200000000000000000 : ℚ), (208350000000000013 / 400000000000000000 : ℚ)⟩
  r := (60464524559123 / 100000000000000 : ℚ)
  w := (7248226491553 / 5000000000000 : ℚ)
  center := (416650000000000031 / 800000000000000000 : ℚ)
  supportValue := (4045179863478681 / 10000000000000000 : ℚ)
  supportSlope := (-57901352589407 / 31250000000000 : ℚ)
  oldCenter := (4045179863478681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1234
  oldLo := (40400000000000003 / 100000000000000000 : ℚ)
  oldHi := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_980, piece_981]
}

noncomputable def cell_10770 : Cell := { cellDefaults with
  domain := ⟨(208350000000000013 / 400000000000000000 : ℚ), (26050000000000001 / 50000000000000000 : ℚ)⟩
  r := (60464524559123 / 100000000000000 : ℚ)
  w := (7248226491553 / 5000000000000 : ℚ)
  center := (416750000000000021 / 800000000000000000 : ℚ)
  supportValue := (2021432167936147 / 5000000000000000 : ℚ)
  supportSlope := (-4628744960509153 / 2500000000000000 : ℚ)
  oldCenter := (2021432167936147 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1234
  oldLo := (40400000000000003 / 100000000000000000 : ℚ)
  oldHi := (40450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_980]
}

noncomputable def cell_10771 : Cell := { cellDefaults with
  domain := ⟨(26050000000000001 / 50000000000000000 : ℚ), (208450000000000013 / 400000000000000000 : ℚ)⟩
  r := (60431420884487 / 100000000000000 : ℚ)
  w := (7246201882289 / 5000000000000 : ℚ)
  center := (416850000000000021 / 800000000000000000 : ℚ)
  supportValue := (2022696914202307 / 5000000000000000 : ℚ)
  supportSlope := (-1851878005613187 / 1000000000000000 : ℚ)
  oldCenter := (2022696914202307 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1235
  oldLo := (40400000000000003 / 100000000000000000 : ℚ)
  oldHi := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_980, piece_981]
}

noncomputable def cell_10772 : Cell := { cellDefaults with
  domain := ⟨(208450000000000013 / 400000000000000000 : ℚ), (104250000000000009 / 200000000000000000 : ℚ)⟩
  r := (60431420884487 / 100000000000000 : ℚ)
  w := (7246201882289 / 5000000000000 : ℚ)
  center := (416950000000000031 / 800000000000000000 : ℚ)
  supportValue := (4043079505930533 / 10000000000000000 : ℚ)
  supportSlope := (-18506436482963833 / 10000000000000000 : ℚ)
  oldCenter := (4043079505930533 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1235
  oldLo := (40400000000000003 / 100000000000000000 : ℚ)
  oldHi := (40450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_980]
}

noncomputable def cell_10773 : Cell := { cellDefaults with
  domain := ⟨(104250000000000009 / 200000000000000000 : ℚ), (208550000000000023 / 400000000000000000 : ℚ)⟩
  r := (60431420884487 / 100000000000000 : ℚ)
  w := (7246201882289 / 5000000000000 : ℚ)
  center := (417050000000000041 / 800000000000000000 : ℚ)
  supportValue := (8081534920746709 / 20000000000000000 : ℚ)
  supportSlope := (-1848827138088353 / 1000000000000000 : ℚ)
  oldCenter := (8081534920746709 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1235
  oldHi := (40450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979, piece_980]
}

noncomputable def cell_10774 : Cell := { cellDefaults with
  domain := ⟨(208550000000000023 / 400000000000000000 : ℚ), (52150000000000007 / 100000000000000000 : ℚ)⟩
  r := (60431420884487 / 100000000000000 : ℚ)
  w := (7246201882289 / 5000000000000 : ℚ)
  center := (417150000000000051 / 800000000000000000 : ℚ)
  supportValue := (2524035591882641 / 6250000000000000 : ℚ)
  supportSlope := (-18477890139381543 / 10000000000000000 : ℚ)
  oldCenter := (2524035591882641 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1235
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979]
}

noncomputable def cell_10775 : Cell := { cellDefaults with
  domain := ⟨(52150000000000007 / 100000000000000000 : ℚ), (208650000000000023 / 400000000000000000 : ℚ)⟩
  r := (188744867293 / 312500000000 : ℚ)
  w := (14488363373359 / 10000000000000 : ℚ)
  center := (417250000000000051 / 800000000000000000 : ℚ)
  supportValue := (631403255450821 / 1562500000000000 : ℚ)
  supportSlope := (-4619659506073699 / 2500000000000000 : ℚ)
  oldCenter := (631403255450821 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1236
  oldHi := (40450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979, piece_980]
}

noncomputable def cell_10776 : Cell := { cellDefaults with
  domain := ⟨(208650000000000023 / 400000000000000000 : ℚ), (104350000000000009 / 200000000000000000 : ℚ)⟩
  r := (188744867293 / 312500000000 : ℚ)
  w := (14488363373359 / 10000000000000 : ℚ)
  center := (417350000000000041 / 800000000000000000 : ℚ)
  supportValue := (4038671524211657 / 10000000000000000 : ℚ)
  supportSlope := (-9234686124180803 / 5000000000000000 : ℚ)
  oldCenter := (4038671524211657 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1236
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979]
}

noncomputable def cell_10777 : Cell := { cellDefaults with
  domain := ⟨(104350000000000009 / 200000000000000000 : ℚ), (208750000000000013 / 400000000000000000 : ℚ)⟩
  r := (188744867293 / 312500000000 : ℚ)
  w := (14488363373359 / 10000000000000 : ℚ)
  center := (417450000000000031 / 800000000000000000 : ℚ)
  supportValue := (40363641103653747 / 100000000000000000 : ℚ)
  supportSlope := (-461230716426943 / 250000000000000 : ℚ)
  oldCenter := (40363641103653747 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1236
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979]
}

noncomputable def cell_10778 : Cell := { cellDefaults with
  domain := ⟨(208750000000000013 / 400000000000000000 : ℚ), (26100000000000001 / 50000000000000000 : ℚ)⟩
  r := (188744867293 / 312500000000 : ℚ)
  w := (14488363373359 / 10000000000000 : ℚ)
  center := (417550000000000021 / 800000000000000000 : ℚ)
  supportValue := (4034058604440771 / 10000000000000000 : ℚ)
  supportSlope := (-2304984856374101 / 1250000000000000 : ℚ)
  oldCenter := (4034058604440771 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1236
  oldLo := (20150000000000001 / 50000000000000000 : ℚ)
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_978, piece_979]
}

noncomputable def cell_10779 : Cell := { cellDefaults with
  domain := ⟨(26100000000000001 / 50000000000000000 : ℚ), (104425000000000007 / 200000000000000000 : ℚ)⟩
  r := (15091333819851 / 25000000000000 : ℚ)
  w := (72421656351 / 50000000000 : ℚ)
  center := (208825000000000011 / 400000000000000000 : ℚ)
  supportValue := (403657694029411 / 1000000000000000 : ℚ)
  supportSlope := (-4610178218455443 / 2500000000000000 : ℚ)
  oldCenter := (403657694029411 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1237
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979]
}

noncomputable def cell_10780 : Cell := { cellDefaults with
  domain := ⟨(104425000000000007 / 200000000000000000 : ℚ), (10445000000000001 / 20000000000000000 : ℚ)⟩
  r := (15091333819851 / 25000000000000 : ℚ)
  w := (72421656351 / 50000000000 : ℚ)
  center := (208875000000000017 / 400000000000000000 : ℚ)
  supportValue := (4034272634649443 / 10000000000000000 : ℚ)
  supportSlope := (-18430288655284521 / 10000000000000000 : ℚ)
  oldCenter := (4034272634649443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1237
  oldLo := (20150000000000001 / 50000000000000000 : ℚ)
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_978, piece_979]
}

noncomputable def cell_10781 : Cell := { cellDefaults with
  domain := ⟨(10445000000000001 / 20000000000000000 : ℚ), (104475000000000013 / 200000000000000000 : ℚ)⟩
  r := (15091333819851 / 25000000000000 : ℚ)
  w := (72421656351 / 50000000000 : ℚ)
  center := (208925000000000023 / 400000000000000000 : ℚ)
  supportValue := (10079924586528559 / 25000000000000000 : ℚ)
  supportSlope := (-2301540823106131 / 1250000000000000 : ℚ)
  oldCenter := (10079924586528559 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1237
  oldLo := (20150000000000001 / 50000000000000000 : ℚ)
  oldHi := (40350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_978]
}

noncomputable def cell_10782 : Cell := { cellDefaults with
  domain := ⟨(104475000000000013 / 200000000000000000 : ℚ), (6531250000000001 / 12500000000000000 : ℚ)⟩
  r := (15091333819851 / 25000000000000 : ℚ)
  w := (72421656351 / 50000000000 : ℚ)
  center := (208975000000000029 / 400000000000000000 : ℚ)
  supportValue := (40296693303250003 / 100000000000000000 : ℚ)
  supportSlope := (-9199956943940497 / 5000000000000000 : ℚ)
  oldCenter := (40296693303250003 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1237
  oldLo := (40268156424581003 / 100000000000000000 : ℚ)
  oldHi := (40350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_977, piece_978]
}

noncomputable def cell_10783 : Cell := { cellDefaults with
  domain := ⟨(6531250000000001 / 12500000000000000 : ℚ), (104525000000000013 / 200000000000000000 : ℚ)⟩
  r := (15083088208651 / 25000000000000 : ℚ)
  w := (7240153867531 / 5000000000000 : ℚ)
  center := (209025000000000029 / 400000000000000000 : ℚ)
  supportValue := (10080455443532861 / 25000000000000000 : ℚ)
  supportSlope := (-920191859270169 / 500000000000000 : ℚ)
  oldCenter := (10080455443532861 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1238
  oldLo := (20150000000000001 / 50000000000000000 : ℚ)
  oldHi := (40350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_978]
}

noncomputable def cell_10784 : Cell := { cellDefaults with
  domain := ⟨(104525000000000013 / 200000000000000000 : ℚ), (10455000000000001 / 20000000000000000 : ℚ)⟩
  r := (15083088208651 / 25000000000000 : ℚ)
  w := (7240153867531 / 5000000000000 : ℚ)
  center := (209075000000000023 / 400000000000000000 : ℚ)
  supportValue := (1007470717738377 / 2500000000000000 : ℚ)
  supportSlope := (-1149396420972031 / 625000000000000 : ℚ)
  oldCenter := (1007470717738377 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1238
  oldLo := (40268156424581003 / 100000000000000000 : ℚ)
  oldHi := (40350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_977, piece_978]
}

noncomputable def cell_10785 : Cell := { cellDefaults with
  domain := ⟨(10455000000000001 / 20000000000000000 : ℚ), (104575000000000007 / 200000000000000000 : ℚ)⟩
  r := (15083088208651 / 25000000000000 : ℚ)
  w := (7240153867531 / 5000000000000 : ℚ)
  center := (209125000000000017 / 400000000000000000 : ℚ)
  supportValue := (8055169334189377 / 20000000000000000 : ℚ)
  supportSlope := (-18375570900961407 / 10000000000000000 : ℚ)
  oldCenter := (8055169334189377 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1238
  oldLo := (20125000000000001 / 50000000000000000 : ℚ)
  oldHi := (20150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_976, piece_977]
}

noncomputable def cell_10786 : Cell := { cellDefaults with
  domain := ⟨(104575000000000007 / 200000000000000000 : ℚ), (26150000000000001 / 50000000000000000 : ℚ)⟩
  r := (15083088208651 / 25000000000000 : ℚ)
  w := (7240153867531 / 5000000000000 : ℚ)
  center := (209175000000000011 / 400000000000000000 : ℚ)
  supportValue := (402528897171719 / 1000000000000000 : ℚ)
  supportSlope := (-4590002033829083 / 2500000000000000 : ℚ)
  oldCenter := (402528897171719 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1238
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (40268156424581003 / 100000000000000000 : ℚ)
  oldPieces := [piece_975, piece_976]
}

noncomputable def cell_10787 : Cell := { cellDefaults with
  domain := ⟨(26150000000000001 / 50000000000000000 : ℚ), (104625000000000007 / 200000000000000000 : ℚ)⟩
  r := (7537426310289 / 12500000000000 : ℚ)
  w := (3619073012873 / 2500000000000 : ℚ)
  center := (209225000000000011 / 400000000000000000 : ℚ)
  supportValue := (4027796671397539 / 10000000000000000 : ℚ)
  supportSlope := (-18367108276107231 / 10000000000000000 : ℚ)
  oldCenter := (4027796671397539 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1239
  oldLo := (20125000000000001 / 50000000000000000 : ℚ)
  oldHi := (20150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_976, piece_977]
}

noncomputable def cell_10788 : Cell := { cellDefaults with
  domain := ⟨(104625000000000007 / 200000000000000000 : ℚ), (10465000000000001 / 20000000000000000 : ℚ)⟩
  r := (7537426310289 / 12500000000000 : ℚ)
  w := (3619073012873 / 2500000000000 : ℚ)
  center := (209275000000000017 / 400000000000000000 : ℚ)
  supportValue := (40255020327163127 / 100000000000000000 : ℚ)
  supportSlope := (-73401826001911 / 40000000000000 : ℚ)
  oldCenter := (40255020327163127 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1239
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (40268156424581003 / 100000000000000000 : ℚ)
  oldPieces := [piece_975, piece_976]
}

noncomputable def cell_10789 : Cell := { cellDefaults with
  domain := ⟨(10465000000000001 / 20000000000000000 : ℚ), (104675000000000013 / 200000000000000000 : ℚ)⟩
  r := (7537426310289 / 12500000000000 : ℚ)
  w := (3619073012873 / 2500000000000 : ℚ)
  center := (209325000000000023 / 400000000000000000 : ℚ)
  supportValue := (20116043652957827 / 50000000000000000 : ℚ)
  supportSlope := (-9169479163725357 / 5000000000000000 : ℚ)
  oldCenter := (20116043652957827 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1239
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_975]
}

noncomputable def cell_10790 : Cell := { cellDefaults with
  domain := ⟨(104675000000000013 / 200000000000000000 : ℚ), (6543750000000001 / 12500000000000000 : ℚ)⟩
  r := (7537426310289 / 12500000000000 : ℚ)
  w := (3619073012873 / 2500000000000 : ℚ)
  center := (209375000000000029 / 400000000000000000 : ℚ)
  supportValue := (20104588052512473 / 50000000000000000 : ℚ)
  supportSlope := (-9160075274800017 / 5000000000000000 : ℚ)
  oldCenter := (20104588052512473 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1239
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974, piece_975]
}

noncomputable def cell_10791 : Cell := { cellDefaults with
  domain := ⟨(6543750000000001 / 12500000000000000 : ℚ), (104725000000000013 / 200000000000000000 : ℚ)⟩
  r := (60266508407219 / 100000000000000 : ℚ)
  w := (7236142483 / 5000000000 : ℚ)
  center := (209425000000000029 / 400000000000000000 : ℚ)
  supportValue := (502927520257617 / 1250000000000000 : ℚ)
  supportSlope := (-9165260418574339 / 5000000000000000 : ℚ)
  oldCenter := (502927520257617 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1240
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_975]
}

noncomputable def cell_10792 : Cell := { cellDefaults with
  domain := ⟨(104725000000000013 / 200000000000000000 : ℚ), (10475000000000001 / 20000000000000000 : ℚ)⟩
  r := (60266508407219 / 100000000000000 : ℚ)
  w := (7236142483 / 5000000000 : ℚ)
  center := (209475000000000023 / 400000000000000000 : ℚ)
  supportValue := (4021130095513039 / 10000000000000000 : ℚ)
  supportSlope := (-9155308898535207 / 5000000000000000 : ℚ)
  oldCenter := (4021130095513039 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1240
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974, piece_975]
}

noncomputable def cell_10793 : Cell := { cellDefaults with
  domain := ⟨(10475000000000001 / 20000000000000000 : ℚ), (104775000000000007 / 200000000000000000 : ℚ)⟩
  r := (60266508407219 / 100000000000000 : ℚ)
  w := (7236142483 / 5000000000 : ℚ)
  center := (209525000000000017 / 400000000000000000 : ℚ)
  supportValue := (8037683534086777 / 20000000000000000 : ℚ)
  supportSlope := (-18302490591255411 / 10000000000000000 : ℚ)
  oldCenter := (8037683534086777 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1240
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974]
}

noncomputable def cell_10794 : Cell := { cellDefaults with
  domain := ⟨(104775000000000007 / 200000000000000000 : ℚ), (26200000000000001 / 50000000000000000 : ℚ)⟩
  r := (60266508407219 / 100000000000000 : ℚ)
  w := (7236142483 / 5000000000 : ℚ)
  center := (209575000000000011 / 400000000000000000 : ℚ)
  supportValue := (502069400534697 / 1250000000000000 : ℚ)
  supportSlope := (-18282493376704483 / 10000000000000000 : ℚ)
  oldCenter := (502069400534697 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1240
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974]
}

noncomputable def cell_10795 : Cell := { cellDefaults with
  domain := ⟨(26200000000000001 / 50000000000000000 : ℚ), (104825000000000007 / 200000000000000000 : ℚ)⟩
  r := (60233646584621 / 100000000000000 : ℚ)
  w := (723414238661 / 500000000000 : ℚ)
  center := (209625000000000011 / 400000000000000000 : ℚ)
  supportValue := (20095265372802723 / 50000000000000000 : ℚ)
  supportSlope := (-1829307375052161 / 1000000000000000 : ℚ)
  oldCenter := (20095265372802723 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1241
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974, piece_975]
}

noncomputable def cell_10796 : Cell := { cellDefaults with
  domain := ⟨(104825000000000007 / 200000000000000000 : ℚ), (10485000000000001 / 20000000000000000 : ℚ)⟩
  r := (60233646584621 / 100000000000000 : ℚ)
  w := (723414238661 / 500000000000 : ℚ)
  center := (209675000000000017 / 400000000000000000 : ℚ)
  supportValue := (4016767561770067 / 10000000000000000 : ℚ)
  supportSlope := (-4568525665788477 / 2500000000000000 : ℚ)
  oldCenter := (4016767561770067 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1241
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974]
}

noncomputable def cell_10797 : Cell := { cellDefaults with
  domain := ⟨(10485000000000001 / 20000000000000000 : ℚ), (5243575418994413 / 10000000000000000 : ℚ)⟩
  r := (60233646584621 / 100000000000000 : ℚ)
  w := (723414238661 / 500000000000 : ℚ)
  center := (20972150837988827 / 40000000000000000 : ℚ)
  supportValue := (1605857461414699 / 4000000000000000 : ℚ)
  supportSlope := (-1826375787190497 / 1000000000000000 : ℚ)
  oldCenter := (1605857461414699 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1241
  oldLo := (20050000000000001 / 50000000000000000 : ℚ)
  oldHi := (20100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_973, piece_974]
}

noncomputable def cell_10798 : Cell := { cellDefaults with
  domain := ⟨(5243575418994413 / 10000000000000000 : ℚ), (6556250000000001 / 12500000000000000 : ℚ)⟩
  r := (60233646584621 / 100000000000000 : ℚ)
  w := (723414238661 / 500000000000 : ℚ)
  center := (52442877094972069 / 100000000000000000 : ℚ)
  supportValue := (80247229108047 / 200000000000000 : ℚ)
  supportSlope := (-18247584559799193 / 10000000000000000 : ℚ)
  oldCenter := (80247229108047 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1242
  oldLo := (20050000000000001 / 50000000000000000 : ℚ)
  oldHi := (20075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_973]
}

noncomputable def cell_10799 : Cell := { cellDefaults with
  domain := ⟨(6556250000000001 / 12500000000000000 : ℚ), (104925000000000013 / 200000000000000000 : ℚ)⟩
  r := (15050206146189 / 25000000000000 : ℚ)
  w := (3616073474141 / 2500000000000 : ℚ)
  center := (209825000000000029 / 400000000000000000 : ℚ)
  supportValue := (20073473846185397 / 50000000000000000 : ℚ)
  supportSlope := (-3650680111567877 / 2000000000000000 : ℚ)
  oldCenter := (20073473846185397 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1243
  oldLo := (20050000000000001 / 50000000000000000 : ℚ)
  oldHi := (20100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_973, piece_974]
}

theorem check_10750 : cell_10750.check = true := by
  decide +kernel

theorem check_10751 : cell_10751.check = true := by
  decide +kernel

theorem check_10752 : cell_10752.check = true := by
  decide +kernel

theorem check_10753 : cell_10753.check = true := by
  decide +kernel

theorem check_10754 : cell_10754.check = true := by
  decide +kernel

theorem check_10755 : cell_10755.check = true := by
  decide +kernel

theorem check_10756 : cell_10756.check = true := by
  decide +kernel

theorem check_10757 : cell_10757.check = true := by
  decide +kernel

theorem check_10758 : cell_10758.check = true := by
  decide +kernel

theorem check_10759 : cell_10759.check = true := by
  decide +kernel

theorem check_10760 : cell_10760.check = true := by
  decide +kernel

theorem check_10761 : cell_10761.check = true := by
  decide +kernel

theorem check_10762 : cell_10762.check = true := by
  decide +kernel

theorem check_10763 : cell_10763.check = true := by
  decide +kernel

theorem check_10764 : cell_10764.check = true := by
  decide +kernel

theorem check_10765 : cell_10765.check = true := by
  decide +kernel

theorem check_10766 : cell_10766.check = true := by
  decide +kernel

theorem check_10767 : cell_10767.check = true := by
  decide +kernel

theorem check_10768 : cell_10768.check = true := by
  decide +kernel

theorem check_10769 : cell_10769.check = true := by
  decide +kernel

theorem check_10770 : cell_10770.check = true := by
  decide +kernel

theorem check_10771 : cell_10771.check = true := by
  decide +kernel

theorem check_10772 : cell_10772.check = true := by
  decide +kernel

theorem check_10773 : cell_10773.check = true := by
  decide +kernel

theorem check_10774 : cell_10774.check = true := by
  decide +kernel

theorem check_10775 : cell_10775.check = true := by
  decide +kernel

theorem check_10776 : cell_10776.check = true := by
  decide +kernel

theorem check_10777 : cell_10777.check = true := by
  decide +kernel

theorem check_10778 : cell_10778.check = true := by
  decide +kernel

theorem check_10779 : cell_10779.check = true := by
  decide +kernel

theorem check_10780 : cell_10780.check = true := by
  decide +kernel

theorem check_10781 : cell_10781.check = true := by
  decide +kernel

theorem check_10782 : cell_10782.check = true := by
  decide +kernel

theorem check_10783 : cell_10783.check = true := by
  decide +kernel

theorem check_10784 : cell_10784.check = true := by
  decide +kernel

theorem check_10785 : cell_10785.check = true := by
  decide +kernel

theorem check_10786 : cell_10786.check = true := by
  decide +kernel

theorem check_10787 : cell_10787.check = true := by
  decide +kernel

theorem check_10788 : cell_10788.check = true := by
  decide +kernel

theorem check_10789 : cell_10789.check = true := by
  decide +kernel

theorem check_10790 : cell_10790.check = true := by
  decide +kernel

theorem check_10791 : cell_10791.check = true := by
  decide +kernel

theorem check_10792 : cell_10792.check = true := by
  decide +kernel

theorem check_10793 : cell_10793.check = true := by
  decide +kernel

theorem check_10794 : cell_10794.check = true := by
  decide +kernel

theorem check_10795 : cell_10795.check = true := by
  decide +kernel

theorem check_10796 : cell_10796.check = true := by
  decide +kernel

theorem check_10797 : cell_10797.check = true := by
  decide +kernel

theorem check_10798 : cell_10798.check = true := by
  decide +kernel

theorem check_10799 : cell_10799.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_10750, cell_10751, cell_10752, cell_10753, cell_10754, cell_10755, cell_10756, cell_10757, cell_10758, cell_10759, cell_10760, cell_10761, cell_10762, cell_10763, cell_10764, cell_10765, cell_10766, cell_10767, cell_10768, cell_10769, cell_10770, cell_10771, cell_10772, cell_10773, cell_10774, cell_10775, cell_10776, cell_10777, cell_10778, cell_10779, cell_10780, cell_10781, cell_10782, cell_10783, cell_10784, cell_10785, cell_10786, cell_10787, cell_10788, cell_10789, cell_10790, cell_10791, cell_10792, cell_10793, cell_10794, cell_10795, cell_10796, cell_10797, cell_10798, cell_10799]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10750, check_10751, check_10752, check_10753, check_10754, check_10755, check_10756, check_10757, check_10758, check_10759, check_10760, check_10761, check_10762, check_10763, check_10764, check_10765, check_10766, check_10767, check_10768, check_10769, check_10770, check_10771, check_10772, check_10773, check_10774, check_10775, check_10776, check_10777, check_10778, check_10779, check_10780, check_10781, check_10782, check_10783, check_10784, check_10785, check_10786, check_10787, check_10788, check_10789, check_10790, check_10791, check_10792, check_10793, check_10794, check_10795, check_10796, check_10797, check_10798, check_10799, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0215

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0215
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0215
open AnalyticBounds.ExpressionCertificate

theorem linked_10750 : Linked cell_10750 pieces := by
  apply Linked.of_piece piece_1229 piece_1229_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10750, List.cons_subset, List.nil_subset, and_true]
  exact piece_985_mem

theorem linked_10751 : Linked cell_10751 pieces := by
  apply Linked.of_piece piece_1229 piece_1229_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10751, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_984_mem, piece_985_mem⟩

theorem linked_10752 : Linked cell_10752 pieces := by
  apply Linked.of_piece piece_1229 piece_1229_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10752, List.cons_subset, List.nil_subset, and_true]
  exact piece_984_mem

theorem linked_10753 : Linked cell_10753 pieces := by
  apply Linked.of_piece piece_1230 piece_1230_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10753, List.cons_subset, List.nil_subset, and_true]
  exact piece_984_mem

theorem linked_10754 : Linked cell_10754 pieces := by
  apply Linked.of_piece piece_1230 piece_1230_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10754, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_983_mem, piece_984_mem⟩

theorem linked_10755 : Linked cell_10755 pieces := by
  apply Linked.of_piece piece_1231 piece_1231_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10755, List.cons_subset, List.nil_subset, and_true]
  exact piece_984_mem

theorem linked_10756 : Linked cell_10756 pieces := by
  apply Linked.of_piece piece_1231 piece_1231_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10756, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_983_mem, piece_984_mem⟩

theorem linked_10757 : Linked cell_10757 pieces := by
  apply Linked.of_piece piece_1231 piece_1231_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10757, List.cons_subset, List.nil_subset, and_true]
  exact piece_983_mem

theorem linked_10758 : Linked cell_10758 pieces := by
  apply Linked.of_piece piece_1231 piece_1231_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10758, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_982_mem, piece_983_mem⟩

theorem linked_10759 : Linked cell_10759 pieces := by
  apply Linked.of_piece piece_1232 piece_1232_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10759, List.cons_subset, List.nil_subset, and_true]
  exact piece_983_mem

theorem linked_10760 : Linked cell_10760 pieces := by
  apply Linked.of_piece piece_1232 piece_1232_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10760, List.cons_subset, List.nil_subset, and_true]
  exact piece_983_mem

theorem linked_10761 : Linked cell_10761 pieces := by
  apply Linked.of_piece piece_1232 piece_1232_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10761, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_982_mem, piece_983_mem⟩

theorem linked_10762 : Linked cell_10762 pieces := by
  apply Linked.of_piece piece_1232 piece_1232_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10762, List.cons_subset, List.nil_subset, and_true]
  exact piece_982_mem

theorem linked_10763 : Linked cell_10763 pieces := by
  apply Linked.of_piece piece_1233 piece_1233_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10763, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_982_mem, piece_983_mem⟩

theorem linked_10764 : Linked cell_10764 pieces := by
  apply Linked.of_piece piece_1233 piece_1233_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10764, List.cons_subset, List.nil_subset, and_true]
  exact piece_982_mem

theorem linked_10765 : Linked cell_10765 pieces := by
  apply Linked.of_piece piece_1233 piece_1233_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10765, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_981_mem, piece_982_mem⟩

theorem linked_10766 : Linked cell_10766 pieces := by
  apply Linked.of_piece piece_1233 piece_1233_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10766, List.cons_subset, List.nil_subset, and_true]
  exact piece_981_mem

theorem linked_10767 : Linked cell_10767 pieces := by
  apply Linked.of_piece piece_1234 piece_1234_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10767, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_981_mem, piece_982_mem⟩

theorem linked_10768 : Linked cell_10768 pieces := by
  apply Linked.of_piece piece_1234 piece_1234_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10768, List.cons_subset, List.nil_subset, and_true]
  exact piece_981_mem

theorem linked_10769 : Linked cell_10769 pieces := by
  apply Linked.of_piece piece_1234 piece_1234_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10769, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_980_mem, piece_981_mem⟩

theorem linked_10770 : Linked cell_10770 pieces := by
  apply Linked.of_piece piece_1234 piece_1234_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10770, List.cons_subset, List.nil_subset, and_true]
  exact piece_980_mem

theorem linked_10771 : Linked cell_10771 pieces := by
  apply Linked.of_piece piece_1235 piece_1235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10771, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_980_mem, piece_981_mem⟩

theorem linked_10772 : Linked cell_10772 pieces := by
  apply Linked.of_piece piece_1235 piece_1235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10772, List.cons_subset, List.nil_subset, and_true]
  exact piece_980_mem

theorem linked_10773 : Linked cell_10773 pieces := by
  apply Linked.of_piece piece_1235 piece_1235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10773, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_979_mem, piece_980_mem⟩

theorem linked_10774 : Linked cell_10774 pieces := by
  apply Linked.of_piece piece_1235 piece_1235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10774, List.cons_subset, List.nil_subset, and_true]
  exact piece_979_mem

theorem linked_10775 : Linked cell_10775 pieces := by
  apply Linked.of_piece piece_1236 piece_1236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10775, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_979_mem, piece_980_mem⟩

theorem linked_10776 : Linked cell_10776 pieces := by
  apply Linked.of_piece piece_1236 piece_1236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10776, List.cons_subset, List.nil_subset, and_true]
  exact piece_979_mem

theorem linked_10777 : Linked cell_10777 pieces := by
  apply Linked.of_piece piece_1236 piece_1236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10777, List.cons_subset, List.nil_subset, and_true]
  exact piece_979_mem

theorem linked_10778 : Linked cell_10778 pieces := by
  apply Linked.of_piece piece_1236 piece_1236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10778, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_978_mem, piece_979_mem⟩

theorem linked_10779 : Linked cell_10779 pieces := by
  apply Linked.of_piece piece_1237 piece_1237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10779, List.cons_subset, List.nil_subset, and_true]
  exact piece_979_mem

theorem linked_10780 : Linked cell_10780 pieces := by
  apply Linked.of_piece piece_1237 piece_1237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10780, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_978_mem, piece_979_mem⟩

theorem linked_10781 : Linked cell_10781 pieces := by
  apply Linked.of_piece piece_1237 piece_1237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10781, List.cons_subset, List.nil_subset, and_true]
  exact piece_978_mem

theorem linked_10782 : Linked cell_10782 pieces := by
  apply Linked.of_piece piece_1237 piece_1237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10782, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_977_mem, piece_978_mem⟩

theorem linked_10783 : Linked cell_10783 pieces := by
  apply Linked.of_piece piece_1238 piece_1238_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10783, List.cons_subset, List.nil_subset, and_true]
  exact piece_978_mem

theorem linked_10784 : Linked cell_10784 pieces := by
  apply Linked.of_piece piece_1238 piece_1238_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10784, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_977_mem, piece_978_mem⟩

theorem linked_10785 : Linked cell_10785 pieces := by
  apply Linked.of_piece piece_1238 piece_1238_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10785, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_976_mem, piece_977_mem⟩

theorem linked_10786 : Linked cell_10786 pieces := by
  apply Linked.of_piece piece_1238 piece_1238_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10786, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_975_mem, piece_976_mem⟩

theorem linked_10787 : Linked cell_10787 pieces := by
  apply Linked.of_piece piece_1239 piece_1239_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10787, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_976_mem, piece_977_mem⟩

theorem linked_10788 : Linked cell_10788 pieces := by
  apply Linked.of_piece piece_1239 piece_1239_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10788, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_975_mem, piece_976_mem⟩

theorem linked_10789 : Linked cell_10789 pieces := by
  apply Linked.of_piece piece_1239 piece_1239_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10789, List.cons_subset, List.nil_subset, and_true]
  exact piece_975_mem

theorem linked_10790 : Linked cell_10790 pieces := by
  apply Linked.of_piece piece_1239 piece_1239_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10790, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_974_mem, piece_975_mem⟩

theorem linked_10791 : Linked cell_10791 pieces := by
  apply Linked.of_piece piece_1240 piece_1240_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10791, List.cons_subset, List.nil_subset, and_true]
  exact piece_975_mem

theorem linked_10792 : Linked cell_10792 pieces := by
  apply Linked.of_piece piece_1240 piece_1240_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10792, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_974_mem, piece_975_mem⟩

theorem linked_10793 : Linked cell_10793 pieces := by
  apply Linked.of_piece piece_1240 piece_1240_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10793, List.cons_subset, List.nil_subset, and_true]
  exact piece_974_mem

theorem linked_10794 : Linked cell_10794 pieces := by
  apply Linked.of_piece piece_1240 piece_1240_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10794, List.cons_subset, List.nil_subset, and_true]
  exact piece_974_mem

theorem linked_10795 : Linked cell_10795 pieces := by
  apply Linked.of_piece piece_1241 piece_1241_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10795, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_974_mem, piece_975_mem⟩

theorem linked_10796 : Linked cell_10796 pieces := by
  apply Linked.of_piece piece_1241 piece_1241_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10796, List.cons_subset, List.nil_subset, and_true]
  exact piece_974_mem

theorem linked_10797 : Linked cell_10797 pieces := by
  apply Linked.of_piece piece_1241 piece_1241_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10797, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_973_mem, piece_974_mem⟩

theorem linked_10798 : Linked cell_10798 pieces := by
  apply Linked.of_piece piece_1242 piece_1242_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10798, List.cons_subset, List.nil_subset, and_true]
  exact piece_973_mem

theorem linked_10799 : Linked cell_10799 pieces := by
  apply Linked.of_piece piece_1243 piece_1243_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10799, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_973_mem, piece_974_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0215.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0215.cells,List.forall_mem_cons]
  exact ⟨linked_10750, linked_10751, linked_10752, linked_10753, linked_10754, linked_10755, linked_10756, linked_10757, linked_10758, linked_10759, linked_10760, linked_10761, linked_10762, linked_10763, linked_10764, linked_10765, linked_10766, linked_10767, linked_10768, linked_10769, linked_10770, linked_10771, linked_10772, linked_10773, linked_10774, linked_10775, linked_10776, linked_10777, linked_10778, linked_10779, linked_10780, linked_10781, linked_10782, linked_10783, linked_10784, linked_10785, linked_10786, linked_10787, linked_10788, linked_10789, linked_10790, linked_10791, linked_10792, linked_10793, linked_10794, linked_10795, linked_10796, linked_10797, linked_10798, linked_10799, by simp⟩

theorem covered : covers (12962499999999999 / 25000000000000000 : ℚ) (104925000000000013 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0215.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0215
