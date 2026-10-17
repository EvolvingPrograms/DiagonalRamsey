import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0208
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(47550000000000003 / 100000000000000000 : ℚ), (47562500000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (6361908801873 / 10000000000000 : ℚ)
  w := (14896935790381 / 10000000000000 : ℚ)
  center := (47556250000000003 / 100000000000000000 : ℚ)
  supportValue := (11223201220706959 / 25000000000000000 : ℚ)
  supportSlope := (-11275503690617583 / 5000000000000000 : ℚ)
  oldCenter := (11223201220706959 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1136
  oldLo := (44750000000000001 / 100000000000000000 : ℚ)
  oldHi := (44800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1076, piece_1077]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10400 : Cell := { cellDefaults with
  oldLo := (44850000000000001 / 100000000000000000 : ℚ)
  oldHi := (44950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1077, piece_1078]
}

def cell_10401 : Cell := { cellDefaults with
  domain := ⟨(47562500000000003 / 100000000000000000 : ℚ), (47575000000000003 / 100000000000000000 : ℚ)⟩
  center := (47568750000000003 / 100000000000000000 : ℚ)
  supportValue := (2243231434860313 / 5000000000000000 : ℚ)
  supportSlope := (-1126437956122217 / 500000000000000 : ℚ)
  oldCenter := (2243231434860313 / 5000000000000000 : ℚ)
  oldLo := (44850000000000001 / 100000000000000000 : ℚ)
  oldHi := (44900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1077]
}

def cell_10402 : Cell := { cellDefaults with
  domain := ⟨(47575000000000003 / 100000000000000000 : ℚ), (47587500000000003 / 100000000000000000 : ℚ)⟩
  center := (47581250000000003 / 100000000000000000 : ℚ)
  supportValue := (1401139928142503 / 3125000000000000 : ℚ)
  supportSlope := (-1407058637032943 / 625000000000000 : ℚ)
  oldCenter := (1401139928142503 / 3125000000000000 : ℚ)
  oldLo := (44800000000000001 / 100000000000000000 : ℚ)
  oldHi := (44900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1076, piece_1077]
}

def cell_10403 : Cell := { cellDefaults with
  domain := ⟨(47587500000000003 / 100000000000000000 : ℚ), (47600000000000003 / 100000000000000000 : ℚ)⟩
  center := (47593750000000003 / 100000000000000000 : ℚ)
  supportValue := (2240417575668677 / 5000000000000000 : ℚ)
  supportSlope := (-11245276921054703 / 5000000000000000 : ℚ)
  oldCenter := (2240417575668677 / 5000000000000000 : ℚ)
  oldHi := (44850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1075, piece_1076]
}

def cell_10404 : Cell := { cellDefaults with
  domain := ⟨(47600000000000003 / 100000000000000000 : ℚ), (47612500000000003 / 100000000000000000 : ℚ)⟩
  r := (63582026749719 / 100000000000000 : ℚ)
  w := (1861508854317 / 1250000000000 : ℚ)
  center := (47606250000000003 / 100000000000000000 : ℚ)
  supportValue := (1793559883090321 / 4000000000000000 : ℚ)
  supportSlope := (-4500162702127497 / 2000000000000000 : ℚ)
  oldCenter := (1793559883090321 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1137
  oldLo := (44800000000000001 / 100000000000000000 : ℚ)
  oldHi := (44900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1076, piece_1077]
}

def cell_10405 : Cell := { cellDefaults with
  domain := ⟨(47612500000000003 / 100000000000000000 : ℚ), (47625000000000003 / 100000000000000000 : ℚ)⟩
  r := (63582026749719 / 100000000000000 : ℚ)
  w := (1861508854317 / 1250000000000 : ℚ)
  center := (47618750000000003 / 100000000000000000 : ℚ)
  supportValue := (2240544253065167 / 5000000000000000 : ℚ)
  supportSlope := (-702451412913363 / 312500000000000 : ℚ)
  oldCenter := (2240544253065167 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1137
  oldHi := (44850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1075, piece_1076]
}

def cell_10406 : Cell := { cellDefaults with
  domain := ⟨(47625000000000003 / 100000000000000000 : ℚ), (47637500000000003 / 100000000000000000 : ℚ)⟩
  r := (63582026749719 / 100000000000000 : ℚ)
  w := (1861508854317 / 1250000000000 : ℚ)
  center := (47631250000000003 / 100000000000000000 : ℚ)
  supportValue := (2239139835644927 / 5000000000000000 : ℚ)
  supportSlope := (-561546727171347 / 250000000000000 : ℚ)
  oldCenter := (2239139835644927 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1137
  oldPieces := [piece_1075]
}

def cell_10407 : Cell := { cellDefaults with
  domain := ⟨(47637500000000003 / 100000000000000000 : ℚ), (47650000000000003 / 100000000000000000 : ℚ)⟩
  r := (63582026749719 / 100000000000000 : ℚ)
  w := (1861508854317 / 1250000000000 : ℚ)
  center := (47643750000000003 / 100000000000000000 : ℚ)
  supportValue := (11188683628750619 / 25000000000000000 : ℚ)
  supportSlope := (-2805064822570813 / 1250000000000000 : ℚ)
  oldCenter := (11188683628750619 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1137
  oldLo := (44700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1074, piece_1075]
}

def cell_10408 : Cell := { cellDefaults with
  domain := ⟨(47650000000000003 / 100000000000000000 : ℚ), (190650000000000013 / 400000000000000000 : ℚ)⟩
  r := (63545011685399 / 100000000000000 : ℚ)
  w := (14887215438391 / 10000000000000 : ℚ)
  center := (15250000000000001 / 32000000000000000 : ℚ)
  supportValue := (1119632883824121 / 2500000000000000 : ℚ)
  supportSlope := (-22450555907517873 / 10000000000000000 : ℚ)
  oldCenter := (1119632883824121 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1138
  oldPieces := [piece_1075]
}

def cell_10409 : Cell := { cellDefaults with
  domain := ⟨(190650000000000013 / 400000000000000000 : ℚ), (95350000000000007 / 200000000000000000 : ℚ)⟩
  r := (63545011685399 / 100000000000000 : ℚ)
  w := (14887215438391 / 10000000000000 : ℚ)
  center := (381350000000000027 / 800000000000000000 : ℚ)
  supportValue := (1118931681983301 / 2500000000000000 : ℚ)
  supportSlope := (-280355558384121 / 125000000000000 : ℚ)
  oldCenter := (1118931681983301 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1138
  oldLo := (44700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1074, piece_1075]
}

def cell_10410 : Cell := { cellDefaults with
  domain := ⟨(95350000000000007 / 200000000000000000 : ℚ), (38150000000000003 / 80000000000000000 : ℚ)⟩
  r := (63545011685399 / 100000000000000 : ℚ)
  w := (14887215438391 / 10000000000000 : ℚ)
  center := (381450000000000029 / 800000000000000000 : ℚ)
  supportValue := (447292413814589 / 1000000000000000 : ℚ)
  supportSlope := (-2241082781465797 / 1000000000000000 : ℚ)
  oldCenter := (447292413814589 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1138
  oldLo := (44700000000000001 / 100000000000000000 : ℚ)
  oldHi := (44750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1074]
}

def cell_10411 : Cell := { cellDefaults with
  domain := ⟨(38150000000000003 / 80000000000000000 : ℚ), (11925000000000001 / 25000000000000000 : ℚ)⟩
  r := (63545011685399 / 100000000000000 : ℚ)
  w := (14887215438391 / 10000000000000 : ℚ)
  center := (381550000000000031 / 800000000000000000 : ℚ)
  supportValue := (894024858941091 / 2000000000000000 : ℚ)
  supportSlope := (-1119531654765171 / 500000000000000 : ℚ)
  oldCenter := (894024858941091 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1138
  oldLo := (44650000000000001 / 100000000000000000 : ℚ)
  oldHi := (44750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1072, piece_1073, piece_1074]
}

def cell_10412 : Cell := { cellDefaults with
  domain := ⟨(11925000000000001 / 25000000000000000 : ℚ), (11928125000000001 / 25000000000000000 : ℚ)⟩
  r := (63508045613767 / 100000000000000 : ℚ)
  w := (14882369309597 / 10000000000000 : ℚ)
  center := (11926562500000001 / 25000000000000000 : ℚ)
  supportValue := (44731756661446237 / 100000000000000000 : ℚ)
  supportSlope := (-2239955125205917 / 1000000000000000 : ℚ)
  oldCenter := (44731756661446237 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1139
  oldLo := (44700000000000001 / 100000000000000000 : ℚ)
  oldHi := (44750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1074]
}

def cell_10413 : Cell := { cellDefaults with
  domain := ⟨(11928125000000001 / 25000000000000000 : ℚ), (11931250000000001 / 25000000000000000 : ℚ)⟩
  r := (63508045613767 / 100000000000000 : ℚ)
  w := (14882369309597 / 10000000000000 : ℚ)
  center := (11929687500000001 / 25000000000000000 : ℚ)
  supportValue := (111759430763973 / 250000000000000 : ℚ)
  supportSlope := (-559464839589463 / 250000000000000 : ℚ)
  oldCenter := (111759430763973 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1139
  oldLo := (44650000000000001 / 100000000000000000 : ℚ)
  oldHi := (44750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1072, piece_1073, piece_1074]
}

def cell_10414 : Cell := { cellDefaults with
  domain := ⟨(11931250000000001 / 25000000000000000 : ℚ), (11934375000000001 / 25000000000000000 : ℚ)⟩
  r := (63508045613767 / 100000000000000 : ℚ)
  w := (14882369309597 / 10000000000000 : ℚ)
  center := (11932812500000001 / 25000000000000000 : ℚ)
  supportValue := (2233790433697933 / 5000000000000000 : ℚ)
  supportSlope := (-2794995034745007 / 1250000000000000 : ℚ)
  oldCenter := (2233790433697933 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1139
  oldLo := (44650000000000001 / 100000000000000000 : ℚ)
  oldHi := (8938547486033519 / 20000000000000000 : ℚ)
  oldPieces := [piece_1072]
}

def cell_10415 : Cell := { cellDefaults with
  domain := ⟨(11934375000000001 / 25000000000000000 : ℚ), (11937500000000001 / 25000000000000000 : ℚ)⟩
  r := (63508045613767 / 100000000000000 : ℚ)
  w := (14882369309597 / 10000000000000 : ℚ)
  center := (11935937500000001 / 25000000000000000 : ℚ)
  supportValue := (44647872932199867 / 100000000000000000 : ℚ)
  supportSlope := (-22340894800940703 / 10000000000000000 : ℚ)
  oldCenter := (44647872932199867 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1139
  oldLo := (44600000000000001 / 100000000000000000 : ℚ)
  oldHi := (8938547486033519 / 20000000000000000 : ℚ)
  oldPieces := [piece_1071, piece_1072]
}

def cell_10416 : Cell := { cellDefaults with
  domain := ⟨(11937500000000001 / 25000000000000000 : ℚ), (11940625000000001 / 25000000000000000 : ℚ)⟩
  r := (63471125745949 / 100000000000000 : ℚ)
  w := (14877533974421 / 10000000000000 : ℚ)
  center := (11939062500000001 / 25000000000000000 : ℚ)
  supportValue := (4467831911067203 / 10000000000000000 : ℚ)
  supportSlope := (-1117435942258549 / 500000000000000 : ℚ)
  oldCenter := (4467831911067203 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1140
  oldLo := (44650000000000001 / 100000000000000000 : ℚ)
  oldHi := (8938547486033519 / 20000000000000000 : ℚ)
  oldPieces := [piece_1072]
}

def cell_10417 : Cell := { cellDefaults with
  domain := ⟨(11940625000000001 / 25000000000000000 : ℚ), (11943750000000001 / 25000000000000000 : ℚ)⟩
  r := (63471125745949 / 100000000000000 : ℚ)
  w := (14877533974421 / 10000000000000 : ℚ)
  center := (11942187500000001 / 25000000000000000 : ℚ)
  supportValue := (279064989110587 / 625000000000000 : ℚ)
  supportSlope := (-5582221989159919 / 2500000000000000 : ℚ)
  oldCenter := (279064989110587 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1140
  oldLo := (44600000000000001 / 100000000000000000 : ℚ)
  oldHi := (8938547486033519 / 20000000000000000 : ℚ)
  oldPieces := [piece_1071, piece_1072]
}

def cell_10418 : Cell := { cellDefaults with
  domain := ⟨(11943750000000001 / 25000000000000000 : ℚ), (11946875000000001 / 25000000000000000 : ℚ)⟩
  r := (63471125745949 / 100000000000000 : ℚ)
  w := (14877533974421 / 10000000000000 : ℚ)
  center := (11945312500000001 / 25000000000000000 : ℚ)
  supportValue := (44622496705998677 / 100000000000000000 : ℚ)
  supportSlope := (-11154635917178801 / 5000000000000000 : ℚ)
  oldCenter := (44622496705998677 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1140
  oldLo := (44600000000000001 / 100000000000000000 : ℚ)
  oldHi := (44650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1071]
}

def cell_10419 : Cell := { cellDefaults with
  domain := ⟨(11946875000000001 / 25000000000000000 : ℚ), (11950000000000001 / 25000000000000000 : ℚ)⟩
  r := (63471125745949 / 100000000000000 : ℚ)
  w := (14877533974421 / 10000000000000 : ℚ)
  center := (11948437500000001 / 25000000000000000 : ℚ)
  supportValue := (1114865574946423 / 2500000000000000 : ℚ)
  supportSlope := (-89165232145767 / 40000000000000 : ℚ)
  oldCenter := (1114865574946423 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1140
  oldLo := (44550000000000001 / 100000000000000000 : ℚ)
  oldHi := (44650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1070, piece_1071]
}

def cell_10420 : Cell := { cellDefaults with
  domain := ⟨(11950000000000001 / 25000000000000000 : ℚ), (11953125000000001 / 25000000000000000 : ℚ)⟩
  r := (31717126952171 / 50000000000000 : ℚ)
  w := (7436354121071 / 5000000000000 : ℚ)
  center := (11951562500000001 / 25000000000000000 : ℚ)
  supportValue := (557812544231683 / 1250000000000000 : ℚ)
  supportSlope := (-2229806692230163 / 1000000000000000 : ℚ)
  oldCenter := (557812544231683 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1141
  oldLo := (44600000000000001 / 100000000000000000 : ℚ)
  oldHi := (44650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1071]
}

def cell_10421 : Cell := { cellDefaults with
  domain := ⟨(11953125000000001 / 25000000000000000 : ℚ), (11956250000000001 / 25000000000000000 : ℚ)⟩
  r := (31717126952171 / 50000000000000 : ℚ)
  w := (7436354121071 / 5000000000000 : ℚ)
  center := (11954687500000001 / 25000000000000000 : ℚ)
  supportValue := (4459714481613329 / 10000000000000000 : ℚ)
  supportSlope := (-4455866916487139 / 2000000000000000 : ℚ)
  oldCenter := (4459714481613329 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1141
  oldLo := (44550000000000001 / 100000000000000000 : ℚ)
  oldHi := (44650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1070, piece_1071]
}

def cell_10422 : Cell := { cellDefaults with
  domain := ⟨(11956250000000001 / 25000000000000000 : ℚ), (11959375000000001 / 25000000000000000 : ℚ)⟩
  r := (31717126952171 / 50000000000000 : ℚ)
  w := (7436354121071 / 5000000000000 : ℚ)
  center := (11957812500000001 / 25000000000000000 : ℚ)
  supportValue := (1114232657579181 / 2500000000000000 : ℚ)
  supportSlope := (-5564689970964931 / 2500000000000000 : ℚ)
  oldCenter := (1114232657579181 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1141
  oldLo := (44550000000000001 / 100000000000000000 : ℚ)
  oldHi := (44600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1070]
}

def cell_10423 : Cell := { cellDefaults with
  domain := ⟨(11959375000000001 / 25000000000000000 : ℚ), (11962500000000001 / 25000000000000000 : ℚ)⟩
  r := (31717126952171 / 50000000000000 : ℚ)
  w := (7436354121071 / 5000000000000 : ℚ)
  center := (11960937500000001 / 25000000000000000 : ℚ)
  supportValue := (1113537361094201 / 2500000000000000 : ℚ)
  supportSlope := (-22241868864840697 / 10000000000000000 : ℚ)
  oldCenter := (1113537361094201 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1141
  oldLo := (44500000000000001 / 100000000000000000 : ℚ)
  oldHi := (44600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1069, piece_1070]
}

def cell_10424 : Cell := { cellDefaults with
  domain := ⟨(11962500000000001 / 25000000000000000 : ℚ), (11965625000000001 / 25000000000000000 : ℚ)⟩
  r := (79246787117 / 125000000000 : ℚ)
  w := (14867891813711 / 10000000000000 : ℚ)
  center := (11964062500000001 / 25000000000000000 : ℚ)
  supportValue := (4457181071325727 / 10000000000000000 : ℚ)
  supportSlope := (-2780948927656457 / 1250000000000000 : ℚ)
  oldCenter := (4457181071325727 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1142
  oldLo := (44550000000000001 / 100000000000000000 : ℚ)
  oldHi := (44600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1070]
}

def cell_10425 : Cell := { cellDefaults with
  domain := ⟨(11965625000000001 / 25000000000000000 : ℚ), (11968750000000001 / 25000000000000000 : ℚ)⟩
  r := (79246787117 / 125000000000 : ℚ)
  w := (14867891813711 / 10000000000000 : ℚ)
  center := (11967187500000001 / 25000000000000000 : ℚ)
  supportValue := (44544013797114773 / 100000000000000000 : ℚ)
  supportSlope := (-2222992965213777 / 1000000000000000 : ℚ)
  oldCenter := (44544013797114773 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1142
  oldLo := (44500000000000001 / 100000000000000000 : ℚ)
  oldHi := (44600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1069, piece_1070]
}

def cell_10426 : Cell := { cellDefaults with
  domain := ⟨(11968750000000001 / 25000000000000000 : ℚ), (11971875000000001 / 25000000000000000 : ℚ)⟩
  r := (79246787117 / 125000000000 : ℚ)
  w := (14867891813711 / 10000000000000 : ℚ)
  center := (11970312500000001 / 25000000000000000 : ℚ)
  supportValue := (2225811912009353 / 5000000000000000 : ℚ)
  supportSlope := (-11104212917802947 / 5000000000000000 : ℚ)
  oldCenter := (2225811912009353 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1142
  oldLo := (44500000000000001 / 100000000000000000 : ℚ)
  oldHi := (44550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1069]
}

def cell_10427 : Cell := { cellDefaults with
  domain := ⟨(11971875000000001 / 25000000000000000 : ℚ), (11975000000000001 / 25000000000000000 : ℚ)⟩
  r := (79246787117 / 125000000000 : ℚ)
  w := (14867891813711 / 10000000000000 : ℚ)
  center := (11973437500000001 / 25000000000000000 : ℚ)
  supportValue := (44488488043218827 / 100000000000000000 : ℚ)
  supportSlope := (-4438515814666033 / 2000000000000000 : ℚ)
  oldCenter := (44488488043218827 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1142
  oldLo := (44450000000000001 / 100000000000000000 : ℚ)
  oldHi := (44550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1068, piece_1069]
}

def cell_10428 : Cell := { cellDefaults with
  domain := ⟨(11975000000000001 / 25000000000000000 : ℚ), (11978125000000001 / 25000000000000000 : ℚ)⟩
  r := (20275408541 / 32000000000 : ℚ)
  w := (14863085522573 / 10000000000000 : ℚ)
  center := (11976562500000001 / 25000000000000000 : ℚ)
  supportValue := (22259369610086713 / 50000000000000000 : ℚ)
  supportSlope := (-2219729300615647 / 1000000000000000 : ℚ)
  oldCenter := (22259369610086713 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1143
  oldLo := (44500000000000001 / 100000000000000000 : ℚ)
  oldHi := (44550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1069]
}

def cell_10429 : Cell := { cellDefaults with
  domain := ⟨(11978125000000001 / 25000000000000000 : ℚ), (11981250000000001 / 25000000000000000 : ℚ)⟩
  r := (20275408541 / 32000000000 : ℚ)
  w := (14863085522573 / 10000000000000 : ℚ)
  center := (11979687500000001 / 25000000000000000 : ℚ)
  supportValue := (11122750981273001 / 25000000000000000 : ℚ)
  supportSlope := (-11090336401933243 / 5000000000000000 : ℚ)
  oldCenter := (11122750981273001 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1143
  oldLo := (44450000000000001 / 100000000000000000 : ℚ)
  oldHi := (44550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1068, piece_1069]
}

def cell_10430 : Cell := { cellDefaults with
  domain := ⟨(11981250000000001 / 25000000000000000 : ℚ), (11984375000000001 / 25000000000000000 : ℚ)⟩
  r := (20275408541 / 32000000000 : ℚ)
  w := (14863085522573 / 10000000000000 : ℚ)
  center := (11982812500000001 / 25000000000000000 : ℚ)
  supportValue := (44463291103041913 / 100000000000000000 : ℚ)
  supportSlope := (-22158461332670853 / 10000000000000000 : ℚ)
  oldCenter := (44463291103041913 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1143
  oldLo := (44400000000000001 / 100000000000000000 : ℚ)
  oldHi := (44500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1067, piece_1068]
}

def cell_10431 : Cell := { cellDefaults with
  domain := ⟨(11984375000000001 / 25000000000000000 : ℚ), (11987500000000001 / 25000000000000000 : ℚ)⟩
  r := (20275408541 / 32000000000 : ℚ)
  w := (14863085522573 / 10000000000000 : ℚ)
  center := (11985937500000001 / 25000000000000000 : ℚ)
  supportValue := (5554450298022217 / 12500000000000000 : ℚ)
  supportSlope := (-22143244037478027 / 10000000000000000 : ℚ)
  oldCenter := (5554450298022217 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1143
  oldLo := (44400000000000001 / 100000000000000000 : ℚ)
  oldHi := (44450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1067]
}

def cell_10432 : Cell := { cellDefaults with
  domain := ⟨(11987500000000001 / 25000000000000000 : ℚ), (11990625000000001 / 25000000000000000 : ℚ)⟩
  r := (63323921399349 / 100000000000000 : ℚ)
  w := (14858289165989 / 10000000000000 : ℚ)
  center := (11989062500000001 / 25000000000000000 : ℚ)
  supportValue := (4446578729543331 / 10000000000000000 : ℚ)
  supportSlope := (-22147170747057743 / 10000000000000000 : ℚ)
  oldCenter := (4446578729543331 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1144
  oldLo := (44450000000000001 / 100000000000000000 : ℚ)
  oldHi := (44500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1068]
}

def cell_10433 : Cell := { cellDefaults with
  domain := ⟨(11990625000000001 / 25000000000000000 : ℚ), (11993750000000001 / 25000000000000000 : ℚ)⟩
  r := (63323921399349 / 100000000000000 : ℚ)
  w := (14858289165989 / 10000000000000 : ℚ)
  center := (11992187500000001 / 25000000000000000 : ℚ)
  supportValue := (88876226875019 / 200000000000000 : ℚ)
  supportSlope := (-2766445371653603 / 1250000000000000 : ℚ)
  oldCenter := (88876226875019 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1144
  oldLo := (44400000000000001 / 100000000000000000 : ℚ)
  oldHi := (44500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1067, piece_1068]
}

def cell_10434 : Cell := { cellDefaults with
  domain := ⟨(11993750000000001 / 25000000000000000 : ℚ), (11996875000000001 / 25000000000000000 : ℚ)⟩
  r := (63323921399349 / 100000000000000 : ℚ)
  w := (14858289165989 / 10000000000000 : ℚ)
  center := (11995312500000001 / 25000000000000000 : ℚ)
  supportValue := (222052315652229 / 500000000000000 : ℚ)
  supportSlope := (-110546927907329 / 50000000000000 : ℚ)
  oldCenter := (222052315652229 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1144
  oldLo := (44350000000000001 / 100000000000000000 : ℚ)
  oldHi := (44450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1066, piece_1067]
}

def cell_10435 : Cell := { cellDefaults with
  domain := ⟨(11996875000000001 / 25000000000000000 : ℚ), (12000000000000001 / 25000000000000000 : ℚ)⟩
  r := (63323921399349 / 100000000000000 : ℚ)
  w := (14858289165989 / 10000000000000 : ℚ)
  center := (11998437500000001 / 25000000000000000 : ℚ)
  supportValue := (4438283570611041 / 10000000000000000 : ℚ)
  supportSlope := (-5523335619843639 / 2500000000000000 : ℚ)
  oldCenter := (4438283570611041 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1144
  oldLo := (44350000000000001 / 100000000000000000 : ℚ)
  oldHi := (44400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1066]
}

def cell_10436 : Cell := { cellDefaults with
  domain := ⟨(12000000000000001 / 25000000000000000 : ℚ), (2400558659217877 / 5000000000000000 : ℚ)⟩
  r := (63287238912191 / 100000000000000 : ℚ)
  w := (7426751476117 / 5000000000000 : ℚ)
  center := (12001396648044693 / 25000000000000000 : ℚ)
  supportValue := (4441438851984973 / 10000000000000000 : ℚ)
  supportSlope := (-11049243924198793 / 5000000000000000 : ℚ)
  oldCenter := (4441438851984973 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1145
  oldLo := (44400000000000001 / 100000000000000000 : ℚ)
  oldHi := (44450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1067]
}

def cell_10437 : Cell := { cellDefaults with
  domain := ⟨(2400558659217877 / 5000000000000000 : ℚ), (12006250000000001 / 25000000000000000 : ℚ)⟩
  r := (63287238912191 / 100000000000000 : ℚ)
  w := (7426751476117 / 5000000000000 : ℚ)
  center := (12004521648044693 / 25000000000000000 : ℚ)
  supportValue := (44386806016356933 / 100000000000000000 : ℚ)
  supportSlope := (-22082981476990153 / 10000000000000000 : ℚ)
  oldCenter := (44386806016356933 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1146
  oldLo := (44350000000000001 / 100000000000000000 : ℚ)
  oldHi := (44450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1066, piece_1067]
}

def cell_10438 : Cell := { cellDefaults with
  domain := ⟨(12006250000000001 / 25000000000000000 : ℚ), (12009375000000001 / 25000000000000000 : ℚ)⟩
  r := (63287238912191 / 100000000000000 : ℚ)
  w := (7426751476117 / 5000000000000 : ℚ)
  center := (12007812500000001 / 25000000000000000 : ℚ)
  supportValue := (4435775300548767 / 10000000000000000 : ℚ)
  supportSlope := (-1103022707282797 / 500000000000000 : ℚ)
  oldCenter := (4435775300548767 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1146
  oldLo := (443 / 1000 : ℚ)
  oldHi := (44400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1065, piece_1066]
}

def cell_10439 : Cell := { cellDefaults with
  domain := ⟨(12009375000000001 / 25000000000000000 : ℚ), (12012500000000001 / 25000000000000000 : ℚ)⟩
  r := (63287238912191 / 100000000000000 : ℚ)
  w := (7426751476117 / 5000000000000 : ℚ)
  center := (12010937500000001 / 25000000000000000 : ℚ)
  supportValue := (1773207467808511 / 4000000000000000 : ℚ)
  supportSlope := (-1102180690364829 / 500000000000000 : ℚ)
  oldCenter := (1773207467808511 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1146
  oldLo := (443 / 1000 : ℚ)
  oldHi := (44350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1065]
}

def cell_10440 : Cell := { cellDefaults with
  domain := ⟨(12012500000000001 / 25000000000000000 : ℚ), (12015625000000001 / 25000000000000000 : ℚ)⟩
  r := (7906325469867 / 12500000000000 : ℚ)
  w := (2969745177699 / 2000000000000 : ℚ)
  center := (12014062500000001 / 25000000000000000 : ℚ)
  supportValue := (44360241135903783 / 100000000000000000 : ℚ)
  supportSlope := (-2204861581987849 / 1000000000000000 : ℚ)
  oldCenter := (44360241135903783 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1147
  oldLo := (443 / 1000 : ℚ)
  oldHi := (44400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1065, piece_1066]
}

def cell_10441 : Cell := { cellDefaults with
  domain := ⟨(12015625000000001 / 25000000000000000 : ℚ), (12018750000000001 / 25000000000000000 : ℚ)⟩
  r := (7906325469867 / 12500000000000 : ℚ)
  w := (2969745177699 / 2000000000000 : ℚ)
  center := (12017187500000001 / 25000000000000000 : ℚ)
  supportValue := (4433268960451337 / 10000000000000000 : ℚ)
  supportSlope := (-22032616652509773 / 10000000000000000 : ℚ)
  oldCenter := (4433268960451337 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1147
  oldLo := (443 / 1000 : ℚ)
  oldHi := (44350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1065]
}

def cell_10442 : Cell := { cellDefaults with
  domain := ⟨(12018750000000001 / 25000000000000000 : ℚ), (12021875000000001 / 25000000000000000 : ℚ)⟩
  r := (7906325469867 / 12500000000000 : ℚ)
  w := (2969745177699 / 2000000000000 : ℚ)
  center := (12020312500000001 / 25000000000000000 : ℚ)
  supportValue := (2215258183786299 / 5000000000000000 : ℚ)
  supportSlope := (-440233265665313 / 200000000000000 : ℚ)
  oldCenter := (2215258183786299 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1147
  oldLo := (177 / 400 : ℚ)
  oldHi := (44350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1064, piece_1065]
}

def cell_10443 : Cell := { cellDefaults with
  domain := ⟨(12021875000000001 / 25000000000000000 : ℚ), (12025000000000001 / 25000000000000000 : ℚ)⟩
  r := (7906325469867 / 12500000000000 : ℚ)
  w := (2969745177699 / 2000000000000 : ℚ)
  center := (12023437500000001 / 25000000000000000 : ℚ)
  supportValue := (4427765830400319 / 10000000000000000 : ℚ)
  supportSlope := (-2199405879377281 / 1000000000000000 : ℚ)
  oldCenter := (4427765830400319 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1147
  oldLo := (177 / 400 : ℚ)
  oldHi := (443 / 1000 : ℚ)
  oldPieces := [piece_1064]
}

def cell_10444 : Cell := { cellDefaults with
  domain := ⟨(12025000000000001 / 25000000000000000 : ℚ), (12028125000000001 / 25000000000000000 : ℚ)⟩
  r := (12642802740001 / 20000000000000 : ℚ)
  w := (14843958651677 / 10000000000000 : ℚ)
  center := (12026562500000001 / 25000000000000000 : ℚ)
  supportValue := (4430764988676377 / 10000000000000000 : ℚ)
  supportSlope := (-21999858183452403 / 10000000000000000 : ℚ)
  oldCenter := (4430764988676377 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1148
  oldLo := (177 / 400 : ℚ)
  oldHi := (44350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1064, piece_1065]
}

def cell_10445 : Cell := { cellDefaults with
  domain := ⟨(12028125000000001 / 25000000000000000 : ℚ), (12031250000000001 / 25000000000000000 : ℚ)⟩
  r := (12642802740001 / 20000000000000 : ℚ)
  w := (14843958651677 / 10000000000000 : ℚ)
  center := (12029687500000001 / 25000000000000000 : ℚ)
  supportValue := (221400796264501 / 500000000000000 : ℚ)
  supportSlope := (-2198309727812209 / 1000000000000000 : ℚ)
  oldCenter := (221400796264501 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1148
  oldLo := (177 / 400 : ℚ)
  oldHi := (443 / 1000 : ℚ)
  oldPieces := [piece_1064]
}

def cell_10446 : Cell := { cellDefaults with
  domain := ⟨(12031250000000001 / 25000000000000000 : ℚ), (12034375000000001 / 25000000000000000 : ℚ)⟩
  r := (12642802740001 / 20000000000000 : ℚ)
  w := (14843958651677 / 10000000000000 : ℚ)
  center := (12032812500000001 / 25000000000000000 : ℚ)
  supportValue := (4425269518384407 / 10000000000000000 : ℚ)
  supportSlope := (-2196302123673277 / 1000000000000000 : ℚ)
  oldCenter := (4425269518384407 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1148
  oldLo := (221 / 500 : ℚ)
  oldHi := (443 / 1000 : ℚ)
  oldPieces := [piece_1063, piece_1064]
}

def cell_10447 : Cell := { cellDefaults with
  domain := ⟨(12034375000000001 / 25000000000000000 : ℚ), (12037500000000001 / 25000000000000000 : ℚ)⟩
  r := (12642802740001 / 20000000000000 : ℚ)
  w := (14843958651677 / 10000000000000 : ℚ)
  center := (12035937500000001 / 25000000000000000 : ℚ)
  supportValue := (4422525056523493 / 10000000000000000 : ℚ)
  supportSlope := (-21944680157570673 / 10000000000000000 : ℚ)
  oldCenter := (4422525056523493 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1148
  oldLo := (221 / 500 : ℚ)
  oldHi := (177 / 400 : ℚ)
  oldPieces := [piece_1063]
}

def cell_10448 : Cell := { cellDefaults with
  domain := ⟨(12037500000000001 / 25000000000000000 : ℚ), (12040625000000001 / 25000000000000000 : ℚ)⟩
  r := (63177472081187 / 100000000000000 : ℚ)
  w := (927450099373 / 625000000000 : ℚ)
  center := (12039062500000001 / 25000000000000000 : ℚ)
  supportValue := (2212758715034411 / 5000000000000000 : ℚ)
  supportSlope := (-21951247446114763 / 10000000000000000 : ℚ)
  oldCenter := (2212758715034411 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1149
  oldLo := (221 / 500 : ℚ)
  oldHi := (443 / 1000 : ℚ)
  oldPieces := [piece_1063, piece_1064]
}

def cell_10449 : Cell := { cellDefaults with
  domain := ⟨(12040625000000001 / 25000000000000000 : ℚ), (12043750000000001 / 25000000000000000 : ℚ)⟩
  r := (63177472081187 / 100000000000000 : ℚ)
  w := (927450099373 / 625000000000 : ℚ)
  center := (12042187500000001 / 25000000000000000 : ℚ)
  supportValue := (4422774438046961 / 10000000000000000 : ℚ)
  supportSlope := (-1096687581144451 / 500000000000000 : ℚ)
  oldCenter := (4422774438046961 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1149
  oldLo := (221 / 500 : ℚ)
  oldHi := (177 / 400 : ℚ)
  oldPieces := [piece_1063]
}

theorem check_10400 : cell_10400.check = true := by
  decide +kernel

theorem check_10401 : cell_10401.check = true := by
  decide +kernel

theorem check_10402 : cell_10402.check = true := by
  decide +kernel

theorem check_10403 : cell_10403.check = true := by
  decide +kernel

theorem check_10404 : cell_10404.check = true := by
  decide +kernel

theorem check_10405 : cell_10405.check = true := by
  decide +kernel

theorem check_10406 : cell_10406.check = true := by
  decide +kernel

theorem check_10407 : cell_10407.check = true := by
  decide +kernel

theorem check_10408 : cell_10408.check = true := by
  decide +kernel

theorem check_10409 : cell_10409.check = true := by
  decide +kernel

theorem check_10410 : cell_10410.check = true := by
  decide +kernel

theorem check_10411 : cell_10411.check = true := by
  decide +kernel

theorem check_10412 : cell_10412.check = true := by
  decide +kernel

theorem check_10413 : cell_10413.check = true := by
  decide +kernel

theorem check_10414 : cell_10414.check = true := by
  decide +kernel

theorem check_10415 : cell_10415.check = true := by
  decide +kernel

theorem check_10416 : cell_10416.check = true := by
  decide +kernel

theorem check_10417 : cell_10417.check = true := by
  decide +kernel

theorem check_10418 : cell_10418.check = true := by
  decide +kernel

theorem check_10419 : cell_10419.check = true := by
  decide +kernel

theorem check_10420 : cell_10420.check = true := by
  decide +kernel

theorem check_10421 : cell_10421.check = true := by
  decide +kernel

theorem check_10422 : cell_10422.check = true := by
  decide +kernel

theorem check_10423 : cell_10423.check = true := by
  decide +kernel

theorem check_10424 : cell_10424.check = true := by
  decide +kernel

theorem check_10425 : cell_10425.check = true := by
  decide +kernel

theorem check_10426 : cell_10426.check = true := by
  decide +kernel

theorem check_10427 : cell_10427.check = true := by
  decide +kernel

theorem check_10428 : cell_10428.check = true := by
  decide +kernel

theorem check_10429 : cell_10429.check = true := by
  decide +kernel

theorem check_10430 : cell_10430.check = true := by
  decide +kernel

theorem check_10431 : cell_10431.check = true := by
  decide +kernel

theorem check_10432 : cell_10432.check = true := by
  decide +kernel

theorem check_10433 : cell_10433.check = true := by
  decide +kernel

theorem check_10434 : cell_10434.check = true := by
  decide +kernel

theorem check_10435 : cell_10435.check = true := by
  decide +kernel

theorem check_10436 : cell_10436.check = true := by
  decide +kernel

theorem check_10437 : cell_10437.check = true := by
  decide +kernel

theorem check_10438 : cell_10438.check = true := by
  decide +kernel

theorem check_10439 : cell_10439.check = true := by
  decide +kernel

theorem check_10440 : cell_10440.check = true := by
  decide +kernel

theorem check_10441 : cell_10441.check = true := by
  decide +kernel

theorem check_10442 : cell_10442.check = true := by
  decide +kernel

theorem check_10443 : cell_10443.check = true := by
  decide +kernel

theorem check_10444 : cell_10444.check = true := by
  decide +kernel

theorem check_10445 : cell_10445.check = true := by
  decide +kernel

theorem check_10446 : cell_10446.check = true := by
  decide +kernel

theorem check_10447 : cell_10447.check = true := by
  decide +kernel

theorem check_10448 : cell_10448.check = true := by
  decide +kernel

theorem check_10449 : cell_10449.check = true := by
  decide +kernel

def cells : List Cell := [cell_10400, cell_10401, cell_10402, cell_10403, cell_10404, cell_10405, cell_10406, cell_10407, cell_10408, cell_10409, cell_10410, cell_10411, cell_10412, cell_10413, cell_10414, cell_10415, cell_10416, cell_10417, cell_10418, cell_10419, cell_10420, cell_10421, cell_10422, cell_10423, cell_10424, cell_10425, cell_10426, cell_10427, cell_10428, cell_10429, cell_10430, cell_10431, cell_10432, cell_10433, cell_10434, cell_10435, cell_10436, cell_10437, cell_10438, cell_10439, cell_10440, cell_10441, cell_10442, cell_10443, cell_10444, cell_10445, cell_10446, cell_10447, cell_10448, cell_10449]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10400, check_10401, check_10402, check_10403, check_10404, check_10405, check_10406, check_10407, check_10408, check_10409, check_10410, check_10411, check_10412, check_10413, check_10414, check_10415, check_10416, check_10417, check_10418, check_10419, check_10420, check_10421, check_10422, check_10423, check_10424, check_10425, check_10426, check_10427, check_10428, check_10429, check_10430, check_10431, check_10432, check_10433, check_10434, check_10435, check_10436, check_10437, check_10438, check_10439, check_10440, check_10441, check_10442, check_10443, check_10444, check_10445, check_10446, check_10447, check_10448, check_10449, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0208

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0208
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0208
open AnalyticBounds.ExpressionCertificate

theorem linked_10400 : Linked cell_10400 pieces := by
  apply Linked.of_piece piece_1136 piece_1136_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10400, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1077_mem, piece_1078_mem⟩

theorem linked_10401 : Linked cell_10401 pieces := by
  apply Linked.of_piece piece_1136 piece_1136_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10401, List.cons_subset, List.nil_subset, and_true]
  exact piece_1077_mem

theorem linked_10402 : Linked cell_10402 pieces := by
  apply Linked.of_piece piece_1136 piece_1136_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10402, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1076_mem, piece_1077_mem⟩

theorem linked_10403 : Linked cell_10403 pieces := by
  apply Linked.of_piece piece_1136 piece_1136_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10403, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1075_mem, piece_1076_mem⟩

theorem linked_10404 : Linked cell_10404 pieces := by
  apply Linked.of_piece piece_1137 piece_1137_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10404, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1076_mem, piece_1077_mem⟩

theorem linked_10405 : Linked cell_10405 pieces := by
  apply Linked.of_piece piece_1137 piece_1137_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10405, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1075_mem, piece_1076_mem⟩

theorem linked_10406 : Linked cell_10406 pieces := by
  apply Linked.of_piece piece_1137 piece_1137_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10406, List.cons_subset, List.nil_subset, and_true]
  exact piece_1075_mem

theorem linked_10407 : Linked cell_10407 pieces := by
  apply Linked.of_piece piece_1137 piece_1137_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10407, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1074_mem, piece_1075_mem⟩

theorem linked_10408 : Linked cell_10408 pieces := by
  apply Linked.of_piece piece_1138 piece_1138_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10408, List.cons_subset, List.nil_subset, and_true]
  exact piece_1075_mem

theorem linked_10409 : Linked cell_10409 pieces := by
  apply Linked.of_piece piece_1138 piece_1138_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10409, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1074_mem, piece_1075_mem⟩

theorem linked_10410 : Linked cell_10410 pieces := by
  apply Linked.of_piece piece_1138 piece_1138_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10410, List.cons_subset, List.nil_subset, and_true]
  exact piece_1074_mem

theorem linked_10411 : Linked cell_10411 pieces := by
  apply Linked.of_piece piece_1138 piece_1138_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10411, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1072_mem, ⟨piece_1073_mem, piece_1074_mem⟩⟩

theorem linked_10412 : Linked cell_10412 pieces := by
  apply Linked.of_piece piece_1139 piece_1139_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10412, List.cons_subset, List.nil_subset, and_true]
  exact piece_1074_mem

theorem linked_10413 : Linked cell_10413 pieces := by
  apply Linked.of_piece piece_1139 piece_1139_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10413, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1072_mem, ⟨piece_1073_mem, piece_1074_mem⟩⟩

theorem linked_10414 : Linked cell_10414 pieces := by
  apply Linked.of_piece piece_1139 piece_1139_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10414, List.cons_subset, List.nil_subset, and_true]
  exact piece_1072_mem

theorem linked_10415 : Linked cell_10415 pieces := by
  apply Linked.of_piece piece_1139 piece_1139_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10415, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1071_mem, piece_1072_mem⟩

theorem linked_10416 : Linked cell_10416 pieces := by
  apply Linked.of_piece piece_1140 piece_1140_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10416, List.cons_subset, List.nil_subset, and_true]
  exact piece_1072_mem

theorem linked_10417 : Linked cell_10417 pieces := by
  apply Linked.of_piece piece_1140 piece_1140_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10417, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1071_mem, piece_1072_mem⟩

theorem linked_10418 : Linked cell_10418 pieces := by
  apply Linked.of_piece piece_1140 piece_1140_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10418, List.cons_subset, List.nil_subset, and_true]
  exact piece_1071_mem

theorem linked_10419 : Linked cell_10419 pieces := by
  apply Linked.of_piece piece_1140 piece_1140_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10419, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1070_mem, piece_1071_mem⟩

theorem linked_10420 : Linked cell_10420 pieces := by
  apply Linked.of_piece piece_1141 piece_1141_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10420, List.cons_subset, List.nil_subset, and_true]
  exact piece_1071_mem

theorem linked_10421 : Linked cell_10421 pieces := by
  apply Linked.of_piece piece_1141 piece_1141_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10421, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1070_mem, piece_1071_mem⟩

theorem linked_10422 : Linked cell_10422 pieces := by
  apply Linked.of_piece piece_1141 piece_1141_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10422, List.cons_subset, List.nil_subset, and_true]
  exact piece_1070_mem

theorem linked_10423 : Linked cell_10423 pieces := by
  apply Linked.of_piece piece_1141 piece_1141_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10423, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1069_mem, piece_1070_mem⟩

theorem linked_10424 : Linked cell_10424 pieces := by
  apply Linked.of_piece piece_1142 piece_1142_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10424, List.cons_subset, List.nil_subset, and_true]
  exact piece_1070_mem

theorem linked_10425 : Linked cell_10425 pieces := by
  apply Linked.of_piece piece_1142 piece_1142_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10425, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1069_mem, piece_1070_mem⟩

theorem linked_10426 : Linked cell_10426 pieces := by
  apply Linked.of_piece piece_1142 piece_1142_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10426, List.cons_subset, List.nil_subset, and_true]
  exact piece_1069_mem

theorem linked_10427 : Linked cell_10427 pieces := by
  apply Linked.of_piece piece_1142 piece_1142_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10427, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1068_mem, piece_1069_mem⟩

theorem linked_10428 : Linked cell_10428 pieces := by
  apply Linked.of_piece piece_1143 piece_1143_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10428, List.cons_subset, List.nil_subset, and_true]
  exact piece_1069_mem

theorem linked_10429 : Linked cell_10429 pieces := by
  apply Linked.of_piece piece_1143 piece_1143_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10429, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1068_mem, piece_1069_mem⟩

theorem linked_10430 : Linked cell_10430 pieces := by
  apply Linked.of_piece piece_1143 piece_1143_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10430, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1067_mem, piece_1068_mem⟩

theorem linked_10431 : Linked cell_10431 pieces := by
  apply Linked.of_piece piece_1143 piece_1143_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10431, List.cons_subset, List.nil_subset, and_true]
  exact piece_1067_mem

theorem linked_10432 : Linked cell_10432 pieces := by
  apply Linked.of_piece piece_1144 piece_1144_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10432, List.cons_subset, List.nil_subset, and_true]
  exact piece_1068_mem

theorem linked_10433 : Linked cell_10433 pieces := by
  apply Linked.of_piece piece_1144 piece_1144_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10433, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1067_mem, piece_1068_mem⟩

theorem linked_10434 : Linked cell_10434 pieces := by
  apply Linked.of_piece piece_1144 piece_1144_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10434, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1066_mem, piece_1067_mem⟩

theorem linked_10435 : Linked cell_10435 pieces := by
  apply Linked.of_piece piece_1144 piece_1144_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10435, List.cons_subset, List.nil_subset, and_true]
  exact piece_1066_mem

theorem linked_10436 : Linked cell_10436 pieces := by
  apply Linked.of_piece piece_1145 piece_1145_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10436, List.cons_subset, List.nil_subset, and_true]
  exact piece_1067_mem

theorem linked_10437 : Linked cell_10437 pieces := by
  apply Linked.of_piece piece_1146 piece_1146_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10437, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1066_mem, piece_1067_mem⟩

theorem linked_10438 : Linked cell_10438 pieces := by
  apply Linked.of_piece piece_1146 piece_1146_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10438, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1065_mem, piece_1066_mem⟩

theorem linked_10439 : Linked cell_10439 pieces := by
  apply Linked.of_piece piece_1146 piece_1146_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10439, List.cons_subset, List.nil_subset, and_true]
  exact piece_1065_mem

theorem linked_10440 : Linked cell_10440 pieces := by
  apply Linked.of_piece piece_1147 piece_1147_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10440, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1065_mem, piece_1066_mem⟩

theorem linked_10441 : Linked cell_10441 pieces := by
  apply Linked.of_piece piece_1147 piece_1147_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10441, List.cons_subset, List.nil_subset, and_true]
  exact piece_1065_mem

theorem linked_10442 : Linked cell_10442 pieces := by
  apply Linked.of_piece piece_1147 piece_1147_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10442, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1064_mem, piece_1065_mem⟩

theorem linked_10443 : Linked cell_10443 pieces := by
  apply Linked.of_piece piece_1147 piece_1147_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10443, List.cons_subset, List.nil_subset, and_true]
  exact piece_1064_mem

theorem linked_10444 : Linked cell_10444 pieces := by
  apply Linked.of_piece piece_1148 piece_1148_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10444, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1064_mem, piece_1065_mem⟩

theorem linked_10445 : Linked cell_10445 pieces := by
  apply Linked.of_piece piece_1148 piece_1148_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10445, List.cons_subset, List.nil_subset, and_true]
  exact piece_1064_mem

theorem linked_10446 : Linked cell_10446 pieces := by
  apply Linked.of_piece piece_1148 piece_1148_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10446, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1063_mem, piece_1064_mem⟩

theorem linked_10447 : Linked cell_10447 pieces := by
  apply Linked.of_piece piece_1148 piece_1148_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10447, List.cons_subset, List.nil_subset, and_true]
  exact piece_1063_mem

theorem linked_10448 : Linked cell_10448 pieces := by
  apply Linked.of_piece piece_1149 piece_1149_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10448, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1063_mem, piece_1064_mem⟩

theorem linked_10449 : Linked cell_10449 pieces := by
  apply Linked.of_piece piece_1149 piece_1149_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10449, List.cons_subset, List.nil_subset, and_true]
  exact piece_1063_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0208.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0208.cells,List.forall_mem_cons]
  exact ⟨linked_10400, linked_10401, linked_10402, linked_10403, linked_10404, linked_10405, linked_10406, linked_10407, linked_10408, linked_10409, linked_10410, linked_10411, linked_10412, linked_10413, linked_10414, linked_10415, linked_10416, linked_10417, linked_10418, linked_10419, linked_10420, linked_10421, linked_10422, linked_10423, linked_10424, linked_10425, linked_10426, linked_10427, linked_10428, linked_10429, linked_10430, linked_10431, linked_10432, linked_10433, linked_10434, linked_10435, linked_10436, linked_10437, linked_10438, linked_10439, linked_10440, linked_10441, linked_10442, linked_10443, linked_10444, linked_10445, linked_10446, linked_10447, linked_10448, linked_10449, by simp⟩

theorem covered : covers (47550000000000003 / 100000000000000000 : ℚ) (12043750000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0208.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0208
