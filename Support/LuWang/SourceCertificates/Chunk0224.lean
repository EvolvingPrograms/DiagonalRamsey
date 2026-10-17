import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0224
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
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

def cell_11200 : Cell := { cellDefaults with
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
  apply Linked.of_piece piece_1349 piece_1349_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11200, List.cons_subset, List.nil_subset, and_true]
  exact piece_888_mem

theorem linked_11201 : Linked cell_11201 pieces := by
  apply Linked.of_piece piece_1349 piece_1349_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11201, List.cons_subset, List.nil_subset, and_true]
  exact piece_888_mem

theorem linked_11202 : Linked cell_11202 pieces := by
  apply Linked.of_piece piece_1350 piece_1350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11202, List.cons_subset, List.nil_subset, and_true]
  exact piece_888_mem

theorem linked_11203 : Linked cell_11203 pieces := by
  apply Linked.of_piece piece_1351 piece_1351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11203, List.cons_subset, List.nil_subset, and_true]
  exact piece_888_mem

theorem linked_11204 : Linked cell_11204 pieces := by
  apply Linked.of_piece piece_1351 piece_1351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11204, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_887_mem, piece_888_mem⟩

theorem linked_11205 : Linked cell_11205 pieces := by
  apply Linked.of_piece piece_1351 piece_1351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11205, List.cons_subset, List.nil_subset, and_true]
  exact piece_887_mem

theorem linked_11206 : Linked cell_11206 pieces := by
  apply Linked.of_piece piece_1351 piece_1351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11206, List.cons_subset, List.nil_subset, and_true]
  exact piece_887_mem

theorem linked_11207 : Linked cell_11207 pieces := by
  apply Linked.of_piece piece_1352 piece_1352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11207, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_887_mem, piece_888_mem⟩

theorem linked_11208 : Linked cell_11208 pieces := by
  apply Linked.of_piece piece_1352 piece_1352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11208, List.cons_subset, List.nil_subset, and_true]
  exact piece_887_mem

theorem linked_11209 : Linked cell_11209 pieces := by
  apply Linked.of_piece piece_1352 piece_1352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11209, List.cons_subset, List.nil_subset, and_true]
  exact piece_887_mem

theorem linked_11210 : Linked cell_11210 pieces := by
  apply Linked.of_piece piece_1352 piece_1352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11210, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_886_mem, piece_887_mem⟩

theorem linked_11211 : Linked cell_11211 pieces := by
  apply Linked.of_piece piece_1353 piece_1353_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11211, List.cons_subset, List.nil_subset, and_true]
  exact piece_887_mem

theorem linked_11212 : Linked cell_11212 pieces := by
  apply Linked.of_piece piece_1353 piece_1353_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11212, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_886_mem, piece_887_mem⟩

theorem linked_11213 : Linked cell_11213 pieces := by
  apply Linked.of_piece piece_1353 piece_1353_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11213, List.cons_subset, List.nil_subset, and_true]
  exact piece_886_mem

theorem linked_11214 : Linked cell_11214 pieces := by
  apply Linked.of_piece piece_1353 piece_1353_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11214, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_885_mem, piece_886_mem⟩

theorem linked_11215 : Linked cell_11215 pieces := by
  apply Linked.of_piece piece_1354 piece_1354_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11215, List.cons_subset, List.nil_subset, and_true]
  exact piece_886_mem

theorem linked_11216 : Linked cell_11216 pieces := by
  apply Linked.of_piece piece_1354 piece_1354_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11216, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_885_mem, piece_886_mem⟩

theorem linked_11217 : Linked cell_11217 pieces := by
  apply Linked.of_piece piece_1354 piece_1354_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11217, List.cons_subset, List.nil_subset, and_true]
  exact piece_885_mem

theorem linked_11218 : Linked cell_11218 pieces := by
  apply Linked.of_piece piece_1354 piece_1354_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11218, List.cons_subset, List.nil_subset, and_true]
  exact piece_885_mem

theorem linked_11219 : Linked cell_11219 pieces := by
  apply Linked.of_piece piece_1355 piece_1355_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11219, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_885_mem, piece_886_mem⟩

theorem linked_11220 : Linked cell_11220 pieces := by
  apply Linked.of_piece piece_1355 piece_1355_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11220, List.cons_subset, List.nil_subset, and_true]
  exact piece_885_mem

theorem linked_11221 : Linked cell_11221 pieces := by
  apply Linked.of_piece piece_1355 piece_1355_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11221, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_884_mem, piece_885_mem⟩

theorem linked_11222 : Linked cell_11222 pieces := by
  apply Linked.of_piece piece_1355 piece_1355_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11222, List.cons_subset, List.nil_subset, and_true]
  exact piece_884_mem

theorem linked_11223 : Linked cell_11223 pieces := by
  apply Linked.of_piece piece_1356 piece_1356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11223, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_884_mem, piece_885_mem⟩

theorem linked_11224 : Linked cell_11224 pieces := by
  apply Linked.of_piece piece_1356 piece_1356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11224, List.cons_subset, List.nil_subset, and_true]
  exact piece_884_mem

theorem linked_11225 : Linked cell_11225 pieces := by
  apply Linked.of_piece piece_1356 piece_1356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11225, List.cons_subset, List.nil_subset, and_true]
  exact piece_884_mem

theorem linked_11226 : Linked cell_11226 pieces := by
  apply Linked.of_piece piece_1356 piece_1356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11226, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_883_mem, piece_884_mem⟩

theorem linked_11227 : Linked cell_11227 pieces := by
  apply Linked.of_piece piece_1357 piece_1357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11227, List.cons_subset, List.nil_subset, and_true]
  exact piece_884_mem

theorem linked_11228 : Linked cell_11228 pieces := by
  apply Linked.of_piece piece_1357 piece_1357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11228, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_883_mem, piece_884_mem⟩

theorem linked_11229 : Linked cell_11229 pieces := by
  apply Linked.of_piece piece_1357 piece_1357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11229, List.cons_subset, List.nil_subset, and_true]
  exact piece_883_mem

theorem linked_11230 : Linked cell_11230 pieces := by
  apply Linked.of_piece piece_1357 piece_1357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11230, List.cons_subset, List.nil_subset, and_true]
  exact piece_883_mem

theorem linked_11231 : Linked cell_11231 pieces := by
  apply Linked.of_piece piece_1358 piece_1358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11231, List.cons_subset, List.nil_subset, and_true]
  exact piece_883_mem

theorem linked_11232 : Linked cell_11232 pieces := by
  apply Linked.of_piece piece_1358 piece_1358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11232, List.cons_subset, List.nil_subset, and_true]
  exact piece_883_mem

theorem linked_11233 : Linked cell_11233 pieces := by
  apply Linked.of_piece piece_1358 piece_1358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11233, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_882_mem, piece_883_mem⟩

theorem linked_11234 : Linked cell_11234 pieces := by
  apply Linked.of_piece piece_1358 piece_1358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11234, List.cons_subset, List.nil_subset, and_true]
  exact piece_882_mem

theorem linked_11235 : Linked cell_11235 pieces := by
  apply Linked.of_piece piece_1359 piece_1359_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11235, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_882_mem, piece_883_mem⟩

theorem linked_11236 : Linked cell_11236 pieces := by
  apply Linked.of_piece piece_1359 piece_1359_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11236, List.cons_subset, List.nil_subset, and_true]
  exact piece_882_mem

theorem linked_11237 : Linked cell_11237 pieces := by
  apply Linked.of_piece piece_1359 piece_1359_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11237, List.cons_subset, List.nil_subset, and_true]
  exact piece_882_mem

theorem linked_11238 : Linked cell_11238 pieces := by
  apply Linked.of_piece piece_1359 piece_1359_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11238, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_881_mem, piece_882_mem⟩

theorem linked_11239 : Linked cell_11239 pieces := by
  apply Linked.of_piece piece_1360 piece_1360_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11239, List.cons_subset, List.nil_subset, and_true]
  exact piece_882_mem

theorem linked_11240 : Linked cell_11240 pieces := by
  apply Linked.of_piece piece_1360 piece_1360_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11240, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_881_mem, piece_882_mem⟩

theorem linked_11241 : Linked cell_11241 pieces := by
  apply Linked.of_piece piece_1360 piece_1360_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11241, List.cons_subset, List.nil_subset, and_true]
  exact piece_881_mem

theorem linked_11242 : Linked cell_11242 pieces := by
  apply Linked.of_piece piece_1360 piece_1360_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11242, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_880_mem, piece_881_mem⟩

theorem linked_11243 : Linked cell_11243 pieces := by
  apply Linked.of_piece piece_1361 piece_1361_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11243, List.cons_subset, List.nil_subset, and_true]
  exact piece_881_mem

theorem linked_11244 : Linked cell_11244 pieces := by
  apply Linked.of_piece piece_1361 piece_1361_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11244, List.cons_subset, List.nil_subset, and_true]
  exact piece_881_mem

theorem linked_11245 : Linked cell_11245 pieces := by
  apply Linked.of_piece piece_1361 piece_1361_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11245, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_879_mem, ⟨piece_880_mem, piece_881_mem⟩⟩

theorem linked_11246 : Linked cell_11246 pieces := by
  apply Linked.of_piece piece_1361 piece_1361_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11246, List.cons_subset, List.nil_subset, and_true]
  exact piece_879_mem

theorem linked_11247 : Linked cell_11247 pieces := by
  apply Linked.of_piece piece_1362 piece_1362_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11247, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_879_mem, ⟨piece_880_mem, piece_881_mem⟩⟩

theorem linked_11248 : Linked cell_11248 pieces := by
  apply Linked.of_piece piece_1362 piece_1362_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11248, List.cons_subset, List.nil_subset, and_true]
  exact piece_879_mem

theorem linked_11249 : Linked cell_11249 pieces := by
  apply Linked.of_piece piece_1363 piece_1363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11249, List.cons_subset, List.nil_subset, and_true]
  exact piece_879_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0224.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0224.cells,List.forall_mem_cons]
  exact ⟨linked_11200, linked_11201, linked_11202, linked_11203, linked_11204, linked_11205, linked_11206, linked_11207, linked_11208, linked_11209, linked_11210, linked_11211, linked_11212, linked_11213, linked_11214, linked_11215, linked_11216, linked_11217, linked_11218, linked_11219, linked_11220, linked_11221, linked_11222, linked_11223, linked_11224, linked_11225, linked_11226, linked_11227, linked_11228, linked_11229, linked_11230, linked_11231, linked_11232, linked_11233, linked_11234, linked_11235, linked_11236, linked_11237, linked_11238, linked_11239, linked_11240, linked_11241, linked_11242, linked_11243, linked_11244, linked_11245, linked_11246, linked_11247, linked_11248, linked_11249, by simp⟩

theorem covered : covers (14343750000000001 / 25000000000000000 : ℚ) (115966480446927377 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0224.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0224
