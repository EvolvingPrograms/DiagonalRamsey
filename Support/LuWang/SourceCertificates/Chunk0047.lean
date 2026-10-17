import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0047
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(135500000000000009 / 2000000000000000000 : ℚ), (542500000000000037 / 8000000000000000000 : ℚ)⟩
  branch := .small
  r := (3004728977637 / 2500000000000 : ℚ)
  w := (667013511697 / 800000000000 : ℚ)
  center := (1084500000000000073 / 16000000000000000000 : ℚ)
  supportValue := (31517648631943787 / 10000000000000000 : ℚ)
  supportSlope := (909035203055451 / 100000000000000 : ℚ)
  oldCenter := (34180889941343039302288350131896451 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_248
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_2350 : Cell := { cellDefaults with
  r := (602807866281 / 500000000000 : ℚ)
  w := (10408848181263 / 12500000000000 : ℚ)
  newCoefficients := coefficients_246
  oldLo := (427 / 2000 : ℚ)
  oldHi := (107 / 500 : ℚ)
  oldPieces := [piece_564]
}

def cell_2351 : Cell := { cellDefaults with
  domain := ⟨(542500000000000037 / 8000000000000000000 : ℚ), (271500000000000019 / 4000000000000000000 : ℚ)⟩
  r := (602807866281 / 500000000000 : ℚ)
  w := (10408848181263 / 12500000000000 : ℚ)
  center := (43420000000000003 / 640000000000000000 : ℚ)
  supportValue := (3152333174154047 / 1000000000000000 : ℚ)
  supportSlope := (9095623531365487 / 1000000000000000 : ℚ)
  oldCenter := (136874306421768730196999522462141 / 640000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_246
  oldLo := (427 / 2000 : ℚ)
  oldHi := (107 / 500 : ℚ)
  oldPieces := [piece_564]
}

def cell_2352 : Cell := { cellDefaults with
  domain := ⟨(271500000000000019 / 4000000000000000000 : ℚ), (1086500000000000077 / 16000000000000000000 : ℚ)⟩
  r := (602807866281 / 500000000000 : ℚ)
  w := (10408848181263 / 12500000000000 : ℚ)
  center := (2172500000000000153 / 32000000000000000000 : ℚ)
  supportValue := (15763808562743291 / 5000000000000000 : ℚ)
  supportSlope := (284081541101599 / 31250000000000 : ℚ)
  oldCenter := (34246874102559802109362710099723523 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_246
  oldLo := (427 / 2000 : ℚ)
  oldHi := (429 / 2000 : ℚ)
  oldPieces := [piece_564, piece_565]
}

def cell_2353 : Cell := { cellDefaults with
  domain := ⟨(1086500000000000077 / 16000000000000000000 : ℚ), (543500000000000039 / 8000000000000000000 : ℚ)⟩
  r := (602807866281 / 500000000000 : ℚ)
  w := (10408848181263 / 12500000000000 : ℚ)
  center := (434700000000000031 / 6400000000000000000 : ℚ)
  supportValue := (15765228956577533 / 5000000000000000 : ℚ)
  supportSlope := (2272958987383329 / 250000000000000 : ℚ)
  oldCenter := (6853145027424254083822097653903523 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_246
  oldLo := (107 / 500 : ℚ)
  oldHi := (429 / 2000 : ℚ)
  oldPieces := [piece_565]
}

def cell_2354 : Cell := { cellDefaults with
  domain := ⟨(543500000000000039 / 8000000000000000000 : ℚ), (1087500000000000079 / 16000000000000000000 : ℚ)⟩
  r := (602807866281 / 500000000000 : ℚ)
  w := (10408848181263 / 12500000000000 : ℚ)
  center := (2174500000000000157 / 32000000000000000000 : ℚ)
  supportValue := (31533299521769647 / 10000000000000000 : ℚ)
  supportSlope := (9094466303082509 / 1000000000000000 : ℚ)
  oldCenter := (68569159810088102352228024917834579 / 320000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_246
  oldLo := (107 / 500 : ℚ)
  oldHi := (429 / 2000 : ℚ)
  oldPieces := [piece_565]
}

def cell_2355 : Cell := { cellDefaults with
  domain := ⟨(1087500000000000079 / 16000000000000000000 : ℚ), (13600000000000001 / 200000000000000000 : ℚ)⟩
  r := (602807866281 / 500000000000 : ℚ)
  w := (10408848181263 / 12500000000000 : ℚ)
  center := (2175500000000000159 / 32000000000000000000 : ℚ)
  supportValue := (15768070976704789 / 5000000000000000 : ℚ)
  supportSlope := (4548551658217539 / 500000000000000 : ℚ)
  oldCenter := (34303438409821270976623285296061451 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_246
  oldLo := (107 / 500 : ℚ)
  oldHi := (429 / 2000 : ℚ)
  oldPieces := [piece_565]
}

def cell_2356 : Cell := { cellDefaults with
  domain := ⟨(13600000000000001 / 200000000000000000 : ℚ), (13606250000000001 / 200000000000000000 : ℚ)⟩
  r := (3009374225839 / 2500000000000 : ℚ)
  w := (16664756058903 / 20000000000000 : ℚ)
  center := (13603125000000001 / 200000000000000000 : ℚ)
  supportValue := (3152002901137929 / 1000000000000000 : ℚ)
  supportSlope := (1136018862613497 / 125000000000000 : ℚ)
  oldCenter := (42877089464541893580127901137929 / 200000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_247
  oldLo := (107 / 500 : ℚ)
  oldHi := (429 / 2000 : ℚ)
  oldPieces := [piece_565]
}

def cell_2357 : Cell := { cellDefaults with
  domain := ⟨(13606250000000001 / 200000000000000000 : ℚ), (13612500000000001 / 200000000000000000 : ℚ)⟩
  r := (3009374225839 / 2500000000000 : ℚ)
  w := (16664756058903 / 20000000000000 : ℚ)
  center := (13609375000000001 / 200000000000000000 : ℚ)
  supportValue := (31522869383721193 / 10000000000000000 : ℚ)
  supportSlope := (2271336654480649 / 250000000000000 : ℚ)
  oldCenter := (429006550519080642507244383721193 / 2000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_247
  oldLo := (107 / 500 : ℚ)
  oldHi := (2146368715083799 / 10000000000000000 : ℚ)
  oldPieces := [piece_565, piece_566]
}

def cell_2358 : Cell := { cellDefaults with
  domain := ⟨(13612500000000001 / 200000000000000000 : ℚ), (13625000000000001 / 200000000000000000 : ℚ)⟩
  r := (3009374225839 / 2500000000000 : ℚ)
  w := (16664756058903 / 20000000000000 : ℚ)
  center := (13618750000000001 / 200000000000000000 : ℚ)
  supportValue := (31527104710777993 / 10000000000000000 : ℚ)
  supportSlope := (1816887121350419 / 200000000000000 : ℚ)
  oldCenter := (429359757279907823695854710777993 / 2000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_247
  oldLo := (429 / 2000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_566, piece_567]
}

def cell_2359 : Cell := { cellDefaults with
  domain := ⟨(13625000000000001 / 200000000000000000 : ℚ), (13631250000000001 / 200000000000000000 : ℚ)⟩
  r := (3009374225839 / 2500000000000 : ℚ)
  w := (16664756058903 / 20000000000000 : ℚ)
  center := (13628125000000001 / 200000000000000000 : ℚ)
  supportValue := (6306277208267443 / 2000000000000000 : ℚ)
  supportSlope := (1817685136683167 / 200000000000000 : ℚ)
  oldCenter := (85942734078919752940652208267443 / 400000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_247
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_567]
}

def cell_2360 : Cell := { cellDefaults with
  domain := ⟨(13631250000000001 / 200000000000000000 : ℚ), (13637500000000001 / 200000000000000000 : ℚ)⟩
  r := (3009374225839 / 2500000000000 : ℚ)
  w := (16664756058903 / 20000000000000 : ℚ)
  center := (13634375000000001 / 200000000000000000 : ℚ)
  supportValue := (31534226590549013 / 10000000000000000 : ℚ)
  supportSlope := (4544063583495017 / 500000000000000 : ℚ)
  oldCenter := (429949470670516730656101590549013 / 2000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_247
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_567, piece_568]
}

def cell_2361 : Cell := { cellDefaults with
  domain := ⟨(13637500000000001 / 200000000000000000 : ℚ), (13650000000000001 / 200000000000000000 : ℚ)⟩
  r := (3009374225839 / 2500000000000 : ℚ)
  w := (16664756058903 / 20000000000000 : ℚ)
  center := (13643750000000001 / 200000000000000000 : ℚ)
  supportValue := (63076925458621 / 20000000000000 : ℚ)
  supportSlope := (9084706806930853 / 1000000000000000 : ℚ)
  oldCenter := (860605801726060331826925458621 / 4000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_247
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

def cell_2362 : Cell := { cellDefaults with
  domain := ⟨(13650000000000001 / 200000000000000000 : ℚ), (13656250000000001 / 200000000000000000 : ℚ)⟩
  r := (3009374225839 / 2500000000000 : ℚ)
  w := (16664756058903 / 20000000000000 : ℚ)
  center := (13653125000000001 / 200000000000000000 : ℚ)
  supportValue := (31542744194065477 / 10000000000000000 : ℚ)
  supportSlope := (9088690529267751 / 1000000000000000 : ℚ)
  oldCenter := (430657029324600247208369194065477 / 2000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_247
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

def cell_2363 : Cell := { cellDefaults with
  domain := ⟨(13656250000000001 / 200000000000000000 : ℚ), (13662500000000001 / 200000000000000000 : ℚ)⟩
  r := (3009374225839 / 2500000000000 : ℚ)
  w := (16664756058903 / 20000000000000 : ℚ)
  center := (13659375000000001 / 200000000000000000 : ℚ)
  supportValue := (7886396206276809 / 2500000000000000 : ℚ)
  supportSlope := (9090868169522537 / 1000000000000000 : ℚ)
  oldCenter := (107723243180112295820771206276809 / 500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_247
  oldLo := (43 / 200 : ℚ)
  oldHi := (27 / 125 : ℚ)
  oldPieces := [piece_568, piece_569]
}

def cell_2364 : Cell := { cellDefaults with
  domain := ⟨(13662500000000001 / 200000000000000000 : ℚ), (13675000000000001 / 200000000000000000 : ℚ)⟩
  r := (3009374225839 / 2500000000000 : ℚ)
  w := (16664756058903 / 20000000000000 : ℚ)
  center := (13668750000000001 / 200000000000000000 : ℚ)
  supportValue := (6309964370751203 / 2000000000000000 : ℚ)
  supportSlope := (567810247261491 / 62500000000000 : ℚ)
  oldCenter := (86249325492705512316214370751203 / 400000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_247
  oldLo := (431 / 2000 : ℚ)
  oldHi := (27 / 125 : ℚ)
  oldPieces := [piece_569]
}

def cell_2365 : Cell := { cellDefaults with
  domain := ⟨(13675000000000001 / 200000000000000000 : ℚ), (13687500000000001 / 200000000000000000 : ℚ)⟩
  r := (3009374225839 / 2500000000000 : ℚ)
  w := (16664756058903 / 20000000000000 : ℚ)
  center := (13681250000000001 / 200000000000000000 : ℚ)
  supportValue := (7888875400834413 / 2500000000000000 : ℚ)
  supportSlope := (4545129771855727 / 500000000000000 : ℚ)
  oldCenter := (107929676577665820745125400834413 / 500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_247
  oldLo := (431 / 2000 : ℚ)
  oldHi := (27 / 125 : ℚ)
  oldPieces := [piece_569]
}

def cell_2366 : Cell := { cellDefaults with
  domain := ⟨(13687500000000001 / 200000000000000000 : ℚ), (13693750000000001 / 200000000000000000 : ℚ)⟩
  r := (3009374225839 / 2500000000000 : ℚ)
  w := (16664756058903 / 20000000000000 : ℚ)
  center := (13690625000000001 / 200000000000000000 : ℚ)
  supportValue := (3155978467860361 / 1000000000000000 : ℚ)
  supportSlope := (4542921466352823 / 500000000000000 : ℚ)
  oldCenter := (43207317711550757971603467860361 / 200000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_247
  oldLo := (431 / 2000 : ℚ)
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_569, piece_570]
}

def cell_2367 : Cell := { cellDefaults with
  domain := ⟨(13693750000000001 / 200000000000000000 : ℚ), (13700000000000001 / 200000000000000000 : ℚ)⟩
  r := (3009374225839 / 2500000000000 : ℚ)
  w := (16664756058903 / 20000000000000 : ℚ)
  center := (13696875000000001 / 200000000000000000 : ℚ)
  supportValue := (31562623801688643 / 10000000000000000 : ℚ)
  supportSlope := (9086513985380407 / 1000000000000000 : ℚ)
  oldCenter := (432309312883754163653248801688643 / 2000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_247
  oldLo := (27 / 125 : ℚ)
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

def cell_2368 : Cell := { cellDefaults with
  domain := ⟨(13700000000000001 / 200000000000000000 : ℚ), (1096500000000000081 / 16000000000000000000 : ℚ)⟩
  center := (2192500000000000161 / 32000000000000000000 : ℚ)
  supportValue := (3154650574974867 / 1000000000000000 : ℚ)
  supportSlope := (4538702253086049 / 500000000000000 : ℚ)
  oldCenter := (6916571385632396405398742570953587 / 32000000000000000000000000000000000 : ℚ)
  oldLo := (27 / 125 : ℚ)
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

def cell_2369 : Cell := { cellDefaults with
  domain := ⟨(1096500000000000081 / 16000000000000000000 : ℚ), (548500000000000041 / 8000000000000000000 : ℚ)⟩
  center := (2193500000000000163 / 32000000000000000000 : ℚ)
  supportValue := (15774671427557223 / 5000000000000000 : ℚ)
  supportSlope := (1135009619488867 / 125000000000000 : ℚ)
  oldCenter := (34601741776346771221771442691827349 / 160000000000000000000000000000000000 : ℚ)
  oldLo := (27 / 125 : ℚ)
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

def cell_2370 : Cell := { cellDefaults with
  domain := ⟨(548500000000000041 / 8000000000000000000 : ℚ), (1097500000000000083 / 16000000000000000000 : ℚ)⟩
  center := (438900000000000033 / 6400000000000000000 : ℚ)
  supportValue := (6310436159333439 / 2000000000000000 : ℚ)
  supportSlope := (56767225671983 / 6250000000000 : ℚ)
  oldCenter := (2769650430331446585344393258003487 / 12800000000000000000000000000000000 : ℚ)
  oldLo := (27 / 125 : ℚ)
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

def cell_2371 : Cell := { cellDefaults with
  domain := ⟨(1097500000000000083 / 16000000000000000000 : ℚ), (274500000000000021 / 4000000000000000000 : ℚ)⟩
  center := (2195500000000000167 / 32000000000000000000 : ℚ)
  supportValue := (3155501957650313 / 1000000000000000 : ℚ)
  supportSlope := (2270130442084901 / 250000000000000 : ℚ)
  oldCenter := (6927904548021262718468826927602271 / 32000000000000000000000000000000000 : ℚ)
  oldLo := (27 / 125 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_570, piece_571]
}

def cell_2372 : Cell := { cellDefaults with
  domain := ⟨(274500000000000021 / 4000000000000000000 : ℚ), (549500000000000043 / 8000000000000000000 : ℚ)⟩
  center := (219700000000000017 / 3200000000000000000 : ℚ)
  supportValue := (6311850490178501 / 2000000000000000 : ℚ)
  supportSlope := (907909096964941 / 100000000000000 : ℚ)
  oldCenter := (1386713552692216777001458333034517 / 6400000000000000000000000000000000 : ℚ)
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

def cell_2373 : Cell := { cellDefaults with
  domain := ⟨(549500000000000043 / 8000000000000000000 : ℚ), (1099500000000000087 / 16000000000000000000 : ℚ)⟩
  center := (2198500000000000173 / 32000000000000000000 : ℚ)
  supportValue := (7890882825727269 / 2500000000000000 : ℚ)
  supportSlope := (1816619317719411 / 200000000000000 : ℚ)
  oldCenter := (17348105892361402261622728850817537 / 80000000000000000000000000000000000 : ℚ)
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

def cell_2374 : Cell := { cellDefaults with
  domain := ⟨(1099500000000000087 / 16000000000000000000 : ℚ), (137500000000000011 / 2000000000000000000 : ℚ)⟩
  center := (87980000000000007 / 1280000000000000000 : ℚ)
  supportValue := (1578318509406307 / 500000000000000 : ℚ)
  supportSlope := (4541634841558553 / 500000000000000 : ℚ)
  oldCenter := (138860462457566900908229565844149 / 640000000000000000000000000000000 : ℚ)
  oldLo := (433 / 2000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_571, piece_572]
}

def cell_2375 : Cell := { cellDefaults with
  domain := ⟨(137500000000000011 / 2000000000000000000 : ℚ), (110100000000000009 / 1600000000000000000 : ℚ)⟩
  center := (1100500000000000089 / 16000000000000000000 : ℚ)
  supportValue := (7892650991420691 / 2500000000000000 : ℚ)
  supportSlope := (567463939686873 / 62500000000000 : ℚ)
  oldCenter := (8685862416058471147945938236441499 / 40000000000000000000000000000000000 : ℚ)
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

def cell_2376 : Cell := { cellDefaults with
  domain := ⟨(110100000000000009 / 1600000000000000000 : ℚ), (1101500000000000091 / 16000000000000000000 : ℚ)⟩
  center := (2202500000000000181 / 32000000000000000000 : ℚ)
  supportValue := (493357546545697 / 156250000000000 : ℚ)
  supportSlope := (4541709252379169 / 500000000000000 : ℚ)
  oldCenter := (1086619996266897731797715924771157 / 5000000000000000000000000000000000 : ℚ)
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

def cell_2377 : Cell := { cellDefaults with
  domain := ⟨(1101500000000000091 / 16000000000000000000 : ℚ), (275500000000000023 / 4000000000000000000 : ℚ)⟩
  center := (2203500000000000183 / 32000000000000000000 : ℚ)
  supportValue := (6315544392736073 / 2000000000000000 : ℚ)
  supportSlope := (9085968229925339 / 1000000000000000 : ℚ)
  oldCenter := (13916302069393938011244623870701359 / 64000000000000000000000000000000000 : ℚ)
  oldLo := (217 / 1000 : ℚ)
  oldHi := (109 / 500 : ℚ)
  oldPieces := [piece_572, piece_573]
}

def cell_2378 : Cell := { cellDefaults with
  domain := ⟨(275500000000000023 / 4000000000000000000 : ℚ), (551500000000000047 / 8000000000000000000 : ℚ)⟩
  center := (1102500000000000093 / 16000000000000000000 : ℚ)
  supportValue := (3158195662615123 / 1000000000000000 : ℚ)
  supportSlope := (1815947319551011 / 200000000000000 : ℚ)
  oldCenter := (3481910718033173401212196623206439 / 16000000000000000000000000000000000 : ℚ)
  oldLo := (87 / 400 : ℚ)
  oldHi := (109 / 500 : ℚ)
  oldPieces := [piece_573]
}

def cell_2379 : Cell := { cellDefaults with
  domain := ⟨(551500000000000047 / 8000000000000000000 : ℚ), (220700000000000019 / 3200000000000000000 : ℚ)⟩
  center := (2206500000000000189 / 32000000000000000000 : ℚ)
  supportValue := (3158623579188781 / 1000000000000000 : ℚ)
  supportSlope := (9083721669668403 / 1000000000000000 : ℚ)
  oldCenter := (6969502927480045873479856466679609 / 32000000000000000000000000000000000 : ℚ)
  oldLo := (87 / 400 : ℚ)
  oldHi := (109 / 500 : ℚ)
  oldPieces := [piece_573]
}

def cell_2380 : Cell := { cellDefaults with
  domain := ⟨(220700000000000019 / 3200000000000000000 : ℚ), (34500000000000003 / 500000000000000000 : ℚ)⟩
  center := (2207500000000000191 / 32000000000000000000 : ℚ)
  supportValue := (63178149740593 / 20000000000000 : ℚ)
  supportSlope := (2271596816058259 / 250000000000000 : ℚ)
  oldCenter := (139465765552359059567026600453263 / 640000000000000000000000000000000 : ℚ)
  oldLo := (87 / 400 : ℚ)
  oldHi := (109 / 500 : ℚ)
  oldPieces := [piece_573]
}

def cell_2381 : Cell := { cellDefaults with
  domain := ⟨(34500000000000003 / 500000000000000000 : ℚ), (34515625000000003 / 500000000000000000 : ℚ)⟩
  r := (12000414276013 / 10000000000000 : ℚ)
  w := (8342955459389 / 10000000000000 : ℚ)
  center := (34507812500000003 / 500000000000000000 : ℚ)
  supportValue := (126291842092291 / 40000000000000 : ℚ)
  supportSlope := (9077115814932313 / 1000000000000000 : ℚ)
  oldCenter := (4358055207200385902313026276873 / 20000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_249
  oldLo := (87 / 400 : ℚ)
  oldHi := (109 / 500 : ℚ)
  oldPieces := [piece_573]
}

def cell_2382 : Cell := { cellDefaults with
  domain := ⟨(34515625000000003 / 500000000000000000 : ℚ), (34531250000000003 / 500000000000000000 : ℚ)⟩
  r := (12000414276013 / 10000000000000 : ℚ)
  w := (8342955459389 / 10000000000000 : ℚ)
  center := (34523437500000003 / 500000000000000000 : ℚ)
  supportValue := (31575796967328067 / 10000000000000000 : ℚ)
  supportSlope := (17720320105441 / 1953125000000 : ℚ)
  oldCenter := (1090105053114240157797703401984201 / 5000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_249
  oldLo := (87 / 400 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_573, piece_574]
}

def cell_2383 : Cell := { cellDefaults with
  domain := ⟨(34531250000000003 / 500000000000000000 : ℚ), (34562500000000003 / 500000000000000000 : ℚ)⟩
  r := (12000414276013 / 10000000000000 : ℚ)
  w := (8342955459389 / 10000000000000 : ℚ)
  center := (34546875000000003 / 500000000000000000 : ℚ)
  supportValue := (1263201084802661 / 400000000000000 : ℚ)
  supportSlope := (9073498470144159 / 1000000000000000 : ℚ)
  oldCenter := (43639649976541933023978254407983 / 200000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_249
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

def cell_2384 : Cell := { cellDefaults with
  domain := ⟨(34562500000000003 / 500000000000000000 : ℚ), (34578125000000003 / 500000000000000000 : ℚ)⟩
  r := (12000414276013 / 10000000000000 : ℚ)
  w := (8342955459389 / 10000000000000 : ℚ)
  center := (34570312500000003 / 500000000000000000 : ℚ)
  supportValue := (6316860674179579 / 2000000000000000 : ℚ)
  supportSlope := (9077528651801003 / 1000000000000000 : ℚ)
  oldCenter := (218375847525348746099019522538737 / 1000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_249
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

def cell_2385 : Cell := { cellDefaults with
  domain := ⟨(34578125000000003 / 500000000000000000 : ℚ), (34593750000000003 / 500000000000000000 : ℚ)⟩
  r := (12000414276013 / 10000000000000 : ℚ)
  w := (8342955459389 / 10000000000000 : ℚ)
  center := (34585937500000003 / 500000000000000000 : ℚ)
  supportValue := (1579357025934753 / 500000000000000 : ℚ)
  supportSlope := (181511187201977 / 20000000000000 : ℚ)
  oldCenter := (54623543389165251074008577804259 / 250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_249
  oldLo := (109 / 500 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_574, piece_575]
}

def cell_2386 : Cell := { cellDefaults with
  domain := ⟨(34593750000000003 / 500000000000000000 : ℚ), (34625000000000003 / 500000000000000000 : ℚ)⟩
  r := (12000414276013 / 10000000000000 : ℚ)
  w := (8342955459389 / 10000000000000 : ℚ)
  center := (34609375000000003 / 500000000000000000 : ℚ)
  supportValue := (7897842753235509 / 2500000000000000 : ℚ)
  supportSlope := (2268475875926157 / 250000000000000 : ℚ)
  oldCenter := (273339401537760217990403259706527 / 1250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_249
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

def cell_2387 : Cell := { cellDefaults with
  domain := ⟨(34625000000000003 / 500000000000000000 : ℚ), (34640625000000003 / 500000000000000000 : ℚ)⟩
  r := (12000414276013 / 10000000000000 : ℚ)
  w := (8342955459389 / 10000000000000 : ℚ)
  center := (34632812500000003 / 500000000000000000 : ℚ)
  supportValue := (15797823729549667 / 5000000000000000 : ℚ)
  supportSlope := (9077923118013587 / 1000000000000000 : ℚ)
  oldCenter := (547123067133544374041908688649001 / 2500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_249
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

def cell_2388 : Cell := { cellDefaults with
  domain := ⟨(34640625000000003 / 500000000000000000 : ℚ), (34656250000000003 / 500000000000000000 : ℚ)⟩
  r := (12000414276013 / 10000000000000 : ℚ)
  w := (8342955459389 / 10000000000000 : ℚ)
  center := (34648437500000003 / 500000000000000000 : ℚ)
  supportValue := (631969694581267 / 200000000000000 : ℚ)
  supportSlope := (907826533935463 / 100000000000000 : ℚ)
  oldCenter := (21896762464593120216221583743801 / 100000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_249
  oldLo := (437 / 2000 : ℚ)
  oldHi := (439 / 2000 : ℚ)
  oldPieces := [piece_575, piece_576]
}

def cell_2389 : Cell := { cellDefaults with
  domain := ⟨(34656250000000003 / 500000000000000000 : ℚ), (34687500000000003 / 500000000000000000 : ℚ)⟩
  r := (12000414276013 / 10000000000000 : ℚ)
  w := (8342955459389 / 10000000000000 : ℚ)
  center := (34671875000000003 / 500000000000000000 : ℚ)
  supportValue := (197516975763403 / 62500000000000 : ℚ)
  supportSlope := (567143136673387 / 62500000000000 : ℚ)
  oldCenter := (6848283894046738983175927290209 / 31250000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_249
  oldLo := (219 / 1000 : ℚ)
  oldHi := (439 / 2000 : ℚ)
  oldPieces := [piece_576]
}

def cell_2390 : Cell := { cellDefaults with
  domain := ⟨(34687500000000003 / 500000000000000000 : ℚ), (34703125000000003 / 500000000000000000 : ℚ)⟩
  r := (12000414276013 / 10000000000000 : ℚ)
  w := (8342955459389 / 10000000000000 : ℚ)
  center := (34695312500000003 / 500000000000000000 : ℚ)
  supportValue := (3160699275496489 / 1000000000000000 : ℚ)
  supportSlope := (4539149484841687 / 500000000000000 : ℚ)
  oldCenter := (109661449081874287989910326489467 / 500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_249
  oldLo := (219 / 1000 : ℚ)
  oldHi := (439 / 2000 : ℚ)
  oldPieces := [piece_576]
}

def cell_2391 : Cell := { cellDefaults with
  domain := ⟨(34703125000000003 / 500000000000000000 : ℚ), (34718750000000003 / 500000000000000000 : ℚ)⟩
  r := (12000414276013 / 10000000000000 : ℚ)
  w := (8342955459389 / 10000000000000 : ℚ)
  center := (34710937500000003 / 500000000000000000 : ℚ)
  supportValue := (1580491507062557 / 500000000000000 : ℚ)
  supportSlope := (454046069266667 / 50000000000000 : ℚ)
  oldCenter := (54860341920929229358662021187671 / 250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_249
  oldLo := (219 / 1000 : ℚ)
  oldPieces := [piece_576, piece_577]
}

def cell_2392 : Cell := { cellDefaults with
  domain := ⟨(34718750000000003 / 500000000000000000 : ℚ), (34734375000000003 / 500000000000000000 : ℚ)⟩
  r := (12000414276013 / 10000000000000 : ℚ)
  w := (8342955459389 / 10000000000000 : ℚ)
  center := (34726562500000003 / 500000000000000000 : ℚ)
  supportValue := (31612666733705317 / 10000000000000000 : ℚ)
  supportSlope := (9073327922635599 / 1000000000000000 : ℚ)
  oldCenter := (1097799247119688642220812701115951 / 5000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_249
  oldPieces := [piece_577]
}

def cell_2393 : Cell := { cellDefaults with
  domain := ⟨(34734375000000003 / 500000000000000000 : ℚ), (34750000000000003 / 500000000000000000 : ℚ)⟩
  r := (12000414276013 / 10000000000000 : ℚ)
  w := (8342955459389 / 10000000000000 : ℚ)
  center := (34742187500000003 / 500000000000000000 : ℚ)
  supportValue := (15807751281653517 / 5000000000000000 : ℚ)
  supportSlope := (4537994315569449 / 500000000000000 : ℚ)
  oldCenter := (549195858980571845071691344960551 / 2500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_249
  oldPieces := [piece_577]
}

def cell_2394 : Cell := { cellDefaults with
  domain := ⟨(34750000000000003 / 500000000000000000 : ℚ), (1112500000000000097 / 16000000000000000000 : ℚ)⟩
  r := (11981990887251 / 10000000000000 : ℚ)
  w := (1304411739201 / 1562500000000 : ℚ)
  center := (2224500000000000193 / 32000000000000000000 : ℚ)
  supportValue := (1579969314378311 / 500000000000000 : ℚ)
  supportSlope := (9066591264513573 / 1000000000000000 : ℚ)
  oldCenter := (3514641739834553124434077675014023 / 16000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_250
  oldPieces := [piece_577]
}

def cell_2395 : Cell := { cellDefaults with
  domain := ⟨(1112500000000000097 / 16000000000000000000 : ℚ), (556500000000000049 / 8000000000000000000 : ℚ)⟩
  r := (11981990887251 / 10000000000000 : ℚ)
  w := (1304411739201 / 1562500000000 : ℚ)
  center := (445100000000000039 / 6400000000000000000 : ℚ)
  supportValue := (6320444003410059 / 2000000000000000 : ℚ)
  supportSlope := (4534642272304259 / 500000000000000 : ℚ)
  oldCenter := (2813229625917817507397316132992301 / 12800000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_250
  oldPieces := [piece_577]
}

def cell_2396 : Cell := { cellDefaults with
  domain := ⟨(556500000000000049 / 8000000000000000000 : ℚ), (1113500000000000099 / 16000000000000000000 : ℚ)⟩
  r := (11981990887251 / 10000000000000 : ℚ)
  w := (1304411739201 / 1562500000000 : ℚ)
  center := (2226500000000000197 / 32000000000000000000 : ℚ)
  supportValue := (31605054589228523 / 10000000000000000 : ℚ)
  supportSlope := (9071984511677993 / 1000000000000000 : ℚ)
  oldCenter := (70368654042917312685695754078019031 / 320000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_250
  oldPieces := [piece_577]
}

def cell_2397 : Cell := { cellDefaults with
  domain := ⟨(1113500000000000099 / 16000000000000000000 : ℚ), (11140000000000001 / 160000000000000000 : ℚ)⟩
  r := (11981990887251 / 10000000000000 : ℚ)
  w := (1304411739201 / 1562500000000 : ℚ)
  center := (2227500000000000199 / 32000000000000000000 : ℚ)
  supportValue := (15803944723078933 / 5000000000000000 : ℚ)
  supportSlope := (2266935364339413 / 250000000000000 : ℚ)
  oldCenter := (35203286870658326402484999892707667 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_250
  oldHi := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_577, piece_578]
}

def cell_2398 : Cell := { cellDefaults with
  domain := ⟨(11140000000000001 / 160000000000000000 : ℚ), (557500000000000051 / 8000000000000000000 : ℚ)⟩
  r := (11981990887251 / 10000000000000 : ℚ)
  w := (1304411739201 / 1562500000000 : ℚ)
  center := (1114500000000000101 / 16000000000000000000 : ℚ)
  supportValue := (6322423437373617 / 2000000000000000 : ℚ)
  supportSlope := (2267098710611033 / 250000000000000 : ℚ)
  oldCenter := (7046340920952896785064767174735317 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_250
  oldLo := (11 / 50 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_578, piece_579]
}

def cell_2399 : Cell := { cellDefaults with
  domain := ⟨(557500000000000051 / 8000000000000000000 : ℚ), (139500000000000013 / 2000000000000000000 : ℚ)⟩
  r := (11981990887251 / 10000000000000 : ℚ)
  w := (1304411739201 / 1562500000000 : ℚ)
  center := (1115500000000000103 / 16000000000000000000 : ℚ)
  supportValue := (3161778660430617 / 1000000000000000 : ℚ)
  supportSlope := (4535711401246081 / 500000000000000 : ℚ)
  oldCenter := (3526964095710353589163202024353551 / 16000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_250
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldHi := (221 / 1000 : ℚ)
  oldPieces := [piece_579, piece_580]
}

theorem check_2350 : cell_2350.check = true := by
  decide +kernel

theorem check_2351 : cell_2351.check = true := by
  decide +kernel

theorem check_2352 : cell_2352.check = true := by
  decide +kernel

theorem check_2353 : cell_2353.check = true := by
  decide +kernel

theorem check_2354 : cell_2354.check = true := by
  decide +kernel

theorem check_2355 : cell_2355.check = true := by
  decide +kernel

theorem check_2356 : cell_2356.check = true := by
  decide +kernel

theorem check_2357 : cell_2357.check = true := by
  decide +kernel

theorem check_2358 : cell_2358.check = true := by
  decide +kernel

theorem check_2359 : cell_2359.check = true := by
  decide +kernel

theorem check_2360 : cell_2360.check = true := by
  decide +kernel

theorem check_2361 : cell_2361.check = true := by
  decide +kernel

theorem check_2362 : cell_2362.check = true := by
  decide +kernel

theorem check_2363 : cell_2363.check = true := by
  decide +kernel

theorem check_2364 : cell_2364.check = true := by
  decide +kernel

theorem check_2365 : cell_2365.check = true := by
  decide +kernel

theorem check_2366 : cell_2366.check = true := by
  decide +kernel

theorem check_2367 : cell_2367.check = true := by
  decide +kernel

theorem check_2368 : cell_2368.check = true := by
  decide +kernel

theorem check_2369 : cell_2369.check = true := by
  decide +kernel

theorem check_2370 : cell_2370.check = true := by
  decide +kernel

theorem check_2371 : cell_2371.check = true := by
  decide +kernel

theorem check_2372 : cell_2372.check = true := by
  decide +kernel

theorem check_2373 : cell_2373.check = true := by
  decide +kernel

theorem check_2374 : cell_2374.check = true := by
  decide +kernel

theorem check_2375 : cell_2375.check = true := by
  decide +kernel

theorem check_2376 : cell_2376.check = true := by
  decide +kernel

theorem check_2377 : cell_2377.check = true := by
  decide +kernel

theorem check_2378 : cell_2378.check = true := by
  decide +kernel

theorem check_2379 : cell_2379.check = true := by
  decide +kernel

theorem check_2380 : cell_2380.check = true := by
  decide +kernel

theorem check_2381 : cell_2381.check = true := by
  decide +kernel

theorem check_2382 : cell_2382.check = true := by
  decide +kernel

theorem check_2383 : cell_2383.check = true := by
  decide +kernel

theorem check_2384 : cell_2384.check = true := by
  decide +kernel

theorem check_2385 : cell_2385.check = true := by
  decide +kernel

theorem check_2386 : cell_2386.check = true := by
  decide +kernel

theorem check_2387 : cell_2387.check = true := by
  decide +kernel

theorem check_2388 : cell_2388.check = true := by
  decide +kernel

theorem check_2389 : cell_2389.check = true := by
  decide +kernel

theorem check_2390 : cell_2390.check = true := by
  decide +kernel

theorem check_2391 : cell_2391.check = true := by
  decide +kernel

theorem check_2392 : cell_2392.check = true := by
  decide +kernel

theorem check_2393 : cell_2393.check = true := by
  decide +kernel

theorem check_2394 : cell_2394.check = true := by
  decide +kernel

theorem check_2395 : cell_2395.check = true := by
  decide +kernel

theorem check_2396 : cell_2396.check = true := by
  decide +kernel

theorem check_2397 : cell_2397.check = true := by
  decide +kernel

theorem check_2398 : cell_2398.check = true := by
  decide +kernel

theorem check_2399 : cell_2399.check = true := by
  decide +kernel

def cells : List Cell := [cell_2350, cell_2351, cell_2352, cell_2353, cell_2354, cell_2355, cell_2356, cell_2357, cell_2358, cell_2359, cell_2360, cell_2361, cell_2362, cell_2363, cell_2364, cell_2365, cell_2366, cell_2367, cell_2368, cell_2369, cell_2370, cell_2371, cell_2372, cell_2373, cell_2374, cell_2375, cell_2376, cell_2377, cell_2378, cell_2379, cell_2380, cell_2381, cell_2382, cell_2383, cell_2384, cell_2385, cell_2386, cell_2387, cell_2388, cell_2389, cell_2390, cell_2391, cell_2392, cell_2393, cell_2394, cell_2395, cell_2396, cell_2397, cell_2398, cell_2399]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_2350, check_2351, check_2352, check_2353, check_2354, check_2355, check_2356, check_2357, check_2358, check_2359, check_2360, check_2361, check_2362, check_2363, check_2364, check_2365, check_2366, check_2367, check_2368, check_2369, check_2370, check_2371, check_2372, check_2373, check_2374, check_2375, check_2376, check_2377, check_2378, check_2379, check_2380, check_2381, check_2382, check_2383, check_2384, check_2385, check_2386, check_2387, check_2388, check_2389, check_2390, check_2391, check_2392, check_2393, check_2394, check_2395, check_2396, check_2397, check_2398, check_2399, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0047

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0047
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0047
open AnalyticBounds.ExpressionCertificate

theorem linked_2350 : Linked cell_2350 pieces := by
  apply Linked.of_piece piece_246 piece_246_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2350, List.cons_subset, List.nil_subset, and_true]
  exact piece_564_mem

theorem linked_2351 : Linked cell_2351 pieces := by
  apply Linked.of_piece piece_246 piece_246_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2351, List.cons_subset, List.nil_subset, and_true]
  exact piece_564_mem

theorem linked_2352 : Linked cell_2352 pieces := by
  apply Linked.of_piece piece_246 piece_246_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2352, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_564_mem, piece_565_mem⟩

theorem linked_2353 : Linked cell_2353 pieces := by
  apply Linked.of_piece piece_246 piece_246_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2353, List.cons_subset, List.nil_subset, and_true]
  exact piece_565_mem

theorem linked_2354 : Linked cell_2354 pieces := by
  apply Linked.of_piece piece_246 piece_246_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2354, List.cons_subset, List.nil_subset, and_true]
  exact piece_565_mem

theorem linked_2355 : Linked cell_2355 pieces := by
  apply Linked.of_piece piece_246 piece_246_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2355, List.cons_subset, List.nil_subset, and_true]
  exact piece_565_mem

theorem linked_2356 : Linked cell_2356 pieces := by
  apply Linked.of_piece piece_247 piece_247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2356, List.cons_subset, List.nil_subset, and_true]
  exact piece_565_mem

theorem linked_2357 : Linked cell_2357 pieces := by
  apply Linked.of_piece piece_247 piece_247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2357, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_565_mem, piece_566_mem⟩

theorem linked_2358 : Linked cell_2358 pieces := by
  apply Linked.of_piece piece_247 piece_247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2358, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_566_mem, piece_567_mem⟩

theorem linked_2359 : Linked cell_2359 pieces := by
  apply Linked.of_piece piece_247 piece_247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2359, List.cons_subset, List.nil_subset, and_true]
  exact piece_567_mem

theorem linked_2360 : Linked cell_2360 pieces := by
  apply Linked.of_piece piece_247 piece_247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2360, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_567_mem, piece_568_mem⟩

theorem linked_2361 : Linked cell_2361 pieces := by
  apply Linked.of_piece piece_247 piece_247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2361, List.cons_subset, List.nil_subset, and_true]
  exact piece_568_mem

theorem linked_2362 : Linked cell_2362 pieces := by
  apply Linked.of_piece piece_247 piece_247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2362, List.cons_subset, List.nil_subset, and_true]
  exact piece_568_mem

theorem linked_2363 : Linked cell_2363 pieces := by
  apply Linked.of_piece piece_247 piece_247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2363, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_568_mem, piece_569_mem⟩

theorem linked_2364 : Linked cell_2364 pieces := by
  apply Linked.of_piece piece_247 piece_247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2364, List.cons_subset, List.nil_subset, and_true]
  exact piece_569_mem

theorem linked_2365 : Linked cell_2365 pieces := by
  apply Linked.of_piece piece_247 piece_247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2365, List.cons_subset, List.nil_subset, and_true]
  exact piece_569_mem

theorem linked_2366 : Linked cell_2366 pieces := by
  apply Linked.of_piece piece_247 piece_247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2366, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_569_mem, piece_570_mem⟩

theorem linked_2367 : Linked cell_2367 pieces := by
  apply Linked.of_piece piece_247 piece_247_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2367, List.cons_subset, List.nil_subset, and_true]
  exact piece_570_mem

theorem linked_2368 : Linked cell_2368 pieces := by
  apply Linked.of_piece piece_248 piece_248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2368, List.cons_subset, List.nil_subset, and_true]
  exact piece_570_mem

theorem linked_2369 : Linked cell_2369 pieces := by
  apply Linked.of_piece piece_248 piece_248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2369, List.cons_subset, List.nil_subset, and_true]
  exact piece_570_mem

theorem linked_2370 : Linked cell_2370 pieces := by
  apply Linked.of_piece piece_248 piece_248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2370, List.cons_subset, List.nil_subset, and_true]
  exact piece_570_mem

theorem linked_2371 : Linked cell_2371 pieces := by
  apply Linked.of_piece piece_248 piece_248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2371, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_570_mem, piece_571_mem⟩

theorem linked_2372 : Linked cell_2372 pieces := by
  apply Linked.of_piece piece_248 piece_248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2372, List.cons_subset, List.nil_subset, and_true]
  exact piece_571_mem

theorem linked_2373 : Linked cell_2373 pieces := by
  apply Linked.of_piece piece_248 piece_248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2373, List.cons_subset, List.nil_subset, and_true]
  exact piece_571_mem

theorem linked_2374 : Linked cell_2374 pieces := by
  apply Linked.of_piece piece_248 piece_248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2374, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_571_mem, piece_572_mem⟩

theorem linked_2375 : Linked cell_2375 pieces := by
  apply Linked.of_piece piece_248 piece_248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2375, List.cons_subset, List.nil_subset, and_true]
  exact piece_572_mem

theorem linked_2376 : Linked cell_2376 pieces := by
  apply Linked.of_piece piece_248 piece_248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2376, List.cons_subset, List.nil_subset, and_true]
  exact piece_572_mem

theorem linked_2377 : Linked cell_2377 pieces := by
  apply Linked.of_piece piece_248 piece_248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2377, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_572_mem, piece_573_mem⟩

theorem linked_2378 : Linked cell_2378 pieces := by
  apply Linked.of_piece piece_248 piece_248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2378, List.cons_subset, List.nil_subset, and_true]
  exact piece_573_mem

theorem linked_2379 : Linked cell_2379 pieces := by
  apply Linked.of_piece piece_248 piece_248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2379, List.cons_subset, List.nil_subset, and_true]
  exact piece_573_mem

theorem linked_2380 : Linked cell_2380 pieces := by
  apply Linked.of_piece piece_248 piece_248_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2380, List.cons_subset, List.nil_subset, and_true]
  exact piece_573_mem

theorem linked_2381 : Linked cell_2381 pieces := by
  apply Linked.of_piece piece_249 piece_249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2381, List.cons_subset, List.nil_subset, and_true]
  exact piece_573_mem

theorem linked_2382 : Linked cell_2382 pieces := by
  apply Linked.of_piece piece_249 piece_249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2382, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_573_mem, piece_574_mem⟩

theorem linked_2383 : Linked cell_2383 pieces := by
  apply Linked.of_piece piece_249 piece_249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2383, List.cons_subset, List.nil_subset, and_true]
  exact piece_574_mem

theorem linked_2384 : Linked cell_2384 pieces := by
  apply Linked.of_piece piece_249 piece_249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2384, List.cons_subset, List.nil_subset, and_true]
  exact piece_574_mem

theorem linked_2385 : Linked cell_2385 pieces := by
  apply Linked.of_piece piece_249 piece_249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2385, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_574_mem, piece_575_mem⟩

theorem linked_2386 : Linked cell_2386 pieces := by
  apply Linked.of_piece piece_249 piece_249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2386, List.cons_subset, List.nil_subset, and_true]
  exact piece_575_mem

theorem linked_2387 : Linked cell_2387 pieces := by
  apply Linked.of_piece piece_249 piece_249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2387, List.cons_subset, List.nil_subset, and_true]
  exact piece_575_mem

theorem linked_2388 : Linked cell_2388 pieces := by
  apply Linked.of_piece piece_249 piece_249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2388, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_575_mem, piece_576_mem⟩

theorem linked_2389 : Linked cell_2389 pieces := by
  apply Linked.of_piece piece_249 piece_249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2389, List.cons_subset, List.nil_subset, and_true]
  exact piece_576_mem

theorem linked_2390 : Linked cell_2390 pieces := by
  apply Linked.of_piece piece_249 piece_249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2390, List.cons_subset, List.nil_subset, and_true]
  exact piece_576_mem

theorem linked_2391 : Linked cell_2391 pieces := by
  apply Linked.of_piece piece_249 piece_249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2391, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_576_mem, piece_577_mem⟩

theorem linked_2392 : Linked cell_2392 pieces := by
  apply Linked.of_piece piece_249 piece_249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2392, List.cons_subset, List.nil_subset, and_true]
  exact piece_577_mem

theorem linked_2393 : Linked cell_2393 pieces := by
  apply Linked.of_piece piece_249 piece_249_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2393, List.cons_subset, List.nil_subset, and_true]
  exact piece_577_mem

theorem linked_2394 : Linked cell_2394 pieces := by
  apply Linked.of_piece piece_250 piece_250_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2394, List.cons_subset, List.nil_subset, and_true]
  exact piece_577_mem

theorem linked_2395 : Linked cell_2395 pieces := by
  apply Linked.of_piece piece_250 piece_250_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2395, List.cons_subset, List.nil_subset, and_true]
  exact piece_577_mem

theorem linked_2396 : Linked cell_2396 pieces := by
  apply Linked.of_piece piece_250 piece_250_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2396, List.cons_subset, List.nil_subset, and_true]
  exact piece_577_mem

theorem linked_2397 : Linked cell_2397 pieces := by
  apply Linked.of_piece piece_250 piece_250_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2397, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_577_mem, piece_578_mem⟩

theorem linked_2398 : Linked cell_2398 pieces := by
  apply Linked.of_piece piece_250 piece_250_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2398, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_578_mem, piece_579_mem⟩

theorem linked_2399 : Linked cell_2399 pieces := by
  apply Linked.of_piece piece_250 piece_250_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2399, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_579_mem, piece_580_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0047.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0047.cells,List.forall_mem_cons]
  exact ⟨linked_2350, linked_2351, linked_2352, linked_2353, linked_2354, linked_2355, linked_2356, linked_2357, linked_2358, linked_2359, linked_2360, linked_2361, linked_2362, linked_2363, linked_2364, linked_2365, linked_2366, linked_2367, linked_2368, linked_2369, linked_2370, linked_2371, linked_2372, linked_2373, linked_2374, linked_2375, linked_2376, linked_2377, linked_2378, linked_2379, linked_2380, linked_2381, linked_2382, linked_2383, linked_2384, linked_2385, linked_2386, linked_2387, linked_2388, linked_2389, linked_2390, linked_2391, linked_2392, linked_2393, linked_2394, linked_2395, linked_2396, linked_2397, linked_2398, linked_2399, by simp⟩

theorem covered : covers (135500000000000009 / 2000000000000000000 : ℚ) (139500000000000013 / 2000000000000000000 : ℚ)
    (SourceCertificates.Chunk0047.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0047
