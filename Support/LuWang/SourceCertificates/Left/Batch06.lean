import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData
import Support.LuWang.SourceCertificateAssembly

/-! Independent left-certificate batch: original chunks 0216–0227. -/

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0216
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
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

noncomputable def cell_10800 : Cell := { cellDefaults with
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
  link_source cell_10800 with piece_1243 using piece_1243_mem, piece_973_mem

theorem linked_10801 : Linked cell_10801 pieces := by
  link_source cell_10801 with piece_1243 using piece_1243_mem, ⟨piece_972_mem, piece_973_mem⟩

theorem linked_10802 : Linked cell_10802 pieces := by
  link_source cell_10802 with piece_1243 using piece_1243_mem, piece_972_mem

theorem linked_10803 : Linked cell_10803 pieces := by
  link_source cell_10803 with piece_1244 using piece_1244_mem, ⟨piece_972_mem, piece_973_mem⟩

theorem linked_10804 : Linked cell_10804 pieces := by
  link_source cell_10804 with piece_1244 using piece_1244_mem, piece_972_mem

theorem linked_10805 : Linked cell_10805 pieces := by
  link_source cell_10805 with piece_1244 using piece_1244_mem, ⟨piece_971_mem, piece_972_mem⟩

theorem linked_10806 : Linked cell_10806 pieces := by
  link_source cell_10806 with piece_1244 using piece_1244_mem, piece_971_mem

theorem linked_10807 : Linked cell_10807 pieces := by
  link_source cell_10807 with piece_1245 using piece_1245_mem, ⟨piece_971_mem, piece_972_mem⟩

theorem linked_10808 : Linked cell_10808 pieces := by
  link_source cell_10808 with piece_1245 using piece_1245_mem, piece_971_mem

theorem linked_10809 : Linked cell_10809 pieces := by
  link_source cell_10809 with piece_1245 using piece_1245_mem, piece_971_mem

theorem linked_10810 : Linked cell_10810 pieces := by
  link_source cell_10810 with piece_1245 using piece_1245_mem, ⟨piece_970_mem, piece_971_mem⟩

theorem linked_10811 : Linked cell_10811 pieces := by
  link_source cell_10811 with piece_1246 using piece_1246_mem, piece_971_mem

theorem linked_10812 : Linked cell_10812 pieces := by
  link_source cell_10812 with piece_1246 using piece_1246_mem, ⟨piece_970_mem, piece_971_mem⟩

theorem linked_10813 : Linked cell_10813 pieces := by
  link_source cell_10813 with piece_1246 using piece_1246_mem, piece_970_mem

theorem linked_10814 : Linked cell_10814 pieces := by
  link_source cell_10814 with piece_1246 using piece_1246_mem, ⟨piece_969_mem, piece_970_mem⟩

theorem linked_10815 : Linked cell_10815 pieces := by
  link_source cell_10815 with piece_1247 using piece_1247_mem, piece_970_mem

theorem linked_10816 : Linked cell_10816 pieces := by
  link_source cell_10816 with piece_1247 using piece_1247_mem, ⟨piece_969_mem, piece_970_mem⟩

theorem linked_10817 : Linked cell_10817 pieces := by
  link_source cell_10817 with piece_1247 using piece_1247_mem, piece_969_mem

theorem linked_10818 : Linked cell_10818 pieces := by
  link_source cell_10818 with piece_1247 using piece_1247_mem, ⟨piece_968_mem, piece_969_mem⟩

theorem linked_10819 : Linked cell_10819 pieces := by
  link_source cell_10819 with piece_1248 using piece_1248_mem, piece_969_mem

theorem linked_10820 : Linked cell_10820 pieces := by
  link_source cell_10820 with piece_1248 using piece_1248_mem, ⟨piece_968_mem, piece_969_mem⟩

theorem linked_10821 : Linked cell_10821 pieces := by
  link_source cell_10821 with piece_1248 using piece_1248_mem, piece_968_mem

theorem linked_10822 : Linked cell_10822 pieces := by
  link_source cell_10822 with piece_1248 using piece_1248_mem, piece_968_mem

theorem linked_10823 : Linked cell_10823 pieces := by
  link_source cell_10823 with piece_1249 using piece_1249_mem, piece_968_mem

theorem linked_10824 : Linked cell_10824 pieces := by
  link_source cell_10824 with piece_1249 using piece_1249_mem, piece_968_mem

theorem linked_10825 : Linked cell_10825 pieces := by
  link_source cell_10825 with piece_1249 using piece_1249_mem, ⟨piece_967_mem, piece_968_mem⟩

theorem linked_10826 : Linked cell_10826 pieces := by
  link_source cell_10826 with piece_1249 using piece_1249_mem, piece_967_mem

theorem linked_10827 : Linked cell_10827 pieces := by
  link_source cell_10827 with piece_1250 using piece_1250_mem, ⟨piece_967_mem, piece_968_mem⟩

theorem linked_10828 : Linked cell_10828 pieces := by
  link_source cell_10828 with piece_1250 using piece_1250_mem, piece_967_mem

theorem linked_10829 : Linked cell_10829 pieces := by
  link_source cell_10829 with piece_1250 using piece_1250_mem, ⟨piece_966_mem, piece_967_mem⟩

theorem linked_10830 : Linked cell_10830 pieces := by
  link_source cell_10830 with piece_1250 using piece_1250_mem, piece_966_mem

theorem linked_10831 : Linked cell_10831 pieces := by
  link_source cell_10831 with piece_1251 using piece_1251_mem, ⟨piece_966_mem, piece_967_mem⟩

theorem linked_10832 : Linked cell_10832 pieces := by
  link_source cell_10832 with piece_1251 using piece_1251_mem, piece_966_mem

theorem linked_10833 : Linked cell_10833 pieces := by
  link_source cell_10833 with piece_1251 using piece_1251_mem, ⟨piece_965_mem, piece_966_mem⟩

theorem linked_10834 : Linked cell_10834 pieces := by
  link_source cell_10834 with piece_1251 using piece_1251_mem, piece_965_mem

theorem linked_10835 : Linked cell_10835 pieces := by
  link_source cell_10835 with piece_1252 using piece_1252_mem, ⟨piece_965_mem, piece_966_mem⟩

theorem linked_10836 : Linked cell_10836 pieces := by
  link_source cell_10836 with piece_1252 using piece_1252_mem, piece_965_mem

theorem linked_10837 : Linked cell_10837 pieces := by
  link_source cell_10837 with piece_1252 using piece_1252_mem, ⟨piece_964_mem, piece_965_mem⟩

theorem linked_10838 : Linked cell_10838 pieces := by
  link_source cell_10838 with piece_1252 using piece_1252_mem, ⟨piece_963_mem, piece_964_mem⟩

theorem linked_10839 : Linked cell_10839 pieces := by
  link_source cell_10839 with piece_1253 using piece_1253_mem, ⟨piece_964_mem, piece_965_mem⟩

theorem linked_10840 : Linked cell_10840 pieces := by
  link_source cell_10840 with piece_1253 using piece_1253_mem, ⟨piece_963_mem, piece_964_mem⟩

theorem linked_10841 : Linked cell_10841 pieces := by
  link_source cell_10841 with piece_1253 using piece_1253_mem, piece_963_mem

theorem linked_10842 : Linked cell_10842 pieces := by
  link_source cell_10842 with piece_1254 using piece_1254_mem, ⟨piece_962_mem, piece_963_mem⟩

theorem linked_10843 : Linked cell_10843 pieces := by
  link_source cell_10843 with piece_1255 using piece_1255_mem, piece_963_mem

theorem linked_10844 : Linked cell_10844 pieces := by
  link_source cell_10844 with piece_1255 using piece_1255_mem, ⟨piece_962_mem, piece_963_mem⟩

theorem linked_10845 : Linked cell_10845 pieces := by
  link_source cell_10845 with piece_1255 using piece_1255_mem, piece_962_mem

theorem linked_10846 : Linked cell_10846 pieces := by
  link_source cell_10846 with piece_1255 using piece_1255_mem, ⟨piece_961_mem, piece_962_mem⟩

theorem linked_10847 : Linked cell_10847 pieces := by
  link_source cell_10847 with piece_1256 using piece_1256_mem, piece_962_mem

theorem linked_10848 : Linked cell_10848 pieces := by
  link_source cell_10848 with piece_1256 using piece_1256_mem, ⟨piece_961_mem, piece_962_mem⟩

theorem linked_10849 : Linked cell_10849 pieces := by
  link_source cell_10849 with piece_1256 using piece_1256_mem, piece_961_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0216.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0216.cells,List.forall_mem_cons]
  exact ⟨linked_10800, linked_10801, linked_10802, linked_10803, linked_10804, linked_10805, linked_10806, linked_10807, linked_10808, linked_10809, linked_10810, linked_10811, linked_10812, linked_10813, linked_10814, linked_10815, linked_10816, linked_10817, linked_10818, linked_10819, linked_10820, linked_10821, linked_10822, linked_10823, linked_10824, linked_10825, linked_10826, linked_10827, linked_10828, linked_10829, linked_10830, linked_10831, linked_10832, linked_10833, linked_10834, linked_10835, linked_10836, linked_10837, linked_10838, linked_10839, linked_10840, linked_10841, linked_10842, linked_10843, linked_10844, linked_10845, linked_10846, linked_10847, linked_10848, linked_10849, by simp⟩

theorem covered : covers (104925000000000013 / 200000000000000000 : ℚ) (212350000000000017 / 400000000000000000 : ℚ)
    (SourceCertificates.Chunk0216.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0216
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0217
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(212350000000000017 / 400000000000000000 : ℚ), (53100000000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (2380828097277 / 4000000000000 : ℚ)
  w := (1797795597389 / 1250000000000 : ℚ)
  center := (424750000000000029 / 800000000000000000 : ℚ)
  supportValue := (39564138859340103 / 100000000000000000 : ℚ)
  supportSlope := (-355235050778937 / 200000000000000 : ℚ)
  oldCenter := (39564138859340103 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1257
  oldLo := (19650000000000001 / 50000000000000000 : ℚ)
  oldHi := (19675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_956]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_10850 : Cell := { cellDefaults with
  r := (29905032486187 / 50000000000000 : ℚ)
  w := (7208520568869 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1256
  oldLo := (19775000000000001 / 50000000000000000 : ℚ)
  oldHi := (19800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_961]
}

noncomputable def cell_10851 : Cell := { cellDefaults with
  domain := ⟨(53100000000000003 / 100000000000000000 : ℚ), (212450000000000017 / 400000000000000000 : ℚ)⟩
  r := (59777757207929 / 100000000000000 : ℚ)
  w := (1801644506547 / 1250000000000 : ℚ)
  center := (424850000000000029 / 800000000000000000 : ℚ)
  supportValue := (989709848464857 / 2500000000000000 : ℚ)
  supportSlope := (-4443294869917569 / 2500000000000000 : ℚ)
  oldCenter := (989709848464857 / 2500000000000000 : ℚ)
  oldLo := (19775000000000001 / 50000000000000000 : ℚ)
  oldHi := (19800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_961]
}

noncomputable def cell_10852 : Cell := { cellDefaults with
  domain := ⟨(212450000000000017 / 400000000000000000 : ℚ), (106250000000000011 / 200000000000000000 : ℚ)⟩
  r := (59777757207929 / 100000000000000 : ℚ)
  w := (1801644506547 / 1250000000000 : ℚ)
  center := (424950000000000039 / 800000000000000000 : ℚ)
  supportValue := (6330590340147 / 16000000000000 : ℚ)
  supportSlope := (-887685075475453 / 500000000000000 : ℚ)
  oldCenter := (6330590340147 / 16000000000000 : ℚ)
  oldLo := (19775000000000001 / 50000000000000000 : ℚ)
  oldHi := (19800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_961]
}

noncomputable def cell_10853 : Cell := { cellDefaults with
  domain := ⟨(106250000000000011 / 200000000000000000 : ℚ), (212550000000000027 / 400000000000000000 : ℚ)⟩
  r := (59777757207929 / 100000000000000 : ℚ)
  w := (1801644506547 / 1250000000000 : ℚ)
  center := (425050000000000049 / 800000000000000000 : ℚ)
  supportValue := (1977200268758099 / 5000000000000000 : ℚ)
  supportSlope := (-17743902256375679 / 10000000000000000 : ℚ)
  oldCenter := (1977200268758099 / 5000000000000000 : ℚ)
  oldLo := (19750000000000001 / 50000000000000000 : ℚ)
  oldHi := (19800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_960, piece_961]
}

noncomputable def cell_10854 : Cell := { cellDefaults with
  domain := ⟨(212550000000000027 / 400000000000000000 : ℚ), (6643750000000001 / 12500000000000000 : ℚ)⟩
  r := (59777757207929 / 100000000000000 : ℚ)
  w := (1801644506547 / 1250000000000 : ℚ)
  center := (425150000000000059 / 800000000000000000 : ℚ)
  supportValue := (19760917045930787 / 50000000000000000 : ℚ)
  supportSlope := (-1772727699050059 / 1000000000000000 : ℚ)
  oldCenter := (19760917045930787 / 50000000000000000 : ℚ)
  oldLo := (19750000000000001 / 50000000000000000 : ℚ)
  oldHi := (19775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_960]
}

noncomputable def cell_10855 : Cell := { cellDefaults with
  domain := ⟨(6643750000000001 / 12500000000000000 : ℚ), (212650000000000027 / 400000000000000000 : ℚ)⟩
  r := (3734093057649 / 6250000000000 : ℚ)
  w := (720463918801 / 500000000000 : ℚ)
  center := (425250000000000059 / 800000000000000000 : ℚ)
  supportValue := (123581382703827 / 312500000000000 : ℚ)
  supportSlope := (-709388454035391 / 400000000000000 : ℚ)
  oldCenter := (123581382703827 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1258
  oldLo := (19750000000000001 / 50000000000000000 : ℚ)
  oldHi := (19800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_960, piece_961]
}

noncomputable def cell_10856 : Cell := { cellDefaults with
  domain := ⟨(212650000000000027 / 400000000000000000 : ℚ), (106350000000000011 / 200000000000000000 : ℚ)⟩
  r := (3734093057649 / 6250000000000 : ℚ)
  w := (720463918801 / 500000000000 : ℚ)
  center := (425350000000000049 / 800000000000000000 : ℚ)
  supportValue := (39523881224732027 / 100000000000000000 : ℚ)
  supportSlope := (-17719251319576297 / 10000000000000000 : ℚ)
  oldCenter := (39523881224732027 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1258
  oldLo := (19750000000000001 / 50000000000000000 : ℚ)
  oldHi := (19775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_960]
}

noncomputable def cell_10857 : Cell := { cellDefaults with
  domain := ⟨(106350000000000011 / 200000000000000000 : ℚ), (212750000000000017 / 400000000000000000 : ℚ)⟩
  r := (3734093057649 / 6250000000000 : ℚ)
  w := (720463918801 / 500000000000 : ℚ)
  center := (425450000000000039 / 800000000000000000 : ℚ)
  supportValue := (1975087213617561 / 5000000000000000 : ℚ)
  supportSlope := (-276642932352411 / 156250000000000 : ℚ)
  oldCenter := (1975087213617561 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1258
  oldLo := (19725000000000001 / 50000000000000000 : ℚ)
  oldHi := (19775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_959, piece_960]
}

noncomputable def cell_10858 : Cell := { cellDefaults with
  domain := ⟨(212750000000000017 / 400000000000000000 : ℚ), (53200000000000003 / 100000000000000000 : ℚ)⟩
  r := (3734093057649 / 6250000000000 : ℚ)
  w := (720463918801 / 500000000000 : ℚ)
  center := (425550000000000029 / 800000000000000000 : ℚ)
  supportValue := (986990428079763 / 2500000000000000 : ℚ)
  supportSlope := (-1769294459571923 / 1000000000000000 : ℚ)
  oldCenter := (986990428079763 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1258
  oldLo := (19725000000000001 / 50000000000000000 : ℚ)
  oldHi := (19750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_959]
}

noncomputable def cell_10859 : Cell := { cellDefaults with
  domain := ⟨(53200000000000003 / 100000000000000000 : ℚ), (106425000000000003 / 200000000000000000 : ℚ)⟩
  r := (59713259765731 / 100000000000000 : ℚ)
  w := (14405408878821 / 10000000000000 : ℚ)
  center := (212825000000000009 / 400000000000000000 : ℚ)
  supportValue := (39503774562247207 / 100000000000000000 : ℚ)
  supportSlope := (-8847986752759057 / 5000000000000000 : ℚ)
  oldCenter := (39503774562247207 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1259
  oldLo := (19725000000000001 / 50000000000000000 : ℚ)
  oldHi := (19775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_959, piece_960]
}

noncomputable def cell_10860 : Cell := { cellDefaults with
  domain := ⟨(106425000000000003 / 200000000000000000 : ℚ), (2129 / 4000 : ℚ)⟩
  r := (59713259765731 / 100000000000000 : ℚ)
  w := (14405408878821 / 10000000000000 : ℚ)
  center := (212875000000000003 / 400000000000000000 : ℚ)
  supportValue := (3948165886690769 / 10000000000000000 : ℚ)
  supportSlope := (-69081807769393 / 39062500000000 : ℚ)
  oldCenter := (3948165886690769 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1259
  oldLo := (19725000000000001 / 50000000000000000 : ℚ)
  oldHi := (19750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_959]
}

noncomputable def cell_10861 : Cell := { cellDefaults with
  domain := ⟨(2129 / 4000 : ℚ), (106474999999999997 / 200000000000000000 : ℚ)⟩
  r := (59713259765731 / 100000000000000 : ℚ)
  w := (14405408878821 / 10000000000000 : ℚ)
  center := (212924999999999997 / 400000000000000000 : ℚ)
  supportValue := (19729782395254683 / 50000000000000000 : ℚ)
  supportSlope := (-4416605638891099 / 2500000000000000 : ℚ)
  oldCenter := (19729782395254683 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1259
  oldLo := (19700000000000001 / 50000000000000000 : ℚ)
  oldHi := (19750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_958, piece_959]
}

noncomputable def cell_10862 : Cell := { cellDefaults with
  domain := ⟨(106474999999999997 / 200000000000000000 : ℚ), (53249999999999997 / 100000000000000000 : ℚ)⟩
  r := (59713259765731 / 100000000000000 : ℚ)
  w := (14405408878821 / 10000000000000 : ℚ)
  center := (212974999999999991 / 400000000000000000 : ℚ)
  supportValue := (3943748598396329 / 10000000000000000 : ℚ)
  supportSlope := (-3531750773606103 / 2000000000000000 : ℚ)
  oldCenter := (3943748598396329 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1259
  oldLo := (19700000000000001 / 50000000000000000 : ℚ)
  oldHi := (19725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_958]
}

noncomputable def cell_10863 : Cell := { cellDefaults with
  domain := ⟨(53249999999999997 / 100000000000000000 : ℚ), (106524999999999997 / 200000000000000000 : ℚ)⟩
  r := (29840534953531 / 50000000000000 : ℚ)
  w := (7200774224161 / 5000000000000 : ℚ)
  center := (213024999999999991 / 400000000000000000 : ℚ)
  supportValue := (19730793536556343 / 50000000000000000 : ℚ)
  supportSlope := (-8828779091406609 / 5000000000000000 : ℚ)
  oldCenter := (19730793536556343 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1260
  oldLo := (19725000000000001 / 50000000000000000 : ℚ)
  oldHi := (19750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_959]
}

noncomputable def cell_10864 : Cell := { cellDefaults with
  domain := ⟨(106524999999999997 / 200000000000000000 : ℚ), (2131 / 4000 : ℚ)⟩
  r := (29840534953531 / 50000000000000 : ℚ)
  w := (7200774224161 / 5000000000000 : ℚ)
  center := (213074999999999997 / 400000000000000000 : ℚ)
  supportValue := (9859879925027909 / 25000000000000000 : ℚ)
  supportSlope := (-17650480335349543 / 10000000000000000 : ℚ)
  oldCenter := (9859879925027909 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1260
  oldLo := (19700000000000001 / 50000000000000000 : ℚ)
  oldHi := (19750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_958, piece_959]
}

noncomputable def cell_10865 : Cell := { cellDefaults with
  domain := ⟨(2131 / 4000 : ℚ), (106575000000000003 / 200000000000000000 : ℚ)⟩
  r := (29840534953531 / 50000000000000 : ℚ)
  w := (7200774224161 / 5000000000000 : ℚ)
  center := (213125000000000003 / 400000000000000000 : ℚ)
  supportValue := (1970873416247731 / 5000000000000000 : ℚ)
  supportSlope := (-4407851841902759 / 2500000000000000 : ℚ)
  oldCenter := (1970873416247731 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1260
  oldLo := (19700000000000001 / 50000000000000000 : ℚ)
  oldHi := (19725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_958]
}

noncomputable def cell_10866 : Cell := { cellDefaults with
  domain := ⟨(106575000000000003 / 200000000000000000 : ℚ), (53300000000000003 / 100000000000000000 : ℚ)⟩
  r := (29840534953531 / 50000000000000 : ℚ)
  w := (7200774224161 / 5000000000000 : ℚ)
  center := (213175000000000009 / 400000000000000000 : ℚ)
  supportValue := (3939543782457487 / 10000000000000000 : ℚ)
  supportSlope := (-2202627846803209 / 1250000000000000 : ℚ)
  oldCenter := (3939543782457487 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1260
  oldLo := (19675000000000001 / 50000000000000000 : ℚ)
  oldHi := (19725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_957, piece_958]
}

noncomputable def cell_10867 : Cell := { cellDefaults with
  domain := ⟨(53300000000000003 / 100000000000000000 : ℚ), (106625000000000003 / 200000000000000000 : ℚ)⟩
  r := (59648918760893 / 100000000000000 : ℚ)
  w := (3599424006967 / 2500000000000 : ℚ)
  center := (213225000000000009 / 400000000000000000 : ℚ)
  supportValue := (19709742962370763 / 50000000000000000 : ℚ)
  supportSlope := (-17623429619171187 / 10000000000000000 : ℚ)
  oldCenter := (19709742962370763 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1261
  oldLo := (19700000000000001 / 50000000000000000 : ℚ)
  oldHi := (19725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_958]
}

noncomputable def cell_10868 : Cell := { cellDefaults with
  domain := ⟨(106625000000000003 / 200000000000000000 : ℚ), (2133 / 4000 : ℚ)⟩
  r := (59648918760893 / 100000000000000 : ℚ)
  w := (3599424006967 / 2500000000000 : ℚ)
  center := (213275000000000003 / 400000000000000000 : ℚ)
  supportValue := (3939746683726169 / 10000000000000000 : ℚ)
  supportSlope := (-8805951742708541 / 5000000000000000 : ℚ)
  oldCenter := (3939746683726169 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1261
  oldLo := (19675000000000001 / 50000000000000000 : ℚ)
  oldHi := (19725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_957, piece_958]
}

noncomputable def cell_10869 : Cell := { cellDefaults with
  domain := ⟨(2133 / 4000 : ℚ), (106674999999999997 / 200000000000000000 : ℚ)⟩
  r := (59648918760893 / 100000000000000 : ℚ)
  w := (3599424006967 / 2500000000000 : ℚ)
  center := (213324999999999997 / 400000000000000000 : ℚ)
  supportValue := (7875091597084839 / 20000000000000000 : ℚ)
  supportSlope := (-175973946812501 / 100000000000000 : ℚ)
  oldCenter := (7875091597084839 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1261
  oldLo := (19675000000000001 / 50000000000000000 : ℚ)
  oldHi := (19700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_957]
}

noncomputable def cell_10870 : Cell := { cellDefaults with
  domain := ⟨(106674999999999997 / 200000000000000000 : ℚ), (53349999999999997 / 100000000000000000 : ℚ)⟩
  r := (59648918760893 / 100000000000000 : ℚ)
  w := (3599424006967 / 2500000000000 : ℚ)
  center := (213374999999999991 / 400000000000000000 : ℚ)
  supportValue := (3935347328628367 / 10000000000000000 : ℚ)
  supportSlope := (-8791226610679269 / 5000000000000000 : ℚ)
  oldCenter := (3935347328628367 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1261
  oldHi := (19700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_956, piece_957]
}

noncomputable def cell_10871 : Cell := { cellDefaults with
  domain := ⟨(53349999999999997 / 100000000000000000 : ℚ), (106724999999999997 / 200000000000000000 : ℚ)⟩
  r := (59616806892179 / 100000000000000 : ℚ)
  w := (2878770379763 / 2000000000000 : ℚ)
  center := (213424999999999991 / 400000000000000000 : ℚ)
  supportValue := (984436735489259 / 2500000000000000 : ℚ)
  supportSlope := (-109933999887777 / 62500000000000 : ℚ)
  oldCenter := (984436735489259 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1262
  oldLo := (19675000000000001 / 50000000000000000 : ℚ)
  oldHi := (19700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_957]
}

noncomputable def cell_10872 : Cell := { cellDefaults with
  domain := ⟨(106724999999999997 / 200000000000000000 : ℚ), (427 / 800 : ℚ)⟩
  r := (59616806892179 / 100000000000000 : ℚ)
  w := (2878770379763 / 2000000000000 : ℚ)
  center := (213474999999999997 / 400000000000000000 : ℚ)
  supportValue := (1967774732653473 / 5000000000000000 : ℚ)
  supportSlope := (-4393337507472867 / 2500000000000000 : ℚ)
  oldCenter := (1967774732653473 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1262
  oldHi := (19700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_956, piece_957]
}

noncomputable def cell_10873 : Cell := { cellDefaults with
  domain := ⟨(427 / 800 : ℚ), (106775000000000003 / 200000000000000000 : ℚ)⟩
  r := (59616806892179 / 100000000000000 : ℚ)
  w := (2878770379763 / 2000000000000 : ℚ)
  center := (213525000000000003 / 400000000000000000 : ℚ)
  supportValue := (3933353208465411 / 10000000000000000 : ℚ)
  supportSlope := (-17563523130721517 / 10000000000000000 : ℚ)
  oldCenter := (3933353208465411 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1262
  oldPieces := [piece_956]
}

noncomputable def cell_10874 : Cell := { cellDefaults with
  domain := ⟨(106775000000000003 / 200000000000000000 : ℚ), (53400000000000003 / 100000000000000000 : ℚ)⟩
  r := (59616806892179 / 100000000000000 : ℚ)
  w := (2878770379763 / 2000000000000 : ℚ)
  center := (213575000000000009 / 400000000000000000 : ℚ)
  supportValue := (9827897430048281 / 25000000000000000 : ℚ)
  supportSlope := (-17544241124045739 / 10000000000000000 : ℚ)
  oldCenter := (9827897430048281 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1262
  oldPieces := [piece_956]
}

noncomputable def cell_10875 : Cell := { cellDefaults with
  domain := ⟨(53400000000000003 / 100000000000000000 : ℚ), (213650000000000007 / 400000000000000000 : ℚ)⟩
  r := (5958473370529 / 10000000000000 : ℚ)
  w := (719500794971 / 500000000000 : ℚ)
  center := (427250000000000019 / 800000000000000000 : ℚ)
  supportValue := (9833884582514911 / 25000000000000000 : ℚ)
  supportSlope := (-1097224546884433 / 625000000000000 : ℚ)
  oldCenter := (9833884582514911 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1263
  oldPieces := [piece_956]
}

noncomputable def cell_10876 : Cell := { cellDefaults with
  domain := ⟨(213650000000000007 / 400000000000000000 : ℚ), (106850000000000001 / 200000000000000000 : ℚ)⟩
  r := (5958473370529 / 10000000000000 : ℚ)
  w := (719500794971 / 500000000000 : ℚ)
  center := (427350000000000009 / 800000000000000000 : ℚ)
  supportValue := (19656802934012027 / 50000000000000000 : ℚ)
  supportSlope := (-17536327620446077 / 10000000000000000 : ℚ)
  oldCenter := (19656802934012027 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1263
  oldPieces := [piece_956]
}

noncomputable def cell_10877 : Cell := { cellDefaults with
  domain := ⟨(106850000000000001 / 200000000000000000 : ℚ), (213749999999999997 / 400000000000000000 : ℚ)⟩
  r := (5958473370529 / 10000000000000 : ℚ)
  w := (719500794971 / 500000000000 : ℚ)
  center := (427449999999999999 / 800000000000000000 : ℚ)
  supportValue := (785833828141061 / 2000000000000000 : ℚ)
  supportSlope := (-219103424338751 / 125000000000000 : ℚ)
  oldCenter := (785833828141061 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1263
  oldLo := (19625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_955, piece_956]
}

noncomputable def cell_10878 : Cell := { cellDefaults with
  domain := ⟨(213749999999999997 / 400000000000000000 : ℚ), (26724999999999999 / 50000000000000000 : ℚ)⟩
  r := (5958473370529 / 10000000000000 : ℚ)
  w := (719500794971 / 500000000000 : ℚ)
  center := (427549999999999989 / 800000000000000000 : ℚ)
  supportValue := (3926979119886077 / 10000000000000000 : ℚ)
  supportSlope := (-17510525535453043 / 10000000000000000 : ℚ)
  oldCenter := (3926979119886077 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1263
  oldLo := (19625000000000001 / 50000000000000000 : ℚ)
  oldHi := (19650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_955]
}

noncomputable def cell_10879 : Cell := { cellDefaults with
  domain := ⟨(26724999999999999 / 50000000000000000 : ℚ), (213849999999999997 / 400000000000000000 : ℚ)⟩
  r := (29776349334797 / 50000000000000 : ℚ)
  w := (7193093013171 / 5000000000000 : ℚ)
  center := (427649999999999989 / 800000000000000000 : ℚ)
  supportValue := (785873963872111 / 2000000000000000 : ℚ)
  supportSlope := (-1751920858073677 / 1000000000000000 : ℚ)
  oldCenter := (785873963872111 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1264
  oldLo := (19625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_955, piece_956]
}

noncomputable def cell_10880 : Cell := { cellDefaults with
  domain := ⟨(213849999999999997 / 400000000000000000 : ℚ), (106950000000000001 / 200000000000000000 : ℚ)⟩
  r := (29776349334797 / 50000000000000 : ℚ)
  w := (7193093013171 / 5000000000000 : ℚ)
  center := (427749999999999999 / 800000000000000000 : ℚ)
  supportValue := (19635903926858267 / 50000000000000000 : ℚ)
  supportSlope := (-17502639214502151 / 10000000000000000 : ℚ)
  oldCenter := (19635903926858267 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1264
  oldLo := (19625000000000001 / 50000000000000000 : ℚ)
  oldHi := (19650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_955]
}

noncomputable def cell_10881 : Cell := { cellDefaults with
  domain := ⟨(106950000000000001 / 200000000000000000 : ℚ), (213950000000000007 / 400000000000000000 : ℚ)⟩
  r := (29776349334797 / 50000000000000 : ℚ)
  w := (7193093013171 / 5000000000000 : ℚ)
  center := (427850000000000009 / 800000000000000000 : ℚ)
  supportValue := (1962497073016077 / 5000000000000000 : ℚ)
  supportSlope := (-13991897749753 / 8000000000000 : ℚ)
  oldCenter := (1962497073016077 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1264
  oldLo := (19600000000000001 / 50000000000000000 : ℚ)
  oldHi := (19650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_954, piece_955]
}

noncomputable def cell_10882 : Cell := { cellDefaults with
  domain := ⟨(213950000000000007 / 400000000000000000 : ℚ), (53500000000000003 / 100000000000000000 : ℚ)⟩
  r := (29776349334797 / 50000000000000 : ℚ)
  w := (7193093013171 / 5000000000000 : ℚ)
  center := (427950000000000019 / 800000000000000000 : ℚ)
  supportValue := (4903510402935677 / 12500000000000000 : ℚ)
  supportSlope := (-3495390575172769 / 2000000000000000 : ℚ)
  oldCenter := (4903510402935677 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1264
  oldLo := (19600000000000001 / 50000000000000000 : ℚ)
  oldHi := (19625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_954]
}

noncomputable def cell_10883 : Cell := { cellDefaults with
  domain := ⟨(53500000000000003 / 100000000000000000 : ℚ), (214041899441340789 / 400000000000000000 : ℚ)⟩
  center := (428041899441340801 / 800000000000000000 : ℚ)
  supportValue := (2453356851151749 / 6250000000000000 : ℚ)
  supportSlope := (-8740466189972643 / 5000000000000000 : ℚ)
  oldCenter := (2453356851151749 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1265
  oldLo := (19600000000000001 / 50000000000000000 : ℚ)
  oldHi := (19650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_954, piece_955]
}

noncomputable def cell_10884 : Cell := { cellDefaults with
  domain := ⟨(214041899441340789 / 400000000000000000 : ℚ), (107041899441340783 / 200000000000000000 : ℚ)⟩
  center := (85625139664804471 / 160000000000000000 : ℚ)
  supportValue := (39235372855236367 / 100000000000000000 : ℚ)
  supportSlope := (-3494751533052459 / 2000000000000000 : ℚ)
  oldCenter := (39235372855236367 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1265
  oldLo := (19600000000000001 / 50000000000000000 : ℚ)
  oldHi := (19625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_954]
}

noncomputable def cell_10885 : Cell := { cellDefaults with
  domain := ⟨(107041899441340783 / 200000000000000000 : ℚ), (214125698324022343 / 400000000000000000 : ℚ)⟩
  center := (428209497206703909 / 800000000000000000 : ℚ)
  supportValue := (3921707776265789 / 10000000000000000 : ℚ)
  supportSlope := (-8728836666621329 / 5000000000000000 : ℚ)
  oldCenter := (3921707776265789 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1265
  oldLo := (19600000000000001 / 50000000000000000 : ℚ)
  oldHi := (19625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_954]
}

noncomputable def cell_10886 : Cell := { cellDefaults with
  domain := ⟨(214125698324022343 / 400000000000000000 : ℚ), (2677094972067039 / 5000000000000000 : ℚ)⟩
  center := (428293296089385463 / 800000000000000000 : ℚ)
  supportValue := (3919882604432909 / 10000000000000000 : ℚ)
  supportSlope := (-17448863993593497 / 10000000000000000 : ℚ)
  oldCenter := (3919882604432909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1265
  oldLo := (979050279329609 / 2500000000000000 : ℚ)
  oldHi := (19625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_953, piece_954]
}

noncomputable def cell_10887 : Cell := { cellDefaults with
  domain := ⟨(2677094972067039 / 5000000000000000 : ℚ), (26774999999999999 / 50000000000000000 : ℚ)⟩
  center := (53545949720670389 / 100000000000000000 : ℚ)
  supportValue := (3134607526083 / 8000000000000 : ℚ)
  supportSlope := (-1744013909122209 / 1000000000000000 : ℚ)
  oldCenter := (3134607526083 / 8000000000000 : ℚ)
  newCoefficients := coefficients_1266
  oldLo := (979050279329609 / 2500000000000000 : ℚ)
  oldHi := (19600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_953]
}

noncomputable def cell_10888 : Cell := { cellDefaults with
  domain := ⟨(26774999999999999 / 50000000000000000 : ℚ), (214249999999999997 / 400000000000000000 : ℚ)⟩
  r := (5948874441091 / 10000000000000 : ℚ)
  w := (115028419479 / 80000000000 : ℚ)
  center := (428449999999999989 / 800000000000000000 : ℚ)
  supportValue := (1960513002965849 / 5000000000000000 : ℚ)
  supportSlope := (-8721225580171871 / 5000000000000000 : ℚ)
  oldCenter := (1960513002965849 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1267
  oldLo := (979050279329609 / 2500000000000000 : ℚ)
  oldHi := (19625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_953, piece_954]
}

noncomputable def cell_10889 : Cell := { cellDefaults with
  domain := ⟨(214249999999999997 / 400000000000000000 : ℚ), (107150000000000001 / 200000000000000000 : ℚ)⟩
  r := (5948874441091 / 10000000000000 : ℚ)
  w := (115028419479 / 80000000000 : ℚ)
  center := (428549999999999999 / 800000000000000000 : ℚ)
  supportValue := (7837692189191473 / 20000000000000000 : ℚ)
  supportSlope := (-17435679645057467 / 10000000000000000 : ℚ)
  oldCenter := (7837692189191473 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1267
  oldLo := (979050279329609 / 2500000000000000 : ℚ)
  oldHi := (19600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_953]
}

noncomputable def cell_10890 : Cell := { cellDefaults with
  domain := ⟨(107150000000000001 / 200000000000000000 : ℚ), (214350000000000007 / 400000000000000000 : ℚ)⟩
  r := (5948874441091 / 10000000000000 : ℚ)
  w := (115028419479 / 80000000000 : ℚ)
  center := (428650000000000009 / 800000000000000000 : ℚ)
  supportValue := (3916667831230837 / 10000000000000000 : ℚ)
  supportSlope := (-8708258200845993 / 5000000000000000 : ℚ)
  oldCenter := (3916667831230837 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1267
  oldLo := (39150000000000001 / 100000000000000000 : ℚ)
  oldHi := (19600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_952, piece_953]
}

noncomputable def cell_10891 : Cell := { cellDefaults with
  domain := ⟨(214350000000000007 / 400000000000000000 : ℚ), (53600000000000003 / 100000000000000000 : ℚ)⟩
  r := (5948874441091 / 10000000000000 : ℚ)
  w := (115028419479 / 80000000000 : ℚ)
  center := (428750000000000019 / 800000000000000000 : ℚ)
  supportValue := (2446557238509689 / 6250000000000000 : ℚ)
  supportSlope := (-1740682712418721 / 1000000000000000 : ℚ)
  oldCenter := (2446557238509689 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1267
  oldLo := (39100000000000001 / 100000000000000000 : ℚ)
  oldHi := (979050279329609 / 2500000000000000 : ℚ)
  oldPieces := [piece_951, piece_952]
}

noncomputable def cell_10892 : Cell := { cellDefaults with
  domain := ⟨(53600000000000003 / 100000000000000000 : ℚ), (214450000000000007 / 400000000000000000 : ℚ)⟩
  r := (59456826692457 / 100000000000000 : ℚ)
  w := (14374748017469 / 10000000000000 : ℚ)
  center := (428850000000000019 / 800000000000000000 : ℚ)
  supportValue := (979216570875869 / 2500000000000000 : ℚ)
  supportSlope := (-4352168919515167 / 2500000000000000 : ℚ)
  oldCenter := (979216570875869 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1268
  oldLo := (39150000000000001 / 100000000000000000 : ℚ)
  oldHi := (19600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_952, piece_953]
}

noncomputable def cell_10893 : Cell := { cellDefaults with
  domain := ⟨(214450000000000007 / 400000000000000000 : ℚ), (107250000000000001 / 200000000000000000 : ℚ)⟩
  r := (59456826692457 / 100000000000000 : ℚ)
  w := (14374748017469 / 10000000000000 : ℚ)
  center := (428950000000000009 / 800000000000000000 : ℚ)
  supportValue := (978672789968419 / 2500000000000000 : ℚ)
  supportSlope := (-1739783050863149 / 1000000000000000 : ℚ)
  oldCenter := (978672789968419 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1268
  oldLo := (39100000000000001 / 100000000000000000 : ℚ)
  oldHi := (979050279329609 / 2500000000000000 : ℚ)
  oldPieces := [piece_951, piece_952]
}

noncomputable def cell_10894 : Cell := { cellDefaults with
  domain := ⟨(107250000000000001 / 200000000000000000 : ℚ), (214549999999999997 / 400000000000000000 : ℚ)⟩
  r := (59456826692457 / 100000000000000 : ℚ)
  w := (14374748017469 / 10000000000000 : ℚ)
  center := (429049999999999999 / 800000000000000000 : ℚ)
  supportValue := (9781292635978979 / 25000000000000000 : ℚ)
  supportSlope := (-17383257085603137 / 10000000000000000 : ℚ)
  oldCenter := (9781292635978979 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1268
  oldLo := (39100000000000001 / 100000000000000000 : ℚ)
  oldHi := (39150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_951]
}

noncomputable def cell_10895 : Cell := { cellDefaults with
  domain := ⟨(214549999999999997 / 400000000000000000 : ℚ), (26824999999999999 / 50000000000000000 : ℚ)⟩
  r := (59456826692457 / 100000000000000 : ℚ)
  w := (14374748017469 / 10000000000000 : ℚ)
  center := (429149999999999989 / 800000000000000000 : ℚ)
  supportValue := (3910345339229719 / 10000000000000000 : ℚ)
  supportSlope := (-542767987328273 / 312500000000000 : ℚ)
  oldCenter := (3910345339229719 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1268
  oldLo := (39050000000000001 / 100000000000000000 : ℚ)
  oldHi := (39150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_950, piece_951]
}

noncomputable def cell_10896 : Cell := { cellDefaults with
  domain := ⟨(26824999999999999 / 50000000000000000 : ℚ), (214649999999999997 / 400000000000000000 : ℚ)⟩
  r := (14856236516983 / 25000000000000 : ℚ)
  w := (14370952425963 / 10000000000000 : ℚ)
  center := (429249999999999989 / 800000000000000000 : ℚ)
  supportValue := (1956357463402627 / 5000000000000000 : ℚ)
  supportSlope := (-8687719812948933 / 5000000000000000 : ℚ)
  oldCenter := (1956357463402627 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1269
  oldLo := (39100000000000001 / 100000000000000000 : ℚ)
  oldHi := (39150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_951]
}

noncomputable def cell_10897 : Cell := { cellDefaults with
  domain := ⟨(214649999999999997 / 400000000000000000 : ℚ), (107350000000000001 / 200000000000000000 : ℚ)⟩
  r := (14856236516983 / 25000000000000 : ℚ)
  w := (14370952425963 / 10000000000000 : ℚ)
  center := (429349999999999999 / 800000000000000000 : ℚ)
  supportValue := (19552720938985013 / 50000000000000000 : ℚ)
  supportSlope := (-1735959406706837 / 1000000000000000 : ℚ)
  oldCenter := (19552720938985013 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1269
  oldLo := (39050000000000001 / 100000000000000000 : ℚ)
  oldHi := (39150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_950, piece_951]
}

noncomputable def cell_10898 : Cell := { cellDefaults with
  domain := ⟨(107350000000000001 / 200000000000000000 : ℚ), (214750000000000007 / 400000000000000000 : ℚ)⟩
  r := (14856236516983 / 25000000000000 : ℚ)
  w := (14370952425963 / 10000000000000 : ℚ)
  center := (429450000000000009 / 800000000000000000 : ℚ)
  supportValue := (3908374624619571 / 10000000000000000 : ℚ)
  supportSlope := (-17350136139880277 / 10000000000000000 : ℚ)
  oldCenter := (3908374624619571 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1269
  oldLo := (39050000000000001 / 100000000000000000 : ℚ)
  oldHi := (39100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_950]
}

noncomputable def cell_10899 : Cell := { cellDefaults with
  domain := ⟨(214750000000000007 / 400000000000000000 : ℚ), (53700000000000003 / 100000000000000000 : ℚ)⟩
  r := (14856236516983 / 25000000000000 : ℚ)
  w := (14370952425963 / 10000000000000 : ℚ)
  center := (429550000000000019 / 800000000000000000 : ℚ)
  supportValue := (3906207048953199 / 10000000000000000 : ℚ)
  supportSlope := (-3466211209413581 / 2000000000000000 : ℚ)
  oldCenter := (3906207048953199 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1269
  oldLo := (39050000000000001 / 100000000000000000 : ℚ)
  oldHi := (39100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_950]
}

theorem check_10850 : cell_10850.check = true := by
  decide +kernel

theorem check_10851 : cell_10851.check = true := by
  decide +kernel

theorem check_10852 : cell_10852.check = true := by
  decide +kernel

theorem check_10853 : cell_10853.check = true := by
  decide +kernel

theorem check_10854 : cell_10854.check = true := by
  decide +kernel

theorem check_10855 : cell_10855.check = true := by
  decide +kernel

theorem check_10856 : cell_10856.check = true := by
  decide +kernel

theorem check_10857 : cell_10857.check = true := by
  decide +kernel

theorem check_10858 : cell_10858.check = true := by
  decide +kernel

theorem check_10859 : cell_10859.check = true := by
  decide +kernel

theorem check_10860 : cell_10860.check = true := by
  decide +kernel

theorem check_10861 : cell_10861.check = true := by
  decide +kernel

theorem check_10862 : cell_10862.check = true := by
  decide +kernel

theorem check_10863 : cell_10863.check = true := by
  decide +kernel

theorem check_10864 : cell_10864.check = true := by
  decide +kernel

theorem check_10865 : cell_10865.check = true := by
  decide +kernel

theorem check_10866 : cell_10866.check = true := by
  decide +kernel

theorem check_10867 : cell_10867.check = true := by
  decide +kernel

theorem check_10868 : cell_10868.check = true := by
  decide +kernel

theorem check_10869 : cell_10869.check = true := by
  decide +kernel

theorem check_10870 : cell_10870.check = true := by
  decide +kernel

theorem check_10871 : cell_10871.check = true := by
  decide +kernel

theorem check_10872 : cell_10872.check = true := by
  decide +kernel

theorem check_10873 : cell_10873.check = true := by
  decide +kernel

theorem check_10874 : cell_10874.check = true := by
  decide +kernel

theorem check_10875 : cell_10875.check = true := by
  decide +kernel

theorem check_10876 : cell_10876.check = true := by
  decide +kernel

theorem check_10877 : cell_10877.check = true := by
  decide +kernel

theorem check_10878 : cell_10878.check = true := by
  decide +kernel

theorem check_10879 : cell_10879.check = true := by
  decide +kernel

theorem check_10880 : cell_10880.check = true := by
  decide +kernel

theorem check_10881 : cell_10881.check = true := by
  decide +kernel

theorem check_10882 : cell_10882.check = true := by
  decide +kernel

theorem check_10883 : cell_10883.check = true := by
  decide +kernel

theorem check_10884 : cell_10884.check = true := by
  decide +kernel

theorem check_10885 : cell_10885.check = true := by
  decide +kernel

theorem check_10886 : cell_10886.check = true := by
  decide +kernel

theorem check_10887 : cell_10887.check = true := by
  decide +kernel

theorem check_10888 : cell_10888.check = true := by
  decide +kernel

theorem check_10889 : cell_10889.check = true := by
  decide +kernel

theorem check_10890 : cell_10890.check = true := by
  decide +kernel

theorem check_10891 : cell_10891.check = true := by
  decide +kernel

theorem check_10892 : cell_10892.check = true := by
  decide +kernel

theorem check_10893 : cell_10893.check = true := by
  decide +kernel

theorem check_10894 : cell_10894.check = true := by
  decide +kernel

theorem check_10895 : cell_10895.check = true := by
  decide +kernel

theorem check_10896 : cell_10896.check = true := by
  decide +kernel

theorem check_10897 : cell_10897.check = true := by
  decide +kernel

theorem check_10898 : cell_10898.check = true := by
  decide +kernel

theorem check_10899 : cell_10899.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_10850, cell_10851, cell_10852, cell_10853, cell_10854, cell_10855, cell_10856, cell_10857, cell_10858, cell_10859, cell_10860, cell_10861, cell_10862, cell_10863, cell_10864, cell_10865, cell_10866, cell_10867, cell_10868, cell_10869, cell_10870, cell_10871, cell_10872, cell_10873, cell_10874, cell_10875, cell_10876, cell_10877, cell_10878, cell_10879, cell_10880, cell_10881, cell_10882, cell_10883, cell_10884, cell_10885, cell_10886, cell_10887, cell_10888, cell_10889, cell_10890, cell_10891, cell_10892, cell_10893, cell_10894, cell_10895, cell_10896, cell_10897, cell_10898, cell_10899]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10850, check_10851, check_10852, check_10853, check_10854, check_10855, check_10856, check_10857, check_10858, check_10859, check_10860, check_10861, check_10862, check_10863, check_10864, check_10865, check_10866, check_10867, check_10868, check_10869, check_10870, check_10871, check_10872, check_10873, check_10874, check_10875, check_10876, check_10877, check_10878, check_10879, check_10880, check_10881, check_10882, check_10883, check_10884, check_10885, check_10886, check_10887, check_10888, check_10889, check_10890, check_10891, check_10892, check_10893, check_10894, check_10895, check_10896, check_10897, check_10898, check_10899, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0217

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0217
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0217
open AnalyticBounds.ExpressionCertificate

theorem linked_10850 : Linked cell_10850 pieces := by
  link_source cell_10850 with piece_1256 using piece_1256_mem, piece_961_mem

theorem linked_10851 : Linked cell_10851 pieces := by
  link_source cell_10851 with piece_1257 using piece_1257_mem, piece_961_mem

theorem linked_10852 : Linked cell_10852 pieces := by
  link_source cell_10852 with piece_1257 using piece_1257_mem, piece_961_mem

theorem linked_10853 : Linked cell_10853 pieces := by
  link_source cell_10853 with piece_1257 using piece_1257_mem, ⟨piece_960_mem, piece_961_mem⟩

theorem linked_10854 : Linked cell_10854 pieces := by
  link_source cell_10854 with piece_1257 using piece_1257_mem, piece_960_mem

theorem linked_10855 : Linked cell_10855 pieces := by
  link_source cell_10855 with piece_1258 using piece_1258_mem, ⟨piece_960_mem, piece_961_mem⟩

theorem linked_10856 : Linked cell_10856 pieces := by
  link_source cell_10856 with piece_1258 using piece_1258_mem, piece_960_mem

theorem linked_10857 : Linked cell_10857 pieces := by
  link_source cell_10857 with piece_1258 using piece_1258_mem, ⟨piece_959_mem, piece_960_mem⟩

theorem linked_10858 : Linked cell_10858 pieces := by
  link_source cell_10858 with piece_1258 using piece_1258_mem, piece_959_mem

theorem linked_10859 : Linked cell_10859 pieces := by
  link_source cell_10859 with piece_1259 using piece_1259_mem, ⟨piece_959_mem, piece_960_mem⟩

theorem linked_10860 : Linked cell_10860 pieces := by
  link_source cell_10860 with piece_1259 using piece_1259_mem, piece_959_mem

theorem linked_10861 : Linked cell_10861 pieces := by
  link_source cell_10861 with piece_1259 using piece_1259_mem, ⟨piece_958_mem, piece_959_mem⟩

theorem linked_10862 : Linked cell_10862 pieces := by
  link_source cell_10862 with piece_1259 using piece_1259_mem, piece_958_mem

theorem linked_10863 : Linked cell_10863 pieces := by
  link_source cell_10863 with piece_1260 using piece_1260_mem, piece_959_mem

theorem linked_10864 : Linked cell_10864 pieces := by
  link_source cell_10864 with piece_1260 using piece_1260_mem, ⟨piece_958_mem, piece_959_mem⟩

theorem linked_10865 : Linked cell_10865 pieces := by
  link_source cell_10865 with piece_1260 using piece_1260_mem, piece_958_mem

theorem linked_10866 : Linked cell_10866 pieces := by
  link_source cell_10866 with piece_1260 using piece_1260_mem, ⟨piece_957_mem, piece_958_mem⟩

theorem linked_10867 : Linked cell_10867 pieces := by
  link_source cell_10867 with piece_1261 using piece_1261_mem, piece_958_mem

theorem linked_10868 : Linked cell_10868 pieces := by
  link_source cell_10868 with piece_1261 using piece_1261_mem, ⟨piece_957_mem, piece_958_mem⟩

theorem linked_10869 : Linked cell_10869 pieces := by
  link_source cell_10869 with piece_1261 using piece_1261_mem, piece_957_mem

theorem linked_10870 : Linked cell_10870 pieces := by
  link_source cell_10870 with piece_1261 using piece_1261_mem, ⟨piece_956_mem, piece_957_mem⟩

theorem linked_10871 : Linked cell_10871 pieces := by
  link_source cell_10871 with piece_1262 using piece_1262_mem, piece_957_mem

theorem linked_10872 : Linked cell_10872 pieces := by
  link_source cell_10872 with piece_1262 using piece_1262_mem, ⟨piece_956_mem, piece_957_mem⟩

theorem linked_10873 : Linked cell_10873 pieces := by
  link_source cell_10873 with piece_1262 using piece_1262_mem, piece_956_mem

theorem linked_10874 : Linked cell_10874 pieces := by
  link_source cell_10874 with piece_1262 using piece_1262_mem, piece_956_mem

theorem linked_10875 : Linked cell_10875 pieces := by
  link_source cell_10875 with piece_1263 using piece_1263_mem, piece_956_mem

theorem linked_10876 : Linked cell_10876 pieces := by
  link_source cell_10876 with piece_1263 using piece_1263_mem, piece_956_mem

theorem linked_10877 : Linked cell_10877 pieces := by
  link_source cell_10877 with piece_1263 using piece_1263_mem, ⟨piece_955_mem, piece_956_mem⟩

theorem linked_10878 : Linked cell_10878 pieces := by
  link_source cell_10878 with piece_1263 using piece_1263_mem, piece_955_mem

theorem linked_10879 : Linked cell_10879 pieces := by
  link_source cell_10879 with piece_1264 using piece_1264_mem, ⟨piece_955_mem, piece_956_mem⟩

theorem linked_10880 : Linked cell_10880 pieces := by
  link_source cell_10880 with piece_1264 using piece_1264_mem, piece_955_mem

theorem linked_10881 : Linked cell_10881 pieces := by
  link_source cell_10881 with piece_1264 using piece_1264_mem, ⟨piece_954_mem, piece_955_mem⟩

theorem linked_10882 : Linked cell_10882 pieces := by
  link_source cell_10882 with piece_1264 using piece_1264_mem, piece_954_mem

theorem linked_10883 : Linked cell_10883 pieces := by
  link_source cell_10883 with piece_1265 using piece_1265_mem, ⟨piece_954_mem, piece_955_mem⟩

theorem linked_10884 : Linked cell_10884 pieces := by
  link_source cell_10884 with piece_1265 using piece_1265_mem, piece_954_mem

theorem linked_10885 : Linked cell_10885 pieces := by
  link_source cell_10885 with piece_1265 using piece_1265_mem, piece_954_mem

theorem linked_10886 : Linked cell_10886 pieces := by
  link_source cell_10886 with piece_1265 using piece_1265_mem, ⟨piece_953_mem, piece_954_mem⟩

theorem linked_10887 : Linked cell_10887 pieces := by
  link_source cell_10887 with piece_1266 using piece_1266_mem, piece_953_mem

theorem linked_10888 : Linked cell_10888 pieces := by
  link_source cell_10888 with piece_1267 using piece_1267_mem, ⟨piece_953_mem, piece_954_mem⟩

theorem linked_10889 : Linked cell_10889 pieces := by
  link_source cell_10889 with piece_1267 using piece_1267_mem, piece_953_mem

theorem linked_10890 : Linked cell_10890 pieces := by
  link_source cell_10890 with piece_1267 using piece_1267_mem, ⟨piece_952_mem, piece_953_mem⟩

theorem linked_10891 : Linked cell_10891 pieces := by
  link_source cell_10891 with piece_1267 using piece_1267_mem, ⟨piece_951_mem, piece_952_mem⟩

theorem linked_10892 : Linked cell_10892 pieces := by
  link_source cell_10892 with piece_1268 using piece_1268_mem, ⟨piece_952_mem, piece_953_mem⟩

theorem linked_10893 : Linked cell_10893 pieces := by
  link_source cell_10893 with piece_1268 using piece_1268_mem, ⟨piece_951_mem, piece_952_mem⟩

theorem linked_10894 : Linked cell_10894 pieces := by
  link_source cell_10894 with piece_1268 using piece_1268_mem, piece_951_mem

theorem linked_10895 : Linked cell_10895 pieces := by
  link_source cell_10895 with piece_1268 using piece_1268_mem, ⟨piece_950_mem, piece_951_mem⟩

theorem linked_10896 : Linked cell_10896 pieces := by
  link_source cell_10896 with piece_1269 using piece_1269_mem, piece_951_mem

theorem linked_10897 : Linked cell_10897 pieces := by
  link_source cell_10897 with piece_1269 using piece_1269_mem, ⟨piece_950_mem, piece_951_mem⟩

theorem linked_10898 : Linked cell_10898 pieces := by
  link_source cell_10898 with piece_1269 using piece_1269_mem, piece_950_mem

theorem linked_10899 : Linked cell_10899 pieces := by
  link_source cell_10899 with piece_1269 using piece_1269_mem, piece_950_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0217.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0217.cells,List.forall_mem_cons]
  exact ⟨linked_10850, linked_10851, linked_10852, linked_10853, linked_10854, linked_10855, linked_10856, linked_10857, linked_10858, linked_10859, linked_10860, linked_10861, linked_10862, linked_10863, linked_10864, linked_10865, linked_10866, linked_10867, linked_10868, linked_10869, linked_10870, linked_10871, linked_10872, linked_10873, linked_10874, linked_10875, linked_10876, linked_10877, linked_10878, linked_10879, linked_10880, linked_10881, linked_10882, linked_10883, linked_10884, linked_10885, linked_10886, linked_10887, linked_10888, linked_10889, linked_10890, linked_10891, linked_10892, linked_10893, linked_10894, linked_10895, linked_10896, linked_10897, linked_10898, linked_10899, by simp⟩

theorem covered : covers (212350000000000017 / 400000000000000000 : ℚ) (53700000000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0217.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0217
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0218
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(53700000000000003 / 100000000000000000 : ℚ), (214850000000000007 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (59171277912251 / 100000000000000 : ℚ)
  w := (14340861782909 / 10000000000000 : ℚ)
  center := (429650000000000019 / 800000000000000000 : ℚ)
  supportValue := (390857237456459 / 1000000000000000 : ℚ)
  supportSlope := (-8671172520783067 / 5000000000000000 : ℚ)
  oldCenter := (390857237456459 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1270
  oldLo := (38800000000000001 / 100000000000000000 : ℚ)
  oldHi := (38850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_945]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_10900 : Cell := { cellDefaults with
  r := (29696552053589 / 50000000000000 : ℚ)
  w := (3591790797947 / 2500000000000 : ℚ)
  oldLo := (39050000000000001 / 100000000000000000 : ℚ)
  oldHi := (39100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_950]
}

noncomputable def cell_10901 : Cell := { cellDefaults with
  domain := ⟨(214850000000000007 / 400000000000000000 : ℚ), (107450000000000001 / 200000000000000000 : ℚ)⟩
  r := (29696552053589 / 50000000000000 : ℚ)
  w := (3591790797947 / 2500000000000 : ℚ)
  center := (429750000000000009 / 800000000000000000 : ℚ)
  supportValue := (1953202885879763 / 5000000000000000 : ℚ)
  supportSlope := (-4330820340246333 / 2500000000000000 : ℚ)
  oldCenter := (1953202885879763 / 5000000000000000 : ℚ)
  oldLo := (39050000000000001 / 100000000000000000 : ℚ)
  oldHi := (39100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_950]
}

noncomputable def cell_10902 : Cell := { cellDefaults with
  domain := ⟨(107450000000000001 / 200000000000000000 : ℚ), (214949999999999997 / 400000000000000000 : ℚ)⟩
  r := (29696552053589 / 50000000000000 : ℚ)
  w := (3591790797947 / 2500000000000 : ℚ)
  center := (429849999999999999 / 800000000000000000 : ℚ)
  supportValue := (9760602449083329 / 25000000000000000 : ℚ)
  supportSlope := (-4328812435375073 / 2500000000000000 : ℚ)
  oldCenter := (9760602449083329 / 25000000000000000 : ℚ)
  oldLo := (39000000000000001 / 100000000000000000 : ℚ)
  oldHi := (39100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_949, piece_950]
}

noncomputable def cell_10903 : Cell := { cellDefaults with
  domain := ⟨(214949999999999997 / 400000000000000000 : ℚ), (26874999999999999 / 50000000000000000 : ℚ)⟩
  r := (29696552053589 / 50000000000000 : ℚ)
  w := (3591790797947 / 2500000000000 : ℚ)
  center := (429949999999999989 / 800000000000000000 : ℚ)
  supportValue := (19510387627194403 / 50000000000000000 : ℚ)
  supportSlope := (-1729808959573371 / 1000000000000000 : ℚ)
  oldCenter := (19510387627194403 / 50000000000000000 : ℚ)
  oldLo := (39000000000000001 / 100000000000000000 : ℚ)
  oldHi := (39050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_949]
}

noncomputable def cell_10904 : Cell := { cellDefaults with
  domain := ⟨(26874999999999999 / 50000000000000000 : ℚ), (215049999999999997 / 400000000000000000 : ℚ)⟩
  r := (29680649725109 / 50000000000000 : ℚ)
  w := (3590845332111 / 2500000000000 : ℚ)
  center := (430049999999999989 / 800000000000000000 : ℚ)
  supportValue := (1952219241557467 / 5000000000000000 : ℚ)
  supportSlope := (-865315286793147 / 500000000000000 : ℚ)
  oldCenter := (1952219241557467 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1271
  oldLo := (39000000000000001 / 100000000000000000 : ℚ)
  oldHi := (39100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_949, piece_950]
}

noncomputable def cell_10905 : Cell := { cellDefaults with
  domain := ⟨(215049999999999997 / 400000000000000000 : ℚ), (107550000000000001 / 200000000000000000 : ℚ)⟩
  r := (29680649725109 / 50000000000000 : ℚ)
  w := (3590845332111 / 2500000000000 : ℚ)
  center := (430149999999999999 / 800000000000000000 : ℚ)
  supportValue := (3902275998645147 / 10000000000000000 : ℚ)
  supportSlope := (-4322584997386703 / 2500000000000000 : ℚ)
  oldCenter := (3902275998645147 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1271
  oldLo := (39000000000000001 / 100000000000000000 : ℚ)
  oldHi := (39050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_949]
}

noncomputable def cell_10906 : Cell := { cellDefaults with
  domain := ⟨(107550000000000001 / 200000000000000000 : ℚ), (215150000000000007 / 400000000000000000 : ℚ)⟩
  r := (29680649725109 / 50000000000000 : ℚ)
  w := (3590845332111 / 2500000000000 : ℚ)
  center := (430250000000000009 / 800000000000000000 : ℚ)
  supportValue := (3900115891772719 / 10000000000000000 : ℚ)
  supportSlope := (-69108601305061 / 40000000000000 : ℚ)
  oldCenter := (3900115891772719 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1271
  oldLo := (38950000000000001 / 100000000000000000 : ℚ)
  oldHi := (39050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_948, piece_949]
}

noncomputable def cell_10907 : Cell := { cellDefaults with
  domain := ⟨(215150000000000007 / 400000000000000000 : ℚ), (53800000000000003 / 100000000000000000 : ℚ)⟩
  r := (29680649725109 / 50000000000000 : ℚ)
  w := (3590845332111 / 2500000000000 : ℚ)
  center := (430350000000000019 / 800000000000000000 : ℚ)
  supportValue := (3897956624804649 / 10000000000000000 : ℚ)
  supportSlope := (-17265270396620787 / 10000000000000000 : ℚ)
  oldCenter := (3897956624804649 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1271
  oldLo := (38950000000000001 / 100000000000000000 : ℚ)
  oldHi := (39000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_948]
}

noncomputable def cell_10908 : Cell := { cellDefaults with
  domain := ⟨(53800000000000003 / 100000000000000000 : ℚ), (215250000000000007 / 400000000000000000 : ℚ)⟩
  r := (59329534441809 / 100000000000000 : ℚ)
  w := (897475504057 / 625000000000 : ℚ)
  center := (430450000000000019 / 800000000000000000 : ℚ)
  supportValue := (1950156204706491 / 5000000000000000 : ℚ)
  supportSlope := (-2158527571098017 / 1250000000000000 : ℚ)
  oldCenter := (1950156204706491 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1272
  oldLo := (38950000000000001 / 100000000000000000 : ℚ)
  oldHi := (39050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_948, piece_949]
}

noncomputable def cell_10909 : Cell := { cellDefaults with
  domain := ⟨(215250000000000007 / 400000000000000000 : ℚ), (107650000000000001 / 200000000000000000 : ℚ)⟩
  r := (59329534441809 / 100000000000000 : ℚ)
  w := (897475504057 / 625000000000 : ℚ)
  center := (430550000000000009 / 800000000000000000 : ℚ)
  supportValue := (487269282162581 / 1250000000000000 : ℚ)
  supportSlope := (-862877083081501 / 500000000000000 : ℚ)
  oldCenter := (487269282162581 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1272
  oldLo := (38950000000000001 / 100000000000000000 : ℚ)
  oldHi := (39000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_948]
}

noncomputable def cell_10910 : Cell := { cellDefaults with
  domain := ⟨(107650000000000001 / 200000000000000000 : ℚ), (215349999999999997 / 400000000000000000 : ℚ)⟩
  r := (59329534441809 / 100000000000000 : ℚ)
  w := (897475504057 / 625000000000 : ℚ)
  center := (430649999999999999 / 800000000000000000 : ℚ)
  supportValue := (973999562376359 / 2500000000000000 : ℚ)
  supportSlope := (-8619532222358979 / 5000000000000000 : ℚ)
  oldCenter := (973999562376359 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1272
  oldLo := (38900000000000001 / 100000000000000000 : ℚ)
  oldHi := (39000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_947, piece_948]
}

noncomputable def cell_10911 : Cell := { cellDefaults with
  domain := ⟨(215349999999999997 / 400000000000000000 : ℚ), (26924999999999999 / 50000000000000000 : ℚ)⟩
  r := (59329534441809 / 100000000000000 : ℚ)
  w := (897475504057 / 625000000000 : ℚ)
  center := (430749999999999989 / 800000000000000000 : ℚ)
  supportValue := (155753749473317 / 400000000000000 : ℚ)
  supportSlope := (-1077036673625239 / 625000000000000 : ℚ)
  oldCenter := (155753749473317 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1272
  oldLo := (38900000000000001 / 100000000000000000 : ℚ)
  oldHi := (38950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_947]
}

noncomputable def cell_10912 : Cell := { cellDefaults with
  domain := ⟨(26924999999999999 / 50000000000000000 : ℚ), (215449999999999997 / 400000000000000000 : ℚ)⟩
  r := (59297806157023 / 100000000000000 : ℚ)
  w := (2871168592989 / 2000000000000 : ℚ)
  center := (430849999999999989 / 800000000000000000 : ℚ)
  supportValue := (77923887123149 / 200000000000000 : ℚ)
  supportSlope := (-8615418932386403 / 5000000000000000 : ℚ)
  oldCenter := (77923887123149 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1273
  oldLo := (38950000000000001 / 100000000000000000 : ℚ)
  oldHi := (39000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_948]
}

noncomputable def cell_10913 : Cell := { cellDefaults with
  domain := ⟨(215449999999999997 / 400000000000000000 : ℚ), (107750000000000001 / 200000000000000000 : ℚ)⟩
  r := (59297806157023 / 100000000000000 : ℚ)
  w := (2871168592989 / 2000000000000 : ℚ)
  center := (430949999999999999 / 800000000000000000 : ℚ)
  supportValue := (7788081912851249 / 20000000000000000 : ℚ)
  supportSlope := (-3444838724394483 / 2000000000000000 : ℚ)
  oldCenter := (7788081912851249 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1273
  oldLo := (38900000000000001 / 100000000000000000 : ℚ)
  oldHi := (39000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_947, piece_948]
}

noncomputable def cell_10914 : Cell := { cellDefaults with
  domain := ⟨(107750000000000001 / 200000000000000000 : ℚ), (215550000000000007 / 400000000000000000 : ℚ)⟩
  r := (59297806157023 / 100000000000000 : ℚ)
  w := (2871168592989 / 2000000000000 : ℚ)
  center := (431050000000000009 / 800000000000000000 : ℚ)
  supportValue := (9729722576185959 / 25000000000000000 : ℚ)
  supportSlope := (-2150739472449377 / 1250000000000000 : ℚ)
  oldCenter := (9729722576185959 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1273
  oldLo := (38900000000000001 / 100000000000000000 : ℚ)
  oldHi := (38950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_947]
}

noncomputable def cell_10915 : Cell := { cellDefaults with
  domain := ⟨(215550000000000007 / 400000000000000000 : ℚ), (53900000000000003 / 100000000000000000 : ℚ)⟩
  r := (59297806157023 / 100000000000000 : ℚ)
  w := (2871168592989 / 2000000000000 : ℚ)
  center := (431150000000000019 / 800000000000000000 : ℚ)
  supportValue := (3889739270544263 / 10000000000000000 : ℚ)
  supportSlope := (-4298779681132917 / 2500000000000000 : ℚ)
  oldCenter := (3889739270544263 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1273
  oldLo := (38850000000000001 / 100000000000000000 : ℚ)
  oldHi := (38950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_946, piece_947]
}

noncomputable def cell_10916 : Cell := { cellDefaults with
  domain := ⟨(53900000000000003 / 100000000000000000 : ℚ), (215650000000000007 / 400000000000000000 : ℚ)⟩
  r := (7408264703831 / 12500000000000 : ℚ)
  w := (574083476671 / 400000000000 : ℚ)
  center := (431250000000000019 / 800000000000000000 : ℚ)
  supportValue := (9730210369701739 / 25000000000000000 : ℚ)
  supportSlope := (-1719820856348869 / 1000000000000000 : ℚ)
  oldCenter := (9730210369701739 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1274
  oldLo := (38900000000000001 / 100000000000000000 : ℚ)
  oldHi := (38950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_947]
}

noncomputable def cell_10917 : Cell := { cellDefaults with
  domain := ⟨(215650000000000007 / 400000000000000000 : ℚ), (107850000000000001 / 200000000000000000 : ℚ)⟩
  r := (7408264703831 / 12500000000000 : ℚ)
  w := (574083476671 / 400000000000 : ℚ)
  center := (431350000000000009 / 800000000000000000 : ℚ)
  supportValue := (1899382567917 / 4882812500000 : ℚ)
  supportSlope := (-8593120173903983 / 5000000000000000 : ℚ)
  oldCenter := (1899382567917 / 4882812500000 : ℚ)
  newCoefficients := coefficients_1274
  oldLo := (38850000000000001 / 100000000000000000 : ℚ)
  oldHi := (38950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_946, piece_947]
}

noncomputable def cell_10918 : Cell := { cellDefaults with
  domain := ⟨(107850000000000001 / 200000000000000000 : ℚ), (215749999999999997 / 400000000000000000 : ℚ)⟩
  r := (7408264703831 / 12500000000000 : ℚ)
  w := (574083476671 / 400000000000 : ℚ)
  center := (431449999999999999 / 800000000000000000 : ℚ)
  supportValue := (2429867273543879 / 6250000000000000 : ℚ)
  supportSlope := (-17173403120260329 / 10000000000000000 : ℚ)
  oldCenter := (2429867273543879 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1274
  oldLo := (38850000000000001 / 100000000000000000 : ℚ)
  oldHi := (38900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_946]
}

noncomputable def cell_10919 : Cell := { cellDefaults with
  domain := ⟨(215749999999999997 / 400000000000000000 : ℚ), (26974999999999999 / 50000000000000000 : ℚ)⟩
  r := (7408264703831 / 12500000000000 : ℚ)
  w := (574083476671 / 400000000000 : ℚ)
  center := (431549999999999989 / 800000000000000000 : ℚ)
  supportValue := (3885642141995889 / 10000000000000000 : ℚ)
  supportSlope := (-17157156439814907 / 10000000000000000 : ℚ)
  oldCenter := (3885642141995889 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1274
  oldHi := (38900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_945, piece_946]
}

noncomputable def cell_10920 : Cell := { cellDefaults with
  domain := ⟨(26974999999999999 / 50000000000000000 : ℚ), (107924999999999999 / 200000000000000000 : ℚ)⟩
  r := (14808616659857 / 25000000000000 : ℚ)
  w := (14348338026673 / 10000000000000 : ℚ)
  center := (43164999999999999 / 80000000000000000 : ℚ)
  supportValue := (1943991246554209 / 5000000000000000 : ℚ)
  supportSlope := (-4291430206406251 / 2500000000000000 : ℚ)
  oldCenter := (1943991246554209 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1275
  oldLo := (38850000000000001 / 100000000000000000 : ℚ)
  oldHi := (38900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_946]
}

noncomputable def cell_10921 : Cell := { cellDefaults with
  domain := ⟨(107924999999999999 / 200000000000000000 : ℚ), (53975000000000001 / 100000000000000000 : ℚ)⟩
  r := (14808616659857 / 25000000000000 : ℚ)
  w := (14348338026673 / 10000000000000 : ℚ)
  center := (215875000000000001 / 400000000000000000 : ℚ)
  supportValue := (3885837956714661 / 10000000000000000 : ℚ)
  supportSlope := (-17148292623641201 / 10000000000000000 : ℚ)
  oldCenter := (3885837956714661 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1275
  oldHi := (38900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_945, piece_946]
}

noncomputable def cell_10922 : Cell := { cellDefaults with
  domain := ⟨(53975000000000001 / 100000000000000000 : ℚ), (21595000000000001 / 40000000000000000 : ℚ)⟩
  r := (14808616659857 / 25000000000000 : ℚ)
  w := (14348338026673 / 10000000000000 : ℚ)
  center := (215925000000000007 / 400000000000000000 : ℚ)
  supportValue := (485461847478531 / 1250000000000000 : ℚ)
  supportSlope := (-3428206847899717 / 2000000000000000 : ℚ)
  oldCenter := (485461847478531 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1275
  oldPieces := [piece_945]
}

noncomputable def cell_10923 : Cell := { cellDefaults with
  domain := ⟨(21595000000000001 / 40000000000000000 : ℚ), (13500000000000001 / 25000000000000000 : ℚ)⟩
  r := (14808616659857 / 25000000000000 : ℚ)
  w := (14348338026673 / 10000000000000 : ℚ)
  center := (215975000000000013 / 400000000000000000 : ℚ)
  supportValue := (3881553330148053 / 10000000000000000 : ℚ)
  supportSlope := (-17122142584840183 / 10000000000000000 : ℚ)
  oldCenter := (3881553330148053 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1275
  oldPieces := [piece_945]
}

noncomputable def cell_10924 : Cell := { cellDefaults with
  domain := ⟨(13500000000000001 / 25000000000000000 : ℚ), (21605000000000001 / 40000000000000000 : ℚ)⟩
  r := (14800713310097 / 25000000000000 : ℚ)
  w := (573783823807 / 400000000000 : ℚ)
  center := (216025000000000013 / 400000000000000000 : ℚ)
  supportValue := (19419447683467547 / 50000000000000000 : ℚ)
  supportSlope := (-856668951534903 / 500000000000000 : ℚ)
  oldCenter := (19419447683467547 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1276
  oldPieces := [piece_945]
}

noncomputable def cell_10925 : Cell := { cellDefaults with
  domain := ⟨(21605000000000001 / 40000000000000000 : ℚ), (54025000000000001 / 100000000000000000 : ℚ)⟩
  r := (14800713310097 / 25000000000000 : ℚ)
  w := (573783823807 / 400000000000 : ℚ)
  center := (216075000000000007 / 400000000000000000 : ℚ)
  supportValue := (1940874521455461 / 5000000000000000 : ℚ)
  supportSlope := (-342290068569403 / 200000000000000 : ℚ)
  oldCenter := (1940874521455461 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1276
  oldPieces := [piece_945]
}

noncomputable def cell_10926 : Cell := { cellDefaults with
  domain := ⟨(54025000000000001 / 100000000000000000 : ℚ), (108074999999999999 / 200000000000000000 : ℚ)⟩
  r := (14800713310097 / 25000000000000 : ℚ)
  w := (573783823807 / 400000000000 : ℚ)
  center := (216125000000000001 / 400000000000000000 : ℚ)
  supportValue := (3879610602933527 / 10000000000000000 : ℚ)
  supportSlope := (-1710464410586737 / 1000000000000000 : ℚ)
  oldCenter := (3879610602933527 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1276
  oldLo := (38750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_944, piece_945]
}

noncomputable def cell_10927 : Cell := { cellDefaults with
  domain := ⟨(108074999999999999 / 200000000000000000 : ℚ), (27024999999999999 / 50000000000000000 : ℚ)⟩
  r := (14800713310097 / 25000000000000 : ℚ)
  w := (573783823807 / 400000000000 : ℚ)
  center := (43234999999999999 / 80000000000000000 : ℚ)
  supportValue := (969368295315003 / 2500000000000000 : ℚ)
  supportSlope := (-8544963081501459 / 5000000000000000 : ℚ)
  oldCenter := (969368295315003 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1276
  oldLo := (38750000000000001 / 100000000000000000 : ℚ)
  oldHi := (38800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_944]
}

noncomputable def cell_10928 : Cell := { cellDefaults with
  domain := ⟨(27024999999999999 / 50000000000000000 : ℚ), (108122486033519547 / 200000000000000000 : ℚ)⟩
  center := (216222486033519543 / 400000000000000000 : ℚ)
  supportValue := (775982424169071 / 2000000000000000 : ℚ)
  supportSlope := (-17096167952221153 / 10000000000000000 : ℚ)
  oldCenter := (775982424169071 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1277
  oldLo := (38750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_944, piece_945]
}

noncomputable def cell_10929 : Cell := { cellDefaults with
  domain := ⟨(108122486033519547 / 200000000000000000 : ℚ), (54072486033519549 / 100000000000000000 : ℚ)⟩
  center := (43253491620111729 / 80000000000000000 : ℚ)
  supportValue := (1938993782572897 / 5000000000000000 : ℚ)
  supportSlope := (-4271286814791977 / 2500000000000000 : ℚ)
  oldCenter := (1938993782572897 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1277
  oldLo := (38750000000000001 / 100000000000000000 : ℚ)
  oldHi := (38800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_944]
}

noncomputable def cell_10930 : Cell := { cellDefaults with
  domain := ⟨(54072486033519549 / 100000000000000000 : ℚ), (108167458100558649 / 200000000000000000 : ℚ)⟩
  center := (216312430167597747 / 400000000000000000 : ℚ)
  supportValue := (19380338151729787 / 50000000000000000 : ℚ)
  supportSlope := (-426705746925449 / 250000000000000 : ℚ)
  oldCenter := (19380338151729787 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1277
  oldLo := (38750000000000001 / 100000000000000000 : ℚ)
  oldHi := (38800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_944]
}

noncomputable def cell_10931 : Cell := { cellDefaults with
  domain := ⟨(108167458100558649 / 200000000000000000 : ℚ), (540949720670391 / 1000000000000000 : ℚ)⟩
  center := (216357402234636849 / 400000000000000000 : ℚ)
  supportValue := (968537912535753 / 2500000000000000 : ℚ)
  supportSlope := (-8531873061836739 / 5000000000000000 : ℚ)
  oldCenter := (968537912535753 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1277
  oldLo := (38700000000000001 / 100000000000000000 : ℚ)
  oldHi := (38800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_943, piece_944]
}

noncomputable def cell_10932 : Cell := { cellDefaults with
  domain := ⟨(540949720670391 / 1000000000000000 : ℚ), (13525000000000001 / 25000000000000000 : ℚ)⟩
  center := (845273219273743 / 1562500000000000 : ℚ)
  supportValue := (1936380192885663 / 5000000000000000 : ℚ)
  supportSlope := (-1705221738187781 / 1000000000000000 : ℚ)
  oldCenter := (1936380192885663 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1278
  oldLo := (38700000000000001 / 100000000000000000 : ℚ)
  oldHi := (38750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_943]
}

noncomputable def cell_10933 : Cell := { cellDefaults with
  domain := ⟨(13525000000000001 / 25000000000000000 : ℚ), (21645000000000001 / 40000000000000000 : ℚ)⟩
  r := (59139740259879 / 100000000000000 : ℚ)
  w := (2867427120563 / 2000000000000 : ℚ)
  center := (216425000000000013 / 400000000000000000 : ℚ)
  supportValue := (38757275081716797 / 100000000000000000 : ℚ)
  supportSlope := (-8529002579843371 / 5000000000000000 : ℚ)
  oldCenter := (38757275081716797 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1279
  oldLo := (38700000000000001 / 100000000000000000 : ℚ)
  oldHi := (38800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_943, piece_944]
}

noncomputable def cell_10934 : Cell := { cellDefaults with
  domain := ⟨(21645000000000001 / 40000000000000000 : ℚ), (54125000000000001 / 100000000000000000 : ℚ)⟩
  r := (59139740259879 / 100000000000000 : ℚ)
  w := (2867427120563 / 2000000000000 : ℚ)
  center := (216475000000000007 / 400000000000000000 : ℚ)
  supportValue := (19367978033883637 / 50000000000000000 : ℚ)
  supportSlope := (-8525126085113711 / 5000000000000000 : ℚ)
  oldCenter := (19367978033883637 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1279
  oldLo := (38700000000000001 / 100000000000000000 : ℚ)
  oldHi := (38750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_943]
}

noncomputable def cell_10935 : Cell := { cellDefaults with
  domain := ⟨(54125000000000001 / 100000000000000000 : ℚ), (108274999999999999 / 200000000000000000 : ℚ)⟩
  r := (59139740259879 / 100000000000000 : ℚ)
  w := (2867427120563 / 2000000000000 : ℚ)
  center := (216525000000000001 / 400000000000000000 : ℚ)
  supportValue := (1935732749305589 / 5000000000000000 : ℚ)
  supportSlope := (-17031460563023781 / 10000000000000000 : ℚ)
  oldCenter := (1935732749305589 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1279
  oldLo := (38700000000000001 / 100000000000000000 : ℚ)
  oldHi := (38750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_943]
}

noncomputable def cell_10936 : Cell := { cellDefaults with
  domain := ⟨(108274999999999999 / 200000000000000000 : ℚ), (27074999999999999 / 50000000000000000 : ℚ)⟩
  r := (59139740259879 / 100000000000000 : ℚ)
  w := (2867427120563 / 2000000000000 : ℚ)
  center := (43314999999999999 / 80000000000000000 : ℚ)
  supportValue := (1934668609290291 / 5000000000000000 : ℚ)
  supportSlope := (-2127929923372551 / 1250000000000000 : ℚ)
  oldCenter := (1934668609290291 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1279
  oldLo := (38650000000000001 / 100000000000000000 : ℚ)
  oldHi := (38750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_942, piece_943]
}

noncomputable def cell_10937 : Cell := { cellDefaults with
  domain := ⟨(27074999999999999 / 50000000000000000 : ℚ), (108324999999999999 / 200000000000000000 : ℚ)⟩
  r := (59108241030527 / 100000000000000 : ℚ)
  w := (7166709101191 / 5000000000000 : ℚ)
  center := (43324999999999999 / 80000000000000000 : ℚ)
  supportValue := (9679145321129319 / 25000000000000000 : ℚ)
  supportSlope := (-1063991511911927 / 625000000000000 : ℚ)
  oldCenter := (9679145321129319 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1280
  oldLo := (38700000000000001 / 100000000000000000 : ℚ)
  oldHi := (38750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_943]
}

noncomputable def cell_10938 : Cell := { cellDefaults with
  domain := ⟨(108324999999999999 / 200000000000000000 : ℚ), (54175000000000001 / 100000000000000000 : ℚ)⟩
  r := (59108241030527 / 100000000000000 : ℚ)
  w := (7166709101191 / 5000000000000 : ℚ)
  center := (216675000000000001 / 400000000000000000 : ℚ)
  supportValue := (1934765473495173 / 5000000000000000 : ℚ)
  supportSlope := (-4253665401585161 / 2500000000000000 : ℚ)
  oldCenter := (1934765473495173 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1280
  oldLo := (38650000000000001 / 100000000000000000 : ℚ)
  oldHi := (38750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_942, piece_943]
}

noncomputable def cell_10939 : Cell := { cellDefaults with
  domain := ⟨(54175000000000001 / 100000000000000000 : ℚ), (21675000000000001 / 40000000000000000 : ℚ)⟩
  r := (59108241030527 / 100000000000000 : ℚ)
  w := (7166709101191 / 5000000000000 : ℚ)
  center := (216725000000000007 / 400000000000000000 : ℚ)
  supportValue := (9668512069861071 / 25000000000000000 : ℚ)
  supportSlope := (-2124943717047601 / 1250000000000000 : ℚ)
  oldCenter := (9668512069861071 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1280
  oldLo := (38650000000000001 / 100000000000000000 : ℚ)
  oldHi := (38700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_942]
}

noncomputable def cell_10940 : Cell := { cellDefaults with
  domain := ⟨(21675000000000001 / 40000000000000000 : ℚ), (13550000000000001 / 25000000000000000 : ℚ)⟩
  r := (59108241030527 / 100000000000000 : ℚ)
  w := (7166709101191 / 5000000000000 : ℚ)
  center := (216775000000000013 / 400000000000000000 : ℚ)
  supportValue := (7730562106570923 / 20000000000000000 : ℚ)
  supportSlope := (-16985719268427697 / 10000000000000000 : ℚ)
  oldCenter := (7730562106570923 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1280
  oldLo := (3860893854748603 / 10000000000000000 : ℚ)
  oldHi := (38700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_941, piece_942]
}

noncomputable def cell_10941 : Cell := { cellDefaults with
  domain := ⟨(13550000000000001 / 25000000000000000 : ℚ), (21685000000000001 / 40000000000000000 : ℚ)⟩
  r := (29538389859541 / 50000000000000 : ℚ)
  w := (2865941900159 / 2000000000000 : ℚ)
  center := (216825000000000013 / 400000000000000000 : ℚ)
  supportValue := (755389980753 / 1953125000000 : ℚ)
  supportSlope := (-8495987201447749 / 5000000000000000 : ℚ)
  oldCenter := (755389980753 / 1953125000000 : ℚ)
  newCoefficients := coefficients_1281
  oldLo := (38650000000000001 / 100000000000000000 : ℚ)
  oldHi := (38700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_942]
}

noncomputable def cell_10942 : Cell := { cellDefaults with
  domain := ⟨(21685000000000001 / 40000000000000000 : ℚ), (54225000000000001 / 100000000000000000 : ℚ)⟩
  r := (29538389859541 / 50000000000000 : ℚ)
  w := (2865941900159 / 2000000000000 : ℚ)
  center := (216875000000000007 / 400000000000000000 : ℚ)
  supportValue := (19327369363602037 / 50000000000000000 : ℚ)
  supportSlope := (-530529842345037 / 312500000000000 : ℚ)
  oldCenter := (19327369363602037 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1281
  oldLo := (3860893854748603 / 10000000000000000 : ℚ)
  oldHi := (38700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_941, piece_942]
}

noncomputable def cell_10943 : Cell := { cellDefaults with
  domain := ⟨(54225000000000001 / 100000000000000000 : ℚ), (108474999999999999 / 200000000000000000 : ℚ)⟩
  r := (29538389859541 / 50000000000000 : ℚ)
  w := (2865941900159 / 2000000000000 : ℚ)
  center := (216925000000000001 / 400000000000000000 : ℚ)
  supportValue := (3863352093111781 / 10000000000000000 : ℚ)
  supportSlope := (-1696777848910739 / 1000000000000000 : ℚ)
  oldCenter := (3863352093111781 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1281
  oldLo := (3860893854748603 / 10000000000000000 : ℚ)
  oldHi := (38650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_941]
}

noncomputable def cell_10944 : Cell := { cellDefaults with
  domain := ⟨(108474999999999999 / 200000000000000000 : ℚ), (27124999999999999 / 50000000000000000 : ℚ)⟩
  r := (29538389859541 / 50000000000000 : ℚ)
  w := (2865941900159 / 2000000000000 : ℚ)
  center := (43394999999999999 / 80000000000000000 : ℚ)
  supportValue := (38612322895603957 / 100000000000000000 : ℚ)
  supportSlope := (-4237265598972481 / 2500000000000000 : ℚ)
  oldCenter := (38612322895603957 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1281
  oldLo := (38600000000000001 / 100000000000000000 : ℚ)
  oldHi := (38650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_940, piece_941]
}

noncomputable def cell_10945 : Cell := { cellDefaults with
  domain := ⟨(27124999999999999 / 50000000000000000 : ℚ), (108524999999999999 / 200000000000000000 : ℚ)⟩
  r := (59045355561307 / 100000000000000 : ℚ)
  w := (14326007021617 / 10000000000000 : ℚ)
  center := (43404999999999999 / 80000000000000000 : ℚ)
  supportValue := (7727087842948559 / 20000000000000000 : ℚ)
  supportSlope := (-4240057302368807 / 2500000000000000 : ℚ)
  oldCenter := (7727087842948559 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1282
  oldLo := (3860893854748603 / 10000000000000000 : ℚ)
  oldHi := (38650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_941]
}

noncomputable def cell_10946 : Cell := { cellDefaults with
  domain := ⟨(108524999999999999 / 200000000000000000 : ℚ), (54275000000000001 / 100000000000000000 : ℚ)⟩
  r := (59045355561307 / 100000000000000 : ℚ)
  w := (14326007021617 / 10000000000000 : ℚ)
  center := (217075000000000001 / 400000000000000000 : ℚ)
  supportValue := (1930712530296649 / 5000000000000000 : ℚ)
  supportSlope := (-1694152845955773 / 1000000000000000 : ℚ)
  oldCenter := (1930712530296649 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1282
  oldLo := (38600000000000001 / 100000000000000000 : ℚ)
  oldHi := (38650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_940, piece_941]
}

noncomputable def cell_10947 : Cell := { cellDefaults with
  domain := ⟨(54275000000000001 / 100000000000000000 : ℚ), (21715000000000001 / 40000000000000000 : ℚ)⟩
  r := (59045355561307 / 100000000000000 : ℚ)
  w := (14326007021617 / 10000000000000 : ℚ)
  center := (217125000000000007 / 400000000000000000 : ℚ)
  supportValue := (38593079871802577 / 100000000000000000 : ℚ)
  supportSlope := (-8466937340844233 / 5000000000000000 : ℚ)
  oldCenter := (38593079871802577 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1282
  oldLo := (38550000000000001 / 100000000000000000 : ℚ)
  oldHi := (3860893854748603 / 10000000000000000 : ℚ)
  oldPieces := [piece_939, piece_940]
}

noncomputable def cell_10948 : Cell := { cellDefaults with
  domain := ⟨(21715000000000001 / 40000000000000000 : ℚ), (13575000000000001 / 25000000000000000 : ℚ)⟩
  r := (59045355561307 / 100000000000000 : ℚ)
  w := (14326007021617 / 10000000000000 : ℚ)
  center := (217175000000000013 / 400000000000000000 : ℚ)
  supportValue := (7714384271907817 / 20000000000000000 : ℚ)
  supportSlope := (-1057340301151439 / 625000000000000 : ℚ)
  oldCenter := (7714384271907817 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1282
  oldLo := (38550000000000001 / 100000000000000000 : ℚ)
  oldHi := (38600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_939]
}

noncomputable def cell_10949 : Cell := { cellDefaults with
  domain := ⟨(13575000000000001 / 25000000000000000 : ℚ), (21725000000000001 / 40000000000000000 : ℚ)⟩
  r := (59013968336477 / 100000000000000 : ℚ)
  w := (1790288855557 / 1250000000000 : ℚ)
  center := (217225000000000013 / 400000000000000000 : ℚ)
  supportValue := (19297498815783523 / 50000000000000000 : ℚ)
  supportSlope := (-2115643341527283 / 1250000000000000 : ℚ)
  oldCenter := (19297498815783523 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1283
  oldLo := (38550000000000001 / 100000000000000000 : ℚ)
  oldHi := (3860893854748603 / 10000000000000000 : ℚ)
  oldPieces := [piece_939, piece_940]
}

theorem check_10900 : cell_10900.check = true := by
  decide +kernel

theorem check_10901 : cell_10901.check = true := by
  decide +kernel

theorem check_10902 : cell_10902.check = true := by
  decide +kernel

theorem check_10903 : cell_10903.check = true := by
  decide +kernel

theorem check_10904 : cell_10904.check = true := by
  decide +kernel

theorem check_10905 : cell_10905.check = true := by
  decide +kernel

theorem check_10906 : cell_10906.check = true := by
  decide +kernel

theorem check_10907 : cell_10907.check = true := by
  decide +kernel

theorem check_10908 : cell_10908.check = true := by
  decide +kernel

theorem check_10909 : cell_10909.check = true := by
  decide +kernel

theorem check_10910 : cell_10910.check = true := by
  decide +kernel

theorem check_10911 : cell_10911.check = true := by
  decide +kernel

theorem check_10912 : cell_10912.check = true := by
  decide +kernel

theorem check_10913 : cell_10913.check = true := by
  decide +kernel

theorem check_10914 : cell_10914.check = true := by
  decide +kernel

theorem check_10915 : cell_10915.check = true := by
  decide +kernel

theorem check_10916 : cell_10916.check = true := by
  decide +kernel

theorem check_10917 : cell_10917.check = true := by
  decide +kernel

theorem check_10918 : cell_10918.check = true := by
  decide +kernel

theorem check_10919 : cell_10919.check = true := by
  decide +kernel

theorem check_10920 : cell_10920.check = true := by
  decide +kernel

theorem check_10921 : cell_10921.check = true := by
  decide +kernel

theorem check_10922 : cell_10922.check = true := by
  decide +kernel

theorem check_10923 : cell_10923.check = true := by
  decide +kernel

theorem check_10924 : cell_10924.check = true := by
  decide +kernel

theorem check_10925 : cell_10925.check = true := by
  decide +kernel

theorem check_10926 : cell_10926.check = true := by
  decide +kernel

theorem check_10927 : cell_10927.check = true := by
  decide +kernel

theorem check_10928 : cell_10928.check = true := by
  decide +kernel

theorem check_10929 : cell_10929.check = true := by
  decide +kernel

theorem check_10930 : cell_10930.check = true := by
  decide +kernel

theorem check_10931 : cell_10931.check = true := by
  decide +kernel

theorem check_10932 : cell_10932.check = true := by
  decide +kernel

theorem check_10933 : cell_10933.check = true := by
  decide +kernel

theorem check_10934 : cell_10934.check = true := by
  decide +kernel

theorem check_10935 : cell_10935.check = true := by
  decide +kernel

theorem check_10936 : cell_10936.check = true := by
  decide +kernel

theorem check_10937 : cell_10937.check = true := by
  decide +kernel

theorem check_10938 : cell_10938.check = true := by
  decide +kernel

theorem check_10939 : cell_10939.check = true := by
  decide +kernel

theorem check_10940 : cell_10940.check = true := by
  decide +kernel

theorem check_10941 : cell_10941.check = true := by
  decide +kernel

theorem check_10942 : cell_10942.check = true := by
  decide +kernel

theorem check_10943 : cell_10943.check = true := by
  decide +kernel

theorem check_10944 : cell_10944.check = true := by
  decide +kernel

theorem check_10945 : cell_10945.check = true := by
  decide +kernel

theorem check_10946 : cell_10946.check = true := by
  decide +kernel

theorem check_10947 : cell_10947.check = true := by
  decide +kernel

theorem check_10948 : cell_10948.check = true := by
  decide +kernel

theorem check_10949 : cell_10949.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_10900, cell_10901, cell_10902, cell_10903, cell_10904, cell_10905, cell_10906, cell_10907, cell_10908, cell_10909, cell_10910, cell_10911, cell_10912, cell_10913, cell_10914, cell_10915, cell_10916, cell_10917, cell_10918, cell_10919, cell_10920, cell_10921, cell_10922, cell_10923, cell_10924, cell_10925, cell_10926, cell_10927, cell_10928, cell_10929, cell_10930, cell_10931, cell_10932, cell_10933, cell_10934, cell_10935, cell_10936, cell_10937, cell_10938, cell_10939, cell_10940, cell_10941, cell_10942, cell_10943, cell_10944, cell_10945, cell_10946, cell_10947, cell_10948, cell_10949]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10900, check_10901, check_10902, check_10903, check_10904, check_10905, check_10906, check_10907, check_10908, check_10909, check_10910, check_10911, check_10912, check_10913, check_10914, check_10915, check_10916, check_10917, check_10918, check_10919, check_10920, check_10921, check_10922, check_10923, check_10924, check_10925, check_10926, check_10927, check_10928, check_10929, check_10930, check_10931, check_10932, check_10933, check_10934, check_10935, check_10936, check_10937, check_10938, check_10939, check_10940, check_10941, check_10942, check_10943, check_10944, check_10945, check_10946, check_10947, check_10948, check_10949, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0218

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0218
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0218
open AnalyticBounds.ExpressionCertificate

theorem linked_10900 : Linked cell_10900 pieces := by
  link_source cell_10900 with piece_1270 using piece_1270_mem, piece_950_mem

theorem linked_10901 : Linked cell_10901 pieces := by
  link_source cell_10901 with piece_1270 using piece_1270_mem, piece_950_mem

theorem linked_10902 : Linked cell_10902 pieces := by
  link_source cell_10902 with piece_1270 using piece_1270_mem, ⟨piece_949_mem, piece_950_mem⟩

theorem linked_10903 : Linked cell_10903 pieces := by
  link_source cell_10903 with piece_1270 using piece_1270_mem, piece_949_mem

theorem linked_10904 : Linked cell_10904 pieces := by
  link_source cell_10904 with piece_1271 using piece_1271_mem, ⟨piece_949_mem, piece_950_mem⟩

theorem linked_10905 : Linked cell_10905 pieces := by
  link_source cell_10905 with piece_1271 using piece_1271_mem, piece_949_mem

theorem linked_10906 : Linked cell_10906 pieces := by
  link_source cell_10906 with piece_1271 using piece_1271_mem, ⟨piece_948_mem, piece_949_mem⟩

theorem linked_10907 : Linked cell_10907 pieces := by
  link_source cell_10907 with piece_1271 using piece_1271_mem, piece_948_mem

theorem linked_10908 : Linked cell_10908 pieces := by
  link_source cell_10908 with piece_1272 using piece_1272_mem, ⟨piece_948_mem, piece_949_mem⟩

theorem linked_10909 : Linked cell_10909 pieces := by
  link_source cell_10909 with piece_1272 using piece_1272_mem, piece_948_mem

theorem linked_10910 : Linked cell_10910 pieces := by
  link_source cell_10910 with piece_1272 using piece_1272_mem, ⟨piece_947_mem, piece_948_mem⟩

theorem linked_10911 : Linked cell_10911 pieces := by
  link_source cell_10911 with piece_1272 using piece_1272_mem, piece_947_mem

theorem linked_10912 : Linked cell_10912 pieces := by
  link_source cell_10912 with piece_1273 using piece_1273_mem, piece_948_mem

theorem linked_10913 : Linked cell_10913 pieces := by
  link_source cell_10913 with piece_1273 using piece_1273_mem, ⟨piece_947_mem, piece_948_mem⟩

theorem linked_10914 : Linked cell_10914 pieces := by
  link_source cell_10914 with piece_1273 using piece_1273_mem, piece_947_mem

theorem linked_10915 : Linked cell_10915 pieces := by
  link_source cell_10915 with piece_1273 using piece_1273_mem, ⟨piece_946_mem, piece_947_mem⟩

theorem linked_10916 : Linked cell_10916 pieces := by
  link_source cell_10916 with piece_1274 using piece_1274_mem, piece_947_mem

theorem linked_10917 : Linked cell_10917 pieces := by
  link_source cell_10917 with piece_1274 using piece_1274_mem, ⟨piece_946_mem, piece_947_mem⟩

theorem linked_10918 : Linked cell_10918 pieces := by
  link_source cell_10918 with piece_1274 using piece_1274_mem, piece_946_mem

theorem linked_10919 : Linked cell_10919 pieces := by
  link_source cell_10919 with piece_1274 using piece_1274_mem, ⟨piece_945_mem, piece_946_mem⟩

theorem linked_10920 : Linked cell_10920 pieces := by
  link_source cell_10920 with piece_1275 using piece_1275_mem, piece_946_mem

theorem linked_10921 : Linked cell_10921 pieces := by
  link_source cell_10921 with piece_1275 using piece_1275_mem, ⟨piece_945_mem, piece_946_mem⟩

theorem linked_10922 : Linked cell_10922 pieces := by
  link_source cell_10922 with piece_1275 using piece_1275_mem, piece_945_mem

theorem linked_10923 : Linked cell_10923 pieces := by
  link_source cell_10923 with piece_1275 using piece_1275_mem, piece_945_mem

theorem linked_10924 : Linked cell_10924 pieces := by
  link_source cell_10924 with piece_1276 using piece_1276_mem, piece_945_mem

theorem linked_10925 : Linked cell_10925 pieces := by
  link_source cell_10925 with piece_1276 using piece_1276_mem, piece_945_mem

theorem linked_10926 : Linked cell_10926 pieces := by
  link_source cell_10926 with piece_1276 using piece_1276_mem, ⟨piece_944_mem, piece_945_mem⟩

theorem linked_10927 : Linked cell_10927 pieces := by
  link_source cell_10927 with piece_1276 using piece_1276_mem, piece_944_mem

theorem linked_10928 : Linked cell_10928 pieces := by
  link_source cell_10928 with piece_1277 using piece_1277_mem, ⟨piece_944_mem, piece_945_mem⟩

theorem linked_10929 : Linked cell_10929 pieces := by
  link_source cell_10929 with piece_1277 using piece_1277_mem, piece_944_mem

theorem linked_10930 : Linked cell_10930 pieces := by
  link_source cell_10930 with piece_1277 using piece_1277_mem, piece_944_mem

theorem linked_10931 : Linked cell_10931 pieces := by
  link_source cell_10931 with piece_1277 using piece_1277_mem, ⟨piece_943_mem, piece_944_mem⟩

theorem linked_10932 : Linked cell_10932 pieces := by
  link_source cell_10932 with piece_1278 using piece_1278_mem, piece_943_mem

theorem linked_10933 : Linked cell_10933 pieces := by
  link_source cell_10933 with piece_1279 using piece_1279_mem, ⟨piece_943_mem, piece_944_mem⟩

theorem linked_10934 : Linked cell_10934 pieces := by
  link_source cell_10934 with piece_1279 using piece_1279_mem, piece_943_mem

theorem linked_10935 : Linked cell_10935 pieces := by
  link_source cell_10935 with piece_1279 using piece_1279_mem, piece_943_mem

theorem linked_10936 : Linked cell_10936 pieces := by
  link_source cell_10936 with piece_1279 using piece_1279_mem, ⟨piece_942_mem, piece_943_mem⟩

theorem linked_10937 : Linked cell_10937 pieces := by
  link_source cell_10937 with piece_1280 using piece_1280_mem, piece_943_mem

theorem linked_10938 : Linked cell_10938 pieces := by
  link_source cell_10938 with piece_1280 using piece_1280_mem, ⟨piece_942_mem, piece_943_mem⟩

theorem linked_10939 : Linked cell_10939 pieces := by
  link_source cell_10939 with piece_1280 using piece_1280_mem, piece_942_mem

theorem linked_10940 : Linked cell_10940 pieces := by
  link_source cell_10940 with piece_1280 using piece_1280_mem, ⟨piece_941_mem, piece_942_mem⟩

theorem linked_10941 : Linked cell_10941 pieces := by
  link_source cell_10941 with piece_1281 using piece_1281_mem, piece_942_mem

theorem linked_10942 : Linked cell_10942 pieces := by
  link_source cell_10942 with piece_1281 using piece_1281_mem, ⟨piece_941_mem, piece_942_mem⟩

theorem linked_10943 : Linked cell_10943 pieces := by
  link_source cell_10943 with piece_1281 using piece_1281_mem, piece_941_mem

theorem linked_10944 : Linked cell_10944 pieces := by
  link_source cell_10944 with piece_1281 using piece_1281_mem, ⟨piece_940_mem, piece_941_mem⟩

theorem linked_10945 : Linked cell_10945 pieces := by
  link_source cell_10945 with piece_1282 using piece_1282_mem, piece_941_mem

theorem linked_10946 : Linked cell_10946 pieces := by
  link_source cell_10946 with piece_1282 using piece_1282_mem, ⟨piece_940_mem, piece_941_mem⟩

theorem linked_10947 : Linked cell_10947 pieces := by
  link_source cell_10947 with piece_1282 using piece_1282_mem, ⟨piece_939_mem, piece_940_mem⟩

theorem linked_10948 : Linked cell_10948 pieces := by
  link_source cell_10948 with piece_1282 using piece_1282_mem, piece_939_mem

theorem linked_10949 : Linked cell_10949 pieces := by
  link_source cell_10949 with piece_1283 using piece_1283_mem, ⟨piece_939_mem, piece_940_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0218.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0218.cells,List.forall_mem_cons]
  exact ⟨linked_10900, linked_10901, linked_10902, linked_10903, linked_10904, linked_10905, linked_10906, linked_10907, linked_10908, linked_10909, linked_10910, linked_10911, linked_10912, linked_10913, linked_10914, linked_10915, linked_10916, linked_10917, linked_10918, linked_10919, linked_10920, linked_10921, linked_10922, linked_10923, linked_10924, linked_10925, linked_10926, linked_10927, linked_10928, linked_10929, linked_10930, linked_10931, linked_10932, linked_10933, linked_10934, linked_10935, linked_10936, linked_10937, linked_10938, linked_10939, linked_10940, linked_10941, linked_10942, linked_10943, linked_10944, linked_10945, linked_10946, linked_10947, linked_10948, linked_10949, by simp⟩

theorem covered : covers (53700000000000003 / 100000000000000000 : ℚ) (21725000000000001 / 40000000000000000 : ℚ)
    (SourceCertificates.Chunk0218.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0218
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0219
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(21725000000000001 / 40000000000000000 : ℚ), (54325000000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (5882643696369 / 10000000000000 : ℚ)
  w := (7150154001099 / 5000000000000 : ℚ)
  center := (217275000000000007 / 400000000000000000 : ℚ)
  supportValue := (9643462128430709 / 25000000000000000 : ℚ)
  supportSlope := (-3381987418377769 / 2000000000000000 : ℚ)
  oldCenter := (9643462128430709 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1284
  oldLo := (38500000000000001 / 100000000000000000 : ℚ)
  oldHi := (38550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_938]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_10950 : Cell := { cellDefaults with
  r := (59013968336477 / 100000000000000 : ℚ)
  w := (1790288855557 / 1250000000000 : ℚ)
  newCoefficients := coefficients_1283
  oldLo := (38550000000000001 / 100000000000000000 : ℚ)
  oldHi := (38600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_939]
}

noncomputable def cell_10951 : Cell := { cellDefaults with
  domain := ⟨(54325000000000001 / 100000000000000000 : ℚ), (108674999999999999 / 200000000000000000 : ℚ)⟩
  r := (59013968336477 / 100000000000000 : ℚ)
  w := (1790288855557 / 1250000000000 : ℚ)
  center := (217325000000000001 / 400000000000000000 : ℚ)
  supportValue := (385527227263811 / 1000000000000000 : ℚ)
  supportSlope := (-8448136901099037 / 5000000000000000 : ℚ)
  oldCenter := (385527227263811 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1283
  oldHi := (38600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_938, piece_939]
}

noncomputable def cell_10952 : Cell := { cellDefaults with
  domain := ⟨(108674999999999999 / 200000000000000000 : ℚ), (27174999999999999 / 50000000000000000 : ℚ)⟩
  r := (59013968336477 / 100000000000000 : ℚ)
  w := (1790288855557 / 1250000000000 : ℚ)
  center := (43474999999999999 / 80000000000000000 : ℚ)
  supportValue := (38531605686939147 / 100000000000000000 : ℚ)
  supportSlope := (-1688596812321233 / 1000000000000000 : ℚ)
  oldCenter := (38531605686939147 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1283
  oldPieces := [piece_938]
}

noncomputable def cell_10953 : Cell := { cellDefaults with
  domain := ⟨(27174999999999999 / 50000000000000000 : ℚ), (108724999999999999 / 200000000000000000 : ℚ)⟩
  r := (921603432197 / 1562500000000 : ℚ)
  w := (3579656140543 / 2500000000000 : ℚ)
  center := (43484999999999999 / 80000000000000000 : ℚ)
  supportValue := (192773136688647 / 500000000000000 : ℚ)
  supportSlope := (-16887558830898293 / 10000000000000000 : ℚ)
  oldCenter := (192773136688647 / 500000000000000 : ℚ)
  oldHi := (38600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_938, piece_939]
}

noncomputable def cell_10954 : Cell := { cellDefaults with
  domain := ⟨(108724999999999999 / 200000000000000000 : ℚ), (54375000000000001 / 100000000000000000 : ℚ)⟩
  r := (921603432197 / 1562500000000 : ℚ)
  w := (3579656140543 / 2500000000000 : ℚ)
  center := (217475000000000001 / 400000000000000000 : ℚ)
  supportValue := (3853352117886039 / 10000000000000000 : ℚ)
  supportSlope := (-8439239037948507 / 5000000000000000 : ℚ)
  oldCenter := (3853352117886039 / 10000000000000000 : ℚ)
  oldPieces := [piece_938]
}

noncomputable def cell_10955 : Cell := { cellDefaults with
  domain := ⟨(54375000000000001 / 100000000000000000 : ℚ), (21755000000000001 / 40000000000000000 : ℚ)⟩
  r := (921603432197 / 1562500000000 : ℚ)
  w := (3579656140543 / 2500000000000 : ℚ)
  center := (217525000000000007 / 400000000000000000 : ℚ)
  supportValue := (9628108677897261 / 25000000000000000 : ℚ)
  supportSlope := (-8429925980556573 / 5000000000000000 : ℚ)
  oldCenter := (9628108677897261 / 25000000000000000 : ℚ)
  oldPieces := [piece_938]
}

noncomputable def cell_10956 : Cell := { cellDefaults with
  domain := ⟨(21755000000000001 / 40000000000000000 : ℚ), (13600000000000001 / 25000000000000000 : ℚ)⟩
  r := (921603432197 / 1562500000000 : ℚ)
  w := (3579656140543 / 2500000000000 : ℚ)
  center := (217575000000000013 / 400000000000000000 : ℚ)
  supportValue := (3849136460971417 / 10000000000000000 : ℚ)
  supportSlope := (-2106680419817511 / 1250000000000000 : ℚ)
  oldCenter := (3849136460971417 / 10000000000000000 : ℚ)
  oldLo := (38450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_937, piece_938]
}

noncomputable def cell_10957 : Cell := { cellDefaults with
  domain := ⟨(13600000000000001 / 25000000000000000 : ℚ), (21765000000000001 / 40000000000000000 : ℚ)⟩
  r := (29475654027623 / 50000000000000 : ℚ)
  w := (572597841759 / 400000000000 : ℚ)
  center := (217625000000000013 / 400000000000000000 : ℚ)
  supportValue := (962858366879567 / 2500000000000000 : ℚ)
  supportSlope := (-2106545429477999 / 1250000000000000 : ℚ)
  oldCenter := (962858366879567 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1285
  oldPieces := [piece_938]
}

noncomputable def cell_10958 : Cell := { cellDefaults with
  domain := ⟨(21765000000000001 / 40000000000000000 : ℚ), (54425000000000001 / 100000000000000000 : ℚ)⟩
  r := (29475654027623 / 50000000000000 : ℚ)
  w := (572597841759 / 400000000000 : ℚ)
  center := (217675000000000007 / 400000000000000000 : ℚ)
  supportValue := (3849327543693729 / 10000000000000000 : ℚ)
  supportSlope := (-2105595362213139 / 1250000000000000 : ℚ)
  oldCenter := (3849327543693729 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1285
  oldLo := (38450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_937, piece_938]
}

noncomputable def cell_10959 : Cell := { cellDefaults with
  domain := ⟨(54425000000000001 / 100000000000000000 : ℚ), (108874999999999999 / 200000000000000000 : ℚ)⟩
  r := (29475654027623 / 50000000000000 : ℚ)
  w := (572597841759 / 400000000000 : ℚ)
  center := (217725000000000001 / 400000000000000000 : ℚ)
  supportValue := (38472228113046797 / 100000000000000000 : ℚ)
  supportSlope := (-16828540542459323 / 10000000000000000 : ℚ)
  oldCenter := (38472228113046797 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1285
  oldLo := (38450000000000001 / 100000000000000000 : ℚ)
  oldHi := (38500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_937]
}

noncomputable def cell_10960 : Cell := { cellDefaults with
  domain := ⟨(108874999999999999 / 200000000000000000 : ℚ), (27224999999999999 / 50000000000000000 : ℚ)⟩
  r := (29475654027623 / 50000000000000 : ℚ)
  w := (572597841759 / 400000000000 : ℚ)
  center := (43554999999999999 / 80000000000000000 : ℚ)
  supportValue := (3845120402334017 / 10000000000000000 : ℚ)
  supportSlope := (-1681594421210721 / 1000000000000000 : ℚ)
  oldCenter := (3845120402334017 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1285
  oldLo := (38400000000000001 / 100000000000000000 : ℚ)
  oldHi := (38500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_936, piece_937]
}

noncomputable def cell_10961 : Cell := { cellDefaults with
  domain := ⟨(27224999999999999 / 50000000000000000 : ℚ), (108924999999999999 / 200000000000000000 : ℚ)⟩
  r := (58920034864861 / 100000000000000 : ℚ)
  w := (715563832709 / 500000000000 : ℚ)
  center := (43564999999999999 / 80000000000000000 : ℚ)
  supportValue := (1923705917515257 / 5000000000000000 : ℚ)
  supportSlope := (-8410535418871369 / 5000000000000000 : ℚ)
  oldCenter := (1923705917515257 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1286
  oldLo := (38450000000000001 / 100000000000000000 : ℚ)
  oldHi := (38500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_937]
}

noncomputable def cell_10962 : Cell := { cellDefaults with
  domain := ⟨(108924999999999999 / 200000000000000000 : ℚ), (54475000000000001 / 100000000000000000 : ℚ)⟩
  r := (58920034864861 / 100000000000000 : ℚ)
  w := (715563832709 / 500000000000 : ℚ)
  center := (217875000000000001 / 400000000000000000 : ℚ)
  supportValue := (961327589700549 / 2500000000000000 : ℚ)
  supportSlope := (-8403638426520801 / 5000000000000000 : ℚ)
  oldCenter := (961327589700549 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1286
  oldLo := (38400000000000001 / 100000000000000000 : ℚ)
  oldHi := (38500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_936, piece_937]
}

noncomputable def cell_10963 : Cell := { cellDefaults with
  domain := ⟨(54475000000000001 / 100000000000000000 : ℚ), (21795000000000001 / 40000000000000000 : ℚ)⟩
  r := (58920034864861 / 100000000000000 : ℚ)
  w := (715563832709 / 500000000000 : ℚ)
  center := (217925000000000007 / 400000000000000000 : ℚ)
  supportValue := (9608024421858019 / 25000000000000000 : ℚ)
  supportSlope := (-16797366676575483 / 10000000000000000 : ℚ)
  oldCenter := (9608024421858019 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1286
  oldLo := (38400000000000001 / 100000000000000000 : ℚ)
  oldHi := (38450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_936]
}

noncomputable def cell_10964 : Cell := { cellDefaults with
  domain := ⟨(21795000000000001 / 40000000000000000 : ℚ), (13625000000000001 / 25000000000000000 : ℚ)⟩
  r := (58920034864861 / 100000000000000 : ℚ)
  w := (715563832709 / 500000000000 : ℚ)
  center := (217975000000000013 / 400000000000000000 : ℚ)
  supportValue := (768222251214041 / 2000000000000000 : ℚ)
  supportSlope := (-16778818643963453 / 10000000000000000 : ℚ)
  oldCenter := (768222251214041 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1286
  oldLo := (38400000000000001 / 100000000000000000 : ℚ)
  oldHi := (38450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_936]
}

noncomputable def cell_10965 : Cell := { cellDefaults with
  domain := ⟨(13625000000000001 / 25000000000000000 : ℚ), (21805000000000001 / 40000000000000000 : ℚ)⟩
  r := (14722199712653 / 25000000000000 : ℚ)
  w := (7153806322917 / 5000000000000 : ℚ)
  center := (218025000000000013 / 400000000000000000 : ℚ)
  supportValue := (960849726141387 / 2500000000000000 : ℚ)
  supportSlope := (-16789923534183753 / 10000000000000000 : ℚ)
  oldCenter := (960849726141387 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1287
  oldLo := (38400000000000001 / 100000000000000000 : ℚ)
  oldHi := (38450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_936]
}

noncomputable def cell_10966 : Cell := { cellDefaults with
  domain := ⟨(21805000000000001 / 40000000000000000 : ℚ), (54525000000000001 / 100000000000000000 : ℚ)⟩
  r := (14722199712653 / 25000000000000 : ℚ)
  w := (7153806322917 / 5000000000000 : ℚ)
  center := (218075000000000007 / 400000000000000000 : ℚ)
  supportValue := (768260264263531 / 2000000000000000 : ℚ)
  supportSlope := (-3354278196205887 / 2000000000000000 : ℚ)
  oldCenter := (768260264263531 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1287
  oldLo := (38400000000000001 / 100000000000000000 : ℚ)
  oldHi := (38450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_936]
}

noncomputable def cell_10967 : Cell := { cellDefaults with
  domain := ⟨(54525000000000001 / 100000000000000000 : ℚ), (109074999999999999 / 200000000000000000 : ℚ)⟩
  r := (14722199712653 / 25000000000000 : ℚ)
  w := (7153806322917 / 5000000000000 : ℚ)
  center := (218125000000000001 / 400000000000000000 : ℚ)
  supportValue := (3839205410525641 / 10000000000000000 : ℚ)
  supportSlope := (-2095591799242931 / 1250000000000000 : ℚ)
  oldCenter := (3839205410525641 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1287
  oldLo := (38350000000000001 / 100000000000000000 : ℚ)
  oldHi := (38450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_935, piece_936]
}

noncomputable def cell_10968 : Cell := { cellDefaults with
  domain := ⟨(109074999999999999 / 200000000000000000 : ℚ), (27274999999999999 / 50000000000000000 : ℚ)⟩
  r := (14722199712653 / 25000000000000 : ℚ)
  w := (7153806322917 / 5000000000000 : ℚ)
  center := (43634999999999999 / 80000000000000000 : ℚ)
  supportValue := (9592776940083339 / 25000000000000000 : ℚ)
  supportSlope := (-16747794536702063 / 10000000000000000 : ℚ)
  oldCenter := (9592776940083339 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1287
  oldLo := (38350000000000001 / 100000000000000000 : ℚ)
  oldHi := (38400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_935]
}

noncomputable def cell_10969 : Cell := { cellDefaults with
  domain := ⟨(27274999999999999 / 50000000000000000 : ℚ), (109124999999999999 / 200000000000000000 : ℚ)⟩
  r := (14714399617893 / 25000000000000 : ℚ)
  w := (14303956316679 / 10000000000000 : ℚ)
  center := (43644999999999999 / 80000000000000000 : ℚ)
  supportValue := (9598485577127329 / 25000000000000000 : ℚ)
  supportSlope := (-3351220532847019 / 2000000000000000 : ℚ)
  oldCenter := (9598485577127329 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1288
  oldLo := (38350000000000001 / 100000000000000000 : ℚ)
  oldHi := (38450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_935, piece_936]
}

noncomputable def cell_10970 : Cell := { cellDefaults with
  domain := ⟨(109124999999999999 / 200000000000000000 : ℚ), (54575000000000001 / 100000000000000000 : ℚ)⟩
  r := (14714399617893 / 25000000000000 : ℚ)
  w := (14303956316679 / 10000000000000 : ℚ)
  center := (218275000000000001 / 400000000000000000 : ℚ)
  supportValue := (767460104570069 / 2000000000000000 : ℚ)
  supportSlope := (-8370195162007539 / 5000000000000000 : ℚ)
  oldCenter := (767460104570069 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1288
  oldLo := (38350000000000001 / 100000000000000000 : ℚ)
  oldHi := (38400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_935]
}

noncomputable def cell_10971 : Cell := { cellDefaults with
  domain := ⟨(54575000000000001 / 100000000000000000 : ℚ), (21835000000000001 / 40000000000000000 : ℚ)⟩
  r := (14714399617893 / 25000000000000 : ℚ)
  w := (14303956316679 / 10000000000000 : ℚ)
  center := (218325000000000007 / 400000000000000000 : ℚ)
  supportValue := (153408365082833 / 400000000000000 : ℚ)
  supportSlope := (-8363672785306583 / 5000000000000000 : ℚ)
  oldCenter := (153408365082833 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1288
  oldLo := (38300000000000001 / 100000000000000000 : ℚ)
  oldHi := (38400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_934, piece_935]
}

noncomputable def cell_10972 : Cell := { cellDefaults with
  domain := ⟨(21835000000000001 / 40000000000000000 : ℚ), (13650000000000001 / 25000000000000000 : ℚ)⟩
  r := (14714399617893 / 25000000000000 : ℚ)
  w := (14303956316679 / 10000000000000 : ℚ)
  center := (218375000000000013 / 400000000000000000 : ℚ)
  supportValue := (7666237037519239 / 20000000000000000 : ℚ)
  supportSlope := (-1044807035077019 / 625000000000000 : ℚ)
  oldCenter := (7666237037519239 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1288
  oldLo := (38300000000000001 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_934]
}

noncomputable def cell_10973 : Cell := { cellDefaults with
  domain := ⟨(13650000000000001 / 25000000000000000 : ℚ), (109224022346368721 / 200000000000000000 : ℚ)⟩
  center := (218424022346368729 / 400000000000000000 : ℚ)
  supportValue := (479429734956953 / 1250000000000000 : ℚ)
  supportSlope := (-8359354678146731 / 5000000000000000 : ℚ)
  oldCenter := (479429734956953 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1289
  oldLo := (38300000000000001 / 100000000000000000 : ℚ)
  oldHi := (38400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_934, piece_935]
}

noncomputable def cell_10974 : Cell := { cellDefaults with
  domain := ⟨(109224022346368721 / 200000000000000000 : ℚ), (54624022346368717 / 100000000000000000 : ℚ)⟩
  center := (43694413407821231 / 80000000000000000 : ℚ)
  supportValue := (9583568340173039 / 25000000000000000 : ℚ)
  supportSlope := (-835530714616093 / 500000000000000 : ℚ)
  oldCenter := (9583568340173039 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1289
  oldLo := (38300000000000001 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_934]
}

noncomputable def cell_10975 : Cell := { cellDefaults with
  domain := ⟨(54624022346368717 / 100000000000000000 : ℚ), (109272067039106147 / 200000000000000000 : ℚ)⟩
  center := (218520111731843581 / 400000000000000000 : ℚ)
  supportValue := (3831421261575633 / 10000000000000000 : ℚ)
  supportSlope := (-16692863544045897 / 10000000000000000 : ℚ)
  oldCenter := (3831421261575633 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1289
  oldLo := (38300000000000001 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_934]
}

noncomputable def cell_10976 : Cell := { cellDefaults with
  domain := ⟨(109272067039106147 / 200000000000000000 : ℚ), (5464804469273743 / 10000000000000000 : ℚ)⟩
  center := (218568156424581007 / 400000000000000000 : ℚ)
  supportValue := (3829419521980417 / 10000000000000000 : ℚ)
  supportSlope := (-1668586769366607 / 1000000000000000 : ℚ)
  oldCenter := (3829419521980417 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1289
  oldLo := (38250000000000001 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_933, piece_934]
}

noncomputable def cell_10977 : Cell := { cellDefaults with
  domain := ⟨(5464804469273743 / 10000000000000000 : ℚ), (54649999999999999 / 100000000000000000 : ℚ)⟩
  center := (109298044692737429 / 200000000000000000 : ℚ)
  supportValue := (765650204900023 / 2000000000000000 : ℚ)
  supportSlope := (-521198875651391 / 312500000000000 : ℚ)
  oldCenter := (765650204900023 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1290
  oldLo := (38250000000000001 / 100000000000000000 : ℚ)
  oldHi := (38300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_933]
}

noncomputable def cell_10978 : Cell := { cellDefaults with
  domain := ⟨(54649999999999999 / 100000000000000000 : ℚ), (218650000000000001 / 400000000000000000 : ℚ)⟩
  r := (11759062351161 / 20000000000000 : ℚ)
  w := (14296668324703 / 10000000000000 : ℚ)
  center := (437249999999999997 / 800000000000000000 : ℚ)
  supportValue := (239462950110053 / 625000000000000 : ℚ)
  supportSlope := (-4170919388812449 / 2500000000000000 : ℚ)
  oldCenter := (239462950110053 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1291
  oldLo := (38300000000000001 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_934]
}

noncomputable def cell_10979 : Cell := { cellDefaults with
  domain := ⟨(218650000000000001 / 400000000000000000 : ℚ), (109350000000000003 / 200000000000000000 : ℚ)⟩
  r := (11759062351161 / 20000000000000 : ℚ)
  w := (14296668324703 / 10000000000000 : ℚ)
  center := (437350000000000007 / 800000000000000000 : ℚ)
  supportValue := (3829322337311839 / 10000000000000000 : ℚ)
  supportSlope := (-833822641975429 / 500000000000000 : ℚ)
  oldCenter := (3829322337311839 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1291
  oldLo := (38250000000000001 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_933, piece_934]
}

noncomputable def cell_10980 : Cell := { cellDefaults with
  domain := ⟨(109350000000000003 / 200000000000000000 : ℚ), (218750000000000011 / 400000000000000000 : ℚ)⟩
  r := (11759062351161 / 20000000000000 : ℚ)
  w := (14296668324703 / 10000000000000 : ℚ)
  center := (437450000000000017 / 800000000000000000 : ℚ)
  supportValue := (4784048299353473 / 12500000000000000 : ℚ)
  supportSlope := (-666413816118383 / 400000000000000 : ℚ)
  oldCenter := (4784048299353473 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1291
  oldLo := (38250000000000001 / 100000000000000000 : ℚ)
  oldHi := (38300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_933]
}

noncomputable def cell_10981 : Cell := { cellDefaults with
  domain := ⟨(218750000000000011 / 400000000000000000 : ℚ), (13675000000000001 / 25000000000000000 : ℚ)⟩
  r := (11759062351161 / 20000000000000 : ℚ)
  w := (14296668324703 / 10000000000000 : ℚ)
  center := (437550000000000027 / 800000000000000000 : ℚ)
  supportValue := (382515724478251 / 1000000000000000 : ℚ)
  supportSlope := (-166477385761149 / 100000000000000 : ℚ)
  oldCenter := (382515724478251 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1291
  oldLo := (38200000000000001 / 100000000000000000 : ℚ)
  oldHi := (38300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_932, piece_933]
}

noncomputable def cell_10982 : Cell := { cellDefaults with
  domain := ⟨(13675000000000001 / 25000000000000000 : ℚ), (218850000000000011 / 400000000000000000 : ℚ)⟩
  r := (7345528109371 / 12500000000000 : ℚ)
  w := (1429303737507 / 1000000000000 : ℚ)
  center := (437650000000000027 / 800000000000000000 : ℚ)
  supportValue := (19137124872135017 / 50000000000000000 : ℚ)
  supportSlope := (-16652980289279529 / 10000000000000000 : ℚ)
  oldCenter := (19137124872135017 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1292
  oldLo := (38250000000000001 / 100000000000000000 : ℚ)
  oldHi := (38300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_933]
}

noncomputable def cell_10983 : Cell := { cellDefaults with
  domain := ⟨(218850000000000011 / 400000000000000000 : ℚ), (109450000000000003 / 200000000000000000 : ℚ)⟩
  r := (7345528109371 / 12500000000000 : ℚ)
  w := (1429303737507 / 1000000000000 : ℚ)
  center := (437750000000000017 / 800000000000000000 : ℚ)
  supportValue := (956336124852109 / 2500000000000000 : ℚ)
  supportSlope := (-1039947841174997 / 625000000000000 : ℚ)
  oldCenter := (956336124852109 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1292
  oldLo := (38200000000000001 / 100000000000000000 : ℚ)
  oldHi := (38300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_932, piece_933]
}

noncomputable def cell_10984 : Cell := { cellDefaults with
  domain := ⟨(109450000000000003 / 200000000000000000 : ℚ), (218950000000000001 / 400000000000000000 : ℚ)⟩
  r := (7345528109371 / 12500000000000 : ℚ)
  w := (1429303737507 / 1000000000000 : ℚ)
  center := (437850000000000007 / 800000000000000000 : ℚ)
  supportValue := (1911632451333051 / 5000000000000000 : ℚ)
  supportSlope := (-8314883210301659 / 5000000000000000 : ℚ)
  oldCenter := (1911632451333051 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1292
  oldLo := (38200000000000001 / 100000000000000000 : ℚ)
  oldHi := (38250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_932]
}

noncomputable def cell_10985 : Cell := { cellDefaults with
  domain := ⟨(218950000000000001 / 400000000000000000 : ℚ), (54749999999999999 / 100000000000000000 : ℚ)⟩
  r := (7345528109371 / 12500000000000 : ℚ)
  w := (1429303737507 / 1000000000000 : ℚ)
  center := (437949999999999997 / 800000000000000000 : ℚ)
  supportValue := (19105936651879743 / 50000000000000000 : ℚ)
  supportSlope := (-8305686547918909 / 5000000000000000 : ℚ)
  oldCenter := (19105936651879743 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1292
  oldLo := (38200000000000001 / 100000000000000000 : ℚ)
  oldHi := (38250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_932]
}

noncomputable def cell_10986 : Cell := { cellDefaults with
  domain := ⟨(54749999999999999 / 100000000000000000 : ℚ), (219050000000000001 / 400000000000000000 : ℚ)⟩
  r := (58733173635797 / 100000000000000 : ℚ)
  w := (1786176595459 / 1250000000000 : ℚ)
  center := (438049999999999997 / 800000000000000000 : ℚ)
  supportValue := (19117256103252103 / 50000000000000000 : ℚ)
  supportSlope := (-664897075044313 / 400000000000000 : ℚ)
  oldCenter := (19117256103252103 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1293
  oldLo := (38200000000000001 / 100000000000000000 : ℚ)
  oldHi := (38250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_932]
}

noncomputable def cell_10987 : Cell := { cellDefaults with
  domain := ⟨(219050000000000001 / 400000000000000000 : ℚ), (109550000000000003 / 200000000000000000 : ℚ)⟩
  r := (58733173635797 / 100000000000000 : ℚ)
  w := (1786176595459 / 1250000000000 : ℚ)
  center := (438150000000000007 / 800000000000000000 : ℚ)
  supportValue := (7642749129697387 / 20000000000000000 : ℚ)
  supportSlope := (-664161952873177 / 400000000000000 : ℚ)
  oldCenter := (7642749129697387 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1293
  oldLo := (38200000000000001 / 100000000000000000 : ℚ)
  oldHi := (38250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_932]
}

noncomputable def cell_10988 : Cell := { cellDefaults with
  domain := ⟨(109550000000000003 / 200000000000000000 : ℚ), (219150000000000011 / 400000000000000000 : ℚ)⟩
  r := (58733173635797 / 100000000000000 : ℚ)
  w := (1786176595459 / 1250000000000 : ℚ)
  center := (438250000000000017 / 800000000000000000 : ℚ)
  supportValue := (763859924897969 / 2000000000000000 : ℚ)
  supportSlope := (-8298569146462379 / 5000000000000000 : ℚ)
  oldCenter := (763859924897969 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1293
  oldLo := (38150000000000001 / 100000000000000000 : ℚ)
  oldHi := (38250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_931, piece_932]
}

noncomputable def cell_10989 : Cell := { cellDefaults with
  domain := ⟨(219150000000000011 / 400000000000000000 : ℚ), (13700000000000001 / 25000000000000000 : ℚ)⟩
  r := (58733173635797 / 100000000000000 : ℚ)
  w := (1786176595459 / 1250000000000 : ℚ)
  center := (438350000000000027 / 800000000000000000 : ℚ)
  supportValue := (9543064641059741 / 25000000000000000 : ℚ)
  supportSlope := (-8290469548461191 / 5000000000000000 : ℚ)
  oldCenter := (9543064641059741 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1293
  oldLo := (38150000000000001 / 100000000000000000 : ℚ)
  oldHi := (38200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_931]
}

noncomputable def cell_10990 : Cell := { cellDefaults with
  domain := ⟨(13700000000000001 / 25000000000000000 : ℚ), (219250000000000011 / 400000000000000000 : ℚ)⟩
  r := (14675539972199 / 25000000000000 : ℚ)
  w := (14285794961289 / 10000000000000 : ℚ)
  center := (438450000000000027 / 800000000000000000 : ℚ)
  supportValue := (3819485591439481 / 10000000000000000 : ℚ)
  supportSlope := (-331771999607111 / 200000000000000 : ℚ)
  oldCenter := (3819485591439481 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1294
  oldLo := (38150000000000001 / 100000000000000000 : ℚ)
  oldHi := (38250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_931, piece_932]
}

noncomputable def cell_10991 : Cell := { cellDefaults with
  domain := ⟨(219250000000000011 / 400000000000000000 : ℚ), (109650000000000003 / 200000000000000000 : ℚ)⟩
  r := (14675539972199 / 25000000000000 : ℚ)
  w := (14285794961289 / 10000000000000 : ℚ)
  center := (438550000000000017 / 800000000000000000 : ℚ)
  supportValue := (7634825473923893 / 20000000000000000 : ℚ)
  supportSlope := (-4143409488868569 / 2500000000000000 : ℚ)
  oldCenter := (7634825473923893 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1294
  oldLo := (38150000000000001 / 100000000000000000 : ℚ)
  oldHi := (38200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_931]
}

noncomputable def cell_10992 : Cell := { cellDefaults with
  domain := ⟨(109650000000000003 / 200000000000000000 : ℚ), (219350000000000001 / 400000000000000000 : ℚ)⟩
  r := (14675539972199 / 25000000000000 : ℚ)
  w := (14285794961289 / 10000000000000 : ℚ)
  center := (438650000000000007 / 800000000000000000 : ℚ)
  supportValue := (3815342175794269 / 10000000000000000 : ℚ)
  supportSlope := (-16559923548699607 / 10000000000000000 : ℚ)
  oldCenter := (3815342175794269 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1294
  oldLo := (38100000000000001 / 100000000000000000 : ℚ)
  oldHi := (38200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_930, piece_931]
}

noncomputable def cell_10993 : Cell := { cellDefaults with
  domain := ⟨(219350000000000001 / 400000000000000000 : ℚ), (54849999999999999 / 100000000000000000 : ℚ)⟩
  r := (14675539972199 / 25000000000000 : ℚ)
  w := (14285794961289 / 10000000000000 : ℚ)
  center := (438749999999999997 / 800000000000000000 : ℚ)
  supportValue := (1906636237129517 / 5000000000000000 : ℚ)
  supportSlope := (-16550648183947791 / 10000000000000000 : ℚ)
  oldCenter := (1906636237129517 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1294
  oldLo := (38100000000000001 / 100000000000000000 : ℚ)
  oldHi := (38150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_930]
}

noncomputable def cell_10994 : Cell := { cellDefaults with
  domain := ⟨(54849999999999999 / 100000000000000000 : ℚ), (219450000000000001 / 400000000000000000 : ℚ)⟩
  r := (7333897875977 / 12500000000000 : ℚ)
  w := (7141092621817 / 5000000000000 : ℚ)
  center := (438849999999999997 / 800000000000000000 : ℚ)
  supportValue := (3815527373522567 / 10000000000000000 : ℚ)
  supportSlope := (-16551397264608647 / 10000000000000000 : ℚ)
  oldCenter := (3815527373522567 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1295
  oldLo := (38100000000000001 / 100000000000000000 : ℚ)
  oldHi := (38200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_930, piece_931]
}

noncomputable def cell_10995 : Cell := { cellDefaults with
  domain := ⟨(219450000000000001 / 400000000000000000 : ℚ), (109750000000000003 / 200000000000000000 : ℚ)⟩
  r := (7333897875977 / 12500000000000 : ℚ)
  w := (7141092621817 / 5000000000000 : ℚ)
  center := (438950000000000007 / 800000000000000000 : ℚ)
  supportValue := (9533646841201271 / 25000000000000000 : ℚ)
  supportSlope := (-4135842012630983 / 2500000000000000 : ℚ)
  oldCenter := (9533646841201271 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1295
  oldLo := (38100000000000001 / 100000000000000000 : ℚ)
  oldHi := (38150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_930]
}

noncomputable def cell_10996 : Cell := { cellDefaults with
  domain := ⟨(109750000000000003 / 200000000000000000 : ℚ), (219550000000000011 / 400000000000000000 : ℚ)⟩
  r := (7333897875977 / 12500000000000 : ℚ)
  w := (7141092621817 / 5000000000000 : ℚ)
  center := (439050000000000017 / 800000000000000000 : ℚ)
  supportValue := (19056959795226683 / 50000000000000000 : ℚ)
  supportSlope := (-413126348802487 / 250000000000000 : ℚ)
  oldCenter := (19056959795226683 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1295
  oldLo := (38100000000000001 / 100000000000000000 : ℚ)
  oldHi := (38150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_930]
}

noncomputable def cell_10997 : Cell := { cellDefaults with
  domain := ⟨(219550000000000011 / 400000000000000000 : ℚ), (13725000000000001 / 25000000000000000 : ℚ)⟩
  r := (7333897875977 / 12500000000000 : ℚ)
  w := (7141092621817 / 5000000000000 : ℚ)
  center := (439150000000000027 / 800000000000000000 : ℚ)
  supportValue := (3809326904898397 / 10000000000000000 : ℚ)
  supportSlope := (-1651812892667527 / 1000000000000000 : ℚ)
  oldCenter := (3809326904898397 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1295
  oldLo := (38055865921787707 / 100000000000000000 : ℚ)
  oldHi := (38150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_929, piece_930]
}

noncomputable def cell_10998 : Cell := { cellDefaults with
  domain := ⟨(13725000000000001 / 25000000000000000 : ℚ), (219650000000000011 / 400000000000000000 : ℚ)⟩
  r := (29320121922557 / 50000000000000 : ℚ)
  w := (7139292419539 / 5000000000000 : ℚ)
  center := (439250000000000027 / 800000000000000000 : ℚ)
  supportValue := (38115761257622793 / 100000000000000000 : ℚ)
  supportSlope := (-4129442764025239 / 2500000000000000 : ℚ)
  oldCenter := (38115761257622793 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1296
  oldLo := (38100000000000001 / 100000000000000000 : ℚ)
  oldHi := (38150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_930]
}

noncomputable def cell_10999 : Cell := { cellDefaults with
  domain := ⟨(219650000000000011 / 400000000000000000 : ℚ), (109850000000000003 / 200000000000000000 : ℚ)⟩
  r := (29320121922557 / 50000000000000 : ℚ)
  w := (7139292419539 / 5000000000000 : ℚ)
  center := (439350000000000017 / 800000000000000000 : ℚ)
  supportValue := (9523780336598349 / 25000000000000000 : ℚ)
  supportSlope := (-4127408748633567 / 2500000000000000 : ℚ)
  oldCenter := (9523780336598349 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1296
  oldLo := (38055865921787707 / 100000000000000000 : ℚ)
  oldHi := (38150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_929, piece_930]
}

theorem check_10950 : cell_10950.check = true := by
  decide +kernel

theorem check_10951 : cell_10951.check = true := by
  decide +kernel

theorem check_10952 : cell_10952.check = true := by
  decide +kernel

theorem check_10953 : cell_10953.check = true := by
  decide +kernel

theorem check_10954 : cell_10954.check = true := by
  decide +kernel

theorem check_10955 : cell_10955.check = true := by
  decide +kernel

theorem check_10956 : cell_10956.check = true := by
  decide +kernel

theorem check_10957 : cell_10957.check = true := by
  decide +kernel

theorem check_10958 : cell_10958.check = true := by
  decide +kernel

theorem check_10959 : cell_10959.check = true := by
  decide +kernel

theorem check_10960 : cell_10960.check = true := by
  decide +kernel

theorem check_10961 : cell_10961.check = true := by
  decide +kernel

theorem check_10962 : cell_10962.check = true := by
  decide +kernel

theorem check_10963 : cell_10963.check = true := by
  decide +kernel

theorem check_10964 : cell_10964.check = true := by
  decide +kernel

theorem check_10965 : cell_10965.check = true := by
  decide +kernel

theorem check_10966 : cell_10966.check = true := by
  decide +kernel

theorem check_10967 : cell_10967.check = true := by
  decide +kernel

theorem check_10968 : cell_10968.check = true := by
  decide +kernel

theorem check_10969 : cell_10969.check = true := by
  decide +kernel

theorem check_10970 : cell_10970.check = true := by
  decide +kernel

theorem check_10971 : cell_10971.check = true := by
  decide +kernel

theorem check_10972 : cell_10972.check = true := by
  decide +kernel

theorem check_10973 : cell_10973.check = true := by
  decide +kernel

theorem check_10974 : cell_10974.check = true := by
  decide +kernel

theorem check_10975 : cell_10975.check = true := by
  decide +kernel

theorem check_10976 : cell_10976.check = true := by
  decide +kernel

theorem check_10977 : cell_10977.check = true := by
  decide +kernel

theorem check_10978 : cell_10978.check = true := by
  decide +kernel

theorem check_10979 : cell_10979.check = true := by
  decide +kernel

theorem check_10980 : cell_10980.check = true := by
  decide +kernel

theorem check_10981 : cell_10981.check = true := by
  decide +kernel

theorem check_10982 : cell_10982.check = true := by
  decide +kernel

theorem check_10983 : cell_10983.check = true := by
  decide +kernel

theorem check_10984 : cell_10984.check = true := by
  decide +kernel

theorem check_10985 : cell_10985.check = true := by
  decide +kernel

theorem check_10986 : cell_10986.check = true := by
  decide +kernel

theorem check_10987 : cell_10987.check = true := by
  decide +kernel

theorem check_10988 : cell_10988.check = true := by
  decide +kernel

theorem check_10989 : cell_10989.check = true := by
  decide +kernel

theorem check_10990 : cell_10990.check = true := by
  decide +kernel

theorem check_10991 : cell_10991.check = true := by
  decide +kernel

theorem check_10992 : cell_10992.check = true := by
  decide +kernel

theorem check_10993 : cell_10993.check = true := by
  decide +kernel

theorem check_10994 : cell_10994.check = true := by
  decide +kernel

theorem check_10995 : cell_10995.check = true := by
  decide +kernel

theorem check_10996 : cell_10996.check = true := by
  decide +kernel

theorem check_10997 : cell_10997.check = true := by
  decide +kernel

theorem check_10998 : cell_10998.check = true := by
  decide +kernel

theorem check_10999 : cell_10999.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_10950, cell_10951, cell_10952, cell_10953, cell_10954, cell_10955, cell_10956, cell_10957, cell_10958, cell_10959, cell_10960, cell_10961, cell_10962, cell_10963, cell_10964, cell_10965, cell_10966, cell_10967, cell_10968, cell_10969, cell_10970, cell_10971, cell_10972, cell_10973, cell_10974, cell_10975, cell_10976, cell_10977, cell_10978, cell_10979, cell_10980, cell_10981, cell_10982, cell_10983, cell_10984, cell_10985, cell_10986, cell_10987, cell_10988, cell_10989, cell_10990, cell_10991, cell_10992, cell_10993, cell_10994, cell_10995, cell_10996, cell_10997, cell_10998, cell_10999]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10950, check_10951, check_10952, check_10953, check_10954, check_10955, check_10956, check_10957, check_10958, check_10959, check_10960, check_10961, check_10962, check_10963, check_10964, check_10965, check_10966, check_10967, check_10968, check_10969, check_10970, check_10971, check_10972, check_10973, check_10974, check_10975, check_10976, check_10977, check_10978, check_10979, check_10980, check_10981, check_10982, check_10983, check_10984, check_10985, check_10986, check_10987, check_10988, check_10989, check_10990, check_10991, check_10992, check_10993, check_10994, check_10995, check_10996, check_10997, check_10998, check_10999, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0219

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0219
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0219
open AnalyticBounds.ExpressionCertificate

theorem linked_10950 : Linked cell_10950 pieces := by
  link_source cell_10950 with piece_1283 using piece_1283_mem, piece_939_mem

theorem linked_10951 : Linked cell_10951 pieces := by
  link_source cell_10951 with piece_1283 using piece_1283_mem, ⟨piece_938_mem, piece_939_mem⟩

theorem linked_10952 : Linked cell_10952 pieces := by
  link_source cell_10952 with piece_1283 using piece_1283_mem, piece_938_mem

theorem linked_10953 : Linked cell_10953 pieces := by
  link_source cell_10953 with piece_1284 using piece_1284_mem, ⟨piece_938_mem, piece_939_mem⟩

theorem linked_10954 : Linked cell_10954 pieces := by
  link_source cell_10954 with piece_1284 using piece_1284_mem, piece_938_mem

theorem linked_10955 : Linked cell_10955 pieces := by
  link_source cell_10955 with piece_1284 using piece_1284_mem, piece_938_mem

theorem linked_10956 : Linked cell_10956 pieces := by
  link_source cell_10956 with piece_1284 using piece_1284_mem, ⟨piece_937_mem, piece_938_mem⟩

theorem linked_10957 : Linked cell_10957 pieces := by
  link_source cell_10957 with piece_1285 using piece_1285_mem, piece_938_mem

theorem linked_10958 : Linked cell_10958 pieces := by
  link_source cell_10958 with piece_1285 using piece_1285_mem, ⟨piece_937_mem, piece_938_mem⟩

theorem linked_10959 : Linked cell_10959 pieces := by
  link_source cell_10959 with piece_1285 using piece_1285_mem, piece_937_mem

theorem linked_10960 : Linked cell_10960 pieces := by
  link_source cell_10960 with piece_1285 using piece_1285_mem, ⟨piece_936_mem, piece_937_mem⟩

theorem linked_10961 : Linked cell_10961 pieces := by
  link_source cell_10961 with piece_1286 using piece_1286_mem, piece_937_mem

theorem linked_10962 : Linked cell_10962 pieces := by
  link_source cell_10962 with piece_1286 using piece_1286_mem, ⟨piece_936_mem, piece_937_mem⟩

theorem linked_10963 : Linked cell_10963 pieces := by
  link_source cell_10963 with piece_1286 using piece_1286_mem, piece_936_mem

theorem linked_10964 : Linked cell_10964 pieces := by
  link_source cell_10964 with piece_1286 using piece_1286_mem, piece_936_mem

theorem linked_10965 : Linked cell_10965 pieces := by
  link_source cell_10965 with piece_1287 using piece_1287_mem, piece_936_mem

theorem linked_10966 : Linked cell_10966 pieces := by
  link_source cell_10966 with piece_1287 using piece_1287_mem, piece_936_mem

theorem linked_10967 : Linked cell_10967 pieces := by
  link_source cell_10967 with piece_1287 using piece_1287_mem, ⟨piece_935_mem, piece_936_mem⟩

theorem linked_10968 : Linked cell_10968 pieces := by
  link_source cell_10968 with piece_1287 using piece_1287_mem, piece_935_mem

theorem linked_10969 : Linked cell_10969 pieces := by
  link_source cell_10969 with piece_1288 using piece_1288_mem, ⟨piece_935_mem, piece_936_mem⟩

theorem linked_10970 : Linked cell_10970 pieces := by
  link_source cell_10970 with piece_1288 using piece_1288_mem, piece_935_mem

theorem linked_10971 : Linked cell_10971 pieces := by
  link_source cell_10971 with piece_1288 using piece_1288_mem, ⟨piece_934_mem, piece_935_mem⟩

theorem linked_10972 : Linked cell_10972 pieces := by
  link_source cell_10972 with piece_1288 using piece_1288_mem, piece_934_mem

theorem linked_10973 : Linked cell_10973 pieces := by
  link_source cell_10973 with piece_1289 using piece_1289_mem, ⟨piece_934_mem, piece_935_mem⟩

theorem linked_10974 : Linked cell_10974 pieces := by
  link_source cell_10974 with piece_1289 using piece_1289_mem, piece_934_mem

theorem linked_10975 : Linked cell_10975 pieces := by
  link_source cell_10975 with piece_1289 using piece_1289_mem, piece_934_mem

theorem linked_10976 : Linked cell_10976 pieces := by
  link_source cell_10976 with piece_1289 using piece_1289_mem, ⟨piece_933_mem, piece_934_mem⟩

theorem linked_10977 : Linked cell_10977 pieces := by
  link_source cell_10977 with piece_1290 using piece_1290_mem, piece_933_mem

theorem linked_10978 : Linked cell_10978 pieces := by
  link_source cell_10978 with piece_1291 using piece_1291_mem, piece_934_mem

theorem linked_10979 : Linked cell_10979 pieces := by
  link_source cell_10979 with piece_1291 using piece_1291_mem, ⟨piece_933_mem, piece_934_mem⟩

theorem linked_10980 : Linked cell_10980 pieces := by
  link_source cell_10980 with piece_1291 using piece_1291_mem, piece_933_mem

theorem linked_10981 : Linked cell_10981 pieces := by
  link_source cell_10981 with piece_1291 using piece_1291_mem, ⟨piece_932_mem, piece_933_mem⟩

theorem linked_10982 : Linked cell_10982 pieces := by
  link_source cell_10982 with piece_1292 using piece_1292_mem, piece_933_mem

theorem linked_10983 : Linked cell_10983 pieces := by
  link_source cell_10983 with piece_1292 using piece_1292_mem, ⟨piece_932_mem, piece_933_mem⟩

theorem linked_10984 : Linked cell_10984 pieces := by
  link_source cell_10984 with piece_1292 using piece_1292_mem, piece_932_mem

theorem linked_10985 : Linked cell_10985 pieces := by
  link_source cell_10985 with piece_1292 using piece_1292_mem, piece_932_mem

theorem linked_10986 : Linked cell_10986 pieces := by
  link_source cell_10986 with piece_1293 using piece_1293_mem, piece_932_mem

theorem linked_10987 : Linked cell_10987 pieces := by
  link_source cell_10987 with piece_1293 using piece_1293_mem, piece_932_mem

theorem linked_10988 : Linked cell_10988 pieces := by
  link_source cell_10988 with piece_1293 using piece_1293_mem, ⟨piece_931_mem, piece_932_mem⟩

theorem linked_10989 : Linked cell_10989 pieces := by
  link_source cell_10989 with piece_1293 using piece_1293_mem, piece_931_mem

theorem linked_10990 : Linked cell_10990 pieces := by
  link_source cell_10990 with piece_1294 using piece_1294_mem, ⟨piece_931_mem, piece_932_mem⟩

theorem linked_10991 : Linked cell_10991 pieces := by
  link_source cell_10991 with piece_1294 using piece_1294_mem, piece_931_mem

theorem linked_10992 : Linked cell_10992 pieces := by
  link_source cell_10992 with piece_1294 using piece_1294_mem, ⟨piece_930_mem, piece_931_mem⟩

theorem linked_10993 : Linked cell_10993 pieces := by
  link_source cell_10993 with piece_1294 using piece_1294_mem, piece_930_mem

theorem linked_10994 : Linked cell_10994 pieces := by
  link_source cell_10994 with piece_1295 using piece_1295_mem, ⟨piece_930_mem, piece_931_mem⟩

theorem linked_10995 : Linked cell_10995 pieces := by
  link_source cell_10995 with piece_1295 using piece_1295_mem, piece_930_mem

theorem linked_10996 : Linked cell_10996 pieces := by
  link_source cell_10996 with piece_1295 using piece_1295_mem, piece_930_mem

theorem linked_10997 : Linked cell_10997 pieces := by
  link_source cell_10997 with piece_1295 using piece_1295_mem, ⟨piece_929_mem, piece_930_mem⟩

theorem linked_10998 : Linked cell_10998 pieces := by
  link_source cell_10998 with piece_1296 using piece_1296_mem, piece_930_mem

theorem linked_10999 : Linked cell_10999 pieces := by
  link_source cell_10999 with piece_1296 using piece_1296_mem, ⟨piece_929_mem, piece_930_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0219.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0219.cells,List.forall_mem_cons]
  exact ⟨linked_10950, linked_10951, linked_10952, linked_10953, linked_10954, linked_10955, linked_10956, linked_10957, linked_10958, linked_10959, linked_10960, linked_10961, linked_10962, linked_10963, linked_10964, linked_10965, linked_10966, linked_10967, linked_10968, linked_10969, linked_10970, linked_10971, linked_10972, linked_10973, linked_10974, linked_10975, linked_10976, linked_10977, linked_10978, linked_10979, linked_10980, linked_10981, linked_10982, linked_10983, linked_10984, linked_10985, linked_10986, linked_10987, linked_10988, linked_10989, linked_10990, linked_10991, linked_10992, linked_10993, linked_10994, linked_10995, linked_10996, linked_10997, linked_10998, linked_10999, by simp⟩

theorem covered : covers (21725000000000001 / 40000000000000000 : ℚ) (109850000000000003 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0219.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0219
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0220
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(109850000000000003 / 200000000000000000 : ℚ), (219750000000000001 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (58455376863267 / 100000000000000 : ℚ)
  w := (14257138039411 / 10000000000000 : ℚ)
  center := (439450000000000007 / 800000000000000000 : ℚ)
  supportValue := (7614898247388201 / 20000000000000000 : ℚ)
  supportSlope := (-8247461218956189 / 5000000000000000 : ℚ)
  oldCenter := (7614898247388201 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1297
  oldLo := (19 / 50 : ℚ)
  oldHi := (761 / 2000 : ℚ)
  oldPieces := [piece_927]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11000 : Cell := { cellDefaults with
  r := (29320121922557 / 50000000000000 : ℚ)
  w := (7139292419539 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1296
  oldLo := (38055865921787707 / 100000000000000000 : ℚ)
  oldHi := (38100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_929]
}

noncomputable def cell_11001 : Cell := { cellDefaults with
  domain := ⟨(219750000000000001 / 400000000000000000 : ℚ), (54949999999999999 / 100000000000000000 : ℚ)⟩
  r := (29320121922557 / 50000000000000 : ℚ)
  w := (7139292419539 / 5000000000000 : ℚ)
  center := (439549999999999997 / 800000000000000000 : ℚ)
  supportValue := (475673549740833 / 1250000000000000 : ℚ)
  supportSlope := (-16480983126562747 / 10000000000000000 : ℚ)
  oldCenter := (475673549740833 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1296
  oldHi := (38100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_927, piece_928, piece_929]
}

noncomputable def cell_11002 : Cell := { cellDefaults with
  domain := ⟨(54949999999999999 / 100000000000000000 : ℚ), (219850000000000001 / 400000000000000000 : ℚ)⟩
  r := (29304670633401 / 50000000000000 : ℚ)
  w := (7137495737399 / 5000000000000 : ℚ)
  center := (439649999999999997 / 800000000000000000 : ℚ)
  supportValue := (3807632949560419 / 10000000000000000 : ℚ)
  supportSlope := (-2060957792171319 / 1250000000000000 : ℚ)
  oldCenter := (3807632949560419 / 10000000000000000 : ℚ)
  oldLo := (38055865921787707 / 100000000000000000 : ℚ)
  oldHi := (38100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_929]
}

noncomputable def cell_11003 : Cell := { cellDefaults with
  domain := ⟨(219850000000000001 / 400000000000000000 : ℚ), (109950000000000003 / 200000000000000000 : ℚ)⟩
  r := (29304670633401 / 50000000000000 : ℚ)
  w := (7137495737399 / 5000000000000 : ℚ)
  center := (439750000000000007 / 800000000000000000 : ℚ)
  supportValue := (38055731303365153 / 100000000000000000 : ℚ)
  supportSlope := (-823625078647001 / 500000000000000 : ℚ)
  oldCenter := (38055731303365153 / 100000000000000000 : ℚ)
  oldHi := (38100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_927, piece_928, piece_929]
}

noncomputable def cell_11004 : Cell := { cellDefaults with
  domain := ⟨(109950000000000003 / 200000000000000000 : ℚ), (219950000000000011 / 400000000000000000 : ℚ)⟩
  r := (29304670633401 / 50000000000000 : ℚ)
  w := (7137495737399 / 5000000000000 : ℚ)
  center := (439850000000000017 / 800000000000000000 : ℚ)
  supportValue := (1188598232949337 / 3125000000000000 : ℚ)
  supportSlope := (-16464931236546707 / 10000000000000000 : ℚ)
  oldCenter := (1188598232949337 / 3125000000000000 : ℚ)
  oldPieces := [piece_927]
}

noncomputable def cell_11005 : Cell := { cellDefaults with
  domain := ⟨(219950000000000011 / 400000000000000000 : ℚ), (13750000000000001 / 25000000000000000 : ℚ)⟩
  r := (29304670633401 / 50000000000000 : ℚ)
  w := (7137495737399 / 5000000000000 : ℚ)
  center := (439950000000000027 / 800000000000000000 : ℚ)
  supportValue := (1900728684216553 / 5000000000000000 : ℚ)
  supportSlope := (-657867361616061 / 400000000000000 : ℚ)
  oldCenter := (1900728684216553 / 5000000000000000 : ℚ)
  oldPieces := [piece_927]
}

noncomputable def cell_11006 : Cell := { cellDefaults with
  domain := ⟨(13750000000000001 / 25000000000000000 : ℚ), (220050000000000011 / 400000000000000000 : ℚ)⟩
  r := (58578474676457 / 100000000000000 : ℚ)
  w := (14271405111187 / 10000000000000 : ℚ)
  center := (440050000000000027 / 800000000000000000 : ℚ)
  supportValue := (38036978959342443 / 100000000000000000 : ℚ)
  supportSlope := (-1645769399982009 / 1000000000000000 : ℚ)
  oldCenter := (38036978959342443 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1298
  oldPieces := [piece_927]
}

noncomputable def cell_11007 : Cell := { cellDefaults with
  domain := ⟨(220050000000000011 / 400000000000000000 : ℚ), (110050000000000003 / 200000000000000000 : ℚ)⟩
  r := (58578474676457 / 100000000000000 : ℚ)
  w := (14271405111187 / 10000000000000 : ℚ)
  center := (440150000000000017 / 800000000000000000 : ℚ)
  supportValue := (19008209113236807 / 50000000000000000 : ℚ)
  supportSlope := (-8219730893600219 / 5000000000000000 : ℚ)
  oldCenter := (19008209113236807 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1298
  oldPieces := [piece_927]
}

noncomputable def cell_11008 : Cell := { cellDefaults with
  domain := ⟨(110050000000000003 / 200000000000000000 : ℚ), (220150000000000001 / 400000000000000000 : ℚ)⟩
  r := (58578474676457 / 100000000000000 : ℚ)
  w := (14271405111187 / 10000000000000 : ℚ)
  center := (440250000000000007 / 800000000000000000 : ℚ)
  supportValue := (37995876748292023 / 100000000000000000 : ℚ)
  supportSlope := (-1643096871454639 / 1000000000000000 : ℚ)
  oldCenter := (37995876748292023 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1298
  oldLo := (759 / 2000 : ℚ)
  oldPieces := [piece_926, piece_927]
}

noncomputable def cell_11009 : Cell := { cellDefaults with
  domain := ⟨(220150000000000001 / 400000000000000000 : ℚ), (55049999999999999 / 100000000000000000 : ℚ)⟩
  r := (58578474676457 / 100000000000000 : ℚ)
  w := (14271405111187 / 10000000000000 : ℚ)
  center := (440349999999999997 / 800000000000000000 : ℚ)
  supportValue := (949383607079373 / 2500000000000000 : ℚ)
  supportSlope := (-3283368222217193 / 2000000000000000 : ℚ)
  oldCenter := (949383607079373 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1298
  oldLo := (759 / 2000 : ℚ)
  oldHi := (19 / 50 : ℚ)
  oldPieces := [piece_926]
}

noncomputable def cell_11010 : Cell := { cellDefaults with
  domain := ⟨(55049999999999999 / 100000000000000000 : ℚ), (110125000000000001 / 200000000000000000 : ℚ)⟩
  r := (58547644409863 / 100000000000000 : ℚ)
  w := (3566956372567 / 2500000000000 : ℚ)
  center := (220224999999999999 / 400000000000000000 : ℚ)
  supportValue := (759954193613903 / 2000000000000000 : ℚ)
  supportSlope := (-1642252105186673 / 1000000000000000 : ℚ)
  oldCenter := (759954193613903 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1299
  oldLo := (759 / 2000 : ℚ)
  oldPieces := [piece_926, piece_927]
}

noncomputable def cell_11011 : Cell := { cellDefaults with
  domain := ⟨(110125000000000001 / 200000000000000000 : ℚ), (27537500000000001 / 50000000000000000 : ℚ)⟩
  r := (58547644409863 / 100000000000000 : ℚ)
  w := (3566956372567 / 2500000000000 : ℚ)
  center := (44055000000000001 / 80000000000000000 : ℚ)
  supportValue := (118678706949151 / 312500000000000 : ℚ)
  supportSlope := (-4102410513284257 / 2500000000000000 : ℚ)
  oldCenter := (118678706949151 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1299
  oldLo := (759 / 2000 : ℚ)
  oldHi := (19 / 50 : ℚ)
  oldPieces := [piece_926]
}

noncomputable def cell_11012 : Cell := { cellDefaults with
  domain := ⟨(27537500000000001 / 50000000000000000 : ℚ), (110175000000000007 / 200000000000000000 : ℚ)⟩
  r := (58547644409863 / 100000000000000 : ℚ)
  w := (3566956372567 / 2500000000000 : ℚ)
  center := (220325000000000011 / 400000000000000000 : ℚ)
  supportValue := (759133710288417 / 2000000000000000 : ℚ)
  supportSlope := (-16393906692904447 / 10000000000000000 : ℚ)
  oldCenter := (759133710288417 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1299
  oldLo := (379 / 1000 : ℚ)
  oldHi := (19 / 50 : ℚ)
  oldPieces := [piece_925, piece_926]
}

noncomputable def cell_11013 : Cell := { cellDefaults with
  domain := ⟨(110175000000000007 / 200000000000000000 : ℚ), (11020000000000001 / 20000000000000000 : ℚ)⟩
  r := (58547644409863 / 100000000000000 : ℚ)
  w := (3566956372567 / 2500000000000 : ℚ)
  center := (220375000000000017 / 400000000000000000 : ℚ)
  supportValue := (3793619580806943 / 10000000000000000 : ℚ)
  supportSlope := (-16387140933307431 / 10000000000000000 : ℚ)
  oldCenter := (3793619580806943 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1299
  oldLo := (379 / 1000 : ℚ)
  oldHi := (759 / 2000 : ℚ)
  oldPieces := [piece_925]
}

noncomputable def cell_11014 : Cell := { cellDefaults with
  domain := ⟨(11020000000000001 / 20000000000000000 : ℚ), (110225000000000007 / 200000000000000000 : ℚ)⟩
  r := (14629212916603 / 25000000000000 : ℚ)
  w := (7132127543247 / 5000000000000 : ℚ)
  center := (220425000000000017 / 400000000000000000 : ℚ)
  supportValue := (18979253336991017 / 50000000000000000 : ℚ)
  supportSlope := (-409636769662263 / 250000000000000 : ℚ)
  oldCenter := (18979253336991017 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1300
  oldLo := (379 / 1000 : ℚ)
  oldHi := (19 / 50 : ℚ)
  oldPieces := [piece_925, piece_926]
}

noncomputable def cell_11015 : Cell := { cellDefaults with
  domain := ⟨(110225000000000007 / 200000000000000000 : ℚ), (27562500000000001 / 50000000000000000 : ℚ)⟩
  r := (14629212916603 / 25000000000000 : ℚ)
  w := (7132127543247 / 5000000000000 : ℚ)
  center := (220475000000000011 / 400000000000000000 : ℚ)
  supportValue := (3793802750002093 / 10000000000000000 : ℚ)
  supportSlope := (-16379959133756303 / 10000000000000000 : ℚ)
  oldCenter := (3793802750002093 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1300
  oldLo := (379 / 1000 : ℚ)
  oldHi := (759 / 2000 : ℚ)
  oldPieces := [piece_925]
}

noncomputable def cell_11016 : Cell := { cellDefaults with
  domain := ⟨(27562500000000001 / 50000000000000000 : ℚ), (110275000000000001 / 200000000000000000 : ℚ)⟩
  r := (14629212916603 / 25000000000000 : ℚ)
  w := (7132127543247 / 5000000000000 : ℚ)
  center := (44105000000000001 / 80000000000000000 : ℚ)
  supportValue := (3791756389281489 / 10000000000000000 : ℚ)
  supportSlope := (-1636179574626891 / 1000000000000000 : ℚ)
  oldCenter := (3791756389281489 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1300
  oldLo := (379 / 1000 : ℚ)
  oldHi := (759 / 2000 : ℚ)
  oldPieces := [piece_925]
}

noncomputable def cell_11017 : Cell := { cellDefaults with
  domain := ⟨(110275000000000001 / 200000000000000000 : ℚ), (55149999999999999 / 100000000000000000 : ℚ)⟩
  r := (14629212916603 / 25000000000000 : ℚ)
  w := (7132127543247 / 5000000000000 : ℚ)
  center := (220574999999999999 / 400000000000000000 : ℚ)
  supportValue := (3789712047165521 / 10000000000000000 : ℚ)
  supportSlope := (-1635260316919603 / 1000000000000000 : ℚ)
  oldCenter := (3789712047165521 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1300
  oldLo := (757 / 2000 : ℚ)
  oldHi := (759 / 2000 : ℚ)
  oldPieces := [piece_924, piece_925]
}

noncomputable def cell_11018 : Cell := { cellDefaults with
  domain := ⟨(55149999999999999 / 100000000000000000 : ℚ), (110325000000000001 / 200000000000000000 : ℚ)⟩
  r := (2924304809043 / 5000000000000 : ℚ)
  w := (3565173075013 / 2500000000000 : ℚ)
  center := (220624999999999999 / 400000000000000000 : ℚ)
  supportValue := (18959689522270823 / 50000000000000000 : ℚ)
  supportSlope := (-817730714292599 / 500000000000000 : ℚ)
  oldCenter := (18959689522270823 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1301
  oldLo := (379 / 1000 : ℚ)
  oldHi := (759 / 2000 : ℚ)
  oldPieces := [piece_925]
}

noncomputable def cell_11019 : Cell := { cellDefaults with
  domain := ⟨(110325000000000001 / 200000000000000000 : ℚ), (27587500000000001 / 50000000000000000 : ℚ)⟩
  r := (2924304809043 / 5000000000000 : ℚ)
  w := (3565173075013 / 2500000000000 : ℚ)
  center := (44135000000000001 / 80000000000000000 : ℚ)
  supportValue := (757978922825177 / 2000000000000000 : ℚ)
  supportSlope := (-16344199051141743 / 10000000000000000 : ℚ)
  oldCenter := (757978922825177 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1301
  oldLo := (757 / 2000 : ℚ)
  oldHi := (759 / 2000 : ℚ)
  oldPieces := [piece_924, piece_925]
}

noncomputable def cell_11020 : Cell := { cellDefaults with
  domain := ⟨(27587500000000001 / 50000000000000000 : ℚ), (110375000000000007 / 200000000000000000 : ℚ)⟩
  r := (2924304809043 / 5000000000000 : ℚ)
  w := (3565173075013 / 2500000000000 : ℚ)
  center := (220725000000000011 / 400000000000000000 : ℚ)
  supportValue := (4734814932390153 / 12500000000000000 : ℚ)
  supportSlope := (-16332254692794907 / 10000000000000000 : ℚ)
  oldCenter := (4734814932390153 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1301
  oldLo := (757 / 2000 : ℚ)
  oldHi := (379 / 1000 : ℚ)
  oldPieces := [piece_924]
}

noncomputable def cell_11021 : Cell := { cellDefaults with
  domain := ⟨(110375000000000007 / 200000000000000000 : ℚ), (11040000000000001 / 20000000000000000 : ℚ)⟩
  r := (2924304809043 / 5000000000000 : ℚ)
  w := (3565173075013 / 2500000000000 : ℚ)
  center := (220775000000000017 / 400000000000000000 : ℚ)
  supportValue := (18929057721785847 / 50000000000000000 : ℚ)
  supportSlope := (-12746563771973 / 7812500000000 : ℚ)
  oldCenter := (18929057721785847 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1301
  oldLo := (189 / 500 : ℚ)
  oldHi := (379 / 1000 : ℚ)
  oldPieces := [piece_923, piece_924]
}

noncomputable def cell_11022 : Cell := { cellDefaults with
  domain := ⟨(11040000000000001 / 20000000000000000 : ℚ), (690013966480447 / 1250000000000000 : ℚ)⟩
  center := (22080223463687153 / 40000000000000000 : ℚ)
  supportValue := (37889586843116707 / 100000000000000000 : ℚ)
  supportSlope := (-255208535759321 / 156250000000000 : ℚ)
  oldCenter := (37889586843116707 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1302
  oldLo := (757 / 2000 : ℚ)
  oldHi := (379 / 1000 : ℚ)
  oldPieces := [piece_924]
}

noncomputable def cell_11023 : Cell := { cellDefaults with
  domain := ⟨(690013966480447 / 1250000000000000 : ℚ), (220853351955307279 / 400000000000000000 : ℚ)⟩
  center := (441657821229050319 / 800000000000000000 : ℚ)
  supportValue := (946967623620299 / 2500000000000000 : ℚ)
  supportSlope := (-51011486618613 / 31250000000000 : ℚ)
  oldCenter := (946967623620299 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1303
  oldLo := (757 / 2000 : ℚ)
  oldHi := (379 / 1000 : ℚ)
  oldPieces := [piece_924]
}

noncomputable def cell_11024 : Cell := { cellDefaults with
  domain := ⟨(220853351955307279 / 400000000000000000 : ℚ), (110451117318435759 / 200000000000000000 : ℚ)⟩
  center := (441755586592178797 / 800000000000000000 : ℚ)
  supportValue := (757175872501699 / 2000000000000000 : ℚ)
  supportSlope := (-3261368295670497 / 2000000000000000 : ℚ)
  oldCenter := (757175872501699 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1303
  oldLo := (189 / 500 : ℚ)
  oldHi := (379 / 1000 : ℚ)
  oldPieces := [piece_923, piece_924]
}

noncomputable def cell_11025 : Cell := { cellDefaults with
  domain := ⟨(110451117318435759 / 200000000000000000 : ℚ), (220951117318435757 / 400000000000000000 : ℚ)⟩
  center := (17674134078212291 / 32000000000000000 : ℚ)
  supportValue := (3783884134285487 / 10000000000000000 : ℚ)
  supportSlope := (-1630224758451577 / 1000000000000000 : ℚ)
  oldCenter := (3783884134285487 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1303
  oldLo := (189 / 500 : ℚ)
  oldHi := (757 / 2000 : ℚ)
  oldPieces := [piece_923]
}

noncomputable def cell_11026 : Cell := { cellDefaults with
  domain := ⟨(220951117318435757 / 400000000000000000 : ℚ), (55249999999999999 / 100000000000000000 : ℚ)⟩
  center := (441951117318435753 / 800000000000000000 : ℚ)
  supportValue := (94547324309139 / 250000000000000 : ℚ)
  supportSlope := (-8142272560506333 / 5000000000000000 : ℚ)
  oldCenter := (94547324309139 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1303
  oldLo := (189 / 500 : ℚ)
  oldHi := (757 / 2000 : ℚ)
  oldPieces := [piece_923]
}

noncomputable def cell_11027 : Cell := { cellDefaults with
  domain := ⟨(55249999999999999 / 100000000000000000 : ℚ), (110525000000000001 / 200000000000000000 : ℚ)⟩
  r := (58424692538623 / 100000000000000 : ℚ)
  w := (7126794526563 / 5000000000000 : ℚ)
  center := (221024999999999999 / 400000000000000000 : ℚ)
  supportValue := (9460340257086261 / 25000000000000000 : ℚ)
  supportSlope := (-16294686787901291 / 10000000000000000 : ℚ)
  oldCenter := (9460340257086261 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1304
  oldLo := (189 / 500 : ℚ)
  oldHi := (379 / 1000 : ℚ)
  oldPieces := [piece_923, piece_924]
}

noncomputable def cell_11028 : Cell := { cellDefaults with
  domain := ⟨(110525000000000001 / 200000000000000000 : ℚ), (27637500000000001 / 50000000000000000 : ℚ)⟩
  r := (58424692538623 / 100000000000000 : ℚ)
  w := (7126794526563 / 5000000000000 : ℚ)
  center := (44215000000000001 / 80000000000000000 : ℚ)
  supportValue := (3782100267573297 / 10000000000000000 : ℚ)
  supportSlope := (-4069406741739679 / 2500000000000000 : ℚ)
  oldCenter := (3782100267573297 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1304
  oldLo := (189 / 500 : ℚ)
  oldHi := (757 / 2000 : ℚ)
  oldPieces := [piece_923]
}

noncomputable def cell_11029 : Cell := { cellDefaults with
  domain := ⟨(27637500000000001 / 50000000000000000 : ℚ), (110575000000000007 / 200000000000000000 : ℚ)⟩
  r := (58424692538623 / 100000000000000 : ℚ)
  w := (7126794526563 / 5000000000000 : ℚ)
  center := (221125000000000011 / 400000000000000000 : ℚ)
  supportValue := (756013338003367 / 2000000000000000 : ℚ)
  supportSlope := (-16266145434025427 / 10000000000000000 : ℚ)
  oldCenter := (756013338003367 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1304
  oldLo := (151 / 400 : ℚ)
  oldHi := (757 / 2000 : ℚ)
  oldPieces := [piece_922, piece_923]
}

noncomputable def cell_11030 : Cell := { cellDefaults with
  domain := ⟨(110575000000000007 / 200000000000000000 : ℚ), (11060000000000001 / 20000000000000000 : ℚ)⟩
  r := (58424692538623 / 100000000000000 : ℚ)
  w := (7126794526563 / 5000000000000 : ℚ)
  center := (221175000000000017 / 400000000000000000 : ℚ)
  supportValue := (3778033675262769 / 10000000000000000 : ℚ)
  supportSlope := (-1015968253566413 / 625000000000000 : ℚ)
  oldCenter := (3778033675262769 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1304
  oldLo := (151 / 400 : ℚ)
  oldHi := (189 / 500 : ℚ)
  oldPieces := [piece_922]
}

noncomputable def cell_11031 : Cell := { cellDefaults with
  domain := ⟨(11060000000000001 / 20000000000000000 : ℚ), (110625000000000007 / 200000000000000000 : ℚ)⟩
  r := (58394044900919 / 100000000000000 : ℚ)
  w := (1425004809369 / 1000000000000 : ℚ)
  center := (221225000000000017 / 400000000000000000 : ℚ)
  supportValue := (1890123438969541 / 5000000000000000 : ℚ)
  supportSlope := (-16257785930753061 / 10000000000000000 : ℚ)
  oldCenter := (1890123438969541 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1305
  oldLo := (151 / 400 : ℚ)
  oldHi := (757 / 2000 : ℚ)
  oldPieces := [piece_922, piece_923]
}

noncomputable def cell_11032 : Cell := { cellDefaults with
  domain := ⟨(110625000000000007 / 200000000000000000 : ℚ), (27662500000000001 / 50000000000000000 : ℚ)⟩
  r := (58394044900919 / 100000000000000 : ℚ)
  w := (1425004809369 / 1000000000000 : ℚ)
  center := (221275000000000011 / 400000000000000000 : ℚ)
  supportValue := (37782149069212273 / 100000000000000000 : ℚ)
  supportSlope := (-129987126616713 / 80000000000000 : ℚ)
  oldCenter := (37782149069212273 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1305
  oldLo := (151 / 400 : ℚ)
  oldHi := (189 / 500 : ℚ)
  oldPieces := [piece_922]
}

noncomputable def cell_11033 : Cell := { cellDefaults with
  domain := ⟨(27662500000000001 / 50000000000000000 : ℚ), (110675000000000001 / 200000000000000000 : ℚ)⟩
  r := (58394044900919 / 100000000000000 : ℚ)
  w := (1425004809369 / 1000000000000 : ℚ)
  center := (44265000000000001 / 80000000000000000 : ℚ)
  supportValue := (4720231229342877 / 12500000000000000 : ℚ)
  supportSlope := (-16230367885771981 / 10000000000000000 : ℚ)
  oldCenter := (4720231229342877 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1305
  oldLo := (151 / 400 : ℚ)
  oldHi := (189 / 500 : ℚ)
  oldPieces := [piece_922]
}

noncomputable def cell_11034 : Cell := { cellDefaults with
  domain := ⟨(110675000000000001 / 200000000000000000 : ℚ), (55349999999999999 / 100000000000000000 : ℚ)⟩
  r := (58394044900919 / 100000000000000 : ℚ)
  w := (1425004809369 / 1000000000000 : ℚ)
  center := (221374999999999999 / 400000000000000000 : ℚ)
  supportValue := (3774156577994433 / 10000000000000000 : ℚ)
  supportSlope := (-16225223229728583 / 10000000000000000 : ℚ)
  oldCenter := (3774156577994433 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1305
  oldLo := (377 / 1000 : ℚ)
  oldHi := (189 / 500 : ℚ)
  oldPieces := [piece_921, piece_922]
}

noncomputable def cell_11035 : Cell := { cellDefaults with
  domain := ⟨(55349999999999999 / 100000000000000000 : ℚ), (110725000000000001 / 200000000000000000 : ℚ)⟩
  r := (2334537405359 / 4000000000000 : ℚ)
  w := (1424651633743 / 1000000000000 : ℚ)
  center := (221424999999999999 / 400000000000000000 : ℚ)
  supportValue := (3776364067334127 / 10000000000000000 : ℚ)
  supportSlope := (-162232632947637 / 100000000000000 : ℚ)
  oldCenter := (3776364067334127 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1306
  oldLo := (151 / 400 : ℚ)
  oldHi := (189 / 500 : ℚ)
  oldPieces := [piece_922]
}

noncomputable def cell_11036 : Cell := { cellDefaults with
  domain := ⟨(110725000000000001 / 200000000000000000 : ℚ), (27687500000000001 / 50000000000000000 : ℚ)⟩
  r := (2334537405359 / 4000000000000 : ℚ)
  w := (1424651633743 / 1000000000000 : ℚ)
  center := (44295000000000001 / 80000000000000000 : ℚ)
  supportValue := (3774336704171167 / 10000000000000000 : ℚ)
  supportSlope := (-8108447423488401 / 5000000000000000 : ℚ)
  oldCenter := (3774336704171167 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1306
  oldLo := (377 / 1000 : ℚ)
  oldHi := (189 / 500 : ℚ)
  oldPieces := [piece_921, piece_922]
}

noncomputable def cell_11037 : Cell := { cellDefaults with
  domain := ⟨(27687500000000001 / 50000000000000000 : ℚ), (110775000000000007 / 200000000000000000 : ℚ)⟩
  r := (2334537405359 / 4000000000000 : ℚ)
  w := (1424651633743 / 1000000000000 : ℚ)
  center := (221525000000000011 / 400000000000000000 : ℚ)
  supportValue := (754462083586407 / 2000000000000000 : ℚ)
  supportSlope := (-202515845239757 / 125000000000000 : ℚ)
  oldCenter := (754462083586407 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1306
  oldLo := (377 / 1000 : ℚ)
  oldHi := (151 / 400 : ℚ)
  oldPieces := [piece_921]
}

noncomputable def cell_11038 : Cell := { cellDefaults with
  domain := ⟨(110775000000000007 / 200000000000000000 : ℚ), (11080000000000001 / 20000000000000000 : ℚ)⟩
  r := (2334537405359 / 4000000000000 : ℚ)
  w := (1424651633743 / 1000000000000 : ℚ)
  center := (221575000000000017 / 400000000000000000 : ℚ)
  supportValue := (754057276241867 / 2000000000000000 : ℚ)
  supportSlope := (-16188367813530227 / 10000000000000000 : ℚ)
  oldCenter := (754057276241867 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1306
  oldLo := (753 / 2000 : ℚ)
  oldHi := (151 / 400 : ℚ)
  oldPieces := [piece_920, piece_921]
}

noncomputable def cell_11039 : Cell := { cellDefaults with
  domain := ⟨(11080000000000001 / 20000000000000000 : ℚ), (110825000000000007 / 200000000000000000 : ℚ)⟩
  r := (58332862027581 / 100000000000000 : ℚ)
  w := (7121496188229 / 5000000000000 : ℚ)
  center := (221625000000000017 / 400000000000000000 : ℚ)
  supportValue := (18862444367688713 / 50000000000000000 : ℚ)
  supportSlope := (-3238836659538113 / 2000000000000000 : ℚ)
  oldCenter := (18862444367688713 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1307
  oldLo := (377 / 1000 : ℚ)
  oldHi := (151 / 400 : ℚ)
  oldPieces := [piece_921]
}

noncomputable def cell_11040 : Cell := { cellDefaults with
  domain := ⟨(110825000000000007 / 200000000000000000 : ℚ), (27712500000000001 / 50000000000000000 : ℚ)⟩
  r := (58332862027581 / 100000000000000 : ℚ)
  w := (7121496188229 / 5000000000000 : ℚ)
  center := (221675000000000011 / 400000000000000000 : ℚ)
  supportValue := (7540931442887041 / 20000000000000000 : ℚ)
  supportSlope := (-2022506251927701 / 1250000000000000 : ℚ)
  oldCenter := (7540931442887041 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1307
  oldLo := (753 / 2000 : ℚ)
  oldHi := (151 / 400 : ℚ)
  oldPieces := [piece_920, piece_921]
}

noncomputable def cell_11041 : Cell := { cellDefaults with
  domain := ⟨(27712500000000001 / 50000000000000000 : ℚ), (110875000000000001 / 200000000000000000 : ℚ)⟩
  r := (58332862027581 / 100000000000000 : ℚ)
  w := (7121496188229 / 5000000000000 : ℚ)
  center := (44345000000000001 / 80000000000000000 : ℚ)
  supportValue := (942110864281633 / 2500000000000000 : ℚ)
  supportSlope := (-2021538694449119 / 1250000000000000 : ℚ)
  oldCenter := (942110864281633 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1307
  oldLo := (753 / 2000 : ℚ)
  oldHi := (377 / 1000 : ℚ)
  oldPieces := [piece_920]
}

noncomputable def cell_11042 : Cell := { cellDefaults with
  domain := ⟨(110875000000000001 / 200000000000000000 : ℚ), (55449999999999999 / 100000000000000000 : ℚ)⟩
  r := (58332862027581 / 100000000000000 : ℚ)
  w := (7121496188229 / 5000000000000 : ℚ)
  center := (221774999999999999 / 400000000000000000 : ℚ)
  supportValue := (7532846080980169 / 20000000000000000 : ℚ)
  supportSlope := (-1615434036704693 / 1000000000000000 : ℚ)
  oldCenter := (7532846080980169 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1307
  oldLo := (753 / 2000 : ℚ)
  oldHi := (377 / 1000 : ℚ)
  oldPieces := [piece_920]
}

noncomputable def cell_11043 : Cell := { cellDefaults with
  domain := ⟨(55449999999999999 / 100000000000000000 : ℚ), (110925000000000001 / 200000000000000000 : ℚ)⟩
  r := (1821947602261 / 3125000000000 : ℚ)
  w := (14239473674993 / 10000000000000 : ℚ)
  center := (221824999999999999 / 400000000000000000 : ℚ)
  supportValue := (942155540336991 / 2500000000000000 : ℚ)
  supportSlope := (-3233050349103873 / 2000000000000000 : ℚ)
  oldCenter := (942155540336991 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1308
  oldLo := (753 / 2000 : ℚ)
  oldHi := (377 / 1000 : ℚ)
  oldPieces := [piece_920]
}

noncomputable def cell_11044 : Cell := { cellDefaults with
  domain := ⟨(110925000000000001 / 200000000000000000 : ℚ), (27737500000000001 / 50000000000000000 : ℚ)⟩
  r := (1821947602261 / 3125000000000 : ℚ)
  w := (14239473674993 / 10000000000000 : ℚ)
  center := (44375000000000001 / 80000000000000000 : ℚ)
  supportValue := (3766602626030897 / 10000000000000000 : ℚ)
  supportSlope := (-4036824265806831 / 2500000000000000 : ℚ)
  oldCenter := (3766602626030897 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1308
  oldLo := (753 / 2000 : ℚ)
  oldHi := (377 / 1000 : ℚ)
  oldPieces := [piece_920]
}

noncomputable def cell_11045 : Cell := { cellDefaults with
  domain := ⟨(27737500000000001 / 50000000000000000 : ℚ), (110975000000000007 / 200000000000000000 : ℚ)⟩
  r := (1821947602261 / 3125000000000 : ℚ)
  w := (14239473674993 / 10000000000000 : ℚ)
  center := (221925000000000011 / 400000000000000000 : ℚ)
  supportValue := (37645849650784907 / 100000000000000000 : ℚ)
  supportSlope := (-8069681183581343 / 5000000000000000 : ℚ)
  oldCenter := (37645849650784907 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1308
  oldLo := (47 / 125 : ℚ)
  oldHi := (377 / 1000 : ℚ)
  oldPieces := [piece_919, piece_920]
}

noncomputable def cell_11046 : Cell := { cellDefaults with
  domain := ⟨(110975000000000007 / 200000000000000000 : ℚ), (11100000000000001 / 20000000000000000 : ℚ)⟩
  r := (1821947602261 / 3125000000000 : ℚ)
  w := (14239473674993 / 10000000000000 : ℚ)
  center := (221975000000000017 / 400000000000000000 : ℚ)
  supportValue := (37625681499685043 / 100000000000000000 : ℚ)
  supportSlope := (-1612552590802869 / 1000000000000000 : ℚ)
  oldCenter := (37625681499685043 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1308
  oldLo := (47 / 125 : ℚ)
  oldHi := (753 / 2000 : ℚ)
  oldPieces := [piece_919]
}

noncomputable def cell_11047 : Cell := { cellDefaults with
  domain := ⟨(11100000000000001 / 20000000000000000 : ℚ), (111025000000000007 / 200000000000000000 : ℚ)⟩
  r := (1456795524371 / 2500000000000 : ℚ)
  w := (2847192654303 / 2000000000000 : ℚ)
  center := (222025000000000017 / 400000000000000000 : ℚ)
  supportValue := (3764762918757661 / 10000000000000000 : ℚ)
  supportSlope := (-1613107754816683 / 1000000000000000 : ℚ)
  oldCenter := (3764762918757661 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1309
  oldLo := (47 / 125 : ℚ)
  oldHi := (377 / 1000 : ℚ)
  oldPieces := [piece_919, piece_920]
}

noncomputable def cell_11048 : Cell := { cellDefaults with
  domain := ⟨(111025000000000007 / 200000000000000000 : ℚ), (27762500000000001 / 50000000000000000 : ℚ)⟩
  r := (1456795524371 / 2500000000000 : ℚ)
  w := (2847192654303 / 2000000000000 : ℚ)
  center := (222075000000000011 / 400000000000000000 : ℚ)
  supportValue := (301019758606953 / 800000000000000 : ℚ)
  supportSlope := (-16118501637098759 / 10000000000000000 : ℚ)
  oldCenter := (301019758606953 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1309
  oldLo := (47 / 125 : ℚ)
  oldHi := (753 / 2000 : ℚ)
  oldPieces := [piece_919]
}

noncomputable def cell_11049 : Cell := { cellDefaults with
  domain := ⟨(27762500000000001 / 50000000000000000 : ℚ), (111075000000000001 / 200000000000000000 : ℚ)⟩
  r := (1456795524371 / 2500000000000 : ℚ)
  w := (2847192654303 / 2000000000000 : ℚ)
  center := (44425000000000001 / 80000000000000000 : ℚ)
  supportValue := (752146657462281 / 2000000000000000 : ℚ)
  supportSlope := (-16102552804595203 / 10000000000000000 : ℚ)
  oldCenter := (752146657462281 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1309
  oldLo := (751 / 2000 : ℚ)
  oldHi := (753 / 2000 : ℚ)
  oldPieces := [piece_918, piece_919]
}

theorem check_11000 : cell_11000.check = true := by
  decide +kernel

theorem check_11001 : cell_11001.check = true := by
  decide +kernel

theorem check_11002 : cell_11002.check = true := by
  decide +kernel

theorem check_11003 : cell_11003.check = true := by
  decide +kernel

theorem check_11004 : cell_11004.check = true := by
  decide +kernel

theorem check_11005 : cell_11005.check = true := by
  decide +kernel

theorem check_11006 : cell_11006.check = true := by
  decide +kernel

theorem check_11007 : cell_11007.check = true := by
  decide +kernel

theorem check_11008 : cell_11008.check = true := by
  decide +kernel

theorem check_11009 : cell_11009.check = true := by
  decide +kernel

theorem check_11010 : cell_11010.check = true := by
  decide +kernel

theorem check_11011 : cell_11011.check = true := by
  decide +kernel

theorem check_11012 : cell_11012.check = true := by
  decide +kernel

theorem check_11013 : cell_11013.check = true := by
  decide +kernel

theorem check_11014 : cell_11014.check = true := by
  decide +kernel

theorem check_11015 : cell_11015.check = true := by
  decide +kernel

theorem check_11016 : cell_11016.check = true := by
  decide +kernel

theorem check_11017 : cell_11017.check = true := by
  decide +kernel

theorem check_11018 : cell_11018.check = true := by
  decide +kernel

theorem check_11019 : cell_11019.check = true := by
  decide +kernel

theorem check_11020 : cell_11020.check = true := by
  decide +kernel

theorem check_11021 : cell_11021.check = true := by
  decide +kernel

theorem check_11022 : cell_11022.check = true := by
  decide +kernel

theorem check_11023 : cell_11023.check = true := by
  decide +kernel

theorem check_11024 : cell_11024.check = true := by
  decide +kernel

theorem check_11025 : cell_11025.check = true := by
  decide +kernel

theorem check_11026 : cell_11026.check = true := by
  decide +kernel

theorem check_11027 : cell_11027.check = true := by
  decide +kernel

theorem check_11028 : cell_11028.check = true := by
  decide +kernel

theorem check_11029 : cell_11029.check = true := by
  decide +kernel

theorem check_11030 : cell_11030.check = true := by
  decide +kernel

theorem check_11031 : cell_11031.check = true := by
  decide +kernel

theorem check_11032 : cell_11032.check = true := by
  decide +kernel

theorem check_11033 : cell_11033.check = true := by
  decide +kernel

theorem check_11034 : cell_11034.check = true := by
  decide +kernel

theorem check_11035 : cell_11035.check = true := by
  decide +kernel

theorem check_11036 : cell_11036.check = true := by
  decide +kernel

theorem check_11037 : cell_11037.check = true := by
  decide +kernel

theorem check_11038 : cell_11038.check = true := by
  decide +kernel

theorem check_11039 : cell_11039.check = true := by
  decide +kernel

theorem check_11040 : cell_11040.check = true := by
  decide +kernel

theorem check_11041 : cell_11041.check = true := by
  decide +kernel

theorem check_11042 : cell_11042.check = true := by
  decide +kernel

theorem check_11043 : cell_11043.check = true := by
  decide +kernel

theorem check_11044 : cell_11044.check = true := by
  decide +kernel

theorem check_11045 : cell_11045.check = true := by
  decide +kernel

theorem check_11046 : cell_11046.check = true := by
  decide +kernel

theorem check_11047 : cell_11047.check = true := by
  decide +kernel

theorem check_11048 : cell_11048.check = true := by
  decide +kernel

theorem check_11049 : cell_11049.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11000, cell_11001, cell_11002, cell_11003, cell_11004, cell_11005, cell_11006, cell_11007, cell_11008, cell_11009, cell_11010, cell_11011, cell_11012, cell_11013, cell_11014, cell_11015, cell_11016, cell_11017, cell_11018, cell_11019, cell_11020, cell_11021, cell_11022, cell_11023, cell_11024, cell_11025, cell_11026, cell_11027, cell_11028, cell_11029, cell_11030, cell_11031, cell_11032, cell_11033, cell_11034, cell_11035, cell_11036, cell_11037, cell_11038, cell_11039, cell_11040, cell_11041, cell_11042, cell_11043, cell_11044, cell_11045, cell_11046, cell_11047, cell_11048, cell_11049]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11000, check_11001, check_11002, check_11003, check_11004, check_11005, check_11006, check_11007, check_11008, check_11009, check_11010, check_11011, check_11012, check_11013, check_11014, check_11015, check_11016, check_11017, check_11018, check_11019, check_11020, check_11021, check_11022, check_11023, check_11024, check_11025, check_11026, check_11027, check_11028, check_11029, check_11030, check_11031, check_11032, check_11033, check_11034, check_11035, check_11036, check_11037, check_11038, check_11039, check_11040, check_11041, check_11042, check_11043, check_11044, check_11045, check_11046, check_11047, check_11048, check_11049, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0220

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0220
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0220
open AnalyticBounds.ExpressionCertificate

theorem linked_11000 : Linked cell_11000 pieces := by
  link_source cell_11000 with piece_1296 using piece_1296_mem, piece_929_mem

theorem linked_11001 : Linked cell_11001 pieces := by
  link_source cell_11001 with piece_1296 using piece_1296_mem, ⟨piece_927_mem, ⟨piece_928_mem, piece_929_mem⟩⟩

theorem linked_11002 : Linked cell_11002 pieces := by
  link_source cell_11002 with piece_1297 using piece_1297_mem, piece_929_mem

theorem linked_11003 : Linked cell_11003 pieces := by
  link_source cell_11003 with piece_1297 using piece_1297_mem, ⟨piece_927_mem, ⟨piece_928_mem, piece_929_mem⟩⟩

theorem linked_11004 : Linked cell_11004 pieces := by
  link_source cell_11004 with piece_1297 using piece_1297_mem, piece_927_mem

theorem linked_11005 : Linked cell_11005 pieces := by
  link_source cell_11005 with piece_1297 using piece_1297_mem, piece_927_mem

theorem linked_11006 : Linked cell_11006 pieces := by
  link_source cell_11006 with piece_1298 using piece_1298_mem, piece_927_mem

theorem linked_11007 : Linked cell_11007 pieces := by
  link_source cell_11007 with piece_1298 using piece_1298_mem, piece_927_mem

theorem linked_11008 : Linked cell_11008 pieces := by
  link_source cell_11008 with piece_1298 using piece_1298_mem, ⟨piece_926_mem, piece_927_mem⟩

theorem linked_11009 : Linked cell_11009 pieces := by
  link_source cell_11009 with piece_1298 using piece_1298_mem, piece_926_mem

theorem linked_11010 : Linked cell_11010 pieces := by
  link_source cell_11010 with piece_1299 using piece_1299_mem, ⟨piece_926_mem, piece_927_mem⟩

theorem linked_11011 : Linked cell_11011 pieces := by
  link_source cell_11011 with piece_1299 using piece_1299_mem, piece_926_mem

theorem linked_11012 : Linked cell_11012 pieces := by
  link_source cell_11012 with piece_1299 using piece_1299_mem, ⟨piece_925_mem, piece_926_mem⟩

theorem linked_11013 : Linked cell_11013 pieces := by
  link_source cell_11013 with piece_1299 using piece_1299_mem, piece_925_mem

theorem linked_11014 : Linked cell_11014 pieces := by
  link_source cell_11014 with piece_1300 using piece_1300_mem, ⟨piece_925_mem, piece_926_mem⟩

theorem linked_11015 : Linked cell_11015 pieces := by
  link_source cell_11015 with piece_1300 using piece_1300_mem, piece_925_mem

theorem linked_11016 : Linked cell_11016 pieces := by
  link_source cell_11016 with piece_1300 using piece_1300_mem, piece_925_mem

theorem linked_11017 : Linked cell_11017 pieces := by
  link_source cell_11017 with piece_1300 using piece_1300_mem, ⟨piece_924_mem, piece_925_mem⟩

theorem linked_11018 : Linked cell_11018 pieces := by
  link_source cell_11018 with piece_1301 using piece_1301_mem, piece_925_mem

theorem linked_11019 : Linked cell_11019 pieces := by
  link_source cell_11019 with piece_1301 using piece_1301_mem, ⟨piece_924_mem, piece_925_mem⟩

theorem linked_11020 : Linked cell_11020 pieces := by
  link_source cell_11020 with piece_1301 using piece_1301_mem, piece_924_mem

theorem linked_11021 : Linked cell_11021 pieces := by
  link_source cell_11021 with piece_1301 using piece_1301_mem, ⟨piece_923_mem, piece_924_mem⟩

theorem linked_11022 : Linked cell_11022 pieces := by
  link_source cell_11022 with piece_1302 using piece_1302_mem, piece_924_mem

theorem linked_11023 : Linked cell_11023 pieces := by
  link_source cell_11023 with piece_1303 using piece_1303_mem, piece_924_mem

theorem linked_11024 : Linked cell_11024 pieces := by
  link_source cell_11024 with piece_1303 using piece_1303_mem, ⟨piece_923_mem, piece_924_mem⟩

theorem linked_11025 : Linked cell_11025 pieces := by
  link_source cell_11025 with piece_1303 using piece_1303_mem, piece_923_mem

theorem linked_11026 : Linked cell_11026 pieces := by
  link_source cell_11026 with piece_1303 using piece_1303_mem, piece_923_mem

theorem linked_11027 : Linked cell_11027 pieces := by
  link_source cell_11027 with piece_1304 using piece_1304_mem, ⟨piece_923_mem, piece_924_mem⟩

theorem linked_11028 : Linked cell_11028 pieces := by
  link_source cell_11028 with piece_1304 using piece_1304_mem, piece_923_mem

theorem linked_11029 : Linked cell_11029 pieces := by
  link_source cell_11029 with piece_1304 using piece_1304_mem, ⟨piece_922_mem, piece_923_mem⟩

theorem linked_11030 : Linked cell_11030 pieces := by
  link_source cell_11030 with piece_1304 using piece_1304_mem, piece_922_mem

theorem linked_11031 : Linked cell_11031 pieces := by
  link_source cell_11031 with piece_1305 using piece_1305_mem, ⟨piece_922_mem, piece_923_mem⟩

theorem linked_11032 : Linked cell_11032 pieces := by
  link_source cell_11032 with piece_1305 using piece_1305_mem, piece_922_mem

theorem linked_11033 : Linked cell_11033 pieces := by
  link_source cell_11033 with piece_1305 using piece_1305_mem, piece_922_mem

theorem linked_11034 : Linked cell_11034 pieces := by
  link_source cell_11034 with piece_1305 using piece_1305_mem, ⟨piece_921_mem, piece_922_mem⟩

theorem linked_11035 : Linked cell_11035 pieces := by
  link_source cell_11035 with piece_1306 using piece_1306_mem, piece_922_mem

theorem linked_11036 : Linked cell_11036 pieces := by
  link_source cell_11036 with piece_1306 using piece_1306_mem, ⟨piece_921_mem, piece_922_mem⟩

theorem linked_11037 : Linked cell_11037 pieces := by
  link_source cell_11037 with piece_1306 using piece_1306_mem, piece_921_mem

theorem linked_11038 : Linked cell_11038 pieces := by
  link_source cell_11038 with piece_1306 using piece_1306_mem, ⟨piece_920_mem, piece_921_mem⟩

theorem linked_11039 : Linked cell_11039 pieces := by
  link_source cell_11039 with piece_1307 using piece_1307_mem, piece_921_mem

theorem linked_11040 : Linked cell_11040 pieces := by
  link_source cell_11040 with piece_1307 using piece_1307_mem, ⟨piece_920_mem, piece_921_mem⟩

theorem linked_11041 : Linked cell_11041 pieces := by
  link_source cell_11041 with piece_1307 using piece_1307_mem, piece_920_mem

theorem linked_11042 : Linked cell_11042 pieces := by
  link_source cell_11042 with piece_1307 using piece_1307_mem, piece_920_mem

theorem linked_11043 : Linked cell_11043 pieces := by
  link_source cell_11043 with piece_1308 using piece_1308_mem, piece_920_mem

theorem linked_11044 : Linked cell_11044 pieces := by
  link_source cell_11044 with piece_1308 using piece_1308_mem, piece_920_mem

theorem linked_11045 : Linked cell_11045 pieces := by
  link_source cell_11045 with piece_1308 using piece_1308_mem, ⟨piece_919_mem, piece_920_mem⟩

theorem linked_11046 : Linked cell_11046 pieces := by
  link_source cell_11046 with piece_1308 using piece_1308_mem, piece_919_mem

theorem linked_11047 : Linked cell_11047 pieces := by
  link_source cell_11047 with piece_1309 using piece_1309_mem, ⟨piece_919_mem, piece_920_mem⟩

theorem linked_11048 : Linked cell_11048 pieces := by
  link_source cell_11048 with piece_1309 using piece_1309_mem, piece_919_mem

theorem linked_11049 : Linked cell_11049 pieces := by
  link_source cell_11049 with piece_1309 using piece_1309_mem, ⟨piece_918_mem, piece_919_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0220.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0220.cells,List.forall_mem_cons]
  exact ⟨linked_11000, linked_11001, linked_11002, linked_11003, linked_11004, linked_11005, linked_11006, linked_11007, linked_11008, linked_11009, linked_11010, linked_11011, linked_11012, linked_11013, linked_11014, linked_11015, linked_11016, linked_11017, linked_11018, linked_11019, linked_11020, linked_11021, linked_11022, linked_11023, linked_11024, linked_11025, linked_11026, linked_11027, linked_11028, linked_11029, linked_11030, linked_11031, linked_11032, linked_11033, linked_11034, linked_11035, linked_11036, linked_11037, linked_11038, linked_11039, linked_11040, linked_11041, linked_11042, linked_11043, linked_11044, linked_11045, linked_11046, linked_11047, linked_11048, linked_11049, by simp⟩

theorem covered : covers (109850000000000003 / 200000000000000000 : ℚ) (111075000000000001 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0220.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0220
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0221
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(111075000000000001 / 200000000000000000 : ℚ), (55549999999999999 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (11623970434831 / 20000000000000 : ℚ)
  w := (14218526939537 / 10000000000000 : ℚ)
  center := (222174999999999999 / 400000000000000000 : ℚ)
  supportValue := (9396801748850661 / 25000000000000000 : ℚ)
  supportSlope := (-16096852486448807 / 10000000000000000 : ℚ)
  oldCenter := (9396801748850661 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1310
  oldLo := (187 / 500 : ℚ)
  oldHi := (47 / 125 : ℚ)
  oldPieces := [piece_918]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11050 : Cell := { cellDefaults with
  r := (1456795524371 / 2500000000000 : ℚ)
  w := (2847192654303 / 2000000000000 : ℚ)
  newCoefficients := coefficients_1309
  oldLo := (751 / 2000 : ℚ)
  oldPieces := [piece_918]
}

noncomputable def cell_11051 : Cell := { cellDefaults with
  domain := ⟨(55549999999999999 / 100000000000000000 : ℚ), (111125000000000001 / 200000000000000000 : ℚ)⟩
  r := (58241355296037 / 100000000000000 : ℚ)
  w := (7116230688423 / 5000000000000 : ℚ)
  center := (222224999999999999 / 400000000000000000 : ℚ)
  supportValue := (18804551274747 / 50000000000000 : ℚ)
  supportSlope := (-1609427845644247 / 1000000000000000 : ℚ)
  oldCenter := (18804551274747 / 50000000000000 : ℚ)
  oldLo := (751 / 2000 : ℚ)
  oldHi := (753 / 2000 : ℚ)
  oldPieces := [piece_918, piece_919]
}

noncomputable def cell_11052 : Cell := { cellDefaults with
  domain := ⟨(111125000000000001 / 200000000000000000 : ℚ), (27787500000000001 / 50000000000000000 : ℚ)⟩
  r := (58241355296037 / 100000000000000 : ℚ)
  w := (7116230688423 / 5000000000000 : ℚ)
  center := (44455000000000001 / 80000000000000000 : ℚ)
  supportValue := (1879449350117081 / 5000000000000000 : ℚ)
  supportSlope := (-3217969297387993 / 2000000000000000 : ℚ)
  oldCenter := (1879449350117081 / 5000000000000000 : ℚ)
  oldLo := (751 / 2000 : ℚ)
  oldPieces := [piece_918]
}

noncomputable def cell_11053 : Cell := { cellDefaults with
  domain := ⟨(27787500000000001 / 50000000000000000 : ℚ), (111175000000000007 / 200000000000000000 : ℚ)⟩
  r := (58241355296037 / 100000000000000 : ℚ)
  w := (7116230688423 / 5000000000000 : ℚ)
  center := (222325000000000011 / 400000000000000000 : ℚ)
  supportValue := (18784442935491477 / 50000000000000000 : ℚ)
  supportSlope := (-2008993449094979 / 1250000000000000 : ℚ)
  oldCenter := (18784442935491477 / 50000000000000000 : ℚ)
  oldLo := (751 / 2000 : ℚ)
  oldPieces := [piece_918]
}

noncomputable def cell_11054 : Cell := { cellDefaults with
  domain := ⟨(111175000000000007 / 200000000000000000 : ℚ), (11120000000000001 / 20000000000000000 : ℚ)⟩
  r := (58241355296037 / 100000000000000 : ℚ)
  w := (7116230688423 / 5000000000000 : ℚ)
  center := (222375000000000017 / 400000000000000000 : ℚ)
  supportValue := (75097611968013 / 200000000000000 : ℚ)
  supportSlope := (-16062068973743697 / 10000000000000000 : ℚ)
  oldCenter := (75097611968013 / 200000000000000 : ℚ)
  oldLo := (3750279329608939 / 10000000000000000 : ℚ)
  oldPieces := [piece_917, piece_918]
}

noncomputable def cell_11055 : Cell := { cellDefaults with
  domain := ⟨(11120000000000001 / 20000000000000000 : ℚ), (111225000000000007 / 200000000000000000 : ℚ)⟩
  r := (58210925928537 / 100000000000000 : ℚ)
  w := (7114483641367 / 5000000000000 : ℚ)
  center := (222425000000000017 / 400000000000000000 : ℚ)
  supportValue := (1878532462577057 / 5000000000000000 : ℚ)
  supportSlope := (-8032470735091909 / 5000000000000000 : ℚ)
  oldCenter := (1878532462577057 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1311
  oldLo := (751 / 2000 : ℚ)
  oldPieces := [piece_918]
}

noncomputable def cell_11056 : Cell := { cellDefaults with
  domain := ⟨(111225000000000007 / 200000000000000000 : ℚ), (27812500000000001 / 50000000000000000 : ℚ)⟩
  r := (58210925928537 / 100000000000000 : ℚ)
  w := (7114483641367 / 5000000000000 : ℚ)
  center := (222475000000000011 / 400000000000000000 : ℚ)
  supportValue := (37550579202369117 / 100000000000000000 : ℚ)
  supportSlope := (-1003364054997911 / 625000000000000 : ℚ)
  oldCenter := (37550579202369117 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1311
  oldLo := (3750279329608939 / 10000000000000000 : ℚ)
  oldPieces := [piece_917, piece_918]
}

noncomputable def cell_11057 : Cell := { cellDefaults with
  domain := ⟨(27812500000000001 / 50000000000000000 : ℚ), (111275000000000001 / 200000000000000000 : ℚ)⟩
  r := (58210925928537 / 100000000000000 : ℚ)
  w := (7114483641367 / 5000000000000 : ℚ)
  center := (44505000000000001 / 80000000000000000 : ℚ)
  supportValue := (37530514195113523 / 100000000000000000 : ℚ)
  supportSlope := (-1604343044382809 / 1000000000000000 : ℚ)
  oldCenter := (37530514195113523 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1311
  oldLo := (3750279329608939 / 10000000000000000 : ℚ)
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_917]
}

noncomputable def cell_11058 : Cell := { cellDefaults with
  domain := ⟨(111275000000000001 / 200000000000000000 : ℚ), (55649999999999999 / 100000000000000000 : ℚ)⟩
  r := (58210925928537 / 100000000000000 : ℚ)
  w := (7114483641367 / 5000000000000 : ℚ)
  center := (222574999999999999 / 400000000000000000 : ℚ)
  supportValue := (1875523552284583 / 5000000000000000 : ℚ)
  supportSlope := (-16025591411567819 / 10000000000000000 : ℚ)
  oldCenter := (1875523552284583 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1311
  oldLo := (3 / 8 : ℚ)
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_916, piece_917]
}

noncomputable def cell_11059 : Cell := { cellDefaults with
  domain := ⟨(55649999999999999 / 100000000000000000 : ℚ), (111325000000000001 / 200000000000000000 : ℚ)⟩
  r := (1818141656461 / 3125000000000 : ℚ)
  w := (1422548071393 / 1000000000000 : ℚ)
  center := (222624999999999999 / 400000000000000000 : ℚ)
  supportValue := (3753227172635811 / 10000000000000000 : ℚ)
  supportSlope := (-3207288838465387 / 2000000000000000 : ℚ)
  oldCenter := (3753227172635811 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1312
  oldLo := (3750279329608939 / 10000000000000000 : ℚ)
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_917]
}

noncomputable def cell_11060 : Cell := { cellDefaults with
  domain := ⟨(111325000000000001 / 200000000000000000 : ℚ), (27837500000000001 / 50000000000000000 : ℚ)⟩
  r := (1818141656461 / 3125000000000 : ℚ)
  w := (1422548071393 / 1000000000000 : ℚ)
  center := (44535000000000001 / 80000000000000000 : ℚ)
  supportValue := (37512237300766227 / 100000000000000000 : ℚ)
  supportSlope := (-3203724081929209 / 2000000000000000 : ℚ)
  oldCenter := (37512237300766227 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1312
  oldLo := (3 / 8 : ℚ)
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_916, piece_917]
}

noncomputable def cell_11061 : Cell := { cellDefaults with
  domain := ⟨(27837500000000001 / 50000000000000000 : ℚ), (111375000000000007 / 200000000000000000 : ℚ)⟩
  r := (1818141656461 / 3125000000000 : ℚ)
  w := (1422548071393 / 1000000000000 : ℚ)
  center := (222725000000000011 / 400000000000000000 : ℚ)
  supportValue := (3749221817875011 / 10000000000000000 : ℚ)
  supportSlope := (-16013483943140583 / 10000000000000000 : ℚ)
  oldCenter := (3749221817875011 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1312
  oldLo := (749 / 2000 : ℚ)
  oldHi := (3750279329608939 / 10000000000000000 : ℚ)
  oldPieces := [piece_915, piece_916]
}

noncomputable def cell_11062 : Cell := { cellDefaults with
  domain := ⟨(111375000000000007 / 200000000000000000 : ℚ), (11140000000000001 / 20000000000000000 : ℚ)⟩
  r := (1818141656461 / 3125000000000 : ℚ)
  w := (1422548071393 / 1000000000000 : ℚ)
  center := (222775000000000017 / 400000000000000000 : ℚ)
  supportValue := (4684026314082193 / 12500000000000000 : ℚ)
  supportSlope := (-7998602386417737 / 5000000000000000 : ℚ)
  oldCenter := (4684026314082193 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1312
  oldLo := (749 / 2000 : ℚ)
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_915]
}

noncomputable def cell_11063 : Cell := { cellDefaults with
  domain := ⟨(11140000000000001 / 20000000000000000 : ℚ), (44570000000000003 / 80000000000000000 : ℚ)⟩
  r := (29075087037179 / 50000000000000 : ℚ)
  w := (14221999528437 / 10000000000000 : ℚ)
  center := (89130000000000007 / 160000000000000000 : ℚ)
  supportValue := (1874698888446153 / 5000000000000000 : ℚ)
  supportSlope := (-16005273008580723 / 10000000000000000 : ℚ)
  oldCenter := (1874698888446153 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1313
  oldLo := (749 / 2000 : ℚ)
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_915, piece_916, piece_917]
}

noncomputable def cell_11064 : Cell := { cellDefaults with
  domain := ⟨(44570000000000003 / 80000000000000000 : ℚ), (22290000000000001 / 40000000000000000 : ℚ)⟩
  r := (29075087037179 / 50000000000000 : ℚ)
  w := (14221999528437 / 10000000000000 : ℚ)
  center := (17830000000000001 / 32000000000000000 : ℚ)
  supportValue := (3747397879493373 / 10000000000000000 : ℚ)
  supportSlope := (-799512912584257 / 500000000000000 : ℚ)
  oldCenter := (3747397879493373 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1313
  oldLo := (749 / 2000 : ℚ)
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_915]
}

noncomputable def cell_11065 : Cell := { cellDefaults with
  domain := ⟨(22290000000000001 / 40000000000000000 : ℚ), (44590000000000001 / 80000000000000000 : ℚ)⟩
  r := (29075087037179 / 50000000000000 : ℚ)
  w := (14221999528437 / 10000000000000 : ℚ)
  center := (89170000000000003 / 160000000000000000 : ℚ)
  supportValue := (7490800412660119 / 20000000000000000 : ℚ)
  supportSlope := (-3195359468158507 / 2000000000000000 : ℚ)
  oldCenter := (7490800412660119 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1313
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_914, piece_915]
}

noncomputable def cell_11066 : Cell := { cellDefaults with
  domain := ⟨(44590000000000001 / 80000000000000000 : ℚ), (223 / 400 : ℚ)⟩
  r := (29075087037179 / 50000000000000 : ℚ)
  w := (14221999528437 / 10000000000000 : ℚ)
  center := (89190000000000001 / 160000000000000000 : ℚ)
  supportValue := (3743403323545349 / 10000000000000000 : ℚ)
  supportSlope := (-15968974280219859 / 10000000000000000 : ℚ)
  oldCenter := (3743403323545349 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1313
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_914]
}

noncomputable def cell_11067 : Cell := { cellDefaults with
  domain := ⟨(223 / 400 : ℚ), (174231843575419 / 312500000000000 : ℚ)⟩
  center := (348450593575419 / 625000000000000 : ℚ)
  supportValue := (3746235199280723 / 10000000000000000 : ℚ)
  supportSlope := (-1597143733936053 / 1000000000000000 : ℚ)
  oldCenter := (3746235199280723 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1314
  oldLo := (749 / 2000 : ℚ)
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_915]
}

noncomputable def cell_11068 : Cell := { cellDefaults with
  domain := ⟨(174231843575419 / 312500000000000 : ℚ), (44612513966480449 / 80000000000000000 : ℚ)⟩
  center := (89215865921787713 / 160000000000000000 : ℚ)
  supportValue := (748997965638079 / 2000000000000000 : ℚ)
  supportSlope := (-1596758751933183 / 1000000000000000 : ℚ)
  oldCenter := (748997965638079 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1315
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_914, piece_915]
}

noncomputable def cell_11069 : Cell := { cellDefaults with
  domain := ⟨(44612513966480449 / 80000000000000000 : ℚ), (22310837988826817 / 40000000000000000 : ℚ)⟩
  center := (89234189944134083 / 160000000000000000 : ℚ)
  supportValue := (37431586438864617 / 100000000000000000 : ℚ)
  supportSlope := (-7979158857235983 / 5000000000000000 : ℚ)
  oldCenter := (37431586438864617 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1315
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_914]
}

noncomputable def cell_11070 : Cell := { cellDefaults with
  domain := ⟨(22310837988826817 / 40000000000000000 : ℚ), (44630837988826819 / 80000000000000000 : ℚ)⟩
  center := (89252513966480453 / 160000000000000000 : ℚ)
  supportValue := (37413319469308987 / 100000000000000000 : ℚ)
  supportSlope := (-15942052493359877 / 10000000000000000 : ℚ)
  oldCenter := (37413319469308987 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1315
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_914]
}

noncomputable def cell_11071 : Cell := { cellDefaults with
  domain := ⟨(44630837988826819 / 80000000000000000 : ℚ), (11160000000000001 / 20000000000000000 : ℚ)⟩
  center := (89270837988826823 / 160000000000000000 : ℚ)
  supportValue := (3739509283296681 / 10000000000000000 : ℚ)
  supportSlope := (-1992106270516559 / 1250000000000000 : ℚ)
  oldCenter := (3739509283296681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1315
  oldLo := (747 / 2000 : ℚ)
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_913, piece_914]
}

noncomputable def cell_11072 : Cell := { cellDefaults with
  domain := ⟨(11160000000000001 / 20000000000000000 : ℚ), (44650000000000003 / 80000000000000000 : ℚ)⟩
  r := (58089566107661 / 100000000000000 : ℚ)
  w := (7107531849771 / 5000000000000 : ℚ)
  center := (89290000000000007 / 160000000000000000 : ℚ)
  supportValue := (3741758939837917 / 10000000000000000 : ℚ)
  supportSlope := (-15937348761598173 / 10000000000000000 : ℚ)
  oldCenter := (3741758939837917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1316
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_914]
}

noncomputable def cell_11073 : Cell := { cellDefaults with
  domain := ⟨(44650000000000003 / 80000000000000000 : ℚ), (22330000000000001 / 40000000000000000 : ℚ)⟩
  r := (58089566107661 / 100000000000000 : ℚ)
  w := (7107531849771 / 5000000000000 : ℚ)
  center := (17862000000000001 / 32000000000000000 : ℚ)
  supportValue := (149590706538563 / 400000000000000 : ℚ)
  supportSlope := (-15928496610985647 / 10000000000000000 : ℚ)
  oldCenter := (149590706538563 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1316
  oldLo := (747 / 2000 : ℚ)
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_913, piece_914]
}

noncomputable def cell_11074 : Cell := { cellDefaults with
  domain := ⟨(22330000000000001 / 40000000000000000 : ℚ), (44670000000000001 / 80000000000000000 : ℚ)⟩
  r := (58089566107661 / 100000000000000 : ℚ)
  w := (7107531849771 / 5000000000000 : ℚ)
  center := (89330000000000003 / 160000000000000000 : ℚ)
  supportValue := (9344442566213379 / 25000000000000000 : ℚ)
  supportSlope := (-7958101367187793 / 5000000000000000 : ℚ)
  oldCenter := (9344442566213379 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1316
  oldLo := (747 / 2000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_913]
}

noncomputable def cell_11075 : Cell := { cellDefaults with
  domain := ⟨(44670000000000001 / 80000000000000000 : ℚ), (1117 / 2000 : ℚ)⟩
  r := (58089566107661 / 100000000000000 : ℚ)
  w := (7107531849771 / 5000000000000 : ℚ)
  center := (89350000000000001 / 160000000000000000 : ℚ)
  supportValue := (18678943033987963 / 50000000000000000 : ℚ)
  supportSlope := (-3180001163855513 / 2000000000000000 : ℚ)
  oldCenter := (18678943033987963 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1316
  oldLo := (373 / 1000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_912, piece_913]
}

noncomputable def cell_11076 : Cell := { cellDefaults with
  domain := ⟨(1117 / 2000 : ℚ), (44690000000000001 / 80000000000000000 : ℚ)⟩
  r := (58059317237387 / 100000000000000 : ℚ)
  w := (14211608207821 / 10000000000000 : ℚ)
  center := (89370000000000001 / 160000000000000000 : ℚ)
  supportValue := (37379501372917423 / 100000000000000000 : ℚ)
  supportSlope := (-15909288918941131 / 10000000000000000 : ℚ)
  oldCenter := (37379501372917423 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1317
  oldLo := (747 / 2000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_913]
}

noncomputable def cell_11077 : Cell := { cellDefaults with
  domain := ⟨(44690000000000001 / 80000000000000000 : ℚ), (22350000000000001 / 40000000000000000 : ℚ)⟩
  r := (58059317237387 / 100000000000000 : ℚ)
  w := (14211608207821 / 10000000000000 : ℚ)
  center := (89390000000000003 / 160000000000000000 : ℚ)
  supportValue := (1867981290476611 / 5000000000000000 : ℚ)
  supportSlope := (-7945921820859163 / 5000000000000000 : ℚ)
  oldCenter := (1867981290476611 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1317
  oldLo := (373 / 1000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_912, piece_913]
}

noncomputable def cell_11078 : Cell := { cellDefaults with
  domain := ⟨(22350000000000001 / 40000000000000000 : ℚ), (44710000000000003 / 80000000000000000 : ℚ)⟩
  r := (58059317237387 / 100000000000000 : ℚ)
  w := (14211608207821 / 10000000000000 : ℚ)
  center := (17882000000000001 / 32000000000000000 : ℚ)
  supportValue := (298718104412713 / 800000000000000 : ℚ)
  supportSlope := (-7944133844936291 / 5000000000000000 : ℚ)
  oldCenter := (298718104412713 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1317
  oldLo := (373 / 1000 : ℚ)
  oldHi := (747 / 2000 : ℚ)
  oldPieces := [piece_912]
}

noncomputable def cell_11079 : Cell := { cellDefaults with
  domain := ⟨(44710000000000003 / 80000000000000000 : ℚ), (11180000000000001 / 20000000000000000 : ℚ)⟩
  r := (58059317237387 / 100000000000000 : ℚ)
  w := (14211608207821 / 10000000000000 : ℚ)
  center := (89430000000000007 / 160000000000000000 : ℚ)
  supportValue := (1865994382871297 / 5000000000000000 : ℚ)
  supportSlope := (-1587054900612569 / 1000000000000000 : ℚ)
  oldCenter := (1865994382871297 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1317
  oldLo := (373 / 1000 : ℚ)
  oldHi := (747 / 2000 : ℚ)
  oldPieces := [piece_912]
}

noncomputable def cell_11080 : Cell := { cellDefaults with
  domain := ⟨(11180000000000001 / 20000000000000000 : ℚ), (44730000000000003 / 80000000000000000 : ℚ)⟩
  r := (58029101806379 / 100000000000000 : ℚ)
  w := (7104078509563 / 5000000000000 : ℚ)
  center := (89450000000000007 / 160000000000000000 : ℚ)
  supportValue := (7468299817424231 / 20000000000000000 : ℚ)
  supportSlope := (-7940187722362507 / 5000000000000000 : ℚ)
  oldCenter := (7468299817424231 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1318
  oldLo := (373 / 1000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_912, piece_913]
}

noncomputable def cell_11081 : Cell := { cellDefaults with
  domain := ⟨(44730000000000003 / 80000000000000000 : ℚ), (22370000000000001 / 40000000000000000 : ℚ)⟩
  r := (58029101806379 / 100000000000000 : ℚ)
  w := (7104078509563 / 5000000000000 : ℚ)
  center := (17894000000000001 / 32000000000000000 : ℚ)
  supportValue := (3732163229018811 / 10000000000000000 : ℚ)
  supportSlope := (-7931838650217753 / 5000000000000000 : ℚ)
  oldCenter := (3732163229018811 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1318
  oldLo := (373 / 1000 : ℚ)
  oldHi := (747 / 2000 : ℚ)
  oldPieces := [piece_912]
}

noncomputable def cell_11082 : Cell := { cellDefaults with
  domain := ⟨(22370000000000001 / 40000000000000000 : ℚ), (44750000000000001 / 80000000000000000 : ℚ)⟩
  r := (58029101806379 / 100000000000000 : ℚ)
  w := (7104078509563 / 5000000000000 : ℚ)
  center := (89490000000000003 / 160000000000000000 : ℚ)
  supportValue := (1865091991711191 / 5000000000000000 : ℚ)
  supportSlope := (-3962980932131051 / 2500000000000000 : ℚ)
  oldCenter := (1865091991711191 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1318
  oldLo := (149 / 400 : ℚ)
  oldHi := (747 / 2000 : ℚ)
  oldPieces := [piece_911, piece_912]
}

noncomputable def cell_11083 : Cell := { cellDefaults with
  domain := ⟨(44750000000000001 / 80000000000000000 : ℚ), (1119 / 2000 : ℚ)⟩
  r := (58029101806379 / 100000000000000 : ℚ)
  w := (7104078509563 / 5000000000000 : ℚ)
  center := (89510000000000001 / 160000000000000000 : ℚ)
  supportValue := (3728200085120023 / 10000000000000000 : ℚ)
  supportSlope := (-7921377857594517 / 5000000000000000 : ℚ)
  oldCenter := (3728200085120023 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1318
  oldLo := (149 / 400 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_911]
}

noncomputable def cell_11084 : Cell := { cellDefaults with
  domain := ⟨(1119 / 2000 : ℚ), (44770000000000001 / 80000000000000000 : ℚ)⟩
  r := (579989220507 / 1000000000000 : ℚ)
  w := (14204714224147 / 10000000000000 : ℚ)
  center := (89530000000000001 / 160000000000000000 : ℚ)
  supportValue := (9325891645419629 / 25000000000000000 : ℚ)
  supportSlope := (-15843794049617637 / 10000000000000000 : ℚ)
  oldCenter := (9325891645419629 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1319
  oldLo := (149 / 400 : ℚ)
  oldHi := (747 / 2000 : ℚ)
  oldPieces := [piece_911, piece_912]
}

noncomputable def cell_11085 : Cell := { cellDefaults with
  domain := ⟨(44770000000000001 / 80000000000000000 : ℚ), (22390000000000001 / 40000000000000000 : ℚ)⟩
  r := (579989220507 / 1000000000000 : ℚ)
  w := (14204714224147 / 10000000000000 : ℚ)
  center := (89550000000000003 / 160000000000000000 : ℚ)
  supportValue := (3728373774790337 / 10000000000000000 : ℚ)
  supportSlope := (-3167180255161067 / 2000000000000000 : ℚ)
  oldCenter := (3728373774790337 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1319
  oldLo := (149 / 400 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_911]
}

noncomputable def cell_11086 : Cell := { cellDefaults with
  domain := ⟨(22390000000000001 / 40000000000000000 : ℚ), (44790000000000003 / 80000000000000000 : ℚ)⟩
  r := (579989220507 / 1000000000000 : ℚ)
  w := (14204714224147 / 10000000000000 : ℚ)
  center := (17914000000000001 / 32000000000000000 : ℚ)
  supportValue := (465799423738829 / 1250000000000000 : ℚ)
  supportSlope := (-158182632859811 / 100000000000000 : ℚ)
  oldCenter := (465799423738829 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1319
  oldLo := (149 / 400 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_911]
}

noncomputable def cell_11087 : Cell := { cellDefaults with
  domain := ⟨(44790000000000003 / 80000000000000000 : ℚ), (11200000000000001 / 20000000000000000 : ℚ)⟩
  r := (579989220507 / 1000000000000 : ℚ)
  w := (14204714224147 / 10000000000000 : ℚ)
  center := (89590000000000007 / 160000000000000000 : ℚ)
  supportValue := (2327763300713781 / 6250000000000000 : ℚ)
  supportSlope := (-3162426642382993 / 2000000000000000 : ℚ)
  oldCenter := (2327763300713781 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1319
  oldLo := (93 / 250 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_910, piece_911]
}

noncomputable def cell_11088 : Cell := { cellDefaults with
  domain := ⟨(11200000000000001 / 20000000000000000 : ℚ), (44810000000000003 / 80000000000000000 : ℚ)⟩
  r := (57968778781169 / 100000000000000 : ℚ)
  w := (14201280391717 / 10000000000000 : ℚ)
  center := (89610000000000007 / 160000000000000000 : ℚ)
  supportValue := (4658208819327643 / 12500000000000000 : ℚ)
  supportSlope := (-790570175520501 / 500000000000000 : ℚ)
  oldCenter := (4658208819327643 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1320
  oldLo := (149 / 400 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_911]
}

noncomputable def cell_11089 : Cell := { cellDefaults with
  domain := ⟨(44810000000000003 / 80000000000000000 : ℚ), (22410000000000001 / 40000000000000000 : ℚ)⟩
  r := (57968778781169 / 100000000000000 : ℚ)
  w := (14201280391717 / 10000000000000 : ℚ)
  center := (17926000000000001 / 32000000000000000 : ℚ)
  supportValue := (37245939609009227 / 100000000000000000 : ℚ)
  supportSlope := (-1580403035406677 / 1000000000000000 : ℚ)
  oldCenter := (37245939609009227 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1320
  oldLo := (93 / 250 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_910, piece_911]
}

noncomputable def cell_11090 : Cell := { cellDefaults with
  domain := ⟨(22410000000000001 / 40000000000000000 : ℚ), (44830000000000001 / 80000000000000000 : ℚ)⟩
  r := (57968778781169 / 100000000000000 : ℚ)
  w := (14201280391717 / 10000000000000 : ℚ)
  center := (89650000000000003 / 160000000000000000 : ℚ)
  supportValue := (37226164236799203 / 100000000000000000 : ℚ)
  supportSlope := (-6316247733779 / 4000000000000 : ℚ)
  oldCenter := (37226164236799203 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1320
  oldLo := (93 / 250 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_910]
}

noncomputable def cell_11091 : Cell := { cellDefaults with
  domain := ⟨(44830000000000001 / 80000000000000000 : ℚ), (1121 / 2000 : ℚ)⟩
  r := (57968778781169 / 100000000000000 : ℚ)
  w := (14201280391717 / 10000000000000 : ℚ)
  center := (89670000000000001 / 160000000000000000 : ℚ)
  supportValue := (372064630011943 / 1000000000000000 : ℚ)
  supportSlope := (-3943889690441299 / 2500000000000000 : ℚ)
  oldCenter := (372064630011943 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1320
  oldLo := (7430000000000001 / 20000000000000000 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_909, piece_910]
}

noncomputable def cell_11092 : Cell := { cellDefaults with
  domain := ⟨(1121 / 2000 : ℚ), (44850000000000001 / 80000000000000000 : ℚ)⟩
  r := (28969336268747 / 50000000000000 : ℚ)
  w := (7098927365123 / 5000000000000 : ℚ)
  center := (89690000000000001 / 160000000000000000 : ℚ)
  supportValue := (18613936041695847 / 50000000000000000 : ℚ)
  supportSlope := (-7891889651378313 / 5000000000000000 : ℚ)
  oldCenter := (18613936041695847 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1321
  oldLo := (93 / 250 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_910]
}

noncomputable def cell_11093 : Cell := { cellDefaults with
  domain := ⟨(44850000000000001 / 80000000000000000 : ℚ), (22430000000000001 / 40000000000000000 : ℚ)⟩
  r := (28969336268747 / 50000000000000 : ℚ)
  w := (7098927365123 / 5000000000000 : ℚ)
  center := (89710000000000003 / 160000000000000000 : ℚ)
  supportValue := (1860408969512403 / 5000000000000000 : ℚ)
  supportSlope := (-788373362644289 / 500000000000000 : ℚ)
  oldCenter := (1860408969512403 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1321
  oldLo := (7430000000000001 / 20000000000000000 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_909, piece_910]
}

noncomputable def cell_11094 : Cell := { cellDefaults with
  domain := ⟨(22430000000000001 / 40000000000000000 : ℚ), (44870000000000003 / 80000000000000000 : ℚ)⟩
  r := (28969336268747 / 50000000000000 : ℚ)
  w := (7098927365123 / 5000000000000 : ℚ)
  center := (17946000000000001 / 32000000000000000 : ℚ)
  supportValue := (464855574022267 / 1250000000000000 : ℚ)
  supportSlope := (-31526239682599 / 20000000000000 : ℚ)
  oldCenter := (464855574022267 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1321
  oldLo := (7430000000000001 / 20000000000000000 : ℚ)
  oldHi := (93 / 250 : ℚ)
  oldPieces := [piece_909]
}

noncomputable def cell_11095 : Cell := { cellDefaults with
  domain := ⟨(44870000000000003 / 80000000000000000 : ℚ), (11220000000000001 / 20000000000000000 : ℚ)⟩
  r := (28969336268747 / 50000000000000 : ℚ)
  w := (7098927365123 / 5000000000000 : ℚ)
  center := (89750000000000007 / 160000000000000000 : ℚ)
  supportValue := (3716875302222537 / 10000000000000000 : ℚ)
  supportSlope := (-314910520317437 / 200000000000000 : ℚ)
  oldCenter := (3716875302222537 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1321
  oldLo := (7430000000000001 / 20000000000000000 : ℚ)
  oldHi := (93 / 250 : ℚ)
  oldPieces := [piece_909]
}

noncomputable def cell_11096 : Cell := { cellDefaults with
  domain := ⟨(11220000000000001 / 20000000000000000 : ℚ), (44890000000000003 / 80000000000000000 : ℚ)⟩
  r := (57908598657623 / 100000000000000 : ℚ)
  w := (14194434126433 / 10000000000000 : ℚ)
  center := (89770000000000007 / 160000000000000000 : ℚ)
  supportValue := (1487607345217993 / 4000000000000000 : ℚ)
  supportSlope := (-393907656400389 / 250000000000000 : ℚ)
  oldCenter := (1487607345217993 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1322
  oldLo := (7430000000000001 / 20000000000000000 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_909, piece_910]
}

noncomputable def cell_11097 : Cell := { cellDefaults with
  domain := ⟨(44890000000000003 / 80000000000000000 : ℚ), (22450000000000001 / 40000000000000000 : ℚ)⟩
  r := (57908598657623 / 100000000000000 : ℚ)
  w := (14194434126433 / 10000000000000 : ℚ)
  center := (17958000000000001 / 32000000000000000 : ℚ)
  supportValue := (18585236603010777 / 50000000000000000 : ℚ)
  supportSlope := (-786936320961463 / 500000000000000 : ℚ)
  oldCenter := (18585236603010777 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1322
  oldLo := (7430000000000001 / 20000000000000000 : ℚ)
  oldHi := (93 / 250 : ℚ)
  oldPieces := [piece_909]
}

noncomputable def cell_11098 : Cell := { cellDefaults with
  domain := ⟨(22450000000000001 / 40000000000000000 : ℚ), (44910000000000001 / 80000000000000000 : ℚ)⟩
  r := (57908598657623 / 100000000000000 : ℚ)
  w := (14194434126433 / 10000000000000 : ℚ)
  center := (89810000000000003 / 160000000000000000 : ℚ)
  supportValue := (37150836755111893 / 100000000000000000 : ℚ)
  supportSlope := (-629115181966063 / 400000000000000 : ℚ)
  oldCenter := (37150836755111893 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1322
  oldLo := (7420000000000001 / 20000000000000000 : ℚ)
  oldHi := (93 / 250 : ℚ)
  oldPieces := [piece_908, piece_909]
}

noncomputable def cell_11099 : Cell := { cellDefaults with
  domain := ⟨(44910000000000001 / 80000000000000000 : ℚ), (1123 / 2000 : ℚ)⟩
  r := (57908598657623 / 100000000000000 : ℚ)
  w := (14194434126433 / 10000000000000 : ℚ)
  center := (89830000000000001 / 160000000000000000 : ℚ)
  supportValue := (928278819552813 / 2500000000000000 : ℚ)
  supportSlope := (-1571816809867223 / 1000000000000000 : ℚ)
  oldCenter := (928278819552813 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1322
  oldLo := (7420000000000001 / 20000000000000000 : ℚ)
  oldHi := (7430000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_908]
}

theorem check_11050 : cell_11050.check = true := by
  decide +kernel

theorem check_11051 : cell_11051.check = true := by
  decide +kernel

theorem check_11052 : cell_11052.check = true := by
  decide +kernel

theorem check_11053 : cell_11053.check = true := by
  decide +kernel

theorem check_11054 : cell_11054.check = true := by
  decide +kernel

theorem check_11055 : cell_11055.check = true := by
  decide +kernel

theorem check_11056 : cell_11056.check = true := by
  decide +kernel

theorem check_11057 : cell_11057.check = true := by
  decide +kernel

theorem check_11058 : cell_11058.check = true := by
  decide +kernel

theorem check_11059 : cell_11059.check = true := by
  decide +kernel

theorem check_11060 : cell_11060.check = true := by
  decide +kernel

theorem check_11061 : cell_11061.check = true := by
  decide +kernel

theorem check_11062 : cell_11062.check = true := by
  decide +kernel

theorem check_11063 : cell_11063.check = true := by
  decide +kernel

theorem check_11064 : cell_11064.check = true := by
  decide +kernel

theorem check_11065 : cell_11065.check = true := by
  decide +kernel

theorem check_11066 : cell_11066.check = true := by
  decide +kernel

theorem check_11067 : cell_11067.check = true := by
  decide +kernel

theorem check_11068 : cell_11068.check = true := by
  decide +kernel

theorem check_11069 : cell_11069.check = true := by
  decide +kernel

theorem check_11070 : cell_11070.check = true := by
  decide +kernel

theorem check_11071 : cell_11071.check = true := by
  decide +kernel

theorem check_11072 : cell_11072.check = true := by
  decide +kernel

theorem check_11073 : cell_11073.check = true := by
  decide +kernel

theorem check_11074 : cell_11074.check = true := by
  decide +kernel

theorem check_11075 : cell_11075.check = true := by
  decide +kernel

theorem check_11076 : cell_11076.check = true := by
  decide +kernel

theorem check_11077 : cell_11077.check = true := by
  decide +kernel

theorem check_11078 : cell_11078.check = true := by
  decide +kernel

theorem check_11079 : cell_11079.check = true := by
  decide +kernel

theorem check_11080 : cell_11080.check = true := by
  decide +kernel

theorem check_11081 : cell_11081.check = true := by
  decide +kernel

theorem check_11082 : cell_11082.check = true := by
  decide +kernel

theorem check_11083 : cell_11083.check = true := by
  decide +kernel

theorem check_11084 : cell_11084.check = true := by
  decide +kernel

theorem check_11085 : cell_11085.check = true := by
  decide +kernel

theorem check_11086 : cell_11086.check = true := by
  decide +kernel

theorem check_11087 : cell_11087.check = true := by
  decide +kernel

theorem check_11088 : cell_11088.check = true := by
  decide +kernel

theorem check_11089 : cell_11089.check = true := by
  decide +kernel

theorem check_11090 : cell_11090.check = true := by
  decide +kernel

theorem check_11091 : cell_11091.check = true := by
  decide +kernel

theorem check_11092 : cell_11092.check = true := by
  decide +kernel

theorem check_11093 : cell_11093.check = true := by
  decide +kernel

theorem check_11094 : cell_11094.check = true := by
  decide +kernel

theorem check_11095 : cell_11095.check = true := by
  decide +kernel

theorem check_11096 : cell_11096.check = true := by
  decide +kernel

theorem check_11097 : cell_11097.check = true := by
  decide +kernel

theorem check_11098 : cell_11098.check = true := by
  decide +kernel

theorem check_11099 : cell_11099.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11050, cell_11051, cell_11052, cell_11053, cell_11054, cell_11055, cell_11056, cell_11057, cell_11058, cell_11059, cell_11060, cell_11061, cell_11062, cell_11063, cell_11064, cell_11065, cell_11066, cell_11067, cell_11068, cell_11069, cell_11070, cell_11071, cell_11072, cell_11073, cell_11074, cell_11075, cell_11076, cell_11077, cell_11078, cell_11079, cell_11080, cell_11081, cell_11082, cell_11083, cell_11084, cell_11085, cell_11086, cell_11087, cell_11088, cell_11089, cell_11090, cell_11091, cell_11092, cell_11093, cell_11094, cell_11095, cell_11096, cell_11097, cell_11098, cell_11099]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11050, check_11051, check_11052, check_11053, check_11054, check_11055, check_11056, check_11057, check_11058, check_11059, check_11060, check_11061, check_11062, check_11063, check_11064, check_11065, check_11066, check_11067, check_11068, check_11069, check_11070, check_11071, check_11072, check_11073, check_11074, check_11075, check_11076, check_11077, check_11078, check_11079, check_11080, check_11081, check_11082, check_11083, check_11084, check_11085, check_11086, check_11087, check_11088, check_11089, check_11090, check_11091, check_11092, check_11093, check_11094, check_11095, check_11096, check_11097, check_11098, check_11099, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0221

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0221
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0221
open AnalyticBounds.ExpressionCertificate

theorem linked_11050 : Linked cell_11050 pieces := by
  link_source cell_11050 with piece_1309 using piece_1309_mem, piece_918_mem

theorem linked_11051 : Linked cell_11051 pieces := by
  link_source cell_11051 with piece_1310 using piece_1310_mem, ⟨piece_918_mem, piece_919_mem⟩

theorem linked_11052 : Linked cell_11052 pieces := by
  link_source cell_11052 with piece_1310 using piece_1310_mem, piece_918_mem

theorem linked_11053 : Linked cell_11053 pieces := by
  link_source cell_11053 with piece_1310 using piece_1310_mem, piece_918_mem

theorem linked_11054 : Linked cell_11054 pieces := by
  link_source cell_11054 with piece_1310 using piece_1310_mem, ⟨piece_917_mem, piece_918_mem⟩

theorem linked_11055 : Linked cell_11055 pieces := by
  link_source cell_11055 with piece_1311 using piece_1311_mem, piece_918_mem

theorem linked_11056 : Linked cell_11056 pieces := by
  link_source cell_11056 with piece_1311 using piece_1311_mem, ⟨piece_917_mem, piece_918_mem⟩

theorem linked_11057 : Linked cell_11057 pieces := by
  link_source cell_11057 with piece_1311 using piece_1311_mem, piece_917_mem

theorem linked_11058 : Linked cell_11058 pieces := by
  link_source cell_11058 with piece_1311 using piece_1311_mem, ⟨piece_916_mem, piece_917_mem⟩

theorem linked_11059 : Linked cell_11059 pieces := by
  link_source cell_11059 with piece_1312 using piece_1312_mem, piece_917_mem

theorem linked_11060 : Linked cell_11060 pieces := by
  link_source cell_11060 with piece_1312 using piece_1312_mem, ⟨piece_916_mem, piece_917_mem⟩

theorem linked_11061 : Linked cell_11061 pieces := by
  link_source cell_11061 with piece_1312 using piece_1312_mem, ⟨piece_915_mem, piece_916_mem⟩

theorem linked_11062 : Linked cell_11062 pieces := by
  link_source cell_11062 with piece_1312 using piece_1312_mem, piece_915_mem

theorem linked_11063 : Linked cell_11063 pieces := by
  link_source cell_11063 with piece_1313 using piece_1313_mem, ⟨piece_915_mem, ⟨piece_916_mem, piece_917_mem⟩⟩

theorem linked_11064 : Linked cell_11064 pieces := by
  link_source cell_11064 with piece_1313 using piece_1313_mem, piece_915_mem

theorem linked_11065 : Linked cell_11065 pieces := by
  link_source cell_11065 with piece_1313 using piece_1313_mem, ⟨piece_914_mem, piece_915_mem⟩

theorem linked_11066 : Linked cell_11066 pieces := by
  link_source cell_11066 with piece_1313 using piece_1313_mem, piece_914_mem

theorem linked_11067 : Linked cell_11067 pieces := by
  link_source cell_11067 with piece_1314 using piece_1314_mem, piece_915_mem

theorem linked_11068 : Linked cell_11068 pieces := by
  link_source cell_11068 with piece_1315 using piece_1315_mem, ⟨piece_914_mem, piece_915_mem⟩

theorem linked_11069 : Linked cell_11069 pieces := by
  link_source cell_11069 with piece_1315 using piece_1315_mem, piece_914_mem

theorem linked_11070 : Linked cell_11070 pieces := by
  link_source cell_11070 with piece_1315 using piece_1315_mem, piece_914_mem

theorem linked_11071 : Linked cell_11071 pieces := by
  link_source cell_11071 with piece_1315 using piece_1315_mem, ⟨piece_913_mem, piece_914_mem⟩

theorem linked_11072 : Linked cell_11072 pieces := by
  link_source cell_11072 with piece_1316 using piece_1316_mem, piece_914_mem

theorem linked_11073 : Linked cell_11073 pieces := by
  link_source cell_11073 with piece_1316 using piece_1316_mem, ⟨piece_913_mem, piece_914_mem⟩

theorem linked_11074 : Linked cell_11074 pieces := by
  link_source cell_11074 with piece_1316 using piece_1316_mem, piece_913_mem

theorem linked_11075 : Linked cell_11075 pieces := by
  link_source cell_11075 with piece_1316 using piece_1316_mem, ⟨piece_912_mem, piece_913_mem⟩

theorem linked_11076 : Linked cell_11076 pieces := by
  link_source cell_11076 with piece_1317 using piece_1317_mem, piece_913_mem

theorem linked_11077 : Linked cell_11077 pieces := by
  link_source cell_11077 with piece_1317 using piece_1317_mem, ⟨piece_912_mem, piece_913_mem⟩

theorem linked_11078 : Linked cell_11078 pieces := by
  link_source cell_11078 with piece_1317 using piece_1317_mem, piece_912_mem

theorem linked_11079 : Linked cell_11079 pieces := by
  link_source cell_11079 with piece_1317 using piece_1317_mem, piece_912_mem

theorem linked_11080 : Linked cell_11080 pieces := by
  link_source cell_11080 with piece_1318 using piece_1318_mem, ⟨piece_912_mem, piece_913_mem⟩

theorem linked_11081 : Linked cell_11081 pieces := by
  link_source cell_11081 with piece_1318 using piece_1318_mem, piece_912_mem

theorem linked_11082 : Linked cell_11082 pieces := by
  link_source cell_11082 with piece_1318 using piece_1318_mem, ⟨piece_911_mem, piece_912_mem⟩

theorem linked_11083 : Linked cell_11083 pieces := by
  link_source cell_11083 with piece_1318 using piece_1318_mem, piece_911_mem

theorem linked_11084 : Linked cell_11084 pieces := by
  link_source cell_11084 with piece_1319 using piece_1319_mem, ⟨piece_911_mem, piece_912_mem⟩

theorem linked_11085 : Linked cell_11085 pieces := by
  link_source cell_11085 with piece_1319 using piece_1319_mem, piece_911_mem

theorem linked_11086 : Linked cell_11086 pieces := by
  link_source cell_11086 with piece_1319 using piece_1319_mem, piece_911_mem

theorem linked_11087 : Linked cell_11087 pieces := by
  link_source cell_11087 with piece_1319 using piece_1319_mem, ⟨piece_910_mem, piece_911_mem⟩

theorem linked_11088 : Linked cell_11088 pieces := by
  link_source cell_11088 with piece_1320 using piece_1320_mem, piece_911_mem

theorem linked_11089 : Linked cell_11089 pieces := by
  link_source cell_11089 with piece_1320 using piece_1320_mem, ⟨piece_910_mem, piece_911_mem⟩

theorem linked_11090 : Linked cell_11090 pieces := by
  link_source cell_11090 with piece_1320 using piece_1320_mem, piece_910_mem

theorem linked_11091 : Linked cell_11091 pieces := by
  link_source cell_11091 with piece_1320 using piece_1320_mem, ⟨piece_909_mem, piece_910_mem⟩

theorem linked_11092 : Linked cell_11092 pieces := by
  link_source cell_11092 with piece_1321 using piece_1321_mem, piece_910_mem

theorem linked_11093 : Linked cell_11093 pieces := by
  link_source cell_11093 with piece_1321 using piece_1321_mem, ⟨piece_909_mem, piece_910_mem⟩

theorem linked_11094 : Linked cell_11094 pieces := by
  link_source cell_11094 with piece_1321 using piece_1321_mem, piece_909_mem

theorem linked_11095 : Linked cell_11095 pieces := by
  link_source cell_11095 with piece_1321 using piece_1321_mem, piece_909_mem

theorem linked_11096 : Linked cell_11096 pieces := by
  link_source cell_11096 with piece_1322 using piece_1322_mem, ⟨piece_909_mem, piece_910_mem⟩

theorem linked_11097 : Linked cell_11097 pieces := by
  link_source cell_11097 with piece_1322 using piece_1322_mem, piece_909_mem

theorem linked_11098 : Linked cell_11098 pieces := by
  link_source cell_11098 with piece_1322 using piece_1322_mem, ⟨piece_908_mem, piece_909_mem⟩

theorem linked_11099 : Linked cell_11099 pieces := by
  link_source cell_11099 with piece_1322 using piece_1322_mem, piece_908_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0221.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0221.cells,List.forall_mem_cons]
  exact ⟨linked_11050, linked_11051, linked_11052, linked_11053, linked_11054, linked_11055, linked_11056, linked_11057, linked_11058, linked_11059, linked_11060, linked_11061, linked_11062, linked_11063, linked_11064, linked_11065, linked_11066, linked_11067, linked_11068, linked_11069, linked_11070, linked_11071, linked_11072, linked_11073, linked_11074, linked_11075, linked_11076, linked_11077, linked_11078, linked_11079, linked_11080, linked_11081, linked_11082, linked_11083, linked_11084, linked_11085, linked_11086, linked_11087, linked_11088, linked_11089, linked_11090, linked_11091, linked_11092, linked_11093, linked_11094, linked_11095, linked_11096, linked_11097, linked_11098, linked_11099, by simp⟩

theorem covered : covers (111075000000000001 / 200000000000000000 : ℚ) (1123 / 2000 : ℚ)
    (SourceCertificates.Chunk0221.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0221
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0222
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(1123 / 2000 : ℚ), (112325000000000003 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (57788663059617 / 100000000000000 : ℚ)
  w := (14180830961803 / 10000000000000 : ℚ)
  center := (224625000000000003 / 400000000000000000 : ℚ)
  supportValue := (18576269014082153 / 50000000000000000 : ℚ)
  supportSlope := (-7859909711544101 / 5000000000000000 : ℚ)
  oldCenter := (18576269014082153 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1323
  oldLo := (7400000000000001 / 20000000000000000 : ℚ)
  oldHi := (7410000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_906]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11100 : Cell := { cellDefaults with
  r := (28939280914199 / 50000000000000 : ℚ)
  w := (7095510808393 / 5000000000000 : ℚ)
  oldLo := (7420000000000001 / 20000000000000000 : ℚ)
  oldHi := (93 / 250 : ℚ)
  oldPieces := [piece_908, piece_909]
}

noncomputable def cell_11101 : Cell := { cellDefaults with
  domain := ⟨(112325000000000003 / 200000000000000000 : ℚ), (56175000000000003 / 100000000000000000 : ℚ)⟩
  r := (28939280914199 / 50000000000000 : ℚ)
  w := (7095510808393 / 5000000000000 : ℚ)
  center := (224675000000000009 / 400000000000000000 : ℚ)
  supportValue := (3713286411703921 / 10000000000000000 : ℚ)
  supportSlope := (-1571138568682773 / 1000000000000000 : ℚ)
  oldCenter := (3713286411703921 / 10000000000000000 : ℚ)
  oldLo := (7420000000000001 / 20000000000000000 : ℚ)
  oldHi := (7430000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_908]
}

noncomputable def cell_11102 : Cell := { cellDefaults with
  domain := ⟨(56175000000000003 / 100000000000000000 : ℚ), (112375000000000009 / 200000000000000000 : ℚ)⟩
  r := (28939280914199 / 50000000000000 : ℚ)
  w := (7095510808393 / 5000000000000 : ℚ)
  center := (44945000000000003 / 80000000000000000 : ℚ)
  supportValue := (18556617921075047 / 50000000000000000 : ℚ)
  supportSlope := (-3138772136993829 / 2000000000000000 : ℚ)
  oldCenter := (18556617921075047 / 50000000000000000 : ℚ)
  oldLo := (7420000000000001 / 20000000000000000 : ℚ)
  oldHi := (7430000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_908]
}

noncomputable def cell_11103 : Cell := { cellDefaults with
  domain := ⟨(112375000000000009 / 200000000000000000 : ℚ), (28100000000000003 / 50000000000000000 : ℚ)⟩
  r := (28939280914199 / 50000000000000 : ℚ)
  w := (7095510808393 / 5000000000000 : ℚ)
  center := (224775000000000021 / 400000000000000000 : ℚ)
  supportValue := (463670618326877 / 1250000000000000 : ℚ)
  supportSlope := (-1961050417479169 / 1250000000000000 : ℚ)
  oldCenter := (463670618326877 / 1250000000000000 : ℚ)
  oldLo := (7410000000000001 / 20000000000000000 : ℚ)
  oldHi := (7430000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_907, piece_908]
}

noncomputable def cell_11104 : Cell := { cellDefaults with
  domain := ⟨(28100000000000003 / 50000000000000000 : ℚ), (112425000000000009 / 200000000000000000 : ℚ)⟩
  r := (11569712072741 / 20000000000000 : ℚ)
  w := (7093808739633 / 5000000000000 : ℚ)
  center := (224825000000000021 / 400000000000000000 : ℚ)
  supportValue := (1855746467065461 / 5000000000000000 : ℚ)
  supportSlope := (-7843538328714369 / 5000000000000000 : ℚ)
  oldCenter := (1855746467065461 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1324
  oldLo := (7420000000000001 / 20000000000000000 : ℚ)
  oldHi := (7430000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_908]
}

noncomputable def cell_11105 : Cell := { cellDefaults with
  domain := ⟨(112425000000000009 / 200000000000000000 : ℚ), (56225000000000003 / 100000000000000000 : ℚ)⟩
  r := (11569712072741 / 20000000000000 : ℚ)
  w := (7093808739633 / 5000000000000 : ℚ)
  center := (44975000000000003 / 80000000000000000 : ℚ)
  supportValue := (1159229781825547 / 3125000000000000 : ℚ)
  supportSlope := (-7840185710682287 / 5000000000000000 : ℚ)
  oldCenter := (1159229781825547 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1324
  oldLo := (7410000000000001 / 20000000000000000 : ℚ)
  oldHi := (7430000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_907, piece_908]
}

noncomputable def cell_11106 : Cell := { cellDefaults with
  domain := ⟨(56225000000000003 / 100000000000000000 : ℚ), (112475000000000003 / 200000000000000000 : ℚ)⟩
  r := (11569712072741 / 20000000000000 : ℚ)
  w := (7093808739633 / 5000000000000 : ℚ)
  center := (224925000000000009 / 400000000000000000 : ℚ)
  supportValue := (4634466597539507 / 12500000000000000 : ℚ)
  supportSlope := (-15666653724821447 / 10000000000000000 : ℚ)
  oldCenter := (4634466597539507 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1324
  oldLo := (7410000000000001 / 20000000000000000 : ℚ)
  oldHi := (7420000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_907]
}

noncomputable def cell_11107 : Cell := { cellDefaults with
  domain := ⟨(112475000000000003 / 200000000000000000 : ℚ), (9 / 16 : ℚ)⟩
  r := (11569712072741 / 20000000000000 : ℚ)
  w := (7093808739633 / 5000000000000 : ℚ)
  center := (224975000000000003 / 400000000000000000 : ℚ)
  supportValue := (3705618632495723 / 10000000000000000 : ℚ)
  supportSlope := (-7825949929475101 / 5000000000000000 : ℚ)
  oldCenter := (3705618632495723 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1324
  oldHi := (7420000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_906, piece_907]
}

noncomputable def cell_11108 : Cell := { cellDefaults with
  domain := ⟨(9 / 16 : ℚ), (112525000000000003 / 200000000000000000 : ℚ)⟩
  r := (5781859553067 / 10000000000000 : ℚ)
  w := (3546055492561 / 2500000000000 : ℚ)
  center := (225025000000000003 / 400000000000000000 : ℚ)
  supportValue := (926935410500721 / 2500000000000000 : ℚ)
  supportSlope := (-15659885842207797 / 10000000000000000 : ℚ)
  oldCenter := (926935410500721 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1325
  oldLo := (7410000000000001 / 20000000000000000 : ℚ)
  oldHi := (7420000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_907]
}

noncomputable def cell_11109 : Cell := { cellDefaults with
  domain := ⟨(112525000000000003 / 200000000000000000 : ℚ), (56275000000000003 / 100000000000000000 : ℚ)⟩
  r := (5781859553067 / 10000000000000 : ℚ)
  w := (3546055492561 / 2500000000000 : ℚ)
  center := (225075000000000009 / 400000000000000000 : ℚ)
  supportValue := (926446960425953 / 2500000000000000 : ℚ)
  supportSlope := (-7821938483924157 / 5000000000000000 : ℚ)
  oldCenter := (926446960425953 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1325
  oldHi := (7420000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_906, piece_907]
}

noncomputable def cell_11110 : Cell := { cellDefaults with
  domain := ⟨(56275000000000003 / 100000000000000000 : ℚ), (112575000000000009 / 200000000000000000 : ℚ)⟩
  r := (5781859553067 / 10000000000000 : ℚ)
  w := (3546055492561 / 2500000000000 : ℚ)
  center := (45025000000000003 / 80000000000000000 : ℚ)
  supportValue := (9259574846985659 / 25000000000000000 : ℚ)
  supportSlope := (-1954948422923973 / 1250000000000000 : ℚ)
  oldCenter := (9259574846985659 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1325
  oldPieces := [piece_906]
}

noncomputable def cell_11111 : Cell := { cellDefaults with
  domain := ⟨(112575000000000009 / 200000000000000000 : ℚ), (28150000000000003 / 50000000000000000 : ℚ)⟩
  r := (5781859553067 / 10000000000000 : ℚ)
  w := (3546055492561 / 2500000000000 : ℚ)
  center := (225175000000000021 / 400000000000000000 : ℚ)
  supportValue := (1850938041549811 / 5000000000000000 : ℚ)
  supportSlope := (-7811055175105559 / 5000000000000000 : ℚ)
  oldCenter := (1850938041549811 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1325
  oldPieces := [piece_906]
}

noncomputable def cell_11112 : Cell := { cellDefaults with
  domain := ⟨(28150000000000003 / 50000000000000000 : ℚ), (5630726256983241 / 10000000000000000 : ℚ)⟩
  center := (3518976955307263 / 6250000000000000 : ℚ)
  supportValue := (1852204105116969 / 5000000000000000 : ℚ)
  supportSlope := (-3127302376586957 / 2000000000000000 : ℚ)
  oldCenter := (1852204105116969 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1326
  oldPieces := [piece_906]
}

noncomputable def cell_11113 : Cell := { cellDefaults with
  domain := ⟨(5630726256983241 / 10000000000000000 : ℚ), (22527178770949723 / 40000000000000000 : ℚ)⟩
  center := (45050083798882687 / 80000000000000000 : ℚ)
  supportValue := (18515028183073 / 50000000000000 : ℚ)
  supportSlope := (-7811980224000159 / 5000000000000000 : ℚ)
  oldCenter := (18515028183073 / 50000000000000 : ℚ)
  newCoefficients := coefficients_1327
  oldPieces := [piece_906]
}

noncomputable def cell_11114 : Cell := { cellDefaults with
  domain := ⟨(22527178770949723 / 40000000000000000 : ℚ), (11265726256983241 / 20000000000000000 : ℚ)⟩
  center := (9011726256983241 / 16000000000000000 : ℚ)
  supportValue := (37013371131215783 / 100000000000000000 : ℚ)
  supportSlope := (-78045283775919 / 50000000000000 : ℚ)
  oldCenter := (37013371131215783 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1327
  oldPieces := [piece_906]
}

noncomputable def cell_11115 : Cell := { cellDefaults with
  domain := ⟨(11265726256983241 / 20000000000000000 : ℚ), (22535726256983241 / 40000000000000000 : ℚ)⟩
  center := (45067178770949723 / 80000000000000000 : ℚ)
  supportValue := (36996724580107127 / 100000000000000000 : ℚ)
  supportSlope := (-1560442513387649 / 1000000000000000 : ℚ)
  oldCenter := (36996724580107127 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1327
  oldLo := (7390000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_905, piece_906]
}

noncomputable def cell_11116 : Cell := { cellDefaults with
  domain := ⟨(22535726256983241 / 40000000000000000 : ℚ), (1127 / 2000 : ℚ)⟩
  center := (45075726256983241 / 80000000000000000 : ℚ)
  supportValue := (18490014801894747 / 50000000000000000 : ℚ)
  supportSlope := (-15593918524556063 / 10000000000000000 : ℚ)
  oldCenter := (18490014801894747 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1327
  oldLo := (7390000000000001 / 20000000000000000 : ℚ)
  oldHi := (7400000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_905]
}

noncomputable def cell_11117 : Cell := { cellDefaults with
  domain := ⟨(1127 / 2000 : ℚ), (112725000000000003 / 200000000000000000 : ℚ)⟩
  r := (7219845874849 / 12500000000000 : ℚ)
  w := (3544362110051 / 2500000000000 : ℚ)
  center := (225425000000000003 / 400000000000000000 : ℚ)
  supportValue := (3700265265176713 / 10000000000000000 : ℚ)
  supportSlope := (-7798305229344169 / 5000000000000000 : ℚ)
  oldCenter := (3700265265176713 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1328
  oldLo := (7390000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_905, piece_906]
}

noncomputable def cell_11118 : Cell := { cellDefaults with
  domain := ⟨(112725000000000003 / 200000000000000000 : ℚ), (56375000000000003 / 100000000000000000 : ℚ)⟩
  r := (7219845874849 / 12500000000000 : ℚ)
  w := (3544362110051 / 2500000000000 : ℚ)
  center := (225475000000000009 / 400000000000000000 : ℚ)
  supportValue := (924578317591567 / 2500000000000000 : ℚ)
  supportSlope := (-1948559464227439 / 1250000000000000 : ℚ)
  oldCenter := (924578317591567 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1328
  oldLo := (7390000000000001 / 20000000000000000 : ℚ)
  oldHi := (7400000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_905]
}

noncomputable def cell_11119 : Cell := { cellDefaults with
  domain := ⟨(56375000000000003 / 100000000000000000 : ℚ), (112775000000000009 / 200000000000000000 : ℚ)⟩
  r := (7219845874849 / 12500000000000 : ℚ)
  w := (3544362110051 / 2500000000000 : ℚ)
  center := (45105000000000003 / 80000000000000000 : ℚ)
  supportValue := (7392731598510559 / 20000000000000000 : ℚ)
  supportSlope := (-15571068657551999 / 10000000000000000 : ℚ)
  oldCenter := (7392731598510559 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1328
  oldLo := (7390000000000001 / 20000000000000000 : ℚ)
  oldHi := (7400000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_905]
}

noncomputable def cell_11120 : Cell := { cellDefaults with
  domain := ⟨(112775000000000009 / 200000000000000000 : ℚ), (28200000000000003 / 50000000000000000 : ℚ)⟩
  r := (7219845874849 / 12500000000000 : ℚ)
  w := (3544362110051 / 2500000000000 : ℚ)
  center := (225575000000000021 / 400000000000000000 : ℚ)
  supportValue := (36944225376101547 / 100000000000000000 : ℚ)
  supportSlope := (-486419759946563 / 312500000000000 : ℚ)
  oldCenter := (36944225376101547 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1328
  oldLo := (7380000000000001 / 20000000000000000 : ℚ)
  oldHi := (7400000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_903, piece_904, piece_905]
}

noncomputable def cell_11121 : Cell := { cellDefaults with
  domain := ⟨(28200000000000003 / 50000000000000000 : ℚ), (112825000000000009 / 200000000000000000 : ℚ)⟩
  r := (28864453547727 / 50000000000000 : ℚ)
  w := (3543518684171 / 2500000000000 : ℚ)
  center := (225625000000000021 / 400000000000000000 : ℚ)
  supportValue := (18482662671282313 / 50000000000000000 : ℚ)
  supportSlope := (-15564354075074593 / 10000000000000000 : ℚ)
  oldCenter := (18482662671282313 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1329
  oldLo := (7390000000000001 / 20000000000000000 : ℚ)
  oldHi := (7400000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_905]
}

noncomputable def cell_11122 : Cell := { cellDefaults with
  domain := ⟨(112825000000000009 / 200000000000000000 : ℚ), (56425000000000003 / 100000000000000000 : ℚ)⟩
  r := (28864453547727 / 50000000000000 : ℚ)
  w := (3543518684171 / 2500000000000 : ℚ)
  center := (45135000000000003 / 80000000000000000 : ℚ)
  supportValue := (738918053868313 / 2000000000000000 : ℚ)
  supportSlope := (-15557468889746051 / 10000000000000000 : ℚ)
  oldCenter := (738918053868313 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1329
  oldLo := (7380000000000001 / 20000000000000000 : ℚ)
  oldHi := (7400000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_903, piece_904, piece_905]
}

noncomputable def cell_11123 : Cell := { cellDefaults with
  domain := ⟨(56425000000000003 / 100000000000000000 : ℚ), (112875000000000003 / 200000000000000000 : ℚ)⟩
  r := (28864453547727 / 50000000000000 : ℚ)
  w := (3543518684171 / 2500000000000 : ℚ)
  center := (225725000000000009 / 400000000000000000 : ℚ)
  supportValue := (7385287117707957 / 20000000000000000 : ℚ)
  supportSlope := (-310885817491739 / 200000000000000 : ℚ)
  oldCenter := (7385287117707957 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1329
  oldLo := (7380000000000001 / 20000000000000000 : ℚ)
  oldHi := (1847486033519553 / 5000000000000000 : ℚ)
  oldPieces := [piece_903]
}

noncomputable def cell_11124 : Cell := { cellDefaults with
  domain := ⟨(112875000000000003 / 200000000000000000 : ℚ), (1129 / 2000 : ℚ)⟩
  r := (28864453547727 / 50000000000000 : ℚ)
  w := (3543518684171 / 2500000000000 : ℚ)
  center := (225775000000000003 / 400000000000000000 : ℚ)
  supportValue := (18453520953713723 / 50000000000000000 : ℚ)
  supportSlope := (-3882248085927319 / 2500000000000000 : ℚ)
  oldCenter := (18453520953713723 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1329
  oldLo := (7370000000000001 / 20000000000000000 : ℚ)
  oldHi := (1847486033519553 / 5000000000000000 : ℚ)
  oldPieces := [piece_902, piece_903]
}

noncomputable def cell_11125 : Cell := { cellDefaults with
  domain := ⟨(1129 / 2000 : ℚ), (112925000000000003 / 200000000000000000 : ℚ)⟩
  r := (28849541034563 / 50000000000000 : ℚ)
  w := (2834141781 / 2000000000 : ℚ)
  center := (225825000000000003 / 400000000000000000 : ℚ)
  supportValue := (29542477189703 / 80000000000000 : ℚ)
  supportSlope := (-7768797177866339 / 5000000000000000 : ℚ)
  oldCenter := (29542477189703 / 80000000000000 : ℚ)
  newCoefficients := coefficients_1330
  oldLo := (7380000000000001 / 20000000000000000 : ℚ)
  oldHi := (1847486033519553 / 5000000000000000 : ℚ)
  oldPieces := [piece_903]
}

noncomputable def cell_11126 : Cell := { cellDefaults with
  domain := ⟨(112925000000000003 / 200000000000000000 : ℚ), (56475000000000003 / 100000000000000000 : ℚ)⟩
  r := (28849541034563 / 50000000000000 : ℚ)
  w := (2834141781 / 2000000000 : ℚ)
  center := (225875000000000009 / 400000000000000000 : ℚ)
  supportValue := (3690871116929739 / 10000000000000000 : ℚ)
  supportSlope := (-7760518496943327 / 5000000000000000 : ℚ)
  oldCenter := (3690871116929739 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1330
  oldLo := (7370000000000001 / 20000000000000000 : ℚ)
  oldHi := (1847486033519553 / 5000000000000000 : ℚ)
  oldPieces := [piece_902, piece_903]
}

noncomputable def cell_11127 : Cell := { cellDefaults with
  domain := ⟨(56475000000000003 / 100000000000000000 : ℚ), (112975000000000009 / 200000000000000000 : ℚ)⟩
  r := (28849541034563 / 50000000000000 : ℚ)
  w := (2834141781 / 2000000000 : ℚ)
  center := (45185000000000003 / 80000000000000000 : ℚ)
  supportValue := (737785712832553 / 2000000000000000 : ℚ)
  supportSlope := (-15517659595108229 / 10000000000000000 : ℚ)
  oldCenter := (737785712832553 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1330
  oldLo := (7370000000000001 / 20000000000000000 : ℚ)
  oldHi := (7380000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_902]
}

noncomputable def cell_11128 : Cell := { cellDefaults with
  domain := ⟨(112975000000000009 / 200000000000000000 : ℚ), (28250000000000003 / 50000000000000000 : ℚ)⟩
  r := (28849541034563 / 50000000000000 : ℚ)
  w := (2834141781 / 2000000000 : ℚ)
  center := (225975000000000021 / 400000000000000000 : ℚ)
  supportValue := (3686989942171419 / 10000000000000000 : ℚ)
  supportSlope := (-387507473317459 / 250000000000000 : ℚ)
  oldCenter := (3686989942171419 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1330
  oldLo := (7370000000000001 / 20000000000000000 : ℚ)
  oldHi := (7380000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_902]
}

noncomputable def cell_11129 : Cell := { cellDefaults with
  domain := ⟨(28250000000000003 / 50000000000000000 : ℚ), (113025000000000009 / 200000000000000000 : ℚ)⟩
  r := (28834645026683 / 50000000000000 : ℚ)
  w := (14167346816719 / 10000000000000 : ℚ)
  center := (226025000000000021 / 400000000000000000 : ℚ)
  supportValue := (18445488954752773 / 50000000000000000 : ℚ)
  supportSlope := (-24235164187303 / 15625000000000 : ℚ)
  oldCenter := (18445488954752773 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1331
  oldLo := (7370000000000001 / 20000000000000000 : ℚ)
  oldHi := (1847486033519553 / 5000000000000000 : ℚ)
  oldPieces := [piece_902, piece_903]
}

noncomputable def cell_11130 : Cell := { cellDefaults with
  domain := ⟨(113025000000000009 / 200000000000000000 : ℚ), (56525000000000003 / 100000000000000000 : ℚ)⟩
  r := (28834645026683 / 50000000000000 : ℚ)
  w := (14167346816719 / 10000000000000 : ℚ)
  center := (45215000000000003 / 80000000000000000 : ℚ)
  supportValue := (460894677425083 / 1250000000000000 : ℚ)
  supportSlope := (-1936705408142291 / 1250000000000000 : ℚ)
  oldCenter := (460894677425083 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1331
  oldLo := (7370000000000001 / 20000000000000000 : ℚ)
  oldHi := (7380000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_902]
}

noncomputable def cell_11131 : Cell := { cellDefaults with
  domain := ⟨(56525000000000003 / 100000000000000000 : ℚ), (113075000000000003 / 200000000000000000 : ℚ)⟩
  r := (28834645026683 / 50000000000000 : ℚ)
  w := (14167346816719 / 10000000000000 : ℚ)
  center := (226125000000000009 / 400000000000000000 : ℚ)
  supportValue := (3685224374272607 / 10000000000000000 : ℚ)
  supportSlope := (-774103164918309 / 500000000000000 : ℚ)
  oldCenter := (3685224374272607 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1331
  oldLo := (7360000000000001 / 20000000000000000 : ℚ)
  oldHi := (7380000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_901, piece_902]
}

noncomputable def cell_11132 : Cell := { cellDefaults with
  domain := ⟨(113075000000000003 / 200000000000000000 : ℚ), (1131 / 2000 : ℚ)⟩
  r := (28834645026683 / 50000000000000 : ℚ)
  w := (14167346816719 / 10000000000000 : ℚ)
  center := (226175000000000003 / 400000000000000000 : ℚ)
  supportValue := (3683286694040399 / 10000000000000000 : ℚ)
  supportSlope := (-15473809689307751 / 10000000000000000 : ℚ)
  oldCenter := (3683286694040399 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1331
  oldLo := (7360000000000001 / 20000000000000000 : ℚ)
  oldHi := (7370000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_901]
}

noncomputable def cell_11133 : Cell := { cellDefaults with
  domain := ⟨(1131 / 2000 : ℚ), (113125000000000003 / 200000000000000000 : ℚ)⟩
  r := (28819767180957 / 50000000000000 : ℚ)
  w := (14163994042209 / 10000000000000 : ℚ)
  center := (226225000000000003 / 400000000000000000 : ℚ)
  supportValue := (3685389690178453 / 10000000000000000 : ℚ)
  supportSlope := (-967133650984659 / 625000000000000 : ℚ)
  oldCenter := (3685389690178453 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1332
  oldLo := (7360000000000001 / 20000000000000000 : ℚ)
  oldHi := (7380000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_901, piece_902]
}

noncomputable def cell_11134 : Cell := { cellDefaults with
  domain := ⟨(113125000000000003 / 200000000000000000 : ℚ), (56575000000000003 / 100000000000000000 : ℚ)⟩
  r := (28819767180957 / 50000000000000 : ℚ)
  w := (14163994042209 / 10000000000000 : ℚ)
  center := (226275000000000009 / 400000000000000000 : ℚ)
  supportValue := (4604316249042003 / 12500000000000000 : ℚ)
  supportSlope := (-3866792215858153 / 2500000000000000 : ℚ)
  oldCenter := (4604316249042003 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1332
  oldLo := (7360000000000001 / 20000000000000000 : ℚ)
  oldHi := (7370000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_901]
}

noncomputable def cell_11135 : Cell := { cellDefaults with
  domain := ⟨(56575000000000003 / 100000000000000000 : ℚ), (113175000000000009 / 200000000000000000 : ℚ)⟩
  r := (28819767180957 / 50000000000000 : ℚ)
  w := (14163994042209 / 10000000000000 : ℚ)
  center := (45265000000000003 / 80000000000000000 : ℚ)
  supportValue := (460190085600987 / 1250000000000000 : ℚ)
  supportSlope := (-3862467152306407 / 2500000000000000 : ℚ)
  oldCenter := (460190085600987 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1332
  oldLo := (7360000000000001 / 20000000000000000 : ℚ)
  oldHi := (7370000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_901]
}

noncomputable def cell_11136 : Cell := { cellDefaults with
  domain := ⟨(113175000000000009 / 200000000000000000 : ℚ), (28300000000000003 / 50000000000000000 : ℚ)⟩
  r := (28819767180957 / 50000000000000 : ℚ)
  w := (14163994042209 / 10000000000000 : ℚ)
  center := (226375000000000021 / 400000000000000000 : ℚ)
  supportValue := (3679592709957741 / 10000000000000000 : ℚ)
  supportSlope := (-15443182725023799 / 10000000000000000 : ℚ)
  oldCenter := (3679592709957741 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1332
  oldLo := (7350000000000001 / 20000000000000000 : ℚ)
  oldHi := (7370000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_900, piece_901]
}

noncomputable def cell_11137 : Cell := { cellDefaults with
  domain := ⟨(28300000000000003 / 50000000000000000 : ℚ), (113225000000000009 / 200000000000000000 : ℚ)⟩
  r := (28804907210561 / 50000000000000 : ℚ)
  w := (14160650680869 / 10000000000000 : ℚ)
  center := (226425000000000021 / 400000000000000000 : ℚ)
  supportValue := (3681684859894689 / 10000000000000000 : ℚ)
  supportSlope := (-772161170173739 / 500000000000000 : ℚ)
  oldCenter := (3681684859894689 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1333
  oldLo := (7360000000000001 / 20000000000000000 : ℚ)
  oldHi := (7370000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_901]
}

noncomputable def cell_11138 : Cell := { cellDefaults with
  domain := ⟨(113225000000000009 / 200000000000000000 : ℚ), (56625000000000003 / 100000000000000000 : ℚ)⟩
  r := (28804907210561 / 50000000000000 : ℚ)
  w := (14160650680869 / 10000000000000 : ℚ)
  center := (45295000000000003 / 80000000000000000 : ℚ)
  supportValue := (9199394683748821 / 25000000000000000 : ℚ)
  supportSlope := (-7717642491727831 / 5000000000000000 : ℚ)
  oldCenter := (9199394683748821 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1333
  oldLo := (7350000000000001 / 20000000000000000 : ℚ)
  oldHi := (7370000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_900, piece_901]
}

noncomputable def cell_11139 : Cell := { cellDefaults with
  domain := ⟨(56625000000000003 / 100000000000000000 : ℚ), (113275000000000003 / 200000000000000000 : ℚ)⟩
  r := (28804907210561 / 50000000000000 : ℚ)
  w := (14160650680869 / 10000000000000 : ℚ)
  center := (226525000000000009 / 400000000000000000 : ℚ)
  supportValue := (7355652552222779 / 20000000000000000 : ℚ)
  supportSlope := (-616940993082767 / 400000000000000 : ℚ)
  oldCenter := (7355652552222779 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1333
  oldLo := (7350000000000001 / 20000000000000000 : ℚ)
  oldHi := (7360000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_900]
}

noncomputable def cell_11140 : Cell := { cellDefaults with
  domain := ⟨(113275000000000003 / 200000000000000000 : ℚ), (1133 / 2000 : ℚ)⟩
  r := (28804907210561 / 50000000000000 : ℚ)
  w := (14160650680869 / 10000000000000 : ℚ)
  center := (226575000000000003 / 400000000000000000 : ℚ)
  supportValue := (3675901986445011 / 10000000000000000 : ℚ)
  supportSlope := (-3851696019268509 / 2500000000000000 : ℚ)
  oldCenter := (3675901986445011 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1333
  oldLo := (7340000000000001 / 20000000000000000 : ℚ)
  oldHi := (7360000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_899, piece_900]
}

noncomputable def cell_11141 : Cell := { cellDefaults with
  domain := ⟨(1133 / 2000 : ℚ), (113325000000000003 / 200000000000000000 : ℚ)⟩
  r := (28790064573473 / 50000000000000 : ℚ)
  w := (14157313644539 / 10000000000000 : ℚ)
  center := (226625000000000003 / 400000000000000000 : ℚ)
  supportValue := (18389950849063527 / 50000000000000000 : ℚ)
  supportSlope := (-3083379917279657 / 2000000000000000 : ℚ)
  oldCenter := (18389950849063527 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1334
  oldLo := (7350000000000001 / 20000000000000000 : ℚ)
  oldHi := (7360000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_900]
}

noncomputable def cell_11142 : Cell := { cellDefaults with
  domain := ⟨(113325000000000003 / 200000000000000000 : ℚ), (56675000000000003 / 100000000000000000 : ℚ)⟩
  r := (28790064573473 / 50000000000000 : ℚ)
  w := (14157313644539 / 10000000000000 : ℚ)
  center := (226675000000000009 / 400000000000000000 : ℚ)
  supportValue := (3676064134327427 / 10000000000000000 : ℚ)
  supportSlope := (-1539967480233699 / 1000000000000000 : ℚ)
  oldCenter := (3676064134327427 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1334
  oldLo := (7350000000000001 / 20000000000000000 : ℚ)
  oldHi := (7360000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_900]
}

noncomputable def cell_11143 : Cell := { cellDefaults with
  domain := ⟨(56675000000000003 / 100000000000000000 : ℚ), (113375000000000009 / 200000000000000000 : ℚ)⟩
  r := (28790064573473 / 50000000000000 : ℚ)
  w := (14157313644539 / 10000000000000 : ℚ)
  center := (45345000000000003 / 80000000000000000 : ℚ)
  supportValue := (918535497253121 / 2500000000000000 : ℚ)
  supportSlope := (-7698274340545339 / 5000000000000000 : ℚ)
  oldCenter := (918535497253121 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1334
  oldLo := (7340000000000001 / 20000000000000000 : ℚ)
  oldHi := (7360000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_899, piece_900]
}

noncomputable def cell_11144 : Cell := { cellDefaults with
  domain := ⟨(113375000000000009 / 200000000000000000 : ℚ), (28350000000000003 / 50000000000000000 : ℚ)⟩
  r := (28790064573473 / 50000000000000 : ℚ)
  w := (14157313644539 / 10000000000000 : ℚ)
  center := (226775000000000021 / 400000000000000000 : ℚ)
  supportValue := (3672215829723019 / 10000000000000000 : ℚ)
  supportSlope := (-7690038023214961 / 5000000000000000 : ℚ)
  oldCenter := (3672215829723019 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1334
  oldLo := (7340000000000001 / 20000000000000000 : ℚ)
  oldHi := (7350000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_899]
}

noncomputable def cell_11145 : Cell := { cellDefaults with
  domain := ⟨(28350000000000003 / 50000000000000000 : ℚ), (113425000000000009 / 200000000000000000 : ℚ)⟩
  r := (28775238499073 / 50000000000000 : ℚ)
  w := (3538495337257 / 2500000000000 : ℚ)
  center := (226825000000000021 / 400000000000000000 : ℚ)
  supportValue := (3674306143344467 / 10000000000000000 : ℚ)
  supportSlope := (-615547261991341 / 400000000000000 : ℚ)
  oldCenter := (3674306143344467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1335
  oldLo := (7340000000000001 / 20000000000000000 : ℚ)
  oldHi := (7360000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_899, piece_900]
}

noncomputable def cell_11146 : Cell := { cellDefaults with
  domain := ⟨(113425000000000009 / 200000000000000000 : ℚ), (56725000000000003 / 100000000000000000 : ℚ)⟩
  r := (28775238499073 / 50000000000000 : ℚ)
  w := (3538495337257 / 2500000000000 : ℚ)
  center := (45375000000000003 / 80000000000000000 : ℚ)
  supportValue := (459047601016821 / 1250000000000000 : ℚ)
  supportSlope := (-15373489220353487 / 10000000000000000 : ℚ)
  oldCenter := (459047601016821 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1335
  oldLo := (7340000000000001 / 20000000000000000 : ℚ)
  oldHi := (7350000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_899]
}

noncomputable def cell_11147 : Cell := { cellDefaults with
  domain := ⟨(56725000000000003 / 100000000000000000 : ℚ), (113475000000000003 / 200000000000000000 : ℚ)⟩
  r := (28775238499073 / 50000000000000 : ℚ)
  w := (3538495337257 / 2500000000000 : ℚ)
  center := (226925000000000009 / 400000000000000000 : ℚ)
  supportValue := (1468185106083691 / 4000000000000000 : ℚ)
  supportSlope := (-1920025405854017 / 1250000000000000 : ℚ)
  oldCenter := (1468185106083691 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1335
  oldLo := (7330000000000001 / 20000000000000000 : ℚ)
  oldHi := (7350000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_898, piece_899]
}

noncomputable def cell_11148 : Cell := { cellDefaults with
  domain := ⟨(113475000000000003 / 200000000000000000 : ℚ), (227 / 400 : ℚ)⟩
  r := (28775238499073 / 50000000000000 : ℚ)
  w := (3538495337257 / 2500000000000 : ℚ)
  center := (226975000000000003 / 400000000000000000 : ℚ)
  supportValue := (36685403119071597 / 100000000000000000 : ℚ)
  supportSlope := (-1535401849792357 / 1000000000000000 : ℚ)
  oldCenter := (36685403119071597 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1335
  oldLo := (7330000000000001 / 20000000000000000 : ℚ)
  oldHi := (7340000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_898]
}

noncomputable def cell_11149 : Cell := { cellDefaults with
  domain := ⟨(227 / 400 : ℚ), (113525000000000003 / 200000000000000000 : ℚ)⟩
  r := (57520860877543 / 100000000000000 : ℚ)
  w := (14150658636593 / 10000000000000 : ℚ)
  center := (227025000000000003 / 400000000000000000 : ℚ)
  supportValue := (3670625524987047 / 10000000000000000 : ℚ)
  supportSlope := (-3070468783453593 / 2000000000000000 : ℚ)
  oldCenter := (3670625524987047 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1336
  oldLo := (7330000000000001 / 20000000000000000 : ℚ)
  oldHi := (7350000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_898, piece_899]
}

theorem check_11100 : cell_11100.check = true := by
  decide +kernel

theorem check_11101 : cell_11101.check = true := by
  decide +kernel

theorem check_11102 : cell_11102.check = true := by
  decide +kernel

theorem check_11103 : cell_11103.check = true := by
  decide +kernel

theorem check_11104 : cell_11104.check = true := by
  decide +kernel

theorem check_11105 : cell_11105.check = true := by
  decide +kernel

theorem check_11106 : cell_11106.check = true := by
  decide +kernel

theorem check_11107 : cell_11107.check = true := by
  decide +kernel

theorem check_11108 : cell_11108.check = true := by
  decide +kernel

theorem check_11109 : cell_11109.check = true := by
  decide +kernel

theorem check_11110 : cell_11110.check = true := by
  decide +kernel

theorem check_11111 : cell_11111.check = true := by
  decide +kernel

theorem check_11112 : cell_11112.check = true := by
  decide +kernel

theorem check_11113 : cell_11113.check = true := by
  decide +kernel

theorem check_11114 : cell_11114.check = true := by
  decide +kernel

theorem check_11115 : cell_11115.check = true := by
  decide +kernel

theorem check_11116 : cell_11116.check = true := by
  decide +kernel

theorem check_11117 : cell_11117.check = true := by
  decide +kernel

theorem check_11118 : cell_11118.check = true := by
  decide +kernel

theorem check_11119 : cell_11119.check = true := by
  decide +kernel

theorem check_11120 : cell_11120.check = true := by
  decide +kernel

theorem check_11121 : cell_11121.check = true := by
  decide +kernel

theorem check_11122 : cell_11122.check = true := by
  decide +kernel

theorem check_11123 : cell_11123.check = true := by
  decide +kernel

theorem check_11124 : cell_11124.check = true := by
  decide +kernel

theorem check_11125 : cell_11125.check = true := by
  decide +kernel

theorem check_11126 : cell_11126.check = true := by
  decide +kernel

theorem check_11127 : cell_11127.check = true := by
  decide +kernel

theorem check_11128 : cell_11128.check = true := by
  decide +kernel

theorem check_11129 : cell_11129.check = true := by
  decide +kernel

theorem check_11130 : cell_11130.check = true := by
  decide +kernel

theorem check_11131 : cell_11131.check = true := by
  decide +kernel

theorem check_11132 : cell_11132.check = true := by
  decide +kernel

theorem check_11133 : cell_11133.check = true := by
  decide +kernel

theorem check_11134 : cell_11134.check = true := by
  decide +kernel

theorem check_11135 : cell_11135.check = true := by
  decide +kernel

theorem check_11136 : cell_11136.check = true := by
  decide +kernel

theorem check_11137 : cell_11137.check = true := by
  decide +kernel

theorem check_11138 : cell_11138.check = true := by
  decide +kernel

theorem check_11139 : cell_11139.check = true := by
  decide +kernel

theorem check_11140 : cell_11140.check = true := by
  decide +kernel

theorem check_11141 : cell_11141.check = true := by
  decide +kernel

theorem check_11142 : cell_11142.check = true := by
  decide +kernel

theorem check_11143 : cell_11143.check = true := by
  decide +kernel

theorem check_11144 : cell_11144.check = true := by
  decide +kernel

theorem check_11145 : cell_11145.check = true := by
  decide +kernel

theorem check_11146 : cell_11146.check = true := by
  decide +kernel

theorem check_11147 : cell_11147.check = true := by
  decide +kernel

theorem check_11148 : cell_11148.check = true := by
  decide +kernel

theorem check_11149 : cell_11149.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11100, cell_11101, cell_11102, cell_11103, cell_11104, cell_11105, cell_11106, cell_11107, cell_11108, cell_11109, cell_11110, cell_11111, cell_11112, cell_11113, cell_11114, cell_11115, cell_11116, cell_11117, cell_11118, cell_11119, cell_11120, cell_11121, cell_11122, cell_11123, cell_11124, cell_11125, cell_11126, cell_11127, cell_11128, cell_11129, cell_11130, cell_11131, cell_11132, cell_11133, cell_11134, cell_11135, cell_11136, cell_11137, cell_11138, cell_11139, cell_11140, cell_11141, cell_11142, cell_11143, cell_11144, cell_11145, cell_11146, cell_11147, cell_11148, cell_11149]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11100, check_11101, check_11102, check_11103, check_11104, check_11105, check_11106, check_11107, check_11108, check_11109, check_11110, check_11111, check_11112, check_11113, check_11114, check_11115, check_11116, check_11117, check_11118, check_11119, check_11120, check_11121, check_11122, check_11123, check_11124, check_11125, check_11126, check_11127, check_11128, check_11129, check_11130, check_11131, check_11132, check_11133, check_11134, check_11135, check_11136, check_11137, check_11138, check_11139, check_11140, check_11141, check_11142, check_11143, check_11144, check_11145, check_11146, check_11147, check_11148, check_11149, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0222

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0222
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0222
open AnalyticBounds.ExpressionCertificate

theorem linked_11100 : Linked cell_11100 pieces := by
  link_source cell_11100 with piece_1323 using piece_1323_mem, ⟨piece_908_mem, piece_909_mem⟩

theorem linked_11101 : Linked cell_11101 pieces := by
  link_source cell_11101 with piece_1323 using piece_1323_mem, piece_908_mem

theorem linked_11102 : Linked cell_11102 pieces := by
  link_source cell_11102 with piece_1323 using piece_1323_mem, piece_908_mem

theorem linked_11103 : Linked cell_11103 pieces := by
  link_source cell_11103 with piece_1323 using piece_1323_mem, ⟨piece_907_mem, piece_908_mem⟩

theorem linked_11104 : Linked cell_11104 pieces := by
  link_source cell_11104 with piece_1324 using piece_1324_mem, piece_908_mem

theorem linked_11105 : Linked cell_11105 pieces := by
  link_source cell_11105 with piece_1324 using piece_1324_mem, ⟨piece_907_mem, piece_908_mem⟩

theorem linked_11106 : Linked cell_11106 pieces := by
  link_source cell_11106 with piece_1324 using piece_1324_mem, piece_907_mem

theorem linked_11107 : Linked cell_11107 pieces := by
  link_source cell_11107 with piece_1324 using piece_1324_mem, ⟨piece_906_mem, piece_907_mem⟩

theorem linked_11108 : Linked cell_11108 pieces := by
  link_source cell_11108 with piece_1325 using piece_1325_mem, piece_907_mem

theorem linked_11109 : Linked cell_11109 pieces := by
  link_source cell_11109 with piece_1325 using piece_1325_mem, ⟨piece_906_mem, piece_907_mem⟩

theorem linked_11110 : Linked cell_11110 pieces := by
  link_source cell_11110 with piece_1325 using piece_1325_mem, piece_906_mem

theorem linked_11111 : Linked cell_11111 pieces := by
  link_source cell_11111 with piece_1325 using piece_1325_mem, piece_906_mem

theorem linked_11112 : Linked cell_11112 pieces := by
  link_source cell_11112 with piece_1326 using piece_1326_mem, piece_906_mem

theorem linked_11113 : Linked cell_11113 pieces := by
  link_source cell_11113 with piece_1327 using piece_1327_mem, piece_906_mem

theorem linked_11114 : Linked cell_11114 pieces := by
  link_source cell_11114 with piece_1327 using piece_1327_mem, piece_906_mem

theorem linked_11115 : Linked cell_11115 pieces := by
  link_source cell_11115 with piece_1327 using piece_1327_mem, ⟨piece_905_mem, piece_906_mem⟩

theorem linked_11116 : Linked cell_11116 pieces := by
  link_source cell_11116 with piece_1327 using piece_1327_mem, piece_905_mem

theorem linked_11117 : Linked cell_11117 pieces := by
  link_source cell_11117 with piece_1328 using piece_1328_mem, ⟨piece_905_mem, piece_906_mem⟩

theorem linked_11118 : Linked cell_11118 pieces := by
  link_source cell_11118 with piece_1328 using piece_1328_mem, piece_905_mem

theorem linked_11119 : Linked cell_11119 pieces := by
  link_source cell_11119 with piece_1328 using piece_1328_mem, piece_905_mem

theorem linked_11120 : Linked cell_11120 pieces := by
  link_source cell_11120 with piece_1328 using piece_1328_mem, ⟨piece_903_mem, ⟨piece_904_mem, piece_905_mem⟩⟩

theorem linked_11121 : Linked cell_11121 pieces := by
  link_source cell_11121 with piece_1329 using piece_1329_mem, piece_905_mem

theorem linked_11122 : Linked cell_11122 pieces := by
  link_source cell_11122 with piece_1329 using piece_1329_mem, ⟨piece_903_mem, ⟨piece_904_mem, piece_905_mem⟩⟩

theorem linked_11123 : Linked cell_11123 pieces := by
  link_source cell_11123 with piece_1329 using piece_1329_mem, piece_903_mem

theorem linked_11124 : Linked cell_11124 pieces := by
  link_source cell_11124 with piece_1329 using piece_1329_mem, ⟨piece_902_mem, piece_903_mem⟩

theorem linked_11125 : Linked cell_11125 pieces := by
  link_source cell_11125 with piece_1330 using piece_1330_mem, piece_903_mem

theorem linked_11126 : Linked cell_11126 pieces := by
  link_source cell_11126 with piece_1330 using piece_1330_mem, ⟨piece_902_mem, piece_903_mem⟩

theorem linked_11127 : Linked cell_11127 pieces := by
  link_source cell_11127 with piece_1330 using piece_1330_mem, piece_902_mem

theorem linked_11128 : Linked cell_11128 pieces := by
  link_source cell_11128 with piece_1330 using piece_1330_mem, piece_902_mem

theorem linked_11129 : Linked cell_11129 pieces := by
  link_source cell_11129 with piece_1331 using piece_1331_mem, ⟨piece_902_mem, piece_903_mem⟩

theorem linked_11130 : Linked cell_11130 pieces := by
  link_source cell_11130 with piece_1331 using piece_1331_mem, piece_902_mem

theorem linked_11131 : Linked cell_11131 pieces := by
  link_source cell_11131 with piece_1331 using piece_1331_mem, ⟨piece_901_mem, piece_902_mem⟩

theorem linked_11132 : Linked cell_11132 pieces := by
  link_source cell_11132 with piece_1331 using piece_1331_mem, piece_901_mem

theorem linked_11133 : Linked cell_11133 pieces := by
  link_source cell_11133 with piece_1332 using piece_1332_mem, ⟨piece_901_mem, piece_902_mem⟩

theorem linked_11134 : Linked cell_11134 pieces := by
  link_source cell_11134 with piece_1332 using piece_1332_mem, piece_901_mem

theorem linked_11135 : Linked cell_11135 pieces := by
  link_source cell_11135 with piece_1332 using piece_1332_mem, piece_901_mem

theorem linked_11136 : Linked cell_11136 pieces := by
  link_source cell_11136 with piece_1332 using piece_1332_mem, ⟨piece_900_mem, piece_901_mem⟩

theorem linked_11137 : Linked cell_11137 pieces := by
  link_source cell_11137 with piece_1333 using piece_1333_mem, piece_901_mem

theorem linked_11138 : Linked cell_11138 pieces := by
  link_source cell_11138 with piece_1333 using piece_1333_mem, ⟨piece_900_mem, piece_901_mem⟩

theorem linked_11139 : Linked cell_11139 pieces := by
  link_source cell_11139 with piece_1333 using piece_1333_mem, piece_900_mem

theorem linked_11140 : Linked cell_11140 pieces := by
  link_source cell_11140 with piece_1333 using piece_1333_mem, ⟨piece_899_mem, piece_900_mem⟩

theorem linked_11141 : Linked cell_11141 pieces := by
  link_source cell_11141 with piece_1334 using piece_1334_mem, piece_900_mem

theorem linked_11142 : Linked cell_11142 pieces := by
  link_source cell_11142 with piece_1334 using piece_1334_mem, piece_900_mem

theorem linked_11143 : Linked cell_11143 pieces := by
  link_source cell_11143 with piece_1334 using piece_1334_mem, ⟨piece_899_mem, piece_900_mem⟩

theorem linked_11144 : Linked cell_11144 pieces := by
  link_source cell_11144 with piece_1334 using piece_1334_mem, piece_899_mem

theorem linked_11145 : Linked cell_11145 pieces := by
  link_source cell_11145 with piece_1335 using piece_1335_mem, ⟨piece_899_mem, piece_900_mem⟩

theorem linked_11146 : Linked cell_11146 pieces := by
  link_source cell_11146 with piece_1335 using piece_1335_mem, piece_899_mem

theorem linked_11147 : Linked cell_11147 pieces := by
  link_source cell_11147 with piece_1335 using piece_1335_mem, ⟨piece_898_mem, piece_899_mem⟩

theorem linked_11148 : Linked cell_11148 pieces := by
  link_source cell_11148 with piece_1335 using piece_1335_mem, piece_898_mem

theorem linked_11149 : Linked cell_11149 pieces := by
  link_source cell_11149 with piece_1336 using piece_1336_mem, ⟨piece_898_mem, piece_899_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0222.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0222.cells,List.forall_mem_cons]
  exact ⟨linked_11100, linked_11101, linked_11102, linked_11103, linked_11104, linked_11105, linked_11106, linked_11107, linked_11108, linked_11109, linked_11110, linked_11111, linked_11112, linked_11113, linked_11114, linked_11115, linked_11116, linked_11117, linked_11118, linked_11119, linked_11120, linked_11121, linked_11122, linked_11123, linked_11124, linked_11125, linked_11126, linked_11127, linked_11128, linked_11129, linked_11130, linked_11131, linked_11132, linked_11133, linked_11134, linked_11135, linked_11136, linked_11137, linked_11138, linked_11139, linked_11140, linked_11141, linked_11142, linked_11143, linked_11144, linked_11145, linked_11146, linked_11147, linked_11148, linked_11149, by simp⟩

theorem covered : covers (1123 / 2000 : ℚ) (113525000000000003 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0222.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0222
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0223
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(113525000000000003 / 200000000000000000 : ℚ), (56775000000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (2298469332269 / 4000000000000 : ℚ)
  w := (14144036949999 / 10000000000000 : ℚ)
  center := (227075000000000009 / 400000000000000000 : ℚ)
  supportValue := (9171760132029419 / 25000000000000000 : ℚ)
  supportSlope := (-15347445351874647 / 10000000000000000 : ℚ)
  oldCenter := (9171760132029419 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1337
  oldLo := (7320000000000001 / 20000000000000000 : ℚ)
  oldHi := (7330000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_897]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11150 : Cell := { cellDefaults with
  r := (57520860877543 / 100000000000000 : ℚ)
  w := (14150658636593 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1336
  oldLo := (7330000000000001 / 20000000000000000 : ℚ)
  oldHi := (7340000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_898]
}

noncomputable def cell_11151 : Cell := { cellDefaults with
  domain := ⟨(56775000000000003 / 100000000000000000 : ℚ), (113575000000000009 / 200000000000000000 : ℚ)⟩
  r := (57520860877543 / 100000000000000 : ℚ)
  w := (14150658636593 / 10000000000000 : ℚ)
  center := (45425000000000003 / 80000000000000000 : ℚ)
  supportValue := (36667866969530427 / 100000000000000000 : ℚ)
  supportSlope := (-1533025510297919 / 1000000000000000 : ℚ)
  oldCenter := (36667866969530427 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1336
  oldLo := (7330000000000001 / 20000000000000000 : ℚ)
  oldHi := (7340000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_898]
}

noncomputable def cell_11152 : Cell := { cellDefaults with
  domain := ⟨(113575000000000009 / 200000000000000000 : ℚ), (28400000000000003 / 50000000000000000 : ℚ)⟩
  r := (57520860877543 / 100000000000000 : ℚ)
  w := (14150658636593 / 10000000000000 : ℚ)
  center := (227175000000000021 / 400000000000000000 : ℚ)
  supportValue := (3664873924529859 / 10000000000000000 : ℚ)
  supportSlope := (-1915201285032967 / 1250000000000000 : ℚ)
  oldCenter := (3664873924529859 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1336
  oldHi := (7340000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_897, piece_898]
}

noncomputable def cell_11153 : Cell := { cellDefaults with
  domain := ⟨(28400000000000003 / 50000000000000000 : ℚ), (227250000000000019 / 400000000000000000 : ℚ)⟩
  r := (9198604771 / 16000000000 : ℚ)
  w := (884209009201 / 625000000000 : ℚ)
  center := (454450000000000043 / 800000000000000000 : ℚ)
  supportValue := (3666948645947411 / 10000000000000000 : ℚ)
  supportSlope := (-1532368006056981 / 1000000000000000 : ℚ)
  oldCenter := (3666948645947411 / 10000000000000000 : ℚ)
  oldLo := (7330000000000001 / 20000000000000000 : ℚ)
  oldHi := (7340000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_898]
}

noncomputable def cell_11154 : Cell := { cellDefaults with
  domain := ⟨(227250000000000019 / 400000000000000000 : ℚ), (113650000000000007 / 200000000000000000 : ℚ)⟩
  r := (9198604771 / 16000000000 : ℚ)
  w := (884209009201 / 625000000000 : ℚ)
  center := (454550000000000033 / 800000000000000000 : ℚ)
  supportValue := (36650368214728707 / 100000000000000000 : ℚ)
  supportSlope := (-7656888650312209 / 5000000000000000 : ℚ)
  oldCenter := (36650368214728707 / 100000000000000000 : ℚ)
  oldHi := (7340000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_897, piece_898]
}

noncomputable def cell_11155 : Cell := { cellDefaults with
  domain := ⟨(113650000000000007 / 200000000000000000 : ℚ), (227350000000000009 / 400000000000000000 : ℚ)⟩
  r := (9198604771 / 16000000000 : ℚ)
  w := (884209009201 / 625000000000 : ℚ)
  center := (454650000000000023 / 800000000000000000 : ℚ)
  supportValue := (2289450106788251 / 6250000000000000 : ℚ)
  supportSlope := (-239130337194467 / 156250000000000 : ℚ)
  oldCenter := (2289450106788251 / 6250000000000000 : ℚ)
  oldPieces := [piece_897]
}

noncomputable def cell_11156 : Cell := { cellDefaults with
  domain := ⟨(227350000000000009 / 400000000000000000 : ℚ), (56850000000000001 / 100000000000000000 : ℚ)⟩
  r := (9198604771 / 16000000000 : ℚ)
  w := (884209009201 / 625000000000 : ℚ)
  center := (454750000000000013 / 800000000000000000 : ℚ)
  supportValue := (3661208199858809 / 10000000000000000 : ℚ)
  supportSlope := (-955450073300097 / 625000000000000 : ℚ)
  oldCenter := (3661208199858809 / 10000000000000000 : ℚ)
  oldPieces := [piece_897]
}

noncomputable def cell_11157 : Cell := { cellDefaults with
  domain := ⟨(56850000000000001 / 100000000000000000 : ℚ), (355377094972067 / 625000000000000 : ℚ)⟩
  center := (113710335195530721 / 200000000000000000 : ℚ)
  supportValue := (2289654483424949 / 6250000000000000 : ℚ)
  supportSlope := (-239051103105717 / 156250000000000 : ℚ)
  oldCenter := (2289654483424949 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1338
  oldPieces := [piece_897]
}

noncomputable def cell_11158 : Cell := { cellDefaults with
  domain := ⟨(355377094972067 / 625000000000000 : ℚ), (113740502793296083 / 200000000000000000 : ℚ)⟩
  center := (227461173184357523 / 400000000000000000 : ℚ)
  supportValue := (1830949359218211 / 5000000000000000 : ℚ)
  supportSlope := (-152853875392067 / 100000000000000 : ℚ)
  oldCenter := (1830949359218211 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1339
  oldPieces := [piece_897]
}

noncomputable def cell_11159 : Cell := { cellDefaults with
  domain := ⟨(113740502793296083 / 200000000000000000 : ℚ), (56880167597765363 / 100000000000000000 : ℚ)⟩
  center := (227500837988826809 / 400000000000000000 : ℚ)
  supportValue := (915096555770609 / 2500000000000000 : ℚ)
  supportSlope := (-190944300561241 / 125000000000000 : ℚ)
  oldCenter := (915096555770609 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1339
  oldLo := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_896, piece_897]
}

noncomputable def cell_11160 : Cell := { cellDefaults with
  domain := ⟨(56880167597765363 / 100000000000000000 : ℚ), (113780167597765369 / 200000000000000000 : ℚ)⟩
  center := (45508100558659219 / 80000000000000000 : ℚ)
  supportValue := (3658868835456337 / 10000000000000000 : ℚ)
  supportSlope := (-7636624056936977 / 5000000000000000 : ℚ)
  oldCenter := (3658868835456337 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1339
  oldLo := (7310000000000001 / 20000000000000000 : ℚ)
  oldHi := (7320000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_896]
}

noncomputable def cell_11161 : Cell := { cellDefaults with
  domain := ⟨(113780167597765369 / 200000000000000000 : ℚ), (28450000000000003 / 50000000000000000 : ℚ)⟩
  center := (227580167597765381 / 400000000000000000 : ℚ)
  supportValue := (2285846864792581 / 6250000000000000 : ℚ)
  supportSlope := (-3814912699164249 / 2500000000000000 : ℚ)
  oldCenter := (2285846864792581 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1339
  oldLo := (7310000000000001 / 20000000000000000 : ℚ)
  oldHi := (7320000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_896]
}

noncomputable def cell_11162 : Cell := { cellDefaults with
  domain := ⟨(28450000000000003 / 50000000000000000 : ℚ), (227650000000000019 / 400000000000000000 : ℚ)⟩
  r := (57432219746847 / 100000000000000 : ℚ)
  w := (3535183739229 / 2500000000000 : ℚ)
  center := (455250000000000043 / 800000000000000000 : ℚ)
  supportValue := (3659624986158709 / 10000000000000000 : ℚ)
  supportSlope := (-763375265359821 / 500000000000000 : ℚ)
  oldCenter := (3659624986158709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1340
  oldLo := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_896, piece_897]
}

noncomputable def cell_11163 : Cell := { cellDefaults with
  domain := ⟨(227650000000000019 / 400000000000000000 : ℚ), (113850000000000007 / 200000000000000000 : ℚ)⟩
  r := (57432219746847 / 100000000000000 : ℚ)
  w := (3535183739229 / 2500000000000 : ℚ)
  center := (455350000000000033 / 800000000000000000 : ℚ)
  supportValue := (7315428981773019 / 20000000000000000 : ℚ)
  supportSlope := (-1525490159093909 / 1000000000000000 : ℚ)
  oldCenter := (7315428981773019 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1340
  oldLo := (7310000000000001 / 20000000000000000 : ℚ)
  oldHi := (7320000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_896]
}

noncomputable def cell_11164 : Cell := { cellDefaults with
  domain := ⟨(113850000000000007 / 200000000000000000 : ℚ), (227750000000000009 / 400000000000000000 : ℚ)⟩
  r := (57432219746847 / 100000000000000 : ℚ)
  w := (3535183739229 / 2500000000000 : ℚ)
  center := (455450000000000023 / 800000000000000000 : ℚ)
  supportValue := (3655811254960289 / 10000000000000000 : ℚ)
  supportSlope := (-3047793638524559 / 2000000000000000 : ℚ)
  oldCenter := (3655811254960289 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1340
  oldLo := (7300000000000001 / 20000000000000000 : ℚ)
  oldHi := (7320000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_895, piece_896]
}

noncomputable def cell_11165 : Cell := { cellDefaults with
  domain := ⟨(227750000000000009 / 400000000000000000 : ℚ), (56950000000000001 / 100000000000000000 : ℚ)⟩
  r := (57432219746847 / 100000000000000 : ℚ)
  w := (3535183739229 / 2500000000000 : ℚ)
  center := (455550000000000013 / 800000000000000000 : ℚ)
  supportValue := (730780790001001 / 2000000000000000 : ℚ)
  supportSlope := (-3808947868513649 / 2500000000000000 : ℚ)
  oldCenter := (730780790001001 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1340
  oldLo := (7300000000000001 / 20000000000000000 : ℚ)
  oldHi := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_895]
}

noncomputable def cell_11166 : Cell := { cellDefaults with
  domain := ⟨(56950000000000001 / 100000000000000000 : ℚ), (227850000000000009 / 400000000000000000 : ℚ)⟩
  r := (2870137117461 / 5000000000000 : ℚ)
  w := (3534360395321 / 2500000000000 : ℚ)
  center := (455650000000000013 / 800000000000000000 : ℚ)
  supportValue := (1827984514283133 / 5000000000000000 : ℚ)
  supportSlope := (-3046260375588667 / 2000000000000000 : ℚ)
  oldCenter := (1827984514283133 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1341
  oldLo := (7310000000000001 / 20000000000000000 : ℚ)
  oldHi := (7320000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_896]
}

noncomputable def cell_11167 : Cell := { cellDefaults with
  domain := ⟨(227850000000000009 / 400000000000000000 : ℚ), (113950000000000007 / 200000000000000000 : ℚ)⟩
  r := (2870137117461 / 5000000000000 : ℚ)
  w := (3534360395321 / 2500000000000 : ℚ)
  center := (455750000000000023 / 800000000000000000 : ℚ)
  supportValue := (36540678137373733 / 100000000000000000 : ℚ)
  supportSlope := (-15229158099624027 / 10000000000000000 : ℚ)
  oldCenter := (36540678137373733 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1341
  oldLo := (7300000000000001 / 20000000000000000 : ℚ)
  oldHi := (7320000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_895, piece_896]
}

noncomputable def cell_11168 : Cell := { cellDefaults with
  domain := ⟨(113950000000000007 / 200000000000000000 : ℚ), (227950000000000019 / 400000000000000000 : ℚ)⟩
  r := (2870137117461 / 5000000000000 : ℚ)
  w := (3534360395321 / 2500000000000 : ℚ)
  center := (455850000000000033 / 800000000000000000 : ℚ)
  supportValue := (913040665881951 / 2500000000000000 : ℚ)
  supportSlope := (-3042439594109021 / 2000000000000000 : ℚ)
  oldCenter := (913040665881951 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1341
  oldLo := (7300000000000001 / 20000000000000000 : ℚ)
  oldHi := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_895]
}

noncomputable def cell_11169 : Cell := { cellDefaults with
  domain := ⟨(227950000000000019 / 400000000000000000 : ℚ), (28500000000000003 / 50000000000000000 : ℚ)⟩
  r := (2870137117461 / 5000000000000 : ℚ)
  w := (3534360395321 / 2500000000000 : ℚ)
  center := (455950000000000043 / 800000000000000000 : ℚ)
  supportValue := (3650264758458513 / 10000000000000000 : ℚ)
  supportSlope := (-7600320192685879 / 5000000000000000 : ℚ)
  oldCenter := (3650264758458513 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1341
  oldLo := (7290000000000001 / 20000000000000000 : ℚ)
  oldHi := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_894, piece_895]
}

noncomputable def cell_11170 : Cell := { cellDefaults with
  domain := ⟨(28500000000000003 / 50000000000000000 : ℚ), (228050000000000019 / 400000000000000000 : ℚ)⟩
  r := (28686649995193 / 50000000000000 : ℚ)
  w := (14134157385937 / 10000000000000 : ℚ)
  center := (456050000000000043 / 800000000000000000 : ℚ)
  supportValue := (7304643849437239 / 20000000000000000 : ℚ)
  supportSlope := (-1900711008899959 / 1250000000000000 : ℚ)
  oldCenter := (7304643849437239 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1342
  oldLo := (7300000000000001 / 20000000000000000 : ℚ)
  oldHi := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_895]
}

noncomputable def cell_11171 : Cell := { cellDefaults with
  domain := ⟨(228050000000000019 / 400000000000000000 : ℚ), (114050000000000007 / 200000000000000000 : ℚ)⟩
  r := (28686649995193 / 50000000000000 : ℚ)
  w := (14134157385937 / 10000000000000 : ℚ)
  center := (456150000000000033 / 800000000000000000 : ℚ)
  supportValue := (18252124163359773 / 50000000000000000 : ℚ)
  supportSlope := (-379821763229631 / 250000000000000 : ℚ)
  oldCenter := (18252124163359773 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1342
  oldLo := (7290000000000001 / 20000000000000000 : ℚ)
  oldHi := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_894, piece_895]
}

noncomputable def cell_11172 : Cell := { cellDefaults with
  domain := ⟨(114050000000000007 / 200000000000000000 : ℚ), (228150000000000009 / 400000000000000000 : ℚ)⟩
  r := (28686649995193 / 50000000000000 : ℚ)
  w := (14134157385937 / 10000000000000 : ℚ)
  center := (456250000000000023 / 800000000000000000 : ℚ)
  supportValue := (1824261644704407 / 5000000000000000 : ℚ)
  supportSlope := (-3796677861700839 / 2500000000000000 : ℚ)
  oldCenter := (1824261644704407 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1342
  oldLo := (7290000000000001 / 20000000000000000 : ℚ)
  oldHi := (7300000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_894]
}

noncomputable def cell_11173 : Cell := { cellDefaults with
  domain := ⟨(228150000000000009 / 400000000000000000 : ℚ), (57050000000000001 / 100000000000000000 : ℚ)⟩
  r := (28686649995193 / 50000000000000 : ℚ)
  w := (14134157385937 / 10000000000000 : ℚ)
  center := (456350000000000013 / 800000000000000000 : ℚ)
  supportValue := (1823313007838863 / 5000000000000000 : ℚ)
  supportSlope := (-3792418756321349 / 2500000000000000 : ℚ)
  oldCenter := (1823313007838863 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1342
  oldLo := (7290000000000001 / 20000000000000000 : ℚ)
  oldHi := (7300000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_894]
}

noncomputable def cell_11174 : Cell := { cellDefaults with
  domain := ⟨(57050000000000001 / 100000000000000000 : ℚ), (228250000000000009 / 400000000000000000 : ℚ)⟩
  r := (71679863287 / 125000000000 : ℚ)
  w := (3532719605039 / 2500000000000 : ℚ)
  center := (456450000000000013 / 800000000000000000 : ℚ)
  supportValue := (1824341320848619 / 5000000000000000 : ℚ)
  supportSlope := (-3795056308603837 / 2500000000000000 : ℚ)
  oldCenter := (1824341320848619 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1343
  oldLo := (7290000000000001 / 20000000000000000 : ℚ)
  oldHi := (7300000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_894]
}

noncomputable def cell_11175 : Cell := { cellDefaults with
  domain := ⟨(228250000000000009 / 400000000000000000 : ℚ), (114150000000000007 / 200000000000000000 : ℚ)⟩
  r := (71679863287 / 125000000000 : ℚ)
  w := (3532719605039 / 2500000000000 : ℚ)
  center := (456550000000000023 / 800000000000000000 : ℚ)
  supportValue := (36467861779168603 / 100000000000000000 : ℚ)
  supportSlope := (-3790800503273471 / 2500000000000000 : ℚ)
  oldCenter := (36467861779168603 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1343
  oldLo := (7290000000000001 / 20000000000000000 : ℚ)
  oldHi := (7300000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_894]
}

noncomputable def cell_11176 : Cell := { cellDefaults with
  domain := ⟨(114150000000000007 / 200000000000000000 : ℚ), (228350000000000019 / 400000000000000000 : ℚ)⟩
  r := (71679863287 / 125000000000 : ℚ)
  w := (3532719605039 / 2500000000000 : ℚ)
  center := (456650000000000033 / 800000000000000000 : ℚ)
  supportValue := (3644894280314139 / 10000000000000000 : ℚ)
  supportSlope := (-94716646042427 / 62500000000000 : ℚ)
  oldCenter := (3644894280314139 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1343
  oldLo := (7280000000000001 / 20000000000000000 : ℚ)
  oldHi := (7300000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_893, piece_894]
}

noncomputable def cell_11177 : Cell := { cellDefaults with
  domain := ⟨(228350000000000019 / 400000000000000000 : ℚ), (28550000000000003 / 50000000000000000 : ℚ)⟩
  r := (71679863287 / 125000000000 : ℚ)
  w := (3532719605039 / 2500000000000 : ℚ)
  center := (456750000000000043 / 800000000000000000 : ℚ)
  supportValue := (18214988114246067 / 50000000000000000 : ℚ)
  supportSlope := (-757216411691721 / 500000000000000 : ℚ)
  oldCenter := (18214988114246067 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1343
  oldLo := (7280000000000001 / 20000000000000000 : ℚ)
  oldHi := (7290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_893]
}

noncomputable def cell_11178 : Cell := { cellDefaults with
  domain := ⟨(28550000000000003 / 50000000000000000 : ℚ), (228450000000000019 / 400000000000000000 : ℚ)⟩
  r := (28657257677751 / 50000000000000 : ℚ)
  w := (14127605866711 / 10000000000000 : ℚ)
  center := (456850000000000043 / 800000000000000000 : ℚ)
  supportValue := (7290106527270881 / 20000000000000000 : ℚ)
  supportSlope := (-15146923956416551 / 10000000000000000 : ℚ)
  oldCenter := (7290106527270881 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1344
  oldLo := (7280000000000001 / 20000000000000000 : ℚ)
  oldHi := (7300000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_893, piece_894]
}

noncomputable def cell_11179 : Cell := { cellDefaults with
  domain := ⟨(228450000000000019 / 400000000000000000 : ℚ), (114250000000000007 / 200000000000000000 : ℚ)⟩
  r := (28657257677751 / 50000000000000 : ℚ)
  w := (14127605866711 / 10000000000000 : ℚ)
  center := (456950000000000033 / 800000000000000000 : ℚ)
  supportValue := (113848670724269 / 312500000000000 : ℚ)
  supportSlope := (-756893736619877 / 500000000000000 : ℚ)
  oldCenter := (113848670724269 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1344
  oldLo := (7280000000000001 / 20000000000000000 : ℚ)
  oldHi := (7290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_893]
}

noncomputable def cell_11180 : Cell := { cellDefaults with
  domain := ⟨(114250000000000007 / 200000000000000000 : ℚ), (228550000000000009 / 400000000000000000 : ℚ)⟩
  r := (28657257677751 / 50000000000000 : ℚ)
  w := (14127605866711 / 10000000000000 : ℚ)
  center := (457050000000000023 / 800000000000000000 : ℚ)
  supportValue := (291301303192337 / 800000000000000 : ℚ)
  supportSlope := (-3024180875718177 / 2000000000000000 : ℚ)
  oldCenter := (291301303192337 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1344
  oldLo := (7280000000000001 / 20000000000000000 : ℚ)
  oldHi := (7290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_893]
}

noncomputable def cell_11181 : Cell := { cellDefaults with
  domain := ⟨(228550000000000009 / 400000000000000000 : ℚ), (57150000000000001 / 100000000000000000 : ℚ)⟩
  r := (28657257677751 / 50000000000000 : ℚ)
  w := (14127605866711 / 10000000000000 : ℚ)
  center := (457150000000000013 / 800000000000000000 : ℚ)
  supportValue := (7278758311031549 / 20000000000000000 : ℚ)
  supportSlope := (-7558276318718393 / 5000000000000000 : ℚ)
  oldCenter := (7278758311031549 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1344
  oldLo := (7270000000000001 / 20000000000000000 : ℚ)
  oldHi := (7290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_891, piece_892, piece_893]
}

noncomputable def cell_11182 : Cell := { cellDefaults with
  domain := ⟨(57150000000000001 / 100000000000000000 : ℚ), (228650000000000009 / 400000000000000000 : ℚ)⟩
  r := (14321293897679 / 25000000000000 : ℚ)
  w := (2824868490303 / 2000000000000 : ℚ)
  center := (457250000000000013 / 800000000000000000 : ℚ)
  supportValue := (1456569611159783 / 4000000000000000 : ℚ)
  supportSlope := (-15114446317959371 / 10000000000000000 : ℚ)
  oldCenter := (1456569611159783 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1345
  oldLo := (7280000000000001 / 20000000000000000 : ℚ)
  oldHi := (7290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_893]
}

noncomputable def cell_11183 : Cell := { cellDefaults with
  domain := ⟨(228650000000000009 / 400000000000000000 : ℚ), (114350000000000007 / 200000000000000000 : ℚ)⟩
  r := (14321293897679 / 25000000000000 : ℚ)
  w := (2824868490303 / 2000000000000 : ℚ)
  center := (457350000000000023 / 800000000000000000 : ℚ)
  supportValue := (3639537858973001 / 10000000000000000 : ℚ)
  supportSlope := (-377720974299407 / 250000000000000 : ℚ)
  oldCenter := (3639537858973001 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1345
  oldLo := (7270000000000001 / 20000000000000000 : ℚ)
  oldHi := (7290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_891, piece_892, piece_893]
}

noncomputable def cell_11184 : Cell := { cellDefaults with
  domain := ⟨(114350000000000007 / 200000000000000000 : ℚ), (228750000000000019 / 400000000000000000 : ℚ)⟩
  r := (14321293897679 / 25000000000000 : ℚ)
  w := (2824868490303 / 2000000000000 : ℚ)
  center := (457450000000000033 / 800000000000000000 : ℚ)
  supportValue := (36376472870060883 / 100000000000000000 : ℚ)
  supportSlope := (-3019140943439833 / 2000000000000000 : ℚ)
  oldCenter := (36376472870060883 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1345
  oldLo := (7270000000000001 / 20000000000000000 : ℚ)
  oldHi := (36396648044692737 / 100000000000000000 : ℚ)
  oldPieces := [piece_891]
}

noncomputable def cell_11185 : Cell := { cellDefaults with
  domain := ⟨(228750000000000019 / 400000000000000000 : ℚ), (28600000000000003 / 50000000000000000 : ℚ)⟩
  r := (14321293897679 / 25000000000000 : ℚ)
  w := (2824868490303 / 2000000000000 : ℚ)
  center := (457550000000000043 / 800000000000000000 : ℚ)
  supportValue := (1136176227199333 / 3125000000000000 : ℚ)
  supportSlope := (-15080252275330877 / 10000000000000000 : ℚ)
  oldCenter := (1136176227199333 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1345
  oldLo := (9075000000000001 / 25000000000000000 : ℚ)
  oldHi := (36396648044692737 / 100000000000000000 : ℚ)
  oldPieces := [piece_890, piece_891]
}

noncomputable def cell_11186 : Cell := { cellDefaults with
  domain := ⟨(28600000000000003 / 50000000000000000 : ℚ), (228850000000000019 / 400000000000000000 : ℚ)⟩
  r := (57255870568049 / 100000000000000 : ℚ)
  w := (3530271957393 / 2500000000000 : ℚ)
  center := (457650000000000043 / 800000000000000000 : ℚ)
  supportValue := (227362752928301 / 625000000000000 : ℚ)
  supportSlope := (-15089261443722977 / 10000000000000000 : ℚ)
  oldCenter := (227362752928301 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1346
  oldLo := (7270000000000001 / 20000000000000000 : ℚ)
  oldHi := (36396648044692737 / 100000000000000000 : ℚ)
  oldPieces := [piece_891]
}

noncomputable def cell_11187 : Cell := { cellDefaults with
  domain := ⟨(228850000000000019 / 400000000000000000 : ℚ), (114450000000000007 / 200000000000000000 : ℚ)⟩
  r := (57255870568049 / 100000000000000 : ℚ)
  w := (3530271957393 / 2500000000000 : ℚ)
  center := (457750000000000033 / 800000000000000000 : ℚ)
  supportValue := (9089803728958229 / 25000000000000000 : ℚ)
  supportSlope := (-3768136298994239 / 2500000000000000 : ℚ)
  oldCenter := (9089803728958229 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1346
  oldLo := (9075000000000001 / 25000000000000000 : ℚ)
  oldHi := (36396648044692737 / 100000000000000000 : ℚ)
  oldPieces := [piece_890, piece_891]
}

noncomputable def cell_11188 : Cell := { cellDefaults with
  domain := ⟨(114450000000000007 / 200000000000000000 : ℚ), (228950000000000009 / 400000000000000000 : ℚ)⟩
  r := (57255870568049 / 100000000000000 : ℚ)
  w := (3530271957393 / 2500000000000 : ℚ)
  center := (457850000000000023 / 800000000000000000 : ℚ)
  supportValue := (7268069964870787 / 20000000000000000 : ℚ)
  supportSlope := (-3014130395602467 / 2000000000000000 : ℚ)
  oldCenter := (7268069964870787 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1346
  oldLo := (9075000000000001 / 25000000000000000 : ℚ)
  oldHi := (7270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_890]
}

noncomputable def cell_11189 : Cell := { cellDefaults with
  domain := ⟨(228950000000000009 / 400000000000000000 : ℚ), (57250000000000001 / 100000000000000000 : ℚ)⟩
  r := (57255870568049 / 100000000000000 : ℚ)
  w := (3530271957393 / 2500000000000 : ℚ)
  center := (457950000000000013 / 800000000000000000 : ℚ)
  supportValue := (726430442078841 / 2000000000000000 : ℚ)
  supportSlope := (-15053707536278167 / 10000000000000000 : ℚ)
  oldCenter := (726430442078841 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1346
  oldLo := (9075000000000001 / 25000000000000000 : ℚ)
  oldHi := (7270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_890]
}

noncomputable def cell_11190 : Cell := { cellDefaults with
  domain := ⟨(57250000000000001 / 100000000000000000 : ℚ), (229050000000000009 / 400000000000000000 : ℚ)⟩
  r := (7153324691071 / 12500000000000 : ℚ)
  w := (3529459101757 / 2500000000000 : ℚ)
  center := (458050000000000013 / 800000000000000000 : ℚ)
  supportValue := (3634194936170913 / 10000000000000000 : ℚ)
  supportSlope := (-15063160537883307 / 10000000000000000 : ℚ)
  oldCenter := (3634194936170913 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1347
  oldLo := (9075000000000001 / 25000000000000000 : ℚ)
  oldHi := (36396648044692737 / 100000000000000000 : ℚ)
  oldPieces := [piece_890, piece_891]
}

noncomputable def cell_11191 : Cell := { cellDefaults with
  domain := ⟨(229050000000000009 / 400000000000000000 : ℚ), (114550000000000007 / 200000000000000000 : ℚ)⟩
  r := (7153324691071 / 12500000000000 : ℚ)
  w := (3529459101757 / 2500000000000 : ℚ)
  center := (458150000000000023 / 800000000000000000 : ℚ)
  supportValue := (36323104213581703 / 100000000000000000 : ℚ)
  supportSlope := (-3009460952424857 / 2000000000000000 : ℚ)
  oldCenter := (36323104213581703 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1347
  oldLo := (9075000000000001 / 25000000000000000 : ℚ)
  oldHi := (7270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_890]
}

noncomputable def cell_11192 : Cell := { cellDefaults with
  domain := ⟨(114550000000000007 / 200000000000000000 : ℚ), (229150000000000019 / 400000000000000000 : ℚ)⟩
  r := (7153324691071 / 12500000000000 : ℚ)
  w := (3529459101757 / 2500000000000 : ℚ)
  center := (458250000000000033 / 800000000000000000 : ℚ)
  supportValue := (18152165521201047 / 50000000000000000 : ℚ)
  supportSlope := (-15034575813198277 / 10000000000000000 : ℚ)
  oldCenter := (18152165521201047 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1347
  oldLo := (9062500000000001 / 25000000000000000 : ℚ)
  oldHi := (7270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_889, piece_890]
}

noncomputable def cell_11193 : Cell := { cellDefaults with
  domain := ⟨(229150000000000019 / 400000000000000000 : ℚ), (28650000000000003 / 50000000000000000 : ℚ)⟩
  r := (7153324691071 / 12500000000000 : ℚ)
  w := (3529459101757 / 2500000000000 : ℚ)
  center := (458350000000000043 / 800000000000000000 : ℚ)
  supportValue := (3628551341944801 / 10000000000000000 : ℚ)
  supportSlope := (-300575830084041 / 200000000000000 : ℚ)
  oldCenter := (3628551341944801 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1347
  oldLo := (9062500000000001 / 25000000000000000 : ℚ)
  oldHi := (9075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_889]
}

noncomputable def cell_11194 : Cell := { cellDefaults with
  domain := ⟨(28650000000000003 / 50000000000000000 : ℚ), (229250000000000019 / 400000000000000000 : ℚ)⟩
  r := (11439471896027 / 20000000000000 : ℚ)
  w := (1764324304617 / 1250000000000 : ℚ)
  center := (458450000000000043 / 800000000000000000 : ℚ)
  supportValue := (18152945883627067 / 50000000000000000 : ℚ)
  supportSlope := (-939181157579943 / 625000000000000 : ℚ)
  oldCenter := (18152945883627067 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1348
  oldLo := (9062500000000001 / 25000000000000000 : ℚ)
  oldHi := (7270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_889, piece_890]
}

noncomputable def cell_11195 : Cell := { cellDefaults with
  domain := ⟨(229250000000000019 / 400000000000000000 : ℚ), (114650000000000007 / 200000000000000000 : ℚ)⟩
  r := (11439471896027 / 20000000000000 : ℚ)
  w := (1764324304617 / 1250000000000 : ℚ)
  center := (458550000000000033 / 800000000000000000 : ℚ)
  supportValue := (907177093230953 / 2500000000000000 : ℚ)
  supportSlope := (-15022400900851887 / 10000000000000000 : ℚ)
  oldCenter := (907177093230953 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1348
  oldLo := (9062500000000001 / 25000000000000000 : ℚ)
  oldHi := (9075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_889]
}

noncomputable def cell_11196 : Cell := { cellDefaults with
  domain := ⟨(114650000000000007 / 200000000000000000 : ℚ), (229350000000000009 / 400000000000000000 : ℚ)⟩
  r := (11439471896027 / 20000000000000 : ℚ)
  w := (1764324304617 / 1250000000000 : ℚ)
  center := (458650000000000023 / 800000000000000000 : ℚ)
  supportValue := (906707906964351 / 2500000000000000 : ℚ)
  supportSlope := (-7502763491698733 / 5000000000000000 : ℚ)
  oldCenter := (906707906964351 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1348
  oldLo := (9062500000000001 / 25000000000000000 : ℚ)
  oldHi := (9075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_889]
}

noncomputable def cell_11197 : Cell := { cellDefaults with
  domain := ⟨(229350000000000009 / 400000000000000000 : ℚ), (57350000000000001 / 100000000000000000 : ℚ)⟩
  r := (11439471896027 / 20000000000000 : ℚ)
  w := (1764324304617 / 1250000000000 : ℚ)
  center := (458750000000000013 / 800000000000000000 : ℚ)
  supportValue := (1812479740253501 / 5000000000000000 : ℚ)
  supportSlope := (-374917760162001 / 250000000000000 : ℚ)
  oldCenter := (1812479740253501 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1348
  oldLo := (9050000000000001 / 25000000000000000 : ℚ)
  oldHi := (9075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_888, piece_889]
}

noncomputable def cell_11198 : Cell := { cellDefaults with
  domain := ⟨(57350000000000001 / 100000000000000000 : ℚ), (22945000000000001 / 40000000000000000 : ℚ)⟩
  r := (11433631466727 / 20000000000000 : ℚ)
  w := (1763920222697 / 1250000000000 : ℚ)
  center := (229425000000000007 / 400000000000000000 : ℚ)
  supportValue := (18134932247505467 / 50000000000000000 : ℚ)
  supportSlope := (-3749782787933581 / 2500000000000000 : ℚ)
  oldCenter := (18134932247505467 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1349
  oldLo := (9062500000000001 / 25000000000000000 : ℚ)
  oldHi := (9075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_889]
}

noncomputable def cell_11199 : Cell := { cellDefaults with
  domain := ⟨(22945000000000001 / 40000000000000000 : ℚ), (14343750000000001 / 25000000000000000 : ℚ)⟩
  r := (11433631466727 / 20000000000000 : ℚ)
  w := (1763920222697 / 1250000000000 : ℚ)
  center := (229475000000000013 / 400000000000000000 : ℚ)
  supportValue := (3625115145969159 / 10000000000000000 : ℚ)
  supportSlope := (-7494529126778271 / 5000000000000000 : ℚ)
  oldCenter := (3625115145969159 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1349
  oldLo := (9050000000000001 / 25000000000000000 : ℚ)
  oldHi := (9075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_888, piece_889]
}

theorem check_11150 : cell_11150.check = true := by
  decide +kernel

theorem check_11151 : cell_11151.check = true := by
  decide +kernel

theorem check_11152 : cell_11152.check = true := by
  decide +kernel

theorem check_11153 : cell_11153.check = true := by
  decide +kernel

theorem check_11154 : cell_11154.check = true := by
  decide +kernel

theorem check_11155 : cell_11155.check = true := by
  decide +kernel

theorem check_11156 : cell_11156.check = true := by
  decide +kernel

theorem check_11157 : cell_11157.check = true := by
  decide +kernel

theorem check_11158 : cell_11158.check = true := by
  decide +kernel

theorem check_11159 : cell_11159.check = true := by
  decide +kernel

theorem check_11160 : cell_11160.check = true := by
  decide +kernel

theorem check_11161 : cell_11161.check = true := by
  decide +kernel

theorem check_11162 : cell_11162.check = true := by
  decide +kernel

theorem check_11163 : cell_11163.check = true := by
  decide +kernel

theorem check_11164 : cell_11164.check = true := by
  decide +kernel

theorem check_11165 : cell_11165.check = true := by
  decide +kernel

theorem check_11166 : cell_11166.check = true := by
  decide +kernel

theorem check_11167 : cell_11167.check = true := by
  decide +kernel

theorem check_11168 : cell_11168.check = true := by
  decide +kernel

theorem check_11169 : cell_11169.check = true := by
  decide +kernel

theorem check_11170 : cell_11170.check = true := by
  decide +kernel

theorem check_11171 : cell_11171.check = true := by
  decide +kernel

theorem check_11172 : cell_11172.check = true := by
  decide +kernel

theorem check_11173 : cell_11173.check = true := by
  decide +kernel

theorem check_11174 : cell_11174.check = true := by
  decide +kernel

theorem check_11175 : cell_11175.check = true := by
  decide +kernel

theorem check_11176 : cell_11176.check = true := by
  decide +kernel

theorem check_11177 : cell_11177.check = true := by
  decide +kernel

theorem check_11178 : cell_11178.check = true := by
  decide +kernel

theorem check_11179 : cell_11179.check = true := by
  decide +kernel

theorem check_11180 : cell_11180.check = true := by
  decide +kernel

theorem check_11181 : cell_11181.check = true := by
  decide +kernel

theorem check_11182 : cell_11182.check = true := by
  decide +kernel

theorem check_11183 : cell_11183.check = true := by
  decide +kernel

theorem check_11184 : cell_11184.check = true := by
  decide +kernel

theorem check_11185 : cell_11185.check = true := by
  decide +kernel

theorem check_11186 : cell_11186.check = true := by
  decide +kernel

theorem check_11187 : cell_11187.check = true := by
  decide +kernel

theorem check_11188 : cell_11188.check = true := by
  decide +kernel

theorem check_11189 : cell_11189.check = true := by
  decide +kernel

theorem check_11190 : cell_11190.check = true := by
  decide +kernel

theorem check_11191 : cell_11191.check = true := by
  decide +kernel

theorem check_11192 : cell_11192.check = true := by
  decide +kernel

theorem check_11193 : cell_11193.check = true := by
  decide +kernel

theorem check_11194 : cell_11194.check = true := by
  decide +kernel

theorem check_11195 : cell_11195.check = true := by
  decide +kernel

theorem check_11196 : cell_11196.check = true := by
  decide +kernel

theorem check_11197 : cell_11197.check = true := by
  decide +kernel

theorem check_11198 : cell_11198.check = true := by
  decide +kernel

theorem check_11199 : cell_11199.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11150, cell_11151, cell_11152, cell_11153, cell_11154, cell_11155, cell_11156, cell_11157, cell_11158, cell_11159, cell_11160, cell_11161, cell_11162, cell_11163, cell_11164, cell_11165, cell_11166, cell_11167, cell_11168, cell_11169, cell_11170, cell_11171, cell_11172, cell_11173, cell_11174, cell_11175, cell_11176, cell_11177, cell_11178, cell_11179, cell_11180, cell_11181, cell_11182, cell_11183, cell_11184, cell_11185, cell_11186, cell_11187, cell_11188, cell_11189, cell_11190, cell_11191, cell_11192, cell_11193, cell_11194, cell_11195, cell_11196, cell_11197, cell_11198, cell_11199]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11150, check_11151, check_11152, check_11153, check_11154, check_11155, check_11156, check_11157, check_11158, check_11159, check_11160, check_11161, check_11162, check_11163, check_11164, check_11165, check_11166, check_11167, check_11168, check_11169, check_11170, check_11171, check_11172, check_11173, check_11174, check_11175, check_11176, check_11177, check_11178, check_11179, check_11180, check_11181, check_11182, check_11183, check_11184, check_11185, check_11186, check_11187, check_11188, check_11189, check_11190, check_11191, check_11192, check_11193, check_11194, check_11195, check_11196, check_11197, check_11198, check_11199, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0223

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0223
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0223
open AnalyticBounds.ExpressionCertificate

theorem linked_11150 : Linked cell_11150 pieces := by
  link_source cell_11150 with piece_1336 using piece_1336_mem, piece_898_mem

theorem linked_11151 : Linked cell_11151 pieces := by
  link_source cell_11151 with piece_1336 using piece_1336_mem, piece_898_mem

theorem linked_11152 : Linked cell_11152 pieces := by
  link_source cell_11152 with piece_1336 using piece_1336_mem, ⟨piece_897_mem, piece_898_mem⟩

theorem linked_11153 : Linked cell_11153 pieces := by
  link_source cell_11153 with piece_1337 using piece_1337_mem, piece_898_mem

theorem linked_11154 : Linked cell_11154 pieces := by
  link_source cell_11154 with piece_1337 using piece_1337_mem, ⟨piece_897_mem, piece_898_mem⟩

theorem linked_11155 : Linked cell_11155 pieces := by
  link_source cell_11155 with piece_1337 using piece_1337_mem, piece_897_mem

theorem linked_11156 : Linked cell_11156 pieces := by
  link_source cell_11156 with piece_1337 using piece_1337_mem, piece_897_mem

theorem linked_11157 : Linked cell_11157 pieces := by
  link_source cell_11157 with piece_1338 using piece_1338_mem, piece_897_mem

theorem linked_11158 : Linked cell_11158 pieces := by
  link_source cell_11158 with piece_1339 using piece_1339_mem, piece_897_mem

theorem linked_11159 : Linked cell_11159 pieces := by
  link_source cell_11159 with piece_1339 using piece_1339_mem, ⟨piece_896_mem, piece_897_mem⟩

theorem linked_11160 : Linked cell_11160 pieces := by
  link_source cell_11160 with piece_1339 using piece_1339_mem, piece_896_mem

theorem linked_11161 : Linked cell_11161 pieces := by
  link_source cell_11161 with piece_1339 using piece_1339_mem, piece_896_mem

theorem linked_11162 : Linked cell_11162 pieces := by
  link_source cell_11162 with piece_1340 using piece_1340_mem, ⟨piece_896_mem, piece_897_mem⟩

theorem linked_11163 : Linked cell_11163 pieces := by
  link_source cell_11163 with piece_1340 using piece_1340_mem, piece_896_mem

theorem linked_11164 : Linked cell_11164 pieces := by
  link_source cell_11164 with piece_1340 using piece_1340_mem, ⟨piece_895_mem, piece_896_mem⟩

theorem linked_11165 : Linked cell_11165 pieces := by
  link_source cell_11165 with piece_1340 using piece_1340_mem, piece_895_mem

theorem linked_11166 : Linked cell_11166 pieces := by
  link_source cell_11166 with piece_1341 using piece_1341_mem, piece_896_mem

theorem linked_11167 : Linked cell_11167 pieces := by
  link_source cell_11167 with piece_1341 using piece_1341_mem, ⟨piece_895_mem, piece_896_mem⟩

theorem linked_11168 : Linked cell_11168 pieces := by
  link_source cell_11168 with piece_1341 using piece_1341_mem, piece_895_mem

theorem linked_11169 : Linked cell_11169 pieces := by
  link_source cell_11169 with piece_1341 using piece_1341_mem, ⟨piece_894_mem, piece_895_mem⟩

theorem linked_11170 : Linked cell_11170 pieces := by
  link_source cell_11170 with piece_1342 using piece_1342_mem, piece_895_mem

theorem linked_11171 : Linked cell_11171 pieces := by
  link_source cell_11171 with piece_1342 using piece_1342_mem, ⟨piece_894_mem, piece_895_mem⟩

theorem linked_11172 : Linked cell_11172 pieces := by
  link_source cell_11172 with piece_1342 using piece_1342_mem, piece_894_mem

theorem linked_11173 : Linked cell_11173 pieces := by
  link_source cell_11173 with piece_1342 using piece_1342_mem, piece_894_mem

theorem linked_11174 : Linked cell_11174 pieces := by
  link_source cell_11174 with piece_1343 using piece_1343_mem, piece_894_mem

theorem linked_11175 : Linked cell_11175 pieces := by
  link_source cell_11175 with piece_1343 using piece_1343_mem, piece_894_mem

theorem linked_11176 : Linked cell_11176 pieces := by
  link_source cell_11176 with piece_1343 using piece_1343_mem, ⟨piece_893_mem, piece_894_mem⟩

theorem linked_11177 : Linked cell_11177 pieces := by
  link_source cell_11177 with piece_1343 using piece_1343_mem, piece_893_mem

theorem linked_11178 : Linked cell_11178 pieces := by
  link_source cell_11178 with piece_1344 using piece_1344_mem, ⟨piece_893_mem, piece_894_mem⟩

theorem linked_11179 : Linked cell_11179 pieces := by
  link_source cell_11179 with piece_1344 using piece_1344_mem, piece_893_mem

theorem linked_11180 : Linked cell_11180 pieces := by
  link_source cell_11180 with piece_1344 using piece_1344_mem, piece_893_mem

theorem linked_11181 : Linked cell_11181 pieces := by
  link_source cell_11181 with piece_1344 using piece_1344_mem, ⟨piece_891_mem, ⟨piece_892_mem, piece_893_mem⟩⟩

theorem linked_11182 : Linked cell_11182 pieces := by
  link_source cell_11182 with piece_1345 using piece_1345_mem, piece_893_mem

theorem linked_11183 : Linked cell_11183 pieces := by
  link_source cell_11183 with piece_1345 using piece_1345_mem, ⟨piece_891_mem, ⟨piece_892_mem, piece_893_mem⟩⟩

theorem linked_11184 : Linked cell_11184 pieces := by
  link_source cell_11184 with piece_1345 using piece_1345_mem, piece_891_mem

theorem linked_11185 : Linked cell_11185 pieces := by
  link_source cell_11185 with piece_1345 using piece_1345_mem, ⟨piece_890_mem, piece_891_mem⟩

theorem linked_11186 : Linked cell_11186 pieces := by
  link_source cell_11186 with piece_1346 using piece_1346_mem, piece_891_mem

theorem linked_11187 : Linked cell_11187 pieces := by
  link_source cell_11187 with piece_1346 using piece_1346_mem, ⟨piece_890_mem, piece_891_mem⟩

theorem linked_11188 : Linked cell_11188 pieces := by
  link_source cell_11188 with piece_1346 using piece_1346_mem, piece_890_mem

theorem linked_11189 : Linked cell_11189 pieces := by
  link_source cell_11189 with piece_1346 using piece_1346_mem, piece_890_mem

theorem linked_11190 : Linked cell_11190 pieces := by
  link_source cell_11190 with piece_1347 using piece_1347_mem, ⟨piece_890_mem, piece_891_mem⟩

theorem linked_11191 : Linked cell_11191 pieces := by
  link_source cell_11191 with piece_1347 using piece_1347_mem, piece_890_mem

theorem linked_11192 : Linked cell_11192 pieces := by
  link_source cell_11192 with piece_1347 using piece_1347_mem, ⟨piece_889_mem, piece_890_mem⟩

theorem linked_11193 : Linked cell_11193 pieces := by
  link_source cell_11193 with piece_1347 using piece_1347_mem, piece_889_mem

theorem linked_11194 : Linked cell_11194 pieces := by
  link_source cell_11194 with piece_1348 using piece_1348_mem, ⟨piece_889_mem, piece_890_mem⟩

theorem linked_11195 : Linked cell_11195 pieces := by
  link_source cell_11195 with piece_1348 using piece_1348_mem, piece_889_mem

theorem linked_11196 : Linked cell_11196 pieces := by
  link_source cell_11196 with piece_1348 using piece_1348_mem, piece_889_mem

theorem linked_11197 : Linked cell_11197 pieces := by
  link_source cell_11197 with piece_1348 using piece_1348_mem, ⟨piece_888_mem, piece_889_mem⟩

theorem linked_11198 : Linked cell_11198 pieces := by
  link_source cell_11198 with piece_1349 using piece_1349_mem, piece_889_mem

theorem linked_11199 : Linked cell_11199 pieces := by
  link_source cell_11199 with piece_1349 using piece_1349_mem, ⟨piece_888_mem, piece_889_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0223.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0223.cells,List.forall_mem_cons]
  exact ⟨linked_11150, linked_11151, linked_11152, linked_11153, linked_11154, linked_11155, linked_11156, linked_11157, linked_11158, linked_11159, linked_11160, linked_11161, linked_11162, linked_11163, linked_11164, linked_11165, linked_11166, linked_11167, linked_11168, linked_11169, linked_11170, linked_11171, linked_11172, linked_11173, linked_11174, linked_11175, linked_11176, linked_11177, linked_11178, linked_11179, linked_11180, linked_11181, linked_11182, linked_11183, linked_11184, linked_11185, linked_11186, linked_11187, linked_11188, linked_11189, linked_11190, linked_11191, linked_11192, linked_11193, linked_11194, linked_11195, linked_11196, linked_11197, linked_11198, linked_11199, by simp⟩

theorem covered : covers (113525000000000003 / 200000000000000000 : ℚ) (14343750000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0223.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0223
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0224
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(14343750000000001 / 25000000000000000 : ℚ), (114775000000000011 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (14284746903421 / 25000000000000 : ℚ)
  w := (3527033459541 / 2500000000000 : ℚ)
  center := (229525000000000019 / 400000000000000000 : ℚ)
  supportValue := (36232390728483493 / 100000000000000000 : ℚ)
  supportSlope := (-3745188186549781 / 2500000000000000 : ℚ)
  oldCenter := (36232390728483493 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1351
  oldLo := (9037500000000001 / 25000000000000000 : ℚ)
  oldHi := (9050000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_887]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11200 : Cell := { cellDefaults with
  r := (11433631466727 / 20000000000000 : ℚ)
  w := (1763920222697 / 1250000000000 : ℚ)
  newCoefficients := coefficients_1349
  oldLo := (9050000000000001 / 25000000000000000 : ℚ)
  oldHi := (9062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_888]
}

noncomputable def cell_11201 : Cell := { cellDefaults with
  domain := ⟨(114775000000000011 / 200000000000000000 : ℚ), (57400000000000007 / 100000000000000000 : ℚ)⟩
  r := (11433631466727 / 20000000000000 : ℚ)
  w := (1763920222697 / 1250000000000 : ℚ)
  center := (9183000000000001 / 16000000000000000 : ℚ)
  supportValue := (3621367531046533 / 10000000000000000 : ℚ)
  supportSlope := (-748196145597201 / 500000000000000 : ℚ)
  oldCenter := (3621367531046533 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1349
  oldLo := (9050000000000001 / 25000000000000000 : ℚ)
  oldHi := (9062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_888]
}

noncomputable def cell_11202 : Cell := { cellDefaults with
  domain := ⟨(57400000000000007 / 100000000000000000 : ℚ), (1148268156424581 / 2000000000000000 : ℚ)⟩
  center := (114813407821229057 / 200000000000000000 : ℚ)
  supportValue := (1132290210809557 / 3125000000000000 : ℚ)
  supportSlope := (-7486884576944901 / 5000000000000000 : ℚ)
  oldCenter := (1132290210809557 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1350
  oldLo := (9050000000000001 / 25000000000000000 : ℚ)
  oldHi := (9062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_888]
}

noncomputable def cell_11203 : Cell := { cellDefaults with
  domain := ⟨(1148268156424581 / 2000000000000000 : ℚ), (229690223463687151 / 400000000000000000 : ℚ)⟩
  center := (459343854748603351 / 800000000000000000 : ℚ)
  supportValue := (56588097853157 / 156250000000000 : ℚ)
  supportSlope := (-2991718637740561 / 2000000000000000 : ℚ)
  oldCenter := (56588097853157 / 156250000000000 : ℚ)
  oldLo := (9050000000000001 / 25000000000000000 : ℚ)
  oldHi := (9062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_888]
}

noncomputable def cell_11204 : Cell := { cellDefaults with
  domain := ⟨(229690223463687151 / 400000000000000000 : ℚ), (114863407821229051 / 200000000000000000 : ℚ)⟩
  center := (459417039106145253 / 800000000000000000 : ℚ)
  supportValue := (4525341174021627 / 12500000000000000 : ℚ)
  supportSlope := (-7475484985193671 / 5000000000000000 : ℚ)
  oldCenter := (4525341174021627 / 12500000000000000 : ℚ)
  oldHi := (9062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_887, piece_888]
}

noncomputable def cell_11205 : Cell := { cellDefaults with
  domain := ⟨(114863407821229051 / 200000000000000000 : ℚ), (229763407821229053 / 400000000000000000 : ℚ)⟩
  center := (91898044692737431 / 160000000000000000 : ℚ)
  supportValue := (36189025439454797 / 100000000000000000 : ℚ)
  supportSlope := (-747467351675473 / 500000000000000 : ℚ)
  oldCenter := (36189025439454797 / 100000000000000000 : ℚ)
  oldPieces := [piece_887]
}

noncomputable def cell_11206 : Cell := { cellDefaults with
  domain := ⟨(229763407821229053 / 400000000000000000 : ℚ), (57450000000000001 / 100000000000000000 : ℚ)⟩
  center := (459563407821229057 / 800000000000000000 : ℚ)
  supportValue := (7235071068837331 / 20000000000000000 : ℚ)
  supportSlope := (-2987405743620879 / 2000000000000000 : ℚ)
  oldCenter := (7235071068837331 / 20000000000000000 : ℚ)
  oldPieces := [piece_887]
}

noncomputable def cell_11207 : Cell := { cellDefaults with
  domain := ⟨(57450000000000001 / 100000000000000000 : ℚ), (22985000000000001 / 40000000000000000 : ℚ)⟩
  r := (5710985115139 / 10000000000000 : ℚ)
  w := (14104912950519 / 10000000000000 : ℚ)
  center := (229825000000000007 / 400000000000000000 : ℚ)
  supportValue := (723962296482199 / 2000000000000000 : ℚ)
  supportSlope := (-14943671910463847 / 10000000000000000 : ℚ)
  oldCenter := (723962296482199 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1352
  oldHi := (9062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_887, piece_888]
}

noncomputable def cell_11208 : Cell := { cellDefaults with
  domain := ⟨(22985000000000001 / 40000000000000000 : ℚ), (14368750000000001 / 25000000000000000 : ℚ)⟩
  r := (5710985115139 / 10000000000000 : ℚ)
  w := (14104912950519 / 10000000000000 : ℚ)
  center := (229875000000000013 / 400000000000000000 : ℚ)
  supportValue := (36179412787940307 / 100000000000000000 : ℚ)
  supportSlope := (-7466471714313797 / 5000000000000000 : ℚ)
  oldCenter := (36179412787940307 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1352
  oldPieces := [piece_887]
}

noncomputable def cell_11209 : Cell := { cellDefaults with
  domain := ⟨(14368750000000001 / 25000000000000000 : ℚ), (114975000000000011 / 200000000000000000 : ℚ)⟩
  r := (5710985115139 / 10000000000000 : ℚ)
  w := (14104912950519 / 10000000000000 : ℚ)
  center := (229925000000000019 / 400000000000000000 : ℚ)
  supportValue := (289286056767207 / 800000000000000 : ℚ)
  supportSlope := (-1491617065702043 / 1000000000000000 : ℚ)
  oldCenter := (289286056767207 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1352
  oldPieces := [piece_887]
}

noncomputable def cell_11210 : Cell := { cellDefaults with
  domain := ⟨(114975000000000011 / 200000000000000000 : ℚ), (57500000000000007 / 100000000000000000 : ℚ)⟩
  r := (5710985115139 / 10000000000000 : ℚ)
  w := (14104912950519 / 10000000000000 : ℚ)
  center := (9199000000000001 / 16000000000000000 : ℚ)
  supportValue := (36142139494841263 / 100000000000000000 : ℚ)
  supportSlope := (-14913617019105971 / 10000000000000000 : ℚ)
  oldCenter := (36142139494841263 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1352
  oldLo := (9025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_886, piece_887]
}

noncomputable def cell_11211 : Cell := { cellDefaults with
  domain := ⟨(57500000000000007 / 100000000000000000 : ℚ), (115025000000000011 / 200000000000000000 : ℚ)⟩
  r := (5708075014263 / 10000000000000 : ℚ)
  w := (14101700698461 / 10000000000000 : ℚ)
  center := (9201000000000001 / 16000000000000000 : ℚ)
  supportValue := (904057269442703 / 2500000000000000 : ℚ)
  supportSlope := (-7454912944698583 / 5000000000000000 : ℚ)
  oldCenter := (904057269442703 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1353
  oldPieces := [piece_887]
}

noncomputable def cell_11212 : Cell := { cellDefaults with
  domain := ⟨(115025000000000011 / 200000000000000000 : ℚ), (14381250000000001 / 25000000000000000 : ℚ)⟩
  r := (5708075014263 / 10000000000000 : ℚ)
  w := (14101700698461 / 10000000000000 : ℚ)
  center := (230075000000000019 / 400000000000000000 : ℚ)
  supportValue := (18071841343999223 / 50000000000000000 : ℚ)
  supportSlope := (-14906017737185817 / 10000000000000000 : ℚ)
  oldCenter := (18071841343999223 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1353
  oldLo := (9025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_886, piece_887]
}

noncomputable def cell_11213 : Cell := { cellDefaults with
  domain := ⟨(14381250000000001 / 25000000000000000 : ℚ), (23015000000000001 / 40000000000000000 : ℚ)⟩
  r := (5708075014263 / 10000000000000 : ℚ)
  w := (14101700698461 / 10000000000000 : ℚ)
  center := (230125000000000013 / 400000000000000000 : ℚ)
  supportValue := (9031258074824139 / 25000000000000000 : ℚ)
  supportSlope := (-2978335697543601 / 2000000000000000 : ℚ)
  oldCenter := (9031258074824139 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1353
  oldLo := (9025000000000001 / 25000000000000000 : ℚ)
  oldHi := (9037500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_886]
}

noncomputable def cell_11214 : Cell := { cellDefaults with
  domain := ⟨(23015000000000001 / 40000000000000000 : ℚ), (57550000000000001 / 100000000000000000 : ℚ)⟩
  r := (5708075014263 / 10000000000000 : ℚ)
  w := (14101700698461 / 10000000000000 : ℚ)
  center := (230175000000000007 / 400000000000000000 : ℚ)
  supportValue := (36106453434792823 / 100000000000000000 : ℚ)
  supportSlope := (-743867011151789 / 500000000000000 : ℚ)
  oldCenter := (36106453434792823 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1353
  oldLo := (9012500000000001 / 25000000000000000 : ℚ)
  oldHi := (9037500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_885, piece_886]
}

noncomputable def cell_11215 : Cell := { cellDefaults with
  domain := ⟨(57550000000000001 / 100000000000000000 : ℚ), (23025000000000001 / 40000000000000000 : ℚ)⟩
  r := (57051683442739 / 100000000000000 : ℚ)
  w := (14098497270777 / 10000000000000 : ℚ)
  center := (230225000000000007 / 400000000000000000 : ℚ)
  supportValue := (7225311209225267 / 20000000000000000 : ℚ)
  supportSlope := (-14885347933207163 / 10000000000000000 : ℚ)
  oldCenter := (7225311209225267 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1354
  oldLo := (9025000000000001 / 25000000000000000 : ℚ)
  oldHi := (9037500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_886]
}

noncomputable def cell_11216 : Cell := { cellDefaults with
  domain := ⟨(23025000000000001 / 40000000000000000 : ℚ), (14393750000000001 / 25000000000000000 : ℚ)⟩
  r := (57051683442739 / 100000000000000 : ℚ)
  w := (14098497270777 / 10000000000000 : ℚ)
  center := (230275000000000013 / 400000000000000000 : ℚ)
  supportValue := (9026996271968439 / 25000000000000000 : ℚ)
  supportSlope := (-59478989847463 / 40000000000000 : ℚ)
  oldCenter := (9026996271968439 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1354
  oldLo := (9012500000000001 / 25000000000000000 : ℚ)
  oldHi := (9037500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_885, piece_886]
}

noncomputable def cell_11217 : Cell := { cellDefaults with
  domain := ⟨(14393750000000001 / 25000000000000000 : ℚ), (115175000000000011 / 200000000000000000 : ℚ)⟩
  r := (57051683442739 / 100000000000000 : ℚ)
  w := (14098497270777 / 10000000000000 : ℚ)
  center := (230325000000000019 / 400000000000000000 : ℚ)
  supportValue := (36089373421079823 / 100000000000000000 : ℚ)
  supportSlope := (-7433665903104011 / 5000000000000000 : ℚ)
  oldCenter := (36089373421079823 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1354
  oldLo := (9012500000000001 / 25000000000000000 : ℚ)
  oldHi := (9025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_885]
}

noncomputable def cell_11218 : Cell := { cellDefaults with
  domain := ⟨(115175000000000011 / 200000000000000000 : ℚ), (57600000000000007 / 100000000000000000 : ℚ)⟩
  r := (57051683442739 / 100000000000000 : ℚ)
  w := (14098497270777 / 10000000000000 : ℚ)
  center := (9215000000000001 / 16000000000000000 : ℚ)
  supportValue := (2254424982892491 / 6250000000000000 : ℚ)
  supportSlope := (-3712646697566323 / 2500000000000000 : ℚ)
  oldCenter := (2254424982892491 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1354
  oldLo := (9012500000000001 / 25000000000000000 : ℚ)
  oldHi := (9025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_885]
}

noncomputable def cell_11219 : Cell := { cellDefaults with
  domain := ⟨(57600000000000007 / 100000000000000000 : ℚ), (115225000000000011 / 200000000000000000 : ℚ)⟩
  r := (57022648351151 / 100000000000000 : ℚ)
  w := (1409529725227 / 1000000000000 : ℚ)
  center := (9217000000000001 / 16000000000000000 : ℚ)
  supportValue := (1804546408614083 / 5000000000000000 : ℚ)
  supportSlope := (-928804705844333 / 625000000000000 : ℚ)
  oldCenter := (1804546408614083 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1355
  oldLo := (9012500000000001 / 25000000000000000 : ℚ)
  oldHi := (9037500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_885, piece_886]
}

noncomputable def cell_11220 : Cell := { cellDefaults with
  domain := ⟨(115225000000000011 / 200000000000000000 : ℚ), (14406250000000001 / 25000000000000000 : ℚ)⟩
  r := (57022648351151 / 100000000000000 : ℚ)
  w := (1409529725227 / 1000000000000 : ℚ)
  center := (230475000000000019 / 400000000000000000 : ℚ)
  supportValue := (1803616854336807 / 5000000000000000 : ℚ)
  supportSlope := (-3711073715955583 / 2500000000000000 : ℚ)
  oldCenter := (1803616854336807 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1355
  oldLo := (9012500000000001 / 25000000000000000 : ℚ)
  oldHi := (9025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_885]
}

noncomputable def cell_11221 : Cell := { cellDefaults with
  domain := ⟨(14406250000000001 / 25000000000000000 : ℚ), (23055000000000001 / 40000000000000000 : ℚ)⟩
  r := (57022648351151 / 100000000000000 : ℚ)
  w := (1409529725227 / 1000000000000 : ℚ)
  center := (230525000000000013 / 400000000000000000 : ℚ)
  supportValue := (7210763475660753 / 20000000000000000 : ℚ)
  supportSlope := (-7416100772950963 / 5000000000000000 : ℚ)
  oldCenter := (7210763475660753 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1355
  oldLo := (9000000000000001 / 25000000000000000 : ℚ)
  oldHi := (9025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_884, piece_885]
}

noncomputable def cell_11222 : Cell := { cellDefaults with
  domain := ⟨(23055000000000001 / 40000000000000000 : ℚ), (57650000000000001 / 100000000000000000 : ℚ)⟩
  r := (57022648351151 / 100000000000000 : ℚ)
  w := (1409529725227 / 1000000000000 : ℚ)
  center := (230575000000000007 / 400000000000000000 : ℚ)
  supportValue := (3603525264743403 / 10000000000000000 : ℚ)
  supportSlope := (-14826379814032011 / 10000000000000000 : ℚ)
  oldCenter := (3603525264743403 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1355
  oldLo := (9000000000000001 / 25000000000000000 : ℚ)
  oldHi := (9012500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_884]
}

noncomputable def cell_11223 : Cell := { cellDefaults with
  domain := ⟨(57650000000000001 / 100000000000000000 : ℚ), (23065000000000001 / 40000000000000000 : ℚ)⟩
  r := (14248411977087 / 25000000000000 : ℚ)
  w := (14092105890009 / 10000000000000 : ℚ)
  center := (230625000000000007 / 400000000000000000 : ℚ)
  supportValue := (3605533522620339 / 10000000000000000 : ℚ)
  supportSlope := (-1482463719695559 / 1000000000000000 : ℚ)
  oldCenter := (3605533522620339 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1356
  oldLo := (9000000000000001 / 25000000000000000 : ℚ)
  oldHi := (9025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_884, piece_885]
}

noncomputable def cell_11224 : Cell := { cellDefaults with
  domain := ⟨(23065000000000001 / 40000000000000000 : ℚ), (14418750000000001 / 25000000000000000 : ℚ)⟩
  r := (14248411977087 / 25000000000000 : ℚ)
  w := (14092105890009 / 10000000000000 : ℚ)
  center := (230675000000000013 / 400000000000000000 : ℚ)
  supportValue := (3603677993876767 / 10000000000000000 : ℚ)
  supportSlope := (-2964020338232487 / 2000000000000000 : ℚ)
  oldCenter := (3603677993876767 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1356
  oldLo := (9000000000000001 / 25000000000000000 : ℚ)
  oldHi := (9012500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_884]
}

noncomputable def cell_11225 : Cell := { cellDefaults with
  domain := ⟨(14418750000000001 / 25000000000000000 : ℚ), (115375000000000011 / 200000000000000000 : ℚ)⟩
  r := (14248411977087 / 25000000000000 : ℚ)
  w := (14092105890009 / 10000000000000 : ℚ)
  center := (230725000000000019 / 400000000000000000 : ℚ)
  supportValue := (18009132622220217 / 50000000000000000 : ℚ)
  supportSlope := (-1480341613551417 / 1000000000000000 : ℚ)
  oldCenter := (18009132622220217 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1356
  oldLo := (9000000000000001 / 25000000000000000 : ℚ)
  oldHi := (9012500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_884]
}

noncomputable def cell_11226 : Cell := { cellDefaults with
  domain := ⟨(115375000000000011 / 200000000000000000 : ℚ), (57700000000000007 / 100000000000000000 : ℚ)⟩
  r := (14248411977087 / 25000000000000 : ℚ)
  w := (14092105890009 / 10000000000000 : ℚ)
  center := (9231000000000001 / 16000000000000000 : ℚ)
  supportValue := (8999949079022579 / 25000000000000000 : ℚ)
  supportSlope := (-1479473759895811 / 1000000000000000 : ℚ)
  oldCenter := (8999949079022579 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1356
  oldLo := (8987500000000001 / 25000000000000000 : ℚ)
  oldHi := (9012500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_883, piece_884]
}

noncomputable def cell_11227 : Cell := { cellDefaults with
  domain := ⟨(57700000000000007 / 100000000000000000 : ℚ), (115425000000000011 / 200000000000000000 : ℚ)⟩
  r := (56964682907419 / 100000000000000 : ℚ)
  w := (2817784869627 / 2000000000000 : ℚ)
  center := (9233000000000001 / 16000000000000000 : ℚ)
  supportValue := (3601976935611081 / 10000000000000000 : ℚ)
  supportSlope := (-7398565749917373 / 5000000000000000 : ℚ)
  oldCenter := (3601976935611081 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1357
  oldLo := (9000000000000001 / 25000000000000000 : ℚ)
  oldHi := (9012500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_884]
}

noncomputable def cell_11228 : Cell := { cellDefaults with
  domain := ⟨(115425000000000011 / 200000000000000000 : ℚ), (14431250000000001 / 25000000000000000 : ℚ)⟩
  r := (56964682907419 / 100000000000000 : ℚ)
  w := (2817784869627 / 2000000000000 : ℚ)
  center := (230875000000000019 / 400000000000000000 : ℚ)
  supportValue := (1800065426402401 / 5000000000000000 : ℚ)
  supportSlope := (-2957439527455107 / 2000000000000000 : ℚ)
  oldCenter := (1800065426402401 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1357
  oldLo := (8987500000000001 / 25000000000000000 : ℚ)
  oldHi := (9012500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_883, piece_884]
}

noncomputable def cell_11229 : Cell := { cellDefaults with
  domain := ⟨(14431250000000001 / 25000000000000000 : ℚ), (23095000000000001 / 40000000000000000 : ℚ)⟩
  r := (56964682907419 / 100000000000000 : ℚ)
  w := (2817784869627 / 2000000000000 : ℚ)
  center := (230925000000000013 / 400000000000000000 : ℚ)
  supportValue := (3598280004293161 / 10000000000000000 : ℚ)
  supportSlope := (-14779349475377397 / 10000000000000000 : ℚ)
  oldCenter := (3598280004293161 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1357
  oldLo := (8987500000000001 / 25000000000000000 : ℚ)
  oldHi := (9000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_883]
}

noncomputable def cell_11230 : Cell := { cellDefaults with
  domain := ⟨(23095000000000001 / 40000000000000000 : ℚ), (57750000000000001 / 100000000000000000 : ℚ)⟩
  r := (56964682907419 / 100000000000000 : ℚ)
  w := (2817784869627 / 2000000000000 : ℚ)
  center := (230975000000000007 / 400000000000000000 : ℚ)
  supportValue := (17982168129594847 / 50000000000000000 : ℚ)
  supportSlope := (-7381355706149503 / 5000000000000000 : ℚ)
  oldCenter := (17982168129594847 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1357
  oldLo := (8987500000000001 / 25000000000000000 : ℚ)
  oldHi := (9000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_883]
}

noncomputable def cell_11231 : Cell := { cellDefaults with
  domain := ⟨(57750000000000001 / 100000000000000000 : ℚ), (23105000000000001 / 40000000000000000 : ℚ)⟩
  r := (1138714995527 / 2000000000000 : ℚ)
  w := (7042873929899 / 5000000000000 : ℚ)
  center := (231025000000000007 / 400000000000000000 : ℚ)
  supportValue := (3598430544674649 / 10000000000000000 : ℚ)
  supportSlope := (-2954617376555647 / 2000000000000000 : ℚ)
  oldCenter := (3598430544674649 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1358
  oldLo := (8987500000000001 / 25000000000000000 : ℚ)
  oldHi := (9000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_883]
}

noncomputable def cell_11232 : Cell := { cellDefaults with
  domain := ⟨(23105000000000001 / 40000000000000000 : ℚ), (14443750000000001 / 25000000000000000 : ℚ)⟩
  r := (1138714995527 / 2000000000000 : ℚ)
  w := (7042873929899 / 5000000000000 : ℚ)
  center := (231075000000000013 / 400000000000000000 : ℚ)
  supportValue := (1798292474165761 / 5000000000000000 : ℚ)
  supportSlope := (-14756461494831903 / 10000000000000000 : ℚ)
  oldCenter := (1798292474165761 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1358
  oldLo := (8987500000000001 / 25000000000000000 : ℚ)
  oldHi := (9000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_883]
}

noncomputable def cell_11233 : Cell := { cellDefaults with
  domain := ⟨(14443750000000001 / 25000000000000000 : ℚ), (115575000000000011 / 200000000000000000 : ℚ)⟩
  r := (1138714995527 / 2000000000000 : ℚ)
  w := (7042873929899 / 5000000000000 : ℚ)
  center := (231125000000000019 / 400000000000000000 : ℚ)
  supportValue := (4493429585909587 / 12500000000000000 : ℚ)
  supportSlope := (-3687459424552399 / 2500000000000000 : ℚ)
  oldCenter := (4493429585909587 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1358
  oldLo := (8975000000000001 / 25000000000000000 : ℚ)
  oldHi := (9000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_882, piece_883]
}

noncomputable def cell_11234 : Cell := { cellDefaults with
  domain := ⟨(115575000000000011 / 200000000000000000 : ℚ), (57800000000000007 / 100000000000000000 : ℚ)⟩
  r := (1138714995527 / 2000000000000 : ℚ)
  w := (7042873929899 / 5000000000000 : ℚ)
  center := (9247000000000001 / 16000000000000000 : ℚ)
  supportValue := (35928977644464927 / 100000000000000000 : ℚ)
  supportSlope := (-14738780724144371 / 10000000000000000 : ℚ)
  oldCenter := (35928977644464927 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1358
  oldLo := (8975000000000001 / 25000000000000000 : ℚ)
  oldHi := (8987500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_882]
}

noncomputable def cell_11235 : Cell := { cellDefaults with
  domain := ⟨(57800000000000007 / 100000000000000000 : ℚ), (115625000000000011 / 200000000000000000 : ℚ)⟩
  r := (56906849951257 / 100000000000000 : ℚ)
  w := (14082577177233 / 10000000000000 : ℚ)
  center := (9249000000000001 / 16000000000000000 : ℚ)
  supportValue := (8987234996524919 / 25000000000000000 : ℚ)
  supportSlope := (-1474232596652313 / 1000000000000000 : ℚ)
  oldCenter := (8987234996524919 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1359
  oldLo := (8975000000000001 / 25000000000000000 : ℚ)
  oldHi := (9000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_882, piece_883]
}

noncomputable def cell_11236 : Cell := { cellDefaults with
  domain := ⟨(115625000000000011 / 200000000000000000 : ℚ), (14456250000000001 / 25000000000000000 : ℚ)⟩
  r := (56906849951257 / 100000000000000 : ℚ)
  w := (14082577177233 / 10000000000000 : ℚ)
  center := (231275000000000019 / 400000000000000000 : ℚ)
  supportValue := (7186097747628739 / 20000000000000000 : ℚ)
  supportSlope := (-14732550149016521 / 10000000000000000 : ℚ)
  oldCenter := (7186097747628739 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1359
  oldLo := (8975000000000001 / 25000000000000000 : ℚ)
  oldHi := (8987500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_882]
}

noncomputable def cell_11237 : Cell := { cellDefaults with
  domain := ⟨(14456250000000001 / 25000000000000000 : ℚ), (23135000000000001 / 40000000000000000 : ℚ)⟩
  r := (56906849951257 / 100000000000000 : ℚ)
  w := (14082577177233 / 10000000000000 : ℚ)
  center := (231325000000000013 / 400000000000000000 : ℚ)
  supportValue := (1795604170786827 / 5000000000000000 : ℚ)
  supportSlope := (-588638903429199 / 400000000000000 : ℚ)
  oldCenter := (1795604170786827 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1359
  oldLo := (8975000000000001 / 25000000000000000 : ℚ)
  oldHi := (8987500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_882]
}

noncomputable def cell_11238 : Cell := { cellDefaults with
  domain := ⟨(23135000000000001 / 40000000000000000 : ℚ), (57850000000000001 / 100000000000000000 : ℚ)⟩
  r := (56906849951257 / 100000000000000 : ℚ)
  w := (14082577177233 / 10000000000000 : ℚ)
  center := (231375000000000007 / 400000000000000000 : ℚ)
  supportValue := (7178743443304717 / 20000000000000000 : ℚ)
  supportSlope := (-58850232358381 / 40000000000000 : ℚ)
  oldCenter := (7178743443304717 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1359
  oldLo := (8962500000000001 / 25000000000000000 : ℚ)
  oldHi := (8987500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_881, piece_882]
}

noncomputable def cell_11239 : Cell := { cellDefaults with
  domain := ⟨(57850000000000001 / 100000000000000000 : ℚ), (23145000000000001 / 40000000000000000 : ℚ)⟩
  r := (11375597045407 / 20000000000000 : ℚ)
  w := (14079416659017 / 10000000000000 : ℚ)
  center := (231425000000000007 / 400000000000000000 : ℚ)
  supportValue := (448919634156009 / 1250000000000000 : ℚ)
  supportSlope := (-7354867619721267 / 5000000000000000 : ℚ)
  oldCenter := (448919634156009 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1360
  oldLo := (8975000000000001 / 25000000000000000 : ℚ)
  oldHi := (8987500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_882]
}

noncomputable def cell_11240 : Cell := { cellDefaults with
  domain := ⟨(23145000000000001 / 40000000000000000 : ℚ), (14468750000000001 / 25000000000000000 : ℚ)⟩
  r := (11375597045407 / 20000000000000 : ℚ)
  w := (14079416659017 / 10000000000000 : ℚ)
  center := (231475000000000013 / 400000000000000000 : ℚ)
  supportValue := (1794760695237187 / 5000000000000000 : ℚ)
  supportSlope := (-3676267617822141 / 2500000000000000 : ℚ)
  oldCenter := (1794760695237187 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1360
  oldLo := (8962500000000001 / 25000000000000000 : ℚ)
  oldHi := (8987500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_881, piece_882]
}

noncomputable def cell_11241 : Cell := { cellDefaults with
  domain := ⟨(14468750000000001 / 25000000000000000 : ℚ), (115775000000000011 / 200000000000000000 : ℚ)⟩
  r := (11375597045407 / 20000000000000 : ℚ)
  w := (14079416659017 / 10000000000000 : ℚ)
  center := (231525000000000019 / 400000000000000000 : ℚ)
  supportValue := (717536263572399 / 2000000000000000 : ℚ)
  supportSlope := (-1469218417929953 / 1000000000000000 : ℚ)
  oldCenter := (717536263572399 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1360
  oldLo := (8962500000000001 / 25000000000000000 : ℚ)
  oldHi := (8975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_881]
}

noncomputable def cell_11242 : Cell := { cellDefaults with
  domain := ⟨(115775000000000011 / 200000000000000000 : ℚ), (57900000000000007 / 100000000000000000 : ℚ)⟩
  r := (11375597045407 / 20000000000000 : ℚ)
  w := (14079416659017 / 10000000000000 : ℚ)
  center := (9263000000000001 / 16000000000000000 : ℚ)
  supportValue := (3585848338787911 / 10000000000000000 : ℚ)
  supportSlope := (-14676265684341787 / 10000000000000000 : ℚ)
  oldCenter := (3585848338787911 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1360
  oldLo := (3584357541899441 / 10000000000000000 : ℚ)
  oldHi := (8975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_880, piece_881]
}

noncomputable def cell_11243 : Cell := { cellDefaults with
  domain := ⟨(57900000000000007 / 100000000000000000 : ℚ), (231650000000000023 / 400000000000000000 : ℚ)⟩
  r := (56849154404381 / 100000000000000 : ℚ)
  w := (14076263820347 / 10000000000000 : ℚ)
  center := (463250000000000051 / 800000000000000000 : ℚ)
  supportValue := (1793914658450209 / 5000000000000000 : ℚ)
  supportSlope := (-917872652298571 / 625000000000000 : ℚ)
  oldCenter := (1793914658450209 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1361
  oldLo := (8962500000000001 / 25000000000000000 : ℚ)
  oldHi := (8975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_881]
}

noncomputable def cell_11244 : Cell := { cellDefaults with
  domain := ⟨(231650000000000023 / 400000000000000000 : ℚ), (115850000000000009 / 200000000000000000 : ℚ)⟩
  r := (56849154404381 / 100000000000000 : ℚ)
  w := (14076263820347 / 10000000000000 : ℚ)
  center := (463350000000000041 / 800000000000000000 : ℚ)
  supportValue := (4482493255823107 / 12500000000000000 : ℚ)
  supportSlope := (-14669440310470039 / 10000000000000000 : ℚ)
  oldCenter := (4482493255823107 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1361
  oldLo := (8962500000000001 / 25000000000000000 : ℚ)
  oldHi := (8975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_881]
}

noncomputable def cell_11245 : Cell := { cellDefaults with
  domain := ⟨(115850000000000009 / 200000000000000000 : ℚ), (231750000000000013 / 400000000000000000 : ℚ)⟩
  r := (56849154404381 / 100000000000000 : ℚ)
  w := (14076263820347 / 10000000000000 : ℚ)
  center := (463450000000000031 / 800000000000000000 : ℚ)
  supportValue := (3584163569319117 / 10000000000000000 : ℚ)
  supportSlope := (-1466788906622587 / 1000000000000000 : ℚ)
  oldCenter := (3584163569319117 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1361
  oldLo := (8950000000000001 / 25000000000000000 : ℚ)
  oldHi := (8975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_879, piece_880, piece_881]
}

noncomputable def cell_11246 : Cell := { cellDefaults with
  domain := ⟨(231750000000000013 / 400000000000000000 : ℚ), (28975000000000001 / 50000000000000000 : ℚ)⟩
  r := (56849154404381 / 100000000000000 : ℚ)
  w := (14076263820347 / 10000000000000 : ℚ)
  center := (463550000000000021 / 800000000000000000 : ℚ)
  supportValue := (35823285278235073 / 100000000000000000 : ℚ)
  supportSlope := (-14651983644419573 / 10000000000000000 : ℚ)
  oldCenter := (35823285278235073 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1361
  oldLo := (8950000000000001 / 25000000000000000 : ℚ)
  oldHi := (3584357541899441 / 10000000000000000 : ℚ)
  oldPieces := [piece_879]
}

noncomputable def cell_11247 : Cell := { cellDefaults with
  domain := ⟨(28975000000000001 / 50000000000000000 : ℚ), (28979120111731843 / 50000000000000000 : ℚ)⟩
  r := (14205088760261 / 25000000000000 : ℚ)
  w := (14073114483721 / 10000000000000 : ℚ)
  center := (14488530027932961 / 25000000000000000 : ℚ)
  supportValue := (358462439466271 / 1000000000000000 : ℚ)
  supportSlope := (-293245228672549 / 200000000000000 : ℚ)
  oldCenter := (358462439466271 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1362
  oldLo := (8950000000000001 / 25000000000000000 : ℚ)
  oldHi := (8975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_879, piece_880, piece_881]
}

noncomputable def cell_11248 : Cell := { cellDefaults with
  domain := ⟨(28979120111731843 / 50000000000000000 : ℚ), (5796648044692737 / 10000000000000000 : ℚ)⟩
  r := (14205088760261 / 25000000000000 : ℚ)
  w := (14073114483721 / 10000000000000 : ℚ)
  center := (7245295041899441 / 12500000000000000 : ℚ)
  supportValue := (8958534730800359 / 25000000000000000 : ℚ)
  supportSlope := (-2930849934733637 / 2000000000000000 : ℚ)
  oldCenter := (8958534730800359 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1362
  oldLo := (8950000000000001 / 25000000000000000 : ℚ)
  oldHi := (3584357541899441 / 10000000000000000 : ℚ)
  oldPieces := [piece_879]
}

noncomputable def cell_11249 : Cell := { cellDefaults with
  domain := ⟨(5796648044692737 / 10000000000000000 : ℚ), (115966480446927377 / 200000000000000000 : ℚ)⟩
  r := (14205088760261 / 25000000000000 : ℚ)
  w := (14073114483721 / 10000000000000 : ℚ)
  center := (231899441340782117 / 400000000000000000 : ℚ)
  supportValue := (35815856507450033 / 100000000000000000 : ℚ)
  supportSlope := (-7318868235530751 / 5000000000000000 : ℚ)
  oldCenter := (35815856507450033 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1363
  oldLo := (8950000000000001 / 25000000000000000 : ℚ)
  oldHi := (3584357541899441 / 10000000000000000 : ℚ)
  oldPieces := [piece_879]
}

theorem check_11200 : cell_11200.check = true := by
  decide +kernel

theorem check_11201 : cell_11201.check = true := by
  decide +kernel

theorem check_11202 : cell_11202.check = true := by
  decide +kernel

theorem check_11203 : cell_11203.check = true := by
  decide +kernel

theorem check_11204 : cell_11204.check = true := by
  decide +kernel

theorem check_11205 : cell_11205.check = true := by
  decide +kernel

theorem check_11206 : cell_11206.check = true := by
  decide +kernel

theorem check_11207 : cell_11207.check = true := by
  decide +kernel

theorem check_11208 : cell_11208.check = true := by
  decide +kernel

theorem check_11209 : cell_11209.check = true := by
  decide +kernel

theorem check_11210 : cell_11210.check = true := by
  decide +kernel

theorem check_11211 : cell_11211.check = true := by
  decide +kernel

theorem check_11212 : cell_11212.check = true := by
  decide +kernel

theorem check_11213 : cell_11213.check = true := by
  decide +kernel

theorem check_11214 : cell_11214.check = true := by
  decide +kernel

theorem check_11215 : cell_11215.check = true := by
  decide +kernel

theorem check_11216 : cell_11216.check = true := by
  decide +kernel

theorem check_11217 : cell_11217.check = true := by
  decide +kernel

theorem check_11218 : cell_11218.check = true := by
  decide +kernel

theorem check_11219 : cell_11219.check = true := by
  decide +kernel

theorem check_11220 : cell_11220.check = true := by
  decide +kernel

theorem check_11221 : cell_11221.check = true := by
  decide +kernel

theorem check_11222 : cell_11222.check = true := by
  decide +kernel

theorem check_11223 : cell_11223.check = true := by
  decide +kernel

theorem check_11224 : cell_11224.check = true := by
  decide +kernel

theorem check_11225 : cell_11225.check = true := by
  decide +kernel

theorem check_11226 : cell_11226.check = true := by
  decide +kernel

theorem check_11227 : cell_11227.check = true := by
  decide +kernel

theorem check_11228 : cell_11228.check = true := by
  decide +kernel

theorem check_11229 : cell_11229.check = true := by
  decide +kernel

theorem check_11230 : cell_11230.check = true := by
  decide +kernel

theorem check_11231 : cell_11231.check = true := by
  decide +kernel

theorem check_11232 : cell_11232.check = true := by
  decide +kernel

theorem check_11233 : cell_11233.check = true := by
  decide +kernel

theorem check_11234 : cell_11234.check = true := by
  decide +kernel

theorem check_11235 : cell_11235.check = true := by
  decide +kernel

theorem check_11236 : cell_11236.check = true := by
  decide +kernel

theorem check_11237 : cell_11237.check = true := by
  decide +kernel

theorem check_11238 : cell_11238.check = true := by
  decide +kernel

theorem check_11239 : cell_11239.check = true := by
  decide +kernel

theorem check_11240 : cell_11240.check = true := by
  decide +kernel

theorem check_11241 : cell_11241.check = true := by
  decide +kernel

theorem check_11242 : cell_11242.check = true := by
  decide +kernel

theorem check_11243 : cell_11243.check = true := by
  decide +kernel

theorem check_11244 : cell_11244.check = true := by
  decide +kernel

theorem check_11245 : cell_11245.check = true := by
  decide +kernel

theorem check_11246 : cell_11246.check = true := by
  decide +kernel

theorem check_11247 : cell_11247.check = true := by
  decide +kernel

theorem check_11248 : cell_11248.check = true := by
  decide +kernel

theorem check_11249 : cell_11249.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11200, cell_11201, cell_11202, cell_11203, cell_11204, cell_11205, cell_11206, cell_11207, cell_11208, cell_11209, cell_11210, cell_11211, cell_11212, cell_11213, cell_11214, cell_11215, cell_11216, cell_11217, cell_11218, cell_11219, cell_11220, cell_11221, cell_11222, cell_11223, cell_11224, cell_11225, cell_11226, cell_11227, cell_11228, cell_11229, cell_11230, cell_11231, cell_11232, cell_11233, cell_11234, cell_11235, cell_11236, cell_11237, cell_11238, cell_11239, cell_11240, cell_11241, cell_11242, cell_11243, cell_11244, cell_11245, cell_11246, cell_11247, cell_11248, cell_11249]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11200, check_11201, check_11202, check_11203, check_11204, check_11205, check_11206, check_11207, check_11208, check_11209, check_11210, check_11211, check_11212, check_11213, check_11214, check_11215, check_11216, check_11217, check_11218, check_11219, check_11220, check_11221, check_11222, check_11223, check_11224, check_11225, check_11226, check_11227, check_11228, check_11229, check_11230, check_11231, check_11232, check_11233, check_11234, check_11235, check_11236, check_11237, check_11238, check_11239, check_11240, check_11241, check_11242, check_11243, check_11244, check_11245, check_11246, check_11247, check_11248, check_11249, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0224

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0224
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0224
open AnalyticBounds.ExpressionCertificate

theorem linked_11200 : Linked cell_11200 pieces := by
  link_source cell_11200 with piece_1349 using piece_1349_mem, piece_888_mem

theorem linked_11201 : Linked cell_11201 pieces := by
  link_source cell_11201 with piece_1349 using piece_1349_mem, piece_888_mem

theorem linked_11202 : Linked cell_11202 pieces := by
  link_source cell_11202 with piece_1350 using piece_1350_mem, piece_888_mem

theorem linked_11203 : Linked cell_11203 pieces := by
  link_source cell_11203 with piece_1351 using piece_1351_mem, piece_888_mem

theorem linked_11204 : Linked cell_11204 pieces := by
  link_source cell_11204 with piece_1351 using piece_1351_mem, ⟨piece_887_mem, piece_888_mem⟩

theorem linked_11205 : Linked cell_11205 pieces := by
  link_source cell_11205 with piece_1351 using piece_1351_mem, piece_887_mem

theorem linked_11206 : Linked cell_11206 pieces := by
  link_source cell_11206 with piece_1351 using piece_1351_mem, piece_887_mem

theorem linked_11207 : Linked cell_11207 pieces := by
  link_source cell_11207 with piece_1352 using piece_1352_mem, ⟨piece_887_mem, piece_888_mem⟩

theorem linked_11208 : Linked cell_11208 pieces := by
  link_source cell_11208 with piece_1352 using piece_1352_mem, piece_887_mem

theorem linked_11209 : Linked cell_11209 pieces := by
  link_source cell_11209 with piece_1352 using piece_1352_mem, piece_887_mem

theorem linked_11210 : Linked cell_11210 pieces := by
  link_source cell_11210 with piece_1352 using piece_1352_mem, ⟨piece_886_mem, piece_887_mem⟩

theorem linked_11211 : Linked cell_11211 pieces := by
  link_source cell_11211 with piece_1353 using piece_1353_mem, piece_887_mem

theorem linked_11212 : Linked cell_11212 pieces := by
  link_source cell_11212 with piece_1353 using piece_1353_mem, ⟨piece_886_mem, piece_887_mem⟩

theorem linked_11213 : Linked cell_11213 pieces := by
  link_source cell_11213 with piece_1353 using piece_1353_mem, piece_886_mem

theorem linked_11214 : Linked cell_11214 pieces := by
  link_source cell_11214 with piece_1353 using piece_1353_mem, ⟨piece_885_mem, piece_886_mem⟩

theorem linked_11215 : Linked cell_11215 pieces := by
  link_source cell_11215 with piece_1354 using piece_1354_mem, piece_886_mem

theorem linked_11216 : Linked cell_11216 pieces := by
  link_source cell_11216 with piece_1354 using piece_1354_mem, ⟨piece_885_mem, piece_886_mem⟩

theorem linked_11217 : Linked cell_11217 pieces := by
  link_source cell_11217 with piece_1354 using piece_1354_mem, piece_885_mem

theorem linked_11218 : Linked cell_11218 pieces := by
  link_source cell_11218 with piece_1354 using piece_1354_mem, piece_885_mem

theorem linked_11219 : Linked cell_11219 pieces := by
  link_source cell_11219 with piece_1355 using piece_1355_mem, ⟨piece_885_mem, piece_886_mem⟩

theorem linked_11220 : Linked cell_11220 pieces := by
  link_source cell_11220 with piece_1355 using piece_1355_mem, piece_885_mem

theorem linked_11221 : Linked cell_11221 pieces := by
  link_source cell_11221 with piece_1355 using piece_1355_mem, ⟨piece_884_mem, piece_885_mem⟩

theorem linked_11222 : Linked cell_11222 pieces := by
  link_source cell_11222 with piece_1355 using piece_1355_mem, piece_884_mem

theorem linked_11223 : Linked cell_11223 pieces := by
  link_source cell_11223 with piece_1356 using piece_1356_mem, ⟨piece_884_mem, piece_885_mem⟩

theorem linked_11224 : Linked cell_11224 pieces := by
  link_source cell_11224 with piece_1356 using piece_1356_mem, piece_884_mem

theorem linked_11225 : Linked cell_11225 pieces := by
  link_source cell_11225 with piece_1356 using piece_1356_mem, piece_884_mem

theorem linked_11226 : Linked cell_11226 pieces := by
  link_source cell_11226 with piece_1356 using piece_1356_mem, ⟨piece_883_mem, piece_884_mem⟩

theorem linked_11227 : Linked cell_11227 pieces := by
  link_source cell_11227 with piece_1357 using piece_1357_mem, piece_884_mem

theorem linked_11228 : Linked cell_11228 pieces := by
  link_source cell_11228 with piece_1357 using piece_1357_mem, ⟨piece_883_mem, piece_884_mem⟩

theorem linked_11229 : Linked cell_11229 pieces := by
  link_source cell_11229 with piece_1357 using piece_1357_mem, piece_883_mem

theorem linked_11230 : Linked cell_11230 pieces := by
  link_source cell_11230 with piece_1357 using piece_1357_mem, piece_883_mem

theorem linked_11231 : Linked cell_11231 pieces := by
  link_source cell_11231 with piece_1358 using piece_1358_mem, piece_883_mem

theorem linked_11232 : Linked cell_11232 pieces := by
  link_source cell_11232 with piece_1358 using piece_1358_mem, piece_883_mem

theorem linked_11233 : Linked cell_11233 pieces := by
  link_source cell_11233 with piece_1358 using piece_1358_mem, ⟨piece_882_mem, piece_883_mem⟩

theorem linked_11234 : Linked cell_11234 pieces := by
  link_source cell_11234 with piece_1358 using piece_1358_mem, piece_882_mem

theorem linked_11235 : Linked cell_11235 pieces := by
  link_source cell_11235 with piece_1359 using piece_1359_mem, ⟨piece_882_mem, piece_883_mem⟩

theorem linked_11236 : Linked cell_11236 pieces := by
  link_source cell_11236 with piece_1359 using piece_1359_mem, piece_882_mem

theorem linked_11237 : Linked cell_11237 pieces := by
  link_source cell_11237 with piece_1359 using piece_1359_mem, piece_882_mem

theorem linked_11238 : Linked cell_11238 pieces := by
  link_source cell_11238 with piece_1359 using piece_1359_mem, ⟨piece_881_mem, piece_882_mem⟩

theorem linked_11239 : Linked cell_11239 pieces := by
  link_source cell_11239 with piece_1360 using piece_1360_mem, piece_882_mem

theorem linked_11240 : Linked cell_11240 pieces := by
  link_source cell_11240 with piece_1360 using piece_1360_mem, ⟨piece_881_mem, piece_882_mem⟩

theorem linked_11241 : Linked cell_11241 pieces := by
  link_source cell_11241 with piece_1360 using piece_1360_mem, piece_881_mem

theorem linked_11242 : Linked cell_11242 pieces := by
  link_source cell_11242 with piece_1360 using piece_1360_mem, ⟨piece_880_mem, piece_881_mem⟩

theorem linked_11243 : Linked cell_11243 pieces := by
  link_source cell_11243 with piece_1361 using piece_1361_mem, piece_881_mem

theorem linked_11244 : Linked cell_11244 pieces := by
  link_source cell_11244 with piece_1361 using piece_1361_mem, piece_881_mem

theorem linked_11245 : Linked cell_11245 pieces := by
  link_source cell_11245 with piece_1361 using piece_1361_mem, ⟨piece_879_mem, ⟨piece_880_mem, piece_881_mem⟩⟩

theorem linked_11246 : Linked cell_11246 pieces := by
  link_source cell_11246 with piece_1361 using piece_1361_mem, piece_879_mem

theorem linked_11247 : Linked cell_11247 pieces := by
  link_source cell_11247 with piece_1362 using piece_1362_mem, ⟨piece_879_mem, ⟨piece_880_mem, piece_881_mem⟩⟩

theorem linked_11248 : Linked cell_11248 pieces := by
  link_source cell_11248 with piece_1362 using piece_1362_mem, piece_879_mem

theorem linked_11249 : Linked cell_11249 pieces := by
  link_source cell_11249 with piece_1363 using piece_1363_mem, piece_879_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0224.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0224.cells,List.forall_mem_cons]
  exact ⟨linked_11200, linked_11201, linked_11202, linked_11203, linked_11204, linked_11205, linked_11206, linked_11207, linked_11208, linked_11209, linked_11210, linked_11211, linked_11212, linked_11213, linked_11214, linked_11215, linked_11216, linked_11217, linked_11218, linked_11219, linked_11220, linked_11221, linked_11222, linked_11223, linked_11224, linked_11225, linked_11226, linked_11227, linked_11228, linked_11229, linked_11230, linked_11231, linked_11232, linked_11233, linked_11234, linked_11235, linked_11236, linked_11237, linked_11238, linked_11239, linked_11240, linked_11241, linked_11242, linked_11243, linked_11244, linked_11245, linked_11246, linked_11247, linked_11248, linked_11249, by simp⟩

theorem covered : covers (14343750000000001 / 25000000000000000 : ℚ) (115966480446927377 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0224.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0224
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0225
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(115966480446927377 / 200000000000000000 : ℚ), (231966480446927391 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (56791589744419 / 100000000000000 : ℚ)
  w := (2813994853449 / 2000000000000 : ℚ)
  center := (92779888268156429 / 160000000000000000 : ℚ)
  supportValue := (35797464758685443 / 100000000000000000 : ℚ)
  supportSlope := (-3658072675042781 / 2500000000000000 : ℚ)
  oldCenter := (35797464758685443 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1364
  oldLo := (8937500000000001 / 25000000000000000 : ℚ)
  oldHi := (8950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_878]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11250 : Cell := { cellDefaults with
  r := (14205088760261 / 25000000000000 : ℚ)
  w := (14073114483721 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1363
  oldHi := (3584357541899441 / 10000000000000000 : ℚ)
  oldPieces := [piece_878, piece_879]
}

noncomputable def cell_11251 : Cell := { cellDefaults with
  domain := ⟨(231966480446927391 / 400000000000000000 : ℚ), (58000000000000007 / 100000000000000000 : ℚ)⟩
  r := (14205088760261 / 25000000000000 : ℚ)
  w := (14073114483721 / 10000000000000 : ℚ)
  center := (463966480446927419 / 800000000000000000 : ℚ)
  supportValue := (3578517883210751 / 10000000000000000 : ℚ)
  supportSlope := (-7312877311873147 / 5000000000000000 : ℚ)
  oldCenter := (3578517883210751 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1363
  oldPieces := [piece_878]
}

noncomputable def cell_11252 : Cell := { cellDefaults with
  domain := ⟨(58000000000000007 / 100000000000000000 : ℚ), (232050000000000023 / 400000000000000000 : ℚ)⟩
  center := (464050000000000051 / 800000000000000000 : ℚ)
  supportValue := (716159571383043 / 2000000000000000 : ℚ)
  supportSlope := (-1828018803675851 / 1250000000000000 : ℚ)
  oldCenter := (716159571383043 / 2000000000000000 : ℚ)
  oldHi := (3584357541899441 / 10000000000000000 : ℚ)
  oldPieces := [piece_878, piece_879]
}

noncomputable def cell_11253 : Cell := { cellDefaults with
  domain := ⟨(232050000000000023 / 400000000000000000 : ℚ), (116050000000000009 / 200000000000000000 : ℚ)⟩
  center := (464150000000000041 / 800000000000000000 : ℚ)
  supportValue := (4473709225994197 / 12500000000000000 : ℚ)
  supportSlope := (-1827788535043911 / 1250000000000000 : ℚ)
  oldCenter := (4473709225994197 / 12500000000000000 : ℚ)
  oldPieces := [piece_878]
}

noncomputable def cell_11254 : Cell := { cellDefaults with
  domain := ⟨(116050000000000009 / 200000000000000000 : ℚ), (232150000000000013 / 400000000000000000 : ℚ)⟩
  center := (464250000000000031 / 800000000000000000 : ℚ)
  supportValue := (8942851559103021 / 25000000000000000 : ℚ)
  supportSlope := (-91286332202021 / 62500000000000 : ℚ)
  oldCenter := (8942851559103021 / 25000000000000000 : ℚ)
  oldPieces := [piece_878]
}

noncomputable def cell_11255 : Cell := { cellDefaults with
  domain := ⟨(232150000000000013 / 400000000000000000 : ℚ), (29025000000000001 / 50000000000000000 : ℚ)⟩
  center := (464350000000000021 / 800000000000000000 : ℚ)
  supportValue := (3575318427171533 / 10000000000000000 : ℚ)
  supportSlope := (-14594518567402697 / 10000000000000000 : ℚ)
  oldCenter := (3575318427171533 / 10000000000000000 : ℚ)
  oldLo := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_877, piece_878]
}

noncomputable def cell_11256 : Cell := { cellDefaults with
  domain := ⟨(29025000000000001 / 50000000000000000 : ℚ), (232250000000000013 / 400000000000000000 : ℚ)⟩
  r := (56762858931251 / 100000000000000 : ℚ)
  w := (281336880617 / 200000000000 : ℚ)
  center := (464450000000000021 / 800000000000000000 : ℚ)
  supportValue := (35772865054979347 / 100000000000000000 : ℚ)
  supportSlope := (-912477152049027 / 625000000000000 : ℚ)
  oldCenter := (35772865054979347 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1365
  oldPieces := [piece_878]
}

noncomputable def cell_11257 : Cell := { cellDefaults with
  domain := ⟨(232250000000000013 / 400000000000000000 : ℚ), (116150000000000009 / 200000000000000000 : ℚ)⟩
  r := (56762858931251 / 100000000000000 : ℚ)
  w := (281336880617 / 200000000000 : ℚ)
  center := (464550000000000031 / 800000000000000000 : ℚ)
  supportValue := (1787732540343169 / 5000000000000000 : ℚ)
  supportSlope := (-14587087826355079 / 10000000000000000 : ℚ)
  oldCenter := (1787732540343169 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1365
  oldLo := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_877, piece_878]
}

noncomputable def cell_11258 : Cell := { cellDefaults with
  domain := ⟨(116150000000000009 / 200000000000000000 : ℚ), (232350000000000023 / 400000000000000000 : ℚ)⟩
  r := (56762858931251 / 100000000000000 : ℚ)
  w := (281336880617 / 200000000000 : ℚ)
  center := (464650000000000041 / 800000000000000000 : ℚ)
  supportValue := (3573639237530813 / 10000000000000000 : ℚ)
  supportSlope := (-1458245079788721 / 1000000000000000 : ℚ)
  oldCenter := (3573639237530813 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1365
  oldLo := (8925000000000001 / 25000000000000000 : ℚ)
  oldHi := (8937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_877]
}

noncomputable def cell_11259 : Cell := { cellDefaults with
  domain := ⟨(232350000000000023 / 400000000000000000 : ℚ), (58100000000000007 / 100000000000000000 : ℚ)⟩
  r := (56762858931251 / 100000000000000 : ℚ)
  w := (281336880617 / 200000000000 : ℚ)
  center := (464750000000000051 / 800000000000000000 : ℚ)
  supportValue := (4464771825144543 / 12500000000000000 : ℚ)
  supportSlope := (-2913198964719463 / 2000000000000000 : ℚ)
  oldCenter := (4464771825144543 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1365
  oldLo := (8925000000000001 / 25000000000000000 : ℚ)
  oldHi := (8937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_877]
}

noncomputable def cell_11260 : Cell := { cellDefaults with
  domain := ⟨(58100000000000007 / 100000000000000000 : ℚ), (232450000000000023 / 400000000000000000 : ℚ)⟩
  r := (28367079911113 / 50000000000000 : ℚ)
  w := (14063716848633 / 10000000000000 : ℚ)
  center := (464850000000000051 / 800000000000000000 : ℚ)
  supportValue := (17868928377807533 / 50000000000000000 : ℚ)
  supportSlope := (-2915259488331337 / 2000000000000000 : ℚ)
  oldCenter := (17868928377807533 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1366
  oldLo := (8925000000000001 / 25000000000000000 : ℚ)
  oldHi := (8937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_877]
}

noncomputable def cell_11261 : Cell := { cellDefaults with
  domain := ⟨(232450000000000023 / 400000000000000000 : ℚ), (116250000000000009 / 200000000000000000 : ℚ)⟩
  r := (28367079911113 / 50000000000000 : ℚ)
  w := (14063716848633 / 10000000000000 : ℚ)
  center := (464950000000000041 / 800000000000000000 : ℚ)
  supportValue := (7143929333067447 / 20000000000000000 : ℚ)
  supportSlope := (-3639963492121731 / 2500000000000000 : ℚ)
  oldCenter := (7143929333067447 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1366
  oldLo := (8925000000000001 / 25000000000000000 : ℚ)
  oldHi := (8937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_877]
}

noncomputable def cell_11262 : Cell := { cellDefaults with
  domain := ⟨(116250000000000009 / 200000000000000000 : ℚ), (232550000000000013 / 400000000000000000 : ℚ)⟩
  r := (28367079911113 / 50000000000000 : ℚ)
  w := (14063716848633 / 10000000000000 : ℚ)
  center := (465050000000000031 / 800000000000000000 : ℚ)
  supportValue := (714029641624291 / 2000000000000000 : ℚ)
  supportSlope := (-7275043326272107 / 5000000000000000 : ℚ)
  oldCenter := (714029641624291 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1366
  oldLo := (8912500000000001 / 25000000000000000 : ℚ)
  oldHi := (8937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_876, piece_877]
}

noncomputable def cell_11263 : Cell := { cellDefaults with
  domain := ⟨(232550000000000013 / 400000000000000000 : ℚ), (29075000000000001 / 50000000000000000 : ℚ)⟩
  r := (28367079911113 / 50000000000000 : ℚ)
  w := (14063716848633 / 10000000000000 : ℚ)
  center := (465150000000000021 / 800000000000000000 : ℚ)
  supportValue := (1784163495009249 / 5000000000000000 : ℚ)
  supportSlope := (-727138525730881 / 500000000000000 : ℚ)
  oldCenter := (1784163495009249 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1366
  oldLo := (8912500000000001 / 25000000000000000 : ℚ)
  oldHi := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_876]
}

noncomputable def cell_11264 : Cell := { cellDefaults with
  domain := ⟨(29075000000000001 / 50000000000000000 : ℚ), (232650000000000013 / 400000000000000000 : ℚ)⟩
  r := (11341098997243 / 20000000000000 : ℚ)
  w := (14060598353471 / 10000000000000 : ℚ)
  center := (465250000000000021 / 800000000000000000 : ℚ)
  supportValue := (1785146721004427 / 5000000000000000 : ℚ)
  supportSlope := (-14542683073653573 / 10000000000000000 : ℚ)
  oldCenter := (1785146721004427 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1367
  oldLo := (8912500000000001 / 25000000000000000 : ℚ)
  oldHi := (8937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_876, piece_877]
}

noncomputable def cell_11265 : Cell := { cellDefaults with
  domain := ⟨(232650000000000013 / 400000000000000000 : ℚ), (116350000000000009 / 200000000000000000 : ℚ)⟩
  r := (11341098997243 / 20000000000000 : ℚ)
  w := (14060598353471 / 10000000000000 : ℚ)
  center := (465350000000000031 / 800000000000000000 : ℚ)
  supportValue := (35684731481682663 / 100000000000000000 : ℚ)
  supportSlope := (-181708034079779 / 125000000000000 : ℚ)
  oldCenter := (35684731481682663 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1367
  oldLo := (8912500000000001 / 25000000000000000 : ℚ)
  oldHi := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_876]
}

noncomputable def cell_11266 : Cell := { cellDefaults with
  domain := ⟨(116350000000000009 / 200000000000000000 : ℚ), (232750000000000023 / 400000000000000000 : ℚ)⟩
  r := (11341098997243 / 20000000000000 : ℚ)
  w := (14060598353471 / 10000000000000 : ℚ)
  center := (465450000000000041 / 800000000000000000 : ℚ)
  supportValue := (35666570935243863 / 100000000000000000 : ℚ)
  supportSlope := (-14520238552771727 / 10000000000000000 : ℚ)
  oldCenter := (35666570935243863 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1367
  oldLo := (8912500000000001 / 25000000000000000 : ℚ)
  oldHi := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_876]
}

noncomputable def cell_11267 : Cell := { cellDefaults with
  domain := ⟨(232750000000000023 / 400000000000000000 : ℚ), (58200000000000007 / 100000000000000000 : ℚ)⟩
  r := (11341098997243 / 20000000000000 : ℚ)
  w := (14060598353471 / 10000000000000 : ℚ)
  center := (465550000000000051 / 800000000000000000 : ℚ)
  supportValue := (17824227043629143 / 50000000000000000 : ℚ)
  supportSlope := (-3628288291299323 / 2500000000000000 : ℚ)
  oldCenter := (17824227043629143 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1367
  oldLo := (8900000000000001 / 25000000000000000 : ℚ)
  oldHi := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_875, piece_876]
}

noncomputable def cell_11268 : Cell := { cellDefaults with
  domain := ⟨(58200000000000007 / 100000000000000000 : ℚ), (232850000000000023 / 400000000000000000 : ℚ)⟩
  r := (3542303976819 / 6250000000000 : ℚ)
  w := (7028744496443 / 5000000000000 : ℚ)
  center := (465650000000000051 / 800000000000000000 : ℚ)
  supportValue := (35668012528305443 / 100000000000000000 : ℚ)
  supportSlope := (-14514106130595679 / 10000000000000000 : ℚ)
  oldCenter := (35668012528305443 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1368
  oldLo := (8912500000000001 / 25000000000000000 : ℚ)
  oldHi := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_876]
}

noncomputable def cell_11269 : Cell := { cellDefaults with
  domain := ⟨(232850000000000023 / 400000000000000000 : ℚ), (116450000000000009 / 200000000000000000 : ℚ)⟩
  r := (3542303976819 / 6250000000000 : ℚ)
  w := (7028744496443 / 5000000000000 : ℚ)
  center := (465750000000000041 / 800000000000000000 : ℚ)
  supportValue := (891247622955289 / 2500000000000000 : ℚ)
  supportSlope := (-1813221532795021 / 1250000000000000 : ℚ)
  oldCenter := (891247622955289 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1368
  oldLo := (8900000000000001 / 25000000000000000 : ℚ)
  oldHi := (8925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_875, piece_876]
}

noncomputable def cell_11270 : Cell := { cellDefaults with
  domain := ⟨(116450000000000009 / 200000000000000000 : ℚ), (232950000000000013 / 400000000000000000 : ℚ)⟩
  r := (3542303976819 / 6250000000000 : ℚ)
  w := (7028744496443 / 5000000000000 : ℚ)
  center := (465850000000000031 / 800000000000000000 : ℚ)
  supportValue := (712634965192887 / 2000000000000000 : ℚ)
  supportSlope := (-3624288263608751 / 2500000000000000 : ℚ)
  oldCenter := (712634965192887 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1368
  oldLo := (8900000000000001 / 25000000000000000 : ℚ)
  oldHi := (8912500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_875]
}

noncomputable def cell_11271 : Cell := { cellDefaults with
  domain := ⟨(232950000000000013 / 400000000000000000 : ℚ), (29125000000000001 / 50000000000000000 : ℚ)⟩
  r := (3542303976819 / 6250000000000 : ℚ)
  w := (7028744496443 / 5000000000000 : ℚ)
  center := (465950000000000021 / 800000000000000000 : ℚ)
  supportValue := (7122727410026689 / 20000000000000000 : ℚ)
  supportSlope := (-1448078914902207 / 1000000000000000 : ℚ)
  oldCenter := (7122727410026689 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1368
  oldLo := (8900000000000001 / 25000000000000000 : ℚ)
  oldHi := (8912500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_875]
}

noncomputable def cell_11272 : Cell := { cellDefaults with
  domain := ⟨(29125000000000001 / 50000000000000000 : ℚ), (233050000000000013 / 400000000000000000 : ℚ)⟩
  r := (56648265458909 / 100000000000000 : ℚ)
  w := (1756798165641 / 1250000000000 : ℚ)
  center := (466050000000000021 / 800000000000000000 : ℚ)
  supportValue := (890829684920881 / 2500000000000000 : ℚ)
  supportSlope := (-7245519802120789 / 5000000000000000 : ℚ)
  oldCenter := (890829684920881 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1369
  oldLo := (8900000000000001 / 25000000000000000 : ℚ)
  oldHi := (8912500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_875]
}

noncomputable def cell_11273 : Cell := { cellDefaults with
  domain := ⟨(233050000000000013 / 400000000000000000 : ℚ), (116550000000000009 / 200000000000000000 : ℚ)⟩
  r := (56648265458909 / 100000000000000 : ℚ)
  w := (1756798165641 / 1250000000000 : ℚ)
  center := (466150000000000031 / 800000000000000000 : ℚ)
  supportValue := (356150838213887 / 1000000000000000 : ℚ)
  supportSlope := (-723734404161219 / 500000000000000 : ℚ)
  oldCenter := (356150838213887 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1369
  oldLo := (8900000000000001 / 25000000000000000 : ℚ)
  oldHi := (8912500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_875]
}

noncomputable def cell_11274 : Cell := { cellDefaults with
  domain := ⟨(116550000000000009 / 200000000000000000 : ℚ), (233150000000000023 / 400000000000000000 : ℚ)⟩
  r := (56648265458909 / 100000000000000 : ℚ)
  w := (1756798165641 / 1250000000000 : ℚ)
  center := (466250000000000041 / 800000000000000000 : ℚ)
  supportValue := (17798511133809203 / 50000000000000000 : ℚ)
  supportSlope := (-1446892773803687 / 1000000000000000 : ℚ)
  oldCenter := (17798511133809203 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1369
  oldLo := (8887500000000001 / 25000000000000000 : ℚ)
  oldHi := (8912500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_874, piece_875]
}

noncomputable def cell_11275 : Cell := { cellDefaults with
  domain := ⟨(233150000000000023 / 400000000000000000 : ℚ), (58300000000000007 / 100000000000000000 : ℚ)⟩
  r := (56648265458909 / 100000000000000 : ℚ)
  w := (1756798165641 / 1250000000000 : ℚ)
  center := (466350000000000051 / 800000000000000000 : ℚ)
  supportValue := (8894728704473219 / 25000000000000000 : ℚ)
  supportSlope := (-14457836195898797 / 10000000000000000 : ℚ)
  oldCenter := (8894728704473219 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1369
  oldLo := (8887500000000001 / 25000000000000000 : ℚ)
  oldHi := (8900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_874]
}

noncomputable def cell_11276 : Cell := { cellDefaults with
  domain := ⟨(58300000000000007 / 100000000000000000 : ℚ), (233250000000000023 / 400000000000000000 : ℚ)⟩
  r := (56619699135593 / 100000000000000 : ℚ)
  w := (27443920623 / 19531250000 : ℚ)
  center := (466450000000000051 / 800000000000000000 : ℚ)
  supportValue := (35598460275732213 / 100000000000000000 : ℚ)
  supportSlope := (-3615393650287319 / 2500000000000000 : ℚ)
  oldCenter := (35598460275732213 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1370
  oldLo := (8887500000000001 / 25000000000000000 : ℚ)
  oldHi := (8912500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_874, piece_875]
}

noncomputable def cell_11277 : Cell := { cellDefaults with
  domain := ⟨(233250000000000023 / 400000000000000000 : ℚ), (116650000000000009 / 200000000000000000 : ℚ)⟩
  r := (56619699135593 / 100000000000000 : ℚ)
  w := (27443920623 / 19531250000 : ℚ)
  center := (466550000000000041 / 800000000000000000 : ℚ)
  supportValue := (7116072086800499 / 20000000000000000 : ℚ)
  supportSlope := (-7225877305182149 / 5000000000000000 : ℚ)
  oldCenter := (7116072086800499 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1370
  oldLo := (8887500000000001 / 25000000000000000 : ℚ)
  oldHi := (8900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_874]
}

noncomputable def cell_11278 : Cell := { cellDefaults with
  domain := ⟨(116650000000000009 / 200000000000000000 : ℚ), (233350000000000013 / 400000000000000000 : ℚ)⟩
  r := (56619699135593 / 100000000000000 : ℚ)
  w := (27443920623 / 19531250000 : ℚ)
  center := (466650000000000031 / 800000000000000000 : ℚ)
  supportValue := (3556230593985061 / 10000000000000000 : ℚ)
  supportSlope := (-7217721506519059 / 5000000000000000 : ℚ)
  oldCenter := (3556230593985061 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1370
  oldLo := (8887500000000001 / 25000000000000000 : ℚ)
  oldHi := (8900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_874]
}

noncomputable def cell_11279 : Cell := { cellDefaults with
  domain := ⟨(233350000000000013 / 400000000000000000 : ℚ), (29175000000000001 / 50000000000000000 : ℚ)⟩
  r := (56619699135593 / 100000000000000 : ℚ)
  w := (27443920623 / 19531250000 : ℚ)
  center := (466750000000000021 / 800000000000000000 : ℚ)
  supportValue := (14217716145299 / 40000000000000 : ℚ)
  supportSlope := (-7216072986944877 / 5000000000000000 : ℚ)
  oldCenter := (14217716145299 / 40000000000000 : ℚ)
  newCoefficients := coefficients_1370
  oldLo := (8875000000000001 / 25000000000000000 : ℚ)
  oldHi := (8900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_873, piece_874]
}

noncomputable def cell_11280 : Cell := { cellDefaults with
  domain := ⟨(29175000000000001 / 50000000000000000 : ℚ), (233450000000000013 / 400000000000000000 : ℚ)⟩
  r := (28295583494931 / 50000000000000 : ℚ)
  w := (7024099483207 / 5000000000000 : ℚ)
  center := (466850000000000021 / 800000000000000000 : ℚ)
  supportValue := (3556372965338261 / 10000000000000000 : ℚ)
  supportSlope := (-1442935605135387 / 1000000000000000 : ℚ)
  oldCenter := (3556372965338261 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1371
  oldLo := (8887500000000001 / 25000000000000000 : ℚ)
  oldHi := (8900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_874]
}

noncomputable def cell_11281 : Cell := { cellDefaults with
  domain := ⟨(233450000000000013 / 400000000000000000 : ℚ), (116750000000000009 / 200000000000000000 : ℚ)⟩
  r := (28295583494931 / 50000000000000 : ℚ)
  w := (7024099483207 / 5000000000000 : ℚ)
  center := (466950000000000031 / 800000000000000000 : ℚ)
  supportValue := (888643081291447 / 2500000000000000 : ℚ)
  supportSlope := (-901550963081553 / 625000000000000 : ℚ)
  oldCenter := (888643081291447 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1371
  oldLo := (8875000000000001 / 25000000000000000 : ℚ)
  oldHi := (8900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_873, piece_874]
}

noncomputable def cell_11282 : Cell := { cellDefaults with
  domain := ⟨(116750000000000009 / 200000000000000000 : ℚ), (233550000000000023 / 400000000000000000 : ℚ)⟩
  r := (28295583494931 / 50000000000000 : ℚ)
  w := (7024099483207 / 5000000000000 : ℚ)
  center := (467050000000000041 / 800000000000000000 : ℚ)
  supportValue := (17763836187342183 / 50000000000000000 : ℚ)
  supportSlope := (-14412633506076469 / 10000000000000000 : ℚ)
  oldCenter := (17763836187342183 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1371
  oldLo := (8875000000000001 / 25000000000000000 : ℚ)
  oldHi := (8887500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_873]
}

noncomputable def cell_11283 : Cell := { cellDefaults with
  domain := ⟨(233550000000000023 / 400000000000000000 : ℚ), (58400000000000007 / 100000000000000000 : ℚ)⟩
  r := (28295583494931 / 50000000000000 : ℚ)
  w := (7024099483207 / 5000000000000 : ℚ)
  center := (467150000000000051 / 800000000000000000 : ℚ)
  supportValue := (1420386670220263 / 4000000000000000 : ℚ)
  supportSlope := (-14396364162737267 / 10000000000000000 : ℚ)
  oldCenter := (1420386670220263 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1371
  oldLo := (8875000000000001 / 25000000000000000 : ℚ)
  oldHi := (8887500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_873]
}

noncomputable def cell_11284 : Cell := { cellDefaults with
  domain := ⟨(58400000000000007 / 100000000000000000 : ℚ), (233650000000000023 / 400000000000000000 : ℚ)⟩
  r := (56562668319861 / 100000000000000 : ℚ)
  w := (14045118110853 / 10000000000000 : ℚ)
  center := (467250000000000051 / 800000000000000000 : ℚ)
  supportValue := (3552908878987713 / 10000000000000000 : ℚ)
  supportSlope := (-14406561138066483 / 10000000000000000 : ℚ)
  oldCenter := (3552908878987713 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1372
  oldLo := (8875000000000001 / 25000000000000000 : ℚ)
  oldHi := (8887500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_873]
}

noncomputable def cell_11285 : Cell := { cellDefaults with
  domain := ⟨(233650000000000023 / 400000000000000000 : ℚ), (116850000000000009 / 200000000000000000 : ℚ)⟩
  r := (56562668319861 / 100000000000000 : ℚ)
  w := (14045118110853 / 10000000000000 : ℚ)
  center := (467350000000000041 / 800000000000000000 : ℚ)
  supportValue := (8877772688315029 / 25000000000000000 : ℚ)
  supportSlope := (-14390304420414441 / 10000000000000000 : ℚ)
  oldCenter := (8877772688315029 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1372
  oldLo := (8875000000000001 / 25000000000000000 : ℚ)
  oldHi := (8887500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_873]
}

noncomputable def cell_11286 : Cell := { cellDefaults with
  domain := ⟨(116850000000000009 / 200000000000000000 : ℚ), (233750000000000013 / 400000000000000000 : ℚ)⟩
  r := (56562668319861 / 100000000000000 : ℚ)
  w := (14045118110853 / 10000000000000 : ℚ)
  center := (467450000000000031 / 800000000000000000 : ℚ)
  supportValue := (1774656510925179 / 5000000000000000 : ℚ)
  supportSlope := (-7194061199454369 / 5000000000000000 : ℚ)
  oldCenter := (1774656510925179 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1372
  oldLo := (8862500000000001 / 25000000000000000 : ℚ)
  oldHi := (8887500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_872, piece_873]
}

noncomputable def cell_11287 : Cell := { cellDefaults with
  domain := ⟨(233750000000000013 / 400000000000000000 : ℚ), (29225000000000001 / 50000000000000000 : ℚ)⟩
  r := (56562668319861 / 100000000000000 : ℚ)
  w := (14045118110853 / 10000000000000 : ℚ)
  center := (467550000000000021 / 800000000000000000 : ℚ)
  supportValue := (221719550570009 / 625000000000000 : ℚ)
  supportSlope := (-1437368483328571 / 1000000000000000 : ℚ)
  oldCenter := (221719550570009 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1372
  oldLo := (8862500000000001 / 25000000000000000 : ℚ)
  oldHi := (8875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_872]
}

noncomputable def cell_11288 : Cell := { cellDefaults with
  domain := ⟨(29225000000000001 / 50000000000000000 : ℚ), (116925000000000007 / 200000000000000000 : ℚ)⟩
  r := (7066775073509 / 12500000000000 : ℚ)
  w := (14042041044443 / 10000000000000 : ℚ)
  center := (233825000000000011 / 400000000000000000 : ℚ)
  supportValue := (3549455067926751 / 10000000000000000 : ℚ)
  supportSlope := (-14380818046396067 / 10000000000000000 : ℚ)
  oldCenter := (3549455067926751 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1373
  oldLo := (8862500000000001 / 25000000000000000 : ℚ)
  oldHi := (8887500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_872, piece_873]
}

noncomputable def cell_11289 : Cell := { cellDefaults with
  domain := ⟨(116925000000000007 / 200000000000000000 : ℚ), (11695000000000001 / 20000000000000000 : ℚ)⟩
  r := (7066775073509 / 12500000000000 : ℚ)
  w := (14042041044443 / 10000000000000 : ℚ)
  center := (233875000000000017 / 400000000000000000 : ℚ)
  supportValue := (17738278052315967 / 50000000000000000 : ℚ)
  supportSlope := (-7183824001345789 / 5000000000000000 : ℚ)
  oldCenter := (17738278052315967 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1373
  oldLo := (8862500000000001 / 25000000000000000 : ℚ)
  oldHi := (8875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_872]
}

noncomputable def cell_11290 : Cell := { cellDefaults with
  domain := ⟨(11695000000000001 / 20000000000000000 : ℚ), (116975000000000013 / 200000000000000000 : ℚ)⟩
  r := (7066775073509 / 12500000000000 : ℚ)
  w := (14042041044443 / 10000000000000 : ℚ)
  center := (233925000000000023 / 400000000000000000 : ℚ)
  supportValue := (886465787594853 / 2500000000000000 : ℚ)
  supportSlope := (-7175882123910099 / 5000000000000000 : ℚ)
  oldCenter := (886465787594853 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1373
  oldLo := (8850000000000001 / 25000000000000000 : ℚ)
  oldHi := (8875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_871, piece_872]
}

noncomputable def cell_11291 : Cell := { cellDefaults with
  domain := ⟨(116975000000000013 / 200000000000000000 : ℚ), (7312500000000001 / 12500000000000000 : ℚ)⟩
  r := (7066775073509 / 12500000000000 : ℚ)
  w := (14042041044443 / 10000000000000 : ℚ)
  center := (233975000000000029 / 400000000000000000 : ℚ)
  supportValue := (3544066712721347 / 10000000000000000 : ℚ)
  supportSlope := (-14351162321968813 / 10000000000000000 : ℚ)
  oldCenter := (3544066712721347 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1373
  oldLo := (8850000000000001 / 25000000000000000 : ℚ)
  oldHi := (8862500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_871]
}

noncomputable def cell_11292 : Cell := { cellDefaults with
  domain := ⟨(7312500000000001 / 12500000000000000 : ℚ), (29254888268156427 / 50000000000000000 : ℚ)⟩
  r := (28252883489611 / 50000000000000 : ℚ)
  w := (14038973885991 / 10000000000000 : ℚ)
  center := (58504888268156431 / 100000000000000000 : ℚ)
  supportValue := (3546196550401453 / 10000000000000000 : ℚ)
  supportSlope := (-7173575682013399 / 5000000000000000 : ℚ)
  oldCenter := (3546196550401453 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1374
  oldLo := (8862500000000001 / 25000000000000000 : ℚ)
  oldHi := (8875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_872]
}

noncomputable def cell_11293 : Cell := { cellDefaults with
  domain := ⟨(29254888268156427 / 50000000000000000 : ℚ), (585195530726257 / 1000000000000000 : ℚ)⟩
  r := (28252883489611 / 50000000000000 : ℚ)
  w := (14038973885991 / 10000000000000 : ℚ)
  center := (58514664804469277 / 100000000000000000 : ℚ)
  supportValue := (3544796765180049 / 10000000000000000 : ℚ)
  supportSlope := (-1434481980080221 / 1000000000000000 : ℚ)
  oldCenter := (3544796765180049 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1374
  oldLo := (8850000000000001 / 25000000000000000 : ℚ)
  oldHi := (8875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_871, piece_872]
}

noncomputable def cell_11294 : Cell := { cellDefaults with
  domain := ⟨(585195530726257 / 1000000000000000 : ℚ), (58534776536312851 / 100000000000000000 : ℚ)⟩
  r := (28252883489611 / 50000000000000 : ℚ)
  w := (14038973885991 / 10000000000000 : ℚ)
  center := (117054329608938551 / 200000000000000000 : ℚ)
  supportValue := (110718874171299 / 312500000000000 : ℚ)
  supportSlope := (-14334201566702123 / 10000000000000000 : ℚ)
  oldCenter := (110718874171299 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1375
  oldLo := (8850000000000001 / 25000000000000000 : ℚ)
  oldHi := (8862500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_871]
}

noncomputable def cell_11295 : Cell := { cellDefaults with
  domain := ⟨(58534776536312851 / 100000000000000000 : ℚ), (29275000000000001 / 50000000000000000 : ℚ)⟩
  r := (28252883489611 / 50000000000000 : ℚ)
  w := (14038973885991 / 10000000000000 : ℚ)
  center := (117084776536312853 / 200000000000000000 : ℚ)
  supportValue := (17704116556909333 / 50000000000000000 : ℚ)
  supportSlope := (-14316469571554973 / 10000000000000000 : ℚ)
  oldCenter := (17704116556909333 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1375
  oldLo := (8837500000000001 / 25000000000000000 : ℚ)
  oldHi := (8862500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_870, piece_871]
}

noncomputable def cell_11296 : Cell := { cellDefaults with
  domain := ⟨(29275000000000001 / 50000000000000000 : ℚ), (117125000000000007 / 200000000000000000 : ℚ)⟩
  r := (451818946527 / 800000000000 : ℚ)
  w := (14035915616917 / 10000000000000 : ℚ)
  center := (234225000000000011 / 400000000000000000 : ℚ)
  supportValue := (35425553238835317 / 100000000000000000 : ℚ)
  supportSlope := (-1432286929109067 / 1000000000000000 : ℚ)
  oldCenter := (35425553238835317 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1376
  oldLo := (8850000000000001 / 25000000000000000 : ℚ)
  oldHi := (8862500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_871]
}

noncomputable def cell_11297 : Cell := { cellDefaults with
  domain := ⟨(117125000000000007 / 200000000000000000 : ℚ), (11715000000000001 / 20000000000000000 : ℚ)⟩
  r := (451818946527 / 800000000000 : ℚ)
  w := (14035915616917 / 10000000000000 : ℚ)
  center := (234275000000000017 / 400000000000000000 : ℚ)
  supportValue := (708153690817767 / 2000000000000000 : ℚ)
  supportSlope := (-14307864902496863 / 10000000000000000 : ℚ)
  oldCenter := (708153690817767 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1376
  oldLo := (8837500000000001 / 25000000000000000 : ℚ)
  oldHi := (8862500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_870, piece_871]
}

noncomputable def cell_11298 : Cell := { cellDefaults with
  domain := ⟨(11715000000000001 / 20000000000000000 : ℚ), (117175000000000013 / 200000000000000000 : ℚ)⟩
  r := (451818946527 / 800000000000 : ℚ)
  w := (14035915616917 / 10000000000000 : ℚ)
  center := (234325000000000023 / 400000000000000000 : ℚ)
  supportValue := (17694887512481833 / 50000000000000000 : ℚ)
  supportSlope := (-1430651670505873 / 1000000000000000 : ℚ)
  oldCenter := (17694887512481833 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1376
  oldLo := (8837500000000001 / 25000000000000000 : ℚ)
  oldHi := (8850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_870]
}

noncomputable def cell_11299 : Cell := { cellDefaults with
  domain := ⟨(117175000000000013 / 200000000000000000 : ℚ), (7325000000000001 / 12500000000000000 : ℚ)⟩
  r := (451818946527 / 800000000000 : ℚ)
  w := (14035915616917 / 10000000000000 : ℚ)
  center := (234375000000000029 / 400000000000000000 : ℚ)
  supportValue := (707438040107729 / 2000000000000000 : ℚ)
  supportSlope := (-7145160845504459 / 5000000000000000 : ℚ)
  oldCenter := (707438040107729 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1376
  oldLo := (8837500000000001 / 25000000000000000 : ℚ)
  oldHi := (8850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_870]
}

theorem check_11250 : cell_11250.check = true := by
  decide +kernel

theorem check_11251 : cell_11251.check = true := by
  decide +kernel

theorem check_11252 : cell_11252.check = true := by
  decide +kernel

theorem check_11253 : cell_11253.check = true := by
  decide +kernel

theorem check_11254 : cell_11254.check = true := by
  decide +kernel

theorem check_11255 : cell_11255.check = true := by
  decide +kernel

theorem check_11256 : cell_11256.check = true := by
  decide +kernel

theorem check_11257 : cell_11257.check = true := by
  decide +kernel

theorem check_11258 : cell_11258.check = true := by
  decide +kernel

theorem check_11259 : cell_11259.check = true := by
  decide +kernel

theorem check_11260 : cell_11260.check = true := by
  decide +kernel

theorem check_11261 : cell_11261.check = true := by
  decide +kernel

theorem check_11262 : cell_11262.check = true := by
  decide +kernel

theorem check_11263 : cell_11263.check = true := by
  decide +kernel

theorem check_11264 : cell_11264.check = true := by
  decide +kernel

theorem check_11265 : cell_11265.check = true := by
  decide +kernel

theorem check_11266 : cell_11266.check = true := by
  decide +kernel

theorem check_11267 : cell_11267.check = true := by
  decide +kernel

theorem check_11268 : cell_11268.check = true := by
  decide +kernel

theorem check_11269 : cell_11269.check = true := by
  decide +kernel

theorem check_11270 : cell_11270.check = true := by
  decide +kernel

theorem check_11271 : cell_11271.check = true := by
  decide +kernel

theorem check_11272 : cell_11272.check = true := by
  decide +kernel

theorem check_11273 : cell_11273.check = true := by
  decide +kernel

theorem check_11274 : cell_11274.check = true := by
  decide +kernel

theorem check_11275 : cell_11275.check = true := by
  decide +kernel

theorem check_11276 : cell_11276.check = true := by
  decide +kernel

theorem check_11277 : cell_11277.check = true := by
  decide +kernel

theorem check_11278 : cell_11278.check = true := by
  decide +kernel

theorem check_11279 : cell_11279.check = true := by
  decide +kernel

theorem check_11280 : cell_11280.check = true := by
  decide +kernel

theorem check_11281 : cell_11281.check = true := by
  decide +kernel

theorem check_11282 : cell_11282.check = true := by
  decide +kernel

theorem check_11283 : cell_11283.check = true := by
  decide +kernel

theorem check_11284 : cell_11284.check = true := by
  decide +kernel

theorem check_11285 : cell_11285.check = true := by
  decide +kernel

theorem check_11286 : cell_11286.check = true := by
  decide +kernel

theorem check_11287 : cell_11287.check = true := by
  decide +kernel

theorem check_11288 : cell_11288.check = true := by
  decide +kernel

theorem check_11289 : cell_11289.check = true := by
  decide +kernel

theorem check_11290 : cell_11290.check = true := by
  decide +kernel

theorem check_11291 : cell_11291.check = true := by
  decide +kernel

theorem check_11292 : cell_11292.check = true := by
  decide +kernel

theorem check_11293 : cell_11293.check = true := by
  decide +kernel

theorem check_11294 : cell_11294.check = true := by
  decide +kernel

theorem check_11295 : cell_11295.check = true := by
  decide +kernel

theorem check_11296 : cell_11296.check = true := by
  decide +kernel

theorem check_11297 : cell_11297.check = true := by
  decide +kernel

theorem check_11298 : cell_11298.check = true := by
  decide +kernel

theorem check_11299 : cell_11299.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11250, cell_11251, cell_11252, cell_11253, cell_11254, cell_11255, cell_11256, cell_11257, cell_11258, cell_11259, cell_11260, cell_11261, cell_11262, cell_11263, cell_11264, cell_11265, cell_11266, cell_11267, cell_11268, cell_11269, cell_11270, cell_11271, cell_11272, cell_11273, cell_11274, cell_11275, cell_11276, cell_11277, cell_11278, cell_11279, cell_11280, cell_11281, cell_11282, cell_11283, cell_11284, cell_11285, cell_11286, cell_11287, cell_11288, cell_11289, cell_11290, cell_11291, cell_11292, cell_11293, cell_11294, cell_11295, cell_11296, cell_11297, cell_11298, cell_11299]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11250, check_11251, check_11252, check_11253, check_11254, check_11255, check_11256, check_11257, check_11258, check_11259, check_11260, check_11261, check_11262, check_11263, check_11264, check_11265, check_11266, check_11267, check_11268, check_11269, check_11270, check_11271, check_11272, check_11273, check_11274, check_11275, check_11276, check_11277, check_11278, check_11279, check_11280, check_11281, check_11282, check_11283, check_11284, check_11285, check_11286, check_11287, check_11288, check_11289, check_11290, check_11291, check_11292, check_11293, check_11294, check_11295, check_11296, check_11297, check_11298, check_11299, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0225

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0225
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0225
open AnalyticBounds.ExpressionCertificate

theorem linked_11250 : Linked cell_11250 pieces := by
  link_source cell_11250 with piece_1363 using piece_1363_mem, ⟨piece_878_mem, piece_879_mem⟩

theorem linked_11251 : Linked cell_11251 pieces := by
  link_source cell_11251 with piece_1363 using piece_1363_mem, piece_878_mem

theorem linked_11252 : Linked cell_11252 pieces := by
  link_source cell_11252 with piece_1364 using piece_1364_mem, ⟨piece_878_mem, piece_879_mem⟩

theorem linked_11253 : Linked cell_11253 pieces := by
  link_source cell_11253 with piece_1364 using piece_1364_mem, piece_878_mem

theorem linked_11254 : Linked cell_11254 pieces := by
  link_source cell_11254 with piece_1364 using piece_1364_mem, piece_878_mem

theorem linked_11255 : Linked cell_11255 pieces := by
  link_source cell_11255 with piece_1364 using piece_1364_mem, ⟨piece_877_mem, piece_878_mem⟩

theorem linked_11256 : Linked cell_11256 pieces := by
  link_source cell_11256 with piece_1365 using piece_1365_mem, piece_878_mem

theorem linked_11257 : Linked cell_11257 pieces := by
  link_source cell_11257 with piece_1365 using piece_1365_mem, ⟨piece_877_mem, piece_878_mem⟩

theorem linked_11258 : Linked cell_11258 pieces := by
  link_source cell_11258 with piece_1365 using piece_1365_mem, piece_877_mem

theorem linked_11259 : Linked cell_11259 pieces := by
  link_source cell_11259 with piece_1365 using piece_1365_mem, piece_877_mem

theorem linked_11260 : Linked cell_11260 pieces := by
  link_source cell_11260 with piece_1366 using piece_1366_mem, piece_877_mem

theorem linked_11261 : Linked cell_11261 pieces := by
  link_source cell_11261 with piece_1366 using piece_1366_mem, piece_877_mem

theorem linked_11262 : Linked cell_11262 pieces := by
  link_source cell_11262 with piece_1366 using piece_1366_mem, ⟨piece_876_mem, piece_877_mem⟩

theorem linked_11263 : Linked cell_11263 pieces := by
  link_source cell_11263 with piece_1366 using piece_1366_mem, piece_876_mem

theorem linked_11264 : Linked cell_11264 pieces := by
  link_source cell_11264 with piece_1367 using piece_1367_mem, ⟨piece_876_mem, piece_877_mem⟩

theorem linked_11265 : Linked cell_11265 pieces := by
  link_source cell_11265 with piece_1367 using piece_1367_mem, piece_876_mem

theorem linked_11266 : Linked cell_11266 pieces := by
  link_source cell_11266 with piece_1367 using piece_1367_mem, piece_876_mem

theorem linked_11267 : Linked cell_11267 pieces := by
  link_source cell_11267 with piece_1367 using piece_1367_mem, ⟨piece_875_mem, piece_876_mem⟩

theorem linked_11268 : Linked cell_11268 pieces := by
  link_source cell_11268 with piece_1368 using piece_1368_mem, piece_876_mem

theorem linked_11269 : Linked cell_11269 pieces := by
  link_source cell_11269 with piece_1368 using piece_1368_mem, ⟨piece_875_mem, piece_876_mem⟩

theorem linked_11270 : Linked cell_11270 pieces := by
  link_source cell_11270 with piece_1368 using piece_1368_mem, piece_875_mem

theorem linked_11271 : Linked cell_11271 pieces := by
  link_source cell_11271 with piece_1368 using piece_1368_mem, piece_875_mem

theorem linked_11272 : Linked cell_11272 pieces := by
  link_source cell_11272 with piece_1369 using piece_1369_mem, piece_875_mem

theorem linked_11273 : Linked cell_11273 pieces := by
  link_source cell_11273 with piece_1369 using piece_1369_mem, piece_875_mem

theorem linked_11274 : Linked cell_11274 pieces := by
  link_source cell_11274 with piece_1369 using piece_1369_mem, ⟨piece_874_mem, piece_875_mem⟩

theorem linked_11275 : Linked cell_11275 pieces := by
  link_source cell_11275 with piece_1369 using piece_1369_mem, piece_874_mem

theorem linked_11276 : Linked cell_11276 pieces := by
  link_source cell_11276 with piece_1370 using piece_1370_mem, ⟨piece_874_mem, piece_875_mem⟩

theorem linked_11277 : Linked cell_11277 pieces := by
  link_source cell_11277 with piece_1370 using piece_1370_mem, piece_874_mem

theorem linked_11278 : Linked cell_11278 pieces := by
  link_source cell_11278 with piece_1370 using piece_1370_mem, piece_874_mem

theorem linked_11279 : Linked cell_11279 pieces := by
  link_source cell_11279 with piece_1370 using piece_1370_mem, ⟨piece_873_mem, piece_874_mem⟩

theorem linked_11280 : Linked cell_11280 pieces := by
  link_source cell_11280 with piece_1371 using piece_1371_mem, piece_874_mem

theorem linked_11281 : Linked cell_11281 pieces := by
  link_source cell_11281 with piece_1371 using piece_1371_mem, ⟨piece_873_mem, piece_874_mem⟩

theorem linked_11282 : Linked cell_11282 pieces := by
  link_source cell_11282 with piece_1371 using piece_1371_mem, piece_873_mem

theorem linked_11283 : Linked cell_11283 pieces := by
  link_source cell_11283 with piece_1371 using piece_1371_mem, piece_873_mem

theorem linked_11284 : Linked cell_11284 pieces := by
  link_source cell_11284 with piece_1372 using piece_1372_mem, piece_873_mem

theorem linked_11285 : Linked cell_11285 pieces := by
  link_source cell_11285 with piece_1372 using piece_1372_mem, piece_873_mem

theorem linked_11286 : Linked cell_11286 pieces := by
  link_source cell_11286 with piece_1372 using piece_1372_mem, ⟨piece_872_mem, piece_873_mem⟩

theorem linked_11287 : Linked cell_11287 pieces := by
  link_source cell_11287 with piece_1372 using piece_1372_mem, piece_872_mem

theorem linked_11288 : Linked cell_11288 pieces := by
  link_source cell_11288 with piece_1373 using piece_1373_mem, ⟨piece_872_mem, piece_873_mem⟩

theorem linked_11289 : Linked cell_11289 pieces := by
  link_source cell_11289 with piece_1373 using piece_1373_mem, piece_872_mem

theorem linked_11290 : Linked cell_11290 pieces := by
  link_source cell_11290 with piece_1373 using piece_1373_mem, ⟨piece_871_mem, piece_872_mem⟩

theorem linked_11291 : Linked cell_11291 pieces := by
  link_source cell_11291 with piece_1373 using piece_1373_mem, piece_871_mem

theorem linked_11292 : Linked cell_11292 pieces := by
  link_source cell_11292 with piece_1374 using piece_1374_mem, piece_872_mem

theorem linked_11293 : Linked cell_11293 pieces := by
  link_source cell_11293 with piece_1374 using piece_1374_mem, ⟨piece_871_mem, piece_872_mem⟩

theorem linked_11294 : Linked cell_11294 pieces := by
  link_source cell_11294 with piece_1375 using piece_1375_mem, piece_871_mem

theorem linked_11295 : Linked cell_11295 pieces := by
  link_source cell_11295 with piece_1375 using piece_1375_mem, ⟨piece_870_mem, piece_871_mem⟩

theorem linked_11296 : Linked cell_11296 pieces := by
  link_source cell_11296 with piece_1376 using piece_1376_mem, piece_871_mem

theorem linked_11297 : Linked cell_11297 pieces := by
  link_source cell_11297 with piece_1376 using piece_1376_mem, ⟨piece_870_mem, piece_871_mem⟩

theorem linked_11298 : Linked cell_11298 pieces := by
  link_source cell_11298 with piece_1376 using piece_1376_mem, piece_870_mem

theorem linked_11299 : Linked cell_11299 pieces := by
  link_source cell_11299 with piece_1376 using piece_1376_mem, piece_870_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0225.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0225.cells,List.forall_mem_cons]
  exact ⟨linked_11250, linked_11251, linked_11252, linked_11253, linked_11254, linked_11255, linked_11256, linked_11257, linked_11258, linked_11259, linked_11260, linked_11261, linked_11262, linked_11263, linked_11264, linked_11265, linked_11266, linked_11267, linked_11268, linked_11269, linked_11270, linked_11271, linked_11272, linked_11273, linked_11274, linked_11275, linked_11276, linked_11277, linked_11278, linked_11279, linked_11280, linked_11281, linked_11282, linked_11283, linked_11284, linked_11285, linked_11286, linked_11287, linked_11288, linked_11289, linked_11290, linked_11291, linked_11292, linked_11293, linked_11294, linked_11295, linked_11296, linked_11297, linked_11298, linked_11299, by simp⟩

theorem covered : covers (115966480446927377 / 200000000000000000 : ℚ) (7325000000000001 / 12500000000000000 : ℚ)
    (SourceCertificates.Chunk0225.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0225
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0226
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
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

noncomputable def cell_11300 : Cell := { cellDefaults with
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
  link_source cell_11300 with piece_1377 using piece_1377_mem, ⟨piece_870_mem, piece_871_mem⟩

theorem linked_11301 : Linked cell_11301 pieces := by
  link_source cell_11301 with piece_1377 using piece_1377_mem, piece_870_mem

theorem linked_11302 : Linked cell_11302 pieces := by
  link_source cell_11302 with piece_1377 using piece_1377_mem, ⟨piece_869_mem, piece_870_mem⟩

theorem linked_11303 : Linked cell_11303 pieces := by
  link_source cell_11303 with piece_1377 using piece_1377_mem, piece_869_mem

theorem linked_11304 : Linked cell_11304 pieces := by
  link_source cell_11304 with piece_1378 using piece_1378_mem, ⟨piece_869_mem, piece_870_mem⟩

theorem linked_11305 : Linked cell_11305 pieces := by
  link_source cell_11305 with piece_1378 using piece_1378_mem, piece_869_mem

theorem linked_11306 : Linked cell_11306 pieces := by
  link_source cell_11306 with piece_1378 using piece_1378_mem, piece_869_mem

theorem linked_11307 : Linked cell_11307 pieces := by
  link_source cell_11307 with piece_1378 using piece_1378_mem, ⟨piece_868_mem, piece_869_mem⟩

theorem linked_11308 : Linked cell_11308 pieces := by
  link_source cell_11308 with piece_1379 using piece_1379_mem, piece_869_mem

theorem linked_11309 : Linked cell_11309 pieces := by
  link_source cell_11309 with piece_1379 using piece_1379_mem, ⟨piece_868_mem, piece_869_mem⟩

theorem linked_11310 : Linked cell_11310 pieces := by
  link_source cell_11310 with piece_1379 using piece_1379_mem, ⟨piece_867_mem, piece_868_mem⟩

theorem linked_11311 : Linked cell_11311 pieces := by
  link_source cell_11311 with piece_1379 using piece_1379_mem, piece_867_mem

theorem linked_11312 : Linked cell_11312 pieces := by
  link_source cell_11312 with piece_1380 using piece_1380_mem, ⟨piece_867_mem, piece_868_mem⟩

theorem linked_11313 : Linked cell_11313 pieces := by
  link_source cell_11313 with piece_1380 using piece_1380_mem, piece_867_mem

theorem linked_11314 : Linked cell_11314 pieces := by
  link_source cell_11314 with piece_1380 using piece_1380_mem, ⟨piece_866_mem, piece_867_mem⟩

theorem linked_11315 : Linked cell_11315 pieces := by
  link_source cell_11315 with piece_1380 using piece_1380_mem, piece_866_mem

theorem linked_11316 : Linked cell_11316 pieces := by
  link_source cell_11316 with piece_1381 using piece_1381_mem, ⟨piece_866_mem, piece_867_mem⟩

theorem linked_11317 : Linked cell_11317 pieces := by
  link_source cell_11317 with piece_1381 using piece_1381_mem, piece_866_mem

theorem linked_11318 : Linked cell_11318 pieces := by
  link_source cell_11318 with piece_1381 using piece_1381_mem, piece_866_mem

theorem linked_11319 : Linked cell_11319 pieces := by
  link_source cell_11319 with piece_1381 using piece_1381_mem, ⟨piece_865_mem, piece_866_mem⟩

theorem linked_11320 : Linked cell_11320 pieces := by
  link_source cell_11320 with piece_1382 using piece_1382_mem, piece_866_mem

theorem linked_11321 : Linked cell_11321 pieces := by
  link_source cell_11321 with piece_1382 using piece_1382_mem, ⟨piece_865_mem, piece_866_mem⟩

theorem linked_11322 : Linked cell_11322 pieces := by
  link_source cell_11322 with piece_1382 using piece_1382_mem, piece_865_mem

theorem linked_11323 : Linked cell_11323 pieces := by
  link_source cell_11323 with piece_1382 using piece_1382_mem, piece_865_mem

theorem linked_11324 : Linked cell_11324 pieces := by
  link_source cell_11324 with piece_1383 using piece_1383_mem, piece_865_mem

theorem linked_11325 : Linked cell_11325 pieces := by
  link_source cell_11325 with piece_1383 using piece_1383_mem, piece_865_mem

theorem linked_11326 : Linked cell_11326 pieces := by
  link_source cell_11326 with piece_1383 using piece_1383_mem, ⟨piece_864_mem, piece_865_mem⟩

theorem linked_11327 : Linked cell_11327 pieces := by
  link_source cell_11327 with piece_1383 using piece_1383_mem, piece_864_mem

theorem linked_11328 : Linked cell_11328 pieces := by
  link_source cell_11328 with piece_1384 using piece_1384_mem, ⟨piece_864_mem, piece_865_mem⟩

theorem linked_11329 : Linked cell_11329 pieces := by
  link_source cell_11329 with piece_1384 using piece_1384_mem, piece_864_mem

theorem linked_11330 : Linked cell_11330 pieces := by
  link_source cell_11330 with piece_1384 using piece_1384_mem, piece_864_mem

theorem linked_11331 : Linked cell_11331 pieces := by
  link_source cell_11331 with piece_1384 using piece_1384_mem, ⟨piece_863_mem, piece_864_mem⟩

theorem linked_11332 : Linked cell_11332 pieces := by
  link_source cell_11332 with piece_1385 using piece_1385_mem, piece_864_mem

theorem linked_11333 : Linked cell_11333 pieces := by
  link_source cell_11333 with piece_1385 using piece_1385_mem, ⟨piece_863_mem, piece_864_mem⟩

theorem linked_11334 : Linked cell_11334 pieces := by
  link_source cell_11334 with piece_1385 using piece_1385_mem, piece_863_mem

theorem linked_11335 : Linked cell_11335 pieces := by
  link_source cell_11335 with piece_1385 using piece_1385_mem, piece_863_mem

theorem linked_11336 : Linked cell_11336 pieces := by
  link_source cell_11336 with piece_1386 using piece_1386_mem, piece_863_mem

theorem linked_11337 : Linked cell_11337 pieces := by
  link_source cell_11337 with piece_1386 using piece_1386_mem, piece_863_mem

theorem linked_11338 : Linked cell_11338 pieces := by
  link_source cell_11338 with piece_1387 using piece_1387_mem, ⟨piece_862_mem, piece_863_mem⟩

theorem linked_11339 : Linked cell_11339 pieces := by
  link_source cell_11339 with piece_1387 using piece_1387_mem, piece_862_mem

theorem linked_11340 : Linked cell_11340 pieces := by
  link_source cell_11340 with piece_1388 using piece_1388_mem, ⟨piece_862_mem, piece_863_mem⟩

theorem linked_11341 : Linked cell_11341 pieces := by
  link_source cell_11341 with piece_1388 using piece_1388_mem, piece_862_mem

theorem linked_11342 : Linked cell_11342 pieces := by
  link_source cell_11342 with piece_1388 using piece_1388_mem, piece_862_mem

theorem linked_11343 : Linked cell_11343 pieces := by
  link_source cell_11343 with piece_1388 using piece_1388_mem, ⟨piece_861_mem, piece_862_mem⟩

theorem linked_11344 : Linked cell_11344 pieces := by
  link_source cell_11344 with piece_1389 using piece_1389_mem, piece_862_mem

theorem linked_11345 : Linked cell_11345 pieces := by
  link_source cell_11345 with piece_1389 using piece_1389_mem, ⟨piece_861_mem, piece_862_mem⟩

theorem linked_11346 : Linked cell_11346 pieces := by
  link_source cell_11346 with piece_1389 using piece_1389_mem, piece_861_mem

theorem linked_11347 : Linked cell_11347 pieces := by
  link_source cell_11347 with piece_1389 using piece_1389_mem, piece_861_mem

theorem linked_11348 : Linked cell_11348 pieces := by
  link_source cell_11348 with piece_1390 using piece_1390_mem, piece_861_mem

theorem linked_11349 : Linked cell_11349 pieces := by
  link_source cell_11349 with piece_1390 using piece_1390_mem, piece_861_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0226.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0226.cells,List.forall_mem_cons]
  exact ⟨linked_11300, linked_11301, linked_11302, linked_11303, linked_11304, linked_11305, linked_11306, linked_11307, linked_11308, linked_11309, linked_11310, linked_11311, linked_11312, linked_11313, linked_11314, linked_11315, linked_11316, linked_11317, linked_11318, linked_11319, linked_11320, linked_11321, linked_11322, linked_11323, linked_11324, linked_11325, linked_11326, linked_11327, linked_11328, linked_11329, linked_11330, linked_11331, linked_11332, linked_11333, linked_11334, linked_11335, linked_11336, linked_11337, linked_11338, linked_11339, linked_11340, linked_11341, linked_11342, linked_11343, linked_11344, linked_11345, linked_11346, linked_11347, linked_11348, linked_11349, by simp⟩

theorem covered : covers (7325000000000001 / 12500000000000000 : ℚ) (118450000000000011 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0226.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0226
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0227
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(118450000000000011 / 200000000000000000 : ℚ), (236950000000000017 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (14020795371059 / 25000000000000 : ℚ)
  w := (699691094777 / 500000000000 : ℚ)
  center := (473850000000000039 / 800000000000000000 : ℚ)
  supportValue := (34948418967042927 / 100000000000000000 : ℚ)
  supportSlope := (-13952524900961167 / 10000000000000000 : ℚ)
  oldCenter := (34948418967042927 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1391
  oldLo := (34900000000000003 / 100000000000000000 : ℚ)
  oldHi := (34950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_860]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_11350 : Cell := { cellDefaults with
  r := (56111127835293 / 100000000000000 : ℚ)
  w := (13996782891361 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1390
  oldHi := (35000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_860, piece_861]
}

noncomputable def cell_11351 : Cell := { cellDefaults with
  domain := ⟨(236950000000000017 / 400000000000000000 : ℚ), (59250000000000003 / 100000000000000000 : ℚ)⟩
  r := (56111127835293 / 100000000000000 : ℚ)
  w := (13996782891361 / 10000000000000 : ℚ)
  center := (473950000000000029 / 800000000000000000 : ℚ)
  supportValue := (3493095543352911 / 10000000000000000 : ℚ)
  supportSlope := (-13943321850692643 / 10000000000000000 : ℚ)
  oldCenter := (3493095543352911 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1390
  oldPieces := [piece_860]
}

noncomputable def cell_11352 : Cell := { cellDefaults with
  domain := ⟨(59250000000000003 / 100000000000000000 : ℚ), (237050000000000017 / 400000000000000000 : ℚ)⟩
  center := (474050000000000029 / 800000000000000000 : ℚ)
  supportValue := (4368716149628353 / 12500000000000000 : ℚ)
  supportSlope := (-13945464970042947 / 10000000000000000 : ℚ)
  oldCenter := (4368716149628353 / 12500000000000000 : ℚ)
  oldHi := (35000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_860, piece_861]
}

noncomputable def cell_11353 : Cell := { cellDefaults with
  domain := ⟨(237050000000000017 / 400000000000000000 : ℚ), (118550000000000011 / 200000000000000000 : ℚ)⟩
  center := (474150000000000039 / 800000000000000000 : ℚ)
  supportValue := (3493227294459729 / 10000000000000000 : ℚ)
  supportSlope := (-6968751068762571 / 5000000000000000 : ℚ)
  oldCenter := (3493227294459729 / 10000000000000000 : ℚ)
  oldPieces := [piece_860]
}

noncomputable def cell_11354 : Cell := { cellDefaults with
  domain := ⟨(118550000000000011 / 200000000000000000 : ℚ), (237150000000000027 / 400000000000000000 : ℚ)⟩
  center := (474250000000000049 / 800000000000000000 : ℚ)
  supportValue := (3491486094706147 / 10000000000000000 : ℚ)
  supportSlope := (-278434020375301 / 200000000000000 : ℚ)
  oldCenter := (3491486094706147 / 10000000000000000 : ℚ)
  oldPieces := [piece_860]
}

noncomputable def cell_11355 : Cell := { cellDefaults with
  domain := ⟨(237150000000000027 / 400000000000000000 : ℚ), (7412500000000001 / 12500000000000000 : ℚ)⟩
  center := (474350000000000059 / 800000000000000000 : ℚ)
  supportValue := (1744874504914673 / 5000000000000000 : ℚ)
  supportSlope := (-55666059055669 / 40000000000000 : ℚ)
  oldCenter := (1744874504914673 / 5000000000000000 : ℚ)
  oldLo := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_859, piece_860]
}

noncomputable def cell_11356 : Cell := { cellDefaults with
  domain := ⟨(7412500000000001 / 12500000000000000 : ℚ), (237250000000000027 / 400000000000000000 : ℚ)⟩
  r := (14013817115313 / 25000000000000 : ℚ)
  w := (13990870344863 / 10000000000000 : ℚ)
  center := (474450000000000059 / 800000000000000000 : ℚ)
  supportValue := (872903921407403 / 2500000000000000 : ℚ)
  supportSlope := (-13915874989020307 / 10000000000000000 : ℚ)
  oldCenter := (872903921407403 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1392
  oldPieces := [piece_860]
}

noncomputable def cell_11357 : Cell := { cellDefaults with
  domain := ⟨(237250000000000027 / 400000000000000000 : ℚ), (118650000000000011 / 200000000000000000 : ℚ)⟩
  r := (14013817115313 / 25000000000000 : ℚ)
  w := (13990870344863 / 10000000000000 : ℚ)
  center := (474550000000000049 / 800000000000000000 : ℚ)
  supportValue := (17449397408633757 / 50000000000000000 : ℚ)
  supportSlope := (-13909475624035719 / 10000000000000000 : ℚ)
  oldCenter := (17449397408633757 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1392
  oldLo := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_859, piece_860]
}

noncomputable def cell_11358 : Cell := { cellDefaults with
  domain := ⟨(118650000000000011 / 200000000000000000 : ℚ), (237350000000000017 / 400000000000000000 : ℚ)⟩
  r := (14013817115313 / 25000000000000 : ℚ)
  w := (13990870344863 / 10000000000000 : ℚ)
  center := (474650000000000039 / 800000000000000000 : ℚ)
  supportValue := (3488138464734211 / 10000000000000000 : ℚ)
  supportSlope := (-13900681311273257 / 10000000000000000 : ℚ)
  oldCenter := (3488138464734211 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1392
  oldLo := (34850000000000003 / 100000000000000000 : ℚ)
  oldHi := (34900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_859]
}

noncomputable def cell_11359 : Cell := { cellDefaults with
  domain := ⟨(237350000000000017 / 400000000000000000 : ℚ), (59350000000000003 / 100000000000000000 : ℚ)⟩
  r := (14013817115313 / 25000000000000 : ℚ)
  w := (13990870344863 / 10000000000000 : ℚ)
  center := (474750000000000029 / 800000000000000000 : ℚ)
  supportValue := (6972803731011481 / 20000000000000000 : ℚ)
  supportSlope := (-3471228364706827 / 2500000000000000 : ℚ)
  oldCenter := (6972803731011481 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1392
  oldLo := (34850000000000003 / 100000000000000000 : ℚ)
  oldHi := (34900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_859]
}

noncomputable def cell_11360 : Cell := { cellDefaults with
  domain := ⟨(59350000000000003 / 100000000000000000 : ℚ), (237450000000000017 / 400000000000000000 : ℚ)⟩
  r := (5602738706743 / 10000000000000 : ℚ)
  w := (2797584940123 / 2000000000000 : ℚ)
  center := (474850000000000029 / 800000000000000000 : ℚ)
  supportValue := (34882677556817343 / 100000000000000000 : ℚ)
  supportSlope := (-3473718094390773 / 2500000000000000 : ℚ)
  oldCenter := (34882677556817343 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1393
  oldLo := (34850000000000003 / 100000000000000000 : ℚ)
  oldHi := (34900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_859]
}

noncomputable def cell_11361 : Cell := { cellDefaults with
  domain := ⟨(237450000000000017 / 400000000000000000 : ℚ), (118750000000000011 / 200000000000000000 : ℚ)⟩
  r := (5602738706743 / 10000000000000 : ℚ)
  w := (2797584940123 / 2000000000000 : ℚ)
  center := (474950000000000039 / 800000000000000000 : ℚ)
  supportValue := (1743265940922097 / 5000000000000000 : ℚ)
  supportSlope := (-1387911612493159 / 1000000000000000 : ℚ)
  oldCenter := (1743265940922097 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1393
  oldLo := (34850000000000003 / 100000000000000000 : ℚ)
  oldHi := (34900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_859]
}

noncomputable def cell_11362 : Cell := { cellDefaults with
  domain := ⟨(118750000000000011 / 200000000000000000 : ℚ), (237550000000000027 / 400000000000000000 : ℚ)⟩
  r := (5602738706743 / 10000000000000 : ℚ)
  w := (2797584940123 / 2000000000000 : ℚ)
  center := (475050000000000049 / 800000000000000000 : ℚ)
  supportValue := (17424000863004657 / 50000000000000000 : ℚ)
  supportSlope := (-13873526514210643 / 10000000000000000 : ℚ)
  oldCenter := (17424000863004657 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1393
  oldLo := (34800000000000003 / 100000000000000000 : ℚ)
  oldHi := (34900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_858, piece_859]
}

noncomputable def cell_11363 : Cell := { cellDefaults with
  domain := ⟨(237550000000000027 / 400000000000000000 : ℚ), (7425000000000001 / 12500000000000000 : ℚ)⟩
  r := (5602738706743 / 10000000000000 : ℚ)
  w := (2797584940123 / 2000000000000 : ℚ)
  center := (475150000000000059 / 800000000000000000 : ℚ)
  supportValue := (17415318715137307 / 50000000000000000 : ℚ)
  supportSlope := (-6932011720319071 / 5000000000000000 : ℚ)
  oldCenter := (17415318715137307 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1393
  oldLo := (34800000000000003 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_858]
}

noncomputable def cell_11364 : Cell := { cellDefaults with
  domain := ⟨(7425000000000001 / 12500000000000000 : ℚ), (237650000000000027 / 400000000000000000 : ℚ)⟩
  r := (27999768398917 / 50000000000000 : ℚ)
  w := (13984985022949 / 10000000000000 : ℚ)
  center := (475250000000000059 / 800000000000000000 : ℚ)
  supportValue := (348492919622021 / 1000000000000000 : ℚ)
  supportSlope := (-6933256264827907 / 5000000000000000 : ℚ)
  oldCenter := (348492919622021 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1394
  oldLo := (34800000000000003 / 100000000000000000 : ℚ)
  oldHi := (34900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_858, piece_859]
}

noncomputable def cell_11365 : Cell := { cellDefaults with
  domain := ⟨(237650000000000027 / 400000000000000000 : ℚ), (118850000000000011 / 200000000000000000 : ℚ)⟩
  r := (27999768398917 / 50000000000000 : ℚ)
  w := (13984985022949 / 10000000000000 : ℚ)
  center := (475350000000000049 / 800000000000000000 : ℚ)
  supportValue := (348319348973841 / 1000000000000000 : ℚ)
  supportSlope := (-1732280477783239 / 1250000000000000 : ℚ)
  oldCenter := (348319348973841 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1394
  oldLo := (34800000000000003 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_858]
}

noncomputable def cell_11366 : Cell := { cellDefaults with
  domain := ⟨(118850000000000011 / 200000000000000000 : ℚ), (237750000000000017 / 400000000000000000 : ℚ)⟩
  r := (27999768398917 / 50000000000000 : ℚ)
  w := (13984985022949 / 10000000000000 : ℚ)
  center := (475450000000000039 / 800000000000000000 : ℚ)
  supportValue := (6962924385681657 / 20000000000000000 : ℚ)
  supportSlope := (-13842513671013241 / 10000000000000000 : ℚ)
  oldCenter := (6962924385681657 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1394
  oldLo := (34800000000000003 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_858]
}

noncomputable def cell_11367 : Cell := { cellDefaults with
  domain := ⟨(237750000000000017 / 400000000000000000 : ℚ), (59450000000000003 / 100000000000000000 : ℚ)⟩
  r := (27999768398917 / 50000000000000 : ℚ)
  w := (13984985022949 / 10000000000000 : ℚ)
  center := (475550000000000029 / 800000000000000000 : ℚ)
  supportValue := (17398674875420467 / 50000000000000000 : ℚ)
  supportSlope := (-3459399766703521 / 2500000000000000 : ℚ)
  oldCenter := (17398674875420467 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1394
  oldLo := (34750000000000003 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_857, piece_858]
}

noncomputable def cell_11368 : Cell := { cellDefaults with
  domain := ⟨(59450000000000003 / 100000000000000000 : ℚ), (237850000000000017 / 400000000000000000 : ℚ)⟩
  r := (6996465071071 / 12500000000000 : ℚ)
  w := (2796410982891 / 2000000000000 : ℚ)
  center := (475650000000000029 / 800000000000000000 : ℚ)
  supportValue := (3481589663109523 / 10000000000000000 : ℚ)
  supportSlope := (-2767345371500419 / 2000000000000000 : ℚ)
  oldCenter := (3481589663109523 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1395
  oldLo := (34800000000000003 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_858]
}

noncomputable def cell_11369 : Cell := { cellDefaults with
  domain := ⟨(237850000000000017 / 400000000000000000 : ℚ), (118950000000000011 / 200000000000000000 : ℚ)⟩
  r := (6996465071071 / 12500000000000 : ℚ)
  w := (2796410982891 / 2000000000000 : ℚ)
  center := (475750000000000039 / 800000000000000000 : ℚ)
  supportValue := (3479863320536251 / 10000000000000000 : ℚ)
  supportSlope := (-6915302852047863 / 5000000000000000 : ℚ)
  oldCenter := (3479863320536251 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1395
  oldLo := (34750000000000003 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_857, piece_858]
}

noncomputable def cell_11370 : Cell := { cellDefaults with
  domain := ⟨(118950000000000011 / 200000000000000000 : ℚ), (237950000000000027 / 400000000000000000 : ℚ)⟩
  r := (6996465071071 / 12500000000000 : ℚ)
  w := (2796410982891 / 2000000000000 : ℚ)
  center := (475850000000000049 / 800000000000000000 : ℚ)
  supportValue := (6956264360207457 / 20000000000000000 : ℚ)
  supportSlope := (-13821765896107903 / 10000000000000000 : ℚ)
  oldCenter := (6956264360207457 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1395
  oldLo := (34750000000000003 / 100000000000000000 : ℚ)
  oldHi := (34800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_857]
}

noncomputable def cell_11371 : Cell := { cellDefaults with
  domain := ⟨(237950000000000027 / 400000000000000000 : ℚ), (7437500000000001 / 12500000000000000 : ℚ)⟩
  r := (6996465071071 / 12500000000000 : ℚ)
  w := (2796410982891 / 2000000000000 : ℚ)
  center := (475950000000000059 / 800000000000000000 : ℚ)
  supportValue := (869101360047757 / 2500000000000000 : ℚ)
  supportSlope := (-6903039915408391 / 5000000000000000 : ℚ)
  oldCenter := (869101360047757 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1395
  oldLo := (34750000000000003 / 100000000000000000 : ℚ)
  oldHi := (34800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_857]
}

noncomputable def cell_11372 : Cell := { cellDefaults with
  domain := ⟨(7437500000000001 / 12500000000000000 : ℚ), (238050000000000027 / 400000000000000000 : ℚ)⟩
  r := (27971967666407 / 50000000000000 : ℚ)
  w := (13979130748863 / 10000000000000 : ℚ)
  center := (476050000000000059 / 800000000000000000 : ℚ)
  supportValue := (17391296934698147 / 50000000000000000 : ℚ)
  supportSlope := (-863499700744039 / 625000000000000 : ℚ)
  oldCenter := (17391296934698147 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1396
  oldLo := (34750000000000003 / 100000000000000000 : ℚ)
  oldHi := (34800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_857]
}

noncomputable def cell_11373 : Cell := { cellDefaults with
  domain := ⟨(238050000000000027 / 400000000000000000 : ℚ), (119050000000000011 / 200000000000000000 : ℚ)⟩
  r := (27971967666407 / 50000000000000 : ℚ)
  w := (13979130748863 / 10000000000000 : ℚ)
  center := (476150000000000049 / 800000000000000000 : ℚ)
  supportValue := (3476533367632043 / 10000000000000000 : ℚ)
  supportSlope := (-13800320820448733 / 10000000000000000 : ℚ)
  oldCenter := (3476533367632043 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1396
  oldLo := (34750000000000003 / 100000000000000000 : ℚ)
  oldHi := (34800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_857]
}

noncomputable def cell_11374 : Cell := { cellDefaults with
  domain := ⟨(119050000000000011 / 200000000000000000 : ℚ), (238150000000000017 / 400000000000000000 : ℚ)⟩
  r := (27971967666407 / 50000000000000 : ℚ)
  w := (13979130748863 / 10000000000000 : ℚ)
  center := (476250000000000039 / 800000000000000000 : ℚ)
  supportValue := (3474811506908921 / 10000000000000000 : ℚ)
  supportSlope := (-6897378505055919 / 5000000000000000 : ℚ)
  oldCenter := (3474811506908921 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1396
  oldLo := (17368715083798883 / 50000000000000000 : ℚ)
  oldHi := (34800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_856, piece_857]
}

noncomputable def cell_11375 : Cell := { cellDefaults with
  domain := ⟨(238150000000000017 / 400000000000000000 : ℚ), (59550000000000003 / 100000000000000000 : ℚ)⟩
  r := (27971967666407 / 50000000000000 : ℚ)
  w := (13979130748863 / 10000000000000 : ℚ)
  center := (476350000000000029 / 800000000000000000 : ℚ)
  supportValue := (17365424547103167 / 50000000000000000 : ℚ)
  supportSlope := (-137854699278797 / 100000000000000 : ℚ)
  oldCenter := (17365424547103167 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1396
  oldLo := (34700000000000003 / 100000000000000000 : ℚ)
  oldHi := (34750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_855, piece_856]
}

noncomputable def cell_11376 : Cell := { cellDefaults with
  domain := ⟨(59550000000000003 / 100000000000000000 : ℚ), (119125000000000009 / 200000000000000000 : ℚ)⟩
  r := (55916180630281 / 100000000000000 : ℚ)
  w := (13976211903203 / 10000000000000 : ℚ)
  center := (47645000000000003 / 80000000000000000 : ℚ)
  supportValue := (868734658279197 / 2500000000000000 : ℚ)
  supportSlope := (-1378778857824171 / 1000000000000000 : ℚ)
  oldCenter := (868734658279197 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1397
  oldLo := (17368715083798883 / 50000000000000000 : ℚ)
  oldHi := (34800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_856, piece_857]
}

noncomputable def cell_11377 : Cell := { cellDefaults with
  domain := ⟨(119125000000000009 / 200000000000000000 : ℚ), (29787500000000003 / 50000000000000000 : ℚ)⟩
  r := (55916180630281 / 100000000000000 : ℚ)
  w := (13976211903203 / 10000000000000 : ℚ)
  center := (238275000000000021 / 400000000000000000 : ℚ)
  supportValue := (17366063769589 / 50000000000000 : ℚ)
  supportSlope := (-6889864377716277 / 5000000000000000 : ℚ)
  oldCenter := (17366063769589 / 50000000000000 : ℚ)
  newCoefficients := coefficients_1397
  oldLo := (34700000000000003 / 100000000000000000 : ℚ)
  oldHi := (34750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_855, piece_856]
}

noncomputable def cell_11378 : Cell := { cellDefaults with
  domain := ⟨(29787500000000003 / 50000000000000000 : ℚ), (23835000000000003 / 40000000000000000 : ℚ)⟩
  r := (55916180630281 / 100000000000000 : ℚ)
  w := (13976211903203 / 10000000000000 : ℚ)
  center := (238325000000000027 / 400000000000000000 : ℚ)
  supportValue := (34714912659113917 / 100000000000000000 : ℚ)
  supportSlope := (-172051057156321 / 125000000000000 : ℚ)
  oldCenter := (34714912659113917 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1397
  oldLo := (34700000000000003 / 100000000000000000 : ℚ)
  oldHi := (17368715083798883 / 50000000000000000 : ℚ)
  oldPieces := [piece_855]
}

noncomputable def cell_11379 : Cell := { cellDefaults with
  domain := ⟨(23835000000000003 / 40000000000000000 : ℚ), (59600000000000009 / 100000000000000000 : ℚ)⟩
  r := (55916180630281 / 100000000000000 : ℚ)
  w := (13976211903203 / 10000000000000 : ℚ)
  center := (238375000000000033 / 400000000000000000 : ℚ)
  supportValue := (34697738830202773 / 100000000000000000 : ℚ)
  supportSlope := (-429966949958231 / 312500000000000 : ℚ)
  oldCenter := (34697738830202773 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1397
  oldLo := (34650000000000003 / 100000000000000000 : ℚ)
  oldHi := (17368715083798883 / 50000000000000000 : ℚ)
  oldPieces := [piece_854, piece_855]
}

noncomputable def cell_11380 : Cell := { cellDefaults with
  domain := ⟨(59600000000000009 / 100000000000000000 : ℚ), (119225698324022359 / 200000000000000000 : ℚ)⟩
  r := (27944229989691 / 50000000000000 : ℚ)
  w := (13973303585003 / 10000000000000 : ℚ)
  center := (238425698324022377 / 400000000000000000 : ℚ)
  supportValue := (17357962918972483 / 50000000000000000 : ℚ)
  supportSlope := (-6879058614923651 / 5000000000000000 : ℚ)
  oldCenter := (17357962918972483 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1398
  oldLo := (34700000000000003 / 100000000000000000 : ℚ)
  oldHi := (17368715083798883 / 50000000000000000 : ℚ)
  oldPieces := [piece_855]
}

noncomputable def cell_11381 : Cell := { cellDefaults with
  domain := ⟨(119225698324022359 / 200000000000000000 : ℚ), (1192513966480447 / 2000000000000000 : ℚ)⟩
  r := (27944229989691 / 50000000000000 : ℚ)
  w := (13973303585003 / 10000000000000 : ℚ)
  center := (238477094972067059 / 400000000000000000 : ℚ)
  supportValue := (4337285035099523 / 12500000000000000 : ℚ)
  supportSlope := (-6875992874940131 / 5000000000000000 : ℚ)
  oldCenter := (4337285035099523 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1398
  oldLo := (34650000000000003 / 100000000000000000 : ℚ)
  oldHi := (17368715083798883 / 50000000000000000 : ℚ)
  oldPieces := [piece_854, piece_855]
}

noncomputable def cell_11382 : Cell := { cellDefaults with
  domain := ⟨(1192513966480447 / 2000000000000000 : ℚ), (119275698324022353 / 200000000000000000 : ℚ)⟩
  r := (27944229989691 / 50000000000000 : ℚ)
  w := (13973303585003 / 10000000000000 : ℚ)
  center := (238527094972067053 / 400000000000000000 : ℚ)
  supportValue := (3468106751422723 / 10000000000000000 : ℚ)
  supportSlope := (-13742947302794863 / 10000000000000000 : ℚ)
  oldCenter := (3468106751422723 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1399
  oldLo := (34650000000000003 / 100000000000000000 : ℚ)
  oldHi := (34700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_854]
}

noncomputable def cell_11383 : Cell := { cellDefaults with
  domain := ⟨(119275698324022353 / 200000000000000000 : ℚ), (59650000000000003 / 100000000000000000 : ℚ)⟩
  r := (27944229989691 / 50000000000000 : ℚ)
  w := (13973303585003 / 10000000000000 : ℚ)
  center := (238575698324022359 / 400000000000000000 : ℚ)
  supportValue := (34664377907111793 / 100000000000000000 : ℚ)
  supportSlope := (-6863884323171081 / 5000000000000000 : ℚ)
  oldCenter := (34664377907111793 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1399
  oldLo := (34650000000000003 / 100000000000000000 : ℚ)
  oldHi := (34700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_854]
}

noncomputable def cell_11384 : Cell := { cellDefaults with
  domain := ⟨(59650000000000003 / 100000000000000000 : ℚ), (238650000000000007 / 400000000000000000 : ℚ)⟩
  r := (2234430820743 / 4000000000000 : ℚ)
  w := (6985200308943 / 5000000000000 : ℚ)
  center := (477250000000000019 / 800000000000000000 : ℚ)
  supportValue := (2167689935161609 / 6250000000000000 : ℚ)
  supportSlope := (-2747574231598823 / 2000000000000000 : ℚ)
  oldCenter := (2167689935161609 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1400
  oldLo := (34650000000000003 / 100000000000000000 : ℚ)
  oldHi := (34700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_854]
}

noncomputable def cell_11385 : Cell := { cellDefaults with
  domain := ⟨(238650000000000007 / 400000000000000000 : ℚ), (119350000000000001 / 200000000000000000 : ℚ)⟩
  r := (2234430820743 / 4000000000000 : ℚ)
  w := (6985200308943 / 5000000000000 : ℚ)
  center := (477350000000000009 / 800000000000000000 : ℚ)
  supportValue := (34665876381183297 / 100000000000000000 : ℚ)
  supportSlope := (-3430566557501079 / 2500000000000000 : ℚ)
  oldCenter := (34665876381183297 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1400
  oldLo := (34650000000000003 / 100000000000000000 : ℚ)
  oldHi := (34700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_854]
}

noncomputable def cell_11386 : Cell := { cellDefaults with
  domain := ⟨(119350000000000001 / 200000000000000000 : ℚ), (238749999999999997 / 400000000000000000 : ℚ)⟩
  r := (2234430820743 / 4000000000000 : ℚ)
  w := (6985200308943 / 5000000000000 : ℚ)
  center := (477449999999999999 / 800000000000000000 : ℚ)
  supportValue := (3464875597784907 / 10000000000000000 : ℚ)
  supportSlope := (-13716218690006647 / 10000000000000000 : ℚ)
  oldCenter := (3464875597784907 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1400
  oldLo := (34600000000000003 / 100000000000000000 : ℚ)
  oldHi := (34700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_853, piece_854]
}

noncomputable def cell_11387 : Cell := { cellDefaults with
  domain := ⟨(238749999999999997 / 400000000000000000 : ℚ), (29849999999999999 / 50000000000000000 : ℚ)⟩
  r := (2234430820743 / 4000000000000 : ℚ)
  w := (6985200308943 / 5000000000000 : ℚ)
  center := (477549999999999989 / 800000000000000000 : ℚ)
  supportValue := (692631748010371 / 2000000000000000 : ℚ)
  supportSlope := (-2741527670606477 / 2000000000000000 : ℚ)
  oldCenter := (692631748010371 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1400
  oldLo := (34600000000000003 / 100000000000000000 : ℚ)
  oldHi := (34650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_853]
}

noncomputable def cell_11388 : Cell := { cellDefaults with
  domain := ⟨(29849999999999999 / 50000000000000000 : ℚ), (238849999999999997 / 400000000000000000 : ℚ)⟩
  r := (27916555550433 / 50000000000000 : ℚ)
  w := (872968953517 / 625000000000 : ℚ)
  center := (477649999999999989 / 800000000000000000 : ℚ)
  supportValue := (3465000647041417 / 10000000000000000 : ℚ)
  supportSlope := (-137092949658499 / 100000000000000 : ℚ)
  oldCenter := (3465000647041417 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1401
  oldLo := (34600000000000003 / 100000000000000000 : ℚ)
  oldHi := (34700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_853, piece_854]
}

noncomputable def cell_11389 : Cell := { cellDefaults with
  domain := ⟨(238849999999999997 / 400000000000000000 : ℚ), (119450000000000001 / 200000000000000000 : ℚ)⟩
  r := (27916555550433 / 50000000000000 : ℚ)
  w := (872968953517 / 625000000000 : ℚ)
  center := (477749999999999999 / 800000000000000000 : ℚ)
  supportValue := (3463284502746309 / 10000000000000000 : ℚ)
  supportSlope := (-685096797357441 / 500000000000000 : ℚ)
  oldCenter := (3463284502746309 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1401
  oldLo := (34600000000000003 / 100000000000000000 : ℚ)
  oldHi := (34650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_853]
}

noncomputable def cell_11390 : Cell := { cellDefaults with
  domain := ⟨(119450000000000001 / 200000000000000000 : ℚ), (238950000000000007 / 400000000000000000 : ℚ)⟩
  r := (27916555550433 / 50000000000000 : ℚ)
  w := (872968953517 / 625000000000 : ℚ)
  center := (477850000000000009 / 800000000000000000 : ℚ)
  supportValue := (1730786367300181 / 5000000000000000 : ℚ)
  supportSlope := (-13686361550967217 / 10000000000000000 : ℚ)
  oldCenter := (1730786367300181 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1401
  oldLo := (34600000000000003 / 100000000000000000 : ℚ)
  oldHi := (34650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_853]
}

noncomputable def cell_11391 : Cell := { cellDefaults with
  domain := ⟨(238950000000000007 / 400000000000000000 : ℚ), (59750000000000003 / 100000000000000000 : ℚ)⟩
  r := (27916555550433 / 50000000000000 : ℚ)
  w := (872968953517 / 625000000000 : ℚ)
  center := (477950000000000019 / 800000000000000000 : ℚ)
  supportValue := (8649662908721581 / 25000000000000000 : ℚ)
  supportSlope := (-684023643937091 / 500000000000000 : ℚ)
  oldCenter := (8649662908721581 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1401
  oldLo := (34550000000000003 / 100000000000000000 : ℚ)
  oldHi := (34650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_852, piece_853]
}

noncomputable def cell_11392 : Cell := { cellDefaults with
  domain := ⟨(59750000000000003 / 100000000000000000 : ℚ), (239050000000000007 / 400000000000000000 : ℚ)⟩
  r := (55805486041023 / 100000000000000 : ℚ)
  w := (13964616924579 / 10000000000000 : ℚ)
  center := (478050000000000019 / 800000000000000000 : ℚ)
  supportValue := (2163559895420189 / 6250000000000000 : ℚ)
  supportSlope := (-13680648725157543 / 10000000000000000 : ℚ)
  oldCenter := (2163559895420189 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1402
  oldLo := (34600000000000003 / 100000000000000000 : ℚ)
  oldHi := (34650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_853]
}

noncomputable def cell_11393 : Cell := { cellDefaults with
  domain := ⟨(239050000000000007 / 400000000000000000 : ℚ), (119550000000000001 / 200000000000000000 : ℚ)⟩
  r := (55805486041023 / 100000000000000 : ℚ)
  w := (13964616924579 / 10000000000000 : ℚ)
  center := (478150000000000009 / 800000000000000000 : ℚ)
  supportValue := (3459989125456681 / 10000000000000000 : ℚ)
  supportSlope := (-13673569999916013 / 10000000000000000 : ℚ)
  oldCenter := (3459989125456681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1402
  oldLo := (34550000000000003 / 100000000000000000 : ℚ)
  oldHi := (34650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_852, piece_853]
}

noncomputable def cell_11394 : Cell := { cellDefaults with
  domain := ⟨(119550000000000001 / 200000000000000000 : ℚ), (239149999999999997 / 400000000000000000 : ℚ)⟩
  r := (55805486041023 / 100000000000000 : ℚ)
  w := (13964616924579 / 10000000000000 : ℚ)
  center := (478249999999999999 / 800000000000000000 : ℚ)
  supportValue := (1729138729882803 / 5000000000000000 : ℚ)
  supportSlope := (-13666151002632831 / 10000000000000000 : ℚ)
  oldCenter := (1729138729882803 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1402
  oldLo := (34550000000000003 / 100000000000000000 : ℚ)
  oldHi := (34600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_852]
}

noncomputable def cell_11395 : Cell := { cellDefaults with
  domain := ⟨(239149999999999997 / 400000000000000000 : ℚ), (29899999999999999 / 50000000000000000 : ℚ)⟩
  r := (55805486041023 / 100000000000000 : ℚ)
  w := (13964616924579 / 10000000000000 : ℚ)
  center := (478349999999999989 / 800000000000000000 : ℚ)
  supportValue := (3456570162763167 / 10000000000000000 : ℚ)
  supportSlope := (-273012164307423 / 200000000000000 : ℚ)
  oldCenter := (3456570162763167 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1402
  oldLo := (34550000000000003 / 100000000000000000 : ℚ)
  oldHi := (34600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_852]
}

noncomputable def cell_11396 : Cell := { cellDefaults with
  domain := ⟨(29899999999999999 / 50000000000000000 : ℚ), (239249999999999997 / 400000000000000000 : ℚ)⟩
  r := (55777891075909 / 100000000000000 : ℚ)
  w := (6980867020169 / 5000000000000 : ℚ)
  center := (478449999999999989 / 800000000000000000 : ℚ)
  supportValue := (540375141801901 / 1562500000000000 : ℚ)
  supportSlope := (-13660459907346179 / 10000000000000000 : ℚ)
  oldCenter := (540375141801901 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1403
  oldLo := (34550000000000003 / 100000000000000000 : ℚ)
  oldHi := (34600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_852]
}

noncomputable def cell_11397 : Cell := { cellDefaults with
  domain := ⟨(239249999999999997 / 400000000000000000 : ℚ), (119650000000000001 / 200000000000000000 : ℚ)⟩
  r := (55777891075909 / 100000000000000 : ℚ)
  w := (6980867020169 / 5000000000000 : ℚ)
  center := (478549999999999999 / 800000000000000000 : ℚ)
  supportValue := (4320867901535673 / 12500000000000000 : ℚ)
  supportSlope := (-13644928117278767 / 10000000000000000 : ℚ)
  oldCenter := (4320867901535673 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1403
  oldLo := (34550000000000003 / 100000000000000000 : ℚ)
  oldHi := (34600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_852]
}

noncomputable def cell_11398 : Cell := { cellDefaults with
  domain := ⟨(119650000000000001 / 200000000000000000 : ℚ), (239350000000000007 / 400000000000000000 : ℚ)⟩
  r := (55777891075909 / 100000000000000 : ℚ)
  w := (6980867020169 / 5000000000000 : ℚ)
  center := (478650000000000009 / 800000000000000000 : ℚ)
  supportValue := (863748019294281 / 2500000000000000 : ℚ)
  supportSlope := (-1363787200378971 / 1000000000000000 : ℚ)
  oldCenter := (863748019294281 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1403
  oldLo := (34500000000000003 / 100000000000000000 : ℚ)
  oldHi := (34600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_851, piece_852]
}

noncomputable def cell_11399 : Cell := { cellDefaults with
  domain := ⟨(239350000000000007 / 400000000000000000 : ℚ), (59850000000000003 / 100000000000000000 : ℚ)⟩
  r := (55777891075909 / 100000000000000 : ℚ)
  w := (6980867020169 / 5000000000000 : ℚ)
  center := (478750000000000019 / 800000000000000000 : ℚ)
  supportValue := (863321217316789 / 2500000000000000 : ℚ)
  supportSlope := (-13630532801361697 / 10000000000000000 : ℚ)
  oldCenter := (863321217316789 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1403
  oldLo := (34500000000000003 / 100000000000000000 : ℚ)
  oldHi := (34550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_851]
}

theorem check_11350 : cell_11350.check = true := by
  decide +kernel

theorem check_11351 : cell_11351.check = true := by
  decide +kernel

theorem check_11352 : cell_11352.check = true := by
  decide +kernel

theorem check_11353 : cell_11353.check = true := by
  decide +kernel

theorem check_11354 : cell_11354.check = true := by
  decide +kernel

theorem check_11355 : cell_11355.check = true := by
  decide +kernel

theorem check_11356 : cell_11356.check = true := by
  decide +kernel

theorem check_11357 : cell_11357.check = true := by
  decide +kernel

theorem check_11358 : cell_11358.check = true := by
  decide +kernel

theorem check_11359 : cell_11359.check = true := by
  decide +kernel

theorem check_11360 : cell_11360.check = true := by
  decide +kernel

theorem check_11361 : cell_11361.check = true := by
  decide +kernel

theorem check_11362 : cell_11362.check = true := by
  decide +kernel

theorem check_11363 : cell_11363.check = true := by
  decide +kernel

theorem check_11364 : cell_11364.check = true := by
  decide +kernel

theorem check_11365 : cell_11365.check = true := by
  decide +kernel

theorem check_11366 : cell_11366.check = true := by
  decide +kernel

theorem check_11367 : cell_11367.check = true := by
  decide +kernel

theorem check_11368 : cell_11368.check = true := by
  decide +kernel

theorem check_11369 : cell_11369.check = true := by
  decide +kernel

theorem check_11370 : cell_11370.check = true := by
  decide +kernel

theorem check_11371 : cell_11371.check = true := by
  decide +kernel

theorem check_11372 : cell_11372.check = true := by
  decide +kernel

theorem check_11373 : cell_11373.check = true := by
  decide +kernel

theorem check_11374 : cell_11374.check = true := by
  decide +kernel

theorem check_11375 : cell_11375.check = true := by
  decide +kernel

theorem check_11376 : cell_11376.check = true := by
  decide +kernel

theorem check_11377 : cell_11377.check = true := by
  decide +kernel

theorem check_11378 : cell_11378.check = true := by
  decide +kernel

theorem check_11379 : cell_11379.check = true := by
  decide +kernel

theorem check_11380 : cell_11380.check = true := by
  decide +kernel

theorem check_11381 : cell_11381.check = true := by
  decide +kernel

theorem check_11382 : cell_11382.check = true := by
  decide +kernel

theorem check_11383 : cell_11383.check = true := by
  decide +kernel

theorem check_11384 : cell_11384.check = true := by
  decide +kernel

theorem check_11385 : cell_11385.check = true := by
  decide +kernel

theorem check_11386 : cell_11386.check = true := by
  decide +kernel

theorem check_11387 : cell_11387.check = true := by
  decide +kernel

theorem check_11388 : cell_11388.check = true := by
  decide +kernel

theorem check_11389 : cell_11389.check = true := by
  decide +kernel

theorem check_11390 : cell_11390.check = true := by
  decide +kernel

theorem check_11391 : cell_11391.check = true := by
  decide +kernel

theorem check_11392 : cell_11392.check = true := by
  decide +kernel

theorem check_11393 : cell_11393.check = true := by
  decide +kernel

theorem check_11394 : cell_11394.check = true := by
  decide +kernel

theorem check_11395 : cell_11395.check = true := by
  decide +kernel

theorem check_11396 : cell_11396.check = true := by
  decide +kernel

theorem check_11397 : cell_11397.check = true := by
  decide +kernel

theorem check_11398 : cell_11398.check = true := by
  decide +kernel

theorem check_11399 : cell_11399.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11350, cell_11351, cell_11352, cell_11353, cell_11354, cell_11355, cell_11356, cell_11357, cell_11358, cell_11359, cell_11360, cell_11361, cell_11362, cell_11363, cell_11364, cell_11365, cell_11366, cell_11367, cell_11368, cell_11369, cell_11370, cell_11371, cell_11372, cell_11373, cell_11374, cell_11375, cell_11376, cell_11377, cell_11378, cell_11379, cell_11380, cell_11381, cell_11382, cell_11383, cell_11384, cell_11385, cell_11386, cell_11387, cell_11388, cell_11389, cell_11390, cell_11391, cell_11392, cell_11393, cell_11394, cell_11395, cell_11396, cell_11397, cell_11398, cell_11399]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11350, check_11351, check_11352, check_11353, check_11354, check_11355, check_11356, check_11357, check_11358, check_11359, check_11360, check_11361, check_11362, check_11363, check_11364, check_11365, check_11366, check_11367, check_11368, check_11369, check_11370, check_11371, check_11372, check_11373, check_11374, check_11375, check_11376, check_11377, check_11378, check_11379, check_11380, check_11381, check_11382, check_11383, check_11384, check_11385, check_11386, check_11387, check_11388, check_11389, check_11390, check_11391, check_11392, check_11393, check_11394, check_11395, check_11396, check_11397, check_11398, check_11399, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0227

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0227
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0227
open AnalyticBounds.ExpressionCertificate

theorem linked_11350 : Linked cell_11350 pieces := by
  link_source cell_11350 with piece_1390 using piece_1390_mem, ⟨piece_860_mem, piece_861_mem⟩

theorem linked_11351 : Linked cell_11351 pieces := by
  link_source cell_11351 with piece_1390 using piece_1390_mem, piece_860_mem

theorem linked_11352 : Linked cell_11352 pieces := by
  link_source cell_11352 with piece_1391 using piece_1391_mem, ⟨piece_860_mem, piece_861_mem⟩

theorem linked_11353 : Linked cell_11353 pieces := by
  link_source cell_11353 with piece_1391 using piece_1391_mem, piece_860_mem

theorem linked_11354 : Linked cell_11354 pieces := by
  link_source cell_11354 with piece_1391 using piece_1391_mem, piece_860_mem

theorem linked_11355 : Linked cell_11355 pieces := by
  link_source cell_11355 with piece_1391 using piece_1391_mem, ⟨piece_859_mem, piece_860_mem⟩

theorem linked_11356 : Linked cell_11356 pieces := by
  link_source cell_11356 with piece_1392 using piece_1392_mem, piece_860_mem

theorem linked_11357 : Linked cell_11357 pieces := by
  link_source cell_11357 with piece_1392 using piece_1392_mem, ⟨piece_859_mem, piece_860_mem⟩

theorem linked_11358 : Linked cell_11358 pieces := by
  link_source cell_11358 with piece_1392 using piece_1392_mem, piece_859_mem

theorem linked_11359 : Linked cell_11359 pieces := by
  link_source cell_11359 with piece_1392 using piece_1392_mem, piece_859_mem

theorem linked_11360 : Linked cell_11360 pieces := by
  link_source cell_11360 with piece_1393 using piece_1393_mem, piece_859_mem

theorem linked_11361 : Linked cell_11361 pieces := by
  link_source cell_11361 with piece_1393 using piece_1393_mem, piece_859_mem

theorem linked_11362 : Linked cell_11362 pieces := by
  link_source cell_11362 with piece_1393 using piece_1393_mem, ⟨piece_858_mem, piece_859_mem⟩

theorem linked_11363 : Linked cell_11363 pieces := by
  link_source cell_11363 with piece_1393 using piece_1393_mem, piece_858_mem

theorem linked_11364 : Linked cell_11364 pieces := by
  link_source cell_11364 with piece_1394 using piece_1394_mem, ⟨piece_858_mem, piece_859_mem⟩

theorem linked_11365 : Linked cell_11365 pieces := by
  link_source cell_11365 with piece_1394 using piece_1394_mem, piece_858_mem

theorem linked_11366 : Linked cell_11366 pieces := by
  link_source cell_11366 with piece_1394 using piece_1394_mem, piece_858_mem

theorem linked_11367 : Linked cell_11367 pieces := by
  link_source cell_11367 with piece_1394 using piece_1394_mem, ⟨piece_857_mem, piece_858_mem⟩

theorem linked_11368 : Linked cell_11368 pieces := by
  link_source cell_11368 with piece_1395 using piece_1395_mem, piece_858_mem

theorem linked_11369 : Linked cell_11369 pieces := by
  link_source cell_11369 with piece_1395 using piece_1395_mem, ⟨piece_857_mem, piece_858_mem⟩

theorem linked_11370 : Linked cell_11370 pieces := by
  link_source cell_11370 with piece_1395 using piece_1395_mem, piece_857_mem

theorem linked_11371 : Linked cell_11371 pieces := by
  link_source cell_11371 with piece_1395 using piece_1395_mem, piece_857_mem

theorem linked_11372 : Linked cell_11372 pieces := by
  link_source cell_11372 with piece_1396 using piece_1396_mem, piece_857_mem

theorem linked_11373 : Linked cell_11373 pieces := by
  link_source cell_11373 with piece_1396 using piece_1396_mem, piece_857_mem

theorem linked_11374 : Linked cell_11374 pieces := by
  link_source cell_11374 with piece_1396 using piece_1396_mem, ⟨piece_856_mem, piece_857_mem⟩

theorem linked_11375 : Linked cell_11375 pieces := by
  link_source cell_11375 with piece_1396 using piece_1396_mem, ⟨piece_855_mem, piece_856_mem⟩

theorem linked_11376 : Linked cell_11376 pieces := by
  link_source cell_11376 with piece_1397 using piece_1397_mem, ⟨piece_856_mem, piece_857_mem⟩

theorem linked_11377 : Linked cell_11377 pieces := by
  link_source cell_11377 with piece_1397 using piece_1397_mem, ⟨piece_855_mem, piece_856_mem⟩

theorem linked_11378 : Linked cell_11378 pieces := by
  link_source cell_11378 with piece_1397 using piece_1397_mem, piece_855_mem

theorem linked_11379 : Linked cell_11379 pieces := by
  link_source cell_11379 with piece_1397 using piece_1397_mem, ⟨piece_854_mem, piece_855_mem⟩

theorem linked_11380 : Linked cell_11380 pieces := by
  link_source cell_11380 with piece_1398 using piece_1398_mem, piece_855_mem

theorem linked_11381 : Linked cell_11381 pieces := by
  link_source cell_11381 with piece_1398 using piece_1398_mem, ⟨piece_854_mem, piece_855_mem⟩

theorem linked_11382 : Linked cell_11382 pieces := by
  link_source cell_11382 with piece_1399 using piece_1399_mem, piece_854_mem

theorem linked_11383 : Linked cell_11383 pieces := by
  link_source cell_11383 with piece_1399 using piece_1399_mem, piece_854_mem

theorem linked_11384 : Linked cell_11384 pieces := by
  link_source cell_11384 with piece_1400 using piece_1400_mem, piece_854_mem

theorem linked_11385 : Linked cell_11385 pieces := by
  link_source cell_11385 with piece_1400 using piece_1400_mem, piece_854_mem

theorem linked_11386 : Linked cell_11386 pieces := by
  link_source cell_11386 with piece_1400 using piece_1400_mem, ⟨piece_853_mem, piece_854_mem⟩

theorem linked_11387 : Linked cell_11387 pieces := by
  link_source cell_11387 with piece_1400 using piece_1400_mem, piece_853_mem

theorem linked_11388 : Linked cell_11388 pieces := by
  link_source cell_11388 with piece_1401 using piece_1401_mem, ⟨piece_853_mem, piece_854_mem⟩

theorem linked_11389 : Linked cell_11389 pieces := by
  link_source cell_11389 with piece_1401 using piece_1401_mem, piece_853_mem

theorem linked_11390 : Linked cell_11390 pieces := by
  link_source cell_11390 with piece_1401 using piece_1401_mem, piece_853_mem

theorem linked_11391 : Linked cell_11391 pieces := by
  link_source cell_11391 with piece_1401 using piece_1401_mem, ⟨piece_852_mem, piece_853_mem⟩

theorem linked_11392 : Linked cell_11392 pieces := by
  link_source cell_11392 with piece_1402 using piece_1402_mem, piece_853_mem

theorem linked_11393 : Linked cell_11393 pieces := by
  link_source cell_11393 with piece_1402 using piece_1402_mem, ⟨piece_852_mem, piece_853_mem⟩

theorem linked_11394 : Linked cell_11394 pieces := by
  link_source cell_11394 with piece_1402 using piece_1402_mem, piece_852_mem

theorem linked_11395 : Linked cell_11395 pieces := by
  link_source cell_11395 with piece_1402 using piece_1402_mem, piece_852_mem

theorem linked_11396 : Linked cell_11396 pieces := by
  link_source cell_11396 with piece_1403 using piece_1403_mem, piece_852_mem

theorem linked_11397 : Linked cell_11397 pieces := by
  link_source cell_11397 with piece_1403 using piece_1403_mem, piece_852_mem

theorem linked_11398 : Linked cell_11398 pieces := by
  link_source cell_11398 with piece_1403 using piece_1403_mem, ⟨piece_851_mem, piece_852_mem⟩

theorem linked_11399 : Linked cell_11399 pieces := by
  link_source cell_11399 with piece_1403 using piece_1403_mem, piece_851_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0227.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0227.cells,List.forall_mem_cons]
  exact ⟨linked_11350, linked_11351, linked_11352, linked_11353, linked_11354, linked_11355, linked_11356, linked_11357, linked_11358, linked_11359, linked_11360, linked_11361, linked_11362, linked_11363, linked_11364, linked_11365, linked_11366, linked_11367, linked_11368, linked_11369, linked_11370, linked_11371, linked_11372, linked_11373, linked_11374, linked_11375, linked_11376, linked_11377, linked_11378, linked_11379, linked_11380, linked_11381, linked_11382, linked_11383, linked_11384, linked_11385, linked_11386, linked_11387, linked_11388, linked_11389, linked_11390, linked_11391, linked_11392, linked_11393, linked_11394, linked_11395, linked_11396, linked_11397, linked_11398, linked_11399, by simp⟩

theorem covered : covers (118450000000000011 / 200000000000000000 : ℚ) (59850000000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0227.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0227
end
