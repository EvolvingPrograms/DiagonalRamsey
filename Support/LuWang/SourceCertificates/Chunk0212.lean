import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0212
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(100024999999999997 / 200000000000000000 : ℚ), (50024999999999997 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (1928702578457 / 3125000000000 : ℚ)
  w := (3663063628019 / 2500000000000 : ℚ)
  center := (200074999999999991 / 400000000000000000 : ℚ)
  supportValue := (2118421145233063 / 5000000000000000 : ℚ)
  supportSlope := (-20224882560537987 / 10000000000000000 : ℚ)
  oldCenter := (2118421145233063 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1190
  oldLo := (10537500000000001 / 25000000000000000 : ℚ)
  oldHi := (10550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1018]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10600 : Cell := { cellDefaults with
  r := (61857529035433 / 100000000000000 : ℚ)
  w := (14669814073461 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1189
  oldLo := (10587500000000001 / 25000000000000000 : ℚ)
  oldHi := (10600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1022]
}

noncomputable def cell_10601 : Cell := { cellDefaults with
  domain := ⟨(50024999999999997 / 100000000000000000 : ℚ), (100074999999999991 / 200000000000000000 : ℚ)⟩
  r := (61857529035433 / 100000000000000 : ℚ)
  w := (14669814073461 / 10000000000000 : ℚ)
  center := (40024999999999997 / 80000000000000000 : ℚ)
  supportValue := (2117157596403489 / 5000000000000000 : ℚ)
  supportSlope := (-2021097431047523 / 1000000000000000 : ℚ)
  oldCenter := (2117157596403489 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1189
  oldLo := (10575000000000001 / 25000000000000000 : ℚ)
  oldHi := (10600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1021, piece_1022]
}

noncomputable def cell_10602 : Cell := { cellDefaults with
  domain := ⟨(100074999999999991 / 200000000000000000 : ℚ), (25024999999999997 / 50000000000000000 : ℚ)⟩
  r := (61857529035433 / 100000000000000 : ℚ)
  w := (14669814073461 / 10000000000000 : ℚ)
  center := (200174999999999979 / 400000000000000000 : ℚ)
  supportValue := (528973736803711 / 1250000000000000 : ℚ)
  supportSlope := (-315491063794009 / 156250000000000 : ℚ)
  oldCenter := (528973736803711 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1189
  oldLo := (10575000000000001 / 25000000000000000 : ℚ)
  oldHi := (10587500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1021]
}

noncomputable def cell_10603 : Cell := { cellDefaults with
  domain := ⟨(25024999999999997 / 50000000000000000 : ℚ), (100124999999999991 / 200000000000000000 : ℚ)⟩
  r := (1236454046451 / 2000000000000 : ℚ)
  w := (7332705706981 / 5000000000000 : ℚ)
  center := (200224999999999979 / 400000000000000000 : ℚ)
  supportValue := (8469095843939679 / 20000000000000000 : ℚ)
  supportSlope := (-10100156007995973 / 5000000000000000 : ℚ)
  oldCenter := (8469095843939679 / 20000000000000000 : ℚ)
  oldLo := (10575000000000001 / 25000000000000000 : ℚ)
  oldHi := (10600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1021, piece_1022]
}

noncomputable def cell_10604 : Cell := { cellDefaults with
  domain := ⟨(100124999999999991 / 200000000000000000 : ℚ), (50074999999999997 / 100000000000000000 : ℚ)⟩
  r := (1236454046451 / 2000000000000 : ℚ)
  w := (7332705706981 / 5000000000000 : ℚ)
  center := (40054999999999997 / 80000000000000000 : ℚ)
  supportValue := (846404767252673 / 2000000000000000 : ℚ)
  supportSlope := (-10090868871713743 / 5000000000000000 : ℚ)
  oldCenter := (846404767252673 / 2000000000000000 : ℚ)
  oldLo := (10575000000000001 / 25000000000000000 : ℚ)
  oldHi := (10587500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1021]
}

noncomputable def cell_10605 : Cell := { cellDefaults with
  domain := ⟨(50074999999999997 / 100000000000000000 : ℚ), (100174999999999997 / 200000000000000000 : ℚ)⟩
  r := (1236454046451 / 2000000000000 : ℚ)
  w := (7332705706981 / 5000000000000 : ℚ)
  center := (200324999999999991 / 400000000000000000 : ℚ)
  supportValue := (42295022231641793 / 100000000000000000 : ℚ)
  supportSlope := (-126044624868467 / 62500000000000 : ℚ)
  oldCenter := (42295022231641793 / 100000000000000000 : ℚ)
  oldLo := (10562500000000001 / 25000000000000000 : ℚ)
  oldHi := (10587500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1020, piece_1021]
}

noncomputable def cell_10606 : Cell := { cellDefaults with
  domain := ⟨(100174999999999997 / 200000000000000000 : ℚ), (501 / 1000 : ℚ)⟩
  r := (1236454046451 / 2000000000000 : ℚ)
  w := (7332705706981 / 5000000000000 : ℚ)
  center := (200374999999999997 / 400000000000000000 : ℚ)
  supportValue := (8453964609633241 / 20000000000000000 : ℚ)
  supportSlope := (-251855133327231 / 125000000000000 : ℚ)
  oldCenter := (8453964609633241 / 20000000000000000 : ℚ)
  oldLo := (10562500000000001 / 25000000000000000 : ℚ)
  oldHi := (10575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1020]
}

noncomputable def cell_10607 : Cell := { cellDefaults with
  domain := ⟨(501 / 1000 : ℚ), (40089999999999999 / 80000000000000000 : ℚ)⟩
  r := (30893959423339 / 50000000000000 : ℚ)
  w := (2932203409783 / 2000000000000 : ℚ)
  center := (80169999999999999 / 160000000000000000 : ℚ)
  supportValue := (1057433687605809 / 2500000000000000 : ℚ)
  supportSlope := (-4031300843561473 / 2000000000000000 : ℚ)
  oldCenter := (1057433687605809 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1191
  oldLo := (10562500000000001 / 25000000000000000 : ℚ)
  oldHi := (10587500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1020, piece_1021]
}

noncomputable def cell_10608 : Cell := { cellDefaults with
  domain := ⟨(40089999999999999 / 80000000000000000 : ℚ), (20049999999999999 / 40000000000000000 : ℚ)⟩
  r := (30893959423339 / 50000000000000 : ℚ)
  w := (2932203409783 / 2000000000000 : ℚ)
  center := (80189999999999997 / 160000000000000000 : ℚ)
  supportValue := (845443208163421 / 2000000000000000 : ℚ)
  supportSlope := (-4027750345271433 / 2000000000000000 : ℚ)
  oldCenter := (845443208163421 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1191
  oldLo := (10562500000000001 / 25000000000000000 : ℚ)
  oldHi := (10575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1020]
}

noncomputable def cell_10609 : Cell := { cellDefaults with
  domain := ⟨(20049999999999999 / 40000000000000000 : ℚ), (40109999999999997 / 80000000000000000 : ℚ)⟩
  r := (30893959423339 / 50000000000000 : ℚ)
  w := (2932203409783 / 2000000000000 : ℚ)
  center := (16041999999999999 / 32000000000000000 : ℚ)
  supportValue := (5280874873167097 / 12500000000000000 : ℚ)
  supportSlope := (-4024683188870573 / 2000000000000000 : ℚ)
  oldCenter := (5280874873167097 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1191
  oldLo := (10550000000000001 / 25000000000000000 : ℚ)
  oldHi := (10575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1019, piece_1020]
}

noncomputable def cell_10610 : Cell := { cellDefaults with
  domain := ⟨(40109999999999997 / 80000000000000000 : ℚ), (10029999999999999 / 20000000000000000 : ℚ)⟩
  r := (30893959423339 / 50000000000000 : ℚ)
  w := (2932203409783 / 2000000000000 : ℚ)
  center := (80229999999999993 / 160000000000000000 : ℚ)
  supportValue := (10555463350613531 / 25000000000000000 : ℚ)
  supportSlope := (-502638722016219 / 250000000000000 : ℚ)
  oldCenter := (10555463350613531 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1191
  oldLo := (10550000000000001 / 25000000000000000 : ℚ)
  oldHi := (10562500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1019]
}

noncomputable def cell_10611 : Cell := { cellDefaults with
  domain := ⟨(10029999999999999 / 20000000000000000 : ℚ), (40129999999999997 / 80000000000000000 : ℚ)⟩
  r := (12350635878921 / 20000000000000 : ℚ)
  w := (14656631101023 / 10000000000000 : ℚ)
  center := (80249999999999993 / 160000000000000000 : ℚ)
  supportValue := (42249320824631453 / 100000000000000000 : ℚ)
  supportSlope := (-5028201628684611 / 2500000000000000 : ℚ)
  oldCenter := (42249320824631453 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1192
  oldLo := (10550000000000001 / 25000000000000000 : ℚ)
  oldHi := (10575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1019, piece_1020]
}

noncomputable def cell_10612 : Cell := { cellDefaults with
  domain := ⟨(40129999999999997 / 80000000000000000 : ℚ), (20069999999999999 / 40000000000000000 : ℚ)⟩
  r := (12350635878921 / 20000000000000 : ℚ)
  w := (14656631101023 / 10000000000000 : ℚ)
  center := (16053999999999999 / 32000000000000000 : ℚ)
  supportValue := (10556046822555011 / 25000000000000000 : ℚ)
  supportSlope := (-20095921063505653 / 10000000000000000 : ℚ)
  oldCenter := (10556046822555011 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1192
  oldLo := (10550000000000001 / 25000000000000000 : ℚ)
  oldHi := (10562500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1019]
}

noncomputable def cell_10613 : Cell := { cellDefaults with
  domain := ⟨(20069999999999999 / 40000000000000000 : ℚ), (40149999999999999 / 80000000000000000 : ℚ)⟩
  r := (12350635878921 / 20000000000000 : ℚ)
  w := (14656631101023 / 10000000000000 : ℚ)
  center := (80289999999999997 / 160000000000000000 : ℚ)
  supportValue := (42199080452302407 / 100000000000000000 : ℚ)
  supportSlope := (-4015958203110113 / 2000000000000000 : ℚ)
  oldCenter := (42199080452302407 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1192
  oldHi := (10562500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1018, piece_1019]
}

noncomputable def cell_10614 : Cell := { cellDefaults with
  domain := ⟨(40149999999999999 / 80000000000000000 : ℚ), (251 / 500 : ℚ)⟩
  r := (12350635878921 / 20000000000000 : ℚ)
  w := (14656631101023 / 10000000000000 : ℚ)
  center := (80309999999999999 / 160000000000000000 : ℚ)
  supportValue := (2108699413856593 / 5000000000000000 : ℚ)
  supportSlope := (-1253927585470479 / 625000000000000 : ℚ)
  oldCenter := (2108699413856593 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1192
  oldPieces := [piece_1018]
}

noncomputable def cell_10615 : Cell := { cellDefaults with
  domain := ⟨(251 / 500 : ℚ), (2510586592178771 / 5000000000000000 : ℚ)⟩
  center := (5020586592178771 / 10000000000000000 : ℚ)
  supportValue := (2110108383095871 / 5000000000000000 : ℚ)
  supportSlope := (-501737426680367 / 250000000000000 : ℚ)
  oldCenter := (2110108383095871 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1193
  oldHi := (10562500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1018, piece_1019]
}

noncomputable def cell_10616 : Cell := { cellDefaults with
  domain := ⟨(2510586592178771 / 5000000000000000 : ℚ), (1255586592178771 / 2500000000000000 : ℚ)⟩
  center := (5021759776536313 / 10000000000000000 : ℚ)
  supportValue := (1687145130911347 / 4000000000000000 : ℚ)
  supportSlope := (-10027622768686917 / 5000000000000000 : ℚ)
  oldCenter := (1687145130911347 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1193
  oldPieces := [piece_1018]
}

noncomputable def cell_10617 : Cell := { cellDefaults with
  domain := ⟨(1255586592178771 / 2500000000000000 : ℚ), (20089999999999999 / 40000000000000000 : ℚ)⟩
  center := (8035877094972067 / 16000000000000000 : ℚ)
  supportValue := (4216528932810933 / 10000000000000000 : ℚ)
  supportSlope := (-400874448796301 / 200000000000000 : ℚ)
  oldCenter := (4216528932810933 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1194
  oldPieces := [piece_1018]
}

noncomputable def cell_10618 : Cell := { cellDefaults with
  domain := ⟨(20089999999999999 / 40000000000000000 : ℚ), (40189999999999997 / 80000000000000000 : ℚ)⟩
  center := (16073999999999999 / 32000000000000000 : ℚ)
  supportValue := (21075632267939623 / 50000000000000000 : ℚ)
  supportSlope := (-20036265191534013 / 10000000000000000 : ℚ)
  oldCenter := (21075632267939623 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1194
  oldLo := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1017, piece_1018]
}

noncomputable def cell_10619 : Cell := { cellDefaults with
  domain := ⟨(40189999999999997 / 80000000000000000 : ℚ), (10049999999999999 / 20000000000000000 : ℚ)⟩
  center := (80389999999999993 / 160000000000000000 : ℚ)
  supportValue := (4212622621531857 / 10000000000000000 : ℚ)
  supportSlope := (-2002028733597983 / 1000000000000000 : ℚ)
  oldCenter := (4212622621531857 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1194
  oldLo := (10525000000000001 / 25000000000000000 : ℚ)
  oldHi := (10537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1017]
}

noncomputable def cell_10620 : Cell := { cellDefaults with
  domain := ⟨(10049999999999999 / 20000000000000000 : ℚ), (40209999999999997 / 80000000000000000 : ℚ)⟩
  r := (6168382965219 / 10000000000000 : ℚ)
  w := (2929577302017 / 2000000000000 : ℚ)
  center := (80409999999999993 / 160000000000000000 : ℚ)
  supportValue := (168614305473293 / 400000000000000 : ℚ)
  supportSlope := (-250321334674039 / 125000000000000 : ℚ)
  oldCenter := (168614305473293 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1195
  oldLo := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1017, piece_1018]
}

noncomputable def cell_10621 : Cell := { cellDefaults with
  domain := ⟨(40209999999999997 / 80000000000000000 : ℚ), (20109999999999999 / 40000000000000000 : ℚ)⟩
  r := (6168382965219 / 10000000000000 : ℚ)
  w := (2929577302017 / 2000000000000 : ℚ)
  center := (16085999999999999 / 32000000000000000 : ℚ)
  supportValue := (42128551229301403 / 100000000000000000 : ℚ)
  supportSlope := (-5002679941461029 / 2500000000000000 : ℚ)
  oldCenter := (42128551229301403 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1195
  oldLo := (10525000000000001 / 25000000000000000 : ℚ)
  oldHi := (10537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1017]
}

noncomputable def cell_10622 : Cell := { cellDefaults with
  domain := ⟨(20109999999999999 / 40000000000000000 : ℚ), (40229999999999999 / 80000000000000000 : ℚ)⟩
  r := (6168382965219 / 10000000000000 : ℚ)
  w := (2929577302017 / 2000000000000 : ℚ)
  center := (80449999999999997 / 160000000000000000 : ℚ)
  supportValue := (4210355134537081 / 10000000000000000 : ℚ)
  supportSlope := (-4998209505366391 / 2500000000000000 : ℚ)
  oldCenter := (4210355134537081 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1195
  oldLo := (10512500000000001 / 25000000000000000 : ℚ)
  oldHi := (10537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1016, piece_1017]
}

noncomputable def cell_10623 : Cell := { cellDefaults with
  domain := ⟨(40229999999999999 / 80000000000000000 : ℚ), (503 / 1000 : ℚ)⟩
  r := (6168382965219 / 10000000000000 : ℚ)
  w := (2929577302017 / 2000000000000 : ℚ)
  center := (80469999999999999 / 160000000000000000 : ℚ)
  supportValue := (10519641813780961 / 25000000000000000 : ℚ)
  supportSlope := (-4994471735665973 / 2500000000000000 : ℚ)
  oldCenter := (10519641813780961 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1195
  oldLo := (10512500000000001 / 25000000000000000 : ℚ)
  oldHi := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1016]
}

noncomputable def cell_10624 : Cell := { cellDefaults with
  domain := ⟨(503 / 1000 : ℚ), (40249999999999999 / 80000000000000000 : ℚ)⟩
  r := (30824609974949 / 50000000000000 : ℚ)
  w := (915220499761 / 625000000000 : ℚ)
  center := (80489999999999999 / 160000000000000000 : ℚ)
  supportValue := (1052646431331393 / 2500000000000000 : ℚ)
  supportSlope := (-19982304727854447 / 10000000000000000 : ℚ)
  oldCenter := (1052646431331393 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1196
  oldLo := (10512500000000001 / 25000000000000000 : ℚ)
  oldHi := (10537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1016, piece_1017]
}

noncomputable def cell_10625 : Cell := { cellDefaults with
  domain := ⟨(40249999999999999 / 80000000000000000 : ℚ), (20129999999999999 / 40000000000000000 : ℚ)⟩
  r := (30824609974949 / 50000000000000 : ℚ)
  w := (915220499761 / 625000000000 : ℚ)
  center := (80509999999999997 / 160000000000000000 : ℚ)
  supportValue := (4208088631342347 / 10000000000000000 : ℚ)
  supportSlope := (-3993669617715811 / 2000000000000000 : ℚ)
  oldCenter := (4208088631342347 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1196
  oldLo := (10512500000000001 / 25000000000000000 : ℚ)
  oldHi := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1016]
}

noncomputable def cell_10626 : Cell := { cellDefaults with
  domain := ⟨(20129999999999999 / 40000000000000000 : ℚ), (40269999999999997 / 80000000000000000 : ℚ)⟩
  r := (30824609974949 / 50000000000000 : ℚ)
  w := (915220499761 / 625000000000 : ℚ)
  center := (16105999999999999 / 32000000000000000 : ℚ)
  supportValue := (841118787413829 / 2000000000000000 : ℚ)
  supportSlope := (-1994950816152063 / 1000000000000000 : ℚ)
  oldCenter := (841118787413829 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1196
  oldLo := (10500000000000001 / 25000000000000000 : ℚ)
  oldHi := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1015, piece_1016]
}

noncomputable def cell_10627 : Cell := { cellDefaults with
  domain := ⟨(40269999999999997 / 80000000000000000 : ℚ), (10069999999999999 / 20000000000000000 : ℚ)⟩
  r := (30824609974949 / 50000000000000 : ℚ)
  w := (915220499761 / 625000000000 : ℚ)
  center := (80549999999999993 / 160000000000000000 : ℚ)
  supportValue := (840620187787931 / 2000000000000000 : ℚ)
  supportSlope := (-19935638369316993 / 10000000000000000 : ℚ)
  oldCenter := (840620187787931 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1196
  oldLo := (10500000000000001 / 25000000000000000 : ℚ)
  oldHi := (10512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1015]
}

noncomputable def cell_10628 : Cell := { cellDefaults with
  domain := ⟨(10069999999999999 / 20000000000000000 : ℚ), (40289999999999997 / 80000000000000000 : ℚ)⟩
  r := (61614653545467 / 100000000000000 : ℚ)
  w := (14639178338187 / 10000000000000 : ℚ)
  center := (80569999999999993 / 160000000000000000 : ℚ)
  supportValue := (4205824083222481 / 10000000000000000 : ℚ)
  supportSlope := (-19938999964386421 / 10000000000000000 : ℚ)
  oldCenter := (4205824083222481 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1197
  oldLo := (10500000000000001 / 25000000000000000 : ℚ)
  oldHi := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1015, piece_1016]
}

noncomputable def cell_10629 : Cell := { cellDefaults with
  domain := ⟨(40289999999999997 / 80000000000000000 : ℚ), (20149999999999999 / 40000000000000000 : ℚ)⟩
  r := (61614653545467 / 100000000000000 : ℚ)
  w := (14639178338187 / 10000000000000 : ℚ)
  center := (16117999999999999 / 32000000000000000 : ℚ)
  supportValue := (4203332396983371 / 10000000000000000 : ℚ)
  supportSlope := (-1992612944617967 / 1000000000000000 : ℚ)
  oldCenter := (4203332396983371 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1197
  oldLo := (10500000000000001 / 25000000000000000 : ℚ)
  oldHi := (10512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1015]
}

noncomputable def cell_10630 : Cell := { cellDefaults with
  domain := ⟨(20149999999999999 / 40000000000000000 : ℚ), (40309999999999999 / 80000000000000000 : ℚ)⟩
  r := (61614653545467 / 100000000000000 : ℚ)
  w := (14639178338187 / 10000000000000 : ℚ)
  center := (80609999999999997 / 160000000000000000 : ℚ)
  supportValue := (8401685955317173 / 20000000000000000 : ℚ)
  supportSlope := (-1244142249646627 / 625000000000000 : ℚ)
  oldCenter := (8401685955317173 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1197
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014, piece_1015]
}

noncomputable def cell_10631 : Cell := { cellDefaults with
  domain := ⟨(40309999999999999 / 80000000000000000 : ℚ), (63 / 125 : ℚ)⟩
  r := (61614653545467 / 100000000000000 : ℚ)
  w := (14639178338187 / 10000000000000 : ℚ)
  center := (80629999999999999 / 160000000000000000 : ℚ)
  supportValue := (4198355378163643 / 10000000000000000 : ℚ)
  supportSlope := (-397870885396361 / 200000000000000 : ℚ)
  oldCenter := (4198355378163643 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1197
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014]
}

noncomputable def cell_10632 : Cell := { cellDefaults with
  domain := ⟨(63 / 125 : ℚ), (40329999999999999 / 80000000000000000 : ℚ)⟩
  r := (61580130116243 / 100000000000000 : ℚ)
  w := (1463483746347 / 1000000000000 : ℚ)
  center := (80649999999999999 / 160000000000000000 : ℚ)
  supportValue := (8402145443878839 / 20000000000000000 : ℚ)
  supportSlope := (-4973948241251911 / 2500000000000000 : ℚ)
  oldCenter := (8402145443878839 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1198
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014, piece_1015]
}

noncomputable def cell_10633 : Cell := { cellDefaults with
  domain := ⟨(40329999999999999 / 80000000000000000 : ℚ), (20169999999999999 / 40000000000000000 : ℚ)⟩
  r := (61580130116243 / 100000000000000 : ℚ)
  w := (1463483746347 / 1000000000000 : ℚ)
  center := (80669999999999997 / 160000000000000000 : ℚ)
  supportValue := (10496466078011589 / 25000000000000000 : ℚ)
  supportSlope := (-19884065061479317 / 10000000000000000 : ℚ)
  oldCenter := (10496466078011589 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1198
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014]
}

noncomputable def cell_10634 : Cell := { cellDefaults with
  domain := ⟨(20169999999999999 / 40000000000000000 : ℚ), (40349999999999997 / 80000000000000000 : ℚ)⟩
  r := (61580130116243 / 100000000000000 : ℚ)
  w := (1463483746347 / 1000000000000 : ℚ)
  center := (16137999999999999 / 32000000000000000 : ℚ)
  supportValue := (2098051133769469 / 5000000000000000 : ℚ)
  supportSlope := (-19863141191882359 / 10000000000000000 : ℚ)
  oldCenter := (2098051133769469 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1198
  oldLo := (2096368715083799 / 5000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1013, piece_1014]
}

noncomputable def cell_10635 : Cell := { cellDefaults with
  domain := ⟨(40349999999999997 / 80000000000000000 : ℚ), (10089999999999999 / 20000000000000000 : ℚ)⟩
  r := (61580130116243 / 100000000000000 : ℚ)
  w := (1463483746347 / 1000000000000 : ℚ)
  center := (80709999999999993 / 160000000000000000 : ℚ)
  supportValue := (20968100272988177 / 50000000000000000 : ℚ)
  supportSlope := (-794064102759941 / 400000000000000 : ℚ)
  oldCenter := (20968100272988177 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1198
  oldLo := (10475000000000001 / 25000000000000000 : ℚ)
  oldHi := (10487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1012, piece_1013]
}

noncomputable def cell_10636 : Cell := { cellDefaults with
  domain := ⟨(10089999999999999 / 20000000000000000 : ℚ), (40369999999999997 / 80000000000000000 : ℚ)⟩
  r := (30772824992821 / 50000000000000 : ℚ)
  w := (14630505089313 / 10000000000000 : ℚ)
  center := (80729999999999993 / 160000000000000000 : ℚ)
  supportValue := (20981658187541813 / 50000000000000000 : ℚ)
  supportSlope := (-496326380474427 / 250000000000000 : ℚ)
  oldCenter := (20981658187541813 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1199
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014]
}

noncomputable def cell_10637 : Cell := { cellDefaults with
  domain := ⟨(40369999999999997 / 80000000000000000 : ℚ), (20189999999999999 / 40000000000000000 : ℚ)⟩
  r := (30772824992821 / 50000000000000 : ℚ)
  w := (14630505089313 / 10000000000000 : ℚ)
  center := (16149999999999999 / 32000000000000000 : ℚ)
  supportValue := (1677540292069599 / 4000000000000000 : ℚ)
  supportSlope := (-793671275353623 / 400000000000000 : ℚ)
  oldCenter := (1677540292069599 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1199
  oldLo := (10475000000000001 / 25000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1012, piece_1013, piece_1014]
}

noncomputable def cell_10638 : Cell := { cellDefaults with
  domain := ⟨(20189999999999999 / 40000000000000000 : ℚ), (40389999999999999 / 80000000000000000 : ℚ)⟩
  r := (30772824992821 / 50000000000000 : ℚ)
  w := (14630505089313 / 10000000000000 : ℚ)
  center := (80769999999999997 / 160000000000000000 : ℚ)
  supportValue := (2095685901637343 / 5000000000000000 : ℚ)
  supportSlope := (-9910326908405661 / 5000000000000000 : ℚ)
  oldCenter := (2095685901637343 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1199
  oldLo := (10475000000000001 / 25000000000000000 : ℚ)
  oldHi := (2096368715083799 / 5000000000000000 : ℚ)
  oldPieces := [piece_1012]
}

noncomputable def cell_10639 : Cell := { cellDefaults with
  domain := ⟨(40389999999999999 / 80000000000000000 : ℚ), (101 / 200 : ℚ)⟩
  r := (30772824992821 / 50000000000000 : ℚ)
  w := (14630505089313 / 10000000000000 : ℚ)
  center := (80789999999999999 / 160000000000000000 : ℚ)
  supportValue := (4188894965210739 / 10000000000000000 : ℚ)
  supportSlope := (-4952314487744529 / 2500000000000000 : ℚ)
  oldCenter := (4188894965210739 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1199
  oldLo := (10462500000000001 / 25000000000000000 : ℚ)
  oldHi := (2096368715083799 / 5000000000000000 : ℚ)
  oldPieces := [piece_1011, piece_1012]
}

noncomputable def cell_10640 : Cell := { cellDefaults with
  domain := ⟨(101 / 200 : ℚ), (40409999999999999 / 80000000000000000 : ℚ)⟩
  r := (12302242389467 / 20000000000000 : ℚ)
  w := (14626181893133 / 10000000000000 : ℚ)
  center := (80809999999999999 / 160000000000000000 : ℚ)
  supportValue := (8383201464670611 / 20000000000000000 : ℚ)
  supportSlope := (-9905604114660451 / 5000000000000000 : ℚ)
  oldCenter := (8383201464670611 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1200
  oldLo := (10475000000000001 / 25000000000000000 : ℚ)
  oldHi := (10487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1012, piece_1013]
}

noncomputable def cell_10641 : Cell := { cellDefaults with
  domain := ⟨(40409999999999999 / 80000000000000000 : ℚ), (20209999999999999 / 40000000000000000 : ℚ)⟩
  r := (12302242389467 / 20000000000000 : ℚ)
  w := (14626181893133 / 10000000000000 : ℚ)
  center := (80829999999999997 / 160000000000000000 : ℚ)
  supportValue := (4189125196801031 / 10000000000000000 : ℚ)
  supportSlope := (-9899425333080737 / 5000000000000000 : ℚ)
  oldCenter := (4189125196801031 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1200
  oldLo := (10462500000000001 / 25000000000000000 : ℚ)
  oldHi := (2096368715083799 / 5000000000000000 : ℚ)
  oldPieces := [piece_1011, piece_1012]
}

noncomputable def cell_10642 : Cell := { cellDefaults with
  domain := ⟨(20209999999999999 / 40000000000000000 : ℚ), (40429999999999997 / 80000000000000000 : ℚ)⟩
  r := (12302242389467 / 20000000000000 : ℚ)
  w := (14626181893133 / 10000000000000 : ℚ)
  center := (16169999999999999 / 32000000000000000 : ℚ)
  supportValue := (837330297495559 / 2000000000000000 : ℚ)
  supportSlope := (-19778932625327017 / 10000000000000000 : ℚ)
  oldCenter := (837330297495559 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1200
  oldLo := (10462500000000001 / 25000000000000000 : ℚ)
  oldHi := (10475000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1011]
}

noncomputable def cell_10643 : Cell := { cellDefaults with
  domain := ⟨(40429999999999997 / 80000000000000000 : ℚ), (10109999999999999 / 20000000000000000 : ℚ)⟩
  r := (12302242389467 / 20000000000000 : ℚ)
  w := (14626181893133 / 10000000000000 : ℚ)
  center := (80869999999999993 / 160000000000000000 : ℚ)
  supportValue := (20920900060859837 / 50000000000000000 : ℚ)
  supportSlope := (-19766399581861749 / 10000000000000000 : ℚ)
  oldCenter := (20920900060859837 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1200
  oldLo := (10450000000000001 / 25000000000000000 : ℚ)
  oldHi := (10475000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1010, piece_1011]
}

noncomputable def cell_10644 : Cell := { cellDefaults with
  domain := ⟨(10109999999999999 / 20000000000000000 : ℚ), (101124999999999993 / 200000000000000000 : ℚ)⟩
  r := (15369204381849 / 25000000000000 : ℚ)
  w := (14621867910849 / 10000000000000 : ℚ)
  center := (202224999999999983 / 400000000000000000 : ℚ)
  supportValue := (20934398877092003 / 50000000000000000 : ℚ)
  supportSlope := (-19769515120644359 / 10000000000000000 : ℚ)
  oldCenter := (20934398877092003 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1201
  oldLo := (10462500000000001 / 25000000000000000 : ℚ)
  oldHi := (10475000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1011]
}

noncomputable def cell_10645 : Cell := { cellDefaults with
  domain := ⟨(101124999999999993 / 200000000000000000 : ℚ), (25287499999999999 / 50000000000000000 : ℚ)⟩
  r := (15369204381849 / 25000000000000 : ℚ)
  w := (14621867910849 / 10000000000000 : ℚ)
  center := (202274999999999989 / 400000000000000000 : ℚ)
  supportValue := (4184409599648421 / 10000000000000000 : ℚ)
  supportSlope := (-19756016386966853 / 10000000000000000 : ℚ)
  oldCenter := (4184409599648421 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1201
  oldLo := (10450000000000001 / 25000000000000000 : ℚ)
  oldHi := (10475000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1010, piece_1011]
}

noncomputable def cell_10646 : Cell := { cellDefaults with
  domain := ⟨(25287499999999999 / 50000000000000000 : ℚ), (101174999999999999 / 200000000000000000 : ℚ)⟩
  r := (15369204381849 / 25000000000000 : ℚ)
  w := (14621867910849 / 10000000000000 : ℚ)
  center := (40464999999999999 / 80000000000000000 : ℚ)
  supportValue := (1306856590289307 / 3125000000000000 : ℚ)
  supportSlope := (-9868679757313241 / 5000000000000000 : ℚ)
  oldCenter := (1306856590289307 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1201
  oldLo := (10450000000000001 / 25000000000000000 : ℚ)
  oldHi := (10462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1010]
}

noncomputable def cell_10647 : Cell := { cellDefaults with
  domain := ⟨(101174999999999999 / 200000000000000000 : ℚ), (50600000000000001 / 100000000000000000 : ℚ)⟩
  r := (15369204381849 / 25000000000000 : ℚ)
  w := (14621867910849 / 10000000000000 : ℚ)
  center := (202375000000000001 / 400000000000000000 : ℚ)
  supportValue := (8358949931122599 / 20000000000000000 : ℚ)
  supportSlope := (-1972362748529063 / 1000000000000000 : ℚ)
  oldCenter := (8358949931122599 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1201
  oldLo := (10437500000000001 / 25000000000000000 : ℚ)
  oldHi := (10462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1009, piece_1010]
}

noncomputable def cell_10648 : Cell := { cellDefaults with
  domain := ⟨(50600000000000001 / 100000000000000000 : ℚ), (101224999999999999 / 200000000000000000 : ℚ)⟩
  r := (61442465409501 / 100000000000000 : ℚ)
  w := (2923512439453 / 2000000000000 : ℚ)
  center := (202425000000000001 / 400000000000000000 : ℚ)
  supportValue := (2091084569156397 / 5000000000000000 : ℚ)
  supportSlope := (-308249580328083 / 156250000000000 : ℚ)
  oldCenter := (2091084569156397 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1202
  oldLo := (10450000000000001 / 25000000000000000 : ℚ)
  oldHi := (10462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1010]
}

noncomputable def cell_10649 : Cell := { cellDefaults with
  domain := ⟨(101224999999999999 / 200000000000000000 : ℚ), (25312499999999999 / 50000000000000000 : ℚ)⟩
  r := (61442465409501 / 100000000000000 : ℚ)
  w := (2923512439453 / 2000000000000 : ℚ)
  center := (40494999999999999 / 80000000000000000 : ℚ)
  supportValue := (10449260778341521 / 25000000000000000 : ℚ)
  supportSlope := (-4928317243145277 / 2500000000000000 : ℚ)
  oldCenter := (10449260778341521 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1202
  oldLo := (10437500000000001 / 25000000000000000 : ℚ)
  oldHi := (10462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1009, piece_1010]
}

theorem check_10600 : cell_10600.check = true := by
  decide +kernel

theorem check_10601 : cell_10601.check = true := by
  decide +kernel

theorem check_10602 : cell_10602.check = true := by
  decide +kernel

theorem check_10603 : cell_10603.check = true := by
  decide +kernel

theorem check_10604 : cell_10604.check = true := by
  decide +kernel

theorem check_10605 : cell_10605.check = true := by
  decide +kernel

theorem check_10606 : cell_10606.check = true := by
  decide +kernel

theorem check_10607 : cell_10607.check = true := by
  decide +kernel

theorem check_10608 : cell_10608.check = true := by
  decide +kernel

theorem check_10609 : cell_10609.check = true := by
  decide +kernel

theorem check_10610 : cell_10610.check = true := by
  decide +kernel

theorem check_10611 : cell_10611.check = true := by
  decide +kernel

theorem check_10612 : cell_10612.check = true := by
  decide +kernel

theorem check_10613 : cell_10613.check = true := by
  decide +kernel

theorem check_10614 : cell_10614.check = true := by
  decide +kernel

theorem check_10615 : cell_10615.check = true := by
  decide +kernel

theorem check_10616 : cell_10616.check = true := by
  decide +kernel

theorem check_10617 : cell_10617.check = true := by
  decide +kernel

theorem check_10618 : cell_10618.check = true := by
  decide +kernel

theorem check_10619 : cell_10619.check = true := by
  decide +kernel

theorem check_10620 : cell_10620.check = true := by
  decide +kernel

theorem check_10621 : cell_10621.check = true := by
  decide +kernel

theorem check_10622 : cell_10622.check = true := by
  decide +kernel

theorem check_10623 : cell_10623.check = true := by
  decide +kernel

theorem check_10624 : cell_10624.check = true := by
  decide +kernel

theorem check_10625 : cell_10625.check = true := by
  decide +kernel

theorem check_10626 : cell_10626.check = true := by
  decide +kernel

theorem check_10627 : cell_10627.check = true := by
  decide +kernel

theorem check_10628 : cell_10628.check = true := by
  decide +kernel

theorem check_10629 : cell_10629.check = true := by
  decide +kernel

theorem check_10630 : cell_10630.check = true := by
  decide +kernel

theorem check_10631 : cell_10631.check = true := by
  decide +kernel

theorem check_10632 : cell_10632.check = true := by
  decide +kernel

theorem check_10633 : cell_10633.check = true := by
  decide +kernel

theorem check_10634 : cell_10634.check = true := by
  decide +kernel

theorem check_10635 : cell_10635.check = true := by
  decide +kernel

theorem check_10636 : cell_10636.check = true := by
  decide +kernel

theorem check_10637 : cell_10637.check = true := by
  decide +kernel

theorem check_10638 : cell_10638.check = true := by
  decide +kernel

theorem check_10639 : cell_10639.check = true := by
  decide +kernel

theorem check_10640 : cell_10640.check = true := by
  decide +kernel

theorem check_10641 : cell_10641.check = true := by
  decide +kernel

theorem check_10642 : cell_10642.check = true := by
  decide +kernel

theorem check_10643 : cell_10643.check = true := by
  decide +kernel

theorem check_10644 : cell_10644.check = true := by
  decide +kernel

theorem check_10645 : cell_10645.check = true := by
  decide +kernel

theorem check_10646 : cell_10646.check = true := by
  decide +kernel

theorem check_10647 : cell_10647.check = true := by
  decide +kernel

theorem check_10648 : cell_10648.check = true := by
  decide +kernel

theorem check_10649 : cell_10649.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_10600, cell_10601, cell_10602, cell_10603, cell_10604, cell_10605, cell_10606, cell_10607, cell_10608, cell_10609, cell_10610, cell_10611, cell_10612, cell_10613, cell_10614, cell_10615, cell_10616, cell_10617, cell_10618, cell_10619, cell_10620, cell_10621, cell_10622, cell_10623, cell_10624, cell_10625, cell_10626, cell_10627, cell_10628, cell_10629, cell_10630, cell_10631, cell_10632, cell_10633, cell_10634, cell_10635, cell_10636, cell_10637, cell_10638, cell_10639, cell_10640, cell_10641, cell_10642, cell_10643, cell_10644, cell_10645, cell_10646, cell_10647, cell_10648, cell_10649]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10600, check_10601, check_10602, check_10603, check_10604, check_10605, check_10606, check_10607, check_10608, check_10609, check_10610, check_10611, check_10612, check_10613, check_10614, check_10615, check_10616, check_10617, check_10618, check_10619, check_10620, check_10621, check_10622, check_10623, check_10624, check_10625, check_10626, check_10627, check_10628, check_10629, check_10630, check_10631, check_10632, check_10633, check_10634, check_10635, check_10636, check_10637, check_10638, check_10639, check_10640, check_10641, check_10642, check_10643, check_10644, check_10645, check_10646, check_10647, check_10648, check_10649, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0212

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0212
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0212
open AnalyticBounds.ExpressionCertificate

theorem linked_10600 : Linked cell_10600 pieces := by
  apply Linked.of_piece piece_1189 piece_1189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10600, List.cons_subset, List.nil_subset, and_true]
  exact piece_1022_mem

theorem linked_10601 : Linked cell_10601 pieces := by
  apply Linked.of_piece piece_1189 piece_1189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10601, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1021_mem, piece_1022_mem⟩

theorem linked_10602 : Linked cell_10602 pieces := by
  apply Linked.of_piece piece_1189 piece_1189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10602, List.cons_subset, List.nil_subset, and_true]
  exact piece_1021_mem

theorem linked_10603 : Linked cell_10603 pieces := by
  apply Linked.of_piece piece_1190 piece_1190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10603, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1021_mem, piece_1022_mem⟩

theorem linked_10604 : Linked cell_10604 pieces := by
  apply Linked.of_piece piece_1190 piece_1190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10604, List.cons_subset, List.nil_subset, and_true]
  exact piece_1021_mem

theorem linked_10605 : Linked cell_10605 pieces := by
  apply Linked.of_piece piece_1190 piece_1190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10605, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1020_mem, piece_1021_mem⟩

theorem linked_10606 : Linked cell_10606 pieces := by
  apply Linked.of_piece piece_1190 piece_1190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10606, List.cons_subset, List.nil_subset, and_true]
  exact piece_1020_mem

theorem linked_10607 : Linked cell_10607 pieces := by
  apply Linked.of_piece piece_1191 piece_1191_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10607, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1020_mem, piece_1021_mem⟩

theorem linked_10608 : Linked cell_10608 pieces := by
  apply Linked.of_piece piece_1191 piece_1191_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10608, List.cons_subset, List.nil_subset, and_true]
  exact piece_1020_mem

theorem linked_10609 : Linked cell_10609 pieces := by
  apply Linked.of_piece piece_1191 piece_1191_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10609, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1019_mem, piece_1020_mem⟩

theorem linked_10610 : Linked cell_10610 pieces := by
  apply Linked.of_piece piece_1191 piece_1191_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10610, List.cons_subset, List.nil_subset, and_true]
  exact piece_1019_mem

theorem linked_10611 : Linked cell_10611 pieces := by
  apply Linked.of_piece piece_1192 piece_1192_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10611, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1019_mem, piece_1020_mem⟩

theorem linked_10612 : Linked cell_10612 pieces := by
  apply Linked.of_piece piece_1192 piece_1192_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10612, List.cons_subset, List.nil_subset, and_true]
  exact piece_1019_mem

theorem linked_10613 : Linked cell_10613 pieces := by
  apply Linked.of_piece piece_1192 piece_1192_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10613, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1018_mem, piece_1019_mem⟩

theorem linked_10614 : Linked cell_10614 pieces := by
  apply Linked.of_piece piece_1192 piece_1192_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10614, List.cons_subset, List.nil_subset, and_true]
  exact piece_1018_mem

theorem linked_10615 : Linked cell_10615 pieces := by
  apply Linked.of_piece piece_1193 piece_1193_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10615, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1018_mem, piece_1019_mem⟩

theorem linked_10616 : Linked cell_10616 pieces := by
  apply Linked.of_piece piece_1193 piece_1193_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10616, List.cons_subset, List.nil_subset, and_true]
  exact piece_1018_mem

theorem linked_10617 : Linked cell_10617 pieces := by
  apply Linked.of_piece piece_1194 piece_1194_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10617, List.cons_subset, List.nil_subset, and_true]
  exact piece_1018_mem

theorem linked_10618 : Linked cell_10618 pieces := by
  apply Linked.of_piece piece_1194 piece_1194_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10618, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1017_mem, piece_1018_mem⟩

theorem linked_10619 : Linked cell_10619 pieces := by
  apply Linked.of_piece piece_1194 piece_1194_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10619, List.cons_subset, List.nil_subset, and_true]
  exact piece_1017_mem

theorem linked_10620 : Linked cell_10620 pieces := by
  apply Linked.of_piece piece_1195 piece_1195_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10620, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1017_mem, piece_1018_mem⟩

theorem linked_10621 : Linked cell_10621 pieces := by
  apply Linked.of_piece piece_1195 piece_1195_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10621, List.cons_subset, List.nil_subset, and_true]
  exact piece_1017_mem

theorem linked_10622 : Linked cell_10622 pieces := by
  apply Linked.of_piece piece_1195 piece_1195_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10622, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1016_mem, piece_1017_mem⟩

theorem linked_10623 : Linked cell_10623 pieces := by
  apply Linked.of_piece piece_1195 piece_1195_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10623, List.cons_subset, List.nil_subset, and_true]
  exact piece_1016_mem

theorem linked_10624 : Linked cell_10624 pieces := by
  apply Linked.of_piece piece_1196 piece_1196_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10624, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1016_mem, piece_1017_mem⟩

theorem linked_10625 : Linked cell_10625 pieces := by
  apply Linked.of_piece piece_1196 piece_1196_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10625, List.cons_subset, List.nil_subset, and_true]
  exact piece_1016_mem

theorem linked_10626 : Linked cell_10626 pieces := by
  apply Linked.of_piece piece_1196 piece_1196_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10626, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1015_mem, piece_1016_mem⟩

theorem linked_10627 : Linked cell_10627 pieces := by
  apply Linked.of_piece piece_1196 piece_1196_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10627, List.cons_subset, List.nil_subset, and_true]
  exact piece_1015_mem

theorem linked_10628 : Linked cell_10628 pieces := by
  apply Linked.of_piece piece_1197 piece_1197_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10628, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1015_mem, piece_1016_mem⟩

theorem linked_10629 : Linked cell_10629 pieces := by
  apply Linked.of_piece piece_1197 piece_1197_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10629, List.cons_subset, List.nil_subset, and_true]
  exact piece_1015_mem

theorem linked_10630 : Linked cell_10630 pieces := by
  apply Linked.of_piece piece_1197 piece_1197_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10630, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1014_mem, piece_1015_mem⟩

theorem linked_10631 : Linked cell_10631 pieces := by
  apply Linked.of_piece piece_1197 piece_1197_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10631, List.cons_subset, List.nil_subset, and_true]
  exact piece_1014_mem

theorem linked_10632 : Linked cell_10632 pieces := by
  apply Linked.of_piece piece_1198 piece_1198_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10632, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1014_mem, piece_1015_mem⟩

theorem linked_10633 : Linked cell_10633 pieces := by
  apply Linked.of_piece piece_1198 piece_1198_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10633, List.cons_subset, List.nil_subset, and_true]
  exact piece_1014_mem

theorem linked_10634 : Linked cell_10634 pieces := by
  apply Linked.of_piece piece_1198 piece_1198_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10634, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1013_mem, piece_1014_mem⟩

theorem linked_10635 : Linked cell_10635 pieces := by
  apply Linked.of_piece piece_1198 piece_1198_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10635, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1012_mem, piece_1013_mem⟩

theorem linked_10636 : Linked cell_10636 pieces := by
  apply Linked.of_piece piece_1199 piece_1199_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10636, List.cons_subset, List.nil_subset, and_true]
  exact piece_1014_mem

theorem linked_10637 : Linked cell_10637 pieces := by
  apply Linked.of_piece piece_1199 piece_1199_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10637, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1012_mem, ⟨piece_1013_mem, piece_1014_mem⟩⟩

theorem linked_10638 : Linked cell_10638 pieces := by
  apply Linked.of_piece piece_1199 piece_1199_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10638, List.cons_subset, List.nil_subset, and_true]
  exact piece_1012_mem

theorem linked_10639 : Linked cell_10639 pieces := by
  apply Linked.of_piece piece_1199 piece_1199_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10639, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1011_mem, piece_1012_mem⟩

theorem linked_10640 : Linked cell_10640 pieces := by
  apply Linked.of_piece piece_1200 piece_1200_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10640, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1012_mem, piece_1013_mem⟩

theorem linked_10641 : Linked cell_10641 pieces := by
  apply Linked.of_piece piece_1200 piece_1200_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10641, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1011_mem, piece_1012_mem⟩

theorem linked_10642 : Linked cell_10642 pieces := by
  apply Linked.of_piece piece_1200 piece_1200_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10642, List.cons_subset, List.nil_subset, and_true]
  exact piece_1011_mem

theorem linked_10643 : Linked cell_10643 pieces := by
  apply Linked.of_piece piece_1200 piece_1200_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10643, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1010_mem, piece_1011_mem⟩

theorem linked_10644 : Linked cell_10644 pieces := by
  apply Linked.of_piece piece_1201 piece_1201_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10644, List.cons_subset, List.nil_subset, and_true]
  exact piece_1011_mem

theorem linked_10645 : Linked cell_10645 pieces := by
  apply Linked.of_piece piece_1201 piece_1201_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10645, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1010_mem, piece_1011_mem⟩

theorem linked_10646 : Linked cell_10646 pieces := by
  apply Linked.of_piece piece_1201 piece_1201_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10646, List.cons_subset, List.nil_subset, and_true]
  exact piece_1010_mem

theorem linked_10647 : Linked cell_10647 pieces := by
  apply Linked.of_piece piece_1201 piece_1201_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10647, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1009_mem, piece_1010_mem⟩

theorem linked_10648 : Linked cell_10648 pieces := by
  apply Linked.of_piece piece_1202 piece_1202_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10648, List.cons_subset, List.nil_subset, and_true]
  exact piece_1010_mem

theorem linked_10649 : Linked cell_10649 pieces := by
  apply Linked.of_piece piece_1202 piece_1202_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10649, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1009_mem, piece_1010_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0212.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0212.cells,List.forall_mem_cons]
  exact ⟨linked_10600, linked_10601, linked_10602, linked_10603, linked_10604, linked_10605, linked_10606, linked_10607, linked_10608, linked_10609, linked_10610, linked_10611, linked_10612, linked_10613, linked_10614, linked_10615, linked_10616, linked_10617, linked_10618, linked_10619, linked_10620, linked_10621, linked_10622, linked_10623, linked_10624, linked_10625, linked_10626, linked_10627, linked_10628, linked_10629, linked_10630, linked_10631, linked_10632, linked_10633, linked_10634, linked_10635, linked_10636, linked_10637, linked_10638, linked_10639, linked_10640, linked_10641, linked_10642, linked_10643, linked_10644, linked_10645, linked_10646, linked_10647, linked_10648, linked_10649, by simp⟩

theorem covered : covers (100024999999999997 / 200000000000000000 : ℚ) (25312499999999999 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0212.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0212
