import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0244
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(278950000000000009 / 400000000000000000 : ℚ), (69750000000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (50863380845057 / 100000000000000 : ℚ)
  w := (52863011093 / 39062500000 : ℚ)
  center := (557950000000000013 / 800000000000000000 : ℚ)
  supportValue := (2896809583559449 / 10000000000000000 : ℚ)
  supportSlope := (-9485443616600147 / 10000000000000000 : ℚ)
  oldCenter := (2896809583559449 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1620
  oldLo := (28900000000000003 / 100000000000000000 : ℚ)
  oldHi := (7237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_729]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_12200 : Cell := { cellDefaults with
  r := (12721357641411 / 25000000000000 : ℚ)
  w := (13534320858509 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1619
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730]
}

noncomputable def cell_12201 : Cell := { cellDefaults with
  domain := ⟨(69750000000000001 / 100000000000000000 : ℚ), (279050000000000009 / 400000000000000000 : ℚ)⟩
  center := (558050000000000013 / 800000000000000000 : ℚ)
  supportValue := (14489715701225653 / 50000000000000000 : ℚ)
  supportSlope := (-9491544481655839 / 10000000000000000 : ℚ)
  oldCenter := (14489715701225653 / 50000000000000000 : ℚ)
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730]
}

noncomputable def cell_12202 : Cell := { cellDefaults with
  domain := ⟨(279050000000000009 / 400000000000000000 : ℚ), (139550000000000007 / 200000000000000000 : ℚ)⟩
  center := (558150000000000023 / 800000000000000000 : ℚ)
  supportValue := (1448378677824539 / 5000000000000000 : ℚ)
  supportSlope := (-9481014695013219 / 10000000000000000 : ℚ)
  oldCenter := (1448378677824539 / 5000000000000000 : ℚ)
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730]
}

noncomputable def cell_12203 : Cell := { cellDefaults with
  domain := ⟨(139550000000000007 / 200000000000000000 : ℚ), (279150000000000019 / 400000000000000000 : ℚ)⟩
  center := (558250000000000033 / 800000000000000000 : ℚ)
  supportValue := (723893727837253 / 2500000000000000 : ℚ)
  supportSlope := (-9470820337237503 / 10000000000000000 : ℚ)
  oldCenter := (723893727837253 / 2500000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_729, piece_730]
}

noncomputable def cell_12204 : Cell := { cellDefaults with
  domain := ⟨(279150000000000019 / 400000000000000000 : ℚ), (34900000000000003 / 50000000000000000 : ℚ)⟩
  center := (558350000000000043 / 800000000000000000 : ℚ)
  supportValue := (1447194299625141 / 5000000000000000 : ℚ)
  supportSlope := (-9477420137668109 / 10000000000000000 : ℚ)
  oldCenter := (1447194299625141 / 5000000000000000 : ℚ)
  oldPieces := [piece_729]
}

noncomputable def cell_12205 : Cell := { cellDefaults with
  domain := ⟨(34900000000000003 / 50000000000000000 : ℚ), (279250000000000019 / 400000000000000000 : ℚ)⟩
  r := (25420677976099 / 50000000000000 : ℚ)
  w := (2706310082987 / 2000000000000 : ℚ)
  center := (558450000000000043 / 800000000000000000 : ℚ)
  supportValue := (5791041744971931 / 20000000000000000 : ℚ)
  supportSlope := (-9467178193426187 / 10000000000000000 : ℚ)
  oldCenter := (5791041744971931 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1621
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_729, piece_730]
}

noncomputable def cell_12206 : Cell := { cellDefaults with
  domain := ⟨(279250000000000019 / 400000000000000000 : ℚ), (139650000000000007 / 200000000000000000 : ℚ)⟩
  r := (25420677976099 / 50000000000000 : ℚ)
  w := (2706310082987 / 2000000000000 : ℚ)
  center := (558550000000000033 / 800000000000000000 : ℚ)
  supportValue := (5788670031803499 / 20000000000000000 : ℚ)
  supportSlope := (-9472983917647563 / 10000000000000000 : ℚ)
  oldCenter := (5788670031803499 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1621
  oldPieces := [piece_729]
}

noncomputable def cell_12207 : Cell := { cellDefaults with
  domain := ⟨(139650000000000007 / 200000000000000000 : ℚ), (279350000000000009 / 400000000000000000 : ℚ)⟩
  r := (25420677976099 / 50000000000000 : ℚ)
  w := (2706310082987 / 2000000000000 : ℚ)
  center := (558650000000000023 / 800000000000000000 : ℚ)
  supportValue := (1157260620693777 / 4000000000000000 : ℚ)
  supportSlope := (-4731224223082837 / 5000000000000000 : ℚ)
  oldCenter := (1157260620693777 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1621
  oldPieces := [piece_729]
}

noncomputable def cell_12208 : Cell := { cellDefaults with
  domain := ⟨(279350000000000009 / 400000000000000000 : ℚ), (69850000000000001 / 100000000000000000 : ℚ)⟩
  r := (25420677976099 / 50000000000000 : ℚ)
  w := (2706310082987 / 2000000000000 : ℚ)
  center := (558750000000000013 / 800000000000000000 : ℚ)
  supportValue := (2891969401664361 / 10000000000000000 : ℚ)
  supportSlope := (-9451958292007013 / 10000000000000000 : ℚ)
  oldCenter := (2891969401664361 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1621
  oldPieces := [piece_729]
}

noncomputable def cell_12209 : Cell := { cellDefaults with
  domain := ⟨(69850000000000001 / 100000000000000000 : ℚ), (27945000000000001 / 40000000000000000 : ℚ)⟩
  r := (25409677904353 / 50000000000000 : ℚ)
  w := (2706035342191 / 2000000000000 : ℚ)
  center := (279425000000000007 / 400000000000000000 : ℚ)
  supportValue := (1446548335726689 / 5000000000000000 : ℚ)
  supportSlope := (-4729006120322553 / 5000000000000000 : ℚ)
  oldCenter := (1446548335726689 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1622
  oldPieces := [piece_729]
}

noncomputable def cell_12210 : Cell := { cellDefaults with
  domain := ⟨(27945000000000001 / 40000000000000000 : ℚ), (17468750000000001 / 25000000000000000 : ℚ)⟩
  r := (25409677904353 / 50000000000000 : ℚ)
  w := (2706035342191 / 2000000000000 : ℚ)
  center := (279475000000000013 / 400000000000000000 : ℚ)
  supportValue := (451861730503271 / 1562500000000000 : ℚ)
  supportSlope := (-2361883270076409 / 2500000000000000 : ℚ)
  oldCenter := (451861730503271 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1622
  oldPieces := [piece_729]
}

noncomputable def cell_12211 : Cell := { cellDefaults with
  domain := ⟨(17468750000000001 / 25000000000000000 : ℚ), (139775000000000011 / 200000000000000000 : ℚ)⟩
  r := (25409677904353 / 50000000000000 : ℚ)
  w := (2706035342191 / 2000000000000 : ℚ)
  center := (279525000000000019 / 400000000000000000 : ℚ)
  supportValue := (1445367393035139 / 5000000000000000 : ℚ)
  supportSlope := (-2359274715708343 / 2500000000000000 : ℚ)
  oldCenter := (1445367393035139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1622
  oldPieces := [piece_729]
}

noncomputable def cell_12212 : Cell := { cellDefaults with
  domain := ⟨(139775000000000011 / 200000000000000000 : ℚ), (69900000000000007 / 100000000000000000 : ℚ)⟩
  r := (25409677904353 / 50000000000000 : ℚ)
  w := (2706035342191 / 2000000000000 : ℚ)
  center := (11183000000000001 / 16000000000000000 : ℚ)
  supportValue := (2889557002704009 / 10000000000000000 : ℚ)
  supportSlope := (-377675572346047 / 400000000000000 : ℚ)
  oldCenter := (2889557002704009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1622
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728, piece_729]
}

noncomputable def cell_12213 : Cell := { cellDefaults with
  domain := ⟨(69900000000000007 / 100000000000000000 : ℚ), (139825000000000011 / 200000000000000000 : ℚ)⟩
  r := (12699345398553 / 25000000000000 : ℚ)
  w := (845550860919 / 625000000000 : ℚ)
  center := (11185000000000001 / 16000000000000000 : ℚ)
  supportValue := (28906783370935357 / 100000000000000000 : ℚ)
  supportSlope := (-1886533444601439 / 2000000000000000 : ℚ)
  oldCenter := (28906783370935357 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1623
  oldPieces := [piece_729]
}

noncomputable def cell_12214 : Cell := { cellDefaults with
  domain := ⟨(139825000000000011 / 200000000000000000 : ℚ), (17481250000000001 / 25000000000000000 : ℚ)⟩
  r := (12699345398553 / 25000000000000 : ℚ)
  w := (845550860919 / 625000000000 : ℚ)
  center := (279675000000000019 / 400000000000000000 : ℚ)
  supportValue := (28895010043640107 / 100000000000000000 : ℚ)
  supportSlope := (-9438281883965581 / 10000000000000000 : ℚ)
  oldCenter := (28895010043640107 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1623
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728, piece_729]
}

noncomputable def cell_12215 : Cell := { cellDefaults with
  domain := ⟨(17481250000000001 / 25000000000000000 : ℚ), (27975000000000001 / 40000000000000000 : ℚ)⟩
  r := (12699345398553 / 25000000000000 : ℚ)
  w := (845550860919 / 625000000000 : ℚ)
  center := (279725000000000013 / 400000000000000000 : ℚ)
  supportValue := (57766393811609 / 200000000000000 : ℚ)
  supportSlope := (-9429083670956537 / 10000000000000000 : ℚ)
  oldCenter := (57766393811609 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1623
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728]
}

noncomputable def cell_12216 : Cell := { cellDefaults with
  domain := ⟨(27975000000000001 / 40000000000000000 : ℚ), (69950000000000001 / 100000000000000000 : ℚ)⟩
  r := (12699345398553 / 25000000000000 : ℚ)
  w := (845550860919 / 625000000000 : ℚ)
  center := (279775000000000007 / 400000000000000000 : ℚ)
  supportValue := (14435708543392753 / 50000000000000000 : ℚ)
  supportSlope := (-37674529448073 / 40000000000000 : ℚ)
  oldCenter := (14435708543392753 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1623
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728]
}

noncomputable def cell_12217 : Cell := { cellDefaults with
  domain := ⟨(69950000000000001 / 100000000000000000 : ℚ), (27985000000000001 / 40000000000000000 : ℚ)⟩
  r := (12693857461817 / 25000000000000 : ℚ)
  w := (6763727988667 / 5000000000000 : ℚ)
  center := (279825000000000007 / 400000000000000000 : ℚ)
  supportValue := (2888262886655187 / 10000000000000000 : ℚ)
  supportSlope := (-376986070778739 / 400000000000000 : ℚ)
  oldCenter := (2888262886655187 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1624
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728]
}

noncomputable def cell_12218 : Cell := { cellDefaults with
  domain := ⟨(27985000000000001 / 40000000000000000 : ℚ), (17493750000000001 / 25000000000000000 : ℚ)⟩
  r := (12693857461817 / 25000000000000 : ℚ)
  w := (6763727988667 / 5000000000000 : ℚ)
  center := (279875000000000013 / 400000000000000000 : ℚ)
  supportValue := (1443542729028647 / 5000000000000000 : ℚ)
  supportSlope := (-9414211384334273 / 10000000000000000 : ℚ)
  oldCenter := (1443542729028647 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1624
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728]
}

noncomputable def cell_12219 : Cell := { cellDefaults with
  domain := ⟨(17493750000000001 / 25000000000000000 : ℚ), (139975000000000011 / 200000000000000000 : ℚ)⟩
  r := (12693857461817 / 25000000000000 : ℚ)
  w := (6763727988667 / 5000000000000 : ℚ)
  center := (279925000000000019 / 400000000000000000 : ℚ)
  supportValue := (57718186634057 / 200000000000000 : ℚ)
  supportSlope := (-4701907902648341 / 5000000000000000 : ℚ)
  oldCenter := (57718186634057 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1624
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728]
}

noncomputable def cell_12220 : Cell := { cellDefaults with
  domain := ⟨(139975000000000011 / 200000000000000000 : ℚ), (70000000000000007 / 100000000000000000 : ℚ)⟩
  r := (12693857461817 / 25000000000000 : ℚ)
  w := (6763727988667 / 5000000000000 : ℚ)
  center := (11199000000000001 / 16000000000000000 : ℚ)
  supportValue := (28847360295683333 / 100000000000000000 : ℚ)
  supportSlope := (-9406038522444797 / 10000000000000000 : ℚ)
  oldCenter := (28847360295683333 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1624
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727, piece_728]
}

noncomputable def cell_12221 : Cell := { cellDefaults with
  domain := ⟨(70000000000000007 / 100000000000000000 : ℚ), (140025000000000011 / 200000000000000000 : ℚ)⟩
  r := (3172094081077 / 6250000000000 : ℚ)
  w := (13526110934163 / 10000000000000 : ℚ)
  center := (11201000000000001 / 16000000000000000 : ℚ)
  supportValue := (721462622381547 / 2500000000000000 : ℚ)
  supportSlope := (-9399384904505997 / 10000000000000000 : ℚ)
  oldCenter := (721462622381547 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1625
  oldLo := (28850000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_728]
}

noncomputable def cell_12222 : Cell := { cellDefaults with
  domain := ⟨(140025000000000011 / 200000000000000000 : ℚ), (17506250000000001 / 25000000000000000 : ℚ)⟩
  r := (3172094081077 / 6250000000000 : ℚ)
  w := (13526110934163 / 10000000000000 : ℚ)
  center := (280075000000000019 / 400000000000000000 : ℚ)
  supportValue := (5769355266113837 / 20000000000000000 : ℚ)
  supportSlope := (-9402470312213101 / 10000000000000000 : ℚ)
  oldCenter := (5769355266113837 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1625
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727, piece_728]
}

noncomputable def cell_12223 : Cell := { cellDefaults with
  domain := ⟨(17506250000000001 / 25000000000000000 : ℚ), (28015000000000001 / 40000000000000000 : ℚ)⟩
  r := (3172094081077 / 6250000000000 : ℚ)
  w := (13526110934163 / 10000000000000 : ℚ)
  center := (280125000000000013 / 400000000000000000 : ℚ)
  supportValue := (2883500474631343 / 10000000000000000 : ℚ)
  supportSlope := (-9395879443553373 / 10000000000000000 : ℚ)
  oldCenter := (2883500474631343 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1625
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727]
}

noncomputable def cell_12224 : Cell := { cellDefaults with
  domain := ⟨(28015000000000001 / 40000000000000000 : ℚ), (70050000000000001 / 100000000000000000 : ℚ)⟩
  r := (3172094081077 / 6250000000000 : ℚ)
  w := (13526110934163 / 10000000000000 : ℚ)
  center := (280175000000000007 / 400000000000000000 : ℚ)
  supportValue := (2882326641807513 / 10000000000000000 : ℚ)
  supportSlope := (-9385451357345491 / 10000000000000000 : ℚ)
  oldCenter := (2882326641807513 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1625
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727]
}

noncomputable def cell_12225 : Cell := { cellDefaults with
  domain := ⟨(70050000000000001 / 100000000000000000 : ℚ), (28025000000000001 / 40000000000000000 : ℚ)⟩
  r := (12682900884423 / 25000000000000 : ℚ)
  w := (13524770216271 / 10000000000000 : ℚ)
  center := (280225000000000007 / 400000000000000000 : ℚ)
  supportValue := (2883441382814739 / 10000000000000000 : ℚ)
  supportSlope := (-2347862053881651 / 2500000000000000 : ℚ)
  oldCenter := (2883441382814739 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1626
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727]
}

noncomputable def cell_12226 : Cell := { cellDefaults with
  domain := ⟨(28025000000000001 / 40000000000000000 : ℚ), (17518750000000001 / 25000000000000000 : ℚ)⟩
  r := (12682900884423 / 25000000000000 : ℚ)
  w := (13524770216271 / 10000000000000 : ℚ)
  center := (280275000000000013 / 400000000000000000 : ℚ)
  supportValue := (14411340516035717 / 50000000000000000 : ℚ)
  supportSlope := (-938103111037479 / 1000000000000000 : ℚ)
  oldCenter := (14411340516035717 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1626
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727]
}

noncomputable def cell_12227 : Cell := { cellDefaults with
  domain := ⟨(17518750000000001 / 25000000000000000 : ℚ), (140175000000000011 / 200000000000000000 : ℚ)⟩
  r := (12682900884423 / 25000000000000 : ℚ)
  w := (13524770216271 / 10000000000000 : ℚ)
  center := (280325000000000019 / 400000000000000000 : ℚ)
  supportValue := (5762192245867539 / 20000000000000000 : ℚ)
  supportSlope := (-2342664699716831 / 2500000000000000 : ℚ)
  oldCenter := (5762192245867539 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1626
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727]
}

noncomputable def cell_12228 : Cell := { cellDefaults with
  domain := ⟨(140175000000000011 / 200000000000000000 : ℚ), (70100000000000007 / 100000000000000000 : ℚ)⟩
  r := (12682900884423 / 25000000000000 : ℚ)
  w := (13524770216271 / 10000000000000 : ℚ)
  center := (11215000000000001 / 16000000000000000 : ℚ)
  supportValue := (2879927312794443 / 10000000000000000 : ℚ)
  supportSlope := (-9370088152679243 / 10000000000000000 : ℚ)
  oldCenter := (2879927312794443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1626
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726, piece_727]
}

noncomputable def cell_12229 : Cell := { cellDefaults with
  domain := ⟨(70100000000000007 / 100000000000000000 : ℚ), (140234078212290507 / 200000000000000000 : ℚ)⟩
  r := (2535486483349 / 5000000000000 : ℚ)
  w := (2704688846301 / 2000000000000 : ℚ)
  center := (280434078212290521 / 400000000000000000 : ℚ)
  supportValue := (14404120239297147 / 50000000000000000 : ℚ)
  supportSlope := (-468217530505807 / 500000000000000 : ℚ)
  oldCenter := (14404120239297147 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1627
  oldLo := (28800000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_727]
}

noncomputable def cell_12230 : Cell := { cellDefaults with
  domain := ⟨(140234078212290507 / 200000000000000000 : ℚ), (280502234636871507 / 400000000000000000 : ℚ)⟩
  r := (2535486483349 / 5000000000000 : ℚ)
  w := (2704688846301 / 2000000000000 : ℚ)
  center := (560970391061452521 / 800000000000000000 : ℚ)
  supportValue := (143981366337237 / 500000000000000 : ℚ)
  supportSlope := (-4685284240493301 / 5000000000000000 : ℚ)
  oldCenter := (143981366337237 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1627
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726, piece_727]
}

noncomputable def cell_12231 : Cell := { cellDefaults with
  domain := ⟨(280502234636871507 / 400000000000000000 : ℚ), (140268156424581 / 200000000000000 : ℚ)⟩
  r := (2535486483349 / 5000000000000 : ℚ)
  w := (2704688846301 / 2000000000000 : ℚ)
  center := (561038547486033507 / 800000000000000000 : ℚ)
  supportValue := (719706809708973 / 2500000000000000 : ℚ)
  supportSlope := (-9363988281377433 / 10000000000000000 : ℚ)
  oldCenter := (719706809708973 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1627
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726]
}

noncomputable def cell_12232 : Cell := { cellDefaults with
  domain := ⟨(140268156424581 / 200000000000000 : ℚ), (70150000000000001 / 100000000000000000 : ℚ)⟩
  r := (2535486483349 / 5000000000000 : ℚ)
  w := (2704688846301 / 2000000000000 : ℚ)
  center := (140284078212290501 / 200000000000000000 : ℚ)
  supportValue := (2877685530802029 / 10000000000000000 : ℚ)
  supportSlope := (-1870770225051849 / 2000000000000000 : ℚ)
  oldCenter := (2877685530802029 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1628
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726]
}

noncomputable def cell_12233 : Cell := { cellDefaults with
  domain := ⟨(70150000000000001 / 100000000000000000 : ℚ), (28065000000000001 / 40000000000000000 : ℚ)⟩
  r := (50687875850569 / 100000000000000 : ℚ)
  w := (3380529701 / 2500000000 : ℚ)
  center := (280625000000000007 / 400000000000000000 : ℚ)
  supportValue := (575726462894339 / 2000000000000000 : ℚ)
  supportSlope := (-1169796874518207 / 1250000000000000 : ℚ)
  oldCenter := (575726462894339 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1629
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726]
}

noncomputable def cell_12234 : Cell := { cellDefaults with
  domain := ⟨(28065000000000001 / 40000000000000000 : ℚ), (17543750000000001 / 25000000000000000 : ℚ)⟩
  r := (50687875850569 / 100000000000000 : ℚ)
  w := (3380529701 / 2500000000 : ℚ)
  center := (280675000000000013 / 400000000000000000 : ℚ)
  supportValue := (575492633027969 / 2000000000000000 : ℚ)
  supportSlope := (-9348019855516243 / 10000000000000000 : ℚ)
  oldCenter := (575492633027969 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1629
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726]
}

noncomputable def cell_12235 : Cell := { cellDefaults with
  domain := ⟨(17543750000000001 / 25000000000000000 : ℚ), (140375000000000011 / 200000000000000000 : ℚ)⟩
  r := (50687875850569 / 100000000000000 : ℚ)
  w := (3380529701 / 2500000000 : ℚ)
  center := (280725000000000019 / 400000000000000000 : ℚ)
  supportValue := (28762953074171377 / 100000000000000000 : ℚ)
  supportSlope := (-4668854590725297 / 5000000000000000 : ℚ)
  oldCenter := (28762953074171377 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1629
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726]
}

noncomputable def cell_12236 : Cell := { cellDefaults with
  domain := ⟨(140375000000000011 / 200000000000000000 : ℚ), (70200000000000007 / 100000000000000000 : ℚ)⟩
  r := (50687875850569 / 100000000000000 : ℚ)
  w := (3380529701 / 2500000000 : ℚ)
  center := (11231000000000001 / 16000000000000000 : ℚ)
  supportValue := (2875130748353379 / 10000000000000000 : ℚ)
  supportSlope := (-4667085473241679 / 5000000000000000 : ℚ)
  oldCenter := (2875130748353379 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1629
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725, piece_726]
}

noncomputable def cell_12237 : Cell := { cellDefaults with
  domain := ⟨(70200000000000007 / 100000000000000000 : ℚ), (140425000000000011 / 200000000000000000 : ℚ)⟩
  r := (50666052854499 / 100000000000000 : ℚ)
  w := (13520813344171 / 10000000000000 : ℚ)
  center := (11233000000000001 / 16000000000000000 : ℚ)
  supportValue := (2876230785680037 / 10000000000000000 : ℚ)
  supportSlope := (-933327312081401 / 1000000000000000 : ℚ)
  oldCenter := (2876230785680037 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1630
  oldLo := (28750000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_726]
}

noncomputable def cell_12238 : Cell := { cellDefaults with
  domain := ⟨(140425000000000011 / 200000000000000000 : ℚ), (17556250000000001 / 25000000000000000 : ℚ)⟩
  r := (50666052854499 / 100000000000000 : ℚ)
  w := (13520813344171 / 10000000000000 : ℚ)
  center := (280875000000000019 / 400000000000000000 : ℚ)
  supportValue := (1437533390195813 / 5000000000000000 : ℚ)
  supportSlope := (-466534302380917 / 500000000000000 : ℚ)
  oldCenter := (1437533390195813 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1630
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725, piece_726]
}

noncomputable def cell_12239 : Cell := { cellDefaults with
  domain := ⟨(17556250000000001 / 25000000000000000 : ℚ), (28095000000000001 / 40000000000000000 : ℚ)⟩
  r := (50666052854499 / 100000000000000 : ℚ)
  w := (13520813344171 / 10000000000000 : ℚ)
  center := (280925000000000013 / 400000000000000000 : ℚ)
  supportValue := (359237249865769 / 1250000000000000 : ℚ)
  supportSlope := (-9329912152155071 / 10000000000000000 : ℚ)
  oldCenter := (359237249865769 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1630
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725]
}

noncomputable def cell_12240 : Cell := { cellDefaults with
  domain := ⟨(28095000000000001 / 40000000000000000 : ℚ), (70250000000000001 / 100000000000000000 : ℚ)⟩
  r := (50666052854499 / 100000000000000 : ℚ)
  w := (13520813344171 / 10000000000000 : ℚ)
  center := (280975000000000007 / 400000000000000000 : ℚ)
  supportValue := (5745464812156561 / 20000000000000000 : ℚ)
  supportSlope := (-4659789483719149 / 5000000000000000 : ℚ)
  oldCenter := (5745464812156561 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1630
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725]
}

noncomputable def cell_12241 : Cell := { cellDefaults with
  domain := ⟨(70250000000000001 / 100000000000000000 : ℚ), (28105000000000001 / 40000000000000000 : ℚ)⟩
  r := (50644246672439 / 100000000000000 : ℚ)
  w := (13519502460831 / 10000000000000 : ℚ)
  center := (281025000000000007 / 400000000000000000 : ℚ)
  supportValue := (7184588696160539 / 25000000000000000 : ℚ)
  supportSlope := (-9325493165172053 / 10000000000000000 : ℚ)
  oldCenter := (7184588696160539 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1631
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725]
}

noncomputable def cell_12242 : Cell := { cellDefaults with
  domain := ⟨(28105000000000001 / 40000000000000000 : ℚ), (17568750000000001 / 25000000000000000 : ℚ)⟩
  r := (50644246672439 / 100000000000000 : ℚ)
  w := (13519502460831 / 10000000000000 : ℚ)
  center := (281075000000000013 / 400000000000000000 : ℚ)
  supportValue := (2872670437301459 / 10000000000000000 : ℚ)
  supportSlope := (-4657585488695989 / 5000000000000000 : ℚ)
  oldCenter := (2872670437301459 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1631
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725]
}

noncomputable def cell_12243 : Cell := { cellDefaults with
  domain := ⟨(17568750000000001 / 25000000000000000 : ℚ), (140575000000000011 / 200000000000000000 : ℚ)⟩
  r := (50644246672439 / 100000000000000 : ℚ)
  w := (13519502460831 / 10000000000000 : ℚ)
  center := (281125000000000019 / 400000000000000000 : ℚ)
  supportValue := (574301336726913 / 2000000000000000 : ℚ)
  supportSlope := (-1860978632585163 / 2000000000000000 : ℚ)
  oldCenter := (574301336726913 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1631
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725]
}

noncomputable def cell_12244 : Cell := { cellDefaults with
  domain := ⟨(140575000000000011 / 200000000000000000 : ℚ), (70300000000000007 / 100000000000000000 : ℚ)⟩
  r := (50644246672439 / 100000000000000 : ℚ)
  w := (13519502460831 / 10000000000000 : ℚ)
  center := (11247000000000001 / 16000000000000000 : ℚ)
  supportValue := (5740692442351647 / 20000000000000000 : ℚ)
  supportSlope := (-2324545751117567 / 2500000000000000 : ℚ)
  oldCenter := (5740692442351647 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1631
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724, piece_725]
}

noncomputable def cell_12245 : Cell := { cellDefaults with
  domain := ⟨(70300000000000007 / 100000000000000000 : ℚ), (140625000000000011 / 200000000000000000 : ℚ)⟩
  r := (10124494678621 / 20000000000000 : ℚ)
  w := (13518215865321 / 10000000000000 : ℚ)
  center := (11249000000000001 / 16000000000000000 : ℚ)
  supportValue := (358929947049469 / 1250000000000000 : ℚ)
  supportSlope := (-2325113932813151 / 2500000000000000 : ℚ)
  oldCenter := (358929947049469 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1632
  oldLo := (28700000000000003 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_725]
}

noncomputable def cell_12246 : Cell := { cellDefaults with
  domain := ⟨(140625000000000011 / 200000000000000000 : ℚ), (17581250000000001 / 25000000000000000 : ℚ)⟩
  r := (10124494678621 / 20000000000000 : ℚ)
  w := (13518215865321 / 10000000000000 : ℚ)
  center := (281275000000000019 / 400000000000000000 : ℚ)
  supportValue := (358784958484631 / 1250000000000000 : ℚ)
  supportSlope := (-4647369611606169 / 5000000000000000 : ℚ)
  oldCenter := (358784958484631 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1632
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724, piece_725]
}

noncomputable def cell_12247 : Cell := { cellDefaults with
  domain := ⟨(17581250000000001 / 25000000000000000 : ℚ), (28135000000000001 / 40000000000000000 : ℚ)⟩
  r := (10124494678621 / 20000000000000 : ℚ)
  w := (13518215865321 / 10000000000000 : ℚ)
  center := (281325000000000013 / 400000000000000000 : ℚ)
  supportValue := (1434557690093327 / 5000000000000000 : ℚ)
  supportSlope := (-4648587390146399 / 5000000000000000 : ℚ)
  oldCenter := (1434557690093327 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1632
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724]
}

noncomputable def cell_12248 : Cell := { cellDefaults with
  domain := ⟨(28135000000000001 / 40000000000000000 : ℚ), (70350000000000001 / 100000000000000000 : ℚ)⟩
  r := (10124494678621 / 20000000000000 : ℚ)
  w := (13518215865321 / 10000000000000 : ℚ)
  center := (281375000000000007 / 400000000000000000 : ℚ)
  supportValue := (286795387739111 / 1000000000000000 : ℚ)
  supportSlope := (-4643437748095837 / 5000000000000000 : ℚ)
  oldCenter := (286795387739111 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1632
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724]
}

noncomputable def cell_12249 : Cell := { cellDefaults with
  domain := ⟨(70350000000000001 / 100000000000000000 : ℚ), (28145000000000001 / 40000000000000000 : ℚ)⟩
  r := (6325089510471 / 12500000000000 : ℚ)
  w := (84480760141 / 62500000000 : ℚ)
  center := (281425000000000007 / 400000000000000000 : ℚ)
  supportValue := (28690507290190037 / 100000000000000000 : ℚ)
  supportSlope := (-9292757807263237 / 10000000000000000 : ℚ)
  oldCenter := (28690507290190037 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1633
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724]
}

theorem check_12200 : cell_12200.check = true := by
  decide +kernel

theorem check_12201 : cell_12201.check = true := by
  decide +kernel

theorem check_12202 : cell_12202.check = true := by
  decide +kernel

theorem check_12203 : cell_12203.check = true := by
  decide +kernel

theorem check_12204 : cell_12204.check = true := by
  decide +kernel

theorem check_12205 : cell_12205.check = true := by
  decide +kernel

theorem check_12206 : cell_12206.check = true := by
  decide +kernel

theorem check_12207 : cell_12207.check = true := by
  decide +kernel

theorem check_12208 : cell_12208.check = true := by
  decide +kernel

theorem check_12209 : cell_12209.check = true := by
  decide +kernel

theorem check_12210 : cell_12210.check = true := by
  decide +kernel

theorem check_12211 : cell_12211.check = true := by
  decide +kernel

theorem check_12212 : cell_12212.check = true := by
  decide +kernel

theorem check_12213 : cell_12213.check = true := by
  decide +kernel

theorem check_12214 : cell_12214.check = true := by
  decide +kernel

theorem check_12215 : cell_12215.check = true := by
  decide +kernel

theorem check_12216 : cell_12216.check = true := by
  decide +kernel

theorem check_12217 : cell_12217.check = true := by
  decide +kernel

theorem check_12218 : cell_12218.check = true := by
  decide +kernel

theorem check_12219 : cell_12219.check = true := by
  decide +kernel

theorem check_12220 : cell_12220.check = true := by
  decide +kernel

theorem check_12221 : cell_12221.check = true := by
  decide +kernel

theorem check_12222 : cell_12222.check = true := by
  decide +kernel

theorem check_12223 : cell_12223.check = true := by
  decide +kernel

theorem check_12224 : cell_12224.check = true := by
  decide +kernel

theorem check_12225 : cell_12225.check = true := by
  decide +kernel

theorem check_12226 : cell_12226.check = true := by
  decide +kernel

theorem check_12227 : cell_12227.check = true := by
  decide +kernel

theorem check_12228 : cell_12228.check = true := by
  decide +kernel

theorem check_12229 : cell_12229.check = true := by
  decide +kernel

theorem check_12230 : cell_12230.check = true := by
  decide +kernel

theorem check_12231 : cell_12231.check = true := by
  decide +kernel

theorem check_12232 : cell_12232.check = true := by
  decide +kernel

theorem check_12233 : cell_12233.check = true := by
  decide +kernel

theorem check_12234 : cell_12234.check = true := by
  decide +kernel

theorem check_12235 : cell_12235.check = true := by
  decide +kernel

theorem check_12236 : cell_12236.check = true := by
  decide +kernel

theorem check_12237 : cell_12237.check = true := by
  decide +kernel

theorem check_12238 : cell_12238.check = true := by
  decide +kernel

theorem check_12239 : cell_12239.check = true := by
  decide +kernel

theorem check_12240 : cell_12240.check = true := by
  decide +kernel

theorem check_12241 : cell_12241.check = true := by
  decide +kernel

theorem check_12242 : cell_12242.check = true := by
  decide +kernel

theorem check_12243 : cell_12243.check = true := by
  decide +kernel

theorem check_12244 : cell_12244.check = true := by
  decide +kernel

theorem check_12245 : cell_12245.check = true := by
  decide +kernel

theorem check_12246 : cell_12246.check = true := by
  decide +kernel

theorem check_12247 : cell_12247.check = true := by
  decide +kernel

theorem check_12248 : cell_12248.check = true := by
  decide +kernel

theorem check_12249 : cell_12249.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12200, cell_12201, cell_12202, cell_12203, cell_12204, cell_12205, cell_12206, cell_12207, cell_12208, cell_12209, cell_12210, cell_12211, cell_12212, cell_12213, cell_12214, cell_12215, cell_12216, cell_12217, cell_12218, cell_12219, cell_12220, cell_12221, cell_12222, cell_12223, cell_12224, cell_12225, cell_12226, cell_12227, cell_12228, cell_12229, cell_12230, cell_12231, cell_12232, cell_12233, cell_12234, cell_12235, cell_12236, cell_12237, cell_12238, cell_12239, cell_12240, cell_12241, cell_12242, cell_12243, cell_12244, cell_12245, cell_12246, cell_12247, cell_12248, cell_12249]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12200, check_12201, check_12202, check_12203, check_12204, check_12205, check_12206, check_12207, check_12208, check_12209, check_12210, check_12211, check_12212, check_12213, check_12214, check_12215, check_12216, check_12217, check_12218, check_12219, check_12220, check_12221, check_12222, check_12223, check_12224, check_12225, check_12226, check_12227, check_12228, check_12229, check_12230, check_12231, check_12232, check_12233, check_12234, check_12235, check_12236, check_12237, check_12238, check_12239, check_12240, check_12241, check_12242, check_12243, check_12244, check_12245, check_12246, check_12247, check_12248, check_12249, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0244

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0244
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0244
open AnalyticBounds.ExpressionCertificate

theorem linked_12200 : Linked cell_12200 pieces := by
  refine ⟨piece_1619,piece_1619_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12200,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_730_mem

theorem linked_12201 : Linked cell_12201 pieces := by
  refine ⟨piece_1620,piece_1620_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12201,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_730_mem

theorem linked_12202 : Linked cell_12202 pieces := by
  refine ⟨piece_1620,piece_1620_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12202,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_730_mem

theorem linked_12203 : Linked cell_12203 pieces := by
  refine ⟨piece_1620,piece_1620_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12203,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_729_mem
    · exact piece_730_mem

theorem linked_12204 : Linked cell_12204 pieces := by
  refine ⟨piece_1620,piece_1620_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12204,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_729_mem

theorem linked_12205 : Linked cell_12205 pieces := by
  refine ⟨piece_1621,piece_1621_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12205,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_729_mem
    · exact piece_730_mem

theorem linked_12206 : Linked cell_12206 pieces := by
  refine ⟨piece_1621,piece_1621_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12206,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_729_mem

theorem linked_12207 : Linked cell_12207 pieces := by
  refine ⟨piece_1621,piece_1621_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12207,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_729_mem

theorem linked_12208 : Linked cell_12208 pieces := by
  refine ⟨piece_1621,piece_1621_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12208,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_729_mem

theorem linked_12209 : Linked cell_12209 pieces := by
  refine ⟨piece_1622,piece_1622_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12209,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_729_mem

theorem linked_12210 : Linked cell_12210 pieces := by
  refine ⟨piece_1622,piece_1622_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12210,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_729_mem

theorem linked_12211 : Linked cell_12211 pieces := by
  refine ⟨piece_1622,piece_1622_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12211,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_729_mem

theorem linked_12212 : Linked cell_12212 pieces := by
  refine ⟨piece_1622,piece_1622_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12212,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_728_mem
    · exact piece_729_mem

theorem linked_12213 : Linked cell_12213 pieces := by
  refine ⟨piece_1623,piece_1623_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12213,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_729_mem

theorem linked_12214 : Linked cell_12214 pieces := by
  refine ⟨piece_1623,piece_1623_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12214,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_728_mem
    · exact piece_729_mem

theorem linked_12215 : Linked cell_12215 pieces := by
  refine ⟨piece_1623,piece_1623_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12215,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_728_mem

theorem linked_12216 : Linked cell_12216 pieces := by
  refine ⟨piece_1623,piece_1623_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12216,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_728_mem

theorem linked_12217 : Linked cell_12217 pieces := by
  refine ⟨piece_1624,piece_1624_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12217,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_728_mem

theorem linked_12218 : Linked cell_12218 pieces := by
  refine ⟨piece_1624,piece_1624_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12218,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_728_mem

theorem linked_12219 : Linked cell_12219 pieces := by
  refine ⟨piece_1624,piece_1624_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12219,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_728_mem

theorem linked_12220 : Linked cell_12220 pieces := by
  refine ⟨piece_1624,piece_1624_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12220,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_727_mem
    · exact piece_728_mem

theorem linked_12221 : Linked cell_12221 pieces := by
  refine ⟨piece_1625,piece_1625_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12221,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_728_mem

theorem linked_12222 : Linked cell_12222 pieces := by
  refine ⟨piece_1625,piece_1625_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12222,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_727_mem
    · exact piece_728_mem

theorem linked_12223 : Linked cell_12223 pieces := by
  refine ⟨piece_1625,piece_1625_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12223,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_727_mem

theorem linked_12224 : Linked cell_12224 pieces := by
  refine ⟨piece_1625,piece_1625_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12224,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_727_mem

theorem linked_12225 : Linked cell_12225 pieces := by
  refine ⟨piece_1626,piece_1626_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12225,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_727_mem

theorem linked_12226 : Linked cell_12226 pieces := by
  refine ⟨piece_1626,piece_1626_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12226,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_727_mem

theorem linked_12227 : Linked cell_12227 pieces := by
  refine ⟨piece_1626,piece_1626_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12227,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_727_mem

theorem linked_12228 : Linked cell_12228 pieces := by
  refine ⟨piece_1626,piece_1626_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12228,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_726_mem
    · exact piece_727_mem

theorem linked_12229 : Linked cell_12229 pieces := by
  refine ⟨piece_1627,piece_1627_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12229,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_727_mem

theorem linked_12230 : Linked cell_12230 pieces := by
  refine ⟨piece_1627,piece_1627_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12230,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_726_mem
    · exact piece_727_mem

theorem linked_12231 : Linked cell_12231 pieces := by
  refine ⟨piece_1627,piece_1627_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12231,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_726_mem

theorem linked_12232 : Linked cell_12232 pieces := by
  refine ⟨piece_1628,piece_1628_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12232,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_726_mem

theorem linked_12233 : Linked cell_12233 pieces := by
  refine ⟨piece_1629,piece_1629_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12233,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_726_mem

theorem linked_12234 : Linked cell_12234 pieces := by
  refine ⟨piece_1629,piece_1629_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12234,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_726_mem

theorem linked_12235 : Linked cell_12235 pieces := by
  refine ⟨piece_1629,piece_1629_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12235,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_726_mem

theorem linked_12236 : Linked cell_12236 pieces := by
  refine ⟨piece_1629,piece_1629_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12236,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_725_mem
    · exact piece_726_mem

theorem linked_12237 : Linked cell_12237 pieces := by
  refine ⟨piece_1630,piece_1630_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12237,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_726_mem

theorem linked_12238 : Linked cell_12238 pieces := by
  refine ⟨piece_1630,piece_1630_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12238,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_725_mem
    · exact piece_726_mem

theorem linked_12239 : Linked cell_12239 pieces := by
  refine ⟨piece_1630,piece_1630_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12239,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_725_mem

theorem linked_12240 : Linked cell_12240 pieces := by
  refine ⟨piece_1630,piece_1630_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12240,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_725_mem

theorem linked_12241 : Linked cell_12241 pieces := by
  refine ⟨piece_1631,piece_1631_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12241,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_725_mem

theorem linked_12242 : Linked cell_12242 pieces := by
  refine ⟨piece_1631,piece_1631_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12242,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_725_mem

theorem linked_12243 : Linked cell_12243 pieces := by
  refine ⟨piece_1631,piece_1631_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12243,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_725_mem

theorem linked_12244 : Linked cell_12244 pieces := by
  refine ⟨piece_1631,piece_1631_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12244,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_724_mem
    · exact piece_725_mem

theorem linked_12245 : Linked cell_12245 pieces := by
  refine ⟨piece_1632,piece_1632_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12245,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_725_mem

theorem linked_12246 : Linked cell_12246 pieces := by
  refine ⟨piece_1632,piece_1632_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12246,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_724_mem
    · exact piece_725_mem

theorem linked_12247 : Linked cell_12247 pieces := by
  refine ⟨piece_1632,piece_1632_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12247,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_724_mem

theorem linked_12248 : Linked cell_12248 pieces := by
  refine ⟨piece_1632,piece_1632_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12248,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_724_mem

theorem linked_12249 : Linked cell_12249 pieces := by
  refine ⟨piece_1633,piece_1633_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12249,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_724_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0244.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0244.cells,List.forall_mem_cons]
  exact ⟨linked_12200, linked_12201, linked_12202, linked_12203, linked_12204, linked_12205, linked_12206, linked_12207, linked_12208, linked_12209, linked_12210, linked_12211, linked_12212, linked_12213, linked_12214, linked_12215, linked_12216, linked_12217, linked_12218, linked_12219, linked_12220, linked_12221, linked_12222, linked_12223, linked_12224, linked_12225, linked_12226, linked_12227, linked_12228, linked_12229, linked_12230, linked_12231, linked_12232, linked_12233, linked_12234, linked_12235, linked_12236, linked_12237, linked_12238, linked_12239, linked_12240, linked_12241, linked_12242, linked_12243, linked_12244, linked_12245, linked_12246, linked_12247, linked_12248, linked_12249, by simp⟩

theorem covered : covers (278950000000000009 / 400000000000000000 : ℚ) (28145000000000001 / 40000000000000000 : ℚ)
    (SourceCertificates.Chunk0244.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0244
