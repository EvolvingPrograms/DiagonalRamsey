import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0253
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(150575000000000003 / 200000000000000000 : ℚ), (753 / 1000 : ℚ)⟩
  branch := .left
  r := (9713308323023 / 20000000000000 : ℚ)
  w := (6718997685463 / 5000000000000 : ℚ)
  center := (301175000000000003 / 400000000000000000 : ℚ)
  supportValue := (1322372287161481 / 5000000000000000 : ℚ)
  supportSlope := (-7759047957761431 / 10000000000000000 : ℚ)
  oldCenter := (1322372287161481 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1741
  oldLo := (26350000000000001 / 100000000000000000 : ℚ)
  oldHi := (26400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_673]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_12650 : Cell := { cellDefaults with
  r := (971718503357 / 2000000000000 : ℚ)
  w := (6719127211139 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1740
  oldLo := (264413407821229 / 1000000000000000 : ℚ)
  oldHi := (26500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_675, piece_676]
}

noncomputable def cell_12651 : Cell := { cellDefaults with
  domain := ⟨(753 / 1000 : ℚ), (150625000000000003 / 200000000000000000 : ℚ)⟩
  center := (301225000000000003 / 400000000000000000 : ℚ)
  supportValue := (13227542265785877 / 50000000000000000 : ℚ)
  supportSlope := (-7751477804037913 / 10000000000000000 : ℚ)
  oldCenter := (13227542265785877 / 50000000000000000 : ℚ)
  oldLo := (26450000000000001 / 100000000000000000 : ℚ)
  oldHi := (26500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_676]
}

noncomputable def cell_12652 : Cell := { cellDefaults with
  domain := ⟨(150625000000000003 / 200000000000000000 : ℚ), (75325000000000003 / 100000000000000000 : ℚ)⟩
  center := (301275000000000009 / 400000000000000000 : ℚ)
  supportValue := (2644541012248183 / 10000000000000000 : ℚ)
  supportSlope := (-7757518399102061 / 10000000000000000 : ℚ)
  oldCenter := (2644541012248183 / 10000000000000000 : ℚ)
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (26500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_674, piece_675, piece_676]
}

noncomputable def cell_12653 : Cell := { cellDefaults with
  domain := ⟨(75325000000000003 / 100000000000000000 : ℚ), (150675000000000009 / 200000000000000000 : ℚ)⟩
  center := (60265000000000003 / 80000000000000000 : ℚ)
  supportValue := (2643569924868699 / 10000000000000000 : ℚ)
  supportSlope := (-7749913445022253 / 10000000000000000 : ℚ)
  oldCenter := (2643569924868699 / 10000000000000000 : ℚ)
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_674]
}

noncomputable def cell_12654 : Cell := { cellDefaults with
  domain := ⟨(150675000000000009 / 200000000000000000 : ℚ), (37675000000000003 / 50000000000000000 : ℚ)⟩
  center := (301375000000000021 / 400000000000000000 : ℚ)
  supportValue := (1321300842116583 / 5000000000000000 : ℚ)
  supportSlope := (-3870970245451557 / 5000000000000000 : ℚ)
  oldCenter := (1321300842116583 / 5000000000000000 : ℚ)
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_674]
}

noncomputable def cell_12655 : Cell := { cellDefaults with
  domain := ⟨(37675000000000003 / 50000000000000000 : ℚ), (150725000000000009 / 200000000000000000 : ℚ)⟩
  r := (4854717777349 / 10000000000000 : ℚ)
  w := (209964719169 / 156250000000 : ℚ)
  center := (301425000000000021 / 400000000000000000 : ℚ)
  supportValue := (330420707892121 / 1250000000000000 : ℚ)
  supportSlope := (-387268393988329 / 500000000000000 : ℚ)
  oldCenter := (330420707892121 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1742
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_674]
}

noncomputable def cell_12656 : Cell := { cellDefaults with
  domain := ⟨(150725000000000009 / 200000000000000000 : ℚ), (75375000000000003 / 100000000000000000 : ℚ)⟩
  r := (4854717777349 / 10000000000000 : ℚ)
  w := (209964719169 / 156250000000 : ℚ)
  center := (60295000000000003 / 80000000000000000 : ℚ)
  supportValue := (2642397989881441 / 10000000000000000 : ℚ)
  supportSlope := (-967175994750607 / 1250000000000000 : ℚ)
  oldCenter := (2642397989881441 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1742
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_674]
}

noncomputable def cell_12657 : Cell := { cellDefaults with
  domain := ⟨(75375000000000003 / 100000000000000000 : ℚ), (150775000000000003 / 200000000000000000 : ℚ)⟩
  r := (4854717777349 / 10000000000000 : ℚ)
  w := (209964719169 / 156250000000 : ℚ)
  center := (301525000000000009 / 400000000000000000 : ℚ)
  supportValue := (13207156547606333 / 50000000000000000 : ℚ)
  supportSlope := (-966185188123863 / 1250000000000000 : ℚ)
  oldCenter := (13207156547606333 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1742
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_674]
}

noncomputable def cell_12658 : Cell := { cellDefaults with
  domain := ⟨(150775000000000003 / 200000000000000000 : ℚ), (377 / 500 : ℚ)⟩
  r := (4854717777349 / 10000000000000 : ℚ)
  w := (209964719169 / 156250000000 : ℚ)
  center := (301575000000000003 / 400000000000000000 : ℚ)
  supportValue := (26404674662116767 / 100000000000000000 : ℚ)
  supportSlope := (-1544369834322453 / 2000000000000000 : ℚ)
  oldCenter := (26404674662116767 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1742
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_673, piece_674]
}

noncomputable def cell_12659 : Cell := { cellDefaults with
  domain := ⟨(377 / 500 : ℚ), (150825000000000003 / 200000000000000000 : ℚ)⟩
  r := (12131961013593 / 25000000000000 : ℚ)
  w := (13437515126799 / 10000000000000 : ℚ)
  center := (301625000000000003 / 400000000000000000 : ℚ)
  supportValue := (26412228391951237 / 100000000000000000 : ℚ)
  supportSlope := (-1931231960869741 / 2500000000000000 : ℚ)
  oldCenter := (26412228391951237 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1743
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_674]
}

noncomputable def cell_12660 : Cell := { cellDefaults with
  domain := ⟨(150825000000000003 / 200000000000000000 : ℚ), (75425000000000003 / 100000000000000000 : ℚ)⟩
  r := (12131961013593 / 25000000000000 : ℚ)
  w := (13437515126799 / 10000000000000 : ℚ)
  center := (301675000000000009 / 400000000000000000 : ℚ)
  supportValue := (3300324455166883 / 12500000000000000 : ℚ)
  supportSlope := (-3860186956132309 / 5000000000000000 : ℚ)
  oldCenter := (3300324455166883 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1743
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_673, piece_674]
}

noncomputable def cell_12661 : Cell := { cellDefaults with
  domain := ⟨(75425000000000003 / 100000000000000000 : ℚ), (150875000000000009 / 200000000000000000 : ℚ)⟩
  r := (12131961013593 / 25000000000000 : ℚ)
  w := (13437515126799 / 10000000000000 : ℚ)
  center := (60345000000000003 / 80000000000000000 : ℚ)
  supportValue := (659823068295709 / 2500000000000000 : ℚ)
  supportSlope := (-7723353349432711 / 10000000000000000 : ℚ)
  oldCenter := (659823068295709 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1743
  oldPieces := [piece_673]
}

noncomputable def cell_12662 : Cell := { cellDefaults with
  domain := ⟨(150875000000000009 / 200000000000000000 : ℚ), (37725000000000003 / 50000000000000000 : ℚ)⟩
  r := (12131961013593 / 25000000000000 : ℚ)
  w := (13437515126799 / 10000000000000 : ℚ)
  center := (301775000000000021 / 400000000000000000 : ℚ)
  supportValue := (26383273512227307 / 100000000000000000 : ℚ)
  supportSlope := (-7715401783564743 / 10000000000000000 : ℚ)
  oldCenter := (26383273512227307 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1743
  oldPieces := [piece_673]
}

noncomputable def cell_12663 : Cell := { cellDefaults with
  domain := ⟨(37725000000000003 / 50000000000000000 : ℚ), (150925000000000009 / 200000000000000000 : ℚ)⟩
  r := (4850852471017 / 10000000000000 : ℚ)
  w := (13437281491967 / 10000000000000 : ℚ)
  center := (301825000000000021 / 400000000000000000 : ℚ)
  supportValue := (13195428283041133 / 50000000000000000 : ℚ)
  supportSlope := (-120606299943441 / 156250000000000 : ℚ)
  oldCenter := (13195428283041133 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1744
  oldPieces := [piece_673]
}

noncomputable def cell_12664 : Cell := { cellDefaults with
  domain := ⟨(150925000000000009 / 200000000000000000 : ℚ), (75475000000000003 / 100000000000000000 : ℚ)⟩
  r := (4850852471017 / 10000000000000 : ℚ)
  w := (13437281491967 / 10000000000000 : ℚ)
  center := (60375000000000003 / 80000000000000000 : ℚ)
  supportValue := (2638121302597709 / 10000000000000000 : ℚ)
  supportSlope := (-1927716181258319 / 2500000000000000 : ℚ)
  oldCenter := (2638121302597709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1744
  oldPieces := [piece_673]
}

noncomputable def cell_12665 : Cell := { cellDefaults with
  domain := ⟨(75475000000000003 / 100000000000000000 : ℚ), (150975000000000003 / 200000000000000000 : ℚ)⟩
  r := (4850852471017 / 10000000000000 : ℚ)
  w := (13437281491967 / 10000000000000 : ℚ)
  center := (301925000000000009 / 400000000000000000 : ℚ)
  supportValue := (5274315877608553 / 20000000000000000 : ℚ)
  supportSlope := (-962869959232453 / 1250000000000000 : ℚ)
  oldCenter := (5274315877608553 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1744
  oldPieces := [piece_673]
}

noncomputable def cell_12666 : Cell := { cellDefaults with
  domain := ⟨(150975000000000003 / 200000000000000000 : ℚ), (151 / 200 : ℚ)⟩
  r := (4850852471017 / 10000000000000 : ℚ)
  w := (13437281491967 / 10000000000000 : ℚ)
  center := (301975000000000003 / 400000000000000000 : ℚ)
  supportValue := (659048890265963 / 2500000000000000 : ℚ)
  supportSlope := (-7695087828186543 / 10000000000000000 : ℚ)
  oldCenter := (659048890265963 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1744
  oldPieces := [piece_673]
}

noncomputable def cell_12667 : Cell := { cellDefaults with
  domain := ⟨(151 / 200 : ℚ), (151025000000000003 / 200000000000000000 : ℚ)⟩
  r := (6061154708651 / 12500000000000 : ℚ)
  w := (6718538832933 / 5000000000000 : ℚ)
  center := (302025000000000003 / 400000000000000000 : ℚ)
  supportValue := (2636946420983009 / 10000000000000000 : ℚ)
  supportSlope := (-7698396596004429 / 10000000000000000 : ℚ)
  oldCenter := (2636946420983009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1745
  oldPieces := [piece_673]
}

noncomputable def cell_12668 : Cell := { cellDefaults with
  domain := ⟨(151025000000000003 / 200000000000000000 : ℚ), (75525000000000003 / 100000000000000000 : ℚ)⟩
  r := (6061154708651 / 12500000000000 : ℚ)
  w := (6718538832933 / 5000000000000 : ℚ)
  center := (302075000000000009 / 400000000000000000 : ℚ)
  supportValue := (1317992306403817 / 5000000000000000 : ℚ)
  supportSlope := (-7690537847161637 / 10000000000000000 : ℚ)
  oldCenter := (1317992306403817 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1745
  oldPieces := [piece_673]
}

noncomputable def cell_12669 : Cell := { cellDefaults with
  domain := ⟨(75525000000000003 / 100000000000000000 : ℚ), (151075000000000009 / 200000000000000000 : ℚ)⟩
  r := (6061154708651 / 12500000000000 : ℚ)
  w := (6718538832933 / 5000000000000 : ℚ)
  center := (60425000000000003 / 80000000000000000 : ℚ)
  supportValue := (2635025629432093 / 10000000000000000 : ℚ)
  supportSlope := (-3844727765866623 / 5000000000000000 : ℚ)
  oldCenter := (2635025629432093 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1745
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672, piece_673]
}

noncomputable def cell_12670 : Cell := { cellDefaults with
  domain := ⟨(151075000000000009 / 200000000000000000 : ℚ), (37775000000000003 / 50000000000000000 : ℚ)⟩
  r := (6061154708651 / 12500000000000 : ℚ)
  w := (6718538832933 / 5000000000000 : ℚ)
  center := (302175000000000021 / 400000000000000000 : ℚ)
  supportValue := (1053624883832039 / 4000000000000000 : ℚ)
  supportSlope := (-768897185929781 / 1000000000000000 : ℚ)
  oldCenter := (1053624883832039 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1745
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12671 : Cell := { cellDefaults with
  domain := ⟨(37775000000000003 / 50000000000000000 : ℚ), (302250000000000019 / 400000000000000000 : ℚ)⟩
  r := (12117491780197 / 25000000000000 : ℚ)
  w := (2687374680163 / 2000000000000 : ℚ)
  center := (604450000000000043 / 800000000000000000 : ℚ)
  supportValue := (2634814853221509 / 10000000000000000 : ℚ)
  supportSlope := (-7688012639165067 / 10000000000000000 : ℚ)
  oldCenter := (2634814853221509 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1746
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672, piece_673]
}

noncomputable def cell_12672 : Cell := { cellDefaults with
  domain := ⟨(302250000000000019 / 400000000000000000 : ℚ), (151150000000000007 / 200000000000000000 : ℚ)⟩
  r := (12117491780197 / 25000000000000 : ℚ)
  w := (2687374680163 / 2000000000000 : ℚ)
  center := (604550000000000033 / 800000000000000000 : ℚ)
  supportValue := (526770392326957 / 2000000000000000 : ℚ)
  supportSlope := (-3842206720552739 / 5000000000000000 : ℚ)
  oldCenter := (526770392326957 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1746
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12673 : Cell := { cellDefaults with
  domain := ⟨(151150000000000007 / 200000000000000000 : ℚ), (302350000000000009 / 400000000000000000 : ℚ)⟩
  r := (12117491780197 / 25000000000000 : ℚ)
  w := (2687374680163 / 2000000000000 : ℚ)
  center := (604650000000000023 / 800000000000000000 : ℚ)
  supportValue := (13164459519349367 / 50000000000000000 : ℚ)
  supportSlope := (-7676514533950453 / 10000000000000000 : ℚ)
  oldCenter := (13164459519349367 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1746
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12674 : Cell := { cellDefaults with
  domain := ⟨(302350000000000009 / 400000000000000000 : ℚ), (75600000000000001 / 100000000000000000 : ℚ)⟩
  r := (12117491780197 / 25000000000000 : ℚ)
  w := (2687374680163 / 2000000000000 : ℚ)
  center := (604750000000000013 / 800000000000000000 : ℚ)
  supportValue := (2631932831385827 / 10000000000000000 : ℚ)
  supportSlope := (-1917162224587457 / 2500000000000000 : ℚ)
  oldCenter := (2631932831385827 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1746
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12675 : Cell := { cellDefaults with
  domain := ⟨(75600000000000001 / 100000000000000000 : ℚ), (302450000000000009 / 400000000000000000 : ℚ)⟩
  r := (48450723448861 / 100000000000000 : ℚ)
  w := (13436688766839 / 10000000000000 : ℚ)
  center := (604850000000000013 / 800000000000000000 : ℚ)
  supportValue := (1316339109880921 / 5000000000000000 : ℚ)
  supportSlope := (-7671944810886743 / 10000000000000000 : ℚ)
  oldCenter := (1316339109880921 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1747
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12676 : Cell := { cellDefaults with
  domain := ⟨(302450000000000009 / 400000000000000000 : ℚ), (151250000000000007 / 200000000000000000 : ℚ)⟩
  r := (48450723448861 / 100000000000000 : ℚ)
  w := (13436688766839 / 10000000000000 : ℚ)
  center := (604950000000000023 / 800000000000000000 : ℚ)
  supportValue := (2631719717667411 / 10000000000000000 : ℚ)
  supportSlope := (-1916023092307459 / 2500000000000000 : ℚ)
  oldCenter := (2631719717667411 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1747
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12677 : Cell := { cellDefaults with
  domain := ⟨(151250000000000007 / 200000000000000000 : ℚ), (302550000000000019 / 400000000000000000 : ℚ)⟩
  r := (48450723448861 / 100000000000000 : ℚ)
  w := (13436688766839 / 10000000000000 : ℚ)
  center := (605050000000000033 / 800000000000000000 : ℚ)
  supportValue := (2630762195064287 / 10000000000000000 : ℚ)
  supportSlope := (-7656272901685257 / 10000000000000000 : ℚ)
  oldCenter := (2630762195064287 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1747
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12678 : Cell := { cellDefaults with
  domain := ⟨(302550000000000019 / 400000000000000000 : ℚ), (37825000000000003 / 50000000000000000 : ℚ)⟩
  r := (48450723448861 / 100000000000000 : ℚ)
  w := (13436688766839 / 10000000000000 : ℚ)
  center := (605150000000000043 / 800000000000000000 : ℚ)
  supportValue := (2629807129390881 / 10000000000000000 : ℚ)
  supportSlope := (-3829192084321037 / 5000000000000000 : ℚ)
  oldCenter := (2629807129390881 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1747
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671, piece_672]
}

noncomputable def cell_12679 : Cell := { cellDefaults with
  domain := ⟨(37825000000000003 / 50000000000000000 : ℚ), (3783240223463687 / 5000000000000000 : ℚ)⟩
  r := (48431504836201 / 100000000000000 : ℚ)
  w := (13436518713027 / 10000000000000 : ℚ)
  center := (75657402234636873 / 100000000000000000 : ℚ)
  supportValue := (26304602556395973 / 100000000000000000 : ℚ)
  supportSlope := (-7652345079362333 / 10000000000000000 : ℚ)
  oldCenter := (26304602556395973 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1748
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671, piece_672]
}

noncomputable def cell_12680 : Cell := { cellDefaults with
  domain := ⟨(3783240223463687 / 5000000000000000 : ℚ), (151364804469273741 / 200000000000000000 : ℚ)⟩
  r := (48431504836201 / 100000000000000 : ℚ)
  w := (13436518713027 / 10000000000000 : ℚ)
  center := (302694413407821221 / 400000000000000000 : ℚ)
  supportValue := (821631277758343 / 3125000000000000 : ℚ)
  supportSlope := (-306197323412773 / 400000000000000 : ℚ)
  oldCenter := (821631277758343 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1749
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12681 : Cell := { cellDefaults with
  domain := ⟨(151364804469273741 / 200000000000000000 : ℚ), (75700000000000001 / 100000000000000000 : ℚ)⟩
  r := (48431504836201 / 100000000000000 : ℚ)
  w := (13436518713027 / 10000000000000 : ℚ)
  center := (302764804469273743 / 400000000000000000 : ℚ)
  supportValue := (2627873961493359 / 10000000000000000 : ℚ)
  supportSlope := (-764391193639089 / 1000000000000000 : ℚ)
  oldCenter := (2627873961493359 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1749
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12682 : Cell := { cellDefaults with
  domain := ⟨(75700000000000001 / 100000000000000000 : ℚ), (302850000000000009 / 400000000000000000 : ℚ)⟩
  r := (48412304608329 / 100000000000000 : ℚ)
  w := (13436353478547 / 10000000000000 : ℚ)
  center := (605650000000000013 / 800000000000000000 : ℚ)
  supportValue := (3285521496874997 / 12500000000000000 : ℚ)
  supportSlope := (-152911359868553 / 200000000000000 : ℚ)
  oldCenter := (3285521496874997 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1750
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12683 : Cell := { cellDefaults with
  domain := ⟨(302850000000000009 / 400000000000000000 : ℚ), (151450000000000007 / 200000000000000000 : ℚ)⟩
  r := (48412304608329 / 100000000000000 : ℚ)
  w := (13436353478547 / 10000000000000 : ℚ)
  center := (605750000000000023 / 800000000000000000 : ℚ)
  supportValue := (656865497336091 / 2500000000000000 : ℚ)
  supportSlope := (-3818883057142459 / 5000000000000000 : ℚ)
  oldCenter := (656865497336091 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1750
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12684 : Cell := { cellDefaults with
  domain := ⟨(151450000000000007 / 200000000000000000 : ℚ), (302950000000000019 / 400000000000000000 : ℚ)⟩
  r := (48412304608329 / 100000000000000 : ℚ)
  w := (13436353478547 / 10000000000000 : ℚ)
  center := (605850000000000033 / 800000000000000000 : ℚ)
  supportValue := (1313253877188277 / 5000000000000000 : ℚ)
  supportSlope := (-7629996940465081 / 10000000000000000 : ℚ)
  oldCenter := (1313253877188277 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1750
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12685 : Cell := { cellDefaults with
  domain := ⟨(302950000000000019 / 400000000000000000 : ℚ), (37875000000000003 / 50000000000000000 : ℚ)⟩
  r := (48412304608329 / 100000000000000 : ℚ)
  w := (13436353478547 / 10000000000000 : ℚ)
  center := (605950000000000043 / 800000000000000000 : ℚ)
  supportValue := (26255544885214877 / 100000000000000000 : ℚ)
  supportSlope := (-7622260263050811 / 10000000000000000 : ℚ)
  oldCenter := (26255544885214877 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1750
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12686 : Cell := { cellDefaults with
  domain := ⟨(37875000000000003 / 50000000000000000 : ℚ), (303050000000000019 / 400000000000000000 : ℚ)⟩
  r := (9678627134683 / 20000000000000 : ℚ)
  w := (6718107244223 / 5000000000000 : ℚ)
  center := (606050000000000043 / 800000000000000000 : ℚ)
  supportValue := (26262876284074443 / 100000000000000000 : ℚ)
  supportSlope := (-476588916529289 / 625000000000000 : ℚ)
  oldCenter := (26262876284074443 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1751
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12687 : Cell := { cellDefaults with
  domain := ⟨(303050000000000019 / 400000000000000000 : ℚ), (151550000000000007 / 200000000000000000 : ℚ)⟩
  r := (9678627134683 / 20000000000000 : ℚ)
  w := (6718107244223 / 5000000000000 : ℚ)
  center := (606150000000000033 / 800000000000000000 : ℚ)
  supportValue := (525067354249381 / 2000000000000000 : ℚ)
  supportSlope := (-30479117142089 / 40000000000000 : ℚ)
  oldCenter := (525067354249381 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1751
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670, piece_671]
}

noncomputable def cell_12688 : Cell := { cellDefaults with
  domain := ⟨(151550000000000007 / 200000000000000000 : ℚ), (303150000000000009 / 400000000000000000 : ℚ)⟩
  r := (9678627134683 / 20000000000000 : ℚ)
  w := (6718107244223 / 5000000000000 : ℚ)
  center := (606250000000000023 / 800000000000000000 : ℚ)
  supportValue := (2624382072492823 / 10000000000000000 : ℚ)
  supportSlope := (-1524776997817209 / 2000000000000000 : ℚ)
  oldCenter := (2624382072492823 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1751
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12689 : Cell := { cellDefaults with
  domain := ⟨(303150000000000009 / 400000000000000000 : ℚ), (75800000000000001 / 100000000000000000 : ℚ)⟩
  r := (9678627134683 / 20000000000000 : ℚ)
  w := (6718107244223 / 5000000000000 : ℚ)
  center := (606350000000000013 / 800000000000000000 : ℚ)
  supportValue := (2623429574614387 / 10000000000000000 : ℚ)
  supportSlope := (-190402117932217 / 250000000000000 : ℚ)
  oldCenter := (2623429574614387 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1751
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12690 : Cell := { cellDefaults with
  domain := ⟨(75800000000000001 / 100000000000000000 : ℚ), (303250000000000009 / 400000000000000000 : ℚ)⟩
  r := (24186990039289 / 50000000000000 : ℚ)
  w := (13436069657207 / 10000000000000 : ℚ)
  center := (606450000000000013 / 800000000000000000 : ℚ)
  supportValue := (524832744549979 / 2000000000000000 : ℚ)
  supportSlope := (-1523862252596889 / 2000000000000000 : ℚ)
  oldCenter := (524832744549979 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1752
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12691 : Cell := { cellDefaults with
  domain := ⟨(303250000000000009 / 400000000000000000 : ℚ), (151650000000000007 / 200000000000000000 : ℚ)⟩
  r := (24186990039289 / 50000000000000 : ℚ)
  w := (13436069657207 / 10000000000000 : ℚ)
  center := (606550000000000023 / 800000000000000000 : ℚ)
  supportValue := (26232117957571527 / 100000000000000000 : ℚ)
  supportSlope := (-1902881063475613 / 2500000000000000 : ℚ)
  oldCenter := (26232117957571527 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1752
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12692 : Cell := { cellDefaults with
  domain := ⟨(151650000000000007 / 200000000000000000 : ℚ), (303350000000000019 / 400000000000000000 : ℚ)⟩
  r := (24186990039289 / 50000000000000 : ℚ)
  w := (13436069657207 / 10000000000000 : ℚ)
  center := (606650000000000033 / 800000000000000000 : ℚ)
  supportValue := (65556521002339 / 250000000000000 : ℚ)
  supportSlope := (-7603769948722267 / 10000000000000000 : ℚ)
  oldCenter := (65556521002339 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1752
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12693 : Cell := { cellDefaults with
  domain := ⟨(303350000000000019 / 400000000000000000 : ℚ), (37925000000000003 / 50000000000000000 : ℚ)⟩
  r := (24186990039289 / 50000000000000 : ℚ)
  w := (13436069657207 / 10000000000000 : ℚ)
  center := (606750000000000043 / 800000000000000000 : ℚ)
  supportValue := (26213108516842387 / 100000000000000000 : ℚ)
  supportSlope := (-7596048138118001 / 10000000000000000 : ℚ)
  oldCenter := (26213108516842387 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1752
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12694 : Cell := { cellDefaults with
  domain := ⟨(37925000000000003 / 50000000000000000 : ℚ), (303450000000000019 / 400000000000000000 : ℚ)⟩
  r := (48354857435107 / 100000000000000 : ℚ)
  w := (6717977759711 / 5000000000000 : ℚ)
  center := (606850000000000043 / 800000000000000000 : ℚ)
  supportValue := (2622037449012681 / 10000000000000000 : ℚ)
  supportSlope := (-1519836612098909 / 2000000000000000 : ℚ)
  oldCenter := (2622037449012681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1753
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12695 : Cell := { cellDefaults with
  domain := ⟨(303450000000000019 / 400000000000000000 : ℚ), (151750000000000007 / 200000000000000000 : ℚ)⟩
  r := (48354857435107 / 100000000000000 : ℚ)
  w := (6717977759711 / 5000000000000 : ℚ)
  center := (606950000000000033 / 800000000000000000 : ℚ)
  supportValue := (3276360041418433 / 12500000000000000 : ℚ)
  supportSlope := (-3795737252941069 / 5000000000000000 : ℚ)
  oldCenter := (3276360041418433 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1753
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12696 : Cell := { cellDefaults with
  domain := ⟨(151750000000000007 / 200000000000000000 : ℚ), (303550000000000009 / 400000000000000000 : ℚ)⟩
  r := (48354857435107 / 100000000000000 : ℚ)
  w := (6717977759711 / 5000000000000 : ℚ)
  center := (607050000000000023 / 800000000000000000 : ℚ)
  supportValue := (5240282825815299 / 20000000000000000 : ℚ)
  supportSlope := (-3794352817303827 / 5000000000000000 : ℚ)
  oldCenter := (5240282825815299 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1753
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669, piece_670]
}

noncomputable def cell_12697 : Cell := { cellDefaults with
  domain := ⟨(303550000000000009 / 400000000000000000 : ℚ), (75900000000000001 / 100000000000000000 : ℚ)⟩
  r := (48354857435107 / 100000000000000 : ℚ)
  w := (6717977759711 / 5000000000000 : ℚ)
  center := (607150000000000013 / 800000000000000000 : ℚ)
  supportValue := (13095953024231363 / 50000000000000000 : ℚ)
  supportSlope := (-7589938990140913 / 10000000000000000 : ℚ)
  oldCenter := (13095953024231363 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1753
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669]
}

noncomputable def cell_12698 : Cell := { cellDefaults with
  domain := ⟨(75900000000000001 / 100000000000000000 : ℚ), (303650000000000009 / 400000000000000000 : ℚ)⟩
  r := (9667150306417 / 20000000000000 : ℚ)
  w := (13435842535553 / 10000000000000 : ℚ)
  center := (607250000000000013 / 800000000000000000 : ℚ)
  supportValue := (2619918692652009 / 10000000000000000 : ℚ)
  supportSlope := (-1896848573115039 / 2500000000000000 : ℚ)
  oldCenter := (2619918692652009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1754
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669, piece_670]
}

noncomputable def cell_12699 : Cell := { cellDefaults with
  domain := ⟨(303650000000000009 / 400000000000000000 : ℚ), (151850000000000007 / 200000000000000000 : ℚ)⟩
  r := (9667150306417 / 20000000000000 : ℚ)
  w := (13435842535553 / 10000000000000 : ℚ)
  center := (607350000000000023 / 800000000000000000 : ℚ)
  supportValue := (2618968203748963 / 10000000000000000 : ℚ)
  supportSlope := (-7585356327179179 / 10000000000000000 : ℚ)
  oldCenter := (2618968203748963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1754
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669]
}

theorem check_12650 : cell_12650.check = true := by
  decide +kernel

theorem check_12651 : cell_12651.check = true := by
  decide +kernel

theorem check_12652 : cell_12652.check = true := by
  decide +kernel

theorem check_12653 : cell_12653.check = true := by
  decide +kernel

theorem check_12654 : cell_12654.check = true := by
  decide +kernel

theorem check_12655 : cell_12655.check = true := by
  decide +kernel

theorem check_12656 : cell_12656.check = true := by
  decide +kernel

theorem check_12657 : cell_12657.check = true := by
  decide +kernel

theorem check_12658 : cell_12658.check = true := by
  decide +kernel

theorem check_12659 : cell_12659.check = true := by
  decide +kernel

theorem check_12660 : cell_12660.check = true := by
  decide +kernel

theorem check_12661 : cell_12661.check = true := by
  decide +kernel

theorem check_12662 : cell_12662.check = true := by
  decide +kernel

theorem check_12663 : cell_12663.check = true := by
  decide +kernel

theorem check_12664 : cell_12664.check = true := by
  decide +kernel

theorem check_12665 : cell_12665.check = true := by
  decide +kernel

theorem check_12666 : cell_12666.check = true := by
  decide +kernel

theorem check_12667 : cell_12667.check = true := by
  decide +kernel

theorem check_12668 : cell_12668.check = true := by
  decide +kernel

theorem check_12669 : cell_12669.check = true := by
  decide +kernel

theorem check_12670 : cell_12670.check = true := by
  decide +kernel

theorem check_12671 : cell_12671.check = true := by
  decide +kernel

theorem check_12672 : cell_12672.check = true := by
  decide +kernel

theorem check_12673 : cell_12673.check = true := by
  decide +kernel

theorem check_12674 : cell_12674.check = true := by
  decide +kernel

theorem check_12675 : cell_12675.check = true := by
  decide +kernel

theorem check_12676 : cell_12676.check = true := by
  decide +kernel

theorem check_12677 : cell_12677.check = true := by
  decide +kernel

theorem check_12678 : cell_12678.check = true := by
  decide +kernel

theorem check_12679 : cell_12679.check = true := by
  decide +kernel

theorem check_12680 : cell_12680.check = true := by
  decide +kernel

theorem check_12681 : cell_12681.check = true := by
  decide +kernel

theorem check_12682 : cell_12682.check = true := by
  decide +kernel

theorem check_12683 : cell_12683.check = true := by
  decide +kernel

theorem check_12684 : cell_12684.check = true := by
  decide +kernel

theorem check_12685 : cell_12685.check = true := by
  decide +kernel

theorem check_12686 : cell_12686.check = true := by
  decide +kernel

theorem check_12687 : cell_12687.check = true := by
  decide +kernel

theorem check_12688 : cell_12688.check = true := by
  decide +kernel

theorem check_12689 : cell_12689.check = true := by
  decide +kernel

theorem check_12690 : cell_12690.check = true := by
  decide +kernel

theorem check_12691 : cell_12691.check = true := by
  decide +kernel

theorem check_12692 : cell_12692.check = true := by
  decide +kernel

theorem check_12693 : cell_12693.check = true := by
  decide +kernel

theorem check_12694 : cell_12694.check = true := by
  decide +kernel

theorem check_12695 : cell_12695.check = true := by
  decide +kernel

theorem check_12696 : cell_12696.check = true := by
  decide +kernel

theorem check_12697 : cell_12697.check = true := by
  decide +kernel

theorem check_12698 : cell_12698.check = true := by
  decide +kernel

theorem check_12699 : cell_12699.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12650, cell_12651, cell_12652, cell_12653, cell_12654, cell_12655, cell_12656, cell_12657, cell_12658, cell_12659, cell_12660, cell_12661, cell_12662, cell_12663, cell_12664, cell_12665, cell_12666, cell_12667, cell_12668, cell_12669, cell_12670, cell_12671, cell_12672, cell_12673, cell_12674, cell_12675, cell_12676, cell_12677, cell_12678, cell_12679, cell_12680, cell_12681, cell_12682, cell_12683, cell_12684, cell_12685, cell_12686, cell_12687, cell_12688, cell_12689, cell_12690, cell_12691, cell_12692, cell_12693, cell_12694, cell_12695, cell_12696, cell_12697, cell_12698, cell_12699]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12650, check_12651, check_12652, check_12653, check_12654, check_12655, check_12656, check_12657, check_12658, check_12659, check_12660, check_12661, check_12662, check_12663, check_12664, check_12665, check_12666, check_12667, check_12668, check_12669, check_12670, check_12671, check_12672, check_12673, check_12674, check_12675, check_12676, check_12677, check_12678, check_12679, check_12680, check_12681, check_12682, check_12683, check_12684, check_12685, check_12686, check_12687, check_12688, check_12689, check_12690, check_12691, check_12692, check_12693, check_12694, check_12695, check_12696, check_12697, check_12698, check_12699, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0253

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0253
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0253
open AnalyticBounds.ExpressionCertificate

theorem linked_12650 : Linked cell_12650 pieces := by
  refine ⟨piece_1740,piece_1740_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12650,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_675_mem
    · exact piece_676_mem

theorem linked_12651 : Linked cell_12651 pieces := by
  refine ⟨piece_1741,piece_1741_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12651,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_676_mem

theorem linked_12652 : Linked cell_12652 pieces := by
  refine ⟨piece_1741,piece_1741_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12652,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_674_mem
    · exact piece_675_mem
    · exact piece_676_mem

theorem linked_12653 : Linked cell_12653 pieces := by
  refine ⟨piece_1741,piece_1741_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12653,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_674_mem

theorem linked_12654 : Linked cell_12654 pieces := by
  refine ⟨piece_1741,piece_1741_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12654,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_674_mem

theorem linked_12655 : Linked cell_12655 pieces := by
  refine ⟨piece_1742,piece_1742_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12655,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_674_mem

theorem linked_12656 : Linked cell_12656 pieces := by
  refine ⟨piece_1742,piece_1742_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12656,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_674_mem

theorem linked_12657 : Linked cell_12657 pieces := by
  refine ⟨piece_1742,piece_1742_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12657,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_674_mem

theorem linked_12658 : Linked cell_12658 pieces := by
  refine ⟨piece_1742,piece_1742_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12658,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_673_mem
    · exact piece_674_mem

theorem linked_12659 : Linked cell_12659 pieces := by
  refine ⟨piece_1743,piece_1743_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12659,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_674_mem

theorem linked_12660 : Linked cell_12660 pieces := by
  refine ⟨piece_1743,piece_1743_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12660,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_673_mem
    · exact piece_674_mem

theorem linked_12661 : Linked cell_12661 pieces := by
  refine ⟨piece_1743,piece_1743_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12661,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_673_mem

theorem linked_12662 : Linked cell_12662 pieces := by
  refine ⟨piece_1743,piece_1743_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12662,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_673_mem

theorem linked_12663 : Linked cell_12663 pieces := by
  refine ⟨piece_1744,piece_1744_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12663,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_673_mem

theorem linked_12664 : Linked cell_12664 pieces := by
  refine ⟨piece_1744,piece_1744_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12664,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_673_mem

theorem linked_12665 : Linked cell_12665 pieces := by
  refine ⟨piece_1744,piece_1744_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12665,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_673_mem

theorem linked_12666 : Linked cell_12666 pieces := by
  refine ⟨piece_1744,piece_1744_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12666,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_673_mem

theorem linked_12667 : Linked cell_12667 pieces := by
  refine ⟨piece_1745,piece_1745_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12667,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_673_mem

theorem linked_12668 : Linked cell_12668 pieces := by
  refine ⟨piece_1745,piece_1745_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12668,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_673_mem

theorem linked_12669 : Linked cell_12669 pieces := by
  refine ⟨piece_1745,piece_1745_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12669,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_672_mem
    · exact piece_673_mem

theorem linked_12670 : Linked cell_12670 pieces := by
  refine ⟨piece_1745,piece_1745_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12670,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_672_mem

theorem linked_12671 : Linked cell_12671 pieces := by
  refine ⟨piece_1746,piece_1746_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12671,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_672_mem
    · exact piece_673_mem

theorem linked_12672 : Linked cell_12672 pieces := by
  refine ⟨piece_1746,piece_1746_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12672,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_672_mem

theorem linked_12673 : Linked cell_12673 pieces := by
  refine ⟨piece_1746,piece_1746_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12673,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_672_mem

theorem linked_12674 : Linked cell_12674 pieces := by
  refine ⟨piece_1746,piece_1746_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12674,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_672_mem

theorem linked_12675 : Linked cell_12675 pieces := by
  refine ⟨piece_1747,piece_1747_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12675,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_672_mem

theorem linked_12676 : Linked cell_12676 pieces := by
  refine ⟨piece_1747,piece_1747_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12676,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_672_mem

theorem linked_12677 : Linked cell_12677 pieces := by
  refine ⟨piece_1747,piece_1747_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12677,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_672_mem

theorem linked_12678 : Linked cell_12678 pieces := by
  refine ⟨piece_1747,piece_1747_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12678,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_671_mem
    · exact piece_672_mem

theorem linked_12679 : Linked cell_12679 pieces := by
  refine ⟨piece_1748,piece_1748_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12679,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_671_mem
    · exact piece_672_mem

theorem linked_12680 : Linked cell_12680 pieces := by
  refine ⟨piece_1749,piece_1749_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12680,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_671_mem

theorem linked_12681 : Linked cell_12681 pieces := by
  refine ⟨piece_1749,piece_1749_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12681,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_671_mem

theorem linked_12682 : Linked cell_12682 pieces := by
  refine ⟨piece_1750,piece_1750_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12682,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_671_mem

theorem linked_12683 : Linked cell_12683 pieces := by
  refine ⟨piece_1750,piece_1750_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12683,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_671_mem

theorem linked_12684 : Linked cell_12684 pieces := by
  refine ⟨piece_1750,piece_1750_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12684,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_671_mem

theorem linked_12685 : Linked cell_12685 pieces := by
  refine ⟨piece_1750,piece_1750_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12685,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_671_mem

theorem linked_12686 : Linked cell_12686 pieces := by
  refine ⟨piece_1751,piece_1751_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12686,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_671_mem

theorem linked_12687 : Linked cell_12687 pieces := by
  refine ⟨piece_1751,piece_1751_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12687,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_670_mem
    · exact piece_671_mem

theorem linked_12688 : Linked cell_12688 pieces := by
  refine ⟨piece_1751,piece_1751_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12688,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_670_mem

theorem linked_12689 : Linked cell_12689 pieces := by
  refine ⟨piece_1751,piece_1751_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12689,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_670_mem

theorem linked_12690 : Linked cell_12690 pieces := by
  refine ⟨piece_1752,piece_1752_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12690,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_670_mem

theorem linked_12691 : Linked cell_12691 pieces := by
  refine ⟨piece_1752,piece_1752_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12691,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_670_mem

theorem linked_12692 : Linked cell_12692 pieces := by
  refine ⟨piece_1752,piece_1752_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12692,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_670_mem

theorem linked_12693 : Linked cell_12693 pieces := by
  refine ⟨piece_1752,piece_1752_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12693,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_670_mem

theorem linked_12694 : Linked cell_12694 pieces := by
  refine ⟨piece_1753,piece_1753_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12694,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_670_mem

theorem linked_12695 : Linked cell_12695 pieces := by
  refine ⟨piece_1753,piece_1753_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12695,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_670_mem

theorem linked_12696 : Linked cell_12696 pieces := by
  refine ⟨piece_1753,piece_1753_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12696,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_669_mem
    · exact piece_670_mem

theorem linked_12697 : Linked cell_12697 pieces := by
  refine ⟨piece_1753,piece_1753_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12697,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_669_mem

theorem linked_12698 : Linked cell_12698 pieces := by
  refine ⟨piece_1754,piece_1754_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12698,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_669_mem
    · exact piece_670_mem

theorem linked_12699 : Linked cell_12699 pieces := by
  refine ⟨piece_1754,piece_1754_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12699,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_669_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0253.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0253.cells,List.forall_mem_cons]
  exact ⟨linked_12650, linked_12651, linked_12652, linked_12653, linked_12654, linked_12655, linked_12656, linked_12657, linked_12658, linked_12659, linked_12660, linked_12661, linked_12662, linked_12663, linked_12664, linked_12665, linked_12666, linked_12667, linked_12668, linked_12669, linked_12670, linked_12671, linked_12672, linked_12673, linked_12674, linked_12675, linked_12676, linked_12677, linked_12678, linked_12679, linked_12680, linked_12681, linked_12682, linked_12683, linked_12684, linked_12685, linked_12686, linked_12687, linked_12688, linked_12689, linked_12690, linked_12691, linked_12692, linked_12693, linked_12694, linked_12695, linked_12696, linked_12697, linked_12698, linked_12699, by simp⟩

theorem covered : covers (150575000000000003 / 200000000000000000 : ℚ) (151850000000000007 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0253.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0253
