import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0245
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(28145000000000001 / 40000000000000000 : ℚ), (17593750000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (50578993045931 / 100000000000000 : ℚ)
  w := (2703130584333 / 2000000000000 : ℚ)
  center := (281475000000000013 / 400000000000000000 : ℚ)
  supportValue := (1433944888826539 / 5000000000000000 : ℚ)
  supportSlope := (-4641234790007663 / 5000000000000000 : ℚ)
  oldCenter := (1433944888826539 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1634
  oldLo := (28600000000000003 / 100000000000000000 : ℚ)
  oldHi := (28650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_722]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_12250 : Cell := { cellDefaults with
  r := (6325089510471 / 12500000000000 : ℚ)
  w := (84480760141 / 62500000000 : ℚ)
  newCoefficients := coefficients_1633
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724]
}

noncomputable def cell_12251 : Cell := { cellDefaults with
  domain := ⟨(17593750000000001 / 25000000000000000 : ℚ), (140775000000000011 / 200000000000000000 : ℚ)⟩
  r := (6325089510471 / 12500000000000 : ℚ)
  w := (84480760141 / 62500000000 : ℚ)
  center := (281525000000000019 / 400000000000000000 : ℚ)
  supportValue := (28667301095443487 / 100000000000000000 : ℚ)
  supportSlope := (-4636112811903791 / 5000000000000000 : ℚ)
  oldCenter := (28667301095443487 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1633
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724]
}

noncomputable def cell_12252 : Cell := { cellDefaults with
  domain := ⟨(140775000000000011 / 200000000000000000 : ℚ), (70400000000000007 / 100000000000000000 : ℚ)⟩
  r := (6325089510471 / 12500000000000 : ℚ)
  w := (84480760141 / 62500000000 : ℚ)
  center := (11263000000000001 / 16000000000000000 : ℚ)
  supportValue := (2865573725077111 / 10000000000000000 : ℚ)
  supportSlope := (-9262147176761769 / 10000000000000000 : ℚ)
  oldCenter := (2865573725077111 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1633
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_722, piece_723, piece_724]
}

noncomputable def cell_12253 : Cell := { cellDefaults with
  domain := ⟨(70400000000000007 / 100000000000000000 : ℚ), (281650000000000023 / 400000000000000000 : ℚ)⟩
  center := (563250000000000051 / 800000000000000000 : ℚ)
  supportValue := (2866660531430381 / 10000000000000000 : ℚ)
  supportSlope := (-1853557544438019 / 2000000000000000 : ℚ)
  oldCenter := (2866660531430381 / 10000000000000000 : ℚ)
  oldLo := (28653631284916203 / 100000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_724]
}

noncomputable def cell_12254 : Cell := { cellDefaults with
  domain := ⟨(281650000000000023 / 400000000000000000 : ℚ), (140850000000000009 / 200000000000000000 : ℚ)⟩
  center := (563350000000000041 / 800000000000000000 : ℚ)
  supportValue := (2865504700958113 / 10000000000000000 : ℚ)
  supportSlope := (-925874451872403 / 1000000000000000 : ℚ)
  oldCenter := (2865504700958113 / 10000000000000000 : ℚ)
  oldHi := (28700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_722, piece_723, piece_724]
}

noncomputable def cell_12255 : Cell := { cellDefaults with
  domain := ⟨(140850000000000009 / 200000000000000000 : ℚ), (281750000000000013 / 400000000000000000 : ℚ)⟩
  center := (563450000000000031 / 800000000000000000 : ℚ)
  supportValue := (5728689824815677 / 20000000000000000 : ℚ)
  supportSlope := (-9264597779400179 / 10000000000000000 : ℚ)
  oldCenter := (5728689824815677 / 20000000000000000 : ℚ)
  oldPieces := [piece_722]
}

noncomputable def cell_12256 : Cell := { cellDefaults with
  domain := ⟨(281750000000000013 / 400000000000000000 : ℚ), (35225000000000001 / 50000000000000000 : ℚ)⟩
  center := (563550000000000021 / 800000000000000000 : ℚ)
  supportValue := (11452749917977 / 40000000000000 : ℚ)
  supportSlope := (-925433437551341 / 1000000000000000 : ℚ)
  oldCenter := (11452749917977 / 40000000000000 : ℚ)
  oldPieces := [piece_722]
}

noncomputable def cell_12257 : Cell := { cellDefaults with
  domain := ⟨(35225000000000001 / 50000000000000000 : ℚ), (281850000000000013 / 400000000000000000 : ℚ)⟩
  r := (10111457048239 / 20000000000000 : ℚ)
  w := (2702875343507 / 2000000000000 : ℚ)
  center := (563650000000000021 / 800000000000000000 : ℚ)
  supportValue := (2864277820302687 / 10000000000000000 : ℚ)
  supportSlope := (-578761276826487 / 625000000000000 : ℚ)
  oldCenter := (2864277820302687 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1635
  oldPieces := [piece_722]
}

noncomputable def cell_12258 : Cell := { cellDefaults with
  domain := ⟨(281850000000000013 / 400000000000000000 : ℚ), (140950000000000009 / 200000000000000000 : ℚ)⟩
  r := (10111457048239 / 20000000000000 : ℚ)
  w := (2702875343507 / 2000000000000 : ℚ)
  center := (563750000000000031 / 800000000000000000 : ℚ)
  supportValue := (1789450586789831 / 6250000000000000 : ℚ)
  supportSlope := (-289060253629263 / 312500000000000 : ℚ)
  oldCenter := (1789450586789831 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1635
  oldPieces := [piece_722]
}

noncomputable def cell_12259 : Cell := { cellDefaults with
  domain := ⟨(140950000000000009 / 200000000000000000 : ℚ), (281950000000000023 / 400000000000000000 : ℚ)⟩
  r := (10111457048239 / 20000000000000 : ℚ)
  w := (2702875343507 / 2000000000000 : ℚ)
  center := (563850000000000041 / 800000000000000000 : ℚ)
  supportValue := (28619653362001757 / 100000000000000000 : ℚ)
  supportSlope := (-9239719954629209 / 10000000000000000 : ℚ)
  oldCenter := (28619653362001757 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1635
  oldPieces := [piece_722]
}

noncomputable def cell_12260 : Cell := { cellDefaults with
  domain := ⟨(281950000000000023 / 400000000000000000 : ℚ), (70500000000000007 / 100000000000000000 : ℚ)⟩
  r := (10111457048239 / 20000000000000 : ℚ)
  w := (2702875343507 / 2000000000000 : ℚ)
  center := (563950000000000051 / 800000000000000000 : ℚ)
  supportValue := (1430405503405801 / 5000000000000000 : ℚ)
  supportSlope := (-4614777824469379 / 5000000000000000 : ℚ)
  oldCenter := (1430405503405801 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1635
  oldPieces := [piece_722]
}

noncomputable def cell_12261 : Cell := { cellDefaults with
  domain := ⟨(70500000000000007 / 100000000000000000 : ℚ), (282050000000000023 / 400000000000000000 : ℚ)⟩
  r := (50535610231377 / 100000000000000 : ℚ)
  w := (675656227467 / 500000000000 : ℚ)
  center := (564050000000000051 / 800000000000000000 : ℚ)
  supportValue := (14309468620827523 / 50000000000000000 : ℚ)
  supportSlope := (-369411393933953 / 400000000000000 : ℚ)
  oldCenter := (14309468620827523 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1636
  oldPieces := [piece_722]
}

noncomputable def cell_12262 : Cell := { cellDefaults with
  domain := ⟨(282050000000000023 / 400000000000000000 : ℚ), (141050000000000009 / 200000000000000000 : ℚ)⟩
  r := (50535610231377 / 100000000000000 : ℚ)
  w := (675656227467 / 500000000000 : ℚ)
  center := (564150000000000041 / 800000000000000000 : ℚ)
  supportValue := (2860739948468609 / 10000000000000000 : ℚ)
  supportSlope := (-9225131672990583 / 10000000000000000 : ℚ)
  oldCenter := (2860739948468609 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1636
  oldPieces := [piece_722]
}

noncomputable def cell_12263 : Cell := { cellDefaults with
  domain := ⟨(141050000000000009 / 200000000000000000 : ℚ), (282150000000000013 / 400000000000000000 : ℚ)⟩
  r := (50535610231377 / 100000000000000 : ℚ)
  w := (675656227467 / 500000000000 : ℚ)
  center := (564250000000000031 / 800000000000000000 : ℚ)
  supportValue := (7148971677960561 / 25000000000000000 : ℚ)
  supportSlope := (-4614862927843539 / 5000000000000000 : ℚ)
  oldCenter := (7148971677960561 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1636
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721, piece_722]
}

noncomputable def cell_12264 : Cell := { cellDefaults with
  domain := ⟨(282150000000000013 / 400000000000000000 : ℚ), (35275000000000001 / 50000000000000000 : ℚ)⟩
  r := (50535610231377 / 100000000000000 : ℚ)
  w := (675656227467 / 500000000000 : ℚ)
  center := (564350000000000021 / 800000000000000000 : ℚ)
  supportValue := (1429216644813191 / 5000000000000000 : ℚ)
  supportSlope := (-92219292315319 / 100000000000000 : ℚ)
  oldCenter := (1429216644813191 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1636
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721]
}

noncomputable def cell_12265 : Cell := { cellDefaults with
  domain := ⟨(35275000000000001 / 50000000000000000 : ℚ), (282250000000000013 / 400000000000000000 : ℚ)⟩
  r := (50513952327989 / 100000000000000 : ℚ)
  w := (6755933829993 / 5000000000000 : ℚ)
  center := (564450000000000021 / 800000000000000000 : ℚ)
  supportValue := (1429759436657127 / 5000000000000000 : ℚ)
  supportSlope := (-1153293798976547 / 1250000000000000 : ℚ)
  oldCenter := (1429759436657127 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1637
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721, piece_722]
}

noncomputable def cell_12266 : Cell := { cellDefaults with
  domain := ⟨(282250000000000013 / 400000000000000000 : ℚ), (141150000000000009 / 200000000000000000 : ℚ)⟩
  r := (50513952327989 / 100000000000000 : ℚ)
  w := (6755933829993 / 5000000000000 : ℚ)
  center := (564550000000000031 / 800000000000000000 : ℚ)
  supportValue := (2858364043573931 / 10000000000000000 : ℚ)
  supportSlope := (-4608760323531841 / 5000000000000000 : ℚ)
  oldCenter := (2858364043573931 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1637
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721]
}

noncomputable def cell_12267 : Cell := { cellDefaults with
  domain := ⟨(141150000000000009 / 200000000000000000 : ℚ), (282350000000000023 / 400000000000000000 : ℚ)⟩
  r := (50513952327989 / 100000000000000 : ℚ)
  w := (6755933829993 / 5000000000000 : ℚ)
  center := (564650000000000041 / 800000000000000000 : ℚ)
  supportValue := (1142884995769893 / 4000000000000000 : ℚ)
  supportSlope := (-575459448595659 / 625000000000000 : ℚ)
  oldCenter := (1142884995769893 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1637
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721]
}

noncomputable def cell_12268 : Cell := { cellDefaults with
  domain := ⟨(282350000000000023 / 400000000000000000 : ℚ), (70600000000000007 / 100000000000000000 : ℚ)⟩
  r := (50513952327989 / 100000000000000 : ℚ)
  w := (6755933829993 / 5000000000000 : ℚ)
  center := (564750000000000051 / 800000000000000000 : ℚ)
  supportValue := (142803110186149 / 500000000000000 : ℚ)
  supportSlope := (-2299306355164391 / 2500000000000000 : ℚ)
  oldCenter := (142803110186149 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1637
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721]
}

noncomputable def cell_12269 : Cell := { cellDefaults with
  domain := ⟨(70600000000000007 / 100000000000000000 : ℚ), (282450000000000023 / 400000000000000000 : ℚ)⟩
  r := (25246162659917 / 50000000000000 : ℚ)
  w := (3377657669697 / 2500000000000 : ℚ)
  center := (564850000000000051 / 800000000000000000 : ℚ)
  supportValue := (7142847679725839 / 25000000000000000 : ℚ)
  supportSlope := (-184058415288409 / 200000000000000 : ℚ)
  oldCenter := (7142847679725839 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1638
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721]
}

noncomputable def cell_12270 : Cell := { cellDefaults with
  domain := ⟨(282450000000000023 / 400000000000000000 : ℚ), (141250000000000009 / 200000000000000000 : ℚ)⟩
  r := (25246162659917 / 50000000000000 : ℚ)
  w := (3377657669697 / 2500000000000 : ℚ)
  center := (564950000000000041 / 800000000000000000 : ℚ)
  supportValue := (2855989339292271 / 10000000000000000 : ℚ)
  supportSlope := (-9192806159293663 / 10000000000000000 : ℚ)
  oldCenter := (2855989339292271 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1638
  oldLo := (28550000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_721]
}

noncomputable def cell_12271 : Cell := { cellDefaults with
  domain := ⟨(141250000000000009 / 200000000000000000 : ℚ), (282550000000000013 / 400000000000000000 : ℚ)⟩
  r := (25246162659917 / 50000000000000 : ℚ)
  w := (3377657669697 / 2500000000000 : ℚ)
  center := (565050000000000031 / 800000000000000000 : ℚ)
  supportValue := (28548425681644307 / 100000000000000000 : ℚ)
  supportSlope := (-9193666152214983 / 10000000000000000 : ℚ)
  oldCenter := (28548425681644307 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1638
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720, piece_721]
}

noncomputable def cell_12272 : Cell := { cellDefaults with
  domain := ⟨(282550000000000013 / 400000000000000000 : ℚ), (35325000000000001 / 50000000000000000 : ℚ)⟩
  r := (25246162659917 / 50000000000000 : ℚ)
  w := (3377657669697 / 2500000000000 : ℚ)
  center := (565150000000000021 / 800000000000000000 : ℚ)
  supportValue := (5707382448205297 / 20000000000000000 : ℚ)
  supportSlope := (-1837935276450337 / 2000000000000000 : ℚ)
  oldCenter := (5707382448205297 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1638
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720]
}

noncomputable def cell_12273 : Cell := { cellDefaults with
  domain := ⟨(35325000000000001 / 50000000000000000 : ℚ), (141318575418994413 / 200000000000000000 : ℚ)⟩
  r := (50470717314693 / 100000000000000 : ℚ)
  w := (13509393691141 / 10000000000000 : ℚ)
  center := (282618575418994417 / 400000000000000000 : ℚ)
  supportValue := (285491766098621 / 1000000000000000 : ℚ)
  supportSlope := (-367595069710673 / 400000000000000 : ℚ)
  oldCenter := (285491766098621 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1639
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720, piece_721]
}

noncomputable def cell_12274 : Cell := { cellDefaults with
  domain := ⟨(141318575418994413 / 200000000000000000 : ℚ), (70668575418994411 / 100000000000000000 : ℚ)⟩
  r := (50470717314693 / 100000000000000 : ℚ)
  w := (13509393691141 / 10000000000000 : ℚ)
  center := (56531145251396647 / 80000000000000000 : ℚ)
  supportValue := (5708123693725271 / 20000000000000000 : ℚ)
  supportSlope := (-574323739180523 / 625000000000000 : ℚ)
  oldCenter := (5708123693725271 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1639
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720]
}

noncomputable def cell_12275 : Cell := { cellDefaults with
  domain := ⟨(70668575418994411 / 100000000000000000 : ℚ), (3534357541899441 / 5000000000000000 : ℚ)⟩
  r := (50470717314693 / 100000000000000 : ℚ)
  w := (13509393691141 / 10000000000000 : ℚ)
  center := (141355726256983231 / 200000000000000000 : ℚ)
  supportValue := (7131961087872861 / 25000000000000000 : ℚ)
  supportSlope := (-1835575679746163 / 2000000000000000 : ℚ)
  oldCenter := (7131961087872861 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1639
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720]
}

noncomputable def cell_12276 : Cell := { cellDefaults with
  domain := ⟨(3534357541899441 / 5000000000000000 : ℚ), (70700000000000007 / 100000000000000000 : ℚ)⟩
  r := (50470717314693 / 100000000000000 : ℚ)
  w := (13509393691141 / 10000000000000 : ℚ)
  center := (141387150837988827 / 200000000000000000 : ℚ)
  supportValue := (55690261345037 / 195312500000000 : ℚ)
  supportSlope := (-9165192227798611 / 10000000000000000 : ℚ)
  oldCenter := (55690261345037 / 195312500000000 : ℚ)
  newCoefficients := coefficients_1640
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720]
}

noncomputable def cell_12277 : Cell := { cellDefaults with
  domain := ⟨(70700000000000007 / 100000000000000000 : ℚ), (282850000000000023 / 400000000000000000 : ℚ)⟩
  r := (50449138895377 / 100000000000000 : ℚ)
  w := (3377043362691 / 2500000000000 : ℚ)
  center := (565650000000000051 / 800000000000000000 : ℚ)
  supportValue := (2852396086446267 / 10000000000000000 : ℚ)
  supportSlope := (-4585354138644707 / 5000000000000000 : ℚ)
  oldCenter := (2852396086446267 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1641
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720]
}

noncomputable def cell_12278 : Cell := { cellDefaults with
  domain := ⟨(282850000000000023 / 400000000000000000 : ℚ), (141450000000000009 / 200000000000000000 : ℚ)⟩
  r := (50449138895377 / 100000000000000 : ℚ)
  w := (3377043362691 / 2500000000000 : ℚ)
  center := (565750000000000041 / 800000000000000000 : ℚ)
  supportValue := (2851250377853133 / 10000000000000000 : ℚ)
  supportSlope := (-11450793182789 / 12500000000000 : ℚ)
  oldCenter := (2851250377853133 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1641
  oldLo := (28500000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_720]
}

noncomputable def cell_12279 : Cell := { cellDefaults with
  domain := ⟨(141450000000000009 / 200000000000000000 : ℚ), (282950000000000013 / 400000000000000000 : ℚ)⟩
  r := (50449138895377 / 100000000000000 : ℚ)
  w := (3377043362691 / 2500000000000 : ℚ)
  center := (565850000000000031 / 800000000000000000 : ℚ)
  supportValue := (570021584169327 / 2000000000000000 : ℚ)
  supportSlope := (-9157568681797761 / 10000000000000000 : ℚ)
  oldCenter := (570021584169327 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1641
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719, piece_720]
}

noncomputable def cell_12280 : Cell := { cellDefaults with
  domain := ⟨(282950000000000013 / 400000000000000000 : ℚ), (35375000000000001 / 50000000000000000 : ℚ)⟩
  r := (50449138895377 / 100000000000000 : ℚ)
  w := (3377043362691 / 2500000000000 : ℚ)
  center := (565950000000000021 / 800000000000000000 : ℚ)
  supportValue := (1424480396014907 / 5000000000000000 : ℚ)
  supportSlope := (-9157573739805107 / 10000000000000000 : ℚ)
  oldCenter := (1424480396014907 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1641
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719]
}

noncomputable def cell_12281 : Cell := { cellDefaults with
  domain := ⟨(35375000000000001 / 50000000000000000 : ℚ), (283050000000000013 / 400000000000000000 : ℚ)⟩
  r := (25213790417683 / 50000000000000 : ℚ)
  w := (6753478084189 / 5000000000000 : ℚ)
  center := (566050000000000021 / 800000000000000000 : ℚ)
  supportValue := (2850032664966203 / 10000000000000000 : ℚ)
  supportSlope := (-9154276900122023 / 10000000000000000 : ℚ)
  oldCenter := (2850032664966203 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1642
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719, piece_720]
}

noncomputable def cell_12282 : Cell := { cellDefaults with
  domain := ⟨(283050000000000013 / 400000000000000000 : ℚ), (141550000000000009 / 200000000000000000 : ℚ)⟩
  r := (25213790417683 / 50000000000000 : ℚ)
  w := (6753478084189 / 5000000000000 : ℚ)
  center := (566150000000000031 / 800000000000000000 : ℚ)
  supportValue := (1424442974020341 / 5000000000000000 : ℚ)
  supportSlope := (-9153159232474701 / 10000000000000000 : ℚ)
  oldCenter := (1424442974020341 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1642
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719]
}

noncomputable def cell_12283 : Cell := { cellDefaults with
  domain := ⟨(141550000000000009 / 200000000000000000 : ℚ), (283150000000000023 / 400000000000000000 : ℚ)⟩
  r := (25213790417683 / 50000000000000 : ℚ)
  w := (6753478084189 / 5000000000000 : ℚ)
  center := (566250000000000041 / 800000000000000000 : ℚ)
  supportValue := (2847742433799947 / 10000000000000000 : ℚ)
  supportSlope := (-4571537004411473 / 5000000000000000 : ℚ)
  oldCenter := (2847742433799947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1642
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719]
}

noncomputable def cell_12284 : Cell := { cellDefaults with
  domain := ⟨(283150000000000023 / 400000000000000000 : ℚ), (70800000000000007 / 100000000000000000 : ℚ)⟩
  r := (25213790417683 / 50000000000000 : ℚ)
  w := (6753478084189 / 5000000000000 : ℚ)
  center := (566350000000000051 / 800000000000000000 : ℚ)
  supportValue := (1423300088748749 / 5000000000000000 : ℚ)
  supportSlope := (-2283258038288987 / 2500000000000000 : ℚ)
  oldCenter := (1423300088748749 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1642
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719]
}

noncomputable def cell_12285 : Cell := { cellDefaults with
  domain := ⟨(70800000000000007 / 100000000000000000 : ℚ), (283250000000000023 / 400000000000000000 : ℚ)⟩
  r := (1260151253949 / 2500000000000 : ℚ)
  w := (6752876577681 / 5000000000000 : ℚ)
  center := (566450000000000051 / 800000000000000000 : ℚ)
  supportValue := (2847664728393197 / 10000000000000000 : ℚ)
  supportSlope := (-9138647815404103 / 10000000000000000 : ℚ)
  oldCenter := (2847664728393197 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1643
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719]
}

noncomputable def cell_12286 : Cell := { cellDefaults with
  domain := ⟨(283250000000000023 / 400000000000000000 : ℚ), (141650000000000009 / 200000000000000000 : ℚ)⟩
  r := (1260151253949 / 2500000000000 : ℚ)
  w := (6752876577681 / 5000000000000 : ℚ)
  center := (566550000000000041 / 800000000000000000 : ℚ)
  supportValue := (1423261512329549 / 5000000000000000 : ℚ)
  supportSlope := (-912861723739147 / 1000000000000000 : ℚ)
  oldCenter := (1423261512329549 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1643
  oldLo := (28450000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_719]
}

noncomputable def cell_12287 : Cell := { cellDefaults with
  domain := ⟨(141650000000000009 / 200000000000000000 : ℚ), (283350000000000013 / 400000000000000000 : ℚ)⟩
  r := (1260151253949 / 2500000000000 : ℚ)
  w := (6752876577681 / 5000000000000 : ℚ)
  center := (566650000000000031 / 800000000000000000 : ℚ)
  supportValue := (2845384563822489 / 10000000000000000 : ℚ)
  supportSlope := (-1824287884343261 / 2000000000000000 : ℚ)
  oldCenter := (2845384563822489 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1643
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718, piece_719]
}

noncomputable def cell_12288 : Cell := { cellDefaults with
  domain := ⟨(283350000000000013 / 400000000000000000 : ℚ), (35425000000000001 / 50000000000000000 : ℚ)⟩
  r := (1260151253949 / 2500000000000 : ℚ)
  w := (6752876577681 / 5000000000000 : ℚ)
  center := (566750000000000021 / 800000000000000000 : ℚ)
  supportValue := (14221209765584017 / 50000000000000000 : ℚ)
  supportSlope := (-4562810864823697 / 5000000000000000 : ℚ)
  oldCenter := (14221209765584017 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1643
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12289 : Cell := { cellDefaults with
  domain := ⟨(35425000000000001 / 50000000000000000 : ℚ), (283450000000000013 / 400000000000000000 : ℚ)⟩
  r := (25192271196217 / 50000000000000 : ℚ)
  w := (6752277275677 / 5000000000000 : ℚ)
  center := (566850000000000021 / 800000000000000000 : ℚ)
  supportValue := (1138122666826751 / 4000000000000000 : ℚ)
  supportSlope := (-4559094050393219 / 5000000000000000 : ℚ)
  oldCenter := (1138122666826751 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1644
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718, piece_719]
}

noncomputable def cell_12290 : Cell := { cellDefaults with
  domain := ⟨(283450000000000013 / 400000000000000000 : ℚ), (141750000000000009 / 200000000000000000 : ℚ)⟩
  r := (25192271196217 / 50000000000000 : ℚ)
  w := (6752277275677 / 5000000000000 : ℚ)
  center := (566950000000000031 / 800000000000000000 : ℚ)
  supportValue := (5688328926422127 / 20000000000000000 : ℚ)
  supportSlope := (-4560602779397171 / 5000000000000000 : ℚ)
  oldCenter := (5688328926422127 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1644
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12291 : Cell := { cellDefaults with
  domain := ⟨(141750000000000009 / 200000000000000000 : ℚ), (283550000000000023 / 400000000000000000 : ℚ)⟩
  r := (25192271196217 / 50000000000000 : ℚ)
  w := (6752277275677 / 5000000000000 : ℚ)
  center := (567050000000000041 / 800000000000000000 : ℚ)
  supportValue := (28430249403420693 / 100000000000000000 : ℚ)
  supportSlope := (-4555582851794681 / 5000000000000000 : ℚ)
  oldCenter := (28430249403420693 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1644
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12292 : Cell := { cellDefaults with
  domain := ⟨(283550000000000023 / 400000000000000000 : ℚ), (70900000000000007 / 100000000000000000 : ℚ)⟩
  r := (25192271196217 / 50000000000000 : ℚ)
  w := (6752277275677 / 5000000000000 : ℚ)
  center := (567150000000000051 / 800000000000000000 : ℚ)
  supportValue := (568377333950569 / 2000000000000000 : ℚ)
  supportSlope := (-18202338032081 / 20000000000000 : ℚ)
  oldCenter := (568377333950569 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1644
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12293 : Cell := { cellDefaults with
  domain := ⟨(70900000000000007 / 100000000000000000 : ℚ), (283650000000000023 / 400000000000000000 : ℚ)⟩
  r := (50363059474349 / 100000000000000 : ℚ)
  w := (13503367925569 / 10000000000000 : ℚ)
  center := (567250000000000051 / 800000000000000000 : ℚ)
  supportValue := (1421472610514643 / 5000000000000000 : ℚ)
  supportSlope := (-113834285660597 / 125000000000000 : ℚ)
  oldCenter := (1421472610514643 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1645
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12294 : Cell := { cellDefaults with
  domain := ⟨(283650000000000023 / 400000000000000000 : ℚ), (141850000000000009 / 200000000000000000 : ℚ)⟩
  r := (50363059474349 / 100000000000000 : ℚ)
  w := (13503367925569 / 10000000000000 : ℚ)
  center := (567350000000000041 / 800000000000000000 : ℚ)
  supportValue := (710451875648887 / 2500000000000000 : ℚ)
  supportSlope := (-9096757363461293 / 10000000000000000 : ℚ)
  oldCenter := (710451875648887 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1645
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12295 : Cell := { cellDefaults with
  domain := ⟨(141850000000000009 / 200000000000000000 : ℚ), (283750000000000013 / 400000000000000000 : ℚ)⟩
  r := (50363059474349 / 100000000000000 : ℚ)
  w := (13503367925569 / 10000000000000 : ℚ)
  center := (567450000000000031 / 800000000000000000 : ℚ)
  supportValue := (28406710296684523 / 100000000000000000 : ℚ)
  supportSlope := (-36347258723847 / 40000000000000 : ℚ)
  oldCenter := (28406710296684523 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1645
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12296 : Cell := { cellDefaults with
  domain := ⟨(283750000000000013 / 400000000000000000 : ℚ), (35475000000000001 / 50000000000000000 : ℚ)⟩
  r := (50363059474349 / 100000000000000 : ℚ)
  w := (13503367925569 / 10000000000000 : ℚ)
  center := (567550000000000021 / 800000000000000000 : ℚ)
  supportValue := (141976845805321 / 500000000000000 : ℚ)
  supportSlope := (-284134485077387 / 312500000000000 : ℚ)
  oldCenter := (141976845805321 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1645
  oldLo := (28350000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_717, piece_718]
}

noncomputable def cell_12297 : Cell := { cellDefaults with
  domain := ⟨(35475000000000001 / 50000000000000000 : ℚ), (141925000000000007 / 200000000000000000 : ℚ)⟩
  r := (50341601997193 / 100000000000000 : ℚ)
  w := (13502190530537 / 10000000000000 : ℚ)
  center := (283825000000000011 / 400000000000000000 : ℚ)
  supportValue := (7101475132048929 / 25000000000000000 : ℚ)
  supportSlope := (-9082399720544719 / 10000000000000000 : ℚ)
  oldCenter := (7101475132048929 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1646
  oldLo := (28400000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_718]
}

noncomputable def cell_12298 : Cell := { cellDefaults with
  domain := ⟨(141925000000000007 / 200000000000000000 : ℚ), (14195000000000001 / 20000000000000000 : ℚ)⟩
  r := (50341601997193 / 100000000000000 : ℚ)
  w := (13502190530537 / 10000000000000 : ℚ)
  center := (283875000000000017 / 400000000000000000 : ℚ)
  supportValue := (2839456340479163 / 10000000000000000 : ℚ)
  supportSlope := (-908908980263303 / 1000000000000000 : ℚ)
  oldCenter := (2839456340479163 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1646
  oldLo := (28350000000000003 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_717, piece_718]
}

noncomputable def cell_12299 : Cell := { cellDefaults with
  domain := ⟨(14195000000000001 / 20000000000000000 : ℚ), (141975000000000013 / 200000000000000000 : ℚ)⟩
  r := (50341601997193 / 100000000000000 : ℚ)
  w := (13502190530537 / 10000000000000 : ℚ)
  center := (283925000000000023 / 400000000000000000 : ℚ)
  supportValue := (14191594008499503 / 50000000000000000 : ℚ)
  supportSlope := (-9079409279032523 / 10000000000000000 : ℚ)
  oldCenter := (14191594008499503 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1646
  oldLo := (28350000000000003 / 100000000000000000 : ℚ)
  oldHi := (28400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_717]
}

theorem check_12250 : cell_12250.check = true := by
  decide +kernel

theorem check_12251 : cell_12251.check = true := by
  decide +kernel

theorem check_12252 : cell_12252.check = true := by
  decide +kernel

theorem check_12253 : cell_12253.check = true := by
  decide +kernel

theorem check_12254 : cell_12254.check = true := by
  decide +kernel

theorem check_12255 : cell_12255.check = true := by
  decide +kernel

theorem check_12256 : cell_12256.check = true := by
  decide +kernel

theorem check_12257 : cell_12257.check = true := by
  decide +kernel

theorem check_12258 : cell_12258.check = true := by
  decide +kernel

theorem check_12259 : cell_12259.check = true := by
  decide +kernel

theorem check_12260 : cell_12260.check = true := by
  decide +kernel

theorem check_12261 : cell_12261.check = true := by
  decide +kernel

theorem check_12262 : cell_12262.check = true := by
  decide +kernel

theorem check_12263 : cell_12263.check = true := by
  decide +kernel

theorem check_12264 : cell_12264.check = true := by
  decide +kernel

theorem check_12265 : cell_12265.check = true := by
  decide +kernel

theorem check_12266 : cell_12266.check = true := by
  decide +kernel

theorem check_12267 : cell_12267.check = true := by
  decide +kernel

theorem check_12268 : cell_12268.check = true := by
  decide +kernel

theorem check_12269 : cell_12269.check = true := by
  decide +kernel

theorem check_12270 : cell_12270.check = true := by
  decide +kernel

theorem check_12271 : cell_12271.check = true := by
  decide +kernel

theorem check_12272 : cell_12272.check = true := by
  decide +kernel

theorem check_12273 : cell_12273.check = true := by
  decide +kernel

theorem check_12274 : cell_12274.check = true := by
  decide +kernel

theorem check_12275 : cell_12275.check = true := by
  decide +kernel

theorem check_12276 : cell_12276.check = true := by
  decide +kernel

theorem check_12277 : cell_12277.check = true := by
  decide +kernel

theorem check_12278 : cell_12278.check = true := by
  decide +kernel

theorem check_12279 : cell_12279.check = true := by
  decide +kernel

theorem check_12280 : cell_12280.check = true := by
  decide +kernel

theorem check_12281 : cell_12281.check = true := by
  decide +kernel

theorem check_12282 : cell_12282.check = true := by
  decide +kernel

theorem check_12283 : cell_12283.check = true := by
  decide +kernel

theorem check_12284 : cell_12284.check = true := by
  decide +kernel

theorem check_12285 : cell_12285.check = true := by
  decide +kernel

theorem check_12286 : cell_12286.check = true := by
  decide +kernel

theorem check_12287 : cell_12287.check = true := by
  decide +kernel

theorem check_12288 : cell_12288.check = true := by
  decide +kernel

theorem check_12289 : cell_12289.check = true := by
  decide +kernel

theorem check_12290 : cell_12290.check = true := by
  decide +kernel

theorem check_12291 : cell_12291.check = true := by
  decide +kernel

theorem check_12292 : cell_12292.check = true := by
  decide +kernel

theorem check_12293 : cell_12293.check = true := by
  decide +kernel

theorem check_12294 : cell_12294.check = true := by
  decide +kernel

theorem check_12295 : cell_12295.check = true := by
  decide +kernel

theorem check_12296 : cell_12296.check = true := by
  decide +kernel

theorem check_12297 : cell_12297.check = true := by
  decide +kernel

theorem check_12298 : cell_12298.check = true := by
  decide +kernel

theorem check_12299 : cell_12299.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12250, cell_12251, cell_12252, cell_12253, cell_12254, cell_12255, cell_12256, cell_12257, cell_12258, cell_12259, cell_12260, cell_12261, cell_12262, cell_12263, cell_12264, cell_12265, cell_12266, cell_12267, cell_12268, cell_12269, cell_12270, cell_12271, cell_12272, cell_12273, cell_12274, cell_12275, cell_12276, cell_12277, cell_12278, cell_12279, cell_12280, cell_12281, cell_12282, cell_12283, cell_12284, cell_12285, cell_12286, cell_12287, cell_12288, cell_12289, cell_12290, cell_12291, cell_12292, cell_12293, cell_12294, cell_12295, cell_12296, cell_12297, cell_12298, cell_12299]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12250, check_12251, check_12252, check_12253, check_12254, check_12255, check_12256, check_12257, check_12258, check_12259, check_12260, check_12261, check_12262, check_12263, check_12264, check_12265, check_12266, check_12267, check_12268, check_12269, check_12270, check_12271, check_12272, check_12273, check_12274, check_12275, check_12276, check_12277, check_12278, check_12279, check_12280, check_12281, check_12282, check_12283, check_12284, check_12285, check_12286, check_12287, check_12288, check_12289, check_12290, check_12291, check_12292, check_12293, check_12294, check_12295, check_12296, check_12297, check_12298, check_12299, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0245

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0245
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0245
open AnalyticBounds.ExpressionCertificate

theorem linked_12250 : Linked cell_12250 pieces := by
  refine ⟨piece_1633,piece_1633_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12250,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_724_mem

theorem linked_12251 : Linked cell_12251 pieces := by
  refine ⟨piece_1633,piece_1633_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12251,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_724_mem

theorem linked_12252 : Linked cell_12252 pieces := by
  refine ⟨piece_1633,piece_1633_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12252,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_722_mem
    · exact piece_723_mem
    · exact piece_724_mem

theorem linked_12253 : Linked cell_12253 pieces := by
  refine ⟨piece_1634,piece_1634_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12253,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_724_mem

theorem linked_12254 : Linked cell_12254 pieces := by
  refine ⟨piece_1634,piece_1634_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12254,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_722_mem
    · exact piece_723_mem
    · exact piece_724_mem

theorem linked_12255 : Linked cell_12255 pieces := by
  refine ⟨piece_1634,piece_1634_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12255,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_722_mem

theorem linked_12256 : Linked cell_12256 pieces := by
  refine ⟨piece_1634,piece_1634_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12256,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_722_mem

theorem linked_12257 : Linked cell_12257 pieces := by
  refine ⟨piece_1635,piece_1635_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12257,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_722_mem

theorem linked_12258 : Linked cell_12258 pieces := by
  refine ⟨piece_1635,piece_1635_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12258,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_722_mem

theorem linked_12259 : Linked cell_12259 pieces := by
  refine ⟨piece_1635,piece_1635_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12259,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_722_mem

theorem linked_12260 : Linked cell_12260 pieces := by
  refine ⟨piece_1635,piece_1635_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12260,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_722_mem

theorem linked_12261 : Linked cell_12261 pieces := by
  refine ⟨piece_1636,piece_1636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12261,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_722_mem

theorem linked_12262 : Linked cell_12262 pieces := by
  refine ⟨piece_1636,piece_1636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12262,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_722_mem

theorem linked_12263 : Linked cell_12263 pieces := by
  refine ⟨piece_1636,piece_1636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12263,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_721_mem
    · exact piece_722_mem

theorem linked_12264 : Linked cell_12264 pieces := by
  refine ⟨piece_1636,piece_1636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12264,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_721_mem

theorem linked_12265 : Linked cell_12265 pieces := by
  refine ⟨piece_1637,piece_1637_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12265,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_721_mem
    · exact piece_722_mem

theorem linked_12266 : Linked cell_12266 pieces := by
  refine ⟨piece_1637,piece_1637_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12266,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_721_mem

theorem linked_12267 : Linked cell_12267 pieces := by
  refine ⟨piece_1637,piece_1637_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12267,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_721_mem

theorem linked_12268 : Linked cell_12268 pieces := by
  refine ⟨piece_1637,piece_1637_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12268,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_721_mem

theorem linked_12269 : Linked cell_12269 pieces := by
  refine ⟨piece_1638,piece_1638_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12269,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_721_mem

theorem linked_12270 : Linked cell_12270 pieces := by
  refine ⟨piece_1638,piece_1638_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12270,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_721_mem

theorem linked_12271 : Linked cell_12271 pieces := by
  refine ⟨piece_1638,piece_1638_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12271,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_720_mem
    · exact piece_721_mem

theorem linked_12272 : Linked cell_12272 pieces := by
  refine ⟨piece_1638,piece_1638_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12272,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_720_mem

theorem linked_12273 : Linked cell_12273 pieces := by
  refine ⟨piece_1639,piece_1639_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12273,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_720_mem
    · exact piece_721_mem

theorem linked_12274 : Linked cell_12274 pieces := by
  refine ⟨piece_1639,piece_1639_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12274,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_720_mem

theorem linked_12275 : Linked cell_12275 pieces := by
  refine ⟨piece_1639,piece_1639_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12275,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_720_mem

theorem linked_12276 : Linked cell_12276 pieces := by
  refine ⟨piece_1640,piece_1640_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12276,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_720_mem

theorem linked_12277 : Linked cell_12277 pieces := by
  refine ⟨piece_1641,piece_1641_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12277,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_720_mem

theorem linked_12278 : Linked cell_12278 pieces := by
  refine ⟨piece_1641,piece_1641_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12278,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_720_mem

theorem linked_12279 : Linked cell_12279 pieces := by
  refine ⟨piece_1641,piece_1641_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12279,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_719_mem
    · exact piece_720_mem

theorem linked_12280 : Linked cell_12280 pieces := by
  refine ⟨piece_1641,piece_1641_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12280,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_719_mem

theorem linked_12281 : Linked cell_12281 pieces := by
  refine ⟨piece_1642,piece_1642_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12281,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_719_mem
    · exact piece_720_mem

theorem linked_12282 : Linked cell_12282 pieces := by
  refine ⟨piece_1642,piece_1642_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12282,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_719_mem

theorem linked_12283 : Linked cell_12283 pieces := by
  refine ⟨piece_1642,piece_1642_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12283,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_719_mem

theorem linked_12284 : Linked cell_12284 pieces := by
  refine ⟨piece_1642,piece_1642_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12284,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_719_mem

theorem linked_12285 : Linked cell_12285 pieces := by
  refine ⟨piece_1643,piece_1643_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12285,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_719_mem

theorem linked_12286 : Linked cell_12286 pieces := by
  refine ⟨piece_1643,piece_1643_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12286,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_719_mem

theorem linked_12287 : Linked cell_12287 pieces := by
  refine ⟨piece_1643,piece_1643_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12287,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_718_mem
    · exact piece_719_mem

theorem linked_12288 : Linked cell_12288 pieces := by
  refine ⟨piece_1643,piece_1643_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12288,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_718_mem

theorem linked_12289 : Linked cell_12289 pieces := by
  refine ⟨piece_1644,piece_1644_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12289,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_718_mem
    · exact piece_719_mem

theorem linked_12290 : Linked cell_12290 pieces := by
  refine ⟨piece_1644,piece_1644_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12290,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_718_mem

theorem linked_12291 : Linked cell_12291 pieces := by
  refine ⟨piece_1644,piece_1644_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12291,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_718_mem

theorem linked_12292 : Linked cell_12292 pieces := by
  refine ⟨piece_1644,piece_1644_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12292,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_718_mem

theorem linked_12293 : Linked cell_12293 pieces := by
  refine ⟨piece_1645,piece_1645_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12293,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_718_mem

theorem linked_12294 : Linked cell_12294 pieces := by
  refine ⟨piece_1645,piece_1645_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12294,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_718_mem

theorem linked_12295 : Linked cell_12295 pieces := by
  refine ⟨piece_1645,piece_1645_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12295,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_718_mem

theorem linked_12296 : Linked cell_12296 pieces := by
  refine ⟨piece_1645,piece_1645_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12296,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_717_mem
    · exact piece_718_mem

theorem linked_12297 : Linked cell_12297 pieces := by
  refine ⟨piece_1646,piece_1646_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12297,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_718_mem

theorem linked_12298 : Linked cell_12298 pieces := by
  refine ⟨piece_1646,piece_1646_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12298,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_717_mem
    · exact piece_718_mem

theorem linked_12299 : Linked cell_12299 pieces := by
  refine ⟨piece_1646,piece_1646_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_12299,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_717_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0245.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0245.cells,List.forall_mem_cons]
  exact ⟨linked_12250, linked_12251, linked_12252, linked_12253, linked_12254, linked_12255, linked_12256, linked_12257, linked_12258, linked_12259, linked_12260, linked_12261, linked_12262, linked_12263, linked_12264, linked_12265, linked_12266, linked_12267, linked_12268, linked_12269, linked_12270, linked_12271, linked_12272, linked_12273, linked_12274, linked_12275, linked_12276, linked_12277, linked_12278, linked_12279, linked_12280, linked_12281, linked_12282, linked_12283, linked_12284, linked_12285, linked_12286, linked_12287, linked_12288, linked_12289, linked_12290, linked_12291, linked_12292, linked_12293, linked_12294, linked_12295, linked_12296, linked_12297, linked_12298, linked_12299, by simp⟩

theorem covered : covers (28145000000000001 / 40000000000000000 : ℚ) (141975000000000013 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0245.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0245
