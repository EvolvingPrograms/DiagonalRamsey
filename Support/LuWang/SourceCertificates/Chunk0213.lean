import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0213
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(25312499999999999 / 50000000000000000 : ℚ), (101274999999999993 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (61339666270449 / 100000000000000 : ℚ)
  w := (14604698705579 / 10000000000000 : ℚ)
  center := (202524999999999989 / 400000000000000000 : ℚ)
  supportValue := (2088620490189727 / 5000000000000000 : ℚ)
  supportSlope := (-19695942022866093 / 10000000000000000 : ℚ)
  oldCenter := (2088620490189727 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1203
  oldLo := (10400000000000001 / 25000000000000000 : ℚ)
  oldHi := (10400000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10650 : Cell := { cellDefaults with
  r := (61442465409501 / 100000000000000 : ℚ)
  w := (2923512439453 / 2000000000000 : ℚ)
  newCoefficients := coefficients_1202
  oldLo := (10437500000000001 / 25000000000000000 : ℚ)
  oldHi := (10450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1009]
}

noncomputable def cell_10651 : Cell := { cellDefaults with
  domain := ⟨(101274999999999993 / 200000000000000000 : ℚ), (10129999999999999 / 20000000000000000 : ℚ)⟩
  r := (61442465409501 / 100000000000000 : ℚ)
  w := (2923512439453 / 2000000000000 : ℚ)
  center := (202574999999999983 / 400000000000000000 : ℚ)
  supportValue := (2087390098280521 / 5000000000000000 : ℚ)
  supportSlope := (-9840477365840109 / 5000000000000000 : ℚ)
  oldCenter := (2087390098280521 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1202
  oldLo := (10425000000000001 / 25000000000000000 : ℚ)
  oldHi := (10450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1008, piece_1009]
}

noncomputable def cell_10652 : Cell := { cellDefaults with
  domain := ⟨(10129999999999999 / 20000000000000000 : ℚ), (101324999999999993 / 200000000000000000 : ℚ)⟩
  r := (30704078094319 / 50000000000000 : ℚ)
  w := (14613265678299 / 10000000000000 : ℚ)
  center := (202624999999999983 / 400000000000000000 : ℚ)
  supportValue := (4177468448267793 / 10000000000000000 : ℚ)
  supportSlope := (-1968658337206483 / 1000000000000000 : ℚ)
  oldCenter := (4177468448267793 / 10000000000000000 : ℚ)
  oldLo := (10437500000000001 / 25000000000000000 : ℚ)
  oldHi := (10450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1009]
}

noncomputable def cell_10653 : Cell := { cellDefaults with
  domain := ⟨(101324999999999993 / 200000000000000000 : ℚ), (25337499999999999 / 50000000000000000 : ℚ)⟩
  r := (30704078094319 / 50000000000000 : ℚ)
  w := (14613265678299 / 10000000000000 : ℚ)
  center := (202674999999999989 / 400000000000000000 : ℚ)
  supportValue := (163086287315251 / 390625000000000 : ℚ)
  supportSlope := (-19670620212985797 / 10000000000000000 : ℚ)
  oldCenter := (163086287315251 / 390625000000000 : ℚ)
  oldLo := (10425000000000001 / 25000000000000000 : ℚ)
  oldHi := (10450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1008, piece_1009]
}

noncomputable def cell_10654 : Cell := { cellDefaults with
  domain := ⟨(25337499999999999 / 50000000000000000 : ℚ), (101374999999999999 / 200000000000000000 : ℚ)⟩
  r := (30704078094319 / 50000000000000 : ℚ)
  w := (14613265678299 / 10000000000000 : ℚ)
  center := (40544999999999999 / 80000000000000000 : ℚ)
  supportValue := (5215688484210533 / 12500000000000000 : ℚ)
  supportSlope := (-98273373958057 / 50000000000000 : ℚ)
  oldCenter := (5215688484210533 / 12500000000000000 : ℚ)
  oldLo := (10425000000000001 / 25000000000000000 : ℚ)
  oldHi := (10437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1008]
}

noncomputable def cell_10655 : Cell := { cellDefaults with
  domain := ⟨(101374999999999999 / 200000000000000000 : ℚ), (50700000000000001 / 100000000000000000 : ℚ)⟩
  r := (30704078094319 / 50000000000000 : ℚ)
  w := (14613265678299 / 10000000000000 : ℚ)
  center := (202775000000000001 / 400000000000000000 : ℚ)
  supportValue := (10425238205562011 / 25000000000000000 : ℚ)
  supportSlope := (-6136990230781 / 3125000000000 : ℚ)
  oldCenter := (10425238205562011 / 25000000000000000 : ℚ)
  oldLo := (10412500000000001 / 25000000000000000 : ℚ)
  oldHi := (10437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1007, piece_1008]
}

noncomputable def cell_10656 : Cell := { cellDefaults with
  domain := ⟨(50700000000000001 / 100000000000000000 : ℚ), (101424999999999999 / 200000000000000000 : ℚ)⟩
  r := (61373889686711 / 100000000000000 : ℚ)
  w := (14608978048181 / 10000000000000 : ℚ)
  center := (202825000000000001 / 400000000000000000 : ℚ)
  supportValue := (834555553141323 / 2000000000000000 : ℚ)
  supportSlope := (-785813805826857 / 400000000000000 : ℚ)
  oldCenter := (834555553141323 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1204
  oldLo := (10425000000000001 / 25000000000000000 : ℚ)
  oldHi := (10437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1008]
}

noncomputable def cell_10657 : Cell := { cellDefaults with
  domain := ⟨(101424999999999999 / 200000000000000000 : ℚ), (25362499999999999 / 50000000000000000 : ℚ)⟩
  r := (61373889686711 / 100000000000000 : ℚ)
  w := (14608978048181 / 10000000000000 : ℚ)
  center := (40574999999999999 / 80000000000000000 : ℚ)
  supportValue := (4170323425461239 / 10000000000000000 : ℚ)
  supportSlope := (-9814029010583103 / 5000000000000000 : ℚ)
  oldCenter := (4170323425461239 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1204
  oldLo := (10412500000000001 / 25000000000000000 : ℚ)
  oldHi := (10437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1007, piece_1008]
}

noncomputable def cell_10658 : Cell := { cellDefaults with
  domain := ⟨(25362499999999999 / 50000000000000000 : ℚ), (101474999999999993 / 200000000000000000 : ℚ)⟩
  r := (61373889686711 / 100000000000000 : ℚ)
  w := (14608978048181 / 10000000000000 : ℚ)
  center := (202924999999999989 / 400000000000000000 : ℚ)
  supportValue := (1041967643078591 / 2500000000000000 : ℚ)
  supportSlope := (-9806778729296649 / 5000000000000000 : ℚ)
  oldCenter := (1041967643078591 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1204
  oldLo := (10412500000000001 / 25000000000000000 : ℚ)
  oldHi := (10425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1007]
}

noncomputable def cell_10659 : Cell := { cellDefaults with
  domain := ⟨(101474999999999993 / 200000000000000000 : ℚ), (10149999999999999 / 20000000000000000 : ℚ)⟩
  r := (61373889686711 / 100000000000000 : ℚ)
  w := (14608978048181 / 10000000000000 : ℚ)
  center := (202974999999999983 / 400000000000000000 : ℚ)
  supportValue := (4165420204810227 / 10000000000000000 : ℚ)
  supportSlope := (-4898967530105357 / 2500000000000000 : ℚ)
  oldCenter := (4165420204810227 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1204
  oldHi := (10425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006, piece_1007]
}

noncomputable def cell_10660 : Cell := { cellDefaults with
  domain := ⟨(10149999999999999 / 20000000000000000 : ℚ), (101524999999999993 / 200000000000000000 : ℚ)⟩
  center := (203024999999999983 / 400000000000000000 : ℚ)
  supportValue := (41680971728612587 / 100000000000000000 : ℚ)
  supportSlope := (-38289565477147 / 19531250000000 : ℚ)
  oldCenter := (41680971728612587 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1205
  oldLo := (10412500000000001 / 25000000000000000 : ℚ)
  oldHi := (10425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1007]
}

noncomputable def cell_10661 : Cell := { cellDefaults with
  domain := ⟨(101524999999999993 / 200000000000000000 : ℚ), (25387499999999999 / 50000000000000000 : ℚ)⟩
  center := (203074999999999989 / 400000000000000000 : ℚ)
  supportValue := (4165647966545567 / 10000000000000000 : ℚ)
  supportSlope := (-9792791707975359 / 5000000000000000 : ℚ)
  oldCenter := (4165647966545567 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1205
  oldHi := (10425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006, piece_1007]
}

noncomputable def cell_10662 : Cell := { cellDefaults with
  domain := ⟨(25387499999999999 / 50000000000000000 : ℚ), (1269413407821229 / 2500000000000000 : ℚ)⟩
  center := (50775768156424579 / 100000000000000000 : ℚ)
  supportValue := (8328539729465051 / 20000000000000000 : ℚ)
  supportSlope := (-2447739612004807 / 1250000000000000 : ℚ)
  oldCenter := (8328539729465051 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1205
  oldHi := (10412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006]
}

noncomputable def cell_10663 : Cell := { cellDefaults with
  domain := ⟨(1269413407821229 / 2500000000000000 : ℚ), (101576536312849161 / 200000000000000000 : ℚ)⟩
  center := (203129608938547481 / 400000000000000000 : ℚ)
  supportValue := (4162971992051217 / 10000000000000000 : ℚ)
  supportSlope := (-3914126239084339 / 2000000000000000 : ℚ)
  oldCenter := (4162971992051217 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1206
  oldHi := (10412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006]
}

noncomputable def cell_10664 : Cell := { cellDefaults with
  domain := ⟨(101576536312849161 / 200000000000000000 : ℚ), (50800000000000001 / 100000000000000000 : ℚ)⟩
  center := (203176536312849163 / 400000000000000000 : ℚ)
  supportValue := (10401700192855691 / 25000000000000000 : ℚ)
  supportSlope := (-9776472141820699 / 5000000000000000 : ℚ)
  oldCenter := (10401700192855691 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1206
  oldLo := (10387500000000001 / 25000000000000000 : ℚ)
  oldHi := (10412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1005, piece_1006]
}

noncomputable def cell_10665 : Cell := { cellDefaults with
  domain := ⟨(50800000000000001 / 100000000000000000 : ℚ), (101624999999999999 / 200000000000000000 : ℚ)⟩
  r := (3065274198767 / 5000000000000 : ℚ)
  w := (14600427741439 / 10000000000000 : ℚ)
  center := (203225000000000001 / 400000000000000000 : ℚ)
  supportValue := (2081713412782471 / 5000000000000000 : ℚ)
  supportSlope := (-9781660790518849 / 5000000000000000 : ℚ)
  oldCenter := (2081713412782471 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1207
  oldHi := (10412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006]
}

noncomputable def cell_10666 : Cell := { cellDefaults with
  domain := ⟨(101624999999999999 / 200000000000000000 : ℚ), (25412499999999999 / 50000000000000000 : ℚ)⟩
  r := (3065274198767 / 5000000000000 : ℚ)
  w := (14600427741439 / 10000000000000 : ℚ)
  center := (40654999999999999 / 80000000000000000 : ℚ)
  supportValue := (325076776110093 / 781250000000000 : ℚ)
  supportSlope := (-9771598053368641 / 5000000000000000 : ℚ)
  oldCenter := (325076776110093 / 781250000000000 : ℚ)
  newCoefficients := coefficients_1207
  oldLo := (10387500000000001 / 25000000000000000 : ℚ)
  oldHi := (10412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1005, piece_1006]
}

noncomputable def cell_10667 : Cell := { cellDefaults with
  domain := ⟨(25412499999999999 / 50000000000000000 : ℚ), (101674999999999993 / 200000000000000000 : ℚ)⟩
  r := (3065274198767 / 5000000000000 : ℚ)
  w := (14600427741439 / 10000000000000 : ℚ)
  center := (203324999999999989 / 400000000000000000 : ℚ)
  supportValue := (4158540477778993 / 10000000000000000 : ℚ)
  supportSlope := (-9765887850329341 / 5000000000000000 : ℚ)
  oldCenter := (4158540477778993 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1207
  oldLo := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1005]
}

noncomputable def cell_10668 : Cell := { cellDefaults with
  domain := ⟨(101674999999999993 / 200000000000000000 : ℚ), (10169999999999999 / 20000000000000000 : ℚ)⟩
  r := (3065274198767 / 5000000000000 : ℚ)
  w := (14600427741439 / 10000000000000 : ℚ)
  center := (203374999999999983 / 400000000000000000 : ℚ)
  supportValue := (2078050164442397 / 5000000000000000 : ℚ)
  supportSlope := (-9755567008779057 / 5000000000000000 : ℚ)
  oldCenter := (2078050164442397 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1207
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004, piece_1005]
}

noncomputable def cell_10669 : Cell := { cellDefaults with
  domain := ⟨(10169999999999999 / 20000000000000000 : ℚ), (101724999999999993 / 200000000000000000 : ℚ)⟩
  r := (30635672424463 / 50000000000000 : ℚ)
  w := (14596166376637 / 10000000000000 : ℚ)
  center := (203424999999999983 / 400000000000000000 : ℚ)
  supportValue := (831753220727711 / 2000000000000000 : ℚ)
  supportSlope := (-1220158320983509 / 625000000000000 : ℚ)
  oldCenter := (831753220727711 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1208
  oldLo := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1005]
}

noncomputable def cell_10670 : Cell := { cellDefaults with
  domain := ⟨(101724999999999993 / 200000000000000000 : ℚ), (25437499999999999 / 50000000000000000 : ℚ)⟩
  r := (30635672424463 / 50000000000000 : ℚ)
  w := (14596166376637 / 10000000000000 : ℚ)
  center := (203474999999999989 / 400000000000000000 : ℚ)
  supportValue := (64942611074667 / 156250000000000 : ℚ)
  supportSlope := (-4875340486704653 / 2500000000000000 : ℚ)
  oldCenter := (64942611074667 / 156250000000000 : ℚ)
  newCoefficients := coefficients_1208
  oldLo := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1005]
}

noncomputable def cell_10671 : Cell := { cellDefaults with
  domain := ⟨(25437499999999999 / 50000000000000000 : ℚ), (101774999999999999 / 200000000000000000 : ℚ)⟩
  r := (30635672424463 / 50000000000000 : ℚ)
  w := (14596166376637 / 10000000000000 : ℚ)
  center := (40704999999999999 / 80000000000000000 : ℚ)
  supportValue := (41538901345844337 / 100000000000000000 : ℚ)
  supportSlope := (-4872660174361469 / 2500000000000000 : ℚ)
  oldCenter := (41538901345844337 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1208
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004, piece_1005]
}

noncomputable def cell_10672 : Cell := { cellDefaults with
  domain := ⟨(101774999999999999 / 200000000000000000 : ℚ), (50900000000000001 / 100000000000000000 : ℚ)⟩
  r := (30635672424463 / 50000000000000 : ℚ)
  w := (14596166376637 / 10000000000000 : ℚ)
  center := (203575000000000001 / 400000000000000000 : ℚ)
  supportValue := (1037863766755389 / 2500000000000000 : ℚ)
  supportSlope := (-778798002125831 / 400000000000000 : ℚ)
  oldCenter := (1037863766755389 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1208
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldHi := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004]
}

noncomputable def cell_10673 : Cell := { cellDefaults with
  domain := ⟨(50900000000000001 / 100000000000000000 : ℚ), (101824999999999999 / 200000000000000000 : ℚ)⟩
  r := (30618623725221 / 50000000000000 : ℚ)
  w := (2918382403953 / 2000000000000 : ℚ)
  center := (203625000000000001 / 400000000000000000 : ℚ)
  supportValue := (8308231704114859 / 20000000000000000 : ℚ)
  supportSlope := (-19480422417130887 / 10000000000000000 : ℚ)
  oldCenter := (8308231704114859 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1209
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004, piece_1005]
}

noncomputable def cell_10674 : Cell := { cellDefaults with
  domain := ⟨(101824999999999999 / 200000000000000000 : ℚ), (25462499999999999 / 50000000000000000 : ℚ)⟩
  r := (30618623725221 / 50000000000000 : ℚ)
  w := (2918382403953 / 2000000000000 : ℚ)
  center := (40734999999999999 / 80000000000000000 : ℚ)
  supportValue := (4151681934474877 / 10000000000000000 : ℚ)
  supportSlope := (-3892152090629009 / 2000000000000000 : ℚ)
  oldCenter := (4151681934474877 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1209
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldHi := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004]
}

noncomputable def cell_10675 : Cell := { cellDefaults with
  domain := ⟨(25462499999999999 / 50000000000000000 : ℚ), (101874999999999993 / 200000000000000000 : ℚ)⟩
  r := (30618623725221 / 50000000000000 : ℚ)
  w := (2918382403953 / 2000000000000 : ℚ)
  center := (203724999999999989 / 400000000000000000 : ℚ)
  supportValue := (4149250231648133 / 10000000000000000 : ℚ)
  supportSlope := (-9724256898456851 / 5000000000000000 : ℚ)
  oldCenter := (4149250231648133 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1209
  oldLo := (10362500000000001 / 25000000000000000 : ℚ)
  oldHi := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1003, piece_1004]
}

noncomputable def cell_10676 : Cell := { cellDefaults with
  domain := ⟨(101874999999999993 / 200000000000000000 : ℚ), (10189999999999999 / 20000000000000000 : ℚ)⟩
  r := (30618623725221 / 50000000000000 : ℚ)
  w := (2918382403953 / 2000000000000 : ℚ)
  center := (203774999999999983 / 400000000000000000 : ℚ)
  supportValue := (518352528272403 / 1250000000000000 : ℚ)
  supportSlope := (-4857367558127073 / 2500000000000000 : ℚ)
  oldCenter := (518352528272403 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1209
  oldLo := (10362500000000001 / 25000000000000000 : ℚ)
  oldHi := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1003]
}

noncomputable def cell_10677 : Cell := { cellDefaults with
  domain := ⟨(10189999999999999 / 20000000000000000 : ℚ), (101924999999999993 / 200000000000000000 : ℚ)⟩
  r := (30601596634279 / 50000000000000 : ℚ)
  w := (14587667792769 / 10000000000000 : ℚ)
  center := (203824999999999983 / 400000000000000000 : ℚ)
  supportValue := (8298949971074041 / 20000000000000000 : ℚ)
  supportSlope := (-6220261679379 / 3200000000000 : ℚ)
  oldCenter := (8298949971074041 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1210
  oldLo := (10362500000000001 / 25000000000000000 : ℚ)
  oldHi := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1003, piece_1004]
}

noncomputable def cell_10678 : Cell := { cellDefaults with
  domain := ⟨(101924999999999993 / 200000000000000000 : ℚ), (25487499999999999 / 50000000000000000 : ℚ)⟩
  r := (30601596634279 / 50000000000000 : ℚ)
  w := (14587667792769 / 10000000000000 : ℚ)
  center := (203874999999999989 / 400000000000000000 : ℚ)
  supportValue := (1658818450770839 / 4000000000000000 : ℚ)
  supportSlope := (-1213769097197913 / 625000000000000 : ℚ)
  oldCenter := (1658818450770839 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1210
  oldLo := (10362500000000001 / 25000000000000000 : ℚ)
  oldHi := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1003]
}

noncomputable def cell_10679 : Cell := { cellDefaults with
  domain := ⟨(25487499999999999 / 50000000000000000 : ℚ), (101974999999999999 / 200000000000000000 : ℚ)⟩
  r := (30601596634279 / 50000000000000 : ℚ)
  w := (14587667792769 / 10000000000000 : ℚ)
  center := (40784999999999999 / 80000000000000000 : ℚ)
  supportValue := (4144619684985809 / 10000000000000000 : ℚ)
  supportSlope := (-1940647063413559 / 1000000000000000 : ℚ)
  oldCenter := (4144619684985809 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1210
  oldLo := (41400000000000003 / 100000000000000000 : ℚ)
  oldHi := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1002, piece_1003]
}

noncomputable def cell_10680 : Cell := { cellDefaults with
  domain := ⟨(101974999999999999 / 200000000000000000 : ℚ), (51000000000000001 / 100000000000000000 : ℚ)⟩
  r := (30601596634279 / 50000000000000 : ℚ)
  w := (14587667792769 / 10000000000000 : ℚ)
  center := (203975000000000001 / 400000000000000000 : ℚ)
  supportValue := (4142194723296753 / 10000000000000000 : ℚ)
  supportSlope := (-19389137074658953 / 10000000000000000 : ℚ)
  oldCenter := (4142194723296753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1210
  oldLo := (41400000000000003 / 100000000000000000 : ℚ)
  oldHi := (10362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1002]
}

noncomputable def cell_10681 : Cell := { cellDefaults with
  domain := ⟨(51000000000000001 / 100000000000000000 : ℚ), (102024999999999999 / 200000000000000000 : ℚ)⟩
  r := (30584590269877 / 50000000000000 : ℚ)
  w := (1822928927703 / 1250000000000 : ℚ)
  center := (204025000000000001 / 400000000000000000 : ℚ)
  supportValue := (828968859355971 / 2000000000000000 : ℚ)
  supportSlope := (-387925976383887 / 200000000000000 : ℚ)
  oldCenter := (828968859355971 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1211
  oldLo := (41400000000000003 / 100000000000000000 : ℚ)
  oldHi := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1002, piece_1003]
}

noncomputable def cell_10682 : Cell := { cellDefaults with
  domain := ⟨(102024999999999999 / 200000000000000000 : ℚ), (25512499999999999 / 50000000000000000 : ℚ)⟩
  r := (30584590269877 / 50000000000000 : ℚ)
  w := (1822928927703 / 1250000000000 : ℚ)
  center := (40814999999999999 / 80000000000000000 : ℚ)
  supportValue := (41424204781202933 / 100000000000000000 : ℚ)
  supportSlope := (-4845000750797771 / 2500000000000000 : ℚ)
  oldCenter := (41424204781202933 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1211
  oldLo := (41400000000000003 / 100000000000000000 : ℚ)
  oldHi := (10362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1002]
}

noncomputable def cell_10683 : Cell := { cellDefaults with
  domain := ⟨(25512499999999999 / 50000000000000000 : ℚ), (102074999999999993 / 200000000000000000 : ℚ)⟩
  r := (30584590269877 / 50000000000000 : ℚ)
  w := (1822928927703 / 1250000000000 : ℚ)
  center := (204124999999999989 / 400000000000000000 : ℚ)
  supportValue := (20699996431909143 / 50000000000000000 : ℚ)
  supportSlope := (-1936451367710267 / 1000000000000000 : ℚ)
  oldCenter := (20699996431909143 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1211
  oldLo := (20687150837988827 / 50000000000000000 : ℚ)
  oldHi := (10362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1001, piece_1002]
}

noncomputable def cell_10684 : Cell := { cellDefaults with
  domain := ⟨(102074999999999993 / 200000000000000000 : ℚ), (10209999999999999 / 20000000000000000 : ℚ)⟩
  r := (30584590269877 / 50000000000000 : ℚ)
  w := (1822928927703 / 1250000000000 : ℚ)
  center := (204174999999999983 / 400000000000000000 : ℚ)
  supportValue := (12929935466691 / 31250000000000 : ℚ)
  supportSlope := (-773958122498279 / 400000000000000 : ℚ)
  oldCenter := (12929935466691 / 31250000000000 : ℚ)
  newCoefficients := coefficients_1211
  oldLo := (41350000000000003 / 100000000000000000 : ℚ)
  oldHi := (41400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1000, piece_1001]
}

noncomputable def cell_10685 : Cell := { cellDefaults with
  domain := ⟨(10209999999999999 / 20000000000000000 : ℚ), (102124999999999993 / 200000000000000000 : ℚ)⟩
  r := (61135209896307 / 100000000000000 : ℚ)
  w := (1457920416439 / 1000000000000 : ℚ)
  center := (204224999999999983 / 400000000000000000 : ℚ)
  supportValue := (41402231949285523 / 100000000000000000 : ℚ)
  supportSlope := (-3870872888268797 / 2000000000000000 : ℚ)
  oldCenter := (41402231949285523 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1212
  oldLo := (20687150837988827 / 50000000000000000 : ℚ)
  oldHi := (10362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1001, piece_1002]
}

noncomputable def cell_10686 : Cell := { cellDefaults with
  domain := ⟨(102124999999999993 / 200000000000000000 : ℚ), (25537499999999999 / 50000000000000000 : ℚ)⟩
  r := (61135209896307 / 100000000000000 : ℚ)
  w := (1457920416439 / 1000000000000 : ℚ)
  center := (204274999999999989 / 400000000000000000 : ℚ)
  supportValue := (517225565276577 / 1250000000000000 : ℚ)
  supportSlope := (-19339846813675077 / 10000000000000000 : ℚ)
  oldCenter := (517225565276577 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1212
  oldLo := (41350000000000003 / 100000000000000000 : ℚ)
  oldHi := (41400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1000, piece_1001]
}

noncomputable def cell_10687 : Cell := { cellDefaults with
  domain := ⟨(25537499999999999 / 50000000000000000 : ℚ), (102174999999999999 / 200000000000000000 : ℚ)⟩
  r := (61135209896307 / 100000000000000 : ℚ)
  w := (1457920416439 / 1000000000000 : ℚ)
  center := (40864999999999999 / 80000000000000000 : ℚ)
  supportValue := (4135388351163261 / 10000000000000000 : ℚ)
  supportSlope := (-1207664504628691 / 625000000000000 : ℚ)
  oldCenter := (4135388351163261 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1212
  oldLo := (41300000000000003 / 100000000000000000 : ℚ)
  oldHi := (20687150837988827 / 50000000000000000 : ℚ)
  oldPieces := [piece_999, piece_1000]
}

noncomputable def cell_10688 : Cell := { cellDefaults with
  domain := ⟨(102174999999999999 / 200000000000000000 : ℚ), (51100000000000001 / 100000000000000000 : ℚ)⟩
  r := (61135209896307 / 100000000000000 : ℚ)
  w := (1457920416439 / 1000000000000 : ℚ)
  center := (204375000000000001 / 400000000000000000 : ℚ)
  supportValue := (41329736409473017 / 100000000000000000 : ℚ)
  supportSlope := (-9654457626945231 / 5000000000000000 : ℚ)
  oldCenter := (41329736409473017 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1212
  oldLo := (41300000000000003 / 100000000000000000 : ℚ)
  oldHi := (41350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_999]
}

noncomputable def cell_10689 : Cell := { cellDefaults with
  domain := ⟨(51100000000000001 / 100000000000000000 : ℚ), (102224999999999999 / 200000000000000000 : ℚ)⟩
  r := (7637660132867 / 12500000000000 : ℚ)
  w := (1457498559497 / 1000000000000 : ℚ)
  center := (204425000000000001 / 400000000000000000 : ℚ)
  supportValue := (4135611813803349 / 10000000000000000 : ℚ)
  supportSlope := (-386250111304289 / 200000000000000 : ℚ)
  oldCenter := (4135611813803349 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1213
  oldLo := (41300000000000003 / 100000000000000000 : ℚ)
  oldHi := (20687150837988827 / 50000000000000000 : ℚ)
  oldPieces := [piece_999, piece_1000]
}

noncomputable def cell_10690 : Cell := { cellDefaults with
  domain := ⟨(102224999999999999 / 200000000000000000 : ℚ), (25562499999999999 / 50000000000000000 : ℚ)⟩
  r := (7637660132867 / 12500000000000 : ℚ)
  w := (1457498559497 / 1000000000000 : ℚ)
  center := (40894999999999999 / 80000000000000000 : ℚ)
  supportValue := (1033299591953307 / 2500000000000000 : ℚ)
  supportSlope := (-771993491493909 / 400000000000000 : ℚ)
  oldCenter := (1033299591953307 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1213
  oldLo := (41300000000000003 / 100000000000000000 : ℚ)
  oldHi := (41350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_999]
}

noncomputable def cell_10691 : Cell := { cellDefaults with
  domain := ⟨(25562499999999999 / 50000000000000000 : ℚ), (102274999999999993 / 200000000000000000 : ℚ)⟩
  r := (7637660132867 / 12500000000000 : ℚ)
  w := (1457498559497 / 1000000000000 : ℚ)
  center := (204524999999999989 / 400000000000000000 : ℚ)
  supportValue := (1652314878398639 / 4000000000000000 : ℚ)
  supportSlope := (-9640414906245721 / 5000000000000000 : ℚ)
  oldCenter := (1652314878398639 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1213
  oldLo := (41250000000000003 / 100000000000000000 : ℚ)
  oldHi := (41350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_998, piece_999]
}

noncomputable def cell_10692 : Cell := { cellDefaults with
  domain := ⟨(102274999999999993 / 200000000000000000 : ℚ), (10229999999999999 / 20000000000000000 : ℚ)⟩
  r := (7637660132867 / 12500000000000 : ℚ)
  w := (1457498559497 / 1000000000000 : ℚ)
  center := (204574999999999983 / 400000000000000000 : ℚ)
  supportValue := (825675541097619 / 2000000000000000 : ℚ)
  supportSlope := (-9634513651320997 / 5000000000000000 : ℚ)
  oldCenter := (825675541097619 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1213
  oldLo := (41250000000000003 / 100000000000000000 : ℚ)
  oldHi := (41300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_998]
}

noncomputable def cell_10693 : Cell := { cellDefaults with
  domain := ⟨(10229999999999999 / 20000000000000000 : ℚ), (102324999999999993 / 200000000000000000 : ℚ)⟩
  r := (61067394807191 / 100000000000000 : ℚ)
  w := (14570775653391 / 10000000000000 : ℚ)
  center := (204624999999999983 / 400000000000000000 : ℚ)
  supportValue := (1032752532612721 / 2500000000000000 : ℚ)
  supportSlope := (-19270726226403487 / 10000000000000000 : ℚ)
  oldCenter := (1032752532612721 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1214
  oldLo := (41250000000000003 / 100000000000000000 : ℚ)
  oldHi := (41350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_998, piece_999]
}

noncomputable def cell_10694 : Cell := { cellDefaults with
  domain := ⟨(102324999999999993 / 200000000000000000 : ℚ), (25587499999999999 / 50000000000000000 : ℚ)⟩
  r := (61067394807191 / 100000000000000 : ℚ)
  w := (14570775653391 / 10000000000000 : ℚ)
  center := (204674999999999989 / 400000000000000000 : ℚ)
  supportValue := (2064300950683231 / 5000000000000000 : ℚ)
  supportSlope := (-154079811781979 / 80000000000000 : ℚ)
  oldCenter := (2064300950683231 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1214
  oldLo := (41250000000000003 / 100000000000000000 : ℚ)
  oldHi := (41300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_998]
}

noncomputable def cell_10695 : Cell := { cellDefaults with
  domain := ⟨(25587499999999999 / 50000000000000000 : ℚ), (102374999999999999 / 200000000000000000 : ℚ)⟩
  r := (61067394807191 / 100000000000000 : ℚ)
  w := (14570775653391 / 10000000000000 : ℚ)
  center := (40944999999999999 / 80000000000000000 : ℚ)
  supportValue := (2063097854931337 / 5000000000000000 : ℚ)
  supportSlope := (-4809778550238209 / 2500000000000000 : ℚ)
  oldCenter := (2063097854931337 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1214
  oldLo := (41200000000000003 / 100000000000000000 : ℚ)
  oldHi := (41300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_997, piece_998]
}

noncomputable def cell_10696 : Cell := { cellDefaults with
  domain := ⟨(102374999999999999 / 200000000000000000 : ℚ), (51200000000000001 / 100000000000000000 : ℚ)⟩
  r := (61067394807191 / 100000000000000 : ℚ)
  w := (14570775653391 / 10000000000000 : ℚ)
  center := (204775000000000001 / 400000000000000000 : ℚ)
  supportValue := (41237914281649507 / 100000000000000000 : ℚ)
  supportSlope := (-1201830707307361 / 625000000000000 : ℚ)
  oldCenter := (41237914281649507 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1214
  oldLo := (41200000000000003 / 100000000000000000 : ℚ)
  oldHi := (41250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_997]
}

noncomputable def cell_10697 : Cell := { cellDefaults with
  domain := ⟨(51200000000000001 / 100000000000000000 : ℚ), (204849999999999999 / 400000000000000000 : ℚ)⟩
  r := (3814596843169 / 6250000000000 : ℚ)
  w := (7283287026757 / 5000000000000 : ℚ)
  center := (409650000000000003 / 800000000000000000 : ℚ)
  supportValue := (8252836737834437 / 20000000000000000 : ℚ)
  supportSlope := (-240375235762393 / 125000000000000 : ℚ)
  oldCenter := (8252836737834437 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1215
  oldLo := (41250000000000003 / 100000000000000000 : ℚ)
  oldHi := (41300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_998]
}

noncomputable def cell_10698 : Cell := { cellDefaults with
  domain := ⟨(204849999999999999 / 400000000000000000 : ℚ), (102449999999999997 / 200000000000000000 : ℚ)⟩
  r := (3814596843169 / 6250000000000 : ℚ)
  w := (7283287026757 / 5000000000000 : ℚ)
  center := (409749999999999993 / 800000000000000000 : ℚ)
  supportValue := (4124015345772369 / 10000000000000000 : ℚ)
  supportSlope := (-2402410532036621 / 1250000000000000 : ℚ)
  oldCenter := (4124015345772369 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1215
  oldLo := (41200000000000003 / 100000000000000000 : ℚ)
  oldHi := (41300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_997, piece_998]
}

noncomputable def cell_10699 : Cell := { cellDefaults with
  domain := ⟨(102449999999999997 / 200000000000000000 : ℚ), (204949999999999989 / 400000000000000000 : ℚ)⟩
  r := (3814596843169 / 6250000000000 : ℚ)
  w := (7283287026757 / 5000000000000 : ℚ)
  center := (409849999999999983 / 800000000000000000 : ℚ)
  supportValue := (2060807057927707 / 5000000000000000 : ℚ)
  supportSlope := (-9599693347991227 / 5000000000000000 : ℚ)
  oldCenter := (2060807057927707 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1215
  oldLo := (41200000000000003 / 100000000000000000 : ℚ)
  oldHi := (41250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_997]
}

theorem check_10650 : cell_10650.check = true := by
  decide +kernel

theorem check_10651 : cell_10651.check = true := by
  decide +kernel

theorem check_10652 : cell_10652.check = true := by
  decide +kernel

theorem check_10653 : cell_10653.check = true := by
  decide +kernel

theorem check_10654 : cell_10654.check = true := by
  decide +kernel

theorem check_10655 : cell_10655.check = true := by
  decide +kernel

theorem check_10656 : cell_10656.check = true := by
  decide +kernel

theorem check_10657 : cell_10657.check = true := by
  decide +kernel

theorem check_10658 : cell_10658.check = true := by
  decide +kernel

theorem check_10659 : cell_10659.check = true := by
  decide +kernel

theorem check_10660 : cell_10660.check = true := by
  decide +kernel

theorem check_10661 : cell_10661.check = true := by
  decide +kernel

theorem check_10662 : cell_10662.check = true := by
  decide +kernel

theorem check_10663 : cell_10663.check = true := by
  decide +kernel

theorem check_10664 : cell_10664.check = true := by
  decide +kernel

theorem check_10665 : cell_10665.check = true := by
  decide +kernel

theorem check_10666 : cell_10666.check = true := by
  decide +kernel

theorem check_10667 : cell_10667.check = true := by
  decide +kernel

theorem check_10668 : cell_10668.check = true := by
  decide +kernel

theorem check_10669 : cell_10669.check = true := by
  decide +kernel

theorem check_10670 : cell_10670.check = true := by
  decide +kernel

theorem check_10671 : cell_10671.check = true := by
  decide +kernel

theorem check_10672 : cell_10672.check = true := by
  decide +kernel

theorem check_10673 : cell_10673.check = true := by
  decide +kernel

theorem check_10674 : cell_10674.check = true := by
  decide +kernel

theorem check_10675 : cell_10675.check = true := by
  decide +kernel

theorem check_10676 : cell_10676.check = true := by
  decide +kernel

theorem check_10677 : cell_10677.check = true := by
  decide +kernel

theorem check_10678 : cell_10678.check = true := by
  decide +kernel

theorem check_10679 : cell_10679.check = true := by
  decide +kernel

theorem check_10680 : cell_10680.check = true := by
  decide +kernel

theorem check_10681 : cell_10681.check = true := by
  decide +kernel

theorem check_10682 : cell_10682.check = true := by
  decide +kernel

theorem check_10683 : cell_10683.check = true := by
  decide +kernel

theorem check_10684 : cell_10684.check = true := by
  decide +kernel

theorem check_10685 : cell_10685.check = true := by
  decide +kernel

theorem check_10686 : cell_10686.check = true := by
  decide +kernel

theorem check_10687 : cell_10687.check = true := by
  decide +kernel

theorem check_10688 : cell_10688.check = true := by
  decide +kernel

theorem check_10689 : cell_10689.check = true := by
  decide +kernel

theorem check_10690 : cell_10690.check = true := by
  decide +kernel

theorem check_10691 : cell_10691.check = true := by
  decide +kernel

theorem check_10692 : cell_10692.check = true := by
  decide +kernel

theorem check_10693 : cell_10693.check = true := by
  decide +kernel

theorem check_10694 : cell_10694.check = true := by
  decide +kernel

theorem check_10695 : cell_10695.check = true := by
  decide +kernel

theorem check_10696 : cell_10696.check = true := by
  decide +kernel

theorem check_10697 : cell_10697.check = true := by
  decide +kernel

theorem check_10698 : cell_10698.check = true := by
  decide +kernel

theorem check_10699 : cell_10699.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_10650, cell_10651, cell_10652, cell_10653, cell_10654, cell_10655, cell_10656, cell_10657, cell_10658, cell_10659, cell_10660, cell_10661, cell_10662, cell_10663, cell_10664, cell_10665, cell_10666, cell_10667, cell_10668, cell_10669, cell_10670, cell_10671, cell_10672, cell_10673, cell_10674, cell_10675, cell_10676, cell_10677, cell_10678, cell_10679, cell_10680, cell_10681, cell_10682, cell_10683, cell_10684, cell_10685, cell_10686, cell_10687, cell_10688, cell_10689, cell_10690, cell_10691, cell_10692, cell_10693, cell_10694, cell_10695, cell_10696, cell_10697, cell_10698, cell_10699]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10650, check_10651, check_10652, check_10653, check_10654, check_10655, check_10656, check_10657, check_10658, check_10659, check_10660, check_10661, check_10662, check_10663, check_10664, check_10665, check_10666, check_10667, check_10668, check_10669, check_10670, check_10671, check_10672, check_10673, check_10674, check_10675, check_10676, check_10677, check_10678, check_10679, check_10680, check_10681, check_10682, check_10683, check_10684, check_10685, check_10686, check_10687, check_10688, check_10689, check_10690, check_10691, check_10692, check_10693, check_10694, check_10695, check_10696, check_10697, check_10698, check_10699, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0213

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0213
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0213
open AnalyticBounds.ExpressionCertificate

theorem linked_10650 : Linked cell_10650 pieces := by
  apply Linked.of_piece piece_1202 piece_1202_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10650, List.cons_subset, List.nil_subset, and_true]
  exact piece_1009_mem

theorem linked_10651 : Linked cell_10651 pieces := by
  apply Linked.of_piece piece_1202 piece_1202_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10651, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1008_mem, piece_1009_mem⟩

theorem linked_10652 : Linked cell_10652 pieces := by
  apply Linked.of_piece piece_1203 piece_1203_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10652, List.cons_subset, List.nil_subset, and_true]
  exact piece_1009_mem

theorem linked_10653 : Linked cell_10653 pieces := by
  apply Linked.of_piece piece_1203 piece_1203_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10653, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1008_mem, piece_1009_mem⟩

theorem linked_10654 : Linked cell_10654 pieces := by
  apply Linked.of_piece piece_1203 piece_1203_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10654, List.cons_subset, List.nil_subset, and_true]
  exact piece_1008_mem

theorem linked_10655 : Linked cell_10655 pieces := by
  apply Linked.of_piece piece_1203 piece_1203_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10655, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1007_mem, piece_1008_mem⟩

theorem linked_10656 : Linked cell_10656 pieces := by
  apply Linked.of_piece piece_1204 piece_1204_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10656, List.cons_subset, List.nil_subset, and_true]
  exact piece_1008_mem

theorem linked_10657 : Linked cell_10657 pieces := by
  apply Linked.of_piece piece_1204 piece_1204_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10657, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1007_mem, piece_1008_mem⟩

theorem linked_10658 : Linked cell_10658 pieces := by
  apply Linked.of_piece piece_1204 piece_1204_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10658, List.cons_subset, List.nil_subset, and_true]
  exact piece_1007_mem

theorem linked_10659 : Linked cell_10659 pieces := by
  apply Linked.of_piece piece_1204 piece_1204_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10659, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1006_mem, piece_1007_mem⟩

theorem linked_10660 : Linked cell_10660 pieces := by
  apply Linked.of_piece piece_1205 piece_1205_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10660, List.cons_subset, List.nil_subset, and_true]
  exact piece_1007_mem

theorem linked_10661 : Linked cell_10661 pieces := by
  apply Linked.of_piece piece_1205 piece_1205_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10661, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1006_mem, piece_1007_mem⟩

theorem linked_10662 : Linked cell_10662 pieces := by
  apply Linked.of_piece piece_1205 piece_1205_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10662, List.cons_subset, List.nil_subset, and_true]
  exact piece_1006_mem

theorem linked_10663 : Linked cell_10663 pieces := by
  apply Linked.of_piece piece_1206 piece_1206_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10663, List.cons_subset, List.nil_subset, and_true]
  exact piece_1006_mem

theorem linked_10664 : Linked cell_10664 pieces := by
  apply Linked.of_piece piece_1206 piece_1206_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10664, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1005_mem, piece_1006_mem⟩

theorem linked_10665 : Linked cell_10665 pieces := by
  apply Linked.of_piece piece_1207 piece_1207_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10665, List.cons_subset, List.nil_subset, and_true]
  exact piece_1006_mem

theorem linked_10666 : Linked cell_10666 pieces := by
  apply Linked.of_piece piece_1207 piece_1207_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10666, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1005_mem, piece_1006_mem⟩

theorem linked_10667 : Linked cell_10667 pieces := by
  apply Linked.of_piece piece_1207 piece_1207_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10667, List.cons_subset, List.nil_subset, and_true]
  exact piece_1005_mem

theorem linked_10668 : Linked cell_10668 pieces := by
  apply Linked.of_piece piece_1207 piece_1207_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10668, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1004_mem, piece_1005_mem⟩

theorem linked_10669 : Linked cell_10669 pieces := by
  apply Linked.of_piece piece_1208 piece_1208_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10669, List.cons_subset, List.nil_subset, and_true]
  exact piece_1005_mem

theorem linked_10670 : Linked cell_10670 pieces := by
  apply Linked.of_piece piece_1208 piece_1208_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10670, List.cons_subset, List.nil_subset, and_true]
  exact piece_1005_mem

theorem linked_10671 : Linked cell_10671 pieces := by
  apply Linked.of_piece piece_1208 piece_1208_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10671, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1004_mem, piece_1005_mem⟩

theorem linked_10672 : Linked cell_10672 pieces := by
  apply Linked.of_piece piece_1208 piece_1208_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10672, List.cons_subset, List.nil_subset, and_true]
  exact piece_1004_mem

theorem linked_10673 : Linked cell_10673 pieces := by
  apply Linked.of_piece piece_1209 piece_1209_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10673, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1004_mem, piece_1005_mem⟩

theorem linked_10674 : Linked cell_10674 pieces := by
  apply Linked.of_piece piece_1209 piece_1209_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10674, List.cons_subset, List.nil_subset, and_true]
  exact piece_1004_mem

theorem linked_10675 : Linked cell_10675 pieces := by
  apply Linked.of_piece piece_1209 piece_1209_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10675, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1003_mem, piece_1004_mem⟩

theorem linked_10676 : Linked cell_10676 pieces := by
  apply Linked.of_piece piece_1209 piece_1209_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10676, List.cons_subset, List.nil_subset, and_true]
  exact piece_1003_mem

theorem linked_10677 : Linked cell_10677 pieces := by
  apply Linked.of_piece piece_1210 piece_1210_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10677, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1003_mem, piece_1004_mem⟩

theorem linked_10678 : Linked cell_10678 pieces := by
  apply Linked.of_piece piece_1210 piece_1210_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10678, List.cons_subset, List.nil_subset, and_true]
  exact piece_1003_mem

theorem linked_10679 : Linked cell_10679 pieces := by
  apply Linked.of_piece piece_1210 piece_1210_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10679, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1002_mem, piece_1003_mem⟩

theorem linked_10680 : Linked cell_10680 pieces := by
  apply Linked.of_piece piece_1210 piece_1210_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10680, List.cons_subset, List.nil_subset, and_true]
  exact piece_1002_mem

theorem linked_10681 : Linked cell_10681 pieces := by
  apply Linked.of_piece piece_1211 piece_1211_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10681, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1002_mem, piece_1003_mem⟩

theorem linked_10682 : Linked cell_10682 pieces := by
  apply Linked.of_piece piece_1211 piece_1211_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10682, List.cons_subset, List.nil_subset, and_true]
  exact piece_1002_mem

theorem linked_10683 : Linked cell_10683 pieces := by
  apply Linked.of_piece piece_1211 piece_1211_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10683, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1001_mem, piece_1002_mem⟩

theorem linked_10684 : Linked cell_10684 pieces := by
  apply Linked.of_piece piece_1211 piece_1211_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10684, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1000_mem, piece_1001_mem⟩

theorem linked_10685 : Linked cell_10685 pieces := by
  apply Linked.of_piece piece_1212 piece_1212_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10685, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1001_mem, piece_1002_mem⟩

theorem linked_10686 : Linked cell_10686 pieces := by
  apply Linked.of_piece piece_1212 piece_1212_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10686, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1000_mem, piece_1001_mem⟩

theorem linked_10687 : Linked cell_10687 pieces := by
  apply Linked.of_piece piece_1212 piece_1212_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10687, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_999_mem, piece_1000_mem⟩

theorem linked_10688 : Linked cell_10688 pieces := by
  apply Linked.of_piece piece_1212 piece_1212_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10688, List.cons_subset, List.nil_subset, and_true]
  exact piece_999_mem

theorem linked_10689 : Linked cell_10689 pieces := by
  apply Linked.of_piece piece_1213 piece_1213_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10689, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_999_mem, piece_1000_mem⟩

theorem linked_10690 : Linked cell_10690 pieces := by
  apply Linked.of_piece piece_1213 piece_1213_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10690, List.cons_subset, List.nil_subset, and_true]
  exact piece_999_mem

theorem linked_10691 : Linked cell_10691 pieces := by
  apply Linked.of_piece piece_1213 piece_1213_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10691, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_998_mem, piece_999_mem⟩

theorem linked_10692 : Linked cell_10692 pieces := by
  apply Linked.of_piece piece_1213 piece_1213_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10692, List.cons_subset, List.nil_subset, and_true]
  exact piece_998_mem

theorem linked_10693 : Linked cell_10693 pieces := by
  apply Linked.of_piece piece_1214 piece_1214_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10693, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_998_mem, piece_999_mem⟩

theorem linked_10694 : Linked cell_10694 pieces := by
  apply Linked.of_piece piece_1214 piece_1214_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10694, List.cons_subset, List.nil_subset, and_true]
  exact piece_998_mem

theorem linked_10695 : Linked cell_10695 pieces := by
  apply Linked.of_piece piece_1214 piece_1214_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10695, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_997_mem, piece_998_mem⟩

theorem linked_10696 : Linked cell_10696 pieces := by
  apply Linked.of_piece piece_1214 piece_1214_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10696, List.cons_subset, List.nil_subset, and_true]
  exact piece_997_mem

theorem linked_10697 : Linked cell_10697 pieces := by
  apply Linked.of_piece piece_1215 piece_1215_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10697, List.cons_subset, List.nil_subset, and_true]
  exact piece_998_mem

theorem linked_10698 : Linked cell_10698 pieces := by
  apply Linked.of_piece piece_1215 piece_1215_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10698, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_997_mem, piece_998_mem⟩

theorem linked_10699 : Linked cell_10699 pieces := by
  apply Linked.of_piece piece_1215 piece_1215_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10699, List.cons_subset, List.nil_subset, and_true]
  exact piece_997_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0213.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0213.cells,List.forall_mem_cons]
  exact ⟨linked_10650, linked_10651, linked_10652, linked_10653, linked_10654, linked_10655, linked_10656, linked_10657, linked_10658, linked_10659, linked_10660, linked_10661, linked_10662, linked_10663, linked_10664, linked_10665, linked_10666, linked_10667, linked_10668, linked_10669, linked_10670, linked_10671, linked_10672, linked_10673, linked_10674, linked_10675, linked_10676, linked_10677, linked_10678, linked_10679, linked_10680, linked_10681, linked_10682, linked_10683, linked_10684, linked_10685, linked_10686, linked_10687, linked_10688, linked_10689, linked_10690, linked_10691, linked_10692, linked_10693, linked_10694, linked_10695, linked_10696, linked_10697, linked_10698, linked_10699, by simp⟩

theorem covered : covers (25312499999999999 / 50000000000000000 : ℚ) (204949999999999989 / 400000000000000000 : ℚ)
    (SourceCertificates.Chunk0213.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0213
