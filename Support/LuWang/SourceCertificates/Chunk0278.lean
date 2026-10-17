import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0278
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(17965000000000001 / 20000000000000000 : ℚ), (179675000000000013 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (5400631373457 / 12500000000000 : ℚ)
  w := (2528859385633 / 2000000000000 : ℚ)
  center := (359325000000000023 / 400000000000000000 : ℚ)
  supportValue := (176136515555089 / 800000000000000 : ℚ)
  supportSlope := (-7382334093287927 / 10000000000000000 : ℚ)
  oldCenter := (176136515555089 / 800000000000000 : ℚ)
  newCoefficients := coefficients_2058
  oldLo := (219 / 1000 : ℚ)
  oldHi := (439 / 2000 : ℚ)
  oldPieces := [piece_576]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_13900 : Cell := { cellDefaults with
  r := (5402775769291 / 12500000000000 : ℚ)
  w := (6324247430151 / 5000000000000 : ℚ)
  newCoefficients := coefficients_2057
  oldLo := (11 / 50 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_578, piece_579]
}

noncomputable def cell_13901 : Cell := { cellDefaults with
  domain := ⟨(179675000000000013 / 200000000000000000 : ℚ), (11231250000000001 / 12500000000000000 : ℚ)⟩
  r := (5402775769291 / 12500000000000 : ℚ)
  w := (6324247430151 / 5000000000000 : ℚ)
  center := (359375000000000029 / 400000000000000000 : ℚ)
  supportValue := (1100391936695683 / 5000000000000000 : ℚ)
  supportSlope := (-922349731240391 / 1250000000000000 : ℚ)
  oldCenter := (1100391936695683 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2057
  oldLo := (11 / 50 : ℚ)
  oldHi := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_578]
}

noncomputable def cell_13902 : Cell := { cellDefaults with
  domain := ⟨(11231250000000001 / 12500000000000000 : ℚ), (179725000000000013 / 200000000000000000 : ℚ)⟩
  center := (359425000000000029 / 400000000000000000 : ℚ)
  supportValue := (1376564626470729 / 6250000000000000 : ℚ)
  supportSlope := (-3691102072072459 / 5000000000000000 : ℚ)
  oldCenter := (1376564626470729 / 6250000000000000 : ℚ)
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_579]
}

noncomputable def cell_13903 : Cell := { cellDefaults with
  domain := ⟨(179725000000000013 / 200000000000000000 : ℚ), (17975000000000001 / 20000000000000000 : ℚ)⟩
  center := (359475000000000023 / 400000000000000000 : ℚ)
  supportValue := (22015808476279 / 100000000000000 : ℚ)
  supportSlope := (-3689334399115561 / 5000000000000000 : ℚ)
  oldCenter := (22015808476279 / 100000000000000 : ℚ)
  oldLo := (11 / 50 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_578, piece_579]
}

noncomputable def cell_13904 : Cell := { cellDefaults with
  domain := ⟨(17975000000000001 / 20000000000000000 : ℚ), (179775000000000007 / 200000000000000000 : ℚ)⟩
  center := (359525000000000017 / 400000000000000000 : ℚ)
  supportValue := (4401317469070617 / 20000000000000000 : ℚ)
  supportSlope := (-7375136051362747 / 10000000000000000 : ℚ)
  oldCenter := (4401317469070617 / 20000000000000000 : ℚ)
  oldLo := (11 / 50 : ℚ)
  oldHi := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_578]
}

noncomputable def cell_13905 : Cell := { cellDefaults with
  domain := ⟨(179775000000000007 / 200000000000000000 : ℚ), (44950000000000001 / 50000000000000000 : ℚ)⟩
  center := (359575000000000011 / 400000000000000000 : ℚ)
  supportValue := (21997370131452257 / 100000000000000000 : ℚ)
  supportSlope := (-368634977256743 / 500000000000000 : ℚ)
  oldCenter := (21997370131452257 / 100000000000000000 : ℚ)
  oldLo := (439 / 2000 : ℚ)
  oldHi := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_577, piece_578]
}

noncomputable def cell_13906 : Cell := { cellDefaults with
  domain := ⟨(44950000000000001 / 50000000000000000 : ℚ), (179825000000000007 / 200000000000000000 : ℚ)⟩
  r := (21593954033953 / 50000000000000 : ℚ)
  w := (3160024502307 / 2500000000000 : ℚ)
  center := (359625000000000011 / 400000000000000000 : ℚ)
  supportValue := (22014559272098497 / 100000000000000000 : ℚ)
  supportSlope := (-7375008302389577 / 10000000000000000 : ℚ)
  oldCenter := (22014559272098497 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2059
  oldLo := (11 / 50 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_578, piece_579]
}

noncomputable def cell_13907 : Cell := { cellDefaults with
  domain := ⟨(179825000000000007 / 200000000000000000 : ℚ), (17985000000000001 / 20000000000000000 : ℚ)⟩
  r := (21593954033953 / 50000000000000 : ℚ)
  w := (3160024502307 / 2500000000000 : ℚ)
  center := (359675000000000017 / 400000000000000000 : ℚ)
  supportValue := (2750667839355457 / 12500000000000000 : ℚ)
  supportSlope := (-3685739506551047 / 5000000000000000 : ℚ)
  oldCenter := (2750667839355457 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2059
  oldLo := (11 / 50 : ℚ)
  oldHi := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_578]
}

noncomputable def cell_13908 : Cell := { cellDefaults with
  domain := ⟨(17985000000000001 / 20000000000000000 : ℚ), (179875000000000013 / 200000000000000000 : ℚ)⟩
  r := (21593954033953 / 50000000000000 : ℚ)
  w := (3160024502307 / 2500000000000 : ℚ)
  center := (359725000000000023 / 400000000000000000 : ℚ)
  supportValue := (10998064917839487 / 50000000000000000 : ℚ)
  supportSlope := (-7369232975595001 / 10000000000000000 : ℚ)
  oldCenter := (10998064917839487 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2059
  oldLo := (439 / 2000 : ℚ)
  oldHi := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_577, piece_578]
}

noncomputable def cell_13909 : Cell := { cellDefaults with
  domain := ⟨(179875000000000013 / 200000000000000000 : ℚ), (11243750000000001 / 12500000000000000 : ℚ)⟩
  r := (21593954033953 / 50000000000000 : ℚ)
  w := (3160024502307 / 2500000000000 : ℚ)
  center := (359775000000000029 / 400000000000000000 : ℚ)
  supportValue := (2198692036003527 / 10000000000000000 : ℚ)
  supportSlope := (-1841453511873593 / 2500000000000000 : ℚ)
  oldCenter := (2198692036003527 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2059
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13910 : Cell := { cellDefaults with
  domain := ⟨(11243750000000001 / 12500000000000000 : ℚ), (179925000000000013 / 200000000000000000 : ℚ)⟩
  r := (43170776040527 / 100000000000000 : ℚ)
  w := (3158974116117 / 2500000000000 : ℚ)
  center := (359825000000000029 / 400000000000000000 : ℚ)
  supportValue := (2750513639308461 / 12500000000000000 : ℚ)
  supportSlope := (-920987987836463 / 1250000000000000 : ℚ)
  oldCenter := (2750513639308461 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2060
  oldLo := (439 / 2000 : ℚ)
  oldHi := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_577, piece_578]
}

noncomputable def cell_13911 : Cell := { cellDefaults with
  domain := ⟨(179925000000000013 / 200000000000000000 : ℚ), (17995000000000001 / 20000000000000000 : ℚ)⟩
  r := (43170776040527 / 100000000000000 : ℚ)
  w := (3158974116117 / 2500000000000 : ℚ)
  center := (359875000000000023 / 400000000000000000 : ℚ)
  supportValue := (10997450282361551 / 50000000000000000 : ℚ)
  supportSlope := (-7365694741486623 / 10000000000000000 : ℚ)
  oldCenter := (10997450282361551 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2060
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13912 : Cell := { cellDefaults with
  domain := ⟨(17995000000000001 / 20000000000000000 : ℚ), (179975000000000007 / 200000000000000000 : ℚ)⟩
  r := (43170776040527 / 100000000000000 : ℚ)
  w := (3158974116117 / 2500000000000 : ℚ)
  center := (359925000000000017 / 400000000000000000 : ℚ)
  supportValue := (2748211955935163 / 12500000000000000 : ℚ)
  supportSlope := (-368108460401739 / 500000000000000 : ℚ)
  oldCenter := (2748211955935163 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2060
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13913 : Cell := { cellDefaults with
  domain := ⟨(179975000000000007 / 200000000000000000 : ℚ), (45000000000000001 / 50000000000000000 : ℚ)⟩
  r := (43170776040527 / 100000000000000 : ℚ)
  w := (3158974116117 / 2500000000000 : ℚ)
  center := (359975000000000011 / 400000000000000000 : ℚ)
  supportValue := (21976495135205973 / 100000000000000000 : ℚ)
  supportSlope := (-3679323397905329 / 5000000000000000 : ℚ)
  oldCenter := (21976495135205973 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2060
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13914 : Cell := { cellDefaults with
  domain := ⟨(45000000000000001 / 50000000000000000 : ℚ), (45011173184357543 / 50000000000000000 : ℚ)⟩
  r := (10788413956127 / 25000000000000 : ℚ)
  w := (12631694249081 / 10000000000000 : ℚ)
  center := (11251396648044693 / 12500000000000000 : ℚ)
  supportValue := (219900692212653 / 1000000000000000 : ℚ)
  supportSlope := (-1840165909553903 / 2500000000000000 : ℚ)
  oldCenter := (219900692212653 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_2061
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13915 : Cell := { cellDefaults with
  domain := ⟨(45011173184357543 / 50000000000000000 : ℚ), (9004469273743017 / 10000000000000000 : ℚ)⟩
  r := (10788413956127 / 25000000000000 : ℚ)
  w := (12631694249081 / 10000000000000 : ℚ)
  center := (22508379888268157 / 25000000000000000 : ℚ)
  supportValue := (10986813913436551 / 50000000000000000 : ℚ)
  supportSlope := (-919296514519169 / 1250000000000000 : ℚ)
  oldCenter := (10986813913436551 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2061
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13916 : Cell := { cellDefaults with
  domain := ⟨(9004469273743017 / 10000000000000000 : ℚ), (11256250000000001 / 12500000000000000 : ℚ)⟩
  r := (10788413956127 / 25000000000000 : ℚ)
  w := (12631694249081 / 10000000000000 : ℚ)
  center := (90047346368715089 / 100000000000000000 : ℚ)
  supportValue := (5490860495936839 / 25000000000000000 : ℚ)
  supportSlope := (-1470096762422383 / 2000000000000000 : ℚ)
  oldCenter := (5490860495936839 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2062
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13917 : Cell := { cellDefaults with
  domain := ⟨(11256250000000001 / 12500000000000000 : ℚ), (18015000000000001 / 20000000000000000 : ℚ)⟩
  r := (2696034256193 / 6250000000000 : ℚ)
  w := (12627491588451 / 10000000000000 : ℚ)
  center := (180125000000000013 / 200000000000000000 : ℚ)
  supportValue := (2197868416407801 / 10000000000000000 : ℚ)
  supportSlope := (-1838283958895069 / 2500000000000000 : ℚ)
  oldCenter := (2197868416407801 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2063
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13918 : Cell := { cellDefaults with
  domain := ⟨(18015000000000001 / 20000000000000000 : ℚ), (180175000000000007 / 200000000000000000 : ℚ)⟩
  r := (2696034256193 / 6250000000000 : ℚ)
  w := (12627491588451 / 10000000000000 : ℚ)
  center := (360325000000000017 / 400000000000000000 : ℚ)
  supportValue := (21964886586815233 / 100000000000000000 : ℚ)
  supportSlope := (-146957331557047 / 200000000000000 : ℚ)
  oldCenter := (21964886586815233 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2063
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13919 : Cell := { cellDefaults with
  domain := ⟨(180175000000000007 / 200000000000000000 : ℚ), (45050000000000001 / 50000000000000000 : ℚ)⟩
  r := (2696034256193 / 6250000000000 : ℚ)
  w := (12627491588451 / 10000000000000 : ℚ)
  center := (360375000000000011 / 400000000000000000 : ℚ)
  supportValue := (2195570394426173 / 10000000000000000 : ℚ)
  supportSlope := (-7344357874315747 / 10000000000000000 : ℚ)
  oldCenter := (2195570394426173 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2063
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13920 : Cell := { cellDefaults with
  domain := ⟨(45050000000000001 / 50000000000000000 : ℚ), (18025000000000001 / 20000000000000000 : ℚ)⟩
  r := (2694965758077 / 6250000000000 : ℚ)
  w := (6311643699707 / 5000000000000 : ℚ)
  center := (180225000000000007 / 200000000000000000 : ℚ)
  supportValue := (1098414865206979 / 5000000000000000 : ℚ)
  supportSlope := (-734599754147381 / 1000000000000000 : ℚ)
  oldCenter := (1098414865206979 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2064
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13921 : Cell := { cellDefaults with
  domain := ⟨(18025000000000001 / 20000000000000000 : ℚ), (180275000000000013 / 200000000000000000 : ℚ)⟩
  r := (2694965758077 / 6250000000000 : ℚ)
  w := (6311643699707 / 5000000000000 : ℚ)
  center := (360525000000000023 / 400000000000000000 : ℚ)
  supportValue := (686078534651179 / 3125000000000000 : ℚ)
  supportSlope := (-917593846236243 / 1250000000000000 : ℚ)
  oldCenter := (686078534651179 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_2064
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_576, piece_577]
}

noncomputable def cell_13922 : Cell := { cellDefaults with
  domain := ⟨(180275000000000013 / 200000000000000000 : ℚ), (11268750000000001 / 12500000000000000 : ℚ)⟩
  r := (2694965758077 / 6250000000000 : ℚ)
  w := (6311643699707 / 5000000000000 : ℚ)
  center := (360575000000000029 / 400000000000000000 : ℚ)
  supportValue := (2194533849037567 / 10000000000000000 : ℚ)
  supportSlope := (-733862151921639 / 1000000000000000 : ℚ)
  oldCenter := (2194533849037567 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2064
  oldPieces := [piece_576]
}

noncomputable def cell_13923 : Cell := { cellDefaults with
  domain := ⟨(11268750000000001 / 12500000000000000 : ℚ), (18035000000000001 / 20000000000000000 : ℚ)⟩
  r := (68963787033 / 160000000000 : ℚ)
  w := (3154770198811 / 2500000000000 : ℚ)
  center := (180325000000000013 / 200000000000000000 : ℚ)
  supportValue := (1097896731276581 / 5000000000000000 : ℚ)
  supportSlope := (-183474271545103 / 250000000000000 : ℚ)
  oldCenter := (1097896731276581 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2065
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_576, piece_577]
}

noncomputable def cell_13924 : Cell := { cellDefaults with
  domain := ⟨(18035000000000001 / 20000000000000000 : ℚ), (180375000000000007 / 200000000000000000 : ℚ)⟩
  r := (68963787033 / 160000000000 : ℚ)
  w := (3154770198811 / 2500000000000 : ℚ)
  center := (360725000000000017 / 400000000000000000 : ℚ)
  supportValue := (10972081338924801 / 50000000000000000 : ℚ)
  supportSlope := (-3667505228249097 / 5000000000000000 : ℚ)
  oldCenter := (10972081338924801 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2065
  oldPieces := [piece_576]
}

noncomputable def cell_13925 : Cell := { cellDefaults with
  domain := ⟨(180375000000000007 / 200000000000000000 : ℚ), (45100000000000001 / 50000000000000000 : ℚ)⟩
  r := (68963787033 / 160000000000 : ℚ)
  w := (3154770198811 / 2500000000000 : ℚ)
  center := (360775000000000011 / 400000000000000000 : ℚ)
  supportValue := (274187451254839 / 1250000000000000 : ℚ)
  supportSlope := (-1832877464115421 / 2500000000000000 : ℚ)
  oldCenter := (274187451254839 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_2065
  oldPieces := [piece_576]
}

noncomputable def cell_13926 : Cell := { cellDefaults with
  domain := ⟨(45100000000000001 / 50000000000000000 : ℚ), (180425000000000007 / 200000000000000000 : ℚ)⟩
  r := (10771323466193 / 25000000000000 : ℚ)
  w := (788429522777 / 625000000000 : ℚ)
  center := (360825000000000011 / 400000000000000000 : ℚ)
  supportValue := (21952160963020903 / 100000000000000000 : ℚ)
  supportSlope := (-458367745541311 / 625000000000000 : ℚ)
  oldCenter := (21952160963020903 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2066
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_576, piece_577]
}

noncomputable def cell_13927 : Cell := { cellDefaults with
  domain := ⟨(180425000000000007 / 200000000000000000 : ℚ), (18045000000000001 / 20000000000000000 : ℚ)⟩
  r := (10771323466193 / 25000000000000 : ℚ)
  w := (788429522777 / 625000000000 : ℚ)
  center := (360875000000000017 / 400000000000000000 : ℚ)
  supportValue := (137143718281853 / 625000000000000 : ℚ)
  supportSlope := (-733140455782789 / 1000000000000000 : ℚ)
  oldCenter := (137143718281853 / 625000000000000 : ℚ)
  newCoefficients := coefficients_2066
  oldPieces := [piece_576]
}

noncomputable def cell_13928 : Cell := { cellDefaults with
  domain := ⟨(18045000000000001 / 20000000000000000 : ℚ), (180475000000000013 / 200000000000000000 : ℚ)⟩
  r := (10771323466193 / 25000000000000 : ℚ)
  w := (788429522777 / 625000000000 : ℚ)
  center := (360925000000000023 / 400000000000000000 : ℚ)
  supportValue := (21933832852686563 / 100000000000000000 : ℚ)
  supportSlope := (-29311630687797 / 40000000000000 : ℚ)
  oldCenter := (21933832852686563 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2066
  oldPieces := [piece_576]
}

noncomputable def cell_13929 : Cell := { cellDefaults with
  domain := ⟨(180475000000000013 / 200000000000000000 : ℚ), (11281250000000001 / 12500000000000000 : ℚ)⟩
  r := (10771323466193 / 25000000000000 : ℚ)
  w := (788429522777 / 625000000000 : ℚ)
  center := (360975000000000029 / 400000000000000000 : ℚ)
  supportValue := (4384935029891383 / 20000000000000000 : ℚ)
  supportSlope := (-7324413870159151 / 10000000000000000 : ℚ)
  oldCenter := (4384935029891383 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2066
  oldPieces := [piece_576]
}

noncomputable def cell_13930 : Cell := { cellDefaults with
  domain := ⟨(11281250000000001 / 12500000000000000 : ℚ), (18055000000000001 / 20000000000000000 : ℚ)⟩
  r := (10767058009819 / 25000000000000 : ℚ)
  w := (12610662663969 / 10000000000000 : ℚ)
  center := (180525000000000013 / 200000000000000000 : ℚ)
  supportValue := (2193727141980989 / 10000000000000000 : ℚ)
  supportSlope := (-1831514293332501 / 2500000000000000 : ℚ)
  oldCenter := (2193727141980989 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2067
  oldPieces := [piece_576]
}

noncomputable def cell_13931 : Cell := { cellDefaults with
  domain := ⟨(18055000000000001 / 20000000000000000 : ℚ), (180575000000000007 / 200000000000000000 : ℚ)⟩
  r := (10767058009819 / 25000000000000 : ℚ)
  w := (12610662663969 / 10000000000000 : ℚ)
  center := (361125000000000017 / 400000000000000000 : ℚ)
  supportValue := (548088115337229 / 2500000000000000 : ℚ)
  supportSlope := (-1830205122742787 / 2500000000000000 : ℚ)
  oldCenter := (548088115337229 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2067
  oldPieces := [piece_576]
}

noncomputable def cell_13932 : Cell := { cellDefaults with
  domain := ⟨(180575000000000007 / 200000000000000000 : ℚ), (45150000000000001 / 50000000000000000 : ℚ)⟩
  r := (10767058009819 / 25000000000000 : ℚ)
  w := (12610662663969 / 10000000000000 : ℚ)
  center := (361175000000000011 / 400000000000000000 : ℚ)
  supportValue := (21914375764999117 / 100000000000000000 : ℚ)
  supportSlope := (-7317333469353027 / 10000000000000000 : ℚ)
  oldCenter := (21914375764999117 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2067
  oldPieces := [piece_576]
}

noncomputable def cell_13933 : Cell := { cellDefaults with
  domain := ⟨(45150000000000001 / 50000000000000000 : ℚ), (18065000000000001 / 20000000000000000 : ℚ)⟩
  r := (10762795512459 / 25000000000000 : ℚ)
  w := (157580635287 / 125000000000 : ℚ)
  center := (180625000000000007 / 200000000000000000 : ℚ)
  supportValue := (10963486094013031 / 50000000000000000 : ℚ)
  supportSlope := (-1829743916147211 / 2500000000000000 : ℚ)
  oldCenter := (10963486094013031 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2068
  oldPieces := [piece_576]
}

noncomputable def cell_13934 : Cell := { cellDefaults with
  domain := ⟨(18065000000000001 / 20000000000000000 : ℚ), (180675000000000013 / 200000000000000000 : ℚ)⟩
  r := (10762795512459 / 25000000000000 : ℚ)
  w := (157580635287 / 125000000000 : ℚ)
  center := (361325000000000023 / 400000000000000000 : ℚ)
  supportValue := (5478309664274729 / 25000000000000000 : ℚ)
  supportSlope := (-1828437317006107 / 2500000000000000 : ℚ)
  oldCenter := (5478309664274729 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2068
  oldPieces := [piece_576]
}

noncomputable def cell_13935 : Cell := { cellDefaults with
  domain := ⟨(180675000000000013 / 200000000000000000 : ℚ), (11293750000000001 / 12500000000000000 : ℚ)⟩
  r := (10762795512459 / 25000000000000 : ℚ)
  w := (157580635287 / 125000000000 : ℚ)
  center := (361375000000000029 / 400000000000000000 : ℚ)
  supportValue := (21904098643361633 / 100000000000000000 : ℚ)
  supportSlope := (-7310341062071413 / 10000000000000000 : ℚ)
  oldCenter := (21904098643361633 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2068
  oldLo := (437 / 2000 : ℚ)
  oldPieces := [piece_575, piece_576]
}

noncomputable def cell_13936 : Cell := { cellDefaults with
  domain := ⟨(11293750000000001 / 12500000000000000 : ℚ), (180750000000000011 / 200000000000000000 : ℚ)⟩
  r := (43034144013049 / 100000000000000 : ℚ)
  w := (393819972959 / 312500000000 : ℚ)
  center := (361450000000000027 / 400000000000000000 : ℚ)
  supportValue := (1095834560912739 / 5000000000000000 : ℚ)
  supportSlope := (-1827977222135973 / 2500000000000000 : ℚ)
  oldCenter := (1095834560912739 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2069
  oldPieces := [piece_576]
}

noncomputable def cell_13937 : Cell := { cellDefaults with
  domain := ⟨(180750000000000011 / 200000000000000000 : ℚ), (361550000000000017 / 400000000000000000 : ℚ)⟩
  r := (43034144013049 / 100000000000000 : ℚ)
  w := (393819972959 / 312500000000 : ℚ)
  center := (723050000000000039 / 800000000000000000 : ℚ)
  supportValue := (109514854676317 / 500000000000000 : ℚ)
  supportSlope := (-1461386914886877 / 2000000000000000 : ℚ)
  oldCenter := (109514854676317 / 500000000000000 : ℚ)
  newCoefficients := coefficients_2069
  oldLo := (437 / 2000 : ℚ)
  oldPieces := [piece_575, piece_576]
}

noncomputable def cell_13938 : Cell := { cellDefaults with
  domain := ⟨(361550000000000017 / 400000000000000000 : ℚ), (90400000000000003 / 100000000000000000 : ℚ)⟩
  r := (43034144013049 / 100000000000000 : ℚ)
  w := (393819972959 / 312500000000 : ℚ)
  center := (723150000000000029 / 800000000000000000 : ℚ)
  supportValue := (4378767714926759 / 20000000000000000 : ℚ)
  supportSlope := (-3652297729282249 / 5000000000000000 : ℚ)
  oldCenter := (4378767714926759 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2069
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13939 : Cell := { cellDefaults with
  domain := ⟨(90400000000000003 / 100000000000000000 : ℚ), (180850000000000011 / 200000000000000000 : ℚ)⟩
  r := (21508558663821 / 50000000000000 : ℚ)
  w := (1574753140047 / 1250000000000 : ℚ)
  center := (361650000000000017 / 400000000000000000 : ℚ)
  supportValue := (2190643330334321 / 10000000000000000 : ℚ)
  supportSlope := (-1461012665122961 / 2000000000000000 : ℚ)
  oldCenter := (2190643330334321 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2070
  oldLo := (437 / 2000 : ℚ)
  oldPieces := [piece_575, piece_576]
}

noncomputable def cell_13940 : Cell := { cellDefaults with
  domain := ⟨(180850000000000011 / 200000000000000000 : ℚ), (361750000000000027 / 400000000000000000 : ℚ)⟩
  r := (21508558663821 / 50000000000000 : ℚ)
  w := (1574753140047 / 1250000000000 : ℚ)
  center := (723450000000000049 / 800000000000000000 : ℚ)
  supportValue := (2189272486499347 / 10000000000000000 : ℚ)
  supportSlope := (-7301026923229139 / 10000000000000000 : ℚ)
  oldCenter := (2189272486499347 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2070
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13941 : Cell := { cellDefaults with
  domain := ⟨(361750000000000027 / 400000000000000000 : ℚ), (11306250000000001 / 12500000000000000 : ℚ)⟩
  r := (21508558663821 / 50000000000000 : ℚ)
  w := (1574753140047 / 1250000000000 : ℚ)
  center := (723550000000000059 / 800000000000000000 : ℚ)
  supportValue := (5470900187304873 / 25000000000000000 : ℚ)
  supportSlope := (-3648777349704781 / 5000000000000000 : ℚ)
  oldCenter := (5470900187304873 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2070
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13942 : Cell := { cellDefaults with
  domain := ⟨(11306250000000001 / 12500000000000000 : ℚ), (180950000000000011 / 200000000000000000 : ℚ)⟩
  r := (43000101477869 / 100000000000000 : ℚ)
  w := (12593809004787 / 10000000000000 : ℚ)
  center := (361850000000000027 / 400000000000000000 : ℚ)
  supportValue := (21896197865603953 / 100000000000000000 : ℚ)
  supportSlope := (-7298798816535897 / 10000000000000000 : ℚ)
  oldCenter := (21896197865603953 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2071
  oldLo := (437 / 2000 : ℚ)
  oldPieces := [piece_575, piece_576]
}

noncomputable def cell_13943 : Cell := { cellDefaults with
  domain := ⟨(180950000000000011 / 200000000000000000 : ℚ), (361950000000000017 / 400000000000000000 : ℚ)⟩
  r := (43000101477869 / 100000000000000 : ℚ)
  w := (12593809004787 / 10000000000000 : ℚ)
  center := (723850000000000039 / 800000000000000000 : ℚ)
  supportValue := (2188250141534801 / 10000000000000000 : ℚ)
  supportSlope := (-7293995419455809 / 10000000000000000 : ℚ)
  oldCenter := (2188250141534801 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2071
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13944 : Cell := { cellDefaults with
  domain := ⟨(361950000000000017 / 400000000000000000 : ℚ), (90500000000000003 / 100000000000000000 : ℚ)⟩
  r := (43000101477869 / 100000000000000 : ℚ)
  w := (12593809004787 / 10000000000000 : ℚ)
  center := (723950000000000029 / 800000000000000000 : ℚ)
  supportValue := (4374677216951371 / 20000000000000000 : ℚ)
  supportSlope := (-7290529912259043 / 10000000000000000 : ℚ)
  oldCenter := (4374677216951371 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2071
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13945 : Cell := { cellDefaults with
  domain := ⟨(90500000000000003 / 100000000000000000 : ℚ), (181050000000000011 / 200000000000000000 : ℚ)⟩
  r := (42983096974147 / 100000000000000 : ℚ)
  w := (12589591004719 / 10000000000000 : ℚ)
  center := (362050000000000017 / 400000000000000000 : ℚ)
  supportValue := (5471495856779799 / 25000000000000000 : ℚ)
  supportSlope := (-1458434776997329 / 2000000000000000 : ℚ)
  oldCenter := (5471495856779799 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2072
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13946 : Cell := { cellDefaults with
  domain := ⟨(181050000000000011 / 200000000000000000 : ℚ), (362150000000000027 / 400000000000000000 : ℚ)⟩
  r := (42983096974147 / 100000000000000 : ℚ)
  w := (12589591004719 / 10000000000000 : ℚ)
  center := (724250000000000049 / 800000000000000000 : ℚ)
  supportValue := (2187230014812827 / 10000000000000000 : ℚ)
  supportSlope := (-3643489794135837 / 5000000000000000 : ℚ)
  oldCenter := (2187230014812827 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2072
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13947 : Cell := { cellDefaults with
  domain := ⟨(362150000000000027 / 400000000000000000 : ℚ), (11318750000000001 / 12500000000000000 : ℚ)⟩
  r := (42983096974147 / 100000000000000 : ℚ)
  w := (12589591004719 / 10000000000000 : ℚ)
  center := (724350000000000059 / 800000000000000000 : ℚ)
  supportValue := (21863193583143203 / 100000000000000000 : ℚ)
  supportSlope := (-910440096918339 / 1250000000000000 : ℚ)
  oldCenter := (21863193583143203 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2072
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13948 : Cell := { cellDefaults with
  domain := ⟨(11318750000000001 / 12500000000000000 : ℚ), (90573882681564249 / 100000000000000000 : ℚ)⟩
  r := (42966104668781 / 100000000000000 : ℚ)
  w := (12585371474949 / 10000000000000 : ℚ)
  center := (181123882681564257 / 200000000000000000 : ℚ)
  supportValue := (5469049145522699 / 25000000000000000 : ℚ)
  supportSlope := (-3642658878243651 / 5000000000000000 : ℚ)
  oldCenter := (5469049145522699 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2073
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13949 : Cell := { cellDefaults with
  domain := ⟨(90573882681564249 / 100000000000000000 : ℚ), (9059776536312849 / 10000000000000000 : ℚ)⟩
  r := (42966104668781 / 100000000000000 : ℚ)
  w := (12585371474949 / 10000000000000 : ℚ)
  center := (181171648044692739 / 200000000000000000 : ℚ)
  supportValue := (2185880515927997 / 10000000000000000 : ℚ)
  supportSlope := (-7278715746072529 / 10000000000000000 : ℚ)
  oldCenter := (2185880515927997 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2073
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

theorem check_13900 : cell_13900.check = true := by
  decide +kernel

theorem check_13901 : cell_13901.check = true := by
  decide +kernel

theorem check_13902 : cell_13902.check = true := by
  decide +kernel

theorem check_13903 : cell_13903.check = true := by
  decide +kernel

theorem check_13904 : cell_13904.check = true := by
  decide +kernel

theorem check_13905 : cell_13905.check = true := by
  decide +kernel

theorem check_13906 : cell_13906.check = true := by
  decide +kernel

theorem check_13907 : cell_13907.check = true := by
  decide +kernel

theorem check_13908 : cell_13908.check = true := by
  decide +kernel

theorem check_13909 : cell_13909.check = true := by
  decide +kernel

theorem check_13910 : cell_13910.check = true := by
  decide +kernel

theorem check_13911 : cell_13911.check = true := by
  decide +kernel

theorem check_13912 : cell_13912.check = true := by
  decide +kernel

theorem check_13913 : cell_13913.check = true := by
  decide +kernel

theorem check_13914 : cell_13914.check = true := by
  decide +kernel

theorem check_13915 : cell_13915.check = true := by
  decide +kernel

theorem check_13916 : cell_13916.check = true := by
  decide +kernel

theorem check_13917 : cell_13917.check = true := by
  decide +kernel

theorem check_13918 : cell_13918.check = true := by
  decide +kernel

theorem check_13919 : cell_13919.check = true := by
  decide +kernel

theorem check_13920 : cell_13920.check = true := by
  decide +kernel

theorem check_13921 : cell_13921.check = true := by
  decide +kernel

theorem check_13922 : cell_13922.check = true := by
  decide +kernel

theorem check_13923 : cell_13923.check = true := by
  decide +kernel

theorem check_13924 : cell_13924.check = true := by
  decide +kernel

theorem check_13925 : cell_13925.check = true := by
  decide +kernel

theorem check_13926 : cell_13926.check = true := by
  decide +kernel

theorem check_13927 : cell_13927.check = true := by
  decide +kernel

theorem check_13928 : cell_13928.check = true := by
  decide +kernel

theorem check_13929 : cell_13929.check = true := by
  decide +kernel

theorem check_13930 : cell_13930.check = true := by
  decide +kernel

theorem check_13931 : cell_13931.check = true := by
  decide +kernel

theorem check_13932 : cell_13932.check = true := by
  decide +kernel

theorem check_13933 : cell_13933.check = true := by
  decide +kernel

theorem check_13934 : cell_13934.check = true := by
  decide +kernel

theorem check_13935 : cell_13935.check = true := by
  decide +kernel

theorem check_13936 : cell_13936.check = true := by
  decide +kernel

theorem check_13937 : cell_13937.check = true := by
  decide +kernel

theorem check_13938 : cell_13938.check = true := by
  decide +kernel

theorem check_13939 : cell_13939.check = true := by
  decide +kernel

theorem check_13940 : cell_13940.check = true := by
  decide +kernel

theorem check_13941 : cell_13941.check = true := by
  decide +kernel

theorem check_13942 : cell_13942.check = true := by
  decide +kernel

theorem check_13943 : cell_13943.check = true := by
  decide +kernel

theorem check_13944 : cell_13944.check = true := by
  decide +kernel

theorem check_13945 : cell_13945.check = true := by
  decide +kernel

theorem check_13946 : cell_13946.check = true := by
  decide +kernel

theorem check_13947 : cell_13947.check = true := by
  decide +kernel

theorem check_13948 : cell_13948.check = true := by
  decide +kernel

theorem check_13949 : cell_13949.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13900, cell_13901, cell_13902, cell_13903, cell_13904, cell_13905, cell_13906, cell_13907, cell_13908, cell_13909, cell_13910, cell_13911, cell_13912, cell_13913, cell_13914, cell_13915, cell_13916, cell_13917, cell_13918, cell_13919, cell_13920, cell_13921, cell_13922, cell_13923, cell_13924, cell_13925, cell_13926, cell_13927, cell_13928, cell_13929, cell_13930, cell_13931, cell_13932, cell_13933, cell_13934, cell_13935, cell_13936, cell_13937, cell_13938, cell_13939, cell_13940, cell_13941, cell_13942, cell_13943, cell_13944, cell_13945, cell_13946, cell_13947, cell_13948, cell_13949]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13900, check_13901, check_13902, check_13903, check_13904, check_13905, check_13906, check_13907, check_13908, check_13909, check_13910, check_13911, check_13912, check_13913, check_13914, check_13915, check_13916, check_13917, check_13918, check_13919, check_13920, check_13921, check_13922, check_13923, check_13924, check_13925, check_13926, check_13927, check_13928, check_13929, check_13930, check_13931, check_13932, check_13933, check_13934, check_13935, check_13936, check_13937, check_13938, check_13939, check_13940, check_13941, check_13942, check_13943, check_13944, check_13945, check_13946, check_13947, check_13948, check_13949, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0278

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0278
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0278
open AnalyticBounds.ExpressionCertificate

theorem linked_13900 : Linked cell_13900 pieces := by
  refine ⟨piece_2057,piece_2057_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13900,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_578_mem
    · exact piece_579_mem

theorem linked_13901 : Linked cell_13901 pieces := by
  refine ⟨piece_2057,piece_2057_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13901,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_578_mem

theorem linked_13902 : Linked cell_13902 pieces := by
  refine ⟨piece_2058,piece_2058_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13902,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_579_mem

theorem linked_13903 : Linked cell_13903 pieces := by
  refine ⟨piece_2058,piece_2058_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13903,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_578_mem
    · exact piece_579_mem

theorem linked_13904 : Linked cell_13904 pieces := by
  refine ⟨piece_2058,piece_2058_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13904,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_578_mem

theorem linked_13905 : Linked cell_13905 pieces := by
  refine ⟨piece_2058,piece_2058_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13905,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_577_mem
    · exact piece_578_mem

theorem linked_13906 : Linked cell_13906 pieces := by
  refine ⟨piece_2059,piece_2059_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13906,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_578_mem
    · exact piece_579_mem

theorem linked_13907 : Linked cell_13907 pieces := by
  refine ⟨piece_2059,piece_2059_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13907,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_578_mem

theorem linked_13908 : Linked cell_13908 pieces := by
  refine ⟨piece_2059,piece_2059_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13908,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_577_mem
    · exact piece_578_mem

theorem linked_13909 : Linked cell_13909 pieces := by
  refine ⟨piece_2059,piece_2059_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13909,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_577_mem

theorem linked_13910 : Linked cell_13910 pieces := by
  refine ⟨piece_2060,piece_2060_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13910,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_577_mem
    · exact piece_578_mem

theorem linked_13911 : Linked cell_13911 pieces := by
  refine ⟨piece_2060,piece_2060_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13911,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_577_mem

theorem linked_13912 : Linked cell_13912 pieces := by
  refine ⟨piece_2060,piece_2060_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13912,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_577_mem

theorem linked_13913 : Linked cell_13913 pieces := by
  refine ⟨piece_2060,piece_2060_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13913,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_577_mem

theorem linked_13914 : Linked cell_13914 pieces := by
  refine ⟨piece_2061,piece_2061_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13914,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_577_mem

theorem linked_13915 : Linked cell_13915 pieces := by
  refine ⟨piece_2061,piece_2061_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13915,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_577_mem

theorem linked_13916 : Linked cell_13916 pieces := by
  refine ⟨piece_2062,piece_2062_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13916,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_577_mem

theorem linked_13917 : Linked cell_13917 pieces := by
  refine ⟨piece_2063,piece_2063_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13917,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_577_mem

theorem linked_13918 : Linked cell_13918 pieces := by
  refine ⟨piece_2063,piece_2063_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13918,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_577_mem

theorem linked_13919 : Linked cell_13919 pieces := by
  refine ⟨piece_2063,piece_2063_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13919,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_577_mem

theorem linked_13920 : Linked cell_13920 pieces := by
  refine ⟨piece_2064,piece_2064_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13920,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_577_mem

theorem linked_13921 : Linked cell_13921 pieces := by
  refine ⟨piece_2064,piece_2064_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13921,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_576_mem
    · exact piece_577_mem

theorem linked_13922 : Linked cell_13922 pieces := by
  refine ⟨piece_2064,piece_2064_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13922,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_576_mem

theorem linked_13923 : Linked cell_13923 pieces := by
  refine ⟨piece_2065,piece_2065_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13923,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_576_mem
    · exact piece_577_mem

theorem linked_13924 : Linked cell_13924 pieces := by
  refine ⟨piece_2065,piece_2065_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13924,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_576_mem

theorem linked_13925 : Linked cell_13925 pieces := by
  refine ⟨piece_2065,piece_2065_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13925,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_576_mem

theorem linked_13926 : Linked cell_13926 pieces := by
  refine ⟨piece_2066,piece_2066_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13926,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_576_mem
    · exact piece_577_mem

theorem linked_13927 : Linked cell_13927 pieces := by
  refine ⟨piece_2066,piece_2066_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13927,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_576_mem

theorem linked_13928 : Linked cell_13928 pieces := by
  refine ⟨piece_2066,piece_2066_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13928,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_576_mem

theorem linked_13929 : Linked cell_13929 pieces := by
  refine ⟨piece_2066,piece_2066_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13929,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_576_mem

theorem linked_13930 : Linked cell_13930 pieces := by
  refine ⟨piece_2067,piece_2067_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13930,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_576_mem

theorem linked_13931 : Linked cell_13931 pieces := by
  refine ⟨piece_2067,piece_2067_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13931,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_576_mem

theorem linked_13932 : Linked cell_13932 pieces := by
  refine ⟨piece_2067,piece_2067_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13932,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_576_mem

theorem linked_13933 : Linked cell_13933 pieces := by
  refine ⟨piece_2068,piece_2068_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13933,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_576_mem

theorem linked_13934 : Linked cell_13934 pieces := by
  refine ⟨piece_2068,piece_2068_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13934,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_576_mem

theorem linked_13935 : Linked cell_13935 pieces := by
  refine ⟨piece_2068,piece_2068_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13935,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_575_mem
    · exact piece_576_mem

theorem linked_13936 : Linked cell_13936 pieces := by
  refine ⟨piece_2069,piece_2069_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13936,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_576_mem

theorem linked_13937 : Linked cell_13937 pieces := by
  refine ⟨piece_2069,piece_2069_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13937,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_575_mem
    · exact piece_576_mem

theorem linked_13938 : Linked cell_13938 pieces := by
  refine ⟨piece_2069,piece_2069_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13938,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_575_mem

theorem linked_13939 : Linked cell_13939 pieces := by
  refine ⟨piece_2070,piece_2070_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13939,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_575_mem
    · exact piece_576_mem

theorem linked_13940 : Linked cell_13940 pieces := by
  refine ⟨piece_2070,piece_2070_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13940,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_575_mem

theorem linked_13941 : Linked cell_13941 pieces := by
  refine ⟨piece_2070,piece_2070_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13941,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_575_mem

theorem linked_13942 : Linked cell_13942 pieces := by
  refine ⟨piece_2071,piece_2071_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13942,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_575_mem
    · exact piece_576_mem

theorem linked_13943 : Linked cell_13943 pieces := by
  refine ⟨piece_2071,piece_2071_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13943,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_575_mem

theorem linked_13944 : Linked cell_13944 pieces := by
  refine ⟨piece_2071,piece_2071_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13944,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_575_mem

theorem linked_13945 : Linked cell_13945 pieces := by
  refine ⟨piece_2072,piece_2072_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13945,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_575_mem

theorem linked_13946 : Linked cell_13946 pieces := by
  refine ⟨piece_2072,piece_2072_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13946,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_575_mem

theorem linked_13947 : Linked cell_13947 pieces := by
  refine ⟨piece_2072,piece_2072_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13947,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_575_mem

theorem linked_13948 : Linked cell_13948 pieces := by
  refine ⟨piece_2073,piece_2073_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13948,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_575_mem

theorem linked_13949 : Linked cell_13949 pieces := by
  refine ⟨piece_2073,piece_2073_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13949,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_575_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0278.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0278.cells,List.forall_mem_cons]
  exact ⟨linked_13900, linked_13901, linked_13902, linked_13903, linked_13904, linked_13905, linked_13906, linked_13907, linked_13908, linked_13909, linked_13910, linked_13911, linked_13912, linked_13913, linked_13914, linked_13915, linked_13916, linked_13917, linked_13918, linked_13919, linked_13920, linked_13921, linked_13922, linked_13923, linked_13924, linked_13925, linked_13926, linked_13927, linked_13928, linked_13929, linked_13930, linked_13931, linked_13932, linked_13933, linked_13934, linked_13935, linked_13936, linked_13937, linked_13938, linked_13939, linked_13940, linked_13941, linked_13942, linked_13943, linked_13944, linked_13945, linked_13946, linked_13947, linked_13948, linked_13949, by simp⟩

theorem covered : covers (17965000000000001 / 20000000000000000 : ℚ) (9059776536312849 / 10000000000000000 : ℚ)
    (SourceCertificates.Chunk0278.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0278
