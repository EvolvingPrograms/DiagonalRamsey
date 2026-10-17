import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0216
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(104925000000000013 / 200000000000000000 : ℚ), (10495000000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (60168042892837 / 100000000000000 : ℚ)
  w := (3615077611357 / 2500000000000 : ℚ)
  center := (209875000000000023 / 400000000000000000 : ℚ)
  supportValue := (40124137924693937 / 100000000000000000 : ℚ)
  supportSlope := (-3647564770327787 / 2000000000000000 : ℚ)
  oldCenter := (40124137924693937 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1244
  oldLo := (20000000000000001 / 50000000000000000 : ℚ)
  oldHi := (20025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_971]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10800 : Cell := { cellDefaults with
  r := (15050206146189 / 25000000000000 : ℚ)
  w := (3616073474141 / 2500000000000 : ℚ)
  newCoefficients := coefficients_1243
  oldLo := (20050000000000001 / 50000000000000000 : ℚ)
  oldHi := (20075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_973]
}

noncomputable def cell_10801 : Cell := { cellDefaults with
  domain := ⟨(10495000000000001 / 20000000000000000 : ℚ), (104975000000000007 / 200000000000000000 : ℚ)⟩
  r := (15050206146189 / 25000000000000 : ℚ)
  w := (3616073474141 / 2500000000000 : ℚ)
  center := (209925000000000017 / 400000000000000000 : ℚ)
  supportValue := (802027061336347 / 2000000000000000 : ℚ)
  supportSlope := (-9111623536247597 / 5000000000000000 : ℚ)
  oldCenter := (802027061336347 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1243
  oldLo := (20025000000000001 / 50000000000000000 : ℚ)
  oldHi := (20075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_972, piece_973]
}

noncomputable def cell_10802 : Cell := { cellDefaults with
  domain := ⟨(104975000000000007 / 200000000000000000 : ℚ), (26250000000000001 / 50000000000000000 : ℚ)⟩
  r := (15050206146189 / 25000000000000 : ℚ)
  w := (3616073474141 / 2500000000000 : ℚ)
  center := (209975000000000011 / 400000000000000000 : ℚ)
  supportValue := (2003928945627521 / 5000000000000000 : ℚ)
  supportSlope := (-18210028834035847 / 10000000000000000 : ℚ)
  oldCenter := (2003928945627521 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1243
  oldLo := (20025000000000001 / 50000000000000000 : ℚ)
  oldHi := (20050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_972]
}

noncomputable def cell_10803 : Cell := { cellDefaults with
  domain := ⟨(26250000000000001 / 50000000000000000 : ℚ), (105025000000000007 / 200000000000000000 : ℚ)⟩
  center := (210025000000000011 / 400000000000000000 : ℚ)
  supportValue := (200517271858059 / 500000000000000 : ℚ)
  supportSlope := (-9106886676043553 / 5000000000000000 : ℚ)
  oldCenter := (200517271858059 / 500000000000000 : ℚ)
  oldLo := (20025000000000001 / 50000000000000000 : ℚ)
  oldHi := (20075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_972, piece_973]
}

noncomputable def cell_10804 : Cell := { cellDefaults with
  domain := ⟨(105025000000000007 / 200000000000000000 : ℚ), (10505000000000001 / 20000000000000000 : ℚ)⟩
  center := (210075000000000017 / 400000000000000000 : ℚ)
  supportValue := (801613840900663 / 2000000000000000 : ℚ)
  supportSlope := (-1820168895979139 / 1000000000000000 : ℚ)
  oldCenter := (801613840900663 / 2000000000000000 : ℚ)
  oldLo := (20025000000000001 / 50000000000000000 : ℚ)
  oldHi := (20050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_972]
}

noncomputable def cell_10805 : Cell := { cellDefaults with
  domain := ⟨(10505000000000001 / 20000000000000000 : ℚ), (105075000000000013 / 200000000000000000 : ℚ)⟩
  center := (210125000000000023 / 400000000000000000 : ℚ)
  supportValue := (801159046876819 / 2000000000000000 : ℚ)
  supportSlope := (-363672941268823 / 200000000000000 : ℚ)
  oldCenter := (801159046876819 / 2000000000000000 : ℚ)
  oldHi := (20050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_971, piece_972]
}

noncomputable def cell_10806 : Cell := { cellDefaults with
  domain := ⟨(105075000000000013 / 200000000000000000 : ℚ), (6568750000000001 / 12500000000000000 : ℚ)⟩
  center := (210175000000000029 / 400000000000000000 : ℚ)
  supportValue := (40035227628167963 / 100000000000000000 : ℚ)
  supportSlope := (-9087005785385369 / 5000000000000000 : ℚ)
  oldCenter := (40035227628167963 / 100000000000000000 : ℚ)
  oldPieces := [piece_971]
}

noncomputable def cell_10807 : Cell := { cellDefaults with
  domain := ⟨(6568750000000001 / 12500000000000000 : ℚ), (105125000000000013 / 200000000000000000 : ℚ)⟩
  r := (60135301609779 / 100000000000000 : ℚ)
  w := (14456335762519 / 10000000000000 : ℚ)
  center := (210225000000000029 / 400000000000000000 : ℚ)
  supportValue := (4006004681856201 / 10000000000000000 : ℚ)
  supportSlope := (-18174191626896221 / 10000000000000000 : ℚ)
  oldCenter := (4006004681856201 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1245
  oldHi := (20050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_971, piece_972]
}

noncomputable def cell_10808 : Cell := { cellDefaults with
  domain := ⟨(105125000000000013 / 200000000000000000 : ℚ), (10515000000000001 / 20000000000000000 : ℚ)⟩
  r := (60135301609779 / 100000000000000 : ℚ)
  w := (14456335762519 / 10000000000000 : ℚ)
  center := (210275000000000023 / 400000000000000000 : ℚ)
  supportValue := (400373339077961 / 1000000000000000 : ℚ)
  supportSlope := (-141919498079807 / 78125000000000 : ℚ)
  oldCenter := (400373339077961 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1245
  oldPieces := [piece_971]
}

noncomputable def cell_10809 : Cell := { cellDefaults with
  domain := ⟨(10515000000000001 / 20000000000000000 : ℚ), (105175000000000007 / 200000000000000000 : ℚ)⟩
  r := (60135301609779 / 100000000000000 : ℚ)
  w := (14456335762519 / 10000000000000 : ℚ)
  center := (210325000000000017 / 400000000000000000 : ℚ)
  supportValue := (4001463918590383 / 10000000000000000 : ℚ)
  supportSlope := (-1134114952133361 / 625000000000000 : ℚ)
  oldCenter := (4001463918590383 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1245
  oldPieces := [piece_971]
}

noncomputable def cell_10810 : Cell := { cellDefaults with
  domain := ⟨(105175000000000007 / 200000000000000000 : ℚ), (26300000000000001 / 50000000000000000 : ℚ)⟩
  r := (60135301609779 / 100000000000000 : ℚ)
  w := (14456335762519 / 10000000000000 : ℚ)
  center := (210375000000000011 / 400000000000000000 : ℚ)
  supportValue := (39991963851057577 / 100000000000000000 : ℚ)
  supportSlope := (-18136391909619973 / 10000000000000000 : ℚ)
  oldCenter := (39991963851057577 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1245
  oldLo := (19975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_970, piece_971]
}

noncomputable def cell_10811 : Cell := { cellDefaults with
  domain := ⟨(26300000000000001 / 50000000000000000 : ℚ), (105225000000000007 / 200000000000000000 : ℚ)⟩
  r := (2404103967313 / 4000000000000 : ℚ)
  w := (7226185085313 / 5000000000000 : ℚ)
  center := (210425000000000011 / 400000000000000000 : ℚ)
  supportValue := (62526136873613 / 156250000000000 : ℚ)
  supportSlope := (-2267190593443219 / 1250000000000000 : ℚ)
  oldCenter := (62526136873613 / 156250000000000 : ℚ)
  newCoefficients := coefficients_1246
  oldPieces := [piece_971]
}

noncomputable def cell_10812 : Cell := { cellDefaults with
  domain := ⟨(105225000000000007 / 200000000000000000 : ℚ), (10525000000000001 / 20000000000000000 : ℚ)⟩
  r := (2404103967313 / 4000000000000 : ℚ)
  w := (7226185085313 / 5000000000000 : ℚ)
  center := (210475000000000017 / 400000000000000000 : ℚ)
  supportValue := (1999703202345651 / 5000000000000000 : ℚ)
  supportSlope := (-18126977264028057 / 10000000000000000 : ℚ)
  oldCenter := (1999703202345651 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1246
  oldLo := (19975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_970, piece_971]
}

noncomputable def cell_10813 : Cell := { cellDefaults with
  domain := ⟨(10525000000000001 / 20000000000000000 : ℚ), (105275000000000013 / 200000000000000000 : ℚ)⟩
  r := (2404103967313 / 4000000000000 : ℚ)
  w := (7226185085313 / 5000000000000 : ℚ)
  center := (210525000000000023 / 400000000000000000 : ℚ)
  supportValue := (1998570706128411 / 5000000000000000 : ℚ)
  supportSlope := (-18110011221910187 / 10000000000000000 : ℚ)
  oldCenter := (1998570706128411 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1246
  oldLo := (19975000000000001 / 50000000000000000 : ℚ)
  oldHi := (20000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_970]
}

noncomputable def cell_10814 : Cell := { cellDefaults with
  domain := ⟨(105275000000000013 / 200000000000000000 : ℚ), (6581250000000001 / 12500000000000000 : ℚ)⟩
  r := (2404103967313 / 4000000000000 : ℚ)
  w := (7226185085313 / 5000000000000 : ℚ)
  center := (210575000000000029 / 400000000000000000 : ℚ)
  supportValue := (3994878811173441 / 10000000000000000 : ℚ)
  supportSlope := (-113106124824611 / 62500000000000 : ℚ)
  oldCenter := (3994878811173441 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1246
  oldLo := (19950000000000001 / 50000000000000000 : ℚ)
  oldHi := (20000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_969, piece_970]
}

noncomputable def cell_10815 : Cell := { cellDefaults with
  domain := ⟨(6581250000000001 / 12500000000000000 : ℚ), (105325000000000013 / 200000000000000000 : ℚ)⟩
  r := (2402797481693 / 4000000000000 : ℚ)
  w := (14448411782193 / 10000000000000 : ℚ)
  center := (210625000000000029 / 400000000000000000 : ℚ)
  supportValue := (249834373678323 / 625000000000000 : ℚ)
  supportSlope := (-9050861760259129 / 5000000000000000 : ℚ)
  oldCenter := (249834373678323 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1247
  oldLo := (19975000000000001 / 50000000000000000 : ℚ)
  oldHi := (20000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_970]
}

noncomputable def cell_10816 : Cell := { cellDefaults with
  domain := ⟨(105325000000000013 / 200000000000000000 : ℚ), (10535000000000001 / 20000000000000000 : ℚ)⟩
  r := (2402797481693 / 4000000000000 : ℚ)
  w := (14448411782193 / 10000000000000 : ℚ)
  center := (210675000000000023 / 400000000000000000 : ℚ)
  supportValue := (39950884967730377 / 100000000000000000 : ℚ)
  supportSlope := (-1808758441499631 / 1000000000000000 : ℚ)
  oldCenter := (39950884967730377 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1247
  oldLo := (19950000000000001 / 50000000000000000 : ℚ)
  oldHi := (20000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_969, piece_970]
}

noncomputable def cell_10817 : Cell := { cellDefaults with
  domain := ⟨(10535000000000001 / 20000000000000000 : ℚ), (105375000000000007 / 200000000000000000 : ℚ)⟩
  r := (2402797481693 / 4000000000000 : ℚ)
  w := (14448411782193 / 10000000000000 : ℚ)
  center := (210725000000000017 / 400000000000000000 : ℚ)
  supportValue := (3992828023307099 / 10000000000000000 : ℚ)
  supportSlope := (-564822647081199 / 312500000000000 : ℚ)
  oldCenter := (3992828023307099 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1247
  oldLo := (19950000000000001 / 50000000000000000 : ℚ)
  oldHi := (19975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_969]
}

noncomputable def cell_10818 : Cell := { cellDefaults with
  domain := ⟨(105375000000000007 / 200000000000000000 : ℚ), (26350000000000001 / 50000000000000000 : ℚ)⟩
  r := (2402797481693 / 4000000000000 : ℚ)
  w := (14448411782193 / 10000000000000 : ℚ)
  center := (210775000000000011 / 400000000000000000 : ℚ)
  supportValue := (249410622869477 / 625000000000000 : ℚ)
  supportSlope := (-9028806589556043 / 5000000000000000 : ℚ)
  oldCenter := (249410622869477 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1247
  oldLo := (19925000000000001 / 50000000000000000 : ℚ)
  oldHi := (19975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_968, piece_969]
}

noncomputable def cell_10819 : Cell := { cellDefaults with
  domain := ⟨(26350000000000001 / 50000000000000000 : ℚ), (105425000000000007 / 200000000000000000 : ℚ)⟩
  r := (15009328927491 / 25000000000000 : ℚ)
  w := (1805557900689 / 1250000000000 : ℚ)
  center := (210825000000000011 / 400000000000000000 : ℚ)
  supportValue := (39930355479775553 / 100000000000000000 : ℚ)
  supportSlope := (-9033029051844803 / 5000000000000000 : ℚ)
  oldCenter := (39930355479775553 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1248
  oldLo := (19950000000000001 / 50000000000000000 : ℚ)
  oldHi := (19975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_969]
}

noncomputable def cell_10820 : Cell := { cellDefaults with
  domain := ⟨(105425000000000007 / 200000000000000000 : ℚ), (10545000000000001 / 20000000000000000 : ℚ)⟩
  r := (15009328927491 / 25000000000000 : ℚ)
  w := (1805557900689 / 1250000000000 : ℚ)
  center := (210875000000000017 / 400000000000000000 : ℚ)
  supportValue := (3990778522796491 / 10000000000000000 : ℚ)
  supportSlope := (-18048234738372637 / 10000000000000000 : ℚ)
  oldCenter := (3990778522796491 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1248
  oldLo := (19925000000000001 / 50000000000000000 : ℚ)
  oldHi := (19975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_968, piece_969]
}

noncomputable def cell_10821 : Cell := { cellDefaults with
  domain := ⟨(10545000000000001 / 20000000000000000 : ℚ), (105475000000000013 / 200000000000000000 : ℚ)⟩
  r := (15009328927491 / 25000000000000 : ℚ)
  w := (1805557900689 / 1250000000000 : ℚ)
  center := (210925000000000023 / 400000000000000000 : ℚ)
  supportValue := (99713074046527 / 250000000000000 : ℚ)
  supportSlope := (-1803877777944113 / 1000000000000000 : ℚ)
  oldCenter := (99713074046527 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1248
  oldLo := (19925000000000001 / 50000000000000000 : ℚ)
  oldHi := (19950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_968]
}

noncomputable def cell_10822 : Cell := { cellDefaults with
  domain := ⟨(105475000000000013 / 200000000000000000 : ℚ), (6593750000000001 / 12500000000000000 : ℚ)⟩
  r := (15009328927491 / 25000000000000 : ℚ)
  w := (1805557900689 / 1250000000000 : ℚ)
  center := (210975000000000029 / 400000000000000000 : ℚ)
  supportValue := (79725386935927 / 200000000000000 : ℚ)
  supportSlope := (-4504760864940131 / 2500000000000000 : ℚ)
  oldCenter := (79725386935927 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1248
  oldLo := (19925000000000001 / 50000000000000000 : ℚ)
  oldHi := (19950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_968]
}

noncomputable def cell_10823 : Cell := { cellDefaults with
  domain := ⟨(6593750000000001 / 12500000000000000 : ℚ), (105525000000000013 / 200000000000000000 : ℚ)⟩
  r := (15001183048891 / 25000000000000 : ℚ)
  w := (1444052067837 / 1000000000000 : ℚ)
  center := (211025000000000029 / 400000000000000000 : ℚ)
  supportValue := (39887307726366567 / 100000000000000000 : ℚ)
  supportSlope := (-3606108361097859 / 2000000000000000 : ℚ)
  oldCenter := (39887307726366567 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1249
  oldLo := (19925000000000001 / 50000000000000000 : ℚ)
  oldHi := (19950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_968]
}

noncomputable def cell_10824 : Cell := { cellDefaults with
  domain := ⟨(105525000000000013 / 200000000000000000 : ℚ), (10555000000000001 / 20000000000000000 : ℚ)⟩
  r := (15001183048891 / 25000000000000 : ℚ)
  w := (1444052067837 / 1000000000000 : ℚ)
  center := (211075000000000023 / 400000000000000000 : ℚ)
  supportValue := (7972956371924007 / 20000000000000000 : ℚ)
  supportSlope := (-9005412594597053 / 5000000000000000 : ℚ)
  oldCenter := (7972956371924007 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1249
  oldLo := (19925000000000001 / 50000000000000000 : ℚ)
  oldHi := (19950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_968]
}

noncomputable def cell_10825 : Cell := { cellDefaults with
  domain := ⟨(10555000000000001 / 20000000000000000 : ℚ), (105575000000000007 / 200000000000000000 : ℚ)⟩
  r := (15001183048891 / 25000000000000 : ℚ)
  w := (1444052067837 / 1000000000000 : ℚ)
  center := (211125000000000017 / 400000000000000000 : ℚ)
  supportValue := (7968455064850909 / 20000000000000000 : ℚ)
  supportSlope := (-3600295843050537 / 2000000000000000 : ℚ)
  oldCenter := (7968455064850909 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1249
  oldLo := (19900000000000001 / 50000000000000000 : ℚ)
  oldHi := (19950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_967, piece_968]
}

noncomputable def cell_10826 : Cell := { cellDefaults with
  domain := ⟨(105575000000000007 / 200000000000000000 : ℚ), (26400000000000001 / 50000000000000000 : ℚ)⟩
  r := (15001183048891 / 25000000000000 : ℚ)
  w := (1444052067837 / 1000000000000 : ℚ)
  center := (211175000000000011 / 400000000000000000 : ℚ)
  supportValue := (39819783412441867 / 100000000000000000 : ℚ)
  supportSlope := (-1798365849654753 / 1000000000000000 : ℚ)
  oldCenter := (39819783412441867 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1249
  oldLo := (19900000000000001 / 50000000000000000 : ℚ)
  oldHi := (19925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_967]
}

noncomputable def cell_10827 : Cell := { cellDefaults with
  domain := ⟨(26400000000000001 / 50000000000000000 : ℚ), (105625000000000007 / 200000000000000000 : ℚ)⟩
  r := (29986094467233 / 50000000000000 : ℚ)
  w := (721829316859 / 500000000000 : ℚ)
  center := (211225000000000011 / 400000000000000000 : ℚ)
  supportValue := (19922173867154977 / 50000000000000000 : ℚ)
  supportSlope := (-4498035218038503 / 2500000000000000 : ℚ)
  oldCenter := (19922173867154977 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1250
  oldLo := (19900000000000001 / 50000000000000000 : ℚ)
  oldHi := (19950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_967, piece_968]
}

noncomputable def cell_10828 : Cell := { cellDefaults with
  domain := ⟨(105625000000000007 / 200000000000000000 : ℚ), (10565000000000001 / 20000000000000000 : ℚ)⟩
  r := (29986094467233 / 50000000000000 : ℚ)
  w := (721829316859 / 500000000000 : ℚ)
  center := (211275000000000017 / 400000000000000000 : ℚ)
  supportValue := (995546651877779 / 2500000000000000 : ℚ)
  supportSlope := (-8987732574218287 / 5000000000000000 : ℚ)
  oldCenter := (995546651877779 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1250
  oldLo := (19900000000000001 / 50000000000000000 : ℚ)
  oldHi := (19925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_967]
}

noncomputable def cell_10829 : Cell := { cellDefaults with
  domain := ⟨(10565000000000001 / 20000000000000000 : ℚ), (105675000000000013 / 200000000000000000 : ℚ)⟩
  r := (29986094467233 / 50000000000000 : ℚ)
  w := (721829316859 / 500000000000 : ℚ)
  center := (211325000000000023 / 400000000000000000 : ℚ)
  supportValue := (39799408574350553 / 100000000000000000 : ℚ)
  supportSlope := (-8981150534478377 / 5000000000000000 : ℚ)
  oldCenter := (39799408574350553 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1250
  oldLo := (19875000000000001 / 50000000000000000 : ℚ)
  oldHi := (19925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_966, piece_967]
}

noncomputable def cell_10830 : Cell := { cellDefaults with
  domain := ⟨(105675000000000013 / 200000000000000000 : ℚ), (6606250000000001 / 12500000000000000 : ℚ)⟩
  r := (29986094467233 / 50000000000000 : ℚ)
  w := (721829316859 / 500000000000 : ℚ)
  center := (211375000000000029 / 400000000000000000 : ℚ)
  supportValue := (1988848036388011 / 5000000000000000 : ℚ)
  supportSlope := (-4487104545551363 / 2500000000000000 : ℚ)
  oldCenter := (1988848036388011 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1250
  oldLo := (19875000000000001 / 50000000000000000 : ℚ)
  oldHi := (19900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_966]
}

noncomputable def cell_10831 : Cell := { cellDefaults with
  domain := ⟨(6606250000000001 / 12500000000000000 : ℚ), (211450000000000027 / 400000000000000000 : ℚ)⟩
  r := (59939684997677 / 100000000000000 : ℚ)
  w := (2886532169853 / 2000000000000 : ℚ)
  center := (422850000000000059 / 800000000000000000 : ℚ)
  supportValue := (7960294691236497 / 20000000000000000 : ℚ)
  supportSlope := (-8976489997572843 / 5000000000000000 : ℚ)
  oldCenter := (7960294691236497 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1251
  oldLo := (19875000000000001 / 50000000000000000 : ℚ)
  oldHi := (19925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_966, piece_967]
}

noncomputable def cell_10832 : Cell := { cellDefaults with
  domain := ⟨(211450000000000027 / 400000000000000000 : ℚ), (105750000000000011 / 200000000000000000 : ℚ)⟩
  r := (59939684997677 / 100000000000000 : ℚ)
  w := (2886532169853 / 2000000000000 : ℚ)
  center := (422950000000000049 / 800000000000000000 : ℚ)
  supportValue := (39779036815252183 / 100000000000000000 : ℚ)
  supportSlope := (-8970123991272957 / 5000000000000000 : ℚ)
  oldCenter := (39779036815252183 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1251
  oldLo := (19875000000000001 / 50000000000000000 : ℚ)
  oldHi := (19900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_966]
}

noncomputable def cell_10833 : Cell := { cellDefaults with
  domain := ⟨(105750000000000011 / 200000000000000000 : ℚ), (211550000000000017 / 400000000000000000 : ℚ)⟩
  r := (59939684997677 / 100000000000000 : ℚ)
  w := (2886532169853 / 2000000000000 : ℚ)
  center := (423050000000000039 / 800000000000000000 : ℚ)
  supportValue := (79513247505951 / 200000000000000 : ℚ)
  supportSlope := (-8961585199097407 / 5000000000000000 : ℚ)
  oldCenter := (79513247505951 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1251
  oldLo := (992877094972067 / 2500000000000000 : ℚ)
  oldHi := (19900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_965, piece_966]
}

noncomputable def cell_10834 : Cell := { cellDefaults with
  domain := ⟨(211550000000000017 / 400000000000000000 : ℚ), (52900000000000003 / 100000000000000000 : ℚ)⟩
  r := (59939684997677 / 100000000000000 : ℚ)
  w := (2886532169853 / 2000000000000 : ℚ)
  center := (423150000000000029 / 800000000000000000 : ℚ)
  supportValue := (39734224326575823 / 100000000000000000 : ℚ)
  supportSlope := (-17913320420117187 / 10000000000000000 : ℚ)
  oldCenter := (39734224326575823 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1251
  oldLo := (992877094972067 / 2500000000000000 : ℚ)
  oldHi := (19875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_965]
}

noncomputable def cell_10835 : Cell := { cellDefaults with
  domain := ⟨(52900000000000003 / 100000000000000000 : ℚ), (211650000000000017 / 400000000000000000 : ℚ)⟩
  r := (7488402622329 / 12500000000000 : ℚ)
  w := (7214371840053 / 5000000000000 : ℚ)
  center := (423250000000000029 / 800000000000000000 : ℚ)
  supportValue := (19879341143882853 / 50000000000000000 : ℚ)
  supportSlope := (-8956933394745007 / 5000000000000000 : ℚ)
  oldCenter := (19879341143882853 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1252
  oldLo := (992877094972067 / 2500000000000000 : ℚ)
  oldHi := (19900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_965, piece_966]
}

noncomputable def cell_10836 : Cell := { cellDefaults with
  domain := ⟨(211650000000000017 / 400000000000000000 : ℚ), (105850000000000011 / 200000000000000000 : ℚ)⟩
  r := (7488402622329 / 12500000000000 : ℚ)
  w := (7214371840053 / 5000000000000 : ℚ)
  center := (423350000000000039 / 800000000000000000 : ℚ)
  supportValue := (1986814723827653 / 5000000000000000 : ℚ)
  supportSlope := (-8952587292240459 / 5000000000000000 : ℚ)
  oldCenter := (1986814723827653 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1252
  oldLo := (992877094972067 / 2500000000000000 : ℚ)
  oldHi := (19875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_965]
}

noncomputable def cell_10837 : Cell := { cellDefaults with
  domain := ⟨(105850000000000011 / 200000000000000000 : ℚ), (211750000000000027 / 400000000000000000 : ℚ)⟩
  r := (7488402622329 / 12500000000000 : ℚ)
  w := (7214371840053 / 5000000000000 : ℚ)
  center := (423450000000000049 / 800000000000000000 : ℚ)
  supportValue := (397139252474319 / 1000000000000000 : ℚ)
  supportSlope := (-17885573576766223 / 10000000000000000 : ℚ)
  oldCenter := (397139252474319 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1252
  oldLo := (19850000000000001 / 50000000000000000 : ℚ)
  oldHi := (19875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_964, piece_965]
}

noncomputable def cell_10838 : Cell := { cellDefaults with
  domain := ⟨(211750000000000027 / 400000000000000000 : ℚ), (6618750000000001 / 12500000000000000 : ℚ)⟩
  r := (7488402622329 / 12500000000000 : ℚ)
  w := (7214371840053 / 5000000000000 : ℚ)
  center := (423550000000000059 / 800000000000000000 : ℚ)
  supportValue := (3969157462924867 / 10000000000000000 : ℚ)
  supportSlope := (-446921601418859 / 250000000000000 : ℚ)
  oldCenter := (3969157462924867 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1252
  oldLo := (19825000000000001 / 50000000000000000 : ℚ)
  oldHi := (992877094972067 / 2500000000000000 : ℚ)
  oldPieces := [piece_963, piece_964]
}

noncomputable def cell_10839 : Cell := { cellDefaults with
  domain := ⟨(6618750000000001 / 12500000000000000 : ℚ), (211850000000000027 / 400000000000000000 : ℚ)⟩
  r := (2993739806871 / 5000000000000 : ℚ)
  w := (7212417313397 / 5000000000000 : ℚ)
  center := (423650000000000059 / 800000000000000000 : ℚ)
  supportValue := (3971597911850381 / 10000000000000000 : ℚ)
  supportSlope := (-3575485962644367 / 2000000000000000 : ℚ)
  oldCenter := (3971597911850381 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1253
  oldLo := (19850000000000001 / 50000000000000000 : ℚ)
  oldHi := (19875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_964, piece_965]
}

noncomputable def cell_10840 : Cell := { cellDefaults with
  domain := ⟨(211850000000000027 / 400000000000000000 : ℚ), (105950000000000011 / 200000000000000000 : ℚ)⟩
  r := (2993739806871 / 5000000000000 : ℚ)
  w := (7212417313397 / 5000000000000 : ℚ)
  center := (423750000000000049 / 800000000000000000 : ℚ)
  supportValue := (1240426252940237 / 3125000000000000 : ℚ)
  supportSlope := (-8933800273461583 / 5000000000000000 : ℚ)
  oldCenter := (1240426252940237 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1253
  oldLo := (19825000000000001 / 50000000000000000 : ℚ)
  oldHi := (992877094972067 / 2500000000000000 : ℚ)
  oldPieces := [piece_963, piece_964]
}

noncomputable def cell_10841 : Cell := { cellDefaults with
  domain := ⟨(105950000000000011 / 200000000000000000 : ℚ), (1059776536312849 / 2000000000000000 : ℚ)⟩
  r := (2993739806871 / 5000000000000 : ℚ)
  w := (7212417313397 / 5000000000000 : ℚ)
  center := (211927653631284911 / 400000000000000000 : ℚ)
  supportValue := (39670130324386643 / 100000000000000000 : ℚ)
  supportSlope := (-4462404979123421 / 2500000000000000 : ℚ)
  oldCenter := (39670130324386643 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1253
  oldLo := (19825000000000001 / 50000000000000000 : ℚ)
  oldHi := (19850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_963]
}

noncomputable def cell_10842 : Cell := { cellDefaults with
  domain := ⟨(1059776536312849 / 2000000000000000 : ℚ), (53000000000000003 / 100000000000000000 : ℚ)⟩
  r := (2993739806871 / 5000000000000 : ℚ)
  w := (7212417313397 / 5000000000000 : ℚ)
  center := (105988826815642453 / 200000000000000000 : ℚ)
  supportValue := (39647828949439307 / 100000000000000000 : ℚ)
  supportSlope := (-1114854192047393 / 625000000000000 : ℚ)
  oldCenter := (39647828949439307 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1254
  oldLo := (19800000000000001 / 50000000000000000 : ℚ)
  oldHi := (19850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_962, piece_963]
}

noncomputable def cell_10843 : Cell := { cellDefaults with
  domain := ⟨(53000000000000003 / 100000000000000000 : ℚ), (212050000000000017 / 400000000000000000 : ℚ)⟩
  r := (29921205183353 / 50000000000000 : ℚ)
  w := (1802616760009 / 1250000000000 : ℚ)
  center := (424050000000000029 / 800000000000000000 : ℚ)
  supportValue := (7934672538480697 / 20000000000000000 : ℚ)
  supportSlope := (-17842538526966927 / 10000000000000000 : ℚ)
  oldCenter := (7934672538480697 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1255
  oldLo := (19825000000000001 / 50000000000000000 : ℚ)
  oldHi := (19850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_963]
}

noncomputable def cell_10844 : Cell := { cellDefaults with
  domain := ⟨(212050000000000017 / 400000000000000000 : ℚ), (106050000000000011 / 200000000000000000 : ℚ)⟩
  r := (29921205183353 / 50000000000000 : ℚ)
  w := (1802616760009 / 1250000000000 : ℚ)
  center := (424150000000000039 / 800000000000000000 : ℚ)
  supportValue := (39651071698687657 / 100000000000000000 : ℚ)
  supportSlope := (-4457163032593579 / 2500000000000000 : ℚ)
  oldCenter := (39651071698687657 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1255
  oldLo := (19800000000000001 / 50000000000000000 : ℚ)
  oldHi := (19850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_962, piece_963]
}

noncomputable def cell_10845 : Cell := { cellDefaults with
  domain := ⟨(106050000000000011 / 200000000000000000 : ℚ), (212150000000000027 / 400000000000000000 : ℚ)⟩
  r := (29921205183353 / 50000000000000 : ℚ)
  w := (1802616760009 / 1250000000000 : ℚ)
  center := (424250000000000049 / 800000000000000000 : ℚ)
  supportValue := (317030322556323 / 800000000000000 : ℚ)
  supportSlope := (-17815881660972361 / 10000000000000000 : ℚ)
  oldCenter := (317030322556323 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1255
  oldLo := (19800000000000001 / 50000000000000000 : ℚ)
  oldHi := (19825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_962]
}

noncomputable def cell_10846 : Cell := { cellDefaults with
  domain := ⟨(212150000000000027 / 400000000000000000 : ℚ), (6631250000000001 / 12500000000000000 : ℚ)⟩
  r := (29921205183353 / 50000000000000 : ℚ)
  w := (1802616760009 / 1250000000000 : ℚ)
  center := (424350000000000059 / 800000000000000000 : ℚ)
  supportValue := (9901633162236939 / 25000000000000000 : ℚ)
  supportSlope := (-17798963488225181 / 10000000000000000 : ℚ)
  oldCenter := (9901633162236939 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1255
  oldLo := (19775000000000001 / 50000000000000000 : ℚ)
  oldHi := (19825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_961, piece_962]
}

noncomputable def cell_10847 : Cell := { cellDefaults with
  domain := ⟨(6631250000000001 / 12500000000000000 : ℚ), (212250000000000027 / 400000000000000000 : ℚ)⟩
  r := (29905032486187 / 50000000000000 : ℚ)
  w := (7208520568869 / 5000000000000 : ℚ)
  center := (424450000000000059 / 800000000000000000 : ℚ)
  supportValue := (990770840148011 / 2500000000000000 : ℚ)
  supportSlope := (-712311494168887 / 400000000000000 : ℚ)
  oldCenter := (990770840148011 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1256
  oldLo := (19800000000000001 / 50000000000000000 : ℚ)
  oldHi := (19825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_962]
}

noncomputable def cell_10848 : Cell := { cellDefaults with
  domain := ⟨(212250000000000027 / 400000000000000000 : ℚ), (106150000000000011 / 200000000000000000 : ℚ)⟩
  r := (29905032486187 / 50000000000000 : ℚ)
  w := (7208520568869 / 5000000000000 : ℚ)
  center := (424550000000000049 / 800000000000000000 : ℚ)
  supportValue := (1980429302121619 / 5000000000000000 : ℚ)
  supportSlope := (-2223716754771399 / 1250000000000000 : ℚ)
  oldCenter := (1980429302121619 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1256
  oldLo := (19775000000000001 / 50000000000000000 : ℚ)
  oldHi := (19825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_961, piece_962]
}

noncomputable def cell_10849 : Cell := { cellDefaults with
  domain := ⟨(106150000000000011 / 200000000000000000 : ℚ), (212350000000000017 / 400000000000000000 : ℚ)⟩
  r := (29905032486187 / 50000000000000 : ℚ)
  w := (7208520568869 / 5000000000000 : ℚ)
  center := (424650000000000039 / 800000000000000000 : ℚ)
  supportValue := (3958635324654911 / 10000000000000000 : ℚ)
  supportSlope := (-1111327981698329 / 625000000000000 : ℚ)
  oldCenter := (3958635324654911 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1256
  oldLo := (19775000000000001 / 50000000000000000 : ℚ)
  oldHi := (19800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_961]
}

theorem check_10800 : cell_10800.check = true := by
  decide +kernel

theorem check_10801 : cell_10801.check = true := by
  decide +kernel

theorem check_10802 : cell_10802.check = true := by
  decide +kernel

theorem check_10803 : cell_10803.check = true := by
  decide +kernel

theorem check_10804 : cell_10804.check = true := by
  decide +kernel

theorem check_10805 : cell_10805.check = true := by
  decide +kernel

theorem check_10806 : cell_10806.check = true := by
  decide +kernel

theorem check_10807 : cell_10807.check = true := by
  decide +kernel

theorem check_10808 : cell_10808.check = true := by
  decide +kernel

theorem check_10809 : cell_10809.check = true := by
  decide +kernel

theorem check_10810 : cell_10810.check = true := by
  decide +kernel

theorem check_10811 : cell_10811.check = true := by
  decide +kernel

theorem check_10812 : cell_10812.check = true := by
  decide +kernel

theorem check_10813 : cell_10813.check = true := by
  decide +kernel

theorem check_10814 : cell_10814.check = true := by
  decide +kernel

theorem check_10815 : cell_10815.check = true := by
  decide +kernel

theorem check_10816 : cell_10816.check = true := by
  decide +kernel

theorem check_10817 : cell_10817.check = true := by
  decide +kernel

theorem check_10818 : cell_10818.check = true := by
  decide +kernel

theorem check_10819 : cell_10819.check = true := by
  decide +kernel

theorem check_10820 : cell_10820.check = true := by
  decide +kernel

theorem check_10821 : cell_10821.check = true := by
  decide +kernel

theorem check_10822 : cell_10822.check = true := by
  decide +kernel

theorem check_10823 : cell_10823.check = true := by
  decide +kernel

theorem check_10824 : cell_10824.check = true := by
  decide +kernel

theorem check_10825 : cell_10825.check = true := by
  decide +kernel

theorem check_10826 : cell_10826.check = true := by
  decide +kernel

theorem check_10827 : cell_10827.check = true := by
  decide +kernel

theorem check_10828 : cell_10828.check = true := by
  decide +kernel

theorem check_10829 : cell_10829.check = true := by
  decide +kernel

theorem check_10830 : cell_10830.check = true := by
  decide +kernel

theorem check_10831 : cell_10831.check = true := by
  decide +kernel

theorem check_10832 : cell_10832.check = true := by
  decide +kernel

theorem check_10833 : cell_10833.check = true := by
  decide +kernel

theorem check_10834 : cell_10834.check = true := by
  decide +kernel

theorem check_10835 : cell_10835.check = true := by
  decide +kernel

theorem check_10836 : cell_10836.check = true := by
  decide +kernel

theorem check_10837 : cell_10837.check = true := by
  decide +kernel

theorem check_10838 : cell_10838.check = true := by
  decide +kernel

theorem check_10839 : cell_10839.check = true := by
  decide +kernel

theorem check_10840 : cell_10840.check = true := by
  decide +kernel

theorem check_10841 : cell_10841.check = true := by
  decide +kernel

theorem check_10842 : cell_10842.check = true := by
  decide +kernel

theorem check_10843 : cell_10843.check = true := by
  decide +kernel

theorem check_10844 : cell_10844.check = true := by
  decide +kernel

theorem check_10845 : cell_10845.check = true := by
  decide +kernel

theorem check_10846 : cell_10846.check = true := by
  decide +kernel

theorem check_10847 : cell_10847.check = true := by
  decide +kernel

theorem check_10848 : cell_10848.check = true := by
  decide +kernel

theorem check_10849 : cell_10849.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_10800, cell_10801, cell_10802, cell_10803, cell_10804, cell_10805, cell_10806, cell_10807, cell_10808, cell_10809, cell_10810, cell_10811, cell_10812, cell_10813, cell_10814, cell_10815, cell_10816, cell_10817, cell_10818, cell_10819, cell_10820, cell_10821, cell_10822, cell_10823, cell_10824, cell_10825, cell_10826, cell_10827, cell_10828, cell_10829, cell_10830, cell_10831, cell_10832, cell_10833, cell_10834, cell_10835, cell_10836, cell_10837, cell_10838, cell_10839, cell_10840, cell_10841, cell_10842, cell_10843, cell_10844, cell_10845, cell_10846, cell_10847, cell_10848, cell_10849]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10800, check_10801, check_10802, check_10803, check_10804, check_10805, check_10806, check_10807, check_10808, check_10809, check_10810, check_10811, check_10812, check_10813, check_10814, check_10815, check_10816, check_10817, check_10818, check_10819, check_10820, check_10821, check_10822, check_10823, check_10824, check_10825, check_10826, check_10827, check_10828, check_10829, check_10830, check_10831, check_10832, check_10833, check_10834, check_10835, check_10836, check_10837, check_10838, check_10839, check_10840, check_10841, check_10842, check_10843, check_10844, check_10845, check_10846, check_10847, check_10848, check_10849, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0216

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0216
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0216
open AnalyticBounds.ExpressionCertificate

theorem linked_10800 : Linked cell_10800 pieces := by
  apply Linked.of_piece piece_1243 piece_1243_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10800, List.cons_subset, List.nil_subset, and_true]
  exact piece_973_mem

theorem linked_10801 : Linked cell_10801 pieces := by
  apply Linked.of_piece piece_1243 piece_1243_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10801, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_972_mem, piece_973_mem⟩

theorem linked_10802 : Linked cell_10802 pieces := by
  apply Linked.of_piece piece_1243 piece_1243_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10802, List.cons_subset, List.nil_subset, and_true]
  exact piece_972_mem

theorem linked_10803 : Linked cell_10803 pieces := by
  apply Linked.of_piece piece_1244 piece_1244_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10803, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_972_mem, piece_973_mem⟩

theorem linked_10804 : Linked cell_10804 pieces := by
  apply Linked.of_piece piece_1244 piece_1244_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10804, List.cons_subset, List.nil_subset, and_true]
  exact piece_972_mem

theorem linked_10805 : Linked cell_10805 pieces := by
  apply Linked.of_piece piece_1244 piece_1244_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10805, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_971_mem, piece_972_mem⟩

theorem linked_10806 : Linked cell_10806 pieces := by
  apply Linked.of_piece piece_1244 piece_1244_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10806, List.cons_subset, List.nil_subset, and_true]
  exact piece_971_mem

theorem linked_10807 : Linked cell_10807 pieces := by
  apply Linked.of_piece piece_1245 piece_1245_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10807, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_971_mem, piece_972_mem⟩

theorem linked_10808 : Linked cell_10808 pieces := by
  apply Linked.of_piece piece_1245 piece_1245_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10808, List.cons_subset, List.nil_subset, and_true]
  exact piece_971_mem

theorem linked_10809 : Linked cell_10809 pieces := by
  apply Linked.of_piece piece_1245 piece_1245_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10809, List.cons_subset, List.nil_subset, and_true]
  exact piece_971_mem

theorem linked_10810 : Linked cell_10810 pieces := by
  apply Linked.of_piece piece_1245 piece_1245_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10810, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_970_mem, piece_971_mem⟩

theorem linked_10811 : Linked cell_10811 pieces := by
  apply Linked.of_piece piece_1246 piece_1246_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10811, List.cons_subset, List.nil_subset, and_true]
  exact piece_971_mem

theorem linked_10812 : Linked cell_10812 pieces := by
  apply Linked.of_piece piece_1246 piece_1246_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10812, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_970_mem, piece_971_mem⟩

theorem linked_10813 : Linked cell_10813 pieces := by
  apply Linked.of_piece piece_1246 piece_1246_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10813, List.cons_subset, List.nil_subset, and_true]
  exact piece_970_mem

theorem linked_10814 : Linked cell_10814 pieces := by
  apply Linked.of_piece piece_1246 piece_1246_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10814, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_969_mem, piece_970_mem⟩

theorem linked_10815 : Linked cell_10815 pieces := by
  apply Linked.of_piece piece_1247 piece_1247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10815, List.cons_subset, List.nil_subset, and_true]
  exact piece_970_mem

theorem linked_10816 : Linked cell_10816 pieces := by
  apply Linked.of_piece piece_1247 piece_1247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10816, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_969_mem, piece_970_mem⟩

theorem linked_10817 : Linked cell_10817 pieces := by
  apply Linked.of_piece piece_1247 piece_1247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10817, List.cons_subset, List.nil_subset, and_true]
  exact piece_969_mem

theorem linked_10818 : Linked cell_10818 pieces := by
  apply Linked.of_piece piece_1247 piece_1247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10818, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_968_mem, piece_969_mem⟩

theorem linked_10819 : Linked cell_10819 pieces := by
  apply Linked.of_piece piece_1248 piece_1248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10819, List.cons_subset, List.nil_subset, and_true]
  exact piece_969_mem

theorem linked_10820 : Linked cell_10820 pieces := by
  apply Linked.of_piece piece_1248 piece_1248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10820, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_968_mem, piece_969_mem⟩

theorem linked_10821 : Linked cell_10821 pieces := by
  apply Linked.of_piece piece_1248 piece_1248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10821, List.cons_subset, List.nil_subset, and_true]
  exact piece_968_mem

theorem linked_10822 : Linked cell_10822 pieces := by
  apply Linked.of_piece piece_1248 piece_1248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10822, List.cons_subset, List.nil_subset, and_true]
  exact piece_968_mem

theorem linked_10823 : Linked cell_10823 pieces := by
  apply Linked.of_piece piece_1249 piece_1249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10823, List.cons_subset, List.nil_subset, and_true]
  exact piece_968_mem

theorem linked_10824 : Linked cell_10824 pieces := by
  apply Linked.of_piece piece_1249 piece_1249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10824, List.cons_subset, List.nil_subset, and_true]
  exact piece_968_mem

theorem linked_10825 : Linked cell_10825 pieces := by
  apply Linked.of_piece piece_1249 piece_1249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10825, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_967_mem, piece_968_mem⟩

theorem linked_10826 : Linked cell_10826 pieces := by
  apply Linked.of_piece piece_1249 piece_1249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10826, List.cons_subset, List.nil_subset, and_true]
  exact piece_967_mem

theorem linked_10827 : Linked cell_10827 pieces := by
  apply Linked.of_piece piece_1250 piece_1250_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10827, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_967_mem, piece_968_mem⟩

theorem linked_10828 : Linked cell_10828 pieces := by
  apply Linked.of_piece piece_1250 piece_1250_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10828, List.cons_subset, List.nil_subset, and_true]
  exact piece_967_mem

theorem linked_10829 : Linked cell_10829 pieces := by
  apply Linked.of_piece piece_1250 piece_1250_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10829, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_966_mem, piece_967_mem⟩

theorem linked_10830 : Linked cell_10830 pieces := by
  apply Linked.of_piece piece_1250 piece_1250_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10830, List.cons_subset, List.nil_subset, and_true]
  exact piece_966_mem

theorem linked_10831 : Linked cell_10831 pieces := by
  apply Linked.of_piece piece_1251 piece_1251_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10831, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_966_mem, piece_967_mem⟩

theorem linked_10832 : Linked cell_10832 pieces := by
  apply Linked.of_piece piece_1251 piece_1251_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10832, List.cons_subset, List.nil_subset, and_true]
  exact piece_966_mem

theorem linked_10833 : Linked cell_10833 pieces := by
  apply Linked.of_piece piece_1251 piece_1251_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10833, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_965_mem, piece_966_mem⟩

theorem linked_10834 : Linked cell_10834 pieces := by
  apply Linked.of_piece piece_1251 piece_1251_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10834, List.cons_subset, List.nil_subset, and_true]
  exact piece_965_mem

theorem linked_10835 : Linked cell_10835 pieces := by
  apply Linked.of_piece piece_1252 piece_1252_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10835, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_965_mem, piece_966_mem⟩

theorem linked_10836 : Linked cell_10836 pieces := by
  apply Linked.of_piece piece_1252 piece_1252_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10836, List.cons_subset, List.nil_subset, and_true]
  exact piece_965_mem

theorem linked_10837 : Linked cell_10837 pieces := by
  apply Linked.of_piece piece_1252 piece_1252_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10837, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_964_mem, piece_965_mem⟩

theorem linked_10838 : Linked cell_10838 pieces := by
  apply Linked.of_piece piece_1252 piece_1252_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10838, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_963_mem, piece_964_mem⟩

theorem linked_10839 : Linked cell_10839 pieces := by
  apply Linked.of_piece piece_1253 piece_1253_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10839, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_964_mem, piece_965_mem⟩

theorem linked_10840 : Linked cell_10840 pieces := by
  apply Linked.of_piece piece_1253 piece_1253_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10840, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_963_mem, piece_964_mem⟩

theorem linked_10841 : Linked cell_10841 pieces := by
  apply Linked.of_piece piece_1253 piece_1253_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10841, List.cons_subset, List.nil_subset, and_true]
  exact piece_963_mem

theorem linked_10842 : Linked cell_10842 pieces := by
  apply Linked.of_piece piece_1254 piece_1254_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10842, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_962_mem, piece_963_mem⟩

theorem linked_10843 : Linked cell_10843 pieces := by
  apply Linked.of_piece piece_1255 piece_1255_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10843, List.cons_subset, List.nil_subset, and_true]
  exact piece_963_mem

theorem linked_10844 : Linked cell_10844 pieces := by
  apply Linked.of_piece piece_1255 piece_1255_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10844, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_962_mem, piece_963_mem⟩

theorem linked_10845 : Linked cell_10845 pieces := by
  apply Linked.of_piece piece_1255 piece_1255_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10845, List.cons_subset, List.nil_subset, and_true]
  exact piece_962_mem

theorem linked_10846 : Linked cell_10846 pieces := by
  apply Linked.of_piece piece_1255 piece_1255_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10846, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_961_mem, piece_962_mem⟩

theorem linked_10847 : Linked cell_10847 pieces := by
  apply Linked.of_piece piece_1256 piece_1256_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10847, List.cons_subset, List.nil_subset, and_true]
  exact piece_962_mem

theorem linked_10848 : Linked cell_10848 pieces := by
  apply Linked.of_piece piece_1256 piece_1256_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10848, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_961_mem, piece_962_mem⟩

theorem linked_10849 : Linked cell_10849 pieces := by
  apply Linked.of_piece piece_1256 piece_1256_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_10849, List.cons_subset, List.nil_subset, and_true]
  exact piece_961_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0216.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0216.cells,List.forall_mem_cons]
  exact ⟨linked_10800, linked_10801, linked_10802, linked_10803, linked_10804, linked_10805, linked_10806, linked_10807, linked_10808, linked_10809, linked_10810, linked_10811, linked_10812, linked_10813, linked_10814, linked_10815, linked_10816, linked_10817, linked_10818, linked_10819, linked_10820, linked_10821, linked_10822, linked_10823, linked_10824, linked_10825, linked_10826, linked_10827, linked_10828, linked_10829, linked_10830, linked_10831, linked_10832, linked_10833, linked_10834, linked_10835, linked_10836, linked_10837, linked_10838, linked_10839, linked_10840, linked_10841, linked_10842, linked_10843, linked_10844, linked_10845, linked_10846, linked_10847, linked_10848, linked_10849, by simp⟩

theorem covered : covers (104925000000000013 / 200000000000000000 : ℚ) (212350000000000017 / 400000000000000000 : ℚ)
    (SourceCertificates.Chunk0216.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0216
