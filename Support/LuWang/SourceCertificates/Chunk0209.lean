import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0209
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(12043750000000001 / 25000000000000000 : ℚ), (12046875000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (62886809284559 / 100000000000000 : ℚ)
  w := (7400744651981 / 5000000000000 : ℚ)
  center := (12045312500000001 / 25000000000000000 : ℚ)
  supportValue := (2210017097920113 / 5000000000000000 : ℚ)
  supportSlope := (-21914518168761887 / 10000000000000000 : ℚ)
  oldCenter := (2210017097920113 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1150
  oldLo := (883 / 2000 : ℚ)
  oldHi := (221 / 500 : ℚ)
  oldPieces := [piece_1055, piece_1056]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10450 : Cell := { cellDefaults with
  r := (63177472081187 / 100000000000000 : ℚ)
  w := (927450099373 / 625000000000 : ℚ)
  newCoefficients := coefficients_1149
  oldHi := (177 / 400 : ℚ)
  oldPieces := [piece_1062, piece_1063]
}

def cell_10451 : Cell := { cellDefaults with
  domain := ⟨(12046875000000001 / 25000000000000000 : ℚ), (12050000000000001 / 25000000000000000 : ℚ)⟩
  r := (63177472081187 / 100000000000000 : ℚ)
  w := (927450099373 / 625000000000 : ℚ)
  center := (12048437500000001 / 25000000000000000 : ℚ)
  supportValue := (22086478959208053 / 50000000000000000 : ℚ)
  supportSlope := (-109477355768961 / 50000000000000 : ℚ)
  oldCenter := (22086478959208053 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1149
  oldPieces := [piece_1062]
}

def cell_10452 : Cell := { cellDefaults with
  domain := ⟨(12050000000000001 / 25000000000000000 : ℚ), (12053125000000001 / 25000000000000000 : ℚ)⟩
  r := (31570488004539 / 50000000000000 : ℚ)
  w := (14834454124301 / 10000000000000 : ℚ)
  center := (12051562500000001 / 25000000000000000 : ℚ)
  supportValue := (22101409473169517 / 50000000000000000 : ℚ)
  supportSlope := (-21902776997064777 / 10000000000000000 : ℚ)
  oldCenter := (22101409473169517 / 50000000000000000 : ℚ)
  oldHi := (177 / 400 : ℚ)
  oldPieces := [piece_1062, piece_1063]
}

def cell_10453 : Cell := { cellDefaults with
  domain := ⟨(12053125000000001 / 25000000000000000 : ℚ), (12056250000000001 / 25000000000000000 : ℚ)⟩
  r := (31570488004539 / 50000000000000 : ℚ)
  w := (14834454124301 / 10000000000000 : ℚ)
  center := (12054687500000001 / 25000000000000000 : ℚ)
  supportValue := (1104386239100579 / 2500000000000000 : ℚ)
  supportSlope := (-4376915695795347 / 2000000000000000 : ℚ)
  oldCenter := (1104386239100579 / 2500000000000000 : ℚ)
  oldPieces := [piece_1062]
}

def cell_10454 : Cell := { cellDefaults with
  domain := ⟨(12056250000000001 / 25000000000000000 : ℚ), (12059375000000001 / 25000000000000000 : ℚ)⟩
  r := (31570488004539 / 50000000000000 : ℚ)
  w := (14834454124301 / 10000000000000 : ℚ)
  center := (12057812500000001 / 25000000000000000 : ℚ)
  supportValue := (4414810776821471 / 10000000000000000 : ℚ)
  supportSlope := (-21866156744945187 / 10000000000000000 : ℚ)
  oldCenter := (4414810776821471 / 10000000000000000 : ℚ)
  oldLo := (441 / 1000 : ℚ)
  oldPieces := [piece_1060, piece_1061, piece_1062]
}

def cell_10455 : Cell := { cellDefaults with
  domain := ⟨(12059375000000001 / 25000000000000000 : ℚ), (12062500000000001 / 25000000000000000 : ℚ)⟩
  r := (31570488004539 / 50000000000000 : ℚ)
  w := (14834454124301 / 10000000000000 : ℚ)
  center := (12060937500000001 / 25000000000000000 : ℚ)
  supportValue := (4412078493239449 / 10000000000000000 : ℚ)
  supportSlope := (-1092321935718843 / 500000000000000 : ℚ)
  oldCenter := (4412078493239449 / 10000000000000000 : ℚ)
  oldLo := (441 / 1000 : ℚ)
  oldHi := (4413966480446927 / 10000000000000000 : ℚ)
  oldPieces := [piece_1060]
}

def cell_10456 : Cell := { cellDefaults with
  domain := ⟨(12062500000000001 / 25000000000000000 : ℚ), (12065625000000001 / 25000000000000000 : ℚ)⟩
  r := (1577613188089 / 2500000000000 : ℚ)
  w := (7414857970347 / 5000000000000 : ℚ)
  center := (12064062500000001 / 25000000000000000 : ℚ)
  supportValue := (4415058177628901 / 10000000000000000 : ℚ)
  supportSlope := (-2731805918144703 / 1250000000000000 : ℚ)
  oldCenter := (4415058177628901 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1151
  oldLo := (441 / 1000 : ℚ)
  oldPieces := [piece_1060, piece_1061, piece_1062]
}

def cell_10457 : Cell := { cellDefaults with
  domain := ⟨(12065625000000001 / 25000000000000000 : ℚ), (12068750000000001 / 25000000000000000 : ℚ)⟩
  r := (1577613188089 / 2500000000000 : ℚ)
  w := (7414857970347 / 5000000000000 : ℚ)
  center := (12067187500000001 / 25000000000000000 : ℚ)
  supportValue := (22061636376668567 / 50000000000000000 : ℚ)
  supportSlope := (-2183558083665993 / 1000000000000000 : ℚ)
  oldCenter := (22061636376668567 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1151
  oldLo := (441 / 1000 : ℚ)
  oldHi := (4413966480446927 / 10000000000000000 : ℚ)
  oldPieces := [piece_1060]
}

def cell_10458 : Cell := { cellDefaults with
  domain := ⟨(12068750000000001 / 25000000000000000 : ℚ), (12071875000000001 / 25000000000000000 : ℚ)⟩
  r := (1577613188089 / 2500000000000 : ℚ)
  w := (7414857970347 / 5000000000000 : ℚ)
  center := (12070312500000001 / 25000000000000000 : ℚ)
  supportValue := (1102399782014209 / 2500000000000000 : ℚ)
  supportSlope := (-272724221791143 / 125000000000000 : ℚ)
  oldCenter := (1102399782014209 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1151
  oldLo := (881 / 2000 : ℚ)
  oldHi := (4413966480446927 / 10000000000000000 : ℚ)
  oldPieces := [piece_1059, piece_1060]
}

def cell_10459 : Cell := { cellDefaults with
  domain := ⟨(12071875000000001 / 25000000000000000 : ℚ), (12075000000000001 / 25000000000000000 : ℚ)⟩
  r := (1577613188089 / 2500000000000 : ℚ)
  w := (7414857970347 / 5000000000000 : ℚ)
  center := (12073437500000001 / 25000000000000000 : ℚ)
  supportValue := (44068729559693987 / 100000000000000000 : ℚ)
  supportSlope := (-1089878693717683 / 500000000000000 : ℚ)
  oldCenter := (44068729559693987 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1151
  oldLo := (881 / 2000 : ℚ)
  oldHi := (441 / 1000 : ℚ)
  oldPieces := [piece_1059]
}

def cell_10460 : Cell := { cellDefaults with
  domain := ⟨(12075000000000001 / 25000000000000000 : ℚ), (12078125000000001 / 25000000000000000 : ℚ)⟩
  r := (15767031234993 / 25000000000000 : ℚ)
  w := (14824987455109 / 10000000000000 : ℚ)
  center := (12076562500000001 / 25000000000000000 : ℚ)
  supportValue := (22049231149969753 / 50000000000000000 : ℚ)
  supportSlope := (-2180626111662143 / 1000000000000000 : ℚ)
  oldCenter := (22049231149969753 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1152
  oldLo := (881 / 2000 : ℚ)
  oldHi := (4413966480446927 / 10000000000000000 : ℚ)
  oldPieces := [piece_1059, piece_1060]
}

def cell_10461 : Cell := { cellDefaults with
  domain := ⟨(12078125000000001 / 25000000000000000 : ℚ), (12081250000000001 / 25000000000000000 : ℚ)⟩
  r := (15767031234993 / 25000000000000 : ℚ)
  w := (14824987455109 / 10000000000000 : ℚ)
  center := (12079687500000001 / 25000000000000000 : ℚ)
  supportValue := (1762848564958307 / 4000000000000000 : ℚ)
  supportSlope := (-680835959147863 / 312500000000000 : ℚ)
  oldCenter := (1762848564958307 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1152
  oldLo := (881 / 2000 : ℚ)
  oldHi := (441 / 1000 : ℚ)
  oldPieces := [piece_1059]
}

def cell_10462 : Cell := { cellDefaults with
  domain := ⟨(12081250000000001 / 25000000000000000 : ℚ), (12084375000000001 / 25000000000000000 : ℚ)⟩
  r := (15767031234993 / 25000000000000 : ℚ)
  w := (14824987455109 / 10000000000000 : ℚ)
  center := (12082812500000001 / 25000000000000000 : ℚ)
  supportValue := (880879856107507 / 2000000000000000 : ℚ)
  supportSlope := (-544246359448497 / 250000000000000 : ℚ)
  oldCenter := (880879856107507 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1152
  oldLo := (11 / 25 : ℚ)
  oldHi := (441 / 1000 : ℚ)
  oldPieces := [piece_1058, piece_1059]
}

def cell_10463 : Cell := { cellDefaults with
  domain := ⟨(12084375000000001 / 25000000000000000 : ℚ), (12087500000000001 / 25000000000000000 : ℚ)⟩
  r := (15767031234993 / 25000000000000 : ℚ)
  w := (14824987455109 / 10000000000000 : ℚ)
  center := (12085937500000001 / 25000000000000000 : ℚ)
  supportValue := (4401679198732199 / 10000000000000000 : ℚ)
  supportSlope := (-21748879803951127 / 10000000000000000 : ℚ)
  oldCenter := (4401679198732199 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1152
  oldLo := (11 / 25 : ℚ)
  oldHi := (881 / 2000 : ℚ)
  oldPieces := [piece_1058]
}

def cell_10464 : Cell := { cellDefaults with
  domain := ⟨(12087500000000001 / 25000000000000000 : ℚ), (12090625000000001 / 25000000000000000 : ℚ)⟩
  r := (3077723099 / 4882812500 : ℚ)
  w := (926266773953 / 625000000000 : ℚ)
  center := (12089062500000001 / 25000000000000000 : ℚ)
  supportValue := (2202323016235217 / 5000000000000000 : ℚ)
  supportSlope := (-174065675797479 / 80000000000000 : ℚ)
  oldCenter := (2202323016235217 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1153
  oldLo := (11 / 25 : ℚ)
  oldHi := (441 / 1000 : ℚ)
  oldPieces := [piece_1058, piece_1059]
}

def cell_10465 : Cell := { cellDefaults with
  domain := ⟨(12090625000000001 / 25000000000000000 : ℚ), (12093750000000001 / 25000000000000000 : ℚ)⟩
  r := (3077723099 / 4882812500 : ℚ)
  w := (926266773953 / 625000000000 : ℚ)
  center := (12092187500000001 / 25000000000000000 : ℚ)
  supportValue := (44019273008105303 / 100000000000000000 : ℚ)
  supportSlope := (-4347618316398183 / 2000000000000000 : ℚ)
  oldCenter := (44019273008105303 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1153
  oldLo := (11 / 25 : ℚ)
  oldHi := (881 / 2000 : ℚ)
  oldPieces := [piece_1058]
}

def cell_10466 : Cell := { cellDefaults with
  domain := ⟨(12093750000000001 / 25000000000000000 : ℚ), (12096875000000001 / 25000000000000000 : ℚ)⟩
  r := (3077723099 / 4882812500 : ℚ)
  w := (926266773953 / 625000000000 : ℚ)
  center := (12095312500000001 / 25000000000000000 : ℚ)
  supportValue := (35193689336493 / 80000000000000 : ℚ)
  supportSlope := (-868876377088057 / 400000000000000 : ℚ)
  oldCenter := (35193689336493 / 80000000000000 : ℚ)
  newCoefficients := coefficients_1153
  oldLo := (879 / 2000 : ℚ)
  oldHi := (881 / 2000 : ℚ)
  oldPieces := [piece_1057, piece_1058]
}

def cell_10467 : Cell := { cellDefaults with
  domain := ⟨(12096875000000001 / 25000000000000000 : ℚ), (12100000000000001 / 25000000000000000 : ℚ)⟩
  r := (3077723099 / 4882812500 : ℚ)
  w := (926266773953 / 625000000000 : ℚ)
  center := (12098437500000001 / 25000000000000000 : ℚ)
  supportValue := (2198248577066717 / 5000000000000000 : ℚ)
  supportSlope := (-434007145378601 / 200000000000000 : ℚ)
  oldCenter := (2198248577066717 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1153
  oldLo := (879 / 2000 : ℚ)
  oldHi := (11 / 25 : ℚ)
  oldPieces := [piece_1057]
}

def cell_10468 : Cell := { cellDefaults with
  domain := ⟨(12100000000000001 / 25000000000000000 : ℚ), (12103125000000001 / 25000000000000000 : ℚ)⟩
  r := (787443252021 / 1250000000000 : ℚ)
  w := (7407779826043 / 5000000000000 : ℚ)
  center := (12101562500000001 / 25000000000000000 : ℚ)
  supportValue := (4399457245894799 / 10000000000000000 : ℚ)
  supportSlope := (-10855147620918437 / 5000000000000000 : ℚ)
  oldCenter := (4399457245894799 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1154
  oldLo := (879 / 2000 : ℚ)
  oldHi := (881 / 2000 : ℚ)
  oldPieces := [piece_1057, piece_1058]
}

def cell_10469 : Cell := { cellDefaults with
  domain := ⟨(12103125000000001 / 25000000000000000 : ℚ), (12106250000000001 / 25000000000000000 : ℚ)⟩
  r := (787443252021 / 1250000000000 : ℚ)
  w := (7407779826043 / 5000000000000 : ℚ)
  center := (12104687500000001 / 25000000000000000 : ℚ)
  supportValue := (879348915815967 / 2000000000000000 : ℚ)
  supportSlope := (-21689601190253427 / 10000000000000000 : ℚ)
  oldCenter := (879348915815967 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1154
  oldLo := (879 / 2000 : ℚ)
  oldHi := (11 / 25 : ℚ)
  oldPieces := [piece_1057]
}

def cell_10470 : Cell := { cellDefaults with
  domain := ⟨(12106250000000001 / 25000000000000000 : ℚ), (12109375000000001 / 25000000000000000 : ℚ)⟩
  r := (787443252021 / 1250000000000 : ℚ)
  w := (7407779826043 / 5000000000000 : ℚ)
  center := (12107812500000001 / 25000000000000000 : ℚ)
  supportValue := (878806885266719 / 2000000000000000 : ℚ)
  supportSlope := (-5418525457729917 / 2500000000000000 : ℚ)
  oldCenter := (878806885266719 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1154
  oldLo := (439 / 1000 : ℚ)
  oldHi := (11 / 25 : ℚ)
  oldPieces := [piece_1056, piece_1057]
}

def cell_10471 : Cell := { cellDefaults with
  domain := ⟨(12109375000000001 / 25000000000000000 : ℚ), (12112500000000001 / 25000000000000000 : ℚ)⟩
  r := (787443252021 / 1250000000000 : ℚ)
  w := (7407779826043 / 5000000000000 : ℚ)
  center := (12110937500000001 / 25000000000000000 : ℚ)
  supportValue := (43913264610644503 / 100000000000000000 : ℚ)
  supportSlope := (-216521100018241 / 100000000000000 : ℚ)
  oldCenter := (43913264610644503 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1154
  oldLo := (877 / 2000 : ℚ)
  oldHi := (879 / 2000 : ℚ)
  oldPieces := [piece_1055, piece_1056]
}

def cell_10472 : Cell := { cellDefaults with
  domain := ⟨(12112500000000001 / 25000000000000000 : ℚ), (12115625000000001 / 25000000000000000 : ℚ)⟩
  r := (15739799209913 / 25000000000000 : ℚ)
  w := (14810859851873 / 10000000000000 : ℚ)
  center := (12114062500000001 / 25000000000000000 : ℚ)
  supportValue := (2197140197698519 / 5000000000000000 : ℚ)
  supportSlope := (-21662520025689247 / 10000000000000000 : ℚ)
  oldCenter := (2197140197698519 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1155
  oldLo := (439 / 1000 : ℚ)
  oldHi := (11 / 25 : ℚ)
  oldPieces := [piece_1056, piece_1057]
}

def cell_10473 : Cell := { cellDefaults with
  domain := ⟨(12115625000000001 / 25000000000000000 : ℚ), (12118750000000001 / 25000000000000000 : ℚ)⟩
  r := (15739799209913 / 25000000000000 : ℚ)
  w := (14810859851873 / 10000000000000 : ℚ)
  center := (12117187500000001 / 25000000000000000 : ℚ)
  supportValue := (4391573771755223 / 10000000000000000 : ℚ)
  supportSlope := (-21641284221214363 / 10000000000000000 : ℚ)
  oldCenter := (4391573771755223 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1155
  oldLo := (439 / 1000 : ℚ)
  oldHi := (879 / 2000 : ℚ)
  oldPieces := [piece_1056]
}

def cell_10474 : Cell := { cellDefaults with
  domain := ⟨(12118750000000001 / 25000000000000000 : ℚ), (12121875000000001 / 25000000000000000 : ℚ)⟩
  r := (15739799209913 / 25000000000000 : ℚ)
  w := (14810859851873 / 10000000000000 : ℚ)
  center := (12120312500000001 / 25000000000000000 : ℚ)
  supportValue := (4388869582646971 / 10000000000000000 : ℚ)
  supportSlope := (-5406608190006157 / 2500000000000000 : ℚ)
  oldCenter := (4388869582646971 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1155
  oldLo := (877 / 2000 : ℚ)
  oldHi := (879 / 2000 : ℚ)
  oldPieces := [piece_1055, piece_1056]
}

def cell_10475 : Cell := { cellDefaults with
  domain := ⟨(12121875000000001 / 25000000000000000 : ℚ), (12125000000000001 / 25000000000000000 : ℚ)⟩
  r := (15739799209913 / 25000000000000 : ℚ)
  w := (14810859851873 / 10000000000000 : ℚ)
  center := (12123437500000001 / 25000000000000000 : ℚ)
  supportValue := (2193083821747913 / 5000000000000000 : ℚ)
  supportSlope := (-2160446557084583 / 1000000000000000 : ℚ)
  oldCenter := (2193083821747913 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1155
  oldLo := (219 / 500 : ℚ)
  oldHi := (439 / 1000 : ℚ)
  oldPieces := [piece_1054, piece_1055]
}

def cell_10476 : Cell := { cellDefaults with
  domain := ⟨(12125000000000001 / 25000000000000000 : ℚ), (12128125000000001 / 25000000000000000 : ℚ)⟩
  r := (3146149012859 / 5000000000000 : ℚ)
  w := (14806169365853 / 10000000000000 : ℚ)
  center := (12126562500000001 / 25000000000000000 : ℚ)
  supportValue := (4389115174369939 / 10000000000000000 : ℚ)
  supportSlope := (-432297648432467 / 200000000000000 : ℚ)
  oldCenter := (4389115174369939 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1156
  oldLo := (877 / 2000 : ℚ)
  oldHi := (879 / 2000 : ℚ)
  oldPieces := [piece_1055, piece_1056]
}

def cell_10477 : Cell := { cellDefaults with
  domain := ⟨(12128125000000001 / 25000000000000000 : ℚ), (12131250000000001 / 25000000000000000 : ℚ)⟩
  r := (3146149012859 / 5000000000000 : ℚ)
  w := (14806169365853 / 10000000000000 : ℚ)
  center := (12129687500000001 / 25000000000000000 : ℚ)
  supportValue := (2193207286286339 / 5000000000000000 : ℚ)
  supportSlope := (-21593137311519683 / 10000000000000000 : ℚ)
  oldCenter := (2193207286286339 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1156
  oldLo := (877 / 2000 : ℚ)
  oldHi := (439 / 1000 : ℚ)
  oldPieces := [piece_1055]
}

def cell_10478 : Cell := { cellDefaults with
  domain := ⟨(12131250000000001 / 25000000000000000 : ℚ), (12134375000000001 / 25000000000000000 : ℚ)⟩
  r := (3146149012859 / 5000000000000 : ℚ)
  w := (14806169365853 / 10000000000000 : ℚ)
  center := (12132812500000001 / 25000000000000000 : ℚ)
  supportValue := (175348653201071 / 400000000000000 : ℚ)
  supportSlope := (-21578900208929497 / 10000000000000000 : ℚ)
  oldCenter := (175348653201071 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1156
  oldLo := (219 / 500 : ℚ)
  oldHi := (439 / 1000 : ℚ)
  oldPieces := [piece_1054, piece_1055]
}

def cell_10479 : Cell := { cellDefaults with
  domain := ⟨(12134375000000001 / 25000000000000000 : ℚ), (12137500000000001 / 25000000000000000 : ℚ)⟩
  r := (3146149012859 / 5000000000000 : ℚ)
  w := (14806169365853 / 10000000000000 : ℚ)
  center := (12135937500000001 / 25000000000000000 : ℚ)
  supportValue := (4381020395919821 / 10000000000000000 : ℚ)
  supportSlope := (-1347309605956859 / 625000000000000 : ℚ)
  oldCenter := (4381020395919821 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1156
  oldLo := (7 / 16 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1053, piece_1054]
}

def cell_10480 : Cell := { cellDefaults with
  domain := ⟨(12137500000000001 / 25000000000000000 : ℚ), (12139280726256983 / 25000000000000000 : ℚ)⟩
  center := (3034597590782123 / 6250000000000000 : ℚ)
  supportValue := (43845382080223017 / 100000000000000000 : ℚ)
  supportSlope := (-21571599922058757 / 10000000000000000 : ℚ)
  oldCenter := (43845382080223017 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1157
  oldLo := (219 / 500 : ℚ)
  oldHi := (439 / 1000 : ℚ)
  oldPieces := [piece_1054, piece_1055]
}

def cell_10481 : Cell := { cellDefaults with
  domain := ⟨(12139280726256983 / 25000000000000000 : ℚ), (2428212290502793 / 5000000000000000 : ℚ)⟩
  center := (6070085544692737 / 12500000000000000 : ℚ)
  supportValue := (2191501012368181 / 5000000000000000 : ℚ)
  supportSlope := (-10780082463065497 / 5000000000000000 : ℚ)
  oldCenter := (2191501012368181 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1157
  oldLo := (219 / 500 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1054]
}

def cell_10482 : Cell := { cellDefaults with
  domain := ⟨(2428212290502793 / 5000000000000000 : ℚ), (12143750000000001 / 25000000000000000 : ℚ)⟩
  center := (12142405726256983 / 25000000000000000 : ℚ)
  supportValue := (2190539334531389 / 5000000000000000 : ℚ)
  supportSlope := (-430877395130221 / 200000000000000 : ℚ)
  oldCenter := (2190539334531389 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1158
  oldLo := (7 / 16 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1053, piece_1054]
}

def cell_10483 : Cell := { cellDefaults with
  domain := ⟨(12143750000000001 / 25000000000000000 : ℚ), (12146875000000001 / 25000000000000000 : ℚ)⟩
  center := (12145312500000001 / 25000000000000000 : ℚ)
  supportValue := (437857441847217 / 1000000000000000 : ℚ)
  supportSlope := (-430624193092477 / 200000000000000 : ℚ)
  oldCenter := (437857441847217 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1158
  oldLo := (7 / 16 : ℚ)
  oldHi := (219 / 500 : ℚ)
  oldPieces := [piece_1053]
}

def cell_10484 : Cell := { cellDefaults with
  domain := ⟨(12146875000000001 / 25000000000000000 : ℚ), (12150000000000001 / 25000000000000000 : ℚ)⟩
  center := (12148437500000001 / 25000000000000000 : ℚ)
  supportValue := (2734927792864289 / 6250000000000000 : ℚ)
  supportSlope := (-4301915098189113 / 2000000000000000 : ℚ)
  oldCenter := (2734927792864289 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1158
  oldLo := (437 / 1000 : ℚ)
  oldHi := (219 / 500 : ℚ)
  oldPieces := [piece_1052, piece_1053]
}

def cell_10485 : Cell := { cellDefaults with
  domain := ⟨(12150000000000001 / 25000000000000000 : ℚ), (12153125000000001 / 25000000000000000 : ℚ)⟩
  r := (62850683641383 / 100000000000000 : ℚ)
  w := (14796818049573 / 10000000000000 : ℚ)
  center := (12151562500000001 / 25000000000000000 : ℚ)
  supportValue := (4378819323203779 / 10000000000000000 : ℚ)
  supportSlope := (-538000294916019 / 250000000000000 : ℚ)
  oldCenter := (4378819323203779 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1159
  oldLo := (7 / 16 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1053, piece_1054]
}

def cell_10486 : Cell := { cellDefaults with
  domain := ⟨(12153125000000001 / 25000000000000000 : ℚ), (12156250000000001 / 25000000000000000 : ℚ)⟩
  r := (62850683641383 / 100000000000000 : ℚ)
  w := (14796818049573 / 10000000000000 : ℚ)
  center := (12154687500000001 / 25000000000000000 : ℚ)
  supportValue := (4376130702097737 / 10000000000000000 : ℚ)
  supportSlope := (-21498099253989267 / 10000000000000000 : ℚ)
  oldCenter := (4376130702097737 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1159
  oldLo := (437 / 1000 : ℚ)
  oldHi := (219 / 500 : ℚ)
  oldPieces := [piece_1052, piece_1053]
}

def cell_10487 : Cell := { cellDefaults with
  domain := ⟨(12156250000000001 / 25000000000000000 : ℚ), (12159375000000001 / 25000000000000000 : ℚ)⟩
  r := (62850683641383 / 100000000000000 : ℚ)
  w := (14796818049573 / 10000000000000 : ℚ)
  center := (12157812500000001 / 25000000000000000 : ℚ)
  supportValue := (21867221514956117 / 50000000000000000 : ℚ)
  supportSlope := (-21483478760124797 / 10000000000000000 : ℚ)
  oldCenter := (21867221514956117 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1159
  oldLo := (437 / 1000 : ℚ)
  oldHi := (7 / 16 : ℚ)
  oldPieces := [piece_1052]
}

def cell_10488 : Cell := { cellDefaults with
  domain := ⟨(12159375000000001 / 25000000000000000 : ℚ), (12162500000000001 / 25000000000000000 : ℚ)⟩
  r := (62850683641383 / 100000000000000 : ℚ)
  w := (14796818049573 / 10000000000000 : ℚ)
  center := (12160937500000001 / 25000000000000000 : ℚ)
  supportValue := (10926900790562609 / 25000000000000000 : ℚ)
  supportSlope := (-4292465873952267 / 2000000000000000 : ℚ)
  oldCenter := (10926900790562609 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1159
  oldLo := (873 / 2000 : ℚ)
  oldHi := (7 / 16 : ℚ)
  oldPieces := [piece_1051, piece_1052]
}

def cell_10489 : Cell := { cellDefaults with
  domain := ⟨(12162500000000001 / 25000000000000000 : ℚ), (12165625000000001 / 25000000000000000 : ℚ)⟩
  r := (15703651299533 / 25000000000000 : ℚ)
  w := (2958431430557 / 2000000000000 : ℚ)
  center := (12164062500000001 / 25000000000000000 : ℚ)
  supportValue := (5467110520201407 / 12500000000000000 : ℚ)
  supportSlope := (-5368193771055907 / 2500000000000000 : ℚ)
  oldCenter := (5467110520201407 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1160
  oldLo := (437 / 1000 : ℚ)
  oldHi := (219 / 500 : ℚ)
  oldPieces := [piece_1052, piece_1053]
}

def cell_10490 : Cell := { cellDefaults with
  domain := ⟨(12165625000000001 / 25000000000000000 : ℚ), (12168750000000001 / 25000000000000000 : ℚ)⟩
  r := (15703651299533 / 25000000000000 : ℚ)
  w := (2958431430557 / 2000000000000 : ℚ)
  center := (12167187500000001 / 25000000000000000 : ℚ)
  supportValue := (4371005754275521 / 10000000000000000 : ℚ)
  supportSlope := (-8379250983407 / 3906250000000 : ℚ)
  oldCenter := (4371005754275521 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1160
  oldLo := (873 / 2000 : ℚ)
  oldHi := (7 / 16 : ℚ)
  oldPieces := [piece_1051, piece_1052]
}

def cell_10491 : Cell := { cellDefaults with
  domain := ⟨(12168750000000001 / 25000000000000000 : ℚ), (12171875000000001 / 25000000000000000 : ℚ)⟩
  r := (15703651299533 / 25000000000000 : ℚ)
  w := (2958431430557 / 2000000000000 : ℚ)
  center := (12170312500000001 / 25000000000000000 : ℚ)
  supportValue := (54604065652561 / 125000000000000 : ℚ)
  supportSlope := (-1071795600596559 / 500000000000000 : ℚ)
  oldCenter := (54604065652561 / 125000000000000 : ℚ)
  newCoefficients := coefficients_1160
  oldLo := (873 / 2000 : ℚ)
  oldHi := (437 / 1000 : ℚ)
  oldPieces := [piece_1051]
}

def cell_10492 : Cell := { cellDefaults with
  domain := ⟨(12171875000000001 / 25000000000000000 : ℚ), (12175000000000001 / 25000000000000000 : ℚ)⟩
  r := (15703651299533 / 25000000000000 : ℚ)
  w := (2958431430557 / 2000000000000 : ℚ)
  center := (12173437500000001 / 25000000000000000 : ℚ)
  supportValue := (4365647208035059 / 10000000000000000 : ℚ)
  supportSlope := (-2141521336292307 / 1000000000000000 : ℚ)
  oldCenter := (4365647208035059 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1160
  oldLo := (8720000000000001 / 20000000000000000 : ℚ)
  oldHi := (437 / 1000 : ℚ)
  oldPieces := [piece_1050, piece_1051]
}

def cell_10493 : Cell := { cellDefaults with
  domain := ⟨(12175000000000001 / 25000000000000000 : ℚ), (12178125000000001 / 25000000000000000 : ℚ)⟩
  r := (31389285554479 / 50000000000000 : ℚ)
  w := (1848438054287 / 1250000000000 : ℚ)
  center := (12176562500000001 / 25000000000000000 : ℚ)
  supportValue := (4368569532938937 / 10000000000000000 : ℚ)
  supportSlope := (-4285067556464739 / 2000000000000000 : ℚ)
  oldCenter := (4368569532938937 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1161
  oldLo := (873 / 2000 : ℚ)
  oldHi := (437 / 1000 : ℚ)
  oldPieces := [piece_1051]
}

def cell_10494 : Cell := { cellDefaults with
  domain := ⟨(12178125000000001 / 25000000000000000 : ℚ), (12181250000000001 / 25000000000000000 : ℚ)⟩
  r := (31389285554479 / 50000000000000 : ℚ)
  w := (1848438054287 / 1250000000000 : ℚ)
  center := (12179687500000001 / 25000000000000000 : ℚ)
  supportValue := (21829464044928393 / 50000000000000000 : ℚ)
  supportSlope := (-4280759727867789 / 2000000000000000 : ℚ)
  oldCenter := (21829464044928393 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1161
  oldLo := (8720000000000001 / 20000000000000000 : ℚ)
  oldHi := (437 / 1000 : ℚ)
  oldPieces := [piece_1050, piece_1051]
}

def cell_10495 : Cell := { cellDefaults with
  domain := ⟨(12181250000000001 / 25000000000000000 : ℚ), (12184375000000001 / 25000000000000000 : ℚ)⟩
  r := (31389285554479 / 50000000000000 : ℚ)
  w := (1848438054287 / 1250000000000 : ℚ)
  center := (12182812500000001 / 25000000000000000 : ℚ)
  supportValue := (2181609093671373 / 5000000000000000 : ℚ)
  supportSlope := (-2138851567245581 / 1000000000000000 : ℚ)
  oldCenter := (2181609093671373 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1161
  oldLo := (8720000000000001 / 20000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1050]
}

def cell_10496 : Cell := { cellDefaults with
  domain := ⟨(12184375000000001 / 25000000000000000 : ℚ), (12187500000000001 / 25000000000000000 : ℚ)⟩
  r := (31389285554479 / 50000000000000 : ℚ)
  w := (1848438054287 / 1250000000000 : ℚ)
  center := (12185937500000001 / 25000000000000000 : ℚ)
  supportValue := (545068258056613 / 1250000000000000 : ℚ)
  supportSlope := (-2671028737269987 / 1250000000000000 : ℚ)
  oldCenter := (545068258056613 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1161
  oldLo := (871731843575419 / 2000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1049, piece_1050]
}

def cell_10497 : Cell := { cellDefaults with
  domain := ⟨(12187500000000001 / 25000000000000000 : ℚ), (12190625000000001 / 25000000000000000 : ℚ)⟩
  r := (62742585127727 / 100000000000000 : ℚ)
  w := (14782861912863 / 10000000000000 : ℚ)
  center := (12189062500000001 / 25000000000000000 : ℚ)
  supportValue := (4363461583085761 / 10000000000000000 : ℚ)
  supportSlope := (-85511887277967 / 40000000000000 : ℚ)
  oldCenter := (4363461583085761 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1162
  oldLo := (8720000000000001 / 20000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1050]
}

def cell_10498 : Cell := { cellDefaults with
  domain := ⟨(12190625000000001 / 25000000000000000 : ℚ), (12193750000000001 / 25000000000000000 : ℚ)⟩
  r := (62742585127727 / 100000000000000 : ℚ)
  w := (14782861912863 / 10000000000000 : ℚ)
  center := (12192187500000001 / 25000000000000000 : ℚ)
  supportValue := (1090197694155257 / 2500000000000000 : ℚ)
  supportSlope := (-2135684403836713 / 1000000000000000 : ℚ)
  oldCenter := (1090197694155257 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1162
  oldLo := (871731843575419 / 2000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1049, piece_1050]
}

def cell_10499 : Cell := { cellDefaults with
  domain := ⟨(12193750000000001 / 25000000000000000 : ℚ), (12196875000000001 / 25000000000000000 : ℚ)⟩
  r := (62742585127727 / 100000000000000 : ℚ)
  w := (14782861912863 / 10000000000000 : ℚ)
  center := (12195312500000001 / 25000000000000000 : ℚ)
  supportValue := (435812201907957 / 1000000000000000 : ℚ)
  supportSlope := (-426825752170501 / 200000000000000 : ℚ)
  oldCenter := (435812201907957 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1162
  oldLo := (8710000000000001 / 20000000000000000 : ℚ)
  oldHi := (8720000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1048, piece_1049]
}

theorem check_10450 : cell_10450.check = true := by
  decide +kernel

theorem check_10451 : cell_10451.check = true := by
  decide +kernel

theorem check_10452 : cell_10452.check = true := by
  decide +kernel

theorem check_10453 : cell_10453.check = true := by
  decide +kernel

theorem check_10454 : cell_10454.check = true := by
  decide +kernel

theorem check_10455 : cell_10455.check = true := by
  decide +kernel

theorem check_10456 : cell_10456.check = true := by
  decide +kernel

theorem check_10457 : cell_10457.check = true := by
  decide +kernel

theorem check_10458 : cell_10458.check = true := by
  decide +kernel

theorem check_10459 : cell_10459.check = true := by
  decide +kernel

theorem check_10460 : cell_10460.check = true := by
  decide +kernel

theorem check_10461 : cell_10461.check = true := by
  decide +kernel

theorem check_10462 : cell_10462.check = true := by
  decide +kernel

theorem check_10463 : cell_10463.check = true := by
  decide +kernel

theorem check_10464 : cell_10464.check = true := by
  decide +kernel

theorem check_10465 : cell_10465.check = true := by
  decide +kernel

theorem check_10466 : cell_10466.check = true := by
  decide +kernel

theorem check_10467 : cell_10467.check = true := by
  decide +kernel

theorem check_10468 : cell_10468.check = true := by
  decide +kernel

theorem check_10469 : cell_10469.check = true := by
  decide +kernel

theorem check_10470 : cell_10470.check = true := by
  decide +kernel

theorem check_10471 : cell_10471.check = true := by
  decide +kernel

theorem check_10472 : cell_10472.check = true := by
  decide +kernel

theorem check_10473 : cell_10473.check = true := by
  decide +kernel

theorem check_10474 : cell_10474.check = true := by
  decide +kernel

theorem check_10475 : cell_10475.check = true := by
  decide +kernel

theorem check_10476 : cell_10476.check = true := by
  decide +kernel

theorem check_10477 : cell_10477.check = true := by
  decide +kernel

theorem check_10478 : cell_10478.check = true := by
  decide +kernel

theorem check_10479 : cell_10479.check = true := by
  decide +kernel

theorem check_10480 : cell_10480.check = true := by
  decide +kernel

theorem check_10481 : cell_10481.check = true := by
  decide +kernel

theorem check_10482 : cell_10482.check = true := by
  decide +kernel

theorem check_10483 : cell_10483.check = true := by
  decide +kernel

theorem check_10484 : cell_10484.check = true := by
  decide +kernel

theorem check_10485 : cell_10485.check = true := by
  decide +kernel

theorem check_10486 : cell_10486.check = true := by
  decide +kernel

theorem check_10487 : cell_10487.check = true := by
  decide +kernel

theorem check_10488 : cell_10488.check = true := by
  decide +kernel

theorem check_10489 : cell_10489.check = true := by
  decide +kernel

theorem check_10490 : cell_10490.check = true := by
  decide +kernel

theorem check_10491 : cell_10491.check = true := by
  decide +kernel

theorem check_10492 : cell_10492.check = true := by
  decide +kernel

theorem check_10493 : cell_10493.check = true := by
  decide +kernel

theorem check_10494 : cell_10494.check = true := by
  decide +kernel

theorem check_10495 : cell_10495.check = true := by
  decide +kernel

theorem check_10496 : cell_10496.check = true := by
  decide +kernel

theorem check_10497 : cell_10497.check = true := by
  decide +kernel

theorem check_10498 : cell_10498.check = true := by
  decide +kernel

theorem check_10499 : cell_10499.check = true := by
  decide +kernel

def cells : List Cell := [cell_10450, cell_10451, cell_10452, cell_10453, cell_10454, cell_10455, cell_10456, cell_10457, cell_10458, cell_10459, cell_10460, cell_10461, cell_10462, cell_10463, cell_10464, cell_10465, cell_10466, cell_10467, cell_10468, cell_10469, cell_10470, cell_10471, cell_10472, cell_10473, cell_10474, cell_10475, cell_10476, cell_10477, cell_10478, cell_10479, cell_10480, cell_10481, cell_10482, cell_10483, cell_10484, cell_10485, cell_10486, cell_10487, cell_10488, cell_10489, cell_10490, cell_10491, cell_10492, cell_10493, cell_10494, cell_10495, cell_10496, cell_10497, cell_10498, cell_10499]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10450, check_10451, check_10452, check_10453, check_10454, check_10455, check_10456, check_10457, check_10458, check_10459, check_10460, check_10461, check_10462, check_10463, check_10464, check_10465, check_10466, check_10467, check_10468, check_10469, check_10470, check_10471, check_10472, check_10473, check_10474, check_10475, check_10476, check_10477, check_10478, check_10479, check_10480, check_10481, check_10482, check_10483, check_10484, check_10485, check_10486, check_10487, check_10488, check_10489, check_10490, check_10491, check_10492, check_10493, check_10494, check_10495, check_10496, check_10497, check_10498, check_10499, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0209

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0209
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0209
open AnalyticBounds.ExpressionCertificate

theorem linked_10450 : Linked cell_10450 pieces := by
  refine ⟨piece_1149,piece_1149_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10450,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1062_mem
    · exact piece_1063_mem

theorem linked_10451 : Linked cell_10451 pieces := by
  refine ⟨piece_1149,piece_1149_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10451,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1062_mem

theorem linked_10452 : Linked cell_10452 pieces := by
  refine ⟨piece_1150,piece_1150_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10452,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1062_mem
    · exact piece_1063_mem

theorem linked_10453 : Linked cell_10453 pieces := by
  refine ⟨piece_1150,piece_1150_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10453,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1062_mem

theorem linked_10454 : Linked cell_10454 pieces := by
  refine ⟨piece_1150,piece_1150_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10454,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1060_mem
    · exact piece_1061_mem
    · exact piece_1062_mem

theorem linked_10455 : Linked cell_10455 pieces := by
  refine ⟨piece_1150,piece_1150_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10455,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1060_mem

theorem linked_10456 : Linked cell_10456 pieces := by
  refine ⟨piece_1151,piece_1151_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10456,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1060_mem
    · exact piece_1061_mem
    · exact piece_1062_mem

theorem linked_10457 : Linked cell_10457 pieces := by
  refine ⟨piece_1151,piece_1151_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10457,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1060_mem

theorem linked_10458 : Linked cell_10458 pieces := by
  refine ⟨piece_1151,piece_1151_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10458,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1059_mem
    · exact piece_1060_mem

theorem linked_10459 : Linked cell_10459 pieces := by
  refine ⟨piece_1151,piece_1151_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10459,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1059_mem

theorem linked_10460 : Linked cell_10460 pieces := by
  refine ⟨piece_1152,piece_1152_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10460,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1059_mem
    · exact piece_1060_mem

theorem linked_10461 : Linked cell_10461 pieces := by
  refine ⟨piece_1152,piece_1152_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10461,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1059_mem

theorem linked_10462 : Linked cell_10462 pieces := by
  refine ⟨piece_1152,piece_1152_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10462,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1058_mem
    · exact piece_1059_mem

theorem linked_10463 : Linked cell_10463 pieces := by
  refine ⟨piece_1152,piece_1152_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10463,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1058_mem

theorem linked_10464 : Linked cell_10464 pieces := by
  refine ⟨piece_1153,piece_1153_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10464,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1058_mem
    · exact piece_1059_mem

theorem linked_10465 : Linked cell_10465 pieces := by
  refine ⟨piece_1153,piece_1153_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10465,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1058_mem

theorem linked_10466 : Linked cell_10466 pieces := by
  refine ⟨piece_1153,piece_1153_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10466,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1057_mem
    · exact piece_1058_mem

theorem linked_10467 : Linked cell_10467 pieces := by
  refine ⟨piece_1153,piece_1153_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10467,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1057_mem

theorem linked_10468 : Linked cell_10468 pieces := by
  refine ⟨piece_1154,piece_1154_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10468,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1057_mem
    · exact piece_1058_mem

theorem linked_10469 : Linked cell_10469 pieces := by
  refine ⟨piece_1154,piece_1154_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10469,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1057_mem

theorem linked_10470 : Linked cell_10470 pieces := by
  refine ⟨piece_1154,piece_1154_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10470,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1056_mem
    · exact piece_1057_mem

theorem linked_10471 : Linked cell_10471 pieces := by
  refine ⟨piece_1154,piece_1154_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10471,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1055_mem
    · exact piece_1056_mem

theorem linked_10472 : Linked cell_10472 pieces := by
  refine ⟨piece_1155,piece_1155_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10472,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1056_mem
    · exact piece_1057_mem

theorem linked_10473 : Linked cell_10473 pieces := by
  refine ⟨piece_1155,piece_1155_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10473,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1056_mem

theorem linked_10474 : Linked cell_10474 pieces := by
  refine ⟨piece_1155,piece_1155_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10474,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1055_mem
    · exact piece_1056_mem

theorem linked_10475 : Linked cell_10475 pieces := by
  refine ⟨piece_1155,piece_1155_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10475,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1054_mem
    · exact piece_1055_mem

theorem linked_10476 : Linked cell_10476 pieces := by
  refine ⟨piece_1156,piece_1156_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10476,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1055_mem
    · exact piece_1056_mem

theorem linked_10477 : Linked cell_10477 pieces := by
  refine ⟨piece_1156,piece_1156_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10477,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1055_mem

theorem linked_10478 : Linked cell_10478 pieces := by
  refine ⟨piece_1156,piece_1156_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10478,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1054_mem
    · exact piece_1055_mem

theorem linked_10479 : Linked cell_10479 pieces := by
  refine ⟨piece_1156,piece_1156_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10479,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1053_mem
    · exact piece_1054_mem

theorem linked_10480 : Linked cell_10480 pieces := by
  refine ⟨piece_1157,piece_1157_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10480,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1054_mem
    · exact piece_1055_mem

theorem linked_10481 : Linked cell_10481 pieces := by
  refine ⟨piece_1157,piece_1157_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10481,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1054_mem

theorem linked_10482 : Linked cell_10482 pieces := by
  refine ⟨piece_1158,piece_1158_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10482,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1053_mem
    · exact piece_1054_mem

theorem linked_10483 : Linked cell_10483 pieces := by
  refine ⟨piece_1158,piece_1158_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10483,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1053_mem

theorem linked_10484 : Linked cell_10484 pieces := by
  refine ⟨piece_1158,piece_1158_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10484,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1052_mem
    · exact piece_1053_mem

theorem linked_10485 : Linked cell_10485 pieces := by
  refine ⟨piece_1159,piece_1159_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10485,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1053_mem
    · exact piece_1054_mem

theorem linked_10486 : Linked cell_10486 pieces := by
  refine ⟨piece_1159,piece_1159_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10486,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1052_mem
    · exact piece_1053_mem

theorem linked_10487 : Linked cell_10487 pieces := by
  refine ⟨piece_1159,piece_1159_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10487,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1052_mem

theorem linked_10488 : Linked cell_10488 pieces := by
  refine ⟨piece_1159,piece_1159_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10488,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1051_mem
    · exact piece_1052_mem

theorem linked_10489 : Linked cell_10489 pieces := by
  refine ⟨piece_1160,piece_1160_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10489,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1052_mem
    · exact piece_1053_mem

theorem linked_10490 : Linked cell_10490 pieces := by
  refine ⟨piece_1160,piece_1160_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10490,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1051_mem
    · exact piece_1052_mem

theorem linked_10491 : Linked cell_10491 pieces := by
  refine ⟨piece_1160,piece_1160_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10491,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1051_mem

theorem linked_10492 : Linked cell_10492 pieces := by
  refine ⟨piece_1160,piece_1160_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10492,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1050_mem
    · exact piece_1051_mem

theorem linked_10493 : Linked cell_10493 pieces := by
  refine ⟨piece_1161,piece_1161_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10493,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1051_mem

theorem linked_10494 : Linked cell_10494 pieces := by
  refine ⟨piece_1161,piece_1161_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10494,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1050_mem
    · exact piece_1051_mem

theorem linked_10495 : Linked cell_10495 pieces := by
  refine ⟨piece_1161,piece_1161_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10495,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1050_mem

theorem linked_10496 : Linked cell_10496 pieces := by
  refine ⟨piece_1161,piece_1161_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10496,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1049_mem
    · exact piece_1050_mem

theorem linked_10497 : Linked cell_10497 pieces := by
  refine ⟨piece_1162,piece_1162_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10497,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1050_mem

theorem linked_10498 : Linked cell_10498 pieces := by
  refine ⟨piece_1162,piece_1162_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10498,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1049_mem
    · exact piece_1050_mem

theorem linked_10499 : Linked cell_10499 pieces := by
  refine ⟨piece_1162,piece_1162_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10499,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1048_mem
    · exact piece_1049_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0209.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0209.cells,List.forall_mem_cons]
  exact ⟨linked_10450, linked_10451, linked_10452, linked_10453, linked_10454, linked_10455, linked_10456, linked_10457, linked_10458, linked_10459, linked_10460, linked_10461, linked_10462, linked_10463, linked_10464, linked_10465, linked_10466, linked_10467, linked_10468, linked_10469, linked_10470, linked_10471, linked_10472, linked_10473, linked_10474, linked_10475, linked_10476, linked_10477, linked_10478, linked_10479, linked_10480, linked_10481, linked_10482, linked_10483, linked_10484, linked_10485, linked_10486, linked_10487, linked_10488, linked_10489, linked_10490, linked_10491, linked_10492, linked_10493, linked_10494, linked_10495, linked_10496, linked_10497, linked_10498, linked_10499, by simp⟩

theorem covered : covers (12043750000000001 / 25000000000000000 : ℚ) (12196875000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0209.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0209
