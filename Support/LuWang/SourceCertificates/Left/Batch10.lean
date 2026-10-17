import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData
import Support.LuWang.SourceCertificateAssembly

/-! Independent left-certificate batch: original chunks 0264–0275. -/

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0264
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(64770000000000001 / 80000000000000000 : ℚ), (32390000000000001 / 40000000000000000 : ℚ)⟩
  branch := .left
  r := (23192091801529 / 50000000000000 : ℚ)
  w := (13359481110197 / 10000000000000 : ℚ)
  center := (129550000000000003 / 160000000000000000 : ℚ)
  supportValue := (24241640848476823 / 100000000000000000 : ℚ)
  supportSlope := (-4425515937837689 / 5000000000000000 : ℚ)
  oldCenter := (24241640848476823 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1865
  oldLo := (24149999999999999 / 100000000000000000 : ℚ)
  oldHi := (24199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_625]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13200 : Cell := { cellDefaults with
  r := (11615576856203 / 25000000000000 : ℚ)
  w := (13375729020663 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1864
  oldLo := (2422905027932961 / 10000000000000000 : ℚ)
  oldHi := (24249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_627]
}

noncomputable def cell_13201 : Cell := { cellDefaults with
  domain := ⟨(32390000000000001 / 40000000000000000 : ℚ), (64790000000000003 / 80000000000000000 : ℚ)⟩
  r := (11615576856203 / 25000000000000 : ℚ)
  w := (13375729020663 / 10000000000000 : ℚ)
  center := (25914000000000001 / 32000000000000000 : ℚ)
  supportValue := (12115290342357299 / 50000000000000000 : ℚ)
  supportSlope := (-8841865594106051 / 10000000000000000 : ℚ)
  oldCenter := (12115290342357299 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1864
  oldLo := (24199999999999999 / 100000000000000000 : ℚ)
  oldHi := (24249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_626, piece_627]
}

noncomputable def cell_13202 : Cell := { cellDefaults with
  domain := ⟨(64790000000000003 / 80000000000000000 : ℚ), (16200000000000001 / 20000000000000000 : ℚ)⟩
  r := (11615576856203 / 25000000000000 : ℚ)
  w := (13375729020663 / 10000000000000 : ℚ)
  center := (129590000000000007 / 160000000000000000 : ℚ)
  supportValue := (242195371159961 / 1000000000000000 : ℚ)
  supportSlope := (-4415905751768537 / 5000000000000000 : ℚ)
  oldCenter := (242195371159961 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1864
  oldLo := (24199999999999999 / 100000000000000000 : ℚ)
  oldHi := (2422905027932961 / 10000000000000000 : ℚ)
  oldPieces := [piece_626]
}

noncomputable def cell_13203 : Cell := { cellDefaults with
  domain := ⟨(16200000000000001 / 20000000000000000 : ℚ), (64810000000000003 / 80000000000000000 : ℚ)⟩
  r := (46442753440443 / 100000000000000 : ℚ)
  w := (6685834078817 / 5000000000000 : ℚ)
  center := (129610000000000007 / 160000000000000000 : ℚ)
  supportValue := (1514876401633131 / 6250000000000000 : ℚ)
  supportSlope := (-2211292216673043 / 2500000000000000 : ℚ)
  oldCenter := (1514876401633131 / 6250000000000000 : ℚ)
  oldLo := (2422905027932961 / 10000000000000000 : ℚ)
  oldHi := (24249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_627]
}

noncomputable def cell_13204 : Cell := { cellDefaults with
  domain := ⟨(64810000000000003 / 80000000000000000 : ℚ), (32410000000000001 / 40000000000000000 : ℚ)⟩
  r := (46442753440443 / 100000000000000 : ℚ)
  w := (6685834078817 / 5000000000000 : ℚ)
  center := (25926000000000001 / 32000000000000000 : ℚ)
  supportValue := (484539436532671 / 2000000000000000 : ℚ)
  supportSlope := (-4416628079238369 / 5000000000000000 : ℚ)
  oldCenter := (484539436532671 / 2000000000000000 : ℚ)
  oldLo := (24199999999999999 / 100000000000000000 : ℚ)
  oldHi := (24249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_626, piece_627]
}

noncomputable def cell_13205 : Cell := { cellDefaults with
  domain := ⟨(32410000000000001 / 40000000000000000 : ℚ), (64830000000000001 / 80000000000000000 : ℚ)⟩
  r := (46442753440443 / 100000000000000 : ℚ)
  w := (6685834078817 / 5000000000000 : ℚ)
  center := (129650000000000003 / 160000000000000000 : ℚ)
  supportValue := (24215936274791447 / 100000000000000000 : ℚ)
  supportSlope := (-1765352413302067 / 2000000000000000 : ℚ)
  oldCenter := (24215936274791447 / 100000000000000000 : ℚ)
  oldLo := (24199999999999999 / 100000000000000000 : ℚ)
  oldHi := (2422905027932961 / 10000000000000000 : ℚ)
  oldPieces := [piece_626]
}

noncomputable def cell_13206 : Cell := { cellDefaults with
  domain := ⟨(64830000000000001 / 80000000000000000 : ℚ), (1621 / 2000 : ℚ)⟩
  r := (46442753440443 / 100000000000000 : ℚ)
  w := (6685834078817 / 5000000000000 : ℚ)
  center := (129670000000000001 / 160000000000000000 : ℚ)
  supportValue := (4840980983064171 / 20000000000000000 : ℚ)
  supportSlope := (-441174997872373 / 500000000000000 : ℚ)
  oldCenter := (4840980983064171 / 20000000000000000 : ℚ)
  oldHi := (2422905027932961 / 10000000000000000 : ℚ)
  oldPieces := [piece_625, piece_626]
}

noncomputable def cell_13207 : Cell := { cellDefaults with
  domain := ⟨(1621 / 2000 : ℚ), (64850000000000001 / 80000000000000000 : ℚ)⟩
  r := (23211607248319 / 50000000000000 : ℚ)
  w := (1336760610627 / 1000000000000 : ℚ)
  center := (129690000000000001 / 160000000000000000 : ℚ)
  supportValue := (24223374588486393 / 100000000000000000 : ℚ)
  supportSlope := (-882507137427791 / 1000000000000000 : ℚ)
  oldCenter := (24223374588486393 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1866
  oldLo := (24199999999999999 / 100000000000000000 : ℚ)
  oldHi := (2422905027932961 / 10000000000000000 : ℚ)
  oldPieces := [piece_626]
}

noncomputable def cell_13208 : Cell := { cellDefaults with
  domain := ⟨(64850000000000001 / 80000000000000000 : ℚ), (32430000000000001 / 40000000000000000 : ℚ)⟩
  r := (23211607248319 / 50000000000000 : ℚ)
  w := (1336760610627 / 1000000000000 : ℚ)
  center := (129710000000000003 / 160000000000000000 : ℚ)
  supportValue := (4842469067920293 / 20000000000000000 : ℚ)
  supportSlope := (-8821721168747139 / 10000000000000000 : ℚ)
  oldCenter := (4842469067920293 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1866
  oldLo := (24199999999999999 / 100000000000000000 : ℚ)
  oldHi := (2422905027932961 / 10000000000000000 : ℚ)
  oldPieces := [piece_626]
}

noncomputable def cell_13209 : Cell := { cellDefaults with
  domain := ⟨(32430000000000001 / 40000000000000000 : ℚ), (64870000000000003 / 80000000000000000 : ℚ)⟩
  r := (23211607248319 / 50000000000000 : ℚ)
  w := (1336760610627 / 1000000000000 : ℚ)
  center := (25946000000000001 / 32000000000000000 : ℚ)
  supportValue := (12100660139710269 / 50000000000000000 : ℚ)
  supportSlope := (-8818999259129441 / 10000000000000000 : ℚ)
  oldCenter := (12100660139710269 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1866
  oldHi := (2422905027932961 / 10000000000000000 : ℚ)
  oldPieces := [piece_625, piece_626]
}

noncomputable def cell_13210 : Cell := { cellDefaults with
  domain := ⟨(64870000000000003 / 80000000000000000 : ℚ), (16220000000000001 / 20000000000000000 : ℚ)⟩
  r := (23211607248319 / 50000000000000 : ℚ)
  w := (1336760610627 / 1000000000000 : ℚ)
  center := (129750000000000007 / 160000000000000000 : ℚ)
  supportValue := (12095148795530773 / 50000000000000000 : ℚ)
  supportSlope := (-4408332429354903 / 5000000000000000 : ℚ)
  oldCenter := (12095148795530773 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1866
  oldPieces := [piece_625]
}

noncomputable def cell_13211 : Cell := { cellDefaults with
  domain := ⟨(16220000000000001 / 20000000000000000 : ℚ), (64890000000000003 / 80000000000000000 : ℚ)⟩
  r := (46403691471407 / 100000000000000 : ℚ)
  w := (1670443081937 / 1250000000000 : ℚ)
  center := (129770000000000007 / 160000000000000000 : ℚ)
  supportValue := (242087600039053 / 1000000000000000 : ℚ)
  supportSlope := (-8816685310365273 / 10000000000000000 : ℚ)
  oldCenter := (242087600039053 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1867
  oldLo := (24199999999999999 / 100000000000000000 : ℚ)
  oldHi := (2422905027932961 / 10000000000000000 : ℚ)
  oldPieces := [piece_626]
}

noncomputable def cell_13212 : Cell := { cellDefaults with
  domain := ⟨(64890000000000003 / 80000000000000000 : ℚ), (32450000000000001 / 40000000000000000 : ℚ)⟩
  r := (46403691471407 / 100000000000000 : ℚ)
  w := (1670443081937 / 1250000000000 : ℚ)
  center := (25958000000000001 / 32000000000000000 : ℚ)
  supportValue := (24197740811610577 / 100000000000000000 : ℚ)
  supportSlope := (-4407251037282119 / 5000000000000000 : ℚ)
  oldCenter := (24197740811610577 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1867
  oldHi := (2422905027932961 / 10000000000000000 : ℚ)
  oldPieces := [piece_625, piece_626]
}

noncomputable def cell_13213 : Cell := { cellDefaults with
  domain := ⟨(32450000000000001 / 40000000000000000 : ℚ), (64910000000000001 / 80000000000000000 : ℚ)⟩
  r := (46403691471407 / 100000000000000 : ℚ)
  w := (1670443081937 / 1250000000000 : ℚ)
  center := (129810000000000003 / 160000000000000000 : ℚ)
  supportValue := (2418672416990947 / 10000000000000000 : ℚ)
  supportSlope := (-8811631826462821 / 10000000000000000 : ℚ)
  oldCenter := (2418672416990947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1867
  oldPieces := [piece_625]
}

noncomputable def cell_13214 : Cell := { cellDefaults with
  domain := ⟨(64910000000000001 / 80000000000000000 : ℚ), (1623 / 2000 : ℚ)⟩
  r := (46403691471407 / 100000000000000 : ℚ)
  w := (1670443081937 / 1250000000000 : ℚ)
  center := (129830000000000001 / 160000000000000000 : ℚ)
  supportValue := (24175711725897087 / 100000000000000000 : ℚ)
  supportSlope := (-1761654587835791 / 2000000000000000 : ℚ)
  oldCenter := (24175711725897087 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1867
  oldPieces := [piece_625]
}

noncomputable def cell_13215 : Cell := { cellDefaults with
  domain := ⟨(1623 / 2000 : ℚ), (16232276536312849 / 20000000000000000 : ℚ)⟩
  center := (32462276536312849 / 40000000000000000 : ℚ)
  supportValue := (24194664644955483 / 100000000000000000 : ℚ)
  supportSlope := (-2202527350277771 / 2500000000000000 : ℚ)
  oldCenter := (24194664644955483 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1868
  oldPieces := [piece_625]
}

noncomputable def cell_13216 : Cell := { cellDefaults with
  domain := ⟨(16232276536312849 / 20000000000000000 : ℚ), (8117276536312849 / 10000000000000000 : ℚ)⟩
  center := (32466829608938547 / 40000000000000000 : ℚ)
  supportValue := (23617810657429 / 97656250000000 : ℚ)
  supportSlope := (-440352745067803 / 500000000000000 : ℚ)
  oldCenter := (23617810657429 / 97656250000000 : ℚ)
  newCoefficients := coefficients_1868
  oldPieces := [piece_625]
}

noncomputable def cell_13217 : Cell := { cellDefaults with
  domain := ⟨(8117276536312849 / 10000000000000000 : ℚ), (16236829608938547 / 20000000000000000 : ℚ)⟩
  center := (6494276536312849 / 8000000000000000 : ℚ)
  supportValue := (24174615058996043 / 100000000000000000 : ℚ)
  supportSlope := (-2200999794971877 / 2500000000000000 : ℚ)
  oldCenter := (24174615058996043 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1868
  oldPieces := [piece_625]
}

noncomputable def cell_13218 : Cell := { cellDefaults with
  domain := ⟨(16236829608938547 / 20000000000000000 : ℚ), (4059776536312849 / 5000000000000000 : ℚ)⟩
  center := (32475935754189943 / 40000000000000000 : ℚ)
  supportValue := (2416459548370931 / 10000000000000000 : ℚ)
  supportSlope := (-8800942242152823 / 10000000000000000 : ℚ)
  oldCenter := (2416459548370931 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1868
  oldPieces := [piece_625]
}

noncomputable def cell_13219 : Cell := { cellDefaults with
  domain := ⟨(4059776536312849 / 5000000000000000 : ℚ), (40600000000000003 / 50000000000000000 : ℚ)⟩
  center := (81197765363128493 / 100000000000000000 : ℚ)
  supportValue := (966304635416511 / 4000000000000000 : ℚ)
  supportSlope := (-8798818736037913 / 10000000000000000 : ℚ)
  oldCenter := (966304635416511 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1869
  oldPieces := [piece_625]
}

noncomputable def cell_13220 : Cell := { cellDefaults with
  domain := ⟨(40600000000000003 / 50000000000000000 : ℚ), (162425000000000009 / 200000000000000000 : ℚ)⟩
  r := (46364691715489 / 100000000000000 : ℚ)
  w := (1335542039167 / 1000000000000 : ℚ)
  center := (324825000000000021 / 400000000000000000 : ℚ)
  supportValue := (24179601412476703 / 100000000000000000 : ℚ)
  supportSlope := (-4400793969901423 / 5000000000000000 : ℚ)
  oldCenter := (24179601412476703 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1870
  oldPieces := [piece_625]
}

noncomputable def cell_13221 : Cell := { cellDefaults with
  domain := ⟨(162425000000000009 / 200000000000000000 : ℚ), (81225000000000003 / 100000000000000000 : ℚ)⟩
  r := (46364691715489 / 100000000000000 : ℚ)
  w := (1335542039167 / 1000000000000 : ℚ)
  center := (64975000000000003 / 80000000000000000 : ℚ)
  supportValue := (12084300759909057 / 50000000000000000 : ℚ)
  supportSlope := (-4399117333922481 / 5000000000000000 : ℚ)
  oldCenter := (12084300759909057 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1870
  oldPieces := [piece_625]
}

noncomputable def cell_13222 : Cell := { cellDefaults with
  domain := ⟨(81225000000000003 / 100000000000000000 : ℚ), (162475000000000003 / 200000000000000000 : ℚ)⟩
  r := (46364691715489 / 100000000000000 : ℚ)
  w := (1335542039167 / 1000000000000 : ℚ)
  center := (324925000000000009 / 400000000000000000 : ℚ)
  supportValue := (301970072745811 / 1250000000000000 : ℚ)
  supportSlope := (-2198719983771677 / 2500000000000000 : ℚ)
  oldCenter := (301970072745811 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1870
  oldPieces := [piece_625]
}

noncomputable def cell_13223 : Cell := { cellDefaults with
  domain := ⟨(162475000000000003 / 200000000000000000 : ℚ), (13 / 16 : ℚ)⟩
  r := (46364691715489 / 100000000000000 : ℚ)
  w := (1335542039167 / 1000000000000 : ℚ)
  center := (324975000000000003 / 400000000000000000 : ℚ)
  supportValue := (24146613676632017 / 100000000000000000 : ℚ)
  supportSlope := (-8792857661733489 / 10000000000000000 : ℚ)
  oldCenter := (24146613676632017 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1870
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624, piece_625]
}

noncomputable def cell_13224 : Cell := { cellDefaults with
  domain := ⟨(13 / 16 : ℚ), (162525000000000003 / 200000000000000000 : ℚ)⟩
  r := (46345214464759 / 100000000000000 : ℚ)
  w := (1668919740087 / 1250000000000 : ℚ)
  center := (325025000000000003 / 400000000000000000 : ℚ)
  supportValue := (1208252916849141 / 5000000000000000 : ℚ)
  supportSlope := (-175864404282301 / 200000000000000 : ℚ)
  oldCenter := (1208252916849141 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1871
  oldPieces := [piece_625]
}

noncomputable def cell_13225 : Cell := { cellDefaults with
  domain := ⟨(162525000000000003 / 200000000000000000 : ℚ), (81275000000000003 / 100000000000000000 : ℚ)⟩
  r := (46345214464759 / 100000000000000 : ℚ)
  w := (1668919740087 / 1250000000000 : ℚ)
  center := (325075000000000009 / 400000000000000000 : ℚ)
  supportValue := (4830813780608143 / 20000000000000000 : ℚ)
  supportSlope := (-4395041801043581 / 5000000000000000 : ℚ)
  oldCenter := (4830813780608143 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1871
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624, piece_625]
}

noncomputable def cell_13226 : Cell := { cellDefaults with
  domain := ⟨(81275000000000003 / 100000000000000000 : ℚ), (162575000000000009 / 200000000000000000 : ℚ)⟩
  r := (46345214464759 / 100000000000000 : ℚ)
  w := (1668919740087 / 1250000000000 : ℚ)
  center := (65025000000000003 / 80000000000000000 : ℚ)
  supportValue := (603577059006279 / 2500000000000000 : ℚ)
  supportSlope := (-4394081148772517 / 5000000000000000 : ℚ)
  oldCenter := (603577059006279 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1871
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624]
}

noncomputable def cell_13227 : Cell := { cellDefaults with
  domain := ⟨(162575000000000009 / 200000000000000000 : ℚ), (40650000000000003 / 50000000000000000 : ℚ)⟩
  r := (46345214464759 / 100000000000000 : ℚ)
  w := (1668919740087 / 1250000000000 : ℚ)
  center := (325175000000000021 / 400000000000000000 : ℚ)
  supportValue := (2413209925496773 / 10000000000000000 : ℚ)
  supportSlope := (-8784800528450821 / 10000000000000000 : ℚ)
  oldCenter := (2413209925496773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1871
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624]
}

noncomputable def cell_13228 : Cell := { cellDefaults with
  domain := ⟨(40650000000000003 / 50000000000000000 : ℚ), (162625000000000009 / 200000000000000000 : ℚ)⟩
  r := (23162876549471 / 50000000000000 : ℚ)
  w := (3336823958123 / 2500000000000 : ℚ)
  center := (325225000000000021 / 400000000000000000 : ℚ)
  supportValue := (24150537876816763 / 100000000000000000 : ℚ)
  supportSlope := (-2196401667098599 / 2500000000000000 : ℚ)
  oldCenter := (24150537876816763 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1872
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624, piece_625]
}

noncomputable def cell_13229 : Cell := { cellDefaults with
  domain := ⟨(162625000000000009 / 200000000000000000 : ℚ), (81325000000000003 / 100000000000000000 : ℚ)⟩
  r := (23162876549471 / 50000000000000 : ℚ)
  w := (3336823958123 / 2500000000000 : ℚ)
  center := (65055000000000003 / 80000000000000000 : ℚ)
  supportValue := (301744461625063 / 1250000000000000 : ℚ)
  supportSlope := (-8783155915464911 / 10000000000000000 : ℚ)
  oldCenter := (301744461625063 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1872
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624]
}

noncomputable def cell_13230 : Cell := { cellDefaults with
  domain := ⟨(81325000000000003 / 100000000000000000 : ℚ), (162675000000000003 / 200000000000000000 : ℚ)⟩
  r := (23162876549471 / 50000000000000 : ℚ)
  w := (3336823958123 / 2500000000000 : ℚ)
  center := (325325000000000009 / 400000000000000000 : ℚ)
  supportValue := (4825716016122037 / 20000000000000000 : ℚ)
  supportSlope := (-1755959498546777 / 2000000000000000 : ℚ)
  oldCenter := (4825716016122037 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1872
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624]
}

noncomputable def cell_13231 : Cell := { cellDefaults with
  domain := ⟨(162675000000000003 / 200000000000000000 : ℚ), (1627 / 2000 : ℚ)⟩
  r := (23162876549471 / 50000000000000 : ℚ)
  w := (3336823958123 / 2500000000000 : ℚ)
  center := (325375000000000003 / 400000000000000000 : ℚ)
  supportValue := (24117607430130533 / 100000000000000000 : ℚ)
  supportSlope := (-8776437654965883 / 10000000000000000 : ℚ)
  oldCenter := (24117607430130533 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1872
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624]
}

noncomputable def cell_13232 : Cell := { cellDefaults with
  domain := ⟨(1627 / 2000 : ℚ), (162725000000000003 / 200000000000000000 : ℚ)⟩
  r := (46306306375539 / 100000000000000 : ℚ)
  w := (416976023943 / 312500000000 : ℚ)
  center := (325425000000000003 / 400000000000000000 : ℚ)
  supportValue := (241360412482989 / 1000000000000000 : ℚ)
  supportSlope := (-4389077725683339 / 5000000000000000 : ℚ)
  oldCenter := (241360412482989 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1873
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624]
}

noncomputable def cell_13233 : Cell := { cellDefaults with
  domain := ⟨(162725000000000003 / 200000000000000000 : ℚ), (81375000000000003 / 100000000000000000 : ℚ)⟩
  r := (46306306375539 / 100000000000000 : ℚ)
  w := (416976023943 / 312500000000 : ℚ)
  center := (325475000000000009 / 400000000000000000 : ℚ)
  supportValue := (1206253532382221 / 5000000000000000 : ℚ)
  supportSlope := (-877479997621117 / 1000000000000000 : ℚ)
  oldCenter := (1206253532382221 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1873
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624]
}

noncomputable def cell_13234 : Cell := { cellDefaults with
  domain := ⟨(81375000000000003 / 100000000000000000 : ℚ), (162775000000000009 / 200000000000000000 : ℚ)⟩
  r := (46306306375539 / 100000000000000 : ℚ)
  w := (416976023943 / 312500000000 : ℚ)
  center := (65105000000000003 / 80000000000000000 : ℚ)
  supportValue := (12057052121109123 / 50000000000000000 : ℚ)
  supportSlope := (-1096430386242499 / 1250000000000000 : ℚ)
  oldCenter := (12057052121109123 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1873
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624]
}

noncomputable def cell_13235 : Cell := { cellDefaults with
  domain := ⟨(162775000000000009 / 200000000000000000 : ℚ), (40700000000000003 / 50000000000000000 : ℚ)⟩
  r := (46306306375539 / 100000000000000 : ℚ)
  w := (416976023943 / 312500000000 : ℚ)
  center := (325575000000000021 / 400000000000000000 : ℚ)
  supportValue := (23538224642363 / 97656250000000 : ℚ)
  supportSlope := (-8768437725773573 / 10000000000000000 : ℚ)
  oldCenter := (23538224642363 / 97656250000000 : ℚ)
  newCoefficients := coefficients_1873
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623, piece_624]
}

noncomputable def cell_13236 : Cell := { cellDefaults with
  domain := ⟨(40700000000000003 / 50000000000000000 : ℚ), (162825000000000009 / 200000000000000000 : ℚ)⟩
  r := (46286875867879 / 100000000000000 : ℚ)
  w := (13339170735983 / 10000000000000 : ℚ)
  center := (325625000000000021 / 400000000000000000 : ℚ)
  supportValue := (6030391364839601 / 25000000000000000 : ℚ)
  supportSlope := (-8769807283203143 / 10000000000000000 : ℚ)
  oldCenter := (6030391364839601 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1874
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624]
}

noncomputable def cell_13237 : Cell := { cellDefaults with
  domain := ⟨(162825000000000009 / 200000000000000000 : ℚ), (81425000000000003 / 100000000000000000 : ℚ)⟩
  r := (46286875867879 / 100000000000000 : ℚ)
  w := (13339170735983 / 10000000000000 : ℚ)
  center := (65135000000000003 / 80000000000000000 : ℚ)
  supportValue := (301382566162379 / 1250000000000000 : ℚ)
  supportSlope := (-1753290658788697 / 2000000000000000 : ℚ)
  oldCenter := (301382566162379 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1874
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624]
}

noncomputable def cell_13238 : Cell := { cellDefaults with
  domain := ⟨(81425000000000003 / 100000000000000000 : ℚ), (162875000000000003 / 200000000000000000 : ℚ)⟩
  r := (46286875867879 / 100000000000000 : ℚ)
  w := (13339170735983 / 10000000000000 : ℚ)
  center := (325725000000000009 / 400000000000000000 : ℚ)
  supportValue := (12049824626310099 / 50000000000000000 : ℚ)
  supportSlope := (-4381987747486519 / 5000000000000000 : ℚ)
  oldCenter := (12049824626310099 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1874
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623, piece_624]
}

noncomputable def cell_13239 : Cell := { cellDefaults with
  domain := ⟨(162875000000000003 / 200000000000000000 : ℚ), (1629 / 2000 : ℚ)⟩
  r := (46286875867879 / 100000000000000 : ℚ)
  w := (13339170735983 / 10000000000000 : ℚ)
  center := (325775000000000003 / 400000000000000000 : ℚ)
  supportValue := (2408869541783759 / 10000000000000000 : ℚ)
  supportSlope := (-4380691432229159 / 5000000000000000 : ℚ)
  oldCenter := (2408869541783759 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1874
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623]
}

noncomputable def cell_13240 : Cell := { cellDefaults with
  domain := ⟨(1629 / 2000 : ℚ), (162925000000000003 / 200000000000000000 : ℚ)⟩
  r := (925349205207 / 2000000000000 : ℚ)
  w := (3333776806471 / 2500000000000 : ℚ)
  center := (325825000000000003 / 400000000000000000 : ℚ)
  supportValue := (2410711664334879 / 10000000000000000 : ℚ)
  supportSlope := (-109518368062931 / 125000000000000 : ℚ)
  oldCenter := (2410711664334879 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1875
  oldLo := (24099999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_624]
}

noncomputable def cell_13241 : Cell := { cellDefaults with
  domain := ⟨(162925000000000003 / 200000000000000000 : ℚ), (81475000000000003 / 100000000000000000 : ℚ)⟩
  r := (925349205207 / 2000000000000 : ℚ)
  w := (3333776806471 / 2500000000000 : ℚ)
  center := (325875000000000009 / 400000000000000000 : ℚ)
  supportValue := (1506010385995773 / 6250000000000000 : ℚ)
  supportSlope := (-8759517070776661 / 10000000000000000 : ℚ)
  oldCenter := (1506010385995773 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1875
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623, piece_624]
}

noncomputable def cell_13242 : Cell := { cellDefaults with
  domain := ⟨(81475000000000003 / 100000000000000000 : ℚ), (162975000000000009 / 200000000000000000 : ℚ)⟩
  r := (925349205207 / 2000000000000 : ℚ)
  w := (3333776806471 / 2500000000000 : ℚ)
  center := (65185000000000003 / 80000000000000000 : ℚ)
  supportValue := (24085218569236067 / 100000000000000000 : ℚ)
  supportSlope := (-1094550238561067 / 1250000000000000 : ℚ)
  oldCenter := (24085218569236067 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1875
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623]
}

noncomputable def cell_13243 : Cell := { cellDefaults with
  domain := ⟨(162975000000000009 / 200000000000000000 : ℚ), (40750000000000003 / 50000000000000000 : ℚ)⟩
  r := (925349205207 / 2000000000000 : ℚ)
  w := (3333776806471 / 2500000000000 : ℚ)
  center := (325975000000000021 / 400000000000000000 : ℚ)
  supportValue := (4814855033003989 / 20000000000000000 : ℚ)
  supportSlope := (-4376519622197347 / 5000000000000000 : ℚ)
  oldCenter := (4814855033003989 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1875
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623]
}

noncomputable def cell_13244 : Cell := { cellDefaults with
  domain := ⟨(40750000000000003 / 50000000000000000 : ℚ), (163025000000000009 / 200000000000000000 : ℚ)⟩
  r := (46248059817261 / 100000000000000 : ℚ)
  w := (13331044147819 / 10000000000000 : ℚ)
  center := (326025000000000021 / 400000000000000000 : ℚ)
  supportValue := (12046344782357389 / 50000000000000000 : ℚ)
  supportSlope := (-4377392181236753 / 5000000000000000 : ℚ)
  oldCenter := (12046344782357389 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1876
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623]
}

noncomputable def cell_13245 : Cell := { cellDefaults with
  domain := ⟨(163025000000000009 / 200000000000000000 : ℚ), (81525000000000003 / 100000000000000000 : ℚ)⟩
  r := (46248059817261 / 100000000000000 : ℚ)
  w := (13331044147819 / 10000000000000 : ℚ)
  center := (65215000000000003 / 80000000000000000 : ℚ)
  supportValue := (3010218522461311 / 12500000000000000 : ℚ)
  supportSlope := (-1093928260453423 / 1250000000000000 : ℚ)
  oldCenter := (3010218522461311 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1876
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623]
}

noncomputable def cell_13246 : Cell := { cellDefaults with
  domain := ⟨(81525000000000003 / 100000000000000000 : ℚ), (163075000000000003 / 200000000000000000 : ℚ)⟩
  r := (46248059817261 / 100000000000000 : ℚ)
  w := (13331044147819 / 10000000000000 : ℚ)
  center := (326125000000000009 / 400000000000000000 : ℚ)
  supportValue := (6017702748341769 / 25000000000000000 : ℚ)
  supportSlope := (-4374033222452303 / 5000000000000000 : ℚ)
  oldCenter := (6017702748341769 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1876
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623]
}

noncomputable def cell_13247 : Cell := { cellDefaults with
  domain := ⟨(163075000000000003 / 200000000000000000 : ℚ), (1631 / 2000 : ℚ)⟩
  r := (46248059817261 / 100000000000000 : ℚ)
  w := (13331044147819 / 10000000000000 : ℚ)
  center := (326175000000000003 / 400000000000000000 : ℚ)
  supportValue := (12029939003719979 / 50000000000000000 : ℚ)
  supportSlope := (-8744705453330663 / 10000000000000000 : ℚ)
  oldCenter := (12029939003719979 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1876
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623]
}

noncomputable def cell_13248 : Cell := { cellDefaults with
  domain := ⟨(1631 / 2000 : ℚ), (163125000000000003 / 200000000000000000 : ℚ)⟩
  r := (23114337625929 / 50000000000000 : ℚ)
  w := (13326981290587 / 10000000000000 : ℚ)
  center := (326225000000000003 / 400000000000000000 : ℚ)
  supportValue := (6019570949569547 / 25000000000000000 : ℚ)
  supportSlope := (-4373227680731259 / 5000000000000000 : ℚ)
  oldCenter := (6019570949569547 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1877
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623]
}

noncomputable def cell_13249 : Cell := { cellDefaults with
  domain := ⟨(163125000000000003 / 200000000000000000 : ℚ), (81575000000000003 / 100000000000000000 : ℚ)⟩
  r := (23114337625929 / 50000000000000 : ℚ)
  w := (13326981290587 / 10000000000000 : ℚ)
  center := (326275000000000009 / 400000000000000000 : ℚ)
  supportValue := (24067352823469543 / 100000000000000000 : ℚ)
  supportSlope := (-8743098747333651 / 10000000000000000 : ℚ)
  oldCenter := (24067352823469543 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1877
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623]
}

theorem check_13200 : cell_13200.check = true := by
  decide +kernel

theorem check_13201 : cell_13201.check = true := by
  decide +kernel

theorem check_13202 : cell_13202.check = true := by
  decide +kernel

theorem check_13203 : cell_13203.check = true := by
  decide +kernel

theorem check_13204 : cell_13204.check = true := by
  decide +kernel

theorem check_13205 : cell_13205.check = true := by
  decide +kernel

theorem check_13206 : cell_13206.check = true := by
  decide +kernel

theorem check_13207 : cell_13207.check = true := by
  decide +kernel

theorem check_13208 : cell_13208.check = true := by
  decide +kernel

theorem check_13209 : cell_13209.check = true := by
  decide +kernel

theorem check_13210 : cell_13210.check = true := by
  decide +kernel

theorem check_13211 : cell_13211.check = true := by
  decide +kernel

theorem check_13212 : cell_13212.check = true := by
  decide +kernel

theorem check_13213 : cell_13213.check = true := by
  decide +kernel

theorem check_13214 : cell_13214.check = true := by
  decide +kernel

theorem check_13215 : cell_13215.check = true := by
  decide +kernel

theorem check_13216 : cell_13216.check = true := by
  decide +kernel

theorem check_13217 : cell_13217.check = true := by
  decide +kernel

theorem check_13218 : cell_13218.check = true := by
  decide +kernel

theorem check_13219 : cell_13219.check = true := by
  decide +kernel

theorem check_13220 : cell_13220.check = true := by
  decide +kernel

theorem check_13221 : cell_13221.check = true := by
  decide +kernel

theorem check_13222 : cell_13222.check = true := by
  decide +kernel

theorem check_13223 : cell_13223.check = true := by
  decide +kernel

theorem check_13224 : cell_13224.check = true := by
  decide +kernel

theorem check_13225 : cell_13225.check = true := by
  decide +kernel

theorem check_13226 : cell_13226.check = true := by
  decide +kernel

theorem check_13227 : cell_13227.check = true := by
  decide +kernel

theorem check_13228 : cell_13228.check = true := by
  decide +kernel

theorem check_13229 : cell_13229.check = true := by
  decide +kernel

theorem check_13230 : cell_13230.check = true := by
  decide +kernel

theorem check_13231 : cell_13231.check = true := by
  decide +kernel

theorem check_13232 : cell_13232.check = true := by
  decide +kernel

theorem check_13233 : cell_13233.check = true := by
  decide +kernel

theorem check_13234 : cell_13234.check = true := by
  decide +kernel

theorem check_13235 : cell_13235.check = true := by
  decide +kernel

theorem check_13236 : cell_13236.check = true := by
  decide +kernel

theorem check_13237 : cell_13237.check = true := by
  decide +kernel

theorem check_13238 : cell_13238.check = true := by
  decide +kernel

theorem check_13239 : cell_13239.check = true := by
  decide +kernel

theorem check_13240 : cell_13240.check = true := by
  decide +kernel

theorem check_13241 : cell_13241.check = true := by
  decide +kernel

theorem check_13242 : cell_13242.check = true := by
  decide +kernel

theorem check_13243 : cell_13243.check = true := by
  decide +kernel

theorem check_13244 : cell_13244.check = true := by
  decide +kernel

theorem check_13245 : cell_13245.check = true := by
  decide +kernel

theorem check_13246 : cell_13246.check = true := by
  decide +kernel

theorem check_13247 : cell_13247.check = true := by
  decide +kernel

theorem check_13248 : cell_13248.check = true := by
  decide +kernel

theorem check_13249 : cell_13249.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13200, cell_13201, cell_13202, cell_13203, cell_13204, cell_13205, cell_13206, cell_13207, cell_13208, cell_13209, cell_13210, cell_13211, cell_13212, cell_13213, cell_13214, cell_13215, cell_13216, cell_13217, cell_13218, cell_13219, cell_13220, cell_13221, cell_13222, cell_13223, cell_13224, cell_13225, cell_13226, cell_13227, cell_13228, cell_13229, cell_13230, cell_13231, cell_13232, cell_13233, cell_13234, cell_13235, cell_13236, cell_13237, cell_13238, cell_13239, cell_13240, cell_13241, cell_13242, cell_13243, cell_13244, cell_13245, cell_13246, cell_13247, cell_13248, cell_13249]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13200, check_13201, check_13202, check_13203, check_13204, check_13205, check_13206, check_13207, check_13208, check_13209, check_13210, check_13211, check_13212, check_13213, check_13214, check_13215, check_13216, check_13217, check_13218, check_13219, check_13220, check_13221, check_13222, check_13223, check_13224, check_13225, check_13226, check_13227, check_13228, check_13229, check_13230, check_13231, check_13232, check_13233, check_13234, check_13235, check_13236, check_13237, check_13238, check_13239, check_13240, check_13241, check_13242, check_13243, check_13244, check_13245, check_13246, check_13247, check_13248, check_13249, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0264

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0264
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0264
open AnalyticBounds.ExpressionCertificate

theorem linked_13200 : Linked cell_13200 pieces := by
  link_source cell_13200 with piece_1864 using piece_1864_mem, piece_627_mem

theorem linked_13201 : Linked cell_13201 pieces := by
  link_source cell_13201 with piece_1864 using piece_1864_mem, ⟨piece_626_mem, piece_627_mem⟩

theorem linked_13202 : Linked cell_13202 pieces := by
  link_source cell_13202 with piece_1864 using piece_1864_mem, piece_626_mem

theorem linked_13203 : Linked cell_13203 pieces := by
  link_source cell_13203 with piece_1865 using piece_1865_mem, piece_627_mem

theorem linked_13204 : Linked cell_13204 pieces := by
  link_source cell_13204 with piece_1865 using piece_1865_mem, ⟨piece_626_mem, piece_627_mem⟩

theorem linked_13205 : Linked cell_13205 pieces := by
  link_source cell_13205 with piece_1865 using piece_1865_mem, piece_626_mem

theorem linked_13206 : Linked cell_13206 pieces := by
  link_source cell_13206 with piece_1865 using piece_1865_mem, ⟨piece_625_mem, piece_626_mem⟩

theorem linked_13207 : Linked cell_13207 pieces := by
  link_source cell_13207 with piece_1866 using piece_1866_mem, piece_626_mem

theorem linked_13208 : Linked cell_13208 pieces := by
  link_source cell_13208 with piece_1866 using piece_1866_mem, piece_626_mem

theorem linked_13209 : Linked cell_13209 pieces := by
  link_source cell_13209 with piece_1866 using piece_1866_mem, ⟨piece_625_mem, piece_626_mem⟩

theorem linked_13210 : Linked cell_13210 pieces := by
  link_source cell_13210 with piece_1866 using piece_1866_mem, piece_625_mem

theorem linked_13211 : Linked cell_13211 pieces := by
  link_source cell_13211 with piece_1867 using piece_1867_mem, piece_626_mem

theorem linked_13212 : Linked cell_13212 pieces := by
  link_source cell_13212 with piece_1867 using piece_1867_mem, ⟨piece_625_mem, piece_626_mem⟩

theorem linked_13213 : Linked cell_13213 pieces := by
  link_source cell_13213 with piece_1867 using piece_1867_mem, piece_625_mem

theorem linked_13214 : Linked cell_13214 pieces := by
  link_source cell_13214 with piece_1867 using piece_1867_mem, piece_625_mem

theorem linked_13215 : Linked cell_13215 pieces := by
  link_source cell_13215 with piece_1868 using piece_1868_mem, piece_625_mem

theorem linked_13216 : Linked cell_13216 pieces := by
  link_source cell_13216 with piece_1868 using piece_1868_mem, piece_625_mem

theorem linked_13217 : Linked cell_13217 pieces := by
  link_source cell_13217 with piece_1868 using piece_1868_mem, piece_625_mem

theorem linked_13218 : Linked cell_13218 pieces := by
  link_source cell_13218 with piece_1868 using piece_1868_mem, piece_625_mem

theorem linked_13219 : Linked cell_13219 pieces := by
  link_source cell_13219 with piece_1869 using piece_1869_mem, piece_625_mem

theorem linked_13220 : Linked cell_13220 pieces := by
  link_source cell_13220 with piece_1870 using piece_1870_mem, piece_625_mem

theorem linked_13221 : Linked cell_13221 pieces := by
  link_source cell_13221 with piece_1870 using piece_1870_mem, piece_625_mem

theorem linked_13222 : Linked cell_13222 pieces := by
  link_source cell_13222 with piece_1870 using piece_1870_mem, piece_625_mem

theorem linked_13223 : Linked cell_13223 pieces := by
  link_source cell_13223 with piece_1870 using piece_1870_mem, ⟨piece_624_mem, piece_625_mem⟩

theorem linked_13224 : Linked cell_13224 pieces := by
  link_source cell_13224 with piece_1871 using piece_1871_mem, piece_625_mem

theorem linked_13225 : Linked cell_13225 pieces := by
  link_source cell_13225 with piece_1871 using piece_1871_mem, ⟨piece_624_mem, piece_625_mem⟩

theorem linked_13226 : Linked cell_13226 pieces := by
  link_source cell_13226 with piece_1871 using piece_1871_mem, piece_624_mem

theorem linked_13227 : Linked cell_13227 pieces := by
  link_source cell_13227 with piece_1871 using piece_1871_mem, piece_624_mem

theorem linked_13228 : Linked cell_13228 pieces := by
  link_source cell_13228 with piece_1872 using piece_1872_mem, ⟨piece_624_mem, piece_625_mem⟩

theorem linked_13229 : Linked cell_13229 pieces := by
  link_source cell_13229 with piece_1872 using piece_1872_mem, piece_624_mem

theorem linked_13230 : Linked cell_13230 pieces := by
  link_source cell_13230 with piece_1872 using piece_1872_mem, piece_624_mem

theorem linked_13231 : Linked cell_13231 pieces := by
  link_source cell_13231 with piece_1872 using piece_1872_mem, piece_624_mem

theorem linked_13232 : Linked cell_13232 pieces := by
  link_source cell_13232 with piece_1873 using piece_1873_mem, piece_624_mem

theorem linked_13233 : Linked cell_13233 pieces := by
  link_source cell_13233 with piece_1873 using piece_1873_mem, piece_624_mem

theorem linked_13234 : Linked cell_13234 pieces := by
  link_source cell_13234 with piece_1873 using piece_1873_mem, piece_624_mem

theorem linked_13235 : Linked cell_13235 pieces := by
  link_source cell_13235 with piece_1873 using piece_1873_mem, ⟨piece_623_mem, piece_624_mem⟩

theorem linked_13236 : Linked cell_13236 pieces := by
  link_source cell_13236 with piece_1874 using piece_1874_mem, piece_624_mem

theorem linked_13237 : Linked cell_13237 pieces := by
  link_source cell_13237 with piece_1874 using piece_1874_mem, piece_624_mem

theorem linked_13238 : Linked cell_13238 pieces := by
  link_source cell_13238 with piece_1874 using piece_1874_mem, ⟨piece_623_mem, piece_624_mem⟩

theorem linked_13239 : Linked cell_13239 pieces := by
  link_source cell_13239 with piece_1874 using piece_1874_mem, piece_623_mem

theorem linked_13240 : Linked cell_13240 pieces := by
  link_source cell_13240 with piece_1875 using piece_1875_mem, piece_624_mem

theorem linked_13241 : Linked cell_13241 pieces := by
  link_source cell_13241 with piece_1875 using piece_1875_mem, ⟨piece_623_mem, piece_624_mem⟩

theorem linked_13242 : Linked cell_13242 pieces := by
  link_source cell_13242 with piece_1875 using piece_1875_mem, piece_623_mem

theorem linked_13243 : Linked cell_13243 pieces := by
  link_source cell_13243 with piece_1875 using piece_1875_mem, piece_623_mem

theorem linked_13244 : Linked cell_13244 pieces := by
  link_source cell_13244 with piece_1876 using piece_1876_mem, piece_623_mem

theorem linked_13245 : Linked cell_13245 pieces := by
  link_source cell_13245 with piece_1876 using piece_1876_mem, piece_623_mem

theorem linked_13246 : Linked cell_13246 pieces := by
  link_source cell_13246 with piece_1876 using piece_1876_mem, piece_623_mem

theorem linked_13247 : Linked cell_13247 pieces := by
  link_source cell_13247 with piece_1876 using piece_1876_mem, piece_623_mem

theorem linked_13248 : Linked cell_13248 pieces := by
  link_source cell_13248 with piece_1877 using piece_1877_mem, piece_623_mem

theorem linked_13249 : Linked cell_13249 pieces := by
  link_source cell_13249 with piece_1877 using piece_1877_mem, piece_623_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0264.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0264.cells,List.forall_mem_cons]
  exact ⟨linked_13200, linked_13201, linked_13202, linked_13203, linked_13204, linked_13205, linked_13206, linked_13207, linked_13208, linked_13209, linked_13210, linked_13211, linked_13212, linked_13213, linked_13214, linked_13215, linked_13216, linked_13217, linked_13218, linked_13219, linked_13220, linked_13221, linked_13222, linked_13223, linked_13224, linked_13225, linked_13226, linked_13227, linked_13228, linked_13229, linked_13230, linked_13231, linked_13232, linked_13233, linked_13234, linked_13235, linked_13236, linked_13237, linked_13238, linked_13239, linked_13240, linked_13241, linked_13242, linked_13243, linked_13244, linked_13245, linked_13246, linked_13247, linked_13248, linked_13249, by simp⟩

theorem covered : covers (64770000000000001 / 80000000000000000 : ℚ) (81575000000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0264.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0264
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0265
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(81575000000000003 / 100000000000000000 : ℚ), (163175000000000009 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (1442831605221 / 3125000000000 : ℚ)
  w := (13314790899541 / 10000000000000 : ℚ)
  center := (65265000000000003 / 80000000000000000 : ℚ)
  supportValue := (24056426045274107 / 100000000000000000 : ℚ)
  supportSlope := (-2184935196027653 / 2500000000000000 : ℚ)
  oldCenter := (24056426045274107 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1878
  oldLo := (23949999999999999 / 100000000000000000 : ℚ)
  oldHi := (23999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_621]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13250 : Cell := { cellDefaults with
  r := (23114337625929 / 50000000000000 : ℚ)
  w := (13326981290587 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1877
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623]
}

noncomputable def cell_13251 : Cell := { cellDefaults with
  domain := ⟨(163175000000000009 / 200000000000000000 : ℚ), (40800000000000003 / 50000000000000000 : ℚ)⟩
  r := (23114337625929 / 50000000000000 : ℚ)
  w := (13326981290587 / 10000000000000 : ℚ)
  center := (326375000000000021 / 400000000000000000 : ℚ)
  supportValue := (1202275130837639 / 5000000000000000 : ℚ)
  supportSlope := (-4368940923331097 / 5000000000000000 : ℚ)
  oldCenter := (1202275130837639 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1877
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622, piece_623]
}

noncomputable def cell_13252 : Cell := { cellDefaults with
  domain := ⟨(40800000000000003 / 50000000000000000 : ℚ), (163225000000000009 / 200000000000000000 : ℚ)⟩
  r := (46209305510807 / 100000000000000 : ℚ)
  w := (13322918402589 / 10000000000000 : ℚ)
  center := (326425000000000021 / 400000000000000000 : ℚ)
  supportValue := (1203195113730889 / 5000000000000000 : ℚ)
  supportSlope := (-8738136399944967 / 10000000000000000 : ℚ)
  oldCenter := (1203195113730889 / 5000000000000000 : ℚ)
  oldLo := (24049999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_623]
}

noncomputable def cell_13253 : Cell := { cellDefaults with
  domain := ⟨(163225000000000009 / 200000000000000000 : ℚ), (81625000000000003 / 100000000000000000 : ℚ)⟩
  r := (46209305510807 / 100000000000000 : ℚ)
  w := (13322918402589 / 10000000000000 : ℚ)
  center := (65295000000000003 / 80000000000000000 : ℚ)
  supportValue := (1202649084873329 / 5000000000000000 : ℚ)
  supportSlope := (-8735156079696597 / 10000000000000000 : ℚ)
  oldCenter := (1202649084873329 / 5000000000000000 : ℚ)
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622, piece_623]
}

noncomputable def cell_13254 : Cell := { cellDefaults with
  domain := ⟨(81625000000000003 / 100000000000000000 : ℚ), (163275000000000003 / 200000000000000000 : ℚ)⟩
  r := (46209305510807 / 100000000000000 : ℚ)
  w := (13322918402589 / 10000000000000 : ℚ)
  center := (326525000000000009 / 400000000000000000 : ℚ)
  supportValue := (6010515954831519 / 25000000000000000 : ℚ)
  supportSlope := (-4366533462825641 / 5000000000000000 : ℚ)
  oldCenter := (6010515954831519 / 25000000000000000 : ℚ)
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622]
}

noncomputable def cell_13255 : Cell := { cellDefaults with
  domain := ⟨(163275000000000003 / 200000000000000000 : ℚ), (1633 / 2000 : ℚ)⟩
  r := (46209305510807 / 100000000000000 : ℚ)
  w := (13322918402589 / 10000000000000 : ℚ)
  center := (326575000000000003 / 400000000000000000 : ℚ)
  supportValue := (2403114958526289 / 10000000000000000 : ℚ)
  supportSlope := (-4364851004506311 / 5000000000000000 : ℚ)
  oldCenter := (2403114958526289 / 10000000000000000 : ℚ)
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622]
}

noncomputable def cell_13256 : Cell := { cellDefaults with
  domain := ⟨(1633 / 2000 : ℚ), (163325000000000003 / 200000000000000000 : ℚ)⟩
  r := (2886871942627 / 6250000000000 : ℚ)
  w := (13318855084693 / 10000000000000 : ℚ)
  center := (326625000000000003 / 400000000000000000 : ℚ)
  supportValue := (4809909004780849 / 20000000000000000 : ℚ)
  supportSlope := (-174614387652451 / 200000000000000 : ℚ)
  oldCenter := (4809909004780849 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1879
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622, piece_623]
}

noncomputable def cell_13257 : Cell := { cellDefaults with
  domain := ⟨(163325000000000003 / 200000000000000000 : ℚ), (81675000000000003 / 100000000000000000 : ℚ)⟩
  r := (2886871942627 / 6250000000000 : ℚ)
  w := (13318855084693 / 10000000000000 : ℚ)
  center := (326675000000000009 / 400000000000000000 : ℚ)
  supportValue := (2403863277877767 / 10000000000000000 : ℚ)
  supportSlope := (-8728113038015747 / 10000000000000000 : ℚ)
  oldCenter := (2403863277877767 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1879
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622]
}

noncomputable def cell_13258 : Cell := { cellDefaults with
  domain := ⟨(81675000000000003 / 100000000000000000 : ℚ), (163375000000000009 / 200000000000000000 : ℚ)⟩
  r := (2886871942627 / 6250000000000 : ℚ)
  w := (13318855084693 / 10000000000000 : ℚ)
  center := (65345000000000003 / 80000000000000000 : ℚ)
  supportValue := (12013862367586263 / 50000000000000000 : ℚ)
  supportSlope := (-8724751167691399 / 10000000000000000 : ℚ)
  oldCenter := (12013862367586263 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1879
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622]
}

noncomputable def cell_13259 : Cell := { cellDefaults with
  domain := ⟨(163375000000000009 / 200000000000000000 : ℚ), (40850000000000003 / 50000000000000000 : ℚ)⟩
  r := (2886871942627 / 6250000000000 : ℚ)
  w := (13318855084693 / 10000000000000 : ℚ)
  center := (326775000000000021 / 400000000000000000 : ℚ)
  supportValue := (24016820894722113 / 100000000000000000 : ℚ)
  supportSlope := (-872138799420503 / 1000000000000000 : ℚ)
  oldCenter := (24016820894722113 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1879
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622]
}

noncomputable def cell_13260 : Cell := { cellDefaults with
  domain := ⟨(40850000000000003 / 50000000000000000 : ℚ), (2553504713687151 / 3125000000000000 : ℚ)⟩
  center := (81706075418994419 / 100000000000000000 : ℚ)
  supportValue := (24035363230146783 / 100000000000000000 : ℚ)
  supportSlope := (-4361605877955423 / 5000000000000000 : ℚ)
  oldCenter := (24035363230146783 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1880
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622]
}

noncomputable def cell_13261 : Cell := { cellDefaults with
  domain := ⟨(2553504713687151 / 3125000000000000 : ℚ), (40862150837988829 / 50000000000000000 : ℚ)⟩
  center := (16343645251396649 / 20000000000000000 : ℚ)
  supportValue := (48049531554211 / 200000000000000 : ℚ)
  supportSlope := (-4359973394816103 / 5000000000000000 : ℚ)
  oldCenter := (48049531554211 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1880
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622]
}

noncomputable def cell_13262 : Cell := { cellDefaults with
  domain := ⟨(40862150837988829 / 50000000000000000 : ℚ), (20434113128491621 / 25000000000000000 : ℚ)⟩
  center := (81730377094972071 / 100000000000000000 : ℚ)
  supportValue := (12007086146010097 / 50000000000000000 : ℚ)
  supportSlope := (-8716680595152397 / 10000000000000000 : ℚ)
  oldCenter := (12007086146010097 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1880
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622]
}

noncomputable def cell_13263 : Cell := { cellDefaults with
  domain := ⟨(20434113128491621 / 25000000000000000 : ℚ), (8174860335195531 / 10000000000000000 : ℚ)⟩
  center := (81742527932960897 / 100000000000000000 : ℚ)
  supportValue := (1500223923523707 / 6250000000000000 : ℚ)
  supportSlope := (-870932300674171 / 1000000000000000 : ℚ)
  oldCenter := (1500223923523707 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1880
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_621, piece_622]
}

noncomputable def cell_13264 : Cell := { cellDefaults with
  domain := ⟨(8174860335195531 / 10000000000000000 : ℚ), (327 / 400 : ℚ)⟩
  center := (16349860335195531 / 20000000000000000 : ℚ)
  supportValue := (11998841541704511 / 50000000000000000 : ℚ)
  supportSlope := (-8686322610917213 / 10000000000000000 : ℚ)
  oldCenter := (11998841541704511 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1881
  oldPieces := [piece_621]
}

noncomputable def cell_13265 : Cell := { cellDefaults with
  domain := ⟨(327 / 400 : ℚ), (163525000000000003 / 200000000000000000 : ℚ)⟩
  r := (23075643704961 / 50000000000000 : ℚ)
  w := (13310727680737 / 10000000000000 : ℚ)
  center := (327025000000000003 / 400000000000000000 : ℚ)
  supportValue := (12010449025259433 / 50000000000000000 : ℚ)
  supportSlope := (-2178718426544007 / 2500000000000000 : ℚ)
  oldCenter := (12010449025259433 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1882
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622]
}

noncomputable def cell_13266 : Cell := { cellDefaults with
  domain := ⟨(163525000000000003 / 200000000000000000 : ℚ), (81775000000000003 / 100000000000000000 : ℚ)⟩
  r := (23075643704961 / 50000000000000 : ℚ)
  w := (13310727680737 / 10000000000000 : ℚ)
  center := (327075000000000009 / 400000000000000000 : ℚ)
  supportValue := (24010006553074673 / 100000000000000000 : ℚ)
  supportSlope := (-8711516653500183 / 10000000000000000 : ℚ)
  oldCenter := (24010006553074673 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1882
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622]
}

noncomputable def cell_13267 : Cell := { cellDefaults with
  domain := ⟨(81775000000000003 / 100000000000000000 : ℚ), (163575000000000009 / 200000000000000000 : ℚ)⟩
  r := (23075643704961 / 50000000000000 : ℚ)
  w := (13310727680737 / 10000000000000 : ℚ)
  center := (65425000000000003 / 80000000000000000 : ℚ)
  supportValue := (11999569309622081 / 50000000000000000 : ℚ)
  supportSlope := (-4346720795757631 / 5000000000000000 : ℚ)
  oldCenter := (11999569309622081 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1882
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_621, piece_622]
}

noncomputable def cell_13268 : Cell := { cellDefaults with
  domain := ⟨(163575000000000009 / 200000000000000000 : ℚ), (40900000000000003 / 50000000000000000 : ℚ)⟩
  r := (23075643704961 / 50000000000000 : ℚ)
  w := (13310727680737 / 10000000000000 : ℚ)
  center := (327175000000000021 / 400000000000000000 : ℚ)
  supportValue := (23988270536648137 / 100000000000000000 : ℚ)
  supportSlope := (-8679087036797053 / 10000000000000000 : ℚ)
  oldCenter := (23988270536648137 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1882
  oldPieces := [piece_621]
}

noncomputable def cell_13269 : Cell := { cellDefaults with
  domain := ⟨(40900000000000003 / 50000000000000000 : ℚ), (327250000000000019 / 400000000000000000 : ℚ)⟩
  r := (9226395635817 / 20000000000000 : ℚ)
  w := (13306663196113 / 10000000000000 : ℚ)
  center := (654450000000000043 / 800000000000000000 : ℚ)
  supportValue := (12003305756075107 / 50000000000000000 : ℚ)
  supportSlope := (-2176646319599569 / 2500000000000000 : ℚ)
  oldCenter := (12003305756075107 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1883
  oldLo := (23999999999999999 / 100000000000000000 : ℚ)
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_622]
}

noncomputable def cell_13270 : Cell := { cellDefaults with
  domain := ⟨(327250000000000019 / 400000000000000000 : ℚ), (163650000000000007 / 200000000000000000 : ℚ)⟩
  r := (9226395635817 / 20000000000000 : ℚ)
  w := (13306663196113 / 10000000000000 : ℚ)
  center := (654550000000000033 / 800000000000000000 : ℚ)
  supportValue := (1199787138944193 / 5000000000000000 : ℚ)
  supportSlope := (-4340284366391323 / 5000000000000000 : ℚ)
  oldCenter := (1199787138944193 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1883
  oldHi := (24049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_621, piece_622]
}

noncomputable def cell_13271 : Cell := { cellDefaults with
  domain := ⟨(163650000000000007 / 200000000000000000 : ℚ), (327350000000000009 / 400000000000000000 : ℚ)⟩
  r := (9226395635817 / 20000000000000 : ℚ)
  w := (13306663196113 / 10000000000000 : ℚ)
  center := (654650000000000023 / 800000000000000000 : ℚ)
  supportValue := (5996224459974911 / 25000000000000000 : ℚ)
  supportSlope := (-4337006877306749 / 5000000000000000 : ℚ)
  oldCenter := (5996224459974911 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1883
  oldPieces := [piece_621]
}

noncomputable def cell_13272 : Cell := { cellDefaults with
  domain := ⟨(327350000000000009 / 400000000000000000 : ℚ), (81850000000000001 / 100000000000000000 : ℚ)⟩
  r := (9226395635817 / 20000000000000 : ℚ)
  w := (13306663196113 / 10000000000000 : ℚ)
  center := (654750000000000013 / 800000000000000000 : ℚ)
  supportValue := (11987028868832733 / 50000000000000000 : ℚ)
  supportSlope := (-4335072439083809 / 5000000000000000 : ℚ)
  oldCenter := (11987028868832733 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1883
  oldPieces := [piece_621]
}

noncomputable def cell_13273 : Cell := { cellDefaults with
  domain := ⟨(81850000000000001 / 100000000000000000 : ℚ), (327450000000000009 / 400000000000000000 : ℚ)⟩
  r := (46112684846231 / 100000000000000 : ℚ)
  w := (6651299255209 / 5000000000000 : ℚ)
  center := (654850000000000013 / 800000000000000000 : ℚ)
  supportValue := (4798474062662349 / 20000000000000000 : ℚ)
  supportSlope := (-8672812031588449 / 10000000000000000 : ℚ)
  oldCenter := (4798474062662349 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1884
  oldPieces := [piece_621]
}

noncomputable def cell_13274 : Cell := { cellDefaults with
  domain := ⟨(327450000000000009 / 400000000000000000 : ℚ), (163750000000000007 / 200000000000000000 : ℚ)⟩
  r := (46112684846231 / 100000000000000 : ℚ)
  w := (6651299255209 / 5000000000000 : ℚ)
  center := (654950000000000023 / 800000000000000000 : ℚ)
  supportValue := (11990765855615003 / 50000000000000000 : ℚ)
  supportSlope := (-8668946357221173 / 10000000000000000 : ℚ)
  oldCenter := (11990765855615003 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1884
  oldPieces := [piece_621]
}

noncomputable def cell_13275 : Cell := { cellDefaults with
  domain := ⟨(163750000000000007 / 200000000000000000 : ℚ), (327550000000000019 / 400000000000000000 : ℚ)⟩
  r := (46112684846231 / 100000000000000 : ℚ)
  w := (6651299255209 / 5000000000000 : ℚ)
  center := (655050000000000033 / 800000000000000000 : ℚ)
  supportValue := (23970697940591001 / 100000000000000000 : ℚ)
  supportSlope := (-8665081726041657 / 10000000000000000 : ℚ)
  oldCenter := (23970697940591001 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1884
  oldPieces := [piece_621]
}

noncomputable def cell_13276 : Cell := { cellDefaults with
  domain := ⟨(327550000000000019 / 400000000000000000 : ℚ), (40950000000000003 / 50000000000000000 : ℚ)⟩
  r := (46112684846231 / 100000000000000 : ℚ)
  w := (6651299255209 / 5000000000000 : ℚ)
  center := (655150000000000043 / 800000000000000000 : ℚ)
  supportValue := (2994983625011181 / 12500000000000000 : ℚ)
  supportSlope := (-8661218140008331 / 10000000000000000 : ℚ)
  oldCenter := (2994983625011181 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1884
  oldPieces := [piece_621]
}

noncomputable def cell_13277 : Cell := { cellDefaults with
  domain := ⟨(40950000000000003 / 50000000000000000 : ℚ), (327650000000000019 / 400000000000000000 : ℚ)⟩
  r := (46093405799289 / 100000000000000 : ℚ)
  w := (1662316796091 / 1250000000000 : ℚ)
  center := (655250000000000043 / 800000000000000000 : ℚ)
  supportValue := (23978172581543053 / 100000000000000000 : ℚ)
  supportSlope := (-1082985595165617 / 1250000000000000 : ℚ)
  oldCenter := (23978172581543053 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1885
  oldPieces := [piece_621]
}

noncomputable def cell_13278 : Cell := { cellDefaults with
  domain := ⟨(327650000000000019 / 400000000000000000 : ℚ), (163850000000000007 / 200000000000000000 : ℚ)⟩
  r := (46093405799289 / 100000000000000 : ℚ)
  w := (1662316796091 / 1250000000000 : ℚ)
  center := (655350000000000033 / 800000000000000000 : ℚ)
  supportValue := (5991836283816121 / 25000000000000000 : ℚ)
  supportSlope := (-8660024347953743 / 10000000000000000 : ℚ)
  oldCenter := (5991836283816121 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1885
  oldPieces := [piece_621]
}

noncomputable def cell_13279 : Cell := { cellDefaults with
  domain := ⟨(163850000000000007 / 200000000000000000 : ℚ), (327750000000000009 / 400000000000000000 : ℚ)⟩
  r := (46093405799289 / 100000000000000 : ℚ)
  w := (1662316796091 / 1250000000000 : ℚ)
  center := (655450000000000023 / 800000000000000000 : ℚ)
  supportValue := (1497282657115747 / 6250000000000000 : ℚ)
  supportSlope := (-1731232995690841 / 2000000000000000 : ℚ)
  oldCenter := (1497282657115747 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1885
  oldPieces := [piece_621]
}

noncomputable def cell_13280 : Cell := { cellDefaults with
  domain := ⟨(327750000000000009 / 400000000000000000 : ℚ), (81950000000000001 / 100000000000000000 : ℚ)⟩
  r := (46093405799289 / 100000000000000 : ℚ)
  w := (1662316796091 / 1250000000000 : ℚ)
  center := (655550000000000013 / 800000000000000000 : ℚ)
  supportValue := (4789140781143767 / 20000000000000000 : ℚ)
  supportSlope := (-1730753608334363 / 2000000000000000 : ℚ)
  oldCenter := (4789140781143767 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1885
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620, piece_621]
}

noncomputable def cell_13281 : Cell := { cellDefaults with
  domain := ⟨(81950000000000001 / 100000000000000000 : ℚ), (327850000000000009 / 400000000000000000 : ℚ)⟩
  r := (23037071005461 / 50000000000000 : ℚ)
  w := (13294470174677 / 10000000000000 : ℚ)
  center := (655650000000000013 / 800000000000000000 : ℚ)
  supportValue := (2396399927869559 / 10000000000000000 : ℚ)
  supportSlope := (-2163743216357711 / 2500000000000000 : ℚ)
  oldCenter := (2396399927869559 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1886
  oldPieces := [piece_621]
}

noncomputable def cell_13282 : Cell := { cellDefaults with
  domain := ⟨(327850000000000009 / 400000000000000000 : ℚ), (163950000000000007 / 200000000000000000 : ℚ)⟩
  r := (23037071005461 / 50000000000000 : ℚ)
  w := (13294470174677 / 10000000000000 : ℚ)
  center := (655750000000000023 / 800000000000000000 : ℚ)
  supportValue := (4790636593803203 / 20000000000000000 : ℚ)
  supportSlope := (-8651453886127337 / 10000000000000000 : ℚ)
  oldCenter := (4790636593803203 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1886
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620, piece_621]
}

noncomputable def cell_13283 : Cell := { cellDefaults with
  domain := ⟨(163950000000000007 / 200000000000000000 : ℚ), (327950000000000019 / 400000000000000000 : ℚ)⟩
  r := (23037071005461 / 50000000000000 : ℚ)
  w := (13294470174677 / 10000000000000 : ℚ)
  center := (655850000000000033 / 800000000000000000 : ℚ)
  supportValue := (4788474008105637 / 20000000000000000 : ℚ)
  supportSlope := (-4324444367424641 / 5000000000000000 : ℚ)
  oldCenter := (4788474008105637 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1886
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620]
}

noncomputable def cell_13284 : Cell := { cellDefaults with
  domain := ⟨(327950000000000019 / 400000000000000000 : ℚ), (41000000000000003 / 50000000000000000 : ℚ)⟩
  r := (23037071005461 / 50000000000000 : ℚ)
  w := (13294470174677 / 10000000000000 : ℚ)
  center := (655950000000000043 / 800000000000000000 : ℚ)
  supportValue := (11965780669646711 / 50000000000000000 : ℚ)
  supportSlope := (-4322514159737623 / 5000000000000000 : ℚ)
  oldCenter := (11965780669646711 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1886
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620]
}

noncomputable def cell_13285 : Cell := { cellDefaults with
  domain := ⟨(41000000000000003 / 50000000000000000 : ℚ), (328050000000000019 / 400000000000000000 : ℚ)⟩
  r := (23027446565651 / 50000000000000 : ℚ)
  w := (13290404704353 / 10000000000000 : ℚ)
  center := (656050000000000043 / 800000000000000000 : ℚ)
  supportValue := (23949852923007559 / 100000000000000000 : ℚ)
  supportSlope := (-8646916416497927 / 10000000000000000 : ℚ)
  oldCenter := (23949852923007559 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1887
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620, piece_621]
}

noncomputable def cell_13286 : Cell := { cellDefaults with
  domain := ⟨(328050000000000019 / 400000000000000000 : ℚ), (164050000000000007 / 200000000000000000 : ℚ)⟩
  r := (23027446565651 / 50000000000000 : ℚ)
  w := (13290404704353 / 10000000000000 : ℚ)
  center := (656150000000000033 / 800000000000000000 : ℚ)
  supportValue := (29923807118177 / 125000000000000 : ℚ)
  supportSlope := (-1728770355487081 / 2000000000000000 : ℚ)
  oldCenter := (29923807118177 / 125000000000000 : ℚ)
  newCoefficients := coefficients_1887
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620]
}

noncomputable def cell_13287 : Cell := { cellDefaults with
  domain := ⟨(164050000000000007 / 200000000000000000 : ℚ), (328150000000000009 / 400000000000000000 : ℚ)⟩
  r := (23027446565651 / 50000000000000 : ℚ)
  w := (13290404704353 / 10000000000000 : ℚ)
  center := (656250000000000023 / 800000000000000000 : ℚ)
  supportValue := (23928243286748183 / 100000000000000000 : ℚ)
  supportSlope := (-8639995773425977 / 10000000000000000 : ℚ)
  oldCenter := (23928243286748183 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1887
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620]
}

noncomputable def cell_13288 : Cell := { cellDefaults with
  domain := ⟨(328150000000000009 / 400000000000000000 : ℚ), (82050000000000001 / 100000000000000000 : ℚ)⟩
  r := (23027446565651 / 50000000000000 : ℚ)
  w := (13290404704353 / 10000000000000 : ℚ)
  center := (656350000000000013 / 800000000000000000 : ℚ)
  supportValue := (11958722849147331 / 50000000000000000 : ℚ)
  supportSlope := (-1727228167269063 / 2000000000000000 : ℚ)
  oldCenter := (11958722849147331 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1887
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620]
}

noncomputable def cell_13289 : Cell := { cellDefaults with
  domain := ⟨(82050000000000001 / 100000000000000000 : ℚ), (328250000000000009 / 400000000000000000 : ℚ)⟩
  r := (46035659518509 / 100000000000000 : ℚ)
  w := (13286338649201 / 10000000000000 : ℚ)
  center := (656450000000000013 / 800000000000000000 : ℚ)
  supportValue := (5983932293479119 / 25000000000000000 : ℚ)
  supportSlope := (-8638819022523083 / 10000000000000000 : ℚ)
  oldCenter := (5983932293479119 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1888
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620]
}

noncomputable def cell_13290 : Cell := { cellDefaults with
  domain := ⟨(328250000000000009 / 400000000000000000 : ℚ), (164150000000000007 / 200000000000000000 : ℚ)⟩
  r := (46035659518509 / 100000000000000 : ℚ)
  w := (13286338649201 / 10000000000000 : ℚ)
  center := (656550000000000023 / 800000000000000000 : ℚ)
  supportValue := (747654157951419 / 3125000000000000 : ℚ)
  supportSlope := (-539685450952289 / 625000000000000 : ℚ)
  oldCenter := (747654157951419 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1888
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620]
}

noncomputable def cell_13291 : Cell := { cellDefaults with
  domain := ⟨(164150000000000007 / 200000000000000000 : ℚ), (328350000000000019 / 400000000000000000 : ℚ)⟩
  r := (46035659518509 / 100000000000000 : ℚ)
  w := (13286338649201 / 10000000000000 : ℚ)
  center := (656650000000000033 / 800000000000000000 : ℚ)
  supportValue := (11957070874534549 / 50000000000000000 : ℚ)
  supportSlope := (-8631116473702097 / 10000000000000000 : ℚ)
  oldCenter := (11957070874534549 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1888
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620]
}

noncomputable def cell_13292 : Cell := { cellDefaults with
  domain := ⟨(328350000000000019 / 400000000000000000 : ℚ), (41050000000000003 / 50000000000000000 : ℚ)⟩
  r := (46035659518509 / 100000000000000 : ℚ)
  w := (13286338649201 / 10000000000000 : ℚ)
  center := (656750000000000043 / 800000000000000000 : ℚ)
  supportValue := (23903355256454187 / 100000000000000000 : ℚ)
  supportSlope := (-4313787549332217 / 5000000000000000 : ℚ)
  oldCenter := (23903355256454187 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1888
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619, piece_620]
}

noncomputable def cell_13293 : Cell := { cellDefaults with
  domain := ⟨(41050000000000003 / 50000000000000000 : ℚ), (328450000000000019 / 400000000000000000 : ℚ)⟩
  r := (46016441862617 / 100000000000000 : ℚ)
  w := (2656454936067 / 2000000000000 : ℚ)
  center := (656850000000000043 / 800000000000000000 : ℚ)
  supportValue := (239216249824403 / 1000000000000000 : ℚ)
  supportSlope := (-8629943277399273 / 10000000000000000 : ℚ)
  oldCenter := (239216249824403 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1889
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620]
}

noncomputable def cell_13294 : Cell := { cellDefaults with
  domain := ⟨(328450000000000019 / 400000000000000000 : ℚ), (164250000000000007 / 200000000000000000 : ℚ)⟩
  r := (46016441862617 / 100000000000000 : ℚ)
  w := (2656454936067 / 2000000000000 : ℚ)
  center := (656950000000000033 / 800000000000000000 : ℚ)
  supportValue := (1195541997718449 / 5000000000000000 : ℚ)
  supportSlope := (-8626096726255003 / 10000000000000000 : ℚ)
  oldCenter := (1195541997718449 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1889
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620]
}

noncomputable def cell_13295 : Cell := { cellDefaults with
  domain := ⟨(164250000000000007 / 200000000000000000 : ℚ), (328550000000000009 / 400000000000000000 : ℚ)⟩
  r := (46016441862617 / 100000000000000 : ℚ)
  w := (2656454936067 / 2000000000000 : ℚ)
  center := (657050000000000023 / 800000000000000000 : ℚ)
  supportValue := (23900059733821877 / 100000000000000000 : ℚ)
  supportSlope := (-4311527897216547 / 5000000000000000 : ℚ)
  oldCenter := (23900059733821877 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1889
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619, piece_620]
}

noncomputable def cell_13296 : Cell := { cellDefaults with
  domain := ⟨(328550000000000009 / 400000000000000000 : ℚ), (82150000000000001 / 100000000000000000 : ℚ)⟩
  r := (46016441862617 / 100000000000000 : ℚ)
  w := (2656454936067 / 2000000000000 : ℚ)
  center := (657150000000000013 / 800000000000000000 : ℚ)
  supportValue := (955571292017797 / 4000000000000000 : ℚ)
  supportSlope := (-269375822747219 / 312500000000000 : ℚ)
  oldCenter := (955571292017797 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1889
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619]
}

noncomputable def cell_13297 : Cell := { cellDefaults with
  domain := ⟨(82150000000000001 / 100000000000000000 : ℚ), (328650000000000009 / 400000000000000000 : ℚ)⟩
  r := (22998618888283 / 50000000000000 : ℚ)
  w := (6639104086633 / 5000000000000 : ℚ)
  center := (657250000000000013 / 800000000000000000 : ℚ)
  supportValue := (23907551372353147 / 100000000000000000 : ℚ)
  supportSlope := (-2155271100403373 / 2500000000000000 : ℚ)
  oldCenter := (23907551372353147 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1890
  oldLo := (23899999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_620]
}

noncomputable def cell_13298 : Cell := { cellDefaults with
  domain := ⟨(328650000000000009 / 400000000000000000 : ℚ), (164350000000000007 / 200000000000000000 : ℚ)⟩
  r := (22998618888283 / 50000000000000 : ℚ)
  w := (6639104086633 / 5000000000000 : ℚ)
  center := (657350000000000023 / 800000000000000000 : ℚ)
  supportValue := (4779355361121217 / 20000000000000000 : ℚ)
  supportSlope := (-8618541309934029 / 10000000000000000 : ℚ)
  oldCenter := (4779355361121217 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1890
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619, piece_620]
}

noncomputable def cell_13299 : Cell := { cellDefaults with
  domain := ⟨(164350000000000007 / 200000000000000000 : ℚ), (328750000000000019 / 400000000000000000 : ℚ)⟩
  r := (22998618888283 / 50000000000000 : ℚ)
  w := (6639104086633 / 5000000000000 : ℚ)
  center := (657450000000000033 / 800000000000000000 : ℚ)
  supportValue := (1492875351471807 / 6250000000000000 : ℚ)
  supportSlope := (-8615019438002163 / 10000000000000000 : ℚ)
  oldCenter := (1492875351471807 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1890
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619]
}

theorem check_13250 : cell_13250.check = true := by
  decide +kernel

theorem check_13251 : cell_13251.check = true := by
  decide +kernel

theorem check_13252 : cell_13252.check = true := by
  decide +kernel

theorem check_13253 : cell_13253.check = true := by
  decide +kernel

theorem check_13254 : cell_13254.check = true := by
  decide +kernel

theorem check_13255 : cell_13255.check = true := by
  decide +kernel

theorem check_13256 : cell_13256.check = true := by
  decide +kernel

theorem check_13257 : cell_13257.check = true := by
  decide +kernel

theorem check_13258 : cell_13258.check = true := by
  decide +kernel

theorem check_13259 : cell_13259.check = true := by
  decide +kernel

theorem check_13260 : cell_13260.check = true := by
  decide +kernel

theorem check_13261 : cell_13261.check = true := by
  decide +kernel

theorem check_13262 : cell_13262.check = true := by
  decide +kernel

theorem check_13263 : cell_13263.check = true := by
  decide +kernel

theorem check_13264 : cell_13264.check = true := by
  decide +kernel

theorem check_13265 : cell_13265.check = true := by
  decide +kernel

theorem check_13266 : cell_13266.check = true := by
  decide +kernel

theorem check_13267 : cell_13267.check = true := by
  decide +kernel

theorem check_13268 : cell_13268.check = true := by
  decide +kernel

theorem check_13269 : cell_13269.check = true := by
  decide +kernel

theorem check_13270 : cell_13270.check = true := by
  decide +kernel

theorem check_13271 : cell_13271.check = true := by
  decide +kernel

theorem check_13272 : cell_13272.check = true := by
  decide +kernel

theorem check_13273 : cell_13273.check = true := by
  decide +kernel

theorem check_13274 : cell_13274.check = true := by
  decide +kernel

theorem check_13275 : cell_13275.check = true := by
  decide +kernel

theorem check_13276 : cell_13276.check = true := by
  decide +kernel

theorem check_13277 : cell_13277.check = true := by
  decide +kernel

theorem check_13278 : cell_13278.check = true := by
  decide +kernel

theorem check_13279 : cell_13279.check = true := by
  decide +kernel

theorem check_13280 : cell_13280.check = true := by
  decide +kernel

theorem check_13281 : cell_13281.check = true := by
  decide +kernel

theorem check_13282 : cell_13282.check = true := by
  decide +kernel

theorem check_13283 : cell_13283.check = true := by
  decide +kernel

theorem check_13284 : cell_13284.check = true := by
  decide +kernel

theorem check_13285 : cell_13285.check = true := by
  decide +kernel

theorem check_13286 : cell_13286.check = true := by
  decide +kernel

theorem check_13287 : cell_13287.check = true := by
  decide +kernel

theorem check_13288 : cell_13288.check = true := by
  decide +kernel

theorem check_13289 : cell_13289.check = true := by
  decide +kernel

theorem check_13290 : cell_13290.check = true := by
  decide +kernel

theorem check_13291 : cell_13291.check = true := by
  decide +kernel

theorem check_13292 : cell_13292.check = true := by
  decide +kernel

theorem check_13293 : cell_13293.check = true := by
  decide +kernel

theorem check_13294 : cell_13294.check = true := by
  decide +kernel

theorem check_13295 : cell_13295.check = true := by
  decide +kernel

theorem check_13296 : cell_13296.check = true := by
  decide +kernel

theorem check_13297 : cell_13297.check = true := by
  decide +kernel

theorem check_13298 : cell_13298.check = true := by
  decide +kernel

theorem check_13299 : cell_13299.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13250, cell_13251, cell_13252, cell_13253, cell_13254, cell_13255, cell_13256, cell_13257, cell_13258, cell_13259, cell_13260, cell_13261, cell_13262, cell_13263, cell_13264, cell_13265, cell_13266, cell_13267, cell_13268, cell_13269, cell_13270, cell_13271, cell_13272, cell_13273, cell_13274, cell_13275, cell_13276, cell_13277, cell_13278, cell_13279, cell_13280, cell_13281, cell_13282, cell_13283, cell_13284, cell_13285, cell_13286, cell_13287, cell_13288, cell_13289, cell_13290, cell_13291, cell_13292, cell_13293, cell_13294, cell_13295, cell_13296, cell_13297, cell_13298, cell_13299]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13250, check_13251, check_13252, check_13253, check_13254, check_13255, check_13256, check_13257, check_13258, check_13259, check_13260, check_13261, check_13262, check_13263, check_13264, check_13265, check_13266, check_13267, check_13268, check_13269, check_13270, check_13271, check_13272, check_13273, check_13274, check_13275, check_13276, check_13277, check_13278, check_13279, check_13280, check_13281, check_13282, check_13283, check_13284, check_13285, check_13286, check_13287, check_13288, check_13289, check_13290, check_13291, check_13292, check_13293, check_13294, check_13295, check_13296, check_13297, check_13298, check_13299, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0265

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0265
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0265
open AnalyticBounds.ExpressionCertificate

theorem linked_13250 : Linked cell_13250 pieces := by
  link_source cell_13250 with piece_1877 using piece_1877_mem, piece_623_mem

theorem linked_13251 : Linked cell_13251 pieces := by
  link_source cell_13251 with piece_1877 using piece_1877_mem, ⟨piece_622_mem, piece_623_mem⟩

theorem linked_13252 : Linked cell_13252 pieces := by
  link_source cell_13252 with piece_1878 using piece_1878_mem, piece_623_mem

theorem linked_13253 : Linked cell_13253 pieces := by
  link_source cell_13253 with piece_1878 using piece_1878_mem, ⟨piece_622_mem, piece_623_mem⟩

theorem linked_13254 : Linked cell_13254 pieces := by
  link_source cell_13254 with piece_1878 using piece_1878_mem, piece_622_mem

theorem linked_13255 : Linked cell_13255 pieces := by
  link_source cell_13255 with piece_1878 using piece_1878_mem, piece_622_mem

theorem linked_13256 : Linked cell_13256 pieces := by
  link_source cell_13256 with piece_1879 using piece_1879_mem, ⟨piece_622_mem, piece_623_mem⟩

theorem linked_13257 : Linked cell_13257 pieces := by
  link_source cell_13257 with piece_1879 using piece_1879_mem, piece_622_mem

theorem linked_13258 : Linked cell_13258 pieces := by
  link_source cell_13258 with piece_1879 using piece_1879_mem, piece_622_mem

theorem linked_13259 : Linked cell_13259 pieces := by
  link_source cell_13259 with piece_1879 using piece_1879_mem, piece_622_mem

theorem linked_13260 : Linked cell_13260 pieces := by
  link_source cell_13260 with piece_1880 using piece_1880_mem, piece_622_mem

theorem linked_13261 : Linked cell_13261 pieces := by
  link_source cell_13261 with piece_1880 using piece_1880_mem, piece_622_mem

theorem linked_13262 : Linked cell_13262 pieces := by
  link_source cell_13262 with piece_1880 using piece_1880_mem, piece_622_mem

theorem linked_13263 : Linked cell_13263 pieces := by
  link_source cell_13263 with piece_1880 using piece_1880_mem, ⟨piece_621_mem, piece_622_mem⟩

theorem linked_13264 : Linked cell_13264 pieces := by
  link_source cell_13264 with piece_1881 using piece_1881_mem, piece_621_mem

theorem linked_13265 : Linked cell_13265 pieces := by
  link_source cell_13265 with piece_1882 using piece_1882_mem, piece_622_mem

theorem linked_13266 : Linked cell_13266 pieces := by
  link_source cell_13266 with piece_1882 using piece_1882_mem, piece_622_mem

theorem linked_13267 : Linked cell_13267 pieces := by
  link_source cell_13267 with piece_1882 using piece_1882_mem, ⟨piece_621_mem, piece_622_mem⟩

theorem linked_13268 : Linked cell_13268 pieces := by
  link_source cell_13268 with piece_1882 using piece_1882_mem, piece_621_mem

theorem linked_13269 : Linked cell_13269 pieces := by
  link_source cell_13269 with piece_1883 using piece_1883_mem, piece_622_mem

theorem linked_13270 : Linked cell_13270 pieces := by
  link_source cell_13270 with piece_1883 using piece_1883_mem, ⟨piece_621_mem, piece_622_mem⟩

theorem linked_13271 : Linked cell_13271 pieces := by
  link_source cell_13271 with piece_1883 using piece_1883_mem, piece_621_mem

theorem linked_13272 : Linked cell_13272 pieces := by
  link_source cell_13272 with piece_1883 using piece_1883_mem, piece_621_mem

theorem linked_13273 : Linked cell_13273 pieces := by
  link_source cell_13273 with piece_1884 using piece_1884_mem, piece_621_mem

theorem linked_13274 : Linked cell_13274 pieces := by
  link_source cell_13274 with piece_1884 using piece_1884_mem, piece_621_mem

theorem linked_13275 : Linked cell_13275 pieces := by
  link_source cell_13275 with piece_1884 using piece_1884_mem, piece_621_mem

theorem linked_13276 : Linked cell_13276 pieces := by
  link_source cell_13276 with piece_1884 using piece_1884_mem, piece_621_mem

theorem linked_13277 : Linked cell_13277 pieces := by
  link_source cell_13277 with piece_1885 using piece_1885_mem, piece_621_mem

theorem linked_13278 : Linked cell_13278 pieces := by
  link_source cell_13278 with piece_1885 using piece_1885_mem, piece_621_mem

theorem linked_13279 : Linked cell_13279 pieces := by
  link_source cell_13279 with piece_1885 using piece_1885_mem, piece_621_mem

theorem linked_13280 : Linked cell_13280 pieces := by
  link_source cell_13280 with piece_1885 using piece_1885_mem, ⟨piece_620_mem, piece_621_mem⟩

theorem linked_13281 : Linked cell_13281 pieces := by
  link_source cell_13281 with piece_1886 using piece_1886_mem, piece_621_mem

theorem linked_13282 : Linked cell_13282 pieces := by
  link_source cell_13282 with piece_1886 using piece_1886_mem, ⟨piece_620_mem, piece_621_mem⟩

theorem linked_13283 : Linked cell_13283 pieces := by
  link_source cell_13283 with piece_1886 using piece_1886_mem, piece_620_mem

theorem linked_13284 : Linked cell_13284 pieces := by
  link_source cell_13284 with piece_1886 using piece_1886_mem, piece_620_mem

theorem linked_13285 : Linked cell_13285 pieces := by
  link_source cell_13285 with piece_1887 using piece_1887_mem, ⟨piece_620_mem, piece_621_mem⟩

theorem linked_13286 : Linked cell_13286 pieces := by
  link_source cell_13286 with piece_1887 using piece_1887_mem, piece_620_mem

theorem linked_13287 : Linked cell_13287 pieces := by
  link_source cell_13287 with piece_1887 using piece_1887_mem, piece_620_mem

theorem linked_13288 : Linked cell_13288 pieces := by
  link_source cell_13288 with piece_1887 using piece_1887_mem, piece_620_mem

theorem linked_13289 : Linked cell_13289 pieces := by
  link_source cell_13289 with piece_1888 using piece_1888_mem, piece_620_mem

theorem linked_13290 : Linked cell_13290 pieces := by
  link_source cell_13290 with piece_1888 using piece_1888_mem, piece_620_mem

theorem linked_13291 : Linked cell_13291 pieces := by
  link_source cell_13291 with piece_1888 using piece_1888_mem, piece_620_mem

theorem linked_13292 : Linked cell_13292 pieces := by
  link_source cell_13292 with piece_1888 using piece_1888_mem, ⟨piece_619_mem, piece_620_mem⟩

theorem linked_13293 : Linked cell_13293 pieces := by
  link_source cell_13293 with piece_1889 using piece_1889_mem, piece_620_mem

theorem linked_13294 : Linked cell_13294 pieces := by
  link_source cell_13294 with piece_1889 using piece_1889_mem, piece_620_mem

theorem linked_13295 : Linked cell_13295 pieces := by
  link_source cell_13295 with piece_1889 using piece_1889_mem, ⟨piece_619_mem, piece_620_mem⟩

theorem linked_13296 : Linked cell_13296 pieces := by
  link_source cell_13296 with piece_1889 using piece_1889_mem, piece_619_mem

theorem linked_13297 : Linked cell_13297 pieces := by
  link_source cell_13297 with piece_1890 using piece_1890_mem, piece_620_mem

theorem linked_13298 : Linked cell_13298 pieces := by
  link_source cell_13298 with piece_1890 using piece_1890_mem, ⟨piece_619_mem, piece_620_mem⟩

theorem linked_13299 : Linked cell_13299 pieces := by
  link_source cell_13299 with piece_1890 using piece_1890_mem, piece_619_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0265.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0265.cells,List.forall_mem_cons]
  exact ⟨linked_13250, linked_13251, linked_13252, linked_13253, linked_13254, linked_13255, linked_13256, linked_13257, linked_13258, linked_13259, linked_13260, linked_13261, linked_13262, linked_13263, linked_13264, linked_13265, linked_13266, linked_13267, linked_13268, linked_13269, linked_13270, linked_13271, linked_13272, linked_13273, linked_13274, linked_13275, linked_13276, linked_13277, linked_13278, linked_13279, linked_13280, linked_13281, linked_13282, linked_13283, linked_13284, linked_13285, linked_13286, linked_13287, linked_13288, linked_13289, linked_13290, linked_13291, linked_13292, linked_13293, linked_13294, linked_13295, linked_13296, linked_13297, linked_13298, linked_13299, by simp⟩

theorem covered : covers (81575000000000003 / 100000000000000000 : ℚ) (328750000000000019 / 400000000000000000 : ℚ)
    (SourceCertificates.Chunk0265.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0265
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0266
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(328750000000000019 / 400000000000000000 : ℚ), (41100000000000003 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (2296985847289 / 5000000000000 : ℚ)
  w := (165825127271 / 125000000000 : ℚ)
  center := (657550000000000043 / 800000000000000000 : ℚ)
  supportValue := (23875239250209623 / 100000000000000000 : ℚ)
  supportSlope := (-2152793252349967 / 2500000000000000 : ℚ)
  oldCenter := (23875239250209623 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1891
  oldLo := (23799999999999999 / 100000000000000000 : ℚ)
  oldHi := (23849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_618]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13300 : Cell := { cellDefaults with
  r := (22998618888283 / 50000000000000 : ℚ)
  w := (6639104086633 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1890
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619]
}

noncomputable def cell_13301 : Cell := { cellDefaults with
  domain := ⟨(41100000000000003 / 50000000000000000 : ℚ), (328850000000000019 / 400000000000000000 : ℚ)⟩
  r := (45978049198427 / 100000000000000 : ℚ)
  w := (3318535689901 / 2500000000000 : ℚ)
  center := (657650000000000043 / 800000000000000000 : ℚ)
  supportValue := (2389349826484089 / 10000000000000000 : ℚ)
  supportSlope := (-8613861050218191 / 10000000000000000 : ℚ)
  oldCenter := (2389349826484089 / 10000000000000000 : ℚ)
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619]
}

noncomputable def cell_13302 : Cell := { cellDefaults with
  domain := ⟨(328850000000000019 / 400000000000000000 : ℚ), (164450000000000007 / 200000000000000000 : ℚ)⟩
  r := (45978049198427 / 100000000000000 : ℚ)
  w := (3318535689901 / 2500000000000 : ℚ)
  center := (657750000000000033 / 800000000000000000 : ℚ)
  supportValue := (23882733337546827 / 100000000000000000 : ℚ)
  supportSlope := (-86100177247381 / 100000000000000 : ℚ)
  oldCenter := (23882733337546827 / 100000000000000000 : ℚ)
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619]
}

noncomputable def cell_13303 : Cell := { cellDefaults with
  domain := ⟨(164450000000000007 / 200000000000000000 : ℚ), (328950000000000009 / 400000000000000000 : ℚ)⟩
  r := (45978049198427 / 100000000000000 : ℚ)
  w := (3318535689901 / 2500000000000 : ℚ)
  center := (657850000000000023 / 800000000000000000 : ℚ)
  supportValue := (5967993303432939 / 25000000000000000 : ℚ)
  supportSlope := (-2151543871638177 / 2500000000000000 : ℚ)
  oldCenter := (5967993303432939 / 25000000000000000 : ℚ)
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619]
}

noncomputable def cell_13304 : Cell := { cellDefaults with
  domain := ⟨(328950000000000009 / 400000000000000000 : ℚ), (82250000000000001 / 100000000000000000 : ℚ)⟩
  r := (45978049198427 / 100000000000000 : ℚ)
  w := (3318535689901 / 2500000000000 : ℚ)
  center := (657950000000000013 / 800000000000000000 : ℚ)
  supportValue := (298265223650443 / 1250000000000000 : ℚ)
  supportSlope := (-860233433743393 / 1000000000000000 : ℚ)
  oldCenter := (298265223650443 / 1250000000000000 : ℚ)
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619]
}

noncomputable def cell_13305 : Cell := { cellDefaults with
  domain := ⟨(82250000000000001 / 100000000000000000 : ℚ), (329050000000000009 / 400000000000000000 : ℚ)⟩
  r := (45958875401781 / 100000000000000 : ℚ)
  w := (13270075951047 / 10000000000000 : ℚ)
  center := (658050000000000013 / 800000000000000000 : ℚ)
  supportValue := (1492466921597641 / 6250000000000000 : ℚ)
  supportSlope := (-4302511290405611 / 5000000000000000 : ℚ)
  oldCenter := (1492466921597641 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1892
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619]
}

noncomputable def cell_13306 : Cell := { cellDefaults with
  domain := ⟨(329050000000000009 / 400000000000000000 : ℚ), (164550000000000007 / 200000000000000000 : ℚ)⟩
  r := (45958875401781 / 100000000000000 : ℚ)
  w := (13270075951047 / 10000000000000 : ℚ)
  center := (658150000000000023 / 800000000000000000 : ℚ)
  supportValue := (2983589607882783 / 12500000000000000 : ℚ)
  supportSlope := (-4300592264514083 / 5000000000000000 : ℚ)
  oldCenter := (2983589607882783 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1892
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619]
}

noncomputable def cell_13307 : Cell := { cellDefaults with
  domain := ⟨(164550000000000007 / 200000000000000000 : ℚ), (329150000000000019 / 400000000000000000 : ℚ)⟩
  r := (45958875401781 / 100000000000000 : ℚ)
  w := (13270075951047 / 10000000000000 : ℚ)
  center := (658250000000000033 / 800000000000000000 : ℚ)
  supportValue := (5964491944362211 / 25000000000000000 : ℚ)
  supportSlope := (-8597347564983899 / 10000000000000000 : ℚ)
  oldCenter := (5964491944362211 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1892
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619]
}

noncomputable def cell_13308 : Cell := { cellDefaults with
  domain := ⟨(329150000000000019 / 400000000000000000 : ℚ), (41150000000000003 / 50000000000000000 : ℚ)⟩
  r := (45958875401781 / 100000000000000 : ℚ)
  w := (13270075951047 / 10000000000000 : ℚ)
  center := (658350000000000043 / 800000000000000000 : ℚ)
  supportValue := (1192361148097227 / 5000000000000000 : ℚ)
  supportSlope := (-4297370853240793 / 5000000000000000 : ℚ)
  oldCenter := (1192361148097227 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1892
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_618, piece_619]
}

noncomputable def cell_13309 : Cell := { cellDefaults with
  domain := ⟨(41150000000000003 / 50000000000000000 : ℚ), (8230167597765363 / 10000000000000000 : ℚ)⟩
  center := (41150418994413409 / 50000000000000000 : ℚ)
  supportValue := (5967528267802593 / 25000000000000000 : ℚ)
  supportSlope := (-4298929254508141 / 5000000000000000 : ℚ)
  oldCenter := (5967528267802593 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1893
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619]
}

noncomputable def cell_13310 : Cell := { cellDefaults with
  domain := ⟨(8230167597765363 / 10000000000000000 : ℚ), (329255027932960891 / 400000000000000000 : ℚ)⟩
  center := (658461731843575411 / 800000000000000000 : ℚ)
  supportValue := (1491512783680609 / 6250000000000000 : ℚ)
  supportSlope := (-1719149915975437 / 2000000000000000 : ℚ)
  oldCenter := (1491512783680609 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1894
  oldLo := (23849999999999999 / 100000000000000000 : ℚ)
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_619]
}

noncomputable def cell_13311 : Cell := { cellDefaults with
  domain := ⟨(329255027932960891 / 400000000000000000 : ℚ), (164651675977653631 / 200000000000000000 : ℚ)⟩
  center := (658558379888268153 / 800000000000000000 : ℚ)
  supportValue := (11926911121808567 / 50000000000000000 : ℚ)
  supportSlope := (-2148065026806637 / 2500000000000000 : ℚ)
  oldCenter := (11926911121808567 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1894
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_618, piece_619]
}

noncomputable def cell_13312 : Cell := { cellDefaults with
  domain := ⟨(164651675977653631 / 200000000000000000 : ℚ), (329351675977653633 / 400000000000000000 : ℚ)⟩
  center := (131731005586592179 / 160000000000000000 : ℚ)
  supportValue := (1490215199063181 / 6250000000000000 : ℚ)
  supportSlope := (-1717991997707789 / 2000000000000000 : ℚ)
  oldCenter := (1490215199063181 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1894
  oldPieces := [piece_618]
}

noncomputable def cell_13313 : Cell := { cellDefaults with
  domain := ⟨(329351675977653633 / 400000000000000000 : ℚ), (82350000000000001 / 100000000000000000 : ℚ)⟩
  center := (658751675977653637 / 800000000000000000 : ℚ)
  supportValue := (953322715485739 / 4000000000000000 : ℚ)
  supportSlope := (-858625077826137 / 1000000000000000 : ℚ)
  oldCenter := (953322715485739 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1894
  oldPieces := [piece_618]
}

noncomputable def cell_13314 : Cell := { cellDefaults with
  domain := ⟨(82350000000000001 / 100000000000000000 : ℚ), (32945000000000001 / 40000000000000000 : ℚ)⟩
  r := (459205730657 / 1000000000000 : ℚ)
  w := (6630971683023 / 5000000000000 : ℚ)
  center := (329425000000000007 / 400000000000000000 : ℚ)
  supportValue := (5962871492159999 / 25000000000000000 : ℚ)
  supportSlope := (-8587978026976053 / 10000000000000000 : ℚ)
  oldCenter := (5962871492159999 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1895
  oldHi := (23899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_618, piece_619]
}

noncomputable def cell_13315 : Cell := { cellDefaults with
  domain := ⟨(32945000000000001 / 40000000000000000 : ℚ), (20593750000000001 / 25000000000000000 : ℚ)⟩
  r := (459205730657 / 1000000000000 : ℚ)
  w := (6630971683023 / 5000000000000 : ℚ)
  center := (329475000000000013 / 400000000000000000 : ℚ)
  supportValue := (596018809363709 / 2500000000000000 : ℚ)
  supportSlope := (-4292589455354197 / 5000000000000000 : ℚ)
  oldCenter := (596018809363709 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1895
  oldPieces := [piece_618]
}

noncomputable def cell_13316 : Cell := { cellDefaults with
  domain := ⟨(20593750000000001 / 25000000000000000 : ℚ), (164775000000000011 / 200000000000000000 : ℚ)⟩
  r := (459205730657 / 1000000000000 : ℚ)
  w := (6630971683023 / 5000000000000 : ℚ)
  center := (329525000000000019 / 400000000000000000 : ℚ)
  supportValue := (11915011646963397 / 50000000000000000 : ℚ)
  supportSlope := (-2145336302790977 / 2500000000000000 : ℚ)
  oldCenter := (11915011646963397 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1895
  oldPieces := [piece_618]
}

noncomputable def cell_13317 : Cell := { cellDefaults with
  domain := ⟨(164775000000000011 / 200000000000000000 : ℚ), (82400000000000007 / 100000000000000000 : ℚ)⟩
  r := (459205730657 / 1000000000000 : ℚ)
  w := (6630971683023 / 5000000000000 : ℚ)
  center := (13183000000000001 / 16000000000000000 : ℚ)
  supportValue := (2977412375592189 / 12500000000000000 : ℚ)
  supportSlope := (-8577512621718101 / 10000000000000000 : ℚ)
  oldCenter := (2977412375592189 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1895
  oldPieces := [piece_618]
}

noncomputable def cell_13318 : Cell := { cellDefaults with
  domain := ⟨(82400000000000007 / 100000000000000000 : ℚ), (164825000000000011 / 200000000000000000 : ℚ)⟩
  r := (11475360871403 / 25000000000000 : ℚ)
  w := (13257874752589 / 10000000000000 : ℚ)
  center := (13185000000000001 / 16000000000000000 : ℚ)
  supportValue := (11918766269589011 / 50000000000000000 : ℚ)
  supportSlope := (-8580211671481627 / 10000000000000000 : ℚ)
  oldCenter := (11918766269589011 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1896
  oldPieces := [piece_618]
}

noncomputable def cell_13319 : Cell := { cellDefaults with
  domain := ⟨(164825000000000011 / 200000000000000000 : ℚ), (20606250000000001 / 25000000000000000 : ℚ)⟩
  r := (11475360871403 / 25000000000000 : ℚ)
  w := (13257874752589 / 10000000000000 : ℚ)
  center := (329675000000000019 / 400000000000000000 : ℚ)
  supportValue := (11913404832500893 / 50000000000000000 : ℚ)
  supportSlope := (-2144095535116221 / 2500000000000000 : ℚ)
  oldCenter := (11913404832500893 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1896
  oldPieces := [piece_618]
}

noncomputable def cell_13320 : Cell := { cellDefaults with
  domain := ⟨(20606250000000001 / 25000000000000000 : ℚ), (32975000000000001 / 40000000000000000 : ℚ)⟩
  r := (11475360871403 / 25000000000000 : ℚ)
  w := (13257874752589 / 10000000000000 : ℚ)
  center := (329725000000000013 / 400000000000000000 : ℚ)
  supportValue := (11908045788524059 / 50000000000000000 : ℚ)
  supportSlope := (-8572553718152383 / 10000000000000000 : ℚ)
  oldCenter := (11908045788524059 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1896
  oldPieces := [piece_618]
}

noncomputable def cell_13321 : Cell := { cellDefaults with
  domain := ⟨(32975000000000001 / 40000000000000000 : ℚ), (82450000000000001 / 100000000000000000 : ℚ)⟩
  r := (11475360871403 / 25000000000000 : ℚ)
  w := (13257874752589 / 10000000000000 : ℚ)
  center := (329775000000000007 / 400000000000000000 : ℚ)
  supportValue := (1190268913696501 / 5000000000000000 : ℚ)
  supportSlope := (-8568726406187249 / 10000000000000000 : ℚ)
  oldCenter := (1190268913696501 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1896
  oldPieces := [piece_618]
}

noncomputable def cell_13322 : Cell := { cellDefaults with
  domain := ⟨(82450000000000001 / 100000000000000000 : ℚ), (32985000000000001 / 40000000000000000 : ℚ)⟩
  r := (2294116478121 / 5000000000000 : ℚ)
  w := (13253808498511 / 10000000000000 : ℚ)
  center := (329825000000000007 / 400000000000000000 : ℚ)
  supportValue := (11911798894587071 / 50000000000000000 : ℚ)
  supportSlope := (-1071427937871943 / 1250000000000000 : ℚ)
  oldCenter := (11911798894587071 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1897
  oldPieces := [piece_618]
}

noncomputable def cell_13323 : Cell := { cellDefaults with
  domain := ⟨(32985000000000001 / 40000000000000000 : ℚ), (20618750000000001 / 25000000000000000 : ℚ)⟩
  r := (2294116478121 / 5000000000000 : ℚ)
  w := (13253808498511 / 10000000000000 : ℚ)
  center := (329875000000000013 / 400000000000000000 : ℚ)
  supportValue := (11906442948459449 / 50000000000000000 : ℚ)
  supportSlope := (-8567599240735329 / 10000000000000000 : ℚ)
  oldCenter := (11906442948459449 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1897
  oldPieces := [piece_618]
}

noncomputable def cell_13324 : Cell := { cellDefaults with
  domain := ⟨(20618750000000001 / 25000000000000000 : ℚ), (164975000000000011 / 200000000000000000 : ℚ)⟩
  r := (2294116478121 / 5000000000000 : ℚ)
  w := (13253808498511 / 10000000000000 : ℚ)
  center := (329925000000000019 / 400000000000000000 : ℚ)
  supportValue := (5950544696075019 / 25000000000000000 : ℚ)
  supportSlope := (-4282128335523813 / 5000000000000000 : ℚ)
  oldCenter := (5950544696075019 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1897
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617, piece_618]
}

noncomputable def cell_13325 : Cell := { cellDefaults with
  domain := ⟨(164975000000000011 / 200000000000000000 : ℚ), (82500000000000007 / 100000000000000000 : ℚ)⟩
  r := (2294116478121 / 5000000000000 : ℚ)
  w := (13253808498511 / 10000000000000 : ℚ)
  center := (13199000000000001 / 16000000000000000 : ℚ)
  supportValue := (1189573742004097 / 5000000000000000 : ℚ)
  supportSlope := (-342462673509617 / 400000000000000 : ℚ)
  oldCenter := (1189573742004097 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1897
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617]
}

noncomputable def cell_13326 : Cell := { cellDefaults with
  domain := ⟨(82500000000000007 / 100000000000000000 : ℚ), (165025000000000011 / 200000000000000000 : ℚ)⟩
  r := (45863230558789 / 100000000000000 : ℚ)
  w := (13249741153131 / 10000000000000 : ℚ)
  center := (13201000000000001 / 16000000000000000 : ℚ)
  supportValue := (11904844506713111 / 50000000000000000 : ℚ)
  supportSlope := (-535165692074133 / 625000000000000 : ℚ)
  oldCenter := (11904844506713111 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1898
  oldPieces := [piece_618]
}

noncomputable def cell_13327 : Cell := { cellDefaults with
  domain := ⟨(165025000000000011 / 200000000000000000 : ℚ), (20631250000000001 / 25000000000000000 : ℚ)⟩
  r := (45863230558789 / 100000000000000 : ℚ)
  w := (13249741153131 / 10000000000000 : ℚ)
  center := (330075000000000019 / 400000000000000000 : ℚ)
  supportValue := (11899493945421377 / 50000000000000000 : ℚ)
  supportSlope := (-1711958759988291 / 2000000000000000 : ℚ)
  oldCenter := (11899493945421377 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1898
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617, piece_618]
}

noncomputable def cell_13328 : Cell := { cellDefaults with
  domain := ⟨(20631250000000001 / 25000000000000000 : ℚ), (33015000000000001 / 40000000000000000 : ℚ)⟩
  r := (45863230558789 / 100000000000000 : ℚ)
  w := (13249741153131 / 10000000000000 : ℚ)
  center := (330125000000000013 / 400000000000000000 : ℚ)
  supportValue := (2378828971698399 / 10000000000000000 : ℚ)
  supportSlope := (-4278312061998759 / 5000000000000000 : ℚ)
  oldCenter := (2378828971698399 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1898
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617]
}

noncomputable def cell_13329 : Cell := { cellDefaults with
  domain := ⟨(33015000000000001 / 40000000000000000 : ℚ), (82550000000000001 / 100000000000000000 : ℚ)⟩
  r := (45863230558789 / 100000000000000 : ℚ)
  w := (13249741153131 / 10000000000000 : ℚ)
  center := (330175000000000007 / 400000000000000000 : ℚ)
  supportValue := (23777596323762007 / 100000000000000000 : ℚ)
  supportSlope := (-2138200045303219 / 2500000000000000 : ℚ)
  oldCenter := (23777596323762007 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1898
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617]
}

noncomputable def cell_13330 : Cell := { cellDefaults with
  domain := ⟨(82550000000000001 / 100000000000000000 : ℚ), (33025000000000001 / 40000000000000000 : ℚ)⟩
  r := (22922073010741 / 50000000000000 : ℚ)
  w := (13245672442697 / 10000000000000 : ℚ)
  center := (330225000000000007 / 400000000000000000 : ℚ)
  supportValue := (23795806354020863 / 100000000000000000 : ℚ)
  supportSlope := (-8555335405090543 / 10000000000000000 : ℚ)
  oldCenter := (23795806354020863 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1899
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617, piece_618]
}

noncomputable def cell_13331 : Cell := { cellDefaults with
  domain := ⟨(33025000000000001 / 40000000000000000 : ℚ), (20643750000000001 / 25000000000000000 : ℚ)⟩
  r := (22922073010741 / 50000000000000 : ℚ)
  w := (13245672442697 / 10000000000000 : ℚ)
  center := (330275000000000013 / 400000000000000000 : ℚ)
  supportValue := (11892557176498847 / 50000000000000000 : ℚ)
  supportSlope := (-4275843968750179 / 5000000000000000 : ℚ)
  oldCenter := (11892557176498847 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1899
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617]
}

noncomputable def cell_13332 : Cell := { cellDefaults with
  domain := ⟨(20643750000000001 / 25000000000000000 : ℚ), (165175000000000011 / 200000000000000000 : ℚ)⟩
  r := (22922073010741 / 50000000000000 : ℚ)
  w := (13245672442697 / 10000000000000 : ℚ)
  center := (330325000000000019 / 400000000000000000 : ℚ)
  supportValue := (11887213563705247 / 50000000000000000 : ℚ)
  supportSlope := (-8547868154654777 / 10000000000000000 : ℚ)
  oldCenter := (11887213563705247 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1899
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617]
}

noncomputable def cell_13333 : Cell := { cellDefaults with
  domain := ⟨(165175000000000011 / 200000000000000000 : ℚ), (82600000000000007 / 100000000000000000 : ℚ)⟩
  r := (22922073010741 / 50000000000000 : ℚ)
  w := (13245672442697 / 10000000000000 : ℚ)
  center := (13215000000000001 / 16000000000000000 : ℚ)
  supportValue := (11881872337923387 / 50000000000000000 : ℚ)
  supportSlope := (-854404950258911 / 1000000000000000 : ℚ)
  oldCenter := (11881872337923387 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1899
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617]
}

noncomputable def cell_13334 : Cell := { cellDefaults with
  domain := ⟨(82600000000000007 / 100000000000000000 : ℚ), (165225000000000011 / 200000000000000000 : ℚ)⟩
  r := (22912537922161 / 50000000000000 : ℚ)
  w := (13241604394609 / 10000000000000 : ℚ)
  center := (13217000000000001 / 16000000000000000 : ℚ)
  supportValue := (371592893281879 / 1562500000000000 : ℚ)
  supportSlope := (-4273378630038029 / 5000000000000000 : ℚ)
  oldCenter := (371592893281879 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1900
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617]
}

noncomputable def cell_13335 : Cell := { cellDefaults with
  domain := ⟨(165225000000000011 / 200000000000000000 : ℚ), (20656250000000001 / 25000000000000000 : ℚ)⟩
  r := (22912537922161 / 50000000000000 : ℚ)
  w := (13241604394609 / 10000000000000 : ℚ)
  center := (330475000000000019 / 400000000000000000 : ℚ)
  supportValue := (11885632052602539 / 50000000000000000 : ℚ)
  supportSlope := (-4271470815722613 / 5000000000000000 : ℚ)
  oldCenter := (11885632052602539 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1900
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617]
}

noncomputable def cell_13336 : Cell := { cellDefaults with
  domain := ⟨(20656250000000001 / 25000000000000000 : ℚ), (33055000000000001 / 40000000000000000 : ℚ)⟩
  r := (22912537922161 / 50000000000000 : ℚ)
  w := (13241604394609 / 10000000000000 : ℚ)
  center := (330525000000000013 / 400000000000000000 : ℚ)
  supportValue := (11880293904600771 / 50000000000000000 : ℚ)
  supportSlope := (-8539127132124371 / 10000000000000000 : ℚ)
  oldCenter := (11880293904600771 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1900
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617]
}

noncomputable def cell_13337 : Cell := { cellDefaults with
  domain := ⟨(33055000000000001 / 40000000000000000 : ℚ), (82650000000000001 / 100000000000000000 : ℚ)⟩
  r := (22912537922161 / 50000000000000 : ℚ)
  w := (13241604394609 / 10000000000000 : ℚ)
  center := (330575000000000007 / 400000000000000000 : ℚ)
  supportValue := (11874958131716197 / 50000000000000000 : ℚ)
  supportSlope := (-133377092104927 / 156250000000000 : ℚ)
  oldCenter := (11874958131716197 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1900
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616, piece_617]
}

noncomputable def cell_13338 : Cell := { cellDefaults with
  domain := ⟨(82650000000000001 / 100000000000000000 : ℚ), (33065000000000001 / 40000000000000000 : ℚ)⟩
  r := (45806020875313 / 100000000000000 : ℚ)
  w := (3309383854913 / 2500000000000 : ℚ)
  center := (330625000000000007 / 400000000000000000 : ℚ)
  supportValue := (4753621828689299 / 20000000000000000 : ℚ)
  supportSlope := (-1707604245125411 / 2000000000000000 : ℚ)
  oldCenter := (4753621828689299 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1901
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617]
}

noncomputable def cell_13339 : Cell := { cellDefaults with
  domain := ⟨(33065000000000001 / 40000000000000000 : ℚ), (20668750000000001 / 25000000000000000 : ℚ)⟩
  r := (45806020875313 / 100000000000000 : ℚ)
  w := (3309383854913 / 2500000000000 : ℚ)
  center := (330675000000000013 / 400000000000000000 : ℚ)
  supportValue := (11878719497679281 / 50000000000000000 : ℚ)
  supportSlope := (-8534210875578239 / 10000000000000000 : ℚ)
  oldCenter := (11878719497679281 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1901
  oldLo := (23749999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_617]
}

noncomputable def cell_13340 : Cell := { cellDefaults with
  domain := ⟨(20668750000000001 / 25000000000000000 : ℚ), (165375000000000011 / 200000000000000000 : ℚ)⟩
  r := (45806020875313 / 100000000000000 : ℚ)
  w := (3309383854913 / 2500000000000 : ℚ)
  center := (330725000000000019 / 400000000000000000 : ℚ)
  supportValue := (23746772998195229 / 100000000000000000 : ℚ)
  supportSlope := (-8531695675680993 / 10000000000000000 : ℚ)
  oldCenter := (23746772998195229 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1901
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616, piece_617]
}

noncomputable def cell_13341 : Cell := { cellDefaults with
  domain := ⟨(165375000000000011 / 200000000000000000 : ℚ), (82700000000000007 / 100000000000000000 : ℚ)⟩
  r := (45806020875313 / 100000000000000 : ℚ)
  w := (3309383854913 / 2500000000000 : ℚ)
  center := (13231000000000001 / 16000000000000000 : ℚ)
  supportValue := (2967013795369251 / 12500000000000000 : ℚ)
  supportSlope := (-1705639633600393 / 2000000000000000 : ℚ)
  oldCenter := (2967013795369251 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1901
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616]
}

noncomputable def cell_13342 : Cell := { cellDefaults with
  domain := ⟨(82700000000000007 / 100000000000000000 : ℚ), (165425000000000011 / 200000000000000000 : ℚ)⟩
  r := (2861686284079 / 6250000000000 : ℚ)
  w := (6616733550107 / 5000000000000 : ℚ)
  center := (13233000000000001 / 16000000000000000 : ℚ)
  supportValue := (296928699830139 / 1250000000000000 : ℚ)
  supportSlope := (-4264728799011031 / 5000000000000000 : ℚ)
  oldCenter := (296928699830139 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1902
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616, piece_617]
}

noncomputable def cell_13343 : Cell := { cellDefaults with
  domain := ⟨(165425000000000011 / 200000000000000000 : ℚ), (20681250000000001 / 25000000000000000 : ℚ)⟩
  r := (2861686284079 / 6250000000000 : ℚ)
  w := (6616733550107 / 5000000000000 : ℚ)
  center := (330875000000000019 / 400000000000000000 : ℚ)
  supportValue := (11871817766438751 / 50000000000000000 : ℚ)
  supportSlope := (-4263551938135613 / 5000000000000000 : ℚ)
  oldCenter := (11871817766438751 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1902
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616]
}

noncomputable def cell_13344 : Cell := { cellDefaults with
  domain := ⟨(20681250000000001 / 25000000000000000 : ℚ), (33095000000000001 / 40000000000000000 : ℚ)⟩
  r := (2861686284079 / 6250000000000 : ℚ)
  w := (6616733550107 / 5000000000000 : ℚ)
  center := (330925000000000013 / 400000000000000000 : ℚ)
  supportValue := (23732979031931087 / 100000000000000000 : ℚ)
  supportSlope := (-8523292810381689 / 10000000000000000 : ℚ)
  oldCenter := (23732979031931087 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1902
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616]
}

noncomputable def cell_13345 : Cell := { cellDefaults with
  domain := ⟨(33095000000000001 / 40000000000000000 : ℚ), (82750000000000001 / 100000000000000000 : ℚ)⟩
  r := (2861686284079 / 6250000000000 : ℚ)
  w := (6616733550107 / 5000000000000 : ℚ)
  center := (330975000000000007 / 400000000000000000 : ℚ)
  supportValue := (11861163647049759 / 50000000000000000 : ℚ)
  supportSlope := (-4259741447590293 / 5000000000000000 : ℚ)
  oldCenter := (11861163647049759 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1902
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616]
}

noncomputable def cell_13346 : Cell := { cellDefaults with
  domain := ⟨(82750000000000001 / 100000000000000000 : ℚ), (33105000000000001 / 40000000000000000 : ℚ)⟩
  r := (5720994375897 / 12500000000000 : ℚ)
  w := (13229397655327 / 10000000000000 : ℚ)
  center := (331025000000000007 / 400000000000000000 : ℚ)
  supportValue := (2374050688269261 / 10000000000000000 : ℚ)
  supportSlope := (-8522200641308907 / 10000000000000000 : ℚ)
  oldCenter := (2374050688269261 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1903
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616]
}

noncomputable def cell_13347 : Cell := { cellDefaults with
  domain := ⟨(33105000000000001 / 40000000000000000 : ℚ), (20693750000000001 / 25000000000000000 : ℚ)⟩
  r := (5720994375897 / 12500000000000 : ℚ)
  w := (13229397655327 / 10000000000000 : ℚ)
  center := (331075000000000013 / 400000000000000000 : ℚ)
  supportValue := (23729856508199407 / 100000000000000000 : ℚ)
  supportSlope := (-8518393722759621 / 10000000000000000 : ℚ)
  oldCenter := (23729856508199407 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1903
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616]
}

noncomputable def cell_13348 : Cell := { cellDefaults with
  domain := ⟨(20693750000000001 / 25000000000000000 : ℚ), (165575000000000011 / 200000000000000000 : ℚ)⟩
  r := (5720994375897 / 12500000000000 : ℚ)
  w := (13229397655327 / 10000000000000 : ℚ)
  center := (331125000000000019 / 400000000000000000 : ℚ)
  supportValue := (11859605445818873 / 50000000000000000 : ℚ)
  supportSlope := (-1702917590699089 / 2000000000000000 : ℚ)
  oldCenter := (11859605445818873 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1903
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616]
}

noncomputable def cell_13349 : Cell := { cellDefaults with
  domain := ⟨(165575000000000011 / 200000000000000000 : ℚ), (82800000000000007 / 100000000000000000 : ℚ)⟩
  r := (5720994375897 / 12500000000000 : ℚ)
  w := (13229397655327 / 10000000000000 : ℚ)
  center := (13247000000000001 / 16000000000000000 : ℚ)
  supportValue := (1185428501578507 / 5000000000000000 : ℚ)
  supportSlope := (-8510783334937467 / 10000000000000000 : ℚ)
  oldCenter := (1185428501578507 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1903
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616]
}

theorem check_13300 : cell_13300.check = true := by
  decide +kernel

theorem check_13301 : cell_13301.check = true := by
  decide +kernel

theorem check_13302 : cell_13302.check = true := by
  decide +kernel

theorem check_13303 : cell_13303.check = true := by
  decide +kernel

theorem check_13304 : cell_13304.check = true := by
  decide +kernel

theorem check_13305 : cell_13305.check = true := by
  decide +kernel

theorem check_13306 : cell_13306.check = true := by
  decide +kernel

theorem check_13307 : cell_13307.check = true := by
  decide +kernel

theorem check_13308 : cell_13308.check = true := by
  decide +kernel

theorem check_13309 : cell_13309.check = true := by
  decide +kernel

theorem check_13310 : cell_13310.check = true := by
  decide +kernel

theorem check_13311 : cell_13311.check = true := by
  decide +kernel

theorem check_13312 : cell_13312.check = true := by
  decide +kernel

theorem check_13313 : cell_13313.check = true := by
  decide +kernel

theorem check_13314 : cell_13314.check = true := by
  decide +kernel

theorem check_13315 : cell_13315.check = true := by
  decide +kernel

theorem check_13316 : cell_13316.check = true := by
  decide +kernel

theorem check_13317 : cell_13317.check = true := by
  decide +kernel

theorem check_13318 : cell_13318.check = true := by
  decide +kernel

theorem check_13319 : cell_13319.check = true := by
  decide +kernel

theorem check_13320 : cell_13320.check = true := by
  decide +kernel

theorem check_13321 : cell_13321.check = true := by
  decide +kernel

theorem check_13322 : cell_13322.check = true := by
  decide +kernel

theorem check_13323 : cell_13323.check = true := by
  decide +kernel

theorem check_13324 : cell_13324.check = true := by
  decide +kernel

theorem check_13325 : cell_13325.check = true := by
  decide +kernel

theorem check_13326 : cell_13326.check = true := by
  decide +kernel

theorem check_13327 : cell_13327.check = true := by
  decide +kernel

theorem check_13328 : cell_13328.check = true := by
  decide +kernel

theorem check_13329 : cell_13329.check = true := by
  decide +kernel

theorem check_13330 : cell_13330.check = true := by
  decide +kernel

theorem check_13331 : cell_13331.check = true := by
  decide +kernel

theorem check_13332 : cell_13332.check = true := by
  decide +kernel

theorem check_13333 : cell_13333.check = true := by
  decide +kernel

theorem check_13334 : cell_13334.check = true := by
  decide +kernel

theorem check_13335 : cell_13335.check = true := by
  decide +kernel

theorem check_13336 : cell_13336.check = true := by
  decide +kernel

theorem check_13337 : cell_13337.check = true := by
  decide +kernel

theorem check_13338 : cell_13338.check = true := by
  decide +kernel

theorem check_13339 : cell_13339.check = true := by
  decide +kernel

theorem check_13340 : cell_13340.check = true := by
  decide +kernel

theorem check_13341 : cell_13341.check = true := by
  decide +kernel

theorem check_13342 : cell_13342.check = true := by
  decide +kernel

theorem check_13343 : cell_13343.check = true := by
  decide +kernel

theorem check_13344 : cell_13344.check = true := by
  decide +kernel

theorem check_13345 : cell_13345.check = true := by
  decide +kernel

theorem check_13346 : cell_13346.check = true := by
  decide +kernel

theorem check_13347 : cell_13347.check = true := by
  decide +kernel

theorem check_13348 : cell_13348.check = true := by
  decide +kernel

theorem check_13349 : cell_13349.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13300, cell_13301, cell_13302, cell_13303, cell_13304, cell_13305, cell_13306, cell_13307, cell_13308, cell_13309, cell_13310, cell_13311, cell_13312, cell_13313, cell_13314, cell_13315, cell_13316, cell_13317, cell_13318, cell_13319, cell_13320, cell_13321, cell_13322, cell_13323, cell_13324, cell_13325, cell_13326, cell_13327, cell_13328, cell_13329, cell_13330, cell_13331, cell_13332, cell_13333, cell_13334, cell_13335, cell_13336, cell_13337, cell_13338, cell_13339, cell_13340, cell_13341, cell_13342, cell_13343, cell_13344, cell_13345, cell_13346, cell_13347, cell_13348, cell_13349]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13300, check_13301, check_13302, check_13303, check_13304, check_13305, check_13306, check_13307, check_13308, check_13309, check_13310, check_13311, check_13312, check_13313, check_13314, check_13315, check_13316, check_13317, check_13318, check_13319, check_13320, check_13321, check_13322, check_13323, check_13324, check_13325, check_13326, check_13327, check_13328, check_13329, check_13330, check_13331, check_13332, check_13333, check_13334, check_13335, check_13336, check_13337, check_13338, check_13339, check_13340, check_13341, check_13342, check_13343, check_13344, check_13345, check_13346, check_13347, check_13348, check_13349, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0266

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0266
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0266
open AnalyticBounds.ExpressionCertificate

theorem linked_13300 : Linked cell_13300 pieces := by
  link_source cell_13300 with piece_1890 using piece_1890_mem, piece_619_mem

theorem linked_13301 : Linked cell_13301 pieces := by
  link_source cell_13301 with piece_1891 using piece_1891_mem, piece_619_mem

theorem linked_13302 : Linked cell_13302 pieces := by
  link_source cell_13302 with piece_1891 using piece_1891_mem, piece_619_mem

theorem linked_13303 : Linked cell_13303 pieces := by
  link_source cell_13303 with piece_1891 using piece_1891_mem, piece_619_mem

theorem linked_13304 : Linked cell_13304 pieces := by
  link_source cell_13304 with piece_1891 using piece_1891_mem, piece_619_mem

theorem linked_13305 : Linked cell_13305 pieces := by
  link_source cell_13305 with piece_1892 using piece_1892_mem, piece_619_mem

theorem linked_13306 : Linked cell_13306 pieces := by
  link_source cell_13306 with piece_1892 using piece_1892_mem, piece_619_mem

theorem linked_13307 : Linked cell_13307 pieces := by
  link_source cell_13307 with piece_1892 using piece_1892_mem, piece_619_mem

theorem linked_13308 : Linked cell_13308 pieces := by
  link_source cell_13308 with piece_1892 using piece_1892_mem, ⟨piece_618_mem, piece_619_mem⟩

theorem linked_13309 : Linked cell_13309 pieces := by
  link_source cell_13309 with piece_1893 using piece_1893_mem, piece_619_mem

theorem linked_13310 : Linked cell_13310 pieces := by
  link_source cell_13310 with piece_1894 using piece_1894_mem, piece_619_mem

theorem linked_13311 : Linked cell_13311 pieces := by
  link_source cell_13311 with piece_1894 using piece_1894_mem, ⟨piece_618_mem, piece_619_mem⟩

theorem linked_13312 : Linked cell_13312 pieces := by
  link_source cell_13312 with piece_1894 using piece_1894_mem, piece_618_mem

theorem linked_13313 : Linked cell_13313 pieces := by
  link_source cell_13313 with piece_1894 using piece_1894_mem, piece_618_mem

theorem linked_13314 : Linked cell_13314 pieces := by
  link_source cell_13314 with piece_1895 using piece_1895_mem, ⟨piece_618_mem, piece_619_mem⟩

theorem linked_13315 : Linked cell_13315 pieces := by
  link_source cell_13315 with piece_1895 using piece_1895_mem, piece_618_mem

theorem linked_13316 : Linked cell_13316 pieces := by
  link_source cell_13316 with piece_1895 using piece_1895_mem, piece_618_mem

theorem linked_13317 : Linked cell_13317 pieces := by
  link_source cell_13317 with piece_1895 using piece_1895_mem, piece_618_mem

theorem linked_13318 : Linked cell_13318 pieces := by
  link_source cell_13318 with piece_1896 using piece_1896_mem, piece_618_mem

theorem linked_13319 : Linked cell_13319 pieces := by
  link_source cell_13319 with piece_1896 using piece_1896_mem, piece_618_mem

theorem linked_13320 : Linked cell_13320 pieces := by
  link_source cell_13320 with piece_1896 using piece_1896_mem, piece_618_mem

theorem linked_13321 : Linked cell_13321 pieces := by
  link_source cell_13321 with piece_1896 using piece_1896_mem, piece_618_mem

theorem linked_13322 : Linked cell_13322 pieces := by
  link_source cell_13322 with piece_1897 using piece_1897_mem, piece_618_mem

theorem linked_13323 : Linked cell_13323 pieces := by
  link_source cell_13323 with piece_1897 using piece_1897_mem, piece_618_mem

theorem linked_13324 : Linked cell_13324 pieces := by
  link_source cell_13324 with piece_1897 using piece_1897_mem, ⟨piece_617_mem, piece_618_mem⟩

theorem linked_13325 : Linked cell_13325 pieces := by
  link_source cell_13325 with piece_1897 using piece_1897_mem, piece_617_mem

theorem linked_13326 : Linked cell_13326 pieces := by
  link_source cell_13326 with piece_1898 using piece_1898_mem, piece_618_mem

theorem linked_13327 : Linked cell_13327 pieces := by
  link_source cell_13327 with piece_1898 using piece_1898_mem, ⟨piece_617_mem, piece_618_mem⟩

theorem linked_13328 : Linked cell_13328 pieces := by
  link_source cell_13328 with piece_1898 using piece_1898_mem, piece_617_mem

theorem linked_13329 : Linked cell_13329 pieces := by
  link_source cell_13329 with piece_1898 using piece_1898_mem, piece_617_mem

theorem linked_13330 : Linked cell_13330 pieces := by
  link_source cell_13330 with piece_1899 using piece_1899_mem, ⟨piece_617_mem, piece_618_mem⟩

theorem linked_13331 : Linked cell_13331 pieces := by
  link_source cell_13331 with piece_1899 using piece_1899_mem, piece_617_mem

theorem linked_13332 : Linked cell_13332 pieces := by
  link_source cell_13332 with piece_1899 using piece_1899_mem, piece_617_mem

theorem linked_13333 : Linked cell_13333 pieces := by
  link_source cell_13333 with piece_1899 using piece_1899_mem, piece_617_mem

theorem linked_13334 : Linked cell_13334 pieces := by
  link_source cell_13334 with piece_1900 using piece_1900_mem, piece_617_mem

theorem linked_13335 : Linked cell_13335 pieces := by
  link_source cell_13335 with piece_1900 using piece_1900_mem, piece_617_mem

theorem linked_13336 : Linked cell_13336 pieces := by
  link_source cell_13336 with piece_1900 using piece_1900_mem, piece_617_mem

theorem linked_13337 : Linked cell_13337 pieces := by
  link_source cell_13337 with piece_1900 using piece_1900_mem, ⟨piece_616_mem, piece_617_mem⟩

theorem linked_13338 : Linked cell_13338 pieces := by
  link_source cell_13338 with piece_1901 using piece_1901_mem, piece_617_mem

theorem linked_13339 : Linked cell_13339 pieces := by
  link_source cell_13339 with piece_1901 using piece_1901_mem, piece_617_mem

theorem linked_13340 : Linked cell_13340 pieces := by
  link_source cell_13340 with piece_1901 using piece_1901_mem, ⟨piece_616_mem, piece_617_mem⟩

theorem linked_13341 : Linked cell_13341 pieces := by
  link_source cell_13341 with piece_1901 using piece_1901_mem, piece_616_mem

theorem linked_13342 : Linked cell_13342 pieces := by
  link_source cell_13342 with piece_1902 using piece_1902_mem, ⟨piece_616_mem, piece_617_mem⟩

theorem linked_13343 : Linked cell_13343 pieces := by
  link_source cell_13343 with piece_1902 using piece_1902_mem, piece_616_mem

theorem linked_13344 : Linked cell_13344 pieces := by
  link_source cell_13344 with piece_1902 using piece_1902_mem, piece_616_mem

theorem linked_13345 : Linked cell_13345 pieces := by
  link_source cell_13345 with piece_1902 using piece_1902_mem, piece_616_mem

theorem linked_13346 : Linked cell_13346 pieces := by
  link_source cell_13346 with piece_1903 using piece_1903_mem, piece_616_mem

theorem linked_13347 : Linked cell_13347 pieces := by
  link_source cell_13347 with piece_1903 using piece_1903_mem, piece_616_mem

theorem linked_13348 : Linked cell_13348 pieces := by
  link_source cell_13348 with piece_1903 using piece_1903_mem, piece_616_mem

theorem linked_13349 : Linked cell_13349 pieces := by
  link_source cell_13349 with piece_1903 using piece_1903_mem, piece_616_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0266.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0266.cells,List.forall_mem_cons]
  exact ⟨linked_13300, linked_13301, linked_13302, linked_13303, linked_13304, linked_13305, linked_13306, linked_13307, linked_13308, linked_13309, linked_13310, linked_13311, linked_13312, linked_13313, linked_13314, linked_13315, linked_13316, linked_13317, linked_13318, linked_13319, linked_13320, linked_13321, linked_13322, linked_13323, linked_13324, linked_13325, linked_13326, linked_13327, linked_13328, linked_13329, linked_13330, linked_13331, linked_13332, linked_13333, linked_13334, linked_13335, linked_13336, linked_13337, linked_13338, linked_13339, linked_13340, linked_13341, linked_13342, linked_13343, linked_13344, linked_13345, linked_13346, linked_13347, linked_13348, linked_13349, by simp⟩

theorem covered : covers (328750000000000019 / 400000000000000000 : ℚ) (82800000000000007 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0266.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0266
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0267
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(82800000000000007 / 100000000000000000 : ℚ), (165625000000000011 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (45748943940989 / 100000000000000 : ℚ)
  w := (6612663900699 / 5000000000000 : ℚ)
  center := (13249000000000001 / 16000000000000000 : ℚ)
  supportValue := (23726741828814563 / 100000000000000000 : ℚ)
  supportSlope := (-8513500615602209 / 10000000000000000 : ℚ)
  oldCenter := (23726741828814563 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1904
  oldLo := (23599999999999999 / 100000000000000000 : ℚ)
  oldHi := (23649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_613]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13350 : Cell := { cellDefaults with
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616]
}

noncomputable def cell_13351 : Cell := { cellDefaults with
  domain := ⟨(165625000000000011 / 200000000000000000 : ℚ), (20706250000000001 / 25000000000000000 : ℚ)⟩
  center := (331275000000000019 / 400000000000000000 : ℚ)
  supportValue := (2964512790758159 / 12500000000000000 : ℚ)
  supportSlope := (-2127424740855621 / 2500000000000000 : ℚ)
  oldCenter := (2964512790758159 / 12500000000000000 : ℚ)
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616]
}

noncomputable def cell_13352 : Cell := { cellDefaults with
  domain := ⟨(20706250000000001 / 25000000000000000 : ℚ), (33135000000000001 / 40000000000000000 : ℚ)⟩
  center := (331325000000000013 / 400000000000000000 : ℚ)
  supportValue := (11852733787332287 / 50000000000000000 : ℚ)
  supportSlope := (-2126474615138629 / 2500000000000000 : ℚ)
  oldCenter := (11852733787332287 / 50000000000000000 : ℚ)
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616]
}

noncomputable def cell_13353 : Cell := { cellDefaults with
  domain := ⟨(33135000000000001 / 40000000000000000 : ℚ), (82850000000000001 / 100000000000000000 : ℚ)⟩
  center := (331375000000000007 / 400000000000000000 : ℚ)
  supportValue := (5923709148867433 / 25000000000000000 : ℚ)
  supportSlope := (-8503683605268673 / 10000000000000000 : ℚ)
  oldCenter := (5923709148867433 / 25000000000000000 : ℚ)
  oldLo := (11837988826815643 / 50000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_615, piece_616]
}

noncomputable def cell_13354 : Cell := { cellDefaults with
  domain := ⟨(82850000000000001 / 100000000000000000 : ℚ), (2071368715083799 / 2500000000000000 : ℚ)⟩
  r := (45729948490227 / 100000000000000 : ℚ)
  w := (1652657357737 / 1250000000000 : ℚ)
  center := (165704748603351961 / 200000000000000000 : ℚ)
  supportValue := (1185814479135821 / 5000000000000000 : ℚ)
  supportSlope := (-8505992275614491 / 10000000000000000 : ℚ)
  oldCenter := (1185814479135821 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1905
  oldLo := (23699999999999999 / 100000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_616]
}

noncomputable def cell_13355 : Cell := { cellDefaults with
  domain := ⟨(2071368715083799 / 2500000000000000 : ℚ), (165754748603351967 / 200000000000000000 : ℚ)⟩
  r := (45729948490227 / 100000000000000 : ℚ)
  w := (1652657357737 / 1250000000000 : ℚ)
  center := (331464245810055887 / 400000000000000000 : ℚ)
  supportValue := (1481541967624847 / 6250000000000000 : ℚ)
  supportSlope := (-531390603285807 / 625000000000000 : ℚ)
  oldCenter := (1481541967624847 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1906
  oldLo := (11837988826815643 / 50000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_615, piece_616]
}

noncomputable def cell_13356 : Cell := { cellDefaults with
  domain := ⟨(165754748603351967 / 200000000000000000 : ℚ), (331554748603351981 / 400000000000000000 : ℚ)⟩
  r := (45729948490227 / 100000000000000 : ℚ)
  w := (1652657357737 / 1250000000000 : ℚ)
  center := (132612849162011183 / 160000000000000000 : ℚ)
  supportValue := (4738046082770257 / 20000000000000000 : ℚ)
  supportSlope := (-106228559245531 / 125000000000000 : ℚ)
  oldCenter := (4738046082770257 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1906
  oldLo := (11837988826815643 / 50000000000000000 : ℚ)
  oldHi := (23699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_615]
}

noncomputable def cell_13357 : Cell := { cellDefaults with
  domain := ⟨(331554748603351981 / 400000000000000000 : ℚ), (82900000000000007 / 100000000000000000 : ℚ)⟩
  r := (45729948490227 / 100000000000000 : ℚ)
  w := (1652657357737 / 1250000000000 : ℚ)
  center := (663154748603352009 / 800000000000000000 : ℚ)
  supportValue := (11840309187779477 / 50000000000000000 : ℚ)
  supportSlope := (-849465384595789 / 1000000000000000 : ℚ)
  oldCenter := (11840309187779477 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1906
  oldLo := (23649999999999999 / 100000000000000000 : ℚ)
  oldHi := (23699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_614, piece_615]
}

noncomputable def cell_13358 : Cell := { cellDefaults with
  domain := ⟨(82900000000000007 / 100000000000000000 : ℚ), (331650000000000023 / 400000000000000000 : ℚ)⟩
  r := (2856935371793 / 6250000000000 : ℚ)
  w := (206518547201 / 156250000000 : ℚ)
  center := (663250000000000051 / 800000000000000000 : ℚ)
  supportValue := (23699284800302373 / 100000000000000000 : ℚ)
  supportSlope := (-8497058121720041 / 10000000000000000 : ℚ)
  oldCenter := (23699284800302373 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1907
  oldLo := (11837988826815643 / 50000000000000000 : ℚ)
  oldHi := (23749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_615, piece_616]
}

noncomputable def cell_13359 : Cell := { cellDefaults with
  domain := ⟨(331650000000000023 / 400000000000000000 : ℚ), (165850000000000009 / 200000000000000000 : ℚ)⟩
  r := (2856935371793 / 6250000000000 : ℚ)
  w := (206518547201 / 156250000000 : ℚ)
  center := (663350000000000041 / 800000000000000000 : ℚ)
  supportValue := (740270780595771 / 3125000000000000 : ℚ)
  supportSlope := (-8493955536078307 / 10000000000000000 : ℚ)
  oldCenter := (740270780595771 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1907
  oldLo := (11837988826815643 / 50000000000000000 : ℚ)
  oldHi := (23699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_615]
}

noncomputable def cell_13360 : Cell := { cellDefaults with
  domain := ⟨(165850000000000009 / 200000000000000000 : ℚ), (331750000000000013 / 400000000000000000 : ℚ)⟩
  r := (2856935371793 / 6250000000000 : ℚ)
  w := (206518547201 / 156250000000 : ℚ)
  center := (663450000000000031 / 800000000000000000 : ℚ)
  supportValue := (5919512476181621 / 25000000000000000 : ℚ)
  supportSlope := (-339474114470873 / 400000000000000 : ℚ)
  oldCenter := (5919512476181621 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1907
  oldLo := (23649999999999999 / 100000000000000000 : ℚ)
  oldHi := (23699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_614, piece_615]
}

noncomputable def cell_13361 : Cell := { cellDefaults with
  domain := ⟨(331750000000000013 / 400000000000000000 : ℚ), (41475000000000001 / 50000000000000000 : ℚ)⟩
  r := (2856935371793 / 6250000000000 : ℚ)
  w := (206518547201 / 156250000000 : ℚ)
  center := (663550000000000021 / 800000000000000000 : ℚ)
  supportValue := (4733490128673773 / 20000000000000000 : ℚ)
  supportSlope := (-423754878854863 / 500000000000000 : ℚ)
  oldCenter := (4733490128673773 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1907
  oldLo := (23649999999999999 / 100000000000000000 : ℚ)
  oldHi := (11837988826815643 / 50000000000000000 : ℚ)
  oldPieces := [piece_614]
}

noncomputable def cell_13362 : Cell := { cellDefaults with
  domain := ⟨(41475000000000001 / 50000000000000000 : ℚ), (331850000000000013 / 400000000000000000 : ℚ)⟩
  r := (5711499950223 / 12500000000000 : ℚ)
  w := (3303279131771 / 2500000000000 : ℚ)
  center := (663650000000000021 / 800000000000000000 : ℚ)
  supportValue := (473711776067567 / 2000000000000000 : ℚ)
  supportSlope := (-8489089434448299 / 10000000000000000 : ℚ)
  oldCenter := (473711776067567 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1908
  oldLo := (11837988826815643 / 50000000000000000 : ℚ)
  oldHi := (23699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_615]
}

noncomputable def cell_13363 : Cell := { cellDefaults with
  domain := ⟨(331850000000000013 / 400000000000000000 : ℚ), (165950000000000009 / 200000000000000000 : ℚ)⟩
  r := (5711499950223 / 12500000000000 : ℚ)
  w := (3303279131771 / 2500000000000 : ℚ)
  center := (663750000000000031 / 800000000000000000 : ℚ)
  supportValue := (4734996216404851 / 20000000000000000 : ℚ)
  supportSlope := (-2119700912434973 / 2500000000000000 : ℚ)
  oldCenter := (4734996216404851 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1908
  oldLo := (23649999999999999 / 100000000000000000 : ℚ)
  oldHi := (23699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_614, piece_615]
}

noncomputable def cell_13364 : Cell := { cellDefaults with
  domain := ⟨(165950000000000009 / 200000000000000000 : ℚ), (331950000000000023 / 400000000000000000 : ℚ)⟩
  r := (5711499950223 / 12500000000000 : ℚ)
  w := (3303279131771 / 2500000000000 : ℚ)
  center := (663850000000000041 / 800000000000000000 : ℚ)
  supportValue := (11832195362734947 / 50000000000000000 : ℚ)
  supportSlope := (-4235025014096137 / 5000000000000000 : ℚ)
  oldCenter := (11832195362734947 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1908
  oldLo := (23649999999999999 / 100000000000000000 : ℚ)
  oldHi := (11837988826815643 / 50000000000000000 : ℚ)
  oldPieces := [piece_614]
}

noncomputable def cell_13365 : Cell := { cellDefaults with
  domain := ⟨(331950000000000023 / 400000000000000000 : ℚ), (83000000000000007 / 100000000000000000 : ℚ)⟩
  r := (5711499950223 / 12500000000000 : ℚ)
  w := (3303279131771 / 2500000000000 : ℚ)
  center := (663950000000000051 / 800000000000000000 : ℚ)
  supportValue := (2365380594924679 / 10000000000000000 : ℚ)
  supportSlope := (-1693162714847149 / 2000000000000000 : ℚ)
  oldCenter := (2365380594924679 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1908
  oldHi := (11837988826815643 / 50000000000000000 : ℚ)
  oldPieces := [piece_613, piece_614]
}

noncomputable def cell_13366 : Cell := { cellDefaults with
  domain := ⟨(83000000000000007 / 100000000000000000 : ℚ), (332050000000000023 / 400000000000000000 : ℚ)⟩
  r := (45673047168693 / 100000000000000 : ℚ)
  w := (3302261560889 / 2500000000000 : ℚ)
  center := (664050000000000051 / 800000000000000000 : ℚ)
  supportValue := (11835961061681083 / 50000000000000000 : ℚ)
  supportSlope := (-423535551691321 / 500000000000000 : ℚ)
  oldCenter := (11835961061681083 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1909
  oldLo := (23649999999999999 / 100000000000000000 : ℚ)
  oldHi := (23699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_614, piece_615]
}

noncomputable def cell_13367 : Cell := { cellDefaults with
  domain := ⟨(332050000000000023 / 400000000000000000 : ℚ), (166050000000000009 / 200000000000000000 : ℚ)⟩
  r := (45673047168693 / 100000000000000 : ℚ)
  w := (3302261560889 / 2500000000000 : ℚ)
  center := (664150000000000041 / 800000000000000000 : ℚ)
  supportValue := (2957667258933791 / 12500000000000000 : ℚ)
  supportSlope := (-423250455567057 / 500000000000000 : ℚ)
  oldCenter := (2957667258933791 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1909
  oldLo := (23649999999999999 / 100000000000000000 : ℚ)
  oldHi := (11837988826815643 / 50000000000000000 : ℚ)
  oldPieces := [piece_614]
}

noncomputable def cell_13368 : Cell := { cellDefaults with
  domain := ⟨(166050000000000009 / 200000000000000000 : ℚ), (332150000000000013 / 400000000000000000 : ℚ)⟩
  r := (45673047168693 / 100000000000000 : ℚ)
  w := (3302261560889 / 2500000000000 : ℚ)
  center := (664250000000000031 / 800000000000000000 : ℚ)
  supportValue := (4730151918576661 / 20000000000000000 : ℚ)
  supportSlope := (-8461238282101171 / 10000000000000000 : ℚ)
  oldCenter := (4730151918576661 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1909
  oldHi := (11837988826815643 / 50000000000000000 : ℚ)
  oldPieces := [piece_613, piece_614]
}

noncomputable def cell_13369 : Cell := { cellDefaults with
  domain := ⟨(332150000000000013 / 400000000000000000 : ℚ), (41525000000000001 / 50000000000000000 : ℚ)⟩
  r := (45673047168693 / 100000000000000 : ℚ)
  w := (3302261560889 / 2500000000000 : ℚ)
  center := (664350000000000021 / 800000000000000000 : ℚ)
  supportValue := (11820092414008261 / 50000000000000000 : ℚ)
  supportSlope := (-422884700232149 / 500000000000000 : ℚ)
  oldCenter := (11820092414008261 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1909
  oldPieces := [piece_613]
}

noncomputable def cell_13370 : Cell := { cellDefaults with
  domain := ⟨(41525000000000001 / 50000000000000000 : ℚ), (332250000000000013 / 400000000000000000 : ℚ)⟩
  r := (45654109394187 / 100000000000000 : ℚ)
  w := (6602487053301 / 5000000000000 : ℚ)
  center := (664450000000000021 / 800000000000000000 : ℚ)
  supportValue := (23658295525270553 / 100000000000000000 : ℚ)
  supportSlope := (-8459975748164303 / 10000000000000000 : ℚ)
  oldCenter := (23658295525270553 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1910
  oldLo := (23649999999999999 / 100000000000000000 : ℚ)
  oldHi := (11837988826815643 / 50000000000000000 : ℚ)
  oldPieces := [piece_614]
}

noncomputable def cell_13371 : Cell := { cellDefaults with
  domain := ⟨(332250000000000013 / 400000000000000000 : ℚ), (166150000000000009 / 200000000000000000 : ℚ)⟩
  r := (45654109394187 / 100000000000000 : ℚ)
  w := (6602487053301 / 5000000000000 : ℚ)
  center := (664550000000000031 / 800000000000000000 : ℚ)
  supportValue := (1477982681441071 / 6250000000000000 : ℚ)
  supportSlope := (-4228334232311969 / 5000000000000000 : ℚ)
  oldCenter := (1477982681441071 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1910
  oldHi := (11837988826815643 / 50000000000000000 : ℚ)
  oldPieces := [piece_613, piece_614]
}

noncomputable def cell_13372 : Cell := { cellDefaults with
  domain := ⟨(166150000000000009 / 200000000000000000 : ℚ), (332350000000000023 / 400000000000000000 : ℚ)⟩
  r := (45654109394187 / 100000000000000 : ℚ)
  w := (6602487053301 / 5000000000000 : ℚ)
  center := (664650000000000041 / 800000000000000000 : ℚ)
  supportValue := (2954644285070079 / 12500000000000000 : ℚ)
  supportSlope := (-2113167254335979 / 2500000000000000 : ℚ)
  oldCenter := (2954644285070079 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1910
  oldPieces := [piece_613]
}

noncomputable def cell_13373 : Cell := { cellDefaults with
  domain := ⟨(332350000000000023 / 400000000000000000 : ℚ), (83100000000000007 / 100000000000000000 : ℚ)⟩
  r := (45654109394187 / 100000000000000 : ℚ)
  w := (6602487053301 / 5000000000000 : ℚ)
  center := (664750000000000051 / 800000000000000000 : ℚ)
  supportValue := (23626591222822807 / 100000000000000000 : ℚ)
  supportSlope := (-8448219372953191 / 10000000000000000 : ℚ)
  oldCenter := (23626591222822807 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1910
  oldPieces := [piece_613]
}

noncomputable def cell_13374 : Cell := { cellDefaults with
  domain := ⟨(83100000000000007 / 100000000000000000 : ℚ), (332450000000000023 / 400000000000000000 : ℚ)⟩
  r := (11408796619533 / 25000000000000 : ℚ)
  w := (13200903399071 / 10000000000000 : ℚ)
  center := (664850000000000051 / 800000000000000000 : ℚ)
  supportValue := (11822345004835827 / 50000000000000000 : ℚ)
  supportSlope := (-4226048946965189 / 5000000000000000 : ℚ)
  oldCenter := (11822345004835827 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1911
  oldPieces := [piece_613]
}

noncomputable def cell_13375 : Cell := { cellDefaults with
  domain := ⟨(332450000000000023 / 400000000000000000 : ℚ), (166250000000000009 / 200000000000000000 : ℚ)⟩
  r := (11408796619533 / 25000000000000 : ℚ)
  w := (13200903399071 / 10000000000000 : ℚ)
  center := (664950000000000041 / 800000000000000000 : ℚ)
  supportValue := (5908531916259923 / 25000000000000000 : ℚ)
  supportSlope := (-4223824763614359 / 5000000000000000 : ℚ)
  oldCenter := (5908531916259923 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1911
  oldPieces := [piece_613]
}

noncomputable def cell_13376 : Cell := { cellDefaults with
  domain := ⟨(166250000000000009 / 200000000000000000 : ℚ), (332550000000000013 / 400000000000000000 : ℚ)⟩
  r := (11408796619533 / 25000000000000 : ℚ)
  w := (13200903399071 / 10000000000000 : ℚ)
  center := (665050000000000031 / 800000000000000000 : ℚ)
  supportValue := (2952946359771147 / 12500000000000000 : ℚ)
  supportSlope := (-422160273814407 / 500000000000000 : ℚ)
  oldCenter := (2952946359771147 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1911
  oldPieces := [piece_613]
}

noncomputable def cell_13377 : Cell := { cellDefaults with
  domain := ⟨(332550000000000013 / 400000000000000000 : ℚ), (41575000000000001 / 50000000000000000 : ℚ)⟩
  r := (11408796619533 / 25000000000000 : ℚ)
  w := (13200903399071 / 10000000000000 : ℚ)
  center := (665150000000000021 / 800000000000000000 : ℚ)
  supportValue := (4722603928734117 / 20000000000000000 : ℚ)
  supportSlope := (-4219382866326593 / 5000000000000000 : ℚ)
  oldCenter := (4722603928734117 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1911
  oldPieces := [piece_613]
}

noncomputable def cell_13378 : Cell := { cellDefaults with
  domain := ⟨(41575000000000001 / 50000000000000000 : ℚ), (332650000000000013 / 400000000000000000 : ℚ)⟩
  r := (22808138830343 / 50000000000000 : ℚ)
  w := (2639365954277 / 2000000000000 : ℚ)
  center := (665250000000000021 / 800000000000000000 : ℚ)
  supportValue := (23631113629247089 / 100000000000000000 : ℚ)
  supportSlope := (-4221319210757213 / 5000000000000000 : ℚ)
  oldCenter := (23631113629247089 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1912
  oldPieces := [piece_613]
}

noncomputable def cell_13379 : Cell := { cellDefaults with
  domain := ⟨(332650000000000013 / 400000000000000000 : ℚ), (166350000000000009 / 200000000000000000 : ℚ)⟩
  r := (22808138830343 / 50000000000000 : ℚ)
  w := (2639365954277 / 2000000000000 : ℚ)
  center := (665350000000000031 / 800000000000000000 : ℚ)
  supportValue := (2952570387846257 / 12500000000000000 : ℚ)
  supportSlope := (-1687639990643861 / 2000000000000000 : ℚ)
  oldCenter := (2952570387846257 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1912
  oldPieces := [piece_613]
}

noncomputable def cell_13380 : Cell := { cellDefaults with
  domain := ⟨(166350000000000009 / 200000000000000000 : ℚ), (332750000000000023 / 400000000000000000 : ℚ)⟩
  r := (22808138830343 / 50000000000000 : ℚ)
  w := (2639365954277 / 2000000000000 : ℚ)
  center := (665450000000000041 / 800000000000000000 : ℚ)
  supportValue := (590250453042301 / 2500000000000000 : ℚ)
  supportSlope := (-1686753156730001 / 2000000000000000 : ℚ)
  oldCenter := (590250453042301 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1912
  oldPieces := [piece_613]
}

noncomputable def cell_13381 : Cell := { cellDefaults with
  domain := ⟨(332750000000000023 / 400000000000000000 : ℚ), (83200000000000007 / 100000000000000000 : ℚ)⟩
  r := (22808138830343 / 50000000000000 : ℚ)
  w := (2639365954277 / 2000000000000 : ℚ)
  center := (665550000000000051 / 800000000000000000 : ℚ)
  supportValue := (23599478580626423 / 100000000000000000 : ℚ)
  supportSlope := (-4215106318343343 / 5000000000000000 : ℚ)
  oldCenter := (23599478580626423 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1912
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612, piece_613]
}

noncomputable def cell_13382 : Cell := { cellDefaults with
  domain := ⟨(83200000000000007 / 100000000000000000 : ℚ), (332850000000000023 / 400000000000000000 : ℚ)⟩
  r := (2849836459759 / 6250000000000 : ℚ)
  w := (6596378991827 / 5000000000000 : ℚ)
  center := (665650000000000051 / 800000000000000000 : ℚ)
  supportValue := (472351176892929 / 2000000000000000 : ℚ)
  supportSlope := (-4216599862048453 / 5000000000000000 : ℚ)
  oldCenter := (472351176892929 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1913
  oldPieces := [piece_613]
}

noncomputable def cell_13383 : Cell := { cellDefaults with
  domain := ⟨(332850000000000023 / 400000000000000000 : ℚ), (166450000000000009 / 200000000000000000 : ℚ)⟩
  r := (2849836459759 / 6250000000000 : ℚ)
  w := (6596378991827 / 5000000000000 : ℚ)
  center := (665750000000000041 / 800000000000000000 : ℚ)
  supportValue := (23607020110377291 / 100000000000000000 : ℚ)
  supportSlope := (-8428771119445021 / 10000000000000000 : ℚ)
  oldCenter := (23607020110377291 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1913
  oldPieces := [piece_613]
}

noncomputable def cell_13384 : Cell := { cellDefaults with
  domain := ⟨(166450000000000009 / 200000000000000000 : ℚ), (332950000000000013 / 400000000000000000 : ℚ)⟩
  r := (2849836459759 / 6250000000000 : ℚ)
  w := (6596378991827 / 5000000000000 : ℚ)
  center := (665850000000000031 / 800000000000000000 : ℚ)
  supportValue := (184347548775639 / 781250000000000 : ℚ)
  supportSlope := (-4212837392308243 / 5000000000000000 : ℚ)
  oldCenter := (184347548775639 / 781250000000000 : ℚ)
  newCoefficients := coefficients_1913
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612, piece_613]
}

noncomputable def cell_13385 : Cell := { cellDefaults with
  domain := ⟨(332950000000000013 / 400000000000000000 : ℚ), (41625000000000001 / 50000000000000000 : ℚ)⟩
  r := (2849836459759 / 6250000000000 : ℚ)
  w := (6596378991827 / 5000000000000 : ℚ)
  center := (665950000000000021 / 800000000000000000 : ℚ)
  supportValue := (23585956584088957 / 100000000000000000 : ℚ)
  supportSlope := (-8421511464976337 / 10000000000000000 : ℚ)
  oldCenter := (23585956584088957 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1913
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612]
}

noncomputable def cell_13386 : Cell := { cellDefaults with
  domain := ⟨(41625000000000001 / 50000000000000000 : ℚ), (333050000000000013 / 400000000000000000 : ℚ)⟩
  r := (45578504312183 / 100000000000000 : ℚ)
  w := (6594342326067 / 5000000000000 : ℚ)
  center := (666050000000000021 / 800000000000000000 : ℚ)
  supportValue := (737625962947837 / 3125000000000000 : ℚ)
  supportSlope := (-8423971414378829 / 10000000000000000 : ℚ)
  oldCenter := (737625962947837 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1914
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612, piece_613]
}

noncomputable def cell_13387 : Cell := { cellDefaults with
  domain := ⟨(333050000000000013 / 400000000000000000 : ℚ), (166550000000000009 / 200000000000000000 : ℚ)⟩
  r := (45578504312183 / 100000000000000 : ℚ)
  w := (6594342326067 / 5000000000000 : ℚ)
  center := (666150000000000031 / 800000000000000000 : ℚ)
  supportValue := (2949187826827301 / 12500000000000000 : ℚ)
  supportSlope := (-8420954391809279 / 10000000000000000 : ℚ)
  oldCenter := (2949187826827301 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1914
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612]
}

noncomputable def cell_13388 : Cell := { cellDefaults with
  domain := ⟨(166550000000000009 / 200000000000000000 : ℚ), (333150000000000023 / 400000000000000000 : ℚ)⟩
  r := (45578504312183 / 100000000000000 : ℚ)
  w := (6594342326067 / 5000000000000 : ℚ)
  center := (666250000000000041 / 800000000000000000 : ℚ)
  supportValue := (4716595836609061 / 20000000000000000 : ℚ)
  supportSlope := (-420826607281113 / 500000000000000 : ℚ)
  oldCenter := (4716595836609061 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1914
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612]
}

noncomputable def cell_13389 : Cell := { cellDefaults with
  domain := ⟨(333150000000000023 / 400000000000000000 : ℚ), (83300000000000007 / 100000000000000000 : ℚ)⟩
  r := (45578504312183 / 100000000000000 : ℚ)
  w := (6594342326067 / 5000000000000 : ℚ)
  center := (666350000000000051 / 800000000000000000 : ℚ)
  supportValue := (92079926861733 / 390625000000000 : ℚ)
  supportSlope := (-1682422836401019 / 2000000000000000 : ℚ)
  oldCenter := (92079926861733 / 390625000000000 : ℚ)
  newCoefficients := coefficients_1914
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612]
}

noncomputable def cell_13390 : Cell := { cellDefaults with
  domain := ⟨(83300000000000007 / 100000000000000000 : ℚ), (333250000000000023 / 400000000000000000 : ℚ)⟩
  r := (22779819106229 / 50000000000000 : ℚ)
  w := (824038105207 / 625000000000 : ℚ)
  center := (666450000000000051 / 800000000000000000 : ℚ)
  supportValue := (5897632611044823 / 25000000000000000 : ℚ)
  supportSlope := (-4207988685820817 / 5000000000000000 : ℚ)
  oldCenter := (5897632611044823 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1915
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612]
}

noncomputable def cell_13391 : Cell := { cellDefaults with
  domain := ⟨(333250000000000023 / 400000000000000000 : ℚ), (166650000000000009 / 200000000000000000 : ℚ)⟩
  r := (22779819106229 / 50000000000000 : ℚ)
  w := (824038105207 / 625000000000 : ℚ)
  center := (666550000000000041 / 800000000000000000 : ℚ)
  supportValue := (2358001323043233 / 10000000000000000 : ℚ)
  supportSlope := (-4205780322397577 / 5000000000000000 : ℚ)
  oldCenter := (2358001323043233 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1915
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612]
}

noncomputable def cell_13392 : Cell := { cellDefaults with
  domain := ⟨(166650000000000009 / 200000000000000000 : ℚ), (333350000000000013 / 400000000000000000 : ℚ)⟩
  r := (22779819106229 / 50000000000000 : ℚ)
  w := (824038105207 / 625000000000 : ℚ)
  center := (666650000000000031 / 800000000000000000 : ℚ)
  supportValue := (23569501534922943 / 100000000000000000 : ℚ)
  supportSlope := (-840714819205863 / 1000000000000000 : ℚ)
  oldCenter := (23569501534922943 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1915
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612]
}

noncomputable def cell_13393 : Cell := { cellDefaults with
  domain := ⟨(333350000000000013 / 400000000000000000 : ℚ), (41675000000000001 / 50000000000000000 : ℚ)⟩
  r := (22779819106229 / 50000000000000 : ℚ)
  w := (824038105207 / 625000000000 : ℚ)
  center := (666750000000000021 / 800000000000000000 : ℚ)
  supportValue := (1177949767615689 / 5000000000000000 : ℚ)
  supportSlope := (-8402740005056537 / 10000000000000000 : ℚ)
  oldCenter := (1177949767615689 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1915
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612]
}

noncomputable def cell_13394 : Cell := { cellDefaults with
  domain := ⟨(41675000000000001 / 50000000000000000 : ℚ), (333450000000000013 / 400000000000000000 : ℚ)⟩
  r := (9108157664899 / 20000000000000 : ℚ)
  w := (411891783581 / 312500000000 : ℚ)
  center := (666850000000000021 / 800000000000000000 : ℚ)
  supportValue := (235770478389987 / 1000000000000000 : ℚ)
  supportSlope := (-8406593569020563 / 10000000000000000 : ℚ)
  oldCenter := (235770478389987 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1916
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612]
}

noncomputable def cell_13395 : Cell := { cellDefaults with
  domain := ⟨(333450000000000013 / 400000000000000000 : ℚ), (166750000000000009 / 200000000000000000 : ℚ)⟩
  r := (9108157664899 / 20000000000000 : ℚ)
  w := (411891783581 / 312500000000 : ℚ)
  center := (666950000000000031 / 800000000000000000 : ℚ)
  supportValue := (2356654234888279 / 10000000000000000 : ℚ)
  supportSlope := (-8402186639159529 / 10000000000000000 : ℚ)
  oldCenter := (2356654234888279 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1916
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612]
}

noncomputable def cell_13396 : Cell := { cellDefaults with
  domain := ⟨(166750000000000009 / 200000000000000000 : ℚ), (333550000000000023 / 400000000000000000 : ℚ)⟩
  r := (9108157664899 / 20000000000000 : ℚ)
  w := (411891783581 / 312500000000 : ℚ)
  center := (667050000000000041 / 800000000000000000 : ℚ)
  supportValue := (11778021182384381 / 50000000000000000 : ℚ)
  supportSlope := (-2099445991642147 / 2500000000000000 : ℚ)
  oldCenter := (11778021182384381 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1916
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612]
}

noncomputable def cell_13397 : Cell := { cellDefaults with
  domain := ⟨(333550000000000023 / 400000000000000000 : ℚ), (83400000000000007 / 100000000000000000 : ℚ)⟩
  r := (9108157664899 / 20000000000000 : ℚ)
  w := (411891783581 / 312500000000 : ℚ)
  center := (667150000000000051 / 800000000000000000 : ℚ)
  supportValue := (2354554703715601 / 10000000000000000 : ℚ)
  supportSlope := (-1678970743889617 / 2000000000000000 : ℚ)
  oldCenter := (2354554703715601 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1916
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611, piece_612]
}

noncomputable def cell_13398 : Cell := { cellDefaults with
  domain := ⟨(83400000000000007 / 100000000000000000 : ℚ), (8340782122905027 / 10000000000000000 : ℚ)⟩
  r := (4552195150091 / 10000000000000 : ℚ)
  w := (3294115613497 / 2500000000000 : ℚ)
  center := (166807821229050277 / 200000000000000000 : ℚ)
  supportValue := (4713110979793989 / 20000000000000000 : ℚ)
  supportSlope := (-8398056361230469 / 10000000000000000 : ℚ)
  oldCenter := (4713110979793989 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1917
  oldLo := (23549999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_612]
}

noncomputable def cell_13399 : Cell := { cellDefaults with
  domain := ⟨(8340782122905027 / 10000000000000000 : ℚ), (5214306913407821 / 6250000000000000 : ℚ)⟩
  r := (4552195150091 / 10000000000000 : ℚ)
  w := (3294115613497 / 2500000000000 : ℚ)
  center := (83418365921787703 / 100000000000000000 : ℚ)
  supportValue := (94213760494891 / 400000000000000 : ℚ)
  supportSlope := (-524591173313977 / 625000000000000 : ℚ)
  oldCenter := (94213760494891 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1918
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611, piece_612]
}

theorem check_13350 : cell_13350.check = true := by
  decide +kernel

theorem check_13351 : cell_13351.check = true := by
  decide +kernel

theorem check_13352 : cell_13352.check = true := by
  decide +kernel

theorem check_13353 : cell_13353.check = true := by
  decide +kernel

theorem check_13354 : cell_13354.check = true := by
  decide +kernel

theorem check_13355 : cell_13355.check = true := by
  decide +kernel

theorem check_13356 : cell_13356.check = true := by
  decide +kernel

theorem check_13357 : cell_13357.check = true := by
  decide +kernel

theorem check_13358 : cell_13358.check = true := by
  decide +kernel

theorem check_13359 : cell_13359.check = true := by
  decide +kernel

theorem check_13360 : cell_13360.check = true := by
  decide +kernel

theorem check_13361 : cell_13361.check = true := by
  decide +kernel

theorem check_13362 : cell_13362.check = true := by
  decide +kernel

theorem check_13363 : cell_13363.check = true := by
  decide +kernel

theorem check_13364 : cell_13364.check = true := by
  decide +kernel

theorem check_13365 : cell_13365.check = true := by
  decide +kernel

theorem check_13366 : cell_13366.check = true := by
  decide +kernel

theorem check_13367 : cell_13367.check = true := by
  decide +kernel

theorem check_13368 : cell_13368.check = true := by
  decide +kernel

theorem check_13369 : cell_13369.check = true := by
  decide +kernel

theorem check_13370 : cell_13370.check = true := by
  decide +kernel

theorem check_13371 : cell_13371.check = true := by
  decide +kernel

theorem check_13372 : cell_13372.check = true := by
  decide +kernel

theorem check_13373 : cell_13373.check = true := by
  decide +kernel

theorem check_13374 : cell_13374.check = true := by
  decide +kernel

theorem check_13375 : cell_13375.check = true := by
  decide +kernel

theorem check_13376 : cell_13376.check = true := by
  decide +kernel

theorem check_13377 : cell_13377.check = true := by
  decide +kernel

theorem check_13378 : cell_13378.check = true := by
  decide +kernel

theorem check_13379 : cell_13379.check = true := by
  decide +kernel

theorem check_13380 : cell_13380.check = true := by
  decide +kernel

theorem check_13381 : cell_13381.check = true := by
  decide +kernel

theorem check_13382 : cell_13382.check = true := by
  decide +kernel

theorem check_13383 : cell_13383.check = true := by
  decide +kernel

theorem check_13384 : cell_13384.check = true := by
  decide +kernel

theorem check_13385 : cell_13385.check = true := by
  decide +kernel

theorem check_13386 : cell_13386.check = true := by
  decide +kernel

theorem check_13387 : cell_13387.check = true := by
  decide +kernel

theorem check_13388 : cell_13388.check = true := by
  decide +kernel

theorem check_13389 : cell_13389.check = true := by
  decide +kernel

theorem check_13390 : cell_13390.check = true := by
  decide +kernel

theorem check_13391 : cell_13391.check = true := by
  decide +kernel

theorem check_13392 : cell_13392.check = true := by
  decide +kernel

theorem check_13393 : cell_13393.check = true := by
  decide +kernel

theorem check_13394 : cell_13394.check = true := by
  decide +kernel

theorem check_13395 : cell_13395.check = true := by
  decide +kernel

theorem check_13396 : cell_13396.check = true := by
  decide +kernel

theorem check_13397 : cell_13397.check = true := by
  decide +kernel

theorem check_13398 : cell_13398.check = true := by
  decide +kernel

theorem check_13399 : cell_13399.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13350, cell_13351, cell_13352, cell_13353, cell_13354, cell_13355, cell_13356, cell_13357, cell_13358, cell_13359, cell_13360, cell_13361, cell_13362, cell_13363, cell_13364, cell_13365, cell_13366, cell_13367, cell_13368, cell_13369, cell_13370, cell_13371, cell_13372, cell_13373, cell_13374, cell_13375, cell_13376, cell_13377, cell_13378, cell_13379, cell_13380, cell_13381, cell_13382, cell_13383, cell_13384, cell_13385, cell_13386, cell_13387, cell_13388, cell_13389, cell_13390, cell_13391, cell_13392, cell_13393, cell_13394, cell_13395, cell_13396, cell_13397, cell_13398, cell_13399]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13350, check_13351, check_13352, check_13353, check_13354, check_13355, check_13356, check_13357, check_13358, check_13359, check_13360, check_13361, check_13362, check_13363, check_13364, check_13365, check_13366, check_13367, check_13368, check_13369, check_13370, check_13371, check_13372, check_13373, check_13374, check_13375, check_13376, check_13377, check_13378, check_13379, check_13380, check_13381, check_13382, check_13383, check_13384, check_13385, check_13386, check_13387, check_13388, check_13389, check_13390, check_13391, check_13392, check_13393, check_13394, check_13395, check_13396, check_13397, check_13398, check_13399, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0267

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0267
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0267
open AnalyticBounds.ExpressionCertificate

theorem linked_13350 : Linked cell_13350 pieces := by
  link_source cell_13350 with piece_1904 using piece_1904_mem, piece_616_mem

theorem linked_13351 : Linked cell_13351 pieces := by
  link_source cell_13351 with piece_1904 using piece_1904_mem, piece_616_mem

theorem linked_13352 : Linked cell_13352 pieces := by
  link_source cell_13352 with piece_1904 using piece_1904_mem, piece_616_mem

theorem linked_13353 : Linked cell_13353 pieces := by
  link_source cell_13353 with piece_1904 using piece_1904_mem, ⟨piece_615_mem, piece_616_mem⟩

theorem linked_13354 : Linked cell_13354 pieces := by
  link_source cell_13354 with piece_1905 using piece_1905_mem, piece_616_mem

theorem linked_13355 : Linked cell_13355 pieces := by
  link_source cell_13355 with piece_1906 using piece_1906_mem, ⟨piece_615_mem, piece_616_mem⟩

theorem linked_13356 : Linked cell_13356 pieces := by
  link_source cell_13356 with piece_1906 using piece_1906_mem, piece_615_mem

theorem linked_13357 : Linked cell_13357 pieces := by
  link_source cell_13357 with piece_1906 using piece_1906_mem, ⟨piece_614_mem, piece_615_mem⟩

theorem linked_13358 : Linked cell_13358 pieces := by
  link_source cell_13358 with piece_1907 using piece_1907_mem, ⟨piece_615_mem, piece_616_mem⟩

theorem linked_13359 : Linked cell_13359 pieces := by
  link_source cell_13359 with piece_1907 using piece_1907_mem, piece_615_mem

theorem linked_13360 : Linked cell_13360 pieces := by
  link_source cell_13360 with piece_1907 using piece_1907_mem, ⟨piece_614_mem, piece_615_mem⟩

theorem linked_13361 : Linked cell_13361 pieces := by
  link_source cell_13361 with piece_1907 using piece_1907_mem, piece_614_mem

theorem linked_13362 : Linked cell_13362 pieces := by
  link_source cell_13362 with piece_1908 using piece_1908_mem, piece_615_mem

theorem linked_13363 : Linked cell_13363 pieces := by
  link_source cell_13363 with piece_1908 using piece_1908_mem, ⟨piece_614_mem, piece_615_mem⟩

theorem linked_13364 : Linked cell_13364 pieces := by
  link_source cell_13364 with piece_1908 using piece_1908_mem, piece_614_mem

theorem linked_13365 : Linked cell_13365 pieces := by
  link_source cell_13365 with piece_1908 using piece_1908_mem, ⟨piece_613_mem, piece_614_mem⟩

theorem linked_13366 : Linked cell_13366 pieces := by
  link_source cell_13366 with piece_1909 using piece_1909_mem, ⟨piece_614_mem, piece_615_mem⟩

theorem linked_13367 : Linked cell_13367 pieces := by
  link_source cell_13367 with piece_1909 using piece_1909_mem, piece_614_mem

theorem linked_13368 : Linked cell_13368 pieces := by
  link_source cell_13368 with piece_1909 using piece_1909_mem, ⟨piece_613_mem, piece_614_mem⟩

theorem linked_13369 : Linked cell_13369 pieces := by
  link_source cell_13369 with piece_1909 using piece_1909_mem, piece_613_mem

theorem linked_13370 : Linked cell_13370 pieces := by
  link_source cell_13370 with piece_1910 using piece_1910_mem, piece_614_mem

theorem linked_13371 : Linked cell_13371 pieces := by
  link_source cell_13371 with piece_1910 using piece_1910_mem, ⟨piece_613_mem, piece_614_mem⟩

theorem linked_13372 : Linked cell_13372 pieces := by
  link_source cell_13372 with piece_1910 using piece_1910_mem, piece_613_mem

theorem linked_13373 : Linked cell_13373 pieces := by
  link_source cell_13373 with piece_1910 using piece_1910_mem, piece_613_mem

theorem linked_13374 : Linked cell_13374 pieces := by
  link_source cell_13374 with piece_1911 using piece_1911_mem, piece_613_mem

theorem linked_13375 : Linked cell_13375 pieces := by
  link_source cell_13375 with piece_1911 using piece_1911_mem, piece_613_mem

theorem linked_13376 : Linked cell_13376 pieces := by
  link_source cell_13376 with piece_1911 using piece_1911_mem, piece_613_mem

theorem linked_13377 : Linked cell_13377 pieces := by
  link_source cell_13377 with piece_1911 using piece_1911_mem, piece_613_mem

theorem linked_13378 : Linked cell_13378 pieces := by
  link_source cell_13378 with piece_1912 using piece_1912_mem, piece_613_mem

theorem linked_13379 : Linked cell_13379 pieces := by
  link_source cell_13379 with piece_1912 using piece_1912_mem, piece_613_mem

theorem linked_13380 : Linked cell_13380 pieces := by
  link_source cell_13380 with piece_1912 using piece_1912_mem, piece_613_mem

theorem linked_13381 : Linked cell_13381 pieces := by
  link_source cell_13381 with piece_1912 using piece_1912_mem, ⟨piece_612_mem, piece_613_mem⟩

theorem linked_13382 : Linked cell_13382 pieces := by
  link_source cell_13382 with piece_1913 using piece_1913_mem, piece_613_mem

theorem linked_13383 : Linked cell_13383 pieces := by
  link_source cell_13383 with piece_1913 using piece_1913_mem, piece_613_mem

theorem linked_13384 : Linked cell_13384 pieces := by
  link_source cell_13384 with piece_1913 using piece_1913_mem, ⟨piece_612_mem, piece_613_mem⟩

theorem linked_13385 : Linked cell_13385 pieces := by
  link_source cell_13385 with piece_1913 using piece_1913_mem, piece_612_mem

theorem linked_13386 : Linked cell_13386 pieces := by
  link_source cell_13386 with piece_1914 using piece_1914_mem, ⟨piece_612_mem, piece_613_mem⟩

theorem linked_13387 : Linked cell_13387 pieces := by
  link_source cell_13387 with piece_1914 using piece_1914_mem, piece_612_mem

theorem linked_13388 : Linked cell_13388 pieces := by
  link_source cell_13388 with piece_1914 using piece_1914_mem, piece_612_mem

theorem linked_13389 : Linked cell_13389 pieces := by
  link_source cell_13389 with piece_1914 using piece_1914_mem, piece_612_mem

theorem linked_13390 : Linked cell_13390 pieces := by
  link_source cell_13390 with piece_1915 using piece_1915_mem, piece_612_mem

theorem linked_13391 : Linked cell_13391 pieces := by
  link_source cell_13391 with piece_1915 using piece_1915_mem, piece_612_mem

theorem linked_13392 : Linked cell_13392 pieces := by
  link_source cell_13392 with piece_1915 using piece_1915_mem, piece_612_mem

theorem linked_13393 : Linked cell_13393 pieces := by
  link_source cell_13393 with piece_1915 using piece_1915_mem, piece_612_mem

theorem linked_13394 : Linked cell_13394 pieces := by
  link_source cell_13394 with piece_1916 using piece_1916_mem, piece_612_mem

theorem linked_13395 : Linked cell_13395 pieces := by
  link_source cell_13395 with piece_1916 using piece_1916_mem, piece_612_mem

theorem linked_13396 : Linked cell_13396 pieces := by
  link_source cell_13396 with piece_1916 using piece_1916_mem, piece_612_mem

theorem linked_13397 : Linked cell_13397 pieces := by
  link_source cell_13397 with piece_1916 using piece_1916_mem, ⟨piece_611_mem, piece_612_mem⟩

theorem linked_13398 : Linked cell_13398 pieces := by
  link_source cell_13398 with piece_1917 using piece_1917_mem, piece_612_mem

theorem linked_13399 : Linked cell_13399 pieces := by
  link_source cell_13399 with piece_1918 using piece_1918_mem, ⟨piece_611_mem, piece_612_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0267.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0267.cells,List.forall_mem_cons]
  exact ⟨linked_13350, linked_13351, linked_13352, linked_13353, linked_13354, linked_13355, linked_13356, linked_13357, linked_13358, linked_13359, linked_13360, linked_13361, linked_13362, linked_13363, linked_13364, linked_13365, linked_13366, linked_13367, linked_13368, linked_13369, linked_13370, linked_13371, linked_13372, linked_13373, linked_13374, linked_13375, linked_13376, linked_13377, linked_13378, linked_13379, linked_13380, linked_13381, linked_13382, linked_13383, linked_13384, linked_13385, linked_13386, linked_13387, linked_13388, linked_13389, linked_13390, linked_13391, linked_13392, linked_13393, linked_13394, linked_13395, linked_13396, linked_13397, linked_13398, linked_13399, by simp⟩

theorem covered : covers (82800000000000007 / 100000000000000000 : ℚ) (5214306913407821 / 6250000000000000 : ℚ)
    (SourceCertificates.Chunk0267.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0267
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0268
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(5214306913407821 / 6250000000000000 : ℚ), (41725000000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (45503128892543 / 100000000000000 : ℚ)
  w := (2634477290059 / 2000000000000 : ℚ)
  center := (83439455307262569 / 100000000000000000 : ℚ)
  supportValue := (11767872482078129 / 50000000000000000 : ℚ)
  supportSlope := (-8387141760783889 / 10000000000000000 : ℚ)
  oldCenter := (11767872482078129 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1919
  oldLo := (23449999999999999 / 100000000000000000 : ℚ)
  oldHi := (23499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_610]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13400 : Cell := { cellDefaults with
  r := (4552195150091 / 10000000000000 : ℚ)
  w := (3294115613497 / 2500000000000 : ℚ)
  newCoefficients := coefficients_1918
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611]
}

noncomputable def cell_13401 : Cell := { cellDefaults with
  domain := ⟨(41725000000000001 / 50000000000000000 : ℚ), (166925000000000007 / 200000000000000000 : ℚ)⟩
  center := (333825000000000011 / 400000000000000000 : ℚ)
  supportValue := (588754241314201 / 2500000000000000 : ℚ)
  supportSlope := (-33554656915427 / 40000000000000 : ℚ)
  oldCenter := (588754241314201 / 2500000000000000 : ℚ)
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611, piece_612]
}

noncomputable def cell_13402 : Cell := { cellDefaults with
  domain := ⟨(166925000000000007 / 200000000000000000 : ℚ), (16695000000000001 / 20000000000000000 : ℚ)⟩
  center := (333875000000000017 / 400000000000000000 : ℚ)
  supportValue := (1471230348254937 / 6250000000000000 : ℚ)
  supportSlope := (-1677017909143229 / 2000000000000000 : ℚ)
  oldCenter := (1471230348254937 / 6250000000000000 : ℚ)
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611]
}

noncomputable def cell_13403 : Cell := { cellDefaults with
  domain := ⟨(16695000000000001 / 20000000000000000 : ℚ), (166975000000000013 / 200000000000000000 : ℚ)⟩
  center := (333925000000000023 / 400000000000000000 : ℚ)
  supportValue := (4705841390379189 / 20000000000000000 : ℚ)
  supportSlope := (-8380698778624013 / 10000000000000000 : ℚ)
  oldCenter := (4705841390379189 / 20000000000000000 : ℚ)
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611]
}

noncomputable def cell_13404 : Cell := { cellDefaults with
  domain := ⟨(166975000000000013 / 200000000000000000 : ℚ), (10437500000000001 / 12500000000000000 : ℚ)⟩
  center := (333975000000000029 / 400000000000000000 : ℚ)
  supportValue := (45935026987347 / 195312500000000 : ℚ)
  supportSlope := (-8376312252228563 / 10000000000000000 : ℚ)
  oldCenter := (45935026987347 / 195312500000000 : ℚ)
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611]
}

noncomputable def cell_13405 : Cell := { cellDefaults with
  domain := ⟨(10437500000000001 / 12500000000000000 : ℚ), (167025000000000013 / 200000000000000000 : ℚ)⟩
  r := (5685540213033 / 12500000000000 : ℚ)
  w := (13168312670903 / 10000000000000 : ℚ)
  center := (334025000000000029 / 400000000000000000 : ℚ)
  supportValue := (235367611546087 / 1000000000000000 : ℚ)
  supportSlope := (-167603120913571 / 200000000000000 : ℚ)
  oldCenter := (235367611546087 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1920
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611]
}

noncomputable def cell_13406 : Cell := { cellDefaults with
  domain := ⟨(167025000000000013 / 200000000000000000 : ℚ), (16705000000000001 / 20000000000000000 : ℚ)⟩
  r := (5685540213033 / 12500000000000 : ℚ)
  w := (13168312670903 / 10000000000000 : ℚ)
  center := (334075000000000023 / 400000000000000000 : ℚ)
  supportValue := (23526288697882577 / 100000000000000000 : ℚ)
  supportSlope := (-1675154149678649 / 2000000000000000 : ℚ)
  oldCenter := (23526288697882577 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1920
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611]
}

noncomputable def cell_13407 : Cell := { cellDefaults with
  domain := ⟨(16705000000000001 / 20000000000000000 : ℚ), (167075000000000007 / 200000000000000000 : ℚ)⟩
  r := (5685540213033 / 12500000000000 : ℚ)
  w := (13168312670903 / 10000000000000 : ℚ)
  center := (334125000000000017 / 400000000000000000 : ℚ)
  supportValue := (23515821720133273 / 100000000000000000 : ℚ)
  supportSlope := (-261605927607437 / 312500000000000 : ℚ)
  oldCenter := (23515821720133273 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1920
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611]
}

noncomputable def cell_13408 : Cell := { cellDefaults with
  domain := ⟨(167075000000000007 / 200000000000000000 : ℚ), (41775000000000001 / 50000000000000000 : ℚ)⟩
  r := (5685540213033 / 12500000000000 : ℚ)
  w := (13168312670903 / 10000000000000 : ℚ)
  center := (334175000000000011 / 400000000000000000 : ℚ)
  supportValue := (4701072043215091 / 20000000000000000 : ℚ)
  supportSlope := (-418350642126081 / 500000000000000 : ℚ)
  oldCenter := (4701072043215091 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1920
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611]
}

noncomputable def cell_13409 : Cell := { cellDefaults with
  domain := ⟨(41775000000000001 / 50000000000000000 : ℚ), (167125000000000007 / 200000000000000000 : ℚ)⟩
  r := (22732764357673 / 50000000000000 : ℚ)
  w := (13164236336299 / 10000000000000 : ℚ)
  center := (334225000000000011 / 400000000000000000 : ℚ)
  supportValue := (23523381936641147 / 100000000000000000 : ℚ)
  supportSlope := (-8370850636952971 / 10000000000000000 : ℚ)
  oldCenter := (23523381936641147 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1921
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611]
}

noncomputable def cell_13410 : Cell := { cellDefaults with
  domain := ⟨(167125000000000007 / 200000000000000000 : ℚ), (16715000000000001 / 20000000000000000 : ℚ)⟩
  r := (22732764357673 / 50000000000000 : ℚ)
  w := (13164236336299 / 10000000000000 : ℚ)
  center := (334275000000000017 / 400000000000000000 : ℚ)
  supportValue := (1469557569101527 / 6250000000000000 : ℚ)
  supportSlope := (-8366475023570237 / 10000000000000000 : ℚ)
  oldCenter := (1469557569101527 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1921
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611]
}

noncomputable def cell_13411 : Cell := { cellDefaults with
  domain := ⟨(16715000000000001 / 20000000000000000 : ℚ), (167175000000000013 / 200000000000000000 : ℚ)⟩
  r := (22732764357673 / 50000000000000 : ℚ)
  w := (13164236336299 / 10000000000000 : ℚ)
  center := (334325000000000023 / 400000000000000000 : ℚ)
  supportValue := (587561643537249 / 2500000000000000 : ℚ)
  supportSlope := (-4181261537940571 / 5000000000000000 : ℚ)
  oldCenter := (587561643537249 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1921
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_610, piece_611]
}

noncomputable def cell_13412 : Cell := { cellDefaults with
  domain := ⟨(167175000000000013 / 200000000000000000 : ℚ), (10450000000000001 / 12500000000000000 : ℚ)⟩
  r := (22732764357673 / 50000000000000 : ℚ)
  w := (13164236336299 / 10000000000000 : ℚ)
  center := (334375000000000029 / 400000000000000000 : ℚ)
  supportValue := (1174600716312967 / 5000000000000000 : ℚ)
  supportSlope := (-65307156616067 / 78125000000000 : ℚ)
  oldCenter := (1174600716312967 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1921
  oldPieces := [piece_610]
}

noncomputable def cell_13413 : Cell := { cellDefaults with
  domain := ⟨(10450000000000001 / 12500000000000000 : ℚ), (167225000000000013 / 200000000000000000 : ℚ)⟩
  r := (22723374516779 / 50000000000000 : ℚ)
  w := (13160159632321 / 10000000000000 : ℚ)
  center := (334425000000000029 / 400000000000000000 : ℚ)
  supportValue := (4702005807557913 / 20000000000000000 : ℚ)
  supportSlope := (-4180783580083837 / 5000000000000000 : ℚ)
  oldCenter := (4702005807557913 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1922
  oldLo := (23499999999999999 / 100000000000000000 : ℚ)
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_611]
}

noncomputable def cell_13414 : Cell := { cellDefaults with
  domain := ⟨(167225000000000013 / 200000000000000000 : ℚ), (16725000000000001 / 20000000000000000 : ℚ)⟩
  r := (22723374516779 / 50000000000000 : ℚ)
  w := (13160159632321 / 10000000000000 : ℚ)
  center := (334475000000000023 / 400000000000000000 : ℚ)
  supportValue := (2349957972409321 / 10000000000000000 : ℚ)
  supportSlope := (-8358057183658233 / 10000000000000000 : ℚ)
  oldCenter := (2349957972409321 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1922
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_610, piece_611]
}

noncomputable def cell_13415 : Cell := { cellDefaults with
  domain := ⟨(16725000000000001 / 20000000000000000 : ℚ), (167275000000000007 / 200000000000000000 : ℚ)⟩
  r := (22723374516779 / 50000000000000 : ℚ)
  w := (13160159632321 / 10000000000000 : ℚ)
  center := (334525000000000017 / 400000000000000000 : ℚ)
  supportValue := (4697826794106773 / 20000000000000000 : ℚ)
  supportSlope := (-4177208162226499 / 5000000000000000 : ℚ)
  oldCenter := (4697826794106773 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1922
  oldPieces := [piece_610]
}

noncomputable def cell_13416 : Cell := { cellDefaults with
  domain := ⟨(167275000000000007 / 200000000000000000 : ℚ), (41825000000000001 / 50000000000000000 : ℚ)⟩
  r := (22723374516779 / 50000000000000 : ℚ)
  w := (13160159632321 / 10000000000000 : ℚ)
  center := (334575000000000011 / 400000000000000000 : ℚ)
  supportValue := (469573873513981 / 2000000000000000 : ℚ)
  supportSlope := (-4175025726316729 / 5000000000000000 : ℚ)
  oldCenter := (469573873513981 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1922
  oldPieces := [piece_610]
}

noncomputable def cell_13417 : Cell := { cellDefaults with
  domain := ⟨(41825000000000001 / 50000000000000000 : ℚ), (167325000000000007 / 200000000000000000 : ℚ)⟩
  r := (45427984679763 / 100000000000000 : ℚ)
  w := (2631216624021 / 2000000000000 : ℚ)
  center := (334625000000000011 / 400000000000000000 : ℚ)
  supportValue := (23496698468973773 / 100000000000000000 : ℚ)
  supportSlope := (-8353595869866723 / 10000000000000000 : ℚ)
  oldCenter := (23496698468973773 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1923
  oldHi := (23549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_610, piece_611]
}

noncomputable def cell_13418 : Cell := { cellDefaults with
  domain := ⟨(167325000000000007 / 200000000000000000 : ℚ), (16735000000000001 / 20000000000000000 : ℚ)⟩
  r := (45427984679763 / 100000000000000 : ℚ)
  w := (2631216624021 / 2000000000000 : ℚ)
  center := (334675000000000017 / 400000000000000000 : ℚ)
  supportValue := (11743129418066199 / 50000000000000000 : ℚ)
  supportSlope := (-8349522465497359 / 10000000000000000 : ℚ)
  oldCenter := (11743129418066199 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1923
  oldPieces := [piece_610]
}

noncomputable def cell_13419 : Cell := { cellDefaults with
  domain := ⟨(16735000000000001 / 20000000000000000 : ℚ), (167375000000000013 / 200000000000000000 : ℚ)⟩
  r := (45427984679763 / 100000000000000 : ℚ)
  w := (2631216624021 / 2000000000000 : ℚ)
  center := (334725000000000023 / 400000000000000000 : ℚ)
  supportValue := (586895616380833 / 2500000000000000 : ℚ)
  supportSlope := (-260786344227739 / 312500000000000 : ℚ)
  oldCenter := (586895616380833 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1923
  oldPieces := [piece_610]
}

noncomputable def cell_13420 : Cell := { cellDefaults with
  domain := ⟨(167375000000000013 / 200000000000000000 : ℚ), (10462500000000001 / 12500000000000000 : ℚ)⟩
  r := (45427984679763 / 100000000000000 : ℚ)
  w := (2631216624021 / 2000000000000 : ℚ)
  center := (334775000000000029 / 400000000000000000 : ℚ)
  supportValue := (23465395921023277 / 100000000000000000 : ℚ)
  supportSlope := (-417040388178419 / 500000000000000 : ℚ)
  oldCenter := (23465395921023277 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1923
  oldPieces := [piece_610]
}

noncomputable def cell_13421 : Cell := { cellDefaults with
  domain := ⟨(10462500000000001 / 12500000000000000 : ℚ), (167425000000000013 / 200000000000000000 : ℚ)⟩
  r := (5676154274617 / 12500000000000 : ℚ)
  w := (3288001374067 / 2500000000000 : ℚ)
  center := (334825000000000029 / 400000000000000000 : ℚ)
  supportValue := (2348339286672663 / 10000000000000000 : ℚ)
  supportSlope := (-8344635653575351 / 10000000000000000 : ℚ)
  oldCenter := (2348339286672663 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1924
  oldPieces := [piece_610]
}

noncomputable def cell_13422 : Cell := { cellDefaults with
  domain := ⟨(167425000000000013 / 200000000000000000 : ℚ), (16745000000000001 / 20000000000000000 : ℚ)⟩
  r := (5676154274617 / 12500000000000 : ℚ)
  w := (3288001374067 / 2500000000000 : ℚ)
  center := (334875000000000023 / 400000000000000000 : ℚ)
  supportValue := (23472964790961323 / 100000000000000000 : ℚ)
  supportSlope := (-1668056322803069 / 2000000000000000 : ℚ)
  oldCenter := (23472964790961323 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1924
  oldPieces := [piece_610]
}

noncomputable def cell_13423 : Cell := { cellDefaults with
  domain := ⟨(16745000000000001 / 20000000000000000 : ℚ), (167475000000000007 / 200000000000000000 : ℚ)⟩
  r := (5676154274617 / 12500000000000 : ℚ)
  w := (3288001374067 / 2500000000000 : ℚ)
  center := (334925000000000017 / 400000000000000000 : ℚ)
  supportValue := (11731271077563457 / 50000000000000000 : ℚ)
  supportSlope := (-8335931764730131 / 10000000000000000 : ℚ)
  oldCenter := (11731271077563457 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1924
  oldPieces := [piece_610]
}

noncomputable def cell_13424 : Cell := { cellDefaults with
  domain := ⟨(167475000000000007 / 200000000000000000 : ℚ), (41875000000000001 / 50000000000000000 : ℚ)⟩
  r := (5676154274617 / 12500000000000 : ℚ)
  w := (3288001374067 / 2500000000000 : ℚ)
  center := (334975000000000011 / 400000000000000000 : ℚ)
  supportValue := (11726062476995319 / 50000000000000000 : ℚ)
  supportSlope := (-8332054460132743 / 10000000000000000 : ℚ)
  oldCenter := (11726062476995319 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1924
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609, piece_610]
}

noncomputable def cell_13425 : Cell := { cellDefaults with
  domain := ⟨(41875000000000001 / 50000000000000000 : ℚ), (167525000000000007 / 200000000000000000 : ℚ)⟩
  r := (45390498214451 / 100000000000000 : ℚ)
  w := (6573963920687 / 5000000000000 : ℚ)
  center := (335025000000000011 / 400000000000000000 : ℚ)
  supportValue := (469402228256163 / 2000000000000000 : ℚ)
  supportSlope := (-8335406396574707 / 10000000000000000 : ℚ)
  oldCenter := (469402228256163 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1925
  oldPieces := [piece_610]
}

noncomputable def cell_13426 : Cell := { cellDefaults with
  domain := ⟨(167525000000000007 / 200000000000000000 : ℚ), (16755000000000001 / 20000000000000000 : ℚ)⟩
  r := (45390498214451 / 100000000000000 : ℚ)
  w := (6573963920687 / 5000000000000 : ℚ)
  center := (335075000000000017 / 400000000000000000 : ℚ)
  supportValue := (23459694867625783 / 100000000000000000 : ℚ)
  supportSlope := (-833106193976707 / 1000000000000000 : ℚ)
  oldCenter := (23459694867625783 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1925
  oldPieces := [piece_610]
}

noncomputable def cell_13427 : Cell := { cellDefaults with
  domain := ⟨(16755000000000001 / 20000000000000000 : ℚ), (167575000000000013 / 200000000000000000 : ℚ)⟩
  r := (45390498214451 / 100000000000000 : ℚ)
  w := (6573963920687 / 5000000000000 : ℚ)
  center := (335125000000000023 / 400000000000000000 : ℚ)
  supportValue := (23449283613243543 / 100000000000000000 : ℚ)
  supportSlope := (-8327619897480321 / 10000000000000000 : ℚ)
  oldCenter := (23449283613243543 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1925
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609, piece_610]
}

noncomputable def cell_13428 : Cell := { cellDefaults with
  domain := ⟨(167575000000000013 / 200000000000000000 : ℚ), (10475000000000001 / 12500000000000000 : ℚ)⟩
  r := (45390498214451 / 100000000000000 : ℚ)
  w := (6573963920687 / 5000000000000 : ℚ)
  center := (335175000000000029 / 400000000000000000 : ℚ)
  supportValue := (4687775189954061 / 20000000000000000 : ℚ)
  supportSlope := (-4161978554117541 / 5000000000000000 : ℚ)
  oldCenter := (4687775189954061 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1925
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609]
}

noncomputable def cell_13429 : Cell := { cellDefaults with
  domain := ⟨(10475000000000001 / 12500000000000000 : ℚ), (167625000000000013 / 200000000000000000 : ℚ)⟩
  r := (5671472055787 / 12500000000000 : ℚ)
  w := (13143850365229 / 10000000000000 : ℚ)
  center := (335225000000000029 / 400000000000000000 : ℚ)
  supportValue := (586421349427907 / 2500000000000000 : ℚ)
  supportSlope := (-4163099121133273 / 5000000000000000 : ℚ)
  oldCenter := (586421349427907 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1926
  oldPieces := [piece_610]
}

noncomputable def cell_13430 : Cell := { cellDefaults with
  domain := ⟨(167625000000000013 / 200000000000000000 : ℚ), (16765000000000001 / 20000000000000000 : ℚ)⟩
  r := (5671472055787 / 12500000000000 : ℚ)
  w := (13143850365229 / 10000000000000 : ℚ)
  center := (335275000000000023 / 400000000000000000 : ℚ)
  supportValue := (23446448261797917 / 100000000000000000 : ℚ)
  supportSlope := (-8323189984175027 / 10000000000000000 : ℚ)
  oldCenter := (23446448261797917 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1926
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609, piece_610]
}

noncomputable def cell_13431 : Cell := { cellDefaults with
  domain := ⟨(16765000000000001 / 20000000000000000 : ℚ), (167675000000000007 / 200000000000000000 : ℚ)⟩
  r := (5671472055787 / 12500000000000 : ℚ)
  w := (13143850365229 / 10000000000000 : ℚ)
  center := (335325000000000017 / 400000000000000000 : ℚ)
  supportValue := (5859011667814889 / 25000000000000000 : ℚ)
  supportSlope := (-2079775359775909 / 2500000000000000 : ℚ)
  oldCenter := (5859011667814889 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1926
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609]
}

noncomputable def cell_13432 : Cell := { cellDefaults with
  domain := ⟨(167675000000000007 / 200000000000000000 : ℚ), (41925000000000001 / 50000000000000000 : ℚ)⟩
  r := (5671472055787 / 12500000000000 : ℚ)
  w := (13143850365229 / 10000000000000 : ℚ)
  center := (335375000000000011 / 400000000000000000 : ℚ)
  supportValue := (732051578145521 / 3125000000000000 : ℚ)
  supportSlope := (-8314767577633939 / 10000000000000000 : ℚ)
  oldCenter := (732051578145521 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1926
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609]
}

noncomputable def cell_13433 : Cell := { cellDefaults with
  domain := ⟨(41925000000000001 / 50000000000000000 : ℚ), (167725000000000007 / 200000000000000000 : ℚ)⟩
  r := (9070613671827 / 20000000000000 : ℚ)
  w := (6569885640529 / 5000000000000 : ℚ)
  center := (335425000000000011 / 400000000000000000 : ℚ)
  supportValue := (5860905766034541 / 25000000000000000 : ℚ)
  supportSlope := (-8318585770798027 / 10000000000000000 : ℚ)
  oldCenter := (5860905766034541 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1927
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609]
}

noncomputable def cell_13434 : Cell := { cellDefaults with
  domain := ⟨(167725000000000007 / 200000000000000000 : ℚ), (16775000000000001 / 20000000000000000 : ℚ)⟩
  r := (9070613671827 / 20000000000000 : ℚ)
  w := (6569885640529 / 5000000000000 : ℚ)
  center := (335475000000000017 / 400000000000000000 : ℚ)
  supportValue := (23433227537372311 / 100000000000000000 : ℚ)
  supportSlope := (-4157126553496261 / 5000000000000000 : ℚ)
  oldCenter := (23433227537372311 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1927
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609]
}

noncomputable def cell_13435 : Cell := { cellDefaults with
  domain := ⟨(16775000000000001 / 20000000000000000 : ℚ), (167775000000000013 / 200000000000000000 : ℚ)⟩
  r := (9070613671827 / 20000000000000 : ℚ)
  w := (6569885640529 / 5000000000000 : ℚ)
  center := (335525000000000023 / 400000000000000000 : ℚ)
  supportValue := (23422837423833393 / 100000000000000000 : ℚ)
  supportSlope := (-8309924608281951 / 10000000000000000 : ℚ)
  oldCenter := (23422837423833393 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1927
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609]
}

noncomputable def cell_13436 : Cell := { cellDefaults with
  domain := ⟨(167775000000000013 / 200000000000000000 : ℚ), (10487500000000001 / 12500000000000000 : ℚ)⟩
  r := (9070613671827 / 20000000000000 : ℚ)
  w := (6569885640529 / 5000000000000 : ℚ)
  center := (335575000000000029 / 400000000000000000 : ℚ)
  supportValue := (1463278294895007 / 6250000000000000 : ℚ)
  supportSlope := (-830560026656613 / 1000000000000000 : ℚ)
  oldCenter := (1463278294895007 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1927
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609]
}

noncomputable def cell_13437 : Cell := { cellDefaults with
  domain := ⟨(10487500000000001 / 12500000000000000 : ℚ), (167825000000000013 / 200000000000000000 : ℚ)⟩
  r := (45334375018499 / 100000000000000 : ℚ)
  w := (13135691540541 / 10000000000000 : ℚ)
  center := (335625000000000029 / 400000000000000000 : ℚ)
  supportValue := (23430415618971337 / 100000000000000000 : ℚ)
  supportSlope := (-1661882240532741 / 2000000000000000 : ℚ)
  oldCenter := (23430415618971337 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1928
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609]
}

noncomputable def cell_13438 : Cell := { cellDefaults with
  domain := ⟨(167825000000000013 / 200000000000000000 : ℚ), (16785000000000001 / 20000000000000000 : ℚ)⟩
  r := (45334375018499 / 100000000000000 : ℚ)
  w := (13135691540541 / 10000000000000 : ℚ)
  center := (335675000000000023 / 400000000000000000 : ℚ)
  supportValue := (2342003155447167 / 10000000000000000 : ℚ)
  supportSlope := (-8305088050680639 / 10000000000000000 : ℚ)
  oldCenter := (2342003155447167 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1928
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609]
}

noncomputable def cell_13439 : Cell := { cellDefaults with
  domain := ⟨(16785000000000001 / 20000000000000000 : ℚ), (167875000000000007 / 200000000000000000 : ℚ)⟩
  r := (45334375018499 / 100000000000000 : ℚ)
  w := (13135691540541 / 10000000000000 : ℚ)
  center := (335725000000000017 / 400000000000000000 : ℚ)
  supportValue := (468193057826387 / 2000000000000000 : ℚ)
  supportSlope := (-8300769047521079 / 10000000000000000 : ℚ)
  oldCenter := (468193057826387 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1928
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609]
}

noncomputable def cell_13440 : Cell := { cellDefaults with
  domain := ⟨(167875000000000007 / 200000000000000000 : ℚ), (41975000000000001 / 50000000000000000 : ℚ)⟩
  r := (45334375018499 / 100000000000000 : ℚ)
  w := (13135691540541 / 10000000000000 : ℚ)
  center := (335775000000000011 / 400000000000000000 : ℚ)
  supportValue := (23399279486345403 / 100000000000000000 : ℚ)
  supportSlope := (-2074337621154303 / 2500000000000000 : ℚ)
  oldCenter := (23399279486345403 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1928
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608, piece_609]
}

noncomputable def cell_13441 : Cell := { cellDefaults with
  domain := ⟨(41975000000000001 / 50000000000000000 : ℚ), (419804469273743 / 500000000000000 : ℚ)⟩
  r := (4531569634477 / 10000000000000 : ℚ)
  w := (6565806494623 / 5000000000000 : ℚ)
  center := (83955446927374301 / 100000000000000000 : ℚ)
  supportValue := (23417896243776493 / 100000000000000000 : ℚ)
  supportSlope := (-2075133508735821 / 2500000000000000 : ℚ)
  oldCenter := (23417896243776493 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1929
  oldLo := (23399999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_609]
}

noncomputable def cell_13442 : Cell := { cellDefaults with
  domain := ⟨(419804469273743 / 500000000000000 : ℚ), (2624388966480447 / 3125000000000000 : ℚ)⟩
  r := (4531569634477 / 10000000000000 : ℚ)
  w := (6565806494623 / 5000000000000 : ℚ)
  center := (20992667597765363 / 25000000000000000 : ℚ)
  supportValue := (2340528033547097 / 10000000000000000 : ℚ)
  supportSlope := (-1659111507690689 / 2000000000000000 : ℚ)
  oldCenter := (2340528033547097 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1930
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608, piece_609]
}

noncomputable def cell_13443 : Cell := { cellDefaults with
  domain := ⟨(2624388966480447 / 3125000000000000 : ℚ), (10500000000000001 / 12500000000000000 : ℚ)⟩
  r := (4531569634477 / 10000000000000 : ℚ)
  w := (6565806494623 / 5000000000000 : ℚ)
  center := (20997555865921789 / 25000000000000000 : ℚ)
  supportValue := (233890650120451 / 1000000000000000 : ℚ)
  supportSlope := (-1658021691771311 / 2000000000000000 : ℚ)
  oldCenter := (233890650120451 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1930
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608]
}

noncomputable def cell_13444 : Cell := { cellDefaults with
  domain := ⟨(10500000000000001 / 12500000000000000 : ℚ), (168025000000000013 / 200000000000000000 : ℚ)⟩
  r := (45297030710693 / 100000000000000 : ℚ)
  w := (820470737349 / 625000000000 : ℚ)
  center := (336025000000000029 / 400000000000000000 : ℚ)
  supportValue := (1170203688931219 / 5000000000000000 : ℚ)
  supportSlope := (-8291294408567679 / 10000000000000000 : ℚ)
  oldCenter := (1170203688931219 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1931
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608, piece_609]
}

noncomputable def cell_13445 : Cell := { cellDefaults with
  domain := ⟨(168025000000000013 / 200000000000000000 : ℚ), (16805000000000001 / 20000000000000000 : ℚ)⟩
  r := (45297030710693 / 100000000000000 : ℚ)
  w := (820470737349 / 625000000000 : ℚ)
  center := (336075000000000023 / 400000000000000000 : ℚ)
  supportValue := (365526740108589 / 1562500000000000 : ℚ)
  supportSlope := (-2072097349889139 / 2500000000000000 : ℚ)
  oldCenter := (365526740108589 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1931
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608]
}

noncomputable def cell_13446 : Cell := { cellDefaults with
  domain := ⟨(16805000000000001 / 20000000000000000 : ℚ), (168075000000000007 / 200000000000000000 : ℚ)⟩
  r := (45297030710693 / 100000000000000 : ℚ)
  w := (820470737349 / 625000000000 : ℚ)
  center := (336125000000000017 / 400000000000000000 : ℚ)
  supportValue := (23383353569810483 / 100000000000000000 : ℚ)
  supportSlope := (-331363283419823 / 400000000000000 : ℚ)
  oldCenter := (23383353569810483 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1931
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608]
}

noncomputable def cell_13447 : Cell := { cellDefaults with
  domain := ⟨(168075000000000007 / 200000000000000000 : ℚ), (42025000000000001 / 50000000000000000 : ℚ)⟩
  r := (45297030710693 / 100000000000000 : ℚ)
  w := (820470737349 / 625000000000 : ℚ)
  center := (336175000000000011 / 400000000000000000 : ℚ)
  supportValue := (11686500577115809 / 50000000000000000 : ℚ)
  supportSlope := (-4139889451780173 / 5000000000000000 : ℚ)
  oldCenter := (11686500577115809 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1931
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608]
}

noncomputable def cell_13448 : Cell := { cellDefaults with
  domain := ⟨(42025000000000001 / 50000000000000000 : ℚ), (168125000000000007 / 200000000000000000 : ℚ)⟩
  r := (5659797422649 / 12500000000000 : ℚ)
  w := (6561724826067 / 5000000000000 : ℚ)
  center := (336225000000000011 / 400000000000000000 : ℚ)
  supportValue := (11695470869175857 / 50000000000000000 : ℚ)
  supportSlope := (-4141790432589723 / 5000000000000000 : ℚ)
  oldCenter := (11695470869175857 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1932
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608]
}

noncomputable def cell_13449 : Cell := { cellDefaults with
  domain := ⟨(168125000000000007 / 200000000000000000 : ℚ), (16815000000000001 / 20000000000000000 : ℚ)⟩
  r := (5659797422649 / 12500000000000 : ℚ)
  w := (6561724826067 / 5000000000000 : ℚ)
  center := (336275000000000017 / 400000000000000000 : ℚ)
  supportValue := (5845147487142377 / 25000000000000000 : ℚ)
  supportSlope := (-4139639424755651 / 5000000000000000 : ℚ)
  oldCenter := (5845147487142377 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1932
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608]
}

theorem check_13400 : cell_13400.check = true := by
  decide +kernel

theorem check_13401 : cell_13401.check = true := by
  decide +kernel

theorem check_13402 : cell_13402.check = true := by
  decide +kernel

theorem check_13403 : cell_13403.check = true := by
  decide +kernel

theorem check_13404 : cell_13404.check = true := by
  decide +kernel

theorem check_13405 : cell_13405.check = true := by
  decide +kernel

theorem check_13406 : cell_13406.check = true := by
  decide +kernel

theorem check_13407 : cell_13407.check = true := by
  decide +kernel

theorem check_13408 : cell_13408.check = true := by
  decide +kernel

theorem check_13409 : cell_13409.check = true := by
  decide +kernel

theorem check_13410 : cell_13410.check = true := by
  decide +kernel

theorem check_13411 : cell_13411.check = true := by
  decide +kernel

theorem check_13412 : cell_13412.check = true := by
  decide +kernel

theorem check_13413 : cell_13413.check = true := by
  decide +kernel

theorem check_13414 : cell_13414.check = true := by
  decide +kernel

theorem check_13415 : cell_13415.check = true := by
  decide +kernel

theorem check_13416 : cell_13416.check = true := by
  decide +kernel

theorem check_13417 : cell_13417.check = true := by
  decide +kernel

theorem check_13418 : cell_13418.check = true := by
  decide +kernel

theorem check_13419 : cell_13419.check = true := by
  decide +kernel

theorem check_13420 : cell_13420.check = true := by
  decide +kernel

theorem check_13421 : cell_13421.check = true := by
  decide +kernel

theorem check_13422 : cell_13422.check = true := by
  decide +kernel

theorem check_13423 : cell_13423.check = true := by
  decide +kernel

theorem check_13424 : cell_13424.check = true := by
  decide +kernel

theorem check_13425 : cell_13425.check = true := by
  decide +kernel

theorem check_13426 : cell_13426.check = true := by
  decide +kernel

theorem check_13427 : cell_13427.check = true := by
  decide +kernel

theorem check_13428 : cell_13428.check = true := by
  decide +kernel

theorem check_13429 : cell_13429.check = true := by
  decide +kernel

theorem check_13430 : cell_13430.check = true := by
  decide +kernel

theorem check_13431 : cell_13431.check = true := by
  decide +kernel

theorem check_13432 : cell_13432.check = true := by
  decide +kernel

theorem check_13433 : cell_13433.check = true := by
  decide +kernel

theorem check_13434 : cell_13434.check = true := by
  decide +kernel

theorem check_13435 : cell_13435.check = true := by
  decide +kernel

theorem check_13436 : cell_13436.check = true := by
  decide +kernel

theorem check_13437 : cell_13437.check = true := by
  decide +kernel

theorem check_13438 : cell_13438.check = true := by
  decide +kernel

theorem check_13439 : cell_13439.check = true := by
  decide +kernel

theorem check_13440 : cell_13440.check = true := by
  decide +kernel

theorem check_13441 : cell_13441.check = true := by
  decide +kernel

theorem check_13442 : cell_13442.check = true := by
  decide +kernel

theorem check_13443 : cell_13443.check = true := by
  decide +kernel

theorem check_13444 : cell_13444.check = true := by
  decide +kernel

theorem check_13445 : cell_13445.check = true := by
  decide +kernel

theorem check_13446 : cell_13446.check = true := by
  decide +kernel

theorem check_13447 : cell_13447.check = true := by
  decide +kernel

theorem check_13448 : cell_13448.check = true := by
  decide +kernel

theorem check_13449 : cell_13449.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13400, cell_13401, cell_13402, cell_13403, cell_13404, cell_13405, cell_13406, cell_13407, cell_13408, cell_13409, cell_13410, cell_13411, cell_13412, cell_13413, cell_13414, cell_13415, cell_13416, cell_13417, cell_13418, cell_13419, cell_13420, cell_13421, cell_13422, cell_13423, cell_13424, cell_13425, cell_13426, cell_13427, cell_13428, cell_13429, cell_13430, cell_13431, cell_13432, cell_13433, cell_13434, cell_13435, cell_13436, cell_13437, cell_13438, cell_13439, cell_13440, cell_13441, cell_13442, cell_13443, cell_13444, cell_13445, cell_13446, cell_13447, cell_13448, cell_13449]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13400, check_13401, check_13402, check_13403, check_13404, check_13405, check_13406, check_13407, check_13408, check_13409, check_13410, check_13411, check_13412, check_13413, check_13414, check_13415, check_13416, check_13417, check_13418, check_13419, check_13420, check_13421, check_13422, check_13423, check_13424, check_13425, check_13426, check_13427, check_13428, check_13429, check_13430, check_13431, check_13432, check_13433, check_13434, check_13435, check_13436, check_13437, check_13438, check_13439, check_13440, check_13441, check_13442, check_13443, check_13444, check_13445, check_13446, check_13447, check_13448, check_13449, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0268

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0268
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0268
open AnalyticBounds.ExpressionCertificate

theorem linked_13400 : Linked cell_13400 pieces := by
  link_source cell_13400 with piece_1918 using piece_1918_mem, piece_611_mem

theorem linked_13401 : Linked cell_13401 pieces := by
  link_source cell_13401 with piece_1919 using piece_1919_mem, ⟨piece_611_mem, piece_612_mem⟩

theorem linked_13402 : Linked cell_13402 pieces := by
  link_source cell_13402 with piece_1919 using piece_1919_mem, piece_611_mem

theorem linked_13403 : Linked cell_13403 pieces := by
  link_source cell_13403 with piece_1919 using piece_1919_mem, piece_611_mem

theorem linked_13404 : Linked cell_13404 pieces := by
  link_source cell_13404 with piece_1919 using piece_1919_mem, piece_611_mem

theorem linked_13405 : Linked cell_13405 pieces := by
  link_source cell_13405 with piece_1920 using piece_1920_mem, piece_611_mem

theorem linked_13406 : Linked cell_13406 pieces := by
  link_source cell_13406 with piece_1920 using piece_1920_mem, piece_611_mem

theorem linked_13407 : Linked cell_13407 pieces := by
  link_source cell_13407 with piece_1920 using piece_1920_mem, piece_611_mem

theorem linked_13408 : Linked cell_13408 pieces := by
  link_source cell_13408 with piece_1920 using piece_1920_mem, piece_611_mem

theorem linked_13409 : Linked cell_13409 pieces := by
  link_source cell_13409 with piece_1921 using piece_1921_mem, piece_611_mem

theorem linked_13410 : Linked cell_13410 pieces := by
  link_source cell_13410 with piece_1921 using piece_1921_mem, piece_611_mem

theorem linked_13411 : Linked cell_13411 pieces := by
  link_source cell_13411 with piece_1921 using piece_1921_mem, ⟨piece_610_mem, piece_611_mem⟩

theorem linked_13412 : Linked cell_13412 pieces := by
  link_source cell_13412 with piece_1921 using piece_1921_mem, piece_610_mem

theorem linked_13413 : Linked cell_13413 pieces := by
  link_source cell_13413 with piece_1922 using piece_1922_mem, piece_611_mem

theorem linked_13414 : Linked cell_13414 pieces := by
  link_source cell_13414 with piece_1922 using piece_1922_mem, ⟨piece_610_mem, piece_611_mem⟩

theorem linked_13415 : Linked cell_13415 pieces := by
  link_source cell_13415 with piece_1922 using piece_1922_mem, piece_610_mem

theorem linked_13416 : Linked cell_13416 pieces := by
  link_source cell_13416 with piece_1922 using piece_1922_mem, piece_610_mem

theorem linked_13417 : Linked cell_13417 pieces := by
  link_source cell_13417 with piece_1923 using piece_1923_mem, ⟨piece_610_mem, piece_611_mem⟩

theorem linked_13418 : Linked cell_13418 pieces := by
  link_source cell_13418 with piece_1923 using piece_1923_mem, piece_610_mem

theorem linked_13419 : Linked cell_13419 pieces := by
  link_source cell_13419 with piece_1923 using piece_1923_mem, piece_610_mem

theorem linked_13420 : Linked cell_13420 pieces := by
  link_source cell_13420 with piece_1923 using piece_1923_mem, piece_610_mem

theorem linked_13421 : Linked cell_13421 pieces := by
  link_source cell_13421 with piece_1924 using piece_1924_mem, piece_610_mem

theorem linked_13422 : Linked cell_13422 pieces := by
  link_source cell_13422 with piece_1924 using piece_1924_mem, piece_610_mem

theorem linked_13423 : Linked cell_13423 pieces := by
  link_source cell_13423 with piece_1924 using piece_1924_mem, piece_610_mem

theorem linked_13424 : Linked cell_13424 pieces := by
  link_source cell_13424 with piece_1924 using piece_1924_mem, ⟨piece_609_mem, piece_610_mem⟩

theorem linked_13425 : Linked cell_13425 pieces := by
  link_source cell_13425 with piece_1925 using piece_1925_mem, piece_610_mem

theorem linked_13426 : Linked cell_13426 pieces := by
  link_source cell_13426 with piece_1925 using piece_1925_mem, piece_610_mem

theorem linked_13427 : Linked cell_13427 pieces := by
  link_source cell_13427 with piece_1925 using piece_1925_mem, ⟨piece_609_mem, piece_610_mem⟩

theorem linked_13428 : Linked cell_13428 pieces := by
  link_source cell_13428 with piece_1925 using piece_1925_mem, piece_609_mem

theorem linked_13429 : Linked cell_13429 pieces := by
  link_source cell_13429 with piece_1926 using piece_1926_mem, piece_610_mem

theorem linked_13430 : Linked cell_13430 pieces := by
  link_source cell_13430 with piece_1926 using piece_1926_mem, ⟨piece_609_mem, piece_610_mem⟩

theorem linked_13431 : Linked cell_13431 pieces := by
  link_source cell_13431 with piece_1926 using piece_1926_mem, piece_609_mem

theorem linked_13432 : Linked cell_13432 pieces := by
  link_source cell_13432 with piece_1926 using piece_1926_mem, piece_609_mem

theorem linked_13433 : Linked cell_13433 pieces := by
  link_source cell_13433 with piece_1927 using piece_1927_mem, piece_609_mem

theorem linked_13434 : Linked cell_13434 pieces := by
  link_source cell_13434 with piece_1927 using piece_1927_mem, piece_609_mem

theorem linked_13435 : Linked cell_13435 pieces := by
  link_source cell_13435 with piece_1927 using piece_1927_mem, piece_609_mem

theorem linked_13436 : Linked cell_13436 pieces := by
  link_source cell_13436 with piece_1927 using piece_1927_mem, piece_609_mem

theorem linked_13437 : Linked cell_13437 pieces := by
  link_source cell_13437 with piece_1928 using piece_1928_mem, piece_609_mem

theorem linked_13438 : Linked cell_13438 pieces := by
  link_source cell_13438 with piece_1928 using piece_1928_mem, piece_609_mem

theorem linked_13439 : Linked cell_13439 pieces := by
  link_source cell_13439 with piece_1928 using piece_1928_mem, piece_609_mem

theorem linked_13440 : Linked cell_13440 pieces := by
  link_source cell_13440 with piece_1928 using piece_1928_mem, ⟨piece_608_mem, piece_609_mem⟩

theorem linked_13441 : Linked cell_13441 pieces := by
  link_source cell_13441 with piece_1929 using piece_1929_mem, piece_609_mem

theorem linked_13442 : Linked cell_13442 pieces := by
  link_source cell_13442 with piece_1930 using piece_1930_mem, ⟨piece_608_mem, piece_609_mem⟩

theorem linked_13443 : Linked cell_13443 pieces := by
  link_source cell_13443 with piece_1930 using piece_1930_mem, piece_608_mem

theorem linked_13444 : Linked cell_13444 pieces := by
  link_source cell_13444 with piece_1931 using piece_1931_mem, ⟨piece_608_mem, piece_609_mem⟩

theorem linked_13445 : Linked cell_13445 pieces := by
  link_source cell_13445 with piece_1931 using piece_1931_mem, piece_608_mem

theorem linked_13446 : Linked cell_13446 pieces := by
  link_source cell_13446 with piece_1931 using piece_1931_mem, piece_608_mem

theorem linked_13447 : Linked cell_13447 pieces := by
  link_source cell_13447 with piece_1931 using piece_1931_mem, piece_608_mem

theorem linked_13448 : Linked cell_13448 pieces := by
  link_source cell_13448 with piece_1932 using piece_1932_mem, piece_608_mem

theorem linked_13449 : Linked cell_13449 pieces := by
  link_source cell_13449 with piece_1932 using piece_1932_mem, piece_608_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0268.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0268.cells,List.forall_mem_cons]
  exact ⟨linked_13400, linked_13401, linked_13402, linked_13403, linked_13404, linked_13405, linked_13406, linked_13407, linked_13408, linked_13409, linked_13410, linked_13411, linked_13412, linked_13413, linked_13414, linked_13415, linked_13416, linked_13417, linked_13418, linked_13419, linked_13420, linked_13421, linked_13422, linked_13423, linked_13424, linked_13425, linked_13426, linked_13427, linked_13428, linked_13429, linked_13430, linked_13431, linked_13432, linked_13433, linked_13434, linked_13435, linked_13436, linked_13437, linked_13438, linked_13439, linked_13440, linked_13441, linked_13442, linked_13443, linked_13444, linked_13445, linked_13446, linked_13447, linked_13448, linked_13449, by simp⟩

theorem covered : covers (5214306913407821 / 6250000000000000 : ℚ) (16815000000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0268.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0268
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0269
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(16815000000000001 / 20000000000000000 : ℚ), (168175000000000013 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (22629871573113 / 50000000000000 : ℚ)
  w := (3279842505763 / 2500000000000 : ℚ)
  center := (336325000000000023 / 400000000000000000 : ℚ)
  supportValue := (93480974134919 / 400000000000000 : ℚ)
  supportSlope := (-41374904789277 / 50000000000000 : ℚ)
  oldCenter := (93480974134919 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1933
  oldLo := (11624999999999999 / 50000000000000000 : ℚ)
  oldHi := (11649999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_606]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13450 : Cell := { cellDefaults with
  r := (5659797422649 / 12500000000000 : ℚ)
  w := (6561724826067 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1932
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608]
}

noncomputable def cell_13451 : Cell := { cellDefaults with
  domain := ⟨(168175000000000013 / 200000000000000000 : ℚ), (10512500000000001 / 12500000000000000 : ℚ)⟩
  r := (5659797422649 / 12500000000000 : ℚ)
  w := (6561724826067 / 5000000000000 : ℚ)
  center := (336375000000000029 / 400000000000000000 : ℚ)
  supportValue := (11679951244341169 / 50000000000000000 : ℚ)
  supportSlope := (-8270687182302513 / 10000000000000000 : ℚ)
  oldCenter := (11679951244341169 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1932
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608]
}

noncomputable def cell_13452 : Cell := { cellDefaults with
  domain := ⟨(10512500000000001 / 12500000000000000 : ℚ), (336450000000000027 / 400000000000000000 : ℚ)⟩
  center := (672850000000000059 / 800000000000000000 : ℚ)
  supportValue := (935113094146527 / 4000000000000000 : ℚ)
  supportSlope := (-1654895984830761 / 2000000000000000 : ℚ)
  oldCenter := (935113094146527 / 4000000000000000 : ℚ)
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608]
}

noncomputable def cell_13453 : Cell := { cellDefaults with
  domain := ⟨(336450000000000027 / 400000000000000000 : ℚ), (168250000000000011 / 200000000000000000 : ℚ)⟩
  center := (672950000000000049 / 800000000000000000 : ℚ)
  supportValue := (2920935866772369 / 12500000000000000 : ℚ)
  supportSlope := (-827018731522327 / 1000000000000000 : ℚ)
  oldCenter := (2920935866772369 / 12500000000000000 : ℚ)
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608]
}

noncomputable def cell_13454 : Cell := { cellDefaults with
  domain := ⟨(168250000000000011 / 200000000000000000 : ℚ), (336550000000000017 / 400000000000000000 : ℚ)⟩
  center := (673050000000000039 / 800000000000000000 : ℚ)
  supportValue := (233571518778887 / 1000000000000000 : ℚ)
  supportSlope := (-8265898814388821 / 10000000000000000 : ℚ)
  oldCenter := (233571518778887 / 1000000000000000 : ℚ)
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608]
}

noncomputable def cell_13455 : Cell := { cellDefaults with
  domain := ⟨(336550000000000017 / 400000000000000000 : ℚ), (84150000000000003 / 100000000000000000 : ℚ)⟩
  center := (673150000000000029 / 800000000000000000 : ℚ)
  supportValue := (1167341078781107 / 5000000000000000 : ℚ)
  supportSlope := (-8262879720747067 / 10000000000000000 : ℚ)
  oldCenter := (1167341078781107 / 5000000000000000 : ℚ)
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607, piece_608]
}

noncomputable def cell_13456 : Cell := { cellDefaults with
  domain := ⟨(84150000000000003 / 100000000000000000 : ℚ), (336650000000000017 / 400000000000000000 : ℚ)⟩
  r := (5655140015053 / 12500000000000 : ℚ)
  w := (3278822024591 / 2500000000000 : ℚ)
  center := (673250000000000029 / 800000000000000000 : ℚ)
  supportValue := (1168237100875427 / 5000000000000000 : ℚ)
  supportSlope := (-206635034844173 / 250000000000000 : ℚ)
  oldCenter := (1168237100875427 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1934
  oldLo := (23349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_608]
}

noncomputable def cell_13457 : Cell := { cellDefaults with
  domain := ⟨(336650000000000017 / 400000000000000000 : ℚ), (168350000000000011 / 200000000000000000 : ℚ)⟩
  r := (5655140015053 / 12500000000000 : ℚ)
  w := (3278822024591 / 2500000000000 : ℚ)
  center := (673350000000000039 / 800000000000000000 : ℚ)
  supportValue := (11677206470164807 / 50000000000000000 : ℚ)
  supportSlope := (-1652246602228237 / 2000000000000000 : ℚ)
  oldCenter := (11677206470164807 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1934
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607, piece_608]
}

noncomputable def cell_13458 : Cell := { cellDefaults with
  domain := ⟨(168350000000000011 / 200000000000000000 : ℚ), (336750000000000027 / 400000000000000000 : ℚ)⟩
  r := (5655140015053 / 12500000000000 : ℚ)
  w := (3278822024591 / 2500000000000 : ℚ)
  center := (673450000000000049 / 800000000000000000 : ℚ)
  supportValue := (2334408809285849 / 10000000000000000 : ℚ)
  supportSlope := (-8258402372244573 / 10000000000000000 : ℚ)
  oldCenter := (2334408809285849 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1934
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607]
}

noncomputable def cell_13459 : Cell := { cellDefaults with
  domain := ⟨(336750000000000027 / 400000000000000000 : ℚ), (10525000000000001 / 12500000000000000 : ℚ)⟩
  r := (5655140015053 / 12500000000000 : ℚ)
  w := (3278822024591 / 2500000000000 : ℚ)
  center := (673550000000000059 / 800000000000000000 : ℚ)
  supportValue := (2333376776380269 / 10000000000000000 : ℚ)
  supportSlope := (-2063530047279121 / 2500000000000000 : ℚ)
  oldCenter := (2333376776380269 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1934
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607]
}

noncomputable def cell_13460 : Cell := { cellDefaults with
  domain := ⟨(10525000000000001 / 12500000000000000 : ℚ), (336850000000000027 / 400000000000000000 : ℚ)⟩
  r := (22611255456969 / 50000000000000 : ℚ)
  w := (13111204317031 / 10000000000000 : ℚ)
  center := (673650000000000059 / 800000000000000000 : ℚ)
  supportValue := (2335168417815157 / 10000000000000000 : ℚ)
  supportSlope := (-4128436554898109 / 5000000000000000 : ℚ)
  oldCenter := (2335168417815157 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1935
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607, piece_608]
}

noncomputable def cell_13461 : Cell := { cellDefaults with
  domain := ⟨(336850000000000027 / 400000000000000000 : ℚ), (168450000000000011 / 200000000000000000 : ℚ)⟩
  r := (22611255456969 / 50000000000000 : ℚ)
  w := (13111204317031 / 10000000000000 : ℚ)
  center := (673750000000000049 / 800000000000000000 : ℚ)
  supportValue := (23341364778886947 / 100000000000000000 : ℚ)
  supportSlope := (-412681582558513 / 500000000000000 : ℚ)
  oldCenter := (23341364778886947 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1935
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607]
}

noncomputable def cell_13462 : Cell := { cellDefaults with
  domain := ⟨(168450000000000011 / 200000000000000000 : ℚ), (336950000000000017 / 400000000000000000 : ℚ)⟩
  r := (22611255456969 / 50000000000000 : ℚ)
  w := (13111204317031 / 10000000000000 : ℚ)
  center := (673850000000000039 / 800000000000000000 : ℚ)
  supportValue := (4666210081990243 / 20000000000000000 : ℚ)
  supportSlope := (-8249354718935223 / 10000000000000000 : ℚ)
  oldCenter := (4666210081990243 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1935
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607]
}

noncomputable def cell_13463 : Cell := { cellDefaults with
  domain := ⟨(336950000000000017 / 400000000000000000 : ℚ), (84250000000000003 / 100000000000000000 : ℚ)⟩
  r := (22611255456969 / 50000000000000 : ℚ)
  w := (13111204317031 / 10000000000000 : ℚ)
  center := (673950000000000029 / 800000000000000000 : ℚ)
  supportValue := (2332074138462399 / 10000000000000000 : ℚ)
  supportSlope := (-1030635234769531 / 1250000000000000 : ℚ)
  oldCenter := (2332074138462399 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1935
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607]
}

noncomputable def cell_13464 : Cell := { cellDefaults with
  domain := ⟨(84250000000000003 / 100000000000000000 : ℚ), (337050000000000017 / 400000000000000000 : ℚ)⟩
  r := (22601958267837 / 50000000000000 : ℚ)
  w := (13107121655257 / 10000000000000 : ℚ)
  center := (674050000000000029 / 800000000000000000 : ℚ)
  supportValue := (11669322587412087 / 50000000000000000 : ℚ)
  supportSlope := (-1649773218081853 / 2000000000000000 : ℚ)
  oldCenter := (11669322587412087 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1936
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607]
}

noncomputable def cell_13465 : Cell := { cellDefaults with
  domain := ⟨(337050000000000017 / 400000000000000000 : ℚ), (168550000000000011 / 200000000000000000 : ℚ)⟩
  r := (22601958267837 / 50000000000000 : ℚ)
  w := (13107121655257 / 10000000000000 : ℚ)
  center := (674150000000000039 / 800000000000000000 : ℚ)
  supportValue := (2332833675956237 / 10000000000000000 : ℚ)
  supportSlope := (-1648918880461649 / 2000000000000000 : ℚ)
  oldCenter := (2332833675956237 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1936
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607]
}

noncomputable def cell_13466 : Cell := { cellDefaults with
  domain := ⟨(168550000000000011 / 200000000000000000 : ℚ), (337150000000000027 / 400000000000000000 : ℚ)⟩
  r := (22601958267837 / 50000000000000 : ℚ)
  w := (13107121655257 / 10000000000000 : ℚ)
  center := (674250000000000049 / 800000000000000000 : ℚ)
  supportValue := (1165901684067943 / 5000000000000000 : ℚ)
  supportSlope := (-4120163398865927 / 5000000000000000 : ℚ)
  oldCenter := (1165901684067943 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1936
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607]
}

noncomputable def cell_13467 : Cell := { cellDefaults with
  domain := ⟨(337150000000000027 / 400000000000000000 : ℚ), (10537500000000001 / 12500000000000000 : ℚ)⟩
  r := (22601958267837 / 50000000000000 : ℚ)
  w := (13107121655257 / 10000000000000 : ℚ)
  center := (674350000000000059 / 800000000000000000 : ℚ)
  supportValue := (11653867967557073 / 50000000000000000 : ℚ)
  supportSlope := (-8236063268819713 / 10000000000000000 : ℚ)
  oldCenter := (11653867967557073 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1936
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607]
}

noncomputable def cell_13468 : Cell := { cellDefaults with
  domain := ⟨(10537500000000001 / 12500000000000000 : ℚ), (337250000000000027 / 400000000000000000 : ℚ)⟩
  r := (45185336020389 / 100000000000000 : ℚ)
  w := (13103038648939 / 10000000000000 : ℚ)
  center := (674450000000000059 / 800000000000000000 : ℚ)
  supportValue := (2332563047455611 / 10000000000000000 : ℚ)
  supportSlope := (-8239840385161059 / 10000000000000000 : ℚ)
  oldCenter := (2332563047455611 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1937
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607]
}

noncomputable def cell_13469 : Cell := { cellDefaults with
  domain := ⟨(337250000000000027 / 400000000000000000 : ℚ), (168650000000000011 / 200000000000000000 : ℚ)⟩
  r := (45185336020389 / 100000000000000 : ℚ)
  w := (13103038648939 / 10000000000000 : ℚ)
  center := (674550000000000049 / 800000000000000000 : ℚ)
  supportValue := (1165766666780871 / 5000000000000000 : ℚ)
  supportSlope := (-8235577992042599 / 10000000000000000 : ℚ)
  oldCenter := (1165766666780871 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1937
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607]
}

noncomputable def cell_13470 : Cell := { cellDefaults with
  domain := ⟨(168650000000000011 / 200000000000000000 : ℚ), (337350000000000017 / 400000000000000000 : ℚ)⟩
  r := (45185336020389 / 100000000000000 : ℚ)
  w := (13103038648939 / 10000000000000 : ℚ)
  center := (674650000000000039 / 800000000000000000 : ℚ)
  supportValue := (11652520761064067 / 50000000000000000 : ℚ)
  supportSlope := (-8231336276361679 / 10000000000000000 : ℚ)
  oldCenter := (11652520761064067 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1937
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_606, piece_607]
}

noncomputable def cell_13471 : Cell := { cellDefaults with
  domain := ⟨(337350000000000017 / 400000000000000000 : ℚ), (84350000000000003 / 100000000000000000 : ℚ)⟩
  r := (45185336020389 / 100000000000000 : ℚ)
  w := (13103038648939 / 10000000000000 : ℚ)
  center := (674750000000000029 / 800000000000000000 : ℚ)
  supportValue := (11647377016548531 / 50000000000000000 : ℚ)
  supportSlope := (-822862387103911 / 1000000000000000 : ℚ)
  oldCenter := (11647377016548531 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1937
  oldPieces := [piece_606]
}

noncomputable def cell_13472 : Cell := { cellDefaults with
  domain := ⟨(84350000000000003 / 100000000000000000 : ℚ), (337450000000000017 / 400000000000000000 : ℚ)⟩
  r := (22583384713923 / 50000000000000 : ℚ)
  w := (13098953484471 / 10000000000000 : ℚ)
  center := (674850000000000029 / 800000000000000000 : ℚ)
  supportValue := (1165632173655521 / 5000000000000000 : ℚ)
  supportSlope := (-2057709132156987 / 2500000000000000 : ℚ)
  oldCenter := (1165632173655521 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1938
  oldLo := (11649999999999999 / 50000000000000000 : ℚ)
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_607]
}

noncomputable def cell_13473 : Cell := { cellDefaults with
  domain := ⟨(337450000000000017 / 400000000000000000 : ℚ), (168750000000000011 / 200000000000000000 : ℚ)⟩
  r := (22583384713923 / 50000000000000 : ℚ)
  w := (13098953484471 / 10000000000000 : ℚ)
  center := (674950000000000039 / 800000000000000000 : ℚ)
  supportValue := (23302357583200897 / 100000000000000000 : ℚ)
  supportSlope := (-411350345393483 / 500000000000000 : ℚ)
  oldCenter := (23302357583200897 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1938
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_606, piece_607]
}

noncomputable def cell_13474 : Cell := { cellDefaults with
  domain := ⟨(168750000000000011 / 200000000000000000 : ℚ), (337550000000000027 / 400000000000000000 : ℚ)⟩
  r := (22583384713923 / 50000000000000 : ℚ)
  w := (13098953484471 / 10000000000000 : ℚ)
  center := (675050000000000049 / 800000000000000000 : ℚ)
  supportValue := (11646037752108601 / 50000000000000000 : ℚ)
  supportSlope := (-822389027255983 / 1000000000000000 : ℚ)
  oldCenter := (11646037752108601 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1938
  oldPieces := [piece_606]
}

noncomputable def cell_13475 : Cell := { cellDefaults with
  domain := ⟨(337550000000000027 / 400000000000000000 : ℚ), (10550000000000001 / 12500000000000000 : ℚ)⟩
  r := (22583384713923 / 50000000000000 : ℚ)
  w := (13098953484471 / 10000000000000 : ℚ)
  center := (675150000000000059 / 800000000000000000 : ℚ)
  supportValue := (1164089914823909 / 5000000000000000 : ℚ)
  supportSlope := (-8219638192622791 / 10000000000000000 : ℚ)
  oldCenter := (1164089914823909 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1938
  oldPieces := [piece_606]
}

noncomputable def cell_13476 : Cell := { cellDefaults with
  domain := ⟨(10550000000000001 / 12500000000000000 : ℚ), (337650000000000027 / 400000000000000000 : ℚ)⟩
  r := (9029643175347 / 20000000000000 : ℚ)
  w := (3273717167513 / 2500000000000 : ℚ)
  center := (675250000000000059 / 800000000000000000 : ℚ)
  supportValue := (186397444542283 / 800000000000000 : ℚ)
  supportSlope := (-4111341050297279 / 5000000000000000 : ℚ)
  oldCenter := (186397444542283 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1939
  oldHi := (23349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_606, piece_607]
}

noncomputable def cell_13477 : Cell := { cellDefaults with
  domain := ⟨(337650000000000027 / 400000000000000000 : ℚ), (168850000000000011 / 200000000000000000 : ℚ)⟩
  r := (9029643175347 / 20000000000000 : ℚ)
  w := (3273717167513 / 2500000000000 : ℚ)
  center := (675350000000000049 / 800000000000000000 : ℚ)
  supportValue := (11644701977547303 / 50000000000000000 : ℚ)
  supportSlope := (-8219162718129103 / 10000000000000000 : ℚ)
  oldCenter := (11644701977547303 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1939
  oldPieces := [piece_606]
}

noncomputable def cell_13478 : Cell := { cellDefaults with
  domain := ⟨(168850000000000011 / 200000000000000000 : ℚ), (337750000000000017 / 400000000000000000 : ℚ)⟩
  r := (9029643175347 / 20000000000000 : ℚ)
  w := (3273717167513 / 2500000000000 : ℚ)
  center := (675450000000000039 / 800000000000000000 : ℚ)
  supportValue := (11639566326778579 / 50000000000000000 : ℚ)
  supportSlope := (-4107457912705803 / 5000000000000000 : ℚ)
  oldCenter := (11639566326778579 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1939
  oldPieces := [piece_606]
}

noncomputable def cell_13479 : Cell := { cellDefaults with
  domain := ⟨(337750000000000017 / 400000000000000000 : ℚ), (84450000000000003 / 100000000000000000 : ℚ)⟩
  r := (9029643175347 / 20000000000000 : ℚ)
  w := (3273717167513 / 2500000000000 : ℚ)
  center := (675550000000000029 / 800000000000000000 : ℚ)
  supportValue := (23268866658103857 / 100000000000000000 : ℚ)
  supportSlope := (-4105336492040001 / 5000000000000000 : ℚ)
  oldCenter := (23268866658103857 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1939
  oldPieces := [piece_606]
}

noncomputable def cell_13480 : Cell := { cellDefaults with
  domain := ⟨(84450000000000003 / 100000000000000000 : ℚ), (337850000000000017 / 400000000000000000 : ℚ)⟩
  r := (45129676888003 / 100000000000000 : ℚ)
  w := (3272695884761 / 2500000000000 : ℚ)
  center := (675650000000000029 / 800000000000000000 : ℚ)
  supportValue := (291084235337657 / 1250000000000000 : ℚ)
  supportSlope := (-8214441177742127 / 10000000000000000 : ℚ)
  oldCenter := (291084235337657 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1940
  oldPieces := [piece_606]
}

noncomputable def cell_13481 : Cell := { cellDefaults with
  domain := ⟨(337850000000000017 / 400000000000000000 : ℚ), (168950000000000011 / 200000000000000000 : ℚ)⟩
  r := (45129676888003 / 100000000000000 : ℚ)
  w := (3272695884761 / 2500000000000 : ℚ)
  center := (675750000000000039 / 800000000000000000 : ℚ)
  supportValue := (465529468483323 / 2000000000000000 : ℚ)
  supportSlope := (-8210199460990953 / 10000000000000000 : ℚ)
  oldCenter := (465529468483323 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1940
  oldPieces := [piece_606]
}

noncomputable def cell_13482 : Cell := { cellDefaults with
  domain := ⟨(168950000000000011 / 200000000000000000 : ℚ), (337950000000000027 / 400000000000000000 : ℚ)⟩
  r := (45129676888003 / 100000000000000 : ℚ)
  w := (3272695884761 / 2500000000000 : ℚ)
  center := (675850000000000049 / 800000000000000000 : ℚ)
  supportValue := (23266213320938803 / 100000000000000000 : ℚ)
  supportSlope := (-8205961787854111 / 10000000000000000 : ℚ)
  oldCenter := (23266213320938803 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1940
  oldPieces := [piece_606]
}

noncomputable def cell_13483 : Cell := { cellDefaults with
  domain := ⟨(337950000000000027 / 400000000000000000 : ℚ), (10562500000000001 / 12500000000000000 : ℚ)⟩
  r := (45129676888003 / 100000000000000 : ℚ)
  w := (3272695884761 / 2500000000000 : ℚ)
  center := (675950000000000059 / 800000000000000000 : ℚ)
  supportValue := (4651191702456171 / 20000000000000000 : ℚ)
  supportSlope := (-4100864075264477 / 5000000000000000 : ℚ)
  oldCenter := (4651191702456171 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1940
  oldPieces := [piece_606]
}

noncomputable def cell_13484 : Cell := { cellDefaults with
  domain := ⟨(10562500000000001 / 12500000000000000 : ℚ), (2112849162011173 / 2500000000000000 : ℚ)⟩
  r := (45111152718317 / 100000000000000 : ℚ)
  w := (13086697820381 / 10000000000000 : ℚ)
  center := (10563372905027933 / 12500000000000000 : ℚ)
  supportValue := (23273219120576433 / 100000000000000000 : ℚ)
  supportSlope := (-128206887995259 / 156250000000000 : ℚ)
  oldCenter := (23273219120576433 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1941
  oldPieces := [piece_606]
}

noncomputable def cell_13485 : Cell := { cellDefaults with
  domain := ⟨(2112849162011173 / 2500000000000000 : ℚ), (169063966480446923 / 200000000000000000 : ℚ)⟩
  r := (45111152718317 / 100000000000000 : ℚ)
  w := (13086697820381 / 10000000000000 : ℚ)
  center := (338091899441340763 / 400000000000000000 : ℚ)
  supportValue := (23260118219095513 / 100000000000000000 : ℚ)
  supportSlope := (-4099913679622597 / 5000000000000000 : ℚ)
  oldCenter := (23260118219095513 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1942
  oldPieces := [piece_606]
}

noncomputable def cell_13486 : Cell := { cellDefaults with
  domain := ⟨(169063966480446923 / 200000000000000000 : ℚ), (84550000000000003 / 100000000000000000 : ℚ)⟩
  r := (45111152718317 / 100000000000000 : ℚ)
  w := (13086697820381 / 10000000000000 : ℚ)
  center := (338163966480446929 / 400000000000000000 : ℚ)
  supportValue := (232453493752881 / 1000000000000000 : ℚ)
  supportSlope := (-8195002982962873 / 10000000000000000 : ℚ)
  oldCenter := (232453493752881 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1942
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605, piece_606]
}

noncomputable def cell_13487 : Cell := { cellDefaults with
  domain := ⟨(84550000000000003 / 100000000000000000 : ℚ), (169125000000000009 / 200000000000000000 : ℚ)⟩
  r := (45092641866037 / 100000000000000 : ℚ)
  w := (13082611114871 / 10000000000000 : ℚ)
  center := (67645000000000003 / 80000000000000000 : ℚ)
  supportValue := (11630464361767037 / 50000000000000000 : ℚ)
  supportSlope := (-512284898364573 / 625000000000000 : ℚ)
  oldCenter := (11630464361767037 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1943
  oldPieces := [piece_606]
}

noncomputable def cell_13488 : Cell := { cellDefaults with
  domain := ⟨(169125000000000009 / 200000000000000000 : ℚ), (42287500000000003 / 50000000000000000 : ℚ)⟩
  r := (45092641866037 / 100000000000000 : ℚ)
  w := (13082611114871 / 10000000000000 : ℚ)
  center := (338275000000000021 / 400000000000000000 : ℚ)
  supportValue := (363291963479931 / 1562500000000000 : ℚ)
  supportSlope := (-8193008922531403 / 10000000000000000 : ℚ)
  oldCenter := (363291963479931 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1943
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605, piece_606]
}

noncomputable def cell_13489 : Cell := { cellDefaults with
  domain := ⟨(42287500000000003 / 50000000000000000 : ℚ), (33835000000000003 / 40000000000000000 : ℚ)⟩
  r := (45092641866037 / 100000000000000 : ℚ)
  w := (13082611114871 / 10000000000000 : ℚ)
  center := (338325000000000027 / 400000000000000000 : ℚ)
  supportValue := (11620223033575189 / 50000000000000000 : ℚ)
  supportSlope := (-8189664421863879 / 10000000000000000 : ℚ)
  oldCenter := (11620223033575189 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1943
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605]
}

noncomputable def cell_13490 : Cell := { cellDefaults with
  domain := ⟨(33835000000000003 / 40000000000000000 : ℚ), (84600000000000009 / 100000000000000000 : ℚ)⟩
  r := (45092641866037 / 100000000000000 : ℚ)
  w := (13082611114871 / 10000000000000 : ℚ)
  center := (338375000000000033 / 400000000000000000 : ℚ)
  supportValue := (2323021162312701 / 10000000000000000 : ℚ)
  supportSlope := (-409272105442011 / 500000000000000 : ℚ)
  oldCenter := (2323021162312701 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1943
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605]
}

noncomputable def cell_13491 : Cell := { cellDefaults with
  domain := ⟨(84600000000000009 / 100000000000000000 : ℚ), (33845000000000003 / 40000000000000000 : ℚ)⟩
  r := (2253707215811 / 5000000000000 : ℚ)
  w := (13078523507999 / 10000000000000 : ℚ)
  center := (338425000000000033 / 400000000000000000 : ℚ)
  supportValue := (464961242075259 / 2000000000000000 : ℚ)
  supportSlope := (-8188719331575371 / 10000000000000000 : ℚ)
  oldCenter := (464961242075259 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1944
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605, piece_606]
}

noncomputable def cell_13492 : Cell := { cellDefaults with
  domain := ⟨(33845000000000003 / 40000000000000000 : ℚ), (42312500000000003 / 50000000000000000 : ℚ)⟩
  r := (2253707215811 / 5000000000000 : ℚ)
  w := (13078523507999 / 10000000000000 : ℚ)
  center := (338475000000000027 / 400000000000000000 : ℚ)
  supportValue := (11618914118776881 / 50000000000000000 : ℚ)
  supportSlope := (-8184980413142733 / 10000000000000000 : ℚ)
  oldCenter := (11618914118776881 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1944
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605]
}

noncomputable def cell_13493 : Cell := { cellDefaults with
  domain := ⟨(42312500000000003 / 50000000000000000 : ℚ), (169275000000000009 / 200000000000000000 : ℚ)⟩
  r := (2253707215811 / 5000000000000 : ℚ)
  w := (13078523507999 / 10000000000000 : ℚ)
  center := (338525000000000021 / 400000000000000000 : ℚ)
  supportValue := (11613799822667613 / 50000000000000000 : ℚ)
  supportSlope := (-8180763230752767 / 10000000000000000 : ℚ)
  oldCenter := (11613799822667613 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1944
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605]
}

noncomputable def cell_13494 : Cell := { cellDefaults with
  domain := ⟨(169275000000000009 / 200000000000000000 : ℚ), (84650000000000003 / 100000000000000000 : ℚ)⟩
  r := (2253707215811 / 5000000000000 : ℚ)
  w := (13078523507999 / 10000000000000 : ℚ)
  center := (67715000000000003 / 80000000000000000 : ℚ)
  supportValue := (11608688161043823 / 50000000000000000 : ℚ)
  supportSlope := (-8176550060211433 / 10000000000000000 : ℚ)
  oldCenter := (11608688161043823 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1944
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605]
}

noncomputable def cell_13495 : Cell := { cellDefaults with
  domain := ⟨(84650000000000003 / 100000000000000000 : ℚ), (169325000000000009 / 200000000000000000 : ℚ)⟩
  r := (2815978823773 / 6250000000000 : ℚ)
  w := (13074434747229 / 10000000000000 : ℚ)
  center := (67725000000000003 / 80000000000000000 : ℚ)
  supportValue := (23235218337459623 / 100000000000000000 : ℚ)
  supportSlope := (-4090151432318343 / 5000000000000000 : ℚ)
  oldCenter := (23235218337459623 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1945
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605]
}

noncomputable def cell_13496 : Cell := { cellDefaults with
  domain := ⟨(169325000000000009 / 200000000000000000 : ℚ), (42337500000000003 / 50000000000000000 : ℚ)⟩
  r := (2815978823773 / 6250000000000 : ℚ)
  w := (13074434747229 / 10000000000000 : ℚ)
  center := (338675000000000021 / 400000000000000000 : ℚ)
  supportValue := (5806248897244301 / 25000000000000000 : ℚ)
  supportSlope := (-1022011350289997 / 1250000000000000 : ℚ)
  oldCenter := (5806248897244301 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1945
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605]
}

noncomputable def cell_13497 : Cell := { cellDefaults with
  domain := ⟨(42337500000000003 / 50000000000000000 : ℚ), (33875000000000003 / 40000000000000000 : ℚ)⟩
  r := (2815978823773 / 6250000000000 : ℚ)
  w := (13074434747229 / 10000000000000 : ℚ)
  center := (338725000000000027 / 400000000000000000 : ℚ)
  supportValue := (23214778103070421 / 100000000000000000 : ℚ)
  supportSlope := (-8171882744209121 / 10000000000000000 : ℚ)
  oldCenter := (23214778103070421 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1945
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605]
}

noncomputable def cell_13498 : Cell := { cellDefaults with
  domain := ⟨(33875000000000003 / 40000000000000000 : ℚ), (84700000000000009 / 100000000000000000 : ℚ)⟩
  r := (2815978823773 / 6250000000000 : ℚ)
  w := (13074434747229 / 10000000000000 : ℚ)
  center := (338775000000000033 / 400000000000000000 : ℚ)
  supportValue := (11602282937369403 / 50000000000000000 : ℚ)
  supportSlope := (-326710459694329 / 400000000000000 : ℚ)
  oldCenter := (11602282937369403 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1945
  oldLo := (11574999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_604, piece_605]
}

noncomputable def cell_13499 : Cell := { cellDefaults with
  domain := ⟨(84700000000000009 / 100000000000000000 : ℚ), (33885000000000003 / 40000000000000000 : ℚ)⟩
  r := (45037191715669 / 100000000000000 : ℚ)
  w := (13070346176317 / 10000000000000 : ℚ)
  center := (338825000000000033 / 400000000000000000 : ℚ)
  supportValue := (23222397883799617 / 100000000000000000 : ℚ)
  supportSlope := (-1634284840780627 / 2000000000000000 : ℚ)
  oldCenter := (23222397883799617 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1946
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605]
}

theorem check_13450 : cell_13450.check = true := by
  decide +kernel

theorem check_13451 : cell_13451.check = true := by
  decide +kernel

theorem check_13452 : cell_13452.check = true := by
  decide +kernel

theorem check_13453 : cell_13453.check = true := by
  decide +kernel

theorem check_13454 : cell_13454.check = true := by
  decide +kernel

theorem check_13455 : cell_13455.check = true := by
  decide +kernel

theorem check_13456 : cell_13456.check = true := by
  decide +kernel

theorem check_13457 : cell_13457.check = true := by
  decide +kernel

theorem check_13458 : cell_13458.check = true := by
  decide +kernel

theorem check_13459 : cell_13459.check = true := by
  decide +kernel

theorem check_13460 : cell_13460.check = true := by
  decide +kernel

theorem check_13461 : cell_13461.check = true := by
  decide +kernel

theorem check_13462 : cell_13462.check = true := by
  decide +kernel

theorem check_13463 : cell_13463.check = true := by
  decide +kernel

theorem check_13464 : cell_13464.check = true := by
  decide +kernel

theorem check_13465 : cell_13465.check = true := by
  decide +kernel

theorem check_13466 : cell_13466.check = true := by
  decide +kernel

theorem check_13467 : cell_13467.check = true := by
  decide +kernel

theorem check_13468 : cell_13468.check = true := by
  decide +kernel

theorem check_13469 : cell_13469.check = true := by
  decide +kernel

theorem check_13470 : cell_13470.check = true := by
  decide +kernel

theorem check_13471 : cell_13471.check = true := by
  decide +kernel

theorem check_13472 : cell_13472.check = true := by
  decide +kernel

theorem check_13473 : cell_13473.check = true := by
  decide +kernel

theorem check_13474 : cell_13474.check = true := by
  decide +kernel

theorem check_13475 : cell_13475.check = true := by
  decide +kernel

theorem check_13476 : cell_13476.check = true := by
  decide +kernel

theorem check_13477 : cell_13477.check = true := by
  decide +kernel

theorem check_13478 : cell_13478.check = true := by
  decide +kernel

theorem check_13479 : cell_13479.check = true := by
  decide +kernel

theorem check_13480 : cell_13480.check = true := by
  decide +kernel

theorem check_13481 : cell_13481.check = true := by
  decide +kernel

theorem check_13482 : cell_13482.check = true := by
  decide +kernel

theorem check_13483 : cell_13483.check = true := by
  decide +kernel

theorem check_13484 : cell_13484.check = true := by
  decide +kernel

theorem check_13485 : cell_13485.check = true := by
  decide +kernel

theorem check_13486 : cell_13486.check = true := by
  decide +kernel

theorem check_13487 : cell_13487.check = true := by
  decide +kernel

theorem check_13488 : cell_13488.check = true := by
  decide +kernel

theorem check_13489 : cell_13489.check = true := by
  decide +kernel

theorem check_13490 : cell_13490.check = true := by
  decide +kernel

theorem check_13491 : cell_13491.check = true := by
  decide +kernel

theorem check_13492 : cell_13492.check = true := by
  decide +kernel

theorem check_13493 : cell_13493.check = true := by
  decide +kernel

theorem check_13494 : cell_13494.check = true := by
  decide +kernel

theorem check_13495 : cell_13495.check = true := by
  decide +kernel

theorem check_13496 : cell_13496.check = true := by
  decide +kernel

theorem check_13497 : cell_13497.check = true := by
  decide +kernel

theorem check_13498 : cell_13498.check = true := by
  decide +kernel

theorem check_13499 : cell_13499.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13450, cell_13451, cell_13452, cell_13453, cell_13454, cell_13455, cell_13456, cell_13457, cell_13458, cell_13459, cell_13460, cell_13461, cell_13462, cell_13463, cell_13464, cell_13465, cell_13466, cell_13467, cell_13468, cell_13469, cell_13470, cell_13471, cell_13472, cell_13473, cell_13474, cell_13475, cell_13476, cell_13477, cell_13478, cell_13479, cell_13480, cell_13481, cell_13482, cell_13483, cell_13484, cell_13485, cell_13486, cell_13487, cell_13488, cell_13489, cell_13490, cell_13491, cell_13492, cell_13493, cell_13494, cell_13495, cell_13496, cell_13497, cell_13498, cell_13499]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13450, check_13451, check_13452, check_13453, check_13454, check_13455, check_13456, check_13457, check_13458, check_13459, check_13460, check_13461, check_13462, check_13463, check_13464, check_13465, check_13466, check_13467, check_13468, check_13469, check_13470, check_13471, check_13472, check_13473, check_13474, check_13475, check_13476, check_13477, check_13478, check_13479, check_13480, check_13481, check_13482, check_13483, check_13484, check_13485, check_13486, check_13487, check_13488, check_13489, check_13490, check_13491, check_13492, check_13493, check_13494, check_13495, check_13496, check_13497, check_13498, check_13499, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0269

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0269
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0269
open AnalyticBounds.ExpressionCertificate

theorem linked_13450 : Linked cell_13450 pieces := by
  link_source cell_13450 with piece_1932 using piece_1932_mem, piece_608_mem

theorem linked_13451 : Linked cell_13451 pieces := by
  link_source cell_13451 with piece_1932 using piece_1932_mem, piece_608_mem

theorem linked_13452 : Linked cell_13452 pieces := by
  link_source cell_13452 with piece_1933 using piece_1933_mem, piece_608_mem

theorem linked_13453 : Linked cell_13453 pieces := by
  link_source cell_13453 with piece_1933 using piece_1933_mem, piece_608_mem

theorem linked_13454 : Linked cell_13454 pieces := by
  link_source cell_13454 with piece_1933 using piece_1933_mem, piece_608_mem

theorem linked_13455 : Linked cell_13455 pieces := by
  link_source cell_13455 with piece_1933 using piece_1933_mem, ⟨piece_607_mem, piece_608_mem⟩

theorem linked_13456 : Linked cell_13456 pieces := by
  link_source cell_13456 with piece_1934 using piece_1934_mem, piece_608_mem

theorem linked_13457 : Linked cell_13457 pieces := by
  link_source cell_13457 with piece_1934 using piece_1934_mem, ⟨piece_607_mem, piece_608_mem⟩

theorem linked_13458 : Linked cell_13458 pieces := by
  link_source cell_13458 with piece_1934 using piece_1934_mem, piece_607_mem

theorem linked_13459 : Linked cell_13459 pieces := by
  link_source cell_13459 with piece_1934 using piece_1934_mem, piece_607_mem

theorem linked_13460 : Linked cell_13460 pieces := by
  link_source cell_13460 with piece_1935 using piece_1935_mem, ⟨piece_607_mem, piece_608_mem⟩

theorem linked_13461 : Linked cell_13461 pieces := by
  link_source cell_13461 with piece_1935 using piece_1935_mem, piece_607_mem

theorem linked_13462 : Linked cell_13462 pieces := by
  link_source cell_13462 with piece_1935 using piece_1935_mem, piece_607_mem

theorem linked_13463 : Linked cell_13463 pieces := by
  link_source cell_13463 with piece_1935 using piece_1935_mem, piece_607_mem

theorem linked_13464 : Linked cell_13464 pieces := by
  link_source cell_13464 with piece_1936 using piece_1936_mem, piece_607_mem

theorem linked_13465 : Linked cell_13465 pieces := by
  link_source cell_13465 with piece_1936 using piece_1936_mem, piece_607_mem

theorem linked_13466 : Linked cell_13466 pieces := by
  link_source cell_13466 with piece_1936 using piece_1936_mem, piece_607_mem

theorem linked_13467 : Linked cell_13467 pieces := by
  link_source cell_13467 with piece_1936 using piece_1936_mem, piece_607_mem

theorem linked_13468 : Linked cell_13468 pieces := by
  link_source cell_13468 with piece_1937 using piece_1937_mem, piece_607_mem

theorem linked_13469 : Linked cell_13469 pieces := by
  link_source cell_13469 with piece_1937 using piece_1937_mem, piece_607_mem

theorem linked_13470 : Linked cell_13470 pieces := by
  link_source cell_13470 with piece_1937 using piece_1937_mem, ⟨piece_606_mem, piece_607_mem⟩

theorem linked_13471 : Linked cell_13471 pieces := by
  link_source cell_13471 with piece_1937 using piece_1937_mem, piece_606_mem

theorem linked_13472 : Linked cell_13472 pieces := by
  link_source cell_13472 with piece_1938 using piece_1938_mem, piece_607_mem

theorem linked_13473 : Linked cell_13473 pieces := by
  link_source cell_13473 with piece_1938 using piece_1938_mem, ⟨piece_606_mem, piece_607_mem⟩

theorem linked_13474 : Linked cell_13474 pieces := by
  link_source cell_13474 with piece_1938 using piece_1938_mem, piece_606_mem

theorem linked_13475 : Linked cell_13475 pieces := by
  link_source cell_13475 with piece_1938 using piece_1938_mem, piece_606_mem

theorem linked_13476 : Linked cell_13476 pieces := by
  link_source cell_13476 with piece_1939 using piece_1939_mem, ⟨piece_606_mem, piece_607_mem⟩

theorem linked_13477 : Linked cell_13477 pieces := by
  link_source cell_13477 with piece_1939 using piece_1939_mem, piece_606_mem

theorem linked_13478 : Linked cell_13478 pieces := by
  link_source cell_13478 with piece_1939 using piece_1939_mem, piece_606_mem

theorem linked_13479 : Linked cell_13479 pieces := by
  link_source cell_13479 with piece_1939 using piece_1939_mem, piece_606_mem

theorem linked_13480 : Linked cell_13480 pieces := by
  link_source cell_13480 with piece_1940 using piece_1940_mem, piece_606_mem

theorem linked_13481 : Linked cell_13481 pieces := by
  link_source cell_13481 with piece_1940 using piece_1940_mem, piece_606_mem

theorem linked_13482 : Linked cell_13482 pieces := by
  link_source cell_13482 with piece_1940 using piece_1940_mem, piece_606_mem

theorem linked_13483 : Linked cell_13483 pieces := by
  link_source cell_13483 with piece_1940 using piece_1940_mem, piece_606_mem

theorem linked_13484 : Linked cell_13484 pieces := by
  link_source cell_13484 with piece_1941 using piece_1941_mem, piece_606_mem

theorem linked_13485 : Linked cell_13485 pieces := by
  link_source cell_13485 with piece_1942 using piece_1942_mem, piece_606_mem

theorem linked_13486 : Linked cell_13486 pieces := by
  link_source cell_13486 with piece_1942 using piece_1942_mem, ⟨piece_605_mem, piece_606_mem⟩

theorem linked_13487 : Linked cell_13487 pieces := by
  link_source cell_13487 with piece_1943 using piece_1943_mem, piece_606_mem

theorem linked_13488 : Linked cell_13488 pieces := by
  link_source cell_13488 with piece_1943 using piece_1943_mem, ⟨piece_605_mem, piece_606_mem⟩

theorem linked_13489 : Linked cell_13489 pieces := by
  link_source cell_13489 with piece_1943 using piece_1943_mem, piece_605_mem

theorem linked_13490 : Linked cell_13490 pieces := by
  link_source cell_13490 with piece_1943 using piece_1943_mem, piece_605_mem

theorem linked_13491 : Linked cell_13491 pieces := by
  link_source cell_13491 with piece_1944 using piece_1944_mem, ⟨piece_605_mem, piece_606_mem⟩

theorem linked_13492 : Linked cell_13492 pieces := by
  link_source cell_13492 with piece_1944 using piece_1944_mem, piece_605_mem

theorem linked_13493 : Linked cell_13493 pieces := by
  link_source cell_13493 with piece_1944 using piece_1944_mem, piece_605_mem

theorem linked_13494 : Linked cell_13494 pieces := by
  link_source cell_13494 with piece_1944 using piece_1944_mem, piece_605_mem

theorem linked_13495 : Linked cell_13495 pieces := by
  link_source cell_13495 with piece_1945 using piece_1945_mem, piece_605_mem

theorem linked_13496 : Linked cell_13496 pieces := by
  link_source cell_13496 with piece_1945 using piece_1945_mem, piece_605_mem

theorem linked_13497 : Linked cell_13497 pieces := by
  link_source cell_13497 with piece_1945 using piece_1945_mem, piece_605_mem

theorem linked_13498 : Linked cell_13498 pieces := by
  link_source cell_13498 with piece_1945 using piece_1945_mem, ⟨piece_604_mem, piece_605_mem⟩

theorem linked_13499 : Linked cell_13499 pieces := by
  link_source cell_13499 with piece_1946 using piece_1946_mem, piece_605_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0269.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0269.cells,List.forall_mem_cons]
  exact ⟨linked_13450, linked_13451, linked_13452, linked_13453, linked_13454, linked_13455, linked_13456, linked_13457, linked_13458, linked_13459, linked_13460, linked_13461, linked_13462, linked_13463, linked_13464, linked_13465, linked_13466, linked_13467, linked_13468, linked_13469, linked_13470, linked_13471, linked_13472, linked_13473, linked_13474, linked_13475, linked_13476, linked_13477, linked_13478, linked_13479, linked_13480, linked_13481, linked_13482, linked_13483, linked_13484, linked_13485, linked_13486, linked_13487, linked_13488, linked_13489, linked_13490, linked_13491, linked_13492, linked_13493, linked_13494, linked_13495, linked_13496, linked_13497, linked_13498, linked_13499, by simp⟩

theorem covered : covers (16815000000000001 / 20000000000000000 : ℚ) (33885000000000003 / 40000000000000000 : ℚ)
    (SourceCertificates.Chunk0269.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0269
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0270
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(33885000000000003 / 40000000000000000 : ℚ), (42362500000000003 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (22509368424799 / 50000000000000 : ℚ)
  w := (6533128815757 / 5000000000000 : ℚ)
  center := (338875000000000027 / 400000000000000000 : ℚ)
  supportValue := (23212186227950507 / 100000000000000000 : ℚ)
  supportSlope := (-8167221251254999 / 10000000000000000 : ℚ)
  oldCenter := (23212186227950507 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1947
  oldLo := (11574999999999999 / 50000000000000000 : ℚ)
  oldHi := (11599999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_604]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13500 : Cell := { cellDefaults with
  r := (45037191715669 / 100000000000000 : ℚ)
  w := (13070346176317 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1946
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605]
}

noncomputable def cell_13501 : Cell := { cellDefaults with
  domain := ⟨(42362500000000003 / 50000000000000000 : ℚ), (169475000000000009 / 200000000000000000 : ℚ)⟩
  r := (45037191715669 / 100000000000000 : ℚ)
  w := (13070346176317 / 10000000000000 : ℚ)
  center := (338925000000000021 / 400000000000000000 : ℚ)
  supportValue := (11600989911649773 / 50000000000000000 : ℚ)
  supportSlope := (-8163497187242277 / 10000000000000000 : ℚ)
  oldCenter := (11600989911649773 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1946
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_604, piece_605]
}

noncomputable def cell_13502 : Cell := { cellDefaults with
  domain := ⟨(169475000000000009 / 200000000000000000 : ℚ), (84750000000000003 / 100000000000000000 : ℚ)⟩
  r := (45037191715669 / 100000000000000 : ℚ)
  w := (13070346176317 / 10000000000000 : ℚ)
  center := (67795000000000003 / 80000000000000000 : ℚ)
  supportValue := (11595888552526269 / 50000000000000000 : ℚ)
  supportSlope := (-4080185736053333 / 5000000000000000 : ℚ)
  oldCenter := (11595888552526269 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1946
  oldPieces := [piece_604]
}

noncomputable def cell_13503 : Cell := { cellDefaults with
  domain := ⟨(84750000000000003 / 100000000000000000 : ℚ), (169525000000000009 / 200000000000000000 : ℚ)⟩
  center := (67805000000000003 / 80000000000000000 : ℚ)
  supportValue := (4641919982739079 / 20000000000000000 : ℚ)
  supportSlope := (-2040641352723837 / 2500000000000000 : ℚ)
  oldCenter := (4641919982739079 / 20000000000000000 : ℚ)
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605]
}

noncomputable def cell_13504 : Cell := { cellDefaults with
  domain := ⟨(169525000000000009 / 200000000000000000 : ℚ), (42387500000000003 / 50000000000000000 : ℚ)⟩
  center := (339075000000000021 / 400000000000000000 : ℚ)
  supportValue := (11599699605153953 / 50000000000000000 : ℚ)
  supportSlope := (-254976165255491 / 312500000000000 : ℚ)
  oldCenter := (11599699605153953 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_604, piece_605]
}

noncomputable def cell_13505 : Cell := { cellDefaults with
  domain := ⟨(42387500000000003 / 50000000000000000 : ℚ), (33915000000000003 / 40000000000000000 : ℚ)⟩
  center := (339125000000000027 / 400000000000000000 : ℚ)
  supportValue := (23189201930638337 / 100000000000000000 : ℚ)
  supportSlope := (-509732710604277 / 625000000000000 : ℚ)
  oldCenter := (23189201930638337 / 100000000000000000 : ℚ)
  oldPieces := [piece_604]
}

noncomputable def cell_13506 : Cell := { cellDefaults with
  domain := ⟨(33915000000000003 / 40000000000000000 : ℚ), (84800000000000009 / 100000000000000000 : ℚ)⟩
  center := (339175000000000033 / 400000000000000000 : ℚ)
  supportValue := (11589504947260307 / 50000000000000000 : ℚ)
  supportSlope := (-8151530522554483 / 10000000000000000 : ℚ)
  oldCenter := (11589504947260307 / 50000000000000000 : ℚ)
  oldPieces := [piece_604]
}

noncomputable def cell_13507 : Cell := { cellDefaults with
  domain := ⟨(84800000000000009 / 100000000000000000 : ℚ), (33925000000000003 / 40000000000000000 : ℚ)⟩
  r := (4500029465487 / 10000000000000 : ℚ)
  w := (6531083938287 / 5000000000000 : ℚ)
  center := (339225000000000033 / 400000000000000000 : ℚ)
  supportValue := (2319682810861861 / 10000000000000000 : ℚ)
  supportSlope := (-254843200597657 / 312500000000000 : ℚ)
  oldCenter := (2319682810861861 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1948
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_604, piece_605]
}

noncomputable def cell_13508 : Cell := { cellDefaults with
  domain := ⟨(33925000000000003 / 40000000000000000 : ℚ), (42412500000000003 / 50000000000000000 : ℚ)⟩
  r := (4500029465487 / 10000000000000 : ℚ)
  w := (6531083938287 / 5000000000000 : ℚ)
  center := (339275000000000027 / 400000000000000000 : ℚ)
  supportValue := (11593318316813049 / 50000000000000000 : ℚ)
  supportSlope := (-163021643050973 / 200000000000000 : ℚ)
  oldCenter := (11593318316813049 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1948
  oldPieces := [piece_604]
}

noncomputable def cell_13509 : Cell := { cellDefaults with
  domain := ⟨(42412500000000003 / 50000000000000000 : ℚ), (169675000000000009 / 200000000000000000 : ℚ)⟩
  r := (4500029465487 / 10000000000000 : ℚ)
  w := (6531083938287 / 5000000000000 : ℚ)
  center := (339325000000000021 / 400000000000000000 : ℚ)
  supportValue := (2317645039587997 / 10000000000000000 : ℚ)
  supportSlope := (-8146894346047073 / 10000000000000000 : ℚ)
  oldCenter := (2317645039587997 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1948
  oldPieces := [piece_604]
}

noncomputable def cell_13510 : Cell := { cellDefaults with
  domain := ⟨(169675000000000009 / 200000000000000000 : ℚ), (84850000000000003 / 100000000000000000 : ℚ)⟩
  r := (4500029465487 / 10000000000000 : ℚ)
  w := (6531083938287 / 5000000000000 : ℚ)
  center := (67875000000000003 / 80000000000000000 : ℚ)
  supportValue := (23166269390409291 / 100000000000000000 : ℚ)
  supportSlope := (-1017838814056493 / 1250000000000000 : ℚ)
  oldCenter := (23166269390409291 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1948
  oldPieces := [piece_604]
}

noncomputable def cell_13511 : Cell := { cellDefaults with
  domain := ⟨(84850000000000003 / 100000000000000000 : ℚ), (169725000000000009 / 200000000000000000 : ℚ)⟩
  r := (11245466490163 / 25000000000000 : ℚ)
  w := (13058076773961 / 10000000000000 : ℚ)
  center := (67885000000000003 / 80000000000000000 : ℚ)
  supportValue := (289801006192871 / 1250000000000000 : ℚ)
  supportSlope := (-4073223827400563 / 5000000000000000 : ℚ)
  oldCenter := (289801006192871 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1949
  oldPieces := [piece_604]
}

noncomputable def cell_13512 : Cell := { cellDefaults with
  domain := ⟨(169725000000000009 / 200000000000000000 : ℚ), (42437500000000003 / 50000000000000000 : ℚ)⟩
  r := (11245466490163 / 25000000000000 : ℚ)
  w := (13058076773961 / 10000000000000 : ℚ)
  center := (339475000000000021 / 400000000000000000 : ℚ)
  supportValue := (11586950023819141 / 50000000000000000 : ℚ)
  supportSlope := (-4071132458555793 / 5000000000000000 : ℚ)
  oldCenter := (11586950023819141 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1949
  oldPieces := [piece_604]
}

noncomputable def cell_13513 : Cell := { cellDefaults with
  domain := ⟨(42437500000000003 / 50000000000000000 : ℚ), (33955000000000003 / 40000000000000000 : ℚ)⟩
  r := (11245466490163 / 25000000000000 : ℚ)
  w := (13058076773961 / 10000000000000 : ℚ)
  center := (339525000000000027 / 400000000000000000 : ℚ)
  supportValue := (5790931206447763 / 25000000000000000 : ℚ)
  supportSlope := (-8138086144739011 / 10000000000000000 : ℚ)
  oldCenter := (5790931206447763 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1949
  oldPieces := [piece_604]
}

noncomputable def cell_13514 : Cell := { cellDefaults with
  domain := ⟨(33955000000000003 / 40000000000000000 : ℚ), (84900000000000009 / 100000000000000000 : ℚ)⟩
  r := (11245466490163 / 25000000000000 : ℚ)
  w := (13058076773961 / 10000000000000 : ℚ)
  center := (339575000000000033 / 400000000000000000 : ℚ)
  supportValue := (23153554824936057 / 100000000000000000 : ℚ)
  supportSlope := (-8134144462860339 / 10000000000000000 : ℚ)
  oldCenter := (23153554824936057 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1949
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_603, piece_604]
}

noncomputable def cell_13515 : Cell := { cellDefaults with
  domain := ⟨(84900000000000009 / 100000000000000000 : ℚ), (33965000000000003 / 40000000000000000 : ℚ)⟩
  r := (44963452762713 / 100000000000000 : ℚ)
  w := (652699327323 / 500000000000 : ℚ)
  center := (339625000000000033 / 400000000000000000 : ℚ)
  supportValue := (1158567632266799 / 5000000000000000 : ℚ)
  supportSlope := (-8137640322015559 / 10000000000000000 : ℚ)
  oldCenter := (1158567632266799 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1950
  oldPieces := [piece_604]
}

noncomputable def cell_13516 : Cell := { cellDefaults with
  domain := ⟨(33965000000000003 / 40000000000000000 : ℚ), (42462500000000003 / 50000000000000000 : ℚ)⟩
  r := (44963452762713 / 100000000000000 : ℚ)
  w := (652699327323 / 500000000000 : ℚ)
  center := (339675000000000027 / 400000000000000000 : ℚ)
  supportValue := (4632236640215569 / 20000000000000000 : ℚ)
  supportSlope := (-1626693319635581 / 2000000000000000 : ℚ)
  oldCenter := (4632236640215569 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1950
  oldPieces := [piece_604]
}

noncomputable def cell_13517 : Cell := { cellDefaults with
  domain := ⟨(42462500000000003 / 50000000000000000 : ℚ), (169875000000000009 / 200000000000000000 : ℚ)⟩
  r := (44963452762713 / 100000000000000 : ℚ)
  w := (652699327323 / 500000000000 : ℚ)
  center := (339725000000000021 / 400000000000000000 : ℚ)
  supportValue := (23151018971506013 / 100000000000000000 : ℚ)
  supportSlope := (-4064957156775727 / 5000000000000000 : ℚ)
  oldCenter := (23151018971506013 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1950
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_603, piece_604]
}

noncomputable def cell_13518 : Cell := { cellDefaults with
  domain := ⟨(169875000000000009 / 200000000000000000 : ℚ), (84950000000000003 / 100000000000000000 : ℚ)⟩
  r := (44963452762713 / 100000000000000 : ℚ)
  w := (652699327323 / 500000000000 : ℚ)
  center := (67955000000000003 / 80000000000000000 : ℚ)
  supportValue := (5785214554478539 / 25000000000000000 : ℚ)
  supportSlope := (-2031667082588417 / 2500000000000000 : ℚ)
  oldCenter := (5785214554478539 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1950
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_603]
}

noncomputable def cell_13519 : Cell := { cellDefaults with
  domain := ⟨(84950000000000003 / 100000000000000000 : ℚ), (169925000000000009 / 200000000000000000 : ℚ)⟩
  r := (1404532898631 / 3125000000000 : ℚ)
  w := (13049895212071 / 10000000000000 : ℚ)
  center := (67965000000000003 / 80000000000000000 : ℚ)
  supportValue := (578966264632769 / 2500000000000000 : ℚ)
  supportSlope := (-8128853679129213 / 10000000000000000 : ℚ)
  oldCenter := (578966264632769 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1951
  oldPieces := [piece_604]
}

noncomputable def cell_13520 : Cell := { cellDefaults with
  domain := ⟨(169925000000000009 / 200000000000000000 : ℚ), (42487500000000003 / 50000000000000000 : ℚ)⟩
  r := (1404532898631 / 3125000000000 : ℚ)
  w := (13049895212071 / 10000000000000 : ℚ)
  center := (339875000000000021 / 400000000000000000 : ℚ)
  supportValue := (11574245915597281 / 50000000000000000 : ℚ)
  supportSlope := (-1625137805520343 / 2000000000000000 : ℚ)
  oldCenter := (11574245915597281 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1951
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_603, piece_604]
}

noncomputable def cell_13521 : Cell := { cellDefaults with
  domain := ⟨(42487500000000003 / 50000000000000000 : ℚ), (33995000000000003 / 40000000000000000 : ℚ)⟩
  r := (1404532898631 / 3125000000000 : ℚ)
  w := (13049895212071 / 10000000000000 : ℚ)
  center := (339925000000000027 / 400000000000000000 : ℚ)
  supportValue := (578458416128149 / 2500000000000000 : ℚ)
  supportSlope := (-507628941221411 / 625000000000000 : ℚ)
  oldCenter := (578458416128149 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1951
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_603]
}

noncomputable def cell_13522 : Cell := { cellDefaults with
  domain := ⟨(33995000000000003 / 40000000000000000 : ℚ), (85000000000000009 / 100000000000000000 : ℚ)⟩
  r := (1404532898631 / 3125000000000 : ℚ)
  w := (13049895212071 / 10000000000000 : ℚ)
  center := (339975000000000033 / 400000000000000000 : ℚ)
  supportValue := (2312818666621993 / 10000000000000000 : ℚ)
  supportSlope := (-2029474826137113 / 2500000000000000 : ℚ)
  oldCenter := (2312818666621993 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1951
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_603]
}

noncomputable def cell_13523 : Cell := { cellDefaults with
  domain := ⟨(85000000000000009 / 100000000000000000 : ℚ), (34005000000000003 / 40000000000000000 : ℚ)⟩
  r := (22463332486367 / 50000000000000 : ℚ)
  w := (13045800757299 / 10000000000000 : ℚ)
  center := (340025000000000033 / 400000000000000000 : ℚ)
  supportValue := (11572989059830213 / 50000000000000000 : ℚ)
  supportSlope := (-8121469388947397 / 10000000000000000 : ℚ)
  oldCenter := (11572989059830213 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1952
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_603, piece_604]
}

noncomputable def cell_13524 : Cell := { cellDefaults with
  domain := ⟨(34005000000000003 / 40000000000000000 : ℚ), (42512500000000003 / 50000000000000000 : ℚ)⟩
  r := (22463332486367 / 50000000000000 : ℚ)
  w := (13045800757299 / 10000000000000 : ℚ)
  center := (340075000000000027 / 400000000000000000 : ℚ)
  supportValue := (4627165736641261 / 20000000000000000 : ℚ)
  supportSlope := (-2029366468722337 / 2500000000000000 : ℚ)
  oldCenter := (4627165736641261 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1952
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_603]
}

noncomputable def cell_13525 : Cell := { cellDefaults with
  domain := ⟨(42512500000000003 / 50000000000000000 : ℚ), (170075000000000009 / 200000000000000000 : ℚ)⟩
  r := (22463332486367 / 50000000000000 : ℚ)
  w := (13045800757299 / 10000000000000 : ℚ)
  center := (340125000000000021 / 400000000000000000 : ℚ)
  supportValue := (578142111191331 / 2500000000000000 : ℚ)
  supportSlope := (-8113307659446263 / 10000000000000000 : ℚ)
  oldCenter := (578142111191331 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1952
  oldLo := (11549999999999999 / 50000000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_602, piece_603]
}

noncomputable def cell_13526 : Cell := { cellDefaults with
  domain := ⟨(170075000000000009 / 200000000000000000 : ℚ), (85050000000000003 / 100000000000000000 : ℚ)⟩
  r := (22463332486367 / 50000000000000 : ℚ)
  w := (13045800757299 / 10000000000000 : ℚ)
  center := (68035000000000003 / 80000000000000000 : ℚ)
  supportValue := (4623109081187659 / 20000000000000000 : ℚ)
  supportSlope := (-4054577332877549 / 5000000000000000 : ℚ)
  oldCenter := (4623109081187659 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1952
  oldLo := (11549999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_602]
}

noncomputable def cell_13527 : Cell := { cellDefaults with
  domain := ⟨(85050000000000003 / 100000000000000000 : ℚ), (340268156424581 / 400000000000000 : ℚ)⟩
  r := (2806768220089 / 6250000000000 : ℚ)
  w := (1630213406481 / 1250000000000 : ℚ)
  center := (170117039106145253 / 200000000000000000 : ℚ)
  supportValue := (11565741786365953 / 50000000000000000 : ℚ)
  supportSlope := (-126751865416103 / 156250000000000 : ℚ)
  oldCenter := (11565741786365953 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1953
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_603]
}

noncomputable def cell_13528 : Cell := { cellDefaults with
  domain := ⟨(340268156424581 / 400000000000000 : ℚ), (170167039106145259 / 200000000000000000 : ℚ)⟩
  r := (2806768220089 / 6250000000000 : ℚ)
  w := (1630213406481 / 1250000000000 : ℚ)
  center := (340301117318435759 / 400000000000000000 : ℚ)
  supportValue := (2889736562884803 / 12500000000000000 : ℚ)
  supportSlope := (-324262171769281 / 400000000000000 : ℚ)
  oldCenter := (2889736562884803 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1954
  oldLo := (11549999999999999 / 50000000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_602, piece_603]
}

noncomputable def cell_13529 : Cell := { cellDefaults with
  domain := ⟨(170167039106145259 / 200000000000000000 : ℚ), (85100000000000009 / 100000000000000000 : ℚ)⟩
  r := (2806768220089 / 6250000000000 : ℚ)
  w := (1630213406481 / 1250000000000 : ℚ)
  center := (340367039106145277 / 400000000000000000 : ℚ)
  supportValue := (115522766074659 / 500000000000000 : ℚ)
  supportSlope := (-8101333886701981 / 10000000000000000 : ℚ)
  oldCenter := (115522766074659 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1954
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_601, piece_602]
}

noncomputable def cell_13530 : Cell := { cellDefaults with
  domain := ⟨(85100000000000009 / 100000000000000000 : ℚ), (34045000000000003 / 40000000000000000 : ℚ)⟩
  r := (44889932952467 / 100000000000000 : ℚ)
  w := (3259403592303 / 2500000000000 : ℚ)
  center := (340425000000000033 / 400000000000000000 : ℚ)
  supportValue := (23120691996778073 / 100000000000000000 : ℚ)
  supportSlope := (-8104139851839859 / 10000000000000000 : ℚ)
  oldCenter := (23120691996778073 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1955
  oldLo := (11549999999999999 / 50000000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_602, piece_603]
}

noncomputable def cell_13531 : Cell := { cellDefaults with
  domain := ⟨(34045000000000003 / 40000000000000000 : ℚ), (42562500000000003 / 50000000000000000 : ℚ)⟩
  r := (44889932952467 / 100000000000000 : ℚ)
  w := (3259403592303 / 2500000000000 : ℚ)
  center := (340475000000000027 / 400000000000000000 : ℚ)
  supportValue := (2311056440923471 / 10000000000000000 : ℚ)
  supportSlope := (-4049997836888461 / 5000000000000000 : ℚ)
  oldCenter := (2311056440923471 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1955
  oldLo := (11549999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_602]
}

noncomputable def cell_13532 : Cell := { cellDefaults with
  domain := ⟨(42562500000000003 / 50000000000000000 : ℚ), (170275000000000009 / 200000000000000000 : ℚ)⟩
  r := (44889932952467 / 100000000000000 : ℚ)
  w := (3259403592303 / 2500000000000 : ℚ)
  center := (340525000000000021 / 400000000000000000 : ℚ)
  supportValue := (577511050007403 / 2500000000000000 : ℚ)
  supportSlope := (-323862273036507 / 400000000000000 : ℚ)
  oldCenter := (577511050007403 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1955
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_601, piece_602]
}

noncomputable def cell_13533 : Cell := { cellDefaults with
  domain := ⟨(170275000000000009 / 200000000000000000 : ℚ), (85150000000000003 / 100000000000000000 : ℚ)⟩
  r := (44889932952467 / 100000000000000 : ℚ)
  w := (3259403592303 / 2500000000000 : ℚ)
  center := (68115000000000003 / 80000000000000000 : ℚ)
  supportValue := (11545161464734903 / 50000000000000000 : ℚ)
  supportSlope := (-8093248739014929 / 10000000000000000 : ℚ)
  oldCenter := (11545161464734903 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1955
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13534 : Cell := { cellDefaults with
  domain := ⟨(85150000000000003 / 100000000000000000 : ℚ), (170325000000000009 / 200000000000000000 : ℚ)⟩
  r := (4487158720581 / 10000000000000 : ℚ)
  w := (13033519168123 / 10000000000000 : ℚ)
  center := (68125000000000003 / 80000000000000000 : ℚ)
  supportValue := (23108087300978133 / 100000000000000000 : ℚ)
  supportSlope := (-2023856479096177 / 2500000000000000 : ℚ)
  oldCenter := (23108087300978133 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1956
  oldLo := (11549999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_602]
}

noncomputable def cell_13535 : Cell := { cellDefaults with
  domain := ⟨(170325000000000009 / 200000000000000000 : ℚ), (42587500000000003 / 50000000000000000 : ℚ)⟩
  r := (4487158720581 / 10000000000000 : ℚ)
  w := (13033519168123 / 10000000000000 : ℚ)
  center := (340675000000000021 / 400000000000000000 : ℚ)
  supportValue := (23097970214463043 / 100000000000000000 : ℚ)
  supportSlope := (-2023091569962367 / 2500000000000000 : ℚ)
  oldCenter := (23097970214463043 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1956
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_601, piece_602]
}

noncomputable def cell_13536 : Cell := { cellDefaults with
  domain := ⟨(42587500000000003 / 50000000000000000 : ℚ), (34075000000000003 / 40000000000000000 : ℚ)⟩
  r := (4487158720581 / 10000000000000 : ℚ)
  w := (13033519168123 / 10000000000000 : ℚ)
  center := (340725000000000027 / 400000000000000000 : ℚ)
  supportValue := (11543928383452777 / 50000000000000000 : ℚ)
  supportSlope := (-8088686485367009 / 10000000000000000 : ℚ)
  oldCenter := (11543928383452777 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1956
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13537 : Cell := { cellDefaults with
  domain := ⟨(34075000000000003 / 40000000000000000 : ℚ), (85200000000000009 / 100000000000000000 : ℚ)⟩
  r := (4487158720581 / 10000000000000 : ℚ)
  w := (13033519168123 / 10000000000000 : ℚ)
  center := (340775000000000033 / 400000000000000000 : ℚ)
  supportValue := (23077748490960237 / 100000000000000000 : ℚ)
  supportSlope := (-505284447033733 / 625000000000000 : ℚ)
  oldCenter := (23077748490960237 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1956
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13538 : Cell := { cellDefaults with
  domain := ⟨(85200000000000009 / 100000000000000000 : ℚ), (340850000000000031 / 400000000000000000 : ℚ)⟩
  r := (44853254213313 / 100000000000000 : ℚ)
  w := (6514711625891 / 5000000000000 : ℚ)
  center := (681650000000000067 / 800000000000000000 : ℚ)
  supportValue := (11547753491734701 / 50000000000000000 : ℚ)
  supportSlope := (-8088180434150081 / 10000000000000000 : ℚ)
  oldCenter := (11547753491734701 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1957
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_601, piece_602]
}

noncomputable def cell_13539 : Cell := { cellDefaults with
  domain := ⟨(340850000000000031 / 400000000000000000 : ℚ), (170450000000000013 / 200000000000000000 : ℚ)⟩
  r := (44853254213313 / 100000000000000 : ℚ)
  w := (6514711625891 / 5000000000000 : ℚ)
  center := (681750000000000057 / 800000000000000000 : ℚ)
  supportValue := (23085399233845413 / 100000000000000000 : ℚ)
  supportSlope := (-4042065309946401 / 5000000000000000 : ℚ)
  oldCenter := (23085399233845413 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1957
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13540 : Cell := { cellDefaults with
  domain := ⟨(170450000000000013 / 200000000000000000 : ℚ), (340950000000000021 / 400000000000000000 : ℚ)⟩
  r := (44853254213313 / 100000000000000 : ℚ)
  w := (6514711625891 / 5000000000000 : ℚ)
  center := (681850000000000047 / 800000000000000000 : ℚ)
  supportValue := (4615059329927203 / 20000000000000000 : ℚ)
  supportSlope := (-2020000060355611 / 2500000000000000 : ℚ)
  oldCenter := (4615059329927203 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1957
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13541 : Cell := { cellDefaults with
  domain := ⟨(340950000000000021 / 400000000000000000 : ℚ), (21312500000000001 / 25000000000000000 : ℚ)⟩
  r := (44853254213313 / 100000000000000 : ℚ)
  w := (6514711625891 / 5000000000000 : ℚ)
  center := (681950000000000037 / 800000000000000000 : ℚ)
  supportValue := (2883149903245447 / 12500000000000000 : ℚ)
  supportSlope := (-8075873761367011 / 10000000000000000 : ℚ)
  oldCenter := (2883149903245447 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1957
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13542 : Cell := { cellDefaults with
  domain := ⟨(21312500000000001 / 25000000000000000 : ℚ), (34105000000000001 / 40000000000000000 : ℚ)⟩
  r := (11208733988659 / 25000000000000 : ℚ)
  w := (325633180873 / 250000000000 : ℚ)
  center := (341025000000000013 / 400000000000000000 : ℚ)
  supportValue := (11541473495099637 / 50000000000000000 : ℚ)
  supportSlope := (-807958022404173 / 1000000000000000 : ℚ)
  oldCenter := (11541473495099637 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1958
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13543 : Cell := { cellDefaults with
  domain := ⟨(34105000000000001 / 40000000000000000 : ℚ), (85275000000000001 / 100000000000000000 : ℚ)⟩
  r := (11208733988659 / 25000000000000 : ℚ)
  w := (325633180873 / 250000000000 : ℚ)
  center := (341075000000000007 / 400000000000000000 : ℚ)
  supportValue := (2884106261361629 / 12500000000000000 : ℚ)
  supportSlope := (-8075454793120409 / 10000000000000000 : ℚ)
  oldCenter := (2884106261361629 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1958
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13544 : Cell := { cellDefaults with
  domain := ⟨(85275000000000001 / 100000000000000000 : ℚ), (170574999999999999 / 200000000000000000 : ℚ)⟩
  r := (11208733988659 / 25000000000000 : ℚ)
  w := (325633180873 / 250000000000 : ℚ)
  center := (341125000000000001 / 400000000000000000 : ℚ)
  supportValue := (23062758345943957 / 100000000000000000 : ℚ)
  supportSlope := (-4035666626605523 / 5000000000000000 : ℚ)
  oldCenter := (23062758345943957 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1958
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13545 : Cell := { cellDefaults with
  domain := ⟨(170574999999999999 / 200000000000000000 : ℚ), (42649999999999999 / 50000000000000000 : ℚ)⟩
  r := (11208733988659 / 25000000000000 : ℚ)
  w := (325633180873 / 250000000000 : ℚ)
  center := (68234999999999999 / 80000000000000000 : ℚ)
  supportValue := (1152633587524643 / 5000000000000000 : ℚ)
  supportSlope := (-252111776165467 / 312500000000000 : ℚ)
  oldCenter := (1152633587524643 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1958
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600, piece_601]
}

noncomputable def cell_13546 : Cell := { cellDefaults with
  domain := ⟨(42649999999999999 / 50000000000000000 : ℚ), (170624999999999999 / 200000000000000000 : ℚ)⟩
  r := (4481663170601 / 10000000000000 : ℚ)
  w := (13021230709979 / 10000000000000 : ℚ)
  center := (68244999999999999 / 80000000000000000 : ℚ)
  supportValue := (2307041031974093 / 10000000000000000 : ℚ)
  supportSlope := (-8070915230708051 / 10000000000000000 : ℚ)
  oldCenter := (2307041031974093 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1959
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13547 : Cell := { cellDefaults with
  domain := ⟨(170624999999999999 / 200000000000000000 : ℚ), (85325000000000001 / 100000000000000000 : ℚ)⟩
  r := (4481663170601 / 10000000000000 : ℚ)
  w := (13021230709979 / 10000000000000 : ℚ)
  center := (341275000000000001 / 400000000000000000 : ℚ)
  supportValue := (5765081061541267 / 25000000000000000 : ℚ)
  supportSlope := (-2016699654835177 / 2500000000000000 : ℚ)
  oldCenter := (5765081061541267 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1959
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13548 : Cell := { cellDefaults with
  domain := ⟨(85325000000000001 / 100000000000000000 : ℚ), (34135000000000001 / 40000000000000000 : ℚ)⟩
  r := (4481663170601 / 10000000000000 : ℚ)
  w := (13021230709979 / 10000000000000 : ℚ)
  center := (341325000000000007 / 400000000000000000 : ℚ)
  supportValue := (11525121657965559 / 50000000000000000 : ℚ)
  supportSlope := (-8063415463505229 / 10000000000000000 : ℚ)
  oldCenter := (11525121657965559 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1959
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600, piece_601]
}

noncomputable def cell_13549 : Cell := { cellDefaults with
  domain := ⟨(34135000000000001 / 40000000000000000 : ℚ), (21337500000000001 / 25000000000000000 : ℚ)⟩
  r := (4481663170601 / 10000000000000 : ℚ)
  w := (13021230709979 / 10000000000000 : ℚ)
  center := (341375000000000013 / 400000000000000000 : ℚ)
  supportValue := (5760041414378883 / 25000000000000000 : ℚ)
  supportSlope := (-806010278859307 / 1000000000000000 : ℚ)
  oldCenter := (5760041414378883 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1959
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldHi := (11524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600]
}

theorem check_13500 : cell_13500.check = true := by
  decide +kernel

theorem check_13501 : cell_13501.check = true := by
  decide +kernel

theorem check_13502 : cell_13502.check = true := by
  decide +kernel

theorem check_13503 : cell_13503.check = true := by
  decide +kernel

theorem check_13504 : cell_13504.check = true := by
  decide +kernel

theorem check_13505 : cell_13505.check = true := by
  decide +kernel

theorem check_13506 : cell_13506.check = true := by
  decide +kernel

theorem check_13507 : cell_13507.check = true := by
  decide +kernel

theorem check_13508 : cell_13508.check = true := by
  decide +kernel

theorem check_13509 : cell_13509.check = true := by
  decide +kernel

theorem check_13510 : cell_13510.check = true := by
  decide +kernel

theorem check_13511 : cell_13511.check = true := by
  decide +kernel

theorem check_13512 : cell_13512.check = true := by
  decide +kernel

theorem check_13513 : cell_13513.check = true := by
  decide +kernel

theorem check_13514 : cell_13514.check = true := by
  decide +kernel

theorem check_13515 : cell_13515.check = true := by
  decide +kernel

theorem check_13516 : cell_13516.check = true := by
  decide +kernel

theorem check_13517 : cell_13517.check = true := by
  decide +kernel

theorem check_13518 : cell_13518.check = true := by
  decide +kernel

theorem check_13519 : cell_13519.check = true := by
  decide +kernel

theorem check_13520 : cell_13520.check = true := by
  decide +kernel

theorem check_13521 : cell_13521.check = true := by
  decide +kernel

theorem check_13522 : cell_13522.check = true := by
  decide +kernel

theorem check_13523 : cell_13523.check = true := by
  decide +kernel

theorem check_13524 : cell_13524.check = true := by
  decide +kernel

theorem check_13525 : cell_13525.check = true := by
  decide +kernel

theorem check_13526 : cell_13526.check = true := by
  decide +kernel

theorem check_13527 : cell_13527.check = true := by
  decide +kernel

theorem check_13528 : cell_13528.check = true := by
  decide +kernel

theorem check_13529 : cell_13529.check = true := by
  decide +kernel

theorem check_13530 : cell_13530.check = true := by
  decide +kernel

theorem check_13531 : cell_13531.check = true := by
  decide +kernel

theorem check_13532 : cell_13532.check = true := by
  decide +kernel

theorem check_13533 : cell_13533.check = true := by
  decide +kernel

theorem check_13534 : cell_13534.check = true := by
  decide +kernel

theorem check_13535 : cell_13535.check = true := by
  decide +kernel

theorem check_13536 : cell_13536.check = true := by
  decide +kernel

theorem check_13537 : cell_13537.check = true := by
  decide +kernel

theorem check_13538 : cell_13538.check = true := by
  decide +kernel

theorem check_13539 : cell_13539.check = true := by
  decide +kernel

theorem check_13540 : cell_13540.check = true := by
  decide +kernel

theorem check_13541 : cell_13541.check = true := by
  decide +kernel

theorem check_13542 : cell_13542.check = true := by
  decide +kernel

theorem check_13543 : cell_13543.check = true := by
  decide +kernel

theorem check_13544 : cell_13544.check = true := by
  decide +kernel

theorem check_13545 : cell_13545.check = true := by
  decide +kernel

theorem check_13546 : cell_13546.check = true := by
  decide +kernel

theorem check_13547 : cell_13547.check = true := by
  decide +kernel

theorem check_13548 : cell_13548.check = true := by
  decide +kernel

theorem check_13549 : cell_13549.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13500, cell_13501, cell_13502, cell_13503, cell_13504, cell_13505, cell_13506, cell_13507, cell_13508, cell_13509, cell_13510, cell_13511, cell_13512, cell_13513, cell_13514, cell_13515, cell_13516, cell_13517, cell_13518, cell_13519, cell_13520, cell_13521, cell_13522, cell_13523, cell_13524, cell_13525, cell_13526, cell_13527, cell_13528, cell_13529, cell_13530, cell_13531, cell_13532, cell_13533, cell_13534, cell_13535, cell_13536, cell_13537, cell_13538, cell_13539, cell_13540, cell_13541, cell_13542, cell_13543, cell_13544, cell_13545, cell_13546, cell_13547, cell_13548, cell_13549]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13500, check_13501, check_13502, check_13503, check_13504, check_13505, check_13506, check_13507, check_13508, check_13509, check_13510, check_13511, check_13512, check_13513, check_13514, check_13515, check_13516, check_13517, check_13518, check_13519, check_13520, check_13521, check_13522, check_13523, check_13524, check_13525, check_13526, check_13527, check_13528, check_13529, check_13530, check_13531, check_13532, check_13533, check_13534, check_13535, check_13536, check_13537, check_13538, check_13539, check_13540, check_13541, check_13542, check_13543, check_13544, check_13545, check_13546, check_13547, check_13548, check_13549, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0270

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0270
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0270
open AnalyticBounds.ExpressionCertificate

theorem linked_13500 : Linked cell_13500 pieces := by
  link_source cell_13500 with piece_1946 using piece_1946_mem, piece_605_mem

theorem linked_13501 : Linked cell_13501 pieces := by
  link_source cell_13501 with piece_1946 using piece_1946_mem, ⟨piece_604_mem, piece_605_mem⟩

theorem linked_13502 : Linked cell_13502 pieces := by
  link_source cell_13502 with piece_1946 using piece_1946_mem, piece_604_mem

theorem linked_13503 : Linked cell_13503 pieces := by
  link_source cell_13503 with piece_1947 using piece_1947_mem, piece_605_mem

theorem linked_13504 : Linked cell_13504 pieces := by
  link_source cell_13504 with piece_1947 using piece_1947_mem, ⟨piece_604_mem, piece_605_mem⟩

theorem linked_13505 : Linked cell_13505 pieces := by
  link_source cell_13505 with piece_1947 using piece_1947_mem, piece_604_mem

theorem linked_13506 : Linked cell_13506 pieces := by
  link_source cell_13506 with piece_1947 using piece_1947_mem, piece_604_mem

theorem linked_13507 : Linked cell_13507 pieces := by
  link_source cell_13507 with piece_1948 using piece_1948_mem, ⟨piece_604_mem, piece_605_mem⟩

theorem linked_13508 : Linked cell_13508 pieces := by
  link_source cell_13508 with piece_1948 using piece_1948_mem, piece_604_mem

theorem linked_13509 : Linked cell_13509 pieces := by
  link_source cell_13509 with piece_1948 using piece_1948_mem, piece_604_mem

theorem linked_13510 : Linked cell_13510 pieces := by
  link_source cell_13510 with piece_1948 using piece_1948_mem, piece_604_mem

theorem linked_13511 : Linked cell_13511 pieces := by
  link_source cell_13511 with piece_1949 using piece_1949_mem, piece_604_mem

theorem linked_13512 : Linked cell_13512 pieces := by
  link_source cell_13512 with piece_1949 using piece_1949_mem, piece_604_mem

theorem linked_13513 : Linked cell_13513 pieces := by
  link_source cell_13513 with piece_1949 using piece_1949_mem, piece_604_mem

theorem linked_13514 : Linked cell_13514 pieces := by
  link_source cell_13514 with piece_1949 using piece_1949_mem, ⟨piece_603_mem, piece_604_mem⟩

theorem linked_13515 : Linked cell_13515 pieces := by
  link_source cell_13515 with piece_1950 using piece_1950_mem, piece_604_mem

theorem linked_13516 : Linked cell_13516 pieces := by
  link_source cell_13516 with piece_1950 using piece_1950_mem, piece_604_mem

theorem linked_13517 : Linked cell_13517 pieces := by
  link_source cell_13517 with piece_1950 using piece_1950_mem, ⟨piece_603_mem, piece_604_mem⟩

theorem linked_13518 : Linked cell_13518 pieces := by
  link_source cell_13518 with piece_1950 using piece_1950_mem, piece_603_mem

theorem linked_13519 : Linked cell_13519 pieces := by
  link_source cell_13519 with piece_1951 using piece_1951_mem, piece_604_mem

theorem linked_13520 : Linked cell_13520 pieces := by
  link_source cell_13520 with piece_1951 using piece_1951_mem, ⟨piece_603_mem, piece_604_mem⟩

theorem linked_13521 : Linked cell_13521 pieces := by
  link_source cell_13521 with piece_1951 using piece_1951_mem, piece_603_mem

theorem linked_13522 : Linked cell_13522 pieces := by
  link_source cell_13522 with piece_1951 using piece_1951_mem, piece_603_mem

theorem linked_13523 : Linked cell_13523 pieces := by
  link_source cell_13523 with piece_1952 using piece_1952_mem, ⟨piece_603_mem, piece_604_mem⟩

theorem linked_13524 : Linked cell_13524 pieces := by
  link_source cell_13524 with piece_1952 using piece_1952_mem, piece_603_mem

theorem linked_13525 : Linked cell_13525 pieces := by
  link_source cell_13525 with piece_1952 using piece_1952_mem, ⟨piece_602_mem, piece_603_mem⟩

theorem linked_13526 : Linked cell_13526 pieces := by
  link_source cell_13526 with piece_1952 using piece_1952_mem, piece_602_mem

theorem linked_13527 : Linked cell_13527 pieces := by
  link_source cell_13527 with piece_1953 using piece_1953_mem, piece_603_mem

theorem linked_13528 : Linked cell_13528 pieces := by
  link_source cell_13528 with piece_1954 using piece_1954_mem, ⟨piece_602_mem, piece_603_mem⟩

theorem linked_13529 : Linked cell_13529 pieces := by
  link_source cell_13529 with piece_1954 using piece_1954_mem, ⟨piece_601_mem, piece_602_mem⟩

theorem linked_13530 : Linked cell_13530 pieces := by
  link_source cell_13530 with piece_1955 using piece_1955_mem, ⟨piece_602_mem, piece_603_mem⟩

theorem linked_13531 : Linked cell_13531 pieces := by
  link_source cell_13531 with piece_1955 using piece_1955_mem, piece_602_mem

theorem linked_13532 : Linked cell_13532 pieces := by
  link_source cell_13532 with piece_1955 using piece_1955_mem, ⟨piece_601_mem, piece_602_mem⟩

theorem linked_13533 : Linked cell_13533 pieces := by
  link_source cell_13533 with piece_1955 using piece_1955_mem, piece_601_mem

theorem linked_13534 : Linked cell_13534 pieces := by
  link_source cell_13534 with piece_1956 using piece_1956_mem, piece_602_mem

theorem linked_13535 : Linked cell_13535 pieces := by
  link_source cell_13535 with piece_1956 using piece_1956_mem, ⟨piece_601_mem, piece_602_mem⟩

theorem linked_13536 : Linked cell_13536 pieces := by
  link_source cell_13536 with piece_1956 using piece_1956_mem, piece_601_mem

theorem linked_13537 : Linked cell_13537 pieces := by
  link_source cell_13537 with piece_1956 using piece_1956_mem, piece_601_mem

theorem linked_13538 : Linked cell_13538 pieces := by
  link_source cell_13538 with piece_1957 using piece_1957_mem, ⟨piece_601_mem, piece_602_mem⟩

theorem linked_13539 : Linked cell_13539 pieces := by
  link_source cell_13539 with piece_1957 using piece_1957_mem, piece_601_mem

theorem linked_13540 : Linked cell_13540 pieces := by
  link_source cell_13540 with piece_1957 using piece_1957_mem, piece_601_mem

theorem linked_13541 : Linked cell_13541 pieces := by
  link_source cell_13541 with piece_1957 using piece_1957_mem, piece_601_mem

theorem linked_13542 : Linked cell_13542 pieces := by
  link_source cell_13542 with piece_1958 using piece_1958_mem, piece_601_mem

theorem linked_13543 : Linked cell_13543 pieces := by
  link_source cell_13543 with piece_1958 using piece_1958_mem, piece_601_mem

theorem linked_13544 : Linked cell_13544 pieces := by
  link_source cell_13544 with piece_1958 using piece_1958_mem, piece_601_mem

theorem linked_13545 : Linked cell_13545 pieces := by
  link_source cell_13545 with piece_1958 using piece_1958_mem, ⟨piece_600_mem, piece_601_mem⟩

theorem linked_13546 : Linked cell_13546 pieces := by
  link_source cell_13546 with piece_1959 using piece_1959_mem, piece_601_mem

theorem linked_13547 : Linked cell_13547 pieces := by
  link_source cell_13547 with piece_1959 using piece_1959_mem, piece_601_mem

theorem linked_13548 : Linked cell_13548 pieces := by
  link_source cell_13548 with piece_1959 using piece_1959_mem, ⟨piece_600_mem, piece_601_mem⟩

theorem linked_13549 : Linked cell_13549 pieces := by
  link_source cell_13549 with piece_1959 using piece_1959_mem, piece_600_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0270.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0270.cells,List.forall_mem_cons]
  exact ⟨linked_13500, linked_13501, linked_13502, linked_13503, linked_13504, linked_13505, linked_13506, linked_13507, linked_13508, linked_13509, linked_13510, linked_13511, linked_13512, linked_13513, linked_13514, linked_13515, linked_13516, linked_13517, linked_13518, linked_13519, linked_13520, linked_13521, linked_13522, linked_13523, linked_13524, linked_13525, linked_13526, linked_13527, linked_13528, linked_13529, linked_13530, linked_13531, linked_13532, linked_13533, linked_13534, linked_13535, linked_13536, linked_13537, linked_13538, linked_13539, linked_13540, linked_13541, linked_13542, linked_13543, linked_13544, linked_13545, linked_13546, linked_13547, linked_13548, linked_13549, by simp⟩

theorem covered : covers (33885000000000003 / 40000000000000000 : ℚ) (21337500000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0270.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0270
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0271
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(21337500000000001 / 25000000000000000 : ℚ), (34145000000000001 / 40000000000000000 : ℚ)⟩
  branch := .left
  r := (22399170003257 / 50000000000000 : ℚ)
  w := (6508566727719 / 5000000000000 : ℚ)
  center := (341425000000000013 / 400000000000000000 : ℚ)
  supportValue := (5764474733750681 / 25000000000000000 : ℚ)
  supportSlope := (-8062270380358861 / 10000000000000000 : ℚ)
  oldCenter := (5764474733750681 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1960
  oldLo := (11449999999999999 / 50000000000000000 : ℚ)
  oldHi := (11524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13550 : Cell := { cellDefaults with
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13551 : Cell := { cellDefaults with
  domain := ⟨(34145000000000001 / 40000000000000000 : ℚ), (85375000000000001 / 100000000000000000 : ℚ)⟩
  center := (341475000000000007 / 400000000000000000 : ℚ)
  supportValue := (2880977905895139 / 12500000000000000 : ℚ)
  supportSlope := (-8059258770721633 / 10000000000000000 : ℚ)
  oldCenter := (2880977905895139 / 12500000000000000 : ℚ)
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600, piece_601]
}

noncomputable def cell_13552 : Cell := { cellDefaults with
  domain := ⟨(85375000000000001 / 100000000000000000 : ℚ), (170774999999999999 / 200000000000000000 : ℚ)⟩
  center := (341525000000000001 / 400000000000000000 : ℚ)
  supportValue := (4607550239574193 / 20000000000000000 : ℚ)
  supportSlope := (-503473874326537 / 625000000000000 : ℚ)
  oldCenter := (4607550239574193 / 20000000000000000 : ℚ)
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600]
}

noncomputable def cell_13553 : Cell := { cellDefaults with
  domain := ⟨(170774999999999999 / 200000000000000000 : ℚ), (42699999999999999 / 50000000000000000 : ℚ)⟩
  center := (68314999999999999 / 80000000000000000 : ℚ)
  supportValue := (23027684284934757 / 100000000000000000 : ℚ)
  supportSlope := (-8051474844884409 / 10000000000000000 : ℚ)
  oldCenter := (23027684284934757 / 100000000000000000 : ℚ)
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600]
}

noncomputable def cell_13554 : Cell := { cellDefaults with
  domain := ⟨(42699999999999999 / 50000000000000000 : ℚ), (170824999999999999 / 200000000000000000 : ℚ)⟩
  r := (5597507695821 / 12500000000000 : ℚ)
  w := (6506517110343 / 5000000000000 : ℚ)
  center := (68324999999999999 / 80000000000000000 : ℚ)
  supportValue := (23045413288380587 / 100000000000000000 : ℚ)
  supportSlope := (-1611021418174181 / 2000000000000000 : ℚ)
  oldCenter := (23045413288380587 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1961
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600, piece_601]
}

noncomputable def cell_13555 : Cell := { cellDefaults with
  domain := ⟨(170824999999999999 / 200000000000000000 : ℚ), (85425000000000001 / 100000000000000000 : ℚ)⟩
  r := (5597507695821 / 12500000000000 : ℚ)
  w := (6506517110343 / 5000000000000 : ℚ)
  center := (341675000000000001 / 400000000000000000 : ℚ)
  supportValue := (2879418360563733 / 12500000000000000 : ℚ)
  supportSlope := (-8051068103548531 / 10000000000000000 : ℚ)
  oldCenter := (2879418360563733 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1961
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600]
}

noncomputable def cell_13556 : Cell := { cellDefaults with
  domain := ⟨(85425000000000001 / 100000000000000000 : ℚ), (34175000000000001 / 40000000000000000 : ℚ)⟩
  r := (5597507695821 / 12500000000000 : ℚ)
  w := (6506517110343 / 5000000000000 : ℚ)
  center := (341725000000000007 / 400000000000000000 : ℚ)
  supportValue := (23025285610874147 / 100000000000000000 : ℚ)
  supportSlope := (-8046965850704447 / 10000000000000000 : ℚ)
  oldCenter := (23025285610874147 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1961
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600]
}

noncomputable def cell_13557 : Cell := { cellDefaults with
  domain := ⟨(34175000000000001 / 40000000000000000 : ℚ), (21362500000000001 / 25000000000000000 : ℚ)⟩
  r := (5597507695821 / 12500000000000 : ℚ)
  w := (6506517110343 / 5000000000000 : ℚ)
  center := (341775000000000013 / 400000000000000000 : ℚ)
  supportValue := (4603045892528167 / 20000000000000000 : ℚ)
  supportSlope := (-4021433730145369 / 5000000000000000 : ℚ)
  oldCenter := (4603045892528167 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1961
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600]
}

noncomputable def cell_13558 : Cell := { cellDefaults with
  domain := ⟨(21362500000000001 / 25000000000000000 : ℚ), (34185000000000001 / 40000000000000000 : ℚ)⟩
  r := (22380898788793 / 50000000000000 : ℚ)
  w := (6504467522553 / 5000000000000 : ℚ)
  center := (341825000000000013 / 400000000000000000 : ℚ)
  supportValue := (921317910526267 / 4000000000000000 : ℚ)
  supportSlope := (-8046559585116319 / 10000000000000000 : ℚ)
  oldCenter := (921317910526267 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1962
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600]
}

noncomputable def cell_13559 : Cell := { cellDefaults with
  domain := ⟨(34185000000000001 / 40000000000000000 : ℚ), (85475000000000001 / 100000000000000000 : ℚ)⟩
  r := (22380898788793 / 50000000000000 : ℚ)
  w := (6504467522553 / 5000000000000 : ℚ)
  center := (341875000000000007 / 400000000000000000 : ℚ)
  supportValue := (2877861515264447 / 12500000000000000 : ℚ)
  supportSlope := (-8042462218647981 / 10000000000000000 : ℚ)
  oldCenter := (2877861515264447 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1962
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600]
}

noncomputable def cell_13560 : Cell := { cellDefaults with
  domain := ⟨(85475000000000001 / 100000000000000000 : ℚ), (170974999999999999 / 200000000000000000 : ℚ)⟩
  r := (22380898788793 / 50000000000000 : ℚ)
  w := (6504467522553 / 5000000000000 : ℚ)
  center := (341925000000000001 / 400000000000000000 : ℚ)
  supportValue := (2301284160037343 / 10000000000000000 : ℚ)
  supportSlope := (-8038368707398011 / 10000000000000000 : ℚ)
  oldCenter := (2301284160037343 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1962
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600]
}

noncomputable def cell_13561 : Cell := { cellDefaults with
  domain := ⟨(170974999999999999 / 200000000000000000 : ℚ), (42749999999999999 / 50000000000000000 : ℚ)⟩
  r := (22380898788793 / 50000000000000 : ℚ)
  w := (6504467522553 / 5000000000000 : ℚ)
  center := (68394999999999999 / 80000000000000000 : ℚ)
  supportValue := (23002796193115851 / 100000000000000000 : ℚ)
  supportSlope := (-8034618287578863 / 10000000000000000 : ℚ)
  oldCenter := (23002796193115851 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1962
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599, piece_600]
}

noncomputable def cell_13562 : Cell := { cellDefaults with
  domain := ⟨(42749999999999999 / 50000000000000000 : ℚ), (171024999999999999 / 200000000000000000 : ℚ)⟩
  r := (5592943393811 / 12500000000000 : ℚ)
  w := (3251209085319 / 2500000000000 : ℚ)
  center := (68404999999999999 / 80000000000000000 : ℚ)
  supportValue := (2877563008554929 / 12500000000000000 : ℚ)
  supportSlope := (-8037963929256189 / 10000000000000000 : ℚ)
  oldCenter := (2877563008554929 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1963
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600]
}

noncomputable def cell_13563 : Cell := { cellDefaults with
  domain := ⟨(171024999999999999 / 200000000000000000 : ℚ), (85525000000000001 / 100000000000000000 : ℚ)⟩
  r := (5592943393811 / 12500000000000 : ℚ)
  w := (3251209085319 / 2500000000000 : ℚ)
  center := (342075000000000001 / 400000000000000000 : ℚ)
  supportValue := (4602091833303169 / 20000000000000000 : ℚ)
  supportSlope := (-4016937644013081 / 5000000000000000 : ℚ)
  oldCenter := (4602091833303169 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1963
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600]
}

noncomputable def cell_13564 : Cell := { cellDefaults with
  domain := ⟨(85525000000000001 / 100000000000000000 : ℚ), (34215000000000001 / 40000000000000000 : ℚ)⟩
  r := (5592943393811 / 12500000000000 : ℚ)
  w := (3251209085319 / 2500000000000 : ℚ)
  center := (342125000000000007 / 400000000000000000 : ℚ)
  supportValue := (2300041937299381 / 10000000000000000 : ℚ)
  supportSlope := (-8030490315039809 / 10000000000000000 : ℚ)
  oldCenter := (2300041937299381 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1963
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599, piece_600]
}

noncomputable def cell_13565 : Cell := { cellDefaults with
  domain := ⟨(34215000000000001 / 40000000000000000 : ℚ), (21387500000000001 / 25000000000000000 : ℚ)⟩
  r := (5592943393811 / 12500000000000 : ℚ)
  w := (3251209085319 / 2500000000000 : ℚ)
  center := (342175000000000013 / 400000000000000000 : ℚ)
  supportValue := (2299038285720397 / 10000000000000000 : ℚ)
  supportSlope := (-8027229567470077 / 10000000000000000 : ℚ)
  oldCenter := (2299038285720397 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1963
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599]
}

noncomputable def cell_13566 : Cell := { cellDefaults with
  domain := ⟨(21387500000000001 / 25000000000000000 : ℚ), (34225000000000001 / 40000000000000000 : ℚ)⟩
  r := (44725310104291 / 100000000000000 : ℚ)
  w := (6500367690183 / 5000000000000 : ℚ)
  center := (342225000000000013 / 400000000000000000 : ℚ)
  supportValue := (2300808712950637 / 10000000000000000 : ℚ)
  supportSlope := (-4014694420442703 / 5000000000000000 : ℚ)
  oldCenter := (2300808712950637 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1964
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600]
}

noncomputable def cell_13567 : Cell := { cellDefaults with
  domain := ⟨(34225000000000001 / 40000000000000000 : ℚ), (85575000000000001 / 100000000000000000 : ℚ)⟩
  r := (44725310104291 / 100000000000000 : ℚ)
  w := (6500367690183 / 5000000000000 : ℚ)
  center := (342275000000000007 / 400000000000000000 : ℚ)
  supportValue := (2299805256967533 / 10000000000000000 : ℚ)
  supportSlope := (-8026367395107389 / 10000000000000000 : ℚ)
  oldCenter := (2299805256967533 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1964
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599, piece_600]
}

noncomputable def cell_13568 : Cell := { cellDefaults with
  domain := ⟨(85575000000000001 / 100000000000000000 : ℚ), (171174999999999999 / 200000000000000000 : ℚ)⟩
  r := (44725310104291 / 100000000000000 : ℚ)
  w := (6500367690183 / 5000000000000 : ℚ)
  center := (342325000000000001 / 400000000000000000 : ℚ)
  supportValue := (2298802157725427 / 10000000000000000 : ℚ)
  supportSlope := (-4011375281598931 / 5000000000000000 : ℚ)
  oldCenter := (2298802157725427 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1964
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599]
}

noncomputable def cell_13569 : Cell := { cellDefaults with
  domain := ⟨(171174999999999999 / 200000000000000000 : ℚ), (42799999999999999 / 50000000000000000 : ℚ)⟩
  r := (44725310104291 / 100000000000000 : ℚ)
  w := (6500367690183 / 5000000000000 : ℚ)
  center := (68474999999999999 / 80000000000000000 : ℚ)
  supportValue := (2297799568605019 / 10000000000000000 : ℚ)
  supportSlope := (-8018671510084803 / 10000000000000000 : ℚ)
  oldCenter := (2297799568605019 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1964
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599]
}

noncomputable def cell_13570 : Cell := { cellDefaults with
  domain := ⟨(42799999999999999 / 50000000000000000 : ℚ), (8562011173184357 / 10000000000000000 : ℚ)⟩
  r := (8941417089629 / 20000000000000 : ℚ)
  w := (12996632496223 / 10000000000000 : ℚ)
  center := (10701256983240223 / 12500000000000000 : ℚ)
  supportValue := (11496329855228471 / 50000000000000000 : ℚ)
  supportSlope := (-1604209650989833 / 2000000000000000 : ℚ)
  oldCenter := (11496329855228471 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1965
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599, piece_600]
}

noncomputable def cell_13571 : Cell := { cellDefaults with
  domain := ⟨(8562011173184357 / 10000000000000000 : ℚ), (85635055865921787 / 100000000000000000 : ℚ)⟩
  r := (8941417089629 / 20000000000000 : ℚ)
  w := (12996632496223 / 10000000000000 : ℚ)
  center := (171255167597765357 / 200000000000000000 : ℚ)
  supportValue := (11489294633068503 / 50000000000000000 : ℚ)
  supportSlope := (-4007699472844409 / 5000000000000000 : ℚ)
  oldCenter := (11489294633068503 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1966
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599]
}

noncomputable def cell_13572 : Cell := { cellDefaults with
  domain := ⟨(85635055865921787 / 100000000000000000 : ℚ), (21412500000000001 / 25000000000000000 : ℚ)⟩
  r := (8941417089629 / 20000000000000 : ℚ)
  w := (12996632496223 / 10000000000000 : ℚ)
  center := (171285055865921791 / 200000000000000000 : ℚ)
  supportValue := (22966614580684813 / 100000000000000000 : ℚ)
  supportSlope := (-4005265894027183 / 5000000000000000 : ℚ)
  oldCenter := (22966614580684813 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1966
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599]
}

noncomputable def cell_13573 : Cell := { cellDefaults with
  domain := ⟨(21412500000000001 / 25000000000000000 : ℚ), (34265000000000001 / 40000000000000000 : ℚ)⟩
  r := (22344437416173 / 50000000000000 : ℚ)
  w := (3248132526553 / 2500000000000 : ℚ)
  center := (342625000000000013 / 400000000000000000 : ℚ)
  supportValue := (22983325545178387 / 100000000000000000 : ℚ)
  supportSlope := (-8013811693202549 / 10000000000000000 : ℚ)
  oldCenter := (22983325545178387 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1967
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599]
}

noncomputable def cell_13574 : Cell := { cellDefaults with
  domain := ⟨(34265000000000001 / 40000000000000000 : ℚ), (85675000000000001 / 100000000000000000 : ℚ)⟩
  r := (22344437416173 / 50000000000000 : ℚ)
  w := (3248132526553 / 2500000000000 : ℚ)
  center := (342675000000000007 / 400000000000000000 : ℚ)
  supportValue := (11486655410755797 / 50000000000000000 : ℚ)
  supportSlope := (-4004871161090087 / 5000000000000000 : ℚ)
  oldCenter := (11486655410755797 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1967
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599]
}

noncomputable def cell_13575 : Cell := { cellDefaults with
  domain := ⟨(85675000000000001 / 100000000000000000 : ℚ), (171374999999999999 / 200000000000000000 : ℚ)⟩
  r := (22344437416173 / 50000000000000 : ℚ)
  w := (3248132526553 / 2500000000000 : ℚ)
  center := (342725000000000001 / 400000000000000000 : ℚ)
  supportValue := (91853204728689 / 400000000000000 : ℚ)
  supportSlope := (-8005676769912001 / 10000000000000000 : ℚ)
  oldCenter := (91853204728689 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1967
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599]
}

noncomputable def cell_13576 : Cell := { cellDefaults with
  domain := ⟨(171374999999999999 / 200000000000000000 : ℚ), (42849999999999999 / 50000000000000000 : ℚ)⟩
  r := (22344437416173 / 50000000000000 : ℚ)
  w := (3248132526553 / 2500000000000 : ℚ)
  center := (68554999999999999 / 80000000000000000 : ℚ)
  supportValue := (717290519449733 / 3125000000000000 : ℚ)
  supportSlope := (-500117199446819 / 625000000000000 : ℚ)
  oldCenter := (717290519449733 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1967
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598, piece_599]
}

noncomputable def cell_13577 : Cell := { cellDefaults with
  domain := ⟨(42849999999999999 / 50000000000000000 : ℚ), (171424999999999999 / 200000000000000000 : ℚ)⟩
  r := (44670678428351 / 100000000000000 : ℚ)
  w := (1623553537831 / 1250000000000 : ℚ)
  center := (68564999999999999 / 80000000000000000 : ℚ)
  supportValue := (22970975135239283 / 100000000000000000 : ℚ)
  supportSlope := (-8005285329061457 / 10000000000000000 : ℚ)
  oldCenter := (22970975135239283 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1968
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599]
}

noncomputable def cell_13578 : Cell := { cellDefaults with
  domain := ⟨(171424999999999999 / 200000000000000000 : ℚ), (85725000000000001 / 100000000000000000 : ℚ)⟩
  r := (44670678428351 / 100000000000000 : ℚ)
  w := (1623553537831 / 1250000000000 : ℚ)
  center := (342875000000000001 / 400000000000000000 : ℚ)
  supportValue := (1148048553206459 / 5000000000000000 : ℚ)
  supportSlope := (-800122459714629 / 1000000000000000 : ℚ)
  oldCenter := (1148048553206459 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1968
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599]
}

noncomputable def cell_13579 : Cell := { cellDefaults with
  domain := ⟨(85725000000000001 / 100000000000000000 : ℚ), (34295000000000001 / 40000000000000000 : ℚ)⟩
  r := (44670678428351 / 100000000000000 : ℚ)
  w := (1623553537831 / 1250000000000 : ℚ)
  center := (342925000000000007 / 400000000000000000 : ℚ)
  supportValue := (2295097206655663 / 10000000000000000 : ℚ)
  supportSlope := (-7997780658838423 / 10000000000000000 : ℚ)
  oldCenter := (2295097206655663 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1968
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598, piece_599]
}

noncomputable def cell_13580 : Cell := { cellDefaults with
  domain := ⟨(34295000000000001 / 40000000000000000 : ℚ), (21437500000000001 / 25000000000000000 : ℚ)⟩
  r := (44670678428351 / 100000000000000 : ℚ)
  w := (1623553537831 / 1250000000000 : ℚ)
  center := (342975000000000013 / 400000000000000000 : ℚ)
  supportValue := (22940976423817397 / 100000000000000000 : ℚ)
  supportSlope := (-7994629205127097 / 10000000000000000 : ℚ)
  oldCenter := (22940976423817397 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1968
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598]
}

noncomputable def cell_13581 : Cell := { cellDefaults with
  domain := ⟨(21437500000000001 / 25000000000000000 : ℚ), (34305000000000001 / 40000000000000000 : ℚ)⟩
  r := (22326247325861 / 50000000000000 : ℚ)
  w := (12984324351153 / 10000000000000 : ℚ)
  center := (343025000000000013 / 400000000000000000 : ℚ)
  supportValue := (5739662964979849 / 25000000000000000 : ℚ)
  supportSlope := (-7996779441331441 / 10000000000000000 : ℚ)
  oldCenter := (5739662964979849 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1969
  oldLo := (11474999999999999 / 50000000000000000 : ℚ)
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_599]
}

noncomputable def cell_13582 : Cell := { cellDefaults with
  domain := ⟨(34305000000000001 / 40000000000000000 : ℚ), (85775000000000001 / 100000000000000000 : ℚ)⟩
  r := (22326247325861 / 50000000000000 : ℚ)
  w := (12984324351153 / 10000000000000 : ℚ)
  center := (343075000000000007 / 400000000000000000 : ℚ)
  supportValue := (22948658159420587 / 100000000000000000 : ℚ)
  supportSlope := (-7993691156428077 / 10000000000000000 : ℚ)
  oldCenter := (22948658159420587 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1969
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598, piece_599]
}

noncomputable def cell_13583 : Cell := { cellDefaults with
  domain := ⟨(85775000000000001 / 100000000000000000 : ℚ), (171574999999999999 / 200000000000000000 : ℚ)⟩
  r := (22326247325861 / 50000000000000 : ℚ)
  w := (12984324351153 / 10000000000000 : ℚ)
  center := (343125000000000001 / 400000000000000000 : ℚ)
  supportValue := (22938667883318867 / 100000000000000000 : ℚ)
  supportSlope := (-7990191432091079 / 10000000000000000 : ℚ)
  oldCenter := (22938667883318867 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1969
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598]
}

noncomputable def cell_13584 : Cell := { cellDefaults with
  domain := ⟨(171574999999999999 / 200000000000000000 : ℚ), (42899999999999999 / 50000000000000000 : ℚ)⟩
  r := (22326247325861 / 50000000000000 : ℚ)
  w := (12984324351153 / 10000000000000 : ℚ)
  center := (68634999999999999 / 80000000000000000 : ℚ)
  supportValue := (1146434133682947 / 5000000000000000 : ℚ)
  supportSlope := (-3993070090502683 / 5000000000000000 : ℚ)
  oldCenter := (1146434133682947 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1969
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598]
}

noncomputable def cell_13585 : Cell := { cellDefaults with
  domain := ⟨(42899999999999999 / 50000000000000000 : ℚ), (171624999999999999 / 200000000000000000 : ℚ)⟩
  r := (2231716201701 / 5000000000000 : ℚ)
  w := (6490109313189 / 5000000000000 : ℚ)
  center := (68644999999999999 / 80000000000000000 : ℚ)
  supportValue := (4589270738837577 / 20000000000000000 : ℚ)
  supportSlope := (-7989606534425527 / 10000000000000000 : ℚ)
  oldCenter := (4589270738837577 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1970
  oldHi := (11499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598, piece_599]
}

noncomputable def cell_13586 : Cell := { cellDefaults with
  domain := ⟨(171624999999999999 / 200000000000000000 : ℚ), (85825000000000001 / 100000000000000000 : ℚ)⟩
  r := (2231716201701 / 5000000000000 : ℚ)
  w := (6490109313189 / 5000000000000 : ℚ)
  center := (343275000000000001 / 400000000000000000 : ℚ)
  supportValue := (11468184480000661 / 50000000000000000 : ℚ)
  supportSlope := (-798576028113189 / 1000000000000000 : ℚ)
  oldCenter := (11468184480000661 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1970
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598]
}

noncomputable def cell_13587 : Cell := { cellDefaults with
  domain := ⟨(85825000000000001 / 100000000000000000 : ℚ), (34335000000000001 / 40000000000000000 : ℚ)⟩
  r := (2231716201701 / 5000000000000 : ℚ)
  w := (6490109313189 / 5000000000000 : ℚ)
  center := (343325000000000007 / 400000000000000000 : ℚ)
  supportValue := (22926389286309093 / 100000000000000000 : ℚ)
  supportSlope := (-3990856892270377 / 5000000000000000 : ℚ)
  oldCenter := (22926389286309093 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1970
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598]
}

noncomputable def cell_13588 : Cell := { cellDefaults with
  domain := ⟨(34335000000000001 / 40000000000000000 : ℚ), (21462500000000001 / 25000000000000000 : ℚ)⟩
  r := (2231716201701 / 5000000000000 : ℚ)
  w := (6490109313189 / 5000000000000 : ℚ)
  center := (343375000000000013 / 400000000000000000 : ℚ)
  supportValue := (1145820733418467 / 5000000000000000 : ℚ)
  supportSlope := (-249302221181883 / 312500000000000 : ℚ)
  oldCenter := (1145820733418467 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1970
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598]
}

noncomputable def cell_13589 : Cell := { cellDefaults with
  domain := ⟨(21462500000000001 / 25000000000000000 : ℚ), (343450000000000011 / 400000000000000000 : ℚ)⟩
  r := (44616166863649 / 100000000000000 : ℚ)
  w := (6488056521647 / 5000000000000 : ℚ)
  center := (686850000000000027 / 800000000000000000 : ℚ)
  supportValue := (71668987341883 / 312500000000000 : ℚ)
  supportSlope := (-3990667267120117 / 5000000000000000 : ℚ)
  oldCenter := (71668987341883 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1971
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598]
}

noncomputable def cell_13590 : Cell := { cellDefaults with
  domain := ⟨(343450000000000011 / 400000000000000000 : ℚ), (171750000000000003 / 200000000000000000 : ℚ)⟩
  r := (44616166863649 / 100000000000000 : ℚ)
  w := (6488056521647 / 5000000000000 : ℚ)
  center := (686950000000000017 / 800000000000000000 : ℚ)
  supportValue := (5731025451225879 / 25000000000000000 : ℚ)
  supportSlope := (-7977292823256563 / 10000000000000000 : ℚ)
  oldCenter := (5731025451225879 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1971
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598]
}

noncomputable def cell_13591 : Cell := { cellDefaults with
  domain := ⟨(171750000000000003 / 200000000000000000 : ℚ), (343550000000000001 / 400000000000000000 : ℚ)⟩
  r := (44616166863649 / 100000000000000 : ℚ)
  w := (6488056521647 / 5000000000000 : ℚ)
  center := (687050000000000007 / 800000000000000000 : ℚ)
  supportValue := (2291413271017929 / 10000000000000000 : ℚ)
  supportSlope := (-124582107737399 / 156250000000000 : ℚ)
  oldCenter := (2291413271017929 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1971
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598]
}

noncomputable def cell_13592 : Cell := { cellDefaults with
  domain := ⟨(343550000000000001 / 400000000000000000 : ℚ), (85899999999999999 / 100000000000000000 : ℚ)⟩
  r := (44616166863649 / 100000000000000 : ℚ)
  w := (6488056521647 / 5000000000000 : ℚ)
  center := (687149999999999997 / 800000000000000000 : ℚ)
  supportValue := (5726042165126423 / 25000000000000000 : ℚ)
  supportSlope := (-3984672611505989 / 5000000000000000 : ℚ)
  oldCenter := (5726042165126423 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1971
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597, piece_598]
}

noncomputable def cell_13593 : Cell := { cellDefaults with
  domain := ⟨(85899999999999999 / 100000000000000000 : ℚ), (343650000000000001 / 400000000000000000 : ℚ)⟩
  r := (22299011939587 / 50000000000000 : ℚ)
  w := (12972008384533 / 10000000000000 : ℚ)
  center := (687249999999999997 / 800000000000000000 : ℚ)
  supportValue := (5730454500397681 / 25000000000000000 : ℚ)
  supportSlope := (-1993219149321957 / 2500000000000000 : ℚ)
  oldCenter := (5730454500397681 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1972
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598]
}

noncomputable def cell_13594 : Cell := { cellDefaults with
  domain := ⟨(343650000000000001 / 400000000000000000 : ℚ), (171850000000000003 / 200000000000000000 : ℚ)⟩
  r := (22299011939587 / 50000000000000 : ℚ)
  w := (12972008384533 / 10000000000000 : ℚ)
  center := (687350000000000007 / 800000000000000000 : ℚ)
  supportValue := (5727963606042409 / 25000000000000000 : ℚ)
  supportSlope := (-1992210859249411 / 2500000000000000 : ℚ)
  oldCenter := (5727963606042409 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1972
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598]
}

noncomputable def cell_13595 : Cell := { cellDefaults with
  domain := ⟨(171850000000000003 / 200000000000000000 : ℚ), (343750000000000011 / 400000000000000000 : ℚ)⟩
  r := (22299011939587 / 50000000000000 : ℚ)
  w := (12972008384533 / 10000000000000 : ℚ)
  center := (687450000000000017 / 800000000000000000 : ℚ)
  supportValue := (11450947942921927 / 50000000000000000 : ℚ)
  supportSlope := (-12445755648237 / 15625000000000 : ℚ)
  oldCenter := (11450947942921927 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1972
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597, piece_598]
}

noncomputable def cell_13596 : Cell := { cellDefaults with
  domain := ⟨(343750000000000011 / 400000000000000000 : ℚ), (21487500000000001 / 25000000000000000 : ℚ)⟩
  r := (22299011939587 / 50000000000000 : ℚ)
  w := (12972008384533 / 10000000000000 : ℚ)
  center := (687550000000000027 / 800000000000000000 : ℚ)
  supportValue := (2289194085069773 / 10000000000000000 : ℚ)
  supportSlope := (-796229754628817 / 1000000000000000 : ℚ)
  oldCenter := (2289194085069773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1972
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597]
}

noncomputable def cell_13597 : Cell := { cellDefaults with
  domain := ⟨(21487500000000001 / 25000000000000000 : ℚ), (343850000000000011 / 400000000000000000 : ℚ)⟩
  r := (44579893779657 / 100000000000000 : ℚ)
  w := (3241975108597 / 2500000000000 : ℚ)
  center := (687650000000000027 / 800000000000000000 : ℚ)
  supportValue := (22909588623115557 / 100000000000000000 : ℚ)
  supportSlope := (-1592887901969479 / 2000000000000000 : ℚ)
  oldCenter := (22909588623115557 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1973
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_598]
}

noncomputable def cell_13598 : Cell := { cellDefaults with
  domain := ⟨(343850000000000011 / 400000000000000000 : ℚ), (171950000000000003 / 200000000000000000 : ℚ)⟩
  r := (44579893779657 / 100000000000000 : ℚ)
  w := (3241975108597 / 2500000000000 : ℚ)
  center := (687750000000000017 / 800000000000000000 : ℚ)
  supportValue := (22899635516135183 / 100000000000000000 : ℚ)
  supportSlope := (-3980613657890551 / 5000000000000000 : ℚ)
  oldCenter := (22899635516135183 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1973
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597, piece_598]
}

noncomputable def cell_13599 : Cell := { cellDefaults with
  domain := ⟨(171950000000000003 / 200000000000000000 : ℚ), (343950000000000001 / 400000000000000000 : ℚ)⟩
  r := (44579893779657 / 100000000000000 : ℚ)
  w := (3241975108597 / 2500000000000 : ℚ)
  center := (687850000000000007 / 800000000000000000 : ℚ)
  supportValue := (228896856203643 / 1000000000000000 : ℚ)
  supportSlope := (-7957900922873313 / 10000000000000000 : ℚ)
  oldCenter := (228896856203643 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1973
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597]
}

theorem check_13550 : cell_13550.check = true := by
  decide +kernel

theorem check_13551 : cell_13551.check = true := by
  decide +kernel

theorem check_13552 : cell_13552.check = true := by
  decide +kernel

theorem check_13553 : cell_13553.check = true := by
  decide +kernel

theorem check_13554 : cell_13554.check = true := by
  decide +kernel

theorem check_13555 : cell_13555.check = true := by
  decide +kernel

theorem check_13556 : cell_13556.check = true := by
  decide +kernel

theorem check_13557 : cell_13557.check = true := by
  decide +kernel

theorem check_13558 : cell_13558.check = true := by
  decide +kernel

theorem check_13559 : cell_13559.check = true := by
  decide +kernel

theorem check_13560 : cell_13560.check = true := by
  decide +kernel

theorem check_13561 : cell_13561.check = true := by
  decide +kernel

theorem check_13562 : cell_13562.check = true := by
  decide +kernel

theorem check_13563 : cell_13563.check = true := by
  decide +kernel

theorem check_13564 : cell_13564.check = true := by
  decide +kernel

theorem check_13565 : cell_13565.check = true := by
  decide +kernel

theorem check_13566 : cell_13566.check = true := by
  decide +kernel

theorem check_13567 : cell_13567.check = true := by
  decide +kernel

theorem check_13568 : cell_13568.check = true := by
  decide +kernel

theorem check_13569 : cell_13569.check = true := by
  decide +kernel

theorem check_13570 : cell_13570.check = true := by
  decide +kernel

theorem check_13571 : cell_13571.check = true := by
  decide +kernel

theorem check_13572 : cell_13572.check = true := by
  decide +kernel

theorem check_13573 : cell_13573.check = true := by
  decide +kernel

theorem check_13574 : cell_13574.check = true := by
  decide +kernel

theorem check_13575 : cell_13575.check = true := by
  decide +kernel

theorem check_13576 : cell_13576.check = true := by
  decide +kernel

theorem check_13577 : cell_13577.check = true := by
  decide +kernel

theorem check_13578 : cell_13578.check = true := by
  decide +kernel

theorem check_13579 : cell_13579.check = true := by
  decide +kernel

theorem check_13580 : cell_13580.check = true := by
  decide +kernel

theorem check_13581 : cell_13581.check = true := by
  decide +kernel

theorem check_13582 : cell_13582.check = true := by
  decide +kernel

theorem check_13583 : cell_13583.check = true := by
  decide +kernel

theorem check_13584 : cell_13584.check = true := by
  decide +kernel

theorem check_13585 : cell_13585.check = true := by
  decide +kernel

theorem check_13586 : cell_13586.check = true := by
  decide +kernel

theorem check_13587 : cell_13587.check = true := by
  decide +kernel

theorem check_13588 : cell_13588.check = true := by
  decide +kernel

theorem check_13589 : cell_13589.check = true := by
  decide +kernel

theorem check_13590 : cell_13590.check = true := by
  decide +kernel

theorem check_13591 : cell_13591.check = true := by
  decide +kernel

theorem check_13592 : cell_13592.check = true := by
  decide +kernel

theorem check_13593 : cell_13593.check = true := by
  decide +kernel

theorem check_13594 : cell_13594.check = true := by
  decide +kernel

theorem check_13595 : cell_13595.check = true := by
  decide +kernel

theorem check_13596 : cell_13596.check = true := by
  decide +kernel

theorem check_13597 : cell_13597.check = true := by
  decide +kernel

theorem check_13598 : cell_13598.check = true := by
  decide +kernel

theorem check_13599 : cell_13599.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13550, cell_13551, cell_13552, cell_13553, cell_13554, cell_13555, cell_13556, cell_13557, cell_13558, cell_13559, cell_13560, cell_13561, cell_13562, cell_13563, cell_13564, cell_13565, cell_13566, cell_13567, cell_13568, cell_13569, cell_13570, cell_13571, cell_13572, cell_13573, cell_13574, cell_13575, cell_13576, cell_13577, cell_13578, cell_13579, cell_13580, cell_13581, cell_13582, cell_13583, cell_13584, cell_13585, cell_13586, cell_13587, cell_13588, cell_13589, cell_13590, cell_13591, cell_13592, cell_13593, cell_13594, cell_13595, cell_13596, cell_13597, cell_13598, cell_13599]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13550, check_13551, check_13552, check_13553, check_13554, check_13555, check_13556, check_13557, check_13558, check_13559, check_13560, check_13561, check_13562, check_13563, check_13564, check_13565, check_13566, check_13567, check_13568, check_13569, check_13570, check_13571, check_13572, check_13573, check_13574, check_13575, check_13576, check_13577, check_13578, check_13579, check_13580, check_13581, check_13582, check_13583, check_13584, check_13585, check_13586, check_13587, check_13588, check_13589, check_13590, check_13591, check_13592, check_13593, check_13594, check_13595, check_13596, check_13597, check_13598, check_13599, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0271

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0271
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0271
open AnalyticBounds.ExpressionCertificate

theorem linked_13550 : Linked cell_13550 pieces := by
  link_source cell_13550 with piece_1960 using piece_1960_mem, piece_601_mem

theorem linked_13551 : Linked cell_13551 pieces := by
  link_source cell_13551 with piece_1960 using piece_1960_mem, ⟨piece_600_mem, piece_601_mem⟩

theorem linked_13552 : Linked cell_13552 pieces := by
  link_source cell_13552 with piece_1960 using piece_1960_mem, piece_600_mem

theorem linked_13553 : Linked cell_13553 pieces := by
  link_source cell_13553 with piece_1960 using piece_1960_mem, piece_600_mem

theorem linked_13554 : Linked cell_13554 pieces := by
  link_source cell_13554 with piece_1961 using piece_1961_mem, ⟨piece_600_mem, piece_601_mem⟩

theorem linked_13555 : Linked cell_13555 pieces := by
  link_source cell_13555 with piece_1961 using piece_1961_mem, piece_600_mem

theorem linked_13556 : Linked cell_13556 pieces := by
  link_source cell_13556 with piece_1961 using piece_1961_mem, piece_600_mem

theorem linked_13557 : Linked cell_13557 pieces := by
  link_source cell_13557 with piece_1961 using piece_1961_mem, piece_600_mem

theorem linked_13558 : Linked cell_13558 pieces := by
  link_source cell_13558 with piece_1962 using piece_1962_mem, piece_600_mem

theorem linked_13559 : Linked cell_13559 pieces := by
  link_source cell_13559 with piece_1962 using piece_1962_mem, piece_600_mem

theorem linked_13560 : Linked cell_13560 pieces := by
  link_source cell_13560 with piece_1962 using piece_1962_mem, piece_600_mem

theorem linked_13561 : Linked cell_13561 pieces := by
  link_source cell_13561 with piece_1962 using piece_1962_mem, ⟨piece_599_mem, piece_600_mem⟩

theorem linked_13562 : Linked cell_13562 pieces := by
  link_source cell_13562 with piece_1963 using piece_1963_mem, piece_600_mem

theorem linked_13563 : Linked cell_13563 pieces := by
  link_source cell_13563 with piece_1963 using piece_1963_mem, piece_600_mem

theorem linked_13564 : Linked cell_13564 pieces := by
  link_source cell_13564 with piece_1963 using piece_1963_mem, ⟨piece_599_mem, piece_600_mem⟩

theorem linked_13565 : Linked cell_13565 pieces := by
  link_source cell_13565 with piece_1963 using piece_1963_mem, piece_599_mem

theorem linked_13566 : Linked cell_13566 pieces := by
  link_source cell_13566 with piece_1964 using piece_1964_mem, piece_600_mem

theorem linked_13567 : Linked cell_13567 pieces := by
  link_source cell_13567 with piece_1964 using piece_1964_mem, ⟨piece_599_mem, piece_600_mem⟩

theorem linked_13568 : Linked cell_13568 pieces := by
  link_source cell_13568 with piece_1964 using piece_1964_mem, piece_599_mem

theorem linked_13569 : Linked cell_13569 pieces := by
  link_source cell_13569 with piece_1964 using piece_1964_mem, piece_599_mem

theorem linked_13570 : Linked cell_13570 pieces := by
  link_source cell_13570 with piece_1965 using piece_1965_mem, ⟨piece_599_mem, piece_600_mem⟩

theorem linked_13571 : Linked cell_13571 pieces := by
  link_source cell_13571 with piece_1966 using piece_1966_mem, piece_599_mem

theorem linked_13572 : Linked cell_13572 pieces := by
  link_source cell_13572 with piece_1966 using piece_1966_mem, piece_599_mem

theorem linked_13573 : Linked cell_13573 pieces := by
  link_source cell_13573 with piece_1967 using piece_1967_mem, piece_599_mem

theorem linked_13574 : Linked cell_13574 pieces := by
  link_source cell_13574 with piece_1967 using piece_1967_mem, piece_599_mem

theorem linked_13575 : Linked cell_13575 pieces := by
  link_source cell_13575 with piece_1967 using piece_1967_mem, piece_599_mem

theorem linked_13576 : Linked cell_13576 pieces := by
  link_source cell_13576 with piece_1967 using piece_1967_mem, ⟨piece_598_mem, piece_599_mem⟩

theorem linked_13577 : Linked cell_13577 pieces := by
  link_source cell_13577 with piece_1968 using piece_1968_mem, piece_599_mem

theorem linked_13578 : Linked cell_13578 pieces := by
  link_source cell_13578 with piece_1968 using piece_1968_mem, piece_599_mem

theorem linked_13579 : Linked cell_13579 pieces := by
  link_source cell_13579 with piece_1968 using piece_1968_mem, ⟨piece_598_mem, piece_599_mem⟩

theorem linked_13580 : Linked cell_13580 pieces := by
  link_source cell_13580 with piece_1968 using piece_1968_mem, piece_598_mem

theorem linked_13581 : Linked cell_13581 pieces := by
  link_source cell_13581 with piece_1969 using piece_1969_mem, piece_599_mem

theorem linked_13582 : Linked cell_13582 pieces := by
  link_source cell_13582 with piece_1969 using piece_1969_mem, ⟨piece_598_mem, piece_599_mem⟩

theorem linked_13583 : Linked cell_13583 pieces := by
  link_source cell_13583 with piece_1969 using piece_1969_mem, piece_598_mem

theorem linked_13584 : Linked cell_13584 pieces := by
  link_source cell_13584 with piece_1969 using piece_1969_mem, piece_598_mem

theorem linked_13585 : Linked cell_13585 pieces := by
  link_source cell_13585 with piece_1970 using piece_1970_mem, ⟨piece_598_mem, piece_599_mem⟩

theorem linked_13586 : Linked cell_13586 pieces := by
  link_source cell_13586 with piece_1970 using piece_1970_mem, piece_598_mem

theorem linked_13587 : Linked cell_13587 pieces := by
  link_source cell_13587 with piece_1970 using piece_1970_mem, piece_598_mem

theorem linked_13588 : Linked cell_13588 pieces := by
  link_source cell_13588 with piece_1970 using piece_1970_mem, piece_598_mem

theorem linked_13589 : Linked cell_13589 pieces := by
  link_source cell_13589 with piece_1971 using piece_1971_mem, piece_598_mem

theorem linked_13590 : Linked cell_13590 pieces := by
  link_source cell_13590 with piece_1971 using piece_1971_mem, piece_598_mem

theorem linked_13591 : Linked cell_13591 pieces := by
  link_source cell_13591 with piece_1971 using piece_1971_mem, piece_598_mem

theorem linked_13592 : Linked cell_13592 pieces := by
  link_source cell_13592 with piece_1971 using piece_1971_mem, ⟨piece_597_mem, piece_598_mem⟩

theorem linked_13593 : Linked cell_13593 pieces := by
  link_source cell_13593 with piece_1972 using piece_1972_mem, piece_598_mem

theorem linked_13594 : Linked cell_13594 pieces := by
  link_source cell_13594 with piece_1972 using piece_1972_mem, piece_598_mem

theorem linked_13595 : Linked cell_13595 pieces := by
  link_source cell_13595 with piece_1972 using piece_1972_mem, ⟨piece_597_mem, piece_598_mem⟩

theorem linked_13596 : Linked cell_13596 pieces := by
  link_source cell_13596 with piece_1972 using piece_1972_mem, piece_597_mem

theorem linked_13597 : Linked cell_13597 pieces := by
  link_source cell_13597 with piece_1973 using piece_1973_mem, piece_598_mem

theorem linked_13598 : Linked cell_13598 pieces := by
  link_source cell_13598 with piece_1973 using piece_1973_mem, ⟨piece_597_mem, piece_598_mem⟩

theorem linked_13599 : Linked cell_13599 pieces := by
  link_source cell_13599 with piece_1973 using piece_1973_mem, piece_597_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0271.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0271.cells,List.forall_mem_cons]
  exact ⟨linked_13550, linked_13551, linked_13552, linked_13553, linked_13554, linked_13555, linked_13556, linked_13557, linked_13558, linked_13559, linked_13560, linked_13561, linked_13562, linked_13563, linked_13564, linked_13565, linked_13566, linked_13567, linked_13568, linked_13569, linked_13570, linked_13571, linked_13572, linked_13573, linked_13574, linked_13575, linked_13576, linked_13577, linked_13578, linked_13579, linked_13580, linked_13581, linked_13582, linked_13583, linked_13584, linked_13585, linked_13586, linked_13587, linked_13588, linked_13589, linked_13590, linked_13591, linked_13592, linked_13593, linked_13594, linked_13595, linked_13596, linked_13597, linked_13598, linked_13599, by simp⟩

theorem covered : covers (21337500000000001 / 25000000000000000 : ℚ) (343950000000000001 / 400000000000000000 : ℚ)
    (SourceCertificates.Chunk0271.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0271
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0272
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(343950000000000001 / 400000000000000000 : ℚ), (85999999999999999 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (5570222029723 / 12500000000000 : ℚ)
  w := (12963792005649 / 10000000000000 : ℚ)
  center := (687949999999999997 / 800000000000000000 : ℚ)
  supportValue := (714991898646311 / 3125000000000000 : ℚ)
  supportSlope := (-7953877136582483 / 10000000000000000 : ℚ)
  oldCenter := (714991898646311 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1974
  oldLo := (22750000000000001 / 100000000000000000 : ℚ)
  oldHi := (22800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_595]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13600 : Cell := { cellDefaults with
  r := (44579893779657 / 100000000000000 : ℚ)
  w := (3241975108597 / 2500000000000 : ℚ)
  newCoefficients := coefficients_1973
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597]
}

noncomputable def cell_13601 : Cell := { cellDefaults with
  domain := ⟨(85999999999999999 / 100000000000000000 : ℚ), (344050000000000001 / 400000000000000000 : ℚ)⟩
  center := (688049999999999997 / 800000000000000000 : ℚ)
  supportValue := (1144869134441517 / 5000000000000000 : ℚ)
  supportSlope := (-795717547346451 / 1000000000000000 : ℚ)
  oldCenter := (1144869134441517 / 5000000000000000 : ℚ)
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597, piece_598]
}

noncomputable def cell_13602 : Cell := { cellDefaults with
  domain := ⟨(344050000000000001 / 400000000000000000 : ℚ), (172050000000000003 / 200000000000000000 : ℚ)⟩
  center := (688150000000000007 / 800000000000000000 : ℚ)
  supportValue := (22887438284351289 / 100000000000000000 : ℚ)
  supportSlope := (-7953510257231771 / 10000000000000000 : ℚ)
  oldCenter := (22887438284351289 / 100000000000000000 : ℚ)
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597]
}

noncomputable def cell_13603 : Cell := { cellDefaults with
  domain := ⟨(172050000000000003 / 200000000000000000 : ℚ), (344150000000000011 / 400000000000000000 : ℚ)⟩
  center := (688250000000000017 / 800000000000000000 : ℚ)
  supportValue := (1143874945302333 / 5000000000000000 : ℚ)
  supportSlope := (-3974745599390641 / 5000000000000000 : ℚ)
  oldCenter := (1143874945302333 / 5000000000000000 : ℚ)
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597]
}

noncomputable def cell_13604 : Cell := { cellDefaults with
  domain := ⟨(344150000000000011 / 400000000000000000 : ℚ), (21512500000000001 / 25000000000000000 : ℚ)⟩
  center := (688350000000000027 / 800000000000000000 : ℚ)
  supportValue := (2286756454921897 / 10000000000000000 : ℚ)
  supportSlope := (-7945475894727587 / 10000000000000000 : ℚ)
  oldCenter := (2286756454921897 / 10000000000000000 : ℚ)
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597]
}

noncomputable def cell_13605 : Cell := { cellDefaults with
  domain := ⟨(21512500000000001 / 25000000000000000 : ℚ), (344250000000000011 / 400000000000000000 : ℚ)⟩
  r := (44543672703793 / 100000000000000 : ℚ)
  w := (323992072397 / 250000000000 : ℚ)
  center := (688450000000000027 / 800000000000000000 : ℚ)
  supportValue := (2860649692112889 / 12500000000000000 : ℚ)
  supportSlope := (-7949125246989559 / 10000000000000000 : ℚ)
  oldCenter := (2860649692112889 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1975
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597]
}

noncomputable def cell_13606 : Cell := { cellDefaults with
  domain := ⟨(344250000000000011 / 400000000000000000 : ℚ), (172150000000000003 / 200000000000000000 : ℚ)⟩
  r := (44543672703793 / 100000000000000 : ℚ)
  w := (323992072397 / 250000000000 : ℚ)
  center := (688550000000000017 / 800000000000000000 : ℚ)
  supportValue := (5718815909227993 / 25000000000000000 : ℚ)
  supportSlope := (-3972555454166257 / 5000000000000000 : ℚ)
  oldCenter := (5718815909227993 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1975
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597]
}

noncomputable def cell_13607 : Cell := { cellDefaults with
  domain := ⟨(172150000000000003 / 200000000000000000 : ℚ), (344350000000000001 / 400000000000000000 : ℚ)⟩
  r := (44543672703793 / 100000000000000 : ℚ)
  w := (323992072397 / 250000000000 : ℚ)
  center := (688650000000000007 / 800000000000000000 : ℚ)
  supportValue := (1143266737625119 / 5000000000000000 : ℚ)
  supportSlope := (-124079692455313 / 156250000000000 : ℚ)
  oldCenter := (1143266737625119 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1975
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597]
}

noncomputable def cell_13608 : Cell := { cellDefaults with
  domain := ⟨(344350000000000001 / 400000000000000000 : ℚ), (86099999999999999 / 100000000000000000 : ℚ)⟩
  r := (44543672703793 / 100000000000000 : ℚ)
  w := (323992072397 / 250000000000 : ℚ)
  center := (688749999999999997 / 800000000000000000 : ℚ)
  supportValue := (5713852719748607 / 25000000000000000 : ℚ)
  supportSlope := (-7937093466342209 / 10000000000000000 : ℚ)
  oldCenter := (5713852719748607 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1975
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597]
}

noncomputable def cell_13609 : Cell := { cellDefaults with
  domain := ⟨(86099999999999999 / 100000000000000000 : ℚ), (344450000000000001 / 400000000000000000 : ℚ)⟩
  r := (44525582560881 / 100000000000000 : ℚ)
  w := (3238893439307 / 2500000000000 : ℚ)
  center := (688849999999999997 / 800000000000000000 : ℚ)
  supportValue := (4574606895670681 / 20000000000000000 : ℚ)
  supportSlope := (-7940736042603463 / 10000000000000000 : ℚ)
  oldCenter := (4574606895670681 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1976
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597]
}

noncomputable def cell_13610 : Cell := { cellDefaults with
  domain := ⟨(344450000000000001 / 400000000000000000 : ℚ), (172250000000000003 / 200000000000000000 : ℚ)⟩
  r := (44525582560881 / 100000000000000 : ℚ)
  w := (3238893439307 / 2500000000000 : ℚ)
  center := (688950000000000007 / 800000000000000000 : ℚ)
  supportValue := (22863111059585497 / 100000000000000000 : ℚ)
  supportSlope := (-3968365078523431 / 5000000000000000 : ℚ)
  oldCenter := (22863111059585497 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1976
  oldLo := (11424999999999999 / 50000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_597]
}

noncomputable def cell_13611 : Cell := { cellDefaults with
  domain := ⟨(172250000000000003 / 200000000000000000 : ℚ), (344550000000000011 / 400000000000000000 : ℚ)⟩
  r := (44525582560881 / 100000000000000 : ℚ)
  w := (3238893439307 / 2500000000000 : ℚ)
  center := (689050000000000017 / 800000000000000000 : ℚ)
  supportValue := (11426596322920743 / 50000000000000000 : ℚ)
  supportSlope := (-7932997414438521 / 10000000000000000 : ℚ)
  oldCenter := (11426596322920743 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1976
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596, piece_597]
}

noncomputable def cell_13612 : Cell := { cellDefaults with
  domain := ⟨(344550000000000011 / 400000000000000000 : ℚ), (21537500000000001 / 25000000000000000 : ℚ)⟩
  r := (44525582560881 / 100000000000000 : ℚ)
  w := (3238893439307 / 2500000000000 : ℚ)
  center := (689150000000000027 / 800000000000000000 : ℚ)
  supportValue := (11421638977403713 / 50000000000000000 : ℚ)
  supportSlope := (-793023335369379 / 1000000000000000 : ℚ)
  oldCenter := (11421638977403713 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1976
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596]
}

noncomputable def cell_13613 : Cell := { cellDefaults with
  domain := ⟨(21537500000000001 / 25000000000000000 : ℚ), (861731843575419 / 1000000000000000 : ℚ)⟩
  r := (22253752859517 / 50000000000000 : ℚ)
  w := (1618933016377 / 1250000000000 : ℚ)
  center := (10770199022346369 / 12500000000000000 : ℚ)
  supportValue := (11428336595058311 / 50000000000000000 : ℚ)
  supportSlope := (-3965432751645473 / 5000000000000000 : ℚ)
  oldCenter := (11428336595058311 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1977
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596, piece_597]
}

noncomputable def cell_13614 : Cell := { cellDefaults with
  domain := ⟨(861731843575419 / 1000000000000000 : ℚ), (172373184357541899 / 200000000000000000 : ℚ)⟩
  r := (22253752859517 / 50000000000000 : ℚ)
  w := (1618933016377 / 1250000000000 : ℚ)
  center := (344719553072625699 / 400000000000000000 : ℚ)
  supportValue := (22842151045011067 / 100000000000000000 : ℚ)
  supportSlope := (-7926311708256887 / 10000000000000000 : ℚ)
  oldCenter := (22842151045011067 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1978
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596]
}

noncomputable def cell_13615 : Cell := { cellDefaults with
  domain := ⟨(172373184357541899 / 200000000000000000 : ℚ), (86199999999999999 / 100000000000000000 : ℚ)⟩
  r := (22253752859517 / 50000000000000 : ℚ)
  w := (1618933016377 / 1250000000000 : ℚ)
  center := (344773184357541897 / 400000000000000000 : ℚ)
  supportValue := (11415763229786337 / 50000000000000000 : ℚ)
  supportSlope := (-1584404911154311 / 2000000000000000 : ℚ)
  oldCenter := (11415763229786337 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1978
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596]
}

noncomputable def cell_13616 : Cell := { cellDefaults with
  domain := ⟨(86199999999999999 / 100000000000000000 : ℚ), (344850000000000001 / 400000000000000000 : ℚ)⟩
  r := (44489440431517 / 100000000000000 : ℚ)
  w := (12947350715847 / 10000000000000 : ℚ)
  center := (689649999999999997 / 800000000000000000 : ℚ)
  supportValue := (1142439228423703 / 5000000000000000 : ℚ)
  supportSlope := (-792495453747853 / 1000000000000000 : ℚ)
  oldCenter := (1142439228423703 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1979
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11449999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596, piece_597]
}

noncomputable def cell_13617 : Cell := { cellDefaults with
  domain := ⟨(344850000000000001 / 400000000000000000 : ℚ), (172450000000000003 / 200000000000000000 : ℚ)⟩
  r := (44489440431517 / 100000000000000 : ℚ)
  w := (12947350715847 / 10000000000000 : ℚ)
  center := (689750000000000007 / 800000000000000000 : ℚ)
  supportValue := (913555206406913 / 4000000000000000 : ℚ)
  supportSlope := (-7921526902840189 / 10000000000000000 : ℚ)
  oldCenter := (913555206406913 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1979
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596]
}

noncomputable def cell_13618 : Cell := { cellDefaults with
  domain := ⟨(172450000000000003 / 200000000000000000 : ℚ), (344950000000000011 / 400000000000000000 : ℚ)⟩
  r := (44489440431517 / 100000000000000 : ℚ)
  w := (12947350715847 / 10000000000000 : ℚ)
  center := (689850000000000017 / 800000000000000000 : ℚ)
  supportValue := (228289807441113 / 1000000000000000 : ℚ)
  supportSlope := (-7917534974598891 / 10000000000000000 : ℚ)
  oldCenter := (228289807441113 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1979
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596]
}

noncomputable def cell_13619 : Cell := { cellDefaults with
  domain := ⟨(344950000000000011 / 400000000000000000 : ℚ), (21562500000000001 / 25000000000000000 : ℚ)⟩
  r := (44489440431517 / 100000000000000 : ℚ)
  w := (12947350715847 / 10000000000000 : ℚ)
  center := (689950000000000027 / 800000000000000000 : ℚ)
  supportValue := (1140954315781793 / 5000000000000000 : ℚ)
  supportSlope := (-7913546765733511 / 10000000000000000 : ℚ)
  oldCenter := (1140954315781793 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1979
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596]
}

noncomputable def cell_13620 : Cell := { cellDefaults with
  domain := ⟨(21562500000000001 / 25000000000000000 : ℚ), (345050000000000011 / 400000000000000000 : ℚ)⟩
  r := (8894277865417 / 20000000000000 : ℚ)
  w := (6471619106119 / 5000000000000 : ℚ)
  center := (690050000000000027 / 800000000000000000 : ℚ)
  supportValue := (2283669207827257 / 10000000000000000 : ℚ)
  supportSlope := (-3958591166622179 / 5000000000000000 : ℚ)
  oldCenter := (2283669207827257 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1980
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596]
}

noncomputable def cell_13621 : Cell := { cellDefaults with
  domain := ⟨(345050000000000011 / 400000000000000000 : ℚ), (172550000000000003 / 200000000000000000 : ℚ)⟩
  r := (8894277865417 / 20000000000000 : ℚ)
  w := (6471619106119 / 5000000000000 : ℚ)
  center := (690150000000000017 / 800000000000000000 : ℚ)
  supportValue := (11413399045002233 / 50000000000000000 : ℚ)
  supportSlope := (-3956597537793489 / 5000000000000000 : ℚ)
  oldCenter := (11413399045002233 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1980
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596]
}

noncomputable def cell_13622 : Cell := { cellDefaults with
  domain := ⟨(172550000000000003 / 200000000000000000 : ℚ), (345150000000000001 / 400000000000000000 : ℚ)⟩
  r := (8894277865417 / 20000000000000 : ℚ)
  w := (6471619106119 / 5000000000000 : ℚ)
  center := (690250000000000007 / 800000000000000000 : ℚ)
  supportValue := (11408454541744273 / 50000000000000000 : ℚ)
  supportSlope := (-7909211530448781 / 10000000000000000 : ℚ)
  oldCenter := (11408454541744273 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1980
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596]
}

noncomputable def cell_13623 : Cell := { cellDefaults with
  domain := ⟨(345150000000000001 / 400000000000000000 : ℚ), (86299999999999999 / 100000000000000000 : ℚ)⟩
  r := (8894277865417 / 20000000000000 : ℚ)
  w := (6471619106119 / 5000000000000 : ℚ)
  center := (690349999999999997 / 800000000000000000 : ℚ)
  supportValue := (22807025054088467 / 100000000000000000 : ℚ)
  supportSlope := (-1581046338172401 / 2000000000000000 : ℚ)
  oldCenter := (22807025054088467 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1980
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596]
}

noncomputable def cell_13624 : Cell := { cellDefaults with
  domain := ⟨(86299999999999999 / 100000000000000000 : ℚ), (172625000000000001 / 200000000000000000 : ℚ)⟩
  r := (44453351918843 / 100000000000000 : ℚ)
  w := (12939125322489 / 10000000000000 : ℚ)
  center := (345224999999999999 / 400000000000000000 : ℚ)
  supportValue := (1426538856022477 / 6250000000000000 : ℚ)
  supportSlope := (-7908860649775857 / 10000000000000000 : ℚ)
  oldCenter := (1426538856022477 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1981
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596]
}

noncomputable def cell_13625 : Cell := { cellDefaults with
  domain := ⟨(172625000000000001 / 200000000000000000 : ℚ), (43162500000000001 / 50000000000000000 : ℚ)⟩
  r := (44453351918843 / 100000000000000 : ℚ)
  w := (12939125322489 / 10000000000000 : ℚ)
  center := (69055000000000001 / 80000000000000000 : ℚ)
  supportValue := (1140736905248677 / 5000000000000000 : ℚ)
  supportSlope := (-247027554668681 / 312500000000000 : ℚ)
  oldCenter := (1140736905248677 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1981
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596]
}

noncomputable def cell_13626 : Cell := { cellDefaults with
  domain := ⟨(43162500000000001 / 50000000000000000 : ℚ), (172675000000000007 / 200000000000000000 : ℚ)⟩
  r := (44453351918843 / 100000000000000 : ℚ)
  w := (12939125322489 / 10000000000000 : ℚ)
  center := (345325000000000011 / 400000000000000000 : ℚ)
  supportValue := (22804859484901627 / 100000000000000000 : ℚ)
  supportSlope := (-7900919447084871 / 10000000000000000 : ℚ)
  oldCenter := (22804859484901627 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1981
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_595, piece_596]
}

noncomputable def cell_13627 : Cell := { cellDefaults with
  domain := ⟨(172675000000000007 / 200000000000000000 : ℚ), (17270000000000001 / 20000000000000000 : ℚ)⟩
  r := (44453351918843 / 100000000000000 : ℚ)
  w := (12939125322489 / 10000000000000 : ℚ)
  center := (345375000000000017 / 400000000000000000 : ℚ)
  supportValue := (22794984877760333 / 100000000000000000 : ℚ)
  supportSlope := (-987304203562293 / 1250000000000000 : ℚ)
  oldCenter := (22794984877760333 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1981
  oldPieces := [piece_595]
}

noncomputable def cell_13628 : Cell := { cellDefaults with
  domain := ⟨(17270000000000001 / 20000000000000000 : ℚ), (172725000000000007 / 200000000000000000 : ℚ)⟩
  r := (22217664081511 / 50000000000000 : ℚ)
  w := (1616876552293 / 1250000000000 : ℚ)
  center := (345425000000000017 / 400000000000000000 : ℚ)
  supportValue := (2281257275555129 / 10000000000000000 : ℚ)
  supportSlope := (-7900557198389061 / 10000000000000000 : ℚ)
  oldCenter := (2281257275555129 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1982
  oldLo := (22800000000000001 / 100000000000000000 : ℚ)
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_596]
}

noncomputable def cell_13629 : Cell := { cellDefaults with
  domain := ⟨(172725000000000007 / 200000000000000000 : ℚ), (43187500000000001 / 50000000000000000 : ℚ)⟩
  r := (22217664081511 / 50000000000000 : ℚ)
  w := (1616876552293 / 1250000000000 : ℚ)
  center := (345475000000000011 / 400000000000000000 : ℚ)
  supportValue := (4560539907652621 / 20000000000000000 : ℚ)
  supportSlope := (-1579385508177123 / 2000000000000000 : ℚ)
  oldCenter := (4560539907652621 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1982
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_595, piece_596]
}

noncomputable def cell_13630 : Cell := { cellDefaults with
  domain := ⟨(43187500000000001 / 50000000000000000 : ℚ), (172775000000000001 / 200000000000000000 : ℚ)⟩
  r := (22217664081511 / 50000000000000 : ℚ)
  w := (1616876552293 / 1250000000000 : ℚ)
  center := (69105000000000001 / 80000000000000000 : ℚ)
  supportValue := (22792829919405047 / 100000000000000000 : ℚ)
  supportSlope := (-7894116288952149 / 10000000000000000 : ℚ)
  oldCenter := (22792829919405047 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1982
  oldPieces := [piece_595]
}

noncomputable def cell_13631 : Cell := { cellDefaults with
  domain := ⟨(172775000000000001 / 200000000000000000 : ℚ), (86399999999999999 / 100000000000000000 : ℚ)⟩
  r := (22217664081511 / 50000000000000 : ℚ)
  w := (1616876552293 / 1250000000000 : ℚ)
  center := (345574999999999999 / 400000000000000000 : ℚ)
  supportValue := (11391482376362967 / 50000000000000000 : ℚ)
  supportSlope := (-3945073293046193 / 5000000000000000 : ℚ)
  oldCenter := (11391482376362967 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1982
  oldPieces := [piece_595]
}

noncomputable def cell_13632 : Cell := { cellDefaults with
  domain := ⟨(86399999999999999 / 100000000000000000 : ℚ), (172825000000000001 / 200000000000000000 : ℚ)⟩
  r := (4441731635381 / 10000000000000 : ℚ)
  w := (12930896458029 / 10000000000000 : ℚ)
  center := (345624999999999999 / 400000000000000000 : ℚ)
  supportValue := (57001381018683 / 250000000000000 : ℚ)
  supportSlope := (-3946470423525443 / 5000000000000000 : ℚ)
  oldCenter := (57001381018683 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1983
  oldHi := (11424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_595, piece_596]
}

noncomputable def cell_13633 : Cell := { cellDefaults with
  domain := ⟨(172825000000000001 / 200000000000000000 : ℚ), (43212500000000001 / 50000000000000000 : ℚ)⟩
  r := (4441731635381 / 10000000000000 : ℚ)
  w := (12930896458029 / 10000000000000 : ℚ)
  center := (69135000000000001 / 80000000000000000 : ℚ)
  supportValue := (11395343885195461 / 50000000000000000 : ℚ)
  supportSlope := (-3944903185246289 / 5000000000000000 : ℚ)
  oldCenter := (11395343885195461 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1983
  oldPieces := [piece_595]
}

noncomputable def cell_13634 : Cell := { cellDefaults with
  domain := ⟨(43212500000000001 / 50000000000000000 : ℚ), (172875000000000007 / 200000000000000000 : ℚ)⟩
  r := (4441731635381 / 10000000000000 : ℚ)
  w := (12930896458029 / 10000000000000 : ℚ)
  center := (345725000000000011 / 400000000000000000 : ℚ)
  supportValue := (11390413994110879 / 50000000000000000 : ℚ)
  supportSlope := (-3942920644774499 / 5000000000000000 : ℚ)
  oldCenter := (11390413994110879 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1983
  oldPieces := [piece_595]
}

noncomputable def cell_13635 : Cell := { cellDefaults with
  domain := ⟨(172875000000000007 / 200000000000000000 : ℚ), (17290000000000001 / 20000000000000000 : ℚ)⟩
  r := (4441731635381 / 10000000000000 : ℚ)
  w := (12930896458029 / 10000000000000 : ℚ)
  center := (345775000000000017 / 400000000000000000 : ℚ)
  supportValue := (2277097316010119 / 10000000000000000 : ℚ)
  supportSlope := (-7881879893377907 / 10000000000000000 : ℚ)
  oldCenter := (2277097316010119 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1983
  oldPieces := [piece_595]
}

noncomputable def cell_13636 : Cell := { cellDefaults with
  domain := ⟨(17290000000000001 / 20000000000000000 : ℚ), (172925000000000007 / 200000000000000000 : ℚ)⟩
  r := (4439931777409 / 10000000000000 : ℚ)
  w := (6463390171127 / 5000000000000 : ℚ)
  center := (345825000000000017 / 400000000000000000 : ℚ)
  supportValue := (11394275954538391 / 50000000000000000 : ℚ)
  supportSlope := (-7885501852858803 / 10000000000000000 : ℚ)
  oldCenter := (11394275954538391 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1984
  oldPieces := [piece_595]
}

noncomputable def cell_13637 : Cell := { cellDefaults with
  domain := ⟨(172925000000000007 / 200000000000000000 : ℚ), (43237500000000001 / 50000000000000000 : ℚ)⟩
  r := (4439931777409 / 10000000000000 : ℚ)
  w := (6463390171127 / 5000000000000 : ℚ)
  center := (345875000000000011 / 400000000000000000 : ℚ)
  supportValue := (2847337188084343 / 12500000000000000 : ℚ)
  supportSlope := (-3940770690336521 / 5000000000000000 : ℚ)
  oldCenter := (2847337188084343 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1984
  oldPieces := [piece_595]
}

noncomputable def cell_13638 : Cell := { cellDefaults with
  domain := ⟨(43237500000000001 / 50000000000000000 : ℚ), (172975000000000001 / 200000000000000000 : ℚ)⟩
  r := (4439931777409 / 10000000000000 : ℚ)
  w := (6463390171127 / 5000000000000 : ℚ)
  center := (69185000000000001 / 80000000000000000 : ℚ)
  supportValue := (11384424024282283 / 50000000000000000 : ℚ)
  supportSlope := (-7877584586540699 / 10000000000000000 : ℚ)
  oldCenter := (11384424024282283 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1984
  oldPieces := [piece_595]
}

noncomputable def cell_13639 : Cell := { cellDefaults with
  domain := ⟨(172975000000000001 / 200000000000000000 : ℚ), (86499999999999999 / 100000000000000000 : ℚ)⟩
  r := (4439931777409 / 10000000000000 : ℚ)
  w := (6463390171127 / 5000000000000 : ℚ)
  center := (345974999999999999 / 400000000000000000 : ℚ)
  supportValue := (11379501768076483 / 50000000000000000 : ℚ)
  supportSlope := (-7873631463573949 / 10000000000000000 : ℚ)
  oldCenter := (11379501768076483 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1984
  oldPieces := [piece_595]
}

noncomputable def cell_13640 : Cell := { cellDefaults with
  domain := ⟨(86499999999999999 / 100000000000000000 : ℚ), (173025000000000001 / 200000000000000000 : ℚ)⟩
  r := (44381331976971 / 100000000000000 : ℚ)
  w := (12922662246041 / 10000000000000 : ℚ)
  center := (346024999999999999 / 400000000000000000 : ℚ)
  supportValue := (22776576955913627 / 100000000000000000 : ℚ)
  supportSlope := (-7877248022371163 / 10000000000000000 : ℚ)
  oldCenter := (22776576955913627 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1985
  oldPieces := [piece_595]
}

noncomputable def cell_13641 : Cell := { cellDefaults with
  domain := ⟨(173025000000000001 / 200000000000000000 : ℚ), (43262500000000001 / 50000000000000000 : ℚ)⟩
  r := (44381331976971 / 100000000000000 : ℚ)
  w := (12922662246041 / 10000000000000 : ℚ)
  center := (69215000000000001 / 80000000000000000 : ℚ)
  supportValue := (2276673286363167 / 10000000000000000 : ℚ)
  supportSlope := (-7873295820574221 / 10000000000000000 : ℚ)
  oldCenter := (2276673286363167 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1985
  oldPieces := [piece_595]
}

noncomputable def cell_13642 : Cell := { cellDefaults with
  domain := ⟨(43262500000000001 / 50000000000000000 : ℚ), (173075000000000007 / 200000000000000000 : ℚ)⟩
  r := (44381331976971 / 100000000000000 : ℚ)
  w := (12922662246041 / 10000000000000 : ℚ)
  center := (346125000000000011 / 400000000000000000 : ℚ)
  supportValue := (11378446854656017 / 50000000000000000 : ℚ)
  supportSlope := (-7869347283285977 / 10000000000000000 : ℚ)
  oldCenter := (11378446854656017 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1985
  oldPieces := [piece_595]
}

noncomputable def cell_13643 : Cell := { cellDefaults with
  domain := ⟨(173075000000000007 / 200000000000000000 : ℚ), (17310000000000001 / 20000000000000000 : ℚ)⟩
  r := (44381331976971 / 100000000000000 : ℚ)
  w := (12922662246041 / 10000000000000 : ℚ)
  center := (346175000000000017 / 400000000000000000 : ℚ)
  supportValue := (11373529464190897 / 50000000000000000 : ℚ)
  supportSlope := (-983324547460411 / 1250000000000000 : ℚ)
  oldCenter := (11373529464190897 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1985
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594, piece_595]
}

noncomputable def cell_13644 : Cell := { cellDefaults with
  domain := ⟨(17310000000000001 / 20000000000000000 : ℚ), (173125000000000007 / 200000000000000000 : ℚ)⟩
  r := (5545420037123 / 12500000000000 : ℚ)
  w := (12918546030009 / 10000000000000 : ℚ)
  center := (346225000000000017 / 400000000000000000 : ℚ)
  supportValue := (5691154840283133 / 25000000000000000 : ℚ)
  supportSlope := (-1573802199914287 / 2000000000000000 : ℚ)
  oldCenter := (5691154840283133 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1986
  oldPieces := [piece_595]
}

noncomputable def cell_13645 : Cell := { cellDefaults with
  domain := ⟨(173125000000000007 / 200000000000000000 : ℚ), (43287500000000001 / 50000000000000000 : ℚ)⟩
  r := (5545420037123 / 12500000000000 : ℚ)
  w := (12918546030009 / 10000000000000 : ℚ)
  center := (346275000000000011 / 400000000000000000 : ℚ)
  supportValue := (2275478555997679 / 10000000000000000 : ℚ)
  supportSlope := (-3932543887324363 / 5000000000000000 : ℚ)
  oldCenter := (2275478555997679 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1986
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594, piece_595]
}

noncomputable def cell_13646 : Cell := { cellDefaults with
  domain := ⟨(43287500000000001 / 50000000000000000 : ℚ), (173175000000000001 / 200000000000000000 : ℚ)⟩
  r := (5545420037123 / 12500000000000 : ℚ)
  w := (12918546030009 / 10000000000000 : ℚ)
  center := (69265000000000001 / 80000000000000000 : ℚ)
  supportValue := (2274495572734761 / 10000000000000000 : ℚ)
  supportSlope := (-982827284759631 / 1250000000000000 : ℚ)
  oldCenter := (2274495572734761 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1986
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

noncomputable def cell_13647 : Cell := { cellDefaults with
  domain := ⟨(173175000000000001 / 200000000000000000 : ℚ), (86599999999999999 / 100000000000000000 : ℚ)⟩
  r := (5545420037123 / 12500000000000 : ℚ)
  w := (12918546030009 / 10000000000000 : ℚ)
  center := (346374999999999999 / 400000000000000000 : ℚ)
  supportValue := (5683782479142771 / 25000000000000000 : ℚ)
  supportSlope := (-1964668790795057 / 2500000000000000 : ℚ)
  oldCenter := (5683782479142771 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1986
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

noncomputable def cell_13648 : Cell := { cellDefaults with
  domain := ⟨(86599999999999999 / 100000000000000000 : ℚ), (173225000000000001 / 200000000000000000 : ℚ)⟩
  r := (44345401461261 / 100000000000000 : ℚ)
  w := (6457213684809 / 5000000000000 : ℚ)
  center := (346424999999999999 / 400000000000000000 : ℚ)
  supportValue := (1422043000925907 / 6250000000000000 : ℚ)
  supportSlope := (-7861132745547063 / 10000000000000000 : ℚ)
  oldCenter := (1422043000925907 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1987
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594, piece_595]
}

noncomputable def cell_13649 : Cell := { cellDefaults with
  domain := ⟨(173225000000000001 / 200000000000000000 : ℚ), (43312500000000001 / 50000000000000000 : ℚ)⟩
  r := (44345401461261 / 100000000000000 : ℚ)
  w := (6457213684809 / 5000000000000 : ℚ)
  center := (69295000000000001 / 80000000000000000 : ℚ)
  supportValue := (2274286312438713 / 10000000000000000 : ℚ)
  supportSlope := (-982293416140083 / 1250000000000000 : ℚ)
  oldCenter := (2274286312438713 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1987
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

theorem check_13600 : cell_13600.check = true := by
  decide +kernel

theorem check_13601 : cell_13601.check = true := by
  decide +kernel

theorem check_13602 : cell_13602.check = true := by
  decide +kernel

theorem check_13603 : cell_13603.check = true := by
  decide +kernel

theorem check_13604 : cell_13604.check = true := by
  decide +kernel

theorem check_13605 : cell_13605.check = true := by
  decide +kernel

theorem check_13606 : cell_13606.check = true := by
  decide +kernel

theorem check_13607 : cell_13607.check = true := by
  decide +kernel

theorem check_13608 : cell_13608.check = true := by
  decide +kernel

theorem check_13609 : cell_13609.check = true := by
  decide +kernel

theorem check_13610 : cell_13610.check = true := by
  decide +kernel

theorem check_13611 : cell_13611.check = true := by
  decide +kernel

theorem check_13612 : cell_13612.check = true := by
  decide +kernel

theorem check_13613 : cell_13613.check = true := by
  decide +kernel

theorem check_13614 : cell_13614.check = true := by
  decide +kernel

theorem check_13615 : cell_13615.check = true := by
  decide +kernel

theorem check_13616 : cell_13616.check = true := by
  decide +kernel

theorem check_13617 : cell_13617.check = true := by
  decide +kernel

theorem check_13618 : cell_13618.check = true := by
  decide +kernel

theorem check_13619 : cell_13619.check = true := by
  decide +kernel

theorem check_13620 : cell_13620.check = true := by
  decide +kernel

theorem check_13621 : cell_13621.check = true := by
  decide +kernel

theorem check_13622 : cell_13622.check = true := by
  decide +kernel

theorem check_13623 : cell_13623.check = true := by
  decide +kernel

theorem check_13624 : cell_13624.check = true := by
  decide +kernel

theorem check_13625 : cell_13625.check = true := by
  decide +kernel

theorem check_13626 : cell_13626.check = true := by
  decide +kernel

theorem check_13627 : cell_13627.check = true := by
  decide +kernel

theorem check_13628 : cell_13628.check = true := by
  decide +kernel

theorem check_13629 : cell_13629.check = true := by
  decide +kernel

theorem check_13630 : cell_13630.check = true := by
  decide +kernel

theorem check_13631 : cell_13631.check = true := by
  decide +kernel

theorem check_13632 : cell_13632.check = true := by
  decide +kernel

theorem check_13633 : cell_13633.check = true := by
  decide +kernel

theorem check_13634 : cell_13634.check = true := by
  decide +kernel

theorem check_13635 : cell_13635.check = true := by
  decide +kernel

theorem check_13636 : cell_13636.check = true := by
  decide +kernel

theorem check_13637 : cell_13637.check = true := by
  decide +kernel

theorem check_13638 : cell_13638.check = true := by
  decide +kernel

theorem check_13639 : cell_13639.check = true := by
  decide +kernel

theorem check_13640 : cell_13640.check = true := by
  decide +kernel

theorem check_13641 : cell_13641.check = true := by
  decide +kernel

theorem check_13642 : cell_13642.check = true := by
  decide +kernel

theorem check_13643 : cell_13643.check = true := by
  decide +kernel

theorem check_13644 : cell_13644.check = true := by
  decide +kernel

theorem check_13645 : cell_13645.check = true := by
  decide +kernel

theorem check_13646 : cell_13646.check = true := by
  decide +kernel

theorem check_13647 : cell_13647.check = true := by
  decide +kernel

theorem check_13648 : cell_13648.check = true := by
  decide +kernel

theorem check_13649 : cell_13649.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13600, cell_13601, cell_13602, cell_13603, cell_13604, cell_13605, cell_13606, cell_13607, cell_13608, cell_13609, cell_13610, cell_13611, cell_13612, cell_13613, cell_13614, cell_13615, cell_13616, cell_13617, cell_13618, cell_13619, cell_13620, cell_13621, cell_13622, cell_13623, cell_13624, cell_13625, cell_13626, cell_13627, cell_13628, cell_13629, cell_13630, cell_13631, cell_13632, cell_13633, cell_13634, cell_13635, cell_13636, cell_13637, cell_13638, cell_13639, cell_13640, cell_13641, cell_13642, cell_13643, cell_13644, cell_13645, cell_13646, cell_13647, cell_13648, cell_13649]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13600, check_13601, check_13602, check_13603, check_13604, check_13605, check_13606, check_13607, check_13608, check_13609, check_13610, check_13611, check_13612, check_13613, check_13614, check_13615, check_13616, check_13617, check_13618, check_13619, check_13620, check_13621, check_13622, check_13623, check_13624, check_13625, check_13626, check_13627, check_13628, check_13629, check_13630, check_13631, check_13632, check_13633, check_13634, check_13635, check_13636, check_13637, check_13638, check_13639, check_13640, check_13641, check_13642, check_13643, check_13644, check_13645, check_13646, check_13647, check_13648, check_13649, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0272

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0272
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0272
open AnalyticBounds.ExpressionCertificate

theorem linked_13600 : Linked cell_13600 pieces := by
  link_source cell_13600 with piece_1973 using piece_1973_mem, piece_597_mem

theorem linked_13601 : Linked cell_13601 pieces := by
  link_source cell_13601 with piece_1974 using piece_1974_mem, ⟨piece_597_mem, piece_598_mem⟩

theorem linked_13602 : Linked cell_13602 pieces := by
  link_source cell_13602 with piece_1974 using piece_1974_mem, piece_597_mem

theorem linked_13603 : Linked cell_13603 pieces := by
  link_source cell_13603 with piece_1974 using piece_1974_mem, piece_597_mem

theorem linked_13604 : Linked cell_13604 pieces := by
  link_source cell_13604 with piece_1974 using piece_1974_mem, piece_597_mem

theorem linked_13605 : Linked cell_13605 pieces := by
  link_source cell_13605 with piece_1975 using piece_1975_mem, piece_597_mem

theorem linked_13606 : Linked cell_13606 pieces := by
  link_source cell_13606 with piece_1975 using piece_1975_mem, piece_597_mem

theorem linked_13607 : Linked cell_13607 pieces := by
  link_source cell_13607 with piece_1975 using piece_1975_mem, piece_597_mem

theorem linked_13608 : Linked cell_13608 pieces := by
  link_source cell_13608 with piece_1975 using piece_1975_mem, piece_597_mem

theorem linked_13609 : Linked cell_13609 pieces := by
  link_source cell_13609 with piece_1976 using piece_1976_mem, piece_597_mem

theorem linked_13610 : Linked cell_13610 pieces := by
  link_source cell_13610 with piece_1976 using piece_1976_mem, piece_597_mem

theorem linked_13611 : Linked cell_13611 pieces := by
  link_source cell_13611 with piece_1976 using piece_1976_mem, ⟨piece_596_mem, piece_597_mem⟩

theorem linked_13612 : Linked cell_13612 pieces := by
  link_source cell_13612 with piece_1976 using piece_1976_mem, piece_596_mem

theorem linked_13613 : Linked cell_13613 pieces := by
  link_source cell_13613 with piece_1977 using piece_1977_mem, ⟨piece_596_mem, piece_597_mem⟩

theorem linked_13614 : Linked cell_13614 pieces := by
  link_source cell_13614 with piece_1978 using piece_1978_mem, piece_596_mem

theorem linked_13615 : Linked cell_13615 pieces := by
  link_source cell_13615 with piece_1978 using piece_1978_mem, piece_596_mem

theorem linked_13616 : Linked cell_13616 pieces := by
  link_source cell_13616 with piece_1979 using piece_1979_mem, ⟨piece_596_mem, piece_597_mem⟩

theorem linked_13617 : Linked cell_13617 pieces := by
  link_source cell_13617 with piece_1979 using piece_1979_mem, piece_596_mem

theorem linked_13618 : Linked cell_13618 pieces := by
  link_source cell_13618 with piece_1979 using piece_1979_mem, piece_596_mem

theorem linked_13619 : Linked cell_13619 pieces := by
  link_source cell_13619 with piece_1979 using piece_1979_mem, piece_596_mem

theorem linked_13620 : Linked cell_13620 pieces := by
  link_source cell_13620 with piece_1980 using piece_1980_mem, piece_596_mem

theorem linked_13621 : Linked cell_13621 pieces := by
  link_source cell_13621 with piece_1980 using piece_1980_mem, piece_596_mem

theorem linked_13622 : Linked cell_13622 pieces := by
  link_source cell_13622 with piece_1980 using piece_1980_mem, piece_596_mem

theorem linked_13623 : Linked cell_13623 pieces := by
  link_source cell_13623 with piece_1980 using piece_1980_mem, piece_596_mem

theorem linked_13624 : Linked cell_13624 pieces := by
  link_source cell_13624 with piece_1981 using piece_1981_mem, piece_596_mem

theorem linked_13625 : Linked cell_13625 pieces := by
  link_source cell_13625 with piece_1981 using piece_1981_mem, piece_596_mem

theorem linked_13626 : Linked cell_13626 pieces := by
  link_source cell_13626 with piece_1981 using piece_1981_mem, ⟨piece_595_mem, piece_596_mem⟩

theorem linked_13627 : Linked cell_13627 pieces := by
  link_source cell_13627 with piece_1981 using piece_1981_mem, piece_595_mem

theorem linked_13628 : Linked cell_13628 pieces := by
  link_source cell_13628 with piece_1982 using piece_1982_mem, piece_596_mem

theorem linked_13629 : Linked cell_13629 pieces := by
  link_source cell_13629 with piece_1982 using piece_1982_mem, ⟨piece_595_mem, piece_596_mem⟩

theorem linked_13630 : Linked cell_13630 pieces := by
  link_source cell_13630 with piece_1982 using piece_1982_mem, piece_595_mem

theorem linked_13631 : Linked cell_13631 pieces := by
  link_source cell_13631 with piece_1982 using piece_1982_mem, piece_595_mem

theorem linked_13632 : Linked cell_13632 pieces := by
  link_source cell_13632 with piece_1983 using piece_1983_mem, ⟨piece_595_mem, piece_596_mem⟩

theorem linked_13633 : Linked cell_13633 pieces := by
  link_source cell_13633 with piece_1983 using piece_1983_mem, piece_595_mem

theorem linked_13634 : Linked cell_13634 pieces := by
  link_source cell_13634 with piece_1983 using piece_1983_mem, piece_595_mem

theorem linked_13635 : Linked cell_13635 pieces := by
  link_source cell_13635 with piece_1983 using piece_1983_mem, piece_595_mem

theorem linked_13636 : Linked cell_13636 pieces := by
  link_source cell_13636 with piece_1984 using piece_1984_mem, piece_595_mem

theorem linked_13637 : Linked cell_13637 pieces := by
  link_source cell_13637 with piece_1984 using piece_1984_mem, piece_595_mem

theorem linked_13638 : Linked cell_13638 pieces := by
  link_source cell_13638 with piece_1984 using piece_1984_mem, piece_595_mem

theorem linked_13639 : Linked cell_13639 pieces := by
  link_source cell_13639 with piece_1984 using piece_1984_mem, piece_595_mem

theorem linked_13640 : Linked cell_13640 pieces := by
  link_source cell_13640 with piece_1985 using piece_1985_mem, piece_595_mem

theorem linked_13641 : Linked cell_13641 pieces := by
  link_source cell_13641 with piece_1985 using piece_1985_mem, piece_595_mem

theorem linked_13642 : Linked cell_13642 pieces := by
  link_source cell_13642 with piece_1985 using piece_1985_mem, piece_595_mem

theorem linked_13643 : Linked cell_13643 pieces := by
  link_source cell_13643 with piece_1985 using piece_1985_mem, ⟨piece_594_mem, piece_595_mem⟩

theorem linked_13644 : Linked cell_13644 pieces := by
  link_source cell_13644 with piece_1986 using piece_1986_mem, piece_595_mem

theorem linked_13645 : Linked cell_13645 pieces := by
  link_source cell_13645 with piece_1986 using piece_1986_mem, ⟨piece_594_mem, piece_595_mem⟩

theorem linked_13646 : Linked cell_13646 pieces := by
  link_source cell_13646 with piece_1986 using piece_1986_mem, piece_594_mem

theorem linked_13647 : Linked cell_13647 pieces := by
  link_source cell_13647 with piece_1986 using piece_1986_mem, piece_594_mem

theorem linked_13648 : Linked cell_13648 pieces := by
  link_source cell_13648 with piece_1987 using piece_1987_mem, ⟨piece_594_mem, piece_595_mem⟩

theorem linked_13649 : Linked cell_13649 pieces := by
  link_source cell_13649 with piece_1987 using piece_1987_mem, piece_594_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0272.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0272.cells,List.forall_mem_cons]
  exact ⟨linked_13600, linked_13601, linked_13602, linked_13603, linked_13604, linked_13605, linked_13606, linked_13607, linked_13608, linked_13609, linked_13610, linked_13611, linked_13612, linked_13613, linked_13614, linked_13615, linked_13616, linked_13617, linked_13618, linked_13619, linked_13620, linked_13621, linked_13622, linked_13623, linked_13624, linked_13625, linked_13626, linked_13627, linked_13628, linked_13629, linked_13630, linked_13631, linked_13632, linked_13633, linked_13634, linked_13635, linked_13636, linked_13637, linked_13638, linked_13639, linked_13640, linked_13641, linked_13642, linked_13643, linked_13644, linked_13645, linked_13646, linked_13647, linked_13648, linked_13649, by simp⟩

theorem covered : covers (343950000000000001 / 400000000000000000 : ℚ) (43312500000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0272.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0272
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0273
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(43312500000000001 / 50000000000000000 : ℚ), (173275000000000007 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (22163727581929 / 50000000000000 : ℚ)
  w := (12910307081507 / 10000000000000 : ℚ)
  center := (346525000000000011 / 400000000000000000 : ℚ)
  supportValue := (1136652132472117 / 5000000000000000 : ℚ)
  supportSlope := (-314176351288571 / 400000000000000 : ℚ)
  oldCenter := (1136652132472117 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1988
  oldLo := (22600000000000001 / 100000000000000000 : ℚ)
  oldHi := (22700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13650 : Cell := { cellDefaults with
  r := (44345401461261 / 100000000000000 : ℚ)
  w := (6457213684809 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1987
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

noncomputable def cell_13651 : Cell := { cellDefaults with
  domain := ⟨(173275000000000007 / 200000000000000000 : ℚ), (17330000000000001 / 20000000000000000 : ℚ)⟩
  r := (44345401461261 / 100000000000000 : ℚ)
  w := (6457213684809 / 5000000000000 : ℚ)
  center := (346575000000000017 / 400000000000000000 : ℚ)
  supportValue := (2272322709539991 / 10000000000000000 : ℚ)
  supportSlope := (-7850473886036493 / 10000000000000000 : ℚ)
  oldCenter := (2272322709539991 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1987
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

noncomputable def cell_13652 : Cell := { cellDefaults with
  domain := ⟨(17330000000000001 / 20000000000000000 : ℚ), (173325000000000007 / 200000000000000000 : ℚ)⟩
  center := (346625000000000017 / 400000000000000000 : ℚ)
  supportValue := (11370390009415411 / 50000000000000000 : ℚ)
  supportSlope := (-7854082727064391 / 10000000000000000 : ℚ)
  oldCenter := (11370390009415411 / 50000000000000000 : ℚ)
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

noncomputable def cell_13653 : Cell := { cellDefaults with
  domain := ⟨(173325000000000007 / 200000000000000000 : ℚ), (43337500000000001 / 50000000000000000 : ℚ)⟩
  center := (346675000000000011 / 400000000000000000 : ℚ)
  supportValue := (22730964871788997 / 100000000000000000 : ℚ)
  supportSlope := (-196253718510643 / 250000000000000 : ℚ)
  oldCenter := (22730964871788997 / 100000000000000000 : ℚ)
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

noncomputable def cell_13654 : Cell := { cellDefaults with
  domain := ⟨(43337500000000001 / 50000000000000000 : ℚ), (173375000000000001 / 200000000000000000 : ℚ)⟩
  center := (69345000000000001 / 80000000000000000 : ℚ)
  supportValue := (22721154639953337 / 100000000000000000 : ℚ)
  supportSlope := (-7846218397872081 / 10000000000000000 : ℚ)
  oldCenter := (22721154639953337 / 100000000000000000 : ℚ)
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

noncomputable def cell_13655 : Cell := { cellDefaults with
  domain := ⟨(173375000000000001 / 200000000000000000 : ℚ), (86699999999999999 / 100000000000000000 : ℚ)⟩
  center := (346774999999999999 / 400000000000000000 : ℚ)
  supportValue := (1419459332423313 / 6250000000000000 : ℚ)
  supportSlope := (-1568458338513789 / 2000000000000000 : ℚ)
  oldCenter := (1419459332423313 / 6250000000000000 : ℚ)
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

noncomputable def cell_13656 : Cell := { cellDefaults with
  domain := ⟨(86699999999999999 / 100000000000000000 : ℚ), (173426256983240219 / 200000000000000000 : ℚ)⟩
  r := (5538690248129 / 12500000000000 : ℚ)
  w := (6453092996623 / 5000000000000 : ℚ)
  center := (346826256983240217 / 400000000000000000 : ℚ)
  supportValue := (22728647914514427 / 100000000000000000 : ℚ)
  supportSlope := (-196144891726749 / 250000000000000 : ℚ)
  oldCenter := (22728647914514427 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1989
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

noncomputable def cell_13657 : Cell := { cellDefaults with
  domain := ⟨(173426256983240219 / 200000000000000000 : ℚ), (4336312849162011 / 5000000000000000 : ℚ)⟩
  r := (5538690248129 / 12500000000000 : ℚ)
  w := (6453092996623 / 5000000000000 : ℚ)
  center := (346878770949720659 / 400000000000000000 : ℚ)
  supportValue := (18174680217797 / 80000000000000 : ℚ)
  supportSlope := (-3920836338931809 / 5000000000000000 : ℚ)
  oldCenter := (18174680217797 / 80000000000000 : ℚ)
  newCoefficients := coefficients_1989
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

noncomputable def cell_13658 : Cell := { cellDefaults with
  domain := ⟨(4336312849162011 / 5000000000000000 : ℚ), (17350000000000001 / 20000000000000000 : ℚ)⟩
  r := (5538690248129 / 12500000000000 : ℚ)
  w := (6453092996623 / 5000000000000 : ℚ)
  center := (6939050279329609 / 8000000000000000 : ℚ)
  supportValue := (11351957388897209 / 50000000000000000 : ℚ)
  supportSlope := (-3918161295831029 / 5000000000000000 : ℚ)
  oldCenter := (11351957388897209 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1990
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593, piece_594]
}

noncomputable def cell_13659 : Cell := { cellDefaults with
  domain := ⟨(17350000000000001 / 20000000000000000 : ℚ), (173525000000000007 / 200000000000000000 : ℚ)⟩
  r := (22145800751103 / 50000000000000 : ℚ)
  w := (2580412828177 / 2000000000000 : ℚ)
  center := (347025000000000017 / 400000000000000000 : ℚ)
  supportValue := (5679258053530211 / 25000000000000000 : ℚ)
  supportSlope := (-313508983386017 / 400000000000000 : ℚ)
  oldCenter := (5679258053530211 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1991
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

noncomputable def cell_13660 : Cell := { cellDefaults with
  domain := ⟨(173525000000000007 / 200000000000000000 : ℚ), (43387500000000001 / 50000000000000000 : ℚ)⟩
  r := (22145800751103 / 50000000000000 : ℚ)
  w := (2580412828177 / 2000000000000 : ℚ)
  center := (347075000000000011 / 400000000000000000 : ℚ)
  supportValue := (70960117201687 / 312500000000000 : ℚ)
  supportSlope := (-7833806948670359 / 10000000000000000 : ℚ)
  oldCenter := (70960117201687 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1991
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

noncomputable def cell_13661 : Cell := { cellDefaults with
  domain := ⟨(43387500000000001 / 50000000000000000 : ℚ), (173575000000000001 / 200000000000000000 : ℚ)⟩
  r := (22145800751103 / 50000000000000 : ℚ)
  w := (2580412828177 / 2000000000000 : ℚ)
  center := (69425000000000001 / 80000000000000000 : ℚ)
  supportValue := (2269744720357743 / 10000000000000000 : ℚ)
  supportSlope := (-978878053721883 / 1250000000000000 : ℚ)
  oldCenter := (2269744720357743 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1991
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593, piece_594]
}

noncomputable def cell_13662 : Cell := { cellDefaults with
  domain := ⟨(173575000000000001 / 200000000000000000 : ℚ), (86799999999999999 / 100000000000000000 : ℚ)⟩
  r := (22145800751103 / 50000000000000 : ℚ)
  w := (2580412828177 / 2000000000000 : ℚ)
  center := (347174999999999999 / 400000000000000000 : ℚ)
  supportValue := (11343830212314103 / 50000000000000000 : ℚ)
  supportSlope := (-978432857802309 / 1250000000000000 : ℚ)
  oldCenter := (11343830212314103 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1991
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
}

noncomputable def cell_13663 : Cell := { cellDefaults with
  domain := ⟨(86799999999999999 / 100000000000000000 : ℚ), (173625000000000001 / 200000000000000000 : ℚ)⟩
  r := (44273694475289 / 100000000000000 : ℚ)
  w := (2579588479893 / 2000000000000 : ℚ)
  center := (347224999999999999 / 400000000000000000 : ℚ)
  supportValue := (2270519081764903 / 10000000000000000 : ℚ)
  supportSlope := (-3914786231999453 / 5000000000000000 : ℚ)
  oldCenter := (2270519081764903 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1992
  oldLo := (22700000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_594]
}

noncomputable def cell_13664 : Cell := { cellDefaults with
  domain := ⟨(173625000000000001 / 200000000000000000 : ℚ), (43412500000000001 / 50000000000000000 : ℚ)⟩
  r := (44273694475289 / 100000000000000 : ℚ)
  w := (2579588479893 / 2000000000000 : ℚ)
  center := (69455000000000001 / 80000000000000000 : ℚ)
  supportValue := (11347702709750311 / 50000000000000000 : ℚ)
  supportSlope := (-7827103450369803 / 10000000000000000 : ℚ)
  oldCenter := (11347702709750311 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1992
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldHi := (22750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593, piece_594]
}

noncomputable def cell_13665 : Cell := { cellDefaults with
  domain := ⟨(43412500000000001 / 50000000000000000 : ℚ), (173675000000000007 / 200000000000000000 : ℚ)⟩
  r := (44273694475289 / 100000000000000 : ℚ)
  w := (2579588479893 / 2000000000000 : ℚ)
  center := (347325000000000011 / 400000000000000000 : ℚ)
  supportValue := (2268562392765287 / 10000000000000000 : ℚ)
  supportSlope := (-7823235445164783 / 10000000000000000 : ℚ)
  oldCenter := (2268562392765287 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1992
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
}

noncomputable def cell_13666 : Cell := { cellDefaults with
  domain := ⟨(173675000000000007 / 200000000000000000 : ℚ), (17370000000000001 / 20000000000000000 : ℚ)⟩
  r := (44273694475289 / 100000000000000 : ℚ)
  w := (2579588479893 / 2000000000000 : ℚ)
  center := (347375000000000017 / 400000000000000000 : ℚ)
  supportValue := (22675847323890003 / 100000000000000000 : ℚ)
  supportSlope := (-3909663393024207 / 5000000000000000 : ℚ)
  oldCenter := (22675847323890003 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1992
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
}

noncomputable def cell_13667 : Cell := { cellDefaults with
  domain := ⟨(17370000000000001 / 20000000000000000 : ℚ), (173725000000000007 / 200000000000000000 : ℚ)⟩
  r := (44255800485939 / 100000000000000 : ℚ)
  w := (2578763713179 / 2000000000000 : ℚ)
  center := (347425000000000017 / 400000000000000000 : ℚ)
  supportValue := (4538674649056183 / 20000000000000000 : ℚ)
  supportSlope := (-7822922159706863 / 10000000000000000 : ℚ)
  oldCenter := (4538674649056183 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1993
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
}

noncomputable def cell_13668 : Cell := { cellDefaults with
  domain := ⟨(173725000000000007 / 200000000000000000 : ℚ), (43437500000000001 / 50000000000000000 : ℚ)⟩
  r := (44255800485939 / 100000000000000 : ℚ)
  w := (2578763713179 / 2000000000000 : ℚ)
  center := (347475000000000011 / 400000000000000000 : ℚ)
  supportValue := (2268359703255617 / 10000000000000000 : ℚ)
  supportSlope := (-1954753602692273 / 2500000000000000 : ℚ)
  oldCenter := (2268359703255617 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1993
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
}

noncomputable def cell_13669 : Cell := { cellDefaults with
  domain := ⟨(43437500000000001 / 50000000000000000 : ℚ), (173775000000000001 / 200000000000000000 : ℚ)⟩
  r := (44255800485939 / 100000000000000 : ℚ)
  w := (2578763713179 / 2000000000000 : ℚ)
  center := (69505000000000001 / 80000000000000000 : ℚ)
  supportValue := (5668456425565363 / 25000000000000000 : ℚ)
  supportSlope := (-244222196010309 / 312500000000000 : ℚ)
  oldCenter := (5668456425565363 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1993
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
}

noncomputable def cell_13670 : Cell := { cellDefaults with
  domain := ⟨(173775000000000001 / 200000000000000000 : ℚ), (86899999999999999 / 100000000000000000 : ℚ)⟩
  r := (44255800485939 / 100000000000000 : ℚ)
  w := (2578763713179 / 2000000000000 : ℚ)
  center := (347574999999999999 / 400000000000000000 : ℚ)
  supportValue := (2266405924988783 / 10000000000000000 : ℚ)
  supportSlope := (-7811209737616891 / 10000000000000000 : ℚ)
  oldCenter := (2266405924988783 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1993
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
}

noncomputable def cell_13671 : Cell := { cellDefaults with
  domain := ⟨(86899999999999999 / 100000000000000000 : ℚ), (173825000000000001 / 200000000000000000 : ℚ)⟩
  r := (44237919189577 / 100000000000000 : ℚ)
  w := (6444846791157 / 5000000000000 : ℚ)
  center := (347624999999999999 / 400000000000000000 : ℚ)
  supportValue := (2835197308501167 / 12500000000000000 : ℚ)
  supportSlope := (-1562959861054293 / 2000000000000000 : ℚ)
  oldCenter := (2835197308501167 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1994
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
}

noncomputable def cell_13672 : Cell := { cellDefaults with
  domain := ⟨(173825000000000001 / 200000000000000000 : ℚ), (43462500000000001 / 50000000000000000 : ℚ)⟩
  r := (44237919189577 / 100000000000000 : ℚ)
  w := (6444846791157 / 5000000000000 : ℚ)
  center := (69535000000000001 / 80000000000000000 : ℚ)
  supportValue := (22671812403789793 / 100000000000000000 : ℚ)
  supportSlope := (-3905449829215233 / 5000000000000000 : ℚ)
  oldCenter := (22671812403789793 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1994
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
}

noncomputable def cell_13673 : Cell := { cellDefaults with
  domain := ⟨(43462500000000001 / 50000000000000000 : ℚ), (173875000000000007 / 200000000000000000 : ℚ)⟩
  r := (44237919189577 / 100000000000000 : ℚ)
  w := (6444846791157 / 5000000000000 : ℚ)
  center := (347725000000000011 / 400000000000000000 : ℚ)
  supportValue := (11331025605940463 / 50000000000000000 : ℚ)
  supportSlope := (-7807003608858617 / 10000000000000000 : ℚ)
  oldCenter := (11331025605940463 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1994
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
}

noncomputable def cell_13674 : Cell := { cellDefaults with
  domain := ⟨(173875000000000007 / 200000000000000000 : ℚ), (17390000000000001 / 20000000000000000 : ℚ)⟩
  r := (44237919189577 / 100000000000000 : ℚ)
  w := (6444846791157 / 5000000000000 : ℚ)
  center := (347775000000000017 / 400000000000000000 : ℚ)
  supportValue := (1132614744389517 / 5000000000000000 : ℚ)
  supportSlope := (-3901752202468221 / 5000000000000000 : ℚ)
  oldCenter := (1132614744389517 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1994
  oldPieces := [piece_592, piece_593]
}

noncomputable def cell_13675 : Cell := { cellDefaults with
  domain := ⟨(17390000000000001 / 20000000000000000 : ℚ), (69570000000000003 / 80000000000000000 : ℚ)⟩
  r := (44220050074493 / 100000000000000 : ℚ)
  w := (515422744387 / 400000000000 : ℚ)
  center := (139130000000000007 / 160000000000000000 : ℚ)
  supportValue := (4533961193585423 / 20000000000000000 : ℚ)
  supportSlope := (-7806694421215957 / 10000000000000000 : ℚ)
  oldCenter := (4533961193585423 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1995
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
}

noncomputable def cell_13676 : Cell := { cellDefaults with
  domain := ⟨(69570000000000003 / 80000000000000000 : ℚ), (34790000000000001 / 40000000000000000 : ℚ)⟩
  r := (44220050074493 / 100000000000000 : ℚ)
  w := (515422744387 / 400000000000 : ℚ)
  center := (27830000000000001 / 32000000000000000 : ℚ)
  supportValue := (1416253126860581 / 6250000000000000 : ℚ)
  supportSlope := (-975350355660973 / 1250000000000000 : ℚ)
  oldCenter := (1416253126860581 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1995
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
}

noncomputable def cell_13677 : Cell := { cellDefaults with
  domain := ⟨(34790000000000001 / 40000000000000000 : ℚ), (69590000000000001 / 80000000000000000 : ℚ)⟩
  r := (44220050074493 / 100000000000000 : ℚ)
  w := (515422744387 / 400000000000 : ℚ)
  center := (139170000000000003 / 160000000000000000 : ℚ)
  supportValue := (22650298953841747 / 100000000000000000 : ℚ)
  supportSlope := (-7799610700192863 / 10000000000000000 : ℚ)
  oldCenter := (22650298953841747 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1995
  oldPieces := [piece_592, piece_593]
}

noncomputable def cell_13678 : Cell := { cellDefaults with
  domain := ⟨(69590000000000001 / 80000000000000000 : ℚ), (87 / 100 : ℚ)⟩
  r := (44220050074493 / 100000000000000 : ℚ)
  w := (515422744387 / 400000000000 : ℚ)
  center := (139190000000000001 / 160000000000000000 : ℚ)
  supportValue := (22640550942516977 / 100000000000000000 : ℚ)
  supportSlope := (-1559301240375333 / 2000000000000000 : ℚ)
  oldCenter := (22640550942516977 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1995
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_592]
}

noncomputable def cell_13679 : Cell := { cellDefaults with
  domain := ⟨(87 / 100 : ℚ), (69610000000000001 / 80000000000000000 : ℚ)⟩
  r := (44202194688911 / 100000000000000 : ℚ)
  w := (6440720545079 / 5000000000000 : ℚ)
  center := (139210000000000001 / 160000000000000000 : ℚ)
  supportValue := (2265805836594823 / 10000000000000000 : ℚ)
  supportSlope := (-3899304261087587 / 5000000000000000 : ℚ)
  oldCenter := (2265805836594823 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1996
  oldLo := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_593]
}

noncomputable def cell_13680 : Cell := { cellDefaults with
  domain := ⟨(69610000000000001 / 80000000000000000 : ℚ), (34810000000000001 / 40000000000000000 : ℚ)⟩
  r := (44202194688911 / 100000000000000 : ℚ)
  w := (6440720545079 / 5000000000000 : ℚ)
  center := (139230000000000003 / 160000000000000000 : ℚ)
  supportValue := (176939939127359 / 781250000000000 : ℚ)
  supportSlope := (-3897860875172353 / 5000000000000000 : ℚ)
  oldCenter := (176939939127359 / 781250000000000 : ℚ)
  newCoefficients := coefficients_1996
  oldPieces := [piece_592, piece_593]
}

noncomputable def cell_13681 : Cell := { cellDefaults with
  domain := ⟨(34810000000000001 / 40000000000000000 : ℚ), (69630000000000003 / 80000000000000000 : ℚ)⟩
  r := (44202194688911 / 100000000000000 : ℚ)
  w := (6440720545079 / 5000000000000 : ℚ)
  center := (27850000000000001 / 32000000000000000 : ℚ)
  supportValue := (1131928468921417 / 5000000000000000 : ℚ)
  supportSlope := (-7792318856782219 / 10000000000000000 : ℚ)
  oldCenter := (1131928468921417 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1996
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_592]
}

noncomputable def cell_13682 : Cell := { cellDefaults with
  domain := ⟨(69630000000000003 / 80000000000000000 : ℚ), (17410000000000001 / 20000000000000000 : ℚ)⟩
  r := (44202194688911 / 100000000000000 : ℚ)
  w := (6440720545079 / 5000000000000 : ℚ)
  center := (139270000000000007 / 160000000000000000 : ℚ)
  supportValue := (2828603925524471 / 12500000000000000 : ℚ)
  supportSlope := (-7788436136237141 / 10000000000000000 : ℚ)
  oldCenter := (2828603925524471 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1996
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_592]
}

noncomputable def cell_13683 : Cell := { cellDefaults with
  domain := ⟨(17410000000000001 / 20000000000000000 : ℚ), (69650000000000003 / 80000000000000000 : ℚ)⟩
  r := (1767374056549 / 4000000000000 : ℚ)
  w := (515092545211 / 400000000000 : ℚ)
  center := (139290000000000007 / 160000000000000000 : ℚ)
  supportValue := (2830791525476789 / 12500000000000000 : ℚ)
  supportSlope := (-7791836824969313 / 10000000000000000 : ℚ)
  oldCenter := (2830791525476789 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1997
  oldPieces := [piece_592, piece_593]
}

noncomputable def cell_13684 : Cell := { cellDefaults with
  domain := ⟨(69650000000000003 / 80000000000000000 : ℚ), (34830000000000001 / 40000000000000000 : ℚ)⟩
  r := (1767374056549 / 4000000000000 : ℚ)
  w := (515092545211 / 400000000000 : ℚ)
  center := (27862000000000001 / 32000000000000000 : ℚ)
  supportValue := (1131829730214929 / 5000000000000000 : ℚ)
  supportSlope := (-155762735975189 / 200000000000000 : ℚ)
  oldCenter := (1131829730214929 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1997
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_592]
}

noncomputable def cell_13685 : Cell := { cellDefaults with
  domain := ⟨(34830000000000001 / 40000000000000000 : ℚ), (69670000000000001 / 80000000000000000 : ℚ)⟩
  r := (1767374056549 / 4000000000000 : ℚ)
  w := (515092545211 / 400000000000 : ℚ)
  center := (139330000000000003 / 160000000000000000 : ℚ)
  supportValue := (22626861854858363 / 100000000000000000 : ℚ)
  supportSlope := (-1556851705479523 / 2000000000000000 : ℚ)
  oldCenter := (22626861854858363 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1997
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_592]
}

noncomputable def cell_13686 : Cell := { cellDefaults with
  domain := ⟨(69670000000000001 / 80000000000000000 : ℚ), (871 / 1000 : ℚ)⟩
  r := (1767374056549 / 4000000000000 : ℚ)
  w := (515092545211 / 400000000000 : ℚ)
  center := (139350000000000001 / 160000000000000000 : ℚ)
  supportValue := (452342679020521 / 2000000000000000 : ℚ)
  supportSlope := (-62243070614449 / 80000000000000 : ℚ)
  oldCenter := (452342679020521 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1997
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_592]
}

noncomputable def cell_13687 : Cell := { cellDefaults with
  domain := ⟨(871 / 1000 : ℚ), (69690000000000001 / 80000000000000000 : ℚ)⟩
  r := (44166521843241 / 100000000000000 : ℚ)
  w := (2574636997039 / 2000000000000 : ℚ)
  center := (139370000000000001 / 160000000000000000 : ℚ)
  supportValue := (22634626954624903 / 100000000000000000 : ℚ)
  supportSlope := (-7783960337136907 / 10000000000000000 : ℚ)
  oldCenter := (22634626954624903 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1998
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_592]
}

noncomputable def cell_13688 : Cell := { cellDefaults with
  domain := ⟨(69690000000000001 / 80000000000000000 : ℚ), (34850000000000001 / 40000000000000000 : ℚ)⟩
  r := (44166521843241 / 100000000000000 : ℚ)
  w := (2574636997039 / 2000000000000 : ℚ)
  center := (139390000000000003 / 160000000000000000 : ℚ)
  supportValue := (22624899422987013 / 100000000000000000 : ℚ)
  supportSlope := (-7780086506209759 / 10000000000000000 : ℚ)
  oldCenter := (22624899422987013 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1998
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_592]
}

noncomputable def cell_13689 : Cell := { cellDefaults with
  domain := ⟨(34850000000000001 / 40000000000000000 : ℚ), (69710000000000003 / 80000000000000000 : ℚ)⟩
  r := (44166521843241 / 100000000000000 : ℚ)
  w := (2574636997039 / 2000000000000 : ℚ)
  center := (27882000000000001 / 32000000000000000 : ℚ)
  supportValue := (22615176731410477 / 100000000000000000 : ℚ)
  supportSlope := (-3888108119811273 / 5000000000000000 : ℚ)
  oldCenter := (22615176731410477 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1998
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_592]
}

noncomputable def cell_13690 : Cell := { cellDefaults with
  domain := ⟨(69710000000000003 / 80000000000000000 : ℚ), (17430000000000001 / 20000000000000000 : ℚ)⟩
  r := (44166521843241 / 100000000000000 : ℚ)
  w := (2574636997039 / 2000000000000 : ℚ)
  center := (139430000000000007 / 160000000000000000 : ℚ)
  supportValue := (22605458875443943 / 100000000000000000 : ℚ)
  supportSlope := (-7772349530833833 / 10000000000000000 : ℚ)
  oldCenter := (22605458875443943 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1998
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_592]
}

noncomputable def cell_13691 : Cell := { cellDefaults with
  domain := ⟨(17430000000000001 / 20000000000000000 : ℚ), (69730000000000003 / 80000000000000000 : ℚ)⟩
  r := (22074352741059 / 50000000000000 : ℚ)
  w := (6434528157003 / 5000000000000 : ℚ)
  center := (139450000000000007 / 160000000000000000 : ℚ)
  supportValue := (22622942635771007 / 100000000000000000 : ℚ)
  supportSlope := (-1943979882067709 / 2500000000000000 : ℚ)
  oldCenter := (22622942635771007 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1999
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_592]
}

noncomputable def cell_13692 : Cell := { cellDefaults with
  domain := ⟨(69730000000000003 / 80000000000000000 : ℚ), (34870000000000001 / 40000000000000000 : ℚ)⟩
  r := (22074352741059 / 50000000000000 : ℚ)
  w := (6434528157003 / 5000000000000 : ℚ)
  center := (27894000000000001 / 32000000000000000 : ℚ)
  supportValue := (226132251501497 / 1000000000000000 : ℚ)
  supportSlope := (-7772053690092373 / 10000000000000000 : ℚ)
  oldCenter := (226132251501497 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1999
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_592]
}

noncomputable def cell_13693 : Cell := { cellDefaults with
  domain := ⟨(34870000000000001 / 40000000000000000 : ℚ), (69750000000000001 / 80000000000000000 : ℚ)⟩
  r := (22074352741059 / 50000000000000 : ℚ)
  w := (6434528157003 / 5000000000000 : ℚ)
  center := (139490000000000003 / 160000000000000000 : ℚ)
  supportValue := (11301756247303457 / 50000000000000000 : ℚ)
  supportSlope := (-3884198198212229 / 5000000000000000 : ℚ)
  oldCenter := (11301756247303457 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1999
  oldLo := (4513966480446927 / 20000000000000000 : ℚ)
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_591, piece_592]
}

noncomputable def cell_13694 : Cell := { cellDefaults with
  domain := ⟨(69750000000000001 / 80000000000000000 : ℚ), (109 / 125 : ℚ)⟩
  r := (22074352741059 / 50000000000000 : ℚ)
  w := (6434528157003 / 5000000000000 : ℚ)
  center := (139510000000000001 / 160000000000000000 : ℚ)
  supportValue := (141211271797621 / 625000000000000 : ℚ)
  supportSlope := (-38829021844759 / 50000000000000 : ℚ)
  oldCenter := (141211271797621 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1999
  oldLo := (4513966480446927 / 20000000000000000 : ℚ)
  oldHi := (22600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_591]
}

noncomputable def cell_13695 : Cell := { cellDefaults with
  domain := ⟨(109 / 125 : ℚ), (69770000000000001 / 80000000000000000 : ℚ)⟩
  r := (2758181305181 / 6250000000000 : ℚ)
  w := (1608115661317 / 1250000000000 : ℚ)
  center := (139530000000000001 / 160000000000000000 : ℚ)
  supportValue := (1130564241747603 / 5000000000000000 : ℚ)
  supportSlope := (-970987233396739 / 1250000000000000 : ℚ)
  oldCenter := (1130564241747603 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2000
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_592]
}

noncomputable def cell_13696 : Cell := { cellDefaults with
  domain := ⟨(69770000000000001 / 80000000000000000 : ℚ), (34890000000000001 / 40000000000000000 : ℚ)⟩
  r := (2758181305181 / 6250000000000 : ℚ)
  w := (1608115661317 / 1250000000000 : ℚ)
  center := (139550000000000003 / 160000000000000000 : ℚ)
  supportValue := (11300788685715303 / 50000000000000000 : ℚ)
  supportSlope := (-7764538497453733 / 10000000000000000 : ℚ)
  oldCenter := (11300788685715303 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2000
  oldLo := (4513966480446927 / 20000000000000000 : ℚ)
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_591, piece_592]
}

noncomputable def cell_13697 : Cell := { cellDefaults with
  domain := ⟨(34890000000000001 / 40000000000000000 : ℚ), (69790000000000003 / 80000000000000000 : ℚ)⟩
  r := (2758181305181 / 6250000000000 : ℚ)
  w := (1608115661317 / 1250000000000 : ℚ)
  center := (27914000000000001 / 32000000000000000 : ℚ)
  supportValue := (22591873185283293 / 100000000000000000 : ℚ)
  supportSlope := (-485103463460597 / 625000000000000 : ℚ)
  oldCenter := (22591873185283293 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2000
  oldLo := (4513966480446927 / 20000000000000000 : ℚ)
  oldHi := (22600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_591]
}

noncomputable def cell_13698 : Cell := { cellDefaults with
  domain := ⟨(69790000000000003 / 80000000000000000 : ℚ), (17450000000000001 / 20000000000000000 : ℚ)⟩
  r := (2758181305181 / 6250000000000 : ℚ)
  w := (1608115661317 / 1250000000000 : ℚ)
  center := (139590000000000007 / 160000000000000000 : ℚ)
  supportValue := (2258217352451523 / 10000000000000000 : ℚ)
  supportSlope := (-3878899022491001 / 5000000000000000 : ℚ)
  oldCenter := (2258217352451523 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2000
  oldLo := (4513966480446927 / 20000000000000000 : ℚ)
  oldHi := (22600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_591]
}

noncomputable def cell_13699 : Cell := { cellDefaults with
  domain := ⟨(17450000000000001 / 20000000000000000 : ℚ), (34905865921787709 / 40000000000000000 : ℚ)⟩
  r := (4411310907963 / 10000000000000 : ℚ)
  w := (12860793451287 / 10000000000000 : ℚ)
  center := (69805865921787711 / 80000000000000000 : ℚ)
  supportValue := (90395238076007 / 400000000000000 : ℚ)
  supportSlope := (-1940112925410817 / 2500000000000000 : ℚ)
  oldCenter := (90395238076007 / 400000000000000 : ℚ)
  newCoefficients := coefficients_2001
  oldLo := (4513966480446927 / 20000000000000000 : ℚ)
  oldHi := (22650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_591, piece_592]
}

theorem check_13650 : cell_13650.check = true := by
  decide +kernel

theorem check_13651 : cell_13651.check = true := by
  decide +kernel

theorem check_13652 : cell_13652.check = true := by
  decide +kernel

theorem check_13653 : cell_13653.check = true := by
  decide +kernel

theorem check_13654 : cell_13654.check = true := by
  decide +kernel

theorem check_13655 : cell_13655.check = true := by
  decide +kernel

theorem check_13656 : cell_13656.check = true := by
  decide +kernel

theorem check_13657 : cell_13657.check = true := by
  decide +kernel

theorem check_13658 : cell_13658.check = true := by
  decide +kernel

theorem check_13659 : cell_13659.check = true := by
  decide +kernel

theorem check_13660 : cell_13660.check = true := by
  decide +kernel

theorem check_13661 : cell_13661.check = true := by
  decide +kernel

theorem check_13662 : cell_13662.check = true := by
  decide +kernel

theorem check_13663 : cell_13663.check = true := by
  decide +kernel

theorem check_13664 : cell_13664.check = true := by
  decide +kernel

theorem check_13665 : cell_13665.check = true := by
  decide +kernel

theorem check_13666 : cell_13666.check = true := by
  decide +kernel

theorem check_13667 : cell_13667.check = true := by
  decide +kernel

theorem check_13668 : cell_13668.check = true := by
  decide +kernel

theorem check_13669 : cell_13669.check = true := by
  decide +kernel

theorem check_13670 : cell_13670.check = true := by
  decide +kernel

theorem check_13671 : cell_13671.check = true := by
  decide +kernel

theorem check_13672 : cell_13672.check = true := by
  decide +kernel

theorem check_13673 : cell_13673.check = true := by
  decide +kernel

theorem check_13674 : cell_13674.check = true := by
  decide +kernel

theorem check_13675 : cell_13675.check = true := by
  decide +kernel

theorem check_13676 : cell_13676.check = true := by
  decide +kernel

theorem check_13677 : cell_13677.check = true := by
  decide +kernel

theorem check_13678 : cell_13678.check = true := by
  decide +kernel

theorem check_13679 : cell_13679.check = true := by
  decide +kernel

theorem check_13680 : cell_13680.check = true := by
  decide +kernel

theorem check_13681 : cell_13681.check = true := by
  decide +kernel

theorem check_13682 : cell_13682.check = true := by
  decide +kernel

theorem check_13683 : cell_13683.check = true := by
  decide +kernel

theorem check_13684 : cell_13684.check = true := by
  decide +kernel

theorem check_13685 : cell_13685.check = true := by
  decide +kernel

theorem check_13686 : cell_13686.check = true := by
  decide +kernel

theorem check_13687 : cell_13687.check = true := by
  decide +kernel

theorem check_13688 : cell_13688.check = true := by
  decide +kernel

theorem check_13689 : cell_13689.check = true := by
  decide +kernel

theorem check_13690 : cell_13690.check = true := by
  decide +kernel

theorem check_13691 : cell_13691.check = true := by
  decide +kernel

theorem check_13692 : cell_13692.check = true := by
  decide +kernel

theorem check_13693 : cell_13693.check = true := by
  decide +kernel

theorem check_13694 : cell_13694.check = true := by
  decide +kernel

theorem check_13695 : cell_13695.check = true := by
  decide +kernel

theorem check_13696 : cell_13696.check = true := by
  decide +kernel

theorem check_13697 : cell_13697.check = true := by
  decide +kernel

theorem check_13698 : cell_13698.check = true := by
  decide +kernel

theorem check_13699 : cell_13699.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13650, cell_13651, cell_13652, cell_13653, cell_13654, cell_13655, cell_13656, cell_13657, cell_13658, cell_13659, cell_13660, cell_13661, cell_13662, cell_13663, cell_13664, cell_13665, cell_13666, cell_13667, cell_13668, cell_13669, cell_13670, cell_13671, cell_13672, cell_13673, cell_13674, cell_13675, cell_13676, cell_13677, cell_13678, cell_13679, cell_13680, cell_13681, cell_13682, cell_13683, cell_13684, cell_13685, cell_13686, cell_13687, cell_13688, cell_13689, cell_13690, cell_13691, cell_13692, cell_13693, cell_13694, cell_13695, cell_13696, cell_13697, cell_13698, cell_13699]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13650, check_13651, check_13652, check_13653, check_13654, check_13655, check_13656, check_13657, check_13658, check_13659, check_13660, check_13661, check_13662, check_13663, check_13664, check_13665, check_13666, check_13667, check_13668, check_13669, check_13670, check_13671, check_13672, check_13673, check_13674, check_13675, check_13676, check_13677, check_13678, check_13679, check_13680, check_13681, check_13682, check_13683, check_13684, check_13685, check_13686, check_13687, check_13688, check_13689, check_13690, check_13691, check_13692, check_13693, check_13694, check_13695, check_13696, check_13697, check_13698, check_13699, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0273

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0273
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0273
open AnalyticBounds.ExpressionCertificate

theorem linked_13650 : Linked cell_13650 pieces := by
  link_source cell_13650 with piece_1987 using piece_1987_mem, piece_594_mem

theorem linked_13651 : Linked cell_13651 pieces := by
  link_source cell_13651 with piece_1987 using piece_1987_mem, piece_594_mem

theorem linked_13652 : Linked cell_13652 pieces := by
  link_source cell_13652 with piece_1988 using piece_1988_mem, piece_594_mem

theorem linked_13653 : Linked cell_13653 pieces := by
  link_source cell_13653 with piece_1988 using piece_1988_mem, piece_594_mem

theorem linked_13654 : Linked cell_13654 pieces := by
  link_source cell_13654 with piece_1988 using piece_1988_mem, piece_594_mem

theorem linked_13655 : Linked cell_13655 pieces := by
  link_source cell_13655 with piece_1988 using piece_1988_mem, piece_594_mem

theorem linked_13656 : Linked cell_13656 pieces := by
  link_source cell_13656 with piece_1989 using piece_1989_mem, piece_594_mem

theorem linked_13657 : Linked cell_13657 pieces := by
  link_source cell_13657 with piece_1989 using piece_1989_mem, piece_594_mem

theorem linked_13658 : Linked cell_13658 pieces := by
  link_source cell_13658 with piece_1990 using piece_1990_mem, ⟨piece_593_mem, piece_594_mem⟩

theorem linked_13659 : Linked cell_13659 pieces := by
  link_source cell_13659 with piece_1991 using piece_1991_mem, piece_594_mem

theorem linked_13660 : Linked cell_13660 pieces := by
  link_source cell_13660 with piece_1991 using piece_1991_mem, piece_594_mem

theorem linked_13661 : Linked cell_13661 pieces := by
  link_source cell_13661 with piece_1991 using piece_1991_mem, ⟨piece_593_mem, piece_594_mem⟩

theorem linked_13662 : Linked cell_13662 pieces := by
  link_source cell_13662 with piece_1991 using piece_1991_mem, piece_593_mem

theorem linked_13663 : Linked cell_13663 pieces := by
  link_source cell_13663 with piece_1992 using piece_1992_mem, piece_594_mem

theorem linked_13664 : Linked cell_13664 pieces := by
  link_source cell_13664 with piece_1992 using piece_1992_mem, ⟨piece_593_mem, piece_594_mem⟩

theorem linked_13665 : Linked cell_13665 pieces := by
  link_source cell_13665 with piece_1992 using piece_1992_mem, piece_593_mem

theorem linked_13666 : Linked cell_13666 pieces := by
  link_source cell_13666 with piece_1992 using piece_1992_mem, piece_593_mem

theorem linked_13667 : Linked cell_13667 pieces := by
  link_source cell_13667 with piece_1993 using piece_1993_mem, piece_593_mem

theorem linked_13668 : Linked cell_13668 pieces := by
  link_source cell_13668 with piece_1993 using piece_1993_mem, piece_593_mem

theorem linked_13669 : Linked cell_13669 pieces := by
  link_source cell_13669 with piece_1993 using piece_1993_mem, piece_593_mem

theorem linked_13670 : Linked cell_13670 pieces := by
  link_source cell_13670 with piece_1993 using piece_1993_mem, piece_593_mem

theorem linked_13671 : Linked cell_13671 pieces := by
  link_source cell_13671 with piece_1994 using piece_1994_mem, piece_593_mem

theorem linked_13672 : Linked cell_13672 pieces := by
  link_source cell_13672 with piece_1994 using piece_1994_mem, piece_593_mem

theorem linked_13673 : Linked cell_13673 pieces := by
  link_source cell_13673 with piece_1994 using piece_1994_mem, piece_593_mem

theorem linked_13674 : Linked cell_13674 pieces := by
  link_source cell_13674 with piece_1994 using piece_1994_mem, ⟨piece_592_mem, piece_593_mem⟩

theorem linked_13675 : Linked cell_13675 pieces := by
  link_source cell_13675 with piece_1995 using piece_1995_mem, piece_593_mem

theorem linked_13676 : Linked cell_13676 pieces := by
  link_source cell_13676 with piece_1995 using piece_1995_mem, piece_593_mem

theorem linked_13677 : Linked cell_13677 pieces := by
  link_source cell_13677 with piece_1995 using piece_1995_mem, ⟨piece_592_mem, piece_593_mem⟩

theorem linked_13678 : Linked cell_13678 pieces := by
  link_source cell_13678 with piece_1995 using piece_1995_mem, piece_592_mem

theorem linked_13679 : Linked cell_13679 pieces := by
  link_source cell_13679 with piece_1996 using piece_1996_mem, piece_593_mem

theorem linked_13680 : Linked cell_13680 pieces := by
  link_source cell_13680 with piece_1996 using piece_1996_mem, ⟨piece_592_mem, piece_593_mem⟩

theorem linked_13681 : Linked cell_13681 pieces := by
  link_source cell_13681 with piece_1996 using piece_1996_mem, piece_592_mem

theorem linked_13682 : Linked cell_13682 pieces := by
  link_source cell_13682 with piece_1996 using piece_1996_mem, piece_592_mem

theorem linked_13683 : Linked cell_13683 pieces := by
  link_source cell_13683 with piece_1997 using piece_1997_mem, ⟨piece_592_mem, piece_593_mem⟩

theorem linked_13684 : Linked cell_13684 pieces := by
  link_source cell_13684 with piece_1997 using piece_1997_mem, piece_592_mem

theorem linked_13685 : Linked cell_13685 pieces := by
  link_source cell_13685 with piece_1997 using piece_1997_mem, piece_592_mem

theorem linked_13686 : Linked cell_13686 pieces := by
  link_source cell_13686 with piece_1997 using piece_1997_mem, piece_592_mem

theorem linked_13687 : Linked cell_13687 pieces := by
  link_source cell_13687 with piece_1998 using piece_1998_mem, piece_592_mem

theorem linked_13688 : Linked cell_13688 pieces := by
  link_source cell_13688 with piece_1998 using piece_1998_mem, piece_592_mem

theorem linked_13689 : Linked cell_13689 pieces := by
  link_source cell_13689 with piece_1998 using piece_1998_mem, piece_592_mem

theorem linked_13690 : Linked cell_13690 pieces := by
  link_source cell_13690 with piece_1998 using piece_1998_mem, piece_592_mem

theorem linked_13691 : Linked cell_13691 pieces := by
  link_source cell_13691 with piece_1999 using piece_1999_mem, piece_592_mem

theorem linked_13692 : Linked cell_13692 pieces := by
  link_source cell_13692 with piece_1999 using piece_1999_mem, piece_592_mem

theorem linked_13693 : Linked cell_13693 pieces := by
  link_source cell_13693 with piece_1999 using piece_1999_mem, ⟨piece_591_mem, piece_592_mem⟩

theorem linked_13694 : Linked cell_13694 pieces := by
  link_source cell_13694 with piece_1999 using piece_1999_mem, piece_591_mem

theorem linked_13695 : Linked cell_13695 pieces := by
  link_source cell_13695 with piece_2000 using piece_2000_mem, piece_592_mem

theorem linked_13696 : Linked cell_13696 pieces := by
  link_source cell_13696 with piece_2000 using piece_2000_mem, ⟨piece_591_mem, piece_592_mem⟩

theorem linked_13697 : Linked cell_13697 pieces := by
  link_source cell_13697 with piece_2000 using piece_2000_mem, piece_591_mem

theorem linked_13698 : Linked cell_13698 pieces := by
  link_source cell_13698 with piece_2000 using piece_2000_mem, piece_591_mem

theorem linked_13699 : Linked cell_13699 pieces := by
  link_source cell_13699 with piece_2001 using piece_2001_mem, ⟨piece_591_mem, piece_592_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0273.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0273.cells,List.forall_mem_cons]
  exact ⟨linked_13650, linked_13651, linked_13652, linked_13653, linked_13654, linked_13655, linked_13656, linked_13657, linked_13658, linked_13659, linked_13660, linked_13661, linked_13662, linked_13663, linked_13664, linked_13665, linked_13666, linked_13667, linked_13668, linked_13669, linked_13670, linked_13671, linked_13672, linked_13673, linked_13674, linked_13675, linked_13676, linked_13677, linked_13678, linked_13679, linked_13680, linked_13681, linked_13682, linked_13683, linked_13684, linked_13685, linked_13686, linked_13687, linked_13688, linked_13689, linked_13690, linked_13691, linked_13692, linked_13693, linked_13694, linked_13695, linked_13696, linked_13697, linked_13698, linked_13699, by simp⟩

theorem covered : covers (43312500000000001 / 50000000000000000 : ℚ) (34905865921787709 / 40000000000000000 : ℚ)
    (SourceCertificates.Chunk0273.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0273
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0274
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(34905865921787709 / 40000000000000000 : ℚ), (4363966480446927 / 5000000000000000 : ℚ)⟩
  branch := .left
  r := (2204766494621 / 5000000000000 : ℚ)
  w := (1607082439271 / 1250000000000 : ℚ)
  center := (111708156424581 / 128000000000000 : ℚ)
  supportValue := (11293715714040417 / 50000000000000000 : ℚ)
  supportSlope := (-3878255411691317 / 5000000000000000 : ℚ)
  oldCenter := (11293715714040417 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2003
  oldLo := (22500000000000001 / 100000000000000000 : ℚ)
  oldHi := (22550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_589]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13700 : Cell := { cellDefaults with
  r := (4411310907963 / 10000000000000 : ℚ)
  w := (12860793451287 / 10000000000000 : ℚ)
  newCoefficients := coefficients_2001
  oldLo := (4513966480446927 / 20000000000000000 : ℚ)
  oldHi := (22600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_591]
}

noncomputable def cell_13701 : Cell := { cellDefaults with
  domain := ⟨(4363966480446927 / 5000000000000000 : ℚ), (873 / 1000 : ℚ)⟩
  r := (4411310907963 / 10000000000000 : ℚ)
  w := (12860793451287 / 10000000000000 : ℚ)
  center := (8728966480446927 / 10000000000000000 : ℚ)
  supportValue := (22573748144294029 / 100000000000000000 : ℚ)
  supportSlope := (-3875533877512889 / 5000000000000000 : ℚ)
  oldCenter := (22573748144294029 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2002
  oldLo := (22550000000000001 / 100000000000000000 : ℚ)
  oldHi := (22600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_590, piece_591]
}

noncomputable def cell_13702 : Cell := { cellDefaults with
  domain := ⟨(873 / 1000 : ℚ), (69850000000000001 / 80000000000000000 : ℚ)⟩
  center := (139690000000000001 / 160000000000000000 : ℚ)
  supportValue := (11294018598422627 / 50000000000000000 : ℚ)
  supportSlope := (-1938343736146237 / 2500000000000000 : ℚ)
  oldCenter := (11294018598422627 / 50000000000000000 : ℚ)
  oldLo := (4513966480446927 / 20000000000000000 : ℚ)
  oldHi := (22600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_591]
}

noncomputable def cell_13703 : Cell := { cellDefaults with
  domain := ⟨(69850000000000001 / 80000000000000000 : ℚ), (34930000000000001 / 40000000000000000 : ℚ)⟩
  center := (139710000000000003 / 160000000000000000 : ℚ)
  supportValue := (352786685643049 / 1562500000000000 : ℚ)
  supportSlope := (-7749526392880959 / 10000000000000000 : ℚ)
  oldCenter := (352786685643049 / 1562500000000000 : ℚ)
  oldLo := (4513966480446927 / 20000000000000000 : ℚ)
  oldHi := (22600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_591]
}

noncomputable def cell_13704 : Cell := { cellDefaults with
  domain := ⟨(34930000000000001 / 40000000000000000 : ℚ), (69870000000000003 / 80000000000000000 : ℚ)⟩
  center := (27946000000000001 / 32000000000000000 : ℚ)
  supportValue := (11284331686915959 / 50000000000000000 : ℚ)
  supportSlope := (-1549136368836757 / 2000000000000000 : ℚ)
  oldCenter := (11284331686915959 / 50000000000000000 : ℚ)
  oldLo := (22550000000000001 / 100000000000000000 : ℚ)
  oldHi := (22600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_590, piece_591]
}

noncomputable def cell_13705 : Cell := { cellDefaults with
  domain := ⟨(69870000000000003 / 80000000000000000 : ℚ), (17470000000000001 / 20000000000000000 : ℚ)⟩
  center := (139750000000000007 / 160000000000000000 : ℚ)
  supportValue := (2255898366974883 / 10000000000000000 : ℚ)
  supportSlope := (-3870920318393591 / 5000000000000000 : ℚ)
  oldCenter := (2255898366974883 / 10000000000000000 : ℚ)
  oldLo := (22550000000000001 / 100000000000000000 : ℚ)
  oldHi := (4513966480446927 / 20000000000000000 : ℚ)
  oldPieces := [piece_590]
}

noncomputable def cell_13706 : Cell := { cellDefaults with
  domain := ⟨(17470000000000001 / 20000000000000000 : ℚ), (69890000000000003 / 80000000000000000 : ℚ)⟩
  r := (344355969813 / 781250000000 : ℚ)
  w := (12852526630651 / 10000000000000 : ℚ)
  center := (139770000000000007 / 160000000000000000 : ℚ)
  supportValue := (11288221681853347 / 50000000000000000 : ℚ)
  supportSlope := (-7745398014350143 / 10000000000000000 : ℚ)
  oldCenter := (11288221681853347 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2004
  oldLo := (4513966480446927 / 20000000000000000 : ℚ)
  oldHi := (22600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_591]
}

noncomputable def cell_13707 : Cell := { cellDefaults with
  domain := ⟨(69890000000000003 / 80000000000000000 : ℚ), (34950000000000001 / 40000000000000000 : ℚ)⟩
  r := (344355969813 / 781250000000 : ℚ)
  w := (12852526630651 / 10000000000000 : ℚ)
  center := (27958000000000001 / 32000000000000000 : ℚ)
  supportValue := (22566764013933283 / 100000000000000000 : ℚ)
  supportSlope := (-193538949880409 / 250000000000000 : ℚ)
  oldCenter := (22566764013933283 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2004
  oldLo := (22550000000000001 / 100000000000000000 : ℚ)
  oldHi := (22600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_590, piece_591]
}

noncomputable def cell_13708 : Cell := { cellDefaults with
  domain := ⟨(34950000000000001 / 40000000000000000 : ℚ), (69910000000000001 / 80000000000000000 : ℚ)⟩
  r := (344355969813 / 781250000000 : ℚ)
  w := (12852526630651 / 10000000000000 : ℚ)
  center := (139810000000000003 / 160000000000000000 : ℚ)
  supportValue := (22557089462113303 / 100000000000000000 : ℚ)
  supportSlope := (-7737721014429929 / 10000000000000000 : ℚ)
  oldCenter := (22557089462113303 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2004
  oldLo := (22550000000000001 / 100000000000000000 : ℚ)
  oldHi := (4513966480446927 / 20000000000000000 : ℚ)
  oldPieces := [piece_590]
}

noncomputable def cell_13709 : Cell := { cellDefaults with
  domain := ⟨(69910000000000001 / 80000000000000000 : ℚ), (437 / 500 : ℚ)⟩
  r := (344355969813 / 781250000000 : ℚ)
  w := (12852526630651 / 10000000000000 : ℚ)
  center := (139830000000000001 / 160000000000000000 : ℚ)
  supportValue := (2818427401619911 / 12500000000000000 : ℚ)
  supportSlope := (-7735014142654313 / 10000000000000000 : ℚ)
  oldCenter := (2818427401619911 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2004
  oldHi := (4513966480446927 / 20000000000000000 : ℚ)
  oldPieces := [piece_589, piece_590]
}

noncomputable def cell_13710 : Cell := { cellDefaults with
  domain := ⟨(437 / 500 : ℚ), (174825000000000003 / 200000000000000000 : ℚ)⟩
  r := (44059811222079 / 100000000000000 : ℚ)
  w := (401512278889 / 312500000000 : ℚ)
  center := (349625000000000003 / 400000000000000000 : ℚ)
  supportValue := (1128243596671557 / 5000000000000000 : ℚ)
  supportSlope := (-7737439634264613 / 10000000000000000 : ℚ)
  oldCenter := (1128243596671557 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2005
  oldLo := (22550000000000001 / 100000000000000000 : ℚ)
  oldHi := (4513966480446927 / 20000000000000000 : ℚ)
  oldPieces := [piece_590]
}

noncomputable def cell_13711 : Cell := { cellDefaults with
  domain := ⟨(174825000000000003 / 200000000000000000 : ℚ), (87425000000000003 / 100000000000000000 : ℚ)⟩
  r := (44059811222079 / 100000000000000 : ℚ)
  w := (401512278889 / 312500000000 : ℚ)
  center := (349675000000000009 / 400000000000000000 : ℚ)
  supportValue := (11277601263505889 / 50000000000000000 : ℚ)
  supportSlope := (-3866803436564739 / 5000000000000000 : ℚ)
  oldCenter := (11277601263505889 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2005
  oldLo := (22550000000000001 / 100000000000000000 : ℚ)
  oldHi := (4513966480446927 / 20000000000000000 : ℚ)
  oldPieces := [piece_590]
}

noncomputable def cell_13712 : Cell := { cellDefaults with
  domain := ⟨(87425000000000003 / 100000000000000000 : ℚ), (174875000000000009 / 200000000000000000 : ℚ)⟩
  r := (44059811222079 / 100000000000000 : ℚ)
  w := (401512278889 / 312500000000 : ℚ)
  center := (69945000000000003 / 80000000000000000 : ℚ)
  supportValue := (22545537060605453 / 100000000000000000 : ℚ)
  supportSlope := (-1932797291289469 / 2500000000000000 : ℚ)
  oldCenter := (22545537060605453 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2005
  oldHi := (4513966480446927 / 20000000000000000 : ℚ)
  oldPieces := [piece_589, piece_590]
}

noncomputable def cell_13713 : Cell := { cellDefaults with
  domain := ⟨(174875000000000009 / 200000000000000000 : ℚ), (43725000000000003 / 50000000000000000 : ℚ)⟩
  r := (44059811222079 / 100000000000000 : ℚ)
  w := (401512278889 / 312500000000 : ℚ)
  center := (349775000000000021 / 400000000000000000 : ℚ)
  supportValue := (4507175079598733 / 20000000000000000 : ℚ)
  supportSlope := (-7727412068957623 / 10000000000000000 : ℚ)
  oldCenter := (4507175079598733 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2005
  oldPieces := [piece_589]
}

noncomputable def cell_13714 : Cell := { cellDefaults with
  domain := ⟨(43725000000000003 / 50000000000000000 : ℚ), (174925000000000009 / 200000000000000000 : ℚ)⟩
  r := (44042070275261 / 100000000000000 : ℚ)
  w := (3211063961409 / 2500000000000 : ℚ)
  center := (349825000000000021 / 400000000000000000 : ℚ)
  supportValue := (11276664112286307 / 50000000000000000 : ℚ)
  supportSlope := (-483108079540109 / 625000000000000 : ℚ)
  oldCenter := (11276664112286307 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2006
  oldHi := (4513966480446927 / 20000000000000000 : ℚ)
  oldPieces := [piece_589, piece_590]
}

noncomputable def cell_13715 : Cell := { cellDefaults with
  domain := ⟨(174925000000000009 / 200000000000000000 : ℚ), (87475000000000003 / 100000000000000000 : ℚ)⟩
  r := (44042070275261 / 100000000000000 : ℚ)
  w := (3211063961409 / 2500000000000 : ℚ)
  center := (69975000000000003 / 80000000000000000 : ℚ)
  supportValue := (11271833767328651 / 50000000000000000 : ℚ)
  supportSlope := (-7727139798184661 / 10000000000000000 : ℚ)
  oldCenter := (11271833767328651 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2006
  oldPieces := [piece_589]
}

noncomputable def cell_13716 : Cell := { cellDefaults with
  domain := ⟨(87475000000000003 / 100000000000000000 : ℚ), (174975000000000003 / 200000000000000000 : ℚ)⟩
  r := (44042070275261 / 100000000000000 : ℚ)
  w := (3211063961409 / 2500000000000 : ℚ)
  center := (349925000000000009 / 400000000000000000 : ℚ)
  supportValue := (22534011000018767 / 100000000000000000 : ℚ)
  supportSlope := (-1544662373277291 / 2000000000000000 : ℚ)
  oldCenter := (22534011000018767 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2006
  oldPieces := [piece_589]
}

noncomputable def cell_13717 : Cell := { cellDefaults with
  domain := ⟨(174975000000000003 / 200000000000000000 : ℚ), (7 / 8 : ℚ)⟩
  r := (44042070275261 / 100000000000000 : ℚ)
  w := (3211063961409 / 2500000000000 : ℚ)
  center := (349975000000000003 / 400000000000000000 : ℚ)
  supportValue := (450487184962047 / 2000000000000000 : ℚ)
  supportSlope := (-7719487443439237 / 10000000000000000 : ℚ)
  oldCenter := (450487184962047 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2006
  oldPieces := [piece_589]
}

noncomputable def cell_13718 : Cell := { cellDefaults with
  domain := ⟨(7 / 8 : ℚ), (175025000000000003 / 200000000000000000 : ℚ)⟩
  r := (2751521418529 / 6250000000000 : ℚ)
  w := (12840118819523 / 10000000000000 : ℚ)
  center := (350025000000000003 / 400000000000000000 : ℚ)
  supportValue := (22541803124864027 / 100000000000000000 : ℚ)
  supportSlope := (-1544608013531771 / 2000000000000000 : ℚ)
  oldCenter := (22541803124864027 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2007
  oldPieces := [piece_589]
}

noncomputable def cell_13719 : Cell := { cellDefaults with
  domain := ⟨(175025000000000003 / 200000000000000000 : ℚ), (87525000000000003 / 100000000000000000 : ℚ)⟩
  r := (2751521418529 / 6250000000000 : ℚ)
  w := (12840118819523 / 10000000000000 : ℚ)
  center := (350075000000000009 / 400000000000000000 : ℚ)
  supportValue := (450643034243501 / 2000000000000000 : ℚ)
  supportSlope := (-7719216478502451 / 10000000000000000 : ℚ)
  oldCenter := (450643034243501 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2007
  oldPieces := [piece_589]
}

noncomputable def cell_13720 : Cell := { cellDefaults with
  domain := ⟨(87525000000000003 / 100000000000000000 : ℚ), (175075000000000009 / 200000000000000000 : ℚ)⟩
  r := (2751521418529 / 6250000000000 : ℚ)
  w := (12840118819523 / 10000000000000 : ℚ)
  center := (70025000000000003 / 80000000000000000 : ℚ)
  supportValue := (900900203071351 / 4000000000000000 : ℚ)
  supportSlope := (-1543079278404839 / 2000000000000000 : ℚ)
  oldCenter := (900900203071351 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_2007
  oldPieces := [piece_589]
}

noncomputable def cell_13721 : Cell := { cellDefaults with
  domain := ⟨(175075000000000009 / 200000000000000000 : ℚ), (43775000000000003 / 50000000000000000 : ℚ)⟩
  r := (2751521418529 / 6250000000000 : ℚ)
  w := (12840118819523 / 10000000000000 : ℚ)
  center := (350175000000000021 / 400000000000000000 : ℚ)
  supportValue := (1407053950894741 / 6250000000000000 : ℚ)
  supportSlope := (-7711579801767029 / 10000000000000000 : ℚ)
  oldCenter := (1407053950894741 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2007
  oldPieces := [piece_589]
}

noncomputable def cell_13722 : Cell := { cellDefaults with
  domain := ⟨(43775000000000003 / 50000000000000000 : ℚ), (175125000000000009 / 200000000000000000 : ℚ)⟩
  r := (44006626594259 / 100000000000000 : ℚ)
  w := (1283598009669 / 1000000000000 : ℚ)
  center := (350225000000000021 / 400000000000000000 : ℚ)
  supportValue := (22530302656176457 / 100000000000000000 : ℚ)
  supportSlope := (-7715127376251943 / 10000000000000000 : ℚ)
  oldCenter := (22530302656176457 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2008
  oldPieces := [piece_589]
}

noncomputable def cell_13723 : Cell := { cellDefaults with
  domain := ⟨(175125000000000009 / 200000000000000000 : ℚ), (87575000000000003 / 100000000000000000 : ℚ)⟩
  r := (44006626594259 / 100000000000000 : ℚ)
  w := (1283598009669 / 1000000000000 : ℚ)
  center := (70055000000000003 / 80000000000000000 : ℚ)
  supportValue := (56301652823643 / 250000000000000 : ℚ)
  supportSlope := (-7711311619972109 / 10000000000000000 : ℚ)
  oldCenter := (56301652823643 / 250000000000000 : ℚ)
  newCoefficients := coefficients_2008
  oldPieces := [piece_589]
}

noncomputable def cell_13724 : Cell := { cellDefaults with
  domain := ⟨(87575000000000003 / 100000000000000000 : ℚ), (175175000000000003 / 200000000000000000 : ℚ)⟩
  r := (44006626594259 / 100000000000000 : ℚ)
  w := (1283598009669 / 1000000000000 : ℚ)
  center := (350325000000000009 / 400000000000000000 : ℚ)
  supportValue := (2251102437025241 / 10000000000000000 : ℚ)
  supportSlope := (-7707499353718319 / 10000000000000000 : ℚ)
  oldCenter := (2251102437025241 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2008
  oldPieces := [piece_589]
}

noncomputable def cell_13725 : Cell := { cellDefaults with
  domain := ⟨(175175000000000003 / 200000000000000000 : ℚ), (219 / 250 : ℚ)⟩
  r := (44006626594259 / 100000000000000 : ℚ)
  w := (1283598009669 / 1000000000000 : ℚ)
  center := (350375000000000003 / 400000000000000000 : ℚ)
  supportValue := (22501392374203671 / 100000000000000000 : ℚ)
  supportSlope := (-3852105825359793 / 5000000000000000 : ℚ)
  oldCenter := (22501392374203671 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2008
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588, piece_589]
}

noncomputable def cell_13726 : Cell := { cellDefaults with
  domain := ⟨(219 / 250 : ℚ), (175225000000000003 / 200000000000000000 : ℚ)⟩
  r := (21994462073783 / 50000000000000 : ℚ)
  w := (12831840473193 / 10000000000000 : ℚ)
  center := (350425000000000003 / 400000000000000000 : ℚ)
  supportValue := (5629705889093737 / 25000000000000000 : ℚ)
  supportSlope := (-7707232090944557 / 10000000000000000 : ℚ)
  oldCenter := (5629705889093737 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2009
  oldPieces := [piece_589]
}

noncomputable def cell_13727 : Cell := { cellDefaults with
  domain := ⟨(175225000000000003 / 200000000000000000 : ℚ), (87625000000000003 / 100000000000000000 : ℚ)⟩
  r := (21994462073783 / 50000000000000 : ℚ)
  w := (12831840473193 / 10000000000000 : ℚ)
  center := (350475000000000009 / 400000000000000000 : ℚ)
  supportValue := (22509191893884423 / 100000000000000000 : ℚ)
  supportSlope := (-7703424140851531 / 10000000000000000 : ℚ)
  oldCenter := (22509191893884423 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2009
  oldPieces := [piece_589]
}

noncomputable def cell_13728 : Cell := { cellDefaults with
  domain := ⟨(87625000000000003 / 100000000000000000 : ℚ), (175275000000000009 / 200000000000000000 : ℚ)⟩
  r := (21994462073783 / 50000000000000 : ℚ)
  w := (12831840473193 / 10000000000000 : ℚ)
  center := (70105000000000003 / 80000000000000000 : ℚ)
  supportValue := (11249782452592773 / 50000000000000000 : ℚ)
  supportSlope := (-7700417803885493 / 10000000000000000 : ℚ)
  oldCenter := (11249782452592773 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2009
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588, piece_589]
}

noncomputable def cell_13729 : Cell := { cellDefaults with
  domain := ⟨(175275000000000009 / 200000000000000000 : ℚ), (43825000000000003 / 50000000000000000 : ℚ)⟩
  r := (21994462073783 / 50000000000000 : ℚ)
  w := (12831840473193 / 10000000000000 : ℚ)
  center := (350575000000000021 / 400000000000000000 : ℚ)
  supportValue := (2248994092843141 / 10000000000000000 : ℚ)
  supportSlope := (-3848637959297889 / 5000000000000000 : ℚ)
  oldCenter := (2248994092843141 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2009
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588]
}

noncomputable def cell_13730 : Cell := { cellDefaults with
  domain := ⟨(43825000000000003 / 50000000000000000 : ℚ), (175325000000000009 / 200000000000000000 : ℚ)⟩
  r := (4397123408451 / 10000000000000 : ℚ)
  w := (12827700835471 / 10000000000000 : ℚ)
  center := (350625000000000021 / 400000000000000000 : ℚ)
  supportValue := (2813420708288553 / 12500000000000000 : ℚ)
  supportSlope := (-7699353982398661 / 10000000000000000 : ℚ)
  oldCenter := (2813420708288553 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2010
  oldPieces := [piece_589]
}

noncomputable def cell_13731 : Cell := { cellDefaults with
  domain := ⟨(175325000000000009 / 200000000000000000 : ℚ), (87675000000000003 / 100000000000000000 : ℚ)⟩
  r := (4397123408451 / 10000000000000 : ℚ)
  w := (12827700835471 / 10000000000000 : ℚ)
  center := (70135000000000003 / 80000000000000000 : ℚ)
  supportValue := (2249774341659603 / 10000000000000000 : ℚ)
  supportSlope := (-1924156965243071 / 2500000000000000 : ℚ)
  oldCenter := (2249774341659603 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2010
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588, piece_589]
}

noncomputable def cell_13732 : Cell := { cellDefaults with
  domain := ⟨(87675000000000003 / 100000000000000000 : ℚ), (175375000000000003 / 200000000000000000 : ℚ)⟩
  r := (4397123408451 / 10000000000000 : ℚ)
  w := (12827700835471 / 10000000000000 : ℚ)
  center := (350725000000000009 / 400000000000000000 : ℚ)
  supportValue := (2248812452173709 / 10000000000000000 : ℚ)
  supportSlope := (-961651569516113 / 1250000000000000 : ℚ)
  oldCenter := (2248812452173709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2010
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588]
}

noncomputable def cell_13733 : Cell := { cellDefaults with
  domain := ⟨(175375000000000003 / 200000000000000000 : ℚ), (877 / 1000 : ℚ)⟩
  r := (4397123408451 / 10000000000000 : ℚ)
  w := (12827700835471 / 10000000000000 : ℚ)
  center := (350775000000000003 / 400000000000000000 : ℚ)
  supportValue := (2247851037834911 / 10000000000000000 : ℚ)
  supportSlope := (-7689413118395583 / 10000000000000000 : ℚ)
  oldCenter := (2247851037834911 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2010
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588]
}

noncomputable def cell_13734 : Cell := { cellDefaults with
  domain := ⟨(877 / 1000 : ℚ), (175425000000000003 / 200000000000000000 : ℚ)⟩
  r := (10988389204621 / 25000000000000 : ℚ)
  w := (3205889774983 / 2500000000000 : ℚ)
  center := (350825000000000003 / 400000000000000000 : ℚ)
  supportValue := (11247965634721381 / 50000000000000000 : ℚ)
  supportSlope := (-7692842404901833 / 10000000000000000 : ℚ)
  oldCenter := (11247965634721381 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2011
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588, piece_589]
}

noncomputable def cell_13735 : Cell := { cellDefaults with
  domain := ⟨(175425000000000003 / 200000000000000000 : ℚ), (87725000000000003 / 100000000000000000 : ℚ)⟩
  r := (10988389204621 / 25000000000000 : ℚ)
  w := (3205889774983 / 2500000000000 : ℚ)
  center := (350875000000000009 / 400000000000000000 : ℚ)
  supportValue := (22486317448851229 / 100000000000000000 : ℚ)
  supportSlope := (-3844577646027841 / 5000000000000000 : ℚ)
  oldCenter := (22486317448851229 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2011
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588]
}

noncomputable def cell_13736 : Cell := { cellDefaults with
  domain := ⟨(87725000000000003 / 100000000000000000 : ℚ), (175475000000000009 / 200000000000000000 : ℚ)⟩
  r := (10988389204621 / 25000000000000 : ℚ)
  w := (3205889774983 / 2500000000000 : ℚ)
  center := (70185000000000003 / 80000000000000000 : ℚ)
  supportValue := (4495341674872183 / 20000000000000000 : ℚ)
  supportSlope := (-7685360147079623 / 10000000000000000 : ℚ)
  oldCenter := (4495341674872183 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2011
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588]
}

noncomputable def cell_13737 : Cell := { cellDefaults with
  domain := ⟨(175475000000000009 / 200000000000000000 : ℚ), (43875000000000003 / 50000000000000000 : ℚ)⟩
  r := (10988389204621 / 25000000000000 : ℚ)
  w := (3205889774983 / 2500000000000 : ℚ)
  center := (350975000000000021 / 400000000000000000 : ℚ)
  supportValue := (2808388005204589 / 12500000000000000 : ℚ)
  supportSlope := (-7681568466998601 / 10000000000000000 : ℚ)
  oldCenter := (2808388005204589 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2011
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588]
}

noncomputable def cell_13738 : Cell := { cellDefaults with
  domain := ⟨(43875000000000003 / 50000000000000000 : ℚ), (175525000000000009 / 200000000000000000 : ℚ)⟩
  r := (2196794578869 / 5000000000000 : ℚ)
  w := (3204854164087 / 2500000000000 : ℚ)
  center := (351025000000000021 / 400000000000000000 : ℚ)
  supportValue := (11242259081716713 / 50000000000000000 : ℚ)
  supportSlope := (-7685103530504589 / 10000000000000000 : ℚ)
  oldCenter := (11242259081716713 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2012
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588]
}

noncomputable def cell_13739 : Cell := { cellDefaults with
  domain := ⟨(175525000000000009 / 200000000000000000 : ℚ), (87775000000000003 / 100000000000000000 : ℚ)⟩
  r := (2196794578869 / 5000000000000 : ℚ)
  w := (3204854164087 / 2500000000000 : ℚ)
  center := (70215000000000003 / 80000000000000000 : ℚ)
  supportValue := (11237457075483699 / 50000000000000000 : ℚ)
  supportSlope := (-7681312670691863 / 10000000000000000 : ℚ)
  oldCenter := (11237457075483699 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2012
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588]
}

noncomputable def cell_13740 : Cell := { cellDefaults with
  domain := ⟨(87775000000000003 / 100000000000000000 : ℚ), (175575000000000003 / 200000000000000000 : ℚ)⟩
  r := (2196794578869 / 5000000000000 : ℚ)
  w := (3204854164087 / 2500000000000 : ℚ)
  center := (351125000000000009 / 400000000000000000 : ℚ)
  supportValue := (4493062974982971 / 20000000000000000 : ℚ)
  supportSlope := (-7677525269654627 / 10000000000000000 : ℚ)
  oldCenter := (4493062974982971 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2012
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588]
}

noncomputable def cell_13741 : Cell := { cellDefaults with
  domain := ⟨(175575000000000003 / 200000000000000000 : ℚ), (439 / 500 : ℚ)⟩
  r := (2196794578869 / 5000000000000 : ℚ)
  w := (3204854164087 / 2500000000000 : ℚ)
  center := (351175000000000003 / 400000000000000000 : ℚ)
  supportValue := (22455720330956233 / 100000000000000000 : ℚ)
  supportSlope := (-7673741321033521 / 10000000000000000 : ℚ)
  oldCenter := (22455720330956233 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2012
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588]
}

noncomputable def cell_13742 : Cell := { cellDefaults with
  domain := ⟨(439 / 500 : ℚ), (8781620111731843 / 10000000000000000 : ℚ)⟩
  r := (1372444977097 / 3125000000000 : ℚ)
  w := (12815272160333 / 10000000000000 : ℚ)
  center := (17561620111731843 / 20000000000000000 : ℚ)
  supportValue := (11235854151782433 / 50000000000000000 : ℚ)
  supportSlope := (-7676711002246803 / 10000000000000000 : ℚ)
  oldCenter := (11235854151782433 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2013
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588]
}

noncomputable def cell_13743 : Cell := { cellDefaults with
  domain := ⟨(8781620111731843 / 10000000000000000 : ℚ), (4391620111731843 / 5000000000000000 : ℚ)⟩
  r := (1372444977097 / 3125000000000 : ℚ)
  w := (12815272160333 / 10000000000000 : ℚ)
  center := (17564860335195529 / 20000000000000000 : ℚ)
  supportValue := (5614818785576331 / 25000000000000000 : ℚ)
  supportSlope := (-1917952262787673 / 2500000000000000 : ℚ)
  oldCenter := (5614818785576331 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2013
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588]
}

noncomputable def cell_13744 : Cell := { cellDefaults with
  domain := ⟨(4391620111731843 / 5000000000000000 : ℚ), (43925000000000003 / 50000000000000000 : ℚ)⟩
  r := (1372444977097 / 3125000000000 : ℚ)
  w := (12815272160333 / 10000000000000 : ℚ)
  center := (87841201117318433 / 100000000000000000 : ℚ)
  supportValue := (5611582384403449 / 25000000000000000 : ℚ)
  supportSlope := (-7667826790110629 / 10000000000000000 : ℚ)
  oldCenter := (5611582384403449 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2014
  oldLo := (28 / 125 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587, piece_588]
}

noncomputable def cell_13745 : Cell := { cellDefaults with
  domain := ⟨(43925000000000003 / 50000000000000000 : ℚ), (175725000000000009 / 200000000000000000 : ℚ)⟩
  r := (8780119931797 / 20000000000000 : ℚ)
  w := (12811127715181 / 10000000000000 : ℚ)
  center := (351425000000000021 / 400000000000000000 : ℚ)
  supportValue := (5615440070509447 / 25000000000000000 : ℚ)
  supportSlope := (-7669455707400661 / 10000000000000000 : ℚ)
  oldCenter := (5615440070509447 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2015
  oldLo := (22450000000000001 / 100000000000000000 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_588]
}

noncomputable def cell_13746 : Cell := { cellDefaults with
  domain := ⟨(175725000000000009 / 200000000000000000 : ℚ), (87875000000000003 / 100000000000000000 : ℚ)⟩
  r := (8780119931797 / 20000000000000 : ℚ)
  w := (12811127715181 / 10000000000000 : ℚ)
  center := (70295000000000003 / 80000000000000000 : ℚ)
  supportValue := (2245217581971099 / 10000000000000000 : ℚ)
  supportSlope := (-1916519649706413 / 2500000000000000 : ℚ)
  oldCenter := (2245217581971099 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2015
  oldLo := (28 / 125 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587, piece_588]
}

noncomputable def cell_13747 : Cell := { cellDefaults with
  domain := ⟨(87875000000000003 / 100000000000000000 : ℚ), (175775000000000003 / 200000000000000000 : ℚ)⟩
  r := (8780119931797 / 20000000000000 : ℚ)
  w := (12811127715181 / 10000000000000 : ℚ)
  center := (351525000000000009 / 400000000000000000 : ℚ)
  supportValue := (11221297334128827 / 50000000000000000 : ℚ)
  supportSlope := (-38316800629339 / 50000000000000 : ℚ)
  oldCenter := (11221297334128827 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2015
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13748 : Cell := { cellDefaults with
  domain := ⟨(175775000000000003 / 200000000000000000 : ℚ), (879 / 1000 : ℚ)⟩
  r := (8780119931797 / 20000000000000 : ℚ)
  w := (12811127715181 / 10000000000000 : ℚ)
  center := (351575000000000003 / 400000000000000000 : ℚ)
  supportValue := (5608254456238411 / 25000000000000000 : ℚ)
  supportSlope := (-7659585424463019 / 10000000000000000 : ℚ)
  oldCenter := (5608254456238411 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2015
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13749 : Cell := { cellDefaults with
  domain := ⟨(879 / 1000 : ℚ), (175825000000000003 / 200000000000000000 : ℚ)⟩
  r := (2194148571521 / 5000000000000 : ℚ)
  w := (12806980630487 / 10000000000000 : ℚ)
  center := (351625000000000003 / 400000000000000000 : ℚ)
  supportValue := (11225209065599137 / 50000000000000000 : ℚ)
  supportSlope := (-1532464733921473 / 2000000000000000 : ℚ)
  oldCenter := (11225209065599137 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2016
  oldLo := (28 / 125 : ℚ)
  oldHi := (22500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587, piece_588]
}

theorem check_13700 : cell_13700.check = true := by
  decide +kernel

theorem check_13701 : cell_13701.check = true := by
  decide +kernel

theorem check_13702 : cell_13702.check = true := by
  decide +kernel

theorem check_13703 : cell_13703.check = true := by
  decide +kernel

theorem check_13704 : cell_13704.check = true := by
  decide +kernel

theorem check_13705 : cell_13705.check = true := by
  decide +kernel

theorem check_13706 : cell_13706.check = true := by
  decide +kernel

theorem check_13707 : cell_13707.check = true := by
  decide +kernel

theorem check_13708 : cell_13708.check = true := by
  decide +kernel

theorem check_13709 : cell_13709.check = true := by
  decide +kernel

theorem check_13710 : cell_13710.check = true := by
  decide +kernel

theorem check_13711 : cell_13711.check = true := by
  decide +kernel

theorem check_13712 : cell_13712.check = true := by
  decide +kernel

theorem check_13713 : cell_13713.check = true := by
  decide +kernel

theorem check_13714 : cell_13714.check = true := by
  decide +kernel

theorem check_13715 : cell_13715.check = true := by
  decide +kernel

theorem check_13716 : cell_13716.check = true := by
  decide +kernel

theorem check_13717 : cell_13717.check = true := by
  decide +kernel

theorem check_13718 : cell_13718.check = true := by
  decide +kernel

theorem check_13719 : cell_13719.check = true := by
  decide +kernel

theorem check_13720 : cell_13720.check = true := by
  decide +kernel

theorem check_13721 : cell_13721.check = true := by
  decide +kernel

theorem check_13722 : cell_13722.check = true := by
  decide +kernel

theorem check_13723 : cell_13723.check = true := by
  decide +kernel

theorem check_13724 : cell_13724.check = true := by
  decide +kernel

theorem check_13725 : cell_13725.check = true := by
  decide +kernel

theorem check_13726 : cell_13726.check = true := by
  decide +kernel

theorem check_13727 : cell_13727.check = true := by
  decide +kernel

theorem check_13728 : cell_13728.check = true := by
  decide +kernel

theorem check_13729 : cell_13729.check = true := by
  decide +kernel

theorem check_13730 : cell_13730.check = true := by
  decide +kernel

theorem check_13731 : cell_13731.check = true := by
  decide +kernel

theorem check_13732 : cell_13732.check = true := by
  decide +kernel

theorem check_13733 : cell_13733.check = true := by
  decide +kernel

theorem check_13734 : cell_13734.check = true := by
  decide +kernel

theorem check_13735 : cell_13735.check = true := by
  decide +kernel

theorem check_13736 : cell_13736.check = true := by
  decide +kernel

theorem check_13737 : cell_13737.check = true := by
  decide +kernel

theorem check_13738 : cell_13738.check = true := by
  decide +kernel

theorem check_13739 : cell_13739.check = true := by
  decide +kernel

theorem check_13740 : cell_13740.check = true := by
  decide +kernel

theorem check_13741 : cell_13741.check = true := by
  decide +kernel

theorem check_13742 : cell_13742.check = true := by
  decide +kernel

theorem check_13743 : cell_13743.check = true := by
  decide +kernel

theorem check_13744 : cell_13744.check = true := by
  decide +kernel

theorem check_13745 : cell_13745.check = true := by
  decide +kernel

theorem check_13746 : cell_13746.check = true := by
  decide +kernel

theorem check_13747 : cell_13747.check = true := by
  decide +kernel

theorem check_13748 : cell_13748.check = true := by
  decide +kernel

theorem check_13749 : cell_13749.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13700, cell_13701, cell_13702, cell_13703, cell_13704, cell_13705, cell_13706, cell_13707, cell_13708, cell_13709, cell_13710, cell_13711, cell_13712, cell_13713, cell_13714, cell_13715, cell_13716, cell_13717, cell_13718, cell_13719, cell_13720, cell_13721, cell_13722, cell_13723, cell_13724, cell_13725, cell_13726, cell_13727, cell_13728, cell_13729, cell_13730, cell_13731, cell_13732, cell_13733, cell_13734, cell_13735, cell_13736, cell_13737, cell_13738, cell_13739, cell_13740, cell_13741, cell_13742, cell_13743, cell_13744, cell_13745, cell_13746, cell_13747, cell_13748, cell_13749]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13700, check_13701, check_13702, check_13703, check_13704, check_13705, check_13706, check_13707, check_13708, check_13709, check_13710, check_13711, check_13712, check_13713, check_13714, check_13715, check_13716, check_13717, check_13718, check_13719, check_13720, check_13721, check_13722, check_13723, check_13724, check_13725, check_13726, check_13727, check_13728, check_13729, check_13730, check_13731, check_13732, check_13733, check_13734, check_13735, check_13736, check_13737, check_13738, check_13739, check_13740, check_13741, check_13742, check_13743, check_13744, check_13745, check_13746, check_13747, check_13748, check_13749, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0274

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0274
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0274
open AnalyticBounds.ExpressionCertificate

theorem linked_13700 : Linked cell_13700 pieces := by
  link_source cell_13700 with piece_2001 using piece_2001_mem, piece_591_mem

theorem linked_13701 : Linked cell_13701 pieces := by
  link_source cell_13701 with piece_2002 using piece_2002_mem, ⟨piece_590_mem, piece_591_mem⟩

theorem linked_13702 : Linked cell_13702 pieces := by
  link_source cell_13702 with piece_2003 using piece_2003_mem, piece_591_mem

theorem linked_13703 : Linked cell_13703 pieces := by
  link_source cell_13703 with piece_2003 using piece_2003_mem, piece_591_mem

theorem linked_13704 : Linked cell_13704 pieces := by
  link_source cell_13704 with piece_2003 using piece_2003_mem, ⟨piece_590_mem, piece_591_mem⟩

theorem linked_13705 : Linked cell_13705 pieces := by
  link_source cell_13705 with piece_2003 using piece_2003_mem, piece_590_mem

theorem linked_13706 : Linked cell_13706 pieces := by
  link_source cell_13706 with piece_2004 using piece_2004_mem, piece_591_mem

theorem linked_13707 : Linked cell_13707 pieces := by
  link_source cell_13707 with piece_2004 using piece_2004_mem, ⟨piece_590_mem, piece_591_mem⟩

theorem linked_13708 : Linked cell_13708 pieces := by
  link_source cell_13708 with piece_2004 using piece_2004_mem, piece_590_mem

theorem linked_13709 : Linked cell_13709 pieces := by
  link_source cell_13709 with piece_2004 using piece_2004_mem, ⟨piece_589_mem, piece_590_mem⟩

theorem linked_13710 : Linked cell_13710 pieces := by
  link_source cell_13710 with piece_2005 using piece_2005_mem, piece_590_mem

theorem linked_13711 : Linked cell_13711 pieces := by
  link_source cell_13711 with piece_2005 using piece_2005_mem, piece_590_mem

theorem linked_13712 : Linked cell_13712 pieces := by
  link_source cell_13712 with piece_2005 using piece_2005_mem, ⟨piece_589_mem, piece_590_mem⟩

theorem linked_13713 : Linked cell_13713 pieces := by
  link_source cell_13713 with piece_2005 using piece_2005_mem, piece_589_mem

theorem linked_13714 : Linked cell_13714 pieces := by
  link_source cell_13714 with piece_2006 using piece_2006_mem, ⟨piece_589_mem, piece_590_mem⟩

theorem linked_13715 : Linked cell_13715 pieces := by
  link_source cell_13715 with piece_2006 using piece_2006_mem, piece_589_mem

theorem linked_13716 : Linked cell_13716 pieces := by
  link_source cell_13716 with piece_2006 using piece_2006_mem, piece_589_mem

theorem linked_13717 : Linked cell_13717 pieces := by
  link_source cell_13717 with piece_2006 using piece_2006_mem, piece_589_mem

theorem linked_13718 : Linked cell_13718 pieces := by
  link_source cell_13718 with piece_2007 using piece_2007_mem, piece_589_mem

theorem linked_13719 : Linked cell_13719 pieces := by
  link_source cell_13719 with piece_2007 using piece_2007_mem, piece_589_mem

theorem linked_13720 : Linked cell_13720 pieces := by
  link_source cell_13720 with piece_2007 using piece_2007_mem, piece_589_mem

theorem linked_13721 : Linked cell_13721 pieces := by
  link_source cell_13721 with piece_2007 using piece_2007_mem, piece_589_mem

theorem linked_13722 : Linked cell_13722 pieces := by
  link_source cell_13722 with piece_2008 using piece_2008_mem, piece_589_mem

theorem linked_13723 : Linked cell_13723 pieces := by
  link_source cell_13723 with piece_2008 using piece_2008_mem, piece_589_mem

theorem linked_13724 : Linked cell_13724 pieces := by
  link_source cell_13724 with piece_2008 using piece_2008_mem, piece_589_mem

theorem linked_13725 : Linked cell_13725 pieces := by
  link_source cell_13725 with piece_2008 using piece_2008_mem, ⟨piece_588_mem, piece_589_mem⟩

theorem linked_13726 : Linked cell_13726 pieces := by
  link_source cell_13726 with piece_2009 using piece_2009_mem, piece_589_mem

theorem linked_13727 : Linked cell_13727 pieces := by
  link_source cell_13727 with piece_2009 using piece_2009_mem, piece_589_mem

theorem linked_13728 : Linked cell_13728 pieces := by
  link_source cell_13728 with piece_2009 using piece_2009_mem, ⟨piece_588_mem, piece_589_mem⟩

theorem linked_13729 : Linked cell_13729 pieces := by
  link_source cell_13729 with piece_2009 using piece_2009_mem, piece_588_mem

theorem linked_13730 : Linked cell_13730 pieces := by
  link_source cell_13730 with piece_2010 using piece_2010_mem, piece_589_mem

theorem linked_13731 : Linked cell_13731 pieces := by
  link_source cell_13731 with piece_2010 using piece_2010_mem, ⟨piece_588_mem, piece_589_mem⟩

theorem linked_13732 : Linked cell_13732 pieces := by
  link_source cell_13732 with piece_2010 using piece_2010_mem, piece_588_mem

theorem linked_13733 : Linked cell_13733 pieces := by
  link_source cell_13733 with piece_2010 using piece_2010_mem, piece_588_mem

theorem linked_13734 : Linked cell_13734 pieces := by
  link_source cell_13734 with piece_2011 using piece_2011_mem, ⟨piece_588_mem, piece_589_mem⟩

theorem linked_13735 : Linked cell_13735 pieces := by
  link_source cell_13735 with piece_2011 using piece_2011_mem, piece_588_mem

theorem linked_13736 : Linked cell_13736 pieces := by
  link_source cell_13736 with piece_2011 using piece_2011_mem, piece_588_mem

theorem linked_13737 : Linked cell_13737 pieces := by
  link_source cell_13737 with piece_2011 using piece_2011_mem, piece_588_mem

theorem linked_13738 : Linked cell_13738 pieces := by
  link_source cell_13738 with piece_2012 using piece_2012_mem, piece_588_mem

theorem linked_13739 : Linked cell_13739 pieces := by
  link_source cell_13739 with piece_2012 using piece_2012_mem, piece_588_mem

theorem linked_13740 : Linked cell_13740 pieces := by
  link_source cell_13740 with piece_2012 using piece_2012_mem, piece_588_mem

theorem linked_13741 : Linked cell_13741 pieces := by
  link_source cell_13741 with piece_2012 using piece_2012_mem, piece_588_mem

theorem linked_13742 : Linked cell_13742 pieces := by
  link_source cell_13742 with piece_2013 using piece_2013_mem, piece_588_mem

theorem linked_13743 : Linked cell_13743 pieces := by
  link_source cell_13743 with piece_2013 using piece_2013_mem, piece_588_mem

theorem linked_13744 : Linked cell_13744 pieces := by
  link_source cell_13744 with piece_2014 using piece_2014_mem, ⟨piece_587_mem, piece_588_mem⟩

theorem linked_13745 : Linked cell_13745 pieces := by
  link_source cell_13745 with piece_2015 using piece_2015_mem, piece_588_mem

theorem linked_13746 : Linked cell_13746 pieces := by
  link_source cell_13746 with piece_2015 using piece_2015_mem, ⟨piece_587_mem, piece_588_mem⟩

theorem linked_13747 : Linked cell_13747 pieces := by
  link_source cell_13747 with piece_2015 using piece_2015_mem, piece_587_mem

theorem linked_13748 : Linked cell_13748 pieces := by
  link_source cell_13748 with piece_2015 using piece_2015_mem, piece_587_mem

theorem linked_13749 : Linked cell_13749 pieces := by
  link_source cell_13749 with piece_2016 using piece_2016_mem, ⟨piece_587_mem, piece_588_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0274.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0274.cells,List.forall_mem_cons]
  exact ⟨linked_13700, linked_13701, linked_13702, linked_13703, linked_13704, linked_13705, linked_13706, linked_13707, linked_13708, linked_13709, linked_13710, linked_13711, linked_13712, linked_13713, linked_13714, linked_13715, linked_13716, linked_13717, linked_13718, linked_13719, linked_13720, linked_13721, linked_13722, linked_13723, linked_13724, linked_13725, linked_13726, linked_13727, linked_13728, linked_13729, linked_13730, linked_13731, linked_13732, linked_13733, linked_13734, linked_13735, linked_13736, linked_13737, linked_13738, linked_13739, linked_13740, linked_13741, linked_13742, linked_13743, linked_13744, linked_13745, linked_13746, linked_13747, linked_13748, linked_13749, by simp⟩

theorem covered : covers (34905865921787709 / 40000000000000000 : ℚ) (175825000000000003 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0274.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0274
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0275
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(175825000000000003 / 200000000000000000 : ℚ), (87925000000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (10966339213631 / 25000000000000 : ℚ)
  w := (4000885423 / 3125000000 : ℚ)
  center := (351675000000000009 / 400000000000000000 : ℚ)
  supportValue := (22440841671856057 / 100000000000000000 : ℚ)
  supportSlope := (-1914835301105359 / 2500000000000000 : ℚ)
  oldCenter := (22440841671856057 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2017
  oldLo := (223 / 1000 : ℚ)
  oldHi := (28 / 125 : ℚ)
  oldPieces := [piece_585]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13750 : Cell := { cellDefaults with
  r := (2194148571521 / 5000000000000 : ℚ)
  w := (12806980630487 / 10000000000000 : ℚ)
  newCoefficients := coefficients_2016
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13751 : Cell := { cellDefaults with
  domain := ⟨(87925000000000003 / 100000000000000000 : ℚ), (175875000000000009 / 200000000000000000 : ℚ)⟩
  r := (2194148571521 / 5000000000000 : ℚ)
  w := (12806980630487 / 10000000000000 : ℚ)
  center := (70345000000000003 / 80000000000000000 : ℚ)
  supportValue := (11215634924777307 / 50000000000000000 : ℚ)
  supportSlope := (-3827785371345967 / 5000000000000000 : ℚ)
  oldCenter := (11215634924777307 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2016
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13752 : Cell := { cellDefaults with
  domain := ⟨(175875000000000009 / 200000000000000000 : ℚ), (43975000000000003 / 50000000000000000 : ℚ)⟩
  r := (2194148571521 / 5000000000000 : ℚ)
  w := (12806980630487 / 10000000000000 : ℚ)
  center := (351775000000000021 / 400000000000000000 : ℚ)
  supportValue := (11210851369092277 / 50000000000000000 : ℚ)
  supportSlope := (-239118866090209 / 312500000000000 : ℚ)
  oldCenter := (11210851369092277 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2016
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13753 : Cell := { cellDefaults with
  domain := ⟨(43975000000000003 / 50000000000000000 : ℚ), (175925000000000009 / 200000000000000000 : ℚ)⟩
  center := (351825000000000021 / 400000000000000000 : ℚ)
  supportValue := (2243909362220193 / 10000000000000000 : ℚ)
  supportSlope := (-7655326997247721 / 10000000000000000 : ℚ)
  oldCenter := (2243909362220193 / 10000000000000000 : ℚ)
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13754 : Cell := { cellDefaults with
  domain := ⟨(175925000000000009 / 200000000000000000 : ℚ), (87975000000000003 / 100000000000000000 : ℚ)⟩
  center := (70375000000000003 / 80000000000000000 : ℚ)
  supportValue := (2242952681501517 / 10000000000000000 : ℚ)
  supportSlope := (-1530312153455077 / 2000000000000000 : ℚ)
  oldCenter := (2242952681501517 / 10000000000000000 : ℚ)
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13755 : Cell := { cellDefaults with
  domain := ⟨(87975000000000003 / 100000000000000000 : ℚ), (175975000000000003 / 200000000000000000 : ℚ)⟩
  center := (351925000000000009 / 400000000000000000 : ℚ)
  supportValue := (2241996471347383 / 10000000000000000 : ℚ)
  supportSlope := (-477987372830337 / 625000000000000 : ℚ)
  oldCenter := (2241996471347383 / 10000000000000000 : ℚ)
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13756 : Cell := { cellDefaults with
  domain := ⟨(175975000000000003 / 200000000000000000 : ℚ), (22 / 25 : ℚ)⟩
  center := (351975000000000003 / 400000000000000000 : ℚ)
  supportValue := (22410407313296893 / 100000000000000000 : ℚ)
  supportSlope := (-955504823110357 / 1250000000000000 : ℚ)
  oldCenter := (22410407313296893 / 100000000000000000 : ℚ)
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13757 : Cell := { cellDefaults with
  domain := ⟨(22 / 25 : ℚ), (176025000000000003 / 200000000000000000 : ℚ)⟩
  r := (21923877324053 / 50000000000000 : ℚ)
  w := (12798685908161 / 10000000000000 : ℚ)
  center := (352025000000000003 / 400000000000000000 : ℚ)
  supportValue := (2242779010179019 / 10000000000000000 : ℚ)
  supportSlope := (-238986120484729 / 312500000000000 : ℚ)
  oldCenter := (2242779010179019 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2018
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13758 : Cell := { cellDefaults with
  domain := ⟨(176025000000000003 / 200000000000000000 : ℚ), (88025000000000003 / 100000000000000000 : ℚ)⟩
  r := (21923877324053 / 50000000000000 : ℚ)
  w := (12798685908161 / 10000000000000 : ℚ)
  center := (352075000000000009 / 400000000000000000 : ℚ)
  supportValue := (11209116501875521 / 50000000000000000 : ℚ)
  supportSlope := (-7643797274411639 / 10000000000000000 : ℚ)
  oldCenter := (11209116501875521 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2018
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13759 : Cell := { cellDefaults with
  domain := ⟨(88025000000000003 / 100000000000000000 : ℚ), (176075000000000009 / 200000000000000000 : ℚ)⟩
  r := (21923877324053 / 50000000000000 : ℚ)
  w := (12798685908161 / 10000000000000 : ℚ)
  center := (70425000000000003 / 80000000000000000 : ℚ)
  supportValue := (280108507522549 / 1250000000000000 : ℚ)
  supportSlope := (-3820021054474307 / 5000000000000000 : ℚ)
  oldCenter := (280108507522549 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_2018
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13760 : Cell := { cellDefaults with
  domain := ⟨(176075000000000009 / 200000000000000000 : ℚ), (44025000000000003 / 50000000000000000 : ℚ)⟩
  r := (21923877324053 / 50000000000000 : ℚ)
  w := (12798685908161 / 10000000000000 : ℚ)
  center := (352175000000000021 / 400000000000000000 : ℚ)
  supportValue := (179193061805757 / 800000000000000 : ℚ)
  supportSlope := (-7637147407554473 / 10000000000000000 : ℚ)
  oldCenter := (179193061805757 / 800000000000000 : ℚ)
  newCoefficients := coefficients_2018
  oldLo := (447 / 2000 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_586, piece_587]
}

noncomputable def cell_13761 : Cell := { cellDefaults with
  domain := ⟨(44025000000000003 / 50000000000000000 : ℚ), (352250000000000019 / 400000000000000000 : ℚ)⟩
  r := (21915082594491 / 50000000000000 : ℚ)
  w := (12794537134307 / 10000000000000 : ℚ)
  center := (704450000000000043 / 800000000000000000 : ℚ)
  supportValue := (22416509150302907 / 100000000000000000 : ℚ)
  supportSlope := (-1909950519905137 / 2500000000000000 : ℚ)
  oldCenter := (22416509150302907 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2019
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13762 : Cell := { cellDefaults with
  domain := ⟨(352250000000000019 / 400000000000000000 : ℚ), (176150000000000007 / 200000000000000000 : ℚ)⟩
  r := (21915082594491 / 50000000000000 : ℚ)
  w := (12794537134307 / 10000000000000 : ℚ)
  center := (704550000000000033 / 800000000000000000 : ℚ)
  supportValue := (11203480869860391 / 50000000000000000 : ℚ)
  supportSlope := (-7636051120672657 / 10000000000000000 : ℚ)
  oldCenter := (11203480869860391 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2019
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13763 : Cell := { cellDefaults with
  domain := ⟨(176150000000000007 / 200000000000000000 : ℚ), (352350000000000009 / 400000000000000000 : ℚ)⟩
  r := (21915082594491 / 50000000000000 : ℚ)
  w := (12794537134307 / 10000000000000 : ℚ)
  center := (704650000000000023 / 800000000000000000 : ℚ)
  supportValue := (11198709262199781 / 50000000000000000 : ℚ)
  supportSlope := (-477088752331759 / 625000000000000 : ℚ)
  oldCenter := (11198709262199781 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2019
  oldLo := (447 / 2000 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_586, piece_587]
}

noncomputable def cell_13764 : Cell := { cellDefaults with
  domain := ⟨(352350000000000009 / 400000000000000000 : ℚ), (88100000000000001 / 100000000000000000 : ℚ)⟩
  r := (21915082594491 / 50000000000000 : ℚ)
  w := (12794537134307 / 10000000000000 : ℚ)
  center := (704750000000000013 / 800000000000000000 : ℚ)
  supportValue := (2238787867605141 / 10000000000000000 : ℚ)
  supportSlope := (-7630001697172747 / 10000000000000000 : ℚ)
  oldCenter := (2238787867605141 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2019
  oldLo := (447 / 2000 : ℚ)
  oldPieces := [piece_586]
}

noncomputable def cell_13765 : Cell := { cellDefaults with
  domain := ⟨(88100000000000001 / 100000000000000000 : ℚ), (352450000000000009 / 400000000000000000 : ℚ)⟩
  r := (21906294024841 / 50000000000000 : ℚ)
  w := (12790386187537 / 10000000000000 : ℚ)
  center := (704850000000000013 / 800000000000000000 : ℚ)
  supportValue := (2800656579119799 / 12500000000000000 : ℚ)
  supportSlope := (-7632066237754157 / 10000000000000000 : ℚ)
  oldCenter := (2800656579119799 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2020
  oldLo := (28 / 125 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_587]
}

noncomputable def cell_13766 : Cell := { cellDefaults with
  domain := ⟨(352450000000000009 / 400000000000000000 : ℚ), (176250000000000007 / 200000000000000000 : ℚ)⟩
  r := (21906294024841 / 50000000000000 : ℚ)
  w := (12790386187537 / 10000000000000 : ℚ)
  center := (704950000000000023 / 800000000000000000 : ℚ)
  supportValue := (22395714072838527 / 100000000000000000 : ℚ)
  supportSlope := (-7629697116761439 / 10000000000000000 : ℚ)
  oldCenter := (22395714072838527 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2020
  oldLo := (447 / 2000 : ℚ)
  oldHi := (22450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_586, piece_587]
}

noncomputable def cell_13767 : Cell := { cellDefaults with
  domain := ⟨(176250000000000007 / 200000000000000000 : ℚ), (352550000000000019 / 400000000000000000 : ℚ)⟩
  r := (21906294024841 / 50000000000000 : ℚ)
  w := (12790386187537 / 10000000000000 : ℚ)
  center := (705050000000000033 / 800000000000000000 : ℚ)
  supportValue := (4477235839974863 / 20000000000000000 : ℚ)
  supportSlope := (-7626023488493187 / 10000000000000000 : ℚ)
  oldCenter := (4477235839974863 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2020
  oldLo := (447 / 2000 : ℚ)
  oldPieces := [piece_586]
}

noncomputable def cell_13768 : Cell := { cellDefaults with
  domain := ⟨(352550000000000019 / 400000000000000000 : ℚ), (44075000000000003 / 50000000000000000 : ℚ)⟩
  r := (21906294024841 / 50000000000000 : ℚ)
  w := (12790386187537 / 10000000000000 : ℚ)
  center := (705150000000000043 / 800000000000000000 : ℚ)
  supportValue := (2237664900733421 / 10000000000000000 : ℚ)
  supportSlope := (-7622280851244183 / 10000000000000000 : ℚ)
  oldCenter := (2237664900733421 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2020
  oldLo := (447 / 2000 : ℚ)
  oldPieces := [piece_586]
}

noncomputable def cell_13769 : Cell := { cellDefaults with
  domain := ⟨(44075000000000003 / 50000000000000000 : ℚ), (352650000000000019 / 400000000000000000 : ℚ)⟩
  r := (21897511117517 / 50000000000000 : ℚ)
  w := (12786233952869 / 10000000000000 : ℚ)
  center := (705250000000000043 / 800000000000000000 : ℚ)
  supportValue := (4478803790135803 / 20000000000000000 : ℚ)
  supportSlope := (-3812896489494947 / 5000000000000000 : ℚ)
  oldCenter := (4478803790135803 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2021
  oldLo := (447 / 2000 : ℚ)
  oldPieces := [piece_586]
}

noncomputable def cell_13770 : Cell := { cellDefaults with
  domain := ⟨(352650000000000019 / 400000000000000000 : ℚ), (176350000000000007 / 200000000000000000 : ℚ)⟩
  r := (21897511117517 / 50000000000000 : ℚ)
  w := (12786233952869 / 10000000000000 : ℚ)
  center := (705350000000000033 / 800000000000000000 : ℚ)
  supportValue := (22384489045785053 / 100000000000000000 : ℚ)
  supportSlope := (-7622051127143743 / 10000000000000000 : ℚ)
  oldCenter := (22384489045785053 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2021
  oldLo := (447 / 2000 : ℚ)
  oldPieces := [piece_586]
}

noncomputable def cell_13771 : Cell := { cellDefaults with
  domain := ⟨(176350000000000007 / 200000000000000000 : ℚ), (352750000000000009 / 400000000000000000 : ℚ)⟩
  r := (21897511117517 / 50000000000000 : ℚ)
  w := (12786233952869 / 10000000000000 : ℚ)
  center := (705450000000000023 / 800000000000000000 : ℚ)
  supportValue := (5593740954020731 / 25000000000000000 : ℚ)
  supportSlope := (-1904578168190531 / 2500000000000000 : ℚ)
  oldCenter := (5593740954020731 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2021
  oldLo := (447 / 2000 : ℚ)
  oldPieces := [piece_586]
}

noncomputable def cell_13772 : Cell := { cellDefaults with
  domain := ⟨(352750000000000009 / 400000000000000000 : ℚ), (88200000000000001 / 100000000000000000 : ℚ)⟩
  r := (21897511117517 / 50000000000000 : ℚ)
  w := (12786233952869 / 10000000000000 : ℚ)
  center := (705550000000000013 / 800000000000000000 : ℚ)
  supportValue := (22365443257329673 / 100000000000000000 : ℚ)
  supportSlope := (-3807288804800571 / 5000000000000000 : ℚ)
  oldCenter := (22365443257329673 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2021
  oldLo := (447 / 2000 : ℚ)
  oldPieces := [piece_586]
}

noncomputable def cell_13773 : Cell := { cellDefaults with
  domain := ⟨(88200000000000001 / 100000000000000000 : ℚ), (352850000000000009 / 400000000000000000 : ℚ)⟩
  r := (10944367249179 / 25000000000000 : ℚ)
  w := (12782080198421 / 10000000000000 : ℚ)
  center := (705650000000000013 / 800000000000000000 : ℚ)
  supportValue := (2797850897271359 / 12500000000000000 : ℚ)
  supportSlope := (-190452110056397 / 250000000000000 : ℚ)
  oldCenter := (2797850897271359 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2022
  oldLo := (447 / 2000 : ℚ)
  oldPieces := [piece_586]
}

noncomputable def cell_13774 : Cell := { cellDefaults with
  domain := ⟨(352850000000000009 / 400000000000000000 : ℚ), (176450000000000007 / 200000000000000000 : ℚ)⟩
  r := (10944367249179 / 25000000000000 : ℚ)
  w := (12782080198421 / 10000000000000 : ℚ)
  center := (705750000000000023 / 800000000000000000 : ℚ)
  supportValue := (447465738085311 / 2000000000000000 : ℚ)
  supportSlope := (-7614350123653983 / 10000000000000000 : ℚ)
  oldCenter := (447465738085311 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2022
  oldLo := (447 / 2000 : ℚ)
  oldPieces := [piece_586]
}

noncomputable def cell_13775 : Cell := { cellDefaults with
  domain := ⟨(176450000000000007 / 200000000000000000 : ℚ), (352950000000000019 / 400000000000000000 : ℚ)⟩
  r := (10944367249179 / 25000000000000 : ℚ)
  w := (12782080198421 / 10000000000000 : ℚ)
  center := (705850000000000033 / 800000000000000000 : ℚ)
  supportValue := (22363771296093057 / 100000000000000000 : ℚ)
  supportSlope := (-951327403799123 / 1250000000000000 : ℚ)
  oldCenter := (22363771296093057 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2022
  oldLo := (447 / 2000 : ℚ)
  oldPieces := [piece_586]
}

noncomputable def cell_13776 : Cell := { cellDefaults with
  domain := ⟨(352950000000000019 / 400000000000000000 : ℚ), (44125000000000003 / 50000000000000000 : ℚ)⟩
  r := (10944367249179 / 25000000000000 : ℚ)
  w := (12782080198421 / 10000000000000 : ℚ)
  center := (705950000000000043 / 800000000000000000 : ℚ)
  supportValue := (22354260349425617 / 100000000000000000 : ℚ)
  supportSlope := (-7606967669561499 / 10000000000000000 : ℚ)
  oldCenter := (22354260349425617 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2022
  oldPieces := [piece_585, piece_586]
}

noncomputable def cell_13777 : Cell := { cellDefaults with
  domain := ⟨(44125000000000003 / 50000000000000000 : ℚ), (353050000000000019 / 400000000000000000 : ℚ)⟩
  r := (21879964563503 / 50000000000000 : ℚ)
  w := (12777926226429 / 10000000000000 : ℚ)
  center := (706050000000000043 / 800000000000000000 : ℚ)
  supportValue := (22371615124554411 / 100000000000000000 : ℚ)
  supportSlope := (-3805196129500857 / 5000000000000000 : ℚ)
  oldCenter := (22371615124554411 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2023
  oldLo := (447 / 2000 : ℚ)
  oldPieces := [piece_586]
}

noncomputable def cell_13778 : Cell := { cellDefaults with
  domain := ⟨(353050000000000019 / 400000000000000000 : ℚ), (176550000000000007 / 200000000000000000 : ℚ)⟩
  r := (21879964563503 / 50000000000000 : ℚ)
  w := (12777926226429 / 10000000000000 : ℚ)
  center := (706150000000000033 / 800000000000000000 : ℚ)
  supportValue := (55905261152779 / 250000000000000 : ℚ)
  supportSlope := (-1521333105695507 / 2000000000000000 : ℚ)
  oldCenter := (55905261152779 / 250000000000000 : ℚ)
  newCoefficients := coefficients_2023
  oldLo := (447 / 2000 : ℚ)
  oldPieces := [piece_586]
}

noncomputable def cell_13779 : Cell := { cellDefaults with
  domain := ⟨(176550000000000007 / 200000000000000000 : ℚ), (353150000000000009 / 400000000000000000 : ℚ)⟩
  r := (21879964563503 / 50000000000000 : ℚ)
  w := (12777926226429 / 10000000000000 : ℚ)
  center := (706250000000000023 / 800000000000000000 : ℚ)
  supportValue := (11176299226987037 / 50000000000000000 : ℚ)
  supportSlope := (-7603270055485871 / 10000000000000000 : ℚ)
  oldCenter := (11176299226987037 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2023
  oldPieces := [piece_585, piece_586]
}

noncomputable def cell_13780 : Cell := { cellDefaults with
  domain := ⟨(353150000000000009 / 400000000000000000 : ℚ), (88300000000000001 / 100000000000000000 : ℚ)⟩
  r := (21879964563503 / 50000000000000 : ℚ)
  w := (12777926226429 / 10000000000000 : ℚ)
  center := (706350000000000013 / 800000000000000000 : ℚ)
  supportValue := (223430957887573 / 1000000000000000 : ℚ)
  supportSlope := (-1520132236465673 / 2000000000000000 : ℚ)
  oldCenter := (223430957887573 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_2023
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13781 : Cell := { cellDefaults with
  domain := ⟨(88300000000000001 / 100000000000000000 : ℚ), (353250000000000009 / 400000000000000000 : ℚ)⟩
  r := (43742401161629 / 100000000000000 : ℚ)
  w := (3193442512497 / 2500000000000 : ℚ)
  center := (706450000000000013 / 800000000000000000 : ℚ)
  supportValue := (2795055972487949 / 12500000000000000 : ℚ)
  supportSlope := (-7602717985587887 / 10000000000000000 : ℚ)
  oldCenter := (2795055972487949 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2024
  oldLo := (447 / 2000 : ℚ)
  oldPieces := [piece_586]
}

noncomputable def cell_13782 : Cell := { cellDefaults with
  domain := ⟨(353250000000000009 / 400000000000000000 : ℚ), (176650000000000007 / 200000000000000000 : ℚ)⟩
  r := (43742401161629 / 100000000000000 : ℚ)
  w := (3193442512497 / 2500000000000 : ℚ)
  center := (706550000000000023 / 800000000000000000 : ℚ)
  supportValue := (11175473352304509 / 50000000000000000 : ℚ)
  supportSlope := (-7599576880922627 / 10000000000000000 : ℚ)
  oldCenter := (11175473352304509 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2024
  oldPieces := [piece_585, piece_586]
}

noncomputable def cell_13783 : Cell := { cellDefaults with
  domain := ⟨(176650000000000007 / 200000000000000000 : ℚ), (353350000000000019 / 400000000000000000 : ℚ)⟩
  r := (43742401161629 / 100000000000000 : ℚ)
  w := (3193442512497 / 2500000000000 : ℚ)
  center := (706650000000000033 / 800000000000000000 : ℚ)
  supportValue := (22341448654321217 / 100000000000000000 : ℚ)
  supportSlope := (-1519344048614383 / 2000000000000000 : ℚ)
  oldCenter := (22341448654321217 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2024
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13784 : Cell := { cellDefaults with
  domain := ⟨(353350000000000019 / 400000000000000000 : ℚ), (44175000000000003 / 50000000000000000 : ℚ)⟩
  r := (43742401161629 / 100000000000000 : ℚ)
  w := (3193442512497 / 2500000000000 : ℚ)
  center := (706750000000000043 / 800000000000000000 : ℚ)
  supportValue := (22331955075760443 / 100000000000000000 : ℚ)
  supportSlope := (-3796500869881101 / 5000000000000000 : ℚ)
  oldCenter := (22331955075760443 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2024
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13785 : Cell := { cellDefaults with
  domain := ⟨(44175000000000003 / 50000000000000000 : ℚ), (44183868715083799 / 50000000000000000 : ℚ)⟩
  r := (69959816561 / 160000000000 : ℚ)
  w := (12769613932571 / 10000000000000 : ℚ)
  center := (44179434357541901 / 50000000000000000 : ℚ)
  supportValue := (22347327225639757 / 100000000000000000 : ℚ)
  supportSlope := (-151905797495309 / 200000000000000 : ℚ)
  oldCenter := (22347327225639757 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2025
  oldPieces := [piece_585, piece_586]
}

noncomputable def cell_13786 : Cell := { cellDefaults with
  domain := ⟨(44183868715083799 / 50000000000000000 : ℚ), (8838547486033519 / 10000000000000000 : ℚ)⟩
  r := (69959816561 / 160000000000 : ℚ)
  w := (12769613932571 / 10000000000000 : ℚ)
  center := (44188303072625697 / 50000000000000000 : ℚ)
  supportValue := (11166929515081009 / 50000000000000000 : ℚ)
  supportSlope := (-948806177068891 / 1250000000000000 : ℚ)
  oldCenter := (11166929515081009 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2025
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13787 : Cell := { cellDefaults with
  domain := ⟨(8838547486033519 / 10000000000000000 : ℚ), (88400000000000001 / 100000000000000000 : ℚ)⟩
  r := (69959816561 / 160000000000 : ℚ)
  w := (12769613932571 / 10000000000000 : ℚ)
  center := (176785474860335191 / 200000000000000000 : ℚ)
  supportValue := (11160801443627423 / 50000000000000000 : ℚ)
  supportSlope := (-7585659303195053 / 10000000000000000 : ℚ)
  oldCenter := (11160801443627423 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2026
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13788 : Cell := { cellDefaults with
  domain := ⟨(88400000000000001 / 100000000000000000 : ℚ), (353650000000000009 / 400000000000000000 : ℚ)⟩
  r := (43707381974877 / 100000000000000 : ℚ)
  w := (3191363862851 / 2500000000000 : ℚ)
  center := (707250000000000013 / 800000000000000000 : ℚ)
  supportValue := (22338176078802333 / 100000000000000000 : ℚ)
  supportSlope := (-7588854083503757 / 10000000000000000 : ℚ)
  oldCenter := (22338176078802333 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2027
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13789 : Cell := { cellDefaults with
  domain := ⟨(353650000000000009 / 400000000000000000 : ℚ), (176850000000000007 / 200000000000000000 : ℚ)⟩
  r := (43707381974877 / 100000000000000 : ℚ)
  w := (3191363862851 / 2500000000000 : ℚ)
  center := (707350000000000023 / 800000000000000000 : ℚ)
  supportValue := (1395543270485969 / 6250000000000000 : ℚ)
  supportSlope := (-1517028769373167 / 2000000000000000 : ℚ)
  oldCenter := (1395543270485969 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2027
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13790 : Cell := { cellDefaults with
  domain := ⟨(176850000000000007 / 200000000000000000 : ℚ), (353750000000000019 / 400000000000000000 : ℚ)⟩
  r := (43707381974877 / 100000000000000 : ℚ)
  w := (3191363862851 / 2500000000000 : ℚ)
  center := (707450000000000033 / 800000000000000000 : ℚ)
  supportValue := (22319213212447747 / 100000000000000000 : ℚ)
  supportSlope := (-7581436965646079 / 10000000000000000 : ℚ)
  oldCenter := (22319213212447747 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2027
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13791 : Cell := { cellDefaults with
  domain := ⟨(353750000000000019 / 400000000000000000 : ℚ), (44225000000000003 / 50000000000000000 : ℚ)⟩
  r := (43707381974877 / 100000000000000 : ℚ)
  w := (3191363862851 / 2500000000000 : ℚ)
  center := (707550000000000043 / 800000000000000000 : ℚ)
  supportValue := (4461947745725729 / 20000000000000000 : ℚ)
  supportSlope := (-473608339606421 / 625000000000000 : ℚ)
  oldCenter := (4461947745725729 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2027
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13792 : Cell := { cellDefaults with
  domain := ⟨(44225000000000003 / 50000000000000000 : ℚ), (353850000000000019 / 400000000000000000 : ℚ)⟩
  r := (21844945599933 / 50000000000000 : ℚ)
  w := (12761296733943 / 10000000000000 : ℚ)
  center := (707650000000000043 / 800000000000000000 : ℚ)
  supportValue := (5581767936569601 / 25000000000000000 : ℚ)
  supportSlope := (-94765284334451 / 125000000000000 : ℚ)
  oldCenter := (5581767936569601 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2028
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13793 : Cell := { cellDefaults with
  domain := ⟨(353850000000000019 / 400000000000000000 : ℚ), (176950000000000007 / 200000000000000000 : ℚ)⟩
  r := (21844945599933 / 50000000000000 : ℚ)
  w := (12761296733943 / 10000000000000 : ℚ)
  center := (707750000000000033 / 800000000000000000 : ℚ)
  supportValue := (55793993824391 / 250000000000000 : ℚ)
  supportSlope := (-7577519977473781 / 10000000000000000 : ℚ)
  oldCenter := (55793993824391 / 250000000000000 : ℚ)
  newCoefficients := coefficients_2028
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13794 : Cell := { cellDefaults with
  domain := ⟨(176950000000000007 / 200000000000000000 : ℚ), (353950000000000009 / 400000000000000000 : ℚ)⟩
  r := (21844945599933 / 50000000000000 : ℚ)
  w := (12761296733943 / 10000000000000 : ℚ)
  center := (707850000000000023 / 800000000000000000 : ℚ)
  supportValue := (2788515992450841 / 12500000000000000 : ℚ)
  supportSlope := (-3786910275856249 / 5000000000000000 : ℚ)
  oldCenter := (2788515992450841 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2028
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13795 : Cell := { cellDefaults with
  domain := ⟨(353950000000000009 / 400000000000000000 : ℚ), (88500000000000001 / 100000000000000000 : ℚ)⟩
  r := (21844945599933 / 50000000000000 : ℚ)
  w := (12761296733943 / 10000000000000 : ℚ)
  center := (707950000000000013 / 800000000000000000 : ℚ)
  supportValue := (11149331358360391 / 50000000000000000 : ℚ)
  supportSlope := (-7571045586863481 / 10000000000000000 : ℚ)
  oldCenter := (11149331358360391 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2028
  oldLo := (89 / 400 : ℚ)
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_584, piece_585]
}

noncomputable def cell_13796 : Cell := { cellDefaults with
  domain := ⟨(88500000000000001 / 100000000000000000 : ℚ), (354050000000000009 / 400000000000000000 : ℚ)⟩
  r := (10918103140919 / 25000000000000 : ℚ)
  w := (6378568406763 / 5000000000000 : ℚ)
  center := (708050000000000013 / 800000000000000000 : ℚ)
  supportValue := (22315989902657357 / 100000000000000000 : ℚ)
  supportSlope := (-946701055982063 / 1250000000000000 : ℚ)
  oldCenter := (22315989902657357 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2029
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13797 : Cell := { cellDefaults with
  domain := ⟨(354050000000000009 / 400000000000000000 : ℚ), (177050000000000007 / 200000000000000000 : ℚ)⟩
  r := (10918103140919 / 25000000000000 : ℚ)
  w := (6378568406763 / 5000000000000 : ℚ)
  center := (708150000000000023 / 800000000000000000 : ℚ)
  supportValue := (11153262599678983 / 50000000000000000 : ℚ)
  supportSlope := (-1892478280439513 / 2500000000000000 : ℚ)
  oldCenter := (11153262599678983 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2029
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13798 : Cell := { cellDefaults with
  domain := ⟨(177050000000000007 / 200000000000000000 : ℚ), (354150000000000019 / 400000000000000000 : ℚ)⟩
  r := (10918103140919 / 25000000000000 : ℚ)
  w := (6378568406763 / 5000000000000 : ℚ)
  center := (708250000000000033 / 800000000000000000 : ℚ)
  supportValue := (4459412911045021 / 20000000000000000 : ℚ)
  supportSlope := (-7567383818178139 / 10000000000000000 : ℚ)
  oldCenter := (4459412911045021 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2029
  oldLo := (89 / 400 : ℚ)
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_584, piece_585]
}

noncomputable def cell_13799 : Cell := { cellDefaults with
  domain := ⟨(354150000000000019 / 400000000000000000 : ℚ), (44275000000000003 / 50000000000000000 : ℚ)⟩
  r := (10918103140919 / 25000000000000 : ℚ)
  w := (6378568406763 / 5000000000000 : ℚ)
  center := (708350000000000043 / 800000000000000000 : ℚ)
  supportValue := (22287607292866693 / 100000000000000000 : ℚ)
  supportSlope := (-7563960724618423 / 10000000000000000 : ℚ)
  oldCenter := (22287607292866693 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2029
  oldLo := (89 / 400 : ℚ)
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_584]
}

theorem check_13750 : cell_13750.check = true := by
  decide +kernel

theorem check_13751 : cell_13751.check = true := by
  decide +kernel

theorem check_13752 : cell_13752.check = true := by
  decide +kernel

theorem check_13753 : cell_13753.check = true := by
  decide +kernel

theorem check_13754 : cell_13754.check = true := by
  decide +kernel

theorem check_13755 : cell_13755.check = true := by
  decide +kernel

theorem check_13756 : cell_13756.check = true := by
  decide +kernel

theorem check_13757 : cell_13757.check = true := by
  decide +kernel

theorem check_13758 : cell_13758.check = true := by
  decide +kernel

theorem check_13759 : cell_13759.check = true := by
  decide +kernel

theorem check_13760 : cell_13760.check = true := by
  decide +kernel

theorem check_13761 : cell_13761.check = true := by
  decide +kernel

theorem check_13762 : cell_13762.check = true := by
  decide +kernel

theorem check_13763 : cell_13763.check = true := by
  decide +kernel

theorem check_13764 : cell_13764.check = true := by
  decide +kernel

theorem check_13765 : cell_13765.check = true := by
  decide +kernel

theorem check_13766 : cell_13766.check = true := by
  decide +kernel

theorem check_13767 : cell_13767.check = true := by
  decide +kernel

theorem check_13768 : cell_13768.check = true := by
  decide +kernel

theorem check_13769 : cell_13769.check = true := by
  decide +kernel

theorem check_13770 : cell_13770.check = true := by
  decide +kernel

theorem check_13771 : cell_13771.check = true := by
  decide +kernel

theorem check_13772 : cell_13772.check = true := by
  decide +kernel

theorem check_13773 : cell_13773.check = true := by
  decide +kernel

theorem check_13774 : cell_13774.check = true := by
  decide +kernel

theorem check_13775 : cell_13775.check = true := by
  decide +kernel

theorem check_13776 : cell_13776.check = true := by
  decide +kernel

theorem check_13777 : cell_13777.check = true := by
  decide +kernel

theorem check_13778 : cell_13778.check = true := by
  decide +kernel

theorem check_13779 : cell_13779.check = true := by
  decide +kernel

theorem check_13780 : cell_13780.check = true := by
  decide +kernel

theorem check_13781 : cell_13781.check = true := by
  decide +kernel

theorem check_13782 : cell_13782.check = true := by
  decide +kernel

theorem check_13783 : cell_13783.check = true := by
  decide +kernel

theorem check_13784 : cell_13784.check = true := by
  decide +kernel

theorem check_13785 : cell_13785.check = true := by
  decide +kernel

theorem check_13786 : cell_13786.check = true := by
  decide +kernel

theorem check_13787 : cell_13787.check = true := by
  decide +kernel

theorem check_13788 : cell_13788.check = true := by
  decide +kernel

theorem check_13789 : cell_13789.check = true := by
  decide +kernel

theorem check_13790 : cell_13790.check = true := by
  decide +kernel

theorem check_13791 : cell_13791.check = true := by
  decide +kernel

theorem check_13792 : cell_13792.check = true := by
  decide +kernel

theorem check_13793 : cell_13793.check = true := by
  decide +kernel

theorem check_13794 : cell_13794.check = true := by
  decide +kernel

theorem check_13795 : cell_13795.check = true := by
  decide +kernel

theorem check_13796 : cell_13796.check = true := by
  decide +kernel

theorem check_13797 : cell_13797.check = true := by
  decide +kernel

theorem check_13798 : cell_13798.check = true := by
  decide +kernel

theorem check_13799 : cell_13799.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13750, cell_13751, cell_13752, cell_13753, cell_13754, cell_13755, cell_13756, cell_13757, cell_13758, cell_13759, cell_13760, cell_13761, cell_13762, cell_13763, cell_13764, cell_13765, cell_13766, cell_13767, cell_13768, cell_13769, cell_13770, cell_13771, cell_13772, cell_13773, cell_13774, cell_13775, cell_13776, cell_13777, cell_13778, cell_13779, cell_13780, cell_13781, cell_13782, cell_13783, cell_13784, cell_13785, cell_13786, cell_13787, cell_13788, cell_13789, cell_13790, cell_13791, cell_13792, cell_13793, cell_13794, cell_13795, cell_13796, cell_13797, cell_13798, cell_13799]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13750, check_13751, check_13752, check_13753, check_13754, check_13755, check_13756, check_13757, check_13758, check_13759, check_13760, check_13761, check_13762, check_13763, check_13764, check_13765, check_13766, check_13767, check_13768, check_13769, check_13770, check_13771, check_13772, check_13773, check_13774, check_13775, check_13776, check_13777, check_13778, check_13779, check_13780, check_13781, check_13782, check_13783, check_13784, check_13785, check_13786, check_13787, check_13788, check_13789, check_13790, check_13791, check_13792, check_13793, check_13794, check_13795, check_13796, check_13797, check_13798, check_13799, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0275

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0275
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0275
open AnalyticBounds.ExpressionCertificate

theorem linked_13750 : Linked cell_13750 pieces := by
  link_source cell_13750 with piece_2016 using piece_2016_mem, piece_587_mem

theorem linked_13751 : Linked cell_13751 pieces := by
  link_source cell_13751 with piece_2016 using piece_2016_mem, piece_587_mem

theorem linked_13752 : Linked cell_13752 pieces := by
  link_source cell_13752 with piece_2016 using piece_2016_mem, piece_587_mem

theorem linked_13753 : Linked cell_13753 pieces := by
  link_source cell_13753 with piece_2017 using piece_2017_mem, piece_587_mem

theorem linked_13754 : Linked cell_13754 pieces := by
  link_source cell_13754 with piece_2017 using piece_2017_mem, piece_587_mem

theorem linked_13755 : Linked cell_13755 pieces := by
  link_source cell_13755 with piece_2017 using piece_2017_mem, piece_587_mem

theorem linked_13756 : Linked cell_13756 pieces := by
  link_source cell_13756 with piece_2017 using piece_2017_mem, piece_587_mem

theorem linked_13757 : Linked cell_13757 pieces := by
  link_source cell_13757 with piece_2018 using piece_2018_mem, piece_587_mem

theorem linked_13758 : Linked cell_13758 pieces := by
  link_source cell_13758 with piece_2018 using piece_2018_mem, piece_587_mem

theorem linked_13759 : Linked cell_13759 pieces := by
  link_source cell_13759 with piece_2018 using piece_2018_mem, piece_587_mem

theorem linked_13760 : Linked cell_13760 pieces := by
  link_source cell_13760 with piece_2018 using piece_2018_mem, ⟨piece_586_mem, piece_587_mem⟩

theorem linked_13761 : Linked cell_13761 pieces := by
  link_source cell_13761 with piece_2019 using piece_2019_mem, piece_587_mem

theorem linked_13762 : Linked cell_13762 pieces := by
  link_source cell_13762 with piece_2019 using piece_2019_mem, piece_587_mem

theorem linked_13763 : Linked cell_13763 pieces := by
  link_source cell_13763 with piece_2019 using piece_2019_mem, ⟨piece_586_mem, piece_587_mem⟩

theorem linked_13764 : Linked cell_13764 pieces := by
  link_source cell_13764 with piece_2019 using piece_2019_mem, piece_586_mem

theorem linked_13765 : Linked cell_13765 pieces := by
  link_source cell_13765 with piece_2020 using piece_2020_mem, piece_587_mem

theorem linked_13766 : Linked cell_13766 pieces := by
  link_source cell_13766 with piece_2020 using piece_2020_mem, ⟨piece_586_mem, piece_587_mem⟩

theorem linked_13767 : Linked cell_13767 pieces := by
  link_source cell_13767 with piece_2020 using piece_2020_mem, piece_586_mem

theorem linked_13768 : Linked cell_13768 pieces := by
  link_source cell_13768 with piece_2020 using piece_2020_mem, piece_586_mem

theorem linked_13769 : Linked cell_13769 pieces := by
  link_source cell_13769 with piece_2021 using piece_2021_mem, piece_586_mem

theorem linked_13770 : Linked cell_13770 pieces := by
  link_source cell_13770 with piece_2021 using piece_2021_mem, piece_586_mem

theorem linked_13771 : Linked cell_13771 pieces := by
  link_source cell_13771 with piece_2021 using piece_2021_mem, piece_586_mem

theorem linked_13772 : Linked cell_13772 pieces := by
  link_source cell_13772 with piece_2021 using piece_2021_mem, piece_586_mem

theorem linked_13773 : Linked cell_13773 pieces := by
  link_source cell_13773 with piece_2022 using piece_2022_mem, piece_586_mem

theorem linked_13774 : Linked cell_13774 pieces := by
  link_source cell_13774 with piece_2022 using piece_2022_mem, piece_586_mem

theorem linked_13775 : Linked cell_13775 pieces := by
  link_source cell_13775 with piece_2022 using piece_2022_mem, piece_586_mem

theorem linked_13776 : Linked cell_13776 pieces := by
  link_source cell_13776 with piece_2022 using piece_2022_mem, ⟨piece_585_mem, piece_586_mem⟩

theorem linked_13777 : Linked cell_13777 pieces := by
  link_source cell_13777 with piece_2023 using piece_2023_mem, piece_586_mem

theorem linked_13778 : Linked cell_13778 pieces := by
  link_source cell_13778 with piece_2023 using piece_2023_mem, piece_586_mem

theorem linked_13779 : Linked cell_13779 pieces := by
  link_source cell_13779 with piece_2023 using piece_2023_mem, ⟨piece_585_mem, piece_586_mem⟩

theorem linked_13780 : Linked cell_13780 pieces := by
  link_source cell_13780 with piece_2023 using piece_2023_mem, piece_585_mem

theorem linked_13781 : Linked cell_13781 pieces := by
  link_source cell_13781 with piece_2024 using piece_2024_mem, piece_586_mem

theorem linked_13782 : Linked cell_13782 pieces := by
  link_source cell_13782 with piece_2024 using piece_2024_mem, ⟨piece_585_mem, piece_586_mem⟩

theorem linked_13783 : Linked cell_13783 pieces := by
  link_source cell_13783 with piece_2024 using piece_2024_mem, piece_585_mem

theorem linked_13784 : Linked cell_13784 pieces := by
  link_source cell_13784 with piece_2024 using piece_2024_mem, piece_585_mem

theorem linked_13785 : Linked cell_13785 pieces := by
  link_source cell_13785 with piece_2025 using piece_2025_mem, ⟨piece_585_mem, piece_586_mem⟩

theorem linked_13786 : Linked cell_13786 pieces := by
  link_source cell_13786 with piece_2025 using piece_2025_mem, piece_585_mem

theorem linked_13787 : Linked cell_13787 pieces := by
  link_source cell_13787 with piece_2026 using piece_2026_mem, piece_585_mem

theorem linked_13788 : Linked cell_13788 pieces := by
  link_source cell_13788 with piece_2027 using piece_2027_mem, piece_585_mem

theorem linked_13789 : Linked cell_13789 pieces := by
  link_source cell_13789 with piece_2027 using piece_2027_mem, piece_585_mem

theorem linked_13790 : Linked cell_13790 pieces := by
  link_source cell_13790 with piece_2027 using piece_2027_mem, piece_585_mem

theorem linked_13791 : Linked cell_13791 pieces := by
  link_source cell_13791 with piece_2027 using piece_2027_mem, piece_585_mem

theorem linked_13792 : Linked cell_13792 pieces := by
  link_source cell_13792 with piece_2028 using piece_2028_mem, piece_585_mem

theorem linked_13793 : Linked cell_13793 pieces := by
  link_source cell_13793 with piece_2028 using piece_2028_mem, piece_585_mem

theorem linked_13794 : Linked cell_13794 pieces := by
  link_source cell_13794 with piece_2028 using piece_2028_mem, piece_585_mem

theorem linked_13795 : Linked cell_13795 pieces := by
  link_source cell_13795 with piece_2028 using piece_2028_mem, ⟨piece_584_mem, piece_585_mem⟩

theorem linked_13796 : Linked cell_13796 pieces := by
  link_source cell_13796 with piece_2029 using piece_2029_mem, piece_585_mem

theorem linked_13797 : Linked cell_13797 pieces := by
  link_source cell_13797 with piece_2029 using piece_2029_mem, piece_585_mem

theorem linked_13798 : Linked cell_13798 pieces := by
  link_source cell_13798 with piece_2029 using piece_2029_mem, ⟨piece_584_mem, piece_585_mem⟩

theorem linked_13799 : Linked cell_13799 pieces := by
  link_source cell_13799 with piece_2029 using piece_2029_mem, piece_584_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0275.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0275.cells,List.forall_mem_cons]
  exact ⟨linked_13750, linked_13751, linked_13752, linked_13753, linked_13754, linked_13755, linked_13756, linked_13757, linked_13758, linked_13759, linked_13760, linked_13761, linked_13762, linked_13763, linked_13764, linked_13765, linked_13766, linked_13767, linked_13768, linked_13769, linked_13770, linked_13771, linked_13772, linked_13773, linked_13774, linked_13775, linked_13776, linked_13777, linked_13778, linked_13779, linked_13780, linked_13781, linked_13782, linked_13783, linked_13784, linked_13785, linked_13786, linked_13787, linked_13788, linked_13789, linked_13790, linked_13791, linked_13792, linked_13793, linked_13794, linked_13795, linked_13796, linked_13797, linked_13798, linked_13799, by simp⟩

theorem covered : covers (175825000000000003 / 200000000000000000 : ℚ) (44275000000000003 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0275.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0275
end
