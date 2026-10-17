import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0279
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(9059776536312849 / 10000000000000000 : ℚ), (90600000000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (21474561805349 / 50000000000000 : ℚ)
  w := (6290575700051 / 5000000000000 : ℚ)
  center := (181197765363128493 / 200000000000000000 : ℚ)
  supportValue := (10924641338893651 / 50000000000000000 : ℚ)
  supportSlope := (-727640335566057 / 1000000000000000 : ℚ)
  oldCenter := (10924641338893651 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2075
  oldLo := (87 / 400 : ℚ)
  oldHi := (109 / 500 : ℚ)
  oldPieces := [piece_573]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_13950 : Cell := { cellDefaults with
  r := (42966104668781 / 100000000000000 : ℚ)
  w := (12585371474949 / 10000000000000 : ℚ)
  newCoefficients := coefficients_2074
  oldLo := (109 / 500 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_574, piece_575]
}

noncomputable def cell_13951 : Cell := { cellDefaults with
  domain := ⟨(90600000000000003 / 100000000000000000 : ℚ), (181250000000000011 / 200000000000000000 : ℚ)⟩
  center := (362450000000000017 / 400000000000000000 : ℚ)
  supportValue := (5466403925261011 / 25000000000000000 : ℚ)
  supportSlope := (-1819541811011001 / 2500000000000000 : ℚ)
  oldCenter := (5466403925261011 / 25000000000000000 : ℚ)
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13952 : Cell := { cellDefaults with
  domain := ⟨(181250000000000011 / 200000000000000000 : ℚ), (362550000000000027 / 400000000000000000 : ℚ)⟩
  center := (725050000000000049 / 800000000000000000 : ℚ)
  supportValue := (10925979339987589 / 50000000000000000 : ℚ)
  supportSlope := (-7273384241161357 / 10000000000000000 : ℚ)
  oldCenter := (10925979339987589 / 50000000000000000 : ℚ)
  oldLo := (109 / 500 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_574, piece_575]
}

noncomputable def cell_13953 : Cell := { cellDefaults with
  domain := ⟨(362550000000000027 / 400000000000000000 : ℚ), (11331250000000001 / 12500000000000000 : ℚ)⟩
  center := (725150000000000059 / 800000000000000000 : ℚ)
  supportValue := (10921434122470823 / 50000000000000000 : ℚ)
  supportSlope := (-7270915594527577 / 10000000000000000 : ℚ)
  oldCenter := (10921434122470823 / 50000000000000000 : ℚ)
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13954 : Cell := { cellDefaults with
  domain := ⟨(11331250000000001 / 12500000000000000 : ℚ), (181350000000000011 / 200000000000000000 : ℚ)⟩
  r := (10733038487649 / 25000000000000 : ℚ)
  w := (1257692938581 / 1000000000000 : ℚ)
  center := (362650000000000027 / 400000000000000000 : ℚ)
  supportValue := (2185546389117101 / 10000000000000000 : ℚ)
  supportSlope := (-7271462028404957 / 10000000000000000 : ℚ)
  oldCenter := (2185546389117101 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2076
  oldLo := (109 / 500 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_574, piece_575]
}

noncomputable def cell_13955 : Cell := { cellDefaults with
  domain := ⟨(181350000000000011 / 200000000000000000 : ℚ), (362750000000000017 / 400000000000000000 : ℚ)⟩
  r := (10733038487649 / 25000000000000 : ℚ)
  w := (1257692938581 / 1000000000000 : ℚ)
  center := (725450000000000039 / 800000000000000000 : ℚ)
  supportValue := (4368363682633043 / 20000000000000000 : ℚ)
  supportSlope := (-1816847421563143 / 2500000000000000 : ℚ)
  oldCenter := (4368363682633043 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2076
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13956 : Cell := { cellDefaults with
  domain := ⟨(362750000000000017 / 400000000000000000 : ℚ), (90700000000000003 / 100000000000000000 : ℚ)⟩
  r := (10733038487649 / 25000000000000 : ℚ)
  w := (1257692938581 / 1000000000000 : ℚ)
  center := (725550000000000029 / 800000000000000000 : ℚ)
  supportValue := (436654726529073 / 2000000000000000 : ℚ)
  supportSlope := (-7263945447704871 / 10000000000000000 : ℚ)
  oldCenter := (436654726529073 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2076
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13957 : Cell := { cellDefaults with
  domain := ⟨(90700000000000003 / 100000000000000000 : ℚ), (181450000000000011 / 200000000000000000 : ℚ)⟩
  r := (42915196159313 / 100000000000000 : ℚ)
  w := (12572705228031 / 10000000000000 : ℚ)
  center := (362850000000000017 / 400000000000000000 : ℚ)
  supportValue := (2184533302399159 / 10000000000000000 : ℚ)
  supportSlope := (-7265258842050033 / 10000000000000000 : ℚ)
  oldCenter := (2184533302399159 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2077
  oldLo := (109 / 500 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_574, piece_575]
}

noncomputable def cell_13958 : Cell := { cellDefaults with
  domain := ⟨(181450000000000011 / 200000000000000000 : ℚ), (362950000000000027 / 400000000000000000 : ℚ)⟩
  r := (42915196159313 / 100000000000000 : ℚ)
  w := (12572705228031 / 10000000000000 : ℚ)
  center := (725850000000000049 / 800000000000000000 : ℚ)
  supportValue := (5457924896702699 / 25000000000000000 : ℚ)
  supportSlope := (-3630214198408669 / 5000000000000000 : ℚ)
  oldCenter := (5457924896702699 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2077
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13959 : Cell := { cellDefaults with
  domain := ⟨(362950000000000027 / 400000000000000000 : ℚ), (11343750000000001 / 12500000000000000 : ℚ)⟩
  r := (42915196159313 / 100000000000000 : ℚ)
  w := (12572705228031 / 10000000000000 : ℚ)
  center := (725950000000000059 / 800000000000000000 : ℚ)
  supportValue := (2727828274695843 / 12500000000000000 : ℚ)
  supportSlope := (-453561924420819 / 625000000000000 : ℚ)
  oldCenter := (2727828274695843 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2077
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13960 : Cell := { cellDefaults with
  domain := ⟨(11343750000000001 / 12500000000000000 : ℚ), (181550000000000011 / 200000000000000000 : ℚ)⟩
  r := (1072456224457 / 2500000000000 : ℚ)
  w := (12568478701721 / 10000000000000 : ℚ)
  center := (363050000000000027 / 400000000000000000 : ℚ)
  supportValue := (4367044941033073 / 20000000000000000 : ℚ)
  supportSlope := (-3629317750103807 / 5000000000000000 : ℚ)
  oldCenter := (4367044941033073 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2078
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13961 : Cell := { cellDefaults with
  domain := ⟨(181550000000000011 / 200000000000000000 : ℚ), (363150000000000017 / 400000000000000000 : ℚ)⟩
  r := (1072456224457 / 2500000000000 : ℚ)
  w := (12568478701721 / 10000000000000 : ℚ)
  center := (726250000000000039 / 800000000000000000 : ℚ)
  supportValue := (2727700538373987 / 12500000000000000 : ℚ)
  supportSlope := (-906685375020679 / 1250000000000000 : ℚ)
  oldCenter := (2727700538373987 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2078
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13962 : Cell := { cellDefaults with
  domain := ⟨(363150000000000017 / 400000000000000000 : ℚ), (90800000000000003 / 100000000000000000 : ℚ)⟩
  r := (1072456224457 / 2500000000000 : ℚ)
  w := (12568478701721 / 10000000000000 : ℚ)
  center := (726350000000000029 / 800000000000000000 : ℚ)
  supportValue := (340820931177553 / 1562500000000000 : ℚ)
  supportSlope := (-7250052004131483 / 10000000000000000 : ℚ)
  oldCenter := (340820931177553 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_2078
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13963 : Cell := { cellDefaults with
  domain := ⟨(90800000000000003 / 100000000000000000 : ℚ), (45412500000000003 / 50000000000000000 : ℚ)⟩
  r := (8576262730083 / 20000000000000 : ℚ)
  w := (628212600233 / 500000000000 : ℚ)
  center := (181625000000000009 / 200000000000000000 : ℚ)
  supportValue := (21825134817282657 / 100000000000000000 : ℚ)
  supportSlope := (-1450338913571873 / 2000000000000000 : ℚ)
  oldCenter := (21825134817282657 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2079
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13964 : Cell := { cellDefaults with
  domain := ⟨(45412500000000003 / 50000000000000000 : ℚ), (36335000000000003 / 40000000000000000 : ℚ)⟩
  r := (8576262730083 / 20000000000000 : ℚ)
  w := (628212600233 / 500000000000 : ℚ)
  center := (363325000000000027 / 400000000000000000 : ℚ)
  supportValue := (10905763715574063 / 50000000000000000 : ℚ)
  supportSlope := (-7246551956349397 / 10000000000000000 : ℚ)
  oldCenter := (10905763715574063 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2079
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13965 : Cell := { cellDefaults with
  domain := ⟨(36335000000000003 / 40000000000000000 : ℚ), (90850000000000009 / 100000000000000000 : ℚ)⟩
  r := (8576262730083 / 20000000000000 : ℚ)
  w := (628212600233 / 500000000000 : ℚ)
  center := (363375000000000033 / 400000000000000000 : ℚ)
  supportValue := (10901235689606821 / 50000000000000000 : ℚ)
  supportSlope := (-7243438316141513 / 10000000000000000 : ℚ)
  oldCenter := (10901235689606821 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2079
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_573, piece_574]
}

noncomputable def cell_13966 : Cell := { cellDefaults with
  domain := ⟨(90850000000000009 / 100000000000000000 : ℚ), (45437500000000003 / 50000000000000000 : ℚ)⟩
  r := (42864389295817 / 100000000000000 : ℚ)
  w := (6280011344301 / 5000000000000 : ℚ)
  center := (36345000000000003 / 40000000000000000 : ℚ)
  supportValue := (218150684020663 / 1000000000000000 : ℚ)
  supportSlope := (-7244769485728921 / 10000000000000000 : ℚ)
  oldCenter := (218150684020663 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_2080
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13967 : Cell := { cellDefaults with
  domain := ⟨(45437500000000003 / 50000000000000000 : ℚ), (181775000000000009 / 200000000000000000 : ℚ)⟩
  r := (42864389295817 / 100000000000000 : ℚ)
  w := (6280011344301 / 5000000000000 : ℚ)
  center := (363525000000000021 / 400000000000000000 : ℚ)
  supportValue := (54503684995661 / 250000000000000 : ℚ)
  supportSlope := (-1448019488861259 / 2000000000000000 : ℚ)
  oldCenter := (54503684995661 / 250000000000000 : ℚ)
  newCoefficients := coefficients_2080
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_573, piece_574]
}

noncomputable def cell_13968 : Cell := { cellDefaults with
  domain := ⟨(181775000000000009 / 200000000000000000 : ℚ), (90900000000000003 / 100000000000000000 : ℚ)⟩
  r := (42864389295817 / 100000000000000 : ℚ)
  w := (6280011344301 / 5000000000000 : ℚ)
  center := (72715000000000003 / 80000000000000000 : ℚ)
  supportValue := (21792425159447473 / 100000000000000000 : ℚ)
  supportSlope := (-3618789508102339 / 5000000000000000 : ℚ)
  oldCenter := (21792425159447473 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2080
  oldPieces := [piece_573]
}

noncomputable def cell_13969 : Cell := { cellDefaults with
  domain := ⟨(90900000000000003 / 100000000000000000 : ℚ), (45462500000000003 / 50000000000000000 : ℚ)⟩
  r := (5355934665927 / 12500000000000 : ℚ)
  w := (6277896587653 / 5000000000000 : ℚ)
  center := (181825000000000009 / 200000000000000000 : ℚ)
  supportValue := (5451254937558639 / 25000000000000000 : ℚ)
  supportSlope := (-7238163506670079 / 10000000000000000 : ℚ)
  oldCenter := (5451254937558639 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2081
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_573, piece_574]
}

noncomputable def cell_13970 : Cell := { cellDefaults with
  domain := ⟨(45462500000000003 / 50000000000000000 : ℚ), (36375000000000003 / 40000000000000000 : ℚ)⟩
  r := (5355934665927 / 12500000000000 : ℚ)
  w := (6277896587653 / 5000000000000 : ℚ)
  center := (363725000000000027 / 400000000000000000 : ℚ)
  supportValue := (5447859172418531 / 25000000000000000 : ℚ)
  supportSlope := (-361704731248259 / 500000000000000 : ℚ)
  oldCenter := (5447859172418531 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2081
  oldPieces := [piece_573]
}

noncomputable def cell_13971 : Cell := { cellDefaults with
  domain := ⟨(36375000000000003 / 40000000000000000 : ℚ), (90950000000000009 / 100000000000000000 : ℚ)⟩
  r := (5355934665927 / 12500000000000 : ℚ)
  w := (6277896587653 / 5000000000000 : ℚ)
  center := (363775000000000033 / 400000000000000000 : ℚ)
  supportValue := (10891198102274041 / 50000000000000000 : ℚ)
  supportSlope := (-57845423866347 / 80000000000000 : ℚ)
  oldCenter := (10891198102274041 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2081
  oldPieces := [piece_573]
}

noncomputable def cell_13972 : Cell := { cellDefaults with
  domain := ⟨(90950000000000009 / 100000000000000000 : ℚ), (45487500000000003 / 50000000000000000 : ℚ)⟩
  r := (21415287692961 / 50000000000000 : ℚ)
  w := (3137890068983 / 2500000000000 : ℚ)
  center := (36385000000000003 / 40000000000000000 : ℚ)
  supportValue := (10897497931079249 / 50000000000000000 : ℚ)
  supportSlope := (-7232021493340547 / 10000000000000000 : ℚ)
  oldCenter := (10897497931079249 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2082
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_573, piece_574]
}

noncomputable def cell_13973 : Cell := { cellDefaults with
  domain := ⟨(45487500000000003 / 50000000000000000 : ℚ), (181975000000000009 / 200000000000000000 : ℚ)⟩
  r := (21415287692961 / 50000000000000 : ℚ)
  w := (3137890068983 / 2500000000000 : ℚ)
  center := (363925000000000021 / 400000000000000000 : ℚ)
  supportValue := (1089071239788861 / 5000000000000000 : ℚ)
  supportSlope := (-7227203428029383 / 10000000000000000 : ℚ)
  oldCenter := (1089071239788861 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2082
  oldPieces := [piece_573]
}

noncomputable def cell_13974 : Cell := { cellDefaults with
  domain := ⟨(181975000000000009 / 200000000000000000 : ℚ), (91000000000000003 / 100000000000000000 : ℚ)⟩
  r := (21415287692961 / 50000000000000 : ℚ)
  w := (3137890068983 / 2500000000000 : ℚ)
  center := (72795000000000003 / 80000000000000000 : ℚ)
  supportValue := (10886196460279647 / 50000000000000000 : ℚ)
  supportSlope := (-722379332884413 / 1000000000000000 : ℚ)
  oldCenter := (10886196460279647 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2082
  oldPieces := [piece_573]
}

noncomputable def cell_13975 : Cell := { cellDefaults with
  domain := ⟨(91000000000000003 / 100000000000000000 : ℚ), (45512500000000003 / 50000000000000000 : ℚ)⟩
  r := (4281368551813 / 10000000000000 : ℚ)
  w := (392103949647 / 312500000000 : ℚ)
  center := (182025000000000009 / 200000000000000000 : ℚ)
  supportValue := (68078094904981 / 312500000000000 : ℚ)
  supportSlope := (-722543799039823 / 1000000000000000 : ℚ)
  oldCenter := (68078094904981 / 312500000000000 : ℚ)
  newCoefficients := coefficients_2083
  oldPieces := [piece_573]
}

noncomputable def cell_13976 : Cell := { cellDefaults with
  domain := ⟨(45512500000000003 / 50000000000000000 : ℚ), (36415000000000003 / 40000000000000000 : ℚ)⟩
  r := (4281368551813 / 10000000000000 : ℚ)
  w := (392103949647 / 312500000000 : ℚ)
  center := (364125000000000027 / 400000000000000000 : ℚ)
  supportValue := (21771432213292763 / 100000000000000000 : ℚ)
  supportSlope := (-722032668723751 / 1000000000000000 : ℚ)
  oldCenter := (21771432213292763 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2083
  oldPieces := [piece_573]
}

noncomputable def cell_13977 : Cell := { cellDefaults with
  domain := ⟨(36415000000000003 / 40000000000000000 : ℚ), (91050000000000009 / 100000000000000000 : ℚ)⟩
  r := (4281368551813 / 10000000000000 : ℚ)
  w := (392103949647 / 312500000000 : ℚ)
  center := (364175000000000033 / 400000000000000000 : ℚ)
  supportValue := (21762408929926153 / 100000000000000000 : ℚ)
  supportSlope := (-1443384621831183 / 2000000000000000 : ℚ)
  oldCenter := (21762408929926153 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2083
  oldPieces := [piece_573]
}

noncomputable def cell_13978 : Cell := { cellDefaults with
  domain := ⟨(91050000000000009 / 100000000000000000 : ℚ), (45537500000000003 / 50000000000000000 : ℚ)⟩
  r := (10699201660479 / 25000000000000 : ℚ)
  w := (1567886291561 / 1250000000000 : ℚ)
  center := (36425000000000003 / 40000000000000000 : ℚ)
  supportValue := (21775007357854367 / 100000000000000000 : ℚ)
  supportSlope := (-2887426801799 / 4000000000000 : ℚ)
  oldCenter := (21775007357854367 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2084
  oldPieces := [piece_573]
}

noncomputable def cell_13979 : Cell := { cellDefaults with
  domain := ⟨(45537500000000003 / 50000000000000000 : ℚ), (182175000000000009 / 200000000000000000 : ℚ)⟩
  r := (10699201660479 / 25000000000000 : ℚ)
  w := (1567886291561 / 1250000000000 : ℚ)
  center := (364325000000000021 / 400000000000000000 : ℚ)
  supportValue := (10880731041239021 / 50000000000000000 : ℚ)
  supportSlope := (-3606732736145967 / 5000000000000000 : ℚ)
  oldCenter := (10880731041239021 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2084
  oldPieces := [piece_573]
}

noncomputable def cell_13980 : Cell := { cellDefaults with
  domain := ⟨(182175000000000009 / 200000000000000000 : ℚ), (91100000000000003 / 100000000000000000 : ℚ)⟩
  r := (10699201660479 / 25000000000000 : ℚ)
  w := (1567886291561 / 1250000000000 : ℚ)
  center := (72875000000000003 / 80000000000000000 : ℚ)
  supportValue := (543811184289207 / 2500000000000000 : ℚ)
  supportSlope := (-450648707915667 / 625000000000000 : ℚ)
  oldCenter := (543811184289207 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2084
  oldLo := (217 / 1000 : ℚ)
  oldPieces := [piece_572, piece_573]
}

noncomputable def cell_13981 : Cell := { cellDefaults with
  domain := ⟨(91100000000000003 / 100000000000000000 : ℚ), (45562500000000003 / 50000000000000000 : ℚ)⟩
  r := (1336873093813 / 3125000000000 : ℚ)
  w := (501554159187 / 400000000000 : ℚ)
  center := (182225000000000009 / 200000000000000000 : ℚ)
  supportValue := (1088252168058739 / 5000000000000000 : ℚ)
  supportSlope := (-360585518281843 / 500000000000000 : ℚ)
  oldCenter := (1088252168058739 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2085
  oldPieces := [piece_573]
}

noncomputable def cell_13982 : Cell := { cellDefaults with
  domain := ⟨(45562500000000003 / 50000000000000000 : ℚ), (36455000000000003 / 40000000000000000 : ℚ)⟩
  r := (1336873093813 / 3125000000000 : ℚ)
  w := (501554159187 / 400000000000 : ℚ)
  center := (364525000000000027 / 400000000000000000 : ℚ)
  supportValue := (4350302187967201 / 20000000000000000 : ℚ)
  supportSlope := (-144141402182179 / 200000000000000 : ℚ)
  oldCenter := (4350302187967201 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2085
  oldLo := (217 / 1000 : ℚ)
  oldPieces := [piece_572, piece_573]
}

noncomputable def cell_13983 : Cell := { cellDefaults with
  domain := ⟨(36455000000000003 / 40000000000000000 : ℚ), (91150000000000009 / 100000000000000000 : ℚ)⟩
  r := (1336873093813 / 3125000000000 : ℚ)
  w := (501554159187 / 400000000000 : ℚ)
  center := (364575000000000033 / 400000000000000000 : ℚ)
  supportValue := (2174250337295757 / 10000000000000000 : ℚ)
  supportSlope := (-3602290227772821 / 5000000000000000 : ℚ)
  oldCenter := (2174250337295757 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2085
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13984 : Cell := { cellDefaults with
  domain := ⟨(91150000000000009 / 100000000000000000 : ℚ), (4557541899441341 / 5000000000000000 : ℚ)⟩
  r := (8552616594983 / 20000000000000 : ℚ)
  w := (3133653540559 / 2500000000000 : ℚ)
  center := (182300837988826829 / 200000000000000000 : ℚ)
  supportValue := (5440947451479463 / 25000000000000000 : ℚ)
  supportSlope := (-7208146871177437 / 10000000000000000 : ℚ)
  oldCenter := (5440947451479463 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2086
  oldPieces := [piece_573]
}

noncomputable def cell_13985 : Cell := { cellDefaults with
  domain := ⟨(4557541899441341 / 5000000000000000 : ℚ), (182350837988826823 / 200000000000000000 : ℚ)⟩
  r := (8552616594983 / 20000000000000 : ℚ)
  w := (3133653540559 / 2500000000000 : ℚ)
  center := (364652513966480463 / 400000000000000000 : ℚ)
  supportValue := (10877325191788727 / 50000000000000000 : ℚ)
  supportSlope := (-3602511196838103 / 5000000000000000 : ℚ)
  oldCenter := (10877325191788727 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2087
  oldLo := (217 / 1000 : ℚ)
  oldPieces := [piece_572, piece_573]
}

noncomputable def cell_13986 : Cell := { cellDefaults with
  domain := ⟨(182350837988826823 / 200000000000000000 : ℚ), (91200000000000003 / 100000000000000000 : ℚ)⟩
  r := (8552616594983 / 20000000000000 : ℚ)
  w := (3133653540559 / 2500000000000 : ℚ)
  center := (364750837988826829 / 400000000000000000 : ℚ)
  supportValue := (434738924501607 / 2000000000000000 : ℚ)
  supportSlope := (-7199387265787421 / 10000000000000000 : ℚ)
  oldCenter := (434738924501607 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2087
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13987 : Cell := { cellDefaults with
  domain := ⟨(91200000000000003 / 100000000000000000 : ℚ), (45612500000000003 / 50000000000000000 : ℚ)⟩
  r := (42746237498549 / 100000000000000 : ℚ)
  w := (783148329841 / 625000000000 : ℚ)
  center := (182425000000000009 / 200000000000000000 : ℚ)
  supportValue := (869807323677687 / 4000000000000000 : ℚ)
  supportSlope := (-7199082724333141 / 10000000000000000 : ℚ)
  oldCenter := (869807323677687 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_2088
  oldLo := (217 / 1000 : ℚ)
  oldPieces := [piece_572, piece_573]
}

noncomputable def cell_13988 : Cell := { cellDefaults with
  domain := ⟨(45612500000000003 / 50000000000000000 : ℚ), (36495000000000003 / 40000000000000000 : ℚ)⟩
  r := (42746237498549 / 100000000000000 : ℚ)
  w := (783148329841 / 625000000000 : ℚ)
  center := (364925000000000027 / 400000000000000000 : ℚ)
  supportValue := (2173167376234717 / 10000000000000000 : ℚ)
  supportSlope := (-7194316137634463 / 10000000000000000 : ℚ)
  oldCenter := (2173167376234717 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2088
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13989 : Cell := { cellDefaults with
  domain := ⟨(36495000000000003 / 40000000000000000 : ℚ), (91250000000000009 / 100000000000000000 : ℚ)⟩
  r := (42746237498549 / 100000000000000 : ℚ)
  w := (783148329841 / 625000000000 : ℚ)
  center := (364975000000000033 / 400000000000000000 : ℚ)
  supportValue := (21722682979278699 / 100000000000000000 : ℚ)
  supportSlope := (-1438186638245403 / 2000000000000000 : ℚ)
  oldCenter := (21722682979278699 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2088
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13990 : Cell := { cellDefaults with
  domain := ⟨(91250000000000009 / 100000000000000000 : ℚ), (45637500000000003 / 50000000000000000 : ℚ)⟩
  r := (10682351045907 / 25000000000000 : ℚ)
  w := (1252613148287 / 1000000000000 : ℚ)
  center := (36505000000000003 / 40000000000000000 : ℚ)
  supportValue := (869411234775313 / 4000000000000000 : ℚ)
  supportSlope := (-3596289203381829 / 5000000000000000 : ℚ)
  oldCenter := (869411234775313 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_2089
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13991 : Cell := { cellDefaults with
  domain := ⟨(45637500000000003 / 50000000000000000 : ℚ), (91300000000000003 / 100000000000000000 : ℚ)⟩
  r := (10682351045907 / 25000000000000 : ℚ)
  w := (1252613148287 / 1000000000000 : ℚ)
  center := (182575000000000009 / 200000000000000000 : ℚ)
  supportValue := (10858653928830181 / 50000000000000000 : ℚ)
  supportSlope := (-359290976384917 / 500000000000000 : ℚ)
  oldCenter := (10858653928830181 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2089
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13992 : Cell := { cellDefaults with
  domain := ⟨(91300000000000003 / 100000000000000000 : ℚ), (45662500000000003 / 50000000000000000 : ℚ)⟩
  r := (42712581217891 / 100000000000000 : ℚ)
  w := (1252188675681 / 1000000000000 : ℚ)
  center := (182625000000000009 / 200000000000000000 : ℚ)
  supportValue := (1086270142765161 / 5000000000000000 : ℚ)
  supportSlope := (-7185776164552431 / 10000000000000000 : ℚ)
  oldCenter := (1086270142765161 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2090
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13993 : Cell := { cellDefaults with
  domain := ⟨(45662500000000003 / 50000000000000000 : ℚ), (91350000000000009 / 100000000000000000 : ℚ)⟩
  r := (42712581217891 / 100000000000000 : ℚ)
  w := (1252188675681 / 1000000000000 : ℚ)
  center := (36535000000000003 / 40000000000000000 : ℚ)
  supportValue := (10853723416572321 / 50000000000000000 : ℚ)
  supportSlope := (-7179146436994381 / 10000000000000000 : ℚ)
  oldCenter := (10853723416572321 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2090
  oldLo := (433 / 2000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_571, piece_572]
}

noncomputable def cell_13994 : Cell := { cellDefaults with
  domain := ⟨(91350000000000009 / 100000000000000000 : ℚ), (45687500000000003 / 50000000000000000 : ℚ)⟩
  r := (42695769737143 / 100000000000000 : ℚ)
  w := (12517641377037 / 10000000000000 : ℚ)
  center := (36545000000000003 / 40000000000000000 : ℚ)
  supportValue := (21715543907695933 / 100000000000000000 : ℚ)
  supportSlope := (-7178988170391837 / 10000000000000000 : ℚ)
  oldCenter := (21715543907695933 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2091
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13995 : Cell := { cellDefaults with
  domain := ⟨(45687500000000003 / 50000000000000000 : ℚ), (182775000000000009 / 200000000000000000 : ℚ)⟩
  r := (42695769737143 / 100000000000000 : ℚ)
  w := (12517641377037 / 10000000000000 : ℚ)
  center := (365525000000000021 / 400000000000000000 : ℚ)
  supportValue := (135637955232779 / 625000000000000 : ℚ)
  supportSlope := (-7174300260897909 / 10000000000000000 : ℚ)
  oldCenter := (135637955232779 / 625000000000000 : ℚ)
  newCoefficients := coefficients_2091
  oldLo := (433 / 2000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_571, piece_572]
}

noncomputable def cell_13996 : Cell := { cellDefaults with
  domain := ⟨(182775000000000009 / 200000000000000000 : ℚ), (91400000000000003 / 100000000000000000 : ℚ)⟩
  r := (42695769737143 / 100000000000000 : ℚ)
  w := (12517641377037 / 10000000000000 : ℚ)
  center := (73115000000000003 / 80000000000000000 : ℚ)
  supportValue := (1084655311025287 / 5000000000000000 : ℚ)
  supportSlope := (-717191816228177 / 1000000000000000 : ℚ)
  oldCenter := (1084655311025287 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2091
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_13997 : Cell := { cellDefaults with
  domain := ⟨(91400000000000003 / 100000000000000000 : ℚ), (45712500000000003 / 50000000000000000 : ℚ)⟩
  r := (1066974246361 / 2500000000000 : ℚ)
  w := (2502678750071 / 2000000000000 : ℚ)
  center := (182825000000000009 / 200000000000000000 : ℚ)
  supportValue := (2170570650437571 / 10000000000000000 : ℚ)
  supportSlope := (-3586230833788187 / 5000000000000000 : ℚ)
  oldCenter := (2170570650437571 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2092
  oldLo := (433 / 2000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_571, piece_572]
}

noncomputable def cell_13998 : Cell := { cellDefaults with
  domain := ⟨(45712500000000003 / 50000000000000000 : ℚ), (91450000000000009 / 100000000000000000 : ℚ)⟩
  r := (1066974246361 / 2500000000000 : ℚ)
  w := (2502678750071 / 2000000000000 : ℚ)
  center := (36575000000000003 / 40000000000000000 : ℚ)
  supportValue := (10843891028246659 / 50000000000000000 : ℚ)
  supportSlope := (-111981814370971 / 156250000000000 : ℚ)
  oldCenter := (10843891028246659 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2092
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_13999 : Cell := { cellDefaults with
  domain := ⟨(91450000000000009 / 100000000000000000 : ℚ), (182950000000000013 / 200000000000000000 : ℚ)⟩
  r := (21331090025667 / 50000000000000 : ℚ)
  w := (12509143425151 / 10000000000000 : ℚ)
  center := (365850000000000031 / 400000000000000000 : ℚ)
  supportValue := (1084794613953837 / 5000000000000000 : ℚ)
  supportSlope := (-7166439610074177 / 10000000000000000 : ℚ)
  oldCenter := (1084794613953837 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2093
  oldLo := (433 / 2000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_571, piece_572]
}

theorem check_13950 : cell_13950.check = true := by
  decide +kernel

theorem check_13951 : cell_13951.check = true := by
  decide +kernel

theorem check_13952 : cell_13952.check = true := by
  decide +kernel

theorem check_13953 : cell_13953.check = true := by
  decide +kernel

theorem check_13954 : cell_13954.check = true := by
  decide +kernel

theorem check_13955 : cell_13955.check = true := by
  decide +kernel

theorem check_13956 : cell_13956.check = true := by
  decide +kernel

theorem check_13957 : cell_13957.check = true := by
  decide +kernel

theorem check_13958 : cell_13958.check = true := by
  decide +kernel

theorem check_13959 : cell_13959.check = true := by
  decide +kernel

theorem check_13960 : cell_13960.check = true := by
  decide +kernel

theorem check_13961 : cell_13961.check = true := by
  decide +kernel

theorem check_13962 : cell_13962.check = true := by
  decide +kernel

theorem check_13963 : cell_13963.check = true := by
  decide +kernel

theorem check_13964 : cell_13964.check = true := by
  decide +kernel

theorem check_13965 : cell_13965.check = true := by
  decide +kernel

theorem check_13966 : cell_13966.check = true := by
  decide +kernel

theorem check_13967 : cell_13967.check = true := by
  decide +kernel

theorem check_13968 : cell_13968.check = true := by
  decide +kernel

theorem check_13969 : cell_13969.check = true := by
  decide +kernel

theorem check_13970 : cell_13970.check = true := by
  decide +kernel

theorem check_13971 : cell_13971.check = true := by
  decide +kernel

theorem check_13972 : cell_13972.check = true := by
  decide +kernel

theorem check_13973 : cell_13973.check = true := by
  decide +kernel

theorem check_13974 : cell_13974.check = true := by
  decide +kernel

theorem check_13975 : cell_13975.check = true := by
  decide +kernel

theorem check_13976 : cell_13976.check = true := by
  decide +kernel

theorem check_13977 : cell_13977.check = true := by
  decide +kernel

theorem check_13978 : cell_13978.check = true := by
  decide +kernel

theorem check_13979 : cell_13979.check = true := by
  decide +kernel

theorem check_13980 : cell_13980.check = true := by
  decide +kernel

theorem check_13981 : cell_13981.check = true := by
  decide +kernel

theorem check_13982 : cell_13982.check = true := by
  decide +kernel

theorem check_13983 : cell_13983.check = true := by
  decide +kernel

theorem check_13984 : cell_13984.check = true := by
  decide +kernel

theorem check_13985 : cell_13985.check = true := by
  decide +kernel

theorem check_13986 : cell_13986.check = true := by
  decide +kernel

theorem check_13987 : cell_13987.check = true := by
  decide +kernel

theorem check_13988 : cell_13988.check = true := by
  decide +kernel

theorem check_13989 : cell_13989.check = true := by
  decide +kernel

theorem check_13990 : cell_13990.check = true := by
  decide +kernel

theorem check_13991 : cell_13991.check = true := by
  decide +kernel

theorem check_13992 : cell_13992.check = true := by
  decide +kernel

theorem check_13993 : cell_13993.check = true := by
  decide +kernel

theorem check_13994 : cell_13994.check = true := by
  decide +kernel

theorem check_13995 : cell_13995.check = true := by
  decide +kernel

theorem check_13996 : cell_13996.check = true := by
  decide +kernel

theorem check_13997 : cell_13997.check = true := by
  decide +kernel

theorem check_13998 : cell_13998.check = true := by
  decide +kernel

theorem check_13999 : cell_13999.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13950, cell_13951, cell_13952, cell_13953, cell_13954, cell_13955, cell_13956, cell_13957, cell_13958, cell_13959, cell_13960, cell_13961, cell_13962, cell_13963, cell_13964, cell_13965, cell_13966, cell_13967, cell_13968, cell_13969, cell_13970, cell_13971, cell_13972, cell_13973, cell_13974, cell_13975, cell_13976, cell_13977, cell_13978, cell_13979, cell_13980, cell_13981, cell_13982, cell_13983, cell_13984, cell_13985, cell_13986, cell_13987, cell_13988, cell_13989, cell_13990, cell_13991, cell_13992, cell_13993, cell_13994, cell_13995, cell_13996, cell_13997, cell_13998, cell_13999]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13950, check_13951, check_13952, check_13953, check_13954, check_13955, check_13956, check_13957, check_13958, check_13959, check_13960, check_13961, check_13962, check_13963, check_13964, check_13965, check_13966, check_13967, check_13968, check_13969, check_13970, check_13971, check_13972, check_13973, check_13974, check_13975, check_13976, check_13977, check_13978, check_13979, check_13980, check_13981, check_13982, check_13983, check_13984, check_13985, check_13986, check_13987, check_13988, check_13989, check_13990, check_13991, check_13992, check_13993, check_13994, check_13995, check_13996, check_13997, check_13998, check_13999, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0279

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0279
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0279
open AnalyticBounds.ExpressionCertificate

theorem linked_13950 : Linked cell_13950 pieces := by
  refine ⟨piece_2074,piece_2074_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13950,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_574_mem
    · exact piece_575_mem

theorem linked_13951 : Linked cell_13951 pieces := by
  refine ⟨piece_2075,piece_2075_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13951,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_575_mem

theorem linked_13952 : Linked cell_13952 pieces := by
  refine ⟨piece_2075,piece_2075_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13952,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_574_mem
    · exact piece_575_mem

theorem linked_13953 : Linked cell_13953 pieces := by
  refine ⟨piece_2075,piece_2075_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13953,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_574_mem

theorem linked_13954 : Linked cell_13954 pieces := by
  refine ⟨piece_2076,piece_2076_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13954,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_574_mem
    · exact piece_575_mem

theorem linked_13955 : Linked cell_13955 pieces := by
  refine ⟨piece_2076,piece_2076_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13955,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_574_mem

theorem linked_13956 : Linked cell_13956 pieces := by
  refine ⟨piece_2076,piece_2076_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13956,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_574_mem

theorem linked_13957 : Linked cell_13957 pieces := by
  refine ⟨piece_2077,piece_2077_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13957,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_574_mem
    · exact piece_575_mem

theorem linked_13958 : Linked cell_13958 pieces := by
  refine ⟨piece_2077,piece_2077_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13958,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_574_mem

theorem linked_13959 : Linked cell_13959 pieces := by
  refine ⟨piece_2077,piece_2077_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13959,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_574_mem

theorem linked_13960 : Linked cell_13960 pieces := by
  refine ⟨piece_2078,piece_2078_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13960,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_574_mem

theorem linked_13961 : Linked cell_13961 pieces := by
  refine ⟨piece_2078,piece_2078_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13961,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_574_mem

theorem linked_13962 : Linked cell_13962 pieces := by
  refine ⟨piece_2078,piece_2078_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13962,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_574_mem

theorem linked_13963 : Linked cell_13963 pieces := by
  refine ⟨piece_2079,piece_2079_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13963,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_574_mem

theorem linked_13964 : Linked cell_13964 pieces := by
  refine ⟨piece_2079,piece_2079_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13964,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_574_mem

theorem linked_13965 : Linked cell_13965 pieces := by
  refine ⟨piece_2079,piece_2079_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13965,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_573_mem
    · exact piece_574_mem

theorem linked_13966 : Linked cell_13966 pieces := by
  refine ⟨piece_2080,piece_2080_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13966,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_574_mem

theorem linked_13967 : Linked cell_13967 pieces := by
  refine ⟨piece_2080,piece_2080_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13967,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_573_mem
    · exact piece_574_mem

theorem linked_13968 : Linked cell_13968 pieces := by
  refine ⟨piece_2080,piece_2080_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13968,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_573_mem

theorem linked_13969 : Linked cell_13969 pieces := by
  refine ⟨piece_2081,piece_2081_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13969,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_573_mem
    · exact piece_574_mem

theorem linked_13970 : Linked cell_13970 pieces := by
  refine ⟨piece_2081,piece_2081_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13970,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_573_mem

theorem linked_13971 : Linked cell_13971 pieces := by
  refine ⟨piece_2081,piece_2081_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13971,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_573_mem

theorem linked_13972 : Linked cell_13972 pieces := by
  refine ⟨piece_2082,piece_2082_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13972,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_573_mem
    · exact piece_574_mem

theorem linked_13973 : Linked cell_13973 pieces := by
  refine ⟨piece_2082,piece_2082_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13973,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_573_mem

theorem linked_13974 : Linked cell_13974 pieces := by
  refine ⟨piece_2082,piece_2082_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13974,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_573_mem

theorem linked_13975 : Linked cell_13975 pieces := by
  refine ⟨piece_2083,piece_2083_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13975,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_573_mem

theorem linked_13976 : Linked cell_13976 pieces := by
  refine ⟨piece_2083,piece_2083_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13976,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_573_mem

theorem linked_13977 : Linked cell_13977 pieces := by
  refine ⟨piece_2083,piece_2083_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13977,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_573_mem

theorem linked_13978 : Linked cell_13978 pieces := by
  refine ⟨piece_2084,piece_2084_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13978,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_573_mem

theorem linked_13979 : Linked cell_13979 pieces := by
  refine ⟨piece_2084,piece_2084_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13979,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_573_mem

theorem linked_13980 : Linked cell_13980 pieces := by
  refine ⟨piece_2084,piece_2084_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13980,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_572_mem
    · exact piece_573_mem

theorem linked_13981 : Linked cell_13981 pieces := by
  refine ⟨piece_2085,piece_2085_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13981,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_573_mem

theorem linked_13982 : Linked cell_13982 pieces := by
  refine ⟨piece_2085,piece_2085_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13982,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_572_mem
    · exact piece_573_mem

theorem linked_13983 : Linked cell_13983 pieces := by
  refine ⟨piece_2085,piece_2085_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13983,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_572_mem

theorem linked_13984 : Linked cell_13984 pieces := by
  refine ⟨piece_2086,piece_2086_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13984,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_573_mem

theorem linked_13985 : Linked cell_13985 pieces := by
  refine ⟨piece_2087,piece_2087_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13985,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_572_mem
    · exact piece_573_mem

theorem linked_13986 : Linked cell_13986 pieces := by
  refine ⟨piece_2087,piece_2087_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13986,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_572_mem

theorem linked_13987 : Linked cell_13987 pieces := by
  refine ⟨piece_2088,piece_2088_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13987,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_572_mem
    · exact piece_573_mem

theorem linked_13988 : Linked cell_13988 pieces := by
  refine ⟨piece_2088,piece_2088_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13988,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_572_mem

theorem linked_13989 : Linked cell_13989 pieces := by
  refine ⟨piece_2088,piece_2088_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13989,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_572_mem

theorem linked_13990 : Linked cell_13990 pieces := by
  refine ⟨piece_2089,piece_2089_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13990,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_572_mem

theorem linked_13991 : Linked cell_13991 pieces := by
  refine ⟨piece_2089,piece_2089_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13991,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_572_mem

theorem linked_13992 : Linked cell_13992 pieces := by
  refine ⟨piece_2090,piece_2090_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13992,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_572_mem

theorem linked_13993 : Linked cell_13993 pieces := by
  refine ⟨piece_2090,piece_2090_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13993,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_571_mem
    · exact piece_572_mem

theorem linked_13994 : Linked cell_13994 pieces := by
  refine ⟨piece_2091,piece_2091_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13994,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_572_mem

theorem linked_13995 : Linked cell_13995 pieces := by
  refine ⟨piece_2091,piece_2091_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13995,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_571_mem
    · exact piece_572_mem

theorem linked_13996 : Linked cell_13996 pieces := by
  refine ⟨piece_2091,piece_2091_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13996,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_571_mem

theorem linked_13997 : Linked cell_13997 pieces := by
  refine ⟨piece_2092,piece_2092_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13997,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_571_mem
    · exact piece_572_mem

theorem linked_13998 : Linked cell_13998 pieces := by
  refine ⟨piece_2092,piece_2092_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13998,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_571_mem

theorem linked_13999 : Linked cell_13999 pieces := by
  refine ⟨piece_2093,piece_2093_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13999,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_571_mem
    · exact piece_572_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0279.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0279.cells,List.forall_mem_cons]
  exact ⟨linked_13950, linked_13951, linked_13952, linked_13953, linked_13954, linked_13955, linked_13956, linked_13957, linked_13958, linked_13959, linked_13960, linked_13961, linked_13962, linked_13963, linked_13964, linked_13965, linked_13966, linked_13967, linked_13968, linked_13969, linked_13970, linked_13971, linked_13972, linked_13973, linked_13974, linked_13975, linked_13976, linked_13977, linked_13978, linked_13979, linked_13980, linked_13981, linked_13982, linked_13983, linked_13984, linked_13985, linked_13986, linked_13987, linked_13988, linked_13989, linked_13990, linked_13991, linked_13992, linked_13993, linked_13994, linked_13995, linked_13996, linked_13997, linked_13998, linked_13999, by simp⟩

theorem covered : covers (9059776536312849 / 10000000000000000 : ℚ) (182950000000000013 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0279.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0279
